; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    dec h
    ld b, c
    ld a, [bc]
    ld c, d
    add e
    ld c, h
    ld h, d
    ld c, l
    add hl, hl
    ld h, l
    sub $6f
    ld a, [$c8c5]
    add a
    ld c, a
    ld b, $00
    ld hl, $4000
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [$c8c6]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [$c8b3]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, c
    ld [$c8a5], a
    ld a, b
    ld [$c8a6], a

jr_006_4038:
    call Call_000_1a94
    cp $ff
    jr nz, jr_006_4045

    call Call_000_11c1
    jp Jump_000_078e


jr_006_4045:
    call Call_006_404a
    jr jr_006_4038

Call_006_404a:
    rst RST_00
    ld b, $1b
    db $10
    dec de
    ld a, [de]
    dec de
    dec hl
    dec de
    dec hl
    dec de
    ld [hl], $1b
    cp e
    ld e, $fa
    dec e
    ld c, $1e
    dec e
    ld e, $fa
    dec e
    ld c, $1e
    dec e
    ld e, $88
    ld e, $9d
    ld e, $ac
    ld e, $88
    ld e, $9d
    ld e, $ac
    ld e, $88
    ld e, $9d
    ld e, $ac
    ld e, $59
    inc e
    ld [hl], c
    inc e
    db $d3
    inc e
    sub $21
    db $eb
    jr nz, @+$6e

    ld hl, $1bb6
    adc e
    ld [hl+], a
    add b
    ld a, [hl+]
    add a
    ld a, [hl+]
    sbc h
    dec e
    or b
    dec e
    pop bc
    dec e
    ld c, c
    ld e, $5e
    ld e, $6d
    ld e, $b0
    inc hl
    ld h, [hl]
    ld h, $f3
    ld h, $06
    dec hl
    xor $1a
    or $33
    inc l
    inc [hl]
    ld a, d
    inc [hl]
    ld l, $1d
    jr c, jr_006_40c8

    ld b, h
    dec e
    ldh [$ff27], a
    ld e, b
    jr z, @+$0f

    ld hl, $21be
    jp hl


    ld hl, $210d
    ld l, h
    ld hl, $2a87
    or [hl]
    jr z, jr_006_40c0

jr_006_40c0:
    inc l
    inc [hl]
    inc l
    ld sp, hl
    jr z, jr_006_411e

    inc l
    adc h

jr_006_40c8:
    inc l
    ld c, h
    ld a, [hl+]
    ret


    jr z, jr_006_4131

    add hl, hl
    ld a, l
    ld h, $1f
    ld a, [hl+]
    ld e, [hl]
    ld a, [hl+]
    ld l, e
    ld a, [hl+]
    ld l, c
    ld l, $36
    inc h
    ld b, [hl]
    ld l, $c8
    dec l
    ld e, b
    dec hl
    ld l, [hl]
    dec hl
    ld a, [hl]
    dec hl
    sub d
    dec hl
    ret nz

    inc l
    ldh [c], a
    inc l
    push af
    inc l
    ld sp, $5e2d
    dec e
    xor e
    dec e
    adc e

jr_006_40f4:
    dec [hl]
    xor $2d
    rst RST_28
    dec hl
    inc h
    inc l
    ld c, b
    dec l
    ld l, d
    dec l
    xor c
    ld l, $a8
    jr z, jr_006_40f4

    ld hl, $1ded
    ld c, c
    cpl
    push de
    ld l, $4d
    ld [hl+], a
    and h
    dec hl
    call c, $ef2e
    ld l, $5f
    ld [hl-], a
    ld l, [hl]
    dec de
    sbc a
    dec de
    ld d, a
    cpl
    rst RST_28
    ld a, [de]
    ld [hl], a

jr_006_411e:
    jr nz, jr_006_415b

    ld a, [hl+]
    dec e
    ld [hl+], a
    ld b, c
    ld h, $15
    ld b, d
    dec e
    ld b, d
    dec h
    ld b, d
    dec l
    ld b, d
    dec [hl]
    ld b, d
    dec a
    ld b, d

jr_006_4131:
    ld b, l
    ld b, d
    ld c, l
    ld b, d
    ld d, l
    ld b, d
    ld e, l
    ld b, d
    ld h, l
    ld b, d
    ld l, l
    ld b, d
    ld [hl], l
    ld b, d
    ld a, l
    ld b, d
    add l
    ld b, d
    adc l
    ld b, d
    sub l
    ld b, d
    sbc l
    ld b, d
    and l
    ld b, d
    xor l
    ld b, d
    or l
    ld b, d
    cp l
    ld b, d
    push bc
    ld b, d
    call $d542
    ld b, d
    db $dd
    ld b, d
    push hl
    ld b, d

jr_006_415b:
    db $ed
    ld b, d
    push af
    ld b, d
    db $fd
    ld b, d
    dec b
    ld b, e
    dec c
    ld b, e
    dec d
    ld b, e
    dec e
    ld b, e
    dec h
    ld b, e
    dec l
    ld b, e
    dec [hl]
    ld b, e
    dec a
    ld b, e
    ld b, l
    ld b, e
    ld c, l
    ld b, e
    ld d, l
    ld b, e
    ld e, l
    ld b, e
    ld h, l
    ld b, e
    ld l, l
    ld b, e
    ld [hl], l
    ld b, e
    ld a, l
    ld b, e
    add l
    ld b, e
    adc l
    ld b, e
    sub l
    ld b, e
    sbc l
    ld b, e
    and l
    ld b, e
    xor l
    ld b, e
    or l
    ld b, e
    cp l
    ld b, e
    push bc
    ld b, e
    call $d543
    ld b, e
    db $dd
    ld b, e
    push hl
    ld b, e
    db $ed
    ld b, e
    push af
    ld b, e
    db $fd
    ld b, e
    dec b
    ld b, h
    dec c
    ld b, h
    dec d
    ld b, h
    dec e
    ld b, h
    dec h
    ld b, h
    dec l
    ld b, h
    dec [hl]
    ld b, h
    dec a
    ld b, h
    ld b, l
    ld b, h
    ld c, l
    ld b, h
    ld d, l
    ld b, h
    ld e, l
    ld b, h
    ld h, l
    ld b, h
    ld l, l
    ld b, h
    ld [hl], l
    ld b, h
    ld a, l
    ld b, h
    add l
    ld b, h
    adc l
    ld b, h
    sub l
    ld b, h
    sbc l
    ld b, h
    and l
    ld b, h
    xor l
    ld b, h
    or l
    ld b, h
    cp l
    ld b, h
    push bc
    ld b, h
    call $d544
    ld b, h
    db $dd
    ld b, h
    push hl
    ld b, h
    db $ed
    ld b, h
    push af
    ld b, h
    db $fd
    ld b, h
    dec b
    ld b, l
    dec c
    ld b, l
    dec d
    ld b, l
    dec e
    ld b, l
    dec h
    ld b, l
    dec l
    ld b, l
    dec [hl]
    ld b, l
    dec a
    ld b, l
    ld b, l
    ld b, l
    ld c, l
    ld b, l
    ld d, l
    ld b, l
    ld e, l
    ld b, l
    ld h, l
    ld b, l
    ld l, l
    ld b, l
    ld [hl], l
    ld b, l
    ld a, l
    ld b, l
    add l
    ld b, l
    adc l
    ld b, l
    sub l
    ld b, l
    sbc l
    ld b, l
    and l
    ld b, l
    xor l
    ld b, l
    or l
    ld b, l
    cp l
    ld b, l
    push bc
    ld b, l
    call $d545
    ld b, l
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ldh [c], a
    ld b, l
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    push hl
    ld b, l
    ret c

    ld b, l
    call c, $e845
    ld b, l
    db $eb
    ld b, l
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    dec b
    ld b, [hl]
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld [$d846], sp
    ld b, l
    ld d, $46
    rst RST_18
    ld b, l
    add hl, de
    ld b, [hl]
    ret c

    ld b, l
    call c, $e845
    ld b, l
    inc e
    ld b, [hl]
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    inc h
    ld b, [hl]
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    daa
    ld b, [hl]
    ret c

    ld b, l
    ld d, $46
    add sp, $45
    ld a, [hl+]
    ld b, [hl]
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ldh a, [c]
    ld c, c
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    dec l
    ld b, [hl]
    ret c

    ld b, l
    call c, $e845
    ld b, l
    jr nc, jr_006_42c5

    ret c

    ld b, l
    call c, $df45
    ld b, l
    push af
    ld c, c
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    jr c, jr_006_42d5

    ret c

    ld b, l
    call c, $df45
    ld b, l
    dec sp
    ld b, [hl]
    ret c

    ld b, l
    call c, $e845
    ld b, l
    ld a, $46
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld c, e
    ld b, [hl]
    ret c

    ld b, l
    call c, $e845
    ld b, l
    ld c, [hl]
    ld b, [hl]
    ret c

    ld b, l
    ld e, c
    ld b, [hl]
    rst RST_18
    ld b, l
    ld l, [hl]
    ld b, [hl]
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld [hl], c
    ld b, [hl]
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b

jr_006_42c5:
    ld a, h
    ld b, [hl]
    ret c

    ld b, l
    call c, $9645
    ld b, [hl]
    ld a, h
    ld b, [hl]
    ret c

    ld b, l
    call c, $9645
    ld b, [hl]

jr_006_42d5:
    jp z, $d846

    ld b, l
    sbc c
    ld b, [hl]
    sbc c
    ld b, [hl]
    xor b
    ld b, [hl]
    ret c

    ld b, l
    xor e
    ld b, [hl]
    xor e
    ld b, [hl]
    jp z, $d846

    ld b, l
    call $cd46
    ld b, [hl]
    jp z, $d846

    ld b, l
    db $ec
    ld b, [hl]
    db $ec
    ld b, [hl]
    dec bc
    ld b, a
    ret c

    ld b, l
    ld c, $47
    ld c, $47
    jr nc, jr_006_4346

    ret c

    ld b, l
    inc sp
    ld b, a
    inc sp
    ld b, a
    ld b, d
    ld b, a
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld c, l
    ld b, a
    ld c, [hl]
    ld c, b
    call c, Call_006_4e45
    ld c, b
    ld d, b
    ld b, a
    ret c

    ld b, l
    call c, $e845
    ld b, l
    ld d, e
    ld b, a
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld d, [hl]
    ld b, a
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld e, c
    ld b, a
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld e, h
    ld b, a
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld h, e
    ld b, a
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld h, [hl]

jr_006_4346:
    ld b, a
    ret c

    ld b, l
    call c, $e845
    ld b, l
    ld l, c
    ld b, a
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld a, h
    ld b, a
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld a, a
    ld b, a
    ret c

    ld b, l
    call c, $e845
    ld b, l
    add d
    ld b, a
    ret c

    ld b, l
    call c, $df45
    ld b, l
    add l
    ld b, a
    adc b
    ld b, a
    sub e
    ld b, a
    ld c, [hl]
    ld c, b
    sub [hl]
    ld b, a
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    sbc [hl]
    ld b, a
    ret c

    ld b, l
    call c, $e845
    ld b, l
    and c
    ld b, a
    and c
    ld b, a
    or h
    ld b, a
    and c
    ld b, a
    dec c
    ld c, b
    dec c
    ld c, b
    add hl, de
    ld c, b
    ld c, [hl]
    ld c, b
    dec h
    ld c, b
    ret c

    ld b, l
    call c, $df45
    ld b, l
    jr z, jr_006_43e7

    ret c

    ld b, l
    call c, $e845
    ld b, l
    dec hl
    ld c, b
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ldh a, [c]
    ld c, c
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld l, $48
    ld l, $48
    dec sp
    ld c, b
    ld l, $48
    ld c, e
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld d, c
    ld c, b
    ld d, h
    ld c, b
    ld d, a
    ld c, b
    ld c, [hl]
    ld c, b
    ld e, h
    ld c, b
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld e, a
    ld c, b
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld h, d
    ld c, b
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld h, l
    ld c, b

jr_006_43e7:
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld l, b
    ld c, b
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld l, e
    ld c, b
    ret c

    ld b, l
    call c, $e845
    ld b, l
    push af
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld l, [hl]
    ld c, b
    ret c

    ld b, l
    ld [hl], c
    ld c, b
    ld [hl], c
    ld c, b
    ld a, a
    ld c, b
    sbc h
    ld c, b
    and a
    ld c, b
    ld c, [hl]
    ld c, b
    xor d
    ld c, b
    xor l
    ld c, b
    or b
    ld c, b
    ld c, [hl]
    ld c, b
    cp d
    ld c, b
    ret c

    ld b, l
    call c, $df45
    ld b, l
    cp l
    ld c, b
    ret nz

    ld c, b
    pop hl
    ld c, b
    ld c, [hl]
    ld c, b
    db $e4
    ld c, b
    ret c

    ld b, l
    call c, $df45
    ld b, l
    rst RST_20
    ld c, b
    ret c

    ld b, l
    call c, $e845
    ld b, l
    ld [$d848], a
    ld b, l
    call c, $df45
    ld b, l
    db $ed
    ld c, b
    ldh a, [rOBP0]
    pop hl
    ld c, b
    ld c, [hl]
    ld c, b
    db $e4
    ld c, b
    ret c

    ld b, l
    call c, $e845
    ld b, l
    ld de, $d849
    ld b, l
    call c, $df45
    ld b, l
    ld [$d848], a
    ld b, l
    call c, $e845
    ld b, l
    inc d
    ld c, c
    ret c

    ld b, l
    call c, $e845
    ld b, l
    rla
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld h, $49
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    add hl, hl
    ld c, c
    ret c

    ld b, l
    call c, $df45
    ld b, l
    inc l
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    cpl
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld [hl-], a
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    dec [hl]
    ld c, c
    ret c

    ld b, l
    call c, $e845
    ld b, l
    jr c, jr_006_44f0

    ret c

    ld b, l
    call c, $df45
    ld b, l
    dec sp
    ld c, c
    ret c

    ld b, l
    call c, $e845
    ld b, l
    ld a, $49
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld b, [hl]
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld c, c
    ld c, c
    ret c

    ld b, l
    call c, $e845
    ld b, l
    ld c, h
    ld c, c
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld c, a
    ld c, c
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld d, d
    ld c, c
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ld d, l
    ld c, c
    ret c

    ld b, l
    call c, $e845
    ld b, l
    ld e, b
    ld c, c
    ret c

jr_006_44f0:
    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld e, e
    ld c, c
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld h, [hl]
    ld c, c
    db $db
    ld b, l
    db $db
    ld b, l
    db $db
    ld b, l
    ld h, a
    ld c, c
    ret c

    ld b, l
    ld l, d
    ld c, c
    ld l, d
    ld c, c
    ld a, d
    ld c, c
    ld a, l
    ld c, c
    adc c
    ld c, c
    ld a, l
    ld c, c
    sub d
    ld c, c
    ret c

    ld b, l
    call c, $df45
    ld b, l
    sub l
    ld c, c
    ret c

    ld b, l
    call c, $e845
    ld b, l
    sbc b
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    sbc e
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    sbc [hl]
    ld c, c
    xor c
    ld c, c
    xor h
    ld c, c
    ld c, [hl]
    ld c, b
    xor a
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    or a
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    cp d
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    cp l
    ld c, c
    jp nz, $ac49

    ld c, c
    ld c, [hl]
    ld c, b
    push bc
    ld c, c
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ret z

    ld c, c
    bit 1, c
    bit 1, c
    bit 1, c
    db $d3
    ld c, c
    ret c

    ld b, l
    call c, $df45
    ld b, l
    ldh a, [c]
    ld c, c
    ret c

    ld b, l
    call c, $e845
    ld b, l
    push af
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    push af
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ld hl, sp+$49
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    ldh a, [c]
    ld c, c
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    push af
    ld c, c
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ei
    ld c, c
    ret c

    ld b, l
    call c, Call_006_4e45
    ld c, b
    cp $49
    ld bc, $044a
    ld c, d
    ld c, [hl]
    ld c, b
    rlca
    ld c, d
    ret c

    ld b, l
    call c, $df45
    ld b, l
    and c
    ld b, a
    and c
    ld b, a
    or h
    ld b, a
    and c
    ld b, a
    and c
    ld b, a
    and c
    ld b, a
    or h
    ld b, a
    and c
    ld b, a
    and c
    ld b, a
    and c
    ld b, a
    or h
    ld b, a
    and c
    ld b, a
    nop
    inc bc
    rst RST_38
    nop
    dec de
    rst RST_38
    rst RST_38
    nop
    ld a, [de]
    rst RST_38
    nop
    inc de
    rst RST_38
    nop
    inc b
    rst RST_38
    nop
    jr nz, @+$01

    nop
    inc d
    rst RST_38
    ld d, $17
    inc b
    ld a, [$1645]
    nop
    inc b
    ld [bc], a
    ld b, [hl]
    ld b, [hl]
    dec b
    rla
    rla
    rst RST_38
    ld d, $00
    inc b
    ld [bc], a
    ld b, [hl]
    nop
    dec h
    rst RST_38
    ld [bc], a
    ld l, d
    rst RST_38
    nop
    ld hl, $3fff
    ld bc, $2700
    ld d, $34
    inc b
    inc d
    ld b, [hl]
    ld [bc], a
    jr c, @+$01

    ld b, l
    rst RST_38
    ld [bc], a
    inc a
    rst RST_38
    nop
    cpl
    rst RST_38
    ld d, $01
    inc b
    ld [bc], a
    ld b, [hl]
    nop
    dec l
    rst RST_38
    nop
    jr nc, @+$01

    nop
    dec [hl]
    rst RST_38
    nop
    inc [hl]
    rst RST_38
    nop
    ld b, c
    rst RST_38
    ld d, $02
    inc b
    ld [bc], a
    ld b, [hl]
    nop
    inc a
    rst RST_38
    nop
    ld c, l
    rst RST_38
    nop
    ld c, d
    rst RST_38
    ld d, $2e
    inc b
    ld c, b
    ld b, [hl]
    nop
    ld c, e
    rla
    ld l, $ff
    nop
    ld d, e
    rst RST_38
    nop
    ld c, h
    rst RST_38
    ld d, $6f
    inc b
    ld d, [hl]
    ld b, [hl]
    nop
    ld c, a
    rst RST_38
    ld [bc], a
    ld a, $ff
    ld d, $6f
    inc b
    ld h, a
    ld b, [hl]
    ld e, d
    ld b, $36
    ld [$5100], sp
    rla
    ld l, a
    rst RST_38
    ld e, d
    ld b, $36
    ld [$3f02], sp
    rst RST_38
    nop
    ld d, a
    rst RST_38
    ld d, $25
    inc b
    ld a, c
    ld b, [hl]
    nop
    ld e, a
    rst RST_38
    nop
    ld h, [hl]
    rst RST_38
    ld d, $8c
    dec b
    sub e
    ld b, [hl]
    ld c, d
    nop
    dec b
    sub e
    ld b, [hl]
    ccf
    ld [bc], a
    nop
    ld h, b
    ld [bc], a
    ld e, a
    jr c, jr_006_468f

    ld [bc], a

