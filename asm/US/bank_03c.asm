; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

    jr nz, jr_03c_4042

    add b
    ld b, [hl]
    add c
    ld b, [hl]
    ld c, $4e
    ld c, l
    ld d, c
    ld d, $57
    ld a, [hl-]
    ld d, a
    sub $5d
    rst RST_10
    ld e, l
    rrca
    ld h, d
    db $10
    ld h, d
    dec bc
    ld h, [hl]
    inc c
    ld h, [hl]
    ld c, [hl]
    ld l, e
    ld c, a
    ld l, e
    ld e, d
    ld [hl], b
    ld de, $1d00
    ld [hl], b
    ld a, [hl-]
    dec a
    ld a, $7e
    ld l, a
    ld d, e
    ld h, l
    ld d, e
    ld [$1c08], sp
    sbc d
    ld c, a
    xor a
    ld d, e
    sbc l
    ld d, l

jr_03c_4035:
    cp e
    ld [hl], l
    ldh [$ffe0], a
    and b
    ret nz

    ldh [$ff3f], a
    cp a
    sbc a
    cp a
    sbc a

Jump_03c_4041:
    rst RST_08

jr_03c_4042:
    sub a
    rlc d
    add l
    ld a, [bc]
    add [hl]
    ld c, h
    xor b
    ld e, b
    or b
    add b
    ld b, b
    and b
    ld b, b
    ldh [$ff60], a
    ldh [rSVBK], a
    nop
    nop
    rra
    db $e3
    ld [hl], a
    ld hl, sp+$1d
    nop
    inc bc
    rst RST_38
    db $fc
    db $fc
    inc bc
    dec e
    nop
    inc b
    ld hl, sp-$09
    ei
    rrca
    nop
    ld b, $1d
    nop
    ld [bc], a
    ret nz

    db $38, $86
    ld [hl], b
    add d
    dec sp
    ld c, $03
    dec e
    nop
    ld [bc], a
    ret nz

    nop
    nop
    ret nz

    ldh a, [$ffd8]
    ld l, h
    ld [hl-], a
    add hl, de
    rst RST_20
    rst RST_20
    ld a, c
    add hl, sp
    or c
    dec e
    or l
    ld [bc], a
    ld e, a
    dec de
    sbc a
    adc l
    rrca
    dec bc
    daa
    ld b, d
    cp $d8
    ld h, b
    db $fc
    xor b
    ei
    ld e, [hl]
    ld [hl], a
    inc l
    nop
    nop
    ld a, a
    ccf
    rst RST_38
    nop
    add e
    ld h, c
    ld [hl], b
    ld h, b
    jr nc, jr_03c_4035

    ret nz

    pop hl

Call_03c_40a8:
    pop de
    cp e
    push de
    ld h, a
    ld [hl], e
    pop bc
    nop
    inc l
    xor e
    ret nz

    and b
    ret nz

    pop hl
    di
    rlca
    nop
    pop af
    rst RST_00
    db $e3
    rst RST_00
    pop hl
    ret nz

    ld sp, $fe7e
    ldh a, [$fff8]
    rst RST_38
    ld a, [hl]
    nop
    ldh a, [$ff60]
    ldh a, [$ffe4]
    ldh [$ffd0], a
    ld [hl+], a
    jr nc, jr_03c_40ec

    ld d, b
    ld [bc], a
    dec e
    nop
    ld [bc], a
    rrca
    ld b, b
    rrca
    ld h, b
    dec e
    nop
    ld [bc], a
    ld a, a
    ccf
    nop
    add b
    dec e
    nop
    inc bc
    ret nz

    pop bc
    ld b, $1f
    nop
    nop
    ld b, $00
    nop
    ret nz

jr_03c_40ec:
    ld c, b
    add hl, bc
    ld h, c
    ld b, $50
    or h
    dec l
    dec bc
    ld [bc], a
    nop
    ld b, b
    ret z

    dec b
    ld [bc], a
    ld bc, $a040
    ld l, b
    ld d, h

jr_03c_40ff:
    ld a, [bc]
    add b
    ret nz

    ld h, b
    or b
    ld e, b
    jr z, jr_03c_411d

    dec bc
    add c
    ld c, a
    ld a, [hl-]
    add l
    ld d, d
    ret z

    and [hl]
    pop af
    call z, Call_000_348c
    dec d
    ld de, $7a59

jr_03c_4117:
    ld [$fcfe], a
    ldh a, [$ffc0]
    ld [bc], a

jr_03c_411d:
    inc b
    ld a, [de]
    ld a, a
    ld h, c
    and c
    ret nc

    ld h, h
    cp b
    ld e, a
    and l
    ld [hl], b
    dec hl
    xor e
    db $eb
    ld a, e
    adc a
    daa
    rst RST_38
    nop
    ld sp, hl
    ret nc

    and b
    ret nz

    ld a, a
    rst RST_38
    rst RST_38
    nop
    db $fd
    and d
    dec b
    ld e, a
    db $fc
    rst RST_38
    rst RST_38
    inc a
    ldh [$fff0], a
    jp nz, Jump_000_388a

    ld sp, hl
    rst RST_00
    dec a
    ld [hl], b
    jr nz, jr_03c_414b

jr_03c_414b:
    ld d, h
    ld [$e381], sp
    jp Boot


    ld c, $70
    add a
    jr nc, jr_03c_4117

    inc bc
    ccf
    ret nz

    rrca
    ld [hl], b
    nop
    rlca
    jr c, jr_03c_40ff

    ld hl, sp-$08
    rrca
    ld c, $00
    rst RST_38
    nop
    rst RST_38
    nop
    ret nz

    call z, Call_03c_673d

jr_03c_416d:
    inc b
    ldh [rNR32], a
    or h
    dec l
    dec bc
    add c
    and c
    add sp, -$48
    ld e, l
    dec b
    inc b
    ld b, d
    and c
    ld h, b
    jr nc, jr_03c_4199

    inc c
    inc b
    add e
    ld bc, $9700
    ld c, e
    ld hl, $7314
    add hl, de
    ld bc, $0485
    ld b, b
    ld [bc], a
    ld [hl+], a
    inc hl
    pop hl
    ld [hl], h
    jp nz, $e5ef

    sub [hl]
    xor $fc

jr_03c_4199:
    ldh a, [$ffc0]
    dec e
    nop
    inc b
    ld a, [hl-]
    sbc l
    and $3f
    rst RST_00
    inc d
    ld b, [hl]
    ld b, c
    rst RST_38
    ld a, a
    ld e, a
    dec bc
    ret nz

    jr z, jr_03c_416d

    cp $1d
    rst RST_38
    inc bc
    cp a
    nop
    nop
    ld a, a
    dec e
    rst RST_38
    inc bc
    ldh a, [$ff03]
    ld e, b
    or l
    ld hl, sp-$0d
    call z, Call_03c_7cb3
    add [hl]
    ld l, b
    add h
    adc a
    ccf
    ld [hl], c
    adc h
    ld sp, $0280
    or a
    dec c
    ld l, $ba
    ret z

    ld hl, $1786
    ld e, [hl]
    rst RST_28
    ldh a, [$ff03]
    inc e
    rst RST_08
    ld a, b
    ret c

    call nz, Call_000_00ff
    rst RST_38
    cp $ff
    inc bc
    cp $7f
    or e
    ld h, a
    adc l
    ld a, e
    ldh [c], a
    db $fc
    ld a, a
    adc a
    rla
    ld h, a
    jp nc, $de74

    xor [hl]
    scf
    db $eb
    ld b, $83
    db $d3
    ld l, b
    ld sp, $0c1a
    sbc a
    ld [bc], a

Jump_03c_41fd:
    adc b
    add b
    ldh [$ffc2], a
    ldh [$ff39], a
    ld d, b
    add b
    sub c
    ld de, $4850
    ld [$a808], sp
    cp b
    db $f4
    ld [hl], b
    xor c
    jp nc, $a244

    ld c, [hl]
    nop
    nop
    ld [$0814], sp
    inc d
    jr c, jr_03c_4258

    call z, $b080
    db $e4
    ret nc

    rst RST_18
    rst RST_18
    ld d, a
    nop
    nop
    rrca
    nop
    nop
    ld b, h
    ld h, [hl]
    adc h
    nop
    nop
    and e
    ld [hl], $1c
    ld h, $6a
    call c, RST_00
    ld [hl], b
    nop
    nop
    ld a, [bc]
    dec de
    ld l, h
    ld bc, $0003
    jr jr_03c_4250

    inc [hl]
    jr c, jr_03c_42b6

    jp Jump_000_2ff5


    rst RST_10
    dec l
    inc de
    ld d, $28
    ld [hl], d
    reti


    db $e4
    add a

jr_03c_4250:
    cpl
    ld e, l
    db $fd
    ld l, l
    inc hl
    rra
    ei
    db $dd

jr_03c_4258:
    ld l, a
    ccf
    ld a, a
    dec e
    rst RST_38
    ld [bc], a
    add a
    dec e
    rst RST_38
    inc c
    db $fd
    cp $1d
    rst RST_38
    dec b
    rst RST_20
    db $e3
    ld a, a
    dec sp
    cp b
    db $dd
    rst RST_18
    xor $bc
    ld [$84de], sp
    rst RST_20
    rst RST_08
    ldh a, [c]
    ld h, d
    and h
    and h
    inc c
    inc c
    ld c, h
    ld c, h
    call z, $9dcc
    ld a, [hl-]
    ld [hl], h
    add sp, -$2f
    and e
    ld b, a
    add [hl]
    nop
    nop
    inc b
    ld a, [hl+]
    dec d
    ld l, $5d
    cp [hl]
    daa
    rrca
    ld [$0500], sp
    dec bc
    dec bc
    dec c
    inc b

Jump_03c_4298:
    rst RST_38
    nop
    nop
    dec e
    ld hl, sp+$02
    ldh a, [$ff2c]
    xor d
    cp d
    jp c, Jump_03c_5a5a

    dec de
    add hl, de
    rrca
    inc bc
    ld l, a
    ret nc

    rst RST_20
    db $d3
    push hl
    db $eb
    push af
    xor c
    inc d
    ld a, [$fafd]
    ld sp, hl

jr_03c_42b6:
    ld a, [$535a]
    scf
    rst RST_00
    xor [hl]
    sub $da
    ldh [c], a
    db $eb
    sub a
    cp [hl]
    ld a, [hl]
    cp l
    ld a, e
    rst RST_30
    rst RST_18
    rst RST_28
    cp a
    ld a, a
    dec e
    rst RST_38
    inc b
    ld d, c
    db $ec
    ret nc

    ld hl, sp+$70
    db $e4
    ld c, [hl]
    adc a
    pop de
    rst RST_30
    ld [hl], a
    inc de
    ld a, [de]
    inc c
    ld b, a
    add c
    db $10
    add e
    ret


    inc bc
    add hl, hl
    sbc b
    cp $f7
    ld b, b
    adc d
    ldh [$ffe5], a
    db $d3
    xor [hl]
    inc e
    ldh [$ff6c], a
    ld sp, hl
    and e
    add a
    ld c, $3e
    ld a, [hl]
    cp b
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    jr nz, @+$32

    ld a, h
    ld hl, $0844
    db $10
    ld b, d
    ld [$791c], sp
    and h
    and h
    inc c
    inc c
    ld c, h
    ld c, h
    call z, $a4cc
    and [hl]
    and e
    ld hl, $c081
    ret nz

    add b
    ld bc, $5c06
    ld a, [$d070]
    di
    ld h, a
    dec a
    ld a, l
    jr jr_03c_4321

jr_03c_4321:
    ld b, e
    dec d
    ret c

    rst RST_30
    ld [hl], c
    ld a, [hl-]
    add hl, sp
    adc $03
    ld bc, $4000
    ld [hl], d
    and h
    jr jr_03c_4358

    call $d6de
    call nc, $f4b6
    and h
    cp h
    sbc b
    add b
    add b
    nop
    xor a
    rst RST_18
    ld a, a
    dec sp
    ld a, a
    rst RST_30
    rst RST_20
    rst RST_28
    or l
    or c
    or e
    or e
    di
    di
    rst RST_30
    or $1b
    ld a, [bc]
    inc [hl]
    add sp, -$30
    and b
    ld b, b
    add b
    jr z, jr_03c_435b

    ld [de], a

jr_03c_4358:
    add hl, bc
    nop
    nop

jr_03c_435b:
    add c
    ld b, b
    nop
    dec bc
    inc b
    ld c, c
    nop
    adc c
    ld b, b
    ld [de], a
    inc bc
    ld d, l
    xor d
    ld e, a
    rst RST_38
    and d
    ld [$7440], sp
    db $eb
    ld d, a
    ld a, l
    adc b
    ld [hl+], a
    nop
    nop
    rst RST_38
    ld d, h
    xor b
    ld bc, $0024
    db $10
    add b
    ld a, b
    inc e
    ld [bc], a
    add [hl]
    rst RST_30
    call $f17f
    and [hl]
    adc a
    xor h
    dec d
    ld c, e
    dec de
    ld c, d
    ld b, [hl]
    dec e
    nop
    inc bc
    db $10
    inc l
    ld a, [de]
    inc l
    dec e
    nop
    rlca
    ld a, [bc]
    inc b
    ld a, [bc]
    rra
    rra
    ld e, a
    ccf
    rra
    dec e
    nop
    add hl, bc
    ld bc, $0301
    rlca
    rlca
    rrca
    dec e
    nop
    ld [bc], a
    add b
    nop
    add b
    nop
    add b
    dec e
    nop
    ld [bc], a
    rra
    ld hl, sp+$1d
    nop
    dec b
    rst RST_38
    inc bc
    dec e
    nop
    ld b, $f8
    rlca
    nop
    nop
    ld b, $1d
    nop
    inc bc
    ret nz

    ld a, b
    rrca
    add d
    dec de
    inc c
    inc bc
    dec e
    nop
    dec b
    ld b, b
    db $10
    xor b
    ld d, b
    inc l
    ld d, $73
    ld [hl], e
    di
    di
    dec e
    ei
    inc bc
    add b
    add b
    dec e
    nop
    ld [$0703], sp
    nop
    nop
    ld [$001a], sp
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    ld a, h
    ld e, $0f
    rra
    rrca
    dec e
    nop
    dec b
    add b
    add b
    nop
    nop
    jp Jump_000_3f47


    ld e, a
    ccf
    ld e, $0c
    nop
    rst RST_38
    rst RST_38
    dec e
    nop
    inc b
    ld c, $ff
    rst RST_38
    rrca
    rlca
    dec e
    nop
    inc bc
    add b
    dec e
    nop
    dec b
    dec e
    jr nz, jr_03c_4417

    dec e
    nop

jr_03c_4417:
    inc bc
    ccf
    ldh a, [$ff80]
    dec e

jr_03c_441c:
    nop
    inc bc
    rst RST_38
    rst RST_38
    dec e
    nop
    dec b
    cp $ff
    dec e
    nop
    ld [bc], a
    ld bc, $001d
    ld [bc], a
    ldh a, [$fffe]
    rra
    ld bc, $78e0
    ld e, $07
    ld bc, $8000
    ldh a, [$ff03]
    ld bc, $8000
    ret nz

    ldh a, [$ff38]
    inc e
    nop
    add b
    ret nz

    ld h, b

jr_03c_4444:
    jr nc, jr_03c_4462

    inc c
    ld b, $01
    adc a
    jp c, Jump_000_2265

    ldh a, [$ff9a]
    db $ed
    dec e
    sbc b
    ld [bc], a
    cp b
    cp b
    or b
    or c
    ld sp, $5cbe
    jr nc, jr_03c_441c

    ld [bc], a
    inc b
    ld a, [de]
    ld l, a
    dec e
    nop

jr_03c_4462:
    inc bc
    ld b, b
    jr nz, jr_03c_4480

    rrca
    rst RST_00
    ld b, a
    rlca
    rlca
    dec e
    nop
    ld [bc], a
    dec e
    rst RST_38
    inc b
    add b
    nop
    nop
    rst RST_38
    cp $fd
    ld a, [$1da0]
    nop
    ld [bc], a
    rst RST_38
    dec e
    nop
    dec b

jr_03c_4480:
    jr c, jr_03c_4444

    dec e
    nop
    add hl, bc
    ld bc, $780f
    ret nz

    dec e
    nop
    ld [bc], a
    ccf
    ldh a, [$ff80]
    nop
    nop
    rlca
    ld a, a
    nop
    rst RST_38
    rst RST_38
    ld bc, $0000
    rst RST_38
    rst RST_38
    nop
    nop
    ldh a, [$fffe]
    rra
    inc bc
    nop
    ldh [$ff78], a
    ld e, $07
    inc bc
    ret nz

    ldh a, [$ff7c]
    ld a, $0e
    inc bc
    add c
    ret nz

    ldh a, [$ff78]
    inc a
    ld e, $03
    nop
    ret nz

    ldh [$ff67], a
    inc sp
    add hl, de
    ld [$177d], sp
    ld b, $02
    add e
    add e
    pop bc
    pop bc
    ld [hl], c
    ld [hl], e
    db $e3
    rst RST_20
    add $ce
    call z, $949c
    jr nc, @-$3e

    dec e
    nop
    inc b
    rlca
    inc bc
    ld bc, $3840
    adc a
    add c
    add b
    dec e
    rst RST_38
    inc bc
    ccf
    rst RST_10
    rst RST_38
    rrca
    dec e
    rst RST_38
    inc c
    db $fc
    and a
    cp $ff
    db $fc
    ldh a, [$ffc0]
    add e
    ld a, a
    ldh a, [rNR33]
    nop
    ld [bc], a
    ld c, $70
    ret nz

    dec e
    nop
    ld [bc], a
    inc bc
    rra
    ld a, h
    ldh a, [$ffc0]
    ld bc, $3f0f
    ldh a, [rP1]
    nop
    inc bc
    ccf
    rst RST_38
    ldh [$ff03], a
    dec e
    nop
    ld [bc], a
    dec e
    rst RST_38
    ld [bc], a
    ld bc, $7cff
    rra
    inc bc
    add b
    db $fc
    dec e
    rst RST_38
    ld [bc], a
    rrca
    add e
    pop hl
    ld hl, sp+$3c
    rra
    rst RST_08
    rst RST_30
    adc a
    rst RST_00
    pop hl
    pop af
    ld a, b
    inc a
    sbc [hl]
    adc $0c
    ld b, $c7

jr_03c_4529:
    jp Jump_03c_71e1


    ld [hl], b
    jr c, jr_03c_4590

    ld h, b
    ld h, b
    jr nz, jr_03c_4550

    jr nc, jr_03c_4537

    db $10
    inc e

jr_03c_4537:
    jr c, jr_03c_4571

    ld [hl], b
    ld h, c
    db $e3
    rst RST_00
    add a
    dec e
    nop
    rlca
    or b
    dec e
    ret nz

    ld [bc], a
    add sp, -$1d
    db $eb
    db $ec
    dec e
    nop
    dec b
    inc h
    dec e
    nop
    dec b

jr_03c_4550:
    jr @+$1e

    ld a, $1d
    nop
    dec b
    add hl, bc
    dec e
    nop
    ld [bc], a
    ld bc, $0000
    inc sp
    scf
    rrca
    nop
    ld [bc], a
    jp nz, $c222

    db $e4
    ldh [$ffc4], a
    db $fc
    ldh [$ff83], a
    rrca
    rra
    ld a, $78
    di

jr_03c_4570:
    rra

jr_03c_4571:
    rst RST_38
    db $fc
    db $e3
    sbc a
    ld a, a
    dec e
    rst RST_38
    inc bc
    ld a, a
    dec e
    rst RST_38
    inc c
    ei
    db $fd
    cp $1d
    rst RST_38
    inc b
    rst RST_28
    rst RST_30
    di
    ld sp, hl
    db $fd
    cp $fe
    rst RST_38
    jr jr_03c_4529

    adc h
    adc $ce

jr_03c_4590:
    and $e7
    rst RST_30
    jr jr_03c_45ad

    dec e
    sbc b
    dec b
    ld c, $1c
    jr c, @+$72

    ldh [$ffc1], a
    add e
    rrca
    dec e
    nop
    rlca
    ld b, b
    ld h, b
    ld h, a
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    ld h, e
    ld hl, sp+$00

