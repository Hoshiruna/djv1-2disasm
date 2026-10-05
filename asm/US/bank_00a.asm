; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    db $10
    ld b, b
    ld d, b
    ld b, b
    sub b
    ld b, b
    ret nc

    ld b, b
    db $10
    ld b, c
    ld d, b
    ld b, c
    sub b
    ld b, c
    ret nc

    ld b, c
    nop
    nop
    ld sp, $5d11
    ld a, $ff
    ld h, a
    ld b, b
    ld l, h
    inc bc
    ld e, c
    ld a, h
    ld a, [hl-]
    rst RST_38
    ld b, a
    nop
    nop
    nop
    inc a
    ld b, b
    ld l, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    inc a
    ld e, l
    ld a, $ff
    ld h, a
    nop
    nop
    ld sp, $5d11
    ld a, $ce
    nop
    nop
    nop
    adc $00
    ld e, l
    ld a, $00
    inc a
    ld h, b
    dec [hl]
    nop
    nop
    ret c

    ld bc, $03df
    nop
    nop
    and b
    ld [hl], $f3
    ld a, a
    ldh [$ff5f], a
    nop
    nop
    ld sp, $5d11
    ld a, $ff
    ld h, a
    ld b, b
    ld l, h
    inc bc
    ld e, c
    ld a, h
    ld a, [hl-]
    rst RST_38
    ld b, a
    nop
    nop
    nop
    inc a
    ld b, b
    ld l, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    inc a
    ld e, l
    ld a, $ff
    ld h, a
    nop
    nop
    ld sp, $5d11
    ld a, $ce
    nop
    nop
    nop
    adc $00
    ld e, l
    ld a, $00
    inc a
    ld h, b
    dec [hl]
    nop
    nop
    ret c

    ld bc, $03df
    nop
    nop
    and b
    ld [hl], $f3
    ld a, a
    ldh [$ff5f], a
    nop
    nop
    ld sp, $5d11
    ld a, $ff
    ld h, a
    ld b, b
    ld l, h
    inc bc
    ld e, c
    ld a, h
    ld a, [hl-]
    rst RST_38
    ld b, a
    nop
    nop
    nop
    inc a
    ld b, b
    ld l, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    inc a
    ld e, l
    ld a, $ff
    ld h, a
    nop
    nop
    ld sp, $5d11
    ld a, $ce
    nop
    nop
    nop
    adc $00
    ld e, l
    ld a, $00
    inc a
    ld h, b
    dec [hl]
    nop
    nop
    ret c

    ld bc, $03df
    nop
    nop
    and b
    ld [hl], $f3
    ld a, a
    ldh [$ff5f], a
    di
    add hl, bc
    ld b, l
    nop
    ld l, b
    nop
    rlc h
    di
    add hl, bc
    nop
    nop
    ld c, h
    nop
    sub h
    nop
    di
    add hl, bc
    ld b, d
    inc h
    ld l, e
    dec l
    ld [hl], e
    ld c, [hl]
    di
    add hl, bc
    nop
    nop
    or h
    nop
    ccf
    ld [bc], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $09f3
    ld b, l
    nop
    ld l, b
    nop
    rlc h
    di
    add hl, bc
    nop
    nop
    ld c, h
    nop
    sub h
    nop
    di
    add hl, bc
    ld b, d
    inc h
    ld l, e
    dec l
    ld [hl], e
    ld c, [hl]
    di
    add hl, bc
    nop
    nop
    or h
    nop
    ccf
    ld [bc], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $09f3
    ld b, l
    nop
    ld l, b
    nop
    rlc h
    di
    add hl, bc
    nop
    nop
    ld c, h
    nop
    sub h
    nop
    di
    add hl, bc
    ld b, d
    inc h
    ld l, e
    dec l
    ld [hl], e
    ld c, [hl]
    di
    add hl, bc
    nop
    nop
    or h
    nop
    ccf
    ld [bc], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $09f3
    ld b, l
    nop
    ld l, b
    nop
    rlc h
    di
    add hl, bc
    nop
    nop
    ld c, h
    nop
    sub h
    nop
    di
    add hl, bc
    ld b, d
    inc h
    ld l, e
    dec l
    ld [hl], e
    ld c, [hl]
    di
    add hl, bc
    nop
    nop
    or h
    nop
    ccf
    ld [bc], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $09f3
    ld b, l
    nop
    ld l, b
    nop
    rlc h
    di
    add hl, bc
    nop
    nop
    ld c, h
    nop
    sub h
    nop
    di
    add hl, bc
    ld b, d
    inc h
    ld l, e
    dec l
    ld [hl], e
    ld c, [hl]
    di
    add hl, bc
    nop
    nop
    or h
    nop
    ccf
    ld [bc], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $4220
    ld h, b
    ld b, d
    and b
    ld b, d
    ldh [rSCY], a
    jr nz, jr_00a_425d

    ld h, b
    ld b, e
    and b
    ld b, e
    ldh [rSCX], a
    ld d, b
    halt
    rst RST_38
    ld a, a
    ld h, c
    ld c, b
    dec h
    ld [hl], l
    rra
    nop
    rst RST_38
    ld a, a
    ld h, c
    ld c, b
    inc b
    ld [hl], l
    rst RST_38
    add hl, sp
    rst RST_38
    ld a, a
    dec e
    nop
    rst RST_38
    nop
    rst RST_38
    add hl, sp
    rst RST_38
    ld a, a
    dec e
    nop
    dec h
    ld [hl], l
    rra
    nop
    rst RST_38
    ld a, a
    rra
    nop
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    cpl
    ld a, [hl]
    rra
    ld b, d
    rra

jr_00a_425d:
    ld hl, $78e3
    nop
    nop
    ld sp, $5d11
    ld a, $ff
    ld h, a
    ld b, b
    ld l, h
    inc bc
    ld e, c
    ld a, h
    ld a, [hl-]
    rst RST_38
    ld b, a
    nop
    nop
    nop
    inc a
    ld b, b
    ld l, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    inc a
    ld e, l
    ld a, $ff
    ld h, a
    nop
    nop
    ld sp, $5d11
    ld a, $ce
    nop
    nop
    nop
    adc $00
    ld e, l
    ld a, $00
    inc a
    ld h, b
    dec [hl]
    nop
    nop
    ret c

    ld bc, $03df
    nop
    nop
    and b
    ld [hl], $f3
    ld a, a
    ldh [$ff5f], a
    nop
    nop
    ld sp, $5d11
    ld a, $ff
    ld h, a
    ld b, b
    ld l, h
    inc bc
    ld e, c
    ld a, h
    ld a, [hl-]
    rst RST_38
    ld b, a
    nop
    nop
    nop
    inc a
    ld b, b
    ld l, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    inc a
    ld e, l
    ld a, $ff
    ld h, a
    nop
    nop
    ld sp, $5d11
    ld a, $ce
    nop
    nop
    nop
    adc $00
    ld e, l
    ld a, $00
    inc a
    ld h, b
    dec [hl]
    nop
    nop
    ret c

    ld bc, $03df
    nop
    nop
    and b
    ld [hl], $f3
    ld a, a
    ldh [$ff5f], a
    nop
    nop
    dec l
    dec b
    di
    add hl, bc
    inc e
    ld d, a
    add e
    inc c
    adc h
    dec a
    di
    add hl, bc
    db $dd
    ld a, a
    rlca
    ld [$354a], sp
    inc d
    inc b
    dec e
    inc a
    nop
    nop
    dec l
    dec b
    di
    add hl, bc
    inc d
    nop
    nop
    nop
    dec l
    dec b
    di
    add hl, bc
    ld b, b
    ld a, h
    jr nz, @+$03

    jr nz, jr_00a_430e

    ldh [$ff03], a

jr_00a_430e:
    rst RST_38
    ccf
    jr nz, jr_00a_4313

    ld h, c

jr_00a_4313:
    jr jr_00a_433d

    ld sp, $41ce
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld d, b
    halt
    rst RST_38
    ld a, a
    ld h, c
    ld c, b
    dec h
    ld [hl], l
    rra
    nop
    rst RST_38
    ld a, a
    ld h, c
    ld c, b
    inc b
    ld [hl], l
    rst RST_38
    add hl, sp
    rst RST_38
    ld a, a
    dec e
    nop
    rst RST_38
    nop
    rst RST_38
    add hl, sp
    rst RST_38
    ld a, a
    dec e

jr_00a_433d:
    nop
    dec h
    ld [hl], l
    rra
    nop
    rst RST_38
    ld a, a
    rra
    nop
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    cpl
    ld a, [hl]
    rra
    ld b, d
    rra
    ld hl, $78e3
    nop
    nop
    ld sp, $f746
    ld e, [hl]
    nop
    ld d, $00
    nop
    rst RST_28
    dec a
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    nop
    nop
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    inc e
    nop
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    rst RST_38
    ld a, a
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    ld sp, $0000
    ld d, $ff
    inc bc
    rst RST_38
    ld a, a
    ld sp, $f746
    ld e, [hl]
    nop
    ld d, $00
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld e, a
    inc bc
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    rst RST_38
    ld a, a
    rst RST_38
    add hl, sp
    rst RST_38
    nop
    dec e
    nop
    rst RST_38
    ld a, a
    ld d, d
    ld c, d
    ld [$0021], sp
    nop
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    call z, Call_000_0c44
    ld b, l
    ld c, h
    ld b, l
    adc h
    ld b, l
    call z, $0c45
    ld b, [hl]
    ld c, h
    ld b, [hl]
    adc h
    ld b, [hl]
    call z, $0c46
    ld b, a
    ld c, h
    ld b, a
    adc h
    ld b, a
    call z, Call_000_0c47
    ld c, b
    ld c, h
    ld c, b
    adc h
    ld c, b
    call z, $0c48
    ld c, c
    ld c, h
    ld c, c
    adc h
    ld c, c
    call z, $0c49
    ld c, d
    ld c, h
    ld c, d
    adc h
    ld c, d
    call z, Call_000_0c4a
    ld c, e
    ld c, h
    ld c, e
    adc h
    ld c, e
    call z, Call_000_0c4b
    ld c, h
    ld c, h
    ld c, h
    adc h
    ld c, h
    call z, Call_000_0c4c
    ld c, l
    ld c, h
    ld c, l
    adc h
    ld c, l
    call z, Call_000_0c4d
    ld c, [hl]
    ld c, h
    ld c, [hl]
    adc h
    ld c, [hl]
    call z, Call_000_0c4e
    ld c, a
    ld c, h
    ld c, a
    adc h
    ld c, a
    call z, Call_000_0c4f
    ld d, b
    ld c, h
    ld d, b
    adc h
    ld d, b
    call z, Call_000_0c50
    ld d, c
    ld c, h
    ld d, c
    adc h
    ld d, c
    call z, Call_000_0c51
    ld d, d
    ld c, h
    ld d, d
    adc h
    ld d, d
    call z, $0c52
    ld d, e
    ld c, h
    ld d, e
    adc h
    ld d, e
    call z, $0c53
    ld d, h
    ld c, h
    ld d, h
    adc h
    ld d, h
    call z, Call_000_0c54
    ld d, l
    ld c, h
    ld d, l
    adc h
    ld d, l
    call z, $0c55
    ld d, [hl]
    ld c, h
    ld d, [hl]
    adc h
    ld d, [hl]
    call z, $0c56
    ld d, a
    ld c, h
    ld d, a
    adc h
    ld d, a
    call z, Call_000_0c57
    ld e, b
    ld c, h
    ld e, b
    adc h
    ld e, b
    call z, $0c58
    ld e, c
    ld c, h
    ld e, c
    adc h
    ld e, c
    call z, $0c59
    ld e, d
    nop
    nop
    dec l
    dec b
    di
    add hl, bc
    inc e
    ld d, a
    add e
    inc c
    adc h
    dec a
    di
    add hl, bc
    db $dd
    ld a, a
    rlca
    ld [$354a], sp
    inc d
    inc b
    dec e
    inc a
    nop
    nop
    dec l
    dec b
    di
    add hl, bc
    inc d
    nop
    nop
    nop
    dec l
    dec b
    di
    add hl, bc
    ld b, b
    ld a, h
    jr nz, @+$03

    jr nz, jr_00a_44fa

    ldh [$ff03], a