jr_006_468f:
    dec d
    ld h, d
    ld bc, $00ff
    ld h, b
    rst RST_38
    ld [bc], a
    ld h, h
    rst RST_38
    ld l, $0c
    inc b
    and e
    ld b, [hl]
    ld [bc], a
    ld h, a
    inc sp
    inc c
    rst RST_38
    ld e, $b0
    ld [bc], a
    ld bc, $00ff
    ld l, h
    rst RST_38
    add hl, de
    ld a, [bc]
    inc b
    cp h
    ld b, [hl]
    add hl, de
    ccf
    inc b
    push bc
    ld b, [hl]
    inc [hl]
    rrca
    nop
    ld [hl], c
    inc sp
    rrca
    rst RST_38
    inc [hl]
    inc c
    dec [hl]
    ld b, b
    nop
    ld [hl], b
    inc sp
    rrca
    rst RST_38
    inc [hl]
    ld c, $1c
    cp [hl]
    ld b, [hl]
    nop
    ld l, l
    rst RST_38
    add hl, de
    ld a, [bc]
    inc b
    ldh [rDMA], a
    add hl, de
    ccf
    inc b
    push hl
    ld b, [hl]
    inc [hl]
    rrca
    dec [hl]
    ccf
    nop
    ld [hl], b
    inc sp
    ld c, $ff
    inc [hl]
    inc c
    inc e
    reti


    ld b, [hl]
    inc [hl]
    ld c, $00
    ld [hl], c
    inc sp
    ld c, $ff
    add hl, de
    ld a, [bc]
    inc b
    ei
    ld b, [hl]
    add hl, de
    ccf
    inc b
    ld [bc], a
    ld b, a
    inc [hl]
    rrca
    inc e
    inc b
    ld b, a
    inc [hl]
    inc c
    nop
    ld [hl], c
    inc sp
    inc c
    rst RST_38
    inc [hl]
    ld c, $35
    ld a, [bc]
    nop
    ld [hl], b
    inc sp
    inc c
    rst RST_38
    nop
    ld l, [hl]
    rst RST_38
    add hl, de
    ld a, [bc]
    inc b
    ld h, $47
    add hl, de
    ccf
    inc b
    dec hl
    ld b, a
    inc [hl]
    rrca
    nop
    ld [hl], b
    ld e, h
    dec b
    ld c, h
    rla
    or b
    ld b, $38
    ld [bc], a
    cp e
    rst RST_38
    inc [hl]
    inc c
    inc e
    ld a, [de]
    ld b, a
    inc [hl]
    ld c, $1c
    ld a, [de]
    ld b, a
    nop
    ld a, c
    rst RST_38
    ld l, $0f
    inc b
    dec a
    ld b, a
    ld [bc], a
    ld h, a
    inc sp
    rrca
    rst RST_38
    ld e, $b0
    ld [bc], a
    ld bc, $16ff
    dec h
    inc b
    ld c, d
    ld b, a
    nop
    ld [hl], e
    rst RST_38
    ld [bc], a
    ld c, l
    rst RST_38
    ld [bc], a
    add e
    rst RST_38
    ld [bc], a
    add [hl]
    rst RST_38
    ld [bc], a
    sbc b
    rst RST_38
    ld [bc], a
    sbc d
    rst RST_38
    ld [bc], a
    sbc e
    rst RST_38
    ccf
    ld bc, $9c02
    ld [bc], a
    ld [hl], b
    rst RST_38
    ld [bc], a
    and h
    rst RST_38
    ld [bc], a
    and l
    rst RST_38
    ld d, $25
    inc b
    halt
    ld b, a
    ld d, $17
    inc b
    ld a, c
    ld b, a
    ld [bc], a
    and [hl]
    rst RST_38
    ld b, [hl]
    dec bc
    rst RST_38
    ld b, [hl]
    ld a, [bc]
    rst RST_38
    ld [bc], a
    sbc b
    rst RST_38
    ld [bc], a
    or h
    rst RST_38
    ld [bc], a
    pop bc
    rst RST_38
    ld [bc], a
    ret nz

    rst RST_38
    ld d, $28
    inc b
    sub b
    ld b, a
    ld [bc], a
    jp Jump_000_02ff


    rst RST_00
    rst RST_38
    ld [bc], a
    ret


    rst RST_38
    ld d, $15
    inc b
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    call z, Call_000_02ff
    rst RST_10
    rst RST_38
    ld e, d
    rlca
    ld bc, $5af0
    dec d
    ld [bc], a
    ld h, d
    ld d, $07
    inc b
    or b
    ld b, a
    ld c, b
    rst RST_38
    rla
    sub l
    ld c, b
    rst RST_38
    ld d, $07
    inc b
    db $d3
    ld b, a
    ld d, $06
    inc b
    rst RST_18
    ld b, a
    ld d, $05
    inc b
    rst RST_28
    ld b, a
    ld e, d
    ld b, $01
    rst RST_28
    ld e, h
    dec b
    add hl, de
    rla
    or b
    ld b, $11
    ld [bc], a
    cp c
    rla
    dec b
    rst RST_38
    ld e, d
    rlca
    ld bc, $5af7
    dec d
    ld [bc], a
    ld h, d
    rla
    sub l
    ld c, b
    rst RST_38
    ld e, d
    ld b, $01
    push af
    ld e, h
    dec b
    rla
    rla
    or b
    ld b, $12
    ld [bc], a
    jp nz, Jump_000_0717

    rst RST_38
    ld e, d
    ld b, $01
    ldh a, [c]
    ld e, h
    dec b
    dec e
    rla
    or b
    ld b, $14
    rla
    ld b, $16
    ld a, d
    dec b
    inc b
    ld c, b
    ld [bc], a
    ret nc

    rst RST_38
    ld e, $b1
    ld [bc], a
    dec bc
    ld b, d
    and e
    rla
    ld a, d
    rst RST_38
    ld e, d
    ld b, $01
    db $e4
    ld h, e
    ccf
    ld [bc], a
    ld bc, $01e5
    rst RST_20
    rst RST_38
    ld e, d
    ld b, $01
    ldh [c], a
    ld h, e
    ccf
    ld [bc], a
    ld bc, $01e5
    rst RST_20
    rst RST_38
    ld [bc], a
    db $d3
    rst RST_38
    ld [bc], a
    xor l
    rst RST_38
    ld [bc], a
    xor a
    rst RST_38
    ld e, d
    rlca
    ld e, d
    ld d, $02
    and $68
    ld e, d
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    ld e, d
    ld b, $02
    rst RST_20
    rla
    sub d
    ld e, h
    dec b
    add hl, de
    rla
    or b
    ld b, $21
    ld [bc], a
    add sp, -$01
    ld [bc], a
    jp hl


    rst RST_38
    ld [bc], a
    scf
    rst RST_38
    ld [bc], a
    call c, Call_000_02ff
    ldh [rIE], a
    ld b, [hl]
    ld b, $02
    rst RST_18
    rst RST_38
    ld bc, $ff01
    ld [bc], a
    ld d, c
    rst RST_38
    ld [bc], a
    ld e, h
    rst RST_38
    ld bc, $ff04
    ld bc, $ff05
    ld [bc], a
    di
    rst RST_38
    ld bc, $ff08
    ld e, d
    ld [HeaderManufacturerCode], sp
    ld bc, $010d
    ld c, $5a
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    ld d, $1a
    inc b
    sub h
    ld c, b
    ld d, $87
    inc b
    sub a
    ld c, b
    ccf
    ld bc, $f402
    ld [bc], a
    ld hl, $7017
    rla
    or d
    rst RST_38
    ld [bc], a
    db $fc
    rst RST_38
    ld [bc], a
    ld hl, $b217
    rst RST_38
    ld d, $85
    inc b
    and h
    ld c, b
    ld [bc], a
    ei
    rst RST_38
    nop
    inc d
    rst RST_38
    ld [bc], a
    rst RST_38
    rst RST_38
    ld bc, $ff11
    ld bc, $ff1e
    ld e, d
    rlca
    ld bc, $5a1d
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    ld bc, $ff14
    ld bc, $ff3d
    ld d, $81
    inc b
    sbc $48
    ccf
    ld bc, $3a01
    ld b, c
    inc b
    reti


    ld c, b
    ld b, e
    inc b
    jp c, $1748

    xor c
    nop
    ld h, h
    ld l, d
    ld bc, $443b
    rst RST_38
    ld [bc], a
    ret z

    ld b, h
    rst RST_38
    ld [bc], a
    ld l, [hl]
    rst RST_38
    ld [bc], a
    inc [hl]
    rst RST_38
    ld [bc], a
    inc sp
    rst RST_38
    ld bc, $ff3e
    ld [bc], a
    dec c
    rst RST_38
    ld bc, $ff43
    ld d, $a0
    inc b
    ld c, $49
    ccf
    ld bc, $4601
    ld b, c
    inc b
    add hl, bc
    ld c, c
    ld b, e
    inc b
    ld a, [bc]
    ld c, c
    rla
    xor c
    nop
    ld h, a
    ld l, d
    ld bc, $4445
    rst RST_38
    ld [bc], a
    jp nc, $ff44

    ld [bc], a
    ld l, a
    rst RST_38
    ld bc, $ff3e
    ld bc, $ff48
    ld d, $ac
    inc b
    inc hl
    ld c, c
    ccf
    ld bc, $4c01
    ld [bc], a
    ld b, b
    rst RST_38
    ld bc, $ff4c
    ld bc, $ff50
    ld bc, $ff54
    ld bc, $ff56
    ld bc, $ff55
    ld bc, $ff58
    ld bc, $ff5d
    ld bc, $ff57
    ld bc, $ff59
    ld d, $09
    inc b
    ld [bc], a
    ld b, [hl]
    ld bc, $ff5b
    ld bc, $ff6b
    ld bc, $ff91
    ld [bc], a
    inc l
    rst RST_38
    ld bc, $ff74
    ld bc, $ff7d
    ld bc, $ff7b
    ld bc, $ff91
    ld d, $91
    inc b
    ld h, e
    ld c, c
    ld bc, $ff8e
    ld bc, $ff94
    rst RST_38
    ld bc, $ffa0
    ld bc, $5ca3
    dec b
    ld c, c
    rla
    or b
    cpl
    dec sp
    ld b, $32
    ld l, b
    ld l, b
    ld bc, $ffa4
    ld bc, $ffa5
    ld [bc], a
    dec [hl]
    ld e, h
    dec b
    ld c, c
    rla
    or b
    ld b, $31
    ld bc, $ffaa
    ld e, d
    ld b, $01
    xor l
    rla
    daa
    inc [hl]
    dec sp
    rst RST_38
    ld bc, $ffa8
    ld bc, $ffb7
    ld bc, $ffbe
    ld bc, $ffbd
    ld d, $72
    inc b
    and [hl]
    ld c, c
    ld bc, $ffc1
    ld [bc], a
    ld b, a
    rst RST_38
    ld bc, $ffca
    ld [bc], a
    ld [hl], $ff
    ld d, $14
    inc b
    ld [bc], a
    ld b, [hl]
    ld bc, $ffcc
    ld bc, $ffcd
    ld bc, $ffce
    ld bc, $17cf
    ld [hl], h
    rst RST_38
    ld bc, $ffca
    ld bc, $ff23
    ld bc, $ff34
    ld bc, $5a37
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    ld d, $16
    inc b
    db $db
    ld c, c
    ld bc, $ff89
    ld l, $38
    inc b
    db $ed
    ld c, c
    ld d, $50
    inc b
    add sp, $49
    ld bc, $ff8a
    ld e, $b0
    ld [bc], a
    inc bc
    rst RST_38
    ld e, $b0
    ld [bc], a
    ld bc, $02ff
    ld h, l
    rst RST_38
    ld [bc], a
    ld h, [hl]
    rst RST_38
    ld [bc], a
    ld [hl], b
    rst RST_38
    ld bc, $ff90
    ld [bc], a
    ld h, b
    rst RST_38
    ld [bc], a
    ld a, c
    rst RST_38
    ld [bc], a
    ld a, d
    rst RST_38
    ld [bc], a
    cp [hl]
    rst RST_38
    inc h
    ld c, d
    inc l
    ld c, d
    inc [hl]
    ld c, d
    inc a
    ld c, d
    ld b, h
    ld c, d
    ld c, h
    ld c, d
    ld d, h
    ld c, d
    ld e, h
    ld c, d
    ld h, h
    ld c, d
    ld l, h
    ld c, d
    ld [hl], h
    ld c, d
    ld a, h
    ld c, d
    add h
    ld c, d
    adc h
    ld c, d
    sub a
    ld c, d
    ld l, l
    ld c, e
    jr c, jr_006_4a78

    dec sp
    ld c, h
    and a
    ld c, d
    ld a, l
    ld c, e
    ld b, e
    ld c, h
    ld b, [hl]
    ld c, h
    or a
    ld c, d
    adc l
    ld c, e
    ld l, c
    ld c, h
    ld d, c
    ld c, h
    jp $9f4a


    ld c, e
    ld b, e
    ld c, h
    ld d, h
    ld c, h
    db $d3
    ld c, d
    xor a
    ld c, e
    jr c, jr_006_4a98

    ld e, e
    ld c, h
    push hl
    ld c, d
    pop bc
    ld c, e
    ld b, e
    ld c, h
    ld e, [hl]
    ld c, h
    dec b
    ld c, e
    pop de
    ld c, e
    ld l, c
    ld c, h
    ld l, h
    ld c, h
    push af
    ld c, d
    ldh [c], a
    ld c, e
    jr c, @+$4e

    ld l, a
    ld c, h
    inc d
    ld c, e
    pop de
    ld c, e
    ld b, e
    ld c, h
    ld a, d
    ld c, h
    daa
    ld c, e
    ldh a, [c]
    ld c, e
    jr c, jr_006_4ac0

    ld a, l
    ld c, h
    scf
    ld c, e

jr_006_4a78:
    ld [bc], a
    ld c, h
    ld b, e
    ld c, h
    ld a, l
    ld c, h
    ld b, a
    ld c, e
    ld [de], a
    ld c, h
    jr c, jr_006_4ad0

    add b
    ld c, h
    ld d, a
    ld c, e
    ld [hl+], a
    ld c, h
    ld l, c
    ld c, h
    ld d, $1b
    inc b
    sub h
    ld c, d
    ld bc, $ff0c
    ld [bc], a
    sub [hl]
    rst RST_38
    dec c

jr_006_4a98:
    inc b
    and d
    ld c, d
    ld e, $c4
    ld [bc], a
    nop
    ld c, $26
    rst RST_38
    ld e, $c4
    ld [bc], a
    ld bc, $0dff
    inc b
    or d
    ld c, d
    ld e, $d1
    ld [bc], a
    nop
    ld c, $26
    rst RST_38
    ld e, $d1
    ld [bc], a
    ld bc, $0dff
    inc b
    cp [hl]
    ld c, d
    ld [bc], a
    adc [hl]
    rst RST_38
    ld e, $d2

jr_006_4ac0:
    ld [bc], a
    ld bc, $0dff
    inc b
    adc $4a
    ld e, $d3
    ld [bc], a
    nop
    ld c, $26
    rst RST_38
    ld e, $d3

jr_006_4ad0:
    ld [bc], a
    ld bc, $0dff
    inc b
    ldh [rWY], a
    ld e, $d4
    ld [bc], a
    nop
    inc sp
    ld c, b
    ld c, $26
    rst RST_38
    ld e, $d4
    ld [bc], a
    ld bc, $0dff
    inc b
    ldh a, [rWY]
    ld e, $d5
    ld [bc], a
    nop
    ld c, $26
    rst RST_38
    ld e, $d5
    ld [bc], a
    ld bc, $0dff
    inc b
    nop
    ld c, e
    ld e, $d7
    ld [bc], a
    nop
    ld c, $26
    rst RST_38
    ld e, $d7
    ld [bc], a
    ld bc, $16ff
    rra
    inc b
    dec c
    ld c, e
    nop
    ld b, e
    rst RST_38
    dec c
    inc b
    ld [hl+], a
    ld c, e
    inc e
    ld a, [de]
    ld c, e
    dec c
    inc b
    ld [hl+], a
    ld c, e
    rla
    ld e, $1e
    ret c

    ld [bc], a
    nop
    ld c, $26
    daa
    rst RST_38
    ld e, $d8
    ld [bc], a
    ld bc, $0dff
    inc b
    ld [hl-], a
    ld c, e
    ld e, $d9
    ld [bc], a
    nop
    ld c, $26
    rst RST_38
    ld e, $d9
    ld [bc], a
    ld bc, $0dff
    inc b
    ld b, d
    ld c, e
    ld e, $da
    ld [bc], a
    nop
    ld c, $26
    rst RST_38
    ld e, $da
    ld [bc], a
    ld bc, $0dff
    inc b
    ld d, d
    ld c, e
    ld e, $db
    ld [bc], a
    nop
    ld c, $26
    rst RST_38
    ld e, $db
    ld [bc], a
    ld bc, $0dff
    inc b
    ld l, b
    ld c, e
    ccf
    ld bc, $c51e
    ld [bc], a

Call_006_4b60:
    nop
    inc sp
    ld c, e
    ld c, $26
    nop
    scf
    rst RST_38
    ld e, $c5
    ld [bc], a
    ld bc, $0dff
    dec b
    ld a, b
    ld c, e
    ld e, $c4
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    rst RST_38
    ld e, $c4
    ld [bc], a
    inc bc
    rst RST_38
    dec c
    dec b
    adc b
    ld c, e
    ld e, $d1
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    rst RST_38
    ld e, $d1
    ld [bc], a
    inc bc
    rst RST_38
    dec c
    dec b
    sbc d
    ld c, e
    ld e, $d2
    ld [bc], a
    ld [bc], a
    inc [hl]
    ld c, d
    rrca
    ld b, a
    rst RST_38
    ld e, $d2
    ld [bc], a
    inc bc
    rst RST_38
    dec c
    dec b
    xor d
    ld c, e
    ld e, $d3
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    rst RST_38
    ld e, $d3
    ld [bc], a
    inc bc
    rst RST_38
    dec c
    dec b
    cp h
    ld c, e
    ld e, $d4
    ld [bc], a
    ld [bc], a
    inc [hl]
    ld c, b
    rrca
    ld b, a
    rst RST_38
    ld e, $d4
    ld [bc], a
    inc bc
    rst RST_38
    dec c
    dec b
    call z, $1e4b
    push de
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    rst RST_38
    ld e, $d5
    ld [bc], a
    inc bc
    rst RST_38
    dec c
    dec b
    db $dd
    ld c, e
    ld e, $d6
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    daa
    rst RST_38
    ld e, $d6
    ld [bc], a
    inc bc
    rst RST_38
    dec c
    dec b
    db $ed
    ld c, e
    ld e, $d7
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    rst RST_38
    ld e, $d7
    ld [bc], a
    inc bc
    rst RST_38
    dec c
    dec b
    db $fd
    ld c, e
    ld e, $d9
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    rst RST_38
    ld e, $d9
    ld [bc], a
    inc bc
    rst RST_38
    dec c
    dec b
    dec c
    ld c, h
    ld e, $da
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    rst RST_38
    ld e, $da
    ld [bc], a
    inc bc
    rst RST_38
    dec c
    dec b
    dec e
    ld c, h
    ld e, $db
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    rst RST_38
    ld e, $db
    ld [bc], a
    inc bc
    rst RST_38
    dec c
    dec b
    inc sp
    ld c, h
    ccf
    ld bc, $c51e
    ld [bc], a
    ld [bc], a
    inc [hl]
    ld c, e
    rrca
    ld b, a
    nop
    jr c, @+$01

    ld e, $c5
    ld [bc], a
    inc bc
    rst RST_38
    nop
    inc de
    rst RST_38
    ld d, $61
    inc b
    ld d, c
    ld c, h
    ld [bc], a
    add h
    rst RST_38
    nop
    inc d
    rst RST_38
    ld d, $1c
    inc b
    ld c, [hl]
    ld c, h
    ld [bc], a
    add l
    rst RST_38
    ld [bc], a
    sub h
    rst RST_38
    ld [bc], a
    sbc c
    rst RST_38
    dec c
    inc b
    ldh [rWY], a
    ld bc, $ff06
    ld bc, $ff68
    ld d, $1f
    inc b
    ld h, [hl]
    ld c, h
    ld bc, $ff7c
    ld [bc], a
    dec sp
    rst RST_38
    ld [bc], a
    scf
    rst RST_38
    ld bc, $ff8d
    ld d, $1e
    inc b
    ld [hl], a
    ld c, h
    ld bc, $ff8f
    ld [bc], a
    dec sp
    rst RST_38
    ld bc, $ff9b
    ld bc, $ffc0
    nop
    ld [hl], $ff
    adc l
    ld c, h
    sub l
    ld c, h
    sbc l
    ld c, h
    and l
    ld c, h
    xor l
    ld c, h
    or l
    ld c, h
    cp b
    ld c, h
    ret c

    ld c, h
    db $ed
    ld c, h
    ldh a, [$ff4c]
    di
    ld c, h
    inc bc
    ld c, l
    inc de
    ld c, l
    ld [hl], $4d
    ld d, $4d
    ld h, $4d
    db $ed
    ld c, h
    ld [hl], $4d
    add hl, sp
    ld c, l
    ld b, a
    ld c, l
    inc de
    ld c, l
    ld d, l
    ld c, l
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    nop
    ld [hl], h
    rst RST_38
    ld d, $20
    inc b
    db $d3
    ld c, h
    ccf
    ld bc, $e01e
    ld [bc], a
    nop
    ld h, $18
    sbc d
    rla
    jr nz, jr_006_4cf0

    ld d, $24
    dec b
    ret nc

    ld c, h
    ld b, l
    rst RST_38
    nop
    ld a, d
    rst RST_38
    ld e, $e0
    ld [bc], a
    ld bc, $16ff
    jr nz, jr_006_4ce0

    add sp, $4c
    ld e, $e0
    ld [bc], a

jr_006_4ce0:
    ld [bc], a
    jr jr_006_4d03

    rla
    sbc d
    daa
    ld b, a
    rst RST_38
    ld e, $e0
    ld [bc], a
    inc bc
    rst RST_38
    nop
    inc de
    rst RST_38

jr_006_4cf0:
    nop
    ld l, $ff
    ld d, $21
    inc b
    db $d3
    ld c, h
    ld e, $e1
    ld [bc], a
    nop
    ld h, $18
    sbc e
    rla
    ld hl, $ff27

jr_006_4d03:
    ld d, $21
    dec b
    add sp, $4c
    ld e, $e1
    ld [bc], a
    ld [bc], a
    jr jr_006_4d2f

    rla
    sbc e
    daa
    ld b, a
    rst RST_38
    nop
    inc d
    rst RST_38
    ld d, $22
    inc b
    db $d3
    ld c, h
    ld e, $e2
    ld [bc], a
    nop
    ld h, $18
    sbc h
    rla
    ld [hl+], a
    daa
    rst RST_38
    ld d, $22
    dec b
    add sp, $4c
    ld e, $e2
    ld [bc], a
    ld [bc], a

jr_006_4d2f:
    jr jr_006_4d53

    rla
    sbc h
    daa
    ld b, a
    rst RST_38
    ld [bc], a
    adc $ff
    ld d, $23
    inc b
    db $d3
    ld c, h
    ld e, $e3
    ld [bc], a
    nop
    ld h, $17
    inc hl
    daa
    rst RST_38
    ld d, $23
    dec b
    add sp, $4c
    ld e, $e3
    ld [bc], a
    ld [bc], a
    jr jr_006_4d75

    daa

jr_006_4d53:
    ld b, a
    rst RST_38
    ld d, $25
    dec b
    ld e, l
    ld c, l
    ld bc, $ff2c
    ld bc, $462c
    ld a, [de]
    rst RST_38
    inc e
    ld c, [hl]
    inc h
    ld c, [hl]
    inc l
    ld c, [hl]
    inc [hl]
    ld c, [hl]
    inc a
    ld c, [hl]
    ld b, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld d, h
    ld c, [hl]
    ld e, h
    ld c, [hl]
    ld h, h

jr_006_4d75:
    ld c, [hl]
    ld l, h
    ld c, [hl]
    ld [hl], h
    ld c, [hl]
    ld a, h
    ld c, [hl]
    add h
    ld c, [hl]
    adc h
    ld c, [hl]
    sub h
    ld c, [hl]
    sbc h
    ld c, [hl]
    and h
    ld c, [hl]
    xor h
    ld c, [hl]
    or h
    ld c, [hl]
    cp h
    ld c, [hl]
    call nz, $cc4e
    ld c, [hl]
    call nc, $dc4e
    ld c, [hl]
    db $e4
    ld c, [hl]
    db $ec
    ld c, [hl]
    db $f4
    ld c, [hl]
    db $fc
    ld c, [hl]
    inc b
    ld c, a
    inc c
    ld c, a
    inc d
    ld c, a
    inc e
    ld c, a
    inc h
    ld c, a
    inc l
    ld c, a
    inc [hl]
    ld c, a
    inc a
    ld c, a
    ld b, h
    ld c, a
    ld c, h
    ld c, a
    ld d, h
    ld c, a
    ld e, h
    ld c, a
    ld h, h
    ld c, a
    ld l, h
    ld c, a
    ld [hl], h
    ld c, a
    ld a, h
    ld c, a
    add h
    ld c, a
    adc h
    ld c, a
    sub h
    ld c, a
    sbc h
    ld c, a
    and h
    ld c, a
    xor h
    ld c, a
    or h
    ld c, a
    cp h
    ld c, a
    call nz, $cc4f
    ld c, a
    call nc, $dc4f
    ld c, a
    db $e4
    ld c, a
    db $ec
    ld c, a
    db $f4
    ld c, a
    db $fc
    ld c, a
    inc b
    ld d, b
    inc c
    ld d, b
    inc d
    ld d, b
    inc e
    ld d, b
    inc h
    ld d, b
    inc l
    ld d, b
    inc [hl]
    ld d, b
    inc a
    ld d, b
    ld b, h
    ld d, b
    ld c, h
    ld d, b
    ld d, h
    ld d, b
    ld e, h
    ld d, b
    ld h, h
    ld d, b
    ld l, h
    ld d, b
    ld [hl], h
    ld d, b
    ld a, h
    ld d, b
    add h
    ld d, b
    adc h
    ld d, b
    sub h
    ld d, b
    sbc h
    ld d, b
    and h
    ld d, b
    xor h
    ld d, b
    or h
    ld d, b
    cp h
    ld d, b
    call nz, $cc50
    ld d, b
    call nc, $dc50
    ld d, b
    db $e4
    ld d, b
    db $ec
    ld d, b
    db $f4
    ld d, b
    db $fc
    ld d, b
    inc b
    ld d, c
    rlca
    ld d, c
    db $d3
    ld d, a
    ld d, $51
    ld l, a
    ld d, h
    ld [hl], d
    ld d, h
    db $d3
    ld d, a
    xor h
    ld e, b
    add hl, sp
    ld e, l
    add c
    ld d, h
    add hl, hl
    ld e, b
    ccf
    ld e, l
    ld [hl], b
    ld e, l
    sub b
    ld d, h
    add hl, hl
    ld e, b
    ld e, b
    ld d, e
    ld [hl], e
    ld e, l
    sbc a
    ld d, h
    add hl, hl
    ld e, b
    rst RST_08
    ld d, c
    halt