jr_03c_45ad:
    dec e
    rst RST_38
    dec b
    jr jr_03c_45ce

    inc e
    inc a
    cp h
    cp h
    db $fc
    cp $00
    nop
    db $10
    cpl
    rra
    cpl
    rra
    rla
    ld a, [bc]
    ld a, [hl]
    rst RST_38
    rst RST_38
    cp $ff
    cp $fc
    add h
    adc h
    adc b
    ld [$0800], sp

jr_03c_45ce:
    inc c
    inc e
    rst RST_00
    rst RST_08
    rra
    dec a

Call_03c_45d4:
    ld a, e
    rst RST_30
    rst RST_28
    rst RST_28
    dec e
    rst RST_38
    rlca
    ld d, c
    db $ec
    ld d, b
    jr z, jr_03c_4570

    inc h
    adc $0b
    ld l, $0b
    ld c, $0f
    dec b
    inc bc
    nop
    nop
    rst RST_28
    db $fd
    or a
    rst RST_38
    rst RST_10
    ld h, a
    ld bc, $bf00
    push af
    rst RST_38
    ld a, d
    db $ec
    ldh a, [$ffe0]
    nop
    sub b
    dec e
    nop
    ld [bc], a
    dec e
    ld bc, $0702
    dec e
    nop
    ld [bc], a
    add b
    add b
    ret nz

    ret nz

    add b
    ld e, $38
    ldh a, [$ffe0]
    add d
    ld [$691c], sp
    jr jr_03c_462d

    dec e
    sbc b
    dec b
    ld b, e
    ld b, c
    ld b, b
    ret nz

    ret nz

    add b
    add b
    nop
    cp $f8
    and d
    dec b
    ld c, $0b
    rrca
    ld e, $7e
    rst RST_38
    ld a, a
    sbc h
    and b

jr_03c_462d:
    ldh [c], a
    and a
    inc c
    rrca
    add a
    rlca
    ld sp, $baec
    rst RST_28
    cp e
    db $fc
    ld hl, sp-$20
    ret nz

    dec e
    nop
    ld [bc], a
    ld a, [bc]
    dec e
    jr jr_03c_4645

    dec e
    nop

jr_03c_4645:
    inc b
    rst RST_18
    cp a
    cp a
    dec e
    ld a, a
    ld [bc], a
    rst RST_38
    rst RST_38
    ei
    dec e
    rst RST_38
    ld b, $04
    inc a
    ld a, b
    ld [hl], b
    ldh [$ffc0], a
    add b
    nop
    db $10
    jr jr_03c_4669

    ld b, $07
    inc bc
    nop
    add b
    dec e
    nop
    add hl, bc
    ld bc, $001d
    inc b

jr_03c_4669:
    dec bc
    inc d
    xor b
    add b
    dec e
    nop
    dec bc
    dec b
    inc bc
    ld bc, $e0f9
    nop
    nop
    ld b, $df
    ld a, [$fadf]
    cp h
    db $ec
    cp h
    cp b
    rst RST_38
    ld de, $0a00
    add b
    ld a, [bc]
    nop
    rlca
    ld a, [bc]
    rst RST_38
    rlca
    ld a, [bc]
    ret nz

    ld b, $b8
    ld a, [bc]
    nop
    ld [bc], a
    ld a, [bc]
    ld bc, $0302
    inc bc
    ld a, [bc]
    rst RST_38
    ld [bc], a
    ei
    ld sp, hl
    push de
    ldh a, [c]
    db $fd
    rrca
    ldh a, [$ff7e]
    rst RST_18
    rst RST_38
    ld a, [hl]
    cp h
    ld l, $00
    nop
    ldh [$fffe], a
    rst RST_38
    ld a, a
    sbc a
    ld l, a
    ld a, [bc]
    nop
    inc bc
    ret nz

    db $fc
    rst RST_38
    rst RST_38
    ld a, [bc]
    nop
    ld b, $80
    ld a, [bc]
    nop
    inc bc
    inc bc
    rrca
    inc a
    ld [hl], b
    ld a, [bc]
    nop
    inc bc
    rst RST_38
    rst RST_38
    ld a, [bc]
    nop
    ld b, $c0
    ldh a, [$ff38]
    rst RST_38
    cp $fd
    db $fd
    di
    ld [$bada], a
    inc a
    ld h, b
    ret nz

    add b
    ld a, [bc]
    nop
    dec bc
    ld [hl], b
    jr jr_03c_46ea

    inc b
    ld [bc], a
    ld a, [bc]
    nop
    ld b, $c0
    ldh a, [$ffb0]
    cp a
    cp d
    ld a, d
    ld a, d

jr_03c_46ea:
    ld [hl], e
    pop hl
    pop bc
    ret nz

    add b
    ld a, [bc]
    nop
    inc b
    add b
    ret nz

    ld h, b
    ld a, [bc]
    nop
    ld b, $03
    ld a, [bc]
    ld h, b
    ld [bc], a
    jr nc, jr_03c_472e

    ld [hl], b
    db $10
    add b
    add c
    add b
    add b
    ld b, c
    ld b, d
    ld b, a
    inc hl
    and c
    jr c, jr_03c_4749

    cp a
    ld c, a
    or e
    ld c, e
    or c
    call z, RST_00
    add b
    ld a, [bc]
    rst RST_38
    inc bc
    ld a, h
    ld bc, $3c0e
    db $fc
    ld hl, sp-$1d
    add a
    rra
    nop
    ldh [rNR10], a
    ret nc

    ret nz

    nop
    ret nz

    ret nz

    rst RST_18
    rra
    ld l, a
    rst RST_30
    ld e, c
    xor d

jr_03c_472e:
    push af
    rrca
    rst RST_30
    ld a, e
    ld a, l
    rra
    add b
    ld h, b
    inc e
    and e
    add b
    ldh a, [rIE]
    rst RST_38

Jump_03c_473c:
    rrca
    inc bc
    ld bc, $7ffe
    rst RST_38
    rst RST_38
    cp $f8
    pop bc
    pop bc
    inc e
    ld b, b

jr_03c_4749:
    ld b, b
    add b
    nop
    ld b, b
    add b
    ld b, b
    nop
    ld a, [bc]
    rlca
    ld [bc], a
    rrca
    rrca
    rra
    rra
    ccf
    ld hl, sp-$22
    ei
    cp a
    ld d, a
    ld [$fffd], a
    ld a, [$fddc]
    di
    ei
    rst RST_30
    ld e, h
    xor e
    xor a
    rst RST_08
    rst RST_20
    rst RST_30
    call z, $1358
    rst RST_38
    cp a
    ccf
    ld e, a
    ld e, [hl]
    sbc h
    ld c, [hl]
    inc e
    sbc l
    rst RST_38
    rst RST_38
    cp a
    inc sp
    ld [hl], a
    rst RST_28
    rst RST_00
    rst RST_08
    nop
    ldh a, [$ff0a]
    rst RST_38
    inc bc
    sbc $9e
    ld a, [bc]
    nop
    ld [bc], a
    ldh [$ff0a], a
    rst RST_38
    inc bc
    ld a, [bc]
    nop
    dec b
    ld bc, $3f01
    ccf
    ld a, a
    ld a, a
    rst RST_38
    cp $ff
    ld a, [$3fff]
    ld b, c
    pop hl
    rra
    add a
    bit 7, a
    push af
    cp $ff
    rrca
    ld l, $68
    ldh a, [$fff2]
    ld e, a
    xor e
    push de
    cp $0a
    rst RST_38
    ld [bc], a
    ld b, a
    call z, Call_03c_7bc0
    xor a
    push de
    ld a, [$ffff]
    rst RST_28
    rst RST_18
    rst RST_08
    jp c, $af7e

    ld d, l
    ld a, [$d79b]
    rst RST_28
    adc $df
    rst RST_28
    rst RST_38
    cp a
    cp $e6
    ld e, [hl]
    sbc a
    db $eb
    sbc a
    rst RST_38
    cp $01
    inc bc
    inc bc
    rlca
    rlca
    ld a, [bc]
    rrca
    ld [bc], a
    db $fd
    rst RST_38
    ldh a, [c]
    push af
    rst RST_38
    jp $f8c0


    ld e, a
    xor a
    rst RST_38
    ld a, $5d
    cp $7f
    ld a, b
    ldh a, [c]
    db $f4
    ldh [$ff98], a
    ld d, e

jr_03c_47f0:
    cp h
    jp c, Jump_000_08fd

    ret nc

    adc h
    add [hl]
    sub h
    ld l, h
    xor h
    ld d, e
    call nc, $4c15
    rrca
    ld a, a
    rra
    rra
    ccf
    ld a, [bc]
    rst RST_38
    ld [bc], a
    jp $c9c8


    adc c
    sbc $55
    ld [$0afd], a
    ccf
    ld [bc], a
    ld a, a
    dec hl
    db $fd
    cp l
    ld d, a
    ld [$fefd], a
    rst RST_38
    rst RST_38
    rra
    rra
    ccf
    ccf
    ld a, [bc]
    ld a, a
    ld [bc], a
    rst RST_38
    add a
    and b
    ldh a, [$ff1f]
    inc bc
    jp Jump_000_0f3f


    pop af
    rst RST_38
    di
    add sp, $0a
    rst RST_38
    inc bc
    ld c, a
    dec h
    ldh [c], a
    cp [hl]
    ld d, e
    call $fffe
    xor h
    db $f4
    ccf
    and a
    pop de
    ld hl, sp+$1f
    xor e
    ld a, a
    res 4, l
    ld a, [$7fff]
    ld a, a
    rst RST_38
    adc h
    add d
    ld b, d
    and [hl]
    ld e, e
    or l
    ld a, [$41ff]
    ret nz

    inc d
    ld a, [de]
    jp nz, $df34

    ld a, [hl+]
    rrca
    add hl, bc
    reti


    nop
    jr jr_03c_47f0

    and c
    ld [hl], e
    rst RST_38
    rst RST_38
    rra
    add a
    adc [hl]
    and a
    ld e, $1e
    db $f4
    cp $7f
    scf
    rrca
    daa
    nop
    inc bc
    nop
    xor b
    push de
    ld a, [$ff0a]
    ld [bc], a
    rlca
    ld bc, $7120
    xor a
    push de
    ld a, [$ffff]
    ld bc, $0f03
    rst RST_38
    rst RST_38
    xor a
    ld d, a
    ld [$f5ff], a
    ld a, [$e5fe]
    ldh [c], a
    db $fd
    xor a
    rst RST_00
    rst RST_38
    cp a
    ld e, a
    rst RST_38
    cp a
    ccf
    ld a, [bc]
    rst RST_38
    ld [bc], a
    db $fc
    ld a, [bc]
    ld hl, sp+$02
    rra
    add e
    rst RST_38
    rst RST_38
    rrca
    rlca
    inc bc
    ld bc, $c301
    ldh a, [c]
    ld a, [bc]
    rst RST_38
    rlca
    ld hl, sp-$08
    db $fc
    ldh [c], a
    call nz, $87c1
    rst RST_38
    rst RST_38
    ccf
    add hl, sp
    ld [hl], b
    ld hl, sp-$02
    cp a
    push de
    ld a, [bc]
    rst RST_38
    inc bc
    rrca
    ld bc, $7780
    sub d
    db $ed
    or $0a
    rst RST_38
    ld [bc], a
    ld a, a
    inc l
    ld e, $be
    ld h, a
    sub l
    cp $fd
    rst RST_38
    sbc d
    nop
    add b
    and b
    ld b, h
    xor b
    ld e, a
    or l
    inc bc
    dec de
    ret nz

    nop
    ld b, $30
    adc b
    sbc h
    rst RST_38
    rst RST_38
    db $db
    inc bc
    adc c
    ld b, c
    adc a
    add e
    db $fd
    ei
    or $f4
    db $ec
    ret c

    ret nc

    or b
    sub h
    ldh a, [c]
    rrca
    ld bc, $3fe1
    ld b, a
    sub a
    ld a, [bc]
    rst RST_38
    rlca
    ldh a, [$ffce]
    pop bc
    adc b
    cp l
    dec sp
    ld [hl], e
    add hl, sp
    rst RST_38
    inc c
    add b
    ld a, h
    rlca
    ld a, [bc]
    adc a
    ld [bc], a
    rst RST_38
    rst RST_38
    ld a, a
    ld a, [bc]
    rst RST_38
    inc b

jr_03c_4915:
    cp [hl]
    ld sp, hl
    and $ed
    xor $f3
    db $fc
    cp $5f
    sbc $1e
    db $fd
    ld a, b
    dec a
    daa
    cp b
    ldh [$ff7d], a
    rst RST_00
    sbc c
    call $fb76
    ld a, c
    rst RST_38
    ld hl, sp-$04
    ld hl, sp-$0c
    add sp, $74
    ld l, b
    rst RST_38
    rst RST_38
    ld a, a
    ccf
    ccf
    ld a, [bc]
    ld a, a
    ld [bc], a
    ld a, [$cfdf]
    jp $fef4


    rla
    db $e4
    ld l, e
    sub l
    ld [$1fff], a
    ld h, e
    add $79
    add e
    rst RST_00
    ld l, a
    sub l
    ldh a, [c]
    db $fd
    rst RST_38
    ld l, a
    and c
    or e
    db $d3
    reti


    db $ec
    db $f4
    or $fb
    rra
    ld d, c
    ld h, e
    add c
    jr c, jr_03c_4969

    ld e, l
    and a
    rst RST_38
    ld sp, hl
    ld hl, sp-$02

jr_03c_4969:
    ccf
    rlca
    ret nz

    jr c, jr_03c_4915

    ret c

    ld c, h
    ld [hl], e
    inc a
    cp b
    ld a, [hl]
    rrca
    rra
    ccf
    ld a, [bc]
    rst RST_38
    inc b
    ld a, [$f5ff]
    ld a, [$c3ff]
    db $ed
    ld hl, sp-$41
    cp $ff
    ld e, a
    xor e
    sub $7d
    xor a
    ld de, $7fbf
    ld a, [bc]
    rst RST_38
    ld [bc], a
    ld c, a
    and h
    db $eb
    dec c
    cp $e6
    call c, $ffc1
    rst RST_38
    ld e, a
    or h
    and e
    ld [hl], c
    and c
    ld hl, $ffe3
    rst RST_38
    cp $ff
    rst RST_38
    db $fd
    ld sp, hl
    cp $fb
    ldh a, [c]
    ld a, d
    ld e, a
    add c
    db $fc
    ld a, a
    or a
    add c
    cp $8f
    ld d, l
    ld [$af3d], a
    jp nz, $1ef8

    add l
    jp hl


    cp e
    rrca
    set 6, a
    cp a
    rra
    ld hl, sp-$08
    ld sp, hl
    ei
    di
    di
    rst RST_30
    rst RST_20
    db $fd
    dec sp
    sbc a
    ld h, c
    ld a, [de]
    inc c
    ld [bc], a
    ld bc, $5c67
    call Call_03c_7cf1
    rla
    sbc b
    ld [hl], l
    ld bc, $cef0
    add hl, sp
    sub h
    ld [$4e7c], a
    push af
    ld a, [hl+]
    inc b
    pop bc
    inc a
    add a
    ld b, b
    xor h
    ld c, e
    push af
    ld a, h
    rrca
    xor h
    dec bc
    ldh a, [$ff8e]
    ld [$a77c], a
    sub e
    ldh a, [$ff9e]
    db $d3
    ld a, $be
    ld c, e
    and l
    ld a, [$2bdf]
    push hl
    cp l
    dec hl
    pop de
    ld a, d
    adc a
    ld d, c
    push hl
    ld a, $17
    rst RST_38
    rst RST_38
    cpl
    rlca
    rst RST_28
    ld a, a
    rra
    sbc a
    db $fd
    cp $f7
    ldh [$fffb], a
    cp [hl]
    set 2, c
    ld a, [hl]
    xor e
    add l
    ld a, [$855f]
    ld [$ab7d], a
    call nc, $ae7b
    ld b, a
    db $eb
    cp [hl]
    ld e, a
    xor a
    rst RST_38
    rra
    sbc a
    rst RST_18
    ld a, a
    cp a
    ld a, a
    rst RST_20
    rst RST_20
    rst RST_08
    adc $cc
    ld a, [bc]
    sbc b
    ld [bc], a
    ld a, a
    cp [hl]
    ld e, a
    ld l, a
    scf
    scf
    dec de
    dec bc
    ld a, [bc]
    rst RST_38
    dec d
    rst RST_00
    add b
    ld a, [bc]
    rst RST_38
    ld [bc], a
    ld a, [bc]
    cp $02
    db $fd
    db $fd
    ccf
    ld [hl], a
    ld [hl], b
    db $f4
    and $ee
    call Call_000_0fc3
    ldh a, [$fffe]
    ccf
    rlca
    adc a
    adc $dc
    rst RST_38
    rst RST_38
    rra
    pop hl
    db $fc
    ld a, a
    rra
    rrca
    ld a, [bc]
    rst RST_38
    inc bc
    ccf
    jp $0af8


    rst RST_38
    ld b, $7f
    rlca
    ld a, [bc]
    rst RST_38
    inc bc
    db $fc
    di
    call z, Call_000_0ab0
    rst RST_38
    inc bc
    nop
    rst RST_38
    nop
    nop
    ld a, [bc]
    rst RST_38
    inc b
    ccf
    rst RST_08
    scf
    rst RST_38
    cp $fc
    db $fc
    ldh a, [$ffe0]
    ret nz

    add b
    ld b, b
    add b
    ld a, [bc]
    nop
    dec c
    dec bc
    dec b
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld bc, $0a03
    rst RST_38
    inc bc
    ccf
    rrca
    rrca
    nop
    and d
    ld b, d
    ld b, d
    ld c, d
    sbc e
    cp e
    cp l
    db $fd
    ld a, [bc]
    nop
    dec b
    add b
    ret nz

    ld a, [bc]
    ld bc, $0204
    ld [bc], a
    inc b
    ld a, [bc]
    nop
    ld [bc], a
    ld b, b
    ld b, b
    nop
    nop
    ld h, b
    db $fc
    cp $fe
    ld a, [hl]
    ld a, a
    ld a, a
    cp a
    ccf
    ldh a, [$ffcc]
    ld b, e
    jr nc, jr_03c_4ad6

    add h
    jp nz, $0af0

    nop
    ld [bc], a
    rst RST_38
    ld a, [bc]
    nop
    inc bc
    ld c, $30

jr_03c_4ad6:
    ret nz

    ld a, [bc]
    nop
    inc b
    ldh a, [rNR10]
    ld a, [bc]
    nop
    inc bc
    jr nz, jr_03c_4b01

    rra
    rst RST_18
    rst RST_28
    rst RST_30
    xor c
    ld d, h
    ld [$f89f], a
    db $fc
    cp $ff
    rst RST_38
    ld a, a
    sbc a
    ld b, e
    ld a, [bc]
    nop
    ld [bc], a
    add b
    ldh a, [$fffc]
    rst RST_38
    cp $0a
    nop
    ld [bc], a
    ld bc, $3806
    ret nz

    nop