jr_00a_44fa:
    rst RST_38
    ccf
    jr nz, jr_00a_44ff

    ld h, c

jr_00a_44ff:
    jr jr_00a_4529

    ld sp, $41ce
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add hl, hl
    dec h
    rrca
    ld a, $d5
    ld e, d
    ld b, b
    nop
    jr nz, jr_00a_451a

    ldh [$ff03], a

jr_00a_451a:
    ld a, e
    ld h, e
    nop
    nop
    rrca
    ld a, $14
    inc b
    dec e
    inc a
    nop
    nop
    or c
    add hl, de
    push de

jr_00a_4529:
    ld e, d
    rst RST_38
    ld a, a
    nop
    nop
    ld h, a
    nop
    ld c, $01
    push de
    ld e, d
    nop
    nop
    add hl, hl
    dec h
    push de
    ld e, d
    rst RST_38
    ld a, a
    nop
    nop
    ld h, a
    nop
    ld c, $01
    push af
    dec e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add hl, hl
    dec h
    rrca
    ld a, $d5
    ld e, d
    ld b, b
    nop
    jr nz, jr_00a_455a

    ldh [$ff03], a

jr_00a_455a:
    ld a, e
    ld h, e
    nop
    nop
    rrca
    ld a, $14
    inc b
    dec e
    inc a
    nop
    nop
    or c
    add hl, de
    push de
    ld e, d
    rst RST_38
    ld a, a
    nop
    nop
    ld h, a
    nop
    ld c, $01
    push de
    ld e, d
    nop
    nop
    add hl, hl
    dec h
    push de
    ld e, d
    rst RST_38
    ld a, a
    nop
    nop
    ld h, a
    nop
    ld c, $01
    push af
    dec e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld l, [hl]
    dec h
    ld d, h
    ld a, [hl-]
    cp l
    ld [hl], a
    nop
    nop
    adc d
    nop
    ld c, $01
    ld e, d
    ld [bc], a
    nop
    nop
    cp l
    ld [hl], a
    ld c, $01
    ld e, d
    ld [bc], a
    nop
    nop
    ld bc, $1a12
    jr nc, jr_00a_45fe

    ld a, [hl-]
    ld b, b
    nop
    nop
    ld e, b
    ld c, $01
    cp l
    ld [hl], a
    dec h
    nop
    cp l
    ld [hl], a
    ld d, h
    ld a, [hl-]
    ld c, $01
    ld h, a
    nop
    ld c, $01
    inc bc
    ld a, [hl]
    rst RST_08
    halt
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add hl, hl
    dec h
    rrca
    ld a, $d5
    ld e, d
    jr nz, jr_00a_45d7

    nop

jr_00a_45d7:
    ld [bc], a
    ldh [$ff03], a
    ld a, e
    ld h, e
    nop
    nop
    rrca
    ld a, $14
    inc b
    dec e
    inc a
    nop
    nop
    or c
    add hl, de
    push de
    ld e, d
    rst RST_38
    ld a, a
    nop
    nop
    ld h, a
    nop
    ld c, $01
    push de
    ld e, d
    nop
    nop
    add b
    ld bc, $0220
    ldh [$ff03], a
    nop
    nop

jr_00a_45fe:
    ld h, a
    nop
    ld c, $01
    push af
    dec e
    nop
    nop
    ld [bc], a
    ld a, [hl]

Jump_00a_4608:
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add hl, hl
    dec h
    rrca
    ld a, $d5
    ld e, d
    jr nz, jr_00a_4617

    nop

jr_00a_4617:
    ld [bc], a
    ldh [$ff03], a
    ld a, e
    ld h, e
    nop
    nop
    rrca
    ld a, $14
    inc b
    dec e
    inc a
    nop
    nop
    or c
    add hl, de
    push de
    ld e, d
    rst RST_38
    ld a, a
    nop
    nop
    ld h, a
    nop
    ld c, $01
    push de
    ld e, d
    nop
    nop
    add b
    ld bc, $0220
    ldh [$ff03], a
    nop
    nop
    ld h, a
    nop
    ld c, $01
    push af
    dec e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    pop af
    inc hl
    ld b, e
    ld bc, $0ac0
    ld l, e
    dec a
    and b
    nop
    ld [hl-], a
    ld e, [hl]
    rst RST_38
    ld a, a
    inc b
    nop
    ld [hl-], a
    ld bc, $3d6b
    or l
    ld l, d
    nop
    nop
    add b
    ld bc, $3d6b
    ld [hl-], a
    ld e, [hl]
    rlca
    nop
    ld [hl-], a
    ld bc, $0217
    sub c
    ld a, [hl]
    nop
    nop
    adc b
    ld bc, $0620
    ld d, b
    ld [$2815], sp
    nop
    nop
    ld l, e
    dec a
    or l
    ld l, d
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    adc $00
    ld [hl], a
    ld a, $ff
    ld a, a
    nop
    nop
    ld b, d
    ld [$3e77], sp
    rst RST_38
    ld a, a
    nop
    nop
    ld [hl], a
    ld a, $00
    ld [hl], b
    rra
    jr jr_00a_46a5

jr_00a_46a5:
    nop
    ld d, b
    ld h, h
    nop
    ld a, h
    rst RST_38
    ld a, a
    nop
    nop
    ld c, c
    nop
    adc $00
    ld e, l
    ld [bc], a
    nop
    nop
    or d
    nop
    nop
    ld a, h
    rst RST_38
    ld a, a
    nop
    nop
    ld b, d
    ld [$3e77], sp
    rra
    jr jr_00a_46c5

jr_00a_46c5:
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, [hl]
    inc bc
    nop
    nop
    ld c, $00
    di
    nop
    dec e
    ld [hl+], a
    nop
    nop
    ldh [$ff31], a
    di
    nop
    cp l
    ld [hl-], a
    nop
    nop
    inc l
    dec h
    ld [de], a
    ld a, [hl-]
    rst RST_10
    ld d, [hl]
    nop
    nop
    and l
    nop
    sub $02
    rst RST_38
    ld a, a
    nop
    nop
    inc l
    dec h
    di
    nop
    dec e
    ld [hl+], a
    nop
    nop
    ld b, b
    ld a, $f3
    nop
    cp l
    ld [hl-], a
    nop
    nop
    add hl, hl
    dec h
    ld sp, $1846
    ld h, e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, [hl]
    inc bc
    nop
    nop
    ret


    jr jr_00a_473d

    dec h
    adc a
    ld sp, $0000
    adc d
    db $10
    ld [hl-], a
    dec h
    adc a
    ld sp, $0000
    ret


    jr jr_00a_478c

    dec l
    sub h
    ld d, d
    nop
    nop
    ret


    jr jr_00a_4776

    add hl, hl
    dec d
    ld b, d
    nop
    nop
    ld c, l
    add hl, hl
    xor d
    nop
    dec c
    ld bc, $0000
    adc b
    nop
    db $ed
    nop
    ld sp, hl
    ld d, [hl]
    rst RST_38

jr_00a_473d:
    ld a, e
    adc d
    db $10
    ld [hl-], a
    dec h
    ld a, h
    ld d, $00
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld l, l
    inc c
    ld e, b
    dec d
    rra
    ld c, $00
    nop
    ld l, l
    inc c
    inc e
    nop
    ld e, b
    dec d
    nop
    nop
    ld l, l
    inc c
    ld [hl+], a
    ld [bc], a
    ld e, b
    dec d
    nop
    nop
    ld l, l
    inc c
    ld [hl+], a
    ld [bc], a
    cp a
    ld bc, $0000
    ld l, l
    inc c
    ld e, b
    dec d
    ccf
    jr c, jr_00a_4775

jr_00a_4775:
    nop

jr_00a_4776:
    jr jr_00a_4785

    push de
    ld e, d
    ccf
    jr c, @-$5e

    nop
    ret nz

    ld bc, $03e0
    ccf
    jr c, jr_00a_4785

jr_00a_4785:
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc

jr_00a_478c:
    nop
    nop
    rst RST_28
    ld b, l
    ld [hl], e
    ld c, [hl]
    sbc $7b
    nop
    nop
    ld c, d
    dec [hl]
    ld [hl], e
    ld c, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    adc d
    nop
    rra
    nop
    ld d, l
    nop
    nop
    nop
    ld d, d
    ld c, d
    ld l, e
    dec l
    rst RST_38
    ld a, a
    nop
    nop
    rst RST_38
    ld a, a
    adc d
    nop
    db $10
    ld b, d
    ld d, d
    ld c, d
    adc d
    nop
    rra
    nop
    rst RST_38
    ld a, a
    nop
    nop
    rst RST_38
    ld a, a
    db $10
    ld b, d
    ld l, e
    dec l
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    sbc $7b
    rst RST_28
    dec a
    add $24
    nop
    nop
    rst RST_38
    ld a, a
    sub h
    ld d, d
    adc h
    ld sp, $0000
    ld d, l
    nop
    rra
    nop
    ld l, b
    inc c
    nop
    nop
    sub h
    ld d, d
    ccf
    dec l
    rst RST_30
    inc d
    inc h
    inc c
    or $01
    sub h
    ld d, d
    ld [hl], e
    nop
    nop
    nop
    rrca
    ld bc, $025c
    ld [hl], e
    nop
    nop
    nop
    rst RST_38
    inc bc
    ld e, h
    ld [bc], a
    ld d, c
    ld bc, $0e57
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    adc l
    nop
    ld [hl-], a
    ld bc, $1e19
    nop
    nop
    ld [hl-], a
    ld bc, $2b3f
    add hl, de
    ld e, $00
    nop
    ld h, b
    ld bc, $02e0
    ld a, $37
    nop
    nop
    ld [$ef21], sp
    dec a
    cp $77
    nop
    nop
    rst RST_28
    dec a
    add hl, de
    ld e, $3e
    scf
    nop
    nop
    ld [hl-], a
    ld bc, $0030
    add hl, de
    ld e, $00
    nop
    nop
    ld a, [hl]
    jr nc, jr_00a_4842