Call_006_4e45:
    ld e, l
    xor [hl]
    ld d, h
    db $d3
    ld d, a
    ei
    ld d, c
    ld a, c
    ld e, l
    cp l
    ld d, h
    db $d3
    ld d, a
    and h
    ld e, d
    add h
    ld e, l
    call z, $d354
    ld d, a
    add hl, sp
    ld e, [hl]
    dec [hl]
    ld e, a
    ld a, [hl-]
    ld e, c
    push hl
    ld d, a
    ld c, h
    ld d, d
    jr c, jr_006_4ec5

    ld d, b
    ld d, l
    jr c, jr_006_4ec9

    ld a, [hl-]
    ld e, c
    add hl, sp
    ld e, a
    xor b
    ld e, a
    db $d3
    ld d, a
    push de
    ld e, a
    cp h
    ld h, d
    ld d, c
    ld d, l
    db $d3
    ld d, a
    adc h
    ld d, d
    cp a
    ld h, d
    ld h, b
    ld d, l
    db $d3
    ld d, a
    jp nz, $d762

    ld h, d
    ld l, a
    ld d, l
    db $d3
    ld d, a
    xor $5a
    db $dd
    ld h, d
    ld a, [hl]
    ld d, l
    ld a, [hl-]
    ld e, b
    ld a, [hl-]
    ld e, c
    jp c, $8f62

    ld d, l
    db $d3
    ld d, a
    ei
    ld d, d
    ldh a, [c]
    ld h, d
    and b
    ld d, l
    ld d, d
    ld e, b
    ld a, [hl-]
    ld e, c
    inc c
    ld h, e
    xor a
    ld d, l
    ld l, b
    ld e, b
    ld a, [hl-]
    ld e, c
    jr jr_006_4f11

    cp [hl]
    ld d, l
    ld a, [hl]
    ld e, b
    ld a, [hl-]
    ld e, c
    ld a, $63
    call $2955
    ld e, b
    ld a, [hl-]
    ld e, c
    ld b, c
    ld h, e
    call c, $2955
    ld e, b
    ld e, b
    ld d, e
    ld b, h

jr_006_4ec5:
    ld h, e
    db $eb
    ld d, l
    db $d3

jr_006_4ec9:
    ld d, a
    add hl, sp
    ld e, e
    ld b, a
    ld h, e
    ld a, [$2955]
    ld e, b
    ld a, [hl-]
    ld e, c
    ld c, d
    ld h, e
    dec bc
    ld d, [hl]
    add hl, hl
    ld e, b
    ld a, [hl-]
    ld e, c
    ld c, l
    ld h, e
    ld a, [de]
    ld d, [hl]
    add hl, hl
    ld e, b
    ld a, [hl-]
    ld e, c
    ld d, b
    ld h, e
    add hl, hl
    ld d, [hl]
    add hl, hl
    ld e, b
    ld a, [hl-]
    ld e, c
    ld d, e
    ld h, e
    jr c, jr_006_4f46

    db $d3
    ld d, a
    ld a, [hl-]
    ld e, c
    ld h, l
    ld h, e
    ld b, a
    ld d, [hl]
    dec bc
    ld e, b
    ld a, [hl-]
    ld e, c
    ld l, h
    ld h, e
    ld d, [hl]
    ld d, [hl]
    add hl, hl
    ld e, b
    ld a, [hl-]
    ld e, c
    ld l, a
    ld h, e
    ld h, l
    ld d, [hl]
    add hl, hl
    ld e, b
    ld a, [hl-]
    ld e, c
    ld [hl], d
    ld h, e
    ld [hl], h
    ld d, [hl]
    db $d3

jr_006_4f11:
    ld d, a
    ld a, [hl-]
    ld e, c
    ld [hl], l
    ld h, e
    add l
    ld d, [hl]
    add hl, hl
    ld e, b
    jp nz, Jump_006_785b

    ld h, e
    sub h
    ld d, [hl]
    add hl, hl
    ld e, b
    add b
    ld d, e
    ld a, e
    ld h, e
    and e
    ld d, [hl]
    add hl, hl
    ld e, b
    ld e, b
    ld d, e
    ld a, [hl]
    ld h, e
    or d
    ld d, [hl]
    db $d3
    ld d, a
    ld a, [hl-]
    ld e, c
    add c
    ld h, e
    jp Jump_000_2956


    ld e, b
    pop af
    ld e, e
    add h
    ld h, e
    jp nc, $d356

    ld d, a
    ld a, [hl-]
    ld e, c
    sub e
    ld h, e

jr_006_4f46:
    pop hl
    ld d, [hl]
    add hl, hl
    ld e, b
    sub [hl]
    ld h, e
    xor [hl]
    ld h, e
    ldh a, [rRP]
    add hl, hl
    ld e, b
    ld [hl+], a
    ld e, h
    or c
    ld h, e
    rst RST_38
    ld d, [hl]
    add hl, hl
    ld e, b
    ld d, c
    ld e, h
    cp h
    ld h, e
    dec a
    ld e, c
    inc hl
    ld e, b
    ld a, [hl-]
    ld e, c
    ret


    ld h, e
    ld c, $57
    db $d3
    ld d, a
    adc d
    ld e, h
    sub $63
    dec a
    ld e, c
    inc hl
    ld e, b
    ld a, [hl-]
    ld e, c
    db $e3
    ld h, e
    xor $63
    add hl, hl
    ld e, b
    ld a, [hl-]
    ld e, c
    db $10
    ld h, h
    dec e
    ld d, a
    add hl, hl
    ld e, b
    ld e, b
    ld d, e
    inc de
    ld h, h
    ld a, [hl-]
    ld e, c
    ld hl, sp+$57
    db $e4
    ld e, h
    ld d, $64
    ld l, $57
    add hl, hl
    ld e, b
    ld a, [hl-]
    ld e, c
    add hl, de
    ld h, h
    dec a
    ld d, a
    sub [hl]
    ld e, b
    ld a, [hl-]
    ld e, c
    inc sp
    ld h, h
    ld c, h
    ld d, a
    add hl, hl
    ld e, b
    ld e, b
    ld d, e
    ld [hl], $64
    ld e, e
    ld d, a
    db $d3
    ld d, a
    add hl, sp
    ld h, h
    ld h, h
    ld h, h
    ld l, d
    ld d, a
    db $d3
    ld d, a
    ld h, a
    ld h, h
    ld b, $65
    rst RST_30
    ld h, h
    db $d3
    ld d, a
    xor a
    ld d, e
    ld a, [de]
    ld h, l
    ld a, c
    ld d, a
    db $d3
    ld d, a
    inc e
    ld e, l
    rra
    ld h, l
    dec bc
    ld h, l
    db $d3
    ld d, a
    jp hl


    ld d, e
    inc h
    ld h, l
    adc b
    ld d, a
    db $d3
    ld d, a
    nop
    ld e, l
    ld a, [hl]
    ld h, h
    sub a
    ld d, a
    add hl, hl
    ld e, b
    ld b, b
    ld d, h
    add c
    ld h, h
    and [hl]
    ld d, a
    add hl, hl
    ld e, b
    ld a, [hl-]
    ld e, c
    add h
    ld h, h
    or l
    ld d, a
    add hl, hl
    ld e, b
    ld a, [hl-]
    ld e, c
    adc c
    ld h, h
    call nz, $2957
    ld e, b
    ld a, [hl-]
    ld e, c
    jr c, @+$61

    jr c, @+$61

    jr c, @+$61

    jr c, @+$61

    jr c, @+$61

    jr c, @+$61

    jr c, @+$61

    jr c, @+$61

    dec [hl]
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    and c
    ld e, d
    dec [hl]
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    and c
    ld e, d
    dec [hl]
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    and c
    ld e, d
    dec [hl]
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    and c
    ld e, d
    dec [hl]
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    and c
    ld e, d
    dec [hl]
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    and c
    ld e, d
    dec [hl]
    ld e, a
    ld a, [hl-]
    ld e, c
    push hl
    ld d, a
    and c
    ld e, d
    jr c, jr_006_509d

    jr c, @+$61

    jr c, jr_006_50a1

    jr c, jr_006_50a3

    jr c, jr_006_50a5

    jr c, @+$61

    jr c, jr_006_50a9

    jr c, jr_006_50ab

    jr c, jr_006_50ad

    jr c, @+$61

    jr c, jr_006_50b1

    jr c, jr_006_50b3

    jr c, jr_006_50b5

    jr c, @+$61

    jr c, jr_006_50b9

    jr c, jr_006_50bb

    jr c, jr_006_50bd

    jr c, jr_006_50bf

    jr c, jr_006_50c1

    jr c, jr_006_50c3

    dec [hl]
    ld e, a
    inc [hl]
    ld d, l
    push hl
    ld d, a
    and c
    ld e, d
    inc de
    ld h, h
    ld de, $f855
    ld d, a
    and c
    ld e, d
    jr c, jr_006_50d5

    jr c, jr_006_50d7

    jr c, jr_006_50d9

    jr c, @+$61

    jr c, jr_006_50dd

    jr c, @+$61

    jr c, jr_006_50e1

    jr c, jr_006_50e3

    jr c, jr_006_50e5

    jr c, @+$61

    jr c, jr_006_50e9

    jr c, @+$61

    jr c, jr_006_50ed

    jr c, jr_006_50ef

    jr c, jr_006_50f1

    jr c, @+$61

    inc de
    ld h, h
    ld de, $f855
    ld d, a
    and c
    ld e, d
    inc de

jr_006_509d:
    ld h, h
    ld de, $f855

jr_006_50a1:
    ld d, a
    and c

jr_006_50a3:
    ld e, d
    inc de

jr_006_50a5:
    ld h, h
    ld de, $f855

jr_006_50a9:
    ld d, a
    and c

jr_006_50ab:
    ld e, d
    inc de

jr_006_50ad:
    ld h, h
    ld de, $f855

jr_006_50b1:
    ld d, a
    and c

jr_006_50b3:
    ld e, d
    inc de

jr_006_50b5:
    ld h, h
    ld de, $f855

jr_006_50b9:
    ld d, a
    and c

jr_006_50bb:
    ld e, d
    add h

jr_006_50bd:
    ld e, l
    db $db

jr_006_50bf:
    ld d, h
    db $d3

jr_006_50c1:
    ld d, a
    add a

jr_006_50c3:
    ld e, l
    adc h
    ld h, h
    sub c
    ld h, h
    db $d3
    ld d, a
    and b
    ld h, h
    adc h
    ld h, h
    sub c
    ld h, h
    db $d3
    ld d, a
    cp l
    ld h, h
    adc h

jr_006_50d5:
    ld h, h
    sub c

jr_006_50d7:
    ld h, h
    db $d3

jr_006_50d9:
    ld d, a
    jp c, $c964

jr_006_50dd:
    ld h, e
    ld c, $57
    db $d3

jr_006_50e1:
    ld d, a
    and a

jr_006_50e3:
    ld e, h
    ret


jr_006_50e5:
    ld h, e
    ld c, $57
    db $d3

jr_006_50e9:
    ld d, a
    call nz, Call_000_065c

jr_006_50ed:
    ld h, l
    rst RST_30

jr_006_50ef:
    ld h, h
    db $d3

jr_006_50f1:
    ld d, a
    call z, Call_000_1f53
    ld h, l
    dec bc
    ld h, l
    db $d3
    ld d, a
    ld b, $54
    rra
    ld h, l
    dec bc
    ld h, l
    db $d3
    ld d, a
    inc hl
    ld d, h
    nop
    rlca
    rst RST_38
    rlca
    inc b
    db $fd
    ld e, h
    jr c, jr_006_5114

    ld [bc], a
    dec d
    add hl, sp
    rlca
    ld [$171d], sp

jr_006_5114:
    adc h
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld d, $5e
    ld d, c
    nop
    rla
    ld h, [hl]
    ld d, c
    nop
    dec hl
    ld [hl], b
    ld d, c
    nop
    ld l, $78
    ld d, c
    nop
    ld [hl], l
    ld a, b

jr_006_5131:
    ld d, c
    nop
    halt
    ld a, b
    ld d, c
    nop
    ld [hl], a
    ld a, b
    ld d, c
    nop
    cpl
    ld l, a
    ld h, b
    nop
    ld [hl], $8b
    ld d, c
    nop
    ld b, b
    ld l, l
    ld d, c
    nop
    ld b, d
    sub a
    ld d, c
    nop
    ld b, h
    sbc d
    ld d, c
    nop
    ld b, [hl]
    sub a
    ld d, c
    nop
    ld c, b
    or e
    ld d, c
    nop
    ld e, a
    add hl, hl
    ld e, a
    cp $fe
    ld a, [hl-]
    ld e, c
    ld b, b
    inc b
    ld h, e
    ld d, c
    rst RST_38
    ld b, [hl]
    nop
    rst RST_38
    ld b, b
    dec b
    ld l, h

jr_006_5169:
    ld d, c
    nop
    ld h, c
    rst RST_38
    ld bc, $ffe6
    ld d, $28
    dec b
    ld l, l

jr_006_5174:
    ld d, c
    ld [bc], a
    rst RST_00
    rst RST_38
    ld e, d
    rlca
    ld bc, $5aed
    dec d
    ld [bc], a
    ld h, d
    ld d, $07
    inc b
    add a
    ld d, c
    ld c, b
    rst RST_38
    rla
    sub l
    ld c, b
    rst RST_38
    ld h, a
    dec b
    sub h
    ld d, c
    ld [bc], a
    db $e3
    rla
    sub c
    rst RST_38
    ld bc, $ff63
    ld bc, $ff03
    ld d, $81
    inc b
    and a
    ld d, c
    ld d, $a9
    inc b
    and a
    ld d, c
    ld [bc], a
    ld l, e
    rst RST_38
    inc a
    inc bc
    dec b
    call z, Call_000_0151
    inc a
    jr jr_006_5131

    jr @-$55

    rst RST_38
    ld d, $a0
    inc b
    ret nz

    ld d, c
    ld d, $a9
    inc b
    ret nz

    ld d, c
    ld [bc], a
    ld l, e
    rst RST_38
    inc a
    inc bc
    dec b
    call z, Call_000_0151
    ld b, h
    jr jr_006_5169

    jr jr_006_5174

    rst RST_38
    ld [bc], a
    jr nz, @+$01

    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $60
    ld h, b
    nop
    ld [hl], l
    ld h, b
    ld h, b
    nop
    halt
    ld h, b
    ld h, b
    nop
    ld [hl], a
    ld h, b
    ld h, b
    nop
    cpl
    ld a, h
    ld h, b
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    ld e, a
    add hl, hl
    ld e, a
    nop
    ld [hl], e
    ld c, [hl]
    ld e, h
    cp $fe
    ld a, [hl-]
    ld e, c
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    dec b
    ld b, a
    cpl
    ld d, d
    ld bc, $3202
    ld d, d
    ld bc, $2f06
    ld d, d
    ld bc, $2f08
    ld d, d
    dec b
    ld b, $2f
    ld d, d
    dec b
    inc d
    dec [hl]
    ld d, d
    dec b
    dec de
    cpl
    ld d, d
    dec b
    ld sp, $522f
    dec b
    ld [hl], $2f
    ld d, d
    dec b
    jr c, jr_006_5259

    ld d, d
    cp $fe
    ld a, [hl-]
    ld e, c
    ld bc, $ffa7
    ld [bc], a
    adc [hl]
    rst RST_38
    ld d, $5b
    inc b
    ld b, c
    ld d, d
    ld [bc], a
    sub c
    inc sp
    inc d
    rla
    ld e, e
    rst RST_38
    ld e, $b0
    rra
    cp h
    ld [bc], a
    ld [de], a
    inc [hl]
    inc d
    jr @+$5d

    rst RST_38
    ld d, $aa
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc b
    ld [bc], a
    ld h, l
    ld d, d

jr_006_5259:
    inc b
    rlca
    ld [hl], b
    ld d, d
    inc b
    ld de, $5289
    cp $fe
    ld a, [hl-]
    ld e, c
    ld c, [hl]
    dec b
    ld a, e
    ld d, d
    dec a
    dec b
    ld l, a
    ld d, d
    ld bc, $ff17
    ld e, b
    dec b
    ld a, e
    ld d, d
    dec a
    dec b
    ld l, a
    ld d, d
    ld bc, $ff17
    ld bc, $ff18
    ld d, b
    dec b
    ld a, e
    ld d, d
    ld a, $05
    ld l, a
    ld d, d
    ld bc, $ff17
    ld bc, $ff19
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    dec b
    ld b, a
    cpl
    ld d, d
    ld bc, $3202
    ld d, d
    ld bc, $2f06
    ld d, d
    ld bc, $2f08
    ld d, d
    dec b
    ld b, $2f
    ld d, d
    dec b
    inc d
    cpl
    ld d, d
    dec b
    dec de
    jp nc, Jump_000_0552

    ld sp, $522f
    dec b
    ld [hl], $2f
    ld d, d
    dec b
    jr c, jr_006_52ea

    ld d, d
    nop
    dec sp
    call nz, $fe52
    cp $3a
    ld e, c
    ld e, d
    ld [HeaderManufacturerCode], sp
    ld bc, $010f
    ld c, $5a
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    ld d, $79
    dec b
    rst RST_20
    ld d, d
    ld d, $5c
    inc b
    ldh a, [rHDMA2]
    ld e, $b0
    rra
    cp e
    ld [bc], a
    ld [de], a
    inc sp
    dec de
    rla
    ld e, h
    rst RST_38
    ld [bc], a
    cp d
    inc sp

jr_006_52ea:
    dec de
    rla
    ld a, c
    rla
    ld e, h
    rst RST_38
    ld e, $b0
    rra
    cp h
    ld [bc], a
    ld [de], a
    inc [hl]
    dec de
    jr jr_006_5356

    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    dec b
    ld b, a
    cpl
    ld d, e
    ld bc, $3202
    ld d, d
    ld bc, $2f06
    ld d, d
    ld bc, $2f08
    ld d, d
    dec b
    ld b, $2f
    ld d, d
    dec b
    inc d
    cpl
    ld d, d
    dec b
    dec de
    cpl
    ld d, d
    dec b
    ld sp, $522f
    dec b
    ld [hl], $2f
    ld d, d
    dec b
    jr c, jr_006_5359

    ld d, d
    cp $fe
    ld a, [hl-]
    ld e, c
    ld d, $5d
    inc b
    ld b, d
    ld d, e
    ld d, $75
    inc b
    ld c, l
    ld d, e
    ld [bc], a
    rst RST_30
    inc sp
    ld b, a
    rla
    ld e, l
    rla
    ld [hl], l
    rst RST_38
    ld e, $7c
    rra
    cp h
    ld [bc], a
    ld [de], a
    inc [hl]
    ld b, a
    jr @+$5f

    rst RST_38
    ld e, $7c
    rra
    cp e
    ld [bc], a
    ld [de], a
    inc sp
    ld b, a
    rla

jr_006_5356:
    ld e, l
    rst RST_38
    rlca

jr_006_5359:
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $60
    ld h, b
    nop
    ld [hl], l
    ld h, b
    ld h, b
    nop
    halt
    ld h, b
    ld h, b
    nop
    ld [hl], a
    ld h, b
    ld h, b
    nop
    cpl
    ld a, h
    ld h, b
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    ld e, a
    add hl, hl
    ld e, a
    cp $fe
    ld a, [hl-]
    ld e, c
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $60
    ld h, b
    nop
    ld [hl], l
    ld h, b
    ld h, b
    nop
    halt
    ld h, b
    ld h, b
    nop
    ld [hl], a
    ld h, b
    ld h, b
    nop
    cpl
    ld a, h
    ld h, b
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    ld e, a
    add hl, hl
    ld e, a
    nop
    ld [hl], e
    xor h
    ld d, e
    cp $fe
    ld a, [hl-]
    ld e, c
    ld bc, $ffb1
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    ret nz

    ld d, e
    cp $fe
    ld a, [hl-]
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b6
    ld [bc], a
    ld b, $21
    ld d, l
    inc sp
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    db $dd
    ld d, e
    cp $fe
    ld a, [hl-]
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b6
    ld [bc], a
    ld b, $21
    ld d, l
    ld e, d
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    ld a, [$fe53]
    cp $3a
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b8
    ld [bc], a
    ld b, $21
    ld d, l
    dec [hl]
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    rla
    ld d, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b8
    ld [bc], a
    ld b, $21
    ld d, l
    ld e, e
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    inc [hl]
    ld d, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b8
    ld [bc], a
    ld b, $21
    ld d, l
    ld e, h
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $60
    ld h, b
    nop
    ld [hl], l
    ld h, b
    ld h, b
    nop
    halt
    ld h, b
    ld h, b
    nop
    ld [hl], a
    ld h, b
    ld h, b
    nop
    cpl
    ld a, h
    ld h, b
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    ld e, a
    add hl, hl
    ld e, a
    nop
    ld [hl], e
    ld l, h
    ld d, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld [bc], a
    reti


    rst RST_38
    nop
    ld b, $ff
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $01
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $02
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $03
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $04
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $05
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $06
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $07
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $07
    ld [bc], a
    inc b
    ld [$171d], sp
    sbc c
    rst RST_38
    rlca
    inc b
    db $fd
    ld e, h
    ld b, b
    dec b
    db $10
    ld d, l
    ccf
    ld bc, $0138
    ld [bc], a
    ld d, $1e
    add $02
    ld a, [de]
    ld l, h
    ld d, $8d
    inc b
    dec c
    ld d, l
    ld d, [hl]
    ld bc, $aa17
    ld [$171d], sp
    adc l
    rst RST_38
    ld a, [hl-]
    ld bc, $ff08
    rlca
    inc b
    db $fd
    ld e, h
    ld b, b
    dec b
    inc sp
    ld d, l
    ccf
    ld bc, $0138
    ld [bc], a
    ld d, $1e
    add $02
    ld a, [de]
    ld l, h
    ld d, $8e
    inc b
    ld sp, $5755
    rla
    xor e
    ld [$171d], sp
    adc [hl]
    rst RST_38
    dec sp
    ld [$07ff], sp
    inc b
    db $fd
    ld e, h
    ld [bc], a
    ld e, $16
    adc l
    inc b
    ld c, d
    ld d, l
    ld d, [hl]
    ld b, $17
    xor d
    ld [$171d], sp
    adc l
    rla
    sub [hl]
    rst RST_38
    ld a, [hl-]
    ld b, $08
    rla
    sub [hl]
    rst RST_38
    rst RST_38
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $0b
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $0c
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $0d
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $0e
    ld [bc], a
    inc b
    ld [$171d], sp
    sub b
    rst RST_38
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $0f
    ld [bc], a
    inc b
    ld [$171d], sp
    sbc l
    rst RST_38
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $10
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $11
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $12
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $13
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $14
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $15
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $16
    ld [bc], a
    inc b
    ld [$171d], sp
    adc a
    rst RST_38
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $17
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $18
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $19
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $1a
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $1b
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $1c
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $1d
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $1e
    ld [bc], a
    inc b
    ld [$171d], sp
    sub a
    rst RST_38
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $1f
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $20
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $21
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $22
    ld [bc], a
    inc b
    ld [$171d], sp
    sbc b
    rst RST_38
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $23
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $24
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $25
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $26
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $27
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $29
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $2c
    ld [bc], a
    inc b
    ld [$171d], sp
    add a
    rst RST_38
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $2e
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $2f
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $30
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $31
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $32
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $34
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $36
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $37
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $38
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $39
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $3a
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    dec b
    inc hl
    ld e, b
    ld [bc], a
    ld d, l
    jr z, jr_006_580c

    dec b
    ld h, $58
    ld [hl-], a
    dec b
    db $e4
    ld d, a
    ld [bc], a
    ld a, l
    rst RST_38
    ld d, $aa
    dec b
    inc hl
    ld e, b
    ld [bc], a
    ld d, l
    jr z, jr_006_581f

    dec b
    ld h, $58
    ld [hl-], a
    dec b
    db $e4
    ld d, a
    ld [bc], a
    ld a, l
    rst RST_38
    ld d, $ab
    dec b
    inc hl
    ld e, b
    ld [bc], a
    ld d, l
    jr z, jr_006_5832

    dec b
    ld h, $58
    ld [hl-], a
    dec b
    db $e4
    ld d, a
    ld [bc], a
    ld a, l
    rst RST_38
    rlca

