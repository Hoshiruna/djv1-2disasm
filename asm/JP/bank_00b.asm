; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    sbc b
    ld b, b
    ret c

    ld b, b
    jr jr_00b_4047

    ld e, b
    ld b, c
    sbc b
    ld b, c
    ret c

    ld b, c
    jr jr_00b_4050

    ld e, b
    ld b, d
    sbc b
    ld b, d
    ret c

    ld b, d
    jr jr_00b_4059

    ld e, b
    ld b, e
    sbc b
    ld b, e
    ret c

    ld b, e
    jr jr_00b_4062

    ld e, b
    ld b, h
    sbc b
    ld b, h
    ret c

    ld b, h
    jr jr_00b_406b

    ld e, b
    ld b, l
    sbc b
    ld b, l
    ret c

    ld b, l
    jr jr_00b_4074

    ld e, b
    ld b, [hl]
    sbc b
    ld b, [hl]
    ret c

    ld b, [hl]
    jr @+$49

    ld e, b
    ld b, a
    sbc b
    ld b, a
    ret c

    ld b, a
    jr jr_00b_4086

    ld e, b
    ld c, b
    sbc b
    ld c, b
    ret c

    ld c, b
    jr jr_00b_408f

    ld e, b

jr_00b_4047:
    ld c, c
    sbc b
    ld c, c
    ret c

    ld c, c
    jr jr_00b_4098

    ld e, b
    ld c, d

jr_00b_4050:
    sbc b
    ld c, d
    ret c

    ld c, d
    jr jr_00b_40a1

    ld e, b
    ld c, e
    sbc b

jr_00b_4059:
    ld c, e
    ret c

    ld c, e
    jr jr_00b_40aa

    ld e, b
    ld c, h
    sbc b
    ld c, h

jr_00b_4062:
    ret c

    ld c, h
    jr jr_00b_40b3

    ld e, b
    ld c, l
    sbc b
    ld c, l
    ret c

jr_00b_406b:
    ld c, l
    jr jr_00b_40bc

    ld e, b
    ld c, [hl]
    sbc b
    ld c, [hl]
    ret c

    ld c, [hl]

jr_00b_4074:
    jr jr_00b_40c5

    ld e, b
    ld c, a
    sbc b
    ld c, a
    ret c

    ld c, a
    jr jr_00b_40ce

    ld e, b
    ld d, b
    sbc b
    ld d, b
    ret c

    ld d, b
    jr jr_00b_40d7

jr_00b_4086:
    ld e, b
    ld d, c
    sbc b
    ld d, c
    ret c

    ld d, c
    jr jr_00b_40e0

    ld e, b

jr_00b_408f:
    ld d, d
    sbc b
    ld d, d
    ret c

    ld d, d
    jr jr_00b_40e9

    ld e, b
    ld d, e

jr_00b_4098:
    nop
    nop
    ld a, [hl+]
    dec h
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop

jr_00b_40a1:
    nop
    nop
    dec h
    ldh [rSTAT], a
    ld b, b
    ld l, a
    nop
    nop

jr_00b_40aa:
    db $e3
    jr nz, @-$1e

    ld b, c
    rst RST_38
    ld a, a
    nop
    nop
    ld a, [hl+]

jr_00b_40b3:
    dec h
    db $10
    ld b, d
    or l
    ld d, [hl]
    nop
    nop
    ld l, d
    nop

jr_00b_40bc:
    ld a, a
    ld bc, $7fff
    nop
    nop
    ld b, b
    ld l, a
    xor [hl]

jr_00b_40c5:
    dec [hl]
    ld a, e
    ld l, a
    nop
    nop
    ldh [rSTAT], a
    db $ed
    dec [hl]

jr_00b_40ce:
    ld a, e
    ld l, a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a

jr_00b_40d7:
    inc bc
    nop
    nop
    sub $00
    ret nz

    ld e, $ee
    ld l, a

jr_00b_40e0:
    nop
    nop
    adc h
    nop
    inc d
    nop
    cp a
    nop
    nop

jr_00b_40e9:
    nop
    rrca
    nop
    sub $00
    jr jr_00b_40f3

    nop
    nop
    ld d, b

jr_00b_40f3:
    ld hl, $5ad6
    rst RST_38
    ld a, a
    nop
    nop
    ld [hl], d
    nop
    sbc e
    nop
    rst RST_38
    ld a, a
    nop
    nop
    rrca
    nop
    sub $00
    ld h, b
    ld a, [hl]
    nop
    nop
    sub $5a
    sub $00
    jr jr_00b_4113

    nop
    nop
    ld [bc], a

jr_00b_4113:
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld de, $ff00
    inc bc
    dec de
    nop
    nop
    nop
    add hl, hl
    dec l
    ld l, $4e
    rst RST_38
    ld a, a
    nop
    nop
    ld b, b
    ld a, [hl]
    ld l, l
    ld a, a
    rst RST_38
    ld a, a
    nop
    nop
    adc d
    nop
    ld de, $5500
    ld bc, $0000
    ld h, b
    ld a, l
    ld b, b
    ld c, h
    rst RST_38
    ld a, a
    nop
    nop
    ldh a, [rP1]
    or h
    add hl, hl
    rst RST_38
    ld a, a
    nop
    nop
    ld de, $ff00
    ld a, a
    nop
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
    ld [bc], a
    ld a, [hl]
    rst RST_38
    ld a, a
    nop
    inc l
    nop
    nop
    dec bc
    dec h
    db $10
    ld b, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    db $10
    ld b, [hl]
    rrca
    nop
    add hl, de
    nop
    nop
    nop
    ld l, e
    dec l
    rra
    inc bc
    add hl, de
    nop
    nop
    nop
    rlca
    nop
    db $10
    ld b, [hl]
    add hl, de
    nop
    nop
    nop
    rst RST_28
    nop
    ld e, e
    ld bc, $7f40
    nop
    nop
    and b
    ld bc, $03e4
    ld [bc], a
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
    jp c, Jump_00b_5f00

    ld [bc], a
    rst RST_38
    ld a, a
    nop
    nop
    ld b, $7c
    db $f4
    ld a, l
    rst RST_38
    ld a, a
    nop
    nop
    ld b, e
    ld a, l
    cpl
    ld a, a
    nop
    jr c, jr_00b_41b1

jr_00b_41b1:
    nop
    ld c, d
    add hl, hl
    ld d, d
    ld c, d
    rst RST_38
    ld a, a
    nop
    nop
    ld b, e
    ld a, l
    cpl
    ld a, a
    rst RST_38
    ld a, a
    nop
    nop
    ld b, e
    ld a, l
    and $14
    rst RST_38
    ld a, a
    nop
    nop
    ld b, b
    ld [bc], a
    ld [hl], d
    ld a, l
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
    stop
    ld e, h
    dec b
    ccf
    ld e, [hl]
    nop
    nop
    add hl, hl
    dec h
    ld sp, $ff52
    ld a, a
    nop
    nop
    push hl
    inc e
    add hl, hl
    dec h
    db $e4
    inc de
    nop
    nop
    inc c
    nop
    ld a, [de]
    ld bc, $13e4
    nop
    nop
    add b
    ld [bc], a
    db $e4
    inc de
    rst RST_38
    ld a, a
    nop
    nop
    nop
    ld a, h
    add hl, de
    nop
    rst RST_38
    ld a, a
    nop
    nop
    add b
    ld [bc], a
    inc c
    nop
    ld a, [de]
    ld bc, $0000
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld d, d
    ld c, d
    adc $39
    ldh a, [c]
    ld b, b
    nop

