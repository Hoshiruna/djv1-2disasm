; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

    jr nz, jr_031_4042

    ld l, l
    ld b, [hl]
    ld l, [hl]
    ld b, [hl]
    sub l
    ld c, d
    sub [hl]
    ld c, d
    ld h, b
    ld d, b
    ld h, c
    ld d, b
    ld a, h
    ld d, h
    ld a, l
    ld d, h
    ret z

    ld e, d
    add h
    ld e, h
    sbc a
    ld h, b
    ld h, h
    ld h, e
    ld h, l
    ld h, e
    ld h, [hl]
    ld h, e
    ld h, a
    ld h, e
    ld de, $1600
    ld [hl], l
    ld d, $58
    rlca
    ld d, $00
    rlca
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    ld d, $ff
    ld a, [bc]
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d

jr_031_4042:
    ld d, $00
    dec c
    ld bc, $1607

jr_031_4048:
    nop
    inc b
    jr nc, jr_031_4048

    ld b, h
    ld d, $00
    ld [bc], a
    ld bc, $0c06
    add hl, de
    ld [hl+], a
    inc a
    ld [hl], c
    and $8e
    ld e, [hl]
    ei
    push af
    add sp, -$16
    cp e
    cp d
    cp e
    cp c
    cp l
    ld a, $d8
    inc b
    ld [hl], b
    sbc b
    ld l, h
    ld h, h
    ld [hl], l
    halt
    ld h, $16
    ld e, b
    rlca
    ld b, c
    ld d, c
    xor e
    sbc e
    cp c
    sub c
    or d
    ld a, l
    pop bc
    jp nz, $e0ec

    and b
    dec b
    sub d
    ld [hl], d
    ld h, $20
    ld b, [hl]
    ld b, l
    xor a
    ld e, [hl]
    ld a, $7c
    jp nz, $d87c

    ld [$d1fc], a
    ld h, d
    call c, $d0b0
    ret c

    ld c, b
    jr jr_031_409a

    inc b
    add h
    inc a
    ccf

jr_031_409a:
    inc e
    and b
    cp h
    cp d
    dec e
    ld e, $e2
    ld [hl], l
    ld a, [de]
    inc e
    ld h, [hl]
    adc b
    ld [$b801], sp
    ld a, l
    add hl, sp
    inc sp
    add e
    sbc $fc
    ld a, d
    add c
    adc l
    jr jr_031_40c5

    inc bc
    inc e
    nop
    rlca
    dec d
    or a
    daa
    cpl
    rrca
    ccf
    rst RST_38
    rst RST_38
    dec d
    ld a, [bc]
    dec d
    ld a, [hl+]
    ld d, l

jr_031_40c5:
    ld a, [hl+]
    ld d, l
    xor d
    ld d, b

Jump_031_40c9:
    xor b
    ld d, b
    xor b
    ld d, h
    xor d
    ld d, h
    xor d
    ld c, a
    ld l, e
    ld h, a
    ld h, l
    jr nc, @+$3c

    dec a
    ld e, $40
    add b
    add c
    ld b, d
    add l
    ld c, e
    dec h
    ld c, e
    ld d, l
    adc c
    ldh [$fff4], a
    ld a, [$faff]
    db $fd
    nop
    ld [bc], a
    pop de
    ld a, [bc]
    add l
    add b
    jp nc, Jump_000_05a2

    ld a, [bc]
    dec d
    ld a, [hl+]
    ld d, l
    ld d, $ff
    ld [bc], a
    sbc a
    rst RST_08
    rst RST_08
    rst RST_20
    di
    ei
    ld sp, hl
    db $fd
    daa
    ld d, e
    xor l
    ld [hl], e
    cp c
    dec a
    ld e, d
    cp [hl]
    ld a, [$eaf4]
    pop de
    add sp, $45
    cp e
    call nz, $a8d0
    ret nc

    xor c
    pop de
    ld hl, $a383
    rst RST_38
    ld d, $7f
    ld b, $54
    xor b
    ld d, h
    xor d
    ld d, l
    xor c
    ld d, l
    xor c
    ldh a, [$ffc0]
    ld bc, $1603
    nop
    ld [bc], a
    rlca
    nop
    ld hl, sp+$16
    cp $02
    inc c
    nop
    ld hl, sp+$0f
    nop
    inc d
    ld a, [$80f9]
    nop
    jr c, jr_031_4192

    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    xor d
    sub l
    add d
    db $fc
    cp $fe
    db $fc
    db $fc
    ld d, $f9
    ld [bc], a
    ld [hl-], a
    ld b, l
    xor d
    sbc a
    cp a
    rra
    ccf
    ld a, a
    ld l, $55
    and d
    ldh a, [$ffe8]
    db $f4
    add sp, -$30
    sbc a
    ld h, a
    cp e
    ld e, l
    ld l, $5f
    cpl
    rla
    nop
    cp h
    cp [hl]
    ld [hl], h
    add $4b
    inc [hl]
    inc bc
    or b
    ld l, a
    ld e, a
    ld a, h
    ld a, [de]
    rst RST_30
    inc c
    ei
    ld d, $f2
    ld [bc], a
    and $e4
    call z, $90d8
    ccf
    ld a, a
    ld a, $7d
    ld a, [$fafc]
    ldh a, [$ffca]
    add d
    add e
    inc bc
    ld b, $26
    ld h, [hl]
    rst RST_20
    ld c, $dc
    db $ec
    ld l, h
    ld l, b
    ld c, b

jr_031_4192:
    ret c

    sbc b
    ld d, $00
    rrca
    jr jr_031_41bd

    ld l, $5a
    ld d, $58
    inc bc
    ld d, $18
    inc bc
    add hl, de
    inc de
    rlca
    rrca

Jump_031_41a5:
    inc hl
    daa
    ld c, a
    rst RST_18
    cp [hl]
    ccf
    ld a, [hl]
    ld a, a
    and h
    ret nz

    pop hl
    pop bc
    add e
    rlca
    rlca
    ld b, $cf
    rst RST_08
    rst RST_18
    db $db
    cp d
    or [hl]
    inc h
    ld l, h

jr_031_41bd:
    jr jr_031_41f7

    ld [hl-], a
    ld [hl], $76
    ld h, [hl]
    and $ce
    ld e, $7c
    ld sp, hl
    di
    jp $8fc7


    rra
    cp $fc
    ld hl, sp-$10
    ldh [$ffd0], a
    and b
    ld b, b
    ld c, $1c
    dec e
    add hl, sp
    ld [hl], e
    ld [hl], a
    and $ef
    ld c, h
    reti


    or c
    or e
    ld h, e
    ld h, a
    rst RST_00
    adc [hl]
    ret nz

    ret z

    adc b
    sbc b
    sbc b
    ld d, $18
    ld [bc], a
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    and b
    ld d, l
    xor d

jr_031_41f7:
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    ld [bc], a
    ld d, $00
    inc b
    inc c
    ccf
    ld [hl+], a
    ld d, $00
    dec b
    add b
    ldh a, [rNR21]
    jr jr_031_420e

    add hl, de
    add hl, de
    inc de

jr_031_420e:
    inc de
    nop
    ld c, $19
    ld [hl], $46
    adc $ae
    and h
    rla
    sbc l
    dec e
    sbc l
    add hl, de
    add hl, sp
    ld a, b
    dec de
    inc a
    adc a
    ld h, a
    ld [hl], c
    ld a, c
    db $dd
    xor [hl]
    rla
    jr jr_031_4241

    sbc b
    ret z

    ldh [$fff0], a
    ld hl, sp-$04
    rlca
    rlca
    dec de
    ld [de], a
    ld a, [de]
    ld a, [hl-]
    dec sp
    dec sp
    inc bc
    ld a, $1b
    ld d, a
    ccf
    adc e
    ld b, [hl]
    dec sp
    ld h, h
    inc b

jr_031_4241:
    ld h, d
    and d
    push af
    ld a, d
    ld a, h
    ld a, $83
    ld b, e
    scf
    rlca
    dec b
    and b
    ld c, c
    ld c, [hl]
    inc a
    adc [hl]
    rst RST_00
    db $db
    sbc l
    adc c
    ld c, a
    cp a
    jr nz, jr_031_4279

    jr nc, @+$32

    inc d
    ld e, $0e
    ret nz

    add b
    or b
    sbc b
    adc b
    ret nz

    ld a, b
    nop
    ldh [rNR33], a
    cp [hl]
    sbc h
    call z, Call_031_7bc1
    ccf
    ld e, [hl]
    ld b, a
    xor [hl]
    ld e, b
    jr c, jr_031_42da

    ld de, $8010
    ccf
    ei

jr_031_4279:
    jr nc, @+$03

    ld hl, $b253
    ld [hl], d
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    xor d
    ld a, h
    ld h, [hl]
    ld e, d
    ld d, $58
    inc b
    ld b, b
    nop
    ld d, d
    sub b
    ld bc, $0b81
    dec b
    xor d
    sub c
    rlca
    cpl
    ld e, a
    rst RST_28
    ld e, a
    cp a
    ld [bc], a
    ld bc, $4281
    and c
    jp nc, $d2a4

    ldh a, [c]
    sub $e6
    and [hl]
    inc c
    ld e, h
    cp h
    ld a, b
    ld d, $58
    rlca
    dec bc
    sub l
    adc e
    add l
    adc e
    add b
    pop bc
    push bc
    ld e, a
    ccf
    ld e, a
    xor e
    rla
    and d
    db $dd
    inc hl
    push hl
    jp z, $ceb5

    sbc l
    cp a
    ld e, e
    ld a, a
    ld hl, sp-$10
    ldh a, [$ffe0]
    ret nz

    ret nz

    adc b
    sbc b
    ld d, $58
    inc b
    ld e, c
    ld e, c
    ld b, c
    ldh a, [$ff80]
    jr z, jr_031_4337

jr_031_42da:
    sbc a
    ld bc, $1c00
    nop
    rra
    ld d, $7f
    ld [bc], a
    jr nc, jr_031_42e5

jr_031_42e5:
    rra
    rrca
    inc bc
    add b
    ret nz

    ld d, $00
    ld [bc], a
    ldh [rNR21], a
    jr @+$09

    ld sp, hl
    and $dd
    cp d
    ld [hl], h
    ld a, [$e8f4]
    ld [hl], h
    xor d
    ld b, l
    dec bc
    rla
    cpl
    rla
    dec bc
    ld c, h
    and d
    ld d, l
    ld sp, hl
    push af
    ld hl, sp-$04
    cp $18
    ld d, $08
    inc bc
    ld d, $80
    ld [bc], a
    ld [hl], h
    ld a, e
    ld [hl], a
    halt
    ld [hl], $32
    dec sp
    add hl, de
    inc de
    ld b, c
    add c
    ret nz

    and b
    ld b, h
    ld h, [hl]
    rst RST_20
    db $fc
    cp $fc

jr_031_4323:
    cp $7f
    cpl
    ld d, a
    dec bc
    ld c, [hl]
    ld c, [hl]
    ld b, [hl]
    ld h, b
    jr nz, @+$32

    jr @+$0a

    sbc b
    sbc h
    call z, $eecc
    and $e7

jr_031_4337:
    ld d, $f3
    ld [bc], a
    ei
    db $db
    ld e, l
    ld l, l
    inc h
    ld [hl], $27
    rlca
    add a
    add e
    pop bc
    ldh [$ffe0], a
    ld h, b
    call nz, $f2e6
    ei
    ld a, l
    db $fc
    ld a, [hl]
    cp $ff
    ld a, a
    ccf
    rra
    adc a
    rst RST_00
    pop hl
    ld [hl], b
    di
    di

jr_031_435a:
    pop af
    ld sp, hl
    ld sp, hl
    ld hl, sp-$04
    db $fc
    ld [hl-], a
    sbc e
    adc l
    call $c6c6
    db $e3
    ld h, c
    ld [hl], b
    jr c, jr_031_4323

    sbc h
    adc $ee
    ld h, a
    rst RST_30
    ld a, a
    ccf
    rra
    rrca
    rlca
    dec bc
    dec b
    ld [bc], a
    jr c, @-$40

    sbc a
    rst RST_08
    jp $f1e3


    ld hl, sp+$16
    ld a, $07
    ld d, $00
    rra
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    ld d, $ff
    rlca
    ld d, $00
    ld c, $f8
    ld d, $00
    inc bc
    ld bc, $0703
    rra
    inc bc
    rrca
    rra
    ld a, a
    rst RST_38
    ld d, $fe
    ld [bc], a
    ld d, $fc
    inc bc
    ld a, [hl]
    ld a, [hl]
    ld l, d
    jr nc, jr_031_43ac

jr_031_43ac:
    nop
    ld h, b
    ld [hl], b
    ld a, c
    ld a, b
    ld a, b
    jr c, jr_031_43ca

    ld a, $02
    ld d, $3c
    inc b
    ccf
    ccf
    ld d, $7f
    ld [bc], a
    ld a, [hl]
    ld a, a
    rst RST_38
    cp $88
    ret nz

    ldh a, [$fff4]
    add sp, $61
    add c
    add hl, bc

jr_031_43ca:
    rra
    ccf
    ccf
    ld a, a
    ld d, $ff
    ld [bc], a
    nop
    sbc h
    and $ff
    rst RST_38
    cp $fc
    jr nz, jr_031_435a

    nop
    nop
    db $10
    ld d, b
    ld d, $68
    ld [bc], a
    ld d, $ff
    ld [bc], a
    ld d, $7f
    inc b
    pop bc
    add d
    push hl
    db $e3
    sbc c
    rst RST_30
    rst RST_30
    rst RST_38
    rst RST_38
    cp $fe
    db $fc
    db $fc
    ldh [$fff0], a
    db $fc
    sub b
    jp $cf87


    cp a
    sbc h
    ld b, e
    and b
    add sp, $48
    ret c

    ret nc

    jr nc, @-$1e

    add b
    ld d, $00
    db $10
    ccf
    ld d, $1f
    ld [bc], a
    rrca
    dec b
    ld [bc], a

jr_031_4410:
    ld bc, $ff16
    inc b
    cp a
    rst RST_18
    cp a
    cp $fe
    ld d, $ff
    dec b
    ret nz

    add b
    jr nz, jr_031_4410

    ld hl, sp+$16
    db $fc
    ld [bc], a
    ld d, $00
    rlca
    rra
    rrca
    rrca
    rlca
    inc bc
    inc bc
    ld bc, $df01
    xor a
    ld d, a
    adc a
    ld b, a
    jp Jump_031_41a5


    ld d, $ff
    ld [bc], a
    cp $ff
    ld a, [$00c4]
    ld d, $fe
    dec b
    ld a, h
    ld e, h
    ld d, $00
    rlca
    xor b
    ld d, h
    xor d
    ld d, h
    xor b
    ld d, h
    xor b
    ld d, h
    nop
    rlca
    rra
    ld a, a
    rst RST_38
    db $fd
    ldh [rP1], a
    nop
    ld d, $ff
    inc b
    ld d, $00
    ld [bc], a
    and b
    cp b
    cp h
    cp $ff
    rst RST_38
    rlca
    ld a, [hl+]
    ld d, l
    xor d
    ld d, l
    ld a, [hl+]
    dec d
    ld a, [hl+]
    ld bc, $fefc
    cp $fc
    db $fc
    ld d, $f8
    ld [bc], a
    rrca
    ccf
    ld d, $7f
    ld [bc], a
    ld d, $ff
    ld [bc], a
    ret nc

    ld [$16fd], a
    rst RST_38
    inc b
    sbc a
    and a
    ld c, e
    and l
    jp nc, $d1a3

    jp hl


    inc a
    ld a, $03
    nop
    inc c
    ld h, a
    ld [hl], e
    nop
    rrca
    rra
    jr nc, jr_031_4497