jr_00a_4842:
    add hl, de
    ld e, $00
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    and a
    inc h
    sub b
    ld b, l
    ld c, $00
    inc bc
    nop
    ld c, $00
    ld a, a
    ld a, [hl+]
    sub [hl]
    nop
    inc bc
    nop
    add sp, $1c
    ldh a, [$ff3d]
    ld de, $0000
    nop
    adc b
    nop
    sub e
    dec d
    ld e, l
    ld h, e
    nop
    nop
    inc de
    ld bc, $021d
    rst RST_38
    inc bc
    nop
    nop
    scf
    inc h
    dec e
    ld [bc], a
    ld c, $10
    nop
    nop
    and a
    inc h
    sub b
    ld b, l
    ld c, $10
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    and a
    inc h
    sub b
    ld b, l
    ld c, $00
    inc bc
    nop
    ld c, $00
    ld a, a
    ld a, [hl+]
    sub [hl]
    nop
    inc bc
    nop
    add sp, $1c
    ldh a, [$ff3d]
    ld de, $0000
    nop
    adc b
    nop
    sub e
    dec d
    ld e, l
    ld h, e
    nop
    nop
    inc de
    ld bc, $021d
    rst RST_38
    inc bc
    nop
    nop
    sub [hl]
    nop
    dec e
    ld [bc], a
    ld c, $10
    nop
    nop
    and a
    inc h
    sub b
    ld b, l
    ld c, $10
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    add $18
    nop
    nop
    xor l
    dec [hl]
    add hl, sp
    ld h, a
    nop
    nop
    ld d, l
    dec c
    rst RST_18
    dec l
    dec hl
    nop
    nop
    nop
    ld d, l
    dec c
    xor l
    dec [hl]
    or [hl]
    ld h, d
    nop
    nop
    ld d, l
    dec c
    dec hl
    nop
    add hl, de
    nop
    nop
    nop
    ld d, l
    dec c
    xor l
    dec [hl]
    xor $00
    nop
    nop
    ld a, d
    ld bc, $00f0
    ld l, c
    nop
    nop
    nop
    ldh [$ff7c], a
    xor l
    dec [hl]
    ld a, [bc]
    nop
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    rst RST_38
    ld bc, $0015
    nop
    ld e, b
    nop
    nop
    rst RST_38
    ld bc, $0015
    inc [hl]
    ld b, [hl]
    nop
    nop
    sbc e
    ld bc, $0015
    ld a, [hl+]
    nop
    nop
    nop
    cp d
    add hl, bc
    dec d
    nop
    ld a, [bc]
    nop
    nop
    nop
    rst RST_38
    ld l, a
    reti


    ld c, d
    inc [hl]
    ld b, [hl]
    nop
    nop
    ld b, b
    ld a, l
    ret nz

    ld a, h
    nop
    ld e, b
    dec b
    nop
    inc l
    nop
    rst RST_20
    ld c, c
    add hl, sp
    ld l, e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld b, $00
    ld d, b
    nop
    rst RST_18
    nop
    cp a
    ld h, a
    ld l, a
    ld a, [hl+]
    xor h
    dec [hl]
    xor $45
    dec h
    nop
    rst RST_28
    dec a
    adc $00
    ld l, a
    ld a, [hl+]
    dec h
    nop
    rst RST_28
    dec a
    ld a, [de]
    dec d
    cp a
    ld h, a
    dec h
    nop
    nop
    nop
    ld [hl-], a
    ld b, d
    ld a, [hl-]
    ld h, e
    rst RST_30
    nop
    adc l
    nop
    sub $00
    xor $45
    ld bc, $0000
    nop
    nop
    ld [hl], b
    ld a, [bc]
    nop
    rst RST_30
    nop
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld b, [hl]
    ld b, b
    call z, $f76d
    ld a, a
    nop

jr_00a_4995:
    nop
    and l
    inc d
    xor l
    dec [hl]
    rst RST_30
    ld e, [hl]
    inc bc
    nop
    xor $1c
    sub e
    ld de, $1a18
    nop
    nop
    ld b, [hl]
    ld b, b
    adc $4d
    rst RST_30
    ld a, a
    nop
    nop
    xor $1c
    sub e
    ld de, $7ff7
    nop
    nop
    jr @+$22

    adc $4d
    rst RST_30
    ld a, a
    nop
    nop
    ld b, [hl]
    ld b, b
    call z, $936d
    ld de, $0000
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld h, h
    jr nz, jr_00a_4995

    ld c, h
    rst RST_28
    ld e, [hl]
    nop
    nop
    ld hl, $a504
    inc d
    rst RST_28
    dec a
    ld bc, $0600
    nop
    adc e
    db $10
    db $10
    add hl, bc
    nop
    nop
    nop
    jr @+$44

    inc e
    ld h, e
    dec l
    nop
    nop
    dec bc
    nop
    dec sp
    ld bc, $1adf
    nop
    nop
    dec bc
    nop
    and b
    ld a, h
    jr jr_00a_49fd

    nop

jr_00a_49fd:
    nop
    xor h
    dec a
    and b
    ld a, h
    rst RST_18
    ld a, [de]
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add $18
    ld sp, $1446
    nop
    nop
    nop
    add hl, hl
    dec h
    nop
    inc h
    ld a, e
    ld l, a
    nop
    nop
    ld c, [hl]
    ld de, $19d4
    ld a, e
    ld l, a
    nop
    nop
    ld [$8c21], sp
    ld sp, $037b
    nop
    nop
    add hl, hl
    dec h
    ld sp, $7b46
    ld l, a
    nop
    nop
    add hl, hl
    dec h
    adc h
    ld sp, $4631
    nop
    nop
    xor d
    nop
    ld c, a
    ld bc, $01f4
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add hl, hl
    dec h
    db $10
    ld b, d
    rst RST_38
    ld a, a
    nop
    inc l
    ld bc, $8935
    ld b, c
    ld c, a
    ld h, [hl]
    nop
    nop
    and l
    inc d
    add hl, hl
    dec h
    db $10
    ld b, d
    nop
    nop
    and l
    inc e
    rst RST_20
    inc e
    adc $39
    nop
    nop
    ld d, $00
    cp a
    ld bc, $7fff
    nop
    nop
    inc d
    ld d, b
    rra
    ld a, h
    sbc a
    ld a, [hl]
    inc c
    jr nc, jr_00a_4a93

    ld d, b
    rra
    ld a, h
    sbc a
    ld a, [hl]
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add hl, hl
    dec h
    db $10
    ld b, d
    rst RST_38

jr_00a_4a93:
    ld a, a
    nop
    nop
    nop
    inc l
    adc c
    ld b, c
    ld c, a
    ld h, [hl]
    nop
    nop
    dec h
    nop
    ld l, b
    nop
    db $10
    ld b, d
    nop
    nop
    dec h
    nop
    ld l, b
    nop
    ld d, e
    ld bc, $0000
    ld d, $00
    cp a
    ld bc, $7fff
    nop
    nop
    xor e
    ld [$0153], sp
    inc a
    ld [hl], $00
    nop
    ret nz

    ld bc, $0153
    inc a
    ld [hl], $00
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    jr nc, jr_00a_4ad1

    push de

jr_00a_4ad1:
    ld bc, $027a
    xor d
    nop
    nop
    nop
    adc l
    add hl, sp
    ld a, e
    ld [hl], a
    nop
    nop
    dec b
    ld hl, $39cb
    ld c, a
    ld c, [hl]
    inc b
    nop
    ld a, [$cb5a]
    add hl, sp
    rra
    ld bc, $0000
    push bc
    jr nz, @+$13

    ld hl, $425d
    nop
    nop
    or c
    dec a
    ld a, [$de5a]
    ld [hl], a
    nop
    nop
    ld a, [de]
    nop
    db $10
    jr @+$01

    ld a, a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    xor h
    nop
    ld d, c
    ld bc, $01f6
    ld [de], a
    ld bc, $0000
    add hl, bc
    add hl, hl
    or l
    ld e, [hl]
    nop
    nop
    and e
    jr nz, jr_00a_4b48

    ld sp, $4a0e
    nop
    nop
    add hl, bc
    add hl, hl
    ld c, $4a
    ld de, $0000
    nop
    dec bc
    nop
    dec sp
    ld bc, $1adf
    nop
    nop
    dec bc
    nop
    and b
    ld a, h
    jr jr_00a_4b3d

    nop

jr_00a_4b3d:
    nop
    xor h
    dec a
    and b
    ld a, h
    rst RST_18
    ld a, [de]
    nop
    nop
    ld [bc], a
    ld a, [hl]

jr_00a_4b48:
    ld e, $00
    ld a, a
    inc bc
    dec b
    nop
    inc de
    nop
    cp a
    nop
    rst RST_38
    ld bc, $30a3
    inc b
    ld d, c
    xor e
    ld e, c
    jr c, jr_00a_4bdb

    and h
    inc d
    pop de
    ld bc, $02f9
    rst RST_38
    inc bc
    and h
    inc d
    xor l
    ld bc, $5b39
    rst RST_38
    ld h, e
    dec b
    nop
    xor d
    nop
    adc $39
    jr jr_00a_4bd7

    dec b
    nop
    xor d
    nop
    ldh a, [rP1]
    adc $39
    and l
    inc d
    ld c, d
    add hl, hl
    nop
    inc bc
    ld [hl], e
    ld c, [hl]
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add hl, bc
    nop
    ld [de], a
    nop
    add hl, sp
    ld bc, $0000
    ld h, $00
    ld c, d
    add hl, hl
    ld d, d
    ld c, d
    nop
    nop
    dec bc
    ld bc, $0233
    add hl, sp
    inc bc
    nop
    nop
    rst RST_20
    nop
    ld [hl], e
    ld b, d
    add hl, sp
    ld c, e
    nop
    nop
    dec bc
    nop
    dec sp
    ld bc, $1adf
    nop
    nop
    dec bc
    nop
    and b
    ld a, h
    jr jr_00a_4bbd

    nop

jr_00a_4bbd:
    nop
    xor h
    dec a
    and b
    ld a, h
    rst RST_18
    ld a, [de]
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    sub c
    nop
    sub a
    dec d
    ld a, $16
    ld h, e
    inc c
    and e

jr_00a_4bd7:
    ld bc, $0247
    db $ec

jr_00a_4bdb:
    ld [bc], a
    or l
    ld d, [hl]
    and l
    inc e
    inc d
    nop
    rst RST_38
    ld a, a
    nop
    nop
    sub c
    nop
    ld a, b
    ld bc, $431f
    nop
    nop
    ld hl, $c604
    jr z, jr_00a_4c5e

    ld b, c
    nop
    nop
    inc c
    nop
    xor $00
    sub [hl]
    ld bc, $43ff
    add e
    db $10
    sub l
    ld bc, $45ef
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    rst RST_28
    dec a
    sub $5a
    ld c, [hl]
    ld bc, $0000
    inc b
    nop
    call z, $9d00
    ld c, [hl]
    nop
    nop
    jr nz, jr_00a_4c9d

    rst RST_28
    dec a
    ld c, [hl]
    ld bc, $0000
    jr nz, jr_00a_4ca5

    call z, $9d00
    ld c, [hl]
    nop
    nop
    nop
    ld d, b
    inc d
    nop
    jr c, jr_00a_4c9b

    nop
    nop
    nop
    ld d, b
    db $10
    ld b, d
    jr c, @+$69

    nop
    nop
    nop
    ld d, b
    jr nz, jr_00a_4cbf

    jr c, jr_00a_4cab

    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld l, e
    dec l
    ld d, d
    ld c, d
    jp z, RST_00

    nop
    rst RST_18
    ld a, [de]
    ld c, b
    nop
    add hl, de
    ld a, $00
    nop

jr_00a_4c5e:
    and b
    ld l, h
    ld l, e
    dec l
    jp z, RST_00

    nop
    and b
    ld l, h
    adc d
    nop
    ld a, [de]
    ld a, $00
    nop
    dec bc
    nop
    dec sp
    ld bc, $1adf
    nop
    nop
    dec bc
    nop
    and b
    ld a, h
    jr jr_00a_4c7d

    nop