jr_03c_4b01:
    ret nz

    rst RST_00
    sbc a
    ld a, a
    ccf
    ccf
    cp a
    rst RST_38
    ld a, [bc]
    ei
    ld [bc], a
    rst RST_30
    rst RST_30
    rst RST_28
    rst RST_28
    rst RST_18
    add a
    pop hl
    db $fc
    ld e, a
    xor e
    push de
    ld a, [$1cff]
    add hl, sp
    add hl, sp
    ld a, e
    pop af
    ld a, b
    xor a
    ld d, l
    rst RST_08
    rst RST_20
    rst RST_30
    and $ee
    inc c
    ld sp, hl
    ei
    rst RST_38
    sbc a
    ld e, $5e
    sbc $1c
    adc h
    call z, $fff0
    ld a, a
    ld l, a
    rst RST_20
    rst RST_20
    rst RST_28
    rst RST_28
    rst RST_38
    rrca
    ldh a, [$fffe]
    rst RST_38
    sbc a
    sbc h
    sbc b
    ld a, [bc]
    rst RST_38
    ld [bc], a
    rra
    ldh [$fffc], a
    cp $fe
    ld a, [bc]
    rst RST_38
    dec b
    cp $fe
    rst RST_18
    rst RST_18
    cp a
    cp a
    ld a, [hl]
    ld a, [hl]
    rst RST_38
    ld hl, sp-$01
    rst RST_08
    xor e
    rst RST_30
    cp a
    ld c, e
    rst RST_10
    ld a, a
    ld [$ffff], a
    cp a
    adc c
    adc b
    ld hl, sp-$10
    cp a
    ld d, a
    ld [$0afd], a
    rst RST_38
    ld [bc], a
    jp $f9c9


    cp h
    ld d, a
    xor d
    db $fd
    rst RST_38
    rst RST_38
    rst RST_08
    rst RST_08
    sbc $e5
    ld sp, hl
    ld e, a
    xor d
    push af
    rst RST_10
    rst RST_08
    adc $df
    sbc [hl]
    rst RST_18
    rst RST_38
    ld e, a
    adc [hl]
    ld a, [hl]
    ld a, [$fffb]
    ld [hl], a
    adc a
    rst RST_38
    cp $fd
    db $fd
    ei
    ei
    ld a, [bc]
    rst RST_30
    ld [bc], a
    ld a, [$fdff]
    ldh a, [c]
    cp $ef
    pop de
    ld a, [$1faf]
    rst RST_38
    rst RST_18
    cp [hl]
    db $fd
    ld a, a
    ei
    ldh a, [$ffe0]
    ldh [$ff64], a
    xor h
    ld b, e
    and l
    ld a, d
    jp $9e8a


    sub b
    add b
    call nz, $ad5e
    inc sp
    db $10
    dec d
    rra
    sbc a
    sbc a
    ccf
    rst RST_38
    cp $ff
    rst RST_38
    pop hl
    pop bc
    ret z

    ret z

    adc [hl]
    xor e
    push af
    cp $ff
    ccf
    ccf
    inc hl
    ld b, c
    cp $7e
    xor a
    push de
    ld a, [$ff0a]
    ld [bc], a
    rst RST_28
    rst RST_28
    rst RST_18
    rst RST_18
    cp [hl]
    cp a
    cp [hl]
    ld a, h
    rst RST_10
    adc e
    push af
    ld a, a
    adc e
    rst RST_10
    ccf
    ld d, a
    db $fc
    rst RST_38
    db $fd
    di
    cp $c7
    add b
    nop
    xor a
    ld c, e
    db $f4
    ld a, a
    xor a
    ret nc

    db $fd
    rra
    ld d, e
    db $eb
    ld a, h
    ld d, a
    jp z, $af79

    push de
    sbc a
    scf
    ld e, d
    push bc
    ld hl, sp-$01
    ld [hl], a
    ldh a, [$ff92]
    ret nz

    ldh [$ff5c], a
    and l
    ld c, d
    push af
    cp $48
    ld b, b
    set 0, b
    ret nz

    call z, $d522
    rra
    ld c, a
    ld [$9118], sp
    inc de
    inc de
    ldh a, [c]
    ld a, [bc]
    rst RST_38
    ld [bc], a
    rrca
    daa
    ld e, $8e
    adc $e8
    rst RST_38
    rst RST_38
    cpl
    daa
    rrca
    ld [$0108], sp
    ld d, a
    ld [$fffd], a
    rst RST_38
    ld a, a
    ld c, a
    adc $c6
    ld hl, sp+$57
    xor d
    push af
    rst RST_38
    rst RST_38
    ld a, a
    ld a, a
    ld a, [bc]
    rst RST_38
    ld [bc], a
    ld e, a
    xor e
    or $7f
    ld a, [$fef5]
    db $eb
    push af
    db $fc
    rst RST_10
    xor a
    cp $5e
    cp h
    db $fc
    ld a, b
    ld a, b
    ldh a, [rP1]
    nop
    inc bc
    ld a, [bc]
    rlca
    ld [bc], a
    ldh [$ff7c], a
    inc bc
    nop
    ldh a, [$fff8]
    db $fc
    cp $fe
    inc a
    ld sp, hl
    ld a, a
    rrca
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ldh [$ffe7], a
    rst RST_00
    jp $bb9d


    ld a, $78
    rra
    inc bc
    ret nz

    add $8f
    rlca
    ld bc, $ea40
    ld hl, sp+$7f
    rrca
    ld bc, $fef0
    ld a, a
    adc d
    ld l, l
    sub d
    ld sp, hl
    cp $1f
    inc bc
    add b
    ld e, $fc
    ld e, h
    sbc b
    ld l, d
    pop hl
    cp $3f
    inc c
    sub b
    sub d
    ret nc

    ld hl, sp+$5f
    and c
    jp z, Jump_03c_4041

    ld [de], a
    sub d
    sub b
    add h
    db $f4
    ld a, a
    rst RST_38
    ld a, a
    ld h, a
    ld b, e
    ld b, e
    add e
    sub e
    sub e
    ld bc, $0703
    rlca
    rrca
    rra
    rra
    ccf
    set 6, l
    rst RST_28
    ld b, l
    db $eb
    ccf
    xor a
    adc a
    ldh a, [$ffe0]
    ldh [$ffc0], a
    ret nz

    add b
    add b
    nop
    rrca
    ld sp, $7f3e
    ld a, a
    ld a, [bc]
    rst RST_38
    ld [bc], a
    nop
    di
    ld a, a
    add e
    ld hl, sp+$0a
    ldh a, [rSC]
    ld c, $1e
    sbc [hl]
    inc a
    inc a
    ld a, h
    ld a, b
    db $fc
    ld b, c
    rlca
    dec e
    ld e, $1f
    rrca
    inc bc
    ld bc, $e1e0
    pop hl
    inc bc
    add a
    jp nz, $c7d8

    rra
    add d
    cp b
    cp $be
    adc a
    rlca
    add a
    nop
    rlca
    inc bc
    rlca
    dec bc
    rla
    adc e
    sub a
    rlca
    rlca
    add a
    rst RST_08
    rst RST_08
    adc a
    sbc a
    sbc a
    push af
    rst RST_38
    rst RST_10
    db $ec
    ldh a, [c]
    sbc a
    and e
    jp c, $6a97

    push af
    db $fc
    cp a
    rla
    jp hl


    db $fc
    rst RST_00
    ld a, a
    sbc a
    ld l, e
    adc l
    ldh a, [c]
    ld a, a
    sbc a
    cpl
    scf
    rla
    dec de
    dec c
    dec b
    ld b, $03
    cp $ae
    sbc h
    ld a, $c7
    ld a, c
    xor [hl]
    ld d, e
    nop
    ld b, $07
    ld bc, $f8c0
    ccf
    rst RST_00
    ld a, a
    ccf
    cp a
    adc h
    jp $8147


    ldh a, [$ffe0]
    pop bc
    ld bc, $0303
    rlca
    rlca
    rrca
    rst RST_38
    ld a, [$fef4]
    rst RST_28
    jp nc, $cffd

    add c
    ldh a, [$ffbe]
    inc de
    ret


    ld a, [$ab5f]
    ret nz

    add b
    nop
    ret nz

    ld a, b
    ccf
    ld c, c
    db $f4
    di
    ld bc, $3b19
    ld a, $00
    ldh a, [$ffbe]
    set 3, h
    adc [hl]
    ld e, [hl]
    sbc $1c
    nop
    ld bc, $3e3f
    ld a, a
    ld a, [hl]
    db $fc
    cp $ff
    push af
    ld a, c
    xor a
    db $db
    ldh [c], a
    cp h
    ld c, a
    or [hl]
    ldh a, [rVBK]
    dec hl
    pop af
    cp $17
    xor c
    or $bf
    add hl, hl
    di
    ld a, l
    cp a
    sub e
    rst RST_20
    ld a, a
    xor a
    ld hl, sp-$04
    cp $0a
    db $fc
    ld [bc], a
    ld hl, sp-$08
    ldh [c], a
    ld a, h
    adc a
    db $e3
    ld sp, hl
    db $fc
    cp $ff
    ld a, b
    adc a
    inc hl
    db $ec
    dec a
    ld b, a
    and d
    ld [hl], b
    cp $0f
    pop af
    sbc [hl]
    dec hl
    push de
    ld a, [$0f1f]
    rst RST_18
    cp $3e
    jp $ff78


    ei
    or l
    ldh [c], a
    cp [hl]
    scf
    jp nz, $0ef4

    ld [hl], c
    push hl
    cp [hl]
    ld e, a
    and h
    ld a, [$0f7f]
    pop bc
    ccf
    or a
    jp z, $2ff9

    sub c
    ld [$577c], a
    jp z, Jump_03c_5ffd

    dec l
    ldh a, [c]
    ld a, l
    xor a
    pop bc
    ld a, e
    ld e, a
    xor a
    rst RST_38
    cp a
    ld a, a
    rst RST_18
    ld hl, sp-$02
    db $eb
    push af
    db $fc
    sbc a
    sub a
    ld [$17bf], a
    ld [$2ffd], a
    ld l, e
    pop de
    cp $53
    ld [$5ffc], a
    xor e
    db $f4
    ld a, b
    cpl
    rst RST_08
    rst RST_38
    cp a
    ld e, a
    rst RST_38
    rst RST_38
    ccf
    ld a, a
    ldh [$ffe0], a
    ret nz

    pop bc
    jp $870a


    ld [bc], a
    ld a, a
    ccf
    sbc a
    adc a
    rst RST_00
    rst RST_00
    db $e3
    di
    ld de, $0280
    dec [hl]
    ld e, a
    sbc e
    ld b, l
    ld e, [hl]
    ld h, a
    jr z, @+$2e

    ld h, $01
    rst RST_28
    ld a, a
    xor a
    rst RST_28
    rst RST_38
    ld a, a
    ld e, a
    ld d, d
    xor a
    pop af
    push af
    cp $f3
    jp z, Jump_03c_41fd

    sub d
    jp hl


    ld a, [hl]
    daa
    push de
    ld a, d
    ld c, a
    pop bc
    jr c, jr_03c_4e7a

    and c
    push de
    ld a, [$4b9e]
    rla
    ld [hl], h
    rrca
    ld sp, hl
    inc e
    add e
    ld d, h
    ld [$f082], a
    ld a, $eb
    ld d, $9f
    ld [hl], b
    rrca
    rst RST_38
    ccf
    rst RST_38
    rst RST_10
    jr z, @-$68

    dec c
    add d
    ld a, [$294f]
    push af
    cp $17
    push bc
    ld hl, sp-$51
    ld b, c
    db $e4
    ld a, a
    and a
    ld a, [hl+]
    db $fd
    ld c, [hl]
    xor h
    ldh [c], a
    ld a, l
    rrca
    sub e
    rst RST_30
    cp a
    and a
    ld [bc], a
    rst RST_38
    ld [bc], a
    ld [bc], a
    cp $02
    db $fc
    db $fc
    jr nc, jr_03c_4ea4

    jr nz, jr_03c_4ed6

    ld h, b
    ld b, b
    ret nz

    ret nz

jr_03c_4e7a:
    dec bc
    dec e
    dec l
    sbc l
    ld c, l
    sub [hl]
    adc $86
    db $e4
    db $e4
    ld [bc], a
    ldh [c], a
    ld [bc], a
    db $e3
    di
    di
    rst RST_18
    rst RST_38
    ld a, a
    cp $fd
    rst RST_38
    ei
    db $fc
    xor a
    dec c
    di
    ld a, h
    ld b, a

jr_03c_4e97:
    add e
    ldh a, [c]
    inc e
    and l
    pop hl
    ld a, [hl]
    and a
    ld c, l
    ldh [c], a
    inc a
    and a
    push de
    ld a, b

jr_03c_4ea4:
    sbc a
    dec l
    ldh a, [c]
    cp l
    rla
    adc d
    ld a, h
    ld c, a
    and l
    push af
    cp h
    ld d, a
    and d
    db $f4
    add b
    ld a, [bc]
    push af
    ld a, d
    adc l
    or [hl]
    rst RST_30
    cp a
    ld a, l
    rra
    ld h, c
    add l
    ld l, b
    db $fd
    rst RST_20
    ld b, [hl]
    db $dd
    inc hl
    jp z, Jump_03c_473c

    jr c, jr_03c_4e97

    or $23
    ld sp, hl
    ld a, [$89af]
    ldh a, [c]
    adc a
    ld sp, hl
    rst RST_10
    ld a, a
    cpl
    ld e, a

jr_03c_4ed6:
    rst RST_10
    ld a, [hl+]
    ld d, l
    ldh [c], a
    db $fc
    db $fc
    db $fd
    db $fd
    ld sp, hl
    ei
    ei
    di
    ld [bc], a
    ret nz

    ld [bc], a
    add b
    ld [bc], a
    nop
    inc bc
    ld b, [hl]
    add [hl]
    ld c, $9c
    add hl, hl
    ld e, l
    cp c
    ld d, c
    ld [bc], a
    di
    inc b
    db $e3
    rst RST_20
    rst RST_20
    cp $fb
    ld [hl], h
    ld a, d
    ld c, a
    rlca
    ld [hl], c
    cp [hl]
    ld b, a
    db $ed
    ld [hl], d
    sbc a
    ld b, e
    call $8f7a
    sub h
    pop af
    sbc [hl]
    ld d, a
    ldh [c], a
    ld a, h
    cp [hl]
    ld d, a
    pop af
    ld a, $a7
    sbc c
    or $be
    ld b, a
    ret nc

    ld e, [hl]
    sbc e
    and l
    ld a, [$4b9e]
    db $f4
    ld a, b
    ld e, a
    cp a
    cp $bf
    ld a, l
    db $fc
    rst RST_38
    db $fd
    ldh a, [$ff1f]
    ld h, e
    and $7e
    ld c, a
    ld hl, $5fe8
    xor e
    sub $7b
    sbc a
    db $d3
    push hl
    cp [hl]
    ld d, h
    jp hl


    ld a, [hl]
    cp a
    ld d, l
    push hl
    ccf
    daa
    jr nz, jr_03c_4f90

    and c
    ld d, h
    xor d
    db $fd
    rst RST_38
    rst RST_38
    rst RST_30
    scf
    ld c, a
    xor [hl]
    adc $ce
    sbc [hl]
    ld e, $eb
    db $d3
    and e
    ld b, a
    and a
    rrca
    sbc a
    ld a, $e6
    rst RST_00
    rst RST_00
    call z, $9f8e
    jr jr_03c_4f94

    rlca
    sbc c
    or e
    ld e, h
    adc a
    inc hl
    or c
    ld e, [hl]
    adc c
    push af
    inc a
    ld b, a
    and d
    db $f4
    ld e, $67
    ld [$8f38], a
    jp hl


    and $bc
    ld d, a
    add b
    ld a, d
    sbc a
    ld l, l
    add sp, $3e
    and a
    sub l
    ldh a, [$ff9e]
    inc hl
    rst RST_30
    cp e
    ld c, a
    cp a
    rst RST_30
    cp a
    ld hl, sp-$02
    rst RST_30
    pop bc
    ld hl, sp-$01
    rst RST_00
    ret


    cp [hl]

jr_03c_4f90:
    ld d, a
    and h
    ldh a, [c]
    ld e, [hl]

jr_03c_4f94:
    ld h, e
    di
    ld hl, sp+$47
    xor d
    push af
    sbc [hl]
    ld d, e
    ld [$4ff8], a
    rst RST_00
    rst RST_38
    ld e, a
    xor a
    rst RST_18
    ld a, a
    ld a, a
    rra
    cp $fd
    cp $fd
    ld a, [$fafc]
    db $f4
    sbc [hl]
    ld e, $02
    ld a, $02
    ld a, [hl]
    ld a, h
    ld a, h
    rra
    and l
    ret c

    db $dd
    rst RST_28
    db $e4
    db $e3
    rst RST_20
    cp e
    db $e3
    cp a
    ld b, a
    sbc a
    rst RST_38
    rra
    cp a
    db $fc
    rst RST_38
    push af
    ld [$efff], a
    pop de
    ld a, [$4dbe]
    ldh a, [c]
    cp l
    ld c, a
    ld [$bf79], a
    ld a, [hl-]
    rst RST_00
    cp b
    ld d, $aa
    pop af
    ld a, $a7
    ld c, a
    add d
    ldh a, [rTMA]
    pop hl
    ld a, h
    xor e
    push bc
    push de
    ld a, [$135f]
    ret z

    ld h, b
    adc a
    ldh a, [rIE]
    cp [hl]
    ld a, a
    rst RST_38
    rst RST_38
    cp $fb
    ld a, l
    ld a, h
    ccf

Call_03c_4ff9:
    ld d, e
    ld [$af3c], a
    or e
    push af
    rra
    xor [hl]
    pop de
    cp $4b
    sub c
    ld a, [$d2af]
    push af
    cp a
    or a
    ret


    di
    rra
    ld d, a
    ld [bc], a
    rst RST_38
    rlca
    rrca
    rrca
    ld [bc], a
    rra
    ld [bc], a
    ld [bc], a
    ccf
    ld [bc], a
    di
    pop hl
    pop de
    ld h, c
    or c
    ld l, b
    jr nc, @+$7a

    inc de
    dec de
    ld [bc], a
    add hl, de
    ld [bc], a
    jr jr_03c_5031

    ld [$7fdf], sp
    cp a
    ld a, a
    cp $ff
    db $fc

jr_03c_5031:
    ld a, [$b3cf]
    db $ec
    ld a, $af
    push de
    db $fc
    rst RST_38
    ld c, e
    db $f4
    cp l
    ld c, a
    or e
    db $ed
    cp $4f
    ld [$2ffd], a
    jp Jump_03c_7ee9


    xor a
    push de
    ld a, [$532f]
    add sp, $3e
    xor a
    push de
    ld a, [$b75f]
    db $e3
    cp a
    ld d, a
    adc a
    rst RST_30
    ld e, a
    add b
    ldh [$fffe], a
    db $eb
    push af
    cp [hl]
    sbc a
    sub c
    inc a
    rla
    ld bc, $b8c1
    ld b, a
    and b
    ldh a, [$ff5b]
    and $39
    rra
    dec d
    ld bc, $0670
    rst RST_08
    rst RST_38
    ld e, a
    adc a
    rst RST_38
    cp a
    ccf
    rra
    ld [bc], a
    db $fc
    inc bc
    ld [bc], a
    ld hl, sp+$02
    ldh a, [rSC]
    ccf

Call_03c_5083:
    ld [bc], a
    ld a, a
    ld [bc], a
    rst RST_38
    inc bc
    cp b
    ld a, b
    ldh a, [$ff60]
    pop de
    and c
    ld b, c
    and c
    ld [bc], a
    ld [$1804], sp
    db $10
    db $10
    rst RST_38
    rst RST_30
    ld [$fffd], a
    xor c
    xor $7c
    xor a
    jp nc, Jump_03c_7efd

    xor a
    ldh a, [c]
    db $fd
    ld a, a
    db $eb
    db $fc
    ld a, a
    xor e
    push de
    ld a, [$2b4f]
    ld [$4ffd], a
    and [hl]
    pop af
    ld e, [hl]
    sbc e
    and $9f
    ld h, a
    jp z, Jump_03c_5ef5

    or a
    set 7, [hl]
    sbc a
    rst RST_18
    rst RST_38
    ld a, a
    cp h
    cp $ff
    ei
    db $fd
    ld a, [hl]
    sbc a
    ret


    ld sp, hl
    sbc a
    ld e, a
    rst RST_20
    sbc [hl]
    ld d, a
    ldh [$ff7c], a
    ld l, a
    dec b
    ld hl, sp+$7d
    add e
    call nc, Call_03c_4ff9
    xor e
    pop af
    rst RST_38
    ld e, a
    rst RST_08
    ldh a, [$fffe]
    ld [bc], a
    rst RST_38
    inc b
    ldh a, [$ff30]
    nop
    add c
    pop bc
    pop bc
    add c
    ld bc, $0302
    ld [bc], a
    rlca
    rlca
    rrca
    rra
    ccf
    db $10
    jr nc, jr_03c_5127

    jr nz, jr_03c_5159

    ld b, b
    ret nz

    add b
    rst RST_18
    daa
    ld a, b
    ccf
    ld d, a
    call c, Call_000_3f74
    ld d, a
    ld [$3ffe], a
    push de
    ei
    sbc $93
    push af
    cp $5f
    add a
    ld hl, sp+$7f
    xor a
    db $dd
    db $fd
    ld l, a
    sub e
    rst RST_20
    db $fd
    ld d, a
    adc d
    db $fd
    ld l, a
    sub a
    db $eb
    ld a, e
    cp a
    rst RST_00
    rst RST_20
    ccf
    di
    db $fc
    rst RST_28