jr_031_4497:
    inc c
    ld hl, sp-$0d
    nop
    ld d, $f1
    ld [bc], a
    pop hl
    db $e3
    jp $8fc7


    ld d, $ff
    rlca
    db $fd
    db $fd
    db $fc
    db $fc
    ld d, $f9
    inc bc
    ldh a, [rNR41]
    ld [hl], b
    ld d, $f0
    ld [bc], a
    ldh [$ffe0], a
    inc a
    ld d, $ff
    ld b, $04
    ld d, $ff
    ld b, $00
    jr jr_031_44d8

    inc a
    ld d, $3e
    ld b, $3c
    jr c, @+$32

    jr nz, jr_031_44c9

jr_031_44c9:
    rra
    rra
    ccf
    ccf
    ld a, a
    ld d, $ff
    ld a, [bc]
    pop af
    pop af
    db $e3
    rst RST_20
    rst RST_00
    rst RST_08
    rst RST_18

jr_031_44d8:
    sbc a
    ldh [$ffc0], a
    jp nz, $86c6

    add [hl]
    ld b, $0e
    ld bc, $0703
    rrca
    ccf
    ccf
    ld a, a
    ld d, $ff
    ld a, [bc]
    cp $fe
    db $fc
    ld hl, sp-$07
    pop af
    cp a
    ld a, $7e
    ld a, h
    db $fc
    ld hl, sp-$08
    ldh a, [$ff0e]
    ld e, $1e
    ld d, $3e
    inc b
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld b, b
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    dec b
    ld d, $00
    ld b, $1f
    ld d, $00
    rlca
    ld d, $3e
    ld [bc], a
    inc a
    jr c, @+$3a

    jr nc, @+$32

    nop
    nop
    ld b, $0e
    sbc [hl]
    ld e, $9e
    sbc h
    ld d, $7f
    inc bc
    cp $fe
    ld d, [hl]
    inc c
    ret nz

    ldh a, [$fff8]
    cp $fe
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, $3e
    ld e, $0e
    ld b, $02
    ld [bc], a
    nop
    jr nc, jr_031_455f

    ld d, $00
    ld b, $39
    ld h, a
    rst RST_38
    rst RST_38
    ld a, a
    ccf
    inc b
    sub b
    ld hl, sp-$04
    db $fc
    cp $16
    rst RST_38
    ld [bc], a
    ld a, a
    ld de, $0f03
    cpl
    rla
    add [hl]
    add c
    ret nz

    ldh a, [$fff8]
    db $fc
    cp $7e

jr_031_455f:
    db $fc
    db $fc
    dec de
    dec e
    dec c
    dec c
    inc c
    rlca
    ld bc, $0c00
    pop bc
    ld h, c
    di
    db $fd
    ld a, c
    ret nz

    nop
    rst RST_38
    ld a, a
    ld a, a
    ccf
    ccf
    rlca
    rrca
    ccf
    add e
    ld b, c
    and a
    rst RST_00
    sbc c
    rst RST_28
    rst RST_28
    rst RST_38
    db $fc
    db $fc
    rst RST_38
    cp $fe
    ld d, $fc
    ld [bc], a
    ld d, $00
    ld [$3c18], sp
    ld d, $3e
    inc b
    nop
    ld bc, $0f05
    ld d, $1f
    ld [bc], a
    ccf
    ld a, a
    ld a, a
    ld d, $ff
    ld a, [bc]
    db $fd
    ei
    db $fd
    db $fc
    ld d, $f8
    ld [bc], a
    ldh a, [$ffa0]
    ld b, b
    add b
    ld d, $3c
    rlca
    ccf
    ld d, $7f
    inc b
    ld a, $3a
    ld d, $ff
    ld [bc], a
    ld a, a
    rst RST_38
    ld e, a
    inc hl
    nop
    ld a, [$eaf5]
    pop af
    ldh [c], a
    ret nz

    and h
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld b, $0e
    ld e, $1e
    ld a, $3c
    inc a
    ld d, $3e
    ld [bc], a
    inc a
    inc a
    nop
    nop
    rlca
    rra
    ccf
    ld a, a
    rst RST_38
    rst RST_38
    ldh [rP1], a
    ld a, a
    ld a, a
    rst RST_38
    rst RST_38
    ld a, a
    add b
    nop
    nop
    ldh [$fff8], a
    cp $ff
    cp a
    rlca
    nop
    ld d, $3e
    inc b
    ld d, $be
    ld [bc], a
    ld sp, hl
    push hl
    jp nc, Jump_031_4ba5

    push bc
    adc e
    sub a
    dec bc
    ld d, a
    cp a
    ld d, $ff
    inc b
    ldh a, [$fffc]
    ld d, $fe
    ld [bc], a
    ld d, $ff
    ld [bc], a
    cp [hl]
    ld d, $3e
    inc bc
    ld d, $1e
    ld [bc], a
    dec bc
    inc b
    ld c, $16
    rrca
    ld [bc], a
    rlca
    rlca
    rst RST_38
    cp a
    ld a, a
    ccf
    ld e, a
    cp a
    sbc a
    sbc a
    ld d, $ff
    rlca
    adc [hl]
    adc [hl]
    add [hl]
    add b
    ret nz

    ret nz

    ldh [$fff0], a
    add a
    add e
    jp $e1c3


    pop hl
    ldh [$fff0], a
    adc a
    adc a
    rst RST_00
    rst RST_20
    db $e3
    di
    ei
    ld sp, hl
    ld d, $ff
    rlca
    ld hl, sp-$08
    db $fc
    db $fc
    cp $16
    rst RST_38
    inc bc
    ld a, a
    ccf
    rra
    rrca
    rlca
    ld bc, $1680
    ldh a, [rSC]
    ld d, $f8
    ld [bc], a
    db $fc
    db $fc
    db $fd
    ld a, h
    ld a, [hl]
    ld a, $3f
    ccf
    rra
    rra
    rst RST_38
    rst RST_38
    ld a, a
    ld a, a
    ccf
    rra
    sbc a
    adc a
    ld d, $ff
    rlca
    ret nz

    ret nz

    ldh [$fff0], a
    db $fc
    db $fc
    cp $ff
    rst RST_38
    dec e
    nop
    ld e, b
    rst RST_38
    rst RST_38
    nop
    rst RST_18
    nop
    rst RST_38
    nop
    cp e

jr_031_4679:
    nop
    rst RST_18
    xor $00
    ld d, l
    nop
    xor d
    add hl, bc
    nop
    rst RST_38
    nop
    db $fd
    rst RST_28
    inc bc
    nop
    sbc e
    jr nz, jr_031_4679

    jr nz, @+$57

    inc b
    xor a
    xor d
    ld b, $55
    inc b
    nop
    ld [$0c08], sp
    rlca
    cp e
    rst RST_00
    nop
    ld [$1a04], a
    nop
    add hl, bc
    nop
    ccf

jr_031_46a2:
    ld bc, $2020
    rlc b
    inc b
    ccf
    ld [bc], a
    ld b, b
    ccf
    ld [bc], a
    ld c, [hl]
    rlca
    ld bc, $2e07
    ld c, [hl]
    ld b, $07
    nop
    ld a, a
    inc bc
    nop
    rst RST_38
    ld c, [hl]
    ld b, $6c
    ld bc, $6cde
    add hl, bc
    jr nz, jr_031_46a2

    ld hl, sp+$07
    ld l, h
    add hl, bc
    ld e, b
    and b
    cp a
    halt
    ld hl, sp+$1f
    cp $f4
    rrca
    ld c, [hl]
    add hl, bc
    add b
    rst RST_38
    nop
    ld h, b
    add b
    rlca
    nop
    rlca
    ld [$f707], sp
    ld [$100f], sp
    or [hl]
    ld bc, $001f
    rra
    nop
    rst RST_38
    di
    rrca
    ei
    rlca
    ei
    rlca
    db $fd
    inc bc
    cp $c6
    ld bc, $01fe
    rst RST_38
    nop
    ret nz

    ldh [$fff0], a
    sbc a
    ldh [$ffe0], a
    ldh a, [$fff8]
    ldh a, [$ffd5]
    nop
    reti


    nop
    ld [hl], b
    rst RST_10
    ld hl, sp+$3f
    nop
    ldh [rSB], a
    ld a, a
    push hl
    ld b, $fa
    db $fc
    ld [hl], e
    cp $fc
    pop af
    nop
    push af
    ld b, $88
    nop
    ld [hl+], a
    ccf
    nop
    ld h, l
    adc b
    ccf
    nop
    ld [bc], a
    ccf
    ld [bc], a
    nop
    ld [de], a
    db $10
    sub b
    ccf
    nop
    call nz, $0347
    nop
    ld [de], a
    inc b
    ld d, $13
    ld b, h
    nop
    rrca
    inc bc
    ld b, b
    cp e
    add a
    nop
    db $ec
    ld [bc], a
    ld a, [bc]
    inc bc
    ld c, [hl]
    ld [$130a], sp
    ld d, [hl]
    dec b
    nop
    rst RST_38
    ld bc, $0302
    nop
    inc bc
    inc b
    rla
    ld [$2fbf], sp
    db $10
    rra
    ld h, b
    ld a, a
    add b
    ld a, b
    dec b
    ld sp, hl
    rst RST_20
    rlca
    db $fc
    inc bc
    ld a, b
    dec b
    ld l, h
    ld bc, $e018
    db $f4
    rst RST_38
    ld hl, sp+$7a
    db $fc
    cp l
    ld a, [hl]
    rst RST_18
    ld a, $ee
    rst RST_28
    rra
    db $ed
    rra
    rst RST_30
    sbc a
    ld b, $80
    nop
    ld b, b
    sbc a
    add b
    add b
    ret nz

    ldh [$ffc0], a
    ld [hl], h
    add hl, de
    ld l, h
    ld bc, $d91e
    ld hl, $03e0
    or d
    dec d
    cp $01
    ret nz

    dec de
    db $fc
    ld hl, sp-$11
    ld hl, sp-$04
    ld hl, sp-$04
    db $d3
    db $10
    ld hl, sp-$10
    db $fc
    cp a
    db $ec
    ldh a, [$fff4]
    ld hl, sp+$3f
    ld b, b

jr_031_479c:
    and $01
    ccf
    cp l
    ld b, b
    and $13
    ld a, a
    nop
    ld a, h
    cp $f0
    inc de
    ld a, b
    rlca
    cp $7a
    db $fc
    db $f4
    inc de
    ld hl, sp+$11
    ld a, [$fc13]
    dec d
    db $10
    inc hl
    db $fd
    ld hl, sp+$17
    ld hl, $7f7e
    nop

jr_031_47bf:
    ld l, e
    inc d
    ld sp, $4eff
    inc de
    ld l, h
    inc de
    ld h, h
    dec h
    ld a, [de]
    ld [bc], a
    ld b, a
    ld a, l
    nop
    dec de
    ldh [rNR13], a
    db $e4
    db $10
    or e
    inc de
    ld b, b
    ld l, h
    ld bc, $c0ff
    jr nz, jr_031_479c

    jr nz, jr_031_47bf

    ld b, $c3
    inc h
    rst RST_30
    jp $e724


    ld l, e
    ld [bc], a
    ccf
    ld b, b
    rra
    jr nz, @-$07

    rrca
    db $10
    adc a
    ld e, c
    jr nz, jr_031_4801

    db $10
    rst RST_38
    nop
    rst RST_38
    db $eb
    inc d
    add b
    ld b, b
    ret nz

    nop
    ldh a, [$ff03]
    di
    pop af
    ld [bc], a

jr_031_4801:
    ld l, d
    ld hl, $016c
    ld a, h
    add b
    ld a, h
    add b
    di
    db $fc
    nop
    ld a, b
    inc hl
    ld l, h
    ld bc, $0403
    ld bc, $ff02
    ld de, $78e0
    add c
    ld a, b
    add c
    ld [hl], b
    add c
    cp $74
    rla
    db $fc
    nop
    ei
    inc bc
    ld sp, hl
    ld [bc], a
    cp $ff
    nop
    ld hl, sp+$00
    ldh a, [rSC]
    and $04

jr_031_482f:
    call z, Call_000_09ff
    ld b, l
    add hl, bc
    ld [$8991], sp
    ld [hl+], a
    rra
    rst RST_18
    jr nz, jr_031_489b

    ld h, b
    rst RST_38
    add b
    ld h, [hl]
    inc de

jr_031_4841:
    rst RST_00
    nop
    ei
    sub e
    jr @+$76

    add hl, de
    rst RST_08
    nop
    add e
    inc d
    ccf
    ei
    ld b, b
    ld a, $e1
    inc d
    ld a, a
    nop
    ld a, [hl]

jr_031_4855:
    nop
    ld a, h
    rst RST_38
    nop
    adc a
    nop
    rst RST_00
    jr nz, jr_031_4841

    inc d

jr_031_485f:
    rst RST_30
    rst RST_38
    inc b
    rst RST_20
    ld [$08ef], sp
    ld b, $08
    add [hl]
    rst RST_38
    ret nz

    jp $9704


    jr jr_031_482f

    jr nz, jr_031_4891

    add hl, de
    jr nz, jr_031_4855

    db $10
    rst RST_20
    db $10
    ld h, h
    add c
    ldh a, [$ff15]
    db $f4
    inc de
    nop
    add hl, sp
    rst RST_38
    inc d
    cp $02
    db $fc
    sbc $20
    rst RST_38
    nop
    rst RST_38
    db $db
    inc h
    cp $01
    ld l, e
    sub h
    adc b

jr_031_4891:
    ld [hl], e
    rst RST_38
    ld [bc], a
    db $dd
    ld [$00f7], sp
    ld l, c
    db $fd
    ld [bc], a

jr_031_489b:
    db $fd
    or a
    ccf
    jr nz, @-$69

    ld c, d
    ld e, b
    and [hl]
    ld c, c
    or [hl]
    rst RST_38
    nop
    db $dd
    nop
    ret z

    ret nz

    jr nz, @-$1e

    nop
    add a
    ldh [c], a
    inc b
    db $e3
    ld b, l
    ld [hl-], a
    ld l, h
    ld bc, $21f6
    ld d, [hl]
    ld hl, $e784
    ld [$08c4], sp
    ld l, h
    ld bc, $236a
    sub c
    ld h, d
    nop
    di
    ret nz

    ld b, b
    ld h, a
    ld [de], a
    ld a, b
    dec h
    ld b, h
    adc b
    ld b, h
    adc b
    adc h
    ld l, h
    ld bc, $105a
    inc b
    ld a, a
    or l
    jr nz, jr_031_485f

    ld sp, $2396
    cp $7e
    ld a, c
    jr nz, @-$05

    ld bc, $0273
    adc e
    inc c
    ld l, h
    ld bc, $6bff
    ld b, d
    ld [hl], e
    ld [bc], a
    ld bc, $b392
    ld a, b
    rst RST_30
    ei
    nop
    ei
    ld l, e
    ld [bc], a
    xor c
    ld [hl-], a
    dec d
    ld h, $ff
    ld [hl], e
    ld c, h
    ccf
    ld b, b
    jr nc, jr_031_4908

    add l
    dec bc
    rst RST_38

jr_031_4907:
    rst RST_08

jr_031_4908:
    jr nc, @+$01

    nop
    or a
    inc h
    inc bc
    inc h
    rst RST_38
    cpl
    ld c, b
    rra
    db $10
    dec bc
    sub d
    rst RST_00
    inc b
    db $fd
    rst RST_20
    cp a
    jr nz, jr_031_4959

    ld b, b
    ld a, [hl]
    nop
    ld a, [hl]
    ld bc, $3fff
    ld b, b
    ld l, $40
    ld sp, $3941
    ld b, [hl]
    rst RST_38
    ld a, a
    nop
    xor d
    jr jr_031_496d

    inc h
    dec b
    add hl, bc
    cp a
    ld bc, $e961
    sbc l
    db $fd
    ld bc, $1172
    ret z

    rst RST_38
    adc c
    reti


    sub d
    add hl, de
    and d
    or e
    inc h
    sub d
    ld e, a
    nop
    pop bc
    add hl, bc
    ret z

    scf
    and b
    dec e
    add c
    ld l, a
    jr nz, jr_031_49b2

    db $fc
    ld bc, $01f8
    ld sp, hl
    ld l, e