jr_00a_4c7d:
    nop
    xor h
    dec a
    and b
    ld a, h
    rst RST_18
    ld a, [de]
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    rst RST_28
    dec a
    sub $5a
    ld c, [hl]
    ld bc, $0000
    sbc l
    ld c, [hl]
    call z, $ff00

jr_00a_4c9b:
    inc bc
    nop

jr_00a_4c9d:
    nop
    rst RST_38
    inc bc
    rst RST_28
    dec a
    jr jr_00a_4d07

    add l

jr_00a_4ca5:
    inc c
    nop
    ld e, h
    xor l
    dec a
    ld a, e

jr_00a_4cab:
    ld e, e
    nop
    nop
    sbc l
    ld c, [hl]
    call z, $0400
    nop
    nop
    nop
    db $dd
    nop
    db $10
    ld b, d
    jr jr_00a_4d1f

    nop
    nop
    db $dd

jr_00a_4cbf:
    nop
    rst RST_38
    inc bc
    jr jr_00a_4d27

    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    dec bc
    nop
    rla
    nop
    dec a
    dec [hl]
    inc c
    nop
    nop
    nop
    db $10
    ld b, d
    rst RST_38
    ld a, a
    nop
    nop
    ld l, e
    dec l
    ld [hl], e
    ld c, [hl]
    rst RST_38
    inc sp
    nop
    nop
    sub b
    nop
    ccf
    ld bc, $33ff
    nop
    nop
    ld l, e
    dec l
    rla
    nop
    inc a
    ld bc, $0017
    add hl, bc
    nop
    ret c

    ld [bc], a
    rst RST_38
    ld l, e
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    ld [bc], a

jr_00a_4d07:
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    dec bc
    nop
    rla
    nop
    dec a
    dec [hl]
    inc c
    nop
    nop
    nop
    db $10
    ld b, d
    rst RST_38
    ld a, a
    nop
    nop
    ld l, e

jr_00a_4d1f:
    dec l
    ld [hl], e
    ld c, [hl]
    rst RST_38
    inc sp
    nop
    nop
    rlca

jr_00a_4d27:
    ld b, c
    and l
    ld a, c
    dec a
    dec d
    nop
    nop
    ld l, e
    dec l
    rla
    nop
    inc a
    ld bc, $0017
    jp hl


    inc d
    ret c

    ld [bc], a
    rst RST_38
    ld l, e
    nop
    nop
    rlca
    ld b, c
    dec a
    dec d
    ccf
    dec sp
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld b, c
    inc c
    inc e
    nop
    ld e, h
    ld [bc], a
    ld a, [de]
    ld e, e
    ld b, c
    inc c
    jr nc, jr_00a_4d64

    dec d
    ld hl, $3c09
    ld b, c
    inc c
    ld d, b
    add hl, sp
    ld [hl], h
    jr nz, jr_00a_4d7d

    ld e, e

jr_00a_4d64:
    ld b, c
    inc c
    ld c, [hl]
    dec l
    ld [hl], b
    db $10
    ld a, [de]
    ld e, e
    ld b, c
    inc c
    add hl, bc
    inc a
    ld [de], a
    ld a, [hl-]
    ld a, [de]
    ld e, e
    ld b, e
    nop
    ld e, d
    nop
    ccf
    ld bc, $5b1a
    ld b, e

jr_00a_4d7d:
    nop
    ld e, d
    nop
    ccf
    ld bc, $290c
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    rlca
    nop
    dec l
    nop
    sub a
    nop
    nop
    nop
    dec l
    nop
    dec c
    add hl, sp
    sub a
    nop
    nop
    nop
    and a
    inc d
    adc h
    ld sp, $56b5
    ld b, d
    ld [$002d], sp
    ld c, d
    add hl, hl
    sub $5a
    and a
    inc d
    nop
    ld a, h
    ld c, b
    ld [hl], c
    ld [hl], e
    ld c, [hl]
    nop
    nop
    ld l, $19
    xor d
    nop
    ld sp, $0046
    nop
    dec hl
    nop
    and a
    inc d
    ld c, $3a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld de, $9419
    ld d, d
    adc h
    ld sp, $0000
    adc h
    ld sp, $5294
    add hl, sp
    ld h, a
    nop
    nop
    ld de, $8c19
    ld sp, $21fa
    nop
    nop
    ld de, $9b19
    ld b, d
    ld a, [$0021]
    nop
    ld de, $9f19
    ld h, a
    ld a, [$0021]
    nop
    xor h
    jr @+$21

    ld de, $001f
    nop
    nop
    ld de, $d919
    ld bc, $2d89
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    sub h
    jr nc, @+$01

    ld d, c
    sbc a
    ld l, d
    nop
    nop
    sub h
    jr nc, @+$01

    ld d, c
    ld de, $0019
    nop
    call $b341
    ld e, d
    ld a, d
    ld a, e
    nop
    nop
    sub h
    jr nc, @+$01

    ld d, c
    or e
    ld e, d
    nop
    nop
    call $b341
    ld e, d
    rst RST_38
    ld d, c
    nop
    nop
    call $b341
    ld e, d
    ld de, $0019
    nop
    ld de, $d919
    ld bc, $41cd
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    or [hl]
    dec d
    ld e, $1f
    dec hl
    nop
    nop
    nop
    ld c, $04
    db $db
    dec l
    rra
    ld d, e
    nop
    nop
    dec hl
    nop
    db $10
    ld [$40be], sp
    nop
    nop
    cp [hl]
    ld b, b
    db $db
    dec l
    rra
    ld d, e
    nop
    nop
    ld a, [hl+]
    nop
    db $10
    ld [$531f], sp
    nop
    nop
    inc bc
    nop
    db $10
    ld [$40be], sp
    nop
    nop
    dec hl
    nop
    ld de, $0301
    nop
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    or [hl]
    dec d
    ld e, $1f
    ld c, d
    add hl, hl
    nop
    nop
    ld c, $04
    db $db
    dec l
    rra
    ld d, e
    nop
    nop
    inc d
    inc d
    cp [hl]
    ld b, b
    rra
    ld d, e
    nop
    nop
    inc d
    inc d
    cp [hl]
    ld b, b
    ld c, d
    add hl, hl
    nop
    nop
    db $db
    dec l
    rra
    ld d, e
    ld c, d
    add hl, hl
    nop
    nop
    or l
    ld d, [hl]
    ld c, d
    add hl, hl
    adc $39
    nop
    nop
    xor d
    nop
    ld [hl], b
    add hl, de
    jr c, jr_00a_4ef6

    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    or [hl]
    dec d
    ld e, $1f
    add hl, de
    jr z, jr_00a_4ed5

jr_00a_4ed5:
    nop
    ld c, $04
    db $db
    dec l
    rra
    ld d, e
    nop
    nop
    cp [hl]
    ld b, b
    db $db
    dec l
    rra
    ld d, e
    nop
    nop
    cp [hl]
    ld b, b
    db $10
    ld [$01ff], sp
    nop
    nop
    cp [hl]
    ld b, b
    rra
    ld a, h
    add hl, de
    jr z, jr_00a_4ef5

jr_00a_4ef5:
    nop

jr_00a_4ef6:
    adc h
    inc e

jr_00a_4ef8:
    add hl, de
    jr z, jr_00a_4ef8

    ld bc, $0000
    cp [hl]
    ld b, b

jr_00a_4f00:
    add hl, de
    jr z, jr_00a_4f00

    ld bc, $0000
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    xor l
    dec [hl]
    ld [hl], e
    nop
    ld a, [$0000]
    nop
    xor l
    dec [hl]
    ld a, e
    ld l, a
    inc hl
    ld [hl], l
    nop
    nop
    db $ec
    inc d
    ld a, [de]
    ld a, [hl+]
    ccf
    ld d, a
    nop
    nop
    xor l
    dec [hl]
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld h, b
    ld b, b
    nop
    ld a, [hl]
    xor l
    dec [hl]
    nop
    nop
    rra
    ld a, h
    nop
    ld a, [hl]
    inc hl
    ld [hl], l
    nop
    inc a
    and c
    ld h, h
    and a
    ld a, l
    rst RST_38
    ld [hl], e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    xor l
    dec [hl]
    ld c, d
    add hl, hl
    sub $5a
    nop
    nop
    xor $08
    reti


    ld c, d
    ld [hl-], a
    ld d, d
    nop
    nop
    ld c, $00
    sbc a
    ld bc, $573f
    nop
    nop
    xor l
    dec [hl]
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld e, c
    ld bc, $03ff
    xor l
    dec [hl]
    nop
    nop
    jr nc, jr_00a_4fba

    ld e, c
    ld l, e
    stop
    add $18
    adc $39
    or l
    ld d, [hl]
    rst RST_38
    ld [hl], e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    rst RST_20
    inc e
    xor l
    dec [hl]
    jr jr_00a_4ff7

    nop
    nop
    sub b
    inc b
    dec [hl]
    add hl, de
    ld [$0021], sp
    nop
    jr nz, jr_00a_501d

    xor l
    dec [hl]
    jr jr_00a_5007

    or c
    ld [$1935], sp
    sbc c
    add hl, hl
    inc e
    ld a, [hl-]
    nop
    nop
    add hl, sp
    ld a, a
    sbc c
    add hl, hl
    inc e
    ld a, [hl-]
    nop
    nop
    jr nz, @+$7f

    sbc c
    add hl, hl

jr_00a_4fba:
    inc e
    ld a, [hl-]
    nop
    nop
    nop
    ld d, h
    jr nz, jr_00a_503f

    add hl, sp
    ld a, a
    ld bc, $0200
    ld a, [hl]
    dec e
    nop
    ld a, a
    inc bc
    nop
    nop
    rst RST_20
    inc e
    xor l
    dec [hl]
    jr jr_00a_5037

    nop
    nop
    sub b
    inc b
    dec [hl]
    add hl, de
    ld [$0021], sp
    nop
    rst RST_38
    inc bc
    xor l
    dec [hl]
    jr jr_00a_5047

    or c
    ld [$1935], sp
    sbc c
    add hl, hl
    inc e
    ld a, [hl-]
    nop
    nop
    sbc h
    ld h, a
    sbc c
    add hl, hl
    inc e
    ld a, [hl-]
    nop
    nop
    rst RST_38

jr_00a_4ff7:
    inc bc
    sbc c
    add hl, hl
    inc e
    ld a, [hl-]
    nop
    nop
    db $dd
    nop
    rst RST_38
    inc bc
    sbc h
    ld h, a
    ld bc, $0200

jr_00a_5007:
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    jr z, @+$3b

    sub e
    ld h, [hl]
    cp e
    ld a, a
    ld b, $04
    inc de
    inc a
    inc e
    ld e, l
    ld e, a
    ld [bc], a
    nop

jr_00a_501d:
    nop
    ld de, $0000
    ld bc, $0225
    nop
    nop
    ld l, $00
    ld d, h
    ld bc, $031f
    nop
    nop
    ld h, e
    inc c
    add $18
    add hl, hl
    ld hl, $14a5
    and l

jr_00a_5037:
    inc l
    adc h
    ld c, c
    sub $7e
    nop
    nop
    dec bc

jr_00a_503f:
    inc h
    inc de
    ld b, h
    inc e
    ld e, l
    nop
    nop
    ld [bc], a

