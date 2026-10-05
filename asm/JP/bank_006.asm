; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
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
    ld a, $65
    db $eb
    ld l, a
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
    call Call_000_1be4
    cp $ff
    jr nz, jr_006_4045

    call Call_000_1119
    jp Jump_000_078e


jr_006_4045:
    call Call_006_404a
    jr jr_006_4038

Call_006_404a:
    rst RST_00
    ld d, [hl]
    inc e
    ld h, b
    inc e
    ld l, d
    inc e
    ld a, e
    inc e
    ld a, e
    inc e
    add [hl]
    inc e
    dec bc
    jr nz, jr_006_40a4

    rra
    ld e, [hl]
    rra
    ld l, l
    rra
    ld c, d
    rra
    ld e, [hl]
    rra
    ld l, l
    rra
    ret c

    rra
    db $ed
    rra
    db $fc
    rra
    ret c

    rra
    db $ed
    rra
    db $fc
    rra
    ret c

    rra
    db $ed
    rra
    db $fc
    rra
    xor c
    dec e
    pop bc
    dec e
    inc hl
    ld e, $26
    inc hl
    dec sp
    ld [hl+], a
    cp h
    ld [hl+], a
    ld b, $1d
    db $db
    inc hl
    ret nc

    dec hl
    rst RST_10
    dec hl
    db $ec
    ld e, $00
    rra
    ld de, $991f
    rra
    xor [hl]
    rra
    cp l
    rra
    nop
    dec h
    or [hl]
    daa
    ld b, e
    jr z, jr_006_40f4

    inc l
    ld a, $1c
    ld b, d
    dec [hl]
    ld a, b

jr_006_40a4:
    dec [hl]
    add $35
    ld a, [hl]
    ld e, $88
    ld e, $94
    ld e, $30
    add hl, hl
    xor b
    add hl, hl
    ld e, l
    ld [hl+], a
    ld c, $23
    add hl, sp
    inc hl
    ld e, l
    ld [hl+], a
    cp h
    ld [hl+], a
    rst RST_10
    dec hl
    ld b, $2a
    ld d, b
    dec l
    add h
    dec l

jr_006_40c3:
    ld c, c
    ld a, [hl+]
    xor b
    dec l
    call c, $9c2d
    dec hl
    add hl, de
    ld a, [hl+]
    or e
    ld a, [hl+]
    call Call_006_6f27
    dec hl
    xor [hl]
    dec hl
    cp e
    dec hl
    cp c
    cpl
    add [hl]
    dec h
    sub [hl]
    cpl
    jr jr_006_410e

    xor b
    inc l
    cp [hl]
    inc l
    adc $2c
    ldh [c], a
    inc l
    db $10
    ld l, $32
    ld l, $45
    ld l, $81
    ld l, $ae
    ld e, $fb
    ld e, $d7

jr_006_40f4:
    ld [hl], $3e
    cpl
    ccf
    dec l
    ld [hl], h
    dec l
    sbc b
    ld l, $ba
    ld l, $f9
    cpl
    ld hl, sp+$29
    ld b, b
    inc hl
    dec a
    rra
    sbc c
    jr nc, jr_006_412f

    jr nc, @-$61

    inc hl
    db $f4

jr_006_410e:
    inc l
    inc l
    jr nc, jr_006_4151

    jr nc, jr_006_40c3

    inc sp
    cp [hl]
    inc e
    rst RST_28
    inc e
    and a
    jr nc, jr_006_415b

    inc e
    rst RST_00
    ld hl, $2b8b
    ld l, l
    inc hl
    sub c
    daa
    dec d
    ld b, d
    dec e
    ld b, d
    dec h
    ld b, d
    dec l
    ld b, d
    dec [hl]
    ld b, d

jr_006_412f:
    dec a
    ld b, d
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

jr_006_4151:
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
    jp c, Jump_000_1748

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
    nop

Call_006_4b61:
Jump_006_4b61:
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
    call z, Call_000_1e4b
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
    ld c, [hl]
    ld e, l
    add c
    ld d, h
    add hl, hl
    ld e, b
    ld d, h
    ld e, l
    add l
    ld e, l
    sub b
    ld d, h
    add hl, hl
    ld e, b
    ld e, b
    ld d, e
    adc b
    ld e, l
    sbc a
    ld d, h
    add hl, hl
    ld e, b
    rst RST_08
    ld d, c
    adc e

Call_006_4e45:
    ld e, l
    xor [hl]
    ld d, h
    db $d3
    ld d, a
    ei
    ld d, c
    adc [hl]
    ld e, l
    cp l
    ld d, h
    db $d3
    ld d, a
    cp c
    ld e, d
    sbc c
    ld e, l
    call z, $d354
    ld d, a
    ld c, [hl]
    ld e, [hl]
    ld c, d
    ld e, a
    ld c, a
    ld e, c
    push hl
    ld d, a
    ld c, h
    ld d, d
    ld c, l
    ld e, a
    ld d, b
    ld d, l
    ld c, l
    ld e, a
    ld c, a
    ld e, c
    ld c, [hl]
    ld e, a
    cp l
    ld e, a
    db $d3
    ld d, a
    ld [$d15f], a
    ld h, d
    ld d, c
    ld d, l
    db $d3
    ld d, a
    adc h
    ld d, d
    call nc, Call_006_6062
    ld d, l
    db $d3
    ld d, a
    rst RST_10
    ld h, d
    db $ec
    ld h, d
    ld l, a
    ld d, l
    db $d3
    ld d, a
    inc bc
    ld e, e
    ldh a, [c]
    ld h, d
    ld a, [hl]
    ld d, l
    ld a, [hl-]
    ld e, b
    ld c, a
    ld e, c
    rst RST_28
    ld h, d
    adc a
    ld d, l
    db $d3
    ld d, a
    ei
    ld d, d
    rlca
    ld h, e
    and b
    ld d, l
    ld d, d
    ld e, b
    ld c, a
    ld e, c
    ld hl, $af63
    ld d, l
    ld l, b
    ld e, b
    ld c, a
    ld e, c
    dec l
    ld h, e
    cp [hl]
    ld d, l
    ld a, [hl]
    ld e, b
    ld c, a
    ld e, c
    ld d, e
    ld h, e
    call $2955
    ld e, b
    ld c, a
    ld e, c
    ld d, [hl]
    ld h, e
    call c, $2955
    ld e, b
    ld e, b
    ld d, e
    ld e, c
    ld h, e
    db $eb
    ld d, l
    db $d3
    ld d, a
    ld c, [hl]
    ld e, e
    ld e, h
    ld h, e
    ld a, [$2955]
    ld e, b
    ld c, a
    ld e, c
    ld e, a
    ld h, e
    dec bc
    ld d, [hl]
    add hl, hl
    ld e, b
    ld c, a
    ld e, c
    ld h, d
    ld h, e
    ld a, [de]
    ld d, [hl]
    add hl, hl
    ld e, b
    ld c, a
    ld e, c
    ld h, l
    ld h, e
    add hl, hl
    ld d, [hl]
    add hl, hl
    ld e, b
    ld c, a
    ld e, c
    ld l, b
    ld h, e
    jr c, jr_006_4f46

    db $d3
    ld d, a
    ld c, a
    ld e, c
    ld a, d
    ld h, e
    ld b, a
    ld d, [hl]
    dec bc
    ld e, b
    ld c, a
    ld e, c
    add c
    ld h, e
    ld d, [hl]
    ld d, [hl]
    add hl, hl
    ld e, b
    ld c, a
    ld e, c
    add h
    ld h, e
    ld h, l
    ld d, [hl]
    add hl, hl
    ld e, b
    ld c, a
    ld e, c
    add a
    ld h, e
    ld [hl], h
    ld d, [hl]
    db $d3
    ld d, a
    ld c, a
    ld e, c
    adc d
    ld h, e
    add l
    ld d, [hl]
    add hl, hl
    ld e, b
    rst RST_10
    ld e, e
    adc l
    ld h, e
    sub h
    ld d, [hl]
    add hl, hl
    ld e, b
    add b
    ld d, e
    sub b
    ld h, e
    and e
    ld d, [hl]
    add hl, hl
    ld e, b
    ld e, b
    ld d, e
    sub e
    ld h, e
    or d
    ld d, [hl]
    db $d3
    ld d, a
    ld c, a
    ld e, c
    sub [hl]
    ld h, e
    jp Jump_000_2956


    ld e, b
    ld b, $5c
    sbc c
    ld h, e
    jp nc, $d356

    ld d, a
    ld c, a
    ld e, c
    xor b
    ld h, e

jr_006_4f46:
    pop hl
    ld d, [hl]
    add hl, hl
    ld e, b
    xor e
    ld h, e
    jp $f063


    ld d, [hl]
    add hl, hl
    ld e, b
    scf
    ld e, h
    add $63
    rst RST_38
    ld d, [hl]
    add hl, hl
    ld e, b
    ld h, [hl]
    ld e, h
    pop de
    ld h, e
    ld d, d
    ld e, c
    inc hl
    ld e, b
    ld c, a
    ld e, c
    sbc $63
    ld c, $57
    db $d3
    ld d, a
    sbc a
    ld e, h
    db $eb
    ld h, e
    ld d, d
    ld e, c
    inc hl
    ld e, b
    ld c, a
    ld e, c
    ld hl, sp+$63
    inc bc
    ld h, h
    add hl, hl
    ld e, b
    ld c, a
    ld e, c
    dec h
    ld h, h
    dec e
    ld d, a
    add hl, hl
    ld e, b
    ld e, b
    ld d, e
    jr z, jr_006_4fea

    ld c, a
    ld e, c
    ld hl, sp+$57
    ld sp, hl
    ld e, h
    dec hl
    ld h, h
    ld l, $57
    add hl, hl
    ld e, b
    ld c, a
    ld e, c
    ld l, $64
    dec a
    ld d, a
    sub [hl]
    ld e, b
    ld c, a
    ld e, c
    ld c, b
    ld h, h
    ld c, h
    ld d, a
    add hl, hl
    ld e, b
    ld e, b
    ld d, e
    ld c, e
    ld h, h
    ld e, e
    ld d, a
    db $d3
    ld d, a
    ld c, [hl]
    ld h, h
    ld a, c
    ld h, h
    ld l, d
    ld d, a
    db $d3
    ld d, a
    ld a, h
    ld h, h
    dec de
    ld h, l
    inc c
    ld h, l
    db $d3
    ld d, a
    xor a
    ld d, e
    cpl
    ld h, l
    ld a, c
    ld d, a
    db $d3
    ld d, a
    ld sp, $345d
    ld h, l
    jr nz, jr_006_502d

    db $d3
    ld d, a
    jp hl


    ld d, e
    add hl, sp
    ld h, l
    adc b
    ld d, a
    db $d3
    ld d, a
    dec d
    ld e, l
    sub e
    ld h, h
    sub a
    ld d, a
    add hl, hl
    ld e, b
    ld b, b
    ld d, h
    sub [hl]
    ld h, h
    and [hl]
    ld d, a
    add hl, hl
    ld e, b
    ld c, a
    ld e, c
    sbc c
    ld h, h
    or l
    ld d, a
    add hl, hl
    ld e, b

jr_006_4fea:
    ld c, a
    ld e, c
    sbc [hl]
    ld h, h
    call nz, Call_000_2957
    ld e, b
    ld c, a
    ld e, c
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, d
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    or [hl]
    ld e, d
    ld c, d
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    or [hl]
    ld e, d
    ld c, d
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    or [hl]
    ld e, d
    ld c, d
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    or [hl]
    ld e, d
    ld c, d
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    or [hl]
    ld e, d
    ld c, d

jr_006_502d:
    ld e, a
    db $ec
    ld d, h
    push hl
    ld d, a
    or [hl]
    ld e, d
    ld c, d
    ld e, a
    ld c, a
    ld e, c
    push hl
    ld d, a
    or [hl]
    ld e, d
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, d
    ld e, a
    inc [hl]
    ld d, l
    push hl
    ld d, a
    or [hl]
    ld e, d
    jr z, jr_006_50d2

    ld de, $f855
    ld d, a
    or [hl]
    ld e, d
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    ld c, l
    ld e, a
    jr z, jr_006_50fa

    ld de, $f855
    ld d, a
    or [hl]
    ld e, d
    jr z, jr_006_5102

    ld de, $f855
    ld d, a
    or [hl]
    ld e, d
    jr z, jr_006_510a

    ld de, $f855
    ld d, a
    or [hl]
    ld e, d
    jr z, @+$66

    ld de, $f855
    ld d, a
    or [hl]
    ld e, d
    jr z, jr_006_511a

    ld de, $f855
    ld d, a
    or [hl]
    ld e, d
    sbc c
    ld e, l
    db $db
    ld d, h
    db $d3
    ld d, a
    sbc h
    ld e, l
    and c
    ld h, h
    and [hl]
    ld h, h
    db $d3
    ld d, a
    or l
    ld h, h
    and c
    ld h, h
    and [hl]
    ld h, h
    db $d3
    ld d, a