Call_00b_4221:
    nop
    dec c
    inc d
    rra
    dec a
    xor $40
    nop
    nop
    ld d, d
    ld c, d
    adc $39
    rst RST_38
    ld a, a
    nop
    nop
    add $18
    adc $39
    rst RST_38
    ld a, a
    nop
    nop
    dec c
    inc d
    rra
    dec a
    cp a
    ld h, d
    nop
    nop
    dec c
    inc d
    rra
    dec a
    rst RST_38
    ld a, a
    nop
    nop
    ld d, d
    ld c, d
    adc $39
    jp hl


    ld b, b
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
    ld [hl-], a
    ld bc, $03ff
    nop
    nop
    rst RST_20
    inc e
    db $10
    ld b, d
    rst RST_38
    ld a, a
    rst RST_20
    inc e
    sbc a
    ld bc, $03ff
    rra
    nop
    nop
    nop
    ld l, h
    nop
    rst RST_08
    nop
    rst RST_38
    inc bc
    nop
    nop
    db $10
    ld b, d
    ld [hl-], a
    ld bc, $7fff
    nop
    nop
    ld c, e
    nop
    ld [hl-], a
    ld bc, $03ff
    nop
    nop
    rst RST_20
    inc e
    db $10
    ld b, d
    inc l
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
    ld l, a
    nop
    rst RST_38
    inc bc
    dec de
    nop
    nop
    nop
    ld l, a
    nop
    ld b, $65
    ld c, $7f
    nop
    nop
    ldh [$ff65], a
    ld c, $7f
    rst RST_38
    ld a, a
    nop
    nop
    ld b, $00
    ld l, a
    nop
    inc e
    ld bc, $0000
    ld l, a
    nop
    dec b
    ld a, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld c, $7f
    ld sp, hl
    ld a, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ldh [$ff65], a
    ld c, $7f
    ldh a, [$ff7e]
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    sub d
    nop
    rst RST_38
    inc bc
    dec de
    nop
    nop
    nop
    sub d
    nop
    ld b, $65
    cpl
    ld a, a
    nop
    nop
    ldh [$ff65], a
    cpl
    ld a, a
    rst RST_38
    ld a, a
    nop
    nop
    adc d
    nop
    or d
    nop
    reti


    ld bc, $0000
    sub d
    nop
    dec b
    ld a, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ldh a, [$ff7e]
    ld sp, hl
    ld a, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ldh [$ff65], a
    cpl
    ld a, a
    ldh a, [$ff7e]
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    sub d
    nop
    rst RST_38
    inc bc
    dec de
    nop
    nop
    nop
    sub d
    nop
    call c, $ff01
    ld a, a
    nop
    nop
    sub d
    nop
    dec h
    ld a, a
    rst RST_38
    ld a, a
    nop
    nop
    ld h, b
    ld bc, $02e0
    db $ec
    ld b, e
    nop
    nop
    sub d
    nop
    ld [hl], e
    ld c, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld [$9200], sp
    nop
    call c, $0001
    nop
    sub d
    nop
    ld e, d
    inc bc
    dec de
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
    ld l, a
    nop
    sub l
    ld bc, $02ff
    nop
    nop
    jr nz, jr_00b_43e2

    sub l
    ld bc, $7fff
    nop
    nop
    rst RST_38
    ld [bc], a
    sbc a
    ld c, l
    ld e, a
    ld h, [hl]
    nop
    nop
    xor [hl]
    add hl, de
    ld [hl-], a
    ld a, [hl+]
    cp [hl]
    ld e, e
    nop
    nop
    sub l
    ld bc, $033f
    ld e, a
    ld h, [hl]
    nop
    nop
    sub l
    ld bc, $2a32
    cp [hl]
    ld e, e
    nop
    nop
    sbc a
    ld c, l
    ld [hl], l
    ld bc, $02ff
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    xor a
    nop
    dec d
    ld bc, $167b
    nop
    nop
    ld [hl], l
    add hl, bc
    nop
    ld a, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    sub b
    dec e
    sub a
    ld e, $ff
    rra
    nop
    nop
    dec d
    ld bc, $167b
    nop
    ld a, [hl]
    nop
    nop
    dec d
    ld bc, $167b
    rst RST_38
    ld a, a
    nop
    nop
    inc c
    nop
    db $d3
    nop
    ld d, a
    ld bc, $0000
    db $d3
    nop
    ld b, b
    ld b, c
    db $10
    ld b, d
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    jr nz, @+$7f

    rst RST_38
    inc bc
    ld [hl-], a
    nop
    nop
    nop

jr_00b_43e2:
    adc $08
    ld d, h
    ld c, d
    sub h
    dec d
    nop
    nop
    ld b, b
    ld e, h
    jr nz, jr_00b_446b

    ld a, [de]
    ld l, e
    nop
    nop
    rra
    nop
    ld d, h
    ld c, d
    rst RST_38
    inc bc
    nop
    nop
    ld [hl-], a
    nop
    jr nz, jr_00b_4400

    ld [de], a
    ld b, d

jr_00b_4400:
    add hl, bc
    nop
    rra
    nop
    rrca
    nop
    rst RST_38
    inc bc
    nop
    nop
    ld [hl-], a
    nop
    ld d, h
    ld c, d
    cp a
    ld a, e
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld de, $d411
    ld hl, $5fdf
    xor a
    nop
    ld de, $d411
    ld hl, $5fdf
    rst RST_38
    inc bc
    rst RST_38
    ld a, a
    ccf
    ld c, e
    inc a
    ld d, e
    rst RST_38
    inc bc
    dec l
    add hl, bc
    call nc, $df21
    ld e, a
    rst RST_38
    inc bc
    ld h, h
    ld bc, $0247
    ld c, e
    inc bc
    rst RST_38
    inc bc
    ld h, b
    ld bc, $21d4
    ldh [rSC], a
    rst RST_18
    ld e, a
    ld de, $9f11
    ld [hl+], a
    ld h, b
    ld bc, $012b
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld de, $d411
    ld hl, $5fdf
    xor a
    nop
    ld de, $d411
    ld hl, $5fdf
    rst RST_38
    inc bc
    rst RST_38
    ld a, a
    ccf

jr_00b_446b:
    ld c, e
    inc a
    ld d, e
    rst RST_38
    inc bc
    dec l
    add hl, bc
    call nc, $df21
    ld e, a
    rst RST_38
    inc bc
    ld h, h
    ld bc, $0247
    ld c, e
    inc bc
    rst RST_38
    inc bc
    ld h, b
    ld bc, $21d4
    ldh [rSC], a
    rst RST_18
    ld e, a
    ld de, $9f11
    ld [hl+], a
    ld h, b
    ld bc, $012b
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld de, $d411
    ld hl, $5fdf
    xor a
    nop
    ld de, $d411
    ld hl, $5fdf
    rst RST_38
    inc bc
    rst RST_38
    ld a, a
    ccf
    ld c, e
    inc a
    ld d, e
    rst RST_38
    inc bc
    dec l
    add hl, bc
    call nc, $df21
    ld e, a
    rst RST_38
    inc bc
    ld h, h
    ld bc, $0247
    ld c, e
    inc bc
    rst RST_38
    inc bc
    ld h, b
    ld bc, $21d4
    ldh [rSC], a
    rst RST_18
    ld e, a
    ld de, $9f11
    ld [hl+], a
    ld h, b
    ld bc, $012b
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ldh a, [rP1]
    ld d, $02
    call c, Call_000_0026
    nop
    dec c
    nop
    sub h
    nop
    ld sp, hl
    ld d, [hl]
    nop
    nop
    ld h, b
    ld bc, $0260
    xor $3b
    nop
    nop
    ld [$c021], sp
    ld a, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    adc h
    ld sp, $56b5
    rst RST_38
    ld a, a
    nop
    nop
    adc h
    ld sp, $56b5
    ldh a, [rP1]
    nop
    nop
    ld h, $00
    xor d
    nop
    ld h, b
    ld bc, $0000
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld l, e
    dec l
    ld sp, $f746
    ld e, [hl]
    nop
    nop
    ld l, $00
    or a
    nop
    rra
    ld [bc], a
    nop
    nop
    ld [de], a
    ld sp, $4196
    rst RST_18
    ld l, d
    nop
    nop
    add $1c
    sub $5a
    rst RST_38
    ld a, a
    nop
    nop
    rra
    ld [bc], a
    or a
    nop
    rst RST_38
    ld a, a
    nop
    nop
    rst RST_18
    ld l, d
    sub [hl]
    ld b, c
    rst RST_38
    ld a, a
    nop
    nop
    ld l, e
    dec l
    sub [hl]
    ld b, c
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
    add $1c
    sub $56
    rst RST_38
    ld a, a
    nop
    nop
    ld l, $00
    or a
    nop
    rra
    ld [bc], a
    nop
    nop
    ld [de], a
    ld sp, $4196
    rst RST_18
    ld l, d
    nop
    nop
    add h
    inc d
    sub [hl]
    ld b, c
    rst RST_38
    inc bc
    nop
    nop
    inc d
    nop
    ld a, a
    ld [bc], a
    rst RST_38
    ld a, a
    nop
    nop
    sub [hl]
    ld b, c
    or a
    nop
    rra
    ld [bc], a
    nop
    nop
    rst RST_38
    ld a, a
    sub [hl]
    ld b, c
    rst RST_18
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
    ld a, [hl+]
    add hl, de
    ldh a, [$ff35]
    rst RST_38
    inc bc
    nop
    nop
    rst RST_08
    nop
    ldh a, [$ff35]
    ld a, d
    ld h, a
    nop
    nop
    ld [$b010], a
    dec l
    ld a, a
    inc bc
    nop
    nop
    ld a, [bc]
    nop
    pop af
    nop
    ld [hl-], a
    ld b, d
    nop
    nop
    ld [$3121], sp
    ld b, [hl]
    sbc h
    ld [hl], e
    nop
    nop
    ret nz

    nop
    ret nz

    ld bc, $03ef
    nop
    nop
    dec c
    nop
    rra
    nop
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
    ld a, [hl+]
    add hl, de
    ldh a, [$ff35]
    rst RST_38
    inc bc
    nop
    nop
    rst RST_08
    nop
    ldh a, [$ff35]
    ld a, d
    ld h, a
    nop
    nop
    ld [$b010], a
    dec l
    ld a, a
    inc bc
    nop
    nop
    ld a, [bc]
    nop
    pop af
    nop
    ld [hl-], a
    ld b, d
    nop
    nop
    ld [$3121], sp
    ld b, [hl]
    sbc h
    ld [hl], e
    nop
    nop
    ret nz

    nop
    ret nz

    ld bc, $03ef
    nop
    nop
    dec c
    nop
    rra
    nop
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
    add hl, hl
    dec h
    adc $39
    rst RST_38
    ld a, a
    nop
    nop
    adc $39
    scf
    ld bc, $7fff
    nop
    nop
    adc $39
    add hl, sp
    ld h, a
    rst RST_38
    ld a, a
    nop
    nop
    adc $39
    jp c, $bf4a

    ld h, a
    nop
    nop
    add hl, hl
    dec h
    xor [hl]
    nop
    scf
    ld bc, $0000
    add hl, hl
    dec h
    ld d, a
    ld bc, $02df
    nop
    nop
    add hl, hl
    dec h
    scf
    ld bc, $02c0
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    nop
    inc [hl]
    jr nz, jr_00b_46db

    cp a
    ld [bc], a
    nop
    nop
    sub $00
    rra
    dec bc
    rst RST_38
    ld a, a
    nop
    nop
    nop
    inc [hl]
    dec a
    ld [bc], a
    rst RST_38
    ld a, a
    nop
    nop
    nop
    inc [hl]
    ld b, b
    ld a, [hl]
    jr nz, jr_00b_46f5

    nop
    nop
    and a
    inc c
    dec bc
    dec d
    adc $39
    nop
    nop
    sub $00
    dec bc
    dec d
    rst RST_38
    ld a, a
    nop
    nop
    nop
    inc [hl]
    and a
    inc c
    jr nz, jr_00b_470d

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
    adc $39
    rst RST_38
    ld a, a
    nop
    nop
    adc $39
    scf
    ld bc, $7fff
    nop
    nop
    adc $39
    add hl, sp
    ld h, a
    rst RST_38
    ld a, a
    nop
    nop
    adc $39
    jp c, $bf4a

    ld h, a
    nop
    nop
    add hl, hl
    dec h
    xor [hl]
    nop
    scf
    ld bc, $0000
    adc $39
    scf
    ld [bc], a
    jr nz, @+$80

    nop
    nop
    add hl, hl
    dec h
    scf
    ld bc, $02c0
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    nop