jr_03c_5127:
    db $ec
    rst RST_30
    sbc $93
    or $7c
    xor a
    jp c, $9ff5

    rla
    call z, $af7d
    pop de
    ld a, [$af7f]
    call nz, $9f7f
    sub e
    di
    cp a
    rra
    rst RST_28
    rst RST_38
    sbc a
    ld a, a
    ld [bc], a
    rst RST_38
    rlca
    add c
    ld [bc], a
    ld bc, $0304
    inc bc
    dec e
    nop
    add b
    rst RST_38
    ld e, d
    xor l
    db $fd
    ld e, [hl]
    ld d, a
    cp b
    push af
    ld l, [hl]

jr_03c_5159:
    rst RST_38
    rst RST_08
    ldh a, [c]
    ld a, a
    sub $ae
    ld e, c
    xor e
    ld d, l
    rst RST_38
    jp c, Jump_000_3f35

    ld a, [$1dea]
    cpl
    or $ff
    di
    ld c, a
    ld a, [hl]
    xor e
    push af
    ld a, [hl-]
    cp [hl]
    pop bc
    rst RST_38
    rst RST_18
    or a
    rst RST_30
    ld c, e
    cp e
    rst RST_10
    rst RST_38
    ccf
    rst RST_38
    cp e
    rst RST_10
    rst RST_30
    ld c, e
    rst RST_18
    or a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    push de
    db $eb
    or [hl]
    cp [hl]
    ret


    rst RST_38
    db $dd
    ld l, a
    db $dd
    xor d
    db $eb
    db $dd
    ld l, $00
    rst RST_38
    di
    ld b, b
    inc b
    ei
    ei
    jp hl


    ld c, c
    ld bc, $c0e1
    push hl
    call nz, $afd9
    sbc c
    sbc c
    sbc c
    sbc l
    ld d, [hl]
    nop
    sbc a
    ld e, d
    nop
    sbc l
    rst RST_38
    sbc l
    rlca
    rlca
    scf
    daa
    scf
    scf
    ccf
    rst RST_38
    ccf
    cpl
    cpl
    rrca
    rrca
    cpl
    cpl
    ccf
    rst RST_28
    ccf
    db $fc
    db $fc
    cp $72
    ld a, [bc]
    inc bc
    ld b, e
    ld h, a
    or $82
    inc b
    rlca
    rlca
    add d
    nop
    ld h, [hl]
    sbc h
    sbc h
    sbc [hl]
    or $92
    ld [bc], a
    sbc $4e
    sbc c
    ld bc, $060e
    inc e
    inc c
    ld a, e
    ld l, [hl]
    ld h, [hl]
    and e
    ld bc, $666e
    ld e, $0e
    and d
    ld bc, $18ef
    ld [$646c], sp
    or e
    add hl, bc
    inc c
    adc h
    add $fe
    jp nz, $c201

    jp nz, $d2c2

    ret nz

    ret nc

    ret nc

    rst RST_08
    ret c

    ret nc

    ld h, c
    ld b, l
    ld d, d
    inc bc
    ld e, d
    ld bc, $9191
    db $e3
    sbc c
    sbc c
    ld [hl], d
    inc bc
    inc a
    ld bc, $03e6
    inc b
    nop
    inc b
    rst RST_28
    sub h
    sub h
    sub h
    sbc h
    or $02
    inc c
    ld [$ffff], sp
    rst RST_38
    ld a, l
    add e
    xor a
    ld e, h
    ld a, [hl]
    push de
    rst RST_08
    rst RST_38
    ldh a, [c]
    db $f4
    ld l, a
    ld d, a
    cp b
    db $fc
    ld e, a
    ld e, e
    rst RST_38
    xor h
    push de
    xor d
    ld [hl], l
    sbc d
    cp $6b
    di
    rst RST_38
    ld c, a
    xor a
    halt
    ld [$bf1d], a
    ld a, d
    ld e, d
    db $fd
    or l
    inc a
    ld bc, $bbd7
    cp e
    ld d, l
    rst RST_38
    cp e
    rst RST_38
    ld a, l
    sub e
    rst RST_10
    ld l, l
    rst RST_38
    xor e
    rst RST_38
    rst RST_38
    rst RST_38
    ei
    db $ed
    rst RST_28
    jp nc, $ebdd

    rst RST_38
    db $fc
    ld a, a
    db $dd
    db $eb
    rst RST_28
    jp nc, $edfb

    call c, Call_000_1040
    ei
    adc b
    adc b
    and $07
    sbc l
    sbc l
    db $db
    sbc c
    ld h, [hl]
    db $fd
    ld b, d
    and $07
    scf
    scf
    scf
    daa
    rlca
    rlca
    adc $3c
    ld bc, $f8fc
    ei
    ld b, b
    nop
    ld [hl], d
    ld bc, $fcfc
    ld a, [hl]
    inc a
    ld bc, $71f8
    halt
    ld h, $a6
    and [hl]
    and e
    ld bc, $00bb
    ld b, h
    inc a
    ld bc, $4800
    ld c, h
    adc h
    db $10
    and $ba
    sub b
    db $10
    ld b, b
    add l
    ld [de], a
    ld h, a
    ld b, e
    db $db
    ld d, e
    nop
    ld h, [hl]
    rst RST_18
    ld h, [hl]
    ld h, d
    ld h, d
    inc [hl]
    ld [hl], $3c
    ld bc, $84cc
    rst RST_38
    or [hl]
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld h, h
    ld h, h
    ld l, h
    ld h, h

jr_03c_52c0:
    ld a, l
    jr jr_03c_52c0

    nop
    rst RST_38
    rst RST_38
    ccf
    ccf
    ld a, a
    cp h
    db $10
    db $ed
    ret c

    ret nz

    db $10
    inc c
    adc h
    and $07
    sbc c
    sbc c
    reti


    rst RST_30
    sbc c
    ld h, c
    ld b, l
    and $07
    sub b
    nop
    sub d
    sub e
    rst RST_38
    sub d
    sub d
    db $10
    db $10
    sub d
    sub d
    sub d
    sub e
    adc a
    sub b
    nop
    rst RST_38
    rst RST_38
    cp h
    ld de, $03e6
    ldh a, [rNR13]
    pop af
    ei
    pop af

jr_03c_52f7:
    ld hl, sp+$02
    jr nz, jr_03c_52f7

    db $fc
    or $f6
    rst RST_30
    rst RST_38
    rst RST_30
    ei
    di
    db $fc
    ld hl, sp-$59
    and a
    rst RST_20
    xor $12
    jr nz, jr_03c_5373

    ld h, a
    daa
    jr jr_03c_5330

    halt
    ld h, $f9
    cp l
    ld [hl], b
    adc h
    ld de, $c0c0
    call z, $8ccc
    ld de, $77cc
    ld c, h
    add b
    ret z

    and $05
    ld hl, sp-$03
    ld a, [$203a]
    di
    ld hl, sp-$03
    ld l, b
    db $10
    ld [hl], c
    ld a, [bc]

jr_03c_5330:
    rst RST_38
    rst RST_38
    ld b, $46
    db $dd
    ld h, e
    ld d, h
    ld [hl+], a
    ld h, c
    ld h, c
    ld l, c
    ld e, h
    jr nz, @+$01

    rst RST_38
    cp e
    ld [bc], a
    ld [hl+], a
    add d
    ld bc, $6272
    ld [hl], d
    ld l, d
    jr nz, jr_03c_53c5

    db $fd
    ld [hl], d
    adc b
    db $10

jr_03c_534e:
    jr nz, @+$66

    ld h, h
    ld h, [hl]
    ld h, [hl]
    rst RST_20
    rst RST_38
    ld h, a
    push hl
    push hl
    pop hl
    pop hl
    push hl
    push hl
    rst RST_38
    rst RST_28
    rst RST_38
    rst RST_20
    jp Jump_03c_55db


    nop
    adc l
    adc l
    rst RST_00
    or $8a
    jr nz, jr_03c_534e

    db $e3
    ld h, b
    jr nz, jr_03c_5371

    inc bc
    ld c, e

jr_03c_5371:
    ld c, e
    ei

jr_03c_5373:
    ld c, e
    rst RST_08
    sbc b
    inc h
    rst RST_38
    rst RST_38
    jr jr_03c_53ac

    ld [hl], $f7
    ld h, $26
    ld h, $18
    ld hl, $2727
    inc h
    inc h
    rst RST_00
    rst RST_38
    rst RST_38
    ld [hl], e
    or d
    inc h
    ld c, b
    ld bc, $215e
    add b
    add c
    rst RST_08
    add c
    and l
    and l
    and l
    ld [de], a
    ld hl, $2112
    rst RST_38
    rst RST_38
    di
    add hl, de
    jr nc, @-$5a

jr_03c_53a1:
    ld hl, $25d5
    rst RST_38
    rst RST_38
    adc h
    adc h
    dec sp
    add $46
    push hl

jr_03c_53ac:
    ld hl, $4242
    ld d, d
    db $ec
    jr nz, jr_03c_53a1

    ld de, $e678
    rlca
    adc $11
    nop
    scf
    db $db
    sbc c
    ld h, a
    ld b, e
    xor l
    db $10
    sbc [hl]
    db $10
    ld [hl], $b6

jr_03c_53c5:
    ld [hl-], a
    call z, $bc84
    ld de, $11bc
    ld l, a
    cp $28
    jr nc, @+$51

    ld c, a
    rrca
    rrca
    rst RST_38
    rst RST_38
    rst RST_18
    db $db
    sbc a
    cp a
    inc [hl]
    jr nc, jr_03c_53fc

    rra
    inc [hl]
    ld sp, $bfbf
    cp b
    ld [hl], d
    inc bc
    ld [hl], h
    inc de
    inc a
    ld bc, $6868
    ld l, h
    ld d, d
    jr nc, jr_03c_53f5

    or l
    ld b, [hl]
    and $05
    ld a, c
    ld h, b

jr_03c_53f5:
    ld [hl-], a
    add hl, sp
    add hl, sp
    and $05
    rst RST_20
    ld a, a

jr_03c_53fc:
    rst RST_20
    and $e6
    db $e4
    db $e4
    ret nz

    ret nz

    ld [$ff04], a
    adc h
    or c
    or c
    cp c
    cp c
    db $db
    sbc c
    rst RST_20
    ld l, l
    jp Jump_000_03e6


    db $10
    db $10
    sbc b
    inc hl
    add [hl]
    add [hl]
    and $03
    ld a, e
    ld b, c
    pop bc
    push de
    ld hl, $2636
    jr @+$33

    and $03
    rst RST_38
    or b
    db $10
    ld h, c

jr_03c_5429:
    ld b, b
    ld e, l
    ld e, h
    ld e, h
    ld e, h
    db $db
    ld [$e648], sp
    inc bc
    ret c

    adc b
    ret z

    inc hl
    ld b, d
    ld b, e
    or [hl]
    and $03
    ld sp, $a020
    inc sp
    add hl, de
    jr nc, jr_03c_5429

    dec b
    ld d, b

jr_03c_5445:
    ccf
    ld d, b
    ld e, b
    ld e, b
    ret c

    ld e, b
    adc h
    push bc
    jr jr_03c_5445

    inc de
    sbc h
    add sp, $3b
    and $03
    adc b
    call c, $2fab
    db $10
    and $07
    db $e3
    rst RST_30
    rst RST_30
    db $eb
    db $eb
    db $f4
    add hl, hl
    adc d
    adc d
    cp d
    cp d
    ld a, a
    ld [hl], l
    ld [hl], l
    ld a, h
    ld a, h
    ld [hl], l
    ld [hl], l
    inc b
    push bc
    ld [de], a
    db $fd
    or [hl]
    inc a
    ld b, b
    rst RST_30
    rst RST_30
    jr nc, jr_03c_54a9

    rst RST_30
    rst RST_30
    ei
    rla
    rla
    inc a
    ld bc, $bdbd
    cp d
    cp d
    ld [hl], a
    rst RST_10
    ld [hl], a
    ld [hl], a
    rst RST_30
    ld d, b
    ld b, b
    ld [hl], a
    inc a
    ld bc, $d6d4
    rst RST_38
    push de
    push de
    or a
    or a
    or c
    or c
    or a
    or a
    db $fd
    or a
    ld b, a
    ld b, d
    ld e, d
    jp c, Jump_03c_5a5a

    db $db
    db $db
    di
    ret c

    ret c

    ld [hl], b
    ld b, b
    ld b, l

jr_03c_54a9:
    ld [de], a
    jr z, jr_03c_54d4

    db $eb
    db $eb
    rst RST_38
    xor $ef
    ld [hl], c
    ld h, b
    xor $fe
    ld sp, $de20
    inc a
    ld bc, $9e8e
    xor [hl]
    xor [hl]
    db $f4
    add hl, hl
    ld [hl+], a
    ld h, [hl]
    db $db
    xor d
    xor d
    db $f4
    add hl, hl
    xor b
    xor l
    sbc [hl]
    ld c, e
    adc b
    adc b
    ei
    db $db
    db $db
    and $05
    pop af
    di

jr_03c_54d4:
    push af
    push af
    pop af
    rst RST_08
    di
    rst RST_30
    rst RST_30
    xor e
    ret nc

    ld b, b
    inc a
    ld bc, $3111
    rst RST_38
    ld e, e
    ld e, e
    dec de
    dec sp
    ld e, e
    ld e, e
    ld l, a
    ld l, a
    db $fd
    ld h, d
    ld l, a
    jr nz, @+$01

    rst RST_38
    ld d, c
    ld d, c
    ld d, a
    ld d, a
    rst RST_38
    inc de
    ld d, e
    or a
    or a
    or [hl]
    or [hl]
    ld [hl], $76
    xor $3c
    ld bc, $6262
    ld l, [hl]
    and d
    nop
    ld l, [hl]
    ld l, [hl]
    xor b
    rst RST_18
    xor l
    adc [hl]
    adc [hl]
    xor b
    xor c
    and $07
    db $eb
    db $eb
    ei
    db $e3
    db $e3
    ld e, $43
    and [hl]
    and [hl]
    and d
    xor d
    xor d
    ld a, a
    xor d
    sbc d
    sbc d
    cp d
    cp d
    cp b
    cp l
    inc a
    ld bc, $a2ff
    or e
    xor [hl]
    xor [hl]
    ld l, $af
    or [hl]
    or [hl]
    rst RST_28
    or a
    or a
    sub e
    sub e
    sbc b
    ld b, d
    ld [hl+], a
    or $f6
    rst RST_38
    ld [hl], $76
    ld a, [hl-]
    cp d
    ld a, b
    ld a, d
    ld a, b
    ld a, h
    cp $08
    ld b, d
    call $baba
    adc d
    xor d
    push de
    push de
    ld l, a
    call nc, Call_03c_45d4
    ld l, l
    ld [$8d42], sp
    jp c, $505c

    db $ed
    ld e, d
    ld h, b
    ld d, b
    ld c, d
    ld c, d
    adc b
    ld b, l
    adc [hl]
    sbc [hl]
    ld l, c
    rst RST_18
    ld l, c
    db $eb
    db $eb
    add sp, -$18
    inc a
    ld bc, $e8e8
    rst RST_18
    db $ed
    db $ed
    xor l
    xor l
    xor [hl]
    add b
    ld d, b
    adc [hl]
    sbc [hl]
    cp $28
    ld b, e
    jp c, $d8da

    ret c

    ld [hl+], a
    ld h, [hl]
    ld [$92fc], a
    ld d, b
    inc a
    ld bc, $e2e2
    xor $ee
    and $e6
    cp a
    adc d
    xor d
    ret c

    ret c

    jp c, Jump_000_3cda

    ld bc, $66ad
    xor d
    ld d, d
    reti


    reti


    ld [hl], b
    ld b, c
    and $07
    rst RST_30
    rst RST_30
    add sp, $3b
    di
    ld d, c
    ld d, c
    inc a
    ld bc, $1072
    db $fd
    ld sp, hl
    ei
    db $fc
    rst RST_38
    db $fd
    cp $fe
    or c
    or c
    rst RST_38
    rst RST_38
    add e
    rst RST_38
    add e
    db $10
    ld l, h
    add d
    rst RST_00
    rst RST_00
    add e
    add d
    rst RST_18
    rst RST_00
    db $10
    ld l, h
    ld [hl+], a
    ld [hl+], a
    db $f4
    dec d
    ccf
    cp a
    sbc $f2
    ld de, $a8a8
    adc d
    jp z, Jump_03c_4298

    ld [hl], d
    xor [hl]
    pop af
    xor [hl]
    inc e
    ld d, c
    adc h
    ld d, b

Jump_03c_55db:
    dec sp
    ld [bc], a
    inc hl
    daa
    db $eb
    db $eb
    xor a
    ld l, e
    ld l, e
    db $eb
    db $eb
    add b
    ld d, b
    xor a
    inc a
    ld bc, $fd89
    reti


    dec e
    ld d, b
    xor d
    adc d
    adc d
    xor l
    xor l
    ld [$581d], sp
    inc a
    ld bc, $9f8f
    xor a
    ld a, [hl-]
    ld h, d
    ld e, h
    ld d, c
    db $e4
    ld b, d
    rst RST_38
    ld e, e
    ld d, l
    ld d, l
    dec d
    dec d
    ld d, l
    ld d, l
    xor $b7
    xor $ee
    rst RST_28
    jp z, Jump_000_3b32

    ld d, l
    ld e, d
    ld h, d
    xor l
    ld [hl], a
    xor l
    inc h
    ld h, h
    db $e4
    ld b, d
    ld d, e
    ld d, l
    ld d, l
    ld l, b
    ld h, c
    cp $e6
    dec b
    rra
    sbc a
    ld a, a
    ld a, a
    rra
    cp a
    rst RST_18
    inc sp
    rst RST_18
    ld [hl+], a
    db $e3
    ld b, d
    and $07
    inc hl
    daa
    add sp, $3b
    sbc [hl]
    ld c, e
    db $f4
    ld [hl], $61
    jp nz, $5b5c

    and $07
    sub e
    sub e
    ld [bc], a
    ld [bc], a
    ld a, $c0
    ld l, c
    inc h
    inc h
    nop
    nop
    dec d
    rra
    ld [de], a
    and $03
    cp a
    push hl
    push hl
    ld b, c
    ld b, c