jr_006_50d2:
    jp nc, $a164

    ld h, h
    and [hl]
    ld h, h
    db $d3
    ld d, a
    rst RST_28
    ld h, h
    sbc $63
    ld c, $57
    db $d3
    ld d, a
    cp h
    ld e, h
    sbc $63
    ld c, $57
    db $d3
    ld d, a
    reti


    ld e, h
    dec de
    ld h, l
    inc c
    ld h, l
    db $d3
    ld d, a
    call z, $3453
    ld h, l
    jr nz, jr_006_515d

    db $d3
    ld d, a

jr_006_50fa:
    ld b, $54
    inc [hl]
    ld h, l
    jr nz, jr_006_5165

    db $d3
    ld d, a

jr_006_5102:
    inc hl
    ld d, h
    nop
    rlca
    rst RST_38
    rlca
    inc b
    ld [de], a

jr_006_510a:
    ld e, l
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
    or [hl]
    ld e, d

jr_006_511a:
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
    add h
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
    ld a, $5f
    cp $fe
    ld c, a

jr_006_515d:
    ld e, c
    ld b, b
    inc b
    ld h, e
    ld d, c
    rst RST_38
    ld b, [hl]
    nop

jr_006_5165:
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $75
    ld h, b
    nop
    ld [hl], l
    ld [hl], l
    ld h, b
    nop
    halt
    ld [hl], l
    ld h, b
    nop
    ld [hl], a
    ld [hl], l
    ld h, b
    nop
    cpl
    sub c
    ld h, b
    nop
    inc [hl]
    ld b, $5f
    nop
    ld e, a
    ld a, $5f
    nop
    ld [hl], e
    ld h, e
    ld e, h
    cp $fe
    ld c, a
    ld e, c
    rlca
    dec b
    or [hl]
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
    ld c, a
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
    or [hl]
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
    ld c, a
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
    or [hl]
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
    cp $4f
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
    or [hl]
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
    ld c, a
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $75
    ld h, b
    nop
    ld [hl], l
    ld [hl], l
    ld h, b
    nop
    halt
    ld [hl], l
    ld h, b
    nop
    ld [hl], a
    ld [hl], l
    ld h, b
    nop
    cpl
    sub c
    ld h, b
    nop
    inc [hl]
    ld b, $5f
    nop
    ld e, a
    ld a, $5f
    cp $fe
    ld c, a
    ld e, c
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $75
    ld h, b
    nop
    ld [hl], l
    ld [hl], l
    ld h, b
    nop
    halt
    ld [hl], l
    ld h, b
    nop
    ld [hl], a
    ld [hl], l
    ld h, b
    nop
    cpl
    sub c
    ld h, b
    nop
    inc [hl]
    ld b, $5f
    nop
    ld e, a
    ld a, $5f
    nop
    ld [hl], e
    xor h
    ld d, e
    cp $fe
    ld c, a
    ld e, c
    ld bc, $ffb1
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    ret nz

    ld d, e
    cp $fe
    ld c, a
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
    ld e, $b6
    ld [bc], a
    ld b, $21
    ld d, l
    inc sp
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    db $dd
    ld d, e
    cp $fe
    ld c, a
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
    ld e, $b6
    ld [bc], a
    ld b, $21
    ld d, l
    ld e, d
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    ld a, [$fe53]
    cp $4f
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
    ld e, $b8
    ld [bc], a
    ld b, $21
    ld d, l
    dec [hl]
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    rla
    ld d, h
    cp $fe
    ld c, a
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
    ld e, $b8
    ld [bc], a
    ld b, $21
    ld d, l
    ld e, e
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    inc [hl]
    ld d, h
    cp $fe
    ld c, a
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
    ld e, $b8
    ld [bc], a
    ld b, $21
    ld d, l
    ld e, h
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $75
    ld h, b
    nop
    ld [hl], l
    ld [hl], l
    ld h, b
    nop
    halt
    ld [hl], l
    ld h, b
    nop
    ld [hl], a
    ld [hl], l
    ld h, b
    nop
    cpl
    sub c
    ld h, b
    nop
    inc [hl]
    ld b, $5f
    nop
    ld e, a
    ld a, $5f
    nop
    ld [hl], e
    ld l, h
    ld d, h
    cp $fe
    ld c, a
    ld e, c
    ld [bc], a
    reti


    rst RST_38
    nop
    ld b, $ff
    rlca
    inc b
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    cp e
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
    cp e
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
    ld d, $a6
    dec b
    cp e
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld [bc], a
    inc l

jr_006_58b7:
    ld e, c
    inc bc
    inc bc
    ld b, d
    ld e, c
    inc bc
    ld c, $58
    ld e, c
    inc bc
    db $10
    ld l, h
    ld e, c
    inc bc
    ld de, $597e
    inc bc
    ld [de], a
    sub b
    ld e, c
    inc bc
    inc de
    and h

jr_006_58cf:
    ld e, c
    inc bc
    ld d, $b1
    ld e, c
    inc bc
    rla
    cp [hl]
    ld e, c
    inc bc
    jr @-$33

    ld e, c
    inc bc
    add hl, de
    ret c

    ld e, c
    inc bc
    ld a, [de]
    push hl
    ld e, c
    inc bc
    dec de
    ldh a, [c]
    ld e, c
    inc bc
    inc e
    ld b, $5a
    inc bc
    dec e
    inc de
    ld e, d
    inc bc
    ld e, $55
    ld e, c
    inc bc
    ld hl, $5a20
    inc bc
    ld [hl+], a
    dec l
    ld e, d
    inc bc
    inc h
    ld d, l
    ld e, c
    inc bc
    dec hl
    ld a, [hl-]
    ld e, d
    inc bc
    inc l
    ld b, a
    ld e, d
    inc bc
    ld l, $54
    ld e, d
    inc bc
    cpl
    ld h, c
    ld e, d
    inc bc
    ld sp, $5955
    inc bc
    ld [hl-], a
    ld [hl], e
    ld e, d
    inc b
    dec b
    add b
    ld e, d
    inc b
    ld [$5955], sp
    inc b
    ld a, [bc]
    sub d
    ld e, d
    inc b
    dec c
    and h
    ld e, d
    cp $fe
    ld c, a
    ld e, c
    ld d, d
    ld [bc], a
    dec b
    ccf
    ld e, c
    ccf
    ld bc, $1500
    ld d, $25
    inc b
    dec a
    ld e, c
    ld [bc], a
    ld c, e
    rst RST_38
    ld b, l
    rst RST_38
    ld [bc], a
    ld a, [hl+]
    rst RST_38
    ld d, d
    inc bc
    dec b
    ccf
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
    ccf
    ld e, c
    ld d, $a7
    dec b
    cp e
    ld h, c
    ld d, e
    ld c, $1e
    ld c, $02
    db $10
    ld c, c
    rla
    and h
    rst RST_38
    ld d, d
    db $10
    dec b
    ccf
    ld e, c
    ld d, $7d
    dec b
    cp e
    ld h, c
    ld d, e
    db $10
    ld e, $10
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    ld de, $3f05
    ld e, c
    ld d, $7b
    dec b
    cp e
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
    ccf
    ld e, c
    ld d, $a6
    dec b
    cp e
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
    ccf
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
    ccf
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
    ccf
    ld e, c
    ld d, e
    rla
    ld e, $17
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    jr jr_006_59d3

    ccf
    ld e, c
    ld d, e
    jr jr_006_59f1

jr_006_59d3:
    jr jr_006_59d7

    db $10
    ld c, c

jr_006_59d7:
    rst RST_38
    ld d, d
    add hl, de
    dec b
    ccf
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
    ccf
    ld e, c
    ld d, e
    ld a, [de]
    ld e, $1a
    ld [bc], a
    db $10
    ld c, c

jr_006_59f1:
    rst RST_38
    ld d, d
    dec de
    dec b
    ccf
    ld e, c
    ld d, $a5
    dec b
    cp e
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
    ccf
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
    ccf
    ld e, c
    ld d, e
    dec e
    ld e, $1d
    ld [bc], a
    db $10
    ld c, c
    rst RST_38
    ld d, d
    ld hl, $3f05
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
    ccf
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
    ccf
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
    ccf
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
    ccf
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
    ccf
    ld e, c
    ld d, $7c
    dec b
    cp e
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
    ccf
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
    ccf
    ld e, c
    ld d, $7d
    dec b
    cp e
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
    ccf
    ld e, c
    ld d, $97
    dec b
    cp e
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
    ccf
    ld e, c
    ld d, $98
    dec b
    cp e
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld c, e
    call Call_000_005a
    ld c, h
    ldh [c], a
    ld e, d
    cp $fe
    ld c, a
    ld e, c
    ld l, $2f
    inc b
    db $db
    ld e, d
    ld bc, $334e
    cpl
    rla
    ld e, c
    rla
    xor h
    rst RST_38
    ld bc, $344f
    cpl
    jr jr_006_5b3a

    rst RST_38
    add hl, de
    add hl, hl
    inc b
    db $f4
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

Jump_006_5aff:
    ld b, c
    inc sp
    jr nc, @+$01

    rlca
    dec b
    or [hl]
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
    ld b, $37
    ld e, e
    dec b
    inc d

jr_006_5b21:
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
    jr c, jr_006_5b61

    ld d, d
    cp $fe
    ld c, a
    ld e, c
    ld d, $5a
    inc b

jr_006_5b3a:
    ld b, e
    ld e, e
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
    or [hl]
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

jr_006_5b61:
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
    ld [hl], $86
    ld e, e
    dec b
    jr c, jr_006_5b21

    ld e, e
    nop
    ld l, e
    and c
    ld e, e
    cp $fe
    ld c, a
    ld e, c
    ld d, $5f
    inc b
    sub [hl]
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
    jr c, jr_006_5bbb

    ld e, [hl]
    inc b
    call z, Call_000_1e5b
    or b
    rra
    cp e
    ld [bc], a
    sub c
    inc sp
    jr c, jr_006_5bc9

    ld e, [hl]
    ld d, $16
    inc b
    bit 3, e
    rla
    or b
    cpl

jr_006_5bbb:
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

jr_006_5bc9:
    ld h, d
    ld c, b
    rst RST_38
    ld e, $b0
    rra
    cp h
    ld [bc], a
    ld [de], a
    inc [hl]
    jr c, jr_006_5bed

    ld e, [hl]
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $75
    ld h, b
    nop
    ld [hl], l
    ld [hl], l
    ld h, b
    nop
    halt
    ld [hl], l
    ld h, b
    nop
    ld [hl], a

jr_006_5bed:
    ld [hl], l
    ld h, b
    nop
    cpl
    sub c
    ld h, b
    nop
    inc [hl]
    ld b, $5f
    nop
    ld e, a
    ld a, $5f
    nop
    ld [hl], e
    inc bc
    ld e, h
    cp $fe
    ld c, a
    ld e, c
    ld bc, $ffb0
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $75
    ld h, b
    nop
    ld [hl], l
    ld [hl], l
    ld h, b
    nop
    halt
    ld [hl], l
    ld h, b
    nop
    ld [hl], a
    ld [hl], l
    ld h, b
    nop
    cpl
    sub c
    ld h, b
    nop
    inc [hl]
    ld b, $5f
    nop
    ld e, a
    ld a, $5f
    nop
    ld [hl], e
    ld [hl-], a
    ld e, h
    cp $fe
    ld c, a
    ld e, c
    ld [bc], a
    ld d, e
    ld d, l
    inc hl
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $75
    ld h, b
    nop
    ld [hl], l
    ld [hl], l
    ld h, b
    nop
    halt
    ld [hl], l
    ld h, b
    nop
    ld [hl], a
    ld [hl], l
    ld h, b
    nop
    cpl
    sub c
    ld h, b
    nop
    inc [hl]
    ld b, $5f
    nop
    ld e, a
    ld a, $5f
    nop
    ld [hl], e
    ld h, e
    ld e, h
    cp $fe
    ld c, a
    ld e, c
    nop
    inc c
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $75
    ld h, b
    nop
    ld [hl], l
    ld [hl], l
    ld h, b
    nop
    halt
    ld [hl], l
    ld h, b
    nop
    ld [hl], a
    ld [hl], l
    ld h, b
    nop
    cpl
    sub c
    ld h, b
    nop
    inc [hl]
    ld b, $5f
    nop
    ld e, a
    ld a, $5f
    nop
    ld [hl], e
    sub d
    ld e, h
    cp $fe
    ld c, a
    ld e, c
    ld d, $b6
    inc b
    sbc h
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    or b
    ld e, h
    cp $fe
    ld c, a
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
    ld e, $b4
    ld [bc], a
    ld b, $21
    ld d, l
    add hl, hl
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    call $fe5c
    cp $4f
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
    ld e, $b4
    ld [bc], a
    ld b, $21
    ld d, l
    ld e, b
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    ld [$fe5c], a
    cp $4f
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
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
    or [hl]
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
    ld c, a
    ld e, c
    nop
    inc de
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    dec h
    ld e, l
    cp $fe
    ld c, a
    ld e, c
    ld c, h
    dec b
    or $5c
    ld e, $b9
    ld [bc], a
    ld b, $21
    ld d, l
    ld [hl], $ff
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    ld b, d
    ld e, l
    cp $fe
    ld c, a
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    ld l, $75
    ld h, b
    nop
    ld [hl], l
    ld [hl], l
    ld h, b
    nop
    halt
    ld [hl], l
    ld h, b
    nop
    ld [hl], a
    ld [hl], l
    ld h, b
    nop
    cpl
    sub c
    ld h, b
    nop
    inc [hl]
    ld b, $5f
    nop
    ld e, a
    ld a, $5f
    nop
    ld [hl], e
    add b
    ld e, l
    cp $fe
    ld c, a
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
    sub [hl]
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    dec hl
    ld [hl], b
    ld d, c
    nop
    ld l, $e0
    ld e, l
    nop
    ld [hl], l
    ldh [$ff5d], a
    nop
    halt
    ldh [$ff5d], a
    nop
    ld [hl], a
    ldh [$ff5d], a
    nop
    cpl
    dec sp
    ld e, [hl]
    nop
    inc [hl]
    ld b, $5f
    nop
    ld [hl], $10
    ld e, a
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
    inc de
    ld e, a
    nop
    ld b, [hl]
    sub a
    ld d, c
    nop
    ld c, b
    ld [hl], $5f
    nop
    ld e, a
    ld a, $5f
    cp $fe
    ld c, a
    ld e, c
    ld d, $07
    inc b
    jr z, jr_006_5e43

    ld d, $06
    inc b
    dec d
    ld e, [hl]
    ld d, $05
    inc b
    ld [bc], a
    ld e, [hl]
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