jr_031_4959:
    jr nz, @-$07

jr_031_495b:
    ld b, l
    jr nc, jr_031_495b

    rst RST_28
    ld e, e
    ld [hl-], a
    rst RST_38
    nop
    cp a
    nop
    cp a
    jr nz, jr_031_4907

    sbc a
    ld h, b
    ld a, a
    nop
    add hl, bc

jr_031_496d:
    ccf
    ld [hl+], a
    ld [hl], h
    rla
    push bc
    rst RST_38
    nop
    add d
    nop
    add c
    ld c, b
    ld h, l
    inc h
    ld [hl], $ff
    ld [de], a
    jr nz, jr_031_4991

    ld a, [de]
    ld bc, $0b96
    ld e, [hl]
    rst RST_38
    ld c, e
    stop
    ld h, h
    ld b, b
    jp nz, $c590

    rst RST_38
    xor d
    ld d, $a5

jr_031_4991:
    xor e
    inc sp
    add d
    dec hl
    inc b
    rst RST_38
    and a
    ld [bc], a
    ld [bc], a
    ld b, c
    ld c, e
    inc h
    ld [hl], l
    ld [hl], c
    rst RST_38
    xor d
    ld a, [bc]
    xor h
    dec de
    ld c, l
    ld [hl], d
    xor e
    ld b, c
    rst RST_38

jr_031_49a9:
    xor d
    jr nz, jr_031_49f4

    ld d, b
    ld [de], a
    and l
    or l
    ret c

    rst RST_38

jr_031_49b2:
    xor l
    ld d, [hl]
    add sp, -$80
    ld l, l
    ret z

    ld [hl-], a
    ld b, h
    dec l
    sub d
    nop

jr_031_49bd:
    nop
    jr nz, jr_031_49bd

    ld l, a
    jr nz, jr_031_49b2

    ld e, a
    jr nz, jr_031_4a2c

    inc de
    cp l
    ei
    ld c, e
    ld [hl-], a
    rst RST_38
    nop
    cp [hl]
    ld b, c
    ld a, b
    dec b
    rst RST_18

jr_031_49d2:
    ld a, h
    rra
    jr nc, jr_031_4a4e

    inc bc
    ei
    inc b

jr_031_49d9:
    db $fd
    ld bc, $9dfe
    ld sp, $945f
    adc b
    ld [hl], a
    ld [bc], a
    db $fd
    inc l
    ld sp, $b1bf
    jr nz, jr_031_49a9

    cp a
    ld b, b
    or l
    ld c, d
    ld e, b
    and a
    ld a, [hl-]
    inc sp
    nop
    ld a, a

jr_031_49f4:
    add c
    nop
    ld b, d
    nop
    inc h
    nop
    jr jr_031_49d2

    ld b, b
    push hl
    inc h
    jp nc, $8140

    ret nc

    ld c, a
    ldh [c], a
    ld c, e
    sub e
    inc [hl]
    sub [hl]
    rst RST_38
    inc h
    ld [hl+], a
    ld c, h
    ld l, h
    ld c, b
    and h
    ret


    halt
    rst RST_38
    add b
    ld sp, hl
    ld b, $ff
    nop
    ld b, $08
    ld c, $ff
    ld d, b
    call c, $5d91
    sub c
    adc b
    nop
    inc c
    rst RST_38
    ld h, b
    dec h
    db $db
    rst RST_38
    nop
    ld b, h
    and h

jr_031_4a2c:
    push hl
    rst RST_38
    adc c
    ret c

    ld de, $124b
    jr c, @+$22

    sbc h
    rst RST_38
    and b
    ld a, $c0
    db $fc
    nop
    sub e
    ld a, [de]
    xor e
    rst RST_28
    jr nc, jr_031_49d9

    inc h
    ld b, c
    sla b
    cpl
    nop
    rra
    rst RST_38
    ld d, b
    rst RST_18
    add b
    inc h

jr_031_4a4e:
    ld c, e
    inc hl
    inc h
    dec b
    rst RST_38
    xor b
    call $9055
    ld b, l
    pop hl
    xor d
    ei
    rst RST_38
    xor d
    ld d, l
    xor d
    ld a, b
    and h
    ld hl, sp+$2e
    ld h, b
    rst RST_38
    cp c
    call nz, $ac36
    ld c, c
    ret c

    or d
    ld a, [$a4ff]
    ld a, b
    add l
    dec h
    db $ed
    sbc d
    ld h, $36
    rst RST_38
    sbc e
    xor $6a
    ret nz

    ld e, e
    add hl, sp
    bit 1, l
    rst RST_38
    sub a
    ld c, b
    sub l
    nop
    ld [$a9ac], a
    ld c, c
    rst RST_38
    ld e, l
    sbc c
    rst RST_20
    ld l, [hl]
    adc l
    db $dd
    jr jr_031_4a4e

    rlca
    db $10
    dec hl
    sub h
    rst RST_38
    ld de, $0d00
    ld h, e
    dec c
    rst RST_38
    inc bc
    ldh a, [$ffcf]
    or h
    ld h, e
    rst RST_38
    rst RST_38
    ldh a, [$ff0c]
    jp nc, $f82b

    add a
    rst RST_38
    call nz, $b53f
    ld e, l
    call z, Call_031_51d5
    rst RST_38
    inc bc
    cp h
    ld a, a
    ld d, a
    inc d
    ld d, h
    ld b, l
    rst RST_38
    rst RST_38
    rrca
    pop af
    ld e, d
    ld [hl], b
    sbc h
    add e
    dec c
    rst RST_38
    inc bc
    ccf
    rst RST_08
    jp $fe85


    cp $fd
    db $fd
    ei
    ld a, [$fbf9]
    sub $79
    ld h, $48
    sub $a6
    dec l
    adc e
    ld c, a
    cpl
    inc de
    dec l
    sbc e
    rst RST_30
    db $ec
    cp $95
    call c, $f7ed
    ld hl, sp-$05
    db $fc
    db $d3
    ld b, c
    ld d, a
    cp $65
    sbc b
    ld h, a
    rlca

jr_031_4aef:
    cp a
    ld l, h
    ld a, c
    ld h, [hl]
    rst RST_18
    ccf
    rst RST_30
    rst RST_08
    sbc a
    ld d, b
    or d
    ld e, b
    dec l
    or b
    add [hl]
    ret z

    adc d
    rst RST_38
    rst RST_38
    ld a, a
    ld a, a
    ccf
    cp a
    ccf
    cp a
    ld a, [$fcfd]
    cp $ff
    cp $fe
    rst RST_38
    dec de
    add hl, hl
    sbc [hl]
    cp b
    ld h, [hl]
    ld e, [hl]
    jr c, jr_031_4b4c

    rst RST_38
    add e
    inc hl
    call c, Call_000_273f
    ld b, d
    db $e4
    xor a
    cp $f1
    ld a, a
    rrca
    ret nz

    ld l, [hl]
    cpl
    cp $00
    db $e3
    ei
    rst RST_30
    rlca
    ld a, [hl]
    ld [hl], c
    ld a, h
    ret nz

    ei
    db $fd
    db $fc
    add sp, $47
    db $10
    jr z, jr_031_4b95

    dec hl
    and [hl]
    di
    sub a
    jp Jump_000_3fc7


    ld a, a
    dec c
    rst RST_38
    dec b
    dec c
    cp $02
    ldh [$ffc1], a
    sub b
    xor b

jr_031_4b4c:
    nop
    ld l, $56
    ld a, [hl]
    dec l
    ld a, [hl+]
    or h
    ld a, $38
    add [hl]
    nop
    nop
    inc e
    nop
    add b
    ld l, c
    add b
    sub a
    adc b
    ld h, $19
    ld a, [bc]
    rr e
    scf
    jr nc, jr_031_4aef

    sub $20
    and b
    sub b
    jp nc, Jump_031_40c9

    add d
    ld bc, $8138
    nop
    ld d, e
    ld [bc], a
    ld [hl], c
    xor d
    add sp, $74
    inc [hl]
    ld hl, sp-$47
    ld e, c
    dec c
    rst RST_38
    ld [bc], a
    rra
    rrca
    daa
    ld d, a
    inc hl
    rst RST_38
    dec c
    cp $04
    rst RST_38
    rst RST_38
    ld b, b
    sub h
    ld [$42c1], sp
    ld d, d
    inc hl
    add hl, bc
    inc sp
    rla

jr_031_4b95:
    sub a
    sub e
    xor b
    sub e
    xor b
    ld h, $81
    sbc $ff
    sbc $bd
    ld a, [hl-]
    cp c
    ld d, l
    and a
    ld b, a

Jump_031_4ba5:
    ld h, e
    db $db
    xor e
    ld a, e
    ld [hl], a
    inc bc
    ld [$eee9], a
    rst RST_08
    pop de
    adc $ee

jr_031_4bb2:
    ret nz

    add d
    inc bc
    cp l
    cp $7e
    cp h
    sbc h
    ld c, l

jr_031_4bbb:
    jp hl


    ld l, c
    xor b
    reti


    ld d, d
    db $e4
    add l
    inc sp
    dec hl
    ld bc, $0189
    ld bc, $0381
    inc bc
    dec b
    add b
    add b
    call z, $ece8
    rst RST_30
    ld hl, sp+$09
    sub l
    sub l
    sbc [hl]
    xor [hl]
    cp [hl]
    ccf
    ccf
    ld e, [hl]
    dec l
    dec hl
    or a
    cp $6d
    ld l, h
    ld c, h
    jr nc, @-$72

    jp $c478


    cp c
    ld a, h
    ld [hl], b
    rra
    ld sp, $1bc6
    jr nz, jr_031_4bb2

    ld bc, $6d04
    ld l, h
    or [hl]
    ld d, e
    ldh [c], a
    ld hl, sp-$10
    ld [hl], b
    ld e, d
    xor d
    ld l, b
    ld c, e
    jr jr_031_4bbb

    jp hl


    adc b
    inc bc
    rlca
    daa
    cpl
    sbc a
    ld e, a
    cp a
    ld a, a
    ld l, $2e
    ld d, $16
    dec bc
    dec hl
    dec h
    ld [hl-], a
    ld c, l
    and a
    and d
    inc sp
    ld e, b
    xor e
    db $db
    rst RST_20
    adc a
    ld l, a
    rst RST_38
    nop
    ld h, b
    inc hl
    xor h
    ld d, a
    rra
    ld hl, sp-$04
    nop
    nop
    inc e
    ld d, d
    cp l
    ld [hl], h
    dec h
    adc l
    nop
    jp nz, $8b85

    sub d
    add e
    inc bc
    inc bc
    dec c
    rlca
    ld [bc], a
    inc bc
    inc hl
    rst RST_38
    rst RST_38
    dec c
    cp $03
    db $fc
    ld hl, sp+$29
    inc h
    ld [hl-], a
    ld de, $1068
    inc l
    ld b, d
    adc c
    call nz, $0133
    ldh [rNR23], a
    inc b
    rlca
    ld l, a
    rra
    ccf
    rra
    jp Jump_000_073c


    add b
    sbc [hl]
    rst RST_18
    rst RST_38
    cp $f0
    rrca
    ld hl, sp+$00
    inc d
    ld hl, $6c62
    or e
    inc c
    ld [de], a
    ld sp, hl
    ld b, e
    inc de
    ld [hl], c
    and c
    ld c, b
    sub b
    jr z, jr_031_4ccf

    dec c
    rst RST_38
    dec b
    ld a, a
    ccf
    dec c
    rst RST_38
    dec b
    ld hl, sp-$40
    dec c
    rst RST_38
    ld [bc], a
    db $fc
    ldh [$ff0d], a
    nop
    ld [bc], a
    pop af
    pop bc
    add c
    dec c
    nop
    inc b
    add hl, hl
    ld l, $af
    sub a
    sub a
    rst RST_10
    ld c, e
    ld b, l
    add b
    cp $c8
    ldh a, [c]
    db $fd
    cp $fe
    adc $00
    nop
    ld b, [hl]
    daa
    ld de, $7868
    dec c
    nop
    ld [bc], a
    ld h, [hl]
    add sp, -$6e
    ld l, $3e
    nop
    dec b
    cp $27
    ld e, a
    cp a
    ld a, a
    rst RST_38
    di
    ld e, l
    db $dd
    jp hl


    jp hl


    db $d3
    jp nc, $86e2

    rra
    rrca
    inc bc
    dec c
    nop
    inc b
    dec c
    rst RST_38
    inc bc
    rrca
    ld bc, $0000
    dec c
    rst RST_38
    dec b
    rra
    inc bc
    cp $f0
    add b

jr_031_4ccf:
    dec c
    nop
    inc b
    ld h, d
    jr nz, jr_031_4cf5

    jr nc, @+$12

    ld e, $08
    dec bc
    ld c, e
    add l
    inc bc
    dec c

jr_031_4cde:
    nop
    inc bc
    add b
    ld [de], a
    ld [$3c82], a
    rrca
    jr @+$12

    db $10
    ld e, a
    ld b, b
    ld b, e
    jr jr_031_4cde

    dec c
    ld [$ed02], sp
    or e
    ret nz

    dec c

jr_031_4cf5:
    nop
    ld [bc], a
    ld bc, $0401
    inc b
    inc c
    ld [$f808], sp
    add b
    ld h, b
    ld a, a
    rrca
    dec c
    nop
    dec b
    dec bc
    ld b, $04
    ld [bc], a
    ld [bc], a
    dec c
    ld bc, $8002
    nop
    nop
    ld [bc], a
    dec bc
    cpl
    rst RST_18
    cp a
    jr jr_031_4d3f

jr_031_4d18:
    cp b
    nop
    ccf
    dec c
    ld a, a
    ld [bc], a
    jr jr_031_4d18

    inc e
    ld b, $fb
    dec c
    ld a, [$0102]
    ld bc, $0000
    inc bc
    add l
    dec hl
    ld d, a
    ld [hl], b
    ld d, b
    ldh [$ffa0], a
    ret nz

    ld b, b
    nop
    add b
    dec c
    cp a
    ld [bc], a
    ld e, a
    ld e, a
    cpl
    cpl
    rra
    ld a, a

jr_031_4d3f:
    ld e, a
    ccf
    ccf
    rra
    dec c
    sbc a
    ld [bc], a
    dec c
    db $f4
    ld [bc], a
    dec c
    ld hl, sp+$02
    ld sp, hl
    ld sp, hl
    ld a, [hl]
    ld a, [hl]
    ld a, a
    db $fc
    ld a, [$fcf8]
    ldh a, [rNR22]
    rla
    rrca
    dec bc
    rlca
    rlca
    ld bc, $9f03
    sbc a
    dec c
    cp a
    inc bc
    xor a
    or a
    dec c
    ei
    ld [bc], a
    dec c
    ld sp, hl
    inc bc
    ei
    ld hl, sp-$08
    ldh [$fff0], a
    ret nc

    ldh [$ffa0], a
    ret nz

    ld [bc], a
    ld bc, $0d01
    nop
    inc b
    rst RST_18
    rst RST_18
    ld e, a
    rst RST_18
    sbc a
    ld e, a
    ld c, a
    cpl
    ei
    ei
    xor $f6
    push af
    db $e4
    ldh [c], a
    ldh [rLCDC], a
    add b
    add b
    dec c
    nop
    inc b
    dec c
    rst RST_38
    inc bc
    ldh a, [$ffc0]
    adc e
    inc e
    rst RST_38
    rst RST_38
    ldh a, [$ff03]
    dec l
    call nc, RST_00
    rst RST_38
    ret nz

    nop
    ld c, d
    and d
    inc sp
    ld a, [hl+]
    ld l, $ff
    inc bc
    ld b, b
    add b
    xor b
    db $eb
    xor e
    cp d
    rst RST_38
    rst RST_38
    rrca
    ld bc, $8fa4
    inc bc
    nop
    dec c
    rst RST_38
    inc bc
    ccf
    rrca
    inc sp
    ld a, c
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$07
    ld a, [$28f8]
    add b
    pop bc
    add a
    add hl, bc
    add hl, de
    sub e
    scf
    ccf
    rst RST_18
    rst RST_28
    di
    rst RST_38
    rst RST_08
    di
    rst RST_38
    ld a, [bc]
    add e
    jp nz, $f0e0

    db $fc
    rst RST_38
    inc a
    cp [hl]
    xor b
    nop
    nop
    ld bc, $ff99
    ld a, a
    db $10
    ld a, [hl]
    ld a, a
    daa
    dec c
    rst RST_38
    inc bc
    inc l
    inc c
    add [hl]
    jp nz, $f1c7

    di
    pop af
    rst RST_38
    rst RST_38
    ld a, a
    ld a, a
    ccf
    ccf
    cp a
    ccf
    ld sp, hl
    ld a, [$fdfb]
    db $fc
    db $fd
    db $fd
    db $fc
    and a
    add a
    ld bc, $1f07
    ccf
    ld a, [hl]
    ld a, d
    rst RST_38
    rst RST_38
    call c, $ff3f
    rra
    ld bc, $df18
    rst RST_38
    rrca
    add b
    ldh a, [rIE]
    rst RST_18
    ld e, [hl]
    dec c
    rst RST_38