jr_03c_5656:
    rra
    ccf
    add sp, $3b
    add e
    rst RST_38
    add e
    sbc b
    ret nc

    rst RST_30
    rst RST_10
    sub h
    call nc, $f785
    add l
    db $f4
    db $f4
    jp z, $fb40

    add e
    add e
    nop
    cp $ed
    db $10
    sub $54
    ld d, [hl]
    ld d, [hl]
    sub $56
    xor $fd
    db $ec
    ldh [c], a
    ld d, c
    inc sp
    rla
    rst RST_18
    rst RST_10
    db $d3
    ld d, a
    rst RST_38
    jp $dfc3


    rst RST_18
    rst RST_18
    ld e, a
    rra
    cp a
    rst RST_38
    rst RST_28
    rst RST_28
    rst RST_00
    rst RST_10
    rst RST_00
    rst RST_00
    rst RST_10
    rst RST_10
    rst RST_08
    add a
    xor a
    xor l
    xor l
    inc a
    ld bc, $613a
    adc a
    adc a
    cp a
    ld bc, $5051
    ld d, h
    ld d, d
    ld d, e
    and $03
    rst RST_10
    ld a, a
    rst RST_10
    rst RST_10
    rst RST_18
    rla
    rla
    nop
    jr nz, jr_03c_5656

    inc de
    cp $72
    ld de, $fcfd
    cp l
    cp h
    dec c
    ld c, h
    ld c, l
    cp a
    ld c, h
    call $ccec
    call z, Call_03c_7000
    ld [hl], b
    db $ed
    rst RST_38
    call z, $a8a9
    xor l
    xor h
    xor c
    xor b
    db $ed
    db $fd
    call Call_03c_7170
    nop
    nop
    sub d
    sub d
    cp d
    xor d
    rst RST_38
    cp e
    cp d
    cp c
    xor c
    xor c
    add hl, hl
    nop
    nop
    push af
    ld bc, $7090
    xor c
    sub h
    ld [hl], d
    add hl, sp
    add hl, hl
    add hl, sp
    add hl, sp
    rlca
    ld bc, $fe01
    ld [hl], l
    db $10
    inc h
    add hl, de
    ld [de], a
    ld [hl], c
    inc h
    ld a, [de]
    di
    db $10
    db $fc
    inc h
    add hl, de
    db $10
    inc de
    pop af
    ld c, a
    xor a
    ld [hl], a
    db $eb
    dec e
    rst RST_08
    xor a
    ld a, d
    ld e, a
    cp l
    jr nc, @+$0b

    ei
    ld d, c
    sbc $b5
    ld bc, $23f5
    ld a, [bc]
    ld de, $0080
    ld [bc], a
    rst RST_38
    db $eb
    cp [hl]
    rst RST_38
    db $dd
    db $eb
    db $fd
    cp $df
    rst RST_30
    cp e
    rst RST_38
    cp e
    rst RST_30
    db $dd
    cp $d5
    or [hl]
    ret


    db $dd
    xor d
    db $dd
    cp $ff
    or a
    ld c, e
    rst RST_10
    ccf
    rst RST_10
    ld c, e
    or a
    db $fd
    dec e
    nop
    add b
    db $eb
    ld e, b
    ld a, $00
    dec bc
    nop
    db $10
    inc c
    ld d, l
    nop
    ld a, [hl+]
    jp z, Jump_000_081f

    xor d
    dec hl
    ld [$39ff], sp
    rrca
    dec a
    nop
    ld d, l
    xor d
    db $e3
    xor d
    ld d, l
    ld d, b
    add hl, bc
    dec a
    ld c, $10
    ld [$0001], sp
    rlca
    ld a, [hl]
    db $10
    ld [$0030], sp
    db $fc
    nop
    ld b, h
    ld hl, sp+$76
    dec b
    rst RST_38
    ld b, $01
    inc c
    inc bc
    add hl, de
    rlca
    ld [hl+], a
    rra
    rst RST_38
    inc a
    inc bc
    ld [hl], c
    rrca
    and $1f
    adc [hl]
    ld a, a
    rst RST_38
    ld e, [hl]
    rst RST_38
    ei
    cp $f5
    cp $e8
    cp $df
    ld [$bbfc], a
    db $fc
    cp d
    or c
    nop
    cp c
    ld a, [hl]
    rst RST_38
    cp l
    ld a, [hl]
    ld a, $6a
    ret c

    jr nc, jr_03c_579d

    nop
    rst RST_38
    ld [hl], b
    nop

jr_03c_579d:
    sbc b
    ld h, b
    ld l, h
    ld [hl], b
    ld h, h
    ld a, c
    cp a
    ld [hl], l
    ld a, b
    halt
    ld a, b
    ld h, $38
    nop
    inc b
    inc a
    cp $d6
    dec b
    ld b, c
    ccf
    ld d, c
    ccf
    xor e
    ld a, a
    sbc e
    rst RST_38
    ld a, a
    cp c
    ld a, a
    sub c
    ld a, [hl]
    or d
    ld a, a
    ld a, l
    rst RST_38
    rst RST_38
    pop bc
    cp $c2
    adc b
    db $ec
    ret nz

    ldh [rIE], a
    ldh a, [$ffa0]
    db $f4
    dec b
    add sp, -$6e
    ld h, c
    ld [hl], d
    rst RST_38
    add c
    ld h, $09
    jr nz, jr_03c_57f7

    ld b, [hl]
    ccf
    ld b, l
    ei
    ccf
    xor a
    and a
    nop
    ld a, $ff
    ld a, h
    rst RST_38
    jp nz, Jump_000_00ff

    ld a, h
    sbc h
    ret c

    and $ea
    rst RST_38
    db $fc
    rst RST_38
    rst RST_38
    pop de
    cp $62
    db $fc
    call c, $b020

jr_03c_57f7:
    rst RST_38
    add b
    ret nc

    nop
    ret c

    nop
    ld c, b
    db $10
    jr @+$01

    ld d, b
    inc b
    ld l, b
    inc b
    ld l, b
    add h
    ld l, b
    inc a
    rst RST_38
    rst RST_38
    ccf
    rst RST_38
    inc e
    rst RST_38
    and b
    ld a, a
    cp h
    rst RST_38
    ld a, a
    cp d
    ld a, a
    dec e
    ld a, a
    ld e, $7f
    ldh [c], a
    rst RST_38
    pop bc
    ld [hl], l
    add d
    ld a, [de]
    push hl
    inc e
    db $e3
    ld h, [hl]
    rst RST_38
    sbc c
    adc b
    rst RST_30
    ld [$01f7], sp
    rst RST_38
    cp b
    rst RST_38
    rst RST_38
    ld a, l
    cp $39
    cp $33
    db $fc
    add e
    rst RST_38
    db $fc
    sbc $e0
    db $fc
    ldh a, [$ff7a]
    db $fc
    add c
    rst RST_38
    sub b
    adc l
    jp $8718


    ld de, $03cf
    rst RST_38
    cp a
    inc e
    sbc h
    nop
    ld b, e
    rlca
    and b
    dec d
    rst RST_38
    add sp, -$49
    ld c, b
    daa
    ret c

    cpl
    ret nc

    rrca
    rst RST_38
    jr nc, @+$41

    ldh [rIE], a
    add b
    rst RST_38
    nop
    dec d
    ld [hl], e
    nop
    ld a, [bc]
    ld a, a
    db $10
    ld h, $07
    ld d, b
    nop
    xor b
    adc a
    ld [de], a
    ld sp, hl
    ld d, h
    dec l
    nop
    sbc b
    ld de, $3f4f
    ld l, e
    rra
    ld h, a
    rst RST_38
    rra
    ld h, l
    rra
    jr nc, jr_03c_588f

    ld a, [hl-]
    dec b
    dec a
    rst RST_28
    ld [bc], a
    ld e, $01
    ld b, b
    ld a, h
    db $10
    add c
    rst RST_38
    ld b, d
    rst RST_38
    rst RST_38

jr_03c_588f:
    add l
    rst RST_38
    ld c, e
    cp a
    dec h
    rst RST_18
    ld c, e
    rst RST_38
    cp a
    ld d, l
    cp $89
    cp $e0
    rst RST_38
    db $f4
    rst RST_28
    rst RST_38
    ld a, [$ffff]
    rst RST_00
    db $10
    db $fd
    rst RST_38
    nop
    rst RST_38
    ret nz

    ld [bc], a
    add b
    pop de
    jr nz, jr_03c_58ba

    ldh a, [$ff85]
    rst RST_38
    ld hl, sp-$80
    db $fc
    jp nc, $a2fc

    db $fc

jr_03c_58ba:
    dec b
    db $fc
    add c
    ld d, $3e
    inc bc
    sbc a
    rra
    rst RST_08
    rrca
    rst RST_08
    rrca
    rst RST_38
    rst RST_20
    rlca
    di
    inc bc
    ei
    inc bc
    ld sp, hl
    ld bc, $fdff
    ld bc, $df27
    ld d, e
    xor a
    xor l
    ld d, a
    rst RST_38
    ld [hl], e
    adc a
    cp c
    ld b, a
    dec a
    jp $a55a


    rst RST_10
    cp [hl]
    ld b, c
    ld a, [$10c5]
    ld [$1019], a
    add sp, -$01
    rst RST_38
    ld b, l
    ld a, [$c4bb]
    call nz, $d000
    cp $ff
    xor b
    cp $d0
    cp $a9
    cp $d1
    cp $ff
    ld hl, $83fe
    ld a, h
    and e
    ld e, h
    rst RST_38
    nop
    db $fd
    ld a, a
    ld sp, $542a
    xor b
    xor b
    ld d, h
    ld d, h
    xor d
    rst RST_18
    xor d
    ld d, h

jr_03c_5914:
    ld d, l
    xor b
    xor c
    ld b, a
    ld [hl+], a
    ldh a, [rP1]
    cp a
    ret nz

    rlca
    ld bc, $031f
    ld a, a
    dec a
    nop
    db $fd
    cp e
    nop
    ldh [$ff7e], a
    ld bc, $fff8
    cp $63
    ld [hl+], a
    inc c
    cp $6f
    nop
    ld hl, sp+$00
    rrca
    nop
    nop
    and b
    inc d
    rst RST_18
    cp b
    ld a, [$f9bc]
    cp $7d
    db $10
    rst RST_38
    jr c, jr_03c_5914

    rlca
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    ld d, e
    nop
    add d
    jr nz, @+$2c

    xor d
    rst RST_38
    dec d
    sub l
    ld a, [hl+]
    add d
    ld bc, $fcfc
    cp $da
    sub d
    jr nz, @-$02

    sub [hl]
    jr nz, @-$05

    ld hl, sp-$66
    ld hl, $0f32
    rst RST_38
    ld b, l
    ccf
    xor d
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    db $fd
    rra
    ld sp, $7f10
    rst RST_38
    ld l, $d0
    ld d, l
    ld [$a2df], a
    db $fd
    ldh a, [rIE]
    add sp, -$3b
    db $10
    add sp, -$01
    rst RST_38
    ret nc

    rst RST_38
    sbc a
    sbc a
    ld h, a
    and a
    cp e
    ld c, e
    rst RST_38
    ld e, l
    and l
    ld l, $d2
    ld e, a
    and e
    cpl
    pop de
    rst RST_38
    rla
    jp hl


    nop
    inc a
    cp h
    ld a, $be
    inc bc
    rst RST_38
    ld [hl], h
    nop
    add $0c
    ld c, e
    ld h, a
    inc [hl]
    ld [hl], e
    rst RST_38
    inc bc
    nop
    or b
    rrca
    ld l, a
    rra
    ld e, a
    jr nc, @+$01

    ld a, h
    nop
    ld a, [de]
    inc c
    rst RST_30
    ld hl, sp+$0c
    di
    rst RST_28
    ei
    nop
    ldh a, [c]
    pop af
    ldh a, [rNR42]
    and $e1
    db $e4
    ld a, a
    db $e3
    call z, $d8c3
    rst RST_00
    sub b
    adc a
    xor h
    ld hl, $3ed7
    rst RST_38
    ld a, l
    rst RST_00

jr_03c_59d0:
    db $10
    db $fc
    rst RST_00
    db $10
    ldh a, [rIE]
    rst RST_38
    jp z, $82fd

    db $fd
    add e
    db $fc
    inc bc
    db $fc
    rst RST_38
    ld b, $f9
    ld h, $f9
    ld h, [hl]
    ld sp, hl
    rst RST_20
    ld sp, hl
    rst RST_38
    ld c, $f0
    call c, $ec20
    ld [hl], b
    ld l, h
    ldh a, [rIE]
    ld l, b
    ldh a, [rOBP0]
    ldh a, [$ffd8]
    ldh [$ff98], a
    ldh [$ffeb], a
    nop
    inc a
    dec a
    inc c
    inc b
    dec a
    dec bc
    jr jr_03c_5a04

jr_03c_5a04:
    inc h
    ld e, a
    jr jr_03c_5a36

    jr jr_03c_5a64

    inc a
    nop
    dec b
    jr jr_03c_5a6e

    inc sp
    rst RST_38
    inc a
    add hl, de
    jr c, jr_03c_5a28

    jr nc, jr_03c_5a1e

    jr nz, jr_03c_5a28

    rst RST_38
    nop
    inc hl

jr_03c_5a1c:
    rra
    daa

jr_03c_5a1e:
    rra
    ld c, a
    ccf
    rst RST_18
    cp a
    ccf
    cp [hl]
    ld a, a
    ccf
    rst RST_38

jr_03c_5a28:
    ld a, [hl]
    xor l
    jr nz, jr_03c_59d0

    rst RST_38
    rst RST_38
    ret nz

    rst RST_38

jr_03c_5a30:
    pop hl
    rst RST_38
    pop bc
    rst RST_38
    add e
    ei

jr_03c_5a36:
    rst RST_38
    rlca
    adc c
    jr nc, jr_03c_5a41

    rst RST_38
    rst RST_08
    pop af
    rst RST_08
    rst RST_38
    pop af

jr_03c_5a41:
    rst RST_18
    db $e3
    db $db
    rst RST_20
    cp d
    rst RST_00
    or [hl]
    rst RST_38
    rst RST_08
    inc h
    rst RST_18
    ld l, h
    sbc a
    jr jr_03c_5a30

    jr c, @+$01

    ret nz

    ld [hl-], a
    jp nz, $c636

    halt

jr_03c_5a58:
    add [hl]
    ld h, [hl]

Jump_03c_5a5a:
    rst RST_38
    add [hl]
    and $06
    adc $0e
    ld e, $01
    ld a, h
    rst RST_38

jr_03c_5a64:
    inc bc
    ld sp, hl
    rlca
    di
    rrca
    jp $c73f


    xor e
    ccf

jr_03c_5a6e:
    adc a
    xor c

jr_03c_5a70:
    jr nz, jr_03c_5a70

    rla
    db $10
    ld hl, sp+$0d
    jr nc, jr_03c_5a58

    cp [hl]
    cp l
    jr nz, jr_03c_5a1c

    rst RST_38
    ld b, b
    rst RST_38
    ld c, $33
    db $10
    dec e
    cp $53
    db $10
    ld [hl], e
    db $fc
    ld [hl], a
    ld hl, sp-$1a
    ld sp, hl
    rst RST_28
    rst RST_38
    pop af
    ld c, h
    cp a
    reti


    ld a, $b1
    ld a, [hl]
    or e
    rst RST_38
    ld a, h
    ld h, e
    db $fc
    ld h, a
    ld hl, sp-$39
    ld hl, sp-$72
    rst RST_38
    ldh a, [$ffc0]
    ld c, $c8
    ld e, $88
    ld e, $98
    or e
    ld a, $98
    ld e, a
    inc [hl]
    ld d, b
    dec bc
    and b
    ld b, b
    ld d, b
    dec bc
    ld [bc], a
    db $fd
    dec b
    db $10
    rlca
    inc c
    nop
    ccf
    nop
    ld [hl+], a
    rra
    sbc [hl]
    db $10
    add hl, bc
    add b
    nop
    ldh a, [rP1]
    ld h, b
    scf
    ld l, b
    ld sp, $ff13
    jr nc, jr_03c_5acd

jr_03c_5acd:
    nop
    ld c, $00
    add hl, de
    ld b, $36
    rst RST_38
    ld c, $46
    sbc [hl]
    adc $1e
    xor [hl]
    sbc [hl]
    and h
    rst RST_28
    sbc h
    rla
    ld a, a
    sbc l
    dec sp
    db $10
    sbc l
    ld a, a
    add hl, de
    cp $53
    db $10
    ld a, b
    ld d, [hl]
    dec de
    inc c
    inc a
    ret nz

    adc a
    rst RST_38
    ldh a, [$ff67]
    ld hl, sp+$71
    cp $79
    cp $dd
    rst RST_18
    ld a, [hl]
    xor [hl]
    ld a, a
    rla
    ld a, a
    ld h, b
    ld sp, $1e98
    rst RST_38
    ret z

    ld c, $e0
    ld b, $f0
    ld [bc], a
    ld hl, sp+$02
    rst RST_30
    db $fc
    nop
    rlca
    ld l, e
    jr nc, jr_03c_5b2e

    nop
    ld [de], a
    nop
    rst RST_18
    ld a, [de]
    nop
    ld a, [hl-]
    nop
    dec sp
    sbc e
    ld b, b
    inc bc
    nop
    rst RST_18
    ld a, $39
    dec de
    ld h, a
    ld d, a
    ld sp, $8b10
    ld a, a
    rst RST_38
    ld b, [hl]
    ccf
    dec sp

jr_03c_5b2e:
    inc b
    ld h, h
    sub b
    inc b
    ld hl, sp-$23
    ld h, d
    db $dd
    db $10
    push af
    cp $7a
    dec c
    db $10
    ld a, $ff
    rst RST_38
    add e
    ld a, a
    ld b, e
    ld de, $0337
    rlca
    rrca
    rst RST_38
    dec b
    cpl
    and b
    rla
    ld c, c
    add [hl]
    ld c, [hl]
    add c
    rst RST_38
    inc a
    ret nz

    adc [hl]
    ldh a, [$ffc7]
    ld hl, sp-$25
    db $fc
    rst RST_38
    sbc l
    cp $89
    ld a, [hl]
    ld c, a
    db $fc
    cp a
    db $fc
    rst RST_38
    jr nz, jr_03c_5b80

    jr nz, jr_03c_5b84

    jr nc, jr_03c_5b76

jr_03c_5b69:
    jr nc, jr_03c_5b78

    rst RST_38
    inc d
    inc c
    ld e, $07
    ld c, $01
    ret nz

    nop
    rst RST_38
    add b

jr_03c_5b76:
    inc c
    or b

jr_03c_5b78:
    pop bc
    sbc b
    ld h, c
    adc b
    di
    rst RST_38
    ret nz

    db $fd

jr_03c_5b80:
    ld a, b
    ld a, c
    nop
    ret nz

jr_03c_5b84:
    ldh [rP1], a
    rst RST_38
    dec e
    rst RST_38
    cp [hl]
    ld a, a
    sbc h
    ld a, a
    call z, $ff3f
    pop bc
    ccf
    ld a, e
    rlca
    ccf
    rrca
    ld e, [hl]
    ccf
    rst RST_38
    ld b, a
    add e
    xor [hl]
    ld b, c
    ld e, b
    and a
    jr c, @-$37

    rst RST_38
    ld h, [hl]
    sbc c
    ld de, $10ef
    rst RST_28
    add b
    rst RST_38
    ld a, a
    ccf
    db $fc
    ei
    db $fc
    jr nc, @+$01

    ld bc, $2029
    cp a
    ld d, e
    db $fc
    or d
    db $fc
    ld [hl], d
    db $fc
    jr nz, jr_03c_5bca

    ld a, h
    cp e
    nop
    ld h, [hl]
    ld d, l
    jr c, jr_03c_5c1c

    ld a, $40
    ld a, d
    nop
    ld d, d
    rst RST_38

jr_03c_5bca:
    dec b
    sub b
    rrca
    ld bc, $811f
    rra
    dec bc
    ei
    rra
    dec b
    and e
    jr nz, jr_03c_5b69

    ld a, a
    rlca
    rst RST_38
    cpl
    rst RST_28
    rst RST_38
    ld e, a
    rst RST_38
    rst RST_28
    ld h, a
    ld d, b
    cp a
    rst RST_38
    ld [bc], a
    ei
    rst RST_38
    ld bc, $12b3
    and c
    rst RST_38
    jp nc, $a4fd

    rst RST_38
    ei
    jp nc, $f2fd

    db $fc
    sub $f8
    and $ff
    ld hl, sp-$5a
    ld hl, sp+$0c
    ldh a, [$ff5c]
    and b
    cp h
    rst RST_20
    ld b, b
    ld a, b
    add b
    sub $07
    sub $03
    dec bc
    ccf
    sub l
    rst RST_28
    ld a, a
    adc e
    ld a, a
    add l
    and e
    ld d, b
    add b
    ld a, a
    pop bc
    rst RST_28
    ld a, $c5
    ld a, [hl-]

jr_03c_5c1b:
    ld e, a

