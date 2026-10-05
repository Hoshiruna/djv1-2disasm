; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

    inc d
    ld b, c
    ld d, a
    ld b, c
    sbc d
    ld b, c
    xor l
    ld b, c
    ret nz

    ld b, c
    db $eb
    ld b, c
    ld d, $42
    dec a
    ld b, d
    ld h, h
    ld b, d
    ld [hl], a
    ld b, d
    adc d
    ld b, d
    sub l
    ld b, d
    and b
    ld b, d
    dec bc
    ld b, e
    halt
    ld b, e
    sbc c
    ld b, e
    cp h
    ld b, e
    rst RST_08
    ld b, e
    ldh [c], a
    ld b, e
    push af
    ld b, e
    ld [$5f44], sp
    ld b, h
    or [hl]
    ld b, h
    dec c
    ld b, l
    ld h, h
    ld b, l
    ld [hl], a
    ld b, l
    adc d
    ld b, l
    sbc l
    ld b, l
    or b
    ld b, l
    db $e3
    ld b, l
    ld d, $46
    ld c, l
    ld b, [hl]
    add h
    ld b, [hl]
    db $db
    ld b, [hl]
    ld [hl-], a
    ld b, a
    adc c
    ld b, a
    ldh [rBGP], a
    inc de
    ld c, b
    ld b, [hl]
    ld c, b
    ld a, c
    ld c, b
    xor h
    ld c, b
    rst RST_20
    ld c, b
    ld [hl+], a
    ld c, c
    ld e, l
    ld c, c
    sbc b
    ld c, c
    xor a
    ld c, c
    add $49
    push de
    ld c, c
    db $e4
    ld c, c
    rlca
    ld c, d
    ld a, [hl+]
    ld c, d
    ld e, a
    ld c, d
    sub h
    ld c, d
    call Call_000_064a
    ld c, e
    ccf
    ld c, e
    ld a, b
    ld c, e
    sub a
    ld c, e
    or [hl]
    ld c, e
    daa
    ld c, h
    sbc b
    ld c, h
    add hl, bc
    ld c, l
    ld a, d
    ld c, l
    sbc e
    ld c, l
    cp h
    ld c, l
    ei
    ld c, l
    ld a, [hl-]
    ld c, [hl]
    ld d, l
    ld c, [hl]
    ld [hl], b
    ld c, [hl]
    xor c
    ld c, [hl]
    ldh [c], a
    ld c, [hl]
    dec b
    ld c, a
    jr z, jr_029_40e1

    dec sp
    ld c, a
    ld c, [hl]
    ld c, a
    adc l
    ld c, a
    call z, Call_000_3f4f
    ld d, b
    or d
    ld d, b
    rst RST_00
    ld d, b
    call c, Call_000_0f50
    ld d, c
    ld b, d
    ld d, c
    ld l, c
    ld d, c
    sub b
    ld d, c
    and e
    ld d, c
    or [hl]
    ld d, c
    dec c
    ld d, d
    ld h, h
    ld d, d
    sub c
    ld d, d
    cp [hl]
    ld d, d
    db $eb
    ld d, d
    jr jr_029_410d

    ld c, e
    ld d, e
    ld a, [hl]
    ld d, e
    or c
    ld d, e
    db $e4
    ld d, e
    rst RST_30
    ld d, e
    ld a, [bc]
    ld d, h
    ld d, l
    ld d, h
    and b
    ld d, h
    bit 2, h
    or $54
    ld h, l
    ld d, l
    call nc, $0f55
    ld d, [hl]
    ld c, d
    ld d, [hl]
    ld l, e
    ld d, [hl]
    adc h
    ld d, [hl]
    and a
    ld d, [hl]
    jp nz, $e156

    ld d, [hl]
    nop

jr_029_40e1:
    ld d, a
    rra
    ld d, a
    ld a, $57
    ld a, l
    ld d, a
    cp h
    ld d, a
    push af
    ld d, a
    ld l, $58
    ld h, a
    ld e, b
    and b
    ld e, b
    xor a
    ld e, b
    cp [hl]
    ld e, b
    rst RST_18
    ld e, b
    nop
    ld e, c
    ld hl, $4259
    ld e, c
    or l
    ld e, c
    jr z, jr_029_415c

    ld h, a
    ld e, d
    and [hl]
    ld e, d
    push hl
    ld e, d
    inc h
    ld e, e
    inc sp
    ld e, e
    ld b, d

jr_029_410d:
    ld e, e
    ld d, c
    ld e, e
    ld h, b
    ld e, e
    ld [hl], e
    ld e, e
    cpl
    inc b
    ld [$8a89], sp
    adc d
    adc e
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    adc h
    adc l
    adc l
    adc [hl]
    add hl, bc
    ld c, $2e
    add hl, bc
    adc a
    sub b
    sub b
    sub c
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    adc h
    sub d
    sub d
    adc [hl]
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    adc h
    sub h
    sub h
    sub l
    add hl, bc
    add hl, bc
    add hl, hl
    ld c, $8f
    sub a
    sub a
    sub [hl]
    ld c, c
    add hl, bc
    add hl, hl
    ld c, $8c
    sbc b
    sbc b
    adc [hl]
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    adc c
    sub b
    sub b
    adc e
    ld c, c
    add hl, hl
    add hl, bc
    ld c, c
    cpl
    inc b
    ld [$ff9d], sp