jr_006_580c:
    dec b
    inc hl
    ld e, b
    ld [bc], a
    ld d, l
    jr z, @+$33

    dec b
    ld h, $58
    ld [hl-], a
    dec b
    db $e4
    ld d, a
    ld d, $a5
    dec b
    and [hl]
    ld h, c

jr_006_581f:
    ld e, e
    rla
    and e
    rst RST_38
    ld [bc], a
    ld d, [hl]
    rst RST_38
    ld [bc], a
    ld d, a
    rst RST_38
    rlca
    dec b
    inc hl
    ld e, b
    ld [bc], a
    ld d, l
    jr z, @+$33

    dec b

jr_006_5832:
    ld h, $58
    ld [hl-], a
    dec b
    add hl, sp
    ld e, b
    ld e, e
    rst RST_38
    rlca
    dec b
    inc hl
    ld e, b
    ld [bc], a
    ld d, l
    jr z, jr_006_5873

    dec b
    ld h, $58
    ld [hl-], a
    dec b
    add hl, sp
    ld e, b
    ld d, $a7
    dec b
    and [hl]
    ld h, c
    ld e, e
    rla
    and h
    rst RST_38
    rlca
    dec b
    inc hl
    ld e, b
    ld [bc], a
    ld d, l
    jr z, jr_006_588b

    dec b
    ld h, $58
    ld [hl-], a
    dec b
    add hl, sp
    ld e, b
    ld d, $7d
    dec b
    ldh [c], a
    ld d, a
    ld e, e
    rst RST_38
    rlca
    dec b
    inc hl
    ld e, b
    ld [bc], a
    ld d, l
    jr z, jr_006_58a1

    dec b
    ld h, $58

jr_006_5873:
    ld [hl-], a
    dec b
    add hl, sp
    ld e, b
    ld d, $7b
    dec b
    ldh [c], a
    ld d, a
    ld e, e
    rst RST_38
    rlca
    dec b
    inc hl
    ld e, b
    ld [bc], a
    ld d, l
    jr z, jr_006_58b7

    dec b
    ld h, $58
    ld [hl-], a
    dec b

jr_006_588b:
    add hl, sp
    ld e, b

jr_006_588d:
    ld d, $a6
    dec b
    and [hl]
    ld h, c
    ld e, e
    rla
    and d
    rst RST_38
    rlca
    dec b
    inc hl
    ld e, b
    ld [bc], a
    ld d, l
    jr z, jr_006_58cf

    dec b
    ld h, $58

jr_006_58a1:
    ld [hl-], a
    dec b
    add hl, sp
    ld e, b
    ld d, $7c
    dec b
    ldh [c], a
    ld d, a
    ld e, e
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    inc bc
    dec l

jr_006_58b7:
    ld e, c
    inc bc
    ld c, $43
    ld e, c
    inc bc
    db $10
    ld d, a
    ld e, c
    inc bc
    ld de, $5969
    inc bc
    ld [de], a
    ld a, e
    ld e, c
    inc bc
    inc de
    adc a
    ld e, c
    inc bc
    ld d, $9c

jr_006_58cf:
    ld e, c
    inc bc
    rla
    xor c
    ld e, c
    inc bc
    jr jr_006_588d

    ld e, c
    inc bc
    add hl, de
    jp $0359


    ld a, [de]
    ret nc

    ld e, c
    inc bc
    dec de
    db $dd
    ld e, c
    inc bc
    inc e
    pop af
    ld e, c
    inc bc
    dec e
    cp $59
    inc bc
    ld e, $40
    ld e, c
    inc bc
    ld hl, $5a0b
    inc bc
    ld [hl+], a
    jr jr_006_5952

    inc bc
    inc h
    ld b, b
    ld e, c
    inc bc
    dec hl
    dec h
    ld e, d
    inc bc
    inc l
    ld [hl-], a
    ld e, d
    inc bc
    ld l, $3f
    ld e, d
    inc bc
    cpl
    ld c, h
    ld e, d
    inc bc
    ld sp, $5940
    inc bc
    ld [hl-], a
    ld e, [hl]
    ld e, d
    inc b
    dec b
    ld l, e
    ld e, d
    inc b
    ld [$5940], sp
    inc b
    ld a, [bc]
    ld a, l
    ld e, d
    inc b
    dec c
    adc a
    ld e, d
    cp $fe
    ld a, [hl-]
    ld e, c
    ld b, l
    rst RST_38
    ld [bc], a
    ld a, [hl+]
    rst RST_38
    ld d, d
    inc bc
    dec b
    ld a, [hl+]
    ld e, c
    ld d, e
    inc bc
    ld e, $03
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld [bc], a
    scf
    rst RST_38
    ld bc, $ff93
    ld [bc], a
    ld d, b
    rst RST_38
    ld d, d
    ld c, $05
    ld a, [hl+]
    ld e, c
    ld d, $a7
    dec b
    and [hl]
    ld h, c
    ld d, e
    ld c, $1e
    ld c, $02

jr_006_5952:
    db $10
    ld c, c
    rla
    and h
    rst RST_38
    ld d, d
    db $10
    dec b
    ld a, [hl+]
    ld e, c
    ld d, $7d
    dec b
    and [hl]
    ld h, c
    ld d, e
    db $10
    ld e, $10
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    ld de, $2a05
    ld e, c
    ld d, $7b
    dec b
    and [hl]
    ld h, c
    ld d, e
    ld de, $111e
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    ld [de], a
    dec b
    ld a, [hl+]
    ld e, c
    ld d, $a6
    dec b
    and [hl]
    ld h, c
    ld d, e
    ld [de], a
    ld e, $12
    ld [bc], a
    db $10
    ld c, c
    rla
    and d
    rst RST_38
    ld d, d
    inc de
    dec b
    ld a, [hl+]
    ld e, c
    ld d, e
    inc de
    ld e, $13
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    ld d, $05
    ld a, [hl+]
    ld e, c
    ld d, e
    ld d, $1e
    ld d, $02
    db $10
    ld c, c
    rst RST_38
    ld d, d
    rla
    dec b
    ld a, [hl+]
    ld e, c
    ld d, e
    rla
    ld e, $17
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    jr jr_006_59be

    ld a, [hl+]
    ld e, c
    ld d, e
    jr jr_006_59dc

jr_006_59be:
    jr jr_006_59c2

    db $10
    ld c, c

jr_006_59c2:
    rst RST_38
    ld d, d
    add hl, de
    dec b
    ld a, [hl+]
    ld e, c
    ld d, e
    add hl, de
    ld e, $19
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    ld a, [de]
    dec b
    ld a, [hl+]
    ld e, c
    ld d, e
    ld a, [de]
    ld e, $1a
    ld [bc], a
    db $10
    ld c, c

jr_006_59dc:
    rst RST_38
    ld d, d
    dec de
    dec b
    ld a, [hl+]
    ld e, c
    ld d, $a5
    dec b
    and [hl]
    ld h, c
    ld d, e
    dec de
    ld e, $1b
    ld [bc], a
    db $10
    ld c, c
    rla
    and e
    rst RST_38
    ld d, d
    inc e
    dec b
    ld a, [hl+]
    ld e, c
    ld d, e
    inc e
    ld e, $1c
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    dec e
    dec b
    ld a, [hl+]
    ld e, c
    ld d, e
    dec e
    ld e, $1d
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    ld hl, $2a05
    ld e, c
    ld d, e
    ld hl, $211e
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    ld [hl+], a
    dec b
    ld a, [hl+]
    ld e, c
    ld d, e
    ld [hl+], a
    ld e, $22
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    dec hl
    dec b
    ld a, [hl+]
    ld e, c
    ld d, e
    dec hl
    ld e, $2b
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    inc l
    dec b
    ld a, [hl+]
    ld e, c
    ld d, e
    inc l
    ld e, $2c
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    ld l, $05
    ld a, [hl+]
    ld e, c
    ld d, e
    ld l, $1e
    ld l, $02
    db $10
    ld c, c
    rst RST_38
    ld d, d
    cpl
    dec b
    ld a, [hl+]
    ld e, c
    ld d, $7c
    dec b
    and [hl]
    ld h, c
    ld d, e
    cpl
    ld e, $2f
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    ld [hl-], a
    dec b
    ld a, [hl+]
    ld e, c
    ld d, e
    ld [hl-], a
    ld e, $32
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld e, l
    dec b
    dec b
    ld a, [hl+]
    ld e, c
    ld d, $7d
    dec b
    and [hl]
    ld h, c
    ld d, h
    dec b
    ld e, $45
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld e, l
    ld a, [bc]
    dec b
    ld a, [hl+]
    ld e, c
    ld d, $97
    dec b
    and [hl]
    ld h, c
    ld d, h
    ld a, [bc]
    ld e, $4a
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld e, l
    dec c
    dec b
    ld a, [hl+]
    ld e, c
    ld d, $98
    dec b
    and [hl]
    ld h, c
    ld d, h
    dec c
    ld e, $4d
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld [bc], a
    ld d, d
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld c, e
    cp b
    ld e, d
    nop
    ld c, h
    call $fe5a
    cp $3a
    ld e, c
    ld l, $2f
    inc b
    add $5a
    ld bc, $334e
    cpl
    rla
    ld e, c
    rla
    xor h
    rst RST_38
    ld bc, $344f
    cpl
    jr jr_006_5b25

    rst RST_38
    add hl, de
    add hl, hl
    inc b
    rst RST_18
    ld e, d
    inc [hl]
    jr nc, @+$41

    ld bc, $5201
    ld [bc], a
    ld b, d
    dec [hl]
    add hl, hl
    inc sp
    cpl
    rst RST_38
    inc [hl]
    cpl
    ccf
    ld [bc], a
    ld bc, $0252
    ld b, c
    ld [bc], a
    ld b, d
    dec [hl]
    ld b, c
    inc sp
    jr nc, @+$01

    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    dec b

jr_006_5af7:
    ld b, a
    cpl
    ld d, d
    ld bc, $3202
    ld d, d
    ld bc, $2f06
    ld d, d
    ld bc, $2f08
    ld d, d
    dec b
    ld b, $22
    ld e, e
    dec b
    inc d
    cpl
    ld d, d
    dec b
    dec de
    cpl
    ld d, d
    dec b
    ld sp, $522f
    dec b
    ld [hl], $2f
    ld d, d
    dec b
    jr c, jr_006_5b4c

    ld d, d
    cp $fe
    ld a, [hl-]
    ld e, c
    ld d, $5a
    inc b

jr_006_5b25:
    ld l, $5b
    nop
    ld b, l
    inc sp
    ld b, $17
    ld e, d
    rst RST_38
    ld e, $b0
    rra
    cp h
    ld [bc], a
    ld [de], a
    inc [hl]
    ld b, $18
    ld e, d
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    dec b
    ld b, a
    cpl
    ld d, d
    ld bc, $3202
    ld d, d
    ld bc, $2f06

jr_006_5b4c:
    ld d, d
    ld bc, $2f08
    ld d, d
    dec b
    ld b, $2f
    ld d, d
    dec b
    inc d
    cpl
    ld d, d
    dec b
    dec de
    cpl
    ld d, d
    dec b
    ld sp, $522f
    dec b
    ld [hl], $71
    ld e, e
    dec b
    jr c, jr_006_5af7

    ld e, e
    nop
    ld l, e
    adc h
    ld e, e
    cp $fe
    ld a, [hl-]
    ld e, c
    ld d, $5f
    inc b
    add c
    ld e, e
    ld e, $b0
    rra
    cp e
    ld [bc], a
    sub c
    inc sp
    ld [hl], $17
    ld e, a
    rst RST_38
    ld e, $b0
    rra
    cp h
    ld [bc], a
    ld [de], a
    inc [hl]
    ld [hl], $18
    ld e, a
    rst RST_38
    ld l, e
    dec b
    jr c, jr_006_5ba6

    ld e, [hl]
    inc b
    or a
    ld e, e
    ld e, $b0
    rra
    cp e
    ld [bc], a
    sub c
    inc sp
    jr c, jr_006_5bb4

    ld e, [hl]
    ld d, $16
    inc b
    or [hl]
    ld e, e
    rla
    or b
    cpl

jr_006_5ba6:
    ld a, [hl-]
    ld b, $30
    ld l, b
    ld l, b
    ld [bc], a
    dec h
    ld e, d
    rlca
    ld bc, $5a88
    dec d
    ld [bc], a

jr_006_5bb4:
    ld h, d
    ld c, b
    rst RST_38
    ld e, $b0
    rra
    cp h
    ld [bc], a
    ld [de], a
    inc [hl]
    jr c, jr_006_5bd8

    ld e, [hl]
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $60
    ld h, b
    nop
    ld [hl], l
    ld h, b
    ld h, b
    nop
    halt
    ld h, b
    ld h, b
    nop
    ld [hl], a

jr_006_5bd8:
    ld h, b
    ld h, b
    nop
    cpl
    ld a, h
    ld h, b
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    ld e, a
    add hl, hl
    ld e, a
    nop
    ld [hl], e
    xor $5b
    cp $fe
    ld a, [hl-]
    ld e, c
    ld bc, $ffb0
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $60
    ld h, b
    nop
    ld [hl], l
    ld h, b
    ld h, b
    nop
    halt
    ld h, b
    ld h, b
    nop
    ld [hl], a
    ld h, b
    ld h, b
    nop
    cpl
    ld a, h
    ld h, b
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    ld e, a
    add hl, hl
    ld e, a
    nop
    ld [hl], e
    dec e
    ld e, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld [bc], a
    ld d, e
    ld d, l
    inc hl
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $60
    ld h, b
    nop
    ld [hl], l
    ld h, b
    ld h, b
    nop
    halt
    ld h, b
    ld h, b
    nop
    ld [hl], a
    ld h, b
    ld h, b
    nop
    cpl
    ld a, h
    ld h, b
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    ld e, a
    add hl, hl
    ld e, a
    nop
    ld [hl], e
    ld c, [hl]
    ld e, h
    cp $fe
    ld a, [hl-]
    ld e, c
    nop
    inc c
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $60
    ld h, b
    nop
    ld [hl], l
    ld h, b
    ld h, b
    nop
    halt
    ld h, b
    ld h, b
    nop
    ld [hl], a
    ld h, b
    ld h, b
    nop
    cpl
    ld a, h
    ld h, b
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    ld e, a
    add hl, hl
    ld e, a
    nop
    ld [hl], e
    ld a, l
    ld e, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld d, $b6
    inc b
    add a
    ld e, h
    rla
    or [hl]
    nop
    ld b, h
    rst RST_38
    nop
    dec b
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    sbc e
    ld e, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b4
    ld [bc], a
    ld b, $21
    ld d, l
    add hl, hl
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    cp b
    ld e, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b4
    ld [bc], a
    ld b, $21
    ld d, l
    ld e, b
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    push de
    ld e, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b4
    ld [bc], a
    ld b, $21
    ld d, l
    ld e, c
    rst RST_38
    nop
    ld a, [hl]
    rst RST_38
    ld d, $ab
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc b
    ld [bc], a
    adc c
    ld d, d
    inc b
    rlca
    adc c
    ld d, d
    inc b
    ld de, $527e
    cp $fe
    ld a, [hl-]
    ld e, c
    nop
    inc de
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    db $10
    ld e, l
    cp $fe
    ld a, [hl-]
    ld e, c
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b9
    ld [bc], a
    ld b, $21
    ld d, l
    ld [hl], $ff
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    dec l
    ld e, l
    cp $fe
    ld a, [hl-]
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b7
    ld [bc], a
    ld b, $21
    ld d, l
    inc [hl]
    rst RST_38
    ccf
    ld bc, $0e00
    ld b, l
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $60
    ld h, b
    nop
    ld [hl], l
    ld h, b
    ld h, b
    nop
    halt
    ld h, b
    ld h, b
    nop
    ld [hl], a
    ld h, b
    ld h, b
    nop
    cpl
    ld a, h
    ld h, b
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    ld e, a
    add hl, hl
    ld e, a
    nop
    ld [hl], e
    ld l, e
    ld e, l
    cp $fe
    ld a, [hl-]
    ld e, c
    nop
    dec d
    ld d, l
    ld [bc], a
    rst RST_38
    nop
    rrca
    rst RST_38
    nop
    db $10
    rst RST_38
    nop
    ld de, $16ff
    xor h
    inc b
    add c
    ld e, l
    nop
    dec bc
    rst RST_38
    ld [bc], a
    inc h
    rst RST_38
    ld [bc], a
    db $ed
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    dec hl
    ld [hl], b
    ld d, c
    nop
    ld l, $cb
    ld e, l
    nop
    ld [hl], l
    bit 3, l
    nop
    halt
    bit 3, l
    nop
    ld [hl], a
    bit 3, l
    nop
    cpl
    ld h, $5e
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    ld [hl], $fb
    ld e, [hl]
    nop
    ld b, b
    ld l, l
    ld d, c
    nop
    ld b, d
    sub a
    ld d, c
    nop
    ld b, h
    cp $5e
    nop
    ld b, [hl]
    sub a
    ld d, c
    nop
    ld c, b
    ld hl, $005f
    ld e, a
    add hl, hl
    ld e, a
    cp $fe
    ld a, [hl-]
    ld e, c
    ld d, $07
    inc b
    inc de
    ld e, [hl]
    ld d, $06
    inc b
    nop
    ld e, [hl]
    ld d, $05
    inc b
    db $ed
    ld e, l
    ld bc, $53ec
    ld d, h
    ld d, l
    ld d, h
    add hl, bc
    rla
    ld a, [hl+]
    ld e, h
    dec b
    add hl, de
    rla
    or b
    ld b, $11
    ld [bc], a
    cp c
    rst RST_38
    ld bc, $53f3
    ld d, h
    ld d, l
    ld d, h
    add hl, bc
    rla
    ld a, [hl+]
    ld e, h
    dec b
    dec e
    rla
    or b
    ld b, $14
    ld [bc], a
    ret nc

    rst RST_38
    ld bc, $53f3
    ld d, h
    ld d, l
    ld d, h
    add hl, bc
    rla
    ld a, [hl+]
    ld e, h
    dec b
    rla
    rla
    or b
    ld b, $12
    ld [bc], a
    jp nz, $01ff

    di
    ld d, e
    ld d, h
    ld d, l
    ld d, h
    add hl, bc
    rla
    ld a, [hl+]
    ld e, h
    dec b
    inc e
    rla
    or b
    ld b, $13
    ld [bc], a
    rst RST_08
    rst RST_38
    ld bc, $53e1
    ld d, h
    ld d, l
    ld d, h
    add hl, bc
    rla
    dec hl
    ld e, h
    dec b
    ld d, $17
    or b
    ld b, $16
    ld [bc], a
    pop de
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    dec hl
    ld [hl], b
    ld d, c
    nop
    ld l, $7d
    ld e, [hl]
    nop
    ld [hl], l
    ld a, l
    ld e, [hl]
    nop
    halt
    ld a, l
    ld e, [hl]
    nop
    ld [hl], a
    ld a, l
    ld e, [hl]
    nop
    cpl
    and $5e
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    ld [hl], $fb
    ld e, [hl]
    nop
    ld b, b
    ld l, l
    ld d, c
    nop
    ld b, d
    sub a
    ld d, c
    nop
    ld b, h
    cp $5e
    nop
    ld b, [hl]
    sub a
    ld d, c
    nop
    ld c, b
    ld hl, $005f
    ld e, a
    add hl, hl
    ld e, a
    cp $fe
    ld a, [hl-]
    ld e, c
    ld d, $07
    inc b
    jp z, $165e

    ld b, $04
    or a
    ld e, [hl]
    ld d, $05
    inc b
    sbc a
    ld e, [hl]
    ld bc, $53ec
    rlca
    ld d, l
    rlca
    add hl, bc
    rla
    ld a, [hl+]
    ld e, h
    dec b
    add hl, de
    rla
    or b
    ld b, $11
    ld [bc], a

jr_006_5e9d:
    cp c
    rst RST_38
    ld bc, $53f3
    rlca
    ld d, l
    rlca
    add hl, bc
    rla
    ld a, [hl+]
    ld e, h
    dec b
    dec e
    rla
    or b
    ld b, $14
    ld d, $7a
    dec b
    db $dd
    ld e, [hl]
    ld [bc], a
    ret nc

    rst RST_38
    ld bc, $53f3
    rlca
    ld d, l
    rlca
    add hl, bc
    rla
    ld a, [hl+]
    ld e, h
    dec b
    rla
    rla
    or b
    ld b, $12

jr_006_5ec7:
    ld [bc], a
    jp nz, $01ff

    di
    ld d, e
    rlca
    ld d, l
    rlca
    add hl, bc
    rla
    ld a, [hl+]
    ld e, h
    dec b
    inc e
    rla
    or b
    ld b, $13
    ld [bc], a
    rst RST_08
    rst RST_38
    ld e, $b1
    ld [bc], a
    dec bc
    ld b, d
    and e
    rla
    ld a, d
    rst RST_38
    ld bc, $53e1
    rlca
    ld d, l
    rlca
    add hl, bc
    inc e
    dec l
    ld e, [hl]
    rst RST_38
    ld e, d
    rlca
    ld [bc], a
    and $5a
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    ld [bc], a
    pop hl
    rst RST_38
    ld d, $a9
    inc b
    ld b, $5f
    ld [bc], a
    ld l, e
    rst RST_38
    ld c, d
    nop
    inc b
    jr jr_006_5f6a

    ld c, d
    ld bc, $1804
    ld e, a
    ld c, d
    ld [bc], a
    inc b
    jr jr_006_5f74

    nop
    jr @+$01

    nop
    ld a, [bc]
    jr jr_006_5e9d

    jr jr_006_5ec7

    rla
    add d
    rst RST_38
    ld d, $a9
    inc b
    ld b, $5f
    ld [bc], a
    ld l, e
    rst RST_38
    ld [bc], a
    dec [hl]
    ld e, h
    dec b
    ld c, c
    rla
    or b
    ld b, $31
    ld bc, $ffaa
    nop
    add hl, bc
    rst RST_38
    rst RST_38
    ld c, e
    add hl, hl
    inc b
    add a
    ld e, a
    ld c, e
    inc sp
    inc b
    adc h
    ld e, a
    ld c, e
    inc [hl]
    inc b
    sub c
    ld e, a
    ld c, e
    dec [hl]
    inc b
    sub [hl]
    ld e, a
    ld c, e
    ld [hl], $04
    sbc e
    ld e, a
    ld c, e
    ld d, l
    inc b
    and b
    ld e, a
    ld c, e
    ld d, [hl]
    inc b
    and b
    ld e, a
    ld c, e
    ld d, a
    inc b
    and b
    ld e, a
    ld c, e
    ld e, b
    inc b
    add a
    ld e, a
    ld c, e
    ld e, c
    inc b
    add a