jr_03c_5c1c:
    ld sp, $5f10
    rst RST_38
    xor e
    rst RST_38
    ld a, a
    rla
    rst RST_38
    and d
    ld e, a
    db $dd
    inc hl
    inc hl
    rst RST_38
    nop
    push hl
    ld a, [$f5ca]
    or l
    ld [$ffce], a
    pop af
    sbc l
    ldh [c], a
    cp a
    ret nz

    ld e, e
    and h
    ld a, a
    rst RST_38
    add b
    ld hl, sp+$00
    ldh a, [rSC]
    ldh a, [rSC]
    ldh [$ff8f], a
    ld b, $c0
    ld c, $c0
    di
    ld [hl-], a
    sub $02
    ld bc, $5902
    rst RST_28
    inc a
    ld e, c
    inc a
    ld b, c
    dec a
    ld b, b
    add b
    rlca
    jr z, jr_03c_5c1b

    rra
    ld e, l
    ccf
    sbc a
    ld a, a
    ld bc, $003e
    inc e
    sbc a
    ldh [rP1], a
    nop
    rra
    ld a, a
    inc bc
    ld h, b
    xor l
    jr nz, jr_03c_5ca0

    rst RST_28
    ld a, a
    nop
    add b
    rra
    ld l, a
    jr nz, jr_03c_5c7b

    ldh [$ff80], a
    rst RST_30

jr_03c_5c7b:
    ld hl, sp-$40
    cp $3d
    nop
    cp a
    nop
    rlca
    ldh [$fff4], a
    ccf
    ld b, l
    ld e, a
    ld sp, $2abe
    ld h, c
    ld sp, hl
    ld sp, hl
    and $e5
    rst RST_38
    db $dd
    jp nc, $a5ba

    ld [hl], h
    ld c, e
    ld a, [$ffc5]
    db $f4
    adc e
    add sp, -$69
    ld [hl], h
    dec bc

jr_03c_5ca0:
    xor d
    ld d, a
    rst RST_18
    ld b, l
    cp a
    dec bc
    rst RST_38
    rla
    ld h, l
    ld d, b
    rla
    rst RST_38
    rst RST_38
    dec bc
    rst RST_38
    ld c, h
    ldh a, [$ffa2]
    db $fc
    ld d, l
    cp $f5
    ld sp, hl
    xor e
    nop

jr_03c_5cb9:
    ld hl, sp+$17
    db $10
    cp $ff
    jr @-$40

    db $db
    ld [$623e], sp
    ld h, e

jr_03c_5cc5:
    add b
    ld e, $6a
    ld h, c
    ld [hl], h
    dec bc
    rst RST_38
    ld a, e
    inc b
    ld [hl], a
    ld c, $76
    rrca
    ld [hl], $0f
    rst RST_38
    ld [hl-], a
    rrca
    dec sp
    rlca
    add hl, de
    rlca
    inc de
    rst RST_38
    rst RST_38
    ld b, c
    cp a
    add c
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    ccf
    ld b, h

jr_03c_5ce8:
    cp a
    ld h, [hl]
    sbc a
    rst RST_20
    sbc a
    ld e, h
    ld h, c
    ld e, h
    ld h, c
    push af
    ld a, a
    ld h, l
    ld d, b
    ld d, a
    ld c, l
    ld h, b
    ld c, [hl]
    adc [hl]
    ld c, [hl]
    adc [hl]
    rst RST_38
    ld b, [hl]
    add [hl]
    ld h, b
    add b
    jr nz, @-$3e

    jr nc, jr_03c_5cc5

    rst RST_38
    jr jr_03c_5ce8

    ld [$98f0], sp
    add a
    sbc h
    add e
    rst RST_38
    call z, $ccc3
    jp $e1ee


    and $e1
    rst RST_38
    rst RST_20

jr_03c_5d19:
    ldh [$fff3], a
    ldh a, [$fff3]
    adc a
    di
    adc a
    rst RST_38
    ei
    rst RST_00
    db $db
    rst RST_20
    ld e, l
    db $e3
    ld l, l
    di
    ld e, a
    inc h
    ei
    ld [hl], $f9
    daa
    adc c
    jr nc, jr_03c_5cb9

    add a
    jr nc, jr_03c_5db2

    pop bc
    rst RST_00
    jr nc, jr_03c_5d19

    rst RST_38
    ld h, b
    rst RST_38
    call nz, Call_03c_5083
    ld e, l
    ldh a, [c]
    ld hl, $7d50
    cp $fc
    ld a, e

jr_03c_5d47:
    jr nc, jr_03c_5d47

    ret


    db $10
    rst RST_38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    adc a
    rrca
    cp a
    rst RST_00
    rlca
    pop hl
    ld bc, $8070
    cp [hl]
    ld h, b
    ldh a, [$ffdb]
    pop af
    ldh a, [$ff9a]
    ld hl, $f8f8
    sub [hl]
    ld hl, $fd32
    rst RST_38
    sbc e
    ld a, h
    adc l
    ld a, [hl]
    call $c63e
    ccf
    rst RST_38
    add $3f
    db $e3
    rra
    ld h, c
    rra
    ld [hl], b
    rst RST_38
    rst RST_30
    jr c, @+$01

    cp b
    inc bc
    ld d, b
    adc $3f
    xor $1f
    rst RST_18
    ld h, a
    sbc a
    rst RST_30
    adc a
    ld a, a
    ld sp, $1f10
    rst RST_38
    db $dd
    rrca

Call_03c_5d91:
    adc c
    jr nc, @+$0d

    rst RST_38
    dec b
    ld l, a
    ld d, b
    jr c, @-$3e

    rst RST_38
    cp [hl]
    ret nz

    sbc a
    ldh [$ffcf], a
    ldh a, [$ffc3]
    db $fc
    rst RST_20
    db $e3
    db $fc
    pop af
    ld e, c
    ld h, b
    dec a
    nop
    ld b, d
    nop
    inc h
    dec hl
    nop
    jr jr_03c_5e08

jr_03c_5db2:
    ld [hl], b
    inc h
    ld d, d
    ld [hl], b
    add c
    ld d, b
    ld a, a
    ld h, d
    ld a, a
    add b
    ld [hl], h
    ld a, a
    add [hl]
    ld a, a
    sbc b
    ld a, a
    xor d
    ld a, a
    cp h
    ld a, a
    adc $7f
    dec a
    nop
    ld b, e
    xor a
    nop
    dec h
    nop
    add hl, de
    or $70
    dec h
    ldh a, [c]
    ld [hl], b
    add c
    rst RST_38
    dec e
    nop
    ld h, b
    rst RST_38
    rst RST_38
    nop
    rst RST_18
    nop
    rst RST_38
    nop
    cp e

jr_03c_5de2:
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
    jr nz, jr_03c_5de2

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

jr_03c_5e08:
    add hl, bc
    nop
    ccf

jr_03c_5e0b:
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
    jr nz, jr_03c_5e0b

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

Jump_03c_5ef5:
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

jr_03c_5f05:
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

jr_03c_5f28:
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
    jr nz, jr_03c_5f05

    jr nz, jr_03c_5f28

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
    jr nz, jr_03c_5f6a

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

jr_03c_5f6a:
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

jr_03c_5f98:
    call z, Call_000_09ff
    ld b, l
    add hl, bc
    ld [$8991], sp
    ld [hl+], a
    rra
    rst RST_18
    jr nz, jr_03c_6004

    ld h, b
    rst RST_38
    add b
    ld h, [hl]
    inc de

jr_03c_5faa:
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

jr_03c_5fbe:
    nop
    ld a, h
    rst RST_38
    nop
    adc a
    nop
    rst RST_00
    jr nz, jr_03c_5faa

    inc d

jr_03c_5fc8:
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


    jr jr_03c_5f98

    jr nz, jr_03c_5ffa

    add hl, de
    jr nz, jr_03c_5fbe

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

jr_03c_5ffa:
    ld [hl], e
    rst RST_38
    ld [bc], a

Jump_03c_5ffd:
    db $dd
    ld [$00f7], sp
    ld l, c
    db $fd
    ld [bc], a

jr_03c_6004:
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
    jr nz, jr_03c_5fc8

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
    jr nc, jr_03c_6071

    add l
    dec bc
    rst RST_38

jr_03c_6070:
    rst RST_08

jr_03c_6071:
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
    jr nz, jr_03c_60c2

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

Call_03c_6098:
    jr jr_03c_60d6

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
    jr nz, jr_03c_611b

    db $fc
    ld bc, $01f8
    ld sp, hl
    ld l, e

jr_03c_60c2:
    jr nz, @-$07

jr_03c_60c4:
    ld b, l
    jr nc, jr_03c_60c4

    rst RST_28
    ld e, e
    ld [hl-], a
    rst RST_38
    nop
    cp a
    nop
    cp a
    jr nz, jr_03c_6070

    sbc a
    ld h, b
    ld a, a
    nop
    add hl, bc

jr_03c_60d6:
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
    jr nz, jr_03c_60fa

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

jr_03c_60fa:
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

jr_03c_6112:
    xor d
    jr nz, jr_03c_615d

    ld d, b
    ld [de], a
    and l
    or l
    ret c

    rst RST_38

jr_03c_611b:
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

jr_03c_6126:
    nop
    jr nz, jr_03c_6126

    ld l, a
    jr nz, jr_03c_611b

    ld e, a
    jr nz, jr_03c_6195

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

jr_03c_613b:
    ld a, h
    rra
    jr nc, jr_03c_61b7

    inc bc
    ei
    inc b

jr_03c_6142:
    db $fd
    ld bc, $9dfe
    ld sp, $945f
    adc b
    ld [hl], a
    ld [bc], a
    db $fd
    inc l
    ld sp, $b1bf
    jr nz, jr_03c_6112

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

jr_03c_615d:
    add c
    nop
    ld b, d
    nop
    inc h
    nop
    jr jr_03c_613b

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
    call c, Call_03c_5d91
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

jr_03c_6195:
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
    jr nc, jr_03c_6142

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

jr_03c_61b7:
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
    jr jr_03c_61b7

    rlca
    db $10
    dec hl
    sub h
    ldh [rVBK], a
    add d
    ld e, a
    sub h
    ld e, a
    and [hl]
    ld e, a
    cp b
    ld e, a
    inc c
    jp z, $dc5f

    ld e, a
    nop
    add c
    rst RST_38
    dec e
    nop
    ld [hl], b
    db $dd
    nop
    nop
    inc c
    ccf
    nop
    ld e, a
    rrca
    ld b, $bf
    nop
    rst RST_38
    ld a, a
    nop
    and b
    nop
    ret nc

    nop
    add sp, $00
    rst RST_38
    push de
    nop
    ld [$f500], a
    nop
    cp $00
    rst RST_38
    rst RST_38
    nop
    inc bc
    nop
    rlca
    nop
    dec hl
    nop
    ld d, a
    ld d, a
    nop
    xor a
    add hl, de
    ld [bc], a
    rst RST_38
    nop
    ld [bc], a
    ld [$0043], sp
    ld a, a
    inc c
    nop
    inc e
    nop
    ld c, $00
    dec e
    rra
    nop
    ld d, a
    ld d, l
    nop
    xor d
    dec h
    nop
    rst RST_38
    ld d, a
    inc b
    cp a
    ld de, $bf00
    cp [hl]
    ld bc, $01fe
    db $fc
    inc bc
    ld h, [hl]
    ld bc, $75f8
    rlca
    nop
    inc bc
    ld d, c
    ld d, e
    nop
    ld d, l
    nop
    db $eb
    ld e, l
    ld [bc], a
    ld [hl], l
    ld a, a
    dec de
    ld [bc], a
    rst RST_38
    add l
    ld [bc], a
    rst RST_38
    nop
    ld b, b
    adc a
    nop
    rst RST_38
    ldh [rP1], a
    ld [hl], b
    nop
    ld hl, sp+$00
    ld [hl], h
    nop
    rst RST_20
    ld a, [$7d00]
    ld d, a
    ld b, $58
    inc bc
    cp $01
    ld l, $8f
    nop
    rra
    nop
    ld a, $11
    ld [bc], a
    add [hl]
    inc bc
    nop
    ld bc, $ee80
    adc a
    nop
    and b
    nop
    ret nz

    rra
    nop
    pop de
    nop
    dec bc
    cp [hl]
    ld sp, $0b00
    nop
    rla
    nop
    rrca
    or c

jr_03c_62b1:
    nop
    cpl
    ld a, h
    ld de, $0000
    dec b
    add b
    nop
    ld d, b
    nop
    xor b
    dec h
    nop
    ld e, a
    nop
    nop
    ld bc, $0200
    pop af
    ld [bc], a
    dec b
    cpl
    nop
    pop de
    dec d
    dec hl
    nop
    adc d
    inc bc
    ld e, b
    dec b
    add d
    ld d, c
    nop
    xor e
    nop
    db $ed
    rst RST_18
    sbc a
    ld a, [bc]
    rst RST_30
    ld [$1324], sp
    db $e3
    inc e
    pop de
    pop hl

jr_03c_62e3:
    ld l, $28
    ld bc, $09a0
    ld h, h
    ld bc, $036a
    db $f4
    dec bc
    add sp, -$41
    rla

jr_03c_62f1:
    ldh a, [rIF]
    ld a, [$fd00]
    ld d, a
    inc b
    rst RST_18
    ccf
    jr nz, jr_03c_62e3

    jr jr_03c_62f1

    inc c
    xor e
    dec [hl]
    nop
    inc a
    ld bc, $58fe
    dec b
    rst RST_28
    db $10
    rst RST_28
    db $10
    rst RST_00
    jr c, jr_03c_62b1

    rst RST_38
    ld e, h
    pop bc
    ld a, $80
    ld a, a
    ld b, b
    cp a
    add b
    add sp, -$42
    inc bc
    nop
    nop
    db $10
    ld de, $2daf
    nop
    ldh [c], a
    dec e
    pop de
    and a
    ld l, $a0
    ld e, a
    ld a, h
    ld [de], a
    ld e, b
    nop
    ld [$023e], sp
    ld b, b
    db $e4
    ld d, e
    ld [bc], a
    ld a, h
    ld bc, $d5ff
    nop
    call c, $bf01
    nop
    ld a, [hl]
    ret nz

    ld b, c
    inc d
    sub $01
    jp nc, Jump_000_3201

    ld bc, $011a
    ld d, h
    inc bc
    ld a, a
    add b
    rst RST_28
    sub a
    ld l, b
    adc d
    ld [hl], l
    ld a, b
    ld de, $08f7
    di
    rst RST_00
    inc c
    pop af
    ld c, $90
    inc de
    ld d, a
    ld bc, $0558
    ld e, l
    and d
    rst RST_30
    xor d
    ld d, l
    inc d
    ld a, h
    nop
    di
    inc c
    pop hl
    ld e, $f3
    ldh [$ff1f], a
    sbc b
    inc de
    db $ec
    inc de
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld e, a
    and b
    ld a, [hl+]
    push de
    dec b
    ld a, [$0157]
    ld hl, sp+$7f
    rlca
    ldh a, [rIF]
    add sp, $17
    ld d, b
    xor a
    ld b, $25

jr_03c_638b:
    rst RST_28
    rst RST_38
    nop
    ld a, [$4a05]
    ld de, $7f80
    ldh [$fff9], a
    rra
    ld [hl+], a
    ld hl, $117c
    inc bc
    db $fc
    rrca
    di
    rra
    ld a, a
    rst RST_28
    ccf
    rst RST_18
    ccf
    rst RST_18
    ld a, h
    cp h
    ld d, a
    ld bc, $c0ff
    ccf
    ldh a, [$ffcf]
    ld hl, sp-$09
    cp $f9
    rst RST_28
    cp $fe
    ld a, $3e
    ld d, a
    dec b
    ld bc, $03fe
    rst RST_18
    db $fd
    rlca
    ei
    rrca
    rst RST_30
    ld d, a

jr_03c_63c4:
    inc bc
    ldh [$ff1f], a
    rst RST_38
    ldh [$ffe7], a
    ld hl, sp-$05
    db $fc
    db $fd
    db $ec
    db $ec
    or [hl]
    ld d, a
    dec b
    inc bc
    db $fc
    ld l, d
    ld hl, $fb07
    ld d, a
    ld bc, $6f3c
    jp Jump_000_3cfc


    rst RST_38
    sbc b
    ld [hl+], a
    db $e3
    db $e3
    rra
    inc d
    ld e, a
    pop af
    ld c, $76
    add a
    cp e
    xor d
    jr nz, jr_03c_638b

    ld d, a
    ld [bc], a
    rst RST_38
    ei
    inc b
    ld hl, sp+$07
    ld a, e
    add e
    cp l
    add e
    rst RST_20
    sbc l
    adc a
    sub e
    ld d, a
    ld b, $12
    jr nz, jr_03c_63c4

    rst RST_18
    pop bc
    db $fd
    adc $57
    inc bc
    inc e
    db $e3
    inc a
    call c, $bf7f
    ld b, a
    rst RST_38
    ld a, a
    db $fd
    ld d, d
    ld [de], a
    ld l, b
    ld hl, $20e6
    ld a, l
    cp d
    ld hl, $74fa
    daa
    db $fc
    ld a, [$7422]
    dec bc
    cp d
    dec b
    ld [hl], h
    db $dd
    dec bc
    ld [hl-], a
    ld hl, $57a8
    ld b, b
    inc a
    nop
    ld a, b
    cp c
    ei
    ld a, b
    cp e
    ld [de], a
    ld [hl-], a
    cp c
    inc a
    call c, $df3f
    rst RST_38
    rra
    rst RST_28
    ld e, $de
    ld c, $ee
    inc b
    push af
    ei
    nop
    ld sp, hl
    add a
    ld [bc], a
    rrca
    ldh [$ffe3], a
    rrca
    rst RST_30
    db $db
    rra
    rst RST_28
    ld c, b
    ld hl, $de3e
    jr c, jr_03c_648c

    adc $c6
    cp a
    adc a
    sub a
    rrca
    scf
    rrca
    ld [hl], a
    ld b, [hl]
    dec sp
    rra
    rst RST_18
    ld l, a
    rra
    cpl
    sbc a
    xor a
    ld e, d
    ld sp, $c1c1
    xor a
    add b
    sbc [hl]
    add b
    sbc [hl]
    or e
    nop
    ccf
    ld l, b
    ld [hl-], a
    ld a, $7b
    rst RST_00
    db $db
    ld [hl], b

jr_03c_647e:
    ld sp, $9b87
    rlca
    dec sp
    adc h
    ld hl, $07ff
    dec de
    sbc a
    adc a
    rst RST_18
    rst RST_18

jr_03c_648c:
    rst RST_38
    rst RST_38
    rst RST_38
    cp $fe
    db $fc
    db $fc
    ldh a, [$fff1]
    ldh [$ffe3], a
    rst RST_38
    ret nz

    rst RST_08
    pop bc
    adc $c3
    call $9d83
    ld a, [$3078]
    ld a, e
    ld a, d
    ld [hl-], a
    ei
    ld sp, hl
    ld hl, sp-$0f
    ldh a, [c]
    cp a
    pop hl
    and $e1
    xor $c1
    adc $a8
    inc sp
    jp $cdff


    db $e3
    db $ed
    db $e3
    db $ed
    pop hl
    xor $e1
    rst RST_00
    and $f1
    or $ba
    ld sp, $23fa
    ret nz

    scf
    rrca
    rst RST_30
    ei
    rlca
    ld hl, sp+$57
    ld bc, $cf30
    ld h, b
    and a
    ld h, b
    ld a, a
    and a
    ld [hl], b
    or e
    ld hl, sp-$07
    db $fc
    db $fc
    ld e, l
    jr nz, jr_03c_647e

    adc $1f
    rst RST_28
    rrca
    rst RST_30
    jr nc, jr_03c_6517

    jr c, jr_03c_651c

    ld e, [hl]
    db $e4
    or $35
    ld c, d
    inc a
    ld l, a
    ld e, d
    inc sp
    db $10
    ld b, l
    rrca
    scf
    inc bc
    cp l
    dec a
    jr nz, jr_03c_6541

    add e
    sbc l
    add e
    sbc l
    ld [hl], b