jr_006_5e43:
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    dec hl
    ld [hl], b
    ld d, c
    nop
    ld l, $92
    ld e, [hl]
    nop
    ld [hl], l
    sub d
    ld e, [hl]
    nop
    halt
    sub d
    ld e, [hl]
    nop
    ld [hl], a
    sub d
    ld e, [hl]
    nop
    cpl
    ei
    ld e, [hl]
    nop
    inc [hl]
    ld b, $5f
    nop
    ld [hl], $10
    ld e, a
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
    inc de
    ld e, a
    nop
    ld b, [hl]
    sub a
    ld d, c
    nop
    ld c, b
    ld [hl], $5f
    nop
    ld e, a
    ld a, $5f
    cp $fe
    ld c, a
    ld e, c
    ld d, $07
    inc b
    rst RST_18
    ld e, [hl]
    ld d, $06
    inc b
    call z, $165e
    dec b
    inc b
    or h
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

jr_006_5eb2:
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
    ldh a, [c]
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

jr_006_5edc:
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
    ld b, d
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
    dec de
    ld e, a
    ld [bc], a
    ld l, e
    rst RST_38
    ld c, d
    nop
    inc b
    dec l
    ld e, a
    ld c, d
    ld bc, $2d04
    ld e, a
    ld c, d
    ld [bc], a
    inc b
    dec l
    ld e, a
    nop
    jr @+$01

    nop
    ld a, [bc]
    jr jr_006_5eb2

    jr jr_006_5edc

    rla
    add d
    rst RST_38
    ld d, $a9
    inc b
    dec de
    ld e, a
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
    sbc h
    ld e, a
    ld c, e
    inc sp
    inc b
    and c
    ld e, a
    ld c, e
    inc [hl]
    inc b
    and [hl]
    ld e, a
    ld c, e
    dec [hl]
    inc b
    xor e
    ld e, a
    ld c, e
    ld [hl], $04
    or b
    ld e, a
    ld c, e
    ld d, l
    inc b
    or l
    ld e, a
    ld c, e
    ld d, [hl]
    inc b
    or l
    ld e, a
    ld c, e
    ld d, a
    inc b
    or l
    ld e, a
    ld c, e
    ld e, b
    inc b
    sbc h
    ld e, a
    ld c, e
    ld e, c
    inc b
    sbc h
    ld e, a
    ld c, e
    ld e, d
    inc b
    and c
    ld e, a
    ld c, e
    ld e, e
    inc b
    xor e
    ld e, a
    ld c, e
    ld e, h
    inc b
    xor e
    ld e, a
    ld d, $7e
    inc b
    cp d
    ld e, a
    ld d, $26
    inc b
    cp d
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
    call c, Call_000_165f
    inc h
    inc b
    pop de
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
    rst RST_20
    ld e, a
    ld [bc], a
    ld [hl+], a
    rst RST_38
    ld [bc], a
    inc hl
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    dec hl
    ld [hl], d
    ld h, b
    nop
    ld l, $75
    ld h, b
    nop
    ld [hl], l
    ld [hl], l
    ld h, b
    nop
    halt
    ld [hl], l
    ld h, b
    nop
    ld [hl], a
    ld [hl], l
    ld h, b
    nop
    cpl
    sub c
    ld h, b
    nop
    inc [hl]
    ld b, $5f
    nop
    dec [hl]
    sbc l
    ld h, b
    nop
    ld [hl], $6b
    ld h, c
    nop
    ccf
    inc c
    ld h, c
    nop
    ld b, b
    ld [hl], d
    ld h, b
    nop
    ld b, d
    ld l, [hl]
    ld h, c
    nop
    ld b, [hl]
    ld l, [hl]
    ld h, c
    nop
    ld e, a
    ld a, $5f
    nop
    ld h, h
    ld [hl], c
    ld h, c
    nop
    ld l, b
    rst RST_20
    ld h, c
    nop
    ld [hl], e
    inc a
    ld h, d
    inc bc
    jr z, jr_006_6088

    ld e, c
    inc bc
    add hl, hl
    ld c, a
    ld e, c
    inc bc
    ld a, [hl+]
    ld c, a
    ld e, c
    inc bc
    inc sp
    ld c, a
    ld e, c
    inc bc
    inc [hl]
    ld c, a
    ld e, c
    inc bc
    dec [hl]
    ld c, a
    ld e, c
    inc bc
    ld d, l
    ld c, a
    ld e, c
    inc bc
    ld d, [hl]
    ld c, a
    ld e, c
    inc bc
    ld d, a
    ld c, a
    ld e, c
    inc bc
    ld e, b
    ld c, a
    ld e, c
    inc bc
    ld e, c
    ld c, a
    ld e, c

Call_006_6062:
    inc bc
    ld e, d
    ld c, a
    ld e, c
    inc bc
    ld e, e
    ld c, a
    ld e, c
    inc bc
    ld e, h
    ld c, a
    ld e, c
    cp $fe
    ld c, a
    ld e, c
    ld [bc], a
    jp z, Jump_006_5aff

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