jr_006_5f6a:
    ld e, a
    ld c, e
    ld e, d
    inc b
    adc h
    ld e, a
    ld c, e
    ld e, e
    inc b
    sub [hl]

jr_006_5f74:
    ld e, a
    ld c, e
    ld e, h
    inc b
    sub [hl]
    ld e, a
    ld d, $7e
    inc b
    and l
    ld e, a
    ld d, $26
    inc b
    and l
    ld e, a
    nop
    ld a, b
    rst RST_38
    ld e, $b4
    ld [bc], a
    add hl, bc
    rst RST_38
    ld e, $b6
    ld [bc], a
    add hl, bc
    rst RST_38
    ld e, $b7
    ld [bc], a
    add hl, bc
    rst RST_38
    ld e, $b8
    ld [bc], a
    add hl, bc
    rst RST_38
    ld e, $b9
    ld [bc], a
    add hl, bc
    rst RST_38
    ld e, $b3
    ld [bc], a
    add hl, bc
    rst RST_38
    ld [bc], a
    add b
    rst RST_38
    rlca
    inc b
    rst RST_00
    ld e, a
    ld d, $24
    inc b
    cp h
    ld e, a
    ld h, h
    inc b
    add b
    ld d, h
    nop
    ld a, e
    ld [$171d], sp
    inc h
    rst RST_38
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $0a
    ld [bc], a
    inc b
    ld [$ff1d], sp
    ld h, h
    inc b
    add b
    ld d, h
    ld h, c
    dec b
    jp nc, $025f

    ld [hl+], a
    rst RST_38
    ld [bc], a
    inc hl
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    dec hl
    ld e, l
    ld h, b
    nop
    ld l, $60
    ld h, b
    nop
    ld [hl], l
    ld h, b
    ld h, b
    nop
    halt
    ld h, b
    ld h, b
    nop
    ld [hl], a
    ld h, b
    ld h, b
    nop
    cpl
    ld a, h
    ld h, b
    nop
    inc [hl]
    pop af
    ld e, [hl]
    nop
    dec [hl]
    adc b
    ld h, b
    nop
    ld [hl], $56
    ld h, c
    nop
    ccf
    rst RST_30
    ld h, b
    nop
    ld b, b
    ld e, l
    ld h, b
    nop
    ld b, d
    ld e, c
    ld h, c
    nop
    ld b, [hl]
    ld e, c
    ld h, c
    nop
    ld e, a
    add hl, hl
    ld e, a
    nop
    ld h, h
    ld e, h
    ld h, c
    nop
    ld l, b
    jp nc, Jump_000_0061

    ld [hl], e
    daa
    ld h, d
    inc bc
    jr z, jr_006_605e

    ld e, c
    inc bc
    add hl, hl
    ld a, [hl-]
    ld e, c
    inc bc
    ld a, [hl+]
    ld a, [hl-]
    ld e, c
    inc bc
    inc sp
    ld a, [hl-]
    ld e, c
    inc bc
    inc [hl]
    ld a, [hl-]
    ld e, c
    inc bc
    dec [hl]
    ld a, [hl-]
    ld e, c
    inc bc
    ld d, l
    ld a, [hl-]
    ld e, c
    inc bc
    ld d, [hl]
    ld a, [hl-]
    ld e, c
    inc bc
    ld d, a
    ld a, [hl-]
    ld e, c
    inc bc
    ld e, b
    ld a, [hl-]
    ld e, c
    inc bc
    ld e, c
    ld a, [hl-]
    ld e, c
    inc bc
    ld e, d
    ld a, [hl-]
    ld e, c
    inc bc
    ld e, e
    ld a, [hl-]
    ld e, c
    inc bc
    ld e, h
    ld a, [hl-]
    ld e, c
    cp $fe
    ld a, [hl-]
    ld e, c
    ld [bc], a

jr_006_605e:
    jp z, $5aff

    rlca
    ld bc, $5af0
    dec d
    ld [bc], a
    ld h, d
    ld d, $07
    inc b
    add a
    ld d, c
    ld c, b
    rst RST_38
    ld e, d
    ld b, $01
    db $e3
    ld l, c
    ld d, $3f
    ld [bc], a
    ld bc, $01e5
    jp hl


    rst RST_38
    ld e, d
    ld b, $01
    db $e4
    ld h, e
    ccf
    ld [bc], a
    ld bc, $01e5
    rst RST_20
    rst RST_38
    ld c, e
    add hl, hl
    inc b
    call z, Call_006_4b60
    inc sp
    inc b
    sub $60
    ld c, e
    inc [hl]
    inc b
    ldh [$ff60], a
    ld c, e
    dec [hl]
    inc b
    ld [$4b60], a
    ld [hl], $04
    db $ed
    ld h, b
    ld c, e
    ld d, l
    inc b
    ld [$4b60], a
    ld d, [hl]
    inc b
    ld [$4b60], a
    ld d, a
    inc b
    ld [$4b60], a
    ld e, b
    inc b
    call z, Call_006_4b60
    ld e, c
    inc b
    call z, Call_006_4b60
    ld e, d
    inc b
    sub $60
    ld c, e
    ld e, e
    inc b
    ld [$4b60], a
    ld e, h
    inc b
    ld [$0260], a
    ld a, e
    rst RST_38
    ccf
    ld bc, $b41e
    ld [bc], a
    add hl, de
    ld [bc], a
    ld c, $4d
    rst RST_38
    ccf
    ld bc, $b61e
    ld [bc], a
    add hl, de
    ld [bc], a
    ld c, $4d
    rst RST_38
    ccf
    ld bc, $b71e
    ld [bc], a
    add hl, de
    ld [bc], a
    ld c, $4d
    rst RST_38
    ld [bc], a
    ld a, h
    rst RST_38
    ccf
    ld bc, $b91e
    ld [bc], a
    add hl, de
    ld [bc], a
    ld c, $4d
    rst RST_38
    ld c, e
    add hl, hl
    inc b
    dec sp
    ld h, c
    ld c, e
    inc sp
    inc b
    sub $60
    ld c, e
    inc [hl]
    inc b
    ldh [$ff60], a
    ld c, e
    dec [hl]
    inc b
    ld [$4b60], a
    ld [hl], $04
    db $ed
    ld h, b
    ld c, e
    ld d, l
    inc b
    ld b, c
    ld h, c
    ld c, e
    ld d, [hl]
    inc b
    ld b, c
    ld h, c
    ld c, e
    ld d, a
    inc b
    ld b, c
    ld h, c
    ld c, e
    ld e, b
    inc b
    dec sp
    ld h, c
    ld c, e
    ld e, c
    inc b
    dec sp
    ld h, c
    ld c, e
    ld e, d
    inc b
    sub $60
    ld c, e
    ld e, e
    inc b
    ld [$4b60], a
    ld e, h
    inc b
    ld [$0260], a
    ld a, e
    rst RST_38
    ld [bc], a
    db $fd
    ld c, l
    rla
    add [hl]
    rst RST_38
    ld d, $87
    dec b
    ld d, e
    ld h, c
    ld d, $85
    inc b
    ld [$0260], a
    ld hl, sp+$42
    and h
    rla
    add l
    ld c, l
    rst RST_38
    ld [bc], a
    ld sp, hl
    rst RST_38
    ld [bc], a
    ldh [c], a
    rst RST_38
    ld bc, $ff40
    ld c, e
    add hl, hl
    inc b
    and b
    ld h, c
    ld c, e
    inc sp
    inc b
    xor c
    ld h, c
    ld c, e
    inc [hl]
    inc b
    or e
    ld h, c
    ld c, e
    dec [hl]
    inc b
    ld [$4b60], a
    ld [hl], $04
    cp l
    ld h, c
    ld c, e
    ld d, l
    inc b
    rst RST_00
    ld h, c
    ld c, e
    ld d, [hl]
    inc b
    rst RST_00
    ld h, c
    ld c, e
    ld d, a
    inc b
    rst RST_00
    ld h, c
    ld c, e
    ld e, b
    inc b
    and b
    ld h, c
    ld c, e
    ld e, c
    inc b
    and b
    ld h, c
    ld c, e
    ld e, d
    inc b
    xor c
    ld h, c
    ld c, e
    ld e, e
    inc b
    ld [$4b60], a
    ld e, h
    inc b
    ld [$0260], a
    ld a, e
    rst RST_38
    ld bc, $4dc8
    rla
    adc b
    rst RST_38
    ld [bc], a
    ld a, l
    rst RST_38
    ccf
    ld bc, $b61e
    ld [bc], a
    add hl, de
    ld bc, $4d79
    rst RST_38
    ccf
    ld bc, $b71e
    ld [bc], a
    add hl, de
    nop
    ld a, l
    ld c, l
    rst RST_38
    ccf
    ld bc, $b91e
    ld [bc], a
    add hl, de
    nop
    ld a, l
    ld c, l
    rst RST_38
    ld d, $89
    inc b
    ld [$0160], a
    add $4d
    rla
    adc c
    rst RST_38
    ld c, e
    add hl, hl
    inc b
    ld d, $62
    ld c, e
    inc sp
    inc b
    xor c
    ld h, c
    ld c, e
    inc [hl]
    inc b
    or e
    ld h, c
    ld c, e
    dec [hl]
    inc b
    ld [$4b60], a
    ld [hl], $04
    cp l
    ld h, c
    ld c, e
    ld d, l
    inc b
    inc e
    ld h, d
    ld c, e
    ld d, [hl]
    inc b
    inc e
    ld h, d
    ld c, e
    ld d, a
    inc b
    inc e
    ld h, d
    ld c, e
    ld e, b
    inc b
    ld d, $62
    ld c, e
    ld e, c
    inc b
    ld d, $62
    ld c, e
    ld e, d
    inc b
    xor c
    ld h, c
    ld c, e
    ld e, e
    inc b
    ld [$4b60], a
    ld e, h
    inc b
    ld [$0260], a
    ld a, e
    rst RST_38
    ld bc, $4dda
    rla
    adc d
    rst RST_38
    ld d, $8b
    inc b
    ld [$0160], a
    sub $4d
    rla
    adc e
    rst RST_38
    ld c, e
    add hl, hl
    inc b
    ld l, e
    ld h, d
    ld c, e
    inc sp
    inc b
    ld [hl], h
    ld h, d
    ld c, e
    inc [hl]
    inc b
    ld a, [hl]
    ld h, d
    ld c, e
    dec [hl]
    inc b
    sub d
    ld h, d
    ld c, e
    ld [hl], $04
    adc b
    ld h, d
    ld c, e
    ld d, l
    inc b
    ld [$4b60], a
    ld d, [hl]
    inc b
    ld [$4b60], a
    ld d, a
    inc b
    ld [$4b60], a
    ld e, b
    inc b
    ld l, e
    ld h, d
    ld c, e
    ld e, c
    inc b
    ld l, e
    ld h, d
    ld c, e
    ld e, d
    inc b
    ld [hl], h
    ld h, d
    ld c, e
    ld e, e
    inc b
    sub d
    ld h, d
    ld c, e
    ld e, h
    inc b
    sub d
    ld h, d
    ld [bc], a
    ld a, e
    rst RST_38
    nop
    ld a, a
    ld c, l
    ld e, d
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    ccf
    ld bc, $b61e
    ld [bc], a
    add hl, de
    ld [bc], a
    or [hl]
    ld c, l
    rst RST_38
    ccf
    ld bc, $b71e
    ld [bc], a
    add hl, de
    ld [bc], a
    or a
    ld c, l
    rst RST_38
    ccf
    ld bc, $b91e
    ld [bc], a
    add hl, de
    ld bc, $4d07
    rst RST_38
    ld d, $71
    dec b
    xor b
    ld h, d
    ld d, $2c
    dec b
    or d
    ld h, d
    ld e, $b8
    ld [bc], a
    add hl, de
    ld b, [hl]
    inc b
    ld bc, $4d8c
    rla
    dec h
    rst RST_38
    ld e, $b8
    ld [bc], a
    add hl, de
    ld b, [hl]
    inc bc
    ld c, l
    rla
    ld [hl], c
    rst RST_38
    ld e, $b8
    ld [bc], a
    add hl, de
    ld b, [hl]
    ld bc, $174d
    inc l
    rst RST_38
    ld [bc], a
    push de
    rst RST_38
    ld [bc], a
    adc b
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    inc h
    jp nc, $fe62

    cp $3a
    ld e, c
    ld bc, $17d4
    ld a, b
    rst RST_38
    ld [bc], a
    adc c
    rst RST_38
    ld [bc], a
    ld sp, $17ff
    and a
    ld d, $a5
    inc b
    db $eb
    ld h, d
    ccf
    ld bc, $8d02
    ld bc, $ffdf
    ccf
    ld bc, $8d02
    ld bc, $ffde
    ld d, $25
    inc b
    add hl, bc
    ld h, e
    ccf
    ld bc, $9e02
    ld d, $7d
    dec b
    ld [bc], a
    ld h, e
    ld b, l
    rst RST_38
    ld [bc], a
    sbc a
    ld b, d
    and d
    rla
    ld a, l
    rst RST_38
    ld [bc], a
    sbc [hl]
    rst RST_38
    ld bc, $1609
    ld a, e
    inc b
    rla
    ld h, e
    ld b, d
    and b
    rla
    ld a, e
    rst RST_38
    rla
    and [hl]
    ld d, $9f
    inc b
    inc [hl]
    ld h, e
    ld d, $25
    inc b
    dec sp
    ld h, e
    ccf
    ld bc, $0b01
    ld bc, $163f
    ld a, d
    inc b
    inc sp
    ld h, e
    ld b, d
    and e
    rla
    ld a, d
    rst RST_38
    ccf
    ld bc, $0b01
    ld bc, $ff65
    ld bc, $ff0b
    ld b, [hl]
    add hl, bc
    rst RST_38
    ld [bc], a
    db $ec
    rst RST_38
    ld bc, $ff6d
    ld bc, $ff70
    ld bc, $ff7e
    ld bc, $ff7f
    ld bc, $ff80
    ld d, $71
    inc b
    ld h, d
    ld h, e
    ld d, $26
    inc b
    ld h, d
    ld h, e
    ld bc, $1781
    ld h, $ff
    ld [bc], a
    ld b, [hl]
    rst RST_38
    ld bc, $1799
    dec de
    rla
    and l
    rst RST_38
    ld bc, $ff97
    ld bc, $ff98
    ld bc, $ff9d
    ld bc, $ffb0
    ld bc, $ffb1
    ld bc, $ffc2
    ld bc, $ffc4
    ld bc, $ffc5
    ld d, $78
    inc b
    adc h
    ld h, e
    ld bc, $ffd2
    ld bc, $17d5
    ld a, [de]
    rla
    sbc a
    rst RST_38
    ld bc, $ffd1
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    inc h
    and [hl]
    ld h, e
    cp $fe
    ld a, [hl-]
    ld e, c
    ld d, $78
    inc b
    ld a, [hl-]
    ld e, c
    ld bc, $ffd3
    ld bc, $ffd0
    ld d, $b6
    inc b
    cp c
    ld h, e
    nop
    ld b, b
    rst RST_38
    nop
    dec b
    rst RST_38
    ld d, $26
    inc b
    call nz, Call_000_0063
    ld [hl], l
    rst RST_38
    ld e, $b3
    ld [bc], a
    rlca
    rst RST_38
    ld d, $26
    inc b
    pop de
    ld h, e
    nop
    halt
    rst RST_38
    ld e, $b4
    ld [bc], a
    ld [$16ff], sp
    ld h, $04
    sbc $63
    nop
    ld [hl], a
    rst RST_38
    ld e, $2a
    ld [bc], a
    rlca
    rst RST_38
    ld d, $28
    inc b
    db $eb
    ld h, e
    ld [bc], a
    cp [hl]
    rst RST_38
    ld [bc], a
    cp a
    rst RST_38
    rlca
    inc b
    db $fd
    ld e, h
    ld d, $28
    inc b
    add hl, bc
    ld h, h
    ld b, b
    dec b
    ld [$3f64], sp
    ld [bc], a
    ld e, $2b
    ld [bc], a
    inc b
    dec e
    ld [bc], a
    call nz, $c502
    rla
    jr z, @+$01

    ld e, $2b
    ld [bc], a
    inc b
    ld [$ff1d], sp
    ld [bc], a
    push af
    rst RST_38
    ld bc, $ff13
    ld bc, $ff5a
    ld d, $74
    inc b
    ld h, $64
    ld bc, $165c
    ld a, h
    dec b
    ld l, $64
    rst RST_38
    ld [bc], a
    ld b, h
    ld d, $7c
    dec b
    ld l, $64
    rst RST_38
    ld b, d
    and c
    rla
    ld a, h
    rst RST_38
    ld bc, $ff6c
    ld bc, $ff6a
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    inc h
    ld c, l
    ld h, h
    ld bc, $5002
    ld h, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld [bc], a
    ld h, c
    rst RST_38
    ld h, b
    dec c
    inc b
    ld e, a
    ld h, h
    ld [bc], a
    adc a
    inc sp
    ld c, d
    inc l
    ld [bc], a
    ld h, $17
    inc e
    rst RST_38
    ld e, $d2
    ld [bc], a
    ld bc, $01ff
    ld l, c
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    inc h
    ld c, l
    ld h, h
    ld bc, $7b02
    ld h, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld [bc], a
    sub b
    rst RST_38
    ld bc, $ffb6
    ld bc, $ffb4
    ld bc, $46b3
    ld [bc], a
    rst RST_38
    ld bc, $ffb5
    ld e, $b3
    ld [bc], a
    ld [$07ff], sp
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $28
    ld [bc], a
    inc b
    ld [$ff1d], sp
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    or c
    ld h, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b3
    ld [bc], a
    ld b, $21
    ld d, l
    ld d, l
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    adc $64
    cp $fe
    ld a, [hl-]
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b3
    ld [bc], a
    ld b, $21
    ld d, l
    ld d, [hl]
    rst RST_38
    rlca
    dec b
    and c
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    db $eb
    ld h, h
    cp $fe
    ld a, [hl-]
    ld e, c
    ld h, b
    ld c, h
    dec b
    pop hl
    ld e, h
    ld e, $b3
    ld [bc], a
    ld b, $21
    ld d, l
    ld d, a
    rst RST_38
    rlca
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $33
    ld [bc], a
    inc b
    ld [$ff1d], sp
    ld e, $b6
    ld [bc], a
    ld [$07ff], sp
    inc b
    db $fd
    ld e, h
    ld h, h
    inc b
    add b
    ld d, h
    ld e, $35
    ld [bc], a
    inc b
    ld [$ff1d], sp
    ld e, $b7
    ld [bc], a
    ld [$1eff], sp
    cp b
    ld [bc], a
    ld [$1eff], sp
    cp c
    ld [bc], a
    ld [$4dff], sp
    ld h, l
    ld e, c
    ld h, l
    ld h, l
    ld h, l
    ld [hl], c
    ld h, l
    ld a, l
    ld h, l
    adc c
    ld h, l
    sub l
    ld h, l
    and c
    ld h, l
    xor l
    ld h, l
    cp c
    ld h, l
    push bc
    ld h, l
    pop de
    ld h, l
    db $dd
    ld h, l
    jp hl


    ld h, l
    push af
    ld h, l
    ld bc, $0d66
    ld h, [hl]
    add hl, de
    ld h, [hl]
    dec h
    ld h, [hl]
    inc sp
    ld h, [hl]
    ld l, c
    ld h, a
    adc c
    ld l, b
    xor d
    ld l, b
    db $f4
    ld l, b
    ld a, [$4768]
    ld h, [hl]
    ld a, c
    ld h, a
    inc c
    ld l, c
    ldh [c], a
    ld l, b
    db $f4
    ld l, b
    ld b, b
    ld l, d
    ld d, a
    ld h, [hl]
    adc c
    ld h, a
    db $fd
    ld l, b
    ld b, e
    ld l, d
    ld h, l
    ld l, d
    ld a, l
    ld l, l
    ld l, c
    ld h, [hl]
    sbc c
    ld h, a
    dec de
    ld l, c
    adc h
    ld l, l
    db $f4
    ld l, b
    and d
    ld l, l
    ld a, c
    ld h, [hl]
    xor c
    ld h, a
    ld a, [hl+]
    ld l, c
    and l
    ld l, l
    db $f4
    ld l, b
    cp e
    ld l, l
    adc c
    ld h, [hl]
    cp c
    ld h, a
    add hl, sp
    ld l, c
    cp [hl]
    ld l, l
    db $f4
    ld l, b
    call nc, $996d
    ld h, [hl]
    ret


    ld h, a
    ld c, b
    ld l, c
    rst RST_10
    ld l, l
    db $f4
    ld l, b
    db $ed
    ld l, l
    xor c
    ld h, [hl]
    reti


    ld h, a
    ld d, a
    ld l, c
    cp $6e
    ldh a, [$ff6d]
    and e
    ld l, [hl]
    cp e
    ld h, [hl]
    jp hl


    ld h, a
    ld h, [hl]
    ld l, c
    cp c
    ld l, [hl]
    db $f4
    ld l, b
    ret


    ld l, [hl]
    push de
    ld h, [hl]
    ld sp, hl
    ld h, a
    ld [hl], l
    ld l, c
    call z, $f46e
    ld l, b
    ldh [c], a
    ld l, [hl]
    rst RST_20
    ld h, [hl]
    add hl, bc
    ld l, b
    add h
    ld l, c
    push hl
    ld l, [hl]
    db $f4
    ld l, b
    ei
    ld l, [hl]
    rst RST_30
    ld h, [hl]
    add hl, de
    ld l, b
    sub e
    ld l, c
    cp $6e
    db $f4
    ld l, b
    rrca
    ld l, a
    rlca
    ld h, a
    add hl, hl
    ld l, b
    and d
    ld l, c
    cp $6e
    db $f4
    ld l, b
    ld [de], a
    ld l, a
    rla
    ld h, a
    add hl, sp
    ld l, b
    or c
    ld l, c
    dec d
    ld l, a
    db $f4
    ld l, b
    dec hl
    ld l, a
    daa
    ld h, a
    ld c, c
    ld l, b
    ret nz

    ld l, c
    cp $6e
    db $f4
    ld l, b
    ld l, $6f
    scf
    ld h, a
    ld e, c
    ld l, b
    rst RST_08
    ld l, c
    cp $6e
    db $f4
    ld l, b
    ld sp, $476f
    ld h, a
    ld l, c
    ld l, b
    sbc $69
    cp $6e
    db $f4
    ld l, b
    inc [hl]
    ld l, a
    ld d, a
    ld h, a
    ld a, c
    ld l, b
    db $ed
    ld l, c
    cp $6e
    scf
    ld l, a
    ccf
    ld bc, $0100
    ld d, $18
    dec b
    jr nc, jr_006_6694

    ld b, l
    rst RST_38
    nop
    ld [bc], a
    rst RST_38
    db $10
    inc b
    ld b, d
    ld h, [hl]
    ld e, $c3
    ld [bc], a
    nop
    ld de, $1817
    jr c, @+$09

    ld h, $ff
    ld e, $c3
    ld [bc], a
    ld bc, $10ff
    inc b
    ld d, d
    ld h, [hl]
    ld e, $41
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $41
    ld [bc], a
    ld bc, $10ff
    inc b
    ld h, h
    ld h, [hl]
    ld e, $42
    ld [bc], a
    nop
    ld de, $0338
    ld h, $ff
    ld e, $42
    ld [bc], a
    ld bc, $10ff
    inc b
    ld [hl], h
    ld h, [hl]
    ld e, $43
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $43
    ld [bc], a
    ld bc, $10ff
    inc b
    add h
    ld h, [hl]
    ld e, $44
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $44
    ld [bc], a
    ld bc, $10ff
    inc b
    sub h
    ld h, [hl]
    ld e, $45
    ld [bc], a
    nop
    ld de, $ff26