jr_031_4e1f:
    ld [bc], a
    rlca

jr_031_4e21:
    rrca
    rst RST_38
    rst RST_38
    cp $ff
    rst RST_38
    db $fc
    cp $ff
    ldh a, [$ff80]
    jr nz, jr_031_4e21

    ldh [$ffc1], a
    ld b, e
    rlca
    ld b, $07
    ld [bc], a
    cp a
    ccf
    dec c
    ld a, a
    inc b
    rst RST_38

jr_031_4e3b:
    db $fc
    cp $fe
    ldh [$ffde], a
    and e
    add c
    ld d, [hl]
    halt
    ld l, $0e
    ld e, $1c
    ld [$8780], sp
    ld bc, $0078
    ccf
    ld b, b
    jr nz, jr_031_4e3b

jr_031_4e52:
    inc de
    ld c, $66
    db $10

jr_031_4e56:
    ld [bc], a
    add a
    rlca
    add a
    rrca
    db $fc
    ld [hl], e
    jr nz, jr_031_4e1f

    ret nz

    ldh [$ffe0], a
    ldh a, [$ff80]
    inc a
    nop
    ld a, h
    nop
    ld [bc], a
    db $d3
    ld h, h
    ld [bc], a
    db $10
    db $10
    ld [$0309], sp
    ld b, d
    ldh [c], a
    dec c
    rst RST_38
    ld [bc], a
    rra
    rst RST_28
    sub a
    rlca
    set 7, a
    dec c
    cp $04
    rst RST_38
    rst RST_38
    ld d, $21
    ld h, e
    ld l, $a1
    and c
    ld d, b
    ld d, b
    adc a
    adc a
    rrca
    rrca
    rlca
    jr nz, jr_031_4ea0

    jr jr_031_4e52

    pop hl
    rst RST_38
    rst RST_38
    cp $fc
    ld a, h
    jr c, @+$51

    adc a
    adc a
    daa
    ld [hl], a
    rst RST_30
    rst RST_38

jr_031_4ea0:
    rst RST_38
    ldh a, [$fff2]
    di
    pop af
    xor $0d
    rst RST_38
    ld [bc], a
    ld bc, $7efc
    rst RST_38
    rst RST_38
    ld a, a
    ld a, a
    ld a, $f2
    ldh a, [c]
    ld [hl], e
    jr nz, jr_031_4e56

    inc bc
    ld [bc], a
    nop
    db $d3
    ld e, l
    dec d
    push de
    dec d
    dec [hl]
    dec hl
    ld l, e
    ld e, b
    xor [hl]
    or l
    db $d3
    rst RST_20
    db $e3
    ldh a, [$fff8]
    ld e, $0e
    ld c, $0f
    dec c
    rra
    inc bc
    jr nc, jr_031_4ee4

    rla
    rrca
    rrca
    sbc [hl]
    sbc a
    cp a
    rst RST_08
    inc bc
    nop
    add b
    jr c, jr_031_4f5c

    rst RST_38
    add b
    ldh [$ffc2], a
    nop
    inc b

jr_031_4ee4:
    rra
    ccf
    ld hl, sp+$02
    ld e, $1e
    ld c, h
    db $ec
    db $f4
    ldh a, [$fff8]
    ld hl, sp+$20
    ld [hl], b
    pop af
    ldh a, [$ffe3]
    ld b, c
    db $10
    ld [hl], b
    ld l, e
    rst RST_10
    sub a
    ld c, a
    ld e, a
    sbc a
    ccf
    ld a, a
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    ld bc, $1cbe
    inc e
    adc h
    add a
    rst RST_00
    rst RST_20
    rst RST_38
    dec b
    jr nc, @+$81

    rst RST_38
    add b
    ret nz

    jp $8a8f


    nop
    rst RST_38
    rst RST_38
    nop
    nop
    adc h
    sbc $38
    jr jr_031_4f23

jr_031_4f23:
    ld sp, hl
    add hl, sp
    ld [hl], e
    ld [hl], a
    ld l, a
    ld [hl], e
    di
    di
    rst RST_30
    rst RST_30
    rst RST_20
    db $e3
    jp $ffff


    dec c
    cp $03
    db $fc
    ld hl, sp+$10
    jr jr_031_4f46

    ld c, [hl]
    daa
    inc de
    inc c
    ccf
    ld [hl], a
    inc sp
    dec c
    nop
    ld [bc], a
    ldh [$fff8], a

jr_031_4f46:
    jr c, @-$5f

    dec c
    rst RST_38
    ld [bc], a
    ccf
    inc bc
    nop
    nop
    dec c
    rst RST_38
    inc b
    ldh a, [rP1]
    nop
    rst RST_28
    sbc $9c
    sub b
    nop
    inc bc
    inc c

jr_031_4f5c:
    nop
    add e
    inc bc
    ld bc, $9049
    jr nz, jr_031_4fa4

    add b
    dec c
    rst RST_38
    dec b
    ld a, a
    ccf
    dec c
    rst RST_38
    dec b
    ld hl, sp-$40
    dec c
    rst RST_38
    ld [bc], a
    db $fc
    ldh [$ff0d], a
    nop
    ld [bc], a
    ldh a, [$ffc0]
    add b
    dec c
    nop
    inc b
    dec c
    rra
    ld [bc], a
    dec c
    rrca
    ld [bc], a
    rlca
    inc bc
    ret nz

    rst RST_38
    ldh a, [$fffc]
    dec c
    cp $03
    nop
    add b
    ld h, b
    or b
    ret c

    ld hl, sp-$04
    ld c, $00
    ld bc, $0806
    ld d, $3e
    ld a, [hl]
    ld a, b
    inc bc
    rst RST_38
    rra
    ccf
    ld a, a
    rst RST_38
    ld a, a
    ld a, a

jr_031_4fa4:
    ldh [$ffe0], a
    ldh a, [$fff0]
    ldh [$ffe0], a
    ret nz

    ret nz

    rra
    rrca
    inc bc
    dec c
    nop
    inc b
    dec c
    rst RST_38
    inc bc
    rrca
    ld bc, $0000
    dec c
    rst RST_38
    dec b
    rra
    inc bc
    cp $f0
    add b
    dec c
    nop
    inc b
    ld bc, $000d
    inc b
    rlca
    rlca
    add a
    inc bc
    dec c
    nop
    dec b
    db $e4
    ldh a, [$ff7c]
    dec c
    nop
    inc b
    jr nz, jr_031_5016

    inc a
    dec c
    nop
    inc b
    ld [hl], e
    ret nz

    dec c
    nop
    dec b
    add b
    dec c
    nop
    inc b
    ld [hl], b
    ldh a, [$ff7f]
    rrca
    dec c
    nop
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $0d01
    nop
    dec b
    ld bc, $1f07
    ccf
    ld a, a
    nop
    nop
    rlca
    dec c
    cp a
    inc b
    nop
    nop
    ldh [$fff8], a
    db $fc
    dec c
    db $fd
    ld [bc], a
    nop
    nop
    dec c
    ld bc, $0302
    rst RST_00
    rst RST_28
    ldh [$ffe0], a
    ret nz

    ret nz

    dec c
    add b
    ld [bc], a
    nop

jr_031_5016:
    dec c
    ld a, a
    ld [bc], a
    ccf
    ccf
    rra
    rra
    rrca
    cp a
    cp a
    dec c
    rst RST_18
    dec b
    dec c
    ei
    ld [bc], a
    dec c
    rst RST_30
    inc b
    rst RST_38
    rst RST_38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    rrca
    rrca
    rlca
    rlca
    dec c
    inc bc
    ld [bc], a
    ld bc, $df0d
    ld b, $cf
    dec c
    rst RST_30
    rlca
    dec c
    ldh a, [rSC]
    ldh [$ffe0], a
    ret nz

    ret nz

    add b
    ld bc, $000d
    ld b, $0d
    rst RST_28
    ld [bc], a
    ld l, a
    ld l, a
    cpl
    cpl
    rrca
    dec c
    rst RST_30
    ld [bc], a
    rst RST_28
    xor $ee
    db $ec
    db $ec
    add b
    dec c
    nop
    ld b, $ff
    dec e
    nop
    ld e, l
    db $fd
    cp $00
    inc c
    ld b, b
    cp a
    ld e, a
    and b
    ld d, b
    xor a
    ld a, e
    ld d, a
    xor b
    ld d, $05
    nop
    rst RST_38
    rst RST_38
    nop
    jr nz, jr_031_507a

    rst RST_38