jr_029_415c:
    rst RST_38
    sbc l
    add hl, bc
    ld c, $0e
    add hl, hl
    sbc l
    rst RST_38
    rst RST_38
    sbc l
    add hl, bc
    ld c, $0e
    add hl, hl
    sbc l
    rst RST_38
    rst RST_38
    sbc l
    add hl, bc
    ld c, $0e
    add hl, hl
    sbc l
    rst RST_38
    rst RST_38
    sbc l
    add hl, bc
    ld c, $0e
    add hl, hl
    sbc l
    rst RST_38
    rst RST_38
    sbc l
    add hl, bc
    ld c, $0e
    add hl, hl
    sbc l
    rst RST_38
    rst RST_38
    sbc l
    add hl, bc
    ld c, $0e
    add hl, hl
    sbc l
    rst RST_38
    rst RST_38
    sbc l
    add hl, bc
    ld c, $0e
    add hl, hl
    sbc c
    sbc d
    sbc e
    sbc h
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    cpl
    ld bc, $6c08
    dec c
    ld l, l
    dec c
    ld l, l
    dec c
    ld l, [hl]
    dec c
    ld l, l
    dec c
    ld l, l
    dec c
    ld l, a
    dec c
    ld [hl], b
    ld a, [bc]
    cpl
    ld bc, $7108
    ld [$0871], sp
    ld [hl], c
    ld [$0871], sp
    ld [hl], c
    ld [$0871], sp
    ld [hl], c
    ld [$0872], sp
    cpl
    inc b
    dec b
    sub [hl]
    sub a
    sbc b
    sbc c
    inc c
    inc c
    inc c
    inc c
    sbc d
    sbc e
    sbc h
    sbc l
    inc c
    inc c
    inc c
    inc c
    sbc [hl]
    sbc a
    and b
    and c
    inc c
    inc c
    inc c
    inc c
    sbc d
    and d
    and e
    sbc l
    inc c
    inc c
    inc c
    inc c
    and h
    and l
    and [hl]
    and a
    inc c
    inc c
    inc c
    inc c
    cpl
    inc b
    dec b
    xor b
    xor c
    xor c
    xor b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    xor d
    rst RST_38
    rst RST_38
    xor d
    add hl, bc
    nop
    nop
    add hl, hl
    xor d
    rst RST_38
    rst RST_38
    xor d
    add hl, bc
    nop
    nop
    add hl, hl
    xor d
    rst RST_38
    rst RST_38
    xor d
    add hl, bc
    nop
    nop
    add hl, hl
    xor e
    xor h
    xor l
    xor [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    ld [bc], a
    add hl, bc
    ld l, d
    ld l, e
    add hl, bc
    add hl, bc
    ld a, d
    ld a, e
    add hl, bc
    add hl, bc
    ld l, h
    ld l, l
    add hl, bc
    add hl, bc
    ld a, h
    ld a, l
    add hl, bc
    add hl, bc
    ld l, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    ld a, [hl]
    ld a, a
    add hl, bc
    add hl, bc
    add b
    add c
    add hl, bc
    add hl, bc
    add d
    add e
    add hl, bc
    add hl, bc
    add h
    add l
    add hl, bc
    ld c, $2f
    ld [bc], a
    add hl, bc
    add [hl]
    add a
    dec c
    dec c
    adc b
    adc c
    dec c
    dec c
    adc d
    adc c
    dec c
    dec c
    adc e
    adc h
    dec c
    dec c
    adc l
    adc [hl]
    dec c
    dec c
    sub l
    adc c
    dec c
    dec c
    adc a
    sub b
    dec c
    dec c
    sub c
    sub d
    dec c
    dec c
    sub e
    sub h
    dec c
    dec c
    cpl
    ld bc, $7008
    ld [$0871], sp
    ld [hl], c
    ld [$0872], sp
    ld [hl], e
    ld [$0871], sp
    ld [hl], c
    ld [$0874], sp
    cpl
    ld bc, $7508
    ld [$0876], sp
    halt
    ld [$0876], sp
    halt
    ld [$0877], sp
    ld a, b
    dec c
    ld a, c
    dec c
    cpl
    ld [bc], a
    ld [bc], a
    ld b, e
    ld b, h
    ld [$4508], sp
    ld b, [hl]
    ld [$2f08], sp
    ld [bc], a
    ld [bc], a
    ld b, a
    ld c, b
    ld [$4908], sp
    ld c, d
    ld [$2f08], sp
    inc b
    dec c
    add hl, de
    ld a, [de]
    adc b
    adc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add h
    add l
    add [hl]
    add a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add b
    add c
    add d
    add e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    inc b
    dec c
    add hl, de
    ld a, [de]
    adc d
    adc e
    inc c
    add hl, bc
    add hl, bc
    ld c, $8c
    adc l
    adc [hl]
    adc a
    add hl, bc
    ld c, $0e
    ld c, $90
    and a
    and a
    and a
    add hl, bc
    ld c, $0e
    ld c, $91
    and a
    and a
    and a
    add hl, bc
    ld c, $0e
    ld c, $92
    and a
    and a
    and a
    add hl, bc
    ld c, $0e
    ld c, $93
    and a
    and a
    and a
    add hl, bc
    ld c, $0e
    ld c, $94
    and a
    and a
    and a
    add hl, bc
    ld c, $0e
    ld c, $95
    and a
    and a
    and a
    add hl, bc
    ld c, $0e
    ld c, $96
    and a
    and a
    and a
    add hl, bc
    ld c, $0e
    ld c, $97
    sbc b
    sbc c
    sbc d
    add hl, bc
    ld c, $0e
    ld c, $9b
    sbc h
    sbc l
    sbc [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sbc a
    and b
    and c
    and d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    and e
    and h
    and l
    and [hl]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    inc b
    inc b
    or h
    or a
    cpl
    add hl, sp
    ld c, $0d
    dec c
    dec c
    and b
    xor c
    sub d
    sub e
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    cp c
    add e
    add h
    xor b
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    add l
    add [hl]
    add a
    adc b
    inc c
    inc c
    inc c
    ld a, [bc]
    cpl
    inc b
    inc b
    and l
    and [hl]
    cpl
    add hl, sp
    dec c
    dec c
    dec c
    dec c
    and h
    xor d
    xor e
    xor h
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    xor l
    xor [hl]
    xor a
    and a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    sub l
    sub [hl]
    sub a
    sbc b
    inc c
    inc c
    inc c
    ld a, [bc]
    cpl
    ld bc, $9708
    add hl, bc
    sbc b
    add hl, bc
    sbc b
    add hl, bc
    sbc c
    add hl, bc
    sbc d
    add hl, bc
    sbc b
    add hl, bc
    sbc e
    add hl, bc
    sbc h
    add hl, bc
    cpl
    ld bc, $a308
    inc c
    and h
    inc c
    and h
    inc c
    and h
    inc c
    and h
    inc c
    and h
    inc c
    and l
    inc c
    and [hl]
    add hl, bc
    cpl
    ld bc, $9d08
    add hl, bc
    sbc [hl]
    add hl, bc
    sbc [hl]
    add hl, bc
    sbc a
    add hl, bc
    and b
    add hl, bc
    sbc [hl]
    add hl, bc
    and c
    add hl, bc
    and d
    add hl, bc
    cpl
    ld bc, $a708
    inc c
    xor b
    inc c
    xor b
    inc c
    xor b
    inc c
    xor b
    inc c
    xor b
    inc c
    xor c
    inc c
    xor d
    add hl, bc
    cpl
    rlca
    ld b, $40
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    rlca
    ld b, $65
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld h, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, l
    ld l, h
    ld l, e
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, e
    ld l, e
    dec hl
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld a, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    rlca
    ld b, $40
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    rlca
    ld b, $65
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld h, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, l
    ld l, h
    ld l, e
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, e
    ld l, e
    dec hl
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld a, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    ld bc, $b408
    dec c
    or l
    add hl, bc
    or [hl]
    add hl, bc
    or a
    add hl, bc
    cp b
    inc c
    cp c
    inc c
    cp d
    ld [$0cbb], sp
    cpl
    ld bc, $bc08
    dec c
    cp l
    dec c
    cp l
    dec c
    cp l
    dec c
    cp [hl]
    dec c
    cp c
    inc c
    cp d
    ld [$0cbb], sp
    cpl
    ld bc, $b408
    dec c
    cp a
    add hl, bc
    ret nz

    add hl, bc
    pop bc
    add hl, bc
    jp nz, $c30c

    inc c
    cp d
    ld [$0cbb], sp
    cpl
    ld bc, $bc08
    dec c
    cp l
    dec c
    cp l
    dec c
    cp l
    dec c
    cp [hl]
    dec c
    jp $ba0c


    ld [$0cbb], sp
    cpl
    ld [bc], a
    inc c
    call nz, Call_000_0ec5
    ld c, $c6
    rst RST_00
    ld c, $0e
    ret z

    ret


    ld a, [bc]
    ld a, [bc]
    jp z, Jump_000_0acb

    ld a, [bc]
    call z, Call_000_0acd
    ld a, [bc]
    call z, Call_000_0acd
    ld a, [bc]
    call z, Call_000_0acd
    ld a, [bc]
    call z, Call_000_0acd
    ld a, [bc]
    call z, Call_000_0ace
    inc c
    rst RST_08
    ret nc

    inc c
    inc c
    pop de
    jp nc, $0808

    db $d3
    call nc, $080c
    cpl
    ld [bc], a
    inc c
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld bc, $0a01
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    inc bc
    push de
    ld a, [bc]
    inc c
    sub $d7
    inc c
    inc c
    ret c

    reti


    ld [$da08], sp
    db $db
    inc c
    ld [$022f], sp
    dec c
    xor a
    or b
    ld [$b108], sp
    or d
    ld [$b108], sp
    or d
    ld [$b308], sp
    or h
    ld [$b508], sp
    or [hl]
    ld [$b108], sp
    or d
    ld [$b108], sp
    or d
    ld [$b708], sp
    cp b
    ld [$b908], sp
    cp d
    dec c
    dec c
    cp e
    cp h
    dec c
    dec c
    cp l
    cp [hl]
    dec c
    dec c
    cp a
    ret nz

    dec c
    dec c
    pop bc
    jp nz, $0d0d

    cpl
    ld [bc], a
    dec c
    jp $0ec4


    ld c, $c5
    add $0e
    ld c, $c7
    ret z

    ld c, $0e
    ret


    jp z, $0d0d

    set 1, h
    dec c
    dec c
    call Call_000_0dce
    dec c
    rst RST_08
    ret nc

    dec c
    dec c
    pop de
    jp nc, $0d0d

    db $d3
    call nc, $0d0d
    push de
    push de
    dec c
    dec l
    sub $d6
    dec c
    dec l
    rst RST_10
    rst RST_10
    dec c
    dec l
    ret c

    ret c

    dec c
    dec l
    cpl
    rlca
    ld b, $62
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, h
    ld a, a
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld a, [bc]
    add b
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    add b
    ld a, [hl+]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add c
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, d
    ld [hl], b
    add c
    ld a, [hl+]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add c
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    add c
    ld a, [hl+]
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    add c
    halt
    ld [hl], a
    ld a, e
    ld a, h
    ld a, b
    add c
    ld a, [hl+]
    inc c
    inc c
    ld [$0c08], sp
    ld a, [bc]
    ld h, e
    ld a, c
    ld a, c
    ld a, l
    ld a, [hl]
    ld a, d
    add d
    ld a, [bc]
    ld [$0828], sp
    ld [$0a08], sp
    cpl
    rlca
    ld b, $99
    sbc d
    sbc c
    sbc e
    sbc l
    sbc h
    sbc l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    sbc [hl]
    sbc a
    sbc [hl]
    and b
    and d
    and c
    and d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    and e
    and h
    and e
    and l
    and a
    and [hl]
    and a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    and e
    and h
    and e
    and l
    and a
    and [hl]
    and a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    and e
    and h
    xor b
    ld a, e
    ld a, h
    xor c
    and a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld a, [bc]
    xor d
    xor e
    xor h
    ld a, l
    ld a, [hl]
    xor l
    xor [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld a, [bc]
    cpl
    rlca
    ld b, $62
    ld h, h
    adc b
    adc c
    adc d
    ld h, h
    ld a, a
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld a, [bc]
    add b
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    add b
    ld a, [hl+]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add c
    ld l, l
    ld l, [hl]
    ld l, a
    sub b
    sub c
    add c
    ld a, [hl+]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add c
    sub d
    sub e
    ld [hl], e
    sub h
    sub l
    add c
    ld a, [hl+]
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    add c
    sub [hl]
    sub a
    ld a, e
    ld a, h
    sbc b
    add c
    ld a, [hl+]
    inc c
    inc c
    ld [$0c08], sp
    ld a, [bc]
    ld h, e
    ld a, c
    ld a, c
    ld a, l
    ld a, [hl]
    ld a, d
    add d
    ld a, [bc]
    ld [$0828], sp
    ld [$0a08], sp
    cpl
    rlca
    ld b, $99
    sbc d
    sbc c
    sbc e
    sbc l
    sbc h
    sbc l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    sbc [hl]
    sbc a
    sbc [hl]
    and b
    and d
    and c
    and d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    and e
    and h
    and e
    and l
    and a
    and [hl]
    and a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    and e
    and h
    and e
    and l
    and a
    and [hl]
    and a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    and e
    and h
    xor b
    ld a, e
    ld a, h
    xor c
    and a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld a, [bc]
    xor d
    xor e
    xor h
    ld a, l
    ld a, [hl]
    xor l
    xor [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld a, [bc]
    cpl
    inc b
    ld b, $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl]
    ld a, a
    add b
    add c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add d
    add e
    add h
    add l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, d
    add [hl]
    add a
    ld a, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc b
    adc c
    adc d
    adc e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    inc b
    ld b, $a0
    and c
    and c
    and b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    and d
    rst RST_38
    rst RST_38
    and d
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    and d
    rst RST_38
    rst RST_38
    and d
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    and d
    rst RST_38
    rst RST_38
    and d
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    and d
    rst RST_38
    rst RST_38
    and d
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    and e
    and h
    and l
    and [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    inc b
    ld b, $8c
    adc l
    adc [hl]
    adc a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    sub b
    sub c
    sub d
    sub e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    sub h
    sub l
    sub [hl]
    sub a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    sbc b
    sbc c
    sbc d
    sbc e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    sub b
    sub c
    sub d
    sub e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    inc b
    ld b, $a0
    and c
    and c
    and b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    and d
    rst RST_38
    rst RST_38
    and d
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    and d
    rst RST_38
    rst RST_38
    and d
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    and d
    rst RST_38
    rst RST_38
    and d
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    and d
    rst RST_38
    rst RST_38
    and d
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    and e
    and h
    and l
    and [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    inc b
    rlca
    ld d, [hl]
    ld d, a
    ld d, a
    ld d, [hl]
    ld [$2808], sp
    jr z, jr_029_4910

    ld e, c
    ld e, d
    ld e, e
    dec bc
    dec bc
    dec bc
    dec bc
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    dec bc
    dec bc
    dec bc
    dec bc
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    dec bc
    dec bc
    dec bc
    dec bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    dec bc
    dec bc
    dec bc
    dec bc
    cpl
    inc b
    rlca
    adc b
    adc b
    adc b
    adc b
    ld [$0808], sp
    ld [$ffff], sp
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop

jr_029_4910:
    nop
    nop
    adc c
    adc d
    adc d
    adc c
    dec bc
    dec bc
    dec hl
    dec hl
    adc e
    adc h
    adc h
    adc e
    inc c
    inc c
    inc l
    inc l
    cpl
    inc b
    rlca
    ld d, [hl]
    ld d, a
    ld d, a
    ld d, [hl]
    ld [$2808], sp
    jr z, jr_029_499e

    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    dec bc
    dec bc
    dec bc
    dec bc
    add b
    add c
    add d
    add e
    dec bc
    dec bc
    dec bc
    dec bc
    add h
    add l
    add [hl]
    add a
    dec bc
    dec bc
    dec bc
    dec bc
    cpl
    inc b
    rlca
    adc b
    adc b
    adc b
    adc b
    ld [$0808], sp
    ld [$ffff], sp
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    adc c
    adc d
    adc d
    adc c
    dec bc
    dec bc
    dec hl
    dec hl
    adc e
    adc h
    adc h
    adc e
    inc c
    inc c
    inc l
    inc l
    cpl
    ld [bc], a
    dec b
    ld a, e
    ld a, h
    dec c

jr_029_499e:
    dec c
    ld a, l
    ld a, [hl]
    dec c
    dec c
    ld a, a
    add b
    dec c
    dec c
    add c
    add d
    dec c
    ld [$8483], sp
    ld [$2f08], sp
    ld [bc], a
    dec b
    add l
    add [hl]
    ld [$8708], sp
    adc b
    ld [$8708], sp
    adc b
    ld [$8908], sp
    add d
    ld [$8308], sp
    add h
    ld [$2f08], sp
    ld [bc], a
    inc bc
    ld l, e
    ld l, h
    dec bc
    dec bc
    ld l, l
    ld l, [hl]
    dec bc
    dec bc
    ld l, l
    ld l, [hl]
    dec bc
    dec bc
    cpl
    ld [bc], a
    inc bc
    ld h, l
    ld h, [hl]
    dec bc
    dec bc
    ld h, a
    ld l, b
    dec bc
    dec bc
    ld l, c
    ld l, d
    dec bc
    dec bc
    cpl
    inc b
    inc b
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    dec bc
    dec bc
    dec bc
    dec bc
    add c
    add d
    add e
    add h
    dec bc
    dec bc
    dec bc
    dec bc
    add l
    add [hl]
    add a
    adc b
    dec bc
    dec bc
    dec bc
    dec bc
    adc c
    adc d
    adc e
    adc h
    dec bc
    dec bc
    dec bc
    dec bc
    cpl
    inc b
    inc b
    adc l
    rst RST_38
    rst RST_38
    adc l
    dec bc
    nop
    nop
    dec hl
    adc l
    rst RST_38
    rst RST_38
    adc l
    dec bc
    nop
    nop
    dec hl
    adc l
    adc [hl]
    adc [hl]
    adc l
    dec bc
    add hl, bc
    add hl, hl
    dec hl
    adc a
    sub b
    sub b
    adc a
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    cpl
    dec b
    dec b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld [$0808], sp
    ld [$7c0b], sp
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld [$0808], sp
    ld [$810b], sp
    add d
    add e
    add h
    add l
    dec bc
    dec bc
    dec bc
    dec c
    inc c
    add [hl]
    add a
    adc b
    adc c
    adc d
    dec bc
    dec bc
    dec bc
    dec c
    inc c
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    dec c
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    cpl
    dec b
    dec b
    sub b
    sub c
    sub d
    sub e
    ld a, e
    ld [$0808], sp
    ld [$940b], sp
    sub l
    sub [hl]
    sub a
    sbc b
    ld [$0808], sp
    ld [$990b], sp
    sbc d
    sbc e
    sbc h
    sbc l
    dec bc
    dec c
    ld c, $0e
    inc c
    sbc [hl]
    sbc a
    and b
    and c
    and d
    dec bc
    ld a, [bc]
    ld c, $0e
    inc c
    and e
    and h
    and l
    and [hl]
    and a
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    inc c
    cpl
    inc bc
    add hl, bc
    adc l
    sub h
    sub l
    ld [$0b0d], sp
    adc l
    sub h
    sub [hl]
    ld [$0b0d], sp
    adc l
    sub a
    sbc b
    ld [$0b0d], sp
    adc [hl]
    sbc c
    sbc d
    ld [$0e0e], sp
    adc a
    sbc e
    sbc h
    ld [$0e0e], sp
    sub b
    sbc l
    sbc [hl]
    ld [$0e0e], sp
    sub c
    sbc a
    and b
    ld [$0e0e], sp
    sub d
    and c
    and d
    ld [$0e0e], sp
    sub e
    and e
    and h
    ld [$0808], sp
    cpl
    inc bc
    add hl, bc
    xor e
    xor h
    xor l
    ld [$0808], sp
    xor e
    xor h
    xor l
    ld [$0808], sp
    xor e
    xor [hl]
    xor a
    ld [$0808], sp
    or b
    or c
    or d
    ld [$0e0e], sp
    or e
    or h
    or l
    ld [$0e0e], sp
    or [hl]
    or a
    cp b
    ld [$0e0e], sp
    cp c
    cp d
    cp e
    ld [$0e0e], sp
    cp h
    cp l
    cp [hl]
    ld [$0808], sp
    sub e
    and e
    cp a
    ld [$0808], sp
    cpl
    inc bc
    add hl, bc
    adc l
    and l
    and [hl]
    ld [$0b0d], sp
    adc l
    and a
    xor b
    ld [$0b0d], sp
    adc l
    xor c
    xor d
    ld [$0b0d], sp
    adc [hl]
    sbc c
    sbc d
    ld [$0e0e], sp
    adc a
    sbc e
    sbc h
    ld [$0e0e], sp
    sub b
    sbc l
    sbc [hl]
    ld [$0e0e], sp
    sub c
    sbc a
    and b
    ld [$0e0e], sp
    sub d
    and c
    and d
    ld [$0e0e], sp
    sub e
    and e
    and h
    ld [$0808], sp
    cpl
    inc bc
    add hl, bc
    xor e
    xor h
    xor l
    ld [$0808], sp
    xor e
    xor h
    xor l
    ld [$0808], sp
    xor e
    xor [hl]
    xor a
    ld [$0808], sp
    or b
    or c
    or d
    ld [$0e0e], sp
    or e
    or h
    or l
    ld [$0e0e], sp
    or [hl]
    or a
    cp b
    ld [$0e0e], sp
    cp c
    cp d
    cp e
    ld [$0e0e], sp
    cp h
    cp l
    cp [hl]
    ld [$0808], sp
    sub e
    and e
    cp a
    ld [$0808], sp
    cpl
    ld [bc], a
    rlca
    sbc e
    sbc e
    add hl, bc
    add hl, hl
    sbc h
    sbc l
    add hl, bc
    add hl, bc
    sbc [hl]
    sbc a
    add hl, bc
    add hl, bc
    and b
    and c
    add hl, bc
    ld c, $a2
    and e
    add hl, bc
    add hl, bc
    and h
    and l
    add hl, bc
    add hl, bc
    and [hl]
    and a
    add hl, bc
    ld a, [bc]
    cpl
    ld [bc], a
    rlca
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    xor b
    xor b
    add hl, bc
    add hl, hl
    cpl
    dec b
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    xor h
    xor l
    xor [hl]
    xor a
    or b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    or c
    or d
    or e
    or h
    or l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    dec b
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    xor h
    xor l
    xor [hl]
    xor a
    or b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    or c
    or d
    or e
    or h
    or l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    dec b
    dec bc
    and d
    add h
    add l
    add [hl]
    and e
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    and d
    add a
    adc b
    adc b
    and e
    dec bc
    ld [$0c0c], sp
    dec bc
    and d
    adc c
    adc d
    adc e
    and e
    dec bc
    ld [$0c0c], sp
    dec bc
    and d
    adc c
    adc h
    adc l
    and e
    dec bc
    ld [$0c0c], sp
    dec bc
    and d
    adc c
    adc [hl]
    adc a
    and e
    dec bc
    ld [$0c0a], sp
    dec bc
    and d
    adc c
    sub b
    sub c
    and e
    dec bc
    ld [$0c0a], sp
    dec bc
    and d
    adc c
    adc h
    adc l
    and e
    dec bc
    ld [$0c0c], sp
    dec bc
    and d
    adc c
    sub d
    sub e
    and e
    dec bc
    ld [$0a0a], sp
    dec bc
    and d
    sub l
    sub [hl]
    sub a
    and e
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    dec b
    dec bc
    and d
    add h
    add l
    add [hl]
    and e
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    and d
    add a
    and h
    and h
    and e
    dec bc
    ld [$0808], sp
    dec bc
    and d
    adc c
    rst RST_38
    rst RST_38
    and e
    dec bc
    ld [$0000], sp
    dec bc
    and d
    adc c
    rst RST_38
    rst RST_38
    and e
    dec bc
    ld [$0000], sp
    dec bc
    and d
    adc c
    rst RST_38
    rst RST_38
    and e
    dec bc
    ld [$0000], sp
    dec bc
    and d
    adc c
    rst RST_38
    rst RST_38
    and e
    dec bc
    ld [$0000], sp
    dec bc
    and d
    adc c
    rst RST_38
    rst RST_38
    and e
    dec bc
    ld [$0000], sp
    dec bc
    and d
    adc c
    and l
    and [hl]
    and e
    dec bc
    ld [$0808], sp
    dec bc
    and d
    sub l
    sub [hl]
    sub a
    and e
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    inc bc
    dec b
    ld c, d
    ld c, e
    ld c, h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    ld c, a
    dec bc
    dec bc
    dec bc
    ld d, b
    ld d, c
    ld d, d
    dec c
    dec c
    dec c
    ld d, e
    ld d, h
    ld d, l
    dec bc
    dec bc
    dec bc
    ld d, [hl]
    ld d, a
    ld e, b
    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    dec b
    rst RST_38
    ld e, c
    ld e, d
    nop
    dec bc
    dec bc
    ld e, e
    rst RST_38
    rst RST_38
    dec bc
    nop
    nop
    ld e, h
    rst RST_38
    ld e, l
    dec c
    nop
    dec c
    ld e, a
    rst RST_38
    ld e, [hl]
    dec bc
    nop
    dec bc
    ld h, b
    ld h, c
    rst RST_38
    dec bc
    dec bc
    nop
    cpl
    ld b, $05
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld h, d
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    ld b, $05
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld h, d
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    inc b
    inc bc
    ld a, a
    add b
    add c
    add d
    ld [$0808], sp
    ld [$8483], sp
    add l
    add [hl]
    ld [$0808], sp
    ld [$8887], sp
    adc c
    adc d
    ld [$0808], sp
    ld [$042f], sp
    inc bc
    adc e
    adc h
    adc l
    adc [hl]
    ld [$0808], sp
    ld [$908f], sp
    sub c
    sub d
    ld [$0808], sp
    ld [$9493], sp
    sub l
    sub [hl]
    ld [$0808], sp
    ld [$032f], sp
    add hl, bc
    ld d, a
    ld e, b
    ld e, b
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, c
    ld e, d
    ld e, e
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, c
    ld e, h
    ld e, l
    add hl, bc
    add hl, bc
    dec bc
    ld e, c
    ld e, [hl]
    ld e, a
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, b
    ld e, l
    ld e, l
    dec c
    dec bc
    dec bc
    ld h, c
    ld e, d
    ld e, e
    dec c
    add hl, bc
    add hl, bc
    ld e, c
    ld e, h
    ld e, l
    add hl, bc
    add hl, bc
    dec bc
    ld e, c
    ld e, [hl]
    ld e, a
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, a
    ld e, b
    ld e, b
    ld c, c
    ld c, c
    ld c, c
    cpl
    inc bc
    add hl, bc
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    ld h, d
    ld h, e
    rst RST_38
    ld [$0008], sp
    ld h, h
    ld h, l
    rst RST_38
    ld [$0008], sp
    ld h, h
    ld h, l
    rst RST_38
    ld [$0008], sp
    ld h, [hl]
    ld h, a
    rst RST_38
    dec c
    dec c
    nop
    ld l, b
    ld l, c
    rst RST_38
    add hl, bc
    add hl, bc
    nop
    ld l, b
    ld l, c
    rst RST_38
    add hl, bc
    add hl, bc
    nop
    ld l, d
    ld l, e
    ld l, h
    add hl, bc
    dec c
    ld [$6e6d], sp
    ld l, a
    inc c
    inc c
    inc c
    cpl
    ld [bc], a
    ld [$beb8], sp
    inc c
    add hl, bc
    cp c
    cp a
    inc c
    add hl, bc
    cp c
    ret nz

    inc c
    add hl, bc
    cp c
    pop bc
    inc c
    add hl, bc
    cp d
    cp e
    inc c
    ld [$c2bc], sp
    inc c
    ld [$c3bc], sp
    inc c
    ld [$c4bd], sp
    inc c
    dec bc
    cpl
    ld [bc], a
    ld [$beff], sp
    nop
    add hl, bc
    rst RST_38
    cp a
    nop
    add hl, bc
    rst RST_38
    ret nz

    nop
    add hl, bc
    rst RST_38
    pop bc
    nop
    add hl, bc
    add $c5
    inc c
    ld [$c2c7], sp
    inc c
    ld [$c3c8], sp
    inc c
    ld [$c4c9], sp
    dec bc
    dec bc
    cpl
    ld [bc], a
    inc b
    xor c
    xor d
    add hl, bc
    inc c
    xor e
    xor h
    add hl, bc
    inc c
    xor l
    xor [hl]
    ld a, [bc]
    inc c
    xor a
    xor a
    add hl, bc
    add hl, bc
    cpl
    ld [bc], a
    inc b
    or b
    or c
    add hl, bc
    ld [$b3b2], sp
    add hl, bc
    ld [$b5b4], sp
    add hl, bc
    ld [$b7b6], sp
    add hl, bc
    add hl, bc
    cpl
    ld b, $05
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld a, c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [hl]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, a
    add b
    add c
    add d
    add e
    add h
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    adc e
    adc h
    adc l
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    cpl
    ld b, $05
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    ld [$0808], sp
    ld [$0808], sp
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    ld [$0808], sp
    ld [$0808], sp
    sbc c
    sbc d
    sbc e
    sbc e
    sbc e
    sbc h
    ld [$0808], sp
    ld [$0808], sp
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    ld [$0808], sp
    ld [$0808], sp
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    ld [$0808], sp
    ld [$0808], sp
    cpl
    inc b
    ld c, $78
    ld a, c
    ld a, d
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$7c7b], sp
    ld a, l
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$7f7e], sp
    add b
    sbc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8281], sp
    add e
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8584], sp
    add [hl]
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8887], sp
    adc c
    sbc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$828a], sp
    add e
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8c8b], sp
    adc l
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8e87], sp
    adc a
    sbc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8290], sp
    sub c
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$9392], sp
    sub h
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$9695], sp
    adc c
    sbc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8278], sp
    ld a, d
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$7c7b], sp
    ld a, l
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$042f], sp
    ld c, $9e
    sbc d
    sbc e
    sbc h
    ld [$0a08], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    and c
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    and d
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    and e
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    and h
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    and l
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    and [hl]
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    and a
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    xor b
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    xor c
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    xor d
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    xor e
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    xor h
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    xor l
    ld [$0808], sp
    ld a, [bc]
    cpl
    ld bc, $6c09
    dec c
    ld l, l
    dec c
    ld l, [hl]
    dec c
    ld l, a
    dec c
    ld [hl], b
    dec c
    ld [hl], c
    dec c
    ld [hl], d
    dec c
    ld [hl], e
    dec c
    ld [hl], h
    dec c
    cpl
    ld bc, $7509
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    halt
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    halt
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    ld [hl], a
    ld a, [bc]
    cpl
    inc bc
    ld [$4948], sp
    ld c, d
    inc c
    inc c
    dec bc
    ld c, e
    ld c, h
    ld c, l
    inc c
    inc c
    dec bc
    ld c, [hl]
    ld c, a
    ld d, b
    inc c
    inc c
    dec bc
    ld c, [hl]
    ld c, a
    ld d, c
    inc c
    inc c
    dec bc
    ld c, [hl]
    ld c, a
    ld d, d
    inc c
    inc c
    dec bc
    ld c, [hl]
    ld c, a
    ld d, e
    inc c
    inc c
    dec bc
    ld d, l
    ld d, [hl]
    ld d, h
    inc c
    inc c
    dec bc
    ld d, a
    ld e, b
    ld e, c
    inc c
    inc c
    dec bc
    cpl
    inc bc
    ld [$5b5a], sp
    ld e, h
    dec bc
    dec bc
    dec bc
    rst RST_38
    ld e, l
    ld e, [hl]
    nop
    dec bc
    dec bc
    rst RST_38
    ld e, a
    ld h, b
    nop
    dec bc
    dec bc
    rst RST_38
    ld h, c
    ld h, d
    nop
    dec bc
    dec bc
    rst RST_38
    ld h, e
    ld h, h
    nop
    dec bc
    dec bc
    rst RST_38
    ld h, l
    ld h, [hl]
    nop
    dec bc
    dec bc
    rst RST_38
    ld h, a
    ld l, b
    nop
    dec bc
    dec bc
    ld l, c
    ld l, d
    ld l, e
    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    ld b, $99
    sbc d
    rst RST_38
    ld [$0008], sp
    sbc e
    sbc h
    sbc l
    ld [$0808], sp
    sbc [hl]
    sbc a
    and b
    ld [$0808], sp
    and c
    and d
    and e
    ld [$0808], sp
    and h
    and l
    and [hl]
    inc c
    ld [$9608], sp
    sub a
    add c
    ld [$0808], sp
    cpl
    inc bc
    ld b, $8e
    rst RST_38
    rst RST_38
    ld [$0000], sp
    adc a
    rst RST_38
    rst RST_38
    ld [$0000], sp
    sub b
    rst RST_38
    rst RST_38
    ld [$0000], sp
    sub c
    sub d
    rst RST_38
    ld [$0008], sp
    sub e
    sub h
    sub l
    inc c
    ld [$9608], sp
    sub a
    sbc b
    ld [$0808], sp
    cpl
    ld bc, $9a08
    ld c, $9b
    inc c
    sbc h
    inc c
    sbc h
    inc c
    sbc l
    inc c
    sbc h
    inc c
    sbc h
    inc c
    sbc [hl]
    dec c
    cpl
    ld bc, $9f08
    ld c, $a0
    add hl, bc
    and c
    add hl, bc
    and d
    add hl, bc
    and d
    add hl, bc
    and d
    add hl, bc
    and d
    add hl, bc
    and e
    ld a, [bc]
    cpl
    ld b, $07
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, b
    ld e, e
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, b
    ld e, e
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    ld b, $07
    rst RST_38
    ld [hl], h
    ld [hl], l
    ld [hl], l
    rst RST_38
    rst RST_38
    nop
    dec bc
    dec bc
    dec hl
    nop
    nop
    halt
    ld [hl], a
    ld a, b
    ld a, b
    rst RST_38
    rst RST_38
    ld c, $0e
    ld c, $2e
    nop
    nop
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    dec bc
    ld c, $0e
    ld c, $0e
    dec bc
    ld a, a
    add b
    add c
    add d
    add e
    add h
    dec bc
    ld c, $0e
    ld c, $0e
    dec bc
    rst RST_38
    add l
    add [hl]
    add a
    adc b
    rst RST_38
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    adc c
    adc d
    adc e
    adc h
    adc l
    rst RST_38
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    rst RST_38
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    cpl
    inc bc
    rlca
    add h
    add l
    add [hl]
    ld c, $0e
    ld c, $87
    adc b
    adc c
    ld a, [bc]
    ld a, [bc]
    ld c, $8a
    adc e
    adc c
    ld a, [bc]
    dec bc
    ld c, $8c
    adc l
    adc c
    ld a, [bc]
    dec bc
    ld c, $8e
    adc a
    sub b
    ld a, [bc]
    dec bc
    ld c, $91
    sub d
    sub e
    ld a, [bc]
    ld a, [bc]
    ld c, $94
    sub l
    sub [hl]
    ld c, $0e
    ld c, $2f
    inc bc
    rlca
    sub a
    sbc b
    sbc c
    ld c, $0e
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc h
    ld a, [bc]
    nop
    ld c, $9d
    sbc [hl]
    sbc a
    ld c, $0e
    ld c, $94
    sub l
    and b
    ld c, $0e
    ld c, $2f
    inc bc
    rlca
    add h
    add l
    add [hl]
    ld c, $0e
    ld c, $a1
    and d
    adc c
    ld a, [bc]
    ld a, [bc]
    ld c, $a3
    and h
    adc c
    ld a, [bc]
    dec bc
    ld c, $a5
    and [hl]
    adc c
    ld a, [bc]
    dec bc
    ld c, $a7
    xor b
    sub b
    ld a, [bc]
    dec bc
    ld c, $a9
    xor d
    sub e
    ld a, [bc]
    ld a, [bc]
    ld c, $94
    sub l
    and b
    ld c, $0e
    ld c, $2f
    inc bc
    rlca
    sub a
    sbc b
    sbc c
    ld c, $0e
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc h
    ld a, [bc]
    nop
    ld c, $9d
    sbc [hl]
    sbc a
    ld c, $0e
    ld c, $94
    sub l
    and b
    ld c, $0e
    ld c, $2f
    inc b
    ld b, $7c
    ld a, l
    ld a, [hl]
    ld a, a
    dec bc
    dec bc
    dec bc
    dec bc
    add b
    add c
    add d
    add e
    dec bc
    dec bc
    dec bc
    dec bc
    add h
    add l
    add [hl]
    add a
    dec bc
    dec bc
    dec bc
    dec bc
    adc b
    adc c
    adc d
    adc e
    dec bc
    dec bc
    dec bc
    dec bc
    adc h
    adc l
    adc [hl]
    adc a
    dec bc
    dec bc
    dec bc
    dec bc
    sub b
    sub c
    sub d
    sub e
    dec bc
    dec bc
    dec bc
    dec bc
    cpl
    inc b
    ld b, $ff
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    and b
    and c
    and d
    and e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    inc b
    ld b, $94
    sub l
    sub [hl]
    sub a
    dec bc
    dec bc
    dec bc
    dec bc
    sbc b
    sbc c
    sbc d
    sbc e
    dec bc
    dec bc
    dec bc
    dec bc
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    dec bc
    dec bc
    dec bc
    adc b
    adc c
    adc d
    adc e
    dec bc
    dec bc
    dec bc
    dec bc
    adc h
    adc l
    adc [hl]
    adc a
    dec bc
    dec bc
    dec bc
    dec bc
    sub b
    sub c
    sub d
    sub e
    dec bc
    dec bc
    dec bc
    dec bc
    cpl
    inc b
    ld b, $ff
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    and b
    and c
    and d
    and e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    ld [bc], a
    inc b
    sbc c
    sbc d
    dec bc
    dec bc
    sbc e
    sbc h
    dec bc
    dec bc
    sbc l
    sbc [hl]
    dec bc
    dec bc
    sbc a
    and b
    dec bc
    dec bc
    cpl
    ld [bc], a
    inc b
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    and c
    and d
    dec bc
    dec bc
    cpl
    ld b, $06
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$6261], sp
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$6867], sp
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$6e6d], sp
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$7473], sp
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    ld b, $06
    ld d, l
    ld a, c
    ld d, a
    ld a, d
    ld e, c
    ld e, d
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8281], sp
    add e
    add h
    add l
    add [hl]
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8887], sp
    adc c
    adc d
    adc e
    adc h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8e8d], sp
    adc a
    sub b
    sub c
    sub d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$9493], sp
    sub l
    sub [hl]
    sub a
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$042f], sp
    dec b
    and h
    and l
    and [hl]
    and a
    ld [$0808], sp
    ld [$60a8], sp
    ld h, b
    xor c
    ld [$0808], sp
    ld [$60aa], sp
    xor e
    xor h
    ld [$0808], sp
    ld [$aead], sp
    xor [hl]
    xor a
    ld [$0808], sp
    ld [$b1b0], sp
    or d
    or e
    ld [$0808], sp
    ld [$042f], sp
    dec b
    or h
    or l
    or [hl]
    or e
    ld [$0808], sp
    ld [$ffb7], sp
    cp b
    or e
    ld [$0800], sp
    ld [$bab9], sp
    cp e
    or e
    ld [$0909], sp
    ld [$bdbc], sp
    cp [hl]
    cp a
    ld [$0909], sp
    ld [$c1c0], sp
    pop bc
    jp nz, $0808

    ld [$2f08], sp
    add hl, bc
    ld b, $60
    ld h, c
    ld h, d
    ld h, e
    ld h, b
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, b
    ld l, b
    ld h, b
    ld h, b
    ld l, c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, b
    ld l, h
    ld h, b
    ld h, b
    ld l, c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, b
    ld l, l
    ld h, b
    ld l, d
    ld l, e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, b
    ld l, [hl]
    ld h, b
    ld h, b
    ld l, c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld h, e
    ld h, b
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    cpl
    add hl, bc
    ld b, $60
    ld h, c
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    ld h, c
    ld a, l
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, a
    add b
    add c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    add d
    add e
    ld h, b
    add h
    add l
    add [hl]
    add a
    adc b
    ld [$0909], sp
    ld [$0808], sp
    ld [$0808], sp
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ld [$0909], sp
    ld [$0808], sp
    ld [$0808], sp
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ld [$0908], sp
    ld [$0808], sp
    ld [$0808], sp
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    cpl
    ld c, $02
    ld l, b
    ld l, c
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld d, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, c
    ld l, b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec l
    dec l
    ld l, d
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, h
    ld l, e
    ld l, d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec l
    dec l
    dec l
    cpl
    ld c, $02
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, h
    ld e, e
    ld e, d
    ld e, c
    ld e, b
    ld h, h
    ld h, l
    dec c
    dec c
    ld c, $08
    ld [$0808], sp
    jr z, jr_029_5651

    jr z, jr_029_5653

    ld l, $0e
    ld c, $5d
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, e
    ld h, d
    ld h, c
    ld h, b
    ld e, a
    ld h, [hl]
    ld h, a
    dec c
    dec c
    ld c, $0e
    ld [$0808], sp
    jr z, jr_029_566d

    jr z, jr_029_5675

    ld l, $0d
    dec c
    cpl
    dec b
    inc bc
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_029_5651:
    ld c, h
    ld a, [bc]