jr_00b_46db:
    inc [hl]
    jr nz, jr_00b_475b

    cp a
    ld [bc], a
    nop
    nop
    sub $00
    rra
    dec bc
    rst RST_38
    ld a, a
    nop
    nop
    nop
    inc [hl]
    dec a
    ld [bc], a
    rst RST_38
    ld a, a
    nop
    nop
    nop
    inc [hl]
    ld b, b

jr_00b_46f5:
    ld a, [hl]
    jr nz, jr_00b_4775

    nop
    nop
    and a
    inc c
    dec bc
    dec d
    adc $39
    nop
    nop
    sub $00
    dec bc
    dec d
    rst RST_38
    ld a, a
    nop
    nop
    nop
    inc [hl]
    and a

jr_00b_470d:
    inc c
    jr nz, jr_00b_478d

    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld a, [hl+]
    add hl, de
    ldh a, [$ff35]
    rst RST_38
    inc bc
    nop
    nop
    rst RST_08
    nop
    ldh a, [$ff35]
    ld a, d
    ld h, a
    nop
    nop
    ld [$b010], a
    dec l
    ld a, a
    inc bc
    nop
    nop
    ld a, [bc]
    nop
    pop af
    nop
    ld [hl-], a
    ld b, d
    nop
    nop
    ld [$3121], sp
    ld b, [hl]
    sbc h
    ld [hl], e
    nop
    nop
    ret nz

    nop
    ret nz

    ld bc, $03ef
    nop
    nop
    dec c
    nop
    rra
    nop
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
    ld a, [hl+]

jr_00b_475b:
    add hl, de
    ldh a, [$ff35]
    rst RST_38
    inc bc
    nop
    nop
    rst RST_08
    nop
    ldh a, [$ff35]
    ld a, d
    ld h, a
    nop
    nop
    ld [$b010], a
    dec l
    ld a, a
    inc bc
    nop
    nop
    ld a, [bc]
    nop
    pop af

jr_00b_4775:
    nop
    ld [hl-], a
    ld b, d
    nop
    nop
    ld [$3121], sp
    ld b, [hl]
    sbc h
    ld [hl], e
    nop
    nop
    ret nz

    nop
    ret nz

    ld bc, $03ef
    nop
    nop
    dec c
    nop
    rra

jr_00b_478d:
    nop
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
    ld l, e
    dec l
    sub $5a
    rst RST_38
    ld a, a
    nop
    nop
    ldh [c], a
    ld b, b
    add a
    ld a, l
    rst RST_38
    ld a, a
    nop
    nop
    add b
    ld bc, $0300
    rst RST_38
    ld a, a
    nop
    nop
    ld [$b200], sp
    nop
    ld e, a
    ld [bc], a
    nop
    nop
    adc h
    ld sp, $5465
    xor l
    dec [hl]
    nop
    nop
    or d
    nop
    add hl, bc
    ld a, h
    rst RST_38
    ld a, a
    nop
    nop
    ld e, a
    ld [bc], a
    or d
    nop
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
    ld d, d
    ld c, d
    xor l
    nop
    di
    nop
    nop
    nop
    xor l
    dec [hl]
    ld d, d
    ld c, d
    cp l
    ld [hl], a
    nop
    nop
    ld l, e
    dec l
    sub h
    ld d, d
    inc l
    nop
    nop
    nop
    xor l
    dec [hl]
    and b
    ld a, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld d, d
    ld c, d
    and b
    ld a, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    di
    nop
    ld d, d
    ld c, d
    rst RST_38
    ld a, a
    nop
    nop
    ld b, b
    ld [bc], a
    ld h, b
    inc bc
    ld d, d
    ld c, d
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
    xor l
    dec [hl]
    dec bc
    nop
    dec de
    nop
    nop
    nop
    xor $08
    sub $5e
    db $10
    ld b, d
    nop
    nop
    cpl
    ld bc, $01fd
    ld h, b
    inc bc
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
    ld b, b
    ld [bc], a
    ld h, b
    inc bc
    xor l
    dec [hl]
    nop
    nop
    xor l
    dec [hl]
    or l
    ld d, [hl]
    db $fd
    ld bc, $0000
    cpl
    ld bc, $01fd
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
    adc h
    ld sp, $5ad6
    cp l
    ld [hl], a
    nop
    nop
    sub $5a
    dec bc
    nop
    inc d
    nop
    nop
    nop
    adc h
    ld sp, $5ad6
    inc d
    nop
    nop
    nop
    ld b, b
    ld a, [hl]
    adc h
    ld a, a
    cp l
    ld [hl], a
    nop
    nop
    adc h
    ld sp, $5ad6
    ld l, $05
    nop
    nop
    inc c
    nop
    ld sp, hl
    ld bc, $7e40
    nop
    nop
    sub $5a
    inc c
    nop
    ld sp, hl
    ld bc, $0000
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    adc b
    ld sp, $5ef7
    rst RST_38
    ld a, a
    nop
    nop
    xor $00
    sub $0d
    cp a
    ld [bc], a
    nop
    nop
    xor $00
    sub $0d
    or l
    ld d, [hl]
    nop
    nop
    add a
    nop
    xor $00
    sub $0d
    nop
    nop
    xor $00
    ld a, [de]
    nop
    db $ec
    ld b, e
    nop
    nop
    sub $0d
    jr @+$69

    rst RST_38
    ld a, a
    nop
    nop
    sub $0d
    adc b
    ld sp, $56b5
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
    db $f4
    nop
    ld a, a
    ld [bc], a
    nop
    nop
    ld l, [hl]
    nop
    or $00
    rlca
    nop
    nop
    nop
    rst RST_38
    ld a, a
    ld e, c
    ld bc, $5210
    nop
    nop
    ld c, [hl]
    ld bc, $0255
    rst RST_38
    inc bc
    nop
    nop
    ld l, [hl]
    nop
    ld d, a
    ld bc, $01fc
    nop
    nop
    or $00
    sbc e
    ld bc, $027f
    nop
    nop
    ld l, [hl]
    nop
    ld [hl], e
    add hl, bc
    ld a, a
    ld [bc], a
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
    rst RST_30
    ld e, [hl]
    sub h
    ld bc, $0000
    add [hl]
    db $10
    ld c, h
    add hl, hl
    ret c

    ld e, d
    inc bc
    nop
    ld d, [hl]
    ld bc, $4a52
    dec c
    stop
    nop
    ld h, [hl]
    ld a, h
    adc $4d
    rst RST_30
    ld a, a
    nop
    nop
    dec c
    db $10
    ld d, d
    ld c, d
    reti


    add hl, bc
    nop
    nop
    dec c
    db $10
    adc $4d
    rst RST_30
    ld a, a
    nop
    nop
    ld b, b
    ld [bc], a
    ld h, b
    inc bc
    ld l, e
    dec l
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
    di
    inc a
    sub a
    nop
    nop
    nop
    add [hl]
    db $10
    add hl, hl
    dec h
    or l
    ld d, [hl]
    ld b, d
    ld [$002d], sp
    add hl, hl
    dec h
    sub $5a
    add [hl]
    stop
    ld a, h
    ld c, b
    ld [hl], c
    or l
    ld d, [hl]
    nop
    nop
    ld l, $19
    add [hl]
    db $10
    or l
    ld d, [hl]
    nop
    nop
    dec hl
    nop
    add [hl]
    db $10
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
    dec hl
    dec e
    ld [hl-], a
    ld [hl], $18
    ld h, e
    nop