jr_006_6088:
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
    pop hl
    ld h, b
    ld c, e
    inc sp
    inc b
    db $eb
    ld h, b
    ld c, e
    inc [hl]
    inc b
    push af
    ld h, b
    ld c, e
    dec [hl]
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld [hl], $04
    ld [bc], a
    ld h, c
    ld c, e
    ld d, l
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld d, [hl]
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld d, a
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld e, b
    inc b
    pop hl
    ld h, b
    ld c, e
    ld e, c
    inc b
    pop hl
    ld h, b
    ld c, e
    ld e, d
    inc b
    db $eb
    ld h, b
    ld c, e
    ld e, e
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld e, h
    inc b
    rst RST_38
    ld h, b
    ld [bc], a
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
    ld d, b
    ld h, c
    ld c, e
    inc sp
    inc b
    db $eb
    ld h, b
    ld c, e
    inc [hl]
    inc b
    push af
    ld h, b
    ld c, e
    dec [hl]
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld [hl], $04
    ld [bc], a
    ld h, c
    ld c, e
    ld d, l
    inc b
    ld d, [hl]
    ld h, c
    ld c, e
    ld d, [hl]
    inc b
    ld d, [hl]
    ld h, c
    ld c, e
    ld d, a
    inc b
    ld d, [hl]
    ld h, c
    ld c, e
    ld e, b
    inc b
    ld d, b
    ld h, c
    ld c, e
    ld e, c
    inc b
    ld d, b
    ld h, c
    ld c, e
    ld e, d
    inc b
    db $eb
    ld h, b
    ld c, e
    ld e, e
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld e, h
    inc b
    rst RST_38
    ld h, b
    ld [bc], a
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
    ld l, b
    ld h, c
    ld d, $85
    inc b
    rst RST_38
    ld h, b
    ld [bc], a
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
    or l
    ld h, c
    ld c, e
    inc sp
    inc b
    cp [hl]
    ld h, c
    ld c, e
    inc [hl]
    inc b
    ret z

    ld h, c
    ld c, e
    dec [hl]
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld [hl], $04
    jp nc, Jump_006_4b61

    ld d, l
    inc b
    call c, Call_006_4b61
    ld d, [hl]
    inc b
    call c, Call_006_4b61
    ld d, a
    inc b
    call c, Call_006_4b61
    ld e, b
    inc b
    or l
    ld h, c
    ld c, e
    ld e, c
    inc b
    or l
    ld h, c
    ld c, e
    ld e, d
    inc b
    cp [hl]
    ld h, c
    ld c, e
    ld e, e
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld e, h
    inc b
    rst RST_38
    ld h, b
    ld [bc], a
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
    rst RST_38
    ld h, b
    ld bc, $4dc6
    rla
    adc c
    rst RST_38
    ld c, e
    add hl, hl
    inc b
    dec hl
    ld h, d
    ld c, e
    inc sp
    inc b
    cp [hl]
    ld h, c
    ld c, e
    inc [hl]
    inc b
    ret z

    ld h, c
    ld c, e
    dec [hl]
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld [hl], $04
    jp nc, Jump_006_4b61

    ld d, l
    inc b
    ld sp, $4b62
    ld d, [hl]
    inc b
    ld sp, $4b62
    ld d, a
    inc b
    ld sp, $4b62
    ld e, b
    inc b
    dec hl
    ld h, d
    ld c, e
    ld e, c
    inc b
    dec hl
    ld h, d
    ld c, e
    ld e, d
    inc b
    cp [hl]
    ld h, c
    ld c, e
    ld e, e
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld e, h
    inc b
    rst RST_38
    ld h, b
    ld [bc], a
    ld a, e
    rst RST_38
    ld bc, $4dda
    rla
    adc d
    rst RST_38
    ld d, $8b
    inc b
    rst RST_38
    ld h, b
    ld bc, $4dd6
    rla
    adc e
    rst RST_38
    ld c, e
    add hl, hl
    inc b
    add b
    ld h, d
    ld c, e
    inc sp
    inc b
    adc c
    ld h, d
    ld c, e
    inc [hl]
    inc b
    sub e
    ld h, d
    ld c, e
    dec [hl]
    inc b
    and a
    ld h, d
    ld c, e
    ld [hl], $04
    sbc l
    ld h, d
    ld c, e
    ld d, l
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld d, [hl]
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld d, a
    inc b
    rst RST_38
    ld h, b
    ld c, e
    ld e, b
    inc b
    add b
    ld h, d
    ld c, e
    ld e, c
    inc b
    add b
    ld h, d
    ld c, e
    ld e, d
    inc b
    adc c
    ld h, d
    ld c, e
    ld e, e
    inc b
    and a
    ld h, d
    ld c, e
    ld e, h
    inc b
    and a
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
    cp l
    ld h, d
    ld d, $2c
    dec b
    rst RST_00
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    inc h
    rst RST_20
    ld h, d
    cp $fe
    ld c, a
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
    nop
    ld h, e
    ccf
    ld bc, $8d02
    ld bc, $ffdf
    ccf
    ld bc, $8d02
    ld bc, $ffde
    ld d, $25
    inc b
    ld e, $63
    ccf
    ld bc, $9e02
    ld d, $7d
    dec b
    rla
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
    inc l
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
    ld c, c
    ld h, e
    ld d, $25
    inc b
    ld d, b
    ld h, e
    ccf
    ld bc, $0b01
    ld bc, $163f
    ld a, d
    inc b
    ld c, b
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
    ld [hl], a
    ld h, e
    ld d, $26
    inc b
    ld [hl], a
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
    and c
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    inc h
    cp e
    ld h, e
    cp $fe
    ld c, a
    ld e, c
    ld d, $78
    inc b
    ld c, a
    ld e, c
    ld bc, $ffd3
    ld bc, $ffd0
    ld d, $b6
    inc b
    adc $63
    nop
    ld b, b
    rst RST_38
    nop
    dec b
    rst RST_38
    ld d, $26
    inc b
    reti


    ld h, e
    nop
    ld [hl], l
    rst RST_38
    ld e, $b3
    ld [bc], a
    rlca
    rst RST_38
    ld d, $26
    inc b
    and $63
    nop
    halt
    rst RST_38
    ld e, $b4
    ld [bc], a
    ld [$16ff], sp
    ld h, $04
    di
    ld h, e
    nop
    ld [hl], a
    rst RST_38
    ld e, $2a
    ld [bc], a
    rlca
    rst RST_38
    ld d, $28
    inc b
    nop
    ld h, h
    ld [bc], a
    cp [hl]
    rst RST_38
    ld [bc], a
    cp a
    rst RST_38
    rlca
    inc b
    ld [de], a
    ld e, l
    ld d, $28
    inc b
    ld e, $64
    ld b, b
    dec b
    dec e
    ld h, h
    ccf
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
    dec sp
    ld h, h
    ld bc, $165c
    ld a, h
    dec b
    ld b, e
    ld h, h
    rst RST_38
    ld [bc], a
    ld b, h
    ld d, $7c
    dec b
    ld b, e
    ld h, h
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    inc h
    ld h, d
    ld h, h
    ld bc, $6502
    ld h, h
    cp $fe
    ld c, a
    ld e, c
    ld [bc], a
    ld h, c
    rst RST_38
    ld h, b
    dec c
    inc b
    ld [hl], h
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    nop
    inc h
    ld h, d
    ld h, h
    ld bc, $9002
    ld h, h
    cp $fe
    ld c, a
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
    ld [de], a
    ld e, l
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
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    add $64
    cp $fe
    ld c, a
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
    ld e, $b3
    ld [bc], a
    ld b, $21
    ld d, l
    ld d, l
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    db $e3
    ld h, h
    cp $fe
    ld c, a
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
    ld e, $b3
    ld [bc], a
    ld b, $21
    ld d, l
    ld d, [hl]
    rst RST_38
    rlca
    dec b
    or [hl]
    ld e, d
    ld bc, $28b9
    add hl, hl
    inc bc
    ld a, [bc]
    nop
    ld h, l
    cp $fe
    ld c, a
    ld e, c
    ld h, b
    ld c, h
    dec b
    or $5c
    ld e, $b3
    ld [bc], a
    ld b, $21
    ld d, l
    ld d, a
    rst RST_38
    rlca
    inc b
    ld [de], a
    ld e, l
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
    ld [de], a
    ld e, l
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
    ld [$62ff], sp
    ld h, l
    ld l, [hl]
    ld h, l
    ld a, d
    ld h, l
    add [hl]
    ld h, l
    sub d
    ld h, l
    sbc [hl]
    ld h, l
    xor d
    ld h, l
    or [hl]
    ld h, l
    jp nz, $ce65

    ld h, l
    jp c, $e665

    ld h, l
    ldh a, [c]
    ld h, l
    cp $65
    ld a, [bc]
    ld h, [hl]
    ld d, $66
    ld [hl+], a
    ld h, [hl]
    ld l, $66
    ld a, [hl-]
    ld h, [hl]
    ld c, b
    ld h, [hl]
    ld a, [hl]
    ld h, a
    sbc [hl]
    ld l, b
    cp a
    ld l, b
    add hl, bc
    ld l, c
    rrca
    ld l, c
    ld e, h
    ld h, [hl]
    adc [hl]
    ld h, a
    ld hl, $f769
    ld l, b
    add hl, bc
    ld l, c
    ld d, l
    ld l, d
    ld l, h
    ld h, [hl]
    sbc [hl]
    ld h, a
    ld [de], a
    ld l, c
    ld e, b
    ld l, d
    ld a, d
    ld l, d
    sub d
    ld l, l
    ld a, [hl]
    ld h, [hl]
    xor [hl]
    ld h, a
    jr nc, @+$6b

    and c
    ld l, l
    add hl, bc
    ld l, c
    or a
    ld l, l
    adc [hl]
    ld h, [hl]
    cp [hl]
    ld h, a
    ccf
    ld l, c
    cp d
    ld l, l
    add hl, bc
    ld l, c
    ret nc

    ld l, l
    sbc [hl]
    ld h, [hl]
    adc $67
    ld c, [hl]
    ld l, c
    db $d3
    ld l, l
    add hl, bc
    ld l, c
    jp hl


    ld l, l
    xor [hl]
    ld h, [hl]
    sbc $67
    ld e, l
    ld l, c
    db $ec
    ld l, l
    add hl, bc
    ld l, c
    ld [bc], a
    ld l, [hl]
    cp [hl]
    ld h, [hl]
    xor $67
    ld l, h
    ld l, c
    inc de
    ld l, a
    dec b
    ld l, [hl]
    cp b
    ld l, [hl]
    ret nc

    ld h, [hl]
    cp $67
    ld a, e
    ld l, c
    adc $6e
    add hl, bc
    ld l, c
    sbc $6e
    ld [$0e66], a
    ld l, b
    adc d
    ld l, c
    pop hl
    ld l, [hl]
    add hl, bc
    ld l, c
    rst RST_30
    ld l, [hl]
    db $fc
    ld h, [hl]
    ld e, $68
    sbc c
    ld l, c
    ld a, [$096e]
    ld l, c
    db $10
    ld l, a
    inc c
    ld h, a
    ld l, $68
    xor b
    ld l, c
    inc de
    ld l, a
    add hl, bc
    ld l, c
    inc h
    ld l, a
    inc e
    ld h, a
    ld a, $68
    or a
    ld l, c
    inc de
    ld l, a
    add hl, bc
    ld l, c
    daa
    ld l, a
    inc l
    ld h, a
    ld c, [hl]
    ld l, b
    add $69
    ld a, [hl+]
    ld l, a
    add hl, bc
    ld l, c
    ld b, b
    ld l, a
    inc a
    ld h, a
    ld e, [hl]
    ld l, b
    push de
    ld l, c
    inc de
    ld l, a
    add hl, bc
    ld l, c
    ld b, e
    ld l, a
    ld c, h
    ld h, a
    ld l, [hl]
    ld l, b
    db $e4
    ld l, c
    inc de
    ld l, a
    add hl, bc
    ld l, c
    ld b, [hl]
    ld l, a
    ld e, h
    ld h, a
    ld a, [hl]
    ld l, b
    di
    ld l, c
    inc de
    ld l, a
    add hl, bc
    ld l, c
    ld c, c
    ld l, a
    ld l, h
    ld h, a
    adc [hl]
    ld l, b
    ld [bc], a
    ld l, d
    inc de
    ld l, a
    ld c, h
    ld l, a
    ccf
    ld bc, $0100
    ld d, $18
    dec b
    ld b, l
    ld h, [hl]
    ld b, l
    rst RST_38
    nop
    ld [bc], a
    rst RST_38
    db $10
    inc b
    ld d, a
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
    ld h, a
    ld h, [hl]
    ld e, $41
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $41
    ld [bc], a
    ld bc, $10ff
    inc b
    ld a, c
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
    adc c
    ld h, [hl]
    ld e, $43
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $43
    ld [bc], a
    ld bc, $10ff
    inc b
    sbc c
    ld h, [hl]
    ld e, $44
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $44
    ld [bc], a
    ld bc, $10ff
    inc b
    xor c
    ld h, [hl]
    ld e, $45
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $45
    ld [bc], a
    ld bc, $10ff
    inc b
    cp c
    ld h, [hl]
    ld e, $46
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $46
    ld [bc], a
    ld bc, $10ff
    inc b
    bit 4, [hl]
    ld e, $47
    ld [bc], a
    nop
    ld de, $0038
    ld h, $ff
    ld e, $47
    ld [bc], a
    ld bc, $10ff
    inc b
    ldh [$ff66], a
    ld d, $8f
    dec b
    push hl
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
    rst RST_30
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
    rlca
    ld h, a
    ld e, $4a
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4a
    ld [bc], a
    ld bc, $10ff
    inc b
    rla
    ld h, a
    ld e, $4b
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4b
    ld [bc], a
    ld bc, $10ff
    inc b
    daa
    ld h, a
    ld e, $4c
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4c
    ld [bc], a
    ld bc, $10ff
    inc b
    scf
    ld h, a
    ld e, $4d
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4d
    ld [bc], a
    ld bc, $10ff
    inc b
    ld b, a
    ld h, a
    ld e, $4e
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4e
    ld [bc], a
    ld bc, $10ff
    inc b
    ld d, a
    ld h, a
    ld e, $4f
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $4f
    ld [bc], a
    ld bc, $10ff
    inc b
    ld h, a
    ld h, a
    ld e, $50
    ld [bc], a
    nop
    ld de, $ff26
    ld e, $50
    ld [bc], a
    ld bc, $10ff
    inc b
    ld a, c
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
    adc c
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
    sbc c
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
    xor c
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
    cp c
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
    ret


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
    reti


    ld h, a
    ld e, $45
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
    jp hl


    ld h, a
    ld e, $46
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
    ld sp, hl
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
    add hl, bc
    ld l, b
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
    add hl, de
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
    add hl, hl
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
    add hl, sp
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
    ld c, c
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
    ld e, c
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
    ld l, c
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
    ld a, c
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
    adc c
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
    sbc c
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
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ccf
    ld bc, $401e
    ld [bc], a
    inc b
    dec bc
    dec e
    ld d, $19
    inc b
    cp l
    ld l, b
    ld d, $1d
    inc b
    cp l
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
    xor $68
    ld [bc], a
    ld d, l
    jr z, jr_006_68f8

    dec b
    pop af
    ld l, b
    ld [hl-], a
    dec b
    db $ed
    ld l, b
    ld d, d
    nop
    dec b
    db $f4
    ld l, b
    ld d, d
    ld bc, $f405
    ld l, b
    ld e, l
    ld bc, $f405
    ld l, b
    ld d, d
    dec b
    dec b
    db $f4
    ld l, b
    ld d, d
    ld b, $05
    db $f4
    ld l, b
    ld d, d
    rlca
    dec b
    db $f4
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

jr_006_68f8:
    dec b
    xor $68
    ld [bc], a
    ld d, l
    jr z, jr_006_6930

    dec b
    pop af
    ld l, b
    ld [hl-], a
    dec b
    db $ed
    ld l, b
    inc e
    db $dd
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
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $42
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $41
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38

jr_006_6930:
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $43
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $44
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $45
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $46
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $47
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $48
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $49
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $4a
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $4b
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $4c
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $4d
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $4e
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $4f
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld h, h
    inc b
    cp h
    ld l, b
    ld e, $50
    ld [bc], a
    inc b
    dec bc
    dec e
    rst RST_38
    ld a, [bc]
    inc b
    inc c
    ld l, c
    ld d, $af
    inc b
    ld c, [hl]
    ld l, d
    ld d, d
    rlca
    inc b
    jr nc, jr_006_6a7a

    ld d, d
    ld d, h
    dec b
    ld c, e
    ld l, d
    ld h, h
    inc b
    cp h
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
    cp h
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
    xor $68
    ld [bc], a
    ld d, l
    jr z, jr_006_6a91

    dec b
    pop af
    ld l, b
    ld [hl-], a
    dec b
    db $ed
    ld l, b
    ld d, $60
    dec b
    db $f4
    ld l, b
    ld d, $1f
    dec b
    db $f4
    ld l, b
    ld d, $16
    dec b
    db $f4
    ld l, b
    ld e, e
    rla
    and c
    rst RST_38

jr_006_6a7a:
    ld a, [bc]
    dec b
    adc a
    ld l, l
    db $10
    dec b
    add l
    ld l, d
    ld bc, $ff60
    ld bc, $28b9
    add hl, hl
    nop
    inc bc
    add hl, sp
    ld l, e
    nop
    rlca
    add h
    ld l, e

jr_006_6a91:
    nop
    dec c
    jp nc, Jump_000_006b

    inc l
    db $ec
    ld l, e
    nop
    inc [hl]
    ld b, $6c
    nop
    dec [hl]
    ld b, $6c
    nop
    ld [hl], $22
    ld l, h
    nop
    dec a
    inc b
    ld l, l
    nop
    ccf
    ld b, $6c
    nop
    ld b, b
    ld b, d
    ld l, h
    nop
    ld b, d
    ld e, [hl]
    ld l, h
    nop
    ld b, [hl]
    ld e, [hl]
    ld l, h
    nop
    ld d, h
    sbc [hl]
    ld l, e
    nop
    ld e, a
    ld a, [hl]
    ld l, h
    nop
    ld h, h
    sbc [hl]
    ld l, h
    nop
    ld h, l
    cp b
    ld l, e
    nop
    ld l, b
    sbc [hl]
    ld l, h
    nop
    ld l, d
    cp d
    ld l, h
    nop
    ld l, e