jr_006_6694:
    ld e, $45
    ld [bc], a
    ld bc, $10ff
    inc b
    and h
    ld h, [hl]
    ld e, $46
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $46
    ld [bc], a
    ld bc, $10ff
    inc b
    or [hl]
    ld h, [hl]
    ld e, $47
    ld [bc], a
    nop
    ld de, $0038
    ld h, $ff
    ld e, $47
    ld [bc], a
    ld bc, $10ff
    inc b
    bit 4, [hl]
    ld d, $8f
    dec b
    ret nc

    ld h, [hl]
    ld e, $48
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $48
    ld [bc], a
    ld bc, $01ff
    ld [hl], d
    ld de, $ff26
    db $10
    inc b
    ldh [c], a
    ld h, [hl]
    ld e, $49
    ld [bc], a
    nop
    ld de, $0638
    ld h, $ff
    ld e, $49
    ld [bc], a
    ld bc, $10ff
    inc b
    ldh a, [c]
    ld h, [hl]
    ld e, $4a
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4a
    ld [bc], a
    ld bc, $10ff
    inc b
    ld [bc], a
    ld h, a
    ld e, $4b
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4b
    ld [bc], a
    ld bc, $10ff
    inc b
    ld [de], a
    ld h, a
    ld e, $4c
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4c
    ld [bc], a
    ld bc, $10ff
    inc b
    ld [hl+], a
    ld h, a
    ld e, $4d
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4d
    ld [bc], a
    ld bc, $10ff
    inc b
    ld [hl-], a
    ld h, a
    ld e, $4e
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4e
    ld [bc], a
    ld bc, $10ff
    inc b
    ld b, d
    ld h, a
    ld e, $4f
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4f
    ld [bc], a
    ld bc, $10ff
    inc b
    ld d, d
    ld h, a
    ld e, $50
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $50
    ld [bc], a
    ld bc, $10ff
    inc b
    ld h, h
    ld h, a
    ld e, $51
    ld [bc], a
    nop
    ld de, $0638
    ld h, $ff
    ld e, $51
    ld [bc], a
    ld bc, $10ff
    dec b
    ld [hl], h
    ld h, a
    ld e, $c3
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $c3
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    add h
    ld h, a
    ld e, $41
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $41
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    sub h
    ld h, a
    ld e, $42
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $42
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    and h
    ld h, a
    ld e, $43
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $43
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    or h
    ld h, a
    ld e, $44
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $44
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    call nz, Call_000_1e67
    ld b, l
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $45
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    call nc, Call_000_1e67
    ld b, [hl]
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $46
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    db $e4
    ld h, a
    ld e, $47
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $47
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    db $f4
    ld h, a
    ld e, $48
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $48
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    inc b
    ld l, b
    ld e, $49
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $49
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    inc d
    ld l, b
    ld e, $4a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $4a
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    inc h
    ld l, b
    ld e, $4b
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $4b
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    inc [hl]
    ld l, b
    ld e, $4c
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $4c
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    ld b, h
    ld l, b
    ld e, $4d
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $4d
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    ld d, h
    ld l, b
    ld e, $4e
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $4e
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    ld h, h
    ld l, b
    ld e, $4f
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $4f
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    ld [hl], h
    ld l, b
    ld e, $50
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $50
    ld [bc], a
    inc bc
    rst RST_38
    db $10
    dec b
    add h
    ld l, b
    ld e, $51
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld b, a
    rst RST_38
    ld e, $51
    ld [bc], a
    inc bc
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ccf
    ld bc, $401e
    ld [bc], a
    inc b
    dec bc
    dec e
    ld d, $19
    inc b
    xor b
    ld l, b
    ld d, $1d
    inc b
    xor b
    ld l, b
    nop
    rla
    rla
    dec e
    rst RST_38
    ld b, l
    rst RST_38
    ld a, [bc]
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l
    jr z, jr_006_68e3

    dec b
    call c, $3268
    dec b
    ret c

    ld l, b
    ld d, d
    nop
    dec b
    rst RST_18
    ld l, b
    ld d, d
    ld bc, $df05
    ld l, b
    ld e, l
    ld bc, $df05
    ld l, b
    ld d, d
    dec b
    dec b
    rst RST_18
    ld l, b
    ld d, d
    ld b, $05
    rst RST_18
    ld l, b
    ld d, d
    rlca
    dec b
    rst RST_18
    ld l, b
    ld e, e
    rst RST_38
    ld [bc], a
    ld d, [hl]
    rst RST_38
    ld [bc], a
    ld d, a
    rst RST_38
    ld [bc], a
    ld a, l
    rst RST_38
    ld a, [bc]

jr_006_68e3:
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l
    jr z, jr_006_691b

    dec b
    call c, $3268
    dec b
    ret c

    ld l, b
    inc e
    ret z

    ld l, b
    ld [bc], a
    scf
    rst RST_38
    nop
    inc de
    rst RST_38
    nop
    dec c
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $42
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $41
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38

jr_006_691b:
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $43
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $44
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $45
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $46
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $47
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $48
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $49
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $4a
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $4b
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $4c
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $4d
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $4e
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $4f
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld h, h
    inc b
    and a
    ld l, b
    ld e, $50
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    rst RST_30
    ld l, b
    ld d, $af
    inc b
    add hl, sp
    ld l, d
    ld d, d
    rlca
    inc b
    dec de
    ld l, d
    ld d, d
    ld d, h
    dec b
    ld [hl], $6a
    ld h, h
    inc b
    and a
    ld l, b
    ccf
    ld bc, $511e
    ld [bc], a
    inc b
    dec bc
    dec e
    ld e, $c1
    ld [bc], a
    ld a, [de]
    ld d, e
    ld d, h
    ld d, l
    ld d, h
    ld e, h
    inc bc
    ld d, h
    add hl, bc
    rla
    xor a
    rst RST_38
    ld h, h
    inc b
    and a
    ld l, b
    ccf
    ld bc, $511e
    ld [bc], a
    inc b
    ld e, $c1
    ld [bc], a
    ld a, [de]
    dec bc
    dec e
    ld d, e
    rlca
    ld d, l
    rlca
    ld e, h
    inc bc
    rlca
    add hl, bc
    rla
    xor a
    rst RST_38
    ld bc, $ff1b
    ld e, $51
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    nop
    ld [$0aff], sp
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l
    jr z, jr_006_6a7c

    dec b
    call c, $3268
    dec b
    ret c

    ld l, b
    ld d, $60
    dec b
    rst RST_18
    ld l, b
    ld d, $1f
    dec b
    rst RST_18
    ld l, b
    ld d, $16
    dec b
    rst RST_18
    ld l, b
    ld e, e
    rla
    and c
    rst RST_38
    ld a, [bc]
    dec b
    ld a, d
    ld l, l
    db $10
    dec b
    ld [hl], b
    ld l, d
    ld bc, $ff60
    ld bc, $28b9
    add hl, hl
    nop
    inc bc
    inc h
    ld l, e
    nop
    rlca
    ld l, a
    ld l, e

jr_006_6a7c:
    nop
    dec c
    cp l
    ld l, e
    nop
    inc l
    rst RST_10
    ld l, e
    nop
    inc [hl]
    pop af
    ld l, e
    nop
    dec [hl]
    pop af
    ld l, e
    nop
    ld [hl], $0d
    ld l, h
    nop
    dec a
    rst RST_28
    ld l, h
    nop
    ccf
    pop af
    ld l, e
    nop
    ld b, b
    dec l
    ld l, h
    nop
    ld b, d
    ld c, c
    ld l, h
    nop
    ld b, [hl]
    ld c, c
    ld l, h
    nop
    ld d, h
    adc c
    ld l, e
    nop

jr_006_6aa9:
    ld e, a
    ld l, c
    ld l, h
    nop
    ld h, h
    adc c
    ld l, h
    nop
    ld h, l
    and e
    ld l, e
    nop
    ld l, b
    adc c
    ld l, h
    nop
    ld l, d
    and l
    ld l, h
    nop
    ld l, e
    jp z, Jump_000_016c

    ld [bc], a
    rst RST_28
    ld l, h
    ld bc, $0606
    ld l, l
    dec b
    ld b, $ef
    ld l, h
    dec b
    inc d
    rst RST_28
    ld l, h
    dec b
    dec de
    rst RST_28
    ld l, h
    dec b
    ld sp, $6d2f
    dec b
    ld [hl], $ef
    ld l, h
    dec b
    jr c, jr_006_6aa9

    ld l, h
    dec b
    ld c, c
    ld h, e
    ld l, l
    nop
    ld l, $8f
    ld l, [hl]
    nop
    ld [hl], l
    adc a
    ld l, [hl]
    nop
    halt
    adc a
    ld l, [hl]
    nop
    ld [hl], a
    adc a
    ld l, [hl]
    nop
    cpl
    sbc c
    ld l, [hl]
    dec b
    ld b, a
    dec sp
    ld l, e
    nop
    ld [hl], e
    inc b
    ld l, e
    cp $fe
    db $f4
    ld l, b
    ld bc, $4fe8
    dec b
    dec [hl]
    ld l, e
    ld e, d
    rlca
    ld e, d
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    ld bc, $59e8
    dec b
    dec [hl]
    ld l, e
    inc e
    ld a, [bc]
    ld l, e
    ld bc, $51e8
    dec b
    dec [hl]
    ld l, e
    inc e
    ld a, [bc]
    ld l, e
    ld d, $17
    dec b
    jr c, jr_006_6b94

    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld b, [hl]
    rlca
    rla
    nop
    daa
    nop
    ld [hl+], a
    rst RST_38
    ld bc, $ff64
    ld [bc], a
    ld a, l
    rst RST_38
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld e, d
    rlca
    ld bc, $5adb
    inc d
    ld bc, $48fc
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ccf
    ld l, e
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ccf
    ld l, e
    ld d, $17
    dec b
    jr c, jr_006_6bc7

    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    dec l
    ld l, e
    ld d, $17
    dec b
    jr c, jr_006_6bd3

    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    dec l
    ld l, e
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld b, [hl]
    rlca
    rla
    ld bc, $0027
    ld [hl+], a
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld [hl], e
    ld l, e
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld [hl], e
    ld l, e
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld b, [hl]
    rlca
    rla
    add hl, bc
    daa
    nop
    ld [hl+], a

jr_006_6b94:
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    adc l
    ld l, e
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    adc l
    ld l, e
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld b, [hl]
    rlca
    rla
    inc d
    daa
    nop
    ld [hl+], a
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    and a
    ld l, e
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    and a
    ld l, e
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld b, [hl]
    rlca
    rla
    ld [bc], a
    daa
    nop

jr_006_6bc7:
    ld b, [hl]
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    pop bc
    ld l, e
    ld d, c
    dec b
    dec [hl]

jr_006_6bd3:
    ld l, e
    inc e
    pop bc
    ld l, e
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld b, [hl]
    rlca
    rla
    dec d
    daa
    nop
    ld b, [hl]
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    db $db
    ld l, e
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    db $db
    ld l, e
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld e, d
    rlca
    ld [bc], a
    rst RST_28
    ld e, d
    inc d
    ld [bc], a
    ld a, a
    ld c, b
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    push af
    ld l, e
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    push af
    ld l, e
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld b, [hl]
    rlca
    ccf
    ld [bc], a
    ld [bc], a
    db $e4
    ld e, d
    inc d
    ld [bc], a
    ld a, [hl]
    ld bc, $48fc
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld de, $516c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld de, $4f6c
    dec b
    dec [hl]
    ld l, e
    ld e, d
    rlca
    ld bc, $5a1a
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld sp, $516c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld sp, $4f6c
    dec b
    dec [hl]
    ld l, e
    ld e, d
    rlca
    ld bc, $5a41
    inc d
    ccf
    ld bc, $7e02
    ld bc, $48fc
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld c, l
    ld l, h
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld c, l
    ld l, h
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld e, d
    rlca
    ccf
    ld [bc], a
    ld bc, $5aab
    inc d
    ld [bc], a
    ld a, [hl]
    ld bc, $48fc
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld l, l
    ld l, h
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld l, l
    ld l, h
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld e, d
    rlca
    ld bc, $5adb
    inc d
    ld [bc], a
    ld a, a
    ld c, b
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    adc l
    ld l, h
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    adc l
    ld l, h
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld e, d
    rlca
    inc sp
    ld c, l
    ld l, b
    ld l, b
    ld bc, $6836
    ld e, h
    dec b
    ld b, l
    ld b, $38
    ld bc, $3024
    ld c, l
    rst RST_38
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    xor c
    ld l, h
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    xor c
    ld l, h
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld d, $16
    inc b
    di
    ld l, h
    ccf
    ld bc, $8701
    ld b, [hl]
    rlca
    jr jr_006_6ce5

    rla
    ld d, $27
    ld bc, $ff8a
    ld e, c
    dec b
    dec [hl]
    ld l, e

jr_006_6ce5:
    inc e
    adc $6c
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    adc $6c
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld b, [hl]
    rlca
    ld bc, $fff8
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    di
    ld l, h
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    di
    ld l, h
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld d, $1f
    inc b
    rst RST_28
    ld l, h
    ccf
    ld bc, $8701
    ld b, [hl]
    rlca
    rla
    rra
    ld h, b
    inc l
    ld b, $27
    ld h, $1e
    sub $02
    ld de, $59ff
    dec b
    dec [hl]
    ld l, e
    inc e
    ld a, [bc]
    ld l, l
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld a, [bc]
    ld l, l
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld d, $60
    inc b
    rst RST_28
    ld l, h
    ccf
    ld bc, $8701
    ld b, [hl]
    rlca
    inc sp
    ld sp, $6017
    ld e, $b0
    ld [bc], a
    ld de, $59ff
    dec b
    dec [hl]
    ld l, e
    inc e
    inc sp
    ld l, l
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    inc sp
    ld l, l
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    adc $6c
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    adc $6c
    ld c, a
    dec b
    dec [hl]
    ld l, e
    ld b, [hl]
    rlca
    ld bc, $ffa2
    ld e, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld h, a
    ld l, l
    ld d, c
    dec b
    dec [hl]
    ld l, e
    inc e
    ld h, a
    ld l, l
    ld [bc], a
    ld d, d
    rst RST_38
    ld d, $90
    inc b
    adc c
    ld l, l
    ccf
    ld bc, $8b02
    ld [bc], a
    sub d
    rst RST_38
    ld [bc], a
    adc e
    rst RST_38
    ld a, [bc]
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l
    jr z, @+$33

    dec b
    call c, $3268
    dec b
    ret c

    ld l, b
    ld d, d
    ld c, $05
    rst RST_18
    ld l, b
    ld e, e
    rst RST_38
    ld [bc], a
    adc h
    rst RST_38
    ld a, [bc]
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l
    jr z, @+$33

    dec b
    call c, $3268
    dec b
    ret c

    ld l, b
    ld d, $9d
    dec b
    rst RST_18
    ld l, b
    ld e, e
    rst RST_38
    ld [bc], a
    sbc l
    rst RST_38
    ld a, [bc]
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l
    jr z, jr_006_6df7

    dec b
    call c, $3268
    dec b
    ret c

    ld l, b
    ld d, $7d
    dec b
    rst RST_18
    ld l, b
    ld e, e
    rst RST_38
    ld [bc], a
    ld [$0aff], a
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l
    jr z, jr_006_6e10

    dec b
    call c, $3268
    dec b
    ret c

    ld l, b
    ld d, $99
    dec b
    rst RST_18
    ld l, b
    ld e, e
    rst RST_38
    ld [bc], a
    db $eb
    rst RST_38
    ld a, [bc]
    dec b
    ld a, d
    ld l, l
    db $10
    dec b
    ei

jr_006_6df7:
    ld l, l
    ld bc, $ff60
    ld bc, $28b9
    add hl, hl
    nop
    inc bc
    ld d, a
    ld l, e
    nop
    rlca
    ld a, e
    ld l, e
    nop
    dec c
    ret


    ld l, e
    nop
    inc l
    db $e3
    ld l, e
    nop

jr_006_6e10:
    inc [hl]
    rst RST_38
    ld l, e
    nop
    dec [hl]
    rst RST_38
    ld l, e
    nop
    ld [hl], $1f
    ld l, h
    nop
    dec a
    ld hl, sp+$6c
    nop
    ccf
    rst RST_38
    ld l, e
    nop
    ld b, b
    dec sp
    ld l, h
    nop
    ld b, d
    ld e, e
    ld l, h
    nop
    ld b, [hl]
    ld e, e
    ld l, h
    nop
    ld d, h
    sub l
    ld l, e
    nop
    ld e, a
    ld a, e
    ld l, h
    nop
    ld h, h
    sub a
    ld l, h
    nop
    ld h, l
    xor a
    ld l, e
    nop
    ld l, b
    sub a
    ld l, h
    nop
    ld l, d
    cp h
    ld l, h
    nop
    ld l, e
    pop hl
    ld l, h
    ld bc, $f802
    ld l, h
    ld bc, $2106
    ld l, l
    dec b
    ld b, $f8
    ld l, h
    dec b
    inc d
    ld hl, sp+$6c
    dec b
    dec de
    ld hl, sp+$6c
    dec b
    ld sp, $6d47
    dec b
    ld [hl], $f8
    ld l, h
    dec b
    jr c, jr_006_6ebf

    ld l, l
    dec b
    ld c, c
    ld l, h
    ld l, l
    nop
    ld l, $8f
    ld l, [hl]
    nop
    ld [hl], l
    adc a
    ld l, [hl]
    nop
    halt
    adc a
    ld l, [hl]
    nop
    ld [hl], a
    adc a
    ld l, [hl]
    nop
    cpl
    sbc c
    ld l, [hl]
    dec b
    ld b, a
    ld c, c
    ld l, e
    nop
    ld [hl], e
    ld [de], a
    ld l, e
    cp $fe
    db $f4
    ld l, b
    ld e, d
    rlca
    ld bc, $5aee
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    ld e, d
    rlca
    ld bc, $5aea
    inc d
    ld [bc], a
    ld a, a
    ld c, b
    rst RST_38
    db $10
    inc b
    or e
    ld l, [hl]
    ld d, $8f
    inc b
    or [hl]
    ld l, [hl]
    ccf
    ld bc, $6e01
    ld bc, $ff1f
    ld bc, $ff71
    ld bc, $ff6e
    ld a, [bc]
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l

jr_006_6ebf:
    jr z, jr_006_6ef2

    dec b
    call c, $3268
    inc b
    rst RST_18
    ld l, b
    rst RST_38
    ld bc, $ffff
    ld a, [bc]
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l
    jr z, @+$33

    dec b
    call c, $3268
    dec b
    ret c

    ld l, b
    ld d, $96
    dec b
    rst RST_18
    ld l, b
    ld e, e
    rst RST_38
    ld bc, $ff9c
    ld a, [bc]
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l
    jr z, jr_006_6f1e

    dec b
    call c, $3268
    dec b

jr_006_6ef2:
    ret c

    ld l, b
    ld d, $97
    dec b
    rst RST_18
    ld l, b
    ld e, e
    rst RST_38
    ld bc, $ffaf
    ld a, [bc]
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l
    jr z, jr_006_6f37

    dec b
    call c, $3268
    dec b
    ret c

    ld l, b
    ld e, e
    rst RST_38
    ld bc, $ffaf
    ld [bc], a
    sbc l
    rst RST_38
    ld a, [bc]
    dec b
    reti


    ld l, b
    ld [bc], a
    ld d, l
    jr z, jr_006_6f4e

    dec b

jr_006_6f1e:
    call c, $3268
    dec b
    ret c

    ld l, b
    ld d, $98
    dec b
    rst RST_18
    ld l, b
    ld e, e
    rst RST_38
    ld bc, $ffc3
    ld bc, $ffbf
    ld bc, $ffaf
    ld bc, $ff12

jr_006_6f37:
    ld a, [bc]
    dec b
    ld a, d
    ld l, l
    db $10
    dec b
    ld b, d
    ld l, a
    ld bc, $ff60
    ld bc, $28b9
    add hl, hl
    nop
    inc bc
    ld h, e
    ld l, e
    nop
    rlca
    add d
    ld l, e

jr_006_6f4e:
    nop
    dec c
    ret nc

    ld l, e
    nop
    inc l
    ld [$006b], a
    inc [hl]
    ld b, $6c
    nop
    dec [hl]
    ld b, $6c
    nop
    ld [hl], $26
    ld l, h
    nop
    dec a
    rst RST_38
    ld l, h
    nop
    ccf
    ld b, $6c
    nop
    ld b, b
    ld b, d
    ld l, h
    nop
    ld b, d
    ld h, d
    ld l, h
    nop
    ld b, [hl]
    ld h, d
    ld l, h
    nop
    ld d, h
    sbc h
    ld l, e
    nop
    ld e, a
    add d
    ld l, h
    nop
    ld h, h
    sbc [hl]
    ld l, h
    nop
    ld h, l
    or [hl]
    ld l, e
    nop
    ld l, b
    sbc [hl]
    ld l, h
    nop
    ld l, d
    jp Jump_000_006c


    ld l, e
    add sp, $6c
    ld bc, $ff02
    ld l, h
    ld bc, $2806
    ld l, l
    dec b
    ld b, $ff
    ld l, h
    dec b
    inc d
    rst RST_38
    ld l, h
    dec b
    dec de
    rst RST_38
    ld l, h
    dec b
    ld sp, $6d4e
    dec b
    ld [hl], $ff
    ld l, h
    dec b
    jr c, jr_006_700d

    ld l, l
    dec b
    ld c, c
    ld [hl], e
    ld l, l
    nop
    ld l, $8f
    ld l, [hl]
    nop
    ld [hl], l
    adc a
    ld l, [hl]
    nop
    halt
    adc a
    ld l, [hl]
    nop
    ld [hl], a
    adc a
    ld l, [hl]
    nop
    cpl
    sbc c
    ld l, [hl]
    dec b
    ld b, a
    ld d, b
    ld l, e
    nop
    ld [hl], e
    dec de
    ld l, e
    cp $fe
    db $f4
    ld l, b
    ld [hl], d
    ld [hl], b
    ld a, d
    ld [hl], b
    add d
    ld [hl], b
    adc d
    ld [hl], b
    sub d
    ld [hl], b
    sbc d
    ld [hl], b
    and d
    ld [hl], b
    xor d
    ld [hl], b
    or d
    ld [hl], b
    cp d
    ld [hl], b
    jp nz, $ca70

    ld [hl], b
    jp nc, $da70

    ld [hl], b
    ldh [c], a
    ld [hl], b
    ld [$f270], a
    ld [hl], b
    ld a, [$0270]
    ld [hl], c
    ld a, [bc]
    ld [hl], c
    ld [de], a
    ld [hl], c
    ld a, [de]
    ld [hl], c
    ld [hl+], a
    ld [hl], c
    ld a, [hl+]
    ld [hl], c
    ld [hl-], a
    ld [hl], c
    ld a, [hl-]
    ld [hl], c
    ld b, d
    ld [hl], c
    ld c, d