jr_00b_49a1:
    nop
    adc d
    nop
    ld c, $01
    ld e, b
    ld a, [hl+]
    nop
    nop
    jr @+$65

    ld c, $01
    ld e, b
    ld a, [hl+]
    nop
    nop
    ld c, $01
    ld [bc], a
    nop
    ld a, [hl+]
    nop
    ld b, b
    nop
    nop
    ld e, b
    ld c, $01
    jr @+$65

    dec h
    nop
    jr jr_00b_4a27

    ld [hl-], a
    ld [hl], $0e
    ld bc, $0000
    jr jr_00b_4a2f

    ld [bc], a
    nop
    ld a, [hl+]
    nop
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    inc bc
    nop
    xor $00
    ld sp, $9d46
    ld [hl], e
    add h
    db $10
    add $18
    sub h
    ld c, [hl]
    sbc l
    ld [hl], e
    add $18
    sub h
    ld c, [hl]
    nop
    ld l, b
    jr jr_00b_4a10

    ld b, d
    ld [$0131], sp
    nop
    ld h, h
    sbc l
    ld [hl], e
    add h
    db $10
    ld c, c
    nop
    xor $00
    add hl, sp
    ld l, $03
    nop
    xor $00
    nop
    ld l, b
    jr jr_00b_4a28

    ld bc, $c600
    jr jr_00b_49a1

    ld c, [hl]
    jr jr_00b_4a30

jr_00b_4a10:
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
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

jr_00b_4a27:
    ld [hl-], a

jr_00b_4a28:
    nop
    nop
    inc l
    dec h
    ld [de], a
    ld a, [hl-]
    rst RST_10

jr_00b_4a2f:
    ld d, [hl]

jr_00b_4a30:
    nop
    nop
    ld c, $00
    di
    nop
    rst RST_28
    dec a
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
    ld a, a
    inc bc
    nop
    nop
    ret


    jr @+$2e

    dec h
    sbc $73
    nop
    nop
    adc d
    db $10
    ld [hl-], a
    dec h
    sbc $73
    nop

jr_00b_4a69:
    nop
    ret


    jr jr_00b_4ad8

    dec l
    sub h
    ld d, d
    nop
    nop
    ret


    jr jr_00b_4ac2

    add hl, hl
    inc de
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
    ld hl, sp+$5e
    adc d
    db $10
    ld [hl-], a
    dec h
    ld [hl-], a
    ld b, [hl]
    nop
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
    ld bc, $0008
    ld l, l
    inc c
    ld e, b
    dec d
    ccf
    jr c, jr_00b_4ac1

jr_00b_4ac1:
    nop

jr_00b_4ac2:
    jr jr_00b_4ad1

    push de
    ld e, d
    ccf
    jr c, jr_00b_4a69

    nop
    ret nz

    ld bc, $03e0
    ccf
    jr c, jr_00b_4ad1

jr_00b_4ad1:
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc

jr_00b_4ad8:
    nop
    nop
    and a
    inc h
    jr jr_00b_4ade

jr_00b_4ade:
    add hl, bc
    ld [$0003], sp
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
    inc sp
    add hl, bc
    ld sp, hl
    ld hl, $0000
    inc de
    ld bc, $021d
    rst RST_38
    inc bc
    nop
    nop
    ld [hl], l
    jr z, jr_00b_4b22

    ld [bc], a
    ld c, $10
    nop
    nop
    and a
    inc h
    ldh a, [$ff08]
    ld a, [bc]
    ld [$0000], sp
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld a, [hl+]
    ld hl, $0000
    adc $39
    add hl, sp
    ld h, a
    nop
    nop

jr_00b_4b22:
    ld l, d
    ld [$000b], sp
    pop af
    nop
    nop
    nop
    ldh [$ff7c], a
    dec bc
    nop
    pop af
    nop
    nop
    nop
    ld d, a
    dec b
    adc d
    nop
    sub h
    ld b, [hl]
    nop
    nop
    ld d, a
    dec b
    adc $39
    or d
    nop
    inc bc
    nop
    sub h
    ld b, [hl]
    di
    ld [$004a], sp
    nop
    nop
    ldh [$ff7c], a
    adc $39
    ld l, d
    ld [$0000], sp
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    inc bc
    nop
    ld a, [bc]
    nop
    rst RST_30
    nop
    cp a
    ld h, a
    sub c
    ld [bc], a
    xor h
    dec [hl]
    xor $45
    dec h
    nop
    rst RST_28
    dec a
    inc l
    nop
    sub c
    ld [bc], a
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
    ld b, $00
    xor h
    dec [hl]
    xor $45
    dec h
    nop
    xor [hl]
    nop
    or $00
    xor $45
    ld bc, $ae00
    nop
    ld b, $00
    xor $45
    ld bc, $0000
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    xor c
    inc d
    inc de
    nop
    ld d, d
    ld c, d
    nop
    nop
    add h
    db $10
    rst RST_20
    inc e
    ld c, d
    add hl, hl
    nop
    nop
    rst RST_20
    inc e
    ld c, d
    add hl, hl
    ld d, d
    ld c, d
    nop
    nop
    rst RST_20
    inc e
    ld [de], a
    nop
    ld d, d
    ld c, d
    nop
    nop
    adc $00
    ld d, l
    ld bc, $027b
    nop
    nop
    rst RST_20
    inc e
    ld d, l
    ld bc, $027b
    nop
    nop
    ld d, l
    ld bc, $0013
    ld d, d
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
    rlca
    ld b, c
    and l
    ld a, c
    dec a
    dec d
    nop
    nop
    sub b
    nop
    ccf
    ld bc, $33ff
    rla
    nop
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
    nop
    nop
    inc c
    ld hl, $001d
    sbc h
    ld [hl], e
    nop
    nop
    xor l
    add hl, hl
    ld d, d
    ld b, [hl]
    sbc h
    ld [hl], e
    nop
    nop
    xor l
    add hl, hl
    ld d, d
    ld b, [hl]
    cp b
    ld bc, $0000
    inc c
    ld hl, $001d
    ld d, d
    ld b, [hl]
    nop
    nop
    jp z, $1d18

    nop
    cp b
    ld bc, $0000
    cp b
    ld bc, $7f60
    rst RST_38
    ld a, a
    nop
    nop
    add hl, hl
    add hl, de
    xor l
    add hl, hl
    ld d, d
    ld b, [hl]
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
    ret


    dec h
    ld c, a
    ld a, $ff
    ld a, a
    nop
    nop
    dec b
    dec d
    ret


    dec h
    ld c, a
    ld a, $00
    nop
    jp nc, Jump_000_1900

    ld [bc], a
    ld h, b
    ld a, l
    nop
    nop
    jp nc, Jump_00b_6000

    ld a, l
    ld l, l
    ld a, [hl]
    nop
    nop
    dec b
    dec d
    ret


    dec h
    jp nc, RST_00

    nop
    ld h, b
    ld a, l
    ld c, a
    ld a, $ff
    ld a, a
    nop
    nop
    jp nc, Jump_000_1900

    ld [bc], a
    dec l
    nop
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld b, d
    ld [$4210], sp
    jr jr_00b_4d01

    ld [hl], d
    add hl, bc
    nop
    nop
    add hl, bc
    nop
    ld [hl], c
    nop
    cp e
    ld d, d
    ld b, d
    ld [$2529], sp
    db $10
    ld b, d
    jr jr_00b_4d13

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
    rst RST_38
    ld a, a
    ld [hl], c
    nop
    cp e
    ld d, d
    nop
    nop
    ld a, [bc]
    jr z, jr_00b_4cdb

    ld e, b
    rra
    ld a, h
    nop
    nop
    ld a, [bc]
    jr z, jr_00b_4ce3

    ld e, b
    rra
    ld a, h
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