jr_006_6ad3:
    rst RST_18
    ld l, h
    ld bc, $0402
    ld l, l
    ld bc, $1b06
    ld l, l
    dec b
    ld b, $04
    ld l, l
    dec b
    inc d
    inc b
    ld l, l
    dec b
    dec de
    inc b
    ld l, l
    dec b
    ld sp, $6d44
    dec b
    ld [hl], $04
    ld l, l
    dec b
    jr c, jr_006_6ad3

    ld l, h
    dec b
    ld c, c
    ld a, b
    ld l, l
    nop
    ld l, $a4
    ld l, [hl]
    nop
    ld [hl], l
    and h
    ld l, [hl]
    nop
    halt
    and h
    ld l, [hl]
    nop
    ld [hl], a
    and h
    ld l, [hl]
    nop
    cpl
    xor [hl]
    ld l, [hl]
    dec b
    ld b, a
    ld d, b
    ld l, e
    nop
    ld [hl], e
    add hl, de
    ld l, e
    cp $fe
    add hl, bc
    ld l, c
    ld bc, $4fe8
    dec b
    ld c, d
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
    ld c, d
    ld l, e
    inc e
    rra
    ld l, e
    ld bc, $51e8
    dec b
    ld c, d
    ld l, e
    inc e
    rra
    ld l, e
    ld d, $17
    dec b
    ld c, l
    ld l, e
    ld c, a
    dec b
    ld c, d
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
    ld c, d
    ld l, e
    ld e, d
    rlca
    ld bc, $5adb
    inc d
    ld bc, $48fc
    rst RST_38
    ld e, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld d, h
    ld l, e
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld d, h
    ld l, e
    ld d, $17
    dec b
    ld c, l
    ld l, e
    ld e, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld b, d
    ld l, e
    ld d, $17
    dec b
    ld c, l
    ld l, e
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld b, d
    ld l, e
    ld c, a
    dec b
    ld c, d
    ld l, e
    ld b, [hl]
    rlca
    rla
    ld bc, $0027
    ld [hl+], a
    rst RST_38
    ld e, c
    dec b
    ld c, d
    ld l, e
    inc e
    adc b
    ld l, e
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    adc b
    ld l, e
    ld c, a
    dec b
    ld c, d
    ld l, e
    ld b, [hl]
    rlca
    rla
    add hl, bc
    daa
    nop
    ld [hl+], a
    rst RST_38
    ld e, c
    dec b
    ld c, d
    ld l, e
    inc e
    and d
    ld l, e
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    and d
    ld l, e
    ld c, a
    dec b
    ld c, d
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
    ld c, d
    ld l, e
    inc e
    cp h
    ld l, e
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    cp h
    ld l, e
    ld c, a
    dec b
    ld c, d
    ld l, e
    ld b, [hl]
    rlca
    rla
    ld [bc], a
    daa
    nop
    ld b, [hl]
    rst RST_38
    ld e, c
    dec b
    ld c, d
    ld l, e
    inc e
    sub $6b
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    sub $6b
    ld c, a
    dec b
    ld c, d
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
    ld c, d
    ld l, e
    inc e
    ldh a, [rOCPD]
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    ldh a, [rOCPD]
    ld c, a
    dec b
    ld c, d
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
    ld c, d
    ld l, e
    inc e
    ld a, [bc]
    ld l, h
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld a, [bc]
    ld l, h
    ld c, a
    dec b
    ld c, d
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
    ld c, d
    ld l, e
    inc e
    ld h, $6c
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld h, $6c
    ld c, a
    dec b
    ld c, d
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
    ld c, d
    ld l, e
    inc e
    ld b, [hl]
    ld l, h
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld b, [hl]
    ld l, h
    ld c, a
    dec b
    ld c, d
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
    ld c, d
    ld l, e
    inc e
    ld h, d
    ld l, h
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld h, d
    ld l, h
    ld c, a
    dec b
    ld c, d
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
    ld c, d
    ld l, e
    inc e
    add d
    ld l, h
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    add d
    ld l, h
    ld c, a
    dec b
    ld c, d
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
    ld c, d
    ld l, e
    inc e
    and d
    ld l, h
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    and d
    ld l, h
    ld c, a
    dec b
    ld c, d
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
    ld c, d
    ld l, e
    inc e
    cp [hl]
    ld l, h
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    cp [hl]
    ld l, h
    ld c, a
    dec b
    ld c, d
    ld l, e
    ld d, $16
    inc b
    ld [$3f6d], sp
    ld bc, $8701
    ld b, [hl]
    rlca
    jr jr_006_6cfa

    rla
    ld d, $27
    ld bc, $ff8a
    ld e, c
    dec b
    ld c, d
    ld l, e

jr_006_6cfa:
    inc e
    db $e3
    ld l, h
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    db $e3
    ld l, h
    ld c, a
    dec b
    ld c, d
    ld l, e
    ld b, [hl]
    rlca
    ld bc, $fff8
    ld e, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld [$516d], sp
    dec b
    ld c, d
    ld l, e
    inc e
    ld [$4f6d], sp
    dec b
    ld c, d
    ld l, e
    ld d, $1f
    inc b
    inc b
    ld l, l
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
    ld c, d
    ld l, e
    inc e
    rra
    ld l, l
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    rra
    ld l, l
    ld c, a
    dec b
    ld c, d
    ld l, e
    ld d, $60
    inc b
    inc b
    ld l, l
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
    ld c, d
    ld l, e
    inc e
    ld c, b
    ld l, l
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld c, b
    ld l, l
    ld e, c
    dec b
    ld c, d
    ld l, e
    inc e
    db $e3
    ld l, h
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    db $e3
    ld l, h
    ld c, a
    dec b
    ld c, d
    ld l, e
    ld b, [hl]
    rlca
    ld bc, $ffa2
    ld e, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld a, h
    ld l, l
    ld d, c
    dec b
    ld c, d
    ld l, e
    inc e
    ld a, h
    ld l, l
    ld [bc], a
    ld d, d
    rst RST_38
    ld d, $90
    inc b
    sbc [hl]
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
    xor $68
    ld [bc], a
    ld d, l
    jr z, @+$33

    dec b
    pop af
    ld l, b
    ld [hl-], a
    dec b
    db $ed
    ld l, b
    ld d, d
    ld c, $05
    db $f4
    ld l, b
    ld e, e
    rst RST_38
    ld [bc], a
    adc h
    rst RST_38
    ld a, [bc]
    dec b
    xor $68
    ld [bc], a
    ld d, l
    jr z, @+$33

    dec b
    pop af
    ld l, b
    ld [hl-], a
    dec b
    db $ed
    ld l, b
    ld d, $9d
    dec b
    db $f4
    ld l, b
    ld e, e
    rst RST_38
    ld [bc], a
    sbc l
    rst RST_38
    ld a, [bc]
    dec b
    xor $68
    ld [bc], a
    ld d, l
    jr z, jr_006_6e0c

    dec b
    pop af
    ld l, b
    ld [hl-], a
    dec b
    db $ed
    ld l, b
    ld d, $7d
    dec b
    db $f4
    ld l, b
    ld e, e
    rst RST_38
    ld [bc], a
    ld [$0aff], a
    dec b
    xor $68
    ld [bc], a
    ld d, l
    jr z, jr_006_6e25

    dec b
    pop af
    ld l, b
    ld [hl-], a
    dec b
    db $ed
    ld l, b
    ld d, $99
    dec b
    db $f4
    ld l, b
    ld e, e
    rst RST_38
    ld [bc], a
    db $eb
    rst RST_38
    ld a, [bc]
    dec b
    adc a
    ld l, l
    db $10
    dec b
    db $10

jr_006_6e0c:
    ld l, [hl]
    ld bc, $ff60
    ld bc, $28b9
    add hl, hl
    nop
    inc bc
    ld l, h
    ld l, e
    nop
    rlca
    sub b
    ld l, e
    nop
    dec c
    sbc $6b
    nop
    inc l
    ld hl, sp+$6b
    nop

jr_006_6e25:
    inc [hl]
    inc d
    ld l, h
    nop
    dec [hl]
    inc d
    ld l, h
    nop
    ld [hl], $34
    ld l, h
    nop
    dec a
    dec c
    ld l, l
    nop
    ccf
    inc d
    ld l, h
    nop
    ld b, b
    ld d, b
    ld l, h
    nop
    ld b, d
    ld [hl], b
    ld l, h
    nop
    ld b, [hl]
    ld [hl], b
    ld l, h
    nop
    ld d, h
    xor d
    ld l, e
    nop
    ld e, a
    sub b
    ld l, h
    nop
    ld h, h
    xor h
    ld l, h
    nop
    ld h, l
    call nz, Call_000_006b
    ld l, b
    xor h
    ld l, h
    nop
    ld l, d
    pop de
    ld l, h
    nop
    ld l, e
    or $6c
    ld bc, $0d02
    ld l, l
    ld bc, $3606
    ld l, l
    dec b
    ld b, $0d
    ld l, l
    dec b
    inc d
    dec c
    ld l, l
    dec b
    dec de
    dec c
    ld l, l
    dec b
    ld sp, $6d5c
    dec b
    ld [hl], $0d
    ld l, l
    dec b
    jr c, jr_006_6ee9

    ld l, l
    dec b
    ld c, c
    add c
    ld l, l
    nop
    ld l, $a4
    ld l, [hl]
    nop
    ld [hl], l
    and h
    ld l, [hl]
    nop
    halt
    and h
    ld l, [hl]
    nop
    ld [hl], a
    and h
    ld l, [hl]
    nop
    cpl
    xor [hl]
    ld l, [hl]
    dec b
    ld b, a
    ld e, [hl]
    ld l, e
    nop
    ld [hl], e
    daa
    ld l, e
    cp $fe
    add hl, bc
    ld l, c
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
    ret z

    ld l, [hl]
    ld d, $8f
    inc b
    bit 5, [hl]
    ccf
    ld bc, $6e01
    ld bc, $ff1f
    ld bc, $ff71
    ld bc, $ff6e
    ld a, [bc]
    dec b
    xor $68
    ld [bc], a
    ld d, l
    jr z, jr_006_6f07

    dec b
    pop af
    ld l, b
    ld [hl-], a
    inc b
    db $f4
    ld l, b
    rst RST_38
    ld bc, $ffff
    ld a, [bc]
    dec b
    xor $68
    ld [bc], a
    ld d, l
    jr z, @+$33

jr_006_6ee9:
    dec b
    pop af
    ld l, b
    ld [hl-], a
    dec b
    db $ed
    ld l, b
    ld d, $96
    dec b
    db $f4
    ld l, b
    ld e, e
    rst RST_38
    ld bc, $ff9c
    ld a, [bc]
    dec b
    xor $68
    ld [bc], a
    ld d, l
    jr z, jr_006_6f33

    dec b
    pop af
    ld l, b
    ld [hl-], a
    dec b

jr_006_6f07:
    db $ed
    ld l, b
    ld d, $97
    dec b
    db $f4
    ld l, b
    ld e, e
    rst RST_38
    ld bc, $ffaf
    ld a, [bc]
    dec b
    xor $68
    ld [bc], a
    ld d, l
    jr z, jr_006_6f4c

    dec b
    pop af
    ld l, b
    ld [hl-], a
    dec b
    db $ed
    ld l, b
    ld e, e
    rst RST_38
    ld bc, $ffaf

Call_006_6f27:
    ld [bc], a
    sbc l
    rst RST_38
    ld a, [bc]
    dec b
    xor $68
    ld [bc], a
    ld d, l
    jr z, jr_006_6f63

    dec b

jr_006_6f33:
    pop af
    ld l, b
    ld [hl-], a
    dec b
    db $ed
    ld l, b
    ld d, $98
    dec b
    db $f4
    ld l, b
    ld e, e
    rst RST_38
    ld bc, $ffc3
    ld bc, $ffbf
    ld bc, $ffaf
    ld bc, $ff12

jr_006_6f4c:
    ld a, [bc]
    dec b
    adc a
    ld l, l
    db $10
    dec b
    ld d, a
    ld l, a
    ld bc, $ff60
    ld bc, $28b9
    add hl, hl
    nop
    inc bc
    ld a, b
    ld l, e
    nop
    rlca
    sub a
    ld l, e

jr_006_6f63:
    nop
    dec c
    push hl
    ld l, e
    nop
    inc l
    rst RST_38
    ld l, e
    nop
    inc [hl]
    dec de
    ld l, h
    nop
    dec [hl]
    dec de
    ld l, h
    nop
    ld [hl], $3b
    ld l, h
    nop
    dec a
    inc d
    ld l, l
    nop
    ccf
    dec de
    ld l, h
    nop
    ld b, b
    ld d, a
    ld l, h
    nop
    ld b, d
    ld [hl], a
    ld l, h
    nop
    ld b, [hl]
    ld [hl], a
    ld l, h
    nop
    ld d, h
    or c
    ld l, e
    nop
    ld e, a
    sub a
    ld l, h
    nop
    ld h, h
    or e
    ld l, h
    nop
    ld h, l
    bit 5, e
    nop
    ld l, b
    or e
    ld l, h
    nop
    ld l, d
    ret c

    ld l, h
    nop
    ld l, e
    db $fd
    ld l, h
    ld bc, $1402
    ld l, l
    ld bc, $3d06
    ld l, l
    dec b
    ld b, $14
    ld l, l
    dec b
    inc d
    inc d
    ld l, l
    dec b
    dec de
    inc d
    ld l, l
    dec b
    ld sp, $6d63
    dec b
    ld [hl], $14
    ld l, l
    dec b
    jr c, jr_006_7037

    ld l, l
    dec b
    ld c, c
    adc b
    ld l, l
    nop
    ld l, $a4
    ld l, [hl]
    nop
    ld [hl], l
    and h
    ld l, [hl]
    nop
    halt
    and h
    ld l, [hl]
    nop
    ld [hl], a
    and h
    ld l, [hl]
    nop
    cpl
    xor [hl]
    ld l, [hl]
    dec b
    ld b, a
    ld h, l
    ld l, e
    nop
    ld [hl], e
    jr nc, jr_006_7052

    cp $fe
    add hl, bc
    ld l, c
    add a
    ld [hl], b
    adc a
    ld [hl], b
    sub a
    ld [hl], b
    sbc a
    ld [hl], b
    and a
    ld [hl], b
    xor a
    ld [hl], b
    or a
    ld [hl], b
    cp a
    ld [hl], b
    rst RST_00
    ld [hl], b
    rst RST_08
    ld [hl], b
    rst RST_10
    ld [hl], b
    rst RST_18
    ld [hl], b
    rst RST_20
    ld [hl], b
    rst RST_28
    ld [hl], b
    rst RST_30
    ld [hl], b
    rst RST_38
    ld [hl], b
    rlca
    ld [hl], c
    rrca
    ld [hl], c
    rla
    ld [hl], c
    rra
    ld [hl], c
    daa
    ld [hl], c
    cpl
    ld [hl], c
    scf
    ld [hl], c
    ccf
    ld [hl], c
    ld b, a
    ld [hl], c
    ld c, a
    ld [hl], c
    ld d, a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld h, a
    ld [hl], c
    ld l, a
    ld [hl], c
    ld [hl], a
    ld [hl], c
    ld a, a
    ld [hl], c
    add a
    ld [hl], c
    adc a
    ld [hl], c
    sub a
    ld [hl], c
    sbc a
    ld [hl], c
    and a
    ld [hl], c
    xor a
    ld [hl], c