jr_00a_5047:
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add $18
    and l
    ld [$7bde], sp
    nop
    nop
    adc h
    ld sp, $5294
    rst RST_38
    ld a, a
    nop
    nop
    ld b, d
    ld bc, $01f6
    sbc $7b
    nop
    nop
    ld b, d
    ld bc, $00c0
    sbc $7b
    nop
    nop
    adc h
    ld sp, $31f7
    sbc $7b
    nop
    nop
    nop
    inc bc
    ld h, b
    ld bc, $01ab
    nop
    nop
    ld sp, $5615
    dec e
    and b
    ld bc, $0000
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    rra
    nop
    and b
    ld b, $ff
    ld a, a
    nop
    nop
    ld [hl], b
    nop
    ld b, e
    ld bc, $06a0
    nop
    nop
    ld [hl], b
    nop
    cp [hl]
    inc bc
    rst RST_28
    dec a
    ld [bc], a
    nop
    ld [hl], b
    nop
    and b
    ld b, $1f
    ld bc, $0000
    ld b, e
    ld bc, $06a0
    rst RST_28
    dec a
    nop
    nop
    ld [hl], b
    nop
    cp [hl]
    inc bc
    and b
    ld b, $00
    nop
    ld [hl], b
    nop
    cp [hl]
    inc bc
    rst RST_38
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    adc d
    ld [hl], d
    jr nz, jr_00a_5112

    jr nz, jr_00a_5151

    nop
    nop
    ld [hl-], a
    ld [hl], b
    ld a, [hl+]
    ld h, b
    nop
    ld l, b
    nop
    nop
    ld b, b
    ld bc, $0280
    ldh [$ff03], a
    nop
    nop
    jr z, jr_00a_50e8

jr_00a_50e8:
    db $ed
    db $10
    jr nz, jr_00a_5155

    nop
    nop
    dec hl
    dec h
    pop de
    add hl, sp
    ld d, [hl]
    ld c, [hl]
    nop
    nop
    ld h, b
    ld bc, $1e60
    ld h, b
    ld [hl], b
    nop
    nop
    nop
    ld d, b
    jr nz, jr_00a_517f

    add hl, sp
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    adc d
    ld [hl], d
    jr nz, @+$42

jr_00a_5112:
    jr nz, @+$7f

    nop
    nop
    ld [hl-], a
    ld [hl], b
    ld a, [hl+]
    ld h, b
    nop
    ld l, b
    nop
    nop
    ld b, b
    ld bc, $0280
    ldh [$ff03], a
    nop
    nop
    jr z, jr_00a_5128

jr_00a_5128:
    db $ed
    db $10
    jr nz, jr_00a_5195

    nop
    nop
    dec hl
    dec h
    pop de
    add hl, sp
    ld d, [hl]
    ld c, [hl]
    nop
    nop
    ld h, b
    ld bc, $1e60
    rst RST_38
    inc bc
    nop
    nop
    db $dd
    nop
    rst RST_38
    inc bc
    add hl, sp
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    sub b
    nop
    sbc b

jr_00a_5151:
    ld bc, $6861
    nop

jr_00a_5155:
    nop
    sub b
    nop
    jr nz, @+$81

    ld h, c
    ld l, b
    nop
    nop
    sub b
    nop
    ldh [rSB], a
    ld c, $7b
    nop
    nop
    ld d, d
    ld a, $bd
    ld [hl], e
    ld h, c
    ld l, b
    nop
    nop
    dec d
    nop
    dec a
    ld bc, $2c00
    nop
    nop
    dec d
    nop
    ld d, d
    ld a, $ce
    nop
    nop
    nop
    nop

jr_00a_517f:
    inc l
    ld d, d
    ld a, $61
    ld l, b
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld b, d
    ld [$4631], sp
    jr jr_00a_51f5

    ld [hl], d
    add hl, bc
    nop

jr_00a_5195:
    nop
    inc b
    nop
    ld c, $01
    cp [hl]
    ld d, d
    ld b, d
    ld [$294a], sp
    ld sp, $1846
    ld h, e
    nop
    nop
    xor [hl]
    ld b, l
    pop af
    nop
    sbc a
    ld d, e
    nop
    nop
    jr jr_00a_5213

    ld [hl], d
    add hl, bc
    jr nz, jr_00a_51b6

    nop
    nop

jr_00a_51b6:
    ld l, c
    nop
    jr nz, jr_00a_5237

    xor l
    ld sp, $0000
    jr nz, @+$3f

    jr nz, jr_00a_523f

    ld a, e
    ld [hl], e
    ld bc, $0200
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld b, d
    ld [$4631], sp
    jr jr_00a_5235

    ld [hl], d
    add hl, bc
    nop
    nop
    inc b
    nop
    ld c, $01
    cp [hl]
    ld d, d
    ld b, d
    ld [$294a], sp
    ld sp, $1846
    ld h, e
    nop
    nop
    xor [hl]
    ld b, l
    pop af
    nop
    sbc a
    ld d, e
    nop
    nop
    jr jr_00a_5253

    ld [hl], d
    add hl, bc
    jr nz, jr_00a_51f6

    nop

jr_00a_51f5:
    nop

jr_00a_51f6:
    ld l, c
    nop
    rst RST_38
    inc bc
    xor l
    ld sp, $0000
    db $dd
    nop
    rst RST_38
    inc bc
    rst RST_18
    ld h, e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    add b
    nop
    ld l, c
    nop
    pop af
    nop
    cp a

jr_00a_5213:
    ld a, [hl+]
    nop
    nop
    ld sp, $f746
    ld e, [hl]
    cp l
    ld [hl], a
    nop
    nop
    rst RST_20
    inc e
    ld l, e
    dec l
    ld sp, $0046
    nop
    nop
    ld bc, $01c0
    ret nz

    ld a, [bc]
    inc bc
    nop
    pop af
    nop
    db $fc
    ld bc, $0ac0
    nop

jr_00a_5235:
    nop
    db $fc

jr_00a_5237:
    ld bc, $01c0
    ret nz

    ld a, [bc]
    nop
    nop
    ret nz

jr_00a_523f:
    ld a, [bc]
    db $fc
    ld bc, $6b5c
    nop
    nop

jr_00a_5246:
    ld [bc], a
    ld a, [hl]
    dec e
    nop
    ld a, a
    inc bc
    nop
    nop
    add hl, bc
    nop
    adc a
    nop
    rst RST_18

jr_00a_5253:
    ld bc, $0000
    ld c, d
    add hl, hl
    db $10
    ld b, d
    or l
    ld d, [hl]
    jp nz, Jump_00a_4608

    add hl, de
    adc b
    ld hl, $025c
    nop
    nop

jr_00a_5266:
    ret nz

    nop
    ld b, b
    ld bc, $01c0
    inc bc
    nop
    ld c, b
    nop
    ld l, e
    ld [$1d10], sp
    nop
    nop
    dec bc
    inc l
    rla
    ld e, h
    rra
    ld a, h
    nop
    nop
    dec bc
    inc l
    rla
    ld e, h
    rra
    ld a, h
    nop
    nop
    ld [bc], a
    ld a, [hl]
    dec e
    nop
    ld a, a
    inc bc
    nop
    nop
    ld a, [bc]
    nop
    ret nc

    nop
    or a
    ld bc, $0000
    rst RST_20
    jr z, jr_00a_5246

    ld b, c
    or l
    ld h, d
    nop
    nop
    ld b, e
    ld bc, $01e2
    ret nz

    ld a, [bc]
    nop
    nop
    ld a, [bc]

jr_00a_52a7:
    nop
    ret nc

    nop
    ret nz

    ld a, [bc]
    nop
    nop
    ld b, e
    ld bc, $00d0
    or a
    ld bc, $0000
    rst RST_20
    jr z, jr_00a_5266

    ld b, c
    ret nc

    nop
    nop
    nop
    ld l, e
    dec l
    or l
    ld d, [hl]
    sbc h
    ld [hl], e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    dec e
    nop
    ld a, a
    inc bc
    nop
    nop

jr_00a_52ce:
    add hl, bc
    nop
    adc a
    nop
    rst RST_18
    ld bc, $0000
    ret


    jr jr_00a_52a7

    add hl, sp
    ld [hl], e
    ld c, [hl]
    ret


    jr jr_00a_52ce

    jr jr_00a_5336

    dec h
    ld e, h
    ld [bc], a
    nop
    nop
    ret nz

    nop
    ld b, b
    ld bc, $01c0
    inc bc
    nop
    ret


    jr jr_00a_531e

    nop
    ld [hl], c
    dec h
    call nc, $c97e
    jr jr_00a_5350

    ld b, [hl]
    ld a, h
    ld l, a
    nop
    nop
    xor e
    db $10
    adc $39
    rst RST_28
    jr jr_00a_5305

jr_00a_5305:
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld c, b
    nop
    call $ff08
    dec l
    nop
    nop
    rst RST_20
    inc h
    adc $45
    sub $5e
    nop
    nop

jr_00a_531e:
    ld [hl], l
    nop
    dec a
    ld bc, $2dff
    nop
    nop
    add hl, hl
    dec h
    jr jr_00a_5391

    rst RST_38
    dec l
    nop
    nop
    jr jr_00a_5397

    dec a
    ld bc, $2dff
    nop
    nop

jr_00a_5336:
    ld a, [hl+]
    dec h
    ld sp, $bd46
    ld [hl], a
    nop
    nop
    and b
    ld e, c
    ret nz

    ld a, [hl]
    cp l
    ld [hl], a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    jr z, @+$23

jr_00a_5350:
    ld [hl], e
    ld b, [hl]
    sbc h
    ld l, e
    nop
    nop
    ld b, b
    ld bc, $0280
    ldh [$ff03], a
    nop
    nop
    jr z, @+$23

    add b
    ld [bc], a
    cp l
    ld [hl], a
    nop
    nop
    nop
    ld a, h
    ld sp, $de7f
    ld a, e
    nop
    nop
    ret nc

    ld [$11b8], sp
    ld a, l
    ld [hl], $00
    nop
    jr z, @+$23

    adc h
    ld sp, $0014
    nop
    nop
    nop
    ld d, b
    jr nz, jr_00a_53ff

    cp a
    ld e, a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    jr z, @+$23

    ld [hl], e

jr_00a_5391:
    ld b, [hl]
    sbc h
    ld l, e
    nop
    nop
    ld b, b

jr_00a_5397:
    ld bc, $0280
    ldh [$ff03], a
    nop
    nop
    jr z, jr_00a_53c1

    add b
    ld [bc], a
    cp l
    ld [hl], a
    nop
    nop
    nop
    ld a, h
    ld sp, $de7f
    ld a, e
    nop
    nop
    ret nc

    ld [$11b8], sp
    ld a, l
    ld [hl], $00
    nop
    jr z, jr_00a_53d9

    adc h
    ld sp, $0014
    nop
    nop
    db $dd
    nop
    rst RST_38

jr_00a_53c1:
    inc bc
    cp a
    ld e, a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld a, l
    ld [bc], a
    di
    nop
    rst RST_38
    ld a, a
    nop
    nop
    ld l, e
    dec l
    ld [hl], e

jr_00a_53d9:
    ld c, [hl]
    jr jr_00a_543f

    nop
    nop
    ld a, l
    ld [bc], a
    pop af
    nop
    or b
    nop
    nop
    nop
    jr z, jr_00a_53e8

jr_00a_53e8:
    jp c, $b001

    nop
    nop
    nop
    jp c, $ff01

    ld a, a
    or b
    nop
    nop
    nop
    jr z, jr_00a_53f8

jr_00a_53f8:
    jp c, $ff01

    ld a, a
    nop
    nop
    cpl