jr_029_5653:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    dec b

jr_029_566d:
    inc bc
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, [bc]
    ld a, [bc]

jr_029_5675:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    ld [bc], a
    ld b, $0e
    rrca
    dec bc
    inc c
    ld h, e
    ld h, h
    dec bc
    inc c
    ld h, l
    ld h, [hl]
    dec bc
    inc c
    ld h, a
    ld l, b
    dec bc
    inc c
    ld l, c
    ld l, d
    dec bc
    inc c
    ld l, e
    ld l, h
    dec bc
    inc c
    cpl
    ld [bc], a
    ld b, $6d
    rrca
    ld [$6e0c], sp
    ld l, a
    ld [$700c], sp
    ld [hl], c
    ld [$700c], sp
    ld [hl], e
    ld [$740c], sp
    ld [hl], l
    ld [$760c], sp
    ld [hl], a
    dec bc
    inc c
    cpl
    ld [bc], a
    rlca
    jr nz, jr_029_56f4

    inc c
    inc c
    ld hl, $0c2e
    ld a, [bc]
    ld [hl+], a
    cpl
    inc c
    ld a, [bc]
    inc hl
    jr nc, jr_029_56e1

    ld a, [bc]
    ld hl, $0c31
    ld a, [bc]
    inc h
    dec hl
    inc c
    inc c
    dec h
    inc l
    inc c
    inc c