jr_006_700d:
    ld [hl], c
    ld d, d
    ld [hl], c
    ld e, d
    ld [hl], c
    ld h, d
    ld [hl], c
    ld l, d
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld a, d
    ld [hl], c
    add d
    ld [hl], c
    adc d
    ld [hl], c
    sub d
    ld [hl], c
    sbc d
    ld [hl], c
    and d
    ld [hl], c
    xor d
    ld [hl], c
    or d
    ld [hl], c
    cp d
    ld [hl], c
    jp nz, $ca71

    ld [hl], c
    jp nc, $da71

    ld [hl], c
    ldh [c], a
    ld [hl], c
    ld [$f271], a
    ld [hl], c
    ld a, [$0271]
    ld [hl], d
    ld a, [bc]
    ld [hl], d
    ld [de], a
    ld [hl], d
    ld a, [de]
    ld [hl], d
    ld [hl+], a
    ld [hl], d
    ld a, [hl+]
    ld [hl], d
    ld [hl-], a
    ld [hl], d
    ld a, [hl-]
    ld [hl], d
    ld b, d
    ld [hl], d
    ld c, d
    ld [hl], d
    ld d, d
    ld [hl], d
    ld e, d
    ld [hl], d
    ld h, d
    ld [hl], d
    ld l, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld a, d
    ld [hl], d
    add d
    ld [hl], d
    adc d
    ld [hl], d
    sub d
    ld [hl], d
    sbc d
    ld [hl], d
    and d
    ld [hl], d
    xor d
    ld [hl], d
    or d
    ld [hl], d
    cp d
    ld [hl], d
    jp nz, $ca72

    ld [hl], d
    jp nc, $da72

    ld [hl], d
    ldh [c], a
    ld [hl], d
    ld hl, sp+$72
    adc a
    ld [hl], e
    xor [hl]
    ld [hl], e
    rst RST_00
    ld [hl], e
    ld hl, sp+$72
    adc a
    ld [hl], e
    rst RST_18
    ld [hl], e
    ei
    ld [hl], e
    ld hl, sp+$72
    adc a
    ld [hl], e
    rlca
    ld [hl], h
    dec de
    ld [hl], h
    ld hl, sp+$72
    adc a
    ld [hl], e
    jr nc, jr_006_7106

    ld b, h
    ld [hl], h
    ld hl, sp+$72
    adc a
    ld [hl], e
    ld e, c
    ld [hl], h
    ld l, l
    ld [hl], h
    ld hl, sp+$72
    adc a
    ld [hl], e
    ld a, d
    ld [hl], h
    sub l
    ld [hl], h
    jr nz, jr_006_7119

    adc a
    ld [hl], e
    and h
    ld [hl], h
    cp d
    ld [hl], h
    call c, $dc73
    ld [hl], e
    rst RST_00
    ld [hl], h
    db $ec
    ld [hl], h
    nop
    ld [hl], l
    ld [$1d75], sp
    ld [hl], l
    ld sp, $8375
    ld [hl], e
    sbc [hl]
    ld [hl], e
    ld c, d
    ld [hl], l
    ld e, [hl]
    ld [hl], l
    call c, $dc73
    ld [hl], e
    ld l, c
    ld [hl], l
    ld a, h
    ld [hl], l
    call c, $dc73
    ld [hl], e
    ld a, l
    ld [hl], l
    add a
    ld [hl], l
    sub b
    ld [hl], l
    sub a
    ld [hl], l
    sbc d
    ld [hl], l
    xor [hl]
    ld [hl], l
    xor [hl]
    ld [hl], l
    xor [hl]
    ld [hl], l
    xor [hl]
    ld [hl], l
    add a
    ld [hl], l
    sub b
    ld [hl], l
    sub a
    ld [hl], l
    xor [hl]
    ld [hl], l
    add a
    ld [hl], l
    sub b
    ld [hl], l
    sub a
    ld [hl], l
    db $ec
    ld [hl], l
    ld a, [bc]
    halt
    dec e
    halt
    inc l
    halt
    dec sp
    halt
    ld b, h
    halt
    call c, $dc73
    ld [hl], e
    ld b, l
    halt
    ld c, a
    halt
    dec e
    halt

jr_006_7106:
    inc l
    halt
    ld e, e
    halt
    ld h, l
    halt
    call c, $dc73
    ld [hl], e
    ld l, l
    halt
    ld a, h
    halt
    inc l
    ld [hl], e
    adc a
    ld [hl], e
    adc b

jr_006_7119:
    halt
    sbc h
    halt
    ld hl, sp+$72
    adc a
    ld [hl], e
    and h
    halt
    jp z, $dc76

    ld [hl], e
    call c, $ac73
    halt
    ret


    halt
    call c, $dc73
    ld [hl], e
    or h
    halt
    push de
    halt
    db $e4
    halt
    di
    halt
    ld [bc], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    call c, $dc73
    ld [hl], e
    inc de
    ld [hl], a
    ld hl, $dc77
    ld [hl], e
    call c, Call_000_2273
    ld [hl], a
    ld [hl], $77
    jr c, @+$75

    adc a
    ld [hl], e
    ld b, d
    ld [hl], a
    ld d, l
    ld [hl], a
    call c, $dc73
    ld [hl], e
    ld d, [hl]
    ld [hl], a
    ld [hl], d
    ld [hl], a
    call c, $dc73
    ld [hl], e
    ld [hl], e
    ld [hl], a
    adc a
    ld [hl], a
    ld hl, sp+$72
    adc a
    ld [hl], e
    sbc e
    ld [hl], a
    xor [hl]
    ld [hl], a
    call c, $dc73
    ld [hl], e
    xor a
    ld [hl], a
    ret nz

    ld [hl], a
    rst RST_00
    ld [hl], a
    adc a
    ld [hl], e
    rst RST_00
    ld [hl], a
    add $77
    call c, $dc73
    ld [hl], e
    ld e, a
    ld a, b
    ld l, c
    ld a, b
    db $e4
    halt
    di
    halt
    ld [hl], l
    ld a, b
    ld a, a
    ld a, b
    ld [bc], a
    ld [hl], e
    sub a
    ld [hl], l
    adc d
    ld a, b
    jp Jump_000_0278


    ld [hl], e
    sub a
    ld [hl], l
    ret


    ld a, b
    or $78
    ld [bc], a
    ld [hl], e
    sub a
    ld [hl], l
    db $fc
    ld a, b
    ld [hl-], a
    ld a, c
    ld [bc], a
    ld [hl], e
    sub a
    ld [hl], l
    jr c, jr_006_7223

    ld l, [hl]
    ld a, c
    ld [bc], a
    ld [hl], e
    sub a
    ld [hl], l
    ld [hl], h
    ld a, c
    xor d
    ld a, c
    ld [bc], a
    ld [hl], e
    sub a
    ld [hl], l
    or l
    ld a, c
    ldh a, [c]
    ld a, c
    ld [bc], a
    ld [hl], e
    sub a
    ld [hl], l
    ld hl, sp+$79
    dec h
    ld a, d
    ld [bc], a
    ld [hl], e
    sub a
    ld [hl], l
    dec hl
    ld a, d
    ld c, c
    ld a, d
    ld [bc], a
    ld [hl], e
    sub a
    ld [hl], l
    ld c, a
    ld a, d
    ld l, l
    ld a, d
    ld [bc], a
    ld [hl], e
    sub a
    ld [hl], l
    ld [hl], e
    ld a, d
    sub c
    ld a, d
    ld hl, sp+$72
    adc a
    ld [hl], e
    sbc a
    ld a, d
    or e
    ld a, d
    or e
    ld a, d
    or e
    ld a, d
    or e
    ld a, d
    or e
    ld a, d
    sub b
    ld [hl], l
    sub a
    ld [hl], l
    jp nz, $cc7a

    ld a, d
    sub b
    ld [hl], l
    sub a
    ld [hl], l
    ret c

    ld a, d
    pop af
    ld a, d
    ld [hl], a
    ld [hl], e
    adc a
    ld [hl], e
    ld de, $257b
    ld a, e
    dec h
    ld a, e
    dec h
    ld a, e
    dec h
    ld a, e
    dec h
    ld a, e
    ld hl, sp+$72
    adc a
    ld [hl], e
    ld sp, $3b7b
    ld a, e
    dec sp
    ld a, e
    dec sp
    ld a, e
    dec sp
    ld a, e
    inc a
    ld a, e
    call c, $dc73
    ld [hl], e
    ld b, h
    ld a, e
    add d

jr_006_7223:
    ld a, e
    ld l, e
    ld [hl], e
    adc a
    ld [hl], e
    sub [hl]
    ld a, e
    xor a
    ld a, e
    call c, $dc73
    ld [hl], e
    or a
    ld a, e
    cp a
    ld a, e
    ld b, h
    ld [hl], e
    adc a
    ld [hl], e
    db $d3
    ld a, e
    inc de
    ld a, h
    sub h
    ld [hl], l
    sub a
    ld [hl], l
    dec de
    ld a, h
    cpl
    ld a, h
    cpl
    ld a, h
    cpl
    ld a, h
    cpl
    ld a, h
    cpl
    ld a, h
    cpl
    ld a, h
    cpl
    ld a, h
    cpl
    ld a, h
    jr nc, jr_006_72d0

    rlca
    ld [hl], e
    adc a
    ld [hl], e
    ld [hl], $7c
    ld c, d
    ld a, h
    call c, $dc73
    ld [hl], e
    ld d, b
    ld a, h
    add a
    ld [hl], l
    ld hl, sp+$72
    adc a
    ld [hl], e
    ld e, a
    ld a, h
    add a
    ld [hl], l
    ld hl, sp+$72
    adc a
    ld [hl], e
    ld [hl], e
    ld a, h
    add a
    ld [hl], l
    ld hl, sp+$72
    adc a
    ld [hl], e
    add a
    ld a, h
    adc a
    ld a, h
    call c, $dc73
    ld [hl], e
    sbc d
    ld a, h
    xor [hl]
    ld a, h
    call c, $dc73
    ld [hl], e
    cp c
    ld a, h
    jp z, $dc7c

    ld [hl], e
    call c, $d573
    ld a, h
    db $dd
    ld a, h
    call c, $dc73
    ld [hl], e
    add sp, $7c
    ldh a, [$ff7c]
    call c, $dc73
    ld [hl], e
    ei
    ld a, h
    ld c, $7d
    call c, $dc73
    ld [hl], e
    ld de, $227d
    ld a, l
    dec h
    ld a, l
    adc a
    ld [hl], e
    call c, $4573
    ld a, l
    ld b, l
    ld a, l
    ld b, l
    ld a, l
    ld b, l
    ld a, l
    ld b, [hl]
    ld a, l
    ld c, c
    ld a, l
    ld e, e
    ld a, l
    ld l, c
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l

jr_006_72d0:
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    add hl, de
    nop
    dec b
    rst RST_30
    ld [hl], d
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $30
    inc b
    push af
    ld [hl], d
    nop
    ld e, $17
    jr nc, @+$01

    ld bc, $ffc7
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld a, [de]
    ld e, $b0
    ld [bc], a
    nop
    rst RST_38
    ld e, $b0
    ld [bc], a
    ld bc, $13ff
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $27
    dec b
    ld d, $73
    ld a, [de]
    ld e, $b0
    ld [bc], a
    nop
    rst RST_38
    ld e, h
    dec b
    ld c, c
    rla
    or b
    ld b, $31
    ld bc, $ffaa
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $5a
    dec b
    add l
    halt
    inc e
    db $fc
    ld [hl], d
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $5b
    dec b
    add l
    halt
    inc e
    db $fc
    ld [hl], d
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $5c
    dec b
    add l
    halt
    inc e
    db $fc
    ld [hl], d
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $5e
    dec b
    add l
    halt
    ld a, [de]
    ld e, $b0
    ld [bc], a
    nop
    ld d, $16
    inc b
    ld l, d
    ld [hl], e
    rla
    or b
    cpl
    ld a, [hl-]
    ld b, $30
    ld l, b
    ld l, b
    ld [bc], a
    dec h
    ld e, d
    rlca
    ld bc, $5a88
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $5f
    dec b
    add l
    halt
    inc e
    db $fc
    ld [hl], d
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $60
    dec b
    add l
    halt
    inc e
    db $fc
    ld [hl], d
    add hl, de
    rlca
    inc b
    ld hl, sp+$72
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    nop
    ld l, b
    rst RST_38
    inc de
    dec b
    sbc c
    ld [hl], e
    dec de
    ld e, $b0
    ld [bc], a
    ld [bc], a
    rst RST_38
    ld e, $b0
    ld [bc], a
    inc bc
    rst RST_38
    add hl, de
    rlca
    inc b
    adc a
    ld [hl], e
    inc de
    dec b
    sbc c
    ld [hl], e
    scf
    add hl, bc
    ld e, $b0
    ld [bc], a
    ld [bc], a
    rst RST_38
    add hl, de
    nop
    inc b
    cp b
    ld [hl], e
    ld b, $00
    nop
    ld [de], a
    rst RST_38
    ld b, $01
    ld d, $30
    inc b
    call nz, Call_000_0073
    dec e
    rla
    jr nc, @+$01

    nop
    inc hl
    rst RST_38
    add hl, de
    ld bc, $cd04
    ld [hl], e
    rst RST_38
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $31
    inc b
    reti


    ld [hl], e
    nop
    ld e, $ff
    nop
    inc h
    rst RST_38
    nop
    inc de
    rst RST_38
    add hl, de
    ld bc, $b805
    ld [hl], e
    ld d, $17
    dec b
    ld hl, sp+$73
    ld b, $02
    ld d, $31
    inc b
    push af
    ld [hl], e
    nop
    ld h, $17
    ld sp, $00ff
    dec hl
    rst RST_38
    ld bc, $ff5e
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    add hl, de
    ld [bc], a
    dec b
    reti


    ld [hl], e
    nop
    jr z, @+$01

    add hl, de
    ld [bc], a
    dec b
    db $e4
    ld [hl], e
    ld b, $03
    ld d, $32
    inc b
    jr @+$76

    nop
    inc l
    rla
    ld [hl-], a
    rst RST_38
    nop
    ld [hl-], a
    rst RST_38
    add hl, de
    dec b
    dec b
    ld hl, $ff74
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $33
    inc b
    dec l
    ld [hl], h
    nop
    add hl, hl
    rst RST_38
    ld [bc], a
    or d
    rst RST_38
    add hl, de
    ld [bc], a
    dec b
    db $e4
    ld [hl], e
    ld b, $05
    ld d, $33
    inc b
    ld b, c
    ld [hl], h
    nop
    dec sp
    rla
    inc sp
    rst RST_38
    nop
    ld b, d
    rst RST_38
    add hl, de
    inc bc
    inc b
    ld c, d
    ld [hl], h
    rst RST_38
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $34
    inc b
    ld d, [hl]
    ld [hl], h
    nop
    ld sp, $01ff
    rst RST_00
    rst RST_38
    add hl, de
    inc bc
    dec b
    inc c
    ld [hl], h
    ld b, $04
    ld d, $34
    inc b
    ld l, d
    ld [hl], h
    nop
    inc sp
    rla
    inc [hl]
    rst RST_38
    nop
    add hl, sp
    rst RST_38
    add hl, de
    dec b
    inc b
    ld [hl], e
    ld [hl], h
    rst RST_38
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    nop
    ld a, $ff
    add hl, de
    dec b
    dec b
    dec [hl]
    ld [hl], h
    ld d, $04
    inc b
    add [hl]
    ld [hl], h
    rla
    inc bc
    ld b, $06
    ld d, $35
    inc b
    sub d
    ld [hl], h
    nop
    ld c, c
    rla
    dec [hl]
    rst RST_38
    nop
    ld d, d
    rst RST_38
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    add hl, de
    dec b
    inc b
    and c
    ld [hl], h
    ld [bc], a
    or d
    rst RST_38
    nop
    ccf
    rst RST_38
    add hl, de
    dec b
    dec b
    dec [hl]
    ld [hl], h
    ld e, [hl]
    ld c, d
    ld b, $11
    ld d, $36
    dec b
    or l
    ld [hl], h
    ld [bc], a
    cp c
    rst RST_38
    ld [bc], a
    or c
    rla
    ld [hl], $ff
    add hl, de
    dec b
    dec b
    rst RST_30
    ld [hl], d
    ld d, $37
    inc b
    ld b, c
    ld a, e
    nop
    dec a
    rst RST_38
    add hl, de
    dec b
    dec b
    dec [hl]
    ld [hl], h
    add hl, de
    dec c
    inc b
    sub $74
    ld d, $25
    dec b
    push hl
    ld [hl], h
    ld b, $0e
    ld d, $37
    dec b
    ldh [$ff74], a
    ld [bc], a
    xor d
    rst RST_38
    ld [bc], a
    and e
    rla
    scf
    rst RST_38
    ld b, $0e
    ld [bc], a
    and e
    ld b, [hl]
    jr @+$01

    inc de
    inc b
    ei
    ld [hl], h
    add hl, de
    ld b, $04
    ld hl, sp+$74
    nop
    ld d, d
    rst RST_38
    nop
    ld c, [hl]
    rst RST_38
    ld e, $67
    ld [bc], a
    ld bc, $19ff
    rlca
    inc b
    ld hl, sp+$72
    nop
    inc d
    rst RST_38
    add hl, de
    rlca
    inc b
    adc a
    ld [hl], e
    inc de
    dec b
    jr jr_006_7586

    ld e, $67
    ld [bc], a
    ld [bc], a
    scf
    ld [$1eff], sp
    ld h, a
    ld [bc], a
    inc bc
    rst RST_38
    add hl, de
    ld b, $05
    ld a, a
    ld [hl], h
    ld b, $07
    ld d, $38
    dec b
    inc l
    ld [hl], l
    nop
    ld e, b
    rst RST_38
    nop
    ld d, h
    rla
    jr c, @+$01

    inc de
    inc b
    ld [bc], a
    ld [hl], e
    add hl, de
    rlca
    inc b
    ccf
    ld [hl], l
    ld e, $b0
    ld [bc], a
    inc bc
    rst RST_38
    ld d, $3a
    inc b
    ld b, a
    ld [hl], l
    nop
    ld d, [hl]
    rst RST_38
    nop
    ld e, c
    rst RST_38
    add hl, de
    rlca
    dec b
    ld [hl+], a
    ld [hl], l
    ld b, $08
    ld d, $3a
    dec b
    ld e, c
    ld [hl], l
    nop
    ld h, l
    rst RST_38
    nop
    ld e, d
    rla
    ld a, [hl-]
    rst RST_38
    add hl, de
    rlca
    dec b
    ld h, [hl]
    ld [hl], l
    nop
    ld d, l
    rst RST_38
    ld bc, $ff21
    add hl, de
    rlca
    dec b
    ld [hl+], a
    ld [hl], l
    ld b, $3a
    ld d, $39
    dec b
    ld a, b
    ld [hl], l
    ld bc, $ff24
    ld bc, $1728
    add hl, sp
    rst RST_38
    add hl, de
    ld [$4f05], sp
    ld [hl], l
    ld b, $09
    nop
    ld l, c