jr_00a_53ff:
    ld bc, $0218
    rst RST_38
    ld a, a
    ld bc, $0200
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    call nc, $1f00
    ld [bc], a
    rra
    ld e, e
    nop
    nop
    ld d, c
    ld bc, $6739
    sbc h
    ld [hl], e
    nop
    nop
    ld l, l
    dec h
    rra
    ld [bc], a
    rst RST_30
    ld e, [hl]
    nop
    nop
    call nc, $1f00
    ld [bc], a
    sbc h
    ld [hl], e
    nop
    nop
    ld l, e
    dec l
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    stop
    adc h
    ld sp, $739c
    nop
    nop
    add hl, bc

jr_00a_543f:
    nop
    ld e, c
    ld bc, $739c
    ld bc, $0200
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add hl, de
    nop
    ld [$ff21], sp
    ld a, a
    ld sp, $1946
    nop
    ld [$ff21], sp
    ld a, a
    ld c, [hl]
    ld [$00ff], sp
    ld [hl], e
    ld c, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    sub $01
    ld d, d
    ld c, d
    rst RST_38
    ld a, a
    ld d, d
    ld c, d
    ld sp, hl
    nop
    ld c, d
    add hl, hl
    rst RST_38
    ld a, a
    nop
    nop
    add hl, de
    nop
    db $10
    ld b, d
    rst RST_38
    ld a, a
    nop
    nop
    dec c
    nop
    db $dd
    ld bc, $7fff
    ld bc, $0200
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    xor a
    nop
    ld [hl-], a
    ld b, d
    rst RST_38
    ld a, a
    nop
    nop
    rst RST_38
    inc bc
    adc h
    ld sp, $4a52
    nop
    nop
    xor a
    nop
    halt
    ld bc, $027f
    nop
    nop
    ld d, c
    nop
    dec e
    ld c, b
    rst RST_38
    ld a, a
    nop
    nop
    ld d, c
    nop
    halt
    ld bc, $4232
    nop
    nop
    rst RST_38
    inc bc
    dec e
    ld c, b
    rst RST_38
    ld a, a
    nop
    nop
    rst RST_38
    inc bc
    ld d, d
    ld c, d
    rst RST_38
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    rst RST_30
    ld e, [hl]
    rst RST_38
    ld a, a
    rra
    inc bc
    nop
    nop
    ld sp, $f746
    ld e, [hl]
    db $dd
    ld [bc], a
    nop
    nop
    adc h
    ld sp, $4631
    sbc e
    ld [bc], a
    nop
    nop
    rst RST_30
    ld e, [hl]
    ld [hl], h
    ld bc, $02dd
    nop
    nop
    adc h
    ld sp, $5ef7
    nop
    ld e, b
    nop
    nop
    rst RST_38
    ld a, a
    rst RST_30
    ld e, [hl]
    inc d
    nop
    nop
    nop
    ld sp, $f746
    ld e, [hl]
    inc d
    nop
    ld bc, $0200
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    rst RST_30
    ld e, [hl]
    rst RST_38
    ld a, a
    rra
    inc bc
    nop
    nop
    ld sp, $f746
    ld e, [hl]
    db $dd
    ld [bc], a
    nop
    nop
    adc h
    ld sp, $4631
    sbc e
    ld [bc], a
    nop
    nop
    rst RST_30
    ld e, [hl]
    ld [hl], h
    ld bc, $02dd
    nop
    nop
    adc h
    ld sp, $5ef7
    nop
    ld e, b
    nop
    nop
    rst RST_38
    ld a, a
    rst RST_30
    ld e, [hl]
    inc d
    nop
    nop
    nop
    ld sp, $f746
    ld e, [hl]
    inc d
    nop
    ld bc, $0200
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld a, a
    inc bc
    rst RST_38
    ld a, a
    ret nz

    ld h, b
    nop
    nop
    or a
    nop
    rst RST_38
    ld a, a
    ret nz

    ld h, b
    nop
    nop
    ret nc

    nop
    ret nz

    ld h, b
    rst RST_18
    ld [bc], a
    nop
    nop
    ret nz

    ld h, b
    nop
    ld a, [hl]
    nop
    jr c, jr_00a_556d

jr_00a_556d:
    nop
    ret nz

    ld h, b
    rst RST_18
    ld d, d
    rst RST_38
    ld a, a
    nop
    nop
    ret nc

    nop
    cp a
    ld a, [hl+]
    rst RST_38
    ld a, a
    nop
    nop
    ret nz

    ld h, b
    add b
    ld a, l
    ret nz

    ld a, [hl]
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld d, $00
    rra
    ld [bc], a
    rst RST_38
    ld a, a
    nop
    nop
    ld d, $00
    rra
    ld [bc], a
    rra
    nop
    nop
    nop
    rlca
    nop
    stop
    rra
    nop
    nop
    nop
    ld d, $00
    rlca
    nop
    stop
    nop
    nop
    rra
    nop
    rra
    ld [bc], a
    rst RST_38
    ld a, a
    nop
    nop
    stop
    rra
    ld c, h
    rra
    nop
    nop
    nop
    ldh [$ff59], a
    rst RST_38
    ld a, a
    rra
    nop
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    dec c
    nop
    inc sp
    ld c, d
    rst RST_38
    ld a, a
    nop
    nop
    dec c
    nop
    ld d, $00
    inc sp
    ld c, d
    nop
    nop
    dec c
    nop
    ld d, $00
    rst RST_38
    ld a, a
    nop
    nop
    dec c
    nop
    ld d, $00
    inc [hl]
    ld b, b
    nop
    nop
    inc sp
    ld c, d
    ld d, $00
    rst RST_38
    ld a, a
    nop
    nop
    dec c
    nop
    rst RST_38
    ld a, a
    inc [hl]
    ld b, b
    nop
    nop
    dec c
    nop
    inc [hl]
    ld b, b
    inc sp
    ld c, d
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld a, [bc]
    nop
    dec bc
    ld bc, $010e
    nop
    nop
    ld a, [bc]
    nop
    dec bc
    ld bc, $39ce
    nop
    nop
    ld a, [bc]
    nop
    dec bc
    ld bc, $0005
    nop
    nop
    inc c
    nop
    ld c, [hl]
    ld bc, $4610
    nop
    nop
    inc c
    nop
    ld c, [hl]
    ld bc, $5ef7
    nop
    nop
    inc c
    nop
    ld c, [hl]
    ld bc, $7fff
    nop
    nop
    ld a, [bc]
    nop
    inc [hl]
    ld b, b
    rst RST_38
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld a, [bc]
    nop
    dec bc
    ld bc, $010e
    nop
    nop
    ld a, [bc]
    nop
    dec bc
    ld bc, $39ce
    nop
    nop
    ld a, [bc]
    nop
    dec bc
    ld bc, $0005
    nop
    nop
    inc c
    nop
    ld c, [hl]
    ld bc, $4610
    nop
    nop
    inc c
    nop
    ld c, [hl]
    ld bc, $5ef7
    nop
    nop
    inc c
    nop
    ld c, [hl]
    ld bc, $7fff
    nop
    nop
    ld a, [bc]
    nop
    inc [hl]
    ld b, b
    rst RST_38
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    dec c
    nop
    inc sp
    ld c, d
    rst RST_38
    ld a, a
    nop
    nop
    dec c
    nop
    ld d, $00
    inc sp
    ld c, d
    nop
    nop
    dec c
    nop
    ld d, $00
    rst RST_38
    ld a, a
    nop
    nop
    dec c
    nop
    ld d, $00
    inc [hl]
    ld b, b

jr_00a_56ac:
    nop
    nop
    inc sp
    ld c, d
    ld d, $00
    rst RST_38
    ld a, a
    nop
    nop
    dec c
    nop
    rst RST_38

jr_00a_56b9:
    ld a, a
    inc [hl]
    ld b, b
    nop
    nop
    dec c
    nop
    inc [hl]
    ld b, b
    inc sp
    ld c, d
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    xor b
    nop
    rra
    nop
    ld [de], a
    ld a, $00
    nop
    add sp, $38
    ld l, h
    ld b, c
    pop af
    ld c, c
    nop
    nop
    xor b
    nop
    ld a, [bc]
    jr c, @+$01

    ld a, a
    nop
    nop
    xor b
    nop
    ld a, [bc]
    jr c, jr_00a_56b9

    add hl, sp
    nop
    nop
    xor b
    nop
    rst RST_38
    ld a, a
    adc $39
    nop
    nop
    xor b
    nop
    rst RST_38
    ld a, a
    ld [hl], e
    ld c, [hl]
    nop
    nop
    xor b
    nop
    rst RST_38
    ld a, a
    dec [hl]
    ld [hl], $00
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add hl, bc
    nop
    sub e

jr_00a_5711:
    ld d, [hl]
    adc $39
    jp nc, $0d39

    jr nz, jr_00a_56ac

    ld d, [hl]
    adc $39
    nop
    nop
    add hl, bc
    nop
    dec c
    jr nz, jr_00a_5711

    dec sp
    nop
    nop
    add hl, bc
    nop

jr_00a_5728:
    add b
    ld a, l
    adc $39
    nop
    nop
    add hl, bc
    nop
    ld d, $00
    adc $39
    nop
    nop
    add hl, bc
    nop
    sub e
    ld d, [hl]
    rst RST_20
    inc e
    nop
    nop
    dec c
    jr nz, jr_00a_5728

    inc e
    adc $39
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld b, $38
    ld b, b
    ld c, d
    inc e
    ld d, a
    nop
    nop
    ld b, $38
    ld b, b
    ld c, d
    ld c, [hl]
    ld a, l
    nop
    nop
    ld b, $38
    ld b, b
    ld c, d
    sbc h
    ld [hl], e
    nop
    nop
    ld b, $38
    ld b, b
    ld c, d
    ld h, b
    dec l
    nop
    nop
    ld h, b
    dec l
    ld b, b
    ld c, d
    inc e
    ld d, a
    nop
    nop
    jr jr_00a_57ac

    ld b, b
    ld c, d
    sbc h
    ld [hl], e
    nop
    nop
    ld h, b
    dec l
    ld b, b
    ld c, d
    sbc h
    ld [hl], e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld b, $38
    ld b, b
    ld c, d
    inc e
    ld d, a
    nop
    nop
    ld b, $38
    ld b, b
    ld c, d
    ld c, [hl]
    ld a, l
    nop
    nop
    ld b, $38
    ld b, b
    ld c, d
    sbc h
    ld [hl], e
    nop
    nop
    ld b, $38
    ld b, b
    ld c, d
    ld h, b
    dec l

jr_00a_57ac:
    nop
    nop
    ld h, b
    dec l
    ld b, b
    ld c, d
    inc e
    ld d, a
    nop
    nop
    jr jr_00a_57ec

    ld b, b
    ld c, d
    sbc h
    ld [hl], e
    nop
    nop
    ld h, b
    dec l
    ld b, b
    ld c, d
    sbc h
    ld [hl], e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld a, [de]
    nop
    ld e, a
    ld [bc], a
    rst RST_38
    daa
    nop
    nop
    add hl, hl
    add hl, hl
    xor $41
    or $66
    nop
    nop
    ld l, h
    inc e
    ld d, c
    inc b
    ccf
    dec [hl]
    ld d, c
    inc b
    ccf
    dec [hl]
    ld e, e
    ld a, [hl-]
    ld a, a
    ld d, a