jr_029_56e1:
    cpl
    ld [bc], a
    rlca
    ld e, l
    ld e, [hl]
    inc c
    inc c
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b

jr_029_56f4:
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b
    ld h, b
    ld h, c
    inc c
    inc c
    cpl
    ld [bc], a
    rlca
    jr nz, jr_029_572b

    inc c
    inc c
    ld hl, $0c27
    ld a, [bc]
    ld [hl+], a
    jr z, jr_029_571a

    ld a, [bc]
    inc hl
    add hl, hl
    dec c
    ld a, [bc]
    ld hl, $0c2a
    ld a, [bc]
    inc h
    dec hl
    inc c

jr_029_571a:
    inc c
    dec h
    inc l
    inc c
    inc c
    cpl
    ld [bc], a
    rlca
    ld e, l
    ld e, [hl]
    inc c
    inc c
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a

jr_029_572b:
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b
    ld h, b
    ld h, c
    inc c
    inc c
    cpl
    dec b
    ld b, $7e
    ld a, a
    add b
    add c
    add d
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add e
    add h
    add l
    add [hl]
    add a
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    adc b
    adc c
    adc d
    adc e
    adc h
    dec bc
    ld c, $0e
    ld c, $0a
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ld c, $0e
    ld c, $0e
    ld c, $92
    sub e
    sub h
    sub l
    sub [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    dec b
    ld b, $69
    ld l, d
    ld l, d
    ld l, d
    ld l, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld l, e
    ld l, h
    ld l, h
    ld l, h
    ld l, e
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, l
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    inc bc
    add hl, bc
    ld [hl], e
    ld [hl], h
    ld l, a
    dec c
    dec c
    ld [$7675], sp
    ld [hl], b
    dec c
    dec c
    ld [$7877], sp
    ld [hl], b
    dec c
    dec c
    ld [$7a79], sp
    ld [hl], c
    dec c
    dec c
    ld [$7b79], sp
    ld [hl], d
    dec c
    dec c
    ld [$7d7c], sp
    ld c, b
    dec bc
    dec bc
    ld [$8180], sp
    ccf
    dec bc
    dec bc
    ld [$8382], sp
    dec [hl]
    dec bc
    dec bc
    ld [$2984], sp
    ld a, [hl+]
    dec bc
    ld [$2f08], sp
    inc bc
    add hl, bc
    sbc a
    and b
    ld l, a
    dec c
    dec c
    ld [$a17e], sp
    ld [hl], b
    inc c
    dec c
    ld [$a3a2], sp
    ld [hl], b
    dec c
    dec c
    ld [$a47f], sp
    sub l
    ld [$0809], sp
    and l
    and [hl]
    sub [hl]
    add hl, bc
    add hl, bc
    ld [$a17e], sp
    ld c, b
    add hl, bc
    add hl, bc
    ld [$a8a7], sp
    ccf
    add hl, bc
    add hl, bc
    ld [$aaa9], sp
    dec [hl]
    add hl, bc
    add hl, bc
    ld [$29ab], sp
    ld a, [hl+]
    add hl, bc
    ld [$2f08], sp
    inc bc
    add hl, bc
    ld [hl], e
    ld [hl], h
    ld l, a
    dec c
    dec c
    ld [$7675], sp
    ld [hl], b
    dec c
    dec c
    ld [$7877], sp
    ld [hl], b
    dec c
    dec c
    ld [$9897], sp
    ld [hl], c
    dec bc
    dec bc
    ld [$9a99], sp
    ld [hl], d
    dec bc
    dec bc
    ld [$9c9b], sp
    ld c, b
    dec bc
    dec bc
    ld [$8180], sp
    ccf
    dec bc
    dec bc
    ld [$8382], sp
    dec [hl]
    dec bc
    dec bc
    ld [$2984], sp
    ld a, [hl+]
    dec bc
    ld [$2f08], sp
    inc bc
    add hl, bc
    sbc a
    and b
    ld l, a
    dec c
    dec c
    ld [$a17e], sp
    ld [hl], b
    inc c
    dec c
    ld [$a3a2], sp
    ld [hl], b
    dec c
    dec c
    ld [$a47f], sp
    sub l
    ld [$0809], sp
    and l
    and [hl]
    sub [hl]
    add hl, bc
    add hl, bc
    ld [$a17e], sp
    ld c, b
    add hl, bc
    add hl, bc
    ld [$a8a7], sp
    ccf
    add hl, bc
    add hl, bc
    ld [$aaa9], sp
    dec [hl]
    add hl, bc
    add hl, bc
    ld [$29ab], sp
    ld a, [hl+]
    add hl, bc
    ld [$2f08], sp
    ld [bc], a
    inc bc
    add l
    add [hl]
    ld c, $0e
    add a
    adc b
    inc c
    inc c
    adc c
    adc d
    ld c, $0e
    cpl
    ld [bc], a
    inc bc
    xor h
    xor l
    ld c, $0e
    xor [hl]
    xor a
    inc c
    inc c
    or b
    or c
    ld c, $0e
    cpl
    inc bc
    dec b
    ld a, a
    ld e, a
    adc h
    ld a, [bc]
    ld a, [bc]
    ld [$6160], sp
    adc l
    ld a, [bc]
    ld a, [bc]
    ld [$6362], sp
    adc [hl]
    ld a, [bc]
    ld a, [bc]
    ld [$9291], sp
    adc a
    ld a, [bc]
    ld a, [bc]
    ld [$9493], sp
    sub b
    ld a, [bc]
    ld a, [bc]
    ld [$032f], sp
    dec b
    ld a, a
    ld e, a
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    ld h, b
    ld h, c
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    ld h, d
    ld h, e
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    sub c
    sub d
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    sub e
    sub h
    or d
    ld a, [bc]
    ld a, [bc]
    ld [$032f], sp
    dec b
    ld a, a
    ld e, a
    adc h
    ld a, [bc]
    ld a, [bc]
    ld [$6160], sp
    adc l
    ld a, [bc]
    ld a, [bc]
    ld [$6362], sp
    adc [hl]
    ld a, [bc]
    ld a, [bc]
    ld [$b4b3], sp
    or l
    ld a, [bc]
    ld [$b608], sp
    or a
    cp b
    ld a, [bc]
    ld [$2f08], sp
    inc bc
    dec b
    ld a, a
    ld e, a
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    ld h, b
    ld h, c
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    ld h, d
    ld h, e
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    or e
    or h
    cp c
    ld a, [bc]
    ld [$b608], sp
    or a
    cp d
    ld a, [bc]
    ld [$2f08], sp
    rlca
    ld [$0100], sp
    ld bc, $0201
    inc bc
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    ld b, $07
    ld [$1312], sp
    inc d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    jr nz, jr_029_5979

    rla
    jr jr_029_5988

    inc hl
    inc h
    add hl, bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    jr nc, jr_029_5997

    daa
    jr z, jr_029_59a6

    inc sp
    inc [hl]
    add hl, bc
    dec bc
    dec bc

jr_029_5979:
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add b
    ld [hl], $37
    jr c, jr_029_5984

    inc bc
    inc b

jr_029_5984:
    add hl, bc
    dec bc
    dec bc
    dec bc

jr_029_5988:
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, b
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, d
    ld b, e
    ld b, h
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc

jr_029_5997:
    add hl, bc
    add hl, bc
    ld d, b
    ld d, [hl]
    ld d, a
    ld e, b
    ld de, $0921
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc

jr_029_59a6:
    add hl, bc
    rst RST_38
    ld sp, $5141
    rst RST_38
    rst RST_38
    add hl, de
    ld b, $0e
    ld c, $0e
    ld b, $06
    add hl, bc
    cpl
    rlca
    ld [$7f7b], sp
    ld a, a
    ld a, a
    ld e, e
    ld e, h
    ld e, l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, h
    ld l, e
    ld l, h
    ld l, l
    ld b, $07
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, l
    ld e, [hl]
    rst RST_38
    rst RST_38
    ld d, $17
    jr jr_029_59e5

    add hl, bc
    ld b, $06
    dec bc
    dec bc
    dec bc
    ld a, [hl]
    ld e, [hl]
    rst RST_38

jr_029_59e5:
    rst RST_38
    ld h, $27
    jr z, jr_029_59f3

    add hl, bc
    ld b, $06
    dec bc
    dec bc
    dec bc
    ld a, e
    ld e, [hl]
    rst RST_38

jr_029_59f3:
    rst RST_38
    ld [hl], $37
    jr c, jr_029_5a01

    add hl, bc
    ld b, $06
    dec bc
    dec bc
    dec bc
    ld l, a
    ld e, [hl]
    rst RST_38

jr_029_5a01:
    rst RST_38
    ld b, [hl]
    ld b, a
    ld c, b
    add hl, bc
    add hl, bc
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, c
    ld l, [hl]
    rst RST_38
    rst RST_38
    ld d, [hl]
    ld d, a
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld sp, $1941
    ld b, $06
    ld b, $06
    ld c, $0e
    add hl, bc
    cpl
    dec b
    ld b, $81
    add d
    add e
    add h
    add l
    inc c
    inc c
    inc c
    inc c
    inc c
    add [hl]
    add a
    adc b
    adc c
    adc d
    inc c
    inc c
    inc c
    inc c
    inc c
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    adc e
    add a
    adc l
    adc [hl]
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    sub b
    sub c
    sub d
    sub e
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    inc c
    dec c
    sub h
    sub l
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    cpl
    dec b
    ld b, $81
    add d
    add e
    add h
    add l
    inc c
    inc c
    inc c
    inc c
    inc c
    add [hl]
    add a
    adc b
    adc c
    adc d
    inc c
    inc c
    inc c
    inc c
    inc c
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    adc e
    add a
    adc l
    adc [hl]
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    sub b
    sub c
    sub d
    sub e
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    inc c
    dec c
    sub h
    sub l
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    cpl
    dec b
    ld b, $60
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc c
    inc c
    dec c
    dec c
    inc c
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc c
    dec c
    dec c
    dec c
    inc c
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    dec bc
    inc c
    dec c
    ld c, $59
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    cpl
    dec b
    ld b, $60
    sub [hl]
    sub a
    ld h, e
    ld h, h
    inc c
    inc c
    dec c
    dec c
    inc c
    ld [hl], b
    sbc b
    sbc c
    sbc d
    ld [hl], h
    inc c
    dec c
    dec c
    dec c
    inc c
    ld h, l
    sbc e
    sbc h
    sbc l
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    ld [hl], l
    sbc [hl]
    sbc a
    and b
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    dec bc
    inc c
    dec c
    ld c, $59
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    cpl
    ld [bc], a
    inc bc
    sub c
    sub d
    inc c
    inc c
    sub e
    sub h
    inc c
    inc c
    sub l
    sub [hl]
    inc c
    inc c
    cpl
    ld [bc], a
    inc bc
    sub a
    sbc b
    inc c
    inc c
    sbc c
    sbc d
    inc c
    inc c
    sbc e
    sbc h
    inc c
    inc c
    cpl
    ld [bc], a
    inc bc
    sbc l
    sbc [hl]
    inc c
    inc c
    sbc a
    and b
    inc c
    inc c
    and c
    and d
    inc c
    inc c
    cpl
    ld [bc], a
    inc bc
    and e
    and h
    inc c
    inc c
    and l
    and [hl]
    inc c
    inc c
    and a
    xor b
    inc c
    inc c
    cpl
    ld [bc], a
    inc b
    ld e, b
    ld e, c
    dec c
    dec c
    ld l, b
    ld l, c
    dec c
    dec c
    ld [hl], d
    ld [hl], e
    dec c
    dec c
    ld a, h
    ld a, l
    dec c
    dec c
    cpl
    ld [bc], a
    inc b
    adc e
    adc e
    dec c
    dec l
    adc h
    adc l
    dec c
    dec c
    adc [hl]
    adc a
    dec c
    dec c
    sub b
    sub c
    dec c
    dec c
    and b
    ld e, e
    or c
    ld e, e
    ret nc

    ld e, e
    db $fd
    ld e, e
    jr c, jr_029_5bec

    add c
    ld e, h
    ret c

    ld e, h
    dec a
    ld e, l
    or b
    ld e, l
    ld sp, $c05e
    ld e, [hl]
    ld c, a
    ld e, a
    sbc $5f
    cpl
    ld bc, $0807
    dec bc
    ld [de], a
    jr z, jr_029_5bb1

    ld a, [hl+]
    jr @+$2c

    rrca
    ld [$081f], sp
    jr z, jr_029_5bd9

jr_029_5bb1:
    cpl
    ld [bc], a
    rlca
    rla
    ld [$0b2a], sp
    daa
    ld [de], a
    ld a, [hl+]
    jr z, jr_029_5bf4

    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    add hl, de
    jr jr_029_5bed

    ld a, [hl+]
    rrca
    rrca
    ld [$1f08], sp
    ld c, [hl]
    ld [$2908], sp
    add b
    ld [$2f0c], sp
    inc bc
    rlca
    ld [$5017], sp
    dec bc
    ld a, [hl+]
    inc c

jr_029_5bd9:
    inc d
    daa
    ld h, b
    ld [$0c2a], sp
    ld a, [bc]
    scf
    ld d, [hl]
    ld a, [hl+]
    ld a, [hl+]
    dec c
    ld a, [de]
    add hl, de
    ld h, [hl]
    ld a, [hl+]
    ld a, [hl+]
    dec c
    rrca

jr_029_5bec:
    rrca

jr_029_5bed:
    ld [hl], b
    ld [$0d08], sp
    rra
    ld c, [hl]
    ld a, d

jr_029_5bf4:
    ld [$0d08], sp
    add hl, hl
    add b
    add c
    ld [$0e0c], sp
    cpl
    inc b
    rlca
    ld [hl], $08
    ld d, b
    ld d, c
    dec bc
    dec bc
    inc c
    inc c
    inc de
    inc d
    ld h, b
    ld h, c
    ld [$0c08], sp
    inc c
    dec bc
    ld a, [bc]
    ld d, [hl]
    ld d, a
    ld a, [hl+]
    ld a, [hl+]
    dec c
    dec c
    dec de
    ld a, [de]
    ld h, [hl]
    ld h, a
    ld a, [hl+]
    ld a, [hl+]
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [$0d08], sp
    dec c
    rra
    ld c, [hl]
    ld a, d
    ld a, e
    ld [$0d08], sp
    dec c
    add hl, hl
    add b
    add c
    add d
    ld [$0e0c], sp
    inc c
    cpl
    dec b
    rlca
    ld [hl-], a
    ld [hl], $50
    ld d, c
    ld d, d
    ld a, [hl+]
    dec bc
    inc c
    inc c
    inc c
    ld d, $13
    ld h, b
    ld h, c
    ld h, d
    ld a, [bc]
    ld [$0c0c], sp
    inc c
    dec c
    dec bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld a, [bc]
    ld a, [hl+]
    dec c
    dec c
    dec c
    dec e
    dec de
    ld h, [hl]
    ld h, a
    ld l, b
    ld a, [bc]
    ld a, [hl+]
    dec c
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [$0d08], sp
    dec c
    dec c
    rra
    rra
    ld a, d
    ld a, e
    ld a, h
    ld [$0d08], sp
    dec c
    dec c
    add hl, hl
    add b
    add c
    add d
    add e
    ld [$0e0c], sp
    inc c
    inc c
    cpl
    ld b, $07
    ld [hl-], a
    ld [hl-], a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld a, [bc]
    ld a, [hl+]
    inc c
    inc c
    inc c
    inc c
    dec d
    ld d, $60
    ld h, c
    ld h, d
    ld h, e
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    inc e
    dec e
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [$0d08], sp
    dec c
    dec c
    dec c
    rra
    ld c, [hl]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld [$0d08], sp
    dec c
    dec c
    dec c
    add hl, hl
    add b
    add c
    add d
    add e
    add h
    ld [$0e0c], sp
    inc c
    inc c
    inc c
    cpl
    rlca
    rlca
    inc [hl]
    ld [hl-], a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    dec bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc d
    dec d
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld [$0c0a], sp
    inc c
    inc c
    inc c
    inc c
    dec bc
    inc c
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec de
    inc e
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    rra
    ld c, [hl]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add b
    add c
    add d
    add e
    add h
    add l
    ld [$0e0c], sp
    inc c
    inc c
    inc c
    inc c
    cpl
    ld [$3307], sp
    inc [hl]
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc de
    inc d
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    dec bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [de]
    dec de
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    rra
    ld c, [hl]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    ld [$0e0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    add hl, bc
    rlca
    rla
    inc sp
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld a, [bc]
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    daa
    inc de
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld a, [bc]
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    scf
    ld a, [bc]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, de
    ld a, [de]
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rra
    rra
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    ld [$0e0c], sp
    inc c
    inc c
    inc c

jr_029_5e2e:
    inc c
    inc c
    inc c
    cpl
    ld a, [bc]
    rlca
    inc sp
    rla
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    dec bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    daa
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld c, h
    ld [$0c0a], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    scf
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    jr jr_029_5e8b

    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld l, h
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_029_5e8b:
    ld [hl], l
    halt
    ld [hl], a
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld e, $4e
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld c, a
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    jr z, jr_029_5e2e

    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    ld [$0e0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    ld a, [bc]
    rlca
    inc sp
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld c, h
    ld c, h
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    jr jr_029_5f67

    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld l, h
    ld l, l
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, l
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld c, a
    ld c, a
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    inc c
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    ld a, [bc]
    rlca
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld h, b

jr_029_5f67:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc b
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc l
    cpl
    ld a, [bc]
    rlca
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, h
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    halt
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc b
    add a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc l
    inc l
    reti


    ld h, b
    db $f4
    ld h, b
    rrca
    ld h, c
    ld a, [hl+]
    ld h, c
    ld b, l
    ld h, c
    ld h, b
    ld h, c
    ld a, e
    ld h, c
    sub [hl]
    ld h, c
    or c
    ld h, c
    call z, $e761
    ld h, c
    ld [bc], a
    ld h, d
    dec e
    ld h, d
    jr c, jr_029_60eb

    ld d, e
    ld h, d
    ld l, [hl]
    ld h, d
    adc c
    ld h, d
    and h
    ld h, d
    cp a
    ld h, d
    jp c, $f562

    ld h, d
    db $10
    ld h, e
    dec hl
    ld h, e
    ld b, [hl]
    ld h, e
    ld h, c
    ld h, e
    ld a, h
    ld h, e
    sub a
    ld h, e
    or d
    ld h, e
    call $e863
    ld h, e
    inc bc
    ld h, h
    ld e, $64
    add hl, sp
    ld h, h
    ld d, h
    ld h, h
    ld l, a
    ld h, h
    adc d
    ld h, h
    and l
    ld h, h
    ret nz

    ld h, h
    db $db
    ld h, h
    or $64
    ld de, $2c65
    ld h, l
    ld b, a
    ld h, l
    ld h, d
    ld h, l
    ld a, l
    ld h, l
    sbc b
    ld h, l
    or e
    ld h, l
    adc $65
    jp hl


    ld h, l
    inc b
    ld h, [hl]
    rra
    ld h, [hl]
    ld a, [hl-]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld [hl], b
    ld h, [hl]
    cpl
    inc bc
    inc b
    nop
    ld bc, $0d02
    dec c
    dec c
    inc bc
    inc b
    dec b
    dec c
    dec c
    dec c
    inc bc
    inc b
    dec b

jr_029_60eb:
    ld c, l
    ld c, l
    ld c, l
    nop
    ld bc, $4d02
    ld c, l
    ld c, l
    cpl
    inc bc
    inc b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    xor h
    xor l
    xor [hl]
    dec bc
    dec bc
    dec bc
    xor h
    xor l
    xor [hl]
    ld c, e
    ld c, e
    ld c, e
    rrca
    ld bc, $0910
    ld c, h
    add hl, bc
    cpl
    inc bc
    inc b
    ld b, $07
    ld [$0b0b], sp
    dec bc
    ld a, a
    add b
    add c
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    dec bc
    ld c, e
    ld c, e
    ld c, e
    rrca
    rlca
    db $10
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, a
    ld h, b
    ld h, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rlca
    db $10
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    dec c
    ld c, $09
    add hl, bc
    add hl, bc
    rrca
    rlca
    db $10
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    ld de, $08af
    dec bc
    dec bc
    dec bc
    inc de
    or b
    dec d
    dec bc
    dec bc
    dec bc
    inc de
    or b
    dec d
    dec bc
    ld c, e
    dec bc
    rrca
    xor a
    ld d, $0b
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld de, $0882
    dec bc
    dec bc
    dec bc
    inc de
    ld a, a
    dec d
    dec bc
    inc bc
    dec bc
    inc de
    ld a, a
    dec d
    dec bc
    inc bc
    dec bc
    rrca
    add d
    ld d, $0b
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld de, $0862
    add hl, bc
    ld a, [bc]
    add hl, bc
    inc de
    inc d
    dec d
    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    inc d
    dec d
    add hl, bc
    ld c, c
    add hl, bc
    rrca
    ld h, d
    ld d, $09
    ld c, d
    add hl, bc
    cpl
    inc bc
    inc b
    ld de, $0812
    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    inc d
    dec d
    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    inc d
    dec d
    add hl, bc
    ld c, c
    add hl, bc
    rrca
    ld [de], a
    ld d, $09
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    rla
    xor a
    ld [$0b0b], sp
    dec bc
    inc de
    or c
    dec d
    dec bc
    dec bc
    dec bc
    inc de
    or c
    dec d
    dec bc
    ld c, e
    dec bc
    rrca
    xor a
    ld a, [de]
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    rla
    add d
    ld [$0b0b], sp
    dec bc
    inc de
    add e
    dec d
    dec bc
    dec bc
    dec bc
    inc de
    add h
    dec d
    dec bc
    dec bc
    dec bc
    rrca
    add d
    ld a, [de]
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    rla
    ld h, d
    ld [$0a09], sp
    add hl, bc
    inc de
    ld h, e
    dec d
    add hl, bc
    ld a, [bc]
    add hl, bc
    inc de
    add hl, de
    dec d
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld h, d
    ld a, [de]
    add hl, bc
    ld c, d
    add hl, bc
    cpl
    inc bc
    inc b
    rla
    ld [de], a
    ld [$0909], sp
    add hl, bc
    inc de
    jr jr_029_623e

    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    add hl, de
    dec d
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld [de], a
    ld a, [de]
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    or d
    rlca
    or e

jr_029_623e:
    dec bc
    add hl, bc
    dec bc
    or h
    ld a, a
    or l
    dec bc
    inc bc
    dec bc
    or h
    ld a, a
    or l
    ld c, e
    inc bc
    ld c, e
    or [hl]
    rlca
    or a
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    add l
    rlca
    add [hl]
    dec bc
    dec bc
    dec bc
    inc de
    ld a, a
    dec d
    dec bc
    inc bc
    dec bc
    inc de
    ld a, a
    dec d
    dec bc
    inc bc
    dec bc
    add a
    rlca
    adc b
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld h, h
    rlca
    ld h, l
    add hl, bc
    add hl, bc
    add hl, bc
    dec e
    ld a, a
    ld e, $09
    ld [bc], a
    add hl, bc
    rra
    ld a, a
    jr nz, jr_029_628a

    ld [bc], a
    add hl, bc
    ld h, [hl]
    rlca
    ld h, a
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl

jr_029_628a:
    inc bc
    inc b
    dec de
    rlca
    inc e
    add hl, bc
    add hl, bc
    add hl, bc
    dec e
    ld a, a
    ld e, $09
    ld bc, $1f09
    ld a, a
    jr nz, jr_029_62a5

    ld bc, $2109
    rlca
    ld [hl+], a
    add hl, bc
    ld c, c
    add hl, bc
    cpl

jr_029_62a5:
    inc bc
    inc b
    cp b
    rlca
    or e
    dec bc
    add hl, bc
    dec bc
    or h
    inc h
    or l
    dec bc
    dec bc
    dec bc
    or h
    inc h
    or l
    ld c, e
    ld c, e
    ld c, e
    or [hl]
    rlca
    cp c
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    adc c
    rlca
    add [hl]
    dec bc
    dec bc
    dec bc
    inc de
    add e
    dec d
    dec bc
    dec bc
    dec bc
    inc de
    add h
    dec d
    dec bc
    dec bc
    dec bc
    add a
    rlca
    adc d
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld l, b
    rlca
    ld h, l
    add hl, bc
    add hl, bc
    add hl, bc
    dec e
    ld l, c
    ld e, $09
    ld a, [bc]
    add hl, bc
    rra
    dec h
    jr nz, jr_029_62f6

    add hl, bc
    add hl, bc
    ld h, [hl]
    rlca
    ld l, d
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl

jr_029_62f6:
    inc bc
    inc b
    inc hl
    rlca
    inc e
    add hl, bc
    add hl, bc
    add hl, bc
    dec e
    inc h
    ld e, $09
    ld a, [bc]
    add hl, bc
    rra
    dec h
    jr nz, jr_029_6311

    ld a, [bc]
    add hl, bc
    ld hl, $2607
    add hl, bc
    ld c, c
    add hl, bc
    cpl

jr_029_6311:
    inc bc
    inc b
    cp d
    rlca
    or e
    dec bc
    add hl, bc
    dec bc
    cp e
    ld a, a
    cp h
    dec bc
    ld b, e
    dec bc
    cp e
    ld a, a
    cp h
    ld c, e
    inc bc
    ld c, e
    or [hl]
    rlca
    cp l
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    adc e
    rlca
    add [hl]
    dec bc
    dec bc
    dec bc
    adc h
    ld a, a
    adc l
    dec bc
    inc bc
    dec bc
    adc [hl]
    ld a, a
    adc a
    dec bc
    ld b, e
    dec bc
    add a
    rlca
    sub b
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld l, e
    rlca
    ld h, l
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, h
    ld a, a
    ld l, l
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld a, [hl+]
    ld a, a
    dec hl
    add hl, bc
    ld [bc], a
    add hl, bc
    ld h, [hl]
    rlca
    ld l, [hl]
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    daa
    rlca
    inc e
    add hl, bc
    add hl, bc
    add hl, bc
    jr z, jr_029_63eb

    add hl, hl
    add hl, bc
    ld bc, $2a09
    ld a, a
    dec hl
    add hl, bc
    ld bc, $2109
    rlca
    inc l
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    cp [hl]
    rlca
    or e
    dec bc
    add hl, bc
    dec bc
    cp e
    cp a
    cp h
    dec bc
    dec bc
    dec bc
    cp e
    ld a, a
    cp h
    ld c, e
    inc b
    ld c, e
    or [hl]
    ld bc, $0bc0
    ld c, h
    dec bc
    cpl
    inc bc
    inc b
    sub c
    rlca
    add [hl]
    dec bc
    add hl, bc
    dec bc
    adc h
    sub d
    adc l
    dec bc
    dec bc
    dec bc
    adc [hl]
    ld a, a
    adc a
    dec bc
    inc bc
    dec bc
    add a
    rlca
    sub e
    dec bc
    ld c, c
    dec bc
    cpl
    inc bc
    inc b
    ld l, a
    rlca
    ld h, l
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, h
    ld [hl], b
    ld l, l
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, a
    dec hl
    add hl, bc
    ld [bc], a
    add hl, bc
    ld h, [hl]
    rlca
    ld [hl], c
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    dec l
    rlca
    inc e
    add hl, bc
    add hl, bc
    add hl, bc
    jr z, jr_029_6406

    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld a, a
    dec hl
    add hl, bc
    ld bc, $2109
    rlca
    cpl
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b

jr_029_63eb:
    pop bc
    ld bc, $0bc2
    inc c
    dec bc
    jp $c47f


    dec bc
    inc bc
    dec bc
    jp $c47f


    ld c, e
    inc bc
    ld c, e
    push bc
    ld bc, $0bc6
    ld c, h
    dec bc
    cpl
    inc bc
    inc b

jr_029_6406:
    sub h
    rlca
    add [hl]
    dec bc
    dec bc
    dec bc
    sub l
    ld a, a
    sub [hl]
    dec bc
    inc bc
    dec bc
    sub l
    ld a, a
    sub [hl]
    ld c, e
    inc bc
    ld c, e
    add a
    rlca
    sub a
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld [hl], d
    rlca
    ld [hl], e
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [hl], h
    ld a, a
    ld [hl], l
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld [hl], h
    ld a, a
    ld [hl], l
    ld c, d
    ld [bc], a
    ld c, d
    halt
    rlca
    ld [hl], a
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    jr nc, jr_029_6445

    ld sp, $0909
    add hl, bc
    ld [hl-], a
    ld a, a
    inc sp

jr_029_6445:
    add hl, bc
    ld bc, $3209
    ld a, a
    inc sp
    ld c, c
    ld bc, $3449
    rlca
    dec [hl]
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    rst RST_00
    rlca
    jp nz, $090b

    dec bc
    jp $c424


    dec bc
    dec bc
    dec bc
    jp $c424


    ld c, e
    ld c, e
    ld c, e
    push bc
    rlca
    ret z

    dec bc
    ld c, c
    dec bc
    cpl
    inc bc
    inc b
    sbc b
    rlca
    add [hl]
    dec bc
    add hl, bc
    dec bc
    sub l
    add e
    sub [hl]
    dec bc
    dec bc
    dec bc
    sub l
    add h
    sub [hl]
    ld c, e
    dec bc
    ld c, e
    add a
    rlca
    sbc c
    dec bc
    ld c, c
    dec bc
    cpl
    inc bc
    inc b
    ld a, b
    rlca
    ld [hl], e
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [hl], h
    ld l, c
    ld [hl], l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    dec h
    ld [hl], l
    ld c, d
    add hl, bc
    ld c, d
    halt
    rlca
    ld a, c
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    ld [hl], $07
    ld sp, $0909
    add hl, bc
    ld [hl-], a
    inc h
    inc sp
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld [hl-], a
    dec h
    inc sp
    ld c, c
    add hl, bc
    ld c, c
    inc [hl]
    rlca
    scf
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    ret


    rlca
    jp nz, $090b

    dec bc
    jp $c4bf


    dec bc
    dec bc
    dec bc
    jp $c4bf


    ld c, e
    ld c, e
    ld c, e
    push bc
    ld bc, $0bca
    ld c, h
    dec bc
    cpl
    inc bc
    inc b
    sbc d
    rlca
    add [hl]
    dec bc
    dec bc
    dec bc
    sub l
    sub d
    sub [hl]
    dec bc
    dec bc
    dec bc
    sub l
    sub d
    sub [hl]
    ld c, e
    ld c, e
    ld c, e
    add a
    rlca
    sbc e
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    jr c, jr_029_6575

    ld [hl], e
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [hl], h
    ld a, [hl-]
    ld [hl], l
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld [hl], h
    ld a, [hl-]
    ld [hl], l
    ld c, d
    ld c, c
    ld c, d
    halt
    ld a, d
    dec sp
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    jr c, jr_029_654f

    ld sp, $0909
    add hl, bc
    ld [hl-], a
    ld a, [hl-]
    inc sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl-], a
    ld a, [hl-]
    inc sp
    ld c, c
    ld c, c
    ld c, c
    inc [hl]
    add hl, sp
    dec sp
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    srl l
    or e
    dec bc
    dec bc
    dec bc
    call z, $cd3f
    dec bc
    dec bc
    dec bc
    adc $42
    rst RST_08
    dec bc
    dec bc
    dec bc
    or [hl]
    ld b, h
    ret nc

    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    inc b
    sbc h
    dec a
    add [hl]
    dec bc
    dec bc

jr_029_654f:
    dec bc
    sbc l
    ccf
    sbc [hl]
    dec bc
    dec bc
    dec bc
    sbc a
    ld b, d
    and b
    dec bc
    dec bc
    dec bc
    add a
    ld b, h
    and c
    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    inc b
    inc a
    dec a
    ld h, l
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, $3f
    ld b, b
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld b, c
    ld b, d
    ld b, e
    ld a, [bc]

jr_029_6575:
    ld a, [bc]
    add hl, bc
    ld h, [hl]
    ld b, h
    ld b, l
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    inc a
    dec a
    inc e
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, $3f
    ld b, b
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld b, c
    ld b, d
    ld b, e
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld hl, $4544
    add hl, bc
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    pop de
    ld b, a
    or e
    dec bc
    dec bc
    dec bc
    and e
    ld c, c
    jp nc, Jump_000_0b0b

    dec bc
    db $d3
    ld c, h
    and [hl]
    dec bc
    dec bc
    dec bc
    or [hl]
    ld c, [hl]
    call nc, Call_000_0b0b
    dec bc
    cpl
    inc bc
    inc b
    and d
    ld b, a
    add [hl]
    dec bc
    dec bc
    dec bc
    and e
    ld c, c
    and h
    dec bc
    dec bc
    dec bc
    and l
    ld c, h
    and [hl]
    dec bc
    dec bc
    dec bc
    add a
    ld c, [hl]
    and a
    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    inc b
    ld a, e
    ld b, a
    ld h, l
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld c, b
    ld c, c
    ld c, d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ld c, h
    ld c, l
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld h, [hl]
    ld c, [hl]
    ld a, h
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    ld b, [hl]
    ld b, a
    inc e
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld c, b
    ld c, c
    ld c, d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ld c, h
    ld c, l
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld hl, $4f4e
    add hl, bc
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    push de
    ld d, c
    ld d, d
    dec bc
    dec bc
    dec bc
    sub $54
    rst RST_10
    dec bc
    dec bc
    dec bc
    ld d, [hl]
    ld d, a
    rst RST_10
    dec bc
    dec bc
    dec bc
    ld e, c
    ld e, d
    ret c

    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    inc b
    xor b
    ld d, c
    ld d, d
    dec bc
    dec bc
    dec bc
    xor c
    ld d, h
    ld d, l
    dec bc
    dec bc
    dec bc
    ld d, [hl]
    ld d, a
    xor d
    dec bc
    dec bc
    dec bc
    ld e, c
    ld e, d
    xor e
    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    inc b
    ld a, l
    ld d, c
    ld d, d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld d, e
    ld d, h
    ld d, l
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld d, [hl]
    ld d, a
    ld e, b
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld e, c
    ld e, d
    ld a, [hl]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    ld d, b
    ld d, c
    ld d, d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld d, e
    ld d, h
    ld d, l
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld d, [hl]
    ld d, a
    ld e, b
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld e, c
    ld e, d
    ld e, e
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    ld a, a
    ld a, a
    ld a, a
    ld b, $06
    ld b, $7f
    ld a, a
    ld a, a
    ld b, $06
    ld b, $7f
    ld a, a
    ld a, a
    ld b, $06
    ld b, $7f
    ld a, a
    ld a, a
    ld b, $06
    ld b, $fa
    sbc c
    push bc
    cp $00
    ret z

    ld a, [$c522]
    cp $14
    ret z

    cp $1a
    ret z

    cp $19
    ret z

    ld a, [$c5c9]
    bit 7, a
    ret nz

    ld de, $c869

jr_029_66a6:
    xor a
    ld [$c874], a
    ld a, [de]
    cp $fe
    ret z

    cp $f0
    jr c, jr_029_66b5

    inc de
    jr jr_029_66a6

jr_029_66b5:
    call Call_029_66bb
    inc de
    jr jr_029_66a6

Call_029_66bb:
    push de
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, $6758
    add hl, bc
    ld a, [hl+]
    ld l, [hl]
    ld h, $00
    add hl, hl
    ld bc, $673c
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $c902
    add hl, bc
    add l
    ld [$c5c3], a
    ld a, $00
    adc h
    add hl, bc
    ld [$c5c4], a
    pop hl
    ld de, $4000
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [hl+]
    ld [$c5c5], a
    ld a, [hl+]
    ld [$c5c6], a
    ld a, [$c5c3]
    ld c, a
    ld a, [$c5c4]
    ld b, a

jr_029_66f9:
    ld a, [$c5c5]
    ld e, a

jr_029_66fd:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_029_66fd

    ld a, [$c5c3]
    add $0e
    ld [$c5c3], a
    ld c, a
    ld a, [$c5c4]
    adc $00
    ld [$c5c4], a
    ld b, a
    ld a, [$c5c5]
    ld e, a

jr_029_6719:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_029_6719

    ld a, [$c5c3]
    add $0e
    ld [$c5c3], a
    ld c, a
    ld a, [$c5c4]
    adc $00
    ld [$c5c4], a
    ld b, a
    ld a, [$c5c6]
    dec a
    ld [$c5c6], a
    jr nz, jr_029_66f9

    pop de
    ret


    nop
    nop
    inc e
    nop
    jr c, jr_029_6742

jr_029_6742:
    ld d, h
    nop
    ld [hl], b
    nop
    adc h
    nop
    xor b
    nop
    call nz, $e000
    nop
    db $fc
    nop
    jr jr_029_6753

    inc [hl]

jr_029_6753:
    ld bc, $0150
    ld l, h
    ld bc, $0205
    dec b
    ld [bc], a
    dec c
    nop
    dec c
    nop
    dec b
    ld bc, $0105
    ld bc, $0100
    nop
    dec c
    ld bc, $010d
    ld b, $02
    ld b, $02
    add hl, bc
    ld bc, $0109
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    dec bc
    nop
    dec bc
    nop
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec c
    ld bc, $010d
    dec c
    ld bc, $010d
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0006
    ld b, $00
    ld b, $00
    ld b, $00
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    ld b, $00
    ld b, $00
    inc c
    inc b
    inc c
    inc b
    dec b
    inc b
    dec b
    inc b
    nop
    inc bc
    nop
    inc bc
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    inc b
    nop
    inc b
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    ld bc, $0103
    inc bc
    dec bc
    ld bc, $010b
    ld bc, $0101
    ld bc, $020c
    inc c
    ld [bc], a
    inc b
    ld bc, HeaderLogo
    nop
    nop
    nop
    nop
    inc c
    dec b
    inc c
    dec b
    nop
    inc b
    nop
    inc b
    dec bc
    nop
    dec bc
    nop
    dec bc
    ld bc, $010b
    inc b
    inc bc
    inc b
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld [$0808], sp
    ld [$0400], sp
    nop
    inc b
    dec b
    inc b
    dec b
    inc b
    nop
    nop
    nop
    nop
    ld b, $03
    ld b, $03
    nop
    ld [bc], a
    nop
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc b
    ld [$0804], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld bc, HeaderLogo
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    nop
    nop
    nop
    nop
    ld [$0801], sp
    ld bc, $0108
    ld [$0001], sp
    inc bc
    nop
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    ld bc, $010a
    add hl, bc
    ld bc, $0108
    rlca
    ld bc, $0106
    dec b
    ld bc, HeaderLogo
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $011e

jr_029_6888:
    ld a, e
    push de
    call Call_029_68b4
    call Call_000_03d3
    ld a, $08
    call Call_000_0753
    pop de
    inc e
    ld a, $0d
    cp e
    jr nz, jr_029_6888

    ret


    ld e, $0c

jr_029_689f:
    ld a, e
    push de
    call Call_029_68b4
    call Call_000_03d3
    ld a, $08
    call Call_000_0753
    pop de
    dec e
    ld a, $ff
    cp e
    jr nz, jr_029_689f

    ret


Call_029_68b4:
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, $68cf
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    push bc
    ld bc, $5b86
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    pop bc
    call Call_000_02a5
    ret


    dec hl
    sbc b
    ld a, [hl+]
    sbc b
    add hl, hl
    sbc b
    jr z, @-$66

    daa
    sbc b
    ld h, $98
    dec h
    sbc b
    inc h
    sbc b
    inc hl
    sbc b
    ld [hl+], a
    sbc b
    ld [hl+], a
    sbc b
    ld [hl+], a
    sbc b
    ld [hl+], a
    sbc b
    ld a, $01
    call Call_029_690d
    ld a, $3c
    call Call_000_0753
    xor a
    call Call_029_690d
    ret


    ld a, $02
    call Call_029_690d
    ld a, $28
    call Call_000_0753
    ld a, $03
    call Call_029_690d
    ld a, $14
    call Call_000_0753
    ret


Call_029_690d:
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, $692b
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    ld de, $6933
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_02a5
    call Call_000_03d3
    call Call_000_01b7
    ret


    ld h, b
    sbc b
    ld h, b
    sbc b
    ld b, [hl]
    sbc b
    ld b, [hl]
    sbc b
    dec hl
    ld c, d
    ld h, b
    ld c, d
    adc e
    ld b, d
    sub [hl]
    ld b, d
    ld a, [$c522]
    ld [$c539], a
    call Call_000_37ae
    call Call_000_1746
    call Call_000_0416
    call Call_029_6f98
    call Call_029_70bf
    call Call_029_6986
    call Call_000_37ae
    ld a, $ff
    ldh [$ffa6], a
    ldh [$ffa7], a
    ld a, [$c539]
    ld [$c522], a
    call Call_000_37ca
    ld a, [$c5e1]
    cp $ff
    ret nz

    ld a, $4e
    call Call_000_1b27
    ret


Call_029_6971:
    call Call_000_0722
    call Call_000_0420
    call $09c1
    ld a, $05
    call Call_000_19e9
    call Call_000_072a
    call Call_000_044b
    ret


Call_029_6986:
    xor a
    ld [$c5e1], a
    ld a, $0a
    ld [$c872], a

jr_029_698f:
    call Call_029_6f98

Jump_029_6992:
    ld a, [$c58c]
    cp $00
    jr nz, jr_029_69a6

    ld a, $0f
    call Call_029_70e7
    ld a, $8c
    call Call_000_0753
    jp Jump_029_6a33


jr_029_69a6:
    call $6f46
    ld a, [$c871]
    cp $10
    jr nc, jr_029_69c4

    ld a, $0d
    call Call_029_70e7
    ld a, $27
    call Call_000_080e
    ld a, $8c
    call Call_000_0753
    call Call_029_6a34
    jr jr_029_698f

jr_029_69c4:
    call Call_029_70a4
    call Call_029_6f7b
    call Call_029_6a4e
    ld a, $07
    call Call_029_6d30
    call Call_029_6b06
    ld a, $01
    call Call_029_6d30
    ld a, $06
    call Call_029_6d30
    call Call_029_6a34
    call Call_029_6c6c
    ld a, $3c
    call Call_000_0753
    call Call_029_6a34
    call Call_029_6b89
    call Call_029_6a34
    ld a, [$c5e1]
    cp $ff
    ret z

    ld a, $15
    call Call_029_70e7
    call Call_029_70a4
    ld a, $03
    call Call_029_70e7
    ld a, $00
    ld [$c875], a
    ld a, $10
    ld [$c876], a
    call Call_029_6ceb
    call Call_000_03fe
    ld a, [$c875]
    cp $00
    jr nz, jr_029_6a23

    call Call_029_70bf
    jp Jump_029_6992


jr_029_6a23:
    call Call_000_03fe
    call Call_029_6a34
    ld a, $04
    call Call_029_70e7
    ld a, $3c
    call Call_000_0753

Jump_029_6a33:
    ret


Call_029_6a34:
    xor a
    ld [$c668], a
    ld a, $0d
    ld [$c669], a
    ld a, $20
    ld [$c8e6], a
    call Call_000_10d0
    call Call_000_03d3
    ld a, $1e
    call Call_000_0753
    ret


Call_029_6a4e:
    ld d, a
    ld a, $03
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d

jr_029_6a58:
    ld bc, $6a85
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_029_6d30
    ld bc, $6a85
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [$ff9e], a
    call Call_029_6d52
    ld a, $20
    call Call_000_0753
    ldh a, [$ffa0]
    dec a
    ldh [$ffa0], a
    bit 7, a
    jr z, jr_029_6a58

    ret


    rlca
    ld b, $01
    nop

Call_029_6a89:
    xor a
    ld [$c875], a
    ld [$c876], a
    ld [$c877], a
    ld de, $0005

jr_029_6a96:
    ld a, [$c5d9]
    ld l, a
    ld a, [$c5da]
    ld h, a
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_029_6aad

    push af
    ld a, [$c877]
    inc a
    ld [$c877], a
    pop af

jr_029_6aad:
    ld l, a
    ld h, $00
    ld bc, $7171
    add hl, bc
    ld a, [hl]
    and $0f
    cp $0b
    jr nz, jr_029_6ac4

    push af
    ld a, [$c876]
    inc a
    ld [$c876], a
    pop af

jr_029_6ac4:
    ld hl, $c875
    add [hl]
    ld [hl], a
    dec de
    bit 7, d
    jr z, jr_029_6a96

jr_029_6ace:
    cp $15
    jr nz, jr_029_6ae5

    ld a, [$c877]
    cp $02
    jr nz, jr_029_6adf

    ld a, $ff
    ld [$c875], a
    ret


jr_029_6adf:
    ld a, $95
    ld [$c875], a
    ret


jr_029_6ae5:
    cp $16
    jr c, jr_029_6b02

    ld a, [$c876]
    cp $00
    jr z, jr_029_6b01

    ld a, [$c876]
    dec a
    ld [$c876], a
    ld a, [$c875]
    sub $0a
    ld [$c875], a
    jr jr_029_6ace

jr_029_6b01:
    xor a

jr_029_6b02:
    ld [$c875], a
    ret


Call_029_6b06:
    ld a, [$c58c]
    ld [$c875], a
    xor a
    call Call_029_70e7
    ld a, [$c872]
    ld hl, $c58c
    cp [hl]
    jr nc, jr_029_6b1c

    ld [$c58c], a

jr_029_6b1c:
    ld a, $00
    ld [$c668], a
    ld a, $0f
    ld [$c669], a
    ld a, $1f
    ld [$c8e6], a
    call Call_000_10d0
    call Call_000_03d3

jr_029_6b31:
    call Call_000_0ba4
    call Call_000_0456
    ld a, [$c188]
    and $f1
    jr z, jr_029_6b31

    bit 0, a
    jr nz, jr_029_6b6c

    and $90
    jr z, jr_029_6b5c

    ld a, [$c58c]
    cp $0a
    jr z, jr_029_6b31

    ld hl, $c875
    cp [hl]
    jr z, jr_029_6b31

    ld a, [$c58c]
    inc a
    ld [$c58c], a
    jr jr_029_6b1c

jr_029_6b5c:
    ld a, [$c58c]
    cp $01
    jr z, jr_029_6b31

    ld a, [$c58c]
    dec a
    ld [$c58c], a
    jr jr_029_6b1c

jr_029_6b6c:
    ld a, $01
    call Call_029_70e7
    ld a, [$c58c]
    ld [$c872], a
    ld a, [$c875]
    ld hl, $c872
    sub [hl]
    ld [$c58c], a
    ld a, $1e
    call Call_000_0753
    jp Jump_029_70a4


Call_029_6b89:
    ld a, [$c864]
    cp $ff
    jr nz, jr_029_6b95

Jump_029_6b90:
jr_029_6b90:
    ld a, $02
    jp Jump_029_6c26


jr_029_6b95:
    cp $00
    jr nz, jr_029_6b9e

Jump_029_6b99:
jr_029_6b99:
    ld a, $01
    jp Jump_029_6c26


jr_029_6b9e:
    xor a
    call Call_029_6d30
    xor a
    call Call_029_6faf
    ld [$c863], a

jr_029_6ba9:
    ld a, $20
    call Call_000_0753
    ld a, [$c863]
    cp $11
    jr nc, jr_029_6c16

    ld a, [$c863]
    ld hl, $c864
    cp [hl]
    jr nz, jr_029_6bc5

    ld a, [$c884]
    cp $00
    jr nz, jr_029_6bce

jr_029_6bc5:
    jr nc, jr_029_6b99

    ld a, [$c884]
    cp $00
    jr z, jr_029_6bea

jr_029_6bce:
    ld a, [$c863]
    ld [$c87a], a
    ld a, [$c873]
    ldh [$ff9e], a
    ld a, [$c884]
    cp $01
    jr nz, jr_029_6be5

    call $6de9
    jr jr_029_6bf2

jr_029_6be5:
    call Call_029_6e1d
    jr jr_029_6bf2

jr_029_6bea:
    ld a, [$c873]
    ldh [$ff9e], a
    call Call_029_6d52

jr_029_6bf2:
    ld a, [$c873]
    call Call_029_6d30
    xor a
    call Call_029_6faf
    ld [$c863], a
    cp $00
    jr z, jr_029_6b90

    cp $ff
    jr z, jr_029_6b99

    bit 7, a
    jr nz, jr_029_6c16

    ld a, [$c873]
    inc a
    ld [$c873], a
    cp $06
    jr nz, jr_029_6ba9

jr_029_6c16:
    ld a, [$c863]
    ld hl, $c864
    cp [hl]
    jr z, jr_029_6c25

    jp nc, Jump_029_6b99

    jp Jump_029_6b90


jr_029_6c25:
    xor a

Jump_029_6c26:
    ld [$c876], a
    add $0a
    call Call_029_70e7
    ld a, [$c876]
    and $02
    add $24
    call Call_000_080e
    ld a, $20
    call Call_000_0753
    xor a
    ld [$c875], a
    ld a, [$c876]
    cp $00
    jr z, jr_029_6c63

    cp $01
    jr z, jr_029_6c69

    ld a, [$c872]
    add a
    ld [$c875], a
    ld a, [$c864]
    cp $ff
    jr nz, jr_029_6c69

    ld a, [$c875]
    add a
    ld [$c875], a
    jr jr_029_6c69

jr_029_6c63:
    ld a, [$c872]
    ld [$c875], a

jr_029_6c69:
    jp Jump_029_706a


Call_029_6c6c:
    ld a, $01
    call Call_029_6faf
    ld [$c864], a
    cp $00
    jr z, jr_029_6c7b

    bit 7, a
    ret nz

jr_029_6c7b:
    ld a, $02
    call Call_029_70e7
    xor a
    ld [$c875], a
    ld [$c876], a
    call Call_029_6ceb
    ld a, [$c875]
    cp $00
    jr nz, jr_029_6ce4

    ld a, [$c884]
    cp $00
    jr z, jr_029_6cb4

    ld a, [$c864]
    ld [$c87a], a
    ld a, [$c874]
    ldh [$ff9e], a
    ld a, [$c884]
    cp $01
    jr nz, jr_029_6caf

    call Call_029_6e1d
    jr jr_029_6cbc

jr_029_6caf:
    call $6de9
    jr jr_029_6cbc

jr_029_6cb4:
    ld a, [$c874]
    ldh [$ff9e], a
    call Call_029_6d52

jr_029_6cbc:
    ld a, [$c874]
    call Call_029_6d30
    call Call_000_03fe
    call Call_029_6a34
    ld a, $01
    call Call_029_6faf
    ld [$c864], a
    cp $00
    jr z, jr_029_6ce3

    bit 7, a
    jr nz, jr_029_6ce3

    ld a, [$c874]
    inc a
    ld [$c874], a
    cp $0c
    jr nz, jr_029_6c7b

jr_029_6ce3:
    ret


jr_029_6ce4:
    call Call_000_03fe
    call Call_029_6a34
    ret


Call_029_6ceb:
jr_029_6ceb:
    ld a, [$c875]
    add $34
    ld [$c8ab], a
    ld a, $7d
    ld [$c8ac], a
    call Call_000_38d1
    call Call_000_03fe

jr_029_6cfe:
    call Call_000_0ba4
    call Call_000_0456
    ld a, [$c188]
    and $31
    jr z, jr_029_6cfe

    bit 0, a
    jr nz, jr_029_6d2a

    and $20
    jr z, jr_029_6d1e

    ld a, $19
    call Call_000_080e
    xor a
    ld [$c875], a
    jr jr_029_6ceb

jr_029_6d1e:
    ld a, $19
    call Call_000_080e
    ld a, $2c
    ld [$c875], a
    jr jr_029_6ceb

jr_029_6d2a:
    ld a, $19
    call Call_000_080e
    ret


Call_029_6d30:
    ld [$c875], a
    ld l, a
    ld h, $00
    ld bc, $c865
    add hl, bc
    ld a, [hl]
    ld [$c876], a
    ld l, a
    ld h, $00
    ld bc, $7171
    add hl, bc
    ld a, [hl]
    ld [$c877], a
    ld a, $25
    call Call_000_080e
    call Call_029_7109
    ret


Call_029_6d52:
Jump_029_6d52:
jr_029_6d52:
    call Call_000_0ba4
    ldh a, [$ffa2]
    cp $00
    jr z, jr_029_6d52

    cp $35
    jr nc, jr_029_6d52

    ld [$c875], a
    ld [$c878], a
    ldh a, [$ffa0]
    ld [$c876], a
    ldh a, [$ff9e]
    ld [$c877], a

Jump_029_6d6f:
    ld a, [$c878]
    dec a
    ld [$c878], a
    srl a
    srl a
    srl a
    ldh [$ffa0], a
    ld a, [$c878]
    and $07
    ldh [$ff9e], a
    ldh a, [$ffa0]
    ld l, a
    ld h, $00
    ld bc, $c87d
    add hl, bc
    ld a, [hl]
    push af
    ldh a, [$ff9e]
    ld l, a
    ld h, $00
    ld bc, $6de1
    add hl, bc
    pop af
    and [hl]
    jr z, jr_029_6da9

    ld a, [$c876]
    ldh [$ffa0], a
    ld a, [$c877]
    ldh [$ff9e], a
    jr jr_029_6d52

jr_029_6da9:
    ldh a, [$ffa0]
    ld l, a
    ld h, $00
    ld bc, $c87d
    add hl, bc
    ld a, [hl]
    push hl
    push af
    ldh a, [$ff9e]
    ld l, a
    ld h, $00
    ld bc, $6de1
    add hl, bc
    pop af
    or [hl]
    pop hl
    ld [hl], a
    ld a, [$c876]
    ldh [$ffa0], a
    ld a, [$c877]
    ldh [$ff9e], a
    ld l, a
    ld h, $00
    ld bc, $c865
    add hl, bc
    ld a, [$c875]
    ld [hl], a
    ld a, [$c871]
    dec a
    ld [$c871], a
    jp Jump_029_7014


    add b
    ld b, b
    jr nz, jr_029_6df5

    ld [$0204], sp
    ld bc, $a0f0
    ld [$c876], a
    ldh a, [$ff9e]
    ld [$c877], a
    ld a, $15

jr_029_6df5:
    ld hl, $c87a
    sub [hl]
    ld [hl], a
    jr z, jr_029_6e10

    cp $0c
    jr nc, jr_029_6e10

jr_029_6e00:
    call Call_029_6e59
    bit 7, a
    jr nz, jr_029_6e10

    ld [$c875], a
    ld [$c878], a
    jp Jump_029_6d6f


jr_029_6e10:
    ld a, [$c876]
    ldh [$ffa0], a
    ld a, [$c877]
    ldh [$ff9e], a
    jp Jump_029_6d52


Call_029_6e1d:
    ldh a, [$ffa0]
    ld [$c876], a
    ldh a, [$ff9e]
    ld [$c877], a
    ld a, $15
    ld hl, $c87a
    sub [hl]
    ld [hl], a
    cp $09
    jr nc, jr_029_6e39

    ld a, $0a
    ld [$c87a], a
    jr jr_029_6e00

jr_029_6e39:
    ld a, [$c864]
    ld hl, $c863
    sub [hl]
    dec a
    ld [$c87a], a
    cp $00
    jr z, jr_029_6e4c

    bit 7, a
    jr z, jr_029_6e00

jr_029_6e4c:
    ld a, [$c876]
    ldh [$ffa0], a
    ld a, [$c877]
    ldh [$ff9e], a
    jp Jump_029_6d52


Call_029_6e59:
    ld a, [$c87a]
    cp $0a
    jp z, Jump_029_6eee

    cp $0b
    jr z, jr_029_6ed7

Jump_029_6e65:
jr_029_6e65:
    ld a, [$c87a]
    dec a
    ld [$c87a], a
    bit 7, a
    jr z, jr_029_6e73

    ld a, $ff
    ret


jr_029_6e73:
    srl a
    ldh [$ffa0], a
    ld a, [$c87a]
    and $01
    ldh [$ff9e], a
    ldh a, [$ffa0]
    ld l, a
    ld h, $00
    ld bc, $c87d
    add hl, bc
    ld a, [hl]
    ld [$c855], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ld h, $00
    ld bc, $6f3b
    add hl, bc
    pop af
    and [hl]
    cp [hl]
    jr z, jr_029_6e65

    ld a, [$c87a]
    and $01
    jr z, jr_029_6eb2

    ldh a, [$ffa0]
    ld l, a
    ld h, $00
    ld bc, $c87d
    add hl, bc
    ld a, [hl]
    add a
    add a
    add a
    add a
    ld [$c855], a

jr_029_6eb2:
    ld a, [$c87a]
    ldh [$ffa0], a
    ld l, a
    ld h, $00
    ld bc, $6f3d
    add hl, bc
    ld a, [hl]
    ld [$c856], a

jr_029_6ec2:
    ld a, [$c856]
    inc a
    ld [$c856], a
    ld a, [$c855]
    sla a
    ld [$c855], a
    jr c, jr_029_6ec2

    ld a, [$c856]
    ret


jr_029_6ed7:
    xor a
    ld [$c856], a
    ld a, [$c87d]
    ld [$c855], a
    and $f0
    cp $f0
    jr nz, jr_029_6ec2

    ld a, [$c87a]
    dec a
    ld [$c87a], a

Jump_029_6eee:
    ld a, $24
    ld [$c855], a
    ld a, $04
    ldh [$ffa0], a
    ldh [$ff9e], a

jr_029_6ef9:
    ld a, [$c855]
    inc a
    ld [$c855], a
    ldh a, [$ffa0]
    ld l, a
    ld h, $00
    ld bc, $c87d
    add hl, bc
    ld a, [hl]
    push af
    ldh a, [$ff9e]
    ld l, a
    ld h, $00
    ld bc, $6de1
    add hl, bc
    pop af
    and [hl]
    jr z, jr_029_6f37

    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    cp $08
    jr nz, jr_029_6ef9

    xor a
    ldh [$ff9e], a
    ldh a, [$ffa0]
    inc a
    ldh [$ffa0], a
    cp $07
    jr nz, jr_029_6ef9

    ld a, [$c87a]
    dec a
    ld [$c87a], a
    jp Jump_029_6e65


jr_029_6f37:
    ld a, [$c855]
    ret


    ldh a, [rIF]
    nop
    inc b
    ld [$100c], sp
    ld [de], a
    jr @+$1e

    jr nz, @-$04

    adc e
    push bc
    cp $10
    jr nc, jr_029_6f54

    ld a, [$c58c]
    cp $c8
    jr c, jr_029_6f69

jr_029_6f54:
    ld a, $0e
    call Call_000_1c5c
    ld a, [$c523]
    and $01
    jr z, jr_029_6f65

    ld a, $ff
    ld [$c5e1], a

jr_029_6f65:
    ld a, $01
    jr jr_029_6f77

jr_029_6f69:
    ld a, $0e
    call Call_000_1c5c
    ld a, [$c523]
    and $01
    jr z, jr_029_6f77

    ld a, $02

jr_029_6f77:
    ld [$c884], a
    ret


Call_029_6f7b:
    xor a
    ld [$c863], a
    ld [$c864], a
    ld c, $0b
    ld hl, $c865

jr_029_6f87:
    ld [hl+], a
    dec c
    bit 7, c
    jr z, jr_029_6f87

    ld a, $02
    ld [$c873], a
    ld a, $08
    ld [$c874], a
    ret


Call_029_6f98:
    xor a
    ld c, $05
    ld hl, $c87d

jr_029_6f9e:
    ld [hl+], a
    dec c
    bit 7, c
    jr z, jr_029_6f9e

    ld a, $0f
    ld [$c883], a
    ld a, $34
    ld [$c871], a
    ret


Call_029_6faf:
    push af
    cp $00
    jr nz, jr_029_6fc0

    ld a, $65
    ld [$c5d9], a
    ld a, $c8
    ld [$c5da], a
    jr jr_029_6fca

jr_029_6fc0:
    ld a, $6b
    ld [$c5d9], a
    ld a, $c8
    ld [$c5da], a

jr_029_6fca:
    call Call_029_6a89
    ld a, [$c875]
    bit 7, a
    jr z, jr_029_6fe2

    cp $ff
    jr nz, jr_029_6ff0

    pop af
    or $06
    call Call_029_70e7
    ld a, [$c875]
    ret


jr_029_6fe2:
    cp $00
    jr nz, jr_029_6ff0

    pop af
    or $08
    call Call_029_70e7
    ld a, [$c875]
    ret


jr_029_6ff0:
    ld [$c876], a
    and $7f
    ld [$c875], a
    pop af
    xor a
    ld [$c668], a
    ld a, $0d
    ld [$c669], a
    ld a, $09
    ld [$c8e6], a
    call Call_000_10d0
    call Call_000_03d3
    ld a, [$c876]
    ld [$c875], a
    ret


Call_029_7014:
Jump_029_7014:
    ld a, [$c871]
    call Call_029_704a
    ld a, $02
    ld [$c855], a
    ld a, $01
    ld [$c856], a
    ld a, [$c857]
    cp $00
    jr nz, jr_029_702f

    ld a, $7f
    jr jr_029_7031

jr_029_702f:
    or $80

jr_029_7031:
    ld [$c857], a
    ld a, [$c858]
    or $80
    ld [$c858], a
    ld l, $55
    ld h, $c8
    ld bc, $9811
    call Call_000_01d8
    call Call_000_03d3
    ret


Call_029_704a:
    ld [$c858], a
    xor a
    ld [$c857], a

jr_029_7051:
    ld a, [$c858]
    cp $0a
    jr c, jr_029_7069

    ld a, [$c858]
    sub $0a
    ld [$c858], a
    ld a, [$c857]
    inc a
    ld [$c857], a
    jr jr_029_7051

jr_029_7069:
    ret


Jump_029_706a:
    ld a, [$c875]
    cp $00
    jr z, jr_029_709b

jr_029_7071:
    ld a, [$c58c]
    inc a
    ld [$c58c], a
    call Call_029_70a4
    ld a, $23
    call Call_000_080e
    ld a, $08
    call Call_000_0753
    ld a, [$c58c]
    cp $ff
    jr z, jr_029_7095

    ld a, [$c875]
    dec a
    ld [$c875], a
    jr nz, jr_029_7071

jr_029_7095:
    ld a, $28
    call Call_000_0753
    ret


jr_029_709b:
    call Call_029_70a4
    ld a, $3c
    call Call_000_0753
    ret


Call_029_70a4:
Jump_029_70a4:
    ld a, $0b
    ld [$c668], a
    ld a, $0c
    ld [$c669], a
    ld a, $04
    ld [$c8b6], a
    ld a, $06
    ld [$c8e6], a
    call Call_000_10d0
    call Call_000_03d3
    ret


Call_029_70bf:
    call Call_000_37ae
    call Call_029_6971
    ld a, $10
    call Call_029_70e7
    ld a, $11
    call Call_029_70e7
    call Call_029_7014
    ld a, [$c58c]
    cp $00
    jr z, jr_029_70e3

    ld a, [$c871]
    cp $10
    jr c, jr_029_70e3

    call Call_029_70a4

jr_029_70e3:
    call Call_000_37a0
    ret


Call_029_70e7:
    push de
    push bc
    push af
    add $0c
    ld [$c8e6], a
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $7145
    add hl, bc
    ld a, [hl+]
    ld [$c668], a
    ld a, [hl]
    ld [$c669], a
    call Call_000_10d0
    call Call_000_03d3
    pop bc
    pop de
    ret


Call_029_7109:
    ld a, [$c875]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $712d
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$c876]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $606d
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    call Call_000_02a5
    call Call_000_03d3
    ret


    ld b, c
    sbc b
    ld b, h
    sbc b
    ld b, a
    sbc b
    ld c, d
    sbc b
    ld c, l
    sbc b
    ld d, b
    sbc b
    pop hl
    sbc b
    db $e4
    sbc b
    rst RST_20
    sbc b
    ld [$ed98], a
    sbc b
    ldh a, [$ff98]
    nop
    dec c
    nop
    stop
    ld c, $00
    ld c, $00
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    dec c
    nop
    rrca
    nop
    dec c
    nop
    ld bc, $0600
    ld [$0100], sp
    ld bc, $0101
    inc c
    inc c
    nop
    dec bc
    dec de
    dec hl
    dec sp
    ld [bc], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    inc bc
    inc de
    inc hl
    inc sp
    inc b
    inc d
    inc h
    inc [hl]
    dec b
    dec d
    dec h
    dec [hl]
    ld b, $16
    ld h, $36
    rlca
    rla
    daa
    scf
    ld [$2818], sp
    jr c, jr_029_719c

    add hl, de
    add hl, hl
    add hl, sp
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    ld a, [hl-]
    ld a, [bc]
    ld a, [de]

jr_029_719c:
    ld a, [hl+]
    ld a, [hl-]
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    ld a, [hl-]
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