jr_03c_64ff:
    inc sp
    rst RST_00
    rst RST_30
    db $db
    rst RST_08
    rst RST_10
    jr c, @+$45

    ldh [$ffe7], a
    ldh a, [$fff3]
    cp $e0
    ld [hl-], a
    cp $ff
    rst RST_38
    sbc a
    sbc a
    sbc a
    adc a
    db $fc
    sbc d

jr_03c_6517:
    inc sp
    adc h
    jr nz, @+$7d

    rlca

jr_03c_651c:
    dec sp
    add a
    sbc e
    rst RST_00
    ld sp, hl
    res 5, b
    dec [hl]
    xor h
    inc sp
    jp $f1cd


    or $f0
    db $fd
    rst RST_30
    ld [hl], d

jr_03c_652e:
    ld b, a
    ldh [$ffe7], a
    db $fc
    db $fc
    ld hl, sp+$79
    cp $82
    ld b, e
    ld a, b
    cp c
    jr nz, jr_03c_64ff

    nop
    rst RST_30
    ld a, b
    rst RST_30
    cp c

jr_03c_6541:
    ld a, h
    cp h
    inc e
    ld sp, $f30f
    ld [bc], a
    db $fc
    sbc $57
    ld bc, $de3e
    cp $3e
    adc b
    ld sp, $c7c0
    and b
    or c
    nop
    ld e, b
    nop

jr_03c_6559:
    ld d, [hl]
    jr nc, jr_03c_658f

    jr nc, jr_03c_652e

    jr nc, jr_03c_6559

    dec hl
    ld [bc], a
    rst RST_38
    rst RST_38
    rra
    cpl
    sbc [hl]
    sbc [hl]
    cp $fe
    ld hl, sp-$08
    db $e3
    ldh [$ffe3], a
    rst RST_10
    nop
    ld e, b
    nop
    ld b, [hl]
    ld sp, $fb07
    inc bc
    ei
    db $fd
    ld bc, $42bb
    nop
    rst RST_38
    rst RST_00
    jp $bde7


    rst RST_20
    sbc b
    ld hl, $7cfc
    nop
    add c
    ld d, a
    ld bc, $5f8f
    sub a

jr_03c_658f:
    adc a
    or a
    adc a
    or a
    sub [hl]
    ld sp, $9b00
    ld b, d
    rst RST_38
    adc a
    sub a
    add a
    sbc e
    add e
    sbc l
    add c
    sbc [hl]
    xor $b7
    inc b
    rst RST_38
    db $e3
    push hl
    db $10
    ld d, c
    pop hl
    and $e0
    or a
    ld h, a
    nop
    adc a
    inc c
    ld d, e
    di
    di
    db $e4
    ld b, d
    inc a
    ei
    nop
    pop bc
    ld [hl], d
    ld [hl+], a
    rst RST_28
    ret nz

    rst RST_08
    ret nz

    rst RST_18
    db $fc
    or c
    nop
    ld [bc], a
    inc d
    jr c, jr_03c_658f

    ld a, b
    cp e
    db $fc
    ld a, l
    rst RST_38
    db $fc
    ld a, l
    ld hl, sp+$79
    ld b, b
    add e
    nop
    rst RST_20
    nop
    dec a
    inc b
    ld d, h
    ld e, a
    ld h, [hl]
    ld e, a
    ld a, b
    ld e, a
    adc d
    ld e, a
    sbc h
    ld e, a
    xor [hl]
    ld e, a
    ret nz

    ld e, a
    nop
    jp nc, $e45f

    ld e, a
    or $5f
    ld [$1a6f], sp
    ld l, a
    inc l
    ld l, a
    ld a, $6f
    ld d, b
    ld l, a
    nop
    ld h, d
    ld l, a
    ld [hl], h
    ld l, a
    add [hl]
    ld l, a
    sbc b
    ld l, a
    xor d
    ld l, a
    cp h
    ld l, a
    adc $6f
    ldh [$ff6f], a
    nop
    ldh a, [c]
    ld l, d
    rst RST_38
    ld de, $0900
    ld [hl], b
    ld bc, $0100
    add hl, bc
    nop
    inc b
    ld l, d
    or l
    ld a, [hl]
    cp a
    ld e, e
    cp b
    ld e, h
    inc l
    nop
    ld b, b
    and b
    ld d, b
    add sp, -$0c
    ld a, [hl-]
    dec e
    add hl, bc
    nop
    ld [$0201], sp
    ld bc, $0502
    ld [bc], a
    dec b
    cp d
    ld a, l
    cp $6d
    add $d7
    db $d3
    db $db
    inc l
    ld e, l
    xor l
    ld e, l
    cp c
    ld e, e
    cp e
    ld e, e
    nop
    add b
    ld b, b
    and b
    ld d, b
    xor d
    push af
    ld a, d
    ld d, $2e
    rla
    dec bc
    dec b
    inc bc
    dec b
    and d
    adc $63
    ld a, c
    inc a
    cp [hl]

jr_03c_6655:
    sub e
    pop de
    ret nc

    add b
    ld b, b
    and b
    ret nc

    ld l, d
    dec [hl]
    sbc [hl]
    rst RST_00
    inc bc
    dec b
    inc bc
    dec b
    dec bc
    ld d, a
    xor e
    ld d, a
    sbc e
    cp c
    add hl, bc
    cp l
    ld [bc], a
    inc a
    ld h, [hl]
    ld h, [hl]
    or d
    or $b6
    db $f4
    and h
    db $ec
    db $ec
    add sp, $1f
    rlca
    ld sp, $cf9c
    ld h, a
    or d
    ld e, c
    ld d, c
    xor d
    push af
    ld a, d
    rra
    rst RST_00
    pop af
    inc a
    ret c

    ret z

    ld l, h
    db $e4
    ld [hl], h
    or [hl]
    jp nc, Jump_03c_717b

    inc e
    ld c, $07
    inc bc
    nop
    jr nz, jr_03c_66b0

    xor e
    sub $6e
    ld a, $8e
    db $e4
    ld [hl], c
    add hl, sp
    ld h, [hl]
    ld h, [hl]
    jp nz, $c309

    ld [bc], a
    add c
    add c
    ret z

    ret c

    ld d, c
    ld d, c
    ld de, $2323
    daa

jr_03c_66b0:
    inc l
    ld d, $0a
    dec b
    dec bc
    dec b
    ld [bc], a
    ld bc, $c38f
    ld h, b
    jr nc, jr_03c_6655

    call z, Call_03c_77e6
    add hl, sp
    adc l
    push hl
    ld [hl], b
    inc e
    rrca
    inc bc
    nop
    inc c
    adc [hl]
    adc a
    add a
    rst RST_00
    ld b, a
    db $e3
    db $e3
    dec e
    rrca
    rlca
    add e
    pop bc
    ldh a, [$fff8]
    db $fc
    add c
    add b
    add b
    ld [$0908], sp
    inc c
    ld [bc], a
    and a
    rst RST_00
    rst RST_08
    ld c, a
    add hl, bc
    rra
    ld [bc], a
    ccf
    add hl, bc
    nop
    ld b, $55
    or e
    ld e, c
    inc l
    ld d, $0b
    dec b
    xor d
    ld d, l
    nop
    add b
    jp nz, Jump_03c_7061

    jr c, @-$62

    adc $63
    add hl, bc
    ld bc, $c002
    ld [hl], b
    inc a
    ld e, $09
    rst RST_38
    rlca
    inc e
    ld e, $9e
    sbc $fe
    add hl, bc
    rst RST_38
    ld [bc], a
    ccf
    ld a, a
    add hl, bc
    rst RST_38
    dec b
    xor d
    ld d, l
    rst RST_38
    rst RST_38
    nop
    ld a, a
    rra
    jp $ffab


    cp $00
    ld a, a
    rst RST_38
    ldh a, [$ff80]
    rst RST_20
    di
    ld bc, $feff
    add hl, bc
    nop
    ld [bc], a
    rrca
    add a
    jp $01e1


    nop
    ld bc, $000f
    nop
    ld a, a
    ld b, b
    ld b, b
    ld [hl], b
    ld c, h
    ld b, e
    nop

Call_03c_673d:
    nop
    sbc a
    pop de
    ld [hl], c
    add hl, bc
    ld sp, $0002
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc b
    nop
    nop
    di
    add hl, bc
    ld [de], a
    ld [bc], a
    ld a, [de]
    ld a, [bc]
    nop
    nop
    pop hl
    ld hl, $3321
    ld [de], a
    inc de
    nop
    nop
    rst RST_38
    add hl, bc
    ld de, $3f02
    pop de
    ld hl, sp-$42
    ld d, a
    xor e
    dec d
    ld [bc], a
    dec d
    xor d
    ldh [$ff78], a
    ld e, $c7
    pop af
    cp h
    ld e, a
    rst RST_38
    ld bc, $071f
    add c
    ldh [$ff78], a
    ld e, $c7
    add hl, bc
    rst RST_38
    inc b
    ccf
    rrca
    inc bc
    add hl, bc
    ld b, [hl]
    inc b
    ld b, a
    ld a, [hl]
    ld b, b
    pop af
    ld sp, $333d
    ccf
    pop af
    ld sp, $0471
    inc b
    rlca
    inc c
    ld [$0c08], sp
    dec bc
    ld a, [bc]
    dec de
    ld [$09ce], a
    add $03
    ldh a, [c]
    ld e, $0c
    inc c
    dec c
    ld c, $18
    ld h, b
    ld de, $1917
    ld [hl], c
    sub c
    ld de, $3d13
    ld d, a
    cp a
    ld hl, sp-$3d
    rra
    pop bc
    db $fc
    ld a, a
    cp $80
    ccf
    cp $c0
    db $fc
    rrca
    ldh [$ff03], a
    rst RST_38
    ld hl, sp+$09
    nop
    ld [bc], a
    add b
    ldh a, [$ffc1]
    add b
    nop
    rlca
    ccf
    rst RST_38
    ccf
    rrca
    ld b, b
    ret nz

    ld b, b
    ld a, [hl]
    ld b, a
    add hl, bc
    ld b, [hl]
    ld [bc], a
    ld sp, $1109
    inc bc
    pop af
    rra
    ccf
    add hl, bc
    ld [$1b03], sp
    ld e, $18
    ldh a, [$ffc7]
    or $df
    rst RST_38
    add $09
    ld [bc], a
    ld [bc], a
    add e
    inc a
    ret nz

    ld hl, $31e1
    dec l
    inc hl
    db $db
    add hl, bc
    ld a, [de]
    ld b, $ff
    rst RST_38
    nop
    ld a, a
    rra
    jp Jump_03c_7ff8


    cp $00
    ld a, a
    db $fc
    ret nz

    db $fc
    ccf
    add e
    ld c, $7f
    ldh a, [$ff09]
    nop
    ld [bc], a
    add b
    ld hl, sp+$03
    nop
    nop
    rlca
    rra
    rrca
    ld bc, $4300
    ld a, h
    ld b, b
    ld b, b
    ld b, c
    ld a, a
    nop
    nop
    pop de
    ld d, $38
    ld [hl], b
    ret nc

    sbc a
    nop
    nop
    pop af
    rra
    add hl, bc
    ld de, $ff02
    nop
    nop
    ldh [c], a
    ld [hl+], a
    ld [hl+], a
    ld a, [hl-]
    daa
    ccf
    nop
    nop
    add hl, bc
    inc sp
    inc b
    rst RST_38
    nop
    nop
    sbc $3b
    dec e
    inc de
    dec de
    cp $00
    nop
    xor a
    ld d, l
    xor d
    dec b
    add hl, bc
    nop
    inc bc
    ld hl, sp+$7f
    xor a
    ld d, l
    ld a, [bc]
    ld bc, $1502
    ccf
    add e
    ld hl, sp+$79
    or e
    ld h, [hl]
    call z, Call_03c_6098
    ldh [$ffc1], a
    add d
    inc b
    nop
    nop
    inc bc
    ld a, a
    rst RST_28
    adc [hl]
    inc c
    ld [$1110], sp
    ld bc, $7f09
    inc bc
    ccf
    ccf
    ld a, $3e
    rst RST_38
    rst RST_38
    cp a
    sbc a
    rra
    rrca
    rrca
    rlca
    add hl, bc
    nop
    ld [bc], a
    ld bc, $0502
    dec bc
    rla
    dec hl
    ld d, [hl]
    cp h
    ld a, c
    db $e3
    adc $9c
    jr c, jr_03c_68be

    ld h, b
    ret nz

    add c
    inc bc
    ld c, $3c
    ld [hl], c
    rrca
    ld e, $7a
    ldh [c], a
    add h
    inc [hl]
    db $e4
    db $ec
    inc bc
    rlca
    rrca
    rrca
    dec de
    inc sp
    ld h, e
    ld l, e
    inc a
    inc e
    jr @+$1a

    db $10
    ld de, $0301
    rlca
    ld b, a
    jp $e3c3


    pop hl
    ld sp, $2e31
    ld e, h
    cp c
    ld [hl], e
    db $e4
    rst RST_08
    sbc [hl]
    jr c, jr_03c_691f

jr_03c_68be:
    rst RST_00
    adc h
    ld sp, $1ec7
    ld a, l
    ld [$1ec7], a
    ld a, l
    ld [$a3d5], a
    ld b, l
    dec bc
    ld l, b
    ret


    db $db
    db $d3
    sub [hl]
    cp h
    cp c
    dec sp
    res 3, e
    dec sp
    ld a, e
    ld a, e
    ei
    db $db
    cp e
    inc bc
    ld [bc], a
    ld b, $06
    inc c
    adc h
    adc l
    sbc c
    ld sp, $1818
    ret c

    call z, $eccc
    and $03
    rra
    db $fd
    ld [$a855], a
    ld b, b
    nop
    call nc, Call_03c_40a8
    add b
    add hl, bc
    nop
    inc bc
    rla
    dec bc
    rla
    ld c, $16
    ld c, $16
    rrca
    ld [hl], e
    ld h, [hl]
    ld c, l
    ld a, [de]
    inc [hl]
    ld l, b
    ret nc

    and b
    ld e, e
    cp c
    ld e, l
    dec l
    dec e
    dec l
    dec e
    dec l
    sbc c
    cp e
    or e
    or [hl]
    rst RST_30
    and $ed
    xor $e6
    or [hl]
    ld [hl], e

jr_03c_691f:
    or e
    ld e, e
    cp c
    ld e, c
    dec l
    add hl, bc
    nop
    rrca
    rla
    ld l, $15
    ld a, [hl+]
    ld d, h
    jr z, jr_03c_697e

    and b
    ld b, b
    add b
    add hl, bc
    nop
    dec b
    dec e
    dec l
    dec e
    dec l
    dec e
    dec l
    dec e
    dec l
    call $dcda
    sbc d
    or h
    cp b
    inc [hl]
    ld l, b
    inc e
    inc l
    ld d, $0e
    ld d, $0b
    rla
    dec bc
    add hl, bc
    nop
    dec de
    inc b
    rlca
    inc bc
    inc bc
    add hl, bc
    nop
    dec b
    ret nz

    ldh [$ff09], a
    nop
    ld [de], a
    db $10
    jr c, jr_03c_6996

    inc a
    inc a
    add hl, bc
    inc bc
    inc bc
    add hl, bc
    rlca
    inc bc
    add hl, bc
    nop
    ld b, $80
    ld bc, $0901
    nop
    dec b
    ldh a, [$fffc]
    cp $ff
    ld a, a
    ld a, a
    ccf
    ccf
    add hl, bc
    nop
    inc bc
    add b
    ret nz

    ldh [$fff8], a

jr_03c_697e:
    add hl, bc
    nop
    rlca
    ld a, h
    add hl, bc
    ld a, [hl]
    inc bc
    add hl, bc
    rst RST_38
    ld [bc], a
    add hl, bc
    rrca
    inc bc
    add hl, bc
    rra
    inc bc
    ldh [$fff8], a
    cp $7f
    ccf
    rra
    rrca
    rlca

jr_03c_6996:
    add hl, bc
    nop
    ld [bc], a
    add b
    ldh [$fff8], a
    cp $ff
    ccf
    ccf
    rra
    rra
    add hl, bc
    rrca
    ld [bc], a
    add a
    cp $09
    rst RST_38
    ld b, $00
    ld bc, $c181
    pop af
    ei
    add hl, bc
    rst RST_38
    add hl, bc
    ccf
    ccf
    cp a
    cp a
    add hl, bc
    rst RST_38
    inc bc
    inc bc
    ld bc, $0901
    nop
    inc b
    add hl, bc
    rst RST_38
    inc bc
    ld a, a
    ccf
    rra
    rrca
    rst RST_00
    di
    ei
    add hl, bc
    rst RST_38
    inc h
    add hl, bc
    nop
    rlca
    rrca
    rlca
    inc bc
    ld bc, $0009
    inc bc
    add hl, bc
    rst RST_38
    dec b
    ld a, a
    ccf
    add hl, bc
    rst RST_38
    rra
    add hl, bc
    nop
    inc bc
    add hl, bc
    rst RST_38
    ld [bc], a
    ccf
    nop
    nop
    ld bc, $ff09
    inc b
    rra
    rrca
    add hl, bc
    rst RST_38
    db $10
    add hl, bc
    ret nz

    inc b
    add hl, bc
    rst RST_38
    ld [bc], a
    pop af
    ld [hl], c
    add hl, bc
    ld sp, $0902
    rst RST_38
    ld [bc], a
    add hl, bc
    cp $03
    db $fc
    add hl, bc
    rst RST_38
    ld [bc], a
    add hl, bc
    ld e, $03
    ld c, $09
    rst RST_38
    ld [bc], a
    add hl, bc
    ccf
    ld [bc], a
    ld e, $1e
    add hl, bc
    rst RST_38
    ld [bc], a
    add hl, bc
    ld de, $0704
    ld bc, $0009
    dec b
    add hl, bc
    rst RST_38
    ld [bc], a
    ccf
    rrca
    inc bc
    nop
    nop
    add hl, bc
    rst RST_38
    ld b, $3f
    add hl, bc
    rst RST_38
    rlca
    add hl, bc
    add $05
    ret nz

    ret nz

    add hl, bc
    ld sp, $7106
    add hl, bc
    db $fc
    inc bc
    add hl, bc
    ld hl, sp+$03
    ld c, $0e
    adc $ce
    add hl, bc
    add $03
    ld e, $1e
    add hl, bc
    inc c
    inc bc
    nop
    nop
    add hl, bc
    ld de, $0007
    nop
    rlca
    ccf
    rst RST_38
    ccf
    inc bc
    nop
    ld bc, $097f
    rst RST_38
    inc b
    rra
    add hl, bc
    rst RST_38
    rrca
    ret nz

    ld b, b
    ret nz

    add hl, bc
    add $04
    ld sp, $1109
    ld b, $09
    ld hl, sp+$04
    add hl, bc
    ldh a, [rSC]
    add hl, bc
    add $04
    add hl, bc
    ld [bc], a
    ld [bc], a
    add hl, bc
    nop
    ld [bc], a
    add hl, bc
    ld hl, $0904
    dec de
    rlca
    nop
    nop
    add hl, bc
    rst RST_38
    ld [bc], a
    ccf
    rlca
    nop
    ld bc, $ff09
    dec b
    ld a, a
    add hl, bc
    rst RST_38
    rrca
    add hl, bc
    ret nz

    inc b
    add hl, bc
    rst RST_38
    ld [bc], a
    db $10
    db $10
    jr nc, jr_03c_6b06

    ldh a, [$ff09]
    rst RST_38
    ld [bc], a
    add hl, bc
    ld de, $0904
    rst RST_38
    ld [bc], a
    add hl, bc
    ldh [c], a
    inc b
    add hl, bc
    rst RST_38
    ld [bc], a
    add hl, bc
    inc sp
    inc b
    add hl, bc
    rst RST_38
    ld [bc], a
    rra
    dec de
    ld de, $1b11
    add hl, bc
    rst RST_38
    ld [bc], a
    add hl, bc
    nop
    rlca
    rlca
    add hl, bc
    nop
    ld b, $ff
    ld a, a
    rlca
    rlca
    rrca
    rra
    ccf
    ld a, a
    add hl, bc
    rst RST_38
    rra
    add hl, bc
    nop
    ld [$0301], sp
    rlca
    rra
    ccf
    ld a, a
    add hl, bc
    rst RST_38
    rlca
    cp $09
    rst RST_38
    inc b
    rst RST_08
    rra
    rra
    add hl, bc
    rst RST_38
    ld b, $f7
    add hl, bc
    rst RST_38
    rrca
    ld bc, $0703
    rrca
    rra
    ccf
    ld a, a
    add hl, bc
    rst RST_38
    inc bc
    cp $f8
    ldh [$ff80], a
    nop
    ld hl, sp-$20
    add b
    add hl, bc
    nop
    inc b
    rra
    add hl, bc
    ccf
    ld [bc], a
    ld a, a
    ld a, a
    ld a, [hl]
    db $fc
    rst RST_30
    rst RST_20
    rst RST_00
    add a
    add a
    add hl, bc
    rlca
    ld [bc], a
    add hl, bc