jr_006_7037:
    or a
    ld [hl], c
    cp a
    ld [hl], c
    rst RST_00
    ld [hl], c
    rst RST_08
    ld [hl], c
    rst RST_10
    ld [hl], c
    rst RST_18
    ld [hl], c
    rst RST_20
    ld [hl], c
    rst RST_28
    ld [hl], c
    rst RST_30
    ld [hl], c
    rst RST_38
    ld [hl], c
    rlca
    ld [hl], d
    rrca
    ld [hl], d
    rla
    ld [hl], d
    rra

jr_006_7052:
    ld [hl], d
    daa
    ld [hl], d
    cpl
    ld [hl], d
    scf
    ld [hl], d
    ccf
    ld [hl], d
    ld b, a
    ld [hl], d
    ld c, a
    ld [hl], d
    ld d, a
    ld [hl], d
    ld e, a
    ld [hl], d
    ld h, a
    ld [hl], d
    ld l, a
    ld [hl], d
    ld [hl], a
    ld [hl], d
    ld a, a
    ld [hl], d
    add a
    ld [hl], d
    adc a
    ld [hl], d
    sub a
    ld [hl], d
    sbc a
    ld [hl], d
    and a
    ld [hl], d
    xor a
    ld [hl], d
    or a
    ld [hl], d
    cp a
    ld [hl], d
    rst RST_00
    ld [hl], d
    rst RST_08
    ld [hl], d
    rst RST_10
    ld [hl], d
    rst RST_18
    ld [hl], d
    rst RST_20
    ld [hl], d
    rst RST_28
    ld [hl], d
    rst RST_30
    ld [hl], d
    dec c
    ld [hl], e
    and h
    ld [hl], e
    jp $dc73


    ld [hl], e
    dec c
    ld [hl], e
    and h
    ld [hl], e
    db $f4
    ld [hl], e
    db $10
    ld [hl], h
    dec c
    ld [hl], e
    and h
    ld [hl], e
    inc e
    ld [hl], h
    jr nc, jr_006_7115

    dec c
    ld [hl], e
    and h
    ld [hl], e
    ld b, l
    ld [hl], h
    ld e, c
    ld [hl], h
    dec c
    ld [hl], e
    and h
    ld [hl], e
    ld l, [hl]
    ld [hl], h
    add d
    ld [hl], h
    dec c
    ld [hl], e
    and h
    ld [hl], e
    adc a
    ld [hl], h
    xor d
    ld [hl], h
    dec [hl]
    ld [hl], e
    and h
    ld [hl], e
    cp c
    ld [hl], h
    rst RST_08
    ld [hl], h
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    call c, Call_000_0174
    ld [hl], l
    dec d
    ld [hl], l
    dec e
    ld [hl], l
    ld [hl-], a
    ld [hl], l
    ld b, [hl]
    ld [hl], l
    sbc b
    ld [hl], e
    or e
    ld [hl], e
    ld e, a
    ld [hl], l
    ld [hl], e
    ld [hl], l
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    ld a, [hl]
    ld [hl], l
    sub c
    ld [hl], l
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    sub d
    ld [hl], l
    sbc h
    ld [hl], l
    and l
    ld [hl], l
    xor h
    ld [hl], l
    xor a
    ld [hl], l
    jp $c375


    ld [hl], l
    jp $c375


    ld [hl], l
    sbc h
    ld [hl], l
    and l
    ld [hl], l
    xor h
    ld [hl], l
    jp $9c75


    ld [hl], l
    and l
    ld [hl], l
    xor h
    ld [hl], l
    ld bc, $1f76
    halt
    ld [hl-], a
    halt
    ld b, c
    halt
    ld d, b
    halt
    ld e, c
    halt
    pop af
    ld [hl], e
    pop af
    ld [hl], e

jr_006_7115:
    ld e, d
    halt
    ld h, h
    halt
    ld [hl-], a
    halt
    ld b, c
    halt
    ld [hl], b
    halt
    ld a, d
    halt
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    add d
    halt
    sub c
    halt
    ld b, c
    ld [hl], e
    and h
    ld [hl], e
    sbc l
    halt
    or c
    halt
    dec c
    ld [hl], e
    and h
    ld [hl], e
    cp c
    halt
    rst RST_18
    halt
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    pop bc
    halt
    sbc $76
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    ret


    halt
    ld [$f976], a
    halt
    ld [$1777], sp
    ld [hl], a
    daa
    ld [hl], a
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    jr z, @+$79

    ld [hl], $77
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    scf
    ld [hl], a
    ld c, e
    ld [hl], a
    ld c, l
    ld [hl], e
    and h
    ld [hl], e
    ld d, a
    ld [hl], a
    ld l, d
    ld [hl], a
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    ld l, e
    ld [hl], a
    add a
    ld [hl], a
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    adc b
    ld [hl], a
    and h
    ld [hl], a
    dec c
    ld [hl], e
    and h
    ld [hl], e
    or b
    ld [hl], a
    jp $f177


    ld [hl], e
    pop af
    ld [hl], e
    call nz, $d577
    ld [hl], a
    call c, $a477
    ld [hl], e
    call c, $db77
    ld [hl], a
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    ld [hl], h
    ld a, b
    ld a, [hl]
    ld a, b
    ld sp, hl
    halt
    ld [$8a77], sp
    ld a, b
    sub h
    ld a, b
    rla
    ld [hl], e
    xor h
    ld [hl], l
    sbc a
    ld a, b
    ret c

    ld a, b
    rla
    ld [hl], e
    xor h
    ld [hl], l
    sbc $78
    dec bc
    ld a, c
    rla
    ld [hl], e
    xor h
    ld [hl], l
    ld de, $4779
    ld a, c
    rla
    ld [hl], e
    xor h
    ld [hl], l
    ld c, l
    ld a, c
    add e
    ld a, c
    rla
    ld [hl], e
    xor h
    ld [hl], l
    adc c
    ld a, c
    cp a
    ld a, c
    rla
    ld [hl], e
    xor h
    ld [hl], l
    jp z, Jump_000_0779

    ld a, d
    rla
    ld [hl], e
    xor h
    ld [hl], l
    dec c
    ld a, d
    ld a, [hl-]
    ld a, d
    rla
    ld [hl], e
    xor h
    ld [hl], l
    ld b, b
    ld a, d
    ld e, [hl]
    ld a, d
    rla
    ld [hl], e
    xor h
    ld [hl], l
    ld h, h
    ld a, d
    add d
    ld a, d
    rla
    ld [hl], e
    xor h
    ld [hl], l
    adc b
    ld a, d
    and [hl]
    ld a, d
    dec c
    ld [hl], e
    and h
    ld [hl], e
    or h
    ld a, d
    ret z

    ld a, d
    ret z

    ld a, d
    ret z

    ld a, d
    ret z

    ld a, d
    ret z

    ld a, d
    and l
    ld [hl], l
    xor h
    ld [hl], l
    rst RST_10
    ld a, d
    pop hl
    ld a, d
    and l
    ld [hl], l
    xor h
    ld [hl], l
    db $ed
    ld a, d
    ld b, $7b
    adc h
    ld [hl], e
    and h
    ld [hl], e
    ld h, $7b
    ld a, [hl-]
    ld a, e
    ld a, [hl-]
    ld a, e
    ld a, [hl-]
    ld a, e
    ld a, [hl-]
    ld a, e
    ld a, [hl-]
    ld a, e
    dec c
    ld [hl], e
    and h
    ld [hl], e
    ld b, [hl]
    ld a, e
    ld d, b
    ld a, e
    ld d, b
    ld a, e
    ld d, b
    ld a, e
    ld d, b
    ld a, e
    ld d, c
    ld a, e
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    ld e, c
    ld a, e
    sub a
    ld a, e
    add b
    ld [hl], e
    and h
    ld [hl], e
    xor e
    ld a, e
    call nz, $f17b
    ld [hl], e
    pop af
    ld [hl], e
    call z, $d47b
    ld a, e
    ld e, c
    ld [hl], e
    and h
    ld [hl], e
    add sp, $7b
    jr z, jr_006_72cd

    xor c
    ld [hl], l
    xor h
    ld [hl], l
    jr nc, jr_006_72d3

    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, l
    ld a, h
    inc e
    ld [hl], e
    and h
    ld [hl], e
    ld c, e
    ld a, h
    ld e, a
    ld a, h
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    ld h, l
    ld a, h
    sbc h
    ld [hl], l
    dec c
    ld [hl], e
    and h
    ld [hl], e
    ld [hl], h
    ld a, h
    sbc h
    ld [hl], l
    dec c
    ld [hl], e
    and h
    ld [hl], e
    adc b
    ld a, h
    sbc h
    ld [hl], l
    dec c
    ld [hl], e
    and h
    ld [hl], e
    sbc h
    ld a, h
    and h
    ld a, h
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    xor a
    ld a, h
    jp $f17c


    ld [hl], e
    pop af
    ld [hl], e
    adc $7c
    rst RST_18
    ld a, h
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    ld [$f27c], a
    ld a, h
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    db $fd
    ld a, h
    dec b
    ld a, l
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    db $10
    ld a, l
    inc hl
    ld a, l
    pop af
    ld [hl], e
    pop af
    ld [hl], e
    ld h, $7d
    scf
    ld a, l
    ld a, [hl-]
    ld a, l
    and h
    ld [hl], e
    pop af
    ld [hl], e
    ld e, d
    ld a, l
    ld e, d
    ld a, l
    ld e, d
    ld a, l

jr_006_72cd:
    ld e, d
    ld a, l
    ld e, e
    ld a, l
    ld e, [hl]
    ld a, l