jr_00b_4cdb:
    nop
    ld [hl], b
    nop
    rra
    ld [bc], a
    nop
    nop
    ld [hl], b

jr_00b_4ce3:
    nop
    rra
    ld [bc], a
    rst RST_38
    ld a, a
    nop
    nop
    ld [hl], b
    nop
    ld sp, $ff46
    ld a, a
    nop
    nop
    ld c, d
    add hl, hl
    ld sp, $ff46
    ld a, a
    nop
    nop
    ld [hl], b
    nop
    ccf
    ld [bc], a
    ld sp, $0046

jr_00b_4d01:
    nop
    ld [hl], b
    nop
    ccf
    ld [bc], a
    add $18
    nop
    nop
    ld [hl], b
    nop
    ccf
    ld [bc], a
    ei
    ld c, $00
    nop
    ld [bc], a

jr_00b_4d13:
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add hl, hl
    dec h
    ld d, d
    ld c, d
    rst RST_38
    ld a, a
    nop
    nop
    ld d, d
    ld c, d
    adc [hl]
    inc l
    sbc a
    ld a, [hl-]
    nop
    nop
    ld d, d
    ld c, d
    add hl, sp
    ld h, a
    rst RST_38
    ld a, a
    nop
    nop
    add hl, hl
    dec h
    ld d, d
    ld c, d
    ld a, [de]
    nop
    nop
    nop
    db $10
    ld b, b
    rla
    ld e, h
    ccf
    ld a, [hl]
    nop
    nop
    db $10
    ld b, b
    rla
    ld e, h
    ccf
    ld a, [hl]
    nop
    nop
    db $10
    ld b, b
    rla
    ld e, h
    ccf
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
    ld d, d
    ld c, d
    rst RST_30
    ld e, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    add $18
    nop
    inc e
    nop
    ld c, h
    nop
    nop
    add $18
    add hl, bc
    nop
    ldh a, [rP1]
    nop
    nop
    add hl, hl
    dec h
    inc c
    nop
    ld d, $00
    nop
    nop
    add $18
    ret nz

    nop
    add b
    ld bc, $0000
    add $18
    add hl, hl
    dec h
    rst RST_28
    dec a
    nop
    nop
    rst RST_28
    dec a
    ld d, d
    ld c, d
    rst RST_30
    ld e, [hl]
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    rlc b
    inc de
    ld b, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld l, h
    nop
    add hl, de
    nop
    rst RST_38
    ld a, a
    nop
    nop
    ld b, l
    ld a, [hl]
    rra
    nop
    rst RST_38
    ld a, a
    nop
    nop
    ld [$1314], a
    ld b, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld l, h
    nop
    or d
    nop
    ld d, e
    ld b, l
    nop
    nop
    xor e
    nop
    or d
    nop
    ld a, a
    ld [bc], a
    nop
    nop
    db $ec
    inc c
    ld l, a
    dec e
    ld d, a
    ld a, [hl-]
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld c, $00
    inc d
    nop
    ld d, d
    ld c, [hl]
    nop
    nop
    add hl, hl
    dec h
    adc $39
    rst RST_38
    ld a, a
    nop
    nop
    ld c, e
    nop
    or h
    nop
    ld a, $02
    nop
    nop
    adc $39
    or h
    nop
    ld a, $02
    nop
    nop
    or h
    nop
    ld d, d
    ld c, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld c, e
    nop
    or h
    nop
    ld [$0021], sp
    nop
    add hl, hl
    dec h
    rst RST_28
    dec a
    or h
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
    adc h
    nop
    ld [hl], e
    dec h
    rst RST_38
    ld a, a
    nop
    nop
    adc h
    nop
    sub h
    ld d, d
    rst RST_38
    ld a, a
    nop
    nop
    inc [hl]
    ld de, $363c
    rst RST_38
    ld a, a
    nop
    nop
    adc h
    nop
    ei
    ld bc, $7fff
    dec de
    nop
    adc h
    nop
    and b
    ld a, l
    rst RST_38
    ld a, a
    nop
    nop
    adc h
    nop
    and b
    ld a, l
    ei
    ld bc, $0000
    adc h
    nop
    and b
    ld a, l
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
    rst RST_28
    inc c
    sub h
    ld hl, $2e1b
    nop
    nop
    xor e
    nop
    pop af
    inc c
    or a
    dec c
    nop
    nop
    sub b
    nop
    db $f4
    nop
    db $db
    dec c
    nop
    nop
    sub b
    nop
    db $f4
    nop
    jr jr_00b_4edb

    nop
    nop
    rst RST_28
    inc c
    rst RST_18
    add hl, hl
    cp a
    ld [hl], d
    nop
    nop
    rst RST_28
    inc c
    rst RST_18
    add hl, hl
    add b
    ld h, l
    nop
    nop
    sub b
    nop
    jr jr_00b_4ef1

    ld c, h
    dec h
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    rrca
    ld de, $1df5
    rst RST_18
    ld a, [hl-]
    nop
    nop
    ld c, c
    nop
    ld d, b
    dec b
    ld e, b
    ld [hl-], a
    nop
    nop
    ld l, l
    ld de, $2a14
    dec de
    inc sp
    nop
    nop
    jr jr_00b_4eea

    cp e
    ld c, d
    cp a
    ld l, a
    nop
    nop
    ld [de], a
    ld de, $2595
    jr jr_00b_4ef6

    nop
    nop
    or e
    ld de, $0550
    cp a
    ld l, a
    nop
    nop
    adc d
    nop
    ld d, b
    dec b
    db $ed
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
    ld a, [de]

jr_00b_4edb:
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

jr_00b_4eea:
    ld l, h
    inc e
    ld d, c
    inc b
    ccf
    dec [hl]
    ld d, c

jr_00b_4ef1:
    inc b
    ccf
    dec [hl]
    ld e, e
    ld a, [hl-]

jr_00b_4ef6:
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
    nop
    nop
    scf
    inc l
    rra
    ld [bc], a
    cp a
    ld h, e
    nop
    nop
    ld c, d
    add hl, hl
    ld [hl], e
    ld c, [hl]
    dec d
    inc e
    nop
    nop
    nop
    ld d, b
    nop
    ld a, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld c, d
    add hl, hl
    rra
    ld [bc], a
    cp a
    ld h, e
    nop
    nop
    nop
    ld d, b
    nop
    ld a, [hl]
    dec d
    inc e
    nop
    nop
    nop
    ld d, b
    nop
    ld a, [hl]
    ld c, d
    add hl, hl
    nop
    nop
    dec d
    inc e
    ld de, $0d10
    inc b
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
    scf
    ld bc, $03ff
    nop
    nop
    adc l
    nop
    scf
    ld bc, $5ef7
    nop
    nop
    adc l
    nop
    db $10
    ld b, d
    rst RST_38
    ld a, a
    nop
    nop
    adc l
    nop
    scf
    ld bc, $56b5
    nop
    nop
    adc l
    nop
    db $10
    ld b, d
    rst RST_38
    inc bc
    nop
    nop
    adc l
    nop
    and l
    inc d
    ld de, $0011
    nop
    adc l
    nop
    rra
    nop
    rst RST_38
    inc bc
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
    nop
    ld a, a
    ld [bc], a
    rst RST_38
    ld a, a
    nop
    nop
    or [hl]
    nop
    ld a, a
    ld [bc], a
    db $10
    jr z, jr_00b_4fa9