jr_00a_57ec:
    nop
    nop
    ld d, c
    inc b
    ccf
    dec [hl]
    ld e, e
    ld a, [hl-]
    nop
    nop
    ld a, [de]
    nop
    ld e, a
    ld [bc], a
    add hl, hl
    add hl, hl
    nop
    nop
    ld a, [de]
    nop
    ld e, a
    ld [bc], a
    ld d, c
    inc b
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    and [hl]
    db $10
    dec sp
    ld e, e
    inc d
    nop
    dec e
    inc bc
    and [hl]
    db $10
    ld a, [hl+]
    ld hl, $4232
    dec sp
    ld e, e
    nop
    nop
    xor l
    dec a
    rst RST_30
    ld h, [hl]
    cp l
    ld [hl], a
    nop
    nop
    dec sp
    ld e, e
    nop
    ld c, h
    add hl, hl
    ld a, l
    ld [hl-], a
    ld b, d
    ld c, $00
    inc d
    nop
    dec sp
    ld e, e
    ld [hl-], a
    ld b, d
    sub c
    ld bc, $031d
    dec sp
    ld e, e
    nop
    nop
    adc $00
    or [hl]
    dec d
    xor l
    dec a
    ld bc, $0200
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    rst RST_20
    inc e
    db $10
    ld b, d
    rst RST_38
    ld a, a
    ld c, b
    nop
    ld [hl], c
    ld bc, $02bb
    rst RST_38
    ld a, a
    nop
    nop
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    nop
    nop
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    nop
    nop
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    nop
    nop
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    nop
    nop
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld b, h
    db $10
    add $14
    xor l
    dec [hl]
    or l
    ld d, [hl]
    ld b, h
    db $10
    ld a, b
    add hl, de
    sbc a
    ld e, $df
    ld b, e
    nop
    nop
    ld b, h
    db $10
    ld a, b
    add hl, de
    sbc a
    ld e, $00
    nop
    ld a, b
    add hl, de
    xor l
    dec [hl]
    or l
    ld d, [hl]
    nop
    nop
    ld a, b
    add hl, de
    sbc a
    ld e, $e6
    inc e
    inc b
    jr jr_00a_58b7

jr_00a_58b7:
    jr c, jr_00a_58b9

jr_00a_58b9:
    ld h, h
    ld a, b
    add hl, de
    ld h, l
    inc d
    ld a, b
    add hl, de
    sbc a
    ld e, $00
    ld h, h
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    adc e
    dec [hl]
    rrca
    ld b, [hl]
    push de
    ld e, [hl]
    jr nz, jr_00a_58f6

    ret nz

    inc [hl]
    rst RST_38
    inc sp
    ldh [$ff7c], a
    jr nz, jr_00a_58fe

    adc e
    dec [hl]
    rrca
    ld b, [hl]
    push de
    ld e, [hl]
    jr nz, jr_00a_58fe

    ld h, b
    ld bc, $0240
    ret nc

    ld [bc], a
    rlca
    dec h
    ld h, b
    ld bc, $0240
    ret nc

    ld [bc], a
    nop
    nop

jr_00a_58f6:
    adc e
    dec [hl]
    ld c, c
    dec l
    push de
    ld e, [hl]
    and b
    nop

jr_00a_58fe:
    ret nz

    ld bc, $03e0
    ccf
    jr c, jr_00a_5905

jr_00a_5905:
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld [$0f00], sp
    nop
    ld d, $00
    rra
    nop
    rrca
    nop
    ld d, $00
    rra
    nop
    ld e, a
    ld bc, $0016
    rra
    nop
    ld e, a
    ld bc, $775f
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    rrca
    nop
    ld d, $00
    rra
    ld bc, $029f
    ld d, $00
    rra
    ld bc, $029f
    rst RST_38
    ld c, e
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld a, [bc]
    nop
    ld de, $5f00
    ld bc, $5a3f
    ld de, $5f00
    ld bc, $5a3f
    rst RST_38
    ld a, a
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    inc d
    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    adc $39
    sub h
    ld d, d
    rst RST_38
    ld a, a
    nop
    nop
    ccf
    inc bc
    or l
    nop
    cp a
    ld de, $0000
    sub h
    ld d, d
    ccf
    inc bc
    cp a
    ld de, $0000
    rst RST_20
    inc e
    ld l, e
    dec l
    adc $39
    nop
    nop
    ld l, e
    dec l
    ccf
    ld [bc], a
    rst RST_38
    ld a, a
    nop
    nop
    ld a, [de]
    nop
    ld h, b
    ld [bc], a
    rst RST_38
    ld a, a
    nop
    nop
    ld de, $df7c
    ld [bc], a
    rst RST_38
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld a, [de]
    nop
    ld e, a
    ld [bc], a
    rst RST_38
    daa
    nop
    nop
    add hl, hl
    add hl, hl
    xor $41
    or $66
    nop
    nop
    ld l, h
    inc e
    ld d, c
    inc b
    ccf
    dec [hl]
    ld d, c
    inc b
    ccf
    dec [hl]
    ld e, e
    ld a, [hl-]
    ld a, a
    ld d, a
    nop
    nop
    ld d, c
    inc b
    ccf
    dec [hl]
    ld e, e
    ld a, [hl-]
    nop
    nop
    ld a, [de]
    nop
    ld e, a
    ld [bc], a
    add hl, hl
    add hl, hl
    nop
    nop
    ld a, [de]
    nop
    ld e, a
    ld [bc], a
    ld d, c
    inc b
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld hl, sp+$5a
    jr c, jr_00a_5aab

    ld a, b
    ld e, e
    cp b
    ld e, e
    ld hl, sp+$5b
    jr c, jr_00a_5ab4

    ld a, b
    ld e, h
    cp b
    ld e, h
    ld hl, sp+$5c
    jr c, @+$5f

    ld a, b
    ld e, l
    cp b
    ld e, l
    ld hl, sp+$5d
    jr c, jr_00a_5ac6

    ld a, b
    ld e, [hl]
    cp b
    ld e, [hl]
    ld hl, sp+$5e
    jr c, @+$61

    ld a, b
    ld e, a
    cp b
    ld e, a
    ld hl, sp+$5f
    jr c, jr_00a_5ad8

    ld a, b
    ld h, b
    cp b
    ld h, b
    ld hl, sp+$60
    jr c, jr_00a_5ae1

    ld a, b
    ld h, c
    cp b
    ld h, c
    ld hl, sp+$61
    jr c, jr_00a_5aea

    ld a, b
    ld h, d
    cp b
    ld h, d
    ld hl, sp+$62
    jr c, jr_00a_5af3

    ld a, b
    ld h, e
    cp b
    ld h, e
    ld hl, sp+$63
    jr c, jr_00a_5afc

    ld a, b
    ld h, h
    cp b
    ld h, h
    ld hl, sp+$64
    jr c, jr_00a_5b05

    ld a, b
    ld h, l
    cp b
    ld h, l
    ld hl, sp+$65
    jr c, jr_00a_5b0e

    ld a, b
    ld h, [hl]
    cp b

jr_00a_5aab:
    ld h, [hl]
    ld hl, sp+$66
    jr c, jr_00a_5b17

    ld a, b
    ld h, a
    cp b
    ld h, a

jr_00a_5ab4:
    ld hl, sp+$67
    jr c, jr_00a_5b20

    ld a, b
    ld l, b
    cp b
    ld l, b
    ld hl, sp+$68
    jr c, @+$6b

    ld a, b
    ld l, c
    cp b
    ld l, c
    ld hl, sp+$69

jr_00a_5ac6:
    jr c, jr_00a_5b32

    ld a, b
    ld l, d
    cp b
    ld l, d
    ld hl, sp+$6a
    jr c, jr_00a_5b3b

    ld a, b
    ld l, e
    cp b
    ld l, e
    ld hl, sp+$6b
    jr c, jr_00a_5b44

jr_00a_5ad8:
    ld a, b
    ld l, h
    cp b
    ld l, h
    ld hl, sp+$6c
    jr c, jr_00a_5b4d

    ld a, b

jr_00a_5ae1:
    ld l, l
    cp b
    ld l, l
    ld hl, sp+$6d
    jr c, jr_00a_5b56

    ld a, b
    ld l, [hl]

jr_00a_5aea:
    cp b
    ld l, [hl]
    ld hl, sp+$6e
    jr c, jr_00a_5b5f

    ld a, b
    ld l, a
    cp b

jr_00a_5af3:
    ld l, a
    ld hl, sp+$6f
    jr c, jr_00a_5b68

    di
    add hl, bc
    ld b, l
    nop

jr_00a_5afc:
    ld l, b
    nop
    rlc h
    di
    add hl, bc
    nop
    nop
    ld c, h

jr_00a_5b05:
    nop
    sub h
    nop
    di
    add hl, bc
    ld b, d
    inc h
    ld l, e
    dec l

jr_00a_5b0e:
    ld [hl], e
    ld c, [hl]
    di
    add hl, bc
    nop
    nop
    or h
    nop
    ccf

jr_00a_5b17:
    ld [bc], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a

jr_00a_5b20:
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a

jr_00a_5b32:
    nop
    nop
    rra
    nop
    cp a
    ld bc, $7fe0
    nop

jr_00a_5b3b:
    nop
    push de
    ld e, d
    rst RST_38
    ld a, a
    rra
    ld a, h
    rra
    ld a, h

jr_00a_5b44:
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra

jr_00a_5b4d:
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h

jr_00a_5b56:
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra

jr_00a_5b5f:
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h

jr_00a_5b68:
    rra
    ld a, h
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $1f
    ld a, h
    nop
    nop
    rra
    nop
    cp a
    ld bc, $7fe0
    nop
    nop
    push de
    ld e, d
    rst RST_38
    ld a, a
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $1f
    ld a, h
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $7fe0
    nop
    nop
    push de
    ld e, d
    rst RST_38
    ld a, a
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $1f
    ld a, h
    nop
    nop
    rra
    nop
    cp a
    ld bc, $7fe0
    nop
    nop
    push de
    ld e, d
    rst RST_38
    ld a, a
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $1f
    ld a, h
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $7c00
    nop
    nop
    ld c, d
    add hl, hl
    rst RST_38
    ld a, a
    nop
    ld a, h
    nop
    nop
    db $10
    inc bc
    rst RST_38
    ld a, a
    nop
    ld a, h
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    ld a, h
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    ld a, h
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    ld a, h
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    ld a, h
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $00
    ld a, h
    nop
    nop
    rra
    nop
    cp a
    ld bc, $7c00
    nop
    nop
    adc $39
    rst RST_38
    ld a, a
    di
    nop
    sbc a
    ld a, [hl]
    jr jr_00a_5d5a

    rra
    nop
    nop
    ld a, h
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    ld a, h
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    ld a, h
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    ld a, h
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    ld a, h
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $00
    ld a, h
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e