jr_006_72d3:
    ld [hl], b
    ld a, l
    ld a, [hl]
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld a, l
    add hl, de
    nop
    dec b
    inc c
    ld [hl], e
    inc de
    inc b
    rla
    ld [hl], e
    ld d, $30
    inc b
    ld a, [bc]
    ld [hl], e
    nop
    ld e, $17
    jr nc, @+$01

    ld bc, $ffc7
    inc de
    inc b
    rla
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
    rla
    ld [hl], e
    ld d, $27
    dec b
    dec hl
    ld [hl], e
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
    rla
    ld [hl], e
    ld d, $5a
    dec b
    sbc d
    halt
    inc e
    ld de, $1373
    inc b
    rla
    ld [hl], e
    ld d, $5b
    dec b
    sbc d
    halt
    inc e
    ld de, $1373
    inc b
    rla
    ld [hl], e
    ld d, $5c
    dec b
    sbc d
    halt
    inc e
    ld de, $1373
    inc b
    rla
    ld [hl], e
    ld d, $5e
    dec b
    sbc d
    halt
    ld a, [de]
    ld e, $b0
    ld [bc], a
    nop
    ld d, $16
    inc b
    ld a, a
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
    rla
    ld [hl], e
    ld d, $5f
    dec b
    sbc d
    halt
    inc e
    ld de, $1373
    inc b
    rla
    ld [hl], e
    ld d, $60
    dec b
    sbc d
    halt
    inc e
    ld de, $1973
    rlca
    inc b
    dec c
    ld [hl], e
    inc de
    inc b
    rla
    ld [hl], e
    nop
    ld l, b
    rst RST_38
    inc de
    dec b
    xor [hl]
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
    and h
    ld [hl], e
    inc de
    dec b
    xor [hl]
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
    call Call_000_0673
    nop
    nop
    ld [de], a
    rst RST_38
    ld b, $01
    ld d, $30
    inc b
    reti


    ld [hl], e
    nop
    dec e
    rla
    jr nc, @+$01

    nop
    inc hl
    rst RST_38
    add hl, de
    ld bc, $e204
    ld [hl], e
    rst RST_38
    inc de
    inc b
    rla
    ld [hl], e
    ld d, $31
    inc b
    xor $73
    nop
    ld e, $ff
    nop
    inc h
    rst RST_38
    nop
    inc de
    rst RST_38
    add hl, de
    ld bc, $cd05
    ld [hl], e
    ld d, $17
    dec b
    dec c
    ld [hl], h
    ld b, $02
    ld d, $31
    inc b
    ld a, [bc]
    ld [hl], h
    nop
    ld h, $17
    ld sp, $00ff
    dec hl
    rst RST_38
    ld bc, $ff5e
    inc de
    inc b
    rla
    ld [hl], e
    add hl, de
    ld [bc], a
    dec b
    xor $73
    nop
    jr z, @+$01

    add hl, de
    ld [bc], a
    dec b
    ld sp, hl
    ld [hl], e
    ld b, $03
    ld d, $32
    inc b
    dec l
    ld [hl], h
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
    ld [hl], $74
    rst RST_38
    inc de
    inc b
    rla
    ld [hl], e
    ld d, $33
    inc b
    ld b, d
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
    ld sp, hl
    ld [hl], e
    ld b, $05
    ld d, $33
    inc b
    ld d, [hl]
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
    ld e, a
    ld [hl], h
    rst RST_38
    inc de
    inc b
    rla
    ld [hl], e
    ld d, $34
    inc b
    ld l, e
    ld [hl], h
    nop
    ld sp, $01ff
    rst RST_00
    rst RST_38
    add hl, de
    inc bc
    dec b
    ld hl, $0674
    inc b
    ld d, $34
    inc b
    ld a, a
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
    adc b
    ld [hl], h
    rst RST_38
    inc de
    inc b
    rla
    ld [hl], e
    nop
    ld a, $ff
    add hl, de
    dec b
    dec b
    ld c, d
    ld [hl], h
    ld d, $04
    inc b
    sbc e
    ld [hl], h
    rla
    inc bc
    ld b, $06
    ld d, $35
    inc b
    and a
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
    rla
    ld [hl], e
    add hl, de
    dec b
    inc b
    or [hl]
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
    ld c, d
    ld [hl], h
    ld e, [hl]
    ld c, d
    ld b, $11
    ld d, $36
    dec b
    jp z, Jump_000_0274

    cp c
    rst RST_38
    ld [bc], a
    or c
    rla
    ld [hl], $ff
    add hl, de
    dec b
    dec b
    inc c
    ld [hl], e
    ld d, $37
    inc b
    ld d, [hl]
    ld a, e
    nop
    dec a
    rst RST_38
    add hl, de
    dec b
    dec b
    ld c, d
    ld [hl], h
    add hl, de
    dec c
    inc b
    db $eb
    ld [hl], h
    ld d, $25
    dec b
    ld a, [$0674]
    ld c, $16
    scf
    dec b
    push af
    ld [hl], h
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
    db $10
    ld [hl], l
    add hl, de
    ld b, $04
    dec c
    ld [hl], l
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
    dec c
    ld [hl], e
    nop
    inc d
    rst RST_38
    add hl, de
    rlca
    inc b
    and h
    ld [hl], e
    inc de
    dec b
    dec l
    ld [hl], l
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
    sub h
    ld [hl], h
    ld b, $07
    ld d, $38
    dec b
    ld b, c
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
    rla
    ld [hl], e
    add hl, de
    rlca
    inc b
    ld d, h
    ld [hl], l
    ld e, $b0
    ld [bc], a
    inc bc
    rst RST_38
    ld d, $3a
    inc b
    ld e, h
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
    scf
    ld [hl], l
    ld b, $08
    ld d, $3a
    dec b
    ld l, [hl]
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
    ld a, e
    ld [hl], l
    nop
    ld d, l
    rst RST_38
    ld bc, $ff21
    add hl, de
    rlca
    dec b
    scf
    ld [hl], l
    ld b, $3a
    ld d, $39
    dec b
    adc l
    ld [hl], l
    ld bc, $ff24
    ld bc, $1728
    add hl, sp
    rst RST_38
    add hl, de
    ld [$6405], sp
    ld [hl], l
    ld b, $09
    nop
    ld l, c
    rst RST_38
    inc de
    inc b
    rla
    ld [hl], e
    ld e, $b0
    ld [bc], a
    inc bc
    rst RST_38
    inc de
    inc b
    rla
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
    sub a
    ld [hl], l
    ld b, $0a
    ld d, $3b
    dec b
    cp [hl]
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
    call c, Call_000_0675
    inc c
    ld d, $57
    inc b
    reti


    ld [hl], l
    ld d, $3c
    inc b
    reti


    ld [hl], l
    ld [bc], a
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
    pop af
    ld [hl], l
    ld d, $57
    inc b
    ld hl, sp+$75
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
    dec d
    halt
    ld b, $0b
    ld d, $3d
    dec b
    db $10
    halt
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
    cp [hl]
    ld [hl], l
    nop
    ld l, a
    rst RST_38
    inc de
    inc b
    inc a
    halt
    add hl, de
    dec bc
    inc b
    cpl
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
    inc a
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
    ld c, e
    halt
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
    ld b, $76
    ld b, $0f
    ld [bc], a
    xor e
    rst RST_38
    add hl, de
    rrca
    dec b
    ld d, l
    halt
    ld b, $10
    ld [bc], a
    xor [hl]
    rst RST_38
    inc de
    inc b
    inc a
    halt
    add hl, de
    inc c
    inc b
    cpl
    halt
    ld [bc], a
    or b
    rst RST_38
    add hl, de
    inc c
    dec b
    jp Jump_000_0675


    db $10
    ld [bc], a
    xor [hl]
    rst RST_38
    add hl, de
    ld d, $05
    ld a, c
    halt
    ld [bc], a
    db $d3
    rst RST_38
    add hl, de
    db $10
    inc b
    adc d
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
    rla
    ld [hl], e
    ld d, $5b
    inc b
    xor [hl]
    ld [hl], e
    nop
    ld b, e
    rst RST_38
    add hl, de
    inc c
    dec b
    jp Jump_000_0675


    dec c
    ld d, $3e
    dec b
    xor h
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
    inc c
    ld [hl], e
    inc e
    sbc h
    ld [hl], l
    add hl, de
    dec c
    dec b
    and d
    halt
    inc e
    pop hl
    ld [hl], h
    add hl, de
    ld de, $be05
    ld [hl], h
    inc e
    adc d
    halt
    add hl, de
    ld de, $be05
    ld [hl], h
    ld e, [hl]
    ld c, e
    ld b, $12
    ld d, $3f
    dec b
    jp c, Jump_000_0276

    jp nz, Jump_000_02ff

    cp l
    rla
    ccf
    rst RST_38
    add hl, de
    ld d, $05
    rst RST_20
    halt
    ld [bc], a
    call nc, Call_000_02ff
    pop de
    rst RST_38
    inc de
    inc b
    inc bc
    ld [hl], a
    add hl, de
    ld de, $f604
    halt
    ld bc, $ff32
    ld [bc], a
    cp h
    rst RST_38
    inc de
    inc b
    inc bc
    ld [hl], a
    ld a, [de]
    ld e, $ba
    ld [bc], a
    nop
    rst RST_38
    ld e, $ba
    ld [bc], a
    ld bc, $13ff
    dec b
    ld [de], a
    ld [hl], a
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
    ld de, $be05
    ld [hl], h
    ld b, $1d
    ld d, $40
    inc b
    adc d
    ld [hl], l
    ld bc, $1731
    ld b, b
    rst RST_38
    add hl, de
    rla
    dec b
    jr nc, jr_006_77a4

    inc e
    cp [hl]
    ld [hl], h
    ld e, [hl]
    jr nz, @+$08

    rla
    ld [bc], a
    sub $ff
    add hl, de
    ld de, $be05
    ld [hl], h
    ld b, $22
    ld d, $41
    dec b
    ld b, [hl]
    ld [hl], a
    ld [bc], a
    or $ff
    ld [bc], a
    pop af
    rla
    ld b, c
    rst RST_38
    add hl, de
    ld de, $5605
    ld [hl], a
    inc de
    inc b
    rla
    ld [hl], e
    ld [bc], a
    or l
    rst RST_38
    add hl, de
    ld de, $be05
    ld [hl], h
    ld b, $23
    ld d, $42
    dec b
    ld h, [hl]
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
    adc $76
    ld d, $a8
    inc b
    ld a, c
    ld [hl], a
    ld e, [hl]
    ld c, h
    ld e, [hl]
    rra
    ld b, $13
    jr @-$56

    dec b
    add e
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
    ld [hl], b
    ld [hl], a
    ld e, [hl]
    ld c, l
    ld b, $14
    ld d, $7a
    dec b
    sbc c
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

jr_006_77a4:
    add hl, de
    dec h
    inc b
    inc c
    ld [hl], e
    inc de
    inc b
    rla
    ld [hl], e
    ld [bc], a
    call Call_000_19ff
    inc de
    dec b
    ld [hl], b
    ld [hl], a
    ld b, $25
    ld d, $45
    dec b
    cp a
    ld [hl], a
    ld [bc], a
    ld h, $ff
    ld bc, $1710
    ld b, l
    rst RST_38
    add hl, de
    inc d
    dec b
    adc l
    ld [hl], a
    ld b, $15
    ld d, $46
    dec b
    sub [hl]
    ld [hl], a
    ld e, $b2
    ld [bc], a
    dec bc
    rst RST_38
    inc de
    inc b
    rla
    ld [hl], e
    ld [bc], a
    ret c

    rst RST_38
    ld a, [de]
    ld l, b
    ld e, $13
    dec b
    ld hl, $1674
    dec h
    dec b
    ld l, [hl]
    ld a, b
    ld d, $a1
    dec b
    ld c, d
    ld a, b
    ld d, d
    inc h
    dec b
    inc hl
    ld a, b
    ld e, l
    ld [$1105], sp
    ld a, b
    ld d, d
    ld e, $05
    ld de, $1678
    and d
    dec b
    ld h, b
    ld a, b
    ld d, $a3
    dec b
    ld h, b
    ld a, b
    ld d, $a4
    dec b
    ld h, b
    ld a, b
    ld e, d
    rla
    rst RST_38
    ld [bc], a
    ld h, e
    rst RST_38
    ld d, $a2
    inc b
    ld d, d
    ld a, b
    ld d, $a3
    inc b
    ld d, d
    ld a, b
    ld d, $a4
    inc b
    ld d, d
    ld a, b
    inc e
    inc a
    ld a, b
    ld e, l
    ld [$1104], sp
    ld a, b
    ld d, d
    ld e, $04
    ld de, $5278
    ld [de], a
    inc b
    ld d, d
    ld a, b
    ld d, d
    dec de
    inc b
    ld d, d
    ld a, b
    ld d, d
    ld c, $04
    ld d, d
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
    ld bc, $48fb
    rst RST_38
    ld b, $18
    ld [bc], a
    jp c, $155a

    ld [bc], a
    ld h, d
    ld c, b
    rst RST_38
    inc de
    inc b
    inc bc
    ld [hl], a
    add hl, de
    ld d, $04
    or $76
    ld bc, $ff32
    add hl, de
    ld d, $05
    adc d
    halt
    ld b, $3d
    inc e
    ld e, $77
    add hl, de
    ld h, $05
    sbc d
    ld a, b
    rst RST_38
    ld e, $b1
    ld [bc], a
    inc c
    rst RST_38
    add hl, de
    ld h, $04
    or [hl]
    ld a, b
    jr nc, jr_006_78b3

    ld b, $26
    ccf
    ld bc, $3901
    ld d, $81
    inc b
    or e
    ld a, b
    ld b, l
    rst RST_38

jr_006_78b3:
    ld [bc], a
    ld l, [hl]
    rst RST_38
    ld d, $83
    dec b
    adc l
    ld [hl], a
    ld d, $82
    inc b
    pop de
    ld a, b
    ld d, $84

jr_006_78c2:
    inc b
    jp z, Jump_000_0278

    ld e, l
    rla

jr_006_78c8:
    add h
    rst RST_38
    ld c, d
    ld [bc], a
    dec b
    inc [hl]
    ld a, d
    ld [bc], a
    ld l, h
    ld b, $14
    ld [bc], a
    ret nc

    inc e
    nop
    ld a, d
    add hl, de
    ld b, d
    dec b
    sbc d
    ld a, b
    rst RST_38
    add hl, de
    ld b, d
    inc b
    rst RST_30
    ld a, b
    ld b, $42
    ld bc, $ff39
    ld b, $19
    ld d, $48
    inc b
    db $f4
    ld a, b
    ld bc, $1747
    ld c, b
    rst RST_38
    ld bc, $ff49
    ld d, $83
    dec b
    add sp, $78
    ld d, $82

jr_006_78fe:
    inc b
    dec hl
    ld a, d

jr_006_7901:
    ld d, $84
    inc b

jr_006_7904:
    inc [hl]
    ld a, d
    ld [bc], a
    ld e, l
    rla
    add h
    rst RST_38
    add hl, de
    ld b, h
    dec b
    sbc d
    ld a, b
    rst RST_38
    add hl, de
    ld b, h
    inc b
    ld a, [hl+]
    ld a, c
    ld b, $44
    ld bc, $ff39
    ld b, $1a
    ld d, $49
    inc b
    daa
    ld a, c
    ld bc, $175f
    ld c, c
    rst RST_38
    ld bc, $ff66
    ld d, $83
    dec b
    dec de
    ld a, c
    ld d, $82
    inc b
    ld a, $79
    ld d, $84
    inc b
    inc [hl]
    ld a, d
    ld [bc], a

jr_006_793a:
    ld e, l
    rla
    add h

jr_006_793d:
    rst RST_38
    jr jr_006_78c2