jr_006_7586:
    rst RST_38
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld e, $b0
    ld [bc], a
    inc bc
    rst RST_38
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld [bc], a
    and c
    rst RST_38
    ld [bc], a
    and d
    rst RST_38
    add hl, de
    add hl, bc
    dec b
    add d
    ld [hl], l
    ld b, $0a
    ld d, $3b
    dec b
    xor c
    ld [hl], l
    nop
    ld l, a
    rst RST_38
    nop
    ld l, e
    rla
    dec sp
    rst RST_38
    add hl, de
    ccf
    inc b
    rst RST_00
    ld [hl], l
    ld b, $0c
    ld d, $57
    inc b
    call nz, $1675
    inc a
    inc b
    call nz, Call_000_0275
    add c
    rla
    ld d, a
    rst RST_38
    ld [bc], a
    sub e
    rst RST_38
    ld b, $0c
    ld d, $3c
    inc b
    call c, $1675
    ld d, a
    inc b
    db $e3
    ld [hl], l
    ccf
    ld bc, $8102
    ld bc, $1702
    inc a
    rst RST_38
    ccf
    ld bc, $9302
    ld [bc], a
    xor c
    rst RST_38
    ccf
    ld bc, $9302
    ld bc, $1702
    inc a
    rst RST_38
    add hl, de
    ld b, b
    dec b
    nop
    halt
    ld b, $0b
    ld d, $3d
    dec b
    ei
    ld [hl], l
    nop
    ld a, h
    rst RST_38
    nop
    ld [hl], d
    rla
    dec a
    rst RST_38
    ld b, $40
    ld d, $3b
    dec b
    xor c
    ld [hl], l
    nop
    ld l, a
    rst RST_38
    inc de
    inc b
    daa
    halt
    add hl, de
    dec bc
    inc b
    ld a, [de]
    halt
    ccf
    ld bc, $ac02
    ld [bc], a
    ld c, [hl]
    rst RST_38
    ld [bc], a
    add a
    rst RST_38
    inc de
    inc b
    daa
    halt
    ld a, [de]
    ld e, $66
    ld [bc], a
    nop
    rst RST_38
    ld e, $66
    ld [bc], a
    ld bc, $13ff
    dec b
    ld [hl], $76
    dec de
    ld e, $66
    ld [bc], a
    ld [bc], a
    rst RST_38
    ld e, $66
    ld [bc], a
    inc bc
    rst RST_38
    add hl, de
    dec bc
    dec b
    pop af
    ld [hl], l
    ld b, $0f
    ld [bc], a
    xor e
    rst RST_38
    add hl, de
    rrca
    dec b
    ld b, b
    halt
    ld b, $10
    ld [bc], a
    xor [hl]
    rst RST_38
    inc de
    inc b
    daa
    halt
    add hl, de
    inc c
    inc b
    ld a, [de]
    halt
    ld [bc], a
    or b
    rst RST_38
    add hl, de
    inc c
    dec b
    xor [hl]
    ld [hl], l
    ld b, $10
    ld [bc], a
    xor [hl]
    rst RST_38
    add hl, de
    ld d, $05
    ld h, h
    halt
    ld [bc], a
    db $d3
    rst RST_38
    add hl, de
    db $10
    inc b
    ld [hl], l
    halt
    ld [bc], a
    db $d3
    rst RST_38
    ld e, [hl]
    ld e, $06
    ld d, $02
    pop de
    rst RST_38
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $5b
    inc b
    sbc c
    ld [hl], e
    nop
    ld b, e
    rst RST_38
    add hl, de
    inc c
    dec b
    xor [hl]
    ld [hl], l
    ld b, $0d
    ld d, $3e
    dec b
    sub a
    halt
    ld [bc], a
    and b
    rst RST_38
    ld [bc], a
    sub a
    rla
    ld a, $ff
    add hl, de
    dec c
    inc b
    rst RST_30
    ld [hl], d
    inc e
    add a
    ld [hl], l
    add hl, de
    dec c
    dec b
    adc l
    halt
    inc e
    call z, $1974
    ld de, $a905
    ld [hl], h
    inc e
    ld [hl], l
    halt
    add hl, de
    ld de, $a905
    ld [hl], h
    ld e, [hl]
    ld c, e
    ld b, $12
    ld d, $3f
    dec b
    push bc
    halt
    ld [bc], a
    jp nz, Jump_000_02ff

    cp l
    rla
    ccf
    rst RST_38
    add hl, de
    ld d, $05
    jp nc, Jump_000_0276

    call nc, Call_000_02ff
    pop de
    rst RST_38
    inc de
    inc b
    xor $76
    add hl, de
    ld de, $e104
    halt
    ld bc, $ff32
    ld [bc], a
    cp h
    rst RST_38
    inc de
    inc b
    xor $76
    ld a, [de]
    ld e, $ba
    ld [bc], a
    nop
    rst RST_38
    ld e, $ba
    ld [bc], a
    ld bc, $13ff
    dec b
    db $fd
    halt
    dec de
    ld e, $ba
    ld [bc], a
    ld [bc], a
    rst RST_38
    ld e, $ba
    ld [bc], a
    inc bc
    rst RST_38
    add hl, de
    ld de, $a905
    ld [hl], h
    ld b, $1d
    ld d, $40
    inc b
    ld [hl], l
    ld [hl], l
    ld bc, $1731
    ld b, b
    rst RST_38
    add hl, de
    rla
    dec b
    dec de
    ld [hl], a
    inc e
    xor c
    ld [hl], h
    ld e, [hl]
    jr nz, @+$08

    rla
    ld [bc], a
    sub $ff
    add hl, de
    ld de, $a905
    ld [hl], h
    ld b, $22
    ld d, $41
    dec b
    ld sp, $0277
    or $ff
    ld [bc], a
    pop af
    rla
    ld b, c
    rst RST_38
    add hl, de
    ld de, $4105
    ld [hl], a
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld [bc], a
    or l
    rst RST_38
    add hl, de
    ld de, $a905
    ld [hl], h
    ld b, $23
    ld d, $42
    dec b
    ld d, c
    ld [hl], a
    ld [bc], a
    add d
    rst RST_38
    ld bc, $1700
    ld b, d
    rst RST_38
    add hl, de
    ld [de], a
    dec b
    cp c
    halt
    ld d, $a8
    inc b
    ld h, h
    ld [hl], a
    ld e, [hl]
    ld c, h
    ld e, [hl]
    rra
    ld b, $13
    jr @-$56

    dec b
    ld l, [hl]
    ld [hl], a
    ld [bc], a
    rst RST_08
    rst RST_38
    ld [bc], a
    rl a
    ld b, e
    rst RST_38
    add hl, de
    inc de
    dec b
    ld e, e
    ld [hl], a
    ld e, [hl]
    ld c, l
    ld b, $14
    ld d, $7a
    dec b
    add h
    ld [hl], a
    ld [bc], a
    ret nc

    rst RST_38
    ld e, $b1
    ld [bc], a
    dec bc
    ld b, d
    and e
    rla
    ld a, d
    rla
    ld b, h
    rst RST_38
    add hl, de
    dec h
    inc b
    rst RST_30
    ld [hl], d
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld [bc], a
    call Call_000_19ff
    inc de
    dec b
    ld e, e
    ld [hl], a
    ld b, $25
    ld d, $45
    dec b
    xor d
    ld [hl], a
    ld [bc], a
    ld h, $ff
    ld bc, $1710
    ld b, l
    rst RST_38
    add hl, de
    inc d
    dec b
    ld a, b
    ld [hl], a
    ld b, $15
    ld d, $46
    dec b
    add c
    ld [hl], a
    ld e, $b2
    ld [bc], a
    dec bc
    rst RST_38
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ret c

    rst RST_38
    ld a, [de]
    ld l, b
    ld e, $13
    dec b
    inc c
    ld [hl], h
    ld d, $25
    dec b
    ld e, c
    ld a, b
    ld d, $a1
    dec b
    dec [hl]
    ld a, b
    ld d, d
    inc h
    dec b
    ld c, $78
    ld e, l
    ld [$fc05], sp
    ld [hl], a
    ld d, d
    ld e, $05
    db $fc
    ld [hl], a
    ld d, $a2
    dec b
    ld c, e
    ld a, b
    ld d, $a3
    dec b
    ld c, e
    ld a, b
    ld d, $a4
    dec b
    ld c, e
    ld a, b
    ld e, d
    rla
    rst RST_38
    ld [bc], a
    ld h, e
    rst RST_38
    ld d, $a2
    inc b
    dec a
    ld a, b
    ld d, $a3
    inc b
    dec a
    ld a, b
    ld d, $a4
    inc b
    dec a
    ld a, b
    inc e
    daa
    ld a, b
    ld e, l
    ld [$fc04], sp
    ld [hl], a
    ld d, d
    ld e, $04
    db $fc
    ld [hl], a
    ld d, d
    ld [de], a
    inc b
    dec a
    ld a, b
    ld d, d
    dec de
    inc b
    dec a
    ld a, b
    ld d, d
    ld c, $04
    dec a
    ld a, b
    ld e, d
    inc d
    ccf
    inc bc
    nop
    ld a, [hl+]
    nop
    ld e, h
    ld bc, $01fd
    db $fc
    ld c, b
    rst RST_38
    ld e, d
    inc d
    ld e, d
    dec d
    ld bc, $48fa
    rst RST_38
    ld e, d
    inc d
    ccf
    inc bc
    nop
    ld a, [hl+]
    nop
    ld e, h
    nop
    ld e, e
    ld bc, $48fe
    rst RST_38
    ld e, d
    inc d
    ccf
    inc bc
    nop
    ld a, [hl+]
    nop
    ld a, [hl-]
    nop
    ld e, e
    ld bc, $48fc
    rst RST_38
    ld e, d
    inc d

Jump_006_785b:
    ld bc, $48fb
    rst RST_38
    ld b, $18
    ld [bc], a
    jp c, Jump_000_155a

    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    inc de
    inc b
    xor $76
    add hl, de
    ld d, $04
    pop hl
    halt
    ld bc, $ff32
    add hl, de
    ld d, $05
    ld [hl], l
    halt
    ld b, $3d
    inc e
    add hl, bc
    ld [hl], a
    add hl, de
    ld h, $05
    add l
    ld a, b
    rst RST_38
    ld e, $b1
    ld [bc], a
    inc c
    rst RST_38
    add hl, de
    ld h, $04
    and c
    ld a, b
    jr nc, jr_006_789e

    ld b, $26
    ccf
    ld bc, $3901
    ld d, $81
    inc b
    sbc [hl]
    ld a, b
    ld b, l
    rst RST_38

jr_006_789e:
    ld [bc], a
    ld l, [hl]
    rst RST_38
    ld d, $83
    dec b
    ld a, b
    ld [hl], a
    ld d, $82
    inc b
    cp h
    ld a, b
    ld d, $84

jr_006_78ad:
    inc b
    or l
    ld a, b

jr_006_78b0:
    ld [bc], a
    ld e, l
    rla

jr_006_78b3:
    add h
    rst RST_38
    ld c, d
    ld [bc], a
    dec b
    rra
    ld a, d
    ld [bc], a
    ld l, h
    ld b, $14
    ld [bc], a
    ret nc

    inc e
    db $eb
    ld a, c
    add hl, de
    ld b, d
    dec b
    add l
    ld a, b
    rst RST_38
    add hl, de
    ld b, d
    inc b
    ldh [c], a
    ld a, b
    ld b, $42
    ld bc, $ff39
    ld b, $19
    ld d, $48
    inc b
    rst RST_18
    ld a, b
    ld bc, $1747
    ld c, b
    rst RST_38
    ld bc, $ff49
    ld d, $83
    dec b
    db $d3
    ld a, b
    ld d, $82

jr_006_78e9:
    inc b
    ld d, $7a

jr_006_78ec:
    ld d, $84
    inc b

jr_006_78ef:
    rra
    ld a, d
    ld [bc], a
    ld e, l
    rla
    add h
    rst RST_38
    add hl, de
    ld b, h
    dec b
    add l
    ld a, b
    rst RST_38
    add hl, de
    ld b, h
    inc b
    dec d
    ld a, c
    ld b, $44
    ld bc, $ff39
    ld b, $1a
    ld d, $49
    inc b
    ld [de], a
    ld a, c
    ld bc, $175f
    ld c, c
    rst RST_38
    ld bc, $ff66
    ld d, $83
    dec b
    ld b, $79
    ld d, $82
    inc b
    add hl, hl
    ld a, c
    ld d, $84
    inc b
    rra
    ld a, d
    ld [bc], a

jr_006_7925:
    ld e, l
    rla
    add h

jr_006_7928:
    rst RST_38
    jr jr_006_78ad

jr_006_792b:
    jr jr_006_78b0

    jr jr_006_78b3

    inc e
    ld b, $79
    add hl, de
    ld b, [hl]
    dec b
    add l
    ld a, b
    rst RST_38
    add hl, de
    ld b, [hl]
    inc b
    ld d, c
    ld a, c
    ld b, $46
    ld bc, $ff39
    ld b, $1b
    ld d, $4a
    inc b
    ld c, h
    ld a, c
    ld bc, $ff75
    ld bc, $1773
    ld c, d
    rst RST_38
    ld d, $83
    dec b
    ld b, d
    ld a, c
    ld d, $82
    inc b
    ld h, l
    ld a, c
    ld d, $84
    inc b
    rra
    ld a, d
    ld [bc], a
    ld e, l
    rla
    add h
    rst RST_38
    jr jr_006_78e9

    jr jr_006_78ec

    jr jr_006_78ef

    inc e
    ld b, d
    ld a, c
    add hl, de

jr_006_796f:
    ld c, b
    dec b
    add l

jr_006_7972:
    ld a, b
    rst RST_38
    add hl, de

jr_006_7975:
    ld c, b
    inc b
    adc l
    ld a, c
    ld b, $48
    ld bc, $ff39
    ld b, $1c
    ld d, $4b
    inc b
    adc d
    ld a, c
    ld bc, $179a
    ld c, e
    rst RST_38
    ld bc, $ff9f
    ld d, $83
    dec b
    ld a, [hl]
    ld a, c
    ld d, $82
    inc b
    and c
    ld a, c
    ld d, $84
    inc b

jr_006_799a:
    rra
    ld a, d
    ld [bc], a

jr_006_799d:
    ld e, l
    rla
    add h

jr_006_79a0:
    rst RST_38
    jr jr_006_7925

    jr jr_006_7928

    jr jr_006_792b

    inc e
    ld a, [hl]
    ld a, c
    add hl, de
    daa
    dec b
    or b
    ld a, c
    rst RST_38
    ld e, $b2
    ld [bc], a
    inc c
    rst RST_38
    add hl, de
    daa
    inc b
    call z, $2f79
    dec c
    ld b, $27
    ccf
    ld bc, $4201
    ld d, $a0
    inc b
    ret


    ld a, c
    ld b, l
    rst RST_38
    ld [bc], a
    ld l, a
    rst RST_38
    ld d, $83
    dec b
    or h
    ld [hl], a
    ld d, $82
    inc b
    rst RST_20
    ld a, c
    ld d, $84
    inc b
    ldh [$ff79], a
    ld [bc], a
    ld e, [hl]
    rla
    add h
    rst RST_38
    ld c, d
    ld [bc], a
    dec b
    rra
    ld a, d
    ld [bc], a
    ld l, l
    ld b, $15
    ld [bc], a
    ret nc

    jr jr_006_796f

    jr jr_006_7972

    jr jr_006_7975

    rst RST_38
    add hl, de
    ld b, e
    dec b
    or b
    ld a, c
    rst RST_38
    add hl, de
    ld b, e
    inc b
    ld [bc], a
    ld a, d
    ld b, $43
    ld bc, $ff42
    ld d, $83
    dec b
    db $d3
    ld a, b
    ld d, $82
    inc b
    ld d, $7a
    ld d, $84
    inc b
    rra
    ld a, d
    ld [bc], a
    ld e, [hl]
    rla
    add h
    rst RST_38
    jr jr_006_799a

    jr jr_006_799d

    jr jr_006_79a0

    inc e
    db $d3
    ld a, b
    ld e, d
    inc d
    ld bc, $48b2
    rst RST_38
    add hl, de
    ld b, l
    dec b
    or b
    ld a, c
    rst RST_38
    add hl, de
    ld b, l
    inc b
    dec [hl]
    ld a, d
    ld b, $45
    ld bc, $ff42
    ld d, $83
    dec b
    ld b, $79
    ld d, $82
    inc b
    add hl, hl
    ld a, c
    ld d, $84
    inc b
    rra
    ld a, d
    ld [bc], a
    ld e, [hl]
    rla
    add h
    rst RST_38
    add hl, de
    ld b, a
    dec b
    or b
    ld a, c
    rst RST_38
    add hl, de
    ld b, a
    inc b
    ld e, c
    ld a, d
    ld b, $47
    ld bc, $ff42
    ld d, $83
    dec b
    ld b, d
    ld a, c
    ld d, $82
    inc b
    ld h, l
    ld a, c
    ld d, $84
    inc b
    rra
    ld a, d
    ld [bc], a
    ld e, [hl]
    rla
    add h
    rst RST_38
    add hl, de
    ld c, c
    dec b
    or b
    ld a, c
    rst RST_38
    add hl, de
    ld c, c
    inc b
    ld a, l
    ld a, d
    ld b, $49
    ld bc, $ff42
    ld d, $83
    dec b
    ld a, [hl]
    ld a, c
    ld d, $82
    inc b
    and c
    ld a, c
    ld d, $84
    inc b
    rra
    ld a, d
    ld [bc], a
    ld e, [hl]
    rla
    add h
    rst RST_38
    add hl, de
    add hl, de
    dec b
    sbc [hl]
    ld a, d
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld e, $b0
    ld [bc], a
    inc bc
    rst RST_38
    add hl, de
    add hl, de
    dec b
    db $d3
    ld a, b
    ld b, $28
    ld d, $4c
    inc b
    or b
    ld a, d
    ld bc, $174a
    ld c, h
    rst RST_38
    ld bc, $ff4d
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    add hl, de
    jr z, @+$06

    cp a
    ld a, d
    ld bc, $ff51
    ld bc, $ff4b
    add hl, de
    jr z, jr_006_7aca

    and h
    ld a, d
    ld b, $29
    nop

jr_006_7aca:
    ld l, a
    rst RST_38
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    add hl, de
    ld a, [hl+]
    inc b
    cp a
    ld a, d
    ld bc, $ff51
    add hl, de
    ld a, [hl+]
    dec b
    ldh [c], a
    ld a, d
    ld b, $41
    nop
    ld l, a
    rst RST_38
    ld b, $2a
    ld d, $ad
    inc b
    xor $7a
    ld bc, $1753
    xor l
    rst RST_38
    ld [bc], a
    daa
    rst RST_38
    add hl, de
    dec hl
    dec b
    rst RST_30
    ld a, d
    rst RST_38
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $60
    inc b
    sbc c
    ld [hl], e
    ld d, $2d
    inc b
    ld a, [bc]
    ld a, e
    ld bc, $1761
    dec l
    rst RST_38
    ccf
    ld bc, $6101
    ld bc, $ff62
    add hl, de
    ld a, [de]
    dec b
    ld b, $79
    ld b, $2b
    ld d, $4d
    inc b
    ld [hl+], a
    ld a, e
    ld bc, $1767
    ld c, l
    rst RST_38
    ld bc, $ff6f
    add hl, de
    inc l
    inc b
    inc h
    ld a, e
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld bc, $ffc7
    add hl, de
    dec de
    dec b
    ld b, d
    ld a, c
    ld b, $2c
    ld bc, $ff76
    rst RST_38
    add hl, de
    inc l
    dec b
    ld a, [hl-]
    ld a, e
    nop
    ld c, b
    rst RST_38
    add hl, de
    inc l
    dec b
    ld [hl], $7b
    ld d, $16
    inc b
    ld d, b
    ld a, e
    rla
    ld a, [bc]
    ld b, $2f
    ld d, $4e
    inc b
    ld [hl], l
    ld a, e
    ld e, a
    dec c
    ld d, $25
    inc b
    ld l, d
    ld a, e
    ccf
    ld bc, $8601
    ld bc, $45ac
    ld b, [hl]
    add hl, de
    rla
    ld c, [hl]
    rst RST_38
    ccf
    ld [bc], a
    ld bc, $0286
    jr z, jr_006_7b72

    xor h

jr_006_7b72:
    rla
    ld c, [hl]
    rst RST_38
    ld d, $25
    inc b
    ld a, a
    ld a, e
    ld bc, $4682
    add hl, de
    rst RST_38
    ld bc, $ff82
    add hl, de
    dec l
    dec b
    sub d
    ld a, e
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $5f
    inc b
    sub e
    ld a, e
    nop
    ld b, e
    rst RST_38
    ld bc, $ff78
    add hl, de
    dec l
    dec b
    and a
    ld a, e
    ld b, $2e
    ld d, $4f
    inc b
    xor h
    ld a, e
    ld bc, $177a
    ld c, a
    rst RST_38
    ld b, $2d
    ld bc, $ff78
    ld bc, $ff84
    add hl, de
    inc l
    dec b
    or [hl]
    ld a, e
    ld bc, $ff77
    add hl, de
    inc l
    dec b
    ld [hl], $7b
    inc e
    and a
    ld a, e
    inc de
    inc b
    ld [bc], a
    ld [hl], e
    ld d, $16
    inc b
    bit 7, e
    ld bc, $ff89
    ld d, $50
    inc b
    sbc c
    ld [hl], e
    ld bc, $ff8a
    add hl, de
    cpl
    dec b
    ld c, c
    ld a, e
    ld d, $16
    inc b
    pop af
    ld a, e
    rla
    or b
    cpl
    ld a, [hl-]
    ld b, $30
    ld l, b
    ld l, b
    ld [bc], a
    dec h
    ld e, d
    rlca
    ld bc, $5a88
    dec d
    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    jr nc, @+$3c

    ld b, $30
    ld d, $25
    dec b
    rlca
    ld a, h
    ld d, $50
    inc b
    inc b
    ld a, h
    ld bc, $178b
    ld d, b
    rst RST_38
    ld bc, $ff92
    ccf
    ld [bc], a
    ld bc, $0285
    ld e, d
    ld e, d
    dec d
    ld [bc], a
    ld e, e
    ld c, b
    rst RST_38
    add hl, de
    inc e
    dec b
    ld a, [de]
    ld a, h
    ld bc, $ff9e
    add hl, de
    inc e
    dec b
    ld a, [hl]
    ld a, c
    ld d, $27
    inc b
    ld a, [hl+]
    ld a, h
    ld b, $31
    ld bc, $ffa0
    ld b, $32
    ld bc, $ffa9
    rst RST_38
    add hl, de
    ld [hl-], a
    inc b
    add a
    ld [hl], l
    rst RST_38
    ld d, $27
    dec b
    ld d, $73
    add hl, de
    ld [hl-], a
    dec b
    ld b, l
    ld a, h
    ld b, $34
    ld bc, $ffae
    ld b, $32
    ld bc, $ffa9
    add hl, de
    ld [hl-], a
    inc b
    ld b, c
    ld a, e
    rst RST_38
    ld d, $27
    dec b
    ld d, $73
    add hl, de
    ld [hl-], a
    dec b
    ld b, l
    ld a, h
    ld b, $35
    ld bc, $ffba
    add hl, de
    dec [hl]
    dec b
    ld e, d
    ld a, h
    ld b, $36
    ld d, $51
    inc b
    ld [hl], b
    ld a, h
    ld bc, $17bc
    ld d, c
    rst RST_38
    ld bc, $ffc9
    add hl, de
    dec [hl]
    dec b
    ld e, d
    ld a, h
    ld b, $37
    ld d, $52
    inc b
    add h
    ld a, h
    ld bc, $17cb
    ld d, d
    rst RST_38
    ld bc, $ffd7
    add hl, de
    ld [hl], $05
    ld h, h
    ld a, h
    inc e
    ld a, b
    ld a, h
    add hl, de
    dec e
    inc b
    sub a
    ld a, h
    ld bc, $ff21
    ld bc, $ff29
    add hl, de
    dec e
    dec b
    rlca
    ld [hl], a
    ld b, $3b
    ld d, $53
    inc b
    xor e
    ld a, h
    ld bc, $1720
    ld d, e
    rst RST_38
    ld bc, $ff24
    add hl, de
    add hl, sp
    dec b
    or [hl]
    ld a, h
    ld bc, $ff21
    ld bc, $ff29
    add hl, de
    dec a
    dec b
    ld a, d
    ld a, b
    ld b, $39
    ld d, $54
    inc b
    xor e
    ld a, h
    ld bc, $1725
    ld d, h
    rst RST_38
    add hl, de
    add hl, sp
    inc b
    jp nc, $017c

    ld [hl+], a
    rst RST_38
    ld bc, $ff27
    add hl, de
    add hl, sp
    dec b
    cp [hl]
    ld a, h
    inc e
    sbc a
    ld a, h
    add hl, de
    add hl, sp
    inc b
    push hl
    ld a, h
    ld bc, $ff26
    ld bc, $ff27
    add hl, de
    add hl, sp
    dec b
    cp [hl]
    ld a, h
    inc e
    ld l, [hl]
    ld [hl], l
    add hl, de
    ld a, [hl-]
    inc b
    ld hl, sp+$7c
    ld bc, $ff23
    ld bc, $ff26
    add hl, de
    jr c, jr_006_7d02

    ld l, [hl]
    ld [hl], l
    ld e, [hl]
    inc h

jr_006_7d02:
    ld b, $38
    ld d, $55
    inc b
    xor e
    ld a, h
    ld bc, $1720
    ld d, l
    rst RST_38
    ld bc, $ff26
    add hl, de
    add hl, sp
    dec b
    cp [hl]
    ld a, h
    ld b, $3c
    ld d, $56
    inc b
    xor e
    ld a, h
    ld bc, $172b
    ld d, [hl]
    rst RST_38
    ld [bc], a
    ldh a, [c]
    rst RST_38
    inc de
    inc b
    jr c, jr_006_7da6

    ld d, $b4
    dec b
    jr nc, jr_006_7dab

    ld e, a
    dec c
    ld d, $5d
    inc b
    dec a
    ld a, l
    nop
    ld b, a
    rst RST_38
    ld e, $7c
    ld [bc], a
    ld bc, $1aff
    ld e, $7c
    ld [bc], a
    nop
    rla
    or h
    rst RST_38
    rst RST_38
    ld bc, $ffa0
    add hl, de
    ld sp, $5804
    ld a, l
    ld d, $27
    inc b
    ld hl, sp+$72
    ld b, $31
    ld bc, $ffaa
    ld bc, $ffa1
    add hl, de
    ld sp, $9904
    ld [hl], e
    ld d, $27
    inc b
    adc a
    ld [hl], e
    inc e
    ld d, e
    ld a, l
    rst RST_38
    ld d, $27
    inc b
    ld a, b
    ld a, l
    add hl, de
    ld sp, $7504
    ld a, l
    ld b, $31
    ld bc, $ffa0
    ld b, $1c
    ld bc, $ff9f
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

jr_006_7da6:
    nop
    nop
    nop
    nop
    nop

jr_006_7dab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