jr_00a_5d5a:
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $7fe0
    nop
    nop
    rra
    nop
    sbc a
    ld a, a
    ldh [$ff7f], a
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    ldh [$ff7f], a
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    ldh [$ff7f], a
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    ldh [$ff7f], a
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    ldh [$ff7f], a
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $43ff
    nop
    nop
    ld [$9e34], sp
    ld e, h
    rst RST_18
    ld a, [de]
    nop
    nop
    ld a, [bc]
    dec e
    or h
    ld l, c
    rst RST_18
    ld a, [de]
    nop
    nop
    ld [$1808], sp
    nop
    ret nz

    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    ret nz

    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    nop
    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $ff
    ld b, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $43ff
    and l
    inc h
    xor a
    ld sp, $7bfe
    rst RST_38
    ld b, e
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $ff
    ld b, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $43ff
    and l
    inc h
    ld a, [$fe5a]
    ld a, e
    rst RST_38
    ld b, e
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $ff
    ld b, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $43ff
    nop
    nop
    ld [$9e34], sp
    ld e, h
    rst RST_18
    ld a, [de]
    nop
    nop
    ld a, [bc]
    dec e
    or h
    ld l, c
    rst RST_18
    ld a, [de]
    nop
    nop
    ld [$1808], sp
    nop
    ret nz

    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    ret nz

    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    nop
    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $ff
    ld b, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    nop
    nop
    ret nz

    ld a, l
    dec d
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $43ff
    nop
    nop
    ld [$9e34], sp
    ld e, h
    rst RST_18
    ld a, [de]
    nop
    nop
    ld a, [bc]
    dec e
    or h
    ld l, c
    rst RST_18
    ld a, [de]
    nop
    nop
    ld [$1808], sp
    nop
    ret nz

    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    ret nz

    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    nop
    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $ff
    ld b, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $43ff
    nop
    nop
    add $28
    ld l, e
    ld b, c
    rst RST_38
    ld b, e
    nop
    nop
    ld l, e
    ld b, c
    jr c, jr_00a_6209

    and e

jr_00a_6209:
    ld bc, $0000
    ld d, d
    dec c
    rst RST_38
    dec de
    nop
    nop
    sub c
    nop
    ld a, b
    ld bc, $431f
    nop
    nop
    ld hl, $c604
    jr z, jr_00a_628a

    ld b, c
    nop
    nop
    ld hl, $6b04
    ld b, c
    jr c, jr_00a_6229

    nop

jr_00a_6229:
    nop
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $ff
    ld b, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $43ff
    nop
    nop
    ld [$9e34], sp
    ld e, h
    rst RST_18
    ld a, [de]
    nop
    nop
    ld a, [bc]
    dec e
    or h
    ld l, c
    rst RST_18
    ld a, [de]

jr_00a_628a:
    nop
    nop
    ld [$1808], sp
    nop
    ret nz

    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    ret nz

    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    nop
    nop
    rlca
    ld e, $4d
    scf
    ld hl, sp+$63
    rst RST_38
    ld b, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $ff
    ld b, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $43ff
    ld hl, $1004
    ld b, d
    rst RST_38
    ld a, a
    rst RST_38
    ld b, e
    nop
    inc a
    nop
    ld h, b
    ldh [$ff7f], a
    rst RST_38
    ld b, e
    nop
    inc a
    nop
    ld h, b
    ldh [$ff7f], a
    rst RST_38
    ld b, e
    nop
    inc a
    nop
    ld h, b
    ldh [$ff7f], a
    rst RST_38
    ld b, e
    nop
    inc a
    nop
    ld h, b
    ldh [$ff7f], a
    rst RST_38
    ld b, e
    nop
    inc a
    nop
    ld h, b
    ldh [$ff7f], a
    rst RST_38
    ld b, e
    dec bc
    nop
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $ff
    ld b, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    nop
    nop
    adc h
    ld sp, $5ef7
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    nop
    nop
    adc h
    ld sp, $5ef7
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $03e0
    nop
    nop
    daa
    ld a, [bc]
    sbc $7b
    ldh [$ff03], a
    nop
    nop
    ld e, d
    ld l, e
    ld c, d
    add hl, hl
    ldh [$ff03], a
    nop
    nop
    sbc $7b
    rra
    nop
    ldh [$ff03], a
    nop
    nop
    sbc $7b
    db $db
    ld bc, $0000
    dec c
    inc b
    daa
    ld a, [bc]
    sbc $7b
    inc c
    jr nc, jr_00a_66f7

    ld d, b
    rra
    ld a, h
    sbc a
    ld a, [hl]
    ldh [$ff03], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    inc bc
    nop
    nop
    rra
    nop
    cp a

jr_00a_66f7:
    dec e
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $43ff
    nop
    nop
    ret nz

    ld a, l
    rst RST_38
    ld a, a
    rst RST_38
    ld b, e
    nop
    nop
    rst RST_30
    ld c, [hl]
    rst RST_38
    ld l, a
    rst RST_38
    ld b, e
    nop
    nop
    ld [hl], a
    ld d, d
    cp a
    ld [hl], a
    rst RST_38
    ld b, e
    nop
    inc a
    nop
    ld h, b
    ldh [$ff7f], a
    rst RST_38
    ld b, e
    nop
    inc a
    nop
    ld h, b
    ldh [$ff7f], a
    rst RST_38
    ld b, e
    nop
    inc a
    nop
    ld h, b
    ldh [$ff7f], a
    rst RST_38
    ld b, e
    dec bc
    nop
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $ff
    ld b, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra

jr_00a_688d:
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $7fe0
    nop
    nop
    rst RST_20
    jr z, jr_00a_688d

    ld b, l
    ldh [$ff7f], a
    nop
    nop
    ld d, h
    ld bc, $033f
    rra
    ld a, h
    nop
    nop
    nop
    ld [bc], a
    di
    inc bc
    rra
    ld a, h
    nop
    nop
    ldh [$ff7f], a
    ld a, e
    ld l, a
    ldh [$ff7f], a
    nop
    nop
    ld e, a
    ld [bc], a
    ld e, a
    ld l, a
    ldh [$ff7f], a
    nop
    nop
    ld l, $52
    ld a, e
    ld l, a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $0200
    nop
    nop
    sub h
    ld d, d
    rst RST_38
    ld a, e
    nop
    ld b, d
    nop
    nop
    add hl, hl
    dec h
    rst RST_38
    ld a, e
    inc c
    jr nc, jr_00a_691f

    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    inc c
    jr nc, jr_00a_6927

    ld d, b
    inc e
    ld [hl], b

jr_00a_6916:
    rst RST_38
    ld a, l
    inc c
    jr nc, jr_00a_692f

    ld d, b
    inc e
    ld [hl], b
    rst RST_38

jr_00a_691f:
    ld a, l
    inc c
    jr nc, jr_00a_6937

    ld d, b
    inc e
    ld [hl], b
    rst RST_38

jr_00a_6927:
    ld a, l
    inc c
    jr nc, jr_00a_6916

    inc c
    ld [hl], b
    dec e
    dec [hl]

jr_00a_692f:
    ld [hl], $0c
    jr nc, jr_00a_6933

jr_00a_6933:
    nop
    rra
    nop
    cp a

jr_00a_6937:
    ld bc, $03ff
    nop
    nop
    adc $45
    sub $5e
    rst RST_38
    inc bc
    nop
    nop
    ld [hl], b
    ld bc, $0278
    rst RST_38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld a, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld a, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld a, h
    rst RST_38
    inc bc
    ld a, [hl+]
    dec h
    nop
    ld b, b
    nop
    ld a, h
    rst RST_38
    inc bc
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $ff
    inc bc
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $7fff
    nop
    nop
    inc d
    jr c, jr_00a_6b3a

    ld e, c
    ldh [$ff03], a
    nop
    nop
    cp b
    ld [bc], a
    rst RST_38
    ld a, a
    ldh [$ff03], a
    nop
    nop
    ld d, l
    ld e, $ff
    ld a, a
    rst RST_38
    ld a, a
    nop
    nop
    pop hl
    ld a, [hl]
    sbc a
    ld a, [hl+]
    rst RST_38
    ld a, a
    nop
    nop
    ccf
    ld e, l
    ld a, a
    inc bc
    rst RST_38
    ld a, a
    nop
    nop
    jr z, jr_00a_6ae8

    ld sp, hl
    inc bc

jr_00a_6ae8:
    rst RST_38
    inc bc
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $ff
    inc bc
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f

jr_00a_6b3a:
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $0200
    nop
    nop
    rst RST_28
    ld b, l
    sbc h
    ld [hl], e
    inc c
    jr nc, jr_00a_6b97

    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    inc c
    jr nc, jr_00a_6b9f

    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    inc c
    jr nc, jr_00a_6ba7

    ld d, b
    inc e
    ld [hl], b
    rst RST_38

jr_00a_6b97:
    ld a, l
    inc c
    jr nc, jr_00a_6baf

    ld d, b
    inc e
    ld [hl], b
    rst RST_38

jr_00a_6b9f:
    ld a, l
    inc c
    jr nc, jr_00a_6bb7

    ld d, b
    inc e
    ld [hl], b
    rst RST_38

jr_00a_6ba7:
    ld a, l
    nop
    ld [bc], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]

jr_00a_6baf:
    ld [hl], $00
    ld [bc], a
    nop
    nop
    rra
    nop
    cp a

jr_00a_6bb7:
    ld bc, $0200
    nop
    nop
    dec a
    dec sp
    rst RST_38
    ld a, a
    inc c
    jr nc, jr_00a_6bd7

    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    inc c
    jr nc, jr_00a_6bdf

    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    inc c
    jr nc, jr_00a_6be7

    ld d, b
    inc e
    ld [hl], b
    rst RST_38

jr_00a_6bd7:
    ld a, l
    inc c
    jr nc, jr_00a_6bef

    ld d, b
    inc e
    ld [hl], b
    rst RST_38

jr_00a_6bdf:
    ld a, l
    inc c
    jr nc, jr_00a_6bf7

    ld d, b
    inc e
    ld [hl], b
    rst RST_38

jr_00a_6be7:
    ld a, l
    nop
    ld [bc], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]

jr_00a_6bef:
    ld [hl], $00
    ld [bc], a
    nop
    nop
    rra
    nop
    cp a

jr_00a_6bf7:
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $27ff
    ld a, [de]
    nop
    rst RST_38
    nop
    rst RST_38
    ld a, e
    rst RST_38
    daa
    jr z, jr_00a_6e2d

    ld d, e
    ld c, [hl]
    rra
    ld bc, $27ff
    nop
    nop
    ld sp, $1f01
    ld a, [hl-]
    rst RST_38
    daa
    add hl, bc
    nop
    rla
    db $10

jr_00a_6e16:
    ccf
    ld [bc], a
    rst RST_38
    daa
    nop
    nop
    ld [hl], b
    ld bc, $2abf
    inc c
    jr nc, jr_00a_6e37

    ld d, b
    inc e
    ld [hl], b
    rst RST_38
    ld a, l
    inc c
    jr nc, jr_00a_6e16

    inc c
    ld [hl], b

jr_00a_6e2d:
    dec e
    dec [hl]
    ld [hl], $0c
    jr nc, jr_00a_6e33

jr_00a_6e33:
    nop
    dec d
    nop
    cp a

jr_00a_6e37:
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $27ff
    nop
    nop
    ld a, [de]
    nop
    sbc a
    ld b, d
    rst RST_38
    daa
    nop
    nop
    ld a, [de]
    nop
    jp c, $ff02

    daa
    nop
    nop
    ld d, $01
    sbc a
    ld d, [hl]
    rst RST_38
    daa
    nop
    nop
    ld d, $01

jr_00a_7056:
    rst RST_00
    ld [bc], a
    rst RST_38
    daa
    nop
    nop
    or [hl]
    nop
    cp a
    ld c, [hl]
    rst RST_38
    daa
    nop
    nop
    or [hl]
    nop
    ld e, c
    ld [bc], a
    inc c
    jr nc, jr_00a_7056

    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $0c
    jr nc, jr_00a_7073

jr_00a_7073:
    nop
    rra
    nop
    cp a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