jr_00b_4fa9:
    nop
    nop
    inc [hl]
    and b
    ld a, c
    and b
    ld a, a
    nop
    nop
    nop
    inc [hl]
    and b
    ld a, c
    db $10
    jr z, jr_00b_4fb9

jr_00b_4fb9:
    nop
    and b
    ld a, c
    or [hl]
    nop
    sbc a
    inc bc
    nop
    nop
    or [hl]
    nop
    ld a, a
    ld [bc], a
    nop
    inc [hl]
    nop
    nop
    nop
    inc [hl]
    and b
    ld a, c
    or [hl]
    nop
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
    jr jr_00b_5003

jr_00b_5003:
    jr c, jr_00b_5005

jr_00b_5005:
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
    jr nz, jr_00b_5042

    ret nz

    inc [hl]
    rst RST_38
    inc sp
    ldh [$ff7c], a
    jr nz, jr_00b_504a

    adc e
    dec [hl]
    rrca
    ld b, [hl]
    push de
    ld e, [hl]
    jr nz, jr_00b_504a

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

jr_00b_5042:
    adc e
    dec [hl]
    ld c, c
    dec l
    push de
    ld e, [hl]
    and b
    nop

jr_00b_504a:
    ret nz

    ld bc, $03e0
    ccf
    jr c, jr_00b_5051

jr_00b_5051:
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld l, $00
    sub [hl]
    ld de, $46fe
    nop
    nop
    ld l, $00
    sub [hl]
    ld de, $0286
    nop
    nop
    add hl, hl
    dec h
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    inc sp
    dec b
    ld sp, $ff46
    ld a, a
    nop
    nop
    inc sp
    dec b
    ccf
    ld b, a
    add [hl]
    ld [bc], a
    nop
    nop
    add hl, hl
    dec h
    or l
    ld d, [hl]
    add [hl]
    ld [bc], a
    nop
    nop
    add hl, hl
    dec h
    dec sp
    ld h, $86
    ld [bc], a
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
    rst RST_18
    ld bc, $23ff
    nop
    nop
    ld c, $00
    rra
    nop
    rst RST_38
    inc hl
    nop
    nop
    ld [hl], l
    ld bc, $00af
    rst RST_38
    inc bc
    nop
    nop
    nop
    ld e, b
    ldh [$ff7e], a
    xor a
    nop
    nop
    nop
    nop
    ld e, b
    add e
    ld a, l
    ldh [$ff7e], a
    nop
    nop
    nop
    ld h, b
    and b
    ld a, [hl]
    ld e, a
    inc bc
    nop
    nop
    nop
    ld h, b
    and b
    ld a, [hl]
    ld hl, sp+$7f
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    db $ec
    inc c
    ldh a, [c]
    dec [hl]
    ld [hl], l
    ld a, $bf
    ld l, e
    nop
    nop
    jp hl


    jr jr_00b_515a

    ld a, $bf
    ld l, e
    nop
    nop
    ld l, a
    dec h
    ld [hl], a
    ld b, d
    cp a
    ld l, e
    ld l, a
    dec h
    jp hl


    jr jr_00b_516c

    ld b, d
    cp a
    ld l, e
    ld l, $15
    ldh a, [c]
    dec [hl]
    ld [hl], l
    ld a, $bf
    ld l, e
    jp hl


    jr jr_00b_5119

    ld a, [hl-]
    sbc d
    ld c, d
    cp a
    ld l, e
    adc d
    ld [$190e], sp
    ld [hl], c
    dec h
    ld d, $3a
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop

jr_00b_5119:
    nop
    ld c, d
    add hl, hl
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld c, d
    add hl, hl
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld c, d
    add hl, hl
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld c, d
    add hl, hl
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld c, d
    add hl, hl
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld c, d
    add hl, hl
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld c, d
    add hl, hl
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    nop
    nop
    ld [bc], a

jr_00b_5153:
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    inc bc
    nop

jr_00b_515a:
    ld l, b
    nop
    rst RST_20
    inc e
    ld l, e
    dec l
    add h
    stop
    nop
    add $18
    ld l, e
    dec l
    add $18
    add $18

jr_00b_516c:
    nop
    inc l
    inc c
    nop
    ld b, d
    ld [$192b], sp
    nop
    inc l
    ld l, e
    dec l
    add h
    db $10
    dec b
    nop
    ld l, b
    nop
    dec c
    ld de, $1084
    and b
    nop
    add $18
    ld l, e
    dec l
    ld bc, $c600
    jr jr_00b_5153

    jr @+$0e

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
    ld b, $00
    ld l, b
    nop
    db $ed
    stop
    nop
    ldh [rNR14], a
    ld l, b
    nop
    ld c, a
    ld de, $0000
    add a
    db $10
    ld [$6c18], a
    add hl, hl
    nop
    nop
    ld b, $00
    ld l, b
    nop
    rst RST_20
    inc e
    nop
    nop
    add a
    db $10
    ld l, b
    nop
    db $ed
    stop
    nop
    ldh [rNR14], a
    ld l, b
    nop
    ld c, a
    ld de, $0000
    add hl, hl
    dec h
    and a
    inc e
    ld l, h
    ld sp, $0000
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld b, h
    ld [$14a6], sp
    ld a, [bc]
    ld hl, $0000
    ld b, l
    ld [$1088], sp
    ld c, d
    ld hl, $0000
    ld h, h
    inc c
    and l
    inc d
    add h
    stop
    nop
    ld b, h
    ld [$0c85], sp
    ret z

    jr jr_00b_51f9

jr_00b_51f9:
    nop
    add l
    db $10
    ld b, h
    nop
    ld h, [hl]
    nop
    nop
    nop
    ld b, e
    nop
    ld b, [hl]
    nop
    ld c, d
    ld hl, $254b
    ld b, [hl]
    ld [$108a], sp
    ret z

    jr jr_00b_5211

jr_00b_5211:
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld h, $04
    adc d
    inc b
    rrca
    dec b
    nop
    nop
    ld h, $04
    inc c
    nop
    adc h
    ld [$0000], sp
    ld h, $04
    ld b, b
    nop
    adc h
    ld [$0000], sp
    ld h, $04
    ld b, b
    nop
    xor a
    nop
    ld [$2600], sp
    inc b
    adc d
    inc b
    rrca
    jr jr_00b_5241

jr_00b_5241:
    nop
    adc h
    inc b
    add hl, bc
    ld hl, $180f
    and b
    nop
    ret nz

    nop
    nop
    ld bc, $180f
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld a, [hl+]
    ld hl, $0001
    add $18
    ld l, e
    dec l
    ld h, e
    inc c
    ld l, d
    ld [$00a9], sp
    xor e
    inc c
    nop
    nop
    ldh [$ff7c], a
    xor c
    nop
    xor e
    inc c
    nop
    nop
    xor e
    db $10
    dec b
    nop
    ld a, [bc]
    dec e
    nop
    nop
    xor e
    db $10
    add $18
    add a
    inc b
    ld h, e
    inc c
    ld a, [bc]
    dec e
    add a
    inc c
    dec b
    nop
    ld h, e
    inc c
    ldh [$ff7c], a
    add $18
    ld l, d
    ld [$0000], sp
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld bc, $0400
    nop
    adc d
    ld [$14e6], sp
    rlca
    ld bc, $14a6
    and [hl]
    inc e
    dec h
    nop
    and [hl]
    inc e
    inc b
    nop
    rlca
    ld bc, $0025
    and [hl]
    inc e
    adc d
    ld [$1d28], sp
    dec h
    nop
    ld b, $00
    and [hl]
    inc d
    and [hl]
    inc e
    dec h
    nop
    ld h, [hl]
    nop
    adc d
    ld [$1ca6], sp
    ld bc, $6600
    nop
    ld b, $00
    and [hl]
    inc e
    ld bc, $0000
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add l
    inc c
    add hl, bc
    add hl, de
    ld c, d
    add hl, hl
    nop
    nop
    inc h
    nop
    ld h, a
    nop
    inc l
    ld de, $0000
    ld c, d
    add hl, hl
    ld h, a
    nop
    inc l
    ld de, $0000
    ld h, a
    nop
    ld [bc], a
    nop
    ld a, [hl+]
    nop
    ld b, b
    nop
    nop
    inc h
    ld h, a
    nop
    ld c, d
    add hl, hl
    dec h
    nop
    ld c, d
    add hl, hl
    add hl, bc
    add hl, de
    ld h, a
    nop
    nop
    nop
    ld c, d
    add hl, hl
    ld [bc], a
    nop
    ld a, [hl+]
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
    ld sp, $f746
    ld e, [hl]
    nop
    ld d, $00
    nop
    ldh [$ff7d], a
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    add b
    ld [bc], a
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    cp a
    nop
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    rra
    ld b, h
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
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    jr nc, jr_00b_53ee

    ld [hl], b
    ld d, h
    or b
    ld d, h
    ldh a, [rHDMA4]
    jr nc, @+$57

    ld [hl], b
    ld d, l
    or b
    ld d, l
    ldh a, [rHDMA5]
    jr nc, jr_00b_5400

    ld [hl], b
    ld d, [hl]
    or b
    ld d, [hl]
    ldh a, [rRP]
    jr nc, @+$59

    ld [hl], b
    ld d, a
    or b
    ld d, a
    ldh a, [$ff57]
    jr nc, jr_00b_5412

    ld [hl], b
    ld e, b
    or b
    ld e, b
    ldh a, [$ff58]
    jr nc, jr_00b_541b

    ld [hl], b
    ld e, c
    or b
    ld e, c
    ldh a, [$ff59]
    jr nc, jr_00b_5424

    ld [hl], b
    ld e, d
    or b
    ld e, d
    ldh a, [$ff5a]
    jr nc, jr_00b_542d

    ld [hl], b
    ld e, e
    or b
    ld e, e
    ldh a, [$ff5b]
    jr nc, jr_00b_5436

    ld [hl], b
    ld e, h
    or b
    ld e, h
    ldh a, [$ff5c]
    jr nc, jr_00b_543f

    ld [hl], b
    ld e, l
    or b
    ld e, l
    ldh a, [$ff5d]
    jr nc, jr_00b_5448

    ld [hl], b
    ld e, [hl]
    or b
    ld e, [hl]