jr_03c_6b06:
    rst RST_38
    dec b
    cp $fe
    add hl, bc
    rst RST_38
    ld [bc], a
    add hl, bc
    ccf
    ld [bc], a
    rra
    rra
    db $fc
    ldh [$ff09], a
    nop
    db $10
    add hl, bc
    ld bc, $0003
    db $fc
    ld hl, sp-$10
    ldh [$ffc0], a
    add b
    nop
    nop
    rlca
    rlca
    add hl, bc
    inc bc
    dec b
    cp $fc
    db $fc
    add hl, bc
    ld hl, sp+$02
    ldh a, [$fff0]
    rra
    add hl, bc
    rrca
    ld [bc], a
    add hl, bc
    rlca
    ld [bc], a
    inc bc
    add hl, bc
    nop
    rra
    add hl, bc
    inc bc
    rlca
    ldh a, [$ff09]
    ldh [rSC], a
    add hl, bc
    ret nz

    ld [bc], a
    add b
    inc bc
    inc bc
    add hl, bc
    ld bc, $0902
    nop
    ld [de], a
    rst RST_38
    ld de, $0900
    ld [hl], b
    ld bc, $0100
    add hl, bc
    nop
    inc b
    ld l, d
    or l
    ld a, [hl]
    cp a
    ld e, e
    cp b
    ld e, h
    inc l
    nop
    ld b, b
    and b
    ld d, b
    add sp, -$0c
    ld a, [hl-]
    dec e
    add hl, bc
    nop
    ld [$0201], sp
    ld bc, $0502
    ld [bc], a
    dec b
    cp d
    ld a, l
    cp $6d
    add $d7
    db $d3
    db $db
    inc l
    ld e, l
    xor l
    ld e, l
    cp c
    ld e, e
    cp e
    ld e, e
    nop
    add b
    ld b, b
    and b
    ld d, b
    xor d
    push af
    ld a, d
    ld d, $2e
    rla
    dec bc
    dec b
    inc bc
    dec b
    and d
    adc $63
    ld a, c
    inc a
    cp [hl]

jr_03c_6b98:
    sub e
    pop de
    ret nc

    add b
    ld b, b
    and b
    ret nc

    ld l, d
    dec [hl]
    sbc [hl]
    rst RST_00
    inc bc
    dec b
    inc bc
    dec b
    dec bc
    ld d, a
    xor e
    ld d, a
    sbc e
    cp c
    add hl, bc
    cp l
    ld [bc], a
    inc a
    ld h, [hl]
    ld h, [hl]
    or d
    or $b6
    db $f4
    and h
    db $ec
    db $ec
    add sp, $1f
    rlca
    ld sp, $cf9c
    ld h, a
    or d
    ld e, c
    ld d, c
    xor d
    push af
    ld a, d
    rra
    rst RST_00
    pop af
    inc a
    ret c

    ret z

    ld l, h
    db $e4
    ld [hl], h
    or [hl]
    jp nc, Jump_03c_717b

    inc e
    ld c, $07
    inc bc
    nop
    jr nz, jr_03c_6bf3

    xor e
    sub $6e
    ld a, $8e
    db $e4
    ld [hl], c
    add hl, sp
    ld h, [hl]
    ld h, [hl]
    jp nz, $c309

    ld [bc], a
    add c
    add c
    ret z

    ret c

    ld d, c
    ld d, c
    ld de, $2323
    daa

jr_03c_6bf3:
    inc l
    ld d, $0a
    dec b
    dec bc
    dec b
    ld [bc], a
    ld bc, $c38f
    ld h, b
    jr nc, jr_03c_6b98

    call z, Call_03c_77e6
    add hl, sp
    adc l
    push hl
    ld [hl], b
    inc e
    rrca
    inc bc
    nop
    inc c
    adc [hl]
    adc a
    add a
    rst RST_00
    ld b, a
    db $e3
    db $e3
    dec e
    rrca
    rlca
    add e
    pop bc
    ldh a, [$fff8]
    db $fc
    add c
    add b
    add b
    ld [$0908], sp
    inc c
    ld [bc], a
    and a
    rst RST_00
    rst RST_08
    ld c, a
    add hl, bc
    rra
    ld [bc], a
    ccf
    add hl, bc
    nop
    ld b, $55
    or e
    ld e, c
    inc l
    ld d, $0b
    dec b
    xor d
    ld d, l
    nop
    add b
    jp nz, Jump_03c_7061

    jr c, @-$62

    adc $63
    add hl, bc
    ld bc, $c002
    ld [hl], b
    inc a
    ld e, $09
    rst RST_38
    rlca
    inc e
    ld e, $9e
    sbc $fe
    add hl, bc
    rst RST_38
    ld [bc], a
    ccf
    ld a, a
    add hl, bc
    rst RST_38
    dec b
    xor d
    ld d, l
    rst RST_38
    rst RST_38
    nop
    ld a, a
    rra
    jp $ffab


    cp $00
    ld a, a
    rst RST_38
    ldh a, [$ff80]
    rst RST_20
    di
    ld bc, $feff
    add hl, bc
    nop
    ld [bc], a
    rrca
    add a
    jp $01e1


    nop
    ld bc, $000f
    nop
    ld hl, sp-$04
    add hl, bc
    add $03
    nop
    nop
    rra
    ccf
    add hl, bc
    jr nc, jr_03c_6c88

    nop
    nop
    add a

jr_03c_6c88:
    rst RST_08
    add hl, bc
    call z, Call_000_0003
    nop
    db $e3
    di
    add hl, bc
    inc sp
    inc bc
    nop
    nop
    add hl, bc
    ld bc, $0902
    add e
    ld [bc], a
    nop
    nop
    add hl, bc
    sbc b
    dec b
    ld hl, sp-$42
    ld d, a
    xor e
    dec d
    ld [bc], a
    dec d
    xor d
    ldh [$ff78], a
    ld e, $c7
    pop af
    cp h
    ld e, a
    rst RST_38
    ld bc, $071f
    add c
    ldh [$ff78], a
    ld e, $c7
    add hl, bc
    rst RST_38
    inc b
    ccf
    rrca
    inc bc
    add hl, bc
    add $05
    cp $fc
    add hl, bc
    jr nc, jr_03c_6ccd

    add hl, bc
    call z, $0907
    inc sp
    rlca
    rst RST_00

jr_03c_6ccd:
    rst RST_00
    add hl, bc
    ld l, l
    ld [bc], a
    add hl, bc
    add hl, sp
    ld [bc], a
    add hl, bc
    sbc b
    rlca
    ld d, a
    cp a
    ld hl, sp-$3d
    rra
    pop bc
    db $fc
    ld a, a
    cp $80
    ccf
    cp $c0
    db $fc
    rrca
    ldh [$ff03], a
    rst RST_38
    ld hl, sp+$09
    nop
    ld [bc], a
    add b
    ldh a, [$ffc1]
    add b
    nop
    rlca
    ccf
    rst RST_38
    ccf
    rrca
    adc $c6
    rst RST_00
    add hl, bc
    jp Jump_000_0904


    jr nc, jr_03c_6d07

    add hl, bc
    call z, $0907
    inc sp
    rlca
    add hl, bc

jr_03c_6d07:
    ld de, $0902
    ld bc, $0904
    sbc b
    rlca
    rst RST_38
    rst RST_38
    nop
    ld a, a
    rra
    jp Jump_03c_7ff8


    cp $00
    ld a, a
    db $fc
    ret nz

    db $fc
    ccf
    add e
    ld c, $7f
    ldh a, [$ff09]
    nop
    ld [bc], a
    add b
    ld hl, sp+$03
    nop
    nop
    rlca
    rra
    rrca
    ld bc, $c300
    jp $cec6


    db $fc
    ldh a, [rP1]
    nop
    add hl, bc
    jr nc, jr_03c_6d3d

    ccf
    rra
    nop

jr_03c_6d3d:
    nop
    add hl, bc
    call z, $cf03
    add e
    nop
    nop
    add hl, bc
    inc sp
    inc bc
    di
    db $e3
    nop
    nop
    add hl, bc
    ld bc, $0005
    nop
    sbc b
    add b
    add b
    add hl, bc
    sbc b
    ld [bc], a
    nop
    nop
    xor a
    ld d, l
    xor d
    dec b
    add hl, bc
    nop
    inc bc
    ld hl, sp+$7f
    xor a
    ld d, l
    ld a, [bc]
    ld bc, $1502
    ccf
    add e
    ld hl, sp+$79
    or e
    ld h, [hl]
    call z, Call_03c_6098
    ldh [$ffc1], a
    add d
    inc b
    nop
    nop
    inc bc
    ld a, a
    rst RST_28
    adc [hl]
    inc c
    ld [$1110], sp
    ld bc, $7f09
    inc bc
    ccf
    ccf
    ld a, $3e
    rst RST_38
    rst RST_38
    cp a
    sbc a
    rra
    rrca
    rrca
    rlca
    add hl, bc
    nop
    ld [bc], a
    ld bc, $0502
    dec bc
    rla
    dec hl
    ld d, [hl]
    cp h
    ld a, c
    db $e3
    adc $9c
    jr c, jr_03c_6dd0

    ld h, b
    ret nz

    add c
    inc bc
    ld c, $3c
    ld [hl], c
    rrca
    ld e, $7a
    ldh [c], a
    add h
    inc [hl]
    db $e4
    db $ec
    inc bc
    rlca
    rrca
    rrca
    dec de
    inc sp
    ld h, e
    ld l, e
    inc a
    inc e
    jr @+$1a

    db $10
    ld de, $0301
    rlca
    ld b, a
    jp $e3c3


    pop hl
    ld sp, $2e31
    ld e, h
    cp c
    ld [hl], e
    db $e4
    rst RST_08
    sbc [hl]
    jr c, jr_03c_6e31

jr_03c_6dd0:
    rst RST_00
    adc h
    ld sp, $1ec7
    ld a, l
    ld [$1ec7], a
    ld a, l
    ld [$a3d5], a
    ld b, l
    dec bc
    ld l, b
    ret


    db $db
    db $d3
    sub [hl]
    cp h
    cp c
    dec sp
    res 3, e
    dec sp
    ld a, e
    ld a, e
    ei
    db $db
    cp e
    inc bc
    ld [bc], a
    ld b, $06
    inc c
    adc h
    adc l
    sbc c
    ld sp, $1818
    ret c

    call z, $eccc
    and $03
    rra
    db $fd
    ld [$a855], a
    ld b, b
    nop
    call nc, Call_03c_40a8
    add b
    add hl, bc
    nop
    inc bc
    rla
    dec bc
    rla
    ld c, $16
    ld c, $16
    rrca
    ld [hl], e
    ld h, [hl]
    ld c, l
    ld a, [de]
    inc [hl]
    ld l, b
    ret nc

    and b
    ld e, e
    cp c
    ld e, l
    dec l
    dec e
    dec l
    dec e
    dec l
    sbc c
    cp e
    or e
    or [hl]
    rst RST_30
    and $ed
    xor $e6
    or [hl]
    ld [hl], e

jr_03c_6e31:
    or e
    ld e, e
    cp c
    ld e, c
    dec l
    add hl, bc
    nop
    rrca
    rla
    ld l, $15
    ld a, [hl+]
    ld d, h
    jr z, jr_03c_6e90

    and b
    ld b, b
    add b
    add hl, bc
    nop
    dec b
    dec e
    dec l
    dec e
    dec l
    dec e
    dec l
    dec e
    dec l
    call $dcda
    sbc d
    or h
    cp b
    inc [hl]
    ld l, b
    inc e
    inc l
    ld d, $0e
    ld d, $0b
    rla
    dec bc
    add hl, bc
    nop
    dec de
    inc b
    rlca
    inc bc
    inc bc
    add hl, bc
    nop
    dec b
    ret nz

    ldh [$ff09], a
    nop
    ld [de], a
    db $10
    jr c, jr_03c_6ea8

    inc a
    inc a
    add hl, bc
    inc bc
    inc bc
    add hl, bc
    rlca
    inc bc
    add hl, bc
    nop
    ld b, $80
    ld bc, $0901
    nop
    dec b
    ldh a, [$fffc]
    cp $ff
    ld a, a
    ld a, a
    ccf
    ccf
    add hl, bc
    nop
    inc bc
    add b
    ret nz

    ldh [$fff8], a

jr_03c_6e90:
    add hl, bc
    nop
    rlca
    ld a, h
    add hl, bc
    ld a, [hl]
    inc bc
    add hl, bc
    rst RST_38
    ld [bc], a
    add hl, bc
    rrca
    inc bc
    add hl, bc
    rra
    inc bc
    ldh [$fff8], a
    cp $7f
    ccf
    rra
    rrca
    rlca

jr_03c_6ea8:
    add hl, bc
    nop
    ld [bc], a
    add b
    ldh [$fff8], a
    cp $ff
    ccf
    ccf
    rra
    rra
    add hl, bc
    rrca
    ld [bc], a
    add a
    cp $09
    rst RST_38
    ld b, $00
    ld bc, $c181
    pop af
    ei
    add hl, bc
    rst RST_38
    add hl, bc
    ccf
    ccf
    cp a
    cp a
    add hl, bc
    rst RST_38
    inc bc
    inc bc
    ld bc, $0901
    nop
    inc b
    add hl, bc
    rst RST_38
    inc bc
    ld a, a
    ccf
    rra
    rrca
    rst RST_00
    di
    ei
    add hl, bc
    rst RST_38
    inc h
    add hl, bc
    nop
    rlca
    rrca
    rlca
    inc bc
    ld bc, $0009
    inc bc
    add hl, bc
    rst RST_38
    dec b
    ld a, a
    ccf
    add hl, bc
    rst RST_38
    rra
    add hl, bc
    nop
    inc bc
    add hl, bc
    rst RST_38
    ld [bc], a
    ccf
    nop
    nop
    ld bc, $ff09
    inc b
    rra
    rrca
    add hl, bc
    rst RST_38
    db $10
    db $fd
    add $09
    adc $02
    add hl, bc
    rst RST_38
    inc bc
    ldh a, [$ff09]
    ld [hl], e
    ld [bc], a
    add hl, bc
    rst RST_38
    ld [bc], a
    rst RST_18
    add hl, bc
    call z, Call_000_0903
    rst RST_38
    ld [bc], a
    rst RST_30
    inc sp
    add hl, bc
    di
    ld [bc], a
    add hl, bc
    rst RST_38
    ld [bc], a
    ld a, a
    ccf
    cp a
    sbc a
    sbc a
    add hl, bc
    rst RST_38
    ld [bc], a
    cp e
    add hl, bc
    sbc c
    inc bc
    rlca
    ld bc, $0009
    dec b
    add hl, bc
    rst RST_38
    ld [bc], a
    ccf
    rrca
    inc bc
    nop
    nop
    add hl, bc
    rst RST_38
    ld b, $3f
    add hl, bc
    rst RST_38
    rlca
    add hl, bc
    adc $05
    cp $fc
    add hl, bc
    ld [hl], e
    ld b, $f3
    add hl, bc
    call z, $0907
    di
    rlca
    rst RST_08
    rst RST_08
    add hl, bc
    ld l, l
    ld [bc], a
    add hl, bc
    add hl, sp
    ld [bc], a
    add hl, bc
    sbc c
    rlca
    nop
    nop
    rlca
    ccf
    rst RST_38
    ccf
    inc bc
    nop
    ld bc, $097f
    rst RST_38
    inc b
    rra
    add hl, bc
    rst RST_38
    rrca
    rst RST_08
    adc $09
    rst RST_08
    dec b
    add hl, bc
    di
    ld [bc], a
    ld [hl], e
    add hl, bc
    inc sp
    inc bc
    add hl, bc
    call z, $0907
    di
    rlca
    inc sp
    inc sp
    scf
    add hl, bc
    ccf
    inc b
    add hl, bc
    sbc c
    rlca
    nop
    nop
    add hl, bc
    rst RST_38
    ld [bc], a
    ccf
    rlca
    nop
    ld bc, $ff09
    dec b
    ld a, a
    add hl, bc
    rst RST_38
    rrca
    rst RST_08
    rst RST_08
    adc $ce
    db $fc
    pop af
    add e
    rst RST_38
    add hl, bc
    inc sp
    ld [bc], a
    ld [hl], e
    rst RST_38
    rst RST_38
    ldh a, [rIE]
    add hl, bc
    call z, $cf03
    sbc a
    ld a, $ff
    add hl, bc
    di
    inc b
    rst RST_20
    ld c, $ff
    add hl, bc
    ccf
    ld b, $ff
    sbc c
    sub c
    sbc a
    sbc a
    sbc e
    sbc c
    inc de
    rst RST_38
    add hl, bc
    nop
    rlca
    rlca
    add hl, bc
    nop
    ld b, $ff
    ld a, a
    rlca
    rlca
    rrca
    rra
    ccf
    ld a, a
    add hl, bc
    rst RST_38
    rra
    add hl, bc
    nop
    ld [$0301], sp
    rlca
    rra
    ccf
    ld a, a
    add hl, bc
    rst RST_38
    rlca
    cp $09
    rst RST_38
    inc b
    rst RST_08
    rra
    rra
    add hl, bc
    rst RST_38
    ld b, $f7
    add hl, bc
    rst RST_38
    rrca
    ld bc, $0703
    rrca
    rra
    ccf
    ld a, a
    add hl, bc
    rst RST_38
    inc bc
    cp $f8
    ldh [$ff80], a
    nop
    ld hl, sp-$20
    add b
    add hl, bc
    nop

Call_03c_7000:
    inc b
    rra
    add hl, bc
    ccf
    ld [bc], a
    ld a, a
    ld a, a
    ld a, [hl]
    db $fc
    rst RST_30
    rst RST_20
    rst RST_00
    add a
    add a
    add hl, bc
    rlca
    ld [bc], a
    add hl, bc
    rst RST_38
    dec b
    cp $fe
    add hl, bc
    rst RST_38
    ld [bc], a
    add hl, bc
    ccf
    ld [bc], a
    rra
    rra
    db $fc
    ldh [$ff09], a
    nop
    db $10
    add hl, bc
    ld bc, $0003
    db $fc
    ld hl, sp-$10
    ldh [$ffc0], a
    add b
    nop
    nop
    rlca
    rlca
    add hl, bc
    inc bc
    dec b
    cp $fc
    db $fc
    add hl, bc
    ld hl, sp+$02
    ldh a, [$fff0]
    rra
    add hl, bc
    rrca
    ld [bc], a
    add hl, bc
    rlca
    ld [bc], a
    inc bc
    add hl, bc
    nop
    rra
    add hl, bc
    inc bc
    rlca
    ldh a, [$ff09]
    ldh [rSC], a
    add hl, bc
    ret nz

    ld [bc], a
    add b
    inc bc
    inc bc
    add hl, bc
    ld bc, $0902
    nop
    ld [de], a
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03c_7061:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03c_7170:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03c_717b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03c_71e1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03c_77e6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03c_7bc0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03c_7cb3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03c_7cf1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03c_7ee9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03c_7efd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03c_7ff8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