jr_006_7940:
    jr @-$7b

    jr jr_006_78c8

    inc e
    dec de
    ld a, c
    add hl, de
    ld b, [hl]
    dec b
    sbc d
    ld a, b
    rst RST_38
    add hl, de
    ld b, [hl]
    inc b
    ld h, [hl]
    ld a, c
    ld b, $46
    ld bc, $ff39
    ld b, $1b
    ld d, $4a
    inc b
    ld h, c
    ld a, c
    ld bc, $ff75
    ld bc, $1773
    ld c, d
    rst RST_38
    ld d, $83
    dec b
    ld d, a
    ld a, c
    ld d, $82
    inc b
    ld a, d
    ld a, c
    ld d, $84
    inc b
    inc [hl]
    ld a, d
    ld [bc], a
    ld e, l
    rla
    add h
    rst RST_38
    jr jr_006_78fe

    jr jr_006_7901

    jr jr_006_7904

    inc e
    ld d, a
    ld a, c
    add hl, de

jr_006_7984:
    ld c, b
    dec b
    sbc d

jr_006_7987:
    ld a, b
    rst RST_38
    add hl, de

jr_006_798a:
    ld c, b
    inc b
    and d
    ld a, c
    ld b, $48
    ld bc, $ff39
    ld b, $1c
    ld d, $4b
    inc b
    sbc a
    ld a, c
    ld bc, $179a
    ld c, e
    rst RST_38
    ld bc, $ff9f
    ld d, $83
    dec b
    sub e
    ld a, c
    ld d, $82
    inc b
    or [hl]
    ld a, c
    ld d, $84
    inc b

jr_006_79af:
    inc [hl]
    ld a, d
    ld [bc], a

jr_006_79b2:
    ld e, l
    rla
    add h

jr_006_79b5:
    rst RST_38
    jr jr_006_793a

    jr jr_006_793d

    jr jr_006_7940

    inc e
    sub e
    ld a, c
    add hl, de
    daa
    dec b
    push bc
    ld a, c
    rst RST_38
    ld e, $b2
    ld [bc], a
    inc c
    rst RST_38
    add hl, de
    daa
    inc b
    pop hl
    ld a, c
    cpl
    dec c
    ld b, $27
    ccf
    ld bc, $4201
    ld d, $a0
    inc b
    sbc $79
    ld b, l
    rst RST_38
    ld [bc], a
    ld l, a
    rst RST_38
    ld d, $83
    dec b
    ret


    ld [hl], a
    ld d, $82
    inc b
    db $fc
    ld a, c
    ld d, $84
    inc b
    push af
    ld a, c
    ld [bc], a
    ld e, [hl]
    rla
    add h
    rst RST_38
    ld c, d
    ld [bc], a
    dec b
    inc [hl]
    ld a, d
    ld [bc], a
    ld l, l
    ld b, $15
    ld [bc], a
    ret nc

    jr jr_006_7984

    jr jr_006_7987

    jr jr_006_798a

    rst RST_38
    add hl, de
    ld b, e
    dec b
    push bc
    ld a, c
    rst RST_38
    add hl, de
    ld b, e
    inc b
    rla
    ld a, d
    ld b, $43
    ld bc, $ff42
    ld d, $83
    dec b
    add sp, $78
    ld d, $82
    inc b
    dec hl
    ld a, d
    ld d, $84
    inc b
    inc [hl]
    ld a, d
    ld [bc], a
    ld e, [hl]
    rla
    add h
    rst RST_38
    jr jr_006_79af

    jr jr_006_79b2

    jr jr_006_79b5

    inc e
    add sp, $78
    ld e, d
    inc d
    ld bc, $48b2
    rst RST_38
    add hl, de
    ld b, l
    dec b
    push bc
    ld a, c
    rst RST_38
    add hl, de
    ld b, l
    inc b
    ld c, d
    ld a, d
    ld b, $45
    ld bc, $ff42
    ld d, $83
    dec b
    dec de
    ld a, c
    ld d, $82
    inc b
    ld a, $79
    ld d, $84
    inc b
    inc [hl]
    ld a, d
    ld [bc], a
    ld e, [hl]
    rla
    add h
    rst RST_38
    add hl, de
    ld b, a
    dec b
    push bc
    ld a, c
    rst RST_38
    add hl, de
    ld b, a
    inc b
    ld l, [hl]
    ld a, d
    ld b, $47
    ld bc, $ff42
    ld d, $83
    dec b
    ld d, a
    ld a, c
    ld d, $82
    inc b
    ld a, d
    ld a, c
    ld d, $84
    inc b
    inc [hl]
    ld a, d
    ld [bc], a
    ld e, [hl]
    rla
    add h
    rst RST_38
    add hl, de
    ld c, c
    dec b
    push bc
    ld a, c
    rst RST_38
    add hl, de
    ld c, c
    inc b
    sub d
    ld a, d
    ld b, $49
    ld bc, $ff42
    ld d, $83
    dec b
    sub e
    ld a, c
    ld d, $82
    inc b
    or [hl]
    ld a, c
    ld d, $84
    inc b
    inc [hl]
    ld a, d
    ld [bc], a
    ld e, [hl]
    rla
    add h
    rst RST_38
    add hl, de
    add hl, de
    dec b
    or e
    ld a, d
    inc de
    inc b
    rla
    ld [hl], e
    ld e, $b0
    ld [bc], a
    inc bc
    rst RST_38
    add hl, de
    add hl, de
    dec b
    add sp, $78
    ld b, $28
    ld d, $4c
    inc b
    push bc
    ld a, d
    ld bc, $174a
    ld c, h
    rst RST_38
    ld bc, $ff4d
    inc de
    inc b
    rla
    ld [hl], e
    add hl, de
    jr z, jr_006_7ad3

    call nc, $017a
    ld d, c

jr_006_7ad3:
    rst RST_38
    ld bc, $ff4b
    add hl, de
    jr z, jr_006_7adf

    cp c
    ld a, d
    ld b, $29
    nop

jr_006_7adf:
    ld l, a
    rst RST_38
    inc de
    inc b
    rla
    ld [hl], e
    add hl, de
    ld a, [hl+]
    inc b
    call nc, $017a
    ld d, c
    rst RST_38
    add hl, de
    ld a, [hl+]
    dec b
    rst RST_30
    ld a, d
    ld b, $41
    nop
    ld l, a
    rst RST_38
    ld b, $2a
    ld d, $ad
    inc b
    inc bc
    ld a, e
    ld bc, $1753
    xor l
    rst RST_38
    ld [bc], a
    daa
    rst RST_38
    add hl, de
    dec hl
    dec b
    inc c
    ld a, e
    rst RST_38
    inc de
    inc b
    rla
    ld [hl], e
    ld d, $60
    inc b
    xor [hl]
    ld [hl], e
    ld d, $2d
    inc b
    rra
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
    dec de
    ld a, c
    ld b, $2b
    ld d, $4d
    inc b
    scf
    ld a, e
    ld bc, $1767
    ld c, l
    rst RST_38
    ld bc, $ff6f
    add hl, de
    inc l
    inc b
    add hl, sp
    ld a, e
    inc de
    inc b
    rla
    ld [hl], e
    ld bc, $ffc7
    add hl, de
    dec de
    dec b
    ld d, a
    ld a, c
    ld b, $2c
    ld bc, $ff76
    rst RST_38
    add hl, de
    inc l
    dec b
    ld c, a
    ld a, e
    nop
    ld c, b
    rst RST_38
    add hl, de
    inc l
    dec b
    ld c, e
    ld a, e
    ld d, $16
    inc b
    ld h, l
    ld a, e
    rla
    ld a, [bc]
    ld b, $2f
    ld d, $4e
    inc b
    adc d
    ld a, e
    ld e, a
    dec c
    ld d, $25
    inc b
    ld a, a
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
    jr z, jr_006_7b87

    xor h

jr_006_7b87:
    rla
    ld c, [hl]
    rst RST_38
    ld d, $25
    inc b
    sub h
    ld a, e
    ld bc, $4682
    add hl, de
    rst RST_38
    ld bc, $ff82
    add hl, de
    dec l
    dec b
    and a
    ld a, e
    inc de
    inc b
    rla
    ld [hl], e
    ld d, $5f
    inc b
    xor b
    ld a, e
    nop
    ld b, e
    rst RST_38
    ld bc, $ff78
    add hl, de
    dec l
    dec b
    cp h
    ld a, e
    ld b, $2e
    ld d, $4f
    inc b
    pop bc
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
    bit 7, e
    ld bc, $ff77
    add hl, de
    inc l
    dec b
    ld c, e
    ld a, e
    inc e
    cp h
    ld a, e
    inc de
    inc b
    rla
    ld [hl], e
    ld d, $16
    inc b
    ldh [$ff7b], a
    ld bc, $ff89
    ld d, $50
    inc b
    xor [hl]
    ld [hl], e
    ld bc, $ff8a
    add hl, de
    cpl
    dec b
    ld e, [hl]
    ld a, e
    ld d, $16
    inc b
    ld b, $7c
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
    inc e
    ld a, h
    ld d, $50
    inc b
    add hl, de
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
    cpl
    ld a, h
    ld bc, $ff9e
    add hl, de
    inc e
    dec b
    sub e
    ld a, c
    ld d, $27
    inc b
    ccf
    ld a, h
    ld b, $31
    ld bc, $ffa0
    ld b, $32
    ld bc, $ffa9
    rst RST_38
    add hl, de
    ld [hl-], a
    inc b
    sbc h
    ld [hl], l
    rst RST_38
    ld d, $27
    dec b
    dec hl
    ld [hl], e
    add hl, de
    ld [hl-], a
    dec b
    ld e, d
    ld a, h
    ld b, $34
    ld bc, $ffae
    ld b, $32
    ld bc, $ffa9
    add hl, de
    ld [hl-], a
    inc b
    ld d, [hl]
    ld a, e
    rst RST_38
    ld d, $27
    dec b
    dec hl
    ld [hl], e
    add hl, de
    ld [hl-], a
    dec b
    ld e, d
    ld a, h
    ld b, $35
    ld bc, $ffba
    add hl, de
    dec [hl]
    dec b
    ld l, a
    ld a, h
    ld b, $36
    ld d, $51
    inc b
    add l
    ld a, h
    ld bc, $17bc
    ld d, c
    rst RST_38
    ld bc, $ffc9
    add hl, de
    dec [hl]
    dec b
    ld l, a
    ld a, h
    ld b, $37
    ld d, $52
    inc b
    sbc c
    ld a, h
    ld bc, $17cb
    ld d, d
    rst RST_38
    ld bc, $ffd7
    add hl, de
    ld [hl], $05
    ld a, c
    ld a, h
    inc e
    adc l
    ld a, h
    add hl, de
    dec e
    inc b
    xor h
    ld a, h
    ld bc, $ff21
    ld bc, $ff29
    add hl, de
    dec e
    dec b
    inc e
    ld [hl], a
    ld b, $3b
    ld d, $53
    inc b
    ret nz

    ld a, h
    ld bc, $1720
    ld d, e
    rst RST_38
    ld bc, $ff24
    add hl, de
    add hl, sp
    dec b
    bit 7, h
    ld bc, $ff21
    ld bc, $ff29
    add hl, de
    dec a
    dec b
    adc a
    ld a, b
    ld b, $39
    ld d, $54
    inc b
    ret nz

    ld a, h
    ld bc, $1725
    ld d, h
    rst RST_38
    add hl, de
    add hl, sp
    inc b
    rst RST_20
    ld a, h
    ld bc, $ff22
    ld bc, $ff27
    add hl, de
    add hl, sp
    dec b
    db $d3
    ld a, h
    inc e
    or h
    ld a, h
    add hl, de
    add hl, sp
    inc b
    ld a, [$017c]
    ld h, $ff
    ld bc, $ff27
    add hl, de
    add hl, sp
    dec b
    db $d3
    ld a, h
    inc e
    add e
    ld [hl], l
    add hl, de
    ld a, [hl-]
    inc b
    dec c
    ld a, l
    ld bc, $ff23
    ld bc, $ff26
    add hl, de
    jr c, jr_006_7d17

    add e
    ld [hl], l
    ld e, [hl]
    inc h

jr_006_7d17:
    ld b, $38
    ld d, $55
    inc b
    ret nz

    ld a, h
    ld bc, $1720
    ld d, l
    rst RST_38
    ld bc, $ff26
    add hl, de
    add hl, sp
    dec b
    db $d3
    ld a, h
    ld b, $3c
    ld d, $56
    inc b
    ret nz

    ld a, h
    ld bc, $172b
    ld d, [hl]
    rst RST_38
    ld [bc], a
    ldh a, [c]
    rst RST_38
    inc de
    inc b
    ld c, l
    ld a, l
    ld d, $b4
    dec b
    ld b, l
    ld a, l
    ld e, a
    dec c
    ld d, $5d
    inc b
    ld d, d
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
    ld sp, $6d04
    ld a, l
    ld d, $27
    inc b
    dec c
    ld [hl], e
    ld b, $31
    ld bc, $ffaa
    ld bc, $ffa1
    add hl, de
    ld sp, $ae04
    ld [hl], e
    ld d, $27
    inc b
    and h
    ld [hl], e
    inc e
    ld l, b
    ld a, l
    rst RST_38
    ld d, $27
    inc b
    adc l
    ld a, l
    add hl, de
    ld sp, $8a04
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