jr_00b_53ee:
    ldh a, [$ff5e]
    jr nc, jr_00b_5451

    ld [hl], b
    ld e, a
    or b
    ld e, a
    ldh a, [$ff5f]
    jr nc, jr_00b_545a

    ld [hl], b
    ld h, b
    or b
    ld h, b
    ldh a, [$ff60]

jr_00b_5400:
    jr nc, jr_00b_5463

    ld [hl], b
    ld h, c
    or b
    ld h, c
    ldh a, [$ff61]
    jr nc, jr_00b_546c

    ld [hl], b
    ld h, d
    or b
    ld h, d
    ldh a, [$ff62]
    jr nc, @+$65

jr_00b_5412:
    ld [hl], b
    ld h, e
    or b
    ld h, e
    ldh a, [$ff63]
    jr nc, @+$66

    ld [hl], b

jr_00b_541b:
    ld h, h
    or b
    ld h, h
    ldh a, [$ff64]
    jr nc, jr_00b_5487

    ld [hl], b
    ld h, l

jr_00b_5424:
    or b
    ld h, l
    ldh a, [$ff65]
    jr nc, jr_00b_5490

    ld [hl], b
    ld h, [hl]
    or b

jr_00b_542d:
    ld h, [hl]
    ldh a, [$ff66]
    ldh [$ff7f], a
    nop
    nop
    add hl, hl
    add hl, sp

jr_00b_5436:
    ld sp, $e062
    ld a, a
    nop
    nop
    ld l, [hl]
    dec d
    cp c

jr_00b_543f:
    ld b, d
    ldh [$ff7f], a
    nop
    nop
    adc d
    dec [hl]
    ld [hl], c
    ld c, [hl]

jr_00b_5448:
    ldh [$ff7f], a
    nop
    nop
    db $ed
    dec [hl]
    rst RST_38
    ld a, a
    rra

jr_00b_5451:
    ld a, h
    nop
    nop
    ld h, e
    ld a, l
    rst RST_30
    ld a, [hl]
    ldh [$ff7f], a

jr_00b_545a:
    ld bc, $1200
    ld c, b
    rra
    ld a, h
    ldh [$ff7f], a
    db $eb

jr_00b_5463:
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop

jr_00b_546c:
    rra
    nop
    cp a
    ld bc, $7fe0
    nop
    nop
    sub $5a
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    xor a
    ld bc, $037f
    ldh [$ff7f], a
    jr nz, jr_00b_54d9

    ld h, b
    ld a, [hl]
    rst RST_38

jr_00b_5487:
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    rla
    nop
    ld a, a
    inc bc

jr_00b_5490:
    ldh [$ff7f], a
    nop
    nop
    sub $5a
    rst RST_38
    ld a, a
    nop
    nop
    dec bc
    inc l
    ld d, $58
    rra
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
    ld bc, $7fe0
    nop
    nop
    ld b, b
    ld bc, $0280
    ldh [$ff7f], a
    nop
    nop
    ld [hl], e
    ld c, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    nop