jr_031_507a:
    db $db
    inc a
    rst RST_38
    ld a, [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, [hl]
    ldh a, [c]
    jr nz, @+$06

    inc bc
    ld [hl], $05
    jr nz, jr_031_508e

    rra
    rst RST_38
    jr @+$01

jr_031_508e:
    ld e, a
    ld e, $ff

jr_031_5091:
    jr jr_031_5091

    rst RST_18
    jr nz, jr_031_509a

    ld [hl], $56
    nop
    sbc a

jr_031_509a:
    ld a, $ff
    ld a, a
    rst RST_38
    ld l, e
    jr nz, jr_031_50a5

    add hl, hl
    ld bc, $7c66

jr_031_50a5:
    ld l, d
    nop
    cpl
    dec b
    call z, $ecff
    rst RST_38
    db $fc
    ld a, d
    nop
    ld d, l
    db $dd
    jr nz, jr_031_50b8

    ld [hl], c
    add [hl]
    nop
    reti


jr_031_50b8:
    adc d
    nop
    db $fd
    jr nz, @+$06

    rst RST_38
    rst RST_20
    rst RST_38
    or $ff
    or a
    rst RST_38
    or [hl]
    rst RST_38
    db $fd
    rst RST_30
    jr nz, jr_031_50ce

    ret nz

    rst RST_38
    nop
    rst RST_38

jr_031_50ce:
    add b
    rst RST_38
    rst RST_38
    nop
    cp a
    ret nz

    ld bc, $f1fa
    ld a, [bc]
    ld de, $eaf7
    pop hl
    ld a, [bc]
    or [hl]
    dec b
    ld b, a
    xor b
    ld b, b
    and b
    ld a, a
    ld b, b
    cp a
    ld a, a
    add b
    ld c, b
    sub b
    ld c, l
    ret


    ld [bc], a
    ld [hl], a
    db $db
    inc a
    nop
    inc hl
    ld [bc], a
    nop
    nop
    add b
    reti


    ld [bc], a
    ld e, b
    ld a, $00
    db $d3
    inc b
    rst RST_20
    inc bc
    rst RST_38
    rst RST_18
    ldh [c], a
    inc c
    ld l, e
    ldh [c], a
    inc c
    ld d, h
    pop de
    ld b, $ea
    inc b
    call $0ce2
    adc l
    ldh [c], a
    inc c
    rst RST_20
    ldh [c], a
    inc c
    cp l
    ret nz

    ldh [c], a
    dec bc
    pop hl
    ld a, [bc]
    ld bc, $b00a
    nop
    ld [bc], a
    rrca
    add hl, hl
    ld [de], a
    adc c
    ld [hl-], a
    ld l, d
    ld de, $03ca
    ld [hl], b
    rla
    jp c, $f003

    add b
    rla
    ld l, d
    inc de
    sub b
    rla
    nop
    inc b
    ld a, [hl]
    cp $06
    cp $ff
    nop
    ld c, [hl]
    or b
    inc e
    ldh [c], a
    ldh [rNR34], a
    sub [hl]
    rst RST_38
    ld l, b
    inc e
    ldh [c], a
    ld [hl], b
    adc [hl]
    ld e, $e0
    ld [bc], a
    rst RST_38
    db $fc
    sub b
    ld l, [hl]
    inc b
    ld a, [$7c7f]
    ld a, h
    rst RST_38
    ld h, e
    ld [hl], l
    ld a, [bc]
    ld a, d
    dec b
    add hl, de
    ld h, [hl]
    ld h, d
    rst RST_38
    dec e
    jr nc, jr_031_51b0

    add hl, bc
    halt
    db $fc
    db $fc
    ei
    rst RST_38
    ld hl, sp-$10
    rst RST_30
    ldh [$ffef], a
    ret nz

    rst RST_18
    cp a
    rst RST_38
    add b
    and b
    sbc a
    xor a
    sub b
    ld c, a
    sub b
    ld l, c
    jp Jump_000_0096


    xor b
    nop
    jr nz, jr_031_5184

    ld [hl+], a
    ld bc, $19e4
    adc c

jr_031_5184:
    ld [hl-], a
    ei
    ld l, l
    sub d
    db $e4
    add hl, de
    ccf
    ccf
    rst RST_18
    rra
    rra
    rst RST_38
    rst RST_38
    rlca
    rst RST_30
    inc bc
    ei
    db $fd
    ld bc, $ff01
    db $fd
    db $fd
    ld bc, $8080
    ret nz

    ret nz

    rst RST_18
    ccf
    ret nz

    ret nz

    ret nz

    ldh [$ffe0], a
    rst RST_28
    add hl, hl
    ld [hl+], a
    db $ec
    ld [bc], a
    call nz, Call_000_03eb
    pop af

jr_031_51b0:
    ld de, $3080
    inc l
    dec [hl]
    dec h
    ld sp, $0722
    ld hl, sp+$7b
    dec bc
    ld [$2930], sp
    ld bc, $02fe
    ld [bc], a
    jr nc, jr_031_51ee

    rst RST_08
    ret nz

    ccf
    ret nz

    jr nz, @+$2c

    inc hl
    add b
    daa
    ccf
    add b
    rst RST_38
    cp a
    add b
    cp b
    add b

Call_031_51d5:
    or b
    add b
    or c
    add b
    pop hl
    or e
    sbc c
    ld [hl+], a
    xor $12
    ld sp, $f322
    inc de
    ei
    ld [$fffb], sp
    ld [$087b], sp
    cp e
    ld c, b
    dec sp
    ret z

jr_031_51ee:
    ld a, e
    cp $b9
    ld [hl+], a

jr_031_51f2:
    cp $02

jr_031_51f4:
    cp $02
    ld e, $02
    ld l, $ef
    ld [de], a
    adc $32
    sbc $c9
    ld [hl+], a
    rst RST_08
    jr nz, jr_031_51f2

    ld c, a
    jr nz, jr_031_51f4

    jr nz, jr_031_51f4

    push de
    ld h, $a0
    dec h
    ld a, a
    ldh a, [c]
    inc d
    ld h, b
    sbc d
    inc hl
    ldh a, [$ff27]
    xor b
    dec h
    ld b, $3f
    push hl
    ld de, $01fe
    cp d
    inc hl
    sbc b
    jr nz, jr_031_5258

    jp z, $3023

    dec [hl]
    sbc [hl]
    ld [hl], d
    sub $27
    sub $23
    or h
    rst RST_08
    add e
    cp e
    add a
    cp a
    sub c
    jr nz, jr_031_5260

    nop
    nop
    pop bc
    jp $80ff


    sbc $00

jr_031_523c:
    ld e, b
    ld sp, $11e7

jr_031_5240:
    rst RST_20

jr_031_5241:
    inc de
    ei
    ret z

    sbc e
    ei
    adc b
    or b
    ld hl, $f8fb
    xor b
    nop
    ld e, l

jr_031_524e:
    jr nz, jr_031_528e

    scf
    ldh a, [c]
    cp $e2
    ret nz

    ld hl, $fefe

jr_031_5258:
    xor b
    nop
    ld l, l
    jr nz, jr_031_523c

    db $ed
    jr nz, jr_031_524e

jr_031_5260:
    ld hl, $d1ef
    jr nz, @+$01

    ccf
    ccf
    rst RST_38
    nop
    db $e3
    ccf
    ldh [rNR41], a
    rst RST_20
    ld b, $e7
    ld [bc], a
    db $fd
    ld bc, $38a0
    dec hl
    db $10
    add $39
    sub $09
    cp $a0
    scf
    jr nc, jr_031_5240

    call nz, $4538
    ld a, [hl-]
    ld [bc], a
    rst RST_38
    ld bc, $0304
    dec bc
    ld b, $14

jr_031_528c:
    ld c, $1a

jr_031_528e:
    rst RST_38
    inc c
    ld a, [hl+]
    inc e
    inc h
    jr @+$06

    jr c, jr_031_5241

    rst RST_38
    ld de, $6013
    xor h
    ld b, b
    ld d, c
    adc [hl]
    sbc a
    rst RST_38
    ccf
    ccf
    ld a, a
    cp a
    ld a, a
    rra
    rst RST_38
    sbc e
    rst RST_38
    inc c
    dec c
    add $aa
    ld b, [hl]
    scf
    ld [$7f56], sp
    adc c
    ld a, [hl+]
    pop bc
    or d

jr_031_52b7:
    pop bc
    sbc d
    pop hl
    ccf
    jr nz, jr_031_52b7

    ld e, [hl]
    jr nc, jr_031_5300

    reti


    nop
    sub b
    ld b, b
    cp b
    ld b, b
    ld d, b
    rst RST_38
    xor b
    add hl, bc
    jr nc, jr_031_52f5

    db $10
    dec h

jr_031_52ce:
    jr jr_031_5324

    rst RST_38
    add hl, bc
    and l
    ld c, b
    ret c

    ld h, c
    db $ed
    ld [hl], b
    and l

jr_031_52d9:
    rst RST_38
    ld [hl], h
    ld d, $0f
    xor c
    ld h, [hl]
    ld [bc], a
    add h
    jp nc, Jump_031_54ff

    dec e
    and $e5
    cp $f4
    rst RST_38
    pop af
    rst RST_38
    ld a, b
    adc d
    ld bc, $2172
    ld bc, $d900
    rst RST_38

jr_031_52f5:
    ld d, b
    call z, Call_031_7030
    db $fc
    push af
    ld hl, sp+$6e
    rst RST_38
    ldh a, [c]
    nop

jr_031_5300:
    xor b
    add b
    jr z, jr_031_528c

    jr nz, jr_031_52ce

    dec sp
    jr nz, jr_031_52d9

    ld b, a
    ld b, b
    sub b
    ld h, b
    ld [$222f], sp
    xor h
    ld sp, $aefe
    dec [hl]
    ld b, [hl]

jr_031_5316:
    ld [hl], $ec
    ld d, h
    ldh [c], a
    ld e, b
    sub b
    rst RST_38
    ld l, b
    pop de
    jr z, jr_031_5316

    ld [$1c6a], sp

jr_031_5324:
    jp nc, Jump_000_3cff

    ld a, a
    cp a
    ld l, e
    db $f4
    db $e3
    ld [hl], b
    scf
    rst RST_38
    ld a, b
    cpl
    rra
    adc b
    rlca
    and b
    nop
    or b
    rst RST_38
    rrca
    rst RST_10
    db $eb
    cp a
    ld [hl], e
    jr z, jr_031_53b0

    ld d, d
    rst RST_38
    ldh [$ffa3], a
    ret nz

    jp nz, $a101

    ld [bc], a
    ld h, b
    rst RST_38
    add e
    ld [$8860], sp
    ld h, b
    ld [$4860], sp

jr_031_5352:
    rst RST_38
    ldh [$ff88], a
    ld h, h
    xor h
    nop
    ld c, h
    add b
    sub h
    db $fd
    ld b, b
    and [hl]
    scf
    ld b, $01
    dec bc
    rlca
    rla
    rrca
    rst RST_38
    xor h
    ld [hl], b
    sbc c
    ld h, b
    and a
    ld b, b
    ld c, d
    inc b
    rst RST_38
    sub h
    add hl, bc
    ld d, l
    adc e
    sub b
    set 5, b
    ret nz

    rst RST_38
    ld l, $17
    ld a, [hl-]
    rra
    ld c, a
    rra
    ld e, d
    rrca
    rst RST_38
    jr c, jr_031_5352

    jp z, $fafd

    db $fd
    ld l, h
    rra
    rst RST_38
    and d
    ld b, c
    inc sp
    pop bc
    xor e
    pop de
    adc c
    pop af
    rst RST_38
    call nc, $f5f9
    ld hl, sp-$0f
    db $fc
    ret z

    ldh a, [rIE]
    sub h
    ld b, b
    ld [hl], h
    add b
    inc h
    add b
    inc l
    add e
    rst RST_38
    sub a
    rrca
    xor a
    rra
    ld l, a
    rra
    ld e, a
    ccf
    cp [hl]
    rst RST_20
    dec b

jr_031_53b0:
    ld b, b
    add b
    and b
    ret nz

    ldh [rNR52], a
    jr nz, jr_031_53d7

    rst RST_30
    rrca
    cpl
    rra
    ld [bc], a
    ld d, c
    ld e, a
    ccf
    ld e, h
    ccf
    rst RST_38
    ld e, a
    ld a, $5f
    ld a, $d0
    db $e3
    adc d
    pop af
    ld a, a
    adc a
    ldh a, [$ff80]
    rst RST_38
    inc hl
    rst RST_18
    rst RST_28
    db $eb
    ld b, b
    rst RST_38
    cp a

jr_031_53d7:
    rra
    rla
    rst RST_28
    rst RST_28
    rst RST_38
    ei
    rst RST_38
    db $fd
    ld a, h
    ld a, d
    nop
    push af
    cp $fb
    db $fc
    ei
    db $fc
    ld e, a
    ld h, c
    add b
    db $ec
    di
    sub e
    sbc b
    jr nc, jr_031_5470

    ld e, h
    nop
    push af
    cp a
    jr c, jr_031_5447

    rra
    ld e, h
    nop
    db $fc
    rst RST_38
    pop af
    cp $ff
    add d

Jump_031_5400:
    db $fd
    db $ec
    pop af
    ld hl, sp-$0f
    db $f4
    ld sp, hl
    rst RST_38
    ret nc

    ldh [$fff0], a
    ldh [rSVBK], a
    ldh [$ffe8], a
    ldh a, [$ff3d]
    ld hl, sp+$57
    ld d, b
    db $f4
    ld hl, sp-$04
    ld hl, sp-$5c
    add hl, sp
    ld d, [hl]
    ld b, c
    rst RST_18
    ld a, $7f
    cp l
    ld a, [hl]
    db $fd
    ld [hl], e
    ld d, b
    db $fc
    ld a, [hl]
    ei
    ld a, d
    db $fc
    ld a, d
    ld d, c
    adc a
    rra
    and b
    ld bc, $f732
    inc c
    ld h, b
    rra
    add [hl]
    ld d, c
    ld [hl], b
    rrca
    jr c, @+$09

    rst RST_38
    db $fd
    cp $fd
    cp $18
    ld a, $42
    add h
    ld l, a
    ld [$03f0], sp

jr_031_5447:
    db $fc
    rst RST_18

jr_031_5449:
    nop
    db $fc
    ld a, a
    ld a, [hl+]
    nop
    ld a, a
    jr nc, jr_031_5449

    add h
    ld b, e
    jr nz, @+$21

    add b
    add sp, $20
    rst RST_38
    add b
    ld a, a
    ldh a, [$fff9]
    ld bc, $8500
    ld a, b
    ei
    ld [bc], a
    db $fc
    or [hl]
    ld d, c
    ld b, $f8
    inc c
    ldh a, [$ff7c]
    rst RST_38
    ld hl, sp+$7c
    ld hl, sp+$7a

jr_031_5470:
    db $fc
    cp $7c
    cp $7f
    ld a, h
    cp l
    ld a, [hl]
    ld a, a
    ld a, $7e
    ccf
    rst RST_38
    dec e
    nop
    add b
    ld c, e
    rst RST_38
    nop
    ld bc, $ff00
    dec b
    ld [$0201], sp
    db $fc
    rlca
    ld a, [bc]
    ld e, a
    ccf
    ret nz

    inc bc
    db $fc
    ldh a, [$ff15]
    inc b
    ldh [rSC], a
    ld bc, $33fe
    nop
    ld a, a
    add b
    rrca
    ldh a, [rSC]
    db $fd
    ldh [$fffb], a
    rst RST_38
    ld a, a
    ld bc, $c000
    ccf
    adc [hl]
    ld a, a
    ld [$159f], a
    ld d, b
    xor a
    xor d
    ld d, l
    inc b
    nop
    ld bc, $1f00
    rst RST_38
    ldh [rIF], a
    ldh a, [$ff83]
    ld a, h
    ld bc, $80fe
    ei
    ld a, a
    ld c, $0f
    ld [bc], a
    ld hl, sp+$07
    di
    rrca
    ld sp, hl
    rst RST_38
    rlca
    db $fc
    inc bc
    ld a, h
    add e
    ld a, $c1
    ret nz

    ld [$0001], a
    ld [hl], a
    dec b
    ld b, $7f
    nop
    nop
    inc bc
    nop
    dec sp
    adc [hl]
    ld b, $0a
    rst RST_38
    nop
    ld hl, sp-$7b
    inc c
    inc b
    dec bc
    dec b
    ld b, $fe
    rst RST_28
    cp $fc
    ld hl, sp-$03
    or b
    rlca
    cpl
    rra
    cpl
    rst RST_30
    rst RST_08
    rst RST_00
    rst RST_28
    or b
    rlca
    cp $fc
    db $fc

Jump_031_54ff:
    ld sp, hl
    ei
    pop af
    ei
    or b
    rlca
    ld e, a
    ccf
    ld e, a
    sbc a
    adc a
    ret


    rst RST_18
    ret nc

    ld [$00bb], sp
    cp $16
    ld [bc], a
    inc sp
    nop
    jr nz, jr_031_5519

    ld a, a
    dec h

jr_031_5519:
    rlca
    jr nz, jr_031_551c

jr_031_551c:
    and [hl]
    rlca
    and b
    dec b
    ld bc, $0fff
    rst RST_38
    rrca
    rrca
    sbc a
    rst RST_08
    sbc a
    rrca
    rst RST_28
    ld e, a
    adc a
    ld e, a
    rrca
    dec b
    ld bc, $ffc0
    add b
    rst RST_38
    ret nz

    adc a
    adc $8c
    ret z

    adc c
    adc $8e
    db $fd
    ret z

    dec b
    inc b
    ldh [rIE], a
    rst RST_38
    pop af
    pop af
    pop af
    sbc c
    ei
    sbc $00
    xor e
    ld a, [bc]
    push bc
    db $e3
    ld d, $04
    inc b
    inc b
    ld c, a
    di
    adc a
    nop
    ld [hl], $11
    xor a
    ld [bc], a
    sbc a
    ld de, $bb17
    ld e, a
    cp l
    or [hl]
    rra
    rst RST_38
    ccf
    dec b
    nop
    ldh a, [$ff1f]
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    ld l, $71
    ld c, $f1
    adc a
    ldh a, [$ffde]
    ld c, a
    stop
    ldh a, [rIE]
    cp $21
    ld de, $7f87
    cp $71
    db $10
    rra
    rst RST_38
    db $fc
    inc bc
    ld bc, $02ff
    rst RST_18
    db $fc
    nop
    db $fd
    and c
    rra
    xor e
    dec b
    db $fc
    ld sp, hl
    cp a
    ld e, $09
    add hl, bc
    cpl
    ld h, c
    add hl, sp
    dec b
    inc bc
    rlca

Call_031_559c:
    or [hl]
    sub h
    inc b
    ld b, d
    add c
    dec b
    inc bc
    ld hl, sp+$07
    dec b
    inc bc
    xor l
    cp c
    add $05
    inc bc
    sbc a
    inc d
    rst RST_38
    ld a, a
    ccf
    or b
    rlca
    ld a, a
    ld [hl], c
    ccf
    ld [$b011], a
    ld [$0205], sp
    ld [bc], a
    and [hl]
    dec b
    dec bc
    db $10
    rst RST_38
    inc b
    jr nz, jr_031_55c5

jr_031_55c5:
    inc h
    nop
    jr nz, jr_031_55c9

jr_031_55c9:
    jr nz, jr_031_55c9

    call nc, $cf10
    rra
    rrca
    sbc a
    ld c, a
    rra
    rrca
    cp $16
    inc hl
    rst RST_38
    rst RST_38
    adc h
    ret z

    add a
    adc $80

jr_031_55de:
    rst RST_38
    ret nz

    add d
    call $c08f
    add h
    res 0, b
    db $fd
    ret nz

    dec b
    nop
    di
    di
    rst RST_30

jr_031_55ee:
    di
    or $e0
    db $fc
    ld h, d
    ld [de], a
    ld c, a
    ld de, $d9c9
    ld e, c
    sbc e
    ld b, b
    ld [de], a
    ei
    jr c, jr_031_5644

    xor h
    dec b
    rrca
    ccf
    ld l, a
    sbc a
    rrca
    di
    rst RST_08
    xor a
    sbc a
    inc de
    inc b
    nop
    sub b
    xor l
    cp b
    adc b
    rst RST_28
    ret


    sbc c
    cp d
    call c, Call_000_05ac
    ld b, b
    dec l
    ld c, [hl]
    rst RST_38
    ld c, c
    db $10
    db $e3
    pop bc
    ld a, e
    adc l
    db $d3
    and e
    rst RST_38
    rst RST_00
    add c
    ld a, [hl]
    rst RST_38
    rst RST_38
    jr nc, jr_031_55de

    or h
    ld e, a
    scf
    add c
    dec h
    ld [hl], c
    adc d
    dec b
    ld bc, $5ef1
    nop
    rst RST_38
    inc bc
    ld a, a
    jp nz, Jump_000_023f

    sbc a
    ld [hl], h
    ld a, $b6
    xor h
    dec b

jr_031_5644:
    dec sp
    ld a, c
    and b
    ld hl, $3d38
    xor h
    dec b
    add b

jr_031_564d:
    ld a, a
    dec h
    inc l
    dec h
    ld h, b
    dec l
    dec hl
    ld l, h
    xor h
    dec b
    rst RST_38
    jr nz, jr_031_55ee

    sub l
    ld c, $80
    dec sp
    jp nc, $fe8c

    xor h
    dec b
    ccf
    rst RST_38
    cp a
    ld a, a
    ccf
    ccf
    cp a
    sub l
    ld a, a
    dec b
    ld bc, $72df
    ld de, $e0fe
    inc l
    dec b
    nop
    xor e
    rst RST_38
    rst RST_38
    ld d, l
    rst RST_38
    adc e
    rst RST_38
    inc bc
    rst RST_38
    add d
    rst RST_38
    rst RST_38
    ld c, a
    rst RST_38
    db $fd
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fc

jr_031_5689:
    ldh a, [c]
    ld [bc], a
    jr nc, jr_031_5689

    rst RST_28
    ld [hl+], a
    ret c

    ld bc, $898a
    db $e3
    ret


    rst RST_28
    inc hl
    ret


    inc de
    add hl, hl
    dec b
    inc bc
    sub d
    sub e
    or h
    ld a, a
    sub d
    or h
    sub d
    and h
    sub d
    add d
    rlc l
    inc bc
    rst RST_38
    inc c
    jr jr_031_564d

    ld c, c
    ld b, $08
    adc h
    ld a, [hl]
    ei
    ld [$0508], sp
    inc bc
    ld b, c
    ld h, e
    call c, $9cc9
    rst RST_38
    ld c, c
    inc e
    ld c, c
    add c
    ld h, e
    rst RST_38
    rst RST_38
    ldh a, [c]
    ld a, a
    pop hl
    ldh [c], a
    call z, $270a
    inc b
    ld d, d
    ld d, d
    ld sp, $067b
    ld d, e
    dec b
    inc bc
    rrca
    rra
    xor a
    ld c, a
    ld d, $10
    ld sp, hl
    ld a, a
    inc e
    ld hl, $20e1
    cp $fb
    di
    di
    di
    rst RST_18
    ld sp, hl
    di
    ldh a, [c]
    ld sp, hl
    ld hl, sp+$16
    nop
    ccf
    ccf
    rst RST_38
    rst RST_00
    ld b, a
    ldh a, [$fff8]
    ld a, [de]
    ld d, $c0
    sbc b
    rst RST_38
    ld b, d
    sub d
    jr z, jr_031_574d

    rst RST_38
    rst RST_38
    ei
    ei
    ld a, a
    ei
    di
    ld b, c
    db $d3
    jp nc, $9b49

    sub e
    jr nc, @-$03

    ld c, b
    ld c, c
    db $ec
    inc hl
    ld d, $84
    ld l, $24
    ld b, $ff
    adc h
    sbc [hl]
    call c, Call_000_0ce6
    ld [hl], a
    ld h, a
    ld [hl], a
    rst RST_38
    ld h, a
    rrca
    rrca
    add d
    add $e6
    or d
    inc b
    rst RST_18
    jp nz, $9210

    ld c, d
    add d

jr_031_572d:
    dec b
    inc bc
    ld c, $9f
    rst RST_38
    sbc b
    ld c, h
    db $d3
    ld c, c
    db $d3
    ld c, c
    ld e, b
    ld c, h
    sbc $e4
    add hl, de
    rra
    ccf
    rra
    ld e, a
    dec b
    inc bc
    rst RST_28
    ld a, [hl]
    or $e0
    dec sp
    rst RST_30
    ld a, a
    ldh a, [$ff3b]
    adc h

jr_031_574d:
    sbc $df
    sbc a
    rst RST_38
    sbc b
    sbc b
    adc $9c
    sub d
    call z, $e2c1
    cp $7a
    inc bc
    ret


    ret


    db $db
    ret


    ld e, e
    ret


jr_031_5762:
    ld d, e
    rst RST_30
    ret


    ld b, c
    push hl
    or a
    inc bc
    inc b
    ld c, h
    ld c, [hl]
    ld h, $ed
    ld l, [hl]
    dec h
    ld b, b
    ld h, $26
    dec b
    ld bc, $67f4
    inc [hl]
    rst RST_38
    ld a, $e4
    ld [hl], h
    db $f4
    ld h, [hl]
    or $67
    ld h, a
    ei
    ld h, h
    db $fc
    inc bc
    jr nc, jr_031_5762

    jr nc, @+$1b

    jr nz, jr_031_572d

    rst RST_38
    sub d
    ld [hl-], a
    ld [bc], a
    ld h, d
    ld [de], a
    sub e
    ld a, [hl-]
    ld b, a
    rst RST_38
    sbc a
    rst RST_18
    adc a
    add a
    rst RST_38
    ld b, a
    rst RST_20
    ld b, c
    db $db
    jp $ab31


    jr nc, jr_031_5804

    ld [hl], e
    dec b
    ld bc, $9420
    rst RST_38
    sub b
    xor b
    inc l
    jp $ffff


    ld l, h
    sub a
    rst RST_38
    inc sp
    xor $39
    sub b
    add h

jr_031_57b7:
    ld e, a
    dec h
    ret c

    rst RST_38
    jp nc, Jump_031_5400

    add hl, bc
    rst RST_38
    rst RST_38
    ld c, b
    cp a
    rst RST_38
    ld l, b
    rlca
    nop
    ret


    db $10
    xor e
    pop de
    ld l, $ff
    sub d
    ld bc, $df22
    rst RST_38
    rst RST_38
    ld c, h
    dec h
    rst RST_30
    nop
    inc h
    inc h
    dec b
    nop
    ld b, b
    sbc e
    jr nz, jr_031_5836

    ld a, l
    ld [hl-], a
    dec b
    nop
    dec c
    ld bc, $0150
    ld d, c
    reti


    ld hl, $ffef
    ld h, e
    nop
    nop
    adc h
    ld b, b
    ld e, l
    add b
    or l
    rst RST_30
    nop
    ld d, l
    xor [hl]
    or d
    ld [de], a
    ld c, a
    daa
    sbc a
    rst RST_38
    ld a, a
    rst RST_38
    dec h
    sub b
    ld b, e
    nop

jr_031_5804:
    ld b, h
    cp a
    dec b
    rlca
    rst RST_28
    ld d, l
    jr nz, jr_031_57b7

    inc b
    dec b
    ld bc, $956a
    ld l, l
    rst RST_38
    ld b, $22
    call c, Call_031_66d1
    db $db
    dec [hl]
    ld c, c
    rst RST_38
    or [hl]
    rst RST_38
    rst RST_38
    db $db
    inc b
    ld b, b
    rst RST_38
    sub l
    rst RST_38
    ld a, d
    ld [hl], b
    rlca

jr_031_5828:
    jp z, $203d

    reti


    ld l, d
    rst RST_38
    sub c
    rst RST_38
    rst RST_38
    ld e, d
    add c
    ld [hl], a
    ld a, [bc]
    ld e, c

jr_031_5836:
    cp a
    add [hl]
    cp [hl]
    ld de, $a15b
    and $75
    ld b, b
    ld [hl], h
    ei
    adc e
    ld b, b
    adc h
    ld b, c
    rst RST_38
    add e
    add a
    pop de
    db $db
    rst RST_38
    sbc c
    db $dd
    sbc b
    cp l
    jr c, @-$44

    ld sp, $7e79
    dec b
    rlca
    ld l, d
    dec hl
    adc d
    xor d
    nop
    sbc d
    dec b
    ld bc, $b7ff
    or e
    inc sp
    cp e
    inc sp
    ld [hl], a
    ld h, h
    halt
    rst RST_28
    ld h, c
    dec l
    ld [$88a8], sp
    ld [hl+], a
    pop af
    di
    ei
    rst RST_38
    rst RST_38
    rst RST_30
    ld h, b
    ld [hl], b
    ld l, h
    ld h, [hl]
    ld c, h
    xor $fe
    jp nc, Jump_000_1f12

    ccf
    cp a
    ld e, a
    ld e, a
    ld [hl], h
    halt
    rst RST_20
    jr nz, jr_031_5828

    and h
    db $db
    ld b, b
    dec b
    dec b
    ld h, [hl]
    ld [hl], d
    jp z, $eae7

    ld d, b
    jp c, Jump_000_04b5

    cp d
    nop
    inc a
    sbc [hl]
    ld e, h
    rst RST_08
    ld e, l
    sbc c
    db $dd
    ld hl, sp-$6c
    nop
    xor e
    jr nc, @+$69

    rlca
    rst RST_38
    ld d, a
    inc b
    or [hl]

jr_031_58a9:
    cp c
    and l
    ldh [c], a
    db $eb
    ccf
    cp $d7
    jr nz, jr_031_58a9

    rst RST_30
    rst RST_20
    rst RST_30
    rst RST_20
    rst RST_28
    ret z

    rst RST_18
    ld l, h
    ld c, c
    ld b, e
    nop
    ld d, l
    dec b
    rlca
    reti


    call c, $82ef
    adc d
    sub b
    pop de
    dec b
    ld bc, $f8f0
    ld hl, sp-$01
    db $fd
    ei
    db $fd
    cp b
    xor b
    sub c
    sbc e
    rra
    db $fd
    or e
    ld a, d
    ld [bc], a
    ld a, a
    cp a
    ccf
    scf
    or a
    ld a, a
    rst RST_18
    ld a, [hl]
    jr z, jr_031_594f

    adc d
    ld a, [hl+]
    dec b
    add hl, bc
    cp l
    cp l
    ei
    xor h
    xor c
    dec b
    dec b
    cp a
    cp a
    db $fc
    db $f4
    ld b, c
    rst RST_38
    ld h, e
    ld d, h
    ld d, l
    db $eb
    nop
    db $fd
    ld [bc], a
    db $ec
    rst RST_38
    ld e, c
    scf
    adc b
    cp $01
    rst RST_38
    rst RST_38
    push de
    and a
    ld a, [hl+]
    ld [de], a
    add b
    ld a, [$b800]
    ld [bc], a
    jr z, jr_031_5943

jr_031_590f:
    nop
    xor d
    ld a, a
    ld d, l
    ld d, l
    xor d
    jr nc, jr_031_598c

    ld h, [hl]
    inc c
    or d
    rlca
    cp a
    rst RST_38
    cp $00
    ld d, l
    ld l, [hl]
    call nz, Call_000_0987
    ld c, c
    ccf
    ld e, e
    ld l, h
    call z, $fff9
    ld hl, sp+$36
    db $10
    dec l
    jr nz, jr_031_590f

    inc b
    nop
    db $dd
    db $dd
    adc b
    adc b
    ld [de], a
    ld de, $ff03
    sbc h
    jp hl


    ld d, b
    add a
    db $10
    ld h, $6f
    sub h

jr_031_5943:
    rst RST_38
    ld b, d
    adc e
    dec b
    ld b, b
    rst RST_20
    ld d, l
    push hl
    ld c, l
    jp c, $df34

jr_031_594f:
    ld [hl-], a
    sub c
    cp e
    or c
    di
    sub c
    di
    ld h, c
    ld d, h
    adc a
    ld bc, $eae0
    call nz, $f9c1
    pop hl
    sbc $22
    ld c, [hl]
    ld [bc], a
    rst RST_38
    inc b
    xor [hl]
    ret


    sbc b
    ld a, d
    dec l
    ld hl, $791f
    ld h, h
    rla
    or a
    pop de
    sbc c
    reti


    inc sp
    inc a
    ld [hl], d
    db $10
    inc bc
    nop
    ld sp, $6076
    ld h, b
    dec b
    dec b
    ldh a, [$ff31]
    rst RST_38
    ld [$6b59], sp
    set 6, c
    db $f4
    ldh a, [c]
    or $fb

jr_031_598c:
    ldh a, [$fff9]
    dec b
    ld bc, $ff14
    ld a, [hl+]
    xor d
    jp $96fd


    dec b
    rlca
    jr nc, @+$01

    ld b, h
    adc $59
    ld e, b
    cp a
    adc a
    and a
    sub a
    or a
    add a
    rst RST_08
    dec b
    ld bc, $fc82
    nop
    ld bc, $01c7
    ccf
    ld b, b
    ld c, b
    nop
    ld c, d
    add b
    rst RST_30
    ld a, a
    ld a, [de]
    push hl
    ld [bc], a
    inc bc
    ld a, [$00fa]
    ld e, b
    rst RST_38
    nop
    cp b
    ld [$5177], sp
    xor [hl]
    rlca
    rst RST_38
    rst RST_38
    ld a, [hl+]
    rst RST_38
    ld d, l
    cp $3e
    db $fc
    ld a, h
    db $fc
    rst RST_38
    ld hl, sp-$04
    ld a, h
    ld hl, sp-$08
    ld hl, sp-$60
    ret nz

    db $fd
    add b
    ld bc, $1300
    inc c
    cpl
    rra
    ld c, a
    ccf
    rst RST_38
    scf
    ld a, a
    add hl, sp
    ld a, a
    jr z, jr_031_5a09

    inc b
    inc bc
    rst RST_38
    ld bc, $0600
    nop
    adc c
    ld b, $d8
    adc a
    rst RST_38
    cp b
    rst RST_18
    or $ff
    ld [$34ff], sp
    rst RST_38
    rst RST_38
    ld a, b
    rst RST_38
    or c
    ld a, [hl]
    ld a, e
    inc a
    sbc c
    ld a, $7f
    cp h

jr_031_5a09:
    rra
    sbc d
    rra
    ld hl, sp-$03
    db $fc
    rlca

jr_031_5a10:
    jr nc, jr_031_5a10

    ld b, l
    ld [hl], l
    ld a, [$c8fc]
    ccf
    daa
    sbc a
    jr nc, @+$01

    ld c, $5c
    ld bc, $002b
    cp d
    ld [bc], a
    sbc b
    rst RST_38
    rlca
    ld c, e
    inc b
    rst RST_08
    inc sp
    ld c, b
    scf
    ei
    rst RST_38
    nop
    ld c, c
    add h
    ld h, $00
    ld h, c
    ld [hl-], a
    ld a, h
    rst RST_38
    add d
    add h
    ld a, d
    ld a, a
    cp a
    ld a, a
    cp a
    cp a
    ld [hl], c
    ld a, a
    ld [hl], l
    ld [hl], e
    or e
    ld d, b
    inc [hl]
    ld bc, $01ff
    cp $9a
    db $10
    rst RST_38
    db $fc
    inc b
    ld hl, sp+$00
    ld hl, sp-$78
    ld [hl], b
    jr nz, @-$02

    ld de, $0172
    ld bc, $030c
    db $10
    rrca
    ld de, $ef0e
    ld [$0207], sp
    ld bc, $7393
    ldh [rP1], a
    inc b
    rst RST_38
    rst RST_38
    sbc [hl]
    ld a, c
    dec a
    jp nz, $a15e

    ld a, l
    rst RST_38
    ld [bc], a
    ld a, $01
    dec e
    ld [bc], a
    ld a, [de]
    dec b
    sub h
    rst RST_38
    dec bc
    ld a, [bc]
    push de
    ld e, c
    and d
    cp d
    ld b, c
    ld e, h
    rst RST_38
    and b
    xor [hl]
    ld d, b
    ld d, $e8
    ld c, c
    or h
    dec d
    rst RST_38
    add sp, $00
    db $fc
    ld e, l
    adc [hl]
    ld a, e
    add h
    db $d3
    rst RST_38
    inc h
    and a
    ld a, b
    ld b, h
    ld a, [hl-]

jr_031_5a9d:
    sub b
    inc c
    ld l, e
    rst RST_38
    add h
    or d
    ld b, c
    inc b
    ei
    ld c, h
    inc sp
    dec bc
    rst RST_38
    inc b
    cp $0c
    dec b
    ld [bc], a
    add c
    ld [hl], d
    dec bc
    rst RST_38
    inc b
    ldh [c], a
    db $e4
    adc b
    rla
    sub b
    rrca
    jr z, @+$01

    rla
    inc [hl]
    dec bc
    ld a, d
    dec b
    ccf
    ld b, b
    ld a, [hl]
    rlca
    ld bc, $502f
    dec e

jr_031_5ac9:
    add b
    rra
    db $fd
    ld hl, sp+$00
    nop
    db $fc
    ld hl, sp-$56
    ld sp, hl

jr_031_5ad3:
    ld bc, $fdfa
    nop
    add hl, bc
    nop
    ld d, c
    ld a, [$7d3e]
    ld e, a
    inc a
    rst RST_38
    ld hl, $181e
    add b
    or e
    nop
    inc d
    and b
    rst RST_38
    ret c

    jr nc, jr_031_5b0b

    ld a, b
    xor $ff
    inc c
    rst RST_38
    rst RST_38
    db $d3
    inc l
    jr nz, jr_031_5af6

jr_031_5af6:
    sub e
    nop
    ldh a, [rP1]
    rst RST_38
    ld c, b
    jr nc, jr_031_5ac9

    jr nc, jr_031_5a9d

    rra
    sbc a
    rra
    ld a, e
    rra
    ccf
    dec [hl]
    nop
    ld a, a
    ld a, a
    ld a, a

jr_031_5b0b:
    cp a
    ld a, [hl-]
    nop
    rst RST_18
    push af
    ld sp, hl
    jr nc, jr_031_5ad3

    nop
    ld b, h
    ld [$0126], sp
    rst RST_38
    or d
    add c
    ld e, c
    ret nz

    inc h
    ld h, b
    inc de
    jr nc, @+$01

    ld [$0e1c], sp
    ld b, $06
    ld [bc], a
    ld a, d
    add h
    rst RST_38
    ld a, d
    db $fc
    dec b
    ld hl, sp+$71
    ld [bc], a
    add a
    ld [bc], a
    rst RST_38
    db $e4
    ld b, $2e
    inc b
    inc c
    inc c
    cp [hl]
    ld a, a
    cp a
    ld e, [hl]
    ccf
    inc d
    rrca
    inc b
    inc bc
    ld b, h
    dec b
    ld l, b
    rst RST_38
    sub b
    xor b
    ld d, b
    ld e, d
    and c
    and h
    ld d, e
    ld [hl], b
    rst RST_38
    add h
    ldh a, [rTMA]
    ld [hl], b
    add h
    or l
    ld b, b
    ld [$07ff], sp
    inc de
    rrca
    xor b
    db $10
    db $10
    and b
    dec e
    rst RST_38
    push hl
    ret nz

    ld a, $87
    jr c, @-$45

jr_031_5b68:
    ld e, $dc
    rst RST_38
    inc sp
    sub b
    ld l, a
    add b
    ld a, b
    ld b, b
    jr nz, jr_031_5b98

    rst RST_38
    ld bc, $2053
    dec h
    ld [hl], e
    xor d
    ld [hl], a
    inc d
    rst RST_38
    res 0, b
    rra
    and b
    rra
    nop
    ccf
    ld b, b
    rst RST_38
    ccf
    jr nz, jr_031_5b68

    ld h, b
    sbc a
    ld d, b
    adc a
    ld bc, $fcff
    nop
    ld sp, hl
    ld [bc], a
    ldh [c], a
    ld bc, $0001
    db $fd

jr_031_5b98:
    ld bc, $0344
    add hl, bc
    jr nc, jr_031_5bb4

    adc b
    ld b, h
    db $e3
    rst RST_38
    ld [hl], b
    ld a, b
    cp h
    cp [hl]
    ld e, h
    call c, Call_031_6aa8
    rst RST_38
    db $10
    scf
    ld bc, $02f8
    inc b
    ld [$fff1], sp

jr_031_5bb4:
    inc bc
    rlca
    rrca
    rra
    ld c, $0e
    inc d
    ld d, $ff
    add hl, sp
    add hl, sp
    dec d
    ld l, d
    ld a, [bc]
    or l
    add c
    adc [hl]
    push hl
    nop
    ld [hl], a
    ld bc, $fb80
    ld bc, $0044
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_30
    rst RST_30
    sub h
    sub h
    inc b
    sub h
    and b
    ld e, a
    ei
    sub [hl]

jr_031_5bdc:
    ld l, c
    nop
    inc de
    rst RST_38
    rst RST_38
    adc b
    adc b
    ld [$a8ff], sp
    nop
    rst RST_38
    nop
    rst RST_38
    ld a, [hl]
    ld l, [hl]
    ld a, [hl]
    rst RST_38
    rst RST_28
    rst RST_38
    rst RST_28
    cp $ee
    cp $ee
    ld [hl], d
    rst RST_18
    xor $54
    xor e
    ld b, [hl]
    xor c
    nop
    inc de
    ccf
    ld a, a
    rst RST_08
    and h
    and h
    nop
    ld h, l
    inc e
    ld de, $1300
    db $eb
    db $eb
    rst RST_28
    ld l, d

jr_031_5c0d:
    ld l, d
    nop
    halt
    inc a
    rla
    cp $fe
    jr nz, jr_031_5c0d

    jr nz, jr_031_5c18

jr_031_5c18:
    ld a, [hl+]
    inc a
    dec d
    cp a
    cp a
    rst RST_38
    rst RST_38
    rst RST_38
    ld hl, $a821
    ld [bc], a
    nop
    db $fd
    nop
    rst RST_38
    rst RST_18
    ld [hl], a
    ld a, a
    ld [hl], a
    rst RST_38
    rst RST_30
    inc b
    db $10
    ld e, l
    ld [hl], a
    cp a
    ld [$08f7], sp
    rst RST_30
    ld [bc], a
    push af
    inc de
    ld de, $9e07
    dec e
    db $10
    ld hl, $ffde
    nop
    rst RST_38
    inc b
    dec a
    ld de, $dfff
    call c, $ff23
    nop
    jr c, jr_031_5bdc

    jr @-$2d

    ld l, $f7
    rst RST_38
    nop
    ld b, $8d
    jr @-$44

    ld b, l
    rst RST_38
    nop
    push af
    jr nc, jr_031_5c6f

    inc d
    jr jr_031_5c7f

    db $10
    jp hl


    ld d, $ff
    nop
    sub l
    ld b, c
    ld b, h
    nop
    rst RST_28
    ret nc

    stop

jr_031_5c6f:
    db $d3
    db $10
    db $d3
    ld de, $fae3
    ld b, h
    nop
    rst RST_30
    ldh [rNR10], a
    db $10
    rst RST_30
    nop
    rst RST_30
    pop hl

jr_031_5c7f:
    inc bc
    ld d, $f7
    rl d
    dec e
    nop
    add b
    rst RST_38
    nop
    rst RST_38
    nop
    add b
    ld a, a
    nop
    ld a, a
    jr z, @+$01

    ld a, a
    dec de
    ld a, a
    inc a
    ld a, a
    rrca
    ld a, a
    inc d
    add sp, $00
    nop
    nop
    nop
    inc d
    nop
    rst RST_28
    inc d
    nop
    add hl, sp
    rst RST_38
    add $fe
    nop
    nop
    inc bc
    db $fc
    ld bc, $29fc
    db $fc
    or c
    rst RST_38
    db $fc
    ld a, c
    db $fc
    pop hl
    db $fc
    ld d, c
    ld a, a
    inc d
    db $eb
    ld a, a
    inc de
    jr nc, jr_031_5cbe

jr_031_5cbe:
    inc b
    jr nc, jr_031_5cc5

    inc d
    rst RST_38
    add $f8

jr_031_5cc5:
    inc e
    ld bc, $0244
    ld b, e
    ld bc, $fcd6
    ld d, c
    db $fc
    sub c
    ld [$0050], a
    ld b, c
    ld d, b
    inc b
    ld d, c
    nop
    ld [bc], a
    ld a, a
    ld b, a
    ld b, a
    dec de
    ld d, a
    ld d, a
    ld h, [hl]
    ld bc, $5757
    db $10
    ld [bc], a
    ld [hl], h
    ld [$0220], sp
    push af
    db $fd
    add h
    rlca
    ld a, a
    sub b
    dec b
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    rst RST_30
    ld a, b
    ld a, a
    ld a, b
    jr jr_031_5cfa

jr_031_5cfa:
    rst RST_00
    rst RST_38
    add e
    rst RST_38
    pop af
    ld bc, $0214
    nop
    nop
    add h
    ld [$fc7d], sp
    dec a
    db $fc
    ld a, e
    dec a
    ld [hl], b
    ret nz

    ld [bc], a
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    sub b
    inc bc
    db $fd
    nop
    ret nc

    inc b
    jr z, jr_031_5d43

    rst RST_28
    rst RST_28
    rst RST_00
    rst RST_00
    rst RST_28
    ld bc, $1c01
    dec e
    ldh [rSB], a
    inc a
    dec a
    ld a, h
    ld sp, hl
    ld a, l
    adc d
    inc c
    call $8001

Call_031_5d30:
    nop
    rst RST_38
    call nz, $fbc5
    call nc, Call_000_00d5
    ld de, $d5d4
    db $fc
    db $fd
    nop
    ld sp, hl
    inc bc
    inc de
    ld [bc], a
    ld h, e

jr_031_5d43:
    ld [bc], a
    ld [hl], a
    ld [hl], a
    ld b, a
    ld b, a
    ld e, a
    and a
    ld e, a
    ld b, a
    ld b, a
    ld [hl], b
    inc bc
    jp c, $8301

    ld a, [hl+]
    db $10
    rst RST_28
    reti


    rst RST_28
    ldh a, [$ff09]
    sub b
    ld bc, $c7c7
    ld [hl], h
    add hl, bc
    rst RST_38
    rst RST_38
    db $fc
    add h
    add hl, bc
    add h
    ld bc, $c5c4
    db $f4
    push af
    call nz, Call_000_0fc5
    call c, $c4dd
    push bc
    ld a, [bc]
    rra
    jr jr_031_5d86

    ld b, b
    rla
    ld h, $17
    add [hl]
    ld b, b
    rla
    rst RST_00
    rst RST_00
    ld h, b
    inc de
    ld h, d

jr_031_5d81:
    ld de, $196a
    ld l, h
    nop

jr_031_5d86:
    ld b, e
    cp a
    ld b, a
    ld b, c
    ld [hl], a
    ld b, c
    ld [hl], a
    ld [hl], a
    add b
    inc bc
    call c, $ddff
    adc h
    adc l
    inc b
    dec b
    inc b
    dec b
    call c, $dd37
    ld a, a
    ld h, e
    jr nc, jr_031_5dbb

    adc h
    adc l
    ld d, b
    dec de
    jr nc, jr_031_5dc1

    ld a, e
    ld h, e
    ld h, e
    ld d, b
    inc e
    adc l
    ld [hl], a
    ld [hl], a
    ld b, c
    ld [de], a
    jr nz, jr_031_5d81

    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, [$0603]
    db $10
    dec b

jr_031_5dbb:
    call nz, Call_000_05af
    db $f4
    add l
    db $f4

jr_031_5dc1:
    add hl, bc
    inc e
    ld e, a
    cp c
    ld [de], a
    ld b, a
    ld d, c
    ld b, a
    ld [hl], h
    ld [$02a1], sp
    sub b
    dec de
    rst RST_38
    rst RST_38
    nop
    call c, Call_000_2223
    cp h
    ld l, b
    dec e
    jr c, jr_031_5dfb

    ld d, a
    ld d, c
    ld b, a
    ld b, a
    ret nc

    rla
    ld [hl], a
    sbc a
    ld [hl], a
    ld h, e
    ld h, e
    ld b, c
    ld b, c
    ldh [rNR22], a
    add $13
    ld b, c
    sbc d
    cp l
    db $10
    ld h, e
    pop de
    ld d, $63
    ld h, e
    call z, $e011
    jr jr_031_5d86

    halt
    ld h, b

jr_031_5dfb:
    inc hl
    call nc, Call_031_6895
    ld e, $63
    ld l, a
    ld b, c
    jp c, $f920

    ld h, a
    adc d
    dec e
    ld h, b
    db $10
    dec b
    db $ec
    dec b
    db $ec
    adc l
    db $db
    db $ec
    call Call_000_1b6a
    ld d, a
    ld d, e
    ld a, d
    jr nz, jr_031_5e71

    ld b, a
    ld bc, $c043
    add hl, de
    add $11
    add [hl]
    daa
    and d
    inc hl
    sub [hl]
    daa
    or d
    inc hl
    ld d, $21
    ld h, [hl]
    inc d
    add hl, hl
    call nz, Call_000_0285
    db $10
    push bc
    jr z, @+$03

    cp $02
    scf
    ld [hl], d
    jr jr_031_5e4b

    ld b, e
    ld d, b
    inc sp
    ld h, [hl]
    dec l
    ld d, c
    ld d, c
    ld d, l
    adc b
    ld [hl-], a
    pop af
    ld d, c
    ld e, a
    ld bc, $0873

jr_031_5e4b:
    adc d
    rra
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    or $b2
    ld sp, $4544
    ld l, d
    add hl, de
    ld h, d
    ld h, d
    ld [hl], a
    ld h, e
    rst RST_20
    ld [hl], a
    ld b, c
    ld d, a
    dec a
    jr nz, jr_031_5ed3

    inc b
    ld bc, $03ff
    cp $d8
    jr nc, jr_031_5ecc

    rst RST_38
    ld hl, $627e
    ld a, [hl]
    ld a, [hl]

jr_031_5e71:
    rst RST_38
    ld l, a
    ld l, a
    ld b, a
    ld b, a
    ld l, h
    ld l, h
    ld h, d
    ld h, d
    rst RST_38
    ld b, e
    ld b, e
    ld c, l
    ld c, l
    rst RST_38
    ldh [rIE], a
    ld [hl], b
    db $eb
    rst RST_38
    ld h, b
    inc d
    nop
    ld h, h
    inc d
    nop
    ld e, [hl]
    rst RST_38
    add b
    push af
    db $fc
    pop hl
    ld de, $0475
    ld b, b
    dec [hl]
    db $fc
    dec b
    db $fc
    rst RST_18
    sub l
    db $fc
    sub l
    ld a, a
    ld d, d
    db $10
    ld b, b
    ld b, b
    ld a, a
    ld [hl], a

jr_031_5ea4:
    ld e, b
    ld a, a
    ld e, h
    jr @+$42

    ld a, [hl]
    ld a, a
    ld h, d
    ret c

    jr nc, jr_031_5ea4

    push af
    inc d
    nop
    ld c, h
    and [hl]
    nop
    dec c
    rst RST_38
    inc e
    rst RST_38
    rst RST_38
    ld c, $64
    ld h, l
    add h
    add l
    adc h
    adc l
    ld l, h
    rst RST_18
    ld l, l
    call nz, $ecc5

jr_031_5ec7:
    db $ed
    inc c
    ld hl, $09ff

jr_031_5ecc:
    add d
    ld a, [hl+]
    ld b, b
    add c
    ld b, h
    ld b, b
    ld [hl], e

jr_031_5ed3:
    nop
    ret nc

    nop
    rst RST_38
    nop
    db $f4
    jr nz, jr_031_5ee0

    di
    xor h
    adc l
    ldh [rNR11], a

jr_031_5ee0:
    inc c
    rla
    ld b, [hl]
    ld b, [hl]
    ld d, a
    ld d, e
    ld hl, sp-$34
    jr nc, jr_031_5ec7

    jr nz, jr_031_5f5c

    inc b
    add b
    rst RST_38
    dec b
    rst RST_38
    dec h
    rst RST_18
    rst RST_38
    ld [hl], c
    rst RST_38
    ld bc, $e176
    jr nc, jr_031_5f53

    ld e, b
    rst RST_38
    ld d, d
    ld d, d
    ld b, e
    ld b, e
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    rst RST_28
    ld b, h
    ld b, h
    rst RST_38
    ld d, c
    ldh a, [c]
    jr nc, jr_031_5f31

    rst RST_38
    ld a, [bc]
    set 7, a
    ld [hl], l
    ld a, [hl+]
    ld b, b
    ld e, h
    xor [hl]
    nop
    pop hl
    ld de, $fc0d
    ld [hl], a
    push bc
    db $fc
    add l
    ld [$6540], sp
    db $fc
    dec b
    inc d
    ld b, b
    rst RST_38
    ld c, h
    ld a, a
    ld e, c
    ld a, a
    ld b, e
    ld a, a
    ld b, [hl]
    ld a, a
    push de
    ld h, b

jr_031_5f31:
    sbc b
    nop
    ld h, e
    inc d
    nop
    ld [hl], h
    call c, Call_031_5d30
    rst RST_38
    ld [hl], a
    and b
    rst RST_38
    ld c, b
    inc l
    ld b, b
    inc e
    ld b, h
    ld b, l
    jp z, $bf11

    add h
    add l
    sub h
    sub l
    inc a
    dec a
    ld e, [hl]
    db $10
    add l
    cp $a6
    nop

jr_031_5f53:
    dec e
    rst RST_38
    ld c, c
    rst RST_38
    ld b, c
    rst RST_38
    ld [bc], a
    db $ec
    ld c, d

jr_031_5f5c:
    ld b, e
    jr nz, jr_031_5f82

    db $ec
    adc l
    jr z, jr_031_5f8e

    ld e, e
    ld d, e
    ld d, a
    db $db
    ld b, e
    ld c, a
    swap b
    ld e, e
    ld d, e
    ld [hl], b
    inc b
    nop
    rst RST_38
    ld a, a
    adc d
    rst RST_38
    ret nz

    rst RST_38
    adc $ff
    ret nz

    add b
    inc b
    push af
    dec h
    inc b
    ld b, b
    push af
    xor h
    ld b, b

jr_031_5f82:
    push hl
    ld a, a
    ld h, e
    ld a, [hl]
    rst RST_38
    ld a, [hl]
    ld e, h
    ld e, h
    ld d, b
    ld d, b
    ld b, c
    ld b, c

jr_031_5f8e:
    ld d, c
    rst RST_18
    ld d, c
    ld d, b
    ld d, b
    ld e, b
    ld e, b
    sub [hl]

jr_031_5f96:
    ld b, b
    ld c, $ff
    rst RST_30
    sub c
    rst RST_38
    ld h, [hl]
    halt
    ld b, b
    xor b
    rst RST_38
    ld b, b

jr_031_5fa2:
    rst RST_38
    rst RST_20
    jr jr_031_5fa2

    push hl
    xor h
    ld b, c
    xor h
    ld b, b
    push bc
    db $fc
    push de
    cp [hl]
    ld e, d
    ld d, b
    ld b, l
    ld a, a
    ld b, h
    ld a, a
    ld d, [hl]
    ld h, d
    ld d, b
    ld b, [hl]
    ld a, [$40b2]
    ld b, c
    or d
    ld b, b
    ld c, [hl]
    rst RST_38
    jr nc, @+$01

    inc b
    cp e
    rst RST_38
    dec hl
    ret c

    jr nc, jr_031_5f96

    rst RST_38
    ld [de], a
    ldh a, [$ff30]
    and c
    rst RST_38
    inc [hl]
    dec [hl]
    inc d
    dec d
    inc d
    dec d
    inc b
    dec b
    ld l, a
    inc d
    dec d
    ld [hl], h
    ld [hl], l
    inc c
    ld hl, $4e7f
    or d
    ld b, b
    push af
    ld e, [hl]
    jr jr_031_6027

    ld c, b
    ld a, [$ff03]
    rlca
    rst RST_38
    rst RST_20
    ldh a, [c]
    and b
    ld d, b
    and e
    and [hl]
    nop
    ld c, e
    ld b, d
    or h
    sub l
    xor h
    dec b
    call Call_031_559c
    ld b, b
    or h
    sub l
    ld l, d
    inc de
    ldh a, [$ff09]
    ld a, h
    ld a, h
    db $eb
    ld a, b
    ld a, b
    jr z, jr_031_601c

    ld bc, $52d4
    add e
    add e
    ld b, h
    ld a, e
    ld b, h
    nop
    xor a
    add hl, bc
    db $fd
    ld a, h
    ld a, l
    inc a
    cp a
    rrca

jr_031_601c:
    ld b, [hl]
    db $d3
    inc b
    ld l, h
    ld l, h
    jp c, $e40f

    ld de, $0370

jr_031_6027:
    rst RST_00
    ld h, $60
    jr z, @-$70

    rra
    jr z, jr_031_6040

    or b
    inc d
    ld b, e
    cp b
    dec de
    adc h
    ld d, a
    ld b, b
    jp z, $2813

    db $10
    dec h
    and h
    ld hl, $2a1c

jr_031_6040:
    add l
    ld l, d
    ld a, [de]
    ld b, e
    jr c, @+$31

    ld h, $63
    add b
    ld h, b
    ld h, $79
    ld l, a
    ld a, e
    inc l
    ld h, [hl]
    ld h, c
    adc [hl]
    add hl, hl
    ld d, [hl]
    ld h, e
    ld h, h
    db $10
    dec d
    ret nz

    call nz, $a922
    ld l, h
    ret c

    dec h
    ld h, $6d
    ldh a, [rNR52]
    ld e, c
    ld c, d
    ld b, a
    ld b, e
    nop
    ld [$563b], sp
    ld h, e
    inc e
    dec [hl]
    jp z, Jump_000_2a63

    scf
    ld [hl], $77
    ld a, $37
    ld l, b
    ld h, l
    ld h, b
    ld d, b
    ld [hl], $a9
    ld l, h
    ld l, b
    inc a
    rst RST_20
    ld l, c
    ld [hl], e
    ld [$c7c7], sp
    ld h, b
    ld b, h
    ld de, $6842
    ld b, l
    ldh a, [rDMA]
    xor c
    ld l, d
    ld e, e
    ld b, a
    ld h, b
    ld a, [bc]
    ld d, e
    or b
    ld d, b
    add hl, bc
    dec c
    or h
    ld e, a
    sbc d
    ld [bc], a
    ld [hl], b
    ld a, [$1d71]
    add b
    ld h, e
    ld a, l
    rst RST_38
    nop
    inc bc
    jr c, @+$01

    db $10
    rst RST_38
    nop
    ld a, [bc]
    ld bc, $fcfb
    db $fd
    db $10
    ld [bc], a
    ld a, l
    db $fc
    dec a
    db $fc
    dec e
    ld [hl], h
    ld a, [de]
    ld bc, $000b
    nop
    nop
    nop
    rst RST_10
    rst RST_38
    add e
    jr z, jr_031_60c4

jr_031_60c4:
    add a
    rst RST_00
    rst RST_38
    rst RST_28
    nop
    inc b
    nop
    inc bc
    daa
    rrca
    ld a, [bc]
    ld bc, $ff80
    ld a, a
    ld a, a
    ld d, a
    ld b, e
    ld d, a
    ld b, c
    ld b, a
    ld b, c
    xor a
    ld [hl], a
    ld h, e
    ld [hl], a
    ld [hl], a
    dec bc
    nop
    inc bc
    stop
    xor l
    ei
    db $fc
    dec b
    ld l, b
    nop
    adc l
    db $fc
    db $dd
    ld a, a
    ld [hl], a
    rst RST_28
    ld a, a
    ld h, e
    ld a, a
    ld b, c
    ld [hl], h
    nop
    ld l, e
    ld a, a
    ld a, a
    rst RST_38
    nop
    add b
    nop
    rst RST_38
    call nc, $d4d5
    add l
    rst RST_38
    call nz, $f405
    dec b
    db $f4
    and l
    db $fc
    db $fd
    ld [hl], e
    nop
    inc bc
    dec bc
    ld [bc], a
    ld d, e
    nop
    ld b, a
    ld b, e
    ld e, a
    ld e, c
    ld [bc], a
    cp a
    ld b, a
    ld b, a
    call nz, $dcc5
    adc l
    add h
    ld bc, $7dc4
    add l
    adc d
    rrca
    ld d, a
    ld b, e
    ld b, a
    ld b, a
    ld a, a
    ret nz

    add hl, bc
    add a
    ld l, e
    ld a, a
    ld b, c
    db $10
    inc b
    ld de, $6703
    nop
    ld [hl], h
    nop
    ld h, e
    ldh [rSVBK], a
    nop
    ret nz

    ld b, $6a
    inc bc
    ret nc

    rlca
    and b
    nop
    sbc l
    call nz, $fb05
    call nc, $a815
    dec c
    ld [hl], a
    ld b, c
    ld l, a
    ld b, c
    ld l, a
    rst RST_30
    ld h, e
    ld l, a
    ld h, a
    inc a
    dec c
    call nz, $f4c5
    add l
    ld l, e
    db $ec
    dec b
    inc [hl]
    db $10
    xor l
    xor d
    dec bc
    ld d, a
    ld d, c
    cp d
    nop
    add a
    ld d, e
    ld b, a
    ld b, e
    ret z

    dec b
    ldh [rTIMA], a
    ret c

    dec b
    ldh a, [rTIMA]
    call nz, $c507
    call nc, Call_000_0495
    rra
    ld b, [hl]
    db $10
    sbc c
    ld b, $82
    inc bc
    xor b
    dec bc
    rst RST_30
    ld d, c
    ld b, c
    ld d, l
    and a
    ld [de], a
    ld d, c
    ld d, c
    ld b, h
    ld b, l
    db $db
    ld d, h
    dec b
    or d
    ld de, $0544
    xor d
    add hl, bc
    ld h, e
    ld h, e
    rst RST_10
    ld [hl], a
    ld b, c
    ld [hl], a
    cp e
    inc bc
    ld a, [hl]
    ret nc

    db $10
    ld l, a
    ld a, a
    rst RST_38
    ld b, a
    ld a, a
    ld l, h
    ld a, a
    ld h, d
    ld a, a
    ld b, e
    ld a, a
    push de
    ld c, l
    db $10
    ld [bc], a
    ld [hl], l
    db $e4
    db $10
    dec [hl]
    ld l, b
    nop
    sub l
    db $fc
    rst RST_30
    sub l
    ld a, a
    ld d, d
    ldh a, [rNR10]
    ld b, b
    ld a, a
    ld e, b
    ld a, a
    ld a, c
    ld e, h
    ld hl, sp+$10
    pop de
    db $10
    db $fc
    ld h, l
    db $fc
    add l
    ld l, h
    nop
    rst RST_18
    ld l, l
    db $fc
    push bc
    db $fc
    db $ed
    db $fc
    inc bc
    db $ec
    adc l
    cp a
    db $ec
    dec b
    xor h
    dec b
    adc h
    adc l
    xor d
    ld a, [bc]
    ld b, d
    ei
    ld d, a
    ld b, c
    ld e, b
    nop
    ld b, e
    ld l, a
    ld h, a
    ld [hl], a
    halt
    ld [$10d0], a
    ld e, b
    ldh a, [rNR10]
    ld b, e
    ld [hl], h
    nop
    ld b, b
    ld a, a
    ld b, h
    xor d
    db $10
    ld [bc], a
    dec c
    ld [$8520], sp
    add sp, $10
    ld h, l
    sbc $00
    ld b, b
    rst RST_28
    ld a, a
    ld c, h
    ld a, a
    ld e, c
    call c, $4610
    ld a, a
    ld h, b
    xor [hl]
    ret nc

    db $10
    ld a, a
    db $fc
    ld b, l
    ld l, b
    ld [bc], a
    add l
    db $ec
    db $10
    dec a
    db $f4
    ld l, [hl]
    ld [de], a
    add c
    ld [bc], a
    db $ec
    add a
    inc c
    ld e, e
    ld c, e
    ld d, a
    ld b, c
    xor l
    ld c, a
    cp e
    nop
    ld e, e
    ld d, e
    ret nz

    nop
    ld a, [hl]
    ld hl, sp+$10
    ld d, b
    xor d
    ld [hl], h
    nop
    ld d, c
    sub [hl]
    jr nz, jr_031_6291

    add sp, $10
    dec d
    and d
    jr nz, jr_031_6244

    ld a, [$20a2]
    ld [hl], l
    db $10

jr_031_6244:
    ld bc, $95b4
    xor h
    adc l

jr_031_6249:
    sbc h
    ldh a, [c]
    dec d
    jr nz, @-$4a

    adc c
    inc b
    ret nz

    ld [$7f7e], sp
    ld a, h
    ld a, a
    dec d
    ld a, b
    ld l, $00
    rst RST_00
    ld a, $00
    ld bc, $20d6
    dec bc
    add hl, bc
    ld de, $8006
    jr nz, jr_031_626b

    pop de
    inc hl
    dec hl
    rrca

jr_031_626b:
    push af
    ld hl, $3709
    db $d3
    jr nz, jr_031_62c2

    inc b
    ld d, a
    inc l
    cp h
    nop
    ret


    db $10
    ld [hl], a
    ld h, e
    ld h, b
    inc b
    db $dd
    ld l, h
    nop
    ld l, c
    ld [bc], a
    add b
    db $e4
    add hl, bc
    db $ec
    ld [bc], a
    push af
    ld [$0110], sp
    ld [hl], d
    inc b
    db $e3
    ld [bc], a
    ld a, h
    ld [bc], a

jr_031_6291:
    add l
    cp e
    call nc, $8405
    nop
    add l
    db $f4
    push de
    xor d
    ld a, [bc]
    ld b, a
    ld a, l
    ld e, a
    add hl, hl
    ld [hl-], a
    ld b, a
    ld b, e
    call nz, $dc85
    ld [hl], e
    ld [hl-], a
    inc bc
    call nz, Call_031_7ac5
    ccf
    ld a, [hl+]
    ld hl, $08e4
    ld [hl], c
    ld [bc], a
    db $f4
    ld [$3237], sp
    jr jr_031_6249

    inc sp
    add d
    nop
    sbc c
    inc a
    ld [hl], a
    ld h, e
    ld a, [de]
    db $10

jr_031_62c2:
    dec de
    db $10
    or $2d
    ld [hl], a
    call nz, $f485
    dec [hl]
    ld de, $ec8d
    call Call_000_3b9a
    nop
    jr z, jr_031_6305

    cp h
    ld bc, $3a30
    ld l, l
    ld bc, $36b7
    ld e, d
    jr jr_031_6306

    ld b, [hl]
    ld e, [hl]
    jr nc, @-$7e

    dec [hl]
    ld c, b
    ld a, h
    ld bc, $1390
    sub $3f
    jr z, jr_031_631f

    adc l
    rla
    sub a
    inc a
    ld d, c
    dec d
    ld d, c
    xor b
    ld e, $45
    cp d
    ld a, [de]
    ld h, d
    ld e, h
    nop
    xor e
    inc sp
    ld sp, $e82d
    push af
    ld bc, $2f45

jr_031_6305:
    ld d, a

jr_031_6306:
    dec h
    ld [hl], a
    ld h, b
    dec hl
    db $fc
    db $dd
    call nz, $857f
    db $ec
    dec c
    db $ec
    dec c
    xor h
    adc l
    jr jr_031_6343

    adc l
    ld b, [hl]
    ld d, [hl]
    inc bc
    ld l, a
    ld h, e
    ret nc

    ld c, a

jr_031_631f:
    ldh [c], a
    ld c, e
    ld [hl], b
    inc sp
    db $ec
    cp l
    adc l
    ld a, b
    dec sp
    ld e, e
    ld d, e
    ld d, a
    ld b, e
    adc d
    jr nz, jr_031_6370

    pop af
    ld e, e
    xor a
    ld sp, $2f93
    and l
    daa
    db $dd
    or h
    add l
    xor h
    db $dd
    dec b
    or h
    jr nz, @-$71

    or h
    sub l
    xor d

jr_031_6343:
    inc b
    ld a, [hl]
    nop
    ld e, a
    cp l
    nop
    db $db
    nop
    rst RST_20
    sub [hl]
    ld d, b
    db $db
    sub d
    ld d, b
    ld bc, $907e
    ld e, a
    and d
    ld e, a
    or h
    ld e, a
    add $5f
    ret c

    ld e, a
    ld [$fc5f], a
    ld e, a
    nop
    ld c, $6f
    rst RST_38
    rst RST_38
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

jr_031_6370:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_031_66d1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_031_6895:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_031_6aa8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_031_7030:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_031_7ac5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_031_7bc1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