jr_00b_54d9:
    nop
    dec bc
    inc l
    ld d, $58
    rra
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
    ld bc, $7fe0
    nop
    nop
    adc a
    ld bc, $02d8
    ldh [$ff7f], a
    nop
    nop
    rst RST_00
    ld e, l
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    push hl
    inc e
    add hl, hl
    dec h
    ldh [$ff7f], a
    stop
    ld e, h
    dec b
    ccf
    ld e, [hl]
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    rst RST_20
    inc e
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    rst RST_38
    ld bc, $03ff
    ldh [$ff7f], a
    nop
    nop
    cp e
    ld [bc], a
    rst RST_38
    inc bc
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    ld b, b
    ld bc, $0280
    ldh [$ff7f], a
    nop
    nop
    ld [hl], e
    ld c, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    ld b, b
    ld bc, $0280
    ldh [$ff7f], a
    nop
    nop
    ld [hl], e
    ld c, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7c1f
    nop
    nop
    add b
    ld a, [hl]
    rst RST_38
    ld a, a
    rra
    ld a, h
    nop
    nop
    ld h, b
    ld c, [hl]
    ldh [$ff7f], a
    rra
    ld a, h
    nop
    nop
    ld h, b
    ld c, [hl]
    ldh [$ff7f], a
    rra
    ld a, h
    nop
    nop
    ld h, b
    ld c, [hl]
    ldh [$ff7f], a
    rra
    ld a, h
    nop
    nop
    ld h, b
    ld c, [hl]
    ldh [$ff7f], a
    nop
    nop
    ld h, b
    dec l
    ld h, b
    ld c, [hl]
    ldh [$ff7f], a
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
    sub $5a
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    dec de
    nop
    nop
    ld l, h
    ldh [$ff7f], a
    nop
    nop
    or c
    ld bc, $031f
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7c1f
    nop
    nop
    xor l
    dec [hl]
    sub $5a
    rra
    ld a, h
    nop
    nop
    ld h, b
    ld c, [hl]
    ldh [$ff7f], a
    rra
    ld a, h
    nop
    nop
    ld h, b
    ld c, [hl]
    ldh [$ff7f], a
    rra
    ld a, h
    nop
    nop
    ld h, b
    ld c, [hl]
    ldh [$ff7f], a
    rra
    ld a, h
    nop
    nop
    ld h, b
    ld c, [hl]
    ldh [$ff7f], a
    nop
    nop
    ld h, b
    dec l
    ld h, b
    ld c, [hl]
    ldh [$ff7f], a
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
    ld bc, $21d4
    ld b, b
    nop
    add b
    add hl, de
    inc h
    dec sp
    call nc, $4421
    nop
    ld l, h
    dec h
    ld d, e
    ld b, [hl]
    call nc, Call_00b_4221
    inc b
    pop af
    ld sp, $5f5b
    call nc, Call_000_0021
    nop
    ld c, b
    ld bc, $0272
    ldh [$ff7f], a
    nop
    nop
    ld c, b
    nop
    adc e
    nop
    nop
    nop
    dec bc
    inc l
    ld d, $58
    rra
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
    ld bc, $21d4
    ld b, b
    nop
    add b
    add hl, de
    inc h
    dec sp
    call nc, $4421
    nop
    ld l, h
    dec h
    ld d, e
    ld b, [hl]
    call nc, Call_00b_4221
    inc b
    pop af
    ld sp, $5f5b
    call nc, Call_000_0021
    nop
    ld c, b
    ld bc, $0272
    ldh [$ff7f], a
    nop
    nop
    ld c, b
    nop
    adc e
    nop
    nop
    nop
    dec bc
    inc l
    ld d, $58
    rra
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
    ld bc, $21d4
    ld b, b
    nop
    add b
    add hl, de
    inc h
    dec sp
    call nc, $4421
    nop
    ld l, h
    dec h
    ld d, e
    ld b, [hl]
    call nc, Call_00b_4221
    inc b
    pop af
    ld sp, $5f5b
    call nc, Call_000_0021
    nop
    ld c, b
    ld bc, $0272
    ldh [$ff7f], a
    nop
    nop
    ld c, b
    nop
    adc e
    nop
    nop
    nop
    dec bc
    inc l
    ld d, $58
    rra
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
    ld bc, $7c1f
    nop
    nop
    ret nz

    ld a, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    cp b
    nop
    ld e, a
    ld [bc], a
    ldh [$ff7f], a
    nop
    nop
    nop
    ld d, b
    and b
    ld a, l
    ldh [$ff7f], a
    nop
    nop
    dec hl
    ld hl, $4654
    ldh [$ff7f], a
    nop
    nop
    ld d, h
    ld b, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    inc c
    nop
    rra
    nop
    nop
    nop
    dec bc
    inc l
    dec d
    ld d, h
    rra
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
    ld bc, $7fe0
    nop
    nop
    ld d, $00
    sbc a
    ld [bc], a
    ldh [$ff7f], a
    nop
    nop
    inc de
    ld l, $d9
    ld b, [hl]
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    inc l
    dec h
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    sub h
    ld d, d
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    adc d
    dec [hl]
    ld [hl], c
    ld c, [hl]
    ldh [$ff7f], a
    nop
    nop
    db $ed
    dec [hl]
    rst RST_38
    ld a, a
    rra
    ld a, h
    nop
    nop
    ld h, e
    ld a, l
    rst RST_30
    ld a, [hl]
    ldh [$ff7f], a
    ld bc, $1200
    ld c, b
    rra
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
    ld bc, $7fe0
    nop
    nop
    inc l
    dec h
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    sub h
    ld d, d
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    adc d
    dec [hl]
    ld [hl], c
    ld c, [hl]
    ldh [$ff7f], a
    nop
    nop
    db $ed
    dec [hl]
    rst RST_38
    ld a, a
    rra
    ld a, h
    nop
    nop
    ld h, e
    ld a, l
    rst RST_30
    ld a, [hl]
    ldh [$ff7f], a
    ld bc, $1200
    ld c, b
    rra
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
    ld bc, $7fe0
    add b
    ld a, l
    and b
    ld a, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    or c
    nop
    sbc b
    ld bc, $7fe0
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    add b
    ld a, l
    and b
    ld a, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    or c
    nop
    sbc b
    ld bc, $7fe0
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    inc l
    dec h
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    sub h
    ld d, d
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    adc d
    dec [hl]
    ld [hl], c
    ld c, [hl]
    ldh [$ff7f], a
    nop
    nop
    db $ed
    dec [hl]
    rst RST_38
    ld a, a
    rra
    ld a, h
    nop
    nop
    ld h, e
    ld a, l
    rst RST_30
    ld a, [hl]
    ldh [$ff7f], a
    ld bc, $1200
    ld c, b
    rra
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
    ld bc, $7fe0
    nop
    nop
    inc l
    dec h
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    sub h
    ld d, d
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    adc d
    dec [hl]
    ld [hl], c
    ld c, [hl]
    ldh [$ff7f], a
    nop
    nop
    db $ed
    dec [hl]
    rst RST_38
    ld a, a
    rra
    ld a, h
    nop
    nop
    ld h, e
    ld a, l
    rst RST_30
    ld a, [hl]
    ldh [$ff7f], a
    ld bc, $1200
    ld c, b
    rra
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
    ld bc, $7fe0
    nop
    nop
    pop af
    ld bc, $7fff
    ldh [$ff7f], a
    nop
    nop
    jr nz, jr_00b_5b40

    rla
    ld [bc], a

jr_00b_5b40:
    ldh [$ff7f], a
    nop
    nop
    ld [hl], h
    nop
    xor [hl]
    ld b, c
    ldh [$ff7f], a
    nop
    nop
    db $dd
    nop
    rst RST_18
    inc bc
    ldh [$ff7f], a
    nop
    nop
    ld [hl], h
    nop
    ccf
    ld bc, $0000
    dec bc
    inc l
    ld d, $58
    rra
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
    ld bc, $7fe0
    nop
    nop
    and b
    ld a, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    adc h
    ld sp, $5ef7
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    db $e3
    inc e
    rst RST_30
    ld e, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    ld h, $0c
    ld [de], a
    nop
    ldh [$ff7f], a
    nop
    nop
    ld l, e
    dec l
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    inc sp
    ld bc, $021a
    ldh [$ff7f], a
    nop
    nop
    ld a, d
    ld a, $ff
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    add b
    ld bc, $02a0
    ldh [$ff7f], a
    nop
    nop
    xor a
    ld bc, $037f
    nop
    nop
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
    ld sp, $ff46
    ld a, a
    ldh [$ff7f], a
    ld b, [hl]
    nop
    ld l, e
    nop
    inc d
    ld bc, $7fe0
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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

Jump_00b_5f00:
    ld e, a
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
    adc h
    ld sp, $6b5a
    ldh [$ff7f], a
    nop
    nop
    jr nc, @+$03

    jp c, $e001

    ld a, a
    nop
    nop
    and b
    ld bc, $02c0
    ldh [$ff7f], a
    nop
    nop
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    ld e, d
    rra
    rst RST_38
    inc sp
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    xor e
    nop
    inc sp
    ld bc, $7fe0
    nop
    nop
    rra
    nop
    ld e, a
    ld [bc], a
    ldh [$ff7f], a
    nop
    nop
    sub l
    nop
    rst RST_30
    ld bc, $7fe0
    nop
    nop
    ld c, c
    add hl, hl
    ld [hl], h
    ld d, d
    rra
    ld a, h
    nop
    nop
    ld h, b
    ld a, a
    rst RST_38
    ld a, a
    nop
    nop
    dec bc
    inc l
    ld d, $58
    rra
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
    ld bc, $7fe0
    nop
    nop
    rst RST_28
    ld b, c
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    adc h
    dec [hl]
    rst RST_38
    ld a, a

Jump_00b_6000:
    ldh [$ff7f], a
    nop
    nop
    ld [de], a
    ld [bc], a
    rst RST_18
    ld d, a
    ldh [$ff7f], a
    nop
    nop
    sub a
    nop
    sbc a
    ld c, [hl]
    ldh [$ff7f], a
    nop
    nop
    ld h, b
    ld a, a
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    ld h, b
    ld a, a
    rst RST_38
    ld a, a
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
    ld bc, $7fe0
    nop
    nop
    adc l
    nop
    sub l
    ld bc, $7fe0
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fe0
    nop
    nop
    or l
    ld d, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $7fff
    add $18
    add hl, hl
    dec h
    db $10
    ld b, d
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    rst RST_38
    ld a, a
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    rst RST_38
    ld a, a
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    rst RST_38
    ld a, a
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    rst RST_38
    ld a, a
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    rst RST_38
    ld a, a
    rra
    ld a, h
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $15
    ld e, b
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
    cp a
    ld [bc], a
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
    dec bc
    inc l
    ld d, $58
    rra
    ld a, h
    ldh [$ff7f], a
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
    ld bc, $0550
    nop
    nop
    inc [hl]
    ld a, [hl-]
    rra
    ld b, e
    ldh [$ff7f], a
    nop
    nop
    sbc a
    dec hl
    rst RST_38
    ld a, a
    ld d, b
    dec b
    nop
    nop
    ret z

    ld bc, $030c
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
    ld bc, $0550
    nop
    nop
    ld [hl], h
    dec e
    cp e
    ld a, $e0
    ld a, a
    nop
    nop
    xor a
    ld bc, $037f
    ld d, b
    dec b
    nop
    nop
    ret z

    ld bc, $030c
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
    ld bc, $27ff
    ld a, [de]
    nop
    rst RST_38
    nop
    rst RST_38
    ld a, e
    rst RST_38
    daa
    nop
    nop
    or [hl]
    nop
    ld e, c
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
    ldh a, [rSTAT]

jr_00b_628e:
    rra
    ld bc, $27ff
    nop
    nop
    ld e, $34
    ld a, a
    ld a, [hl-]
    rst RST_38
    daa
    nop
    nop
    ld e, $34
    rrca
    nop
    inc c
    jr nc, jr_00b_628e

    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $0c
    jr nc, jr_00b_62ab

jr_00b_62ab:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
