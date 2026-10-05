; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03a", ROMX[$4000], BANK[$3a]

    jr nz, jr_03a_4042

    rst RST_18
    ld b, h
    ld a, a
    ld b, a
    ccf
    ld c, [hl]
    jr jr_03a_405a

    ret c

    ld d, [hl]
    or c
    ld e, b
    ld [hl], d
    ld e, e
    ld [hl], e
    ld e, e
    ld d, a
    ld h, d
    ld h, $65
    db $db
    ld l, d
    ld l, c
    ld l, [hl]
    ld a, [hl+]
    ld [hl], e
    ld [hl-], a
    ld [hl], h
    ret c

    ld a, b
    dec e
    nop
    add b
    rst RST_38
    db $fc
    nop
    ld hl, sp+$00
    ei
    nop
    rst RST_30
    nop
    rst RST_38
    di
    nop
    jp hl


    nop
    sbc $00
    cp $00
    rst RST_30
    inc bc
    nop
    rlca
    ld de, $9900
    nop
    cp l
    nop
    rst RST_30
    cp [hl]
    nop

jr_03a_4042:
    ld a, a
    dec de
    nop
    cp $01
    db $fd
    ld [bc], a
    rst RST_38
    ld a, [$f405]
    dec bc
    add sp, $17
    call nc, $ff2b
    xor b
    ld d, a
    ld d, b
    xor a
    add b
    ld a, a
    nop

jr_03a_405a:
    rst RST_38
    adc $32
    ld b, $fc
    ld bc, $33fc
    dec b
    jr nz, jr_03a_4068

    push af
    ld a, [bc]
    rst RST_28

jr_03a_4068:
    xor b
    ld d, a
    ld d, h
    xor e
    inc l
    ld bc, $5fa0
    ld b, b
    ret


    cp a
    jr nc, jr_03a_407f

    inc sp
    inc b
    ld bc, $003d
    ld [hl], b
    ld bc, $fc09
    cp a

jr_03a_407f:
    dec b
    db $fc
    add hl, hl
    db $fc
    dec d
    db $fc
    ld e, h
    rrca
    nop
    rst RST_38
    rst RST_38
    ld [bc], a
    rst RST_38
    ld bc, $0aff
    rst RST_38
    dec b
    rst RST_38
    rst RST_38
    ld a, [hl+]

jr_03a_4094:
    rst RST_38
    dec d
    rst RST_38
    xor d
    rst RST_38
    ld d, a
    rst RST_38
    rst RST_38
    xor e
    rst RST_38
    ld e, a
    rst RST_38
    xor a
    rst RST_38
    ld a, a
    rst RST_38
    rst RST_38
    cp a
    rst RST_38
    rst RST_38
    rst RST_38
    ccf
    ccf
    ldh [$ffbf], a
    ccf
    db $e4
    jr c, jr_03a_4094

    dec sp
    ldh [c], a
    or a
    inc b
    rst RST_38
    ld a, d
    inc sp
    ld bc, $c000
    nop
    add b
    nop
    cp a
    ld e, $cb
    nop
    rst RST_38
    cp $fe
    nop
    cp $08
    ld b, $f4
    ldh a, [c]
    ei
    inc b
    ld [hl], d
    ret c

    inc bc
    db $e3
    inc a
    ld h, h
    jr c, jr_03a_4138

    ld l, e
    dec sp
    ld h, d
    push hl
    nop
    ld [hl+], a
    jp hl


    nop
    ld [bc], a
    dec hl
    jp Jump_03a_4600


    push bc
    ld [$bf1e], sp
    ld b, [hl]
    nop
    ld bc, $3314
    inc bc
    ld a, [hl]
    ld c, c
    inc b
    rst RST_38
    ld a, [$7505]
    ld a, [bc]
    ld l, d
    dec d
    call nc, $202b
    ld e, b
    inc bc
    ld e, d
    rlca
    ld [hl], b
    dec b
    ld [hl], b
    dec b
    ld c, h
    ld bc, $1dea
    db $10
    ld d, h
    dec b
    db $fc
    add d
    rrca
    sub d
    dec bc
    xor c
    db $fc
    ld d, l
    db $fc
    xor c
    db $fc
    rst RST_38
    ld e, l
    db $fc
    xor l
    db $fc
    ld a, l
    db $fc
    cp l
    db $fc
    dec de
    db $fd
    db $fc
    sub b
    dec bc
    nop
    nop
    and b
    dec bc
    call nz, $a001
    add hl, de
    di
    nop
    nop
    cp b
    dec b
    cp b
    inc bc
    db $e4
    jr c, jr_03a_4151

    cp a
    cp e
    nop
    cp a
    ret z

jr_03a_4138:
    nop
    rst RST_38
    ld a, a
    rst RST_18
    call nz, Call_000_0011
    db $ed
    nop
    ret c

    inc b
    ldh a, [c]
    add h
    db $d3
    ld [de], a
    inc c
    ld [bc], a
    db $fc
    sbc l
    ld [bc], a
    call nc, Call_000_0409
    ld [hl], d
    db $fd

jr_03a_4151:
    ld a, l
    db $10
    ldh a, [rNR24]
    nop
    rst RST_38
    nop
    add b
    rst RST_38
    ret nz

    ld a, a
    ld h, b
    ccf
    jr nc, jr_03a_41df

    rra
    jr jr_03a_4172

    ld c, a
    rlca
    daa
    ld b, b
    pop af
    ld bc, $32ec
    dec b
    xor e
    ld de, $7a24
    jr nz, @+$2d

jr_03a_4172:
    inc d
    ld a, d
    inc e
    rst RST_38
    ld a, [hl-]
    inc c
    cp d
    inc c
    sbc d
    inc b
    jp c, Jump_03a_7f04

    jp z, $ee00

    nop
    and $80
    cp $40
    dec hl
    ld a, a
    ld a, a

jr_03a_418a:
    ld a, a
    rrca
    adc a
    ld bc, $01f1
    ld [$fc12], sp
    xor e
    ld de, $13a0
    ccf
    ccf
    rlca
    rst RST_00
    nop
    ld hl, sp-$02
    xor e
    ld de, $20df
    ret nz

    ccf
    cp $01

jr_03a_41a6:
    rst RST_08
    rst RST_38
    jr nc, jr_03a_418a

    rra
    db $fc
    inc bc
    ld hl, sp+$07

jr_03a_41af:
    rst RST_00
    rst RST_38
    jr c, jr_03a_41af

    inc bc
    dec sp
    call nz, $f00f
    ldh [rIE], a
    rra
    cp $01
    jr jr_03a_41a6

    ldh a, [rIF]
    pop bc
    db $fd
    ld a, $6e
    nop
    cp $87
    ld a, b
    db $fc
    inc bc
    nop
    rst RST_38
    rst RST_38
    rlca
    ld hl, sp+$3c
    jp Jump_000_0ff0


    rst RST_38
    rst RST_38
    nop
    ldh [$ff1f], a
    ld bc, $1ffe
    ldh [$fff8], a
    rst RST_38

jr_03a_41df:
    rlca
    add e
    ld a, h
    rrca
    ldh a, [$fff8]
    rlca
    ret nz

    rst RST_38
    ccf
    rlca
    ld hl, sp-$04
    inc bc
    add c
    ld a, [hl]
    ld e, $7f
    pop hl
    ldh a, [rIF]
    rrca
    ldh a, [$ff7f]
    add b
    or b
    ld hl, $3fff
    ret nz

    ldh a, [rIF]
    nop
    rst RST_38
    ccf
    ret nz

    db $ec
    sub [hl]
    ld hl, $01c5

jr_03a_4208:
    cp $01
    ret z

    dec h
    ccf
    ret nz

jr_03a_420e:
    rst RST_18

jr_03a_420f:
    rst RST_38
    jr nz, jr_03a_420e

    inc bc
    pop bc
    ld a, $df
    jr nz, jr_03a_4208

    rst RST_38
    rrca
    jp $cc3c


    inc sp
    ldh a, [rIF]
    ld hl, sp-$49
    rlca
    ld bc, $c3fe
    ld bc, $fc03
    sub [hl]
    ld hl, $ff7f
    add b
    db $10
    ld h, b
    ld [$0670], sp
    ld e, b
    ld [bc], a
    rst RST_38
    ld c, h
    jr nz, jr_03a_427f

    jr nc, jr_03a_427d

    jr c, jr_03a_429f

    inc l
    rst RST_38
    ld [hl], d
    nop
    nop
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, a
    db $d3
    add b
    add c
    ld b, c
    inc h
    jr nz, jr_03a_4277

    inc [hl]

jr_03a_424f:
    dec hl
    jr nc, jr_03a_424f

    db $fc
    adc a
    db $fc
    db $fc
    rst RST_38
    cp $a4
    add hl, de
    pop bc
    inc bc
    ld b, e
    ld [hl], $00
    rst RST_38
    ccf
    ld b, b
    ccf
    ld b, b
    cp a
    ld b, b
    ret nz

    ld a, a
    pop af
    ld b, b
    ld e, c
    ccf
    ld e, l
    jr nc, jr_03a_420f

    ld hl, $30cf
    db $fc
    inc bc
    ei
    ret nz

    ccf

jr_03a_4277:
    ld [hl], h
    inc sp
    rlca
    ld hl, sp+$7e
    add c

jr_03a_427d:
    ret nz

    rst RST_38

jr_03a_427f:
    ccf
    rrca
    ldh a, [$ff7c]
    add e
    ldh [$ff1f], a
    inc bc
    db $fc
    ccf
    nop
    sbc d
    inc hl
    add c
    ld a, [hl]
    nop
    rst RST_38
    ld a, [hl]
    add c
    cp a
    rst RST_38
    nop
    add e
    ld a, h
    jp $863c


    ld sp, $9ff0
    rrca
    ccf

jr_03a_429f:
    ret nz

    inc bc
    db $fc
    ld [hl], d
    ld hl, $21a2
    rrca
    rst RST_38
    ldh a, [$ff1f]
    ldh [rP1], a
    rst RST_38
    ldh [$ff1f], a
    ld a, a
    or $c5
    db $10
    rlca
    ld hl, sp-$39
    nop
    ld a, a
    ld hl, sp+$07
    rra
    cp l
    ldh [$ffaa], a
    ld sp, $00ff
    ld hl, sp+$07
    adc h
    ld sp, $fd3f
    ret nz

    push bc
    ld bc, $ff00
    ret nz

    ccf
    inc a
    jp $e7bf


    jr jr_03a_42d4

jr_03a_42d4:
    rst RST_38
    ld a, b
    add a
    jp Jump_03a_7c01


    db $fd
    add e
    call nc, $8131
    ld a, [hl]
    db $fc
    inc bc
    rrca
    ldh a, [rIE]
    add b
    ld a, a
    ldh [$ff1f], a
    ld e, $e1
    add c
    ld a, [hl]
    cp $86
    ld hl, $e01f
    db $e3
    inc e
    ld hl, sp+$07
    ld a, $7b
    pop bc
    inc bc
    ld a, a
    nop
    rlca
    ld hl, sp+$00
    rst RST_38
    call nz, $ff31
    ld a, a
    add b
    rlca
    ld hl, sp-$10
    rrca
    cp $01
    di
    rst RST_38
    nop
    or [hl]
    ld sp, $4312
    ld a, [hl]
    add c
    rrca
    ldh a, [$ff0e]
    dec de
    ld [bc], a
    ld a, a
    ld a, a
    ld a, a
    pop af
    nop
    ld sp, $1642
    dec h
    db $10
    dec h
    ld e, $a0
    add hl, de
    ld hl, sp-$10
    ldh a, [$fff7]
    dec [hl]
    ld b, b
    ld h, b
    ld b, [hl]
    pop af
    ld [bc], a
    ld a, d
    and e
    ld a, [de]
    inc bc
    and b
    ld a, [de]
    inc bc
    inc bc
    adc l
    pop af
    ld h, b
    ld b, c
    rst RST_38
    ld a, b
    ld [hl], b
    ld [hl], b
    ld [hl], a
    db $fc
    ld hl, sp-$04
    db $fd
    ld sp, hl
    cp $35

jr_03a_4349:
    jr nc, jr_03a_43b3

    ld b, l
    nop
    nop
    ldh a, [rP1]
    jr c, jr_03a_4349

    ld b, e
    jr jr_03a_4378

    ld a, b
    ld b, l
    nop
    nop
    ld bc, $f902
    nop
    ld a, a
    db $10
    adc b
    ld b, l
    inc bc
    ld bc, $03e1
    ld [hl], c
    rst RST_20
    add a
    inc sp
    ld b, a
    ld a, [hl-]
    ld b, h
    pop de
    ld b, h
    ld b, b
    ccf
    jr nz, @+$01

    ld e, a
    ld d, b
    cpl
    ld l, b
    rla
    ld [hl], h

jr_03a_4378:
    dec bc
    ld l, d
    rst RST_28
    dec d
    ld [hl], l
    ld a, [bc]
    ld a, d
    add hl, de
    db $10
    ld a, [hl]
    ld bc, $7f7d
    ld [bc], a
    ld a, d
    dec b
    ld a, l
    ld [bc], a
    ld a, l
    ld [bc], a
    dec sp
    ld b, h
    ld a, [hl]
    and b
    jr @+$41

    ccf
    cp a
    ccf
    ccf
    ccf
    ld h, b
    ld c, e
    rlca
    ld a, a
    ld a, [hl]
    ld a, [hl]
    rra
    ld d, b
    jr c, jr_03a_43e4

    ld [hl], $43
    ld [hl], $48
    db $fc
    ld b, h
    ld h, b
    db $10
    add hl, hl
    sbc b
    ld b, l
    and b
    ld de, $4368
    xor d
    ld b, e
    ld b, e

jr_03a_43b3:
    ld b, e
    ld h, [hl]
    ld b, l
    sbc b
    cp d
    ld b, a
    adc b
    ld b, d
    ret


    ld b, h
    add a
    add a
    and b
    dec de
    and b
    dec d
    ld b, c
    rst RST_38
    ld b, e
    ld a, [bc]
    ld a, a
    dec d
    ld a, a
    ld [bc], a
    ld a, a
    dec b
    xor d
    inc e
    nop
    ld bc, $001c
    rst RST_38
    xor e
    nop
    ld a, a
    and a
    nop
    ld e, a
    ld d, d
    and e
    nop
    ld d, a
    sbc e
    nop
    adc b
    ld e, l
    ld d, l
    sub a

jr_03a_43e4:
    nop
    dec d
    sub e
    nop
    pop hl
    dec b
    ld l, l
    ld bc, $0c5f
    inc h
    ld de, $0158
    and b
    ld e, a
    ld d, b
    dec a
    xor a
    ld d, b
    ld bc, $55aa
    ld d, l
    xor d

jr_03a_43fd:
    pop de
    ld c, d
    dec de
    nop
    rrca
    xor d
    ld d, l
    push de
    ld a, [hl+]
    inc d
    inc de
    ld [hl+], a
    ld bc, $333f
    db $ec
    ld d, e
    and $f6
    ld d, c
    ld d, b
    xor a
    ld d, d
    dec e
    inc sp
    ld bc, $001f
    db $e3
    rst RST_38
    ldh [$fffc], a
    inc e
    rst RST_38
    db $e3
    rra
    inc e
    rlca
    add c
    rlca
    inc sp
    rlca
    ld b, h
    ld h, e
    ld d, d
    ld a, [de]
    ld b, e
    dec [hl]
    db $db
    ld d, d
    dec e
    ld h, e
    dec bc
    adc d
    rst RST_08
    ld d, b
    cpl
    and c
    nop
    cp a
    and l
    nop
    ld de, $0122
    ld e, e
    rra
    rst RST_28
    ld a, [hl+]
    ld c, l
    jr z, @+$0e

    and b
    ld l, c
    or h
    jp c, $d110

    jr jr_03a_43fd

    ld l, c
    ld e, h
    inc h
    jp $5f66


    ret nc

    ld l, d
    nop
    ld e, a
    ld h, [hl]
    and b
    dec de
    ld a, [hl]
    rst RST_38
    ld sp, $f030
    ld l, b
    nop
    db $fc
    nop
    ld l, e
    db $fd
    ccf
    ld d, d
    ld e, $a8
    ld d, a
    db $f4
    dec bc
    ld [$fc15], a
    ld [hl+], a
    ld [hl], c
    ld [hl+], a
    ld bc, $02fd
    call z, $f9c3
    jr c, @+$01

    rst RST_38
    rst RST_00
    ccf
    jr c, @+$49

    add a
    ld [$c6f0], sp
    di
    ld hl, $f008
    ld d, [hl]
    ld hl, $4846
    ld c, e
    ld h, b
    ld b, e
    add e
    ld sp, hl
    ldh a, [rIE]
    db $10
    ld h, [hl]
    ld h, l
    inc c
    nop
    inc b
    ld c, c
    ld [$0c37], sp
    ld a, [bc]
    ld c, l
    ld h, [hl]
    ld [hl], c
    jr z, @+$0e

    adc h
    ld h, h
    jp Jump_03a_7f66


    nop
    nop
    sbc b
    nop
    xor b
    jp nc, $b390

    ld h, [hl]
    di
    cp a
    rrca
    sub b
    ld a, e
    and b
    ld l, c
    ld [hl+], a
    ld c, l
    ld [hl], e
    nop
    adc $b0

jr_03a_44bd:
    ld l, c
    and h
    jp c, $9fe7

    inc e

jr_03a_44c3:
    xor h
    ld de, $005e
    dec bc
    ld [bc], a
    ld e, h
    call nc, Call_03a_7c74
    db $10
    jr nc, jr_03a_44bd

    ld h, b
    ldh [rPCM34], a
    pop af
    nop
    ld h, $bc
    ld b, b
    add b
    ld a, h
    cp h
    ld b, b
    rst RST_30
    ld [hl], e
    nop
    ld de, $0580
    jr nc, jr_03a_44c3

    dec b
    rst RST_28
    inc bc
    rst RST_20
    rst RST_30
    di
    cp $f1
    db $eb
    push de
    or c
    ld c, $7f
    ld a, a
    db $fc
    db $fd
    db $fd
    ld sp, hl
    ei
    ei
    di
    db $e3
    dec b
    cp a
    inc b
    dec b
    cp [hl]

Jump_03a_44ff:
    ld [bc], a
    cp l
    add hl, sp
    dec b
    ei
    dec b
    dec b
    rst RST_38
    dec b
    cp $fe
    ldh [$ffce], a
    sub b
    and b
    nop
    rrca
    nop
    nop
    rst RST_00
    rrca
    jp $0e18


    ld hl, sp+$02
    ld [bc], a
    ccf
    ccf
    dec b
    ld a, a
    dec b
    dec b
    rst RST_38
    inc bc
    cp $f9
    ldh a, [$ffe0]
    or h
    sub b
    or h
    sub b
    inc b
    ret nz

    ret nz

    add b
    nop
    ld bc, $0303
    db $f4
    ldh a, [$ffe9]
    jp c, $cc48

    ret z

    ldh [rNR41], a
    inc b
    add b
    ld b, b

jr_03a_453e:
    inc b
    ld [$1010], sp
    ld h, b
    ld [hl], b
    jr nz, jr_03a_4569

    db $dd
    sbc h
    ld e, $3e
    ld [hl-], a
    add hl, sp
    inc a
    ld a, [bc]
    dec b
    rst RST_38
    inc b
    dec b
    ld a, a
    ld [bc], a
    ld hl, sp-$02
    db $fc
    dec b
    db $fd
    inc b
    ld a, a
    dec b
    rst RST_38
    rlca
    nop
    dec b
    rst RST_38
    dec b
    dec b
    cp [hl]
    ld [bc], a
    cp h
    dec b
    cp l
    inc bc

jr_03a_4569:
    dec b
    ei
    ld [bc], a
    di
    dec b
    rst RST_30
    ld [bc], a
    rst RST_20
    rst RST_28
    rst RST_28
    rst RST_08
    rst RST_18
    ccf
    ld a, a
    ld a, a
    rst RST_38
    nop
    ld bc, $4000
    jr nz, jr_03a_453e

    inc bc
    ret nz

    ld [bc], a
    ld hl, sp+$01
    inc bc
    ld b, $80
    rrca
    ccf
    dec b
    ld a, a
    rlca
    xor $ef
    rst RST_28
    adc a
    ld h, [hl]
    ldh a, [rIE]
    ccf
    nop
    ldh [$ffe0], a
    ret nz

    nop
    or b
    db $fc
    ld hl, sp-$36
    sbc b
    dec b
    sbc h
    inc bc
    sbc b
    nop
    ld c, b
    add b
    ld bc, $9870
    ld sp, $2070
    daa
    ld b, h
    ld b, b
    ld c, c
    nop
    db $10
    ld sp, hl
    ei
    inc e
    ld b, $8e
    rrca
    ld b, $74
    cp $bc
    dec b
    ld a, a
    rlca
    ld b, b
    ld b, b
    ld h, h
    xor b
    ret nc

    ldh [c], a
    cp $fe
    ld a, c
    ld bc, $0800
    inc h
    add hl, bc
    ld e, h
    ld c, [hl]
    rst RST_38
    db $ec
    sub b
    nop
    ld [bc], a
    ld b, $8f
    rra
    ld e, b
    pop hl
    inc bc
    jp $f7e7


    ld h, a
    ld b, e
    dec b
    ld e, a
    inc b
    ld e, [hl]
    ld e, [hl]
    nop
    cp a
    ccf
    rra
    rrca
    rrca
    ld e, $3c
    inc a
    ld b, b
    ld d, h
    ld b, e
    ld h, e
    ld [hl], e
    ld [hl], e
    ld h, e

jr_03a_45f3:
    inc bc
    nop
    inc h
    jr jr_03a_4634

    db $fc
    jr c, jr_03a_45f3

    ldh a, [rTIMA]
    inc c
    ld [bc], a
    dec b

Jump_03a_4600:
    ld [$7002], sp
    ld hl, sp+$7e
    nop
    ld a, [hl]
    nop
    nop
    inc h
    ld b, b
    ld b, $c0
    ld hl, sp+$3f
    rra
    rst RST_20
    nop
    db $10
    inc [hl]
    jr c, jr_03a_4656

    rlca
    inc e
    nop
    rrca
    ld [hl], b
    nop
    ld [hl], h
    jr jr_03a_4667

    ld b, $03
    ld bc, $0005
    inc b
    ccf
    dec b
    nop
    inc bc
    rrca
    ld bc, $0005
    dec b
    add b
    ldh a, [rTIMA]
    nop
    dec b
    adc a

jr_03a_4634:
    dec b
    rst RST_00
    inc bc
    jp nz, $e0e2

    ldh a, [$ffe0]
    ret nz

    adc c
    nop
    nop
    ld c, $3f
    dec b
    ld sp, hl
    inc b
    di
    di
    rst RST_00
    dec b
    rrca
    dec b
    ld c, $0c
    dec b
    nop
    ld [bc], a
    ld bc, $f105
    inc bc
    dec b
    rst RST_38

jr_03a_4656:
    inc bc
    cp $fe
    db $fc
    db $fc
    pop af
    ldh [$ffcf], a
    sbc a
    cp a
    nop
    ld a, a
    ld a, a
    adc a
    ccf
    rlca
    pop hl

jr_03a_4667:
    ldh a, [rP1]
    db $fc
    db $fc
    ccf
    ccf
    dec b
    ld a, a
    dec b
    rst RST_38
    nop
    rst RST_38
    nop
    cp $00
    ldh a, [rP1]
    jp c, $da18

    jr jr_03a_4687

    nop
    ld [bc], a
    nop
    cp $00
    ld hl, sp-$08
    ldh a, [$fff0]
    db $e4

jr_03a_4687:
    ret nz

    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    ld b, c
    inc b
    ld a, c
    jr c, jr_03a_46e6

    ld h, b
    ldh a, [rSVBK]
    ld h, b
    db $fc
    db $fd
    cp [hl]
    ld a, [hl]
    ld a, [hl]

jr_03a_469d:
    ld a, a
    rst RST_38
    ld a, a
    dec b
    rst RST_38

Jump_03a_46a2:
    inc b
    dec b
    ld a, a
    ld [bc], a
    ldh a, [rTIMA]
    ld hl, sp+$06
    ccf
    ld a, a
    ld a, a
    dec b
    rst RST_38
    inc b
    dec b
    nop
    inc bc
    dec b
    rst RST_38

Call_03a_46b5:
    inc bc
    dec b
    inc c
    ld [bc], a
    dec b
    ld [$0504], sp
    pop af
    ld [bc], a
    pop hl
    dec b
    db $e3
    ld [bc], a
    jp $c7c7


    add a
    rrca
    rrca
    rra
    ccf
    ld a, a
    ld a, a
    nop
    ld a, a
    ccf
    sbc a

jr_03a_46d1:
    nop
    ld b, h
    jr c, jr_03a_46d1

    nop
    cp $fc
    ld hl, sp+$01
    ccf
    rst RST_38
    dec b
    ld a, a
    rlca
    dec b
    ldh [rSC], a
    add b
    dec b
    nop
    dec bc

jr_03a_46e6:
    ret nc

    and c
    dec b
    and b
    ld [bc], a
    add b
    add b
    jr nz, jr_03a_4732

    add c
    nop
    ld [hl], b
    ld hl, sp-$03
    ld a, h
    ld a, h
    ld h, b
    ld h, e
    ld b, a
    ld b, [hl]
    ld b, b
    sbc e
    rst RST_38
    rst RST_28
    ld a, a
    ld a, [hl]
    ccf
    rrca
    ld [hl], a
    rst RST_38
    rst RST_38
    cp $05
    ld a, a
    rlca
    jr nc, @+$3a

    jr jr_03a_469d

    ret nz

    ldh [c], a
    cp $fe
    ld bc, $0301
    ld [bc], a
    jr jr_03a_4755

    ccf
    ccf
    rst RST_08
    sbc a
    ld a, [bc]
    nop
    inc c
    rra
    rra
    sbc a
    and b
    ld bc, $0303
    rlca
    rlca
    add a
    add e
    dec b
    ld e, a
    inc b
    ld e, [hl]
    ld e, [hl]
    ld e, a
    dec b
    rrca
    dec b

jr_03a_4732:
    ld c, $0e
    ret nz

    ret nz

    call nc, $f7e7
    or $e1
    ld [$8000], sp
    and h
    jr c, jr_03a_4771

    db $10
    ldh [rDIV], a
    dec b
    ld a, $02
    cp h
    cp l
    dec c
    ld bc, $7e01
    nop
    ld a, [hl]
    nop
    nop
    jr jr_03a_4783

    nop
    rst RST_00

jr_03a_4755:
    jr c, @+$09

    ret c

    rst RST_00
    ld b, b
    ld [$0418], sp
    ld a, $78
    ld h, e
    ld a, a
    ld [hl], b
    nop
    nop
    add hl, sp
    inc a
    ld e, $4f
    dec bc
    inc sp
    ld a, l
    ld a, [hl]
    db $fc
    rst RST_38
    rst RST_38
    ld a, a
    nop

jr_03a_4771:
    cp a
    cp a
    ccf
    nop
    ld a, a
    nop
    dec b
    ld a, a
    dec b
    rst RST_38
    nop
    dec b
    rst RST_38
    inc b
    dec e
    nop
    add b
    rst RST_38

jr_03a_4783:
    ldh [rP1], a
    adc l
    ldh [rIE], a
    ret nz

    add b
    rst RST_38
    rst RST_38
    ldh a, [$ff3f]
    ld [hl], h
    xor a
    inc hl
    call c, $fc03
    rst RST_38
    ld a, a
    ld a, a
    sbc a
    ld a, a
    rrca
    rst RST_38
    rrca
    rst RST_38
    rst RST_38
    add a
    ld a, a
    add a
    ld a, a
    ld b, a
    cp a
    rst RST_20
    rra
    rst RST_38
    rra
    ldh [$ffc7], a
    ld hl, sp-$10
    rst RST_38
    cp $ff
    ld a, [$0627]
    nop
    jr nc, jr_03a_47b6

    rra

jr_03a_47b6:
    ldh [$ffcf], a
    ldh a, [$ffc1]
    sbc a
    cp $fb
    db $fc
    rst RST_30
    ld hl, sp+$30
    inc bc
    ld b, h
    dec c
    ld [hl], b
    cp a
    adc a
    rrca
    rst RST_38
    rra
    rst RST_38
    ld a, a
    dec l
    ld b, $3f
    rst RST_38
    ret nz

    adc a
    ldh a, [$fff3]
    db $fc
    db $fd
    cp $e0
    call c, Call_000_042f
    jr nc, jr_03a_47e0

    pop bc
    ld a, $3e

jr_03a_47e0:
    ld l, a
    ld a, [bc]
    db $fc
    inc bc
    cp e
    inc hl
    rst RST_18
    ld b, h
    dec b
    ldh a, [rIF]
    ld c, $5b
    ld [$3fff], sp
    nop
    ld a, a
    add b
    ccf
    ret nz

    ldh a, [$ff9d]
    ld [$03a4], sp
    rst RST_38
    ldh [rIE], a
    ldh [c], a
    db $dd
    ld b, b
    cp a
    add hl, de
    and $ff
    ld de, $fcfe
    ccf
    ld hl, sp+$07
    add [hl]
    ld a, c
    rst RST_38
    cp b
    ld b, a
    db $fd
    ld [bc], a
    nop
    rst RST_38
    ccf
    ret nz

    rst RST_38
    rst RST_38
    nop
    cp a
    ld b, b
    inc de
    db $fc
    ld a, $f1
    rst RST_38
    ldh a, [rIF]
    cp b
    ld h, b
    db $fc
    ld b, b
    ld hl, sp+$00
    rst RST_38
    ldh a, [rP1]
    and b
    nop
    ld a, [$7c42]
    sub b
    rst RST_38
    ld e, $e0
    nop
    nop
    cp $ff
    nop
    cp $ed
    cp $f0
    nop
    cp $00
    or $00
    nop
    db $fd
    ld [bc], a
    rst RST_38
    rst RST_38
    ld [bc], a
    jr nz, @+$01

    scf
    ld hl, sp+$3c
    rst RST_10
    rst RST_38
    sbc h
    ld h, e
    db $fc
    rrca
    cp $23
    ld [$ff17], a
    pop af
    rrca
    sbc b
    ld h, a
    jp c, $1025

    rst RST_28
    cp a
    ldh a, [rIF]
    or e
    ld a, [hl]
    ld e, $ed
    daa
    ld bc, $fc3f
    ld e, c
    nop
    inc d
    ld bc, $ff07
    inc bc
    rst RST_38
    rst RST_20
    ld hl, sp-$39
    add b
    rst RST_38
    db $e3
    daa
    ld b, $ac
    nop
    ld h, l
    nop
    rst RST_08
    ldh a, [$ff7e]
    xor h
    ld bc, $fffe
    add b
    rst RST_38
    rlca
    rst RST_20
    adc d
    ld bc, $f3ff
    rrca
    rst RST_00
    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    cp [hl]
    and [hl]
    ld bc, $03fc
    ld [hl], b
    adc a
    add a
    daa
    ld [bc], a
    rrca
    rst RST_20
    rst RST_38
    ldh a, [rIF]
    jr nc, jr_03a_48a5

jr_03a_48a5:
    daa
    ld [bc], a
    cp $ff
    ldh [$fffd], a
    rst RST_38
    ld c, $00
    add b
    rst RST_20
    nop
    rrca
    rst RST_38
    rst RST_08
    jp c, Jump_000_1023

    rrca
    dec l
    db $10
    pop hl
    rra
    ld e, d
    ld de, $ffff
    db $fd
    ld hl, sp+$77
    db $10

jr_03a_48c4:
    pop bc
    cp $83
    db $fc
    add a
    ld hl, sp-$21
    sbc c
    ld h, [hl]
    ld d, b
    cpl
    rst RST_38
    ld e, e
    nop
    ld c, e
    cp a
    ld a, e
    and d
    ld a, a
    ld sp, $7401
    adc e
    jr jr_03a_48c4

    daa
    inc bc
    db $fd
    ld a, a
    rla
    nop
    nop
    rst RST_38
    add b
    ld a, a
    ld c, $f1
    rst RST_38
    ld sp, hl
    ld e, $fc
    rrca
    ld sp, hl
    add [hl]
    rst RST_18
    nop
    rst RST_38
    ld l, l
    add d
    add $00
    add l
    nop
    add hl, bc
    nop
    rst RST_38
    ld h, $d9
    ld bc, $fdff
    dec bc
    sbc a
    ld h, h
    rst RST_38
    ld a, [hl-]
    dec b
    ld e, a
    nop
    rst RST_00
    jr nz, @+$6d

    sub b
    rst RST_38
    cp h
    ld c, e
    add $3f
    pop af
    ld c, $cf
    inc a
    rst RST_38
    sbc a
    rst RST_20
    rst RST_28
    ldh a, [$ffe0]
    inc e
    ldh a, [rP1]
    rst RST_38
    ret nz

    ret nz

    ld sp, hl
    ld sp, $699c
    ret z

    inc [hl]
    rst RST_38
    or $08
    db $fc
    nop
    ld a, b
    nop
    ld [bc], a
    dec b
    rst RST_38
    nop
    stop
    ld a, h
    rst RST_38
    rst RST_38
    ld l, d
    nop
    cp a
    ld [$fa4a], a
    ld e, [hl]
    ld [$f24a], a
    nop
    nop
    rst RST_38
    daa
    rra
    jr nz, jr_03a_4968

    ccf
    nop
    ld b, b
    ccf
    rla
    ld a, a
    nop
    ld a, a
    db $fd
    nop
    nop
    ld l, a
    db $10
    ld hl, $2121
    ld [hl+], a
    cp b
    dec e
    cpl
    db $fd
    nop
    ldh a, [c]
    dec bc
    nop
    ld [$7e00], sp
    nop
    ld d, [hl]
    rst RST_38

jr_03a_4968:
    nop
    ld d, a
    ld d, d
    ld e, a
    ld a, d
    ld d, a
    ld d, d
    ld a, a
    cp $0f
    jr nz, jr_03a_499a

    ld e, $20
    ld e, $3e
    nop
    ld b, b
    cp e
    ld a, $7c
    ei
    stop
    nop
    ld a, d
    reti


    db $10
    cpl
    rst RST_38
    ld b, b
    ld h, c
    add b
    sbc b
    ld h, b
    cp $80
    cp a
    rst RST_38
    ldh a, [$fffa]
    rlca
    dec h
    cp $3d
    rst RST_00
    adc h
    rst RST_28
    ld a, a
    push af

jr_03a_499a:
    ld a, [bc]
    ld a, h
    nop
    jr nz, jr_03a_49a0

    nop

jr_03a_49a0:
    sbc $ff
    ld bc, $00ff
    adc [hl]
    di
    ld d, $ef
    ldh [rIE], a
    rra
    ld l, a

jr_03a_49ad:
    db $10
    cp b
    ld b, a
    ld l, [hl]
    sub c
    jp c, Jump_000_3dff

    dec b
    nop
    rlca
    nop
    dec c
    ld [bc], a
    dec c
    rst RST_38
    ld [bc], a
    dec e
    inc bc
    dec d
    ld a, [bc]
    inc l
    inc de
    call z, $73ff
    cp b
    ld [hl], c
    sbc h
    ld [hl], b
    add hl, sp
    add $aa
    rst RST_38
    push de
    xor a
    pop de
    and c
    ld e, a
    scf
    jp hl


    ld sp, $eebb
    ret nz

    dec l
    ld [hl+], a
    add d
    nop
    add [hl]
    rst RST_00
    jr nz, @-$3c

    rst RST_38
    inc b
    jp nc, Jump_000_1504

    ld a, [bc]
    dec bc
    inc b
    inc b
    rst RST_38
    rrca
    add l
    halt
    dec b
    ld b, $25
    ld b, $75
    cp $d9
    jr nz, @+$4c

    add l
    add l
    ld [bc], a
    add d
    rlca
    ld b, d
    cp a
    dec sp
    ld [bc], a
    inc bc
    ld [de], a
    inc bc
    ld a, [hl-]
    jp hl


    jr nz, jr_03a_49ad

    rst RST_38
    ld b, d
    jp nz, Jump_000_0101

    add e
    and c
    dec e
    add c
    rst RST_08
    ld bc, $0189
    sbc l
    ld sp, hl
    jr nz, jr_03a_4a49

    add hl, hl
    ld [hl], b
    nop
    ld a, e
    add l
    ld a, [bc]
    jr nc, jr_03a_4a4a

    jr c, jr_03a_4a23

jr_03a_4a23:
    ld b, d
    add l
    jr nc, jr_03a_4a50

    cpl
    rra
    nop
    and b
    ld b, b
    jr nc, jr_03a_4a57

    ld hl, sp-$03
    ld de, $2821
    rst RST_38
    inc e
    nop
    and c
    ld b, d
    nop
    nop
    pop hl
    ldh [rIE], a
    jr @-$77

    cp [hl]
    ld bc, $3a45
    ld h, d
    dec e
    rst RST_38
    jr nc, jr_03a_4a57

    add h

jr_03a_4a49:
    add e

jr_03a_4a4a:
    rst RST_38
    inc c
    ldh a, [rVBK]
    rst RST_38
    ld l, a

jr_03a_4a50:
    ret nc

    rra
    ldh [$ffe1], a
    ld e, $55
    xor d

jr_03a_4a57:
    rst RST_38
    ld d, $e8
    cp $c0
    rst RST_28
    call nc, $a877
    rst RST_38
    ret c

    rst RST_20
    add a
    ld a, b
    push af
    ld a, [bc]
    cpl
    inc e
    rst RST_38
    ld a, [hl]
    nop
    pop af
    ld c, $7e
    add c
    or e
    ld c, h
    rst RST_38
    rst RST_30
    ld [$b34f], sp
    ld [hl], h
    dec bc
    scf
    ld a, [bc]
    rst RST_38
    swap h
    ccf
    ret nz

    ld a, [hl]
    add c
    rst RST_08
    ld a, $ff
    ld b, a
    ld hl, sp-$02
    pop bc
    rst RST_38
    ld b, $96
    ld l, c
    rst RST_38
    ld a, b
    add a
    cp $09
    call z, $dd77
    ld h, a
    rst RST_38
    db $dd
    dec hl
    add hl, sp
    rst RST_00
    ld sp, $2dee
    ldh a, [c]
    rst RST_38
    ld l, c
    or [hl]
    db $ed
    ld a, [hl-]
    ldh a, [c]
    xor l
    ld a, e
    adc h
    rst RST_38
    reti


    ld l, $fd
    ld b, $fc
    rlca
    sbc $a1
    rst RST_38
    sbc d
    ld h, l
    ld a, [de]
    db $ed
    ldh a, [rDIV]
    cp b
    ld b, b
    rst RST_38
    or b
    ld c, b
    ld a, b
    add b

jr_03a_4abf:
    ld c, h
    or b
    db $ec
    db $10
    adc a
    db $e4
    jr jr_03a_4b1f

    or h
    call c, $dc21
    ld hl, $21d6
    dec [hl]
    db $10
    db $db
    jr nc, jr_03a_4abf

    ld hl, $21ec
    and $21

jr_03a_4ad8:
    ld a, [de]
    db $eb
    jr nc, jr_03a_4ad8

    ld hl, $21fc
    jp c, $21f6

    adc l
    ei
    jr nc, jr_03a_4b46

    add b
    rst RST_28
    nop
    rst RST_08
    ld c, a
    rst RST_28
    add b
    ld d, b
    add b
    ld d, d
    add hl, bc
    ld b, b
    ld d, a
    add b
    dec b
    rst RST_38
    ld [bc], a
    ld [bc], a
    ld bc, $f309
    pop af
    ld bc, $fb09
    ld bc, $1949
    ld b, b
    jp hl


    ld bc, $8162
    pop hl
    rst RST_38
    nop
    nop
    pop bc
    ld d, b
    adc [hl]
    ld b, b
    add b
    ld b, h
    ei
    add b
    ld c, [hl]
    add hl, hl
    ld b, b
    xor c
    ld d, b
    ld h, b
    add b
    add b
    rst RST_38
    ldh [$ffa8], a
    rst RST_00

jr_03a_4b1f:
    and b
    ret nz

    and d
    ret nz

    and a
    cp $39
    ld b, b
    db $fc
    jr nc, jr_03a_4b7a

    ld bc, $0102
    ld c, l
    rst RST_38
    inc sp
    ld e, e
    dec a
    ld hl, $3d1e
    ld b, $2f
    rst RST_38
    db $10
    dec de
    db $e4
    or h
    ld c, e
    ld a, a
    xor $7f
    rst RST_38
    sub b
    rra
    ldh [$fff7], a
    ret z

jr_03a_4b46:
    rst RST_38
    nop
    rst RST_28
    rst RST_38
    ld [bc], a
    sub a
    ld a, b
    cpl
    db $f4
    ld e, [hl]
    db $e3
    ld [hl], l
    rst RST_38
    db $e3
    ld h, d
    add c
    ei
    nop
    db $e4
    add hl, de
    or b
    rst RST_38
    ld [$01fe], sp
    dec sp
    db $f4
    pop de
    ld l, $1f
    rst RST_38
    ldh [rIF], a
    ldh a, [$ff7d]
    add d
    ld e, l
    xor [hl]
    cpl
    rst RST_38
    db $10
    xor l
    ld e, d
    jp hl


    ld d, $fe
    rrca
    cp $ff
    dec b
    db $fd
    ld [bc], a

jr_03a_4b7a:
    ei
    inc b
    ld a, c
    sub [hl]
    cp a
    rst RST_38
    ld b, b
    sbc d
    ld [hl], l
    cp d
    ld [hl], l
    ld [de], a
    db $ed
    add hl, sp
    rst RST_38
    cp $18
    rst RST_20
    jp $e7bc


    sbc $fe
    rst RST_38
    ld bc, $729c
    sbc [hl]
    ld [hl], b
    or $48
    cp $ff
    inc h
    db $fc
    ld h, $be
    ld b, h
    ld a, $c0
    or $63
    jr jr_03a_4bdb

    rst RST_10
    ld [hl-], a
    jp c, $dc23

    ld hl, $0b12
    and $27
    ld h, d
    db $ec
    ld hl, $f78d
    ld [hl-], a
    ld a, [$fc23]
    ld hl, $8f50
    ldh [rLCDC], a
    inc c
    rlca
    ld b, b
    db $e4
    ld b, l
    add hl, bc
    pop af
    ldh a, [rLCDC]
    rla
    ld b, b
    db $f4
    ld b, l
    ld a, [bc]
    ld b, e
    ld a, [hl]
    ld a, [bc]
    ld b, c
    ld d, b
    adc a
    ld b, b
    add b
    ld b, b
    add b
    ld a, [de]
    ld b, e
    ld c, $1a
    ld b, c

jr_03a_4bdb:
    add hl, bc
    pop af
    ld bc, $501c
    inc l
    ld b, c
    inc l
    ld b, c
    ld h, $41
    and c
    ld b, [hl]
    dec hl
    ld d, b
    inc a
    ld b, c
    inc a
    ld b, c
    ld [hl], $41
    and e
    dec sp
    ld d, b
    ld b, b
    rst RST_38
    rra
    ld d, b
    ld c, a
    ld h, a
    ld b, b
    ld h, c
    ld b, b
    ld [hl], b
    ld [$5047], a
    ld [hl], c
    ld c, e
    ld d, b
    rst RST_00
    dec c
    ld d, b
    ret nz

    nop
    add c
    and e
    nop
    inc bc
    and c
    jr nz, jr_03a_4c4e

    jr nc, jr_03a_4c61

    jr nz, jr_03a_4c14

    dec de

jr_03a_4c14:
    jr nz, @-$02

    rst RST_38
    rrca
    ld a, a
    nop
    ld hl, sp+$17
    or $09
    inc a
    rst RST_38
    db $d3
    rlca
    nop
    jp $d800


    nop
    ld hl, sp-$01
    add b
    sbc $40
    ld a, [hl]
    ret nz

    ld a, [hl]
    add h
    dec bc
    rst RST_30
    ldh a, [c]
    ei
    inc b
    jr nc, jr_03a_4c38

    ld e, a

jr_03a_4c38:
    jr nz, jr_03a_4cb9

    nop
    rst RST_30
    halt
    nop
    ld l, $fd
    nop
    ldh [c], a
    dec e
    call nc, $ff2b
    and l
    ld e, d
    push hl
    ld a, [de]
    db $ed
    ld [de], a
    rst RST_38
    nop

jr_03a_4c4e:
    db $db
    ld l, a
    db $10
    ldh a, [rP1]
    nop
    db $fc
    and c
    ld d, b
    ld hl, sp+$00
    sbc a
    reti


    nop
    inc de
    nop
    daa
    db $fd
    nop

jr_03a_4c61:
    call nc, Call_000_3135
    ld a, a
    ld b, $2d
    ld [bc], a
    rrca
    rra
    nop
    nop
    db $e4
    dec [hl]
    rst RST_38
    jr @+$05

    sub [hl]
    ld bc, $8f47
    nop
    nop
    cp $f4
    dec [hl]
    adc h
    ld bc, $00cb
    and e
    rst RST_00
    nop
    sbc l
    nop
    db $e4
    ld b, a
    ld h, b
    add b
    ret nc

    rst RST_28
    nop
    db $f4
    ld b, l
    ld [$01ff], sp
    dec bc
    nop
    inc bc
    rlca
    nop
    nop
    ld b, [hl]
    adc b
    daa
    ld d, d
    ld a, [hl+]
    ld b, e
    inc l
    ld b, c
    and e
    scf
    ld d, d
    ld a, [hl-]
    ld b, e
    inc a
    ld b, c
    ld d, c
    cp a
    ld h, b
    ld d, h
    ld h, e
    ld d, b
    ld h, b
    ld d, e
    dec h
    ld h, [hl]
    ld b, h
    rst RST_38
    ld b, c
    ld b, a
    ld b, e
    ld e, a
    ld b, d
    ld d, e
    ld b, h
    ld d, c
    rst RST_38

jr_03a_4cb9:
    ld b, a
    ld c, a
    ld b, c
    ld a, a
    ld b, b
    ccf
    nop
    ld sp, $deff
    ld [$749f], a
    adc a
    pop hl
    rst RST_18
    rst RST_20
    rst RST_38
    sbc e
    cp b
    ld b, a
    db $dd
    ld a, $fc
    rlca
    ld h, l
    rst RST_38
    ld a, [$b8e5]
    add l
    ld hl, sp+$3e
    call Call_03a_7f3e
    pop bc
    ld e, $f1
    ld l, b
    sub a
    ld a, [$3065]
    ld [hl+], a
    ld a, l
    ld [hl+], a
    ld h, l
    ld h, c
    nop
    nop
    jr c, jr_03a_4d26

jr_03a_4cee:
    ld a, b
    ld l, h
    jr nz, @+$64

    ld h, d
    ld h, c
    ld h, [hl]
    ld [hl], l
    ld h, h
    ld l, b
    ld h, c
    ld h, d
    ld h, c
    ld l, [hl]
    ld a, [hl+]
    halt
    ld h, l
    rst RST_38
    dec b
    ld [bc], a

jr_03a_4d02:
    ldh [$ffe7], a
    cpl
    jr nz, jr_03a_4cee

    xor b
    rst RST_38
    ld h, b
    cpl
    ld l, l
    ld [hl+], a
    ld h, d
    dec l
    ld l, b
    daa
    ld a, a
    ld a, b
    add h
    adc h
    ld [hl], b
    ld [bc], a
    ld [bc], a
    cp $ee
    nop
    rst RST_38
    inc de
    ldh [$ff3d], a
    ret nz

    ld de, $80e8
    ld a, a
    sbc a
    ld a, a

jr_03a_4d26:
    rst RST_38
    ret nz

    ccf
    ccf
    ld h, $21
    ld sp, $bf00
    pop af
    add b
    ld l, a
    ld de, $62c0
    ld b, e
    inc b
    ld [hl+], a
    dec e
    dec e
    ld [hl+], a
    ld [hl], a
    ld b, b
    ld b, b
    ld a, a
    inc e
    jr nz, jr_03a_4d02

    nop
    ccf
    ld a, e
    nop
    cp $fd
    nop
    ccf
    ld e, a
    rra
    rla
    ld c, a
    nop
    ld l, a
    ccf
    nop
    ld l, a
    ld bc, $4268
    inc l
    cpl
    ld [hl+], a
    ld l, $04
    rst RST_30
    add hl, bc
    jr nz, jr_03a_4db1

    inc hl
    ld e, b
    ld h, l
    add b
    pop de
    db $e3
    ei
    nop
    nop
    inc [hl]
    ld d, l
    inc hl
    ret nz

    or d
    ld b, b
    add sp, -$01
    pop af
    nop
    nop
    ld [hl], c
    ld b, b
    ld h, [hl]
    ld c, [hl]
    ld c, b
    rst RST_38
    ld e, c
    jr jr_03a_4db4

    jr c, jr_03a_4dbc

    jr nc, jr_03a_4db9

    ret nz

    rst RST_38
    add hl, de
    nop
    ld c, $42
    nop
    ld bc, $003c
    rst RST_38
    ld b, [hl]
    ld [hl-], a
    ld b, $66
    ld c, $4c
    inc e
    add hl, de
    rst RST_38
    jr c, jr_03a_4dc6

    ld a, [hl]
    ld b, [hl]
    nop
    ld [hl+], a
    jr c, jr_03a_4de1

    rst RST_38
    ld h, h
    add e
    ldh [rNR31], a
    ld hl, sp+$25
    db $e4
    ld h, c
    rst RST_38
    ld h, h
    or e
    jr c, @-$06

    rlca
    sub d
    ld l, l
    and d
    rst RST_38
    ld e, l
    inc bc

jr_03a_4db1:
    db $fc
    push af
    ld a, [bc]

jr_03a_4db4:
    dec h
    jp c, $ff5d

    and d

jr_03a_4db9:
    ld e, c
    and h
    nop

jr_03a_4dbc:
    jr jr_03a_4dbe

jr_03a_4dbe:
    rla
    nop
    ld d, l
    rrca
    adc e

jr_03a_4dc3:
    jr nz, jr_03a_4dc3

    ld e, e

jr_03a_4dc6:
    ld d, b
    inc b
    ld l, h
    ld [hl], b
    nop
    and c
    ld d, d
    rst RST_38
    di
    nop
    ld l, h

jr_03a_4dd1:
    nop
    sub b
    nop
    ldh [rP1], a
    cp l
    ld b, b
    halt
    ld h, c
    ld h, $22
    ld b, $02
    add [hl]
    ld [hl], h
    ld a, [bc]

jr_03a_4de1:
    rst RST_38
    ld l, c
    ld h, $6a
    dec h
    ld l, a
    jr nz, jr_03a_4e57

    and c
    rst RST_38
    ld h, [hl]
    xor c
    ld h, e
    xor h
    ld h, b
    xor a
    ld h, c
    xor [hl]
    rst RST_38
    cp e
    ld b, c
    ld l, [hl]
    sub d
    sbc h
    ld h, h
    add hl, sp
    ret z

    ld a, a
    ld [hl], e
    sub b
    rst RST_20

Jump_03a_4e00:
    jr nz, jr_03a_4dd1

    ld b, b
    sbc a
    cp a
    ld l, [hl]
    rst RST_10
    ld bc, $fefe
    ld a, c
    db $10
    db $fc
    or a
    ld h, d
    cp $00
    rst RST_38
    db $fd
    ld bc, $9ee1
    ld h, c
    ld e, [hl]
    jr c, jr_03a_4e41

    rst RST_38
    sbc b
    rla
    call z, $e60b
    dec b
    di
    ld [bc], a
    ld c, a
    ld sp, hl
    ld bc, $6809
    add sp, $61
    add sp, $60
    cpl
    ld h, h
    ld [hl], b
    rst RST_28
    add b
    add b
    ld b, b
    dec l
    cp a
    ld h, b
    nop
    nop
    rra
    ld bc, $2f5f
    ld hl, $212d
    dec e
    add b

jr_03a_4e41:
    ld [hl+], a
    rst RST_38
    nop
    nop
    inc b
    ld hl, sp-$08
    db $fc
    ld a, [$fffc]
    nop
    cp $00
    cp $60
    ld b, $04
    xor d
    ld a, a
    nop
    nop

jr_03a_4e57:
    rst RST_38
    rst RST_38
    ld b, h
    ld [hl+], a
    ld h, [hl]

jr_03a_4e5c:
    dec d
    ld b, $ff
    ld h, e
    xor l
    ld [hl+], a
    ld l, [hl]
    db $ec
    db $e4
    add hl, bc
    ld [$0bff], sp
    ret z

    rst RST_30
    jr nc, jr_03a_4e5c

    ldh [$ff1f], a
    nop
    rst RST_38
    inc [hl]
    dec bc
    ld e, d
    dec h
    or a
    ld c, b
    rst RST_10
    jr z, @+$01

    ld [$7f15], a
    add b
    or [hl]
    ld c, c
    db $ed
    ld [de], a
    rst RST_38
    call nz, Call_03a_46b5
    ld [hl], h
    scf
    daa
    sub b
    db $10
    rst RST_38
    ret nc

    inc de
    rst RST_28
    inc c
    rst RST_30
    rlca
    ld hl, sp+$00
    rst RST_38
    jr nz, jr_03a_4ed7

    ld h, b
    ld b, b
    ld b, b
    ld h, b
    ld d, [hl]
    ld h, b
    rst RST_38
    ld d, d
    ld h, h
    ld c, d
    ld h, h
    ld h, h
    ld c, b
    ld [hl], b
    ld c, b
    ei
    nop
    inc b
    ld h, b
    inc c
    ld b, b
    nop
    ld h, b
    nop

jr_03a_4eaf:
    jr nz, jr_03a_4eaf

    ld [hl], h
    ld [bc], a
    jr nc, jr_03a_4eb5

jr_03a_4eb5:
    stop
    db $10
    ld b, $0a
    rst RST_38
    inc bc
    ld b, $07
    rlca
    nop
    nop
    nop
    rlca
    rst RST_28
    inc bc
    nop
    inc bc
    inc bc
    add [hl]
    nop
    rst RST_38
    rlca
    ld hl, sp-$0f
    rst RST_38
    ld de, $1000
    nop
    sbc c
    ld [bc], a
    dec de
    and b

jr_03a_4ed7:
    cp e
    nop
    rst RST_38
    dec de
    ld b, b
    ld e, a
    dec de
    ld b, b
    nop
    cp e
    inc bc
    pop af
    cp b
    xor c
    nop
    sbc d
    inc bc
    sub [hl]
    ld bc, $fefe
    nop
    ld bc, $e0fb
    rst RST_20
    add [hl]
    nop
    ldh a, [rP1]
    rlca
    ldh a, [$fff0]

jr_03a_4ef8:
    db $ed
    rrca
    sbc d
    inc bc
    rrca
    rra
    add [hl]
    nop
    inc bc
    ret nz

    ld bc, $0cff
    ldh [$ffe0], a
    inc c
    db $fd
    nop
    ld a, [$ff00]
    ldh a, [c]
    rst RST_38
    nop
    ld a, a
    nop
    ccf
    add b
    ccf
    rst RST_38
    add b
    rra
    nop
    rra
    nop
    rrca
    ret nz

    rrca
    rst RST_38
    add b
    ld a, [hl+]
    ld d, b
    ld [hl+], a
    ld d, b
    db $10
    ld h, d
    inc b
    rst RST_38
    ld h, d
    ld [bc], a
    ld h, h
    ld c, b
    ld h, h
    ld b, h
    ld l, b
    ld h, b
    rst RST_30
    ld c, b
    ld d, b
    ld b, $08
    nop
    ld [bc], a
    ld hl, sp-$06
    jr c, @+$01

    ld a, [hl-]
    jr c, jr_03a_4ef8

    jr c, jr_03a_4f78

    nop
    nop
    and $ff
    ld [hl+], a
    and $22
    ld l, [hl]
    and d
    ld l, [hl]
    and d
    ld h, [hl]
    db $fd
    xor d
    jr jr_03a_4f63

    cp a
    ld b, b
    db $db
    inc h
    or [hl]
    ld c, c
    rst RST_38
    db $db
    inc h
    cp l
    ld b, d
    db $eb
    inc d
    ld [hl], a
    adc b
    rst RST_18
    xor [hl]
    ld d, c
    ld [hl], h

jr_03a_4f63:
    adc e
    jp c, $0a33

    ld [$f531], sp
    add $95
    ld [bc], a
    inc sp
    or e
    inc b
    ld h, [hl]
    xor d
    inc sp
    ld h, [hl]
    ld a, b
    ld b, h
    add hl, de

jr_03a_4f77:
    ld h, b

jr_03a_4f78:
    ld [$0297], sp
    nop
    jr jr_03a_4f7e

jr_03a_4f7e:
    ld [$1272], sp
    ld a, a
    add hl, bc
    nop
    sub $08
    dec b
    db $dd
    nop
    ld a, h
    nop
    ld a, a
    dec h
    jr @+$5a

    rlca
    or a
    nop
    rrca
    sbc c
    nop
    jp $e01f


    sbc c
    inc b
    sub b
    rla
    xor h
    nop
    and c
    ld [de], a
    ld a, [de]
    ld b, b
    rst RST_38
    ld e, d
    nop
    ld e, b
    ld bc, $03b8
    nop
    rra
    rst RST_38
    add b
    ccf
    rlca
    ld a, b
    rrca
    ld [hl], b
    ld e, $e0
    ld a, a
    jr c, jr_03a_4f77

    ld [hl], b
    add b
    ld h, e
    add b
    ldh a, [$ffb1]
    ld b, $f9
    ld bc, $00b8
    sbc c
    nop
    dec b
    nop
    nop
    sbc c
    add hl, de
    rst RST_38
    or h
    cp l
    inc d
    ld a, h
    dec b
    ld [hl], l
    inc b
    dec [hl]
    rst RST_38
    nop
    sbc b
    rrca
    ld b, b
    adc a
    add b
    rrca
    add b
    db $fd
    rra
    pop hl
    db $10
    rlca
    add b
    inc bc
    ld b, b
    add e
    add b
    rst RST_38
    ld bc, $0180
    ld b, b
    add c
    add b
    inc b
    add h
    rst RST_38
    ld [bc], a
    ld b, d
    add d
    add d
    ld [de], a
    sub d
    ld a, [bc]
    ld a, [de]
    or $99
    ld bc, $01fe
    call RST_00
    inc bc
    nop
    ret nz

    rst RST_38
    nop
    ld hl, sp+$00
    ld bc, $00e5
    push af
    nop
    rst RST_38
    ld hl, sp-$7f
    ld a, c
    ret nz

    dec a
    ldh [rNR32], a
    ldh a, [rTAC]
    ld c, $7a
    inc b
    dec e
    nop
    add b
    rst RST_38
    ldh [rP1], a
    adc l
    ldh [rIE], a
    ret nz

    add b
    rst RST_38
    rst RST_38
    ldh a, [$ff3f]
    ld [hl], h
    xor a
    inc hl
    call c, $fc03
    rst RST_38
    ld a, a
    ld a, a
    sbc a
    ld a, a
    rrca
    rst RST_38
    rrca
    rst RST_38
    rst RST_38
    add a
    ld a, a
    add a
    ld a, a
    ld b, a
    cp a
    rst RST_20
    rra
    rst RST_38
    rra
    ldh [$ffc7], a
    ld hl, sp-$10
    rst RST_38
    cp $ff
    ld a, [$0627]
    nop
    jr nc, jr_03a_504f

    rra

jr_03a_504f:
    ldh [$ffcf], a
    ldh a, [$ffc1]
    sbc a
    cp $fb
    db $fc
    rst RST_30
    ld hl, sp+$30
    inc bc
    ld b, h
    dec c
    ld [hl], b
    cp a
    adc a
    rrca
    rst RST_38
    rra
    rst RST_38
    ld a, a
    dec l
    ld b, $3f
    rst RST_38
    ret nz

    adc a
    ldh a, [$fff3]
    db $fc
    db $fd
    cp $e0
    call c, Call_000_042f
    jr nc, jr_03a_5079

    pop bc
    ld a, $3e

jr_03a_5079:
    ld l, a
    ld a, [bc]
    db $fc
    inc bc
    cp e
    inc hl
    rst RST_18
    ld b, h
    dec b
    ldh a, [rIF]
    ld c, $5b
    ld [$3fff], sp
    nop
    ld a, a
    add b
    ccf
    ret nz

    ldh a, [$ff9d]
    ld [$03a4], sp
    rst RST_38
    ldh [rIE], a
    ldh [c], a
    db $dd
    ld b, b
    cp a
    add hl, de
    and $ff
    ld de, $fcfe
    ccf
    ld hl, sp+$07
    add [hl]
    ld a, c
    rst RST_38
    cp b
    ld b, a
    db $fd
    ld [bc], a
    nop
    rst RST_38
    ccf
    ret nz

    rst RST_38
    rst RST_38
    nop
    cp a
    ld b, b
    inc de
    db $fc
    ld a, $f1
    rst RST_38
    ldh a, [rIF]
    cp b
    ld h, b
    db $fc
    ld b, b
    ld hl, sp+$00
    rst RST_38
    ldh a, [rP1]
    and b
    nop
    ld a, [$7c42]
    sub b
    rst RST_38
    ld e, $e0
    nop
    nop
    cp $ff
    nop
    cp $ed
    cp $f0
    nop
    cp $00
    or $00
    nop
    db $fd
    ld [bc], a
    rst RST_38
    rst RST_38
    ld [bc], a
    jr nz, @+$01

    scf
    ld hl, sp+$3c
    rst RST_10
    rst RST_38
    sbc h
    ld h, e
    db $fc
    rrca
    cp $23
    ld [$ff17], a
    pop af
    rrca
    sbc b
    ld h, a
    jp c, $1025

    rst RST_28
    cp a
    ldh a, [rIF]
    or e
    ld a, [hl]
    ld e, $ed
    daa
    ld bc, $fc3f
    ld e, c
    nop
    inc d
    ld bc, $ff07
    inc bc
    rst RST_38
    rst RST_20
    ld hl, sp-$39
    add b
    rst RST_38
    db $e3
    daa
    ld b, $ac
    nop
    ld h, l
    nop
    rst RST_08
    ldh a, [$ff7e]
    xor h
    ld bc, $fffe
    add b
    rst RST_38
    rlca
    rst RST_20
    adc d
    ld bc, $f3ff
    rrca
    rst RST_00
    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    cp [hl]
    and [hl]
    ld bc, $03fc
    ld [hl], b
    adc a
    add a
    daa
    ld [bc], a
    rrca
    rst RST_20
    rst RST_38
    ldh a, [rIF]
    jr nc, jr_03a_513e

jr_03a_513e:
    daa
    ld [bc], a
    cp $ff
    ldh [$fffd], a
    rst RST_38
    ld c, $00
    add b
    rst RST_20
    nop
    rrca
    rst RST_38
    rst RST_08
    jp c, Jump_000_1023

    rrca
    dec l
    db $10
    pop hl
    rra
    ld e, d
    ld de, $ffff
    db $fd
    ld hl, sp+$77
    db $10

jr_03a_515d:
    pop bc
    cp $83
    db $fc
    add a
    ld hl, sp-$21
    sbc c
    ld h, [hl]
    ld d, b
    cpl
    rst RST_38
    ld e, e
    nop
    ld c, e
    cp a
    ld a, e
    and d
    ld a, a
    ld sp, $7401
    adc e
    jr jr_03a_515d

    daa
    inc bc
    db $fd
    ld a, a
    rla
    nop
    nop
    rst RST_38
    add b
    ld a, a
    ld c, $f1
    rst RST_38
    ld sp, hl
    ld e, $fc
    rrca
    ld sp, hl
    add [hl]
    rst RST_18
    nop
    rst RST_38
    ld l, l
    add d
    add $00
    add l
    nop
    add hl, bc
    nop
    rst RST_38
    ld h, $d9
    ld bc, $fdff
    dec bc
    sbc a
    ld h, h
    rst RST_38
    ld a, [hl-]
    dec b
    ld e, a
    nop
    rst RST_00
    jr nz, @+$6d

    sub b
    rst RST_38
    cp h
    ld c, e
    add $3f
    pop af
    ld c, $cf
    inc a
    rst RST_38
    sbc a
    rst RST_20
    rst RST_28
    ldh a, [$ffe0]
    inc e
    ldh a, [rP1]
    rst RST_38
    ret nz

    ret nz

    ld sp, hl
    ld sp, $699c
    ret z

    inc [hl]
    rst RST_38
    or $08
    db $fc
    nop
    ld a, b
    nop
    ld [bc], a
    dec b
    rst RST_38
    nop
    stop
    ld a, h
    rst RST_38
    rst RST_38
    ld l, d
    nop
    cp a
    ld [$fa4a], a
    ld e, [hl]
    ld [$f24a], a
    nop
    nop
    rst RST_38
    daa
    rra
    jr nz, jr_03a_5201

    ccf
    nop
    ld b, b
    ccf
    rla
    ld a, a
    nop
    ld a, a
    db $fd
    nop
    nop
    ld l, a
    db $10
    ld hl, $2121
    ld [hl+], a
    cp b
    dec e
    cpl
    db $fd
    nop
    ldh a, [c]
    dec bc
    nop
    ld [$7e00], sp
    nop
    ld d, [hl]
    rst RST_38

jr_03a_5201:
    nop
    ld d, a
    ld d, d
    ld e, a
    ld a, d
    ld d, a
    ld d, d
    ld a, a
    cp $0f
    jr nz, jr_03a_5233

    ld e, $20
    ld e, $3e
    nop
    ld b, b
    cp e
    ld a, $7c
    ei
    stop
    nop
    ld a, d
    reti


    db $10
    cpl
    rst RST_38
    ld b, b
    ld h, c
    add b
    sbc b
    ld h, b
    cp $80
    cp a
    rst RST_38
    ldh a, [$fffa]
    rlca
    dec h
    cp $3d
    rst RST_00
    adc h
    rst RST_28
    ld a, a
    push af

jr_03a_5233:
    ld a, [bc]
    ld a, h
    nop
    jr nz, jr_03a_5239

    nop

jr_03a_5239:
    sbc $ff
    ld bc, $00ff
    adc [hl]
    di
    ld d, $ef
    ldh [rIE], a
    rra
    ld l, a

jr_03a_5246:
    db $10
    cp b
    ld b, a
    ld l, [hl]
    sub c
    jp c, Jump_000_3dff

    dec b
    nop
    rlca
    nop
    dec c
    ld [bc], a
    dec c
    rst RST_38
    ld [bc], a
    dec e
    inc bc
    dec d
    ld a, [bc]
    inc l
    inc de
    call z, $73ff
    cp b
    ld [hl], c
    sbc h
    ld [hl], b
    add hl, sp
    add $aa
    rst RST_38
    push de
    xor a
    pop de
    and c
    ld e, a
    scf
    jp hl


    ld sp, $eebb
    ret nz

    dec l
    ld [hl+], a
    add d
    nop
    add [hl]
    rst RST_00
    jr nz, @-$3c

    rst RST_38
    inc b
    jp nc, Jump_000_1504

    ld a, [bc]
    dec bc
    inc b
    inc b
    rst RST_38
    rrca
    add l
    halt
    dec b
    ld b, $25
    ld b, $75
    cp $d9
    jr nz, @+$4c

    add l
    add l
    ld [bc], a
    add d
    rlca
    ld b, d
    cp a
    dec sp
    ld [bc], a
    inc bc
    ld [de], a
    inc bc
    ld a, [hl-]
    jp hl


    jr nz, jr_03a_5246

    rst RST_38
    ld b, d
    jp nz, Jump_000_0101

    add e
    and c
    dec e
    add c
    rst RST_08
    ld bc, $0189
    sbc l
    ld sp, hl
    jr nz, jr_03a_52e2

    add hl, hl
    ld [hl], b
    nop
    ld a, e
    add l
    ld a, [bc]
    jr nc, jr_03a_52e3

    jr c, jr_03a_52bc

jr_03a_52bc:
    ld b, d
    add l
    jr nc, jr_03a_52e9

    cpl
    rra
    nop
    and b
    ld b, b
    jr nc, jr_03a_52f0

    ld hl, sp-$03
    ld de, $2821
    rst RST_38
    inc e
    nop
    and c
    ld b, d
    nop
    nop
    pop hl
    ldh [rIE], a
    jr @-$77

    cp [hl]
    ld bc, $3a45
    ld h, d
    dec e
    rst RST_38
    jr nc, jr_03a_52f0

    add h

jr_03a_52e2:
    add e

jr_03a_52e3:
    rst RST_38
    inc c
    ldh a, [rVBK]
    rst RST_38
    ld l, a

jr_03a_52e9:
    ret nc

    rra
    ldh [$ffe1], a
    ld e, $55
    xor d

jr_03a_52f0:
    rst RST_38
    ld d, $e8
    cp $c0
    rst RST_28
    call nc, $a877
    rst RST_38
    ret c

    rst RST_20
    add a
    ld a, b
    push af
    ld a, [bc]
    cpl
    inc e
    rst RST_38
    ld a, [hl]
    nop
    pop af
    ld c, $7e
    add c
    or e
    ld c, h
    rst RST_38
    rst RST_30
    ld [$b34f], sp
    ld [hl], h
    dec bc
    scf
    ld a, [bc]
    rst RST_38
    swap h
    ccf
    ret nz

    ld a, [hl]
    add c
    rst RST_08
    ld a, $ff
    ld b, a
    ld hl, sp-$02
    pop bc
    rst RST_38
    ld b, $96
    ld l, c
    rst RST_38
    ld a, b
    add a
    cp $09
    call z, $dd77
    ld h, a
    rst RST_38
    db $dd
    dec hl
    add hl, sp
    rst RST_00
    ld sp, $2dee
    ldh a, [c]
    rst RST_38
    ld l, c
    or [hl]
    db $ed
    ld a, [hl-]
    ldh a, [c]
    xor l
    ld a, e
    adc h
    rst RST_38
    reti


    ld l, $fd
    ld b, $fc
    rlca
    sbc $a1
    rst RST_38
    sbc d
    ld h, l
    ld a, [de]
    db $ed
    ldh a, [rDIV]
    cp b
    ld b, b
    rst RST_38
    or b
    ld c, b
    ld a, b
    add b

jr_03a_5358:
    ld c, h
    or b
    db $ec
    db $10
    adc a
    db $e4
    jr jr_03a_53b8

    or h
    call c, $dc21
    ld hl, $21d6
    dec [hl]
    db $10
    db $db
    jr nc, jr_03a_5358

    ld hl, $21ec
    and $21

jr_03a_5371:
    ld a, [de]
    db $eb
    jr nc, jr_03a_5371

    ld hl, $21fc
    jp c, $21f6

    adc l
    ei
    jr nc, jr_03a_53df

    add b
    rst RST_28
    nop
    rst RST_08
    ld c, a
    rst RST_28
    add b
    ld d, b
    add b
    ld d, d
    add hl, bc
    ld b, b
    ld d, a
    add b
    dec b
    rst RST_38
    ld [bc], a
    ld [bc], a
    ld bc, $f309
    pop af
    ld bc, $fb09
    ld bc, $1949
    ld b, b
    jp hl


    ld bc, $8162
    pop hl
    rst RST_38
    nop
    nop
    pop bc
    ld d, b
    adc [hl]
    ld b, b
    add b
    ld b, h
    ei
    add b
    ld c, [hl]
    add hl, hl
    ld b, b
    xor c
    ld d, b
    ld h, b
    add b
    add b
    rst RST_38
    ldh [$ffa8], a
    rst RST_00

jr_03a_53b8:
    and b
    ret nz

    and d
    ret nz

    and a
    cp $39
    ld b, b
    db $fc
    jr nc, jr_03a_5413

    ld bc, $0102
    ld c, l
    rst RST_38
    inc sp
    ld e, e
    dec a
    ld hl, $3d1e
    ld b, $2f
    rst RST_38
    db $10
    dec de
    db $e4
    or h
    ld c, e
    ld a, a
    xor $7f
    rst RST_38
    sub b
    rra
    ldh [$fff7], a
    ret z

jr_03a_53df:
    rst RST_38
    nop
    rst RST_28
    rst RST_38
    ld [bc], a
    sub a
    ld a, b
    cpl
    db $f4
    ld e, [hl]
    db $e3
    ld [hl], l
    rst RST_38
    db $e3
    ld h, d
    add c
    ei
    nop
    db $e4
    add hl, de
    or b
    rst RST_38
    ld [$01fe], sp
    dec sp
    db $f4
    pop de
    ld l, $1f
    rst RST_38
    ldh [rIF], a
    ldh a, [$ff7d]
    add d
    ld e, l
    xor [hl]
    cpl
    rst RST_38
    db $10
    xor l
    ld e, d
    jp hl


    ld d, $fe
    rrca
    cp $ff
    dec b
    db $fd
    ld [bc], a

jr_03a_5413:
    ei
    inc b
    ld a, c
    sub [hl]
    cp a
    rst RST_38
    ld b, b
    sbc d
    ld [hl], l
    cp d
    ld [hl], l
    ld [de], a
    db $ed
    add hl, sp
    rst RST_38
    cp $18
    rst RST_20
    jp $e7bc


    sbc $fe
    rst RST_38
    ld bc, $729c
    sbc [hl]
    ld [hl], b
    or $48
    cp $ff
    inc h
    db $fc
    ld h, $be
    ld b, h
    ld a, $c0
    or $63
    jr jr_03a_5474

    rst RST_10
    ld [hl-], a
    jp c, $dc23

    ld hl, $0b12
    and $27
    ld h, d
    db $ec
    ld hl, $f78d
    ld [hl-], a
    ld a, [$fc23]
    ld hl, $8f50
    ldh [rLCDC], a
    inc c
    rlca
    ld b, b
    db $e4
    ld b, l
    add hl, bc
    pop af
    ldh a, [rLCDC]
    rla
    ld b, b
    db $f4
    ld b, l
    ld a, [bc]
    ld b, e
    ld a, [hl]
    ld a, [bc]
    ld b, c
    ld d, b
    adc a
    ld b, b
    add b
    ld b, b
    add b
    ld a, [de]
    ld b, e
    ld c, $1a
    ld b, c

jr_03a_5474:
    add hl, bc
    pop af
    ld bc, $501c
    inc l
    ld b, c
    inc l
    ld b, c
    ld h, $41
    and c
    ld b, [hl]
    dec hl
    ld d, b
    inc a
    ld b, c
    inc a
    ld b, c
    ld [hl], $41
    and e
    dec sp
    ld d, b
    ld b, b
    rst RST_38
    rra
    ld d, b
    ld c, a
    ld h, a
    ld b, b
    ld h, c
    ld b, b
    ld [hl], b
    ld [$5047], a
    ld [hl], c
    ld c, e
    ld d, b
    rst RST_00
    dec c
    ld d, b
    ret nz

    nop
    add c
    and e
    nop
    inc bc
    and c
    jr nz, jr_03a_54e7

    jr nc, jr_03a_54fa

    jr nz, jr_03a_54ad

    dec de

jr_03a_54ad:
    jr nz, @-$02

    rst RST_38
    rrca
    ld a, a
    nop
    ld hl, sp+$17
    or $09
    inc a
    rst RST_38
    db $d3
    rlca
    nop
    jp $d800


    nop
    ld hl, sp-$01
    add b
    sbc $40
    ld a, [hl]
    ret nz

    ld a, [hl]
    add h
    dec bc
    rst RST_30
    ldh a, [c]
    ei
    inc b
    jr nc, jr_03a_54d1

    ld e, a

jr_03a_54d1:
    jr nz, jr_03a_5552

    nop
    rst RST_30
    halt
    nop
    ld l, $fd
    nop
    ldh [c], a
    dec e
    call nc, $ff2b
    and l
    ld e, d
    push hl
    ld a, [de]
    db $ed
    ld [de], a
    rst RST_38
    nop

jr_03a_54e7:
    db $db
    ld l, a
    db $10
    ldh a, [rP1]
    nop
    db $fc
    and c
    ld d, b
    ld hl, sp+$00
    sbc a
    reti


    nop
    inc de
    nop
    daa
    db $fd
    nop

jr_03a_54fa:
    call nc, Call_000_3135
    ld a, a
    ld b, $2d
    ld [bc], a
    rrca
    rra
    nop
    nop
    db $e4
    dec [hl]
    rst RST_38
    jr @+$05

    sub [hl]
    ld bc, $8f47
    nop
    nop
    cp $f4
    dec [hl]
    adc h
    ld bc, $00cb
    and e
    rst RST_00
    nop
    sbc l
    nop
    db $e4
    ld b, a
    ld h, b
    add b
    ret nc

    rst RST_28
    nop
    db $f4
    ld b, l
    ld [$01ff], sp
    dec bc
    nop
    inc bc
    rlca
    nop
    nop
    ld b, [hl]
    adc b
    daa
    ld d, d
    ld a, [hl+]
    ld b, e
    inc l
    ld b, c
    and e
    scf
    ld d, d
    ld a, [hl-]
    ld b, e
    inc a
    ld b, c
    ld d, c
    cp a
    ld h, b
    ld d, h
    ld h, e
    ld d, b
    ld h, b
    ld d, e
    dec h
    ld h, [hl]
    ld b, h
    rst RST_38
    ld b, c
    ld b, a
    ld b, e
    ld e, a
    ld b, d
    ld d, e
    ld b, h
    ld d, c
    rst RST_38

jr_03a_5552:
    ld b, a
    ld c, a
    ld b, c
    ld a, a
    ld b, b
    ccf
    nop
    ld sp, $deff
    ld [$749f], a
    adc a
    pop hl
    rst RST_18
    rst RST_20
    rst RST_38
    sbc e
    cp b
    ld b, a
    db $dd
    ld a, $fc
    rlca
    ld h, l
    rst RST_38
    ld a, [$b8e5]
    add l
    ld hl, sp+$3e
    call Call_03a_7f3e
    pop bc
    ld e, $f1
    ld l, b
    sub a
    ld a, [$3065]
    ld [hl+], a
    ld a, l
    ld [hl+], a
    ld h, l
    ld h, c
    nop
    nop
    jr c, jr_03a_55bf

jr_03a_5587:
    ld a, b
    ld l, h
    jr nz, @+$64

    ld h, d
    ld h, c
    ld h, [hl]
    ld [hl], l
    ld h, h
    ld l, b
    ld h, c
    ld h, d
    ld h, c
    ld l, [hl]
    ld a, [hl+]
    halt
    ld h, l
    rst RST_38
    dec b
    ld [bc], a

jr_03a_559b:
    ldh [$ffe7], a
    cpl
    jr nz, jr_03a_5587

    xor b
    rst RST_38
    ld h, b
    cpl
    ld l, l
    ld [hl+], a
    ld h, d
    dec l
    ld l, b
    daa
    ld a, a
    ld a, b
    add h
    adc h
    ld [hl], b
    ld [bc], a
    ld [bc], a
    cp $ee
    nop
    rst RST_38
    inc de
    ldh [$ff3d], a
    ret nz

    ld de, $80e8
    ld a, a
    sbc a
    ld a, a

jr_03a_55bf:
    rst RST_38
    ret nz

    ccf
    ccf
    ld h, $21
    ld sp, $bf00
    pop af
    add b
    ld l, a
    ld de, $62c0
    ld b, e
    inc b
    ld [hl+], a
    dec e
    dec e
    ld [hl+], a
    ld [hl], a
    ld b, b
    ld b, b
    ld a, a
    inc e
    jr nz, jr_03a_559b

    nop
    ccf
    ld a, e
    nop
    cp $fd
    nop
    ccf
    ld e, a
    rra
    rla
    ld c, a
    nop
    ld l, a
    ccf
    nop
    ld l, a
    ld bc, $4268
    inc l
    cpl
    ld [hl+], a
    ld l, $04
    rst RST_30
    add hl, bc
    jr nz, jr_03a_564a

    inc hl
    ld e, b
    ld h, l
    add b
    pop de
    db $e3
    ei
    nop
    nop
    inc [hl]
    ld d, l
    inc hl
    ret nz

    or d
    ld b, b
    add sp, -$01
    pop af
    nop
    nop
    ld [hl], c
    ld b, b
    ld h, [hl]
    ld c, [hl]
    ld c, b
    rst RST_38
    ld e, c
    jr jr_03a_564d

    jr c, jr_03a_5655

    jr nc, jr_03a_5652

    ret nz

    rst RST_38
    add hl, de
    nop
    ld c, $42
    nop
    ld bc, $003c
    rst RST_38
    ld b, [hl]
    ld [hl-], a
    ld b, $66
    ld c, $4c
    inc e
    add hl, de
    rst RST_38
    jr c, jr_03a_565f

    ld a, [hl]
    ld b, [hl]
    nop
    ld [hl+], a
    jr c, jr_03a_567a

    rst RST_38
    ld h, h
    add e
    ldh [rNR31], a
    ld hl, sp+$25
    db $e4
    ld h, c
    rst RST_38
    ld h, h
    or e
    jr c, @-$06

    rlca
    sub d
    ld l, l
    and d
    rst RST_38
    ld e, l
    inc bc

jr_03a_564a:
    db $fc
    push af
    ld a, [bc]

jr_03a_564d:
    dec h
    jp c, $ff5d

    and d

jr_03a_5652:
    ld e, c
    and h
    nop

jr_03a_5655:
    jr jr_03a_5657

jr_03a_5657:
    rla
    nop
    ld d, l
    rrca
    adc e

jr_03a_565c:
    jr nz, jr_03a_565c

    ld e, e

jr_03a_565f:
    ld d, b
    inc b
    ld l, h
    ld [hl], b
    nop
    and c
    ld d, d
    rst RST_38
    di
    nop
    ld l, h

jr_03a_566a:
    nop
    sub b
    nop
    ldh [rP1], a
    cp l
    ld b, b
    halt
    ld h, c
    ld h, $22
    ld b, $02
    add [hl]
    ld [hl], h
    ld a, [bc]

jr_03a_567a:
    rst RST_38
    ld l, c
    ld h, $6a
    dec h
    ld l, a
    jr nz, jr_03a_56f0

    and c
    rst RST_38
    ld h, [hl]
    xor c
    ld h, e
    xor h
    ld h, b
    xor a
    ld h, c
    xor [hl]
    rst RST_38
    cp e
    ld b, c
    ld l, [hl]
    sub d
    sbc h
    ld h, h
    add hl, sp
    ret z

    ld a, a
    ld [hl], e
    sub b
    rst RST_20
    jr nz, jr_03a_566a

    ld b, b
    sbc a
    cp a
    ld l, [hl]
    rst RST_10
    ld bc, $fefe
    ld a, c
    db $10
    db $fc
    or a
    ld h, d
    cp $00
    rst RST_38
    db $fd
    ld bc, $9ee1
    ld h, c
    ld e, [hl]
    jr c, jr_03a_56da

    rst RST_38
    sbc b
    rla
    call z, $e60b
    dec b
    di
    ld [bc], a
    ld c, a
    ld sp, hl
    ld bc, $6809
    add sp, $61
    add sp, $60
    cpl
    ld h, h
    ld [hl], b
    rst RST_28
    add b
    add b
    ld b, b
    dec l
    cp a
    ld h, b
    nop
    nop
    rra
    ld bc, $2f5f
    ld hl, $212d
    dec e
    add b

jr_03a_56da:
    ld [hl+], a
    rst RST_38
    nop
    nop
    inc b
    ld hl, sp-$08
    db $fc
    ld a, [$fffc]
    nop
    cp $00
    cp $60
    ld b, $04
    xor d
    ld a, a
    nop
    nop

jr_03a_56f0:
    rst RST_38
    rst RST_38
    ld b, h
    ld [hl+], a
    ld h, [hl]

jr_03a_56f5:
    dec d
    ld b, $ff
    ld h, e
    xor l
    ld [hl+], a
    ld l, [hl]
    db $ec
    db $e4
    add hl, bc
    ld [$0bff], sp
    ret z

    rst RST_30
    jr nc, jr_03a_56f5

    ldh [$ff1f], a
    nop
    rst RST_38
    inc [hl]
    dec bc
    ld e, d
    dec h
    or a
    ld c, b
    rst RST_10
    jr z, @+$01

    ld [$7f15], a
    add b
    or [hl]
    ld c, c
    db $ed
    ld [de], a
    rst RST_38
    call nz, Call_03a_46b5
    ld [hl], h
    scf
    daa
    sub b
    db $10
    rst RST_38
    ret nc

    inc de
    rst RST_28
    inc c
    rst RST_30
    rlca
    ld hl, sp+$00
    rst RST_38
    jr nz, jr_03a_5770

    ld h, b
    ld b, b
    ld b, b
    ld h, b
    ld d, [hl]
    ld h, b
    rst RST_38
    ld d, d
    ld h, h
    ld c, d
    ld h, h
    ld h, h
    ld c, b
    ld [hl], b
    ld c, b
    ei
    nop
    inc b
    ld h, b
    inc c
    ld b, b
    nop
    ld h, b
    nop

jr_03a_5748:
    jr nz, jr_03a_5748

    ld [hl], h
    ld [bc], a
    jr nc, jr_03a_574e

jr_03a_574e:
    stop
    db $10
    ld b, $0a
    rst RST_38
    inc bc
    ld b, $07
    rlca
    nop
    nop
    nop
    rlca
    rst RST_28
    inc bc
    nop
    inc bc
    inc bc
    add [hl]
    nop
    rst RST_38
    rlca
    ld hl, sp-$0f
    rst RST_38
    ld de, $1000
    nop
    sbc c
    ld [bc], a
    dec de
    and b

jr_03a_5770:
    cp e
    nop
    rst RST_38
    dec de
    ld b, b
    ld e, a
    dec de
    ld b, b
    nop
    cp e
    inc bc
    pop af
    cp b
    xor c
    nop
    sbc d
    inc bc
    sub [hl]
    ld bc, $fefe
    nop
    ld bc, $e0fb
    rst RST_20
    add h
    nop
    ldh a, [rP1]
    rlca
    ldh a, [$fff0]

jr_03a_5791:
    ld sp, hl
    rrca
    sbc d
    inc bc
    ret z

    nop
    inc a
    nop
    inc bc
    ret nz

    ld bc, $0cff
    ldh [$ffe0], a
    db $ec
    db $fd
    ldh a, [$fffa]
    ldh [rIE], a
    ld a, [$00ff]
    ld a, a
    nop
    ccf
    add b
    ccf
    rst RST_38
    add b
    rra
    nop
    rra
    nop
    rrca
    ret nz

    rrca
    rst RST_38
    add b
    ld a, [hl+]
    ld d, b
    ld [hl+], a
    ld d, b
    db $10
    ld h, d
    inc b
    rst RST_38
    ld h, d
    ld [bc], a
    ld h, h
    ld c, b
    ld h, h
    ld b, h
    ld l, b
    ld h, b
    rst RST_30
    ld c, b
    ld d, b
    ld b, $08
    nop
    ld [bc], a
    ld hl, sp-$06
    jr c, @+$01

    ld a, [hl-]
    jr c, jr_03a_5791

    jr c, jr_03a_5811

    nop
    nop
    and $ff
    ld [hl+], a
    and $22
    ld l, [hl]
    and d
    ld l, [hl]
    and d
    ld h, [hl]
    db $fd
    xor d
    jr jr_03a_57fc

    cp a
    ld b, b
    db $db
    inc h
    or [hl]
    ld c, c
    rst RST_38
    db $db
    inc h
    cp l
    ld b, d
    db $eb
    inc d
    ld [hl], a
    adc b
    rst RST_18
    xor [hl]
    ld d, c
    ld [hl], h

jr_03a_57fc:
    adc e
    jp c, $0a33

    ld [$f531], sp
    add $95
    ld [bc], a
    inc sp
    or e
    inc b
    ld h, [hl]
    xor d
    inc sp
    ld h, [hl]
    ld a, b
    ld b, h
    add hl, de

jr_03a_5810:
    ld h, b

jr_03a_5811:
    ld [$0297], sp
    nop
    jr jr_03a_5817

jr_03a_5817:
    ld [$1272], sp
    ld a, a
    add hl, bc
    nop
    sub $08
    dec b
    db $dd
    nop
    ld a, h
    nop
    ld a, a
    dec h
    jr @+$5a

    rlca
    or a
    nop
    rrca
    sbc c
    nop
    jp $e01f


    sbc c
    inc b
    sub b
    rla
    xor h
    nop
    and c
    ld [de], a
    ld a, [de]
    ld b, b
    rst RST_38
    ld e, d
    nop
    ld e, b
    ld bc, $03b8
    nop
    rra
    rst RST_38
    add b
    ccf
    rlca
    ld a, b
    rrca
    ld [hl], b
    ld e, $e0
    ld a, a
    jr c, jr_03a_5810

    ld [hl], b
    add b
    ld h, e
    add b
    ldh a, [$ffb1]
    ld b, $f9
    ld bc, $00b8
    sbc c
    nop
    dec b
    nop
    nop
    sbc c
    add hl, de
    rst RST_38
    or h
    cp l
    inc d
    ld a, h
    dec b
    ld [hl], l
    inc b
    dec [hl]
    rst RST_38
    nop
    sbc b
    rrca
    ld b, b
    adc a
    add b
    rrca
    add b
    db $fd
    rra
    pop hl
    db $10
    rlca
    add b
    inc bc
    ld b, b
    add e
    add b
    rst RST_38
    ld bc, $0180
    ld b, b
    add c
    add b
    inc b
    add h
    rst RST_38
    ld [bc], a
    ld b, d
    add d
    add d
    ld [de], a
    sub d
    ld a, [bc]
    ld a, [de]
    or $99
    ld bc, $01fe
    call RST_00
    inc bc
    nop
    ret nz

    rst RST_38
    nop
    ld hl, sp+$00
    ld bc, $00e5
    push af
    nop
    rst RST_38
    ld hl, sp-$7f
    ld a, c
    ret nz

    dec a
    ldh [rNR32], a
    ldh a, [rTAC]
    ld c, $7a
    inc b
    dec e
    nop
    ld b, e
    db $db
    ret


    ld [de], a
    nop
    dec bc
    rra
    nop
    db $10
    dec bc
    db $fc
    db $f4
    cp $20
    dec bc
    pop af
    rlca
    db $e3
    rrca

jr_03a_58c6:
    or $07
    ld hl, sp-$01
    nop
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    db $fc
    ld bc, $fffe
    nop
    add d
    rst RST_00
    nop
    jp $2000


    nop
    rst RST_38
    ret nc

    add b
    ret nz

    nop
    add b
    nop
    ld b, b
    pop bc
    rst RST_38
    pop af
    jr c, jr_03a_58c6

    ldh a, [c]
    dec c
    nop
    inc bc
    jp nz, Jump_03a_44ff

    jp nz, $0204

    inc b
    ld [bc], a
    ld h, h
    ld b, d
    ld a, e
    and h
    rst RST_38
    ld h, b
    inc c
    xor $d6
    sub [hl]
    and [hl]
    ld [hl], d
    nop
    rst RST_38
    and $94
    db $e4
    sub h
    db $e4
    or h
    call nz, $ffb4
    call nz, Call_000_0447
    ret nz

    jr nz, @-$36

    jr nz, @+$0b

    rst RST_38
    db $e4
    jr @+$07

    ld h, b
    ld l, c
    db $f4
    push af
    cp $df
    cp $ff
    ldh a, [rIE]
    rst RST_30
    jr nz, @+$0b

    rst RST_38
    nop
    cp [hl]
    and b
    ld [$ff01], sp
    rrca
    cp $0d
    or b
    nop
    dec e
    cp $b4
    nop
    dec a
    cp $7d
    cp $fd
    cp $fd
    push bc
    nop
    ld h, b
    nop
    nop
    call nz, $a002
    inc bc
    ret nz

    ld b, $01
    cp $fd
    dec b
    jp c, $ff01

    rrca
    rst RST_38

jr_03a_594f:
    rst RST_28
    ccf
    cpl
    ld c, e
    rst RST_38
    xor a
    and $06
    db $fc
    ldh a, [$ff0b]
    db $10
    ld [$0a01], sp
    ld e, $f7
    inc bc
    rra
    inc bc
    jr nz, jr_03a_596a

    db $fd
    push af
    rst RST_38
    db $f4
    ccf

jr_03a_596a:
    rst RST_38
    rst RST_30
    rst RST_38
    ldh a, [$fffc]
    ld bc, $013c
    and b
    ld bc, $fefd
    add hl, sp
    db $10
    rst RST_38
    inc bc
    add b
    db $e3
    nop
    add a

jr_03a_597e:
    rst RST_38
    nop
    rlca
    nop
    scf
    ld h, b
    ld h, c
    ld b, c
    ret z

    rst RST_38
    nop
    cp b
    ld d, b
    jr c, jr_03a_594f

    and h
    add d
    ld l, h
    rst RST_38
    add b
    ld l, a
    nop
    rst RST_28
    ldh [rSVBK], a
    ld [hl], b
    add b
    rst RST_28
    ld [hl], b
    add b
    jr jr_03a_597e

    ret nz

    ld c, $b4
    add h
    or h
    rst RST_38
    nop
    jr c, jr_03a_59a7

jr_03a_59a7:
    inc e
    nop
    inc e
    ldh [$ff0e], a
    rst RST_28
    ldh [rTAC], a
    ldh a, [$ff03]
    ldh [rSB], a
    ld a, a
    cpl
    ld a, a
    rst RST_38
    cpl
    ccf
    cpl

jr_03a_59ba:
    rra
    rrca
    rrca
    rrca
    add c
    ccf
    ld bc, $0f7f
    ld a, a
    ld a, a
    ld a, a
    rst RST_08
    inc bc
    sub a
    ld [de], a
    and $bc
    ld bc, $01fe
    sub [hl]
    rla
    and $08
    cpl
    rst RST_38
    rst RST_28
    ld [$00e0], sp
    and c
    add hl, bc
    scf
    ld de, $b005
    ld [bc], a
    db $d3
    ld d, $e6
    ld [$02e7], sp
    nop
    call nz, $f003
    rla
    inc c
    rra
    db $10
    dec hl
    sub b
    dec e
    ld h, b
    ld [bc], a
    sub l
    jr jr_03a_59ba

    inc bc
    rst RST_38
    ld hl, sp+$01
    ld sp, hl
    ld a, [$04f2]
    xor $e0
    rst RST_28
    call c, Call_000_0800
    ld [hl], h
    call nz, Call_000_0300
    add e
    ld [bc], a
    rst RST_38
    rlca
    ld [bc], a
    rrca
    ld d, $0f
    jr nc, jr_03a_5a19

    jr jr_03a_5a92

    ret nz

    dec e
    ld hl, sp+$01
    db $fc

jr_03a_5a19:
    inc b
    cp $04
    jp c, $fe03

    ret nc

    ld de, $8060
    add a
    ld a, b
    ld h, b
    rra
    adc [hl]
    ld [hl], a
    add c
    ldh a, [$ffa0]
    ldh [rNR24], a
    cp $af
    db $fc

jr_03a_5a31:
    sub a
    jr nz, jr_03a_5a31

    cp $e7
    nop
    add b
    rst RST_38
    rst RST_38
    ret nz

    rst RST_38
    ret nz

    rst RST_38
    adc $f0
    ld b, h
    ld sp, hl
    ld c, e
    ldh a, [c]
    ld c, e
    ldh a, [c]
    ei
    ld e, e
    pop hl
    sbc [hl]
    stop
    db $fc
    nop
    inc a
    nop
    rst RST_38
    inc e
    ret nz

    db $ec
    jr nz, @-$32

    and b
    db $ec
    ret nz

    rst RST_30
    ld a, d
    pop bc
    ld c, l
    and a
    jr nz, jr_03a_5aa1

    ei
    ld d, e
    jp hl


    rst RST_38
    ld a, e
    pop bc
    ld a, e
    pop bc
    ld a, d
    pop bc
    call z, $ff80
    call z, $cc00
    add b
    db $e4
    add b
    call nz, $ffe0
    add b
    ldh [$ffa0], a
    ret nz

    and b
    ret nz

    ld a, h
    pop bc
    rst RST_38
    ld a, h
    pop bc
    ld [hl], l
    ret z

    ld [hl], l
    ret z

    ld [hl], b

jr_03a_5a86:
    call $73ff
    call $cc72
    ld h, c
    db $dd
    add b
    ret nz

    or a
    ret nz

jr_03a_5a92:
    add b
    ld b, h
    di
    ld [hl+], a
    call z, $d2c0
    ld hl, $ff60
    db $db
    ld l, e
    jp nc, $c27b

jr_03a_5aa1:
    ld a, h
    ret nz

    ld h, d
    rst RST_38
    call c, $df60
    ld b, b
    ldh [rP1], a
    ret nz

    db $ec
    xor a
    add b
    call z, $c480
    call nz, $c003
    call nz, $1001
    db $fd
    ld l, $18
    ld sp, $40c1
    ldh [rLCDC], a
    ldh a, [rBCPS]
    rst RST_28
    ldh a, [$ff0c]
    ldh [rNR23], a
    call nz, $1303
    add b
    sbc c
    ccf
    ld e, c
    ld c, b
    jr nz, jr_03a_5b45

    inc b

jr_03a_5ad2:
    ld a, [hl-]
    ld l, $23
    sub l
    dec d
    rst RST_38
    ld a, a
    nop
    ccf
    ldh [$ff32], a
    ld [bc], a
    dec b
    ld [de], a
    rst RST_38
    dec b
    sub b
    daa
    jr jr_03a_5a86

    rlca
    sub a
    cpl
    rst RST_38
    xor a
    ld a, a
    ld a, a
    ld d, a
    ld c, e

jr_03a_5aef:
    ld l, c
    ld h, l
    ld l, c
    rst RST_18
    ld h, l
    ld a, b
    ld [hl], h
    ld hl, sp-$0c
    ld l, b
    inc sp
    rra
    rra
    sub a
    sbc a
    sbc a
    adc a
    ld [hl], h
    jr nc, jr_03a_5ad2

    ld a, b
    inc [hl]
    sub b
    dec bc
    ld hl, sp-$01
    pop af
    ld [bc], a
    db $fd
    pop af
    db $fd
    nop
    inc c
    nop
    db $fd
    jr @+$76

    db $10
    ld [hl], b
    nop
    ldh a, [rSB]
    ldh [rSVBK], a
    rst RST_10
    adc a
    rst RST_38
    adc a
    call nz, Call_000_3f03
    and c
    ld [bc], a
    ld b, $01
    rst RST_38
    pop hl
    ld e, $0e
    ldh a, [rSVBK]
    add b
    inc c
    inc b
    cp $20
    inc bc
    inc hl
    ret nz

    ld c, a
    add b
    rra
    nop
    ld a, a
    ld hl, sp-$3b
    ld [hl], $c0
    dec e
    adc h
    jr z, jr_03a_5aef

    rst RST_38
    xor h
    cp $a8

jr_03a_5b45:
    cp $f0
    ld [$1f3c], sp
    call c, Call_03a_6c0f
    ccf
    add b
    ld [hl], e
    ccf
    add b
    adc $33
    call z, $c032
    cp $a8
    db $10
    ld b, c
    ld l, a
    rst RST_38
    xor h
    db $fc
    xor h
    db $ec
    inc de
    rlca
    ld h, h
    jr nz, jr_03a_5ba7

    rst RST_38
    rrca
    call z, Call_000_0c0f
    rra
    inc e
    rst RST_38
    db $fc
    inc bc
    ld bc, $ff00
    ld de, $1100
    add b
    ld de, $0500
    rst RST_38
    rst RST_38
    ld de, $0500
    db $fc
    db $fd
    ld de, $0d00
    ld bc, $0011
    ld b, $ff
    ld a, a
    nop
    ld d, l
    sub $96
    ld b, h
    inc d
    nop
    ld d, b
    add c
    ld b, l
    rst RST_28
    ld l, a
    ld b, l
    ld b, l
    ld bc, $01db
    ld [hl+], a
    ld [hl], a
    halt
    ld [hl+], a
    ld [hl+], a
    nop
    ld l, l
    nop
    xor d
    ld l, e
    ld l, c
    ld [hl+], a

jr_03a_5ba7:
    jr z, jr_03a_5ba9

jr_03a_5ba9:
    ld a, [bc]
    ld de, $0500
    rst RST_38
    rst RST_38
    and b
    call nc, $fffa
    ld de, $03c0
    nop
    ld de, $0692
    nop
    ld de, $0648
    add b
    ret nz

    ld h, b
    or b
    sbc b
    adc h
    and [hl]
    and e
    ld de, $1000
    ld de, $0608
    add b
    ld b, h
    inc h
    inc d
    adc b
    add h
    add d
    sub c
    ccf
    rra
    inc c
    nop
    nop
    dec b
    sbc a
    cp [hl]
    rst RST_38
    pop de
    ld c, c
    nop
    nop
    or a
    ld hl, sp-$03
    rst RST_38
    ld [$0020], sp
    nop
    db $ed
    adc b
    cp a
    cp $9c
    add b
    nop
    nop
    xor d
    add hl, sp
    ld a, l
    nop
    ld de, $0692
    nop
    ld de, $0649
    ld de, $07c0
    ld de, $0292
    rst RST_38
    nop
    nop
    rst RST_38
    ret nz

    ld de, $0248
    rst RST_38
    nop
    nop
    cp $02
    and c

jr_03a_5c10:
    ld de, $03a4
    or a
    inc h
    scf
    add b
    ret nz

    ld h, b
    jr nc, jr_03a_5c33

    ld c, e
    ld c, h
    ld b, l
    ld de, $0400
    rst RST_38
    nop
    rst RST_38
    ld de, $0308
    nop
    ldh [rP1], a
    add b
    and b
    nop
    nop
    ld bc, $0000
    jr nz, jr_03a_5c38

jr_03a_5c33:
    push de
    db $10
    ld de, $0400

jr_03a_5c38:
    ld d, h
    or a
    sub [hl]
    dec b
    sub a
    ld bc, $0011
    ld [bc], a
    ld l, l
    ld l, c
    and b
    jp hl


    add b
    jp hl


    rst RST_38
    db $10
    xor e
    ld a, [hl+]
    nop
    dec hl
    nop
    jr z, jr_03a_5c10

    ld e, a
    ld de, $0292
    rst RST_38
    nop
    rlca
    rra
    rst RST_38
    ld de, $0249
    rst RST_38
    nop
    ld de, $02ff
    ret nz

    pop bc
    jp $dfcf


    call c, Call_000_11d8
    ret nz

    inc bc
    pop bc
    rst RST_00
    rst RST_08
    sbc $d8
    ld a, [de]
    ld a, d
    ldh a, [c]
    jp nz, Jump_000_0a82

    ld a, [de]
    ld a, d
    inc h
    rla
    call nz, $b0e7
    sbc e
    adc b
    add h
    ld d, [hl]
    ld d, d
    ld d, c
    ld d, l
    ld de, $0354
    nop
    db $fc
    nop
    ld [hl], b
    add c
    and b
    add b
    add b
    inc e
    dec bc
    ldh [c], a
    call z, Call_000_3d18
    ld b, c
    adc [hl]
    inc sp
    adc b
    rra
    ld a, a
    rst RST_38
    db $e3
    ld bc, $513f
    ld [bc], a
    db $fd
    rst RST_38
    rst RST_38
    pop hl
    ret nz

    rst RST_38
    ldh [$ff3e], a
    rlca
    ld b, e
    and c
    ret nz

    inc bc
    ldh [$ff03], a
    ld bc, $9000
    add b
    ret nz

    ret nz

    ldh [c], a
    ld de, $0250
    ld d, e
    ld d, b
    ld de, $021f
    nop
    ld [hl], e
    rst RST_00
    rra
    nop
    ld de, $02ff
    ld bc, $fd11
    ld [bc], a
    ld bc, $ff11
    ld [bc], a
    ret nz

    pop bc
    rst RST_00
    rst RST_08
    ld de, $03df
    ret nc

    pop bc
    rst RST_00
    rst RST_08
    sbc $dc
    ret nc

    ret nz

    ld a, [$c2e2]
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld h, d
    jp z, $8a8e

    ld de, $058d
    ld d, l
    ld de, $0215
    dec b
    dec b
    ld b, l
    ld h, l
    inc b
    rrca
    ld b, h
    ld [bc], a
    dec hl
    inc bc
    ld [de], a
    ld d, d
    cp b
    add hl, bc
    ld l, l
    jr nc, jr_03a_5d07

    sbc b
    ld h, h
    db $fd
    cp $f0
    rst RST_38
    ld [hl], c

jr_03a_5d07:
    cp c
    ld e, $0d
    ld l, l
    rrca
    nop
    rst RST_38
    rlca
    rst RST_38
    ld a, a
    ld [hl], e
    ld h, a
    ld hl, sp-$20
    inc e
    cp $ef
    di
    cp e
    push hl
    ld h, b
    ld h, c
    ret nz

    ld b, c
    ldh [rNR42], a
    ld b, c
    ld b, e
    rrca
    nop
    rlca
    rlca
    add [hl]
    ld b, [hl]
    ld b, $86
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    ld de, $0200
    ld bc, $01ff
    db $fd
    db $fd
    dec c
    ld l, l
    db $ed
    adc l
    ld de, $07df
    pop bc
    add $cc
    reti


    rst RST_10
    rst RST_08
    sbc $dd
    cp d
    ld [hl], d
    ldh [c], a
    jp z, Jump_000_3a9a

    ld a, [$11fa]
    sbc l
    rlca
    ld h, b
    ld d, b
    ld d, b
    ld c, b
    ld c, b
    ld b, h
    ld b, h
    ld b, b

jr_03a_5d59:
    ld [bc], a
    dec bc
    inc bc
    dec bc
    daa
    ld d, h
    inc d
    inc l
    inc e
    dec c
    rra
    ccf
    ld l, [hl]
    ld e, l
    cp d
    jr nz, jr_03a_5d59

    jp nc, Jump_03a_46a2

    ld h, $12
    nop
    pop bc
    ld d, e
    ld e, b
    ld l, h
    ld [hl], e
    db $fd
    ld a, [$6ce8]
    ret nc

    ldh a, [$ff38]
    inc c
    inc de
    ld b, l
    add d
    ld h, c
    db $e3
    daa
    and e
    ld hl, $9031
    ret z

    ld hl, sp+$06
    add [hl]
    ld b, [hl]
    sub [hl]
    sub $d6
    add [hl]
    ld [de], a
    rlca
    ld c, $3c
    ld a, b
    pop af
    db $e3
    rst RST_08
    sbc h
    dec c
    dec l
    ld l, l
    db $ed
    call $0d8d
    db $ed
    ld de, $04df
    sbc $dc
    ret nc

    db $db
    rst RST_10
    rst RST_08
    rst RST_18
    rst RST_18
    sbc $dc
    ret c

    ldh a, [c]
    ldh [c], a
    jp nz, Jump_000_1182

    ld [bc], a
    inc bc
    ld de, $029d
    ld de, $0499
    pop af
    ldh a, [$fff0]
    ld de, $03f8
    ld sp, hl
    sub c
    ld b, h
    inc bc
    inc b
    ld b, c
    sub $85
    ld h, [hl]
    push de
    ldh [$ff80], a
    ld a, [bc]
    sub l
    ld b, b
    ld l, $87
    pop de
    ld bc, $b3a1
    ld h, d
    ld [bc], a
    ld h, d
    add [hl]
    ld d, c
    or b
    ld bc, $e9e3
    add sp, -$20
    pop af
    halt
    nop
    ld d, b
    ld d, h
    xor c
    ld [bc], a
    ld b, h
    add hl, bc
    sbc h
    ld [hl], h
    inc d
    ld b, h
    db $10
    add sp, $18
    ldh [$ff28], a
    db $10
    inc d
    inc d
    add h
    ld [$8440], sp
    jr c, @+$72

    pop hl
    rst RST_00
    sbc [hl]
    jr c, @-$0d

    db $e3
    ld de, $038d
    ld de, $03ed
    ret nz

    pop bc
    jp $decf


    call c, $c7d3
    ld d, b
    ld de, $0340
    ld a, a
    nop
    rst RST_38
    ld de, $0402
    cp $00
    rst RST_38
    ld de, $0499
    ld h, c
    add hl, de
    rst RST_20
    ld hl, sp-$08
    ldh a, [$fff2]
    ldh a, [c]
    db $f4
    push hl
    push bc
    dec h
    add hl, hl
    xor b
    sub h
    ld b, d
    ld [bc], a
    ld d, b
    ld bc, $0ce3
    ld [hl], e
    add $f2
    db $dd
    ld [hl-], a
    ld l, l
    ld c, h
    inc h
    inc h
    ld c, d
    sub l
    ld l, c
    xor e
    adc c
    ldh a, [rNR11]
    db $f4
    inc bc
    adc $dc
    xor $92
    inc c
    ld l, a
    sub c
    ccf
    halt
    dec de
    inc l
    xor b
    ld c, b
    inc h
    ld l, h
    jr nc, jr_03a_5ebd

    call z, $a0fc
    ret nz

    ld d, b
    ld l, d
    jp nc, $9786

    rlca
    rst RST_08
    sbc a
    ccf
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    ld de, $04ed
    dec c
    db $fd
    db $fd
    ld de, $03df
    ret nz

    ld de, $02ff
    pop hl
    jp $f078


    inc c
    jr jr_03a_5ebe

    ld a, [hl]
    pop hl
    jp Jump_03a_7038


    inc c
    ld e, $01
    nop
    ld sp, hl
    and $1f
    jr c, jr_03a_5e8d

jr_03a_5e8d:
    nop
    ld b, b
    add b
    ld c, l
    ld c, c
    add hl, hl
    reti


    ld sp, $3515
    dec h
    ld bc, $0415
    ld [de], a
    dec bc
    add hl, sp
    dec a
    inc a
    db $e3
    ccf
    sbc [hl]
    ld l, [hl]
    ld l, a
    inc l
    ld a, $ba
    ld b, h
    ld a, [hl+]
    sub c
    ld c, [hl]
    ld bc, $7f3e
    rst RST_08
    db $e4
    ld a, [bc]
    pop af
    ld c, $18
    ccf
    ld e, a
    db $10
    ld d, $46
    db $eb
    ld [hl], l
    add hl, de

jr_03a_5ebd:
    ret z

jr_03a_5ebe:
    xor b
    ld b, b
    ld [$90d0], sp
    jr nz, jr_03a_5f0d

    ld e, b
    cp c
    pop de
    nop
    inc b
    nop
    nop
    inc h
    inc b
    add b
    and b
    ld de, $0700
    inc b
    inc b
    ld de, $0300
    inc b
    inc b
    rlca
    add e
    inc a
    ld a, $81
    add b
    nop
    nop
    add c
    inc bc
    and b
    add b
    add b
    jr c, @-$4e

    and b
    ldh [$ffc0], a
    inc a
    ld a, b
    ldh a, [$ff0d]
    inc e
    inc a
    nop
    ld h, b
    ld [bc], a
    rlca
    rrca
    nop
    ld [$6507], sp
    ld b, l
    push de
    sub l
    sub l
    dec d
    sub l
    sub l
    inc a
    inc a
    dec a
    dec a
    ld a, $11
    ld a, [hl]
    ld [bc], a
    ld de, $05ff

jr_03a_5f0d:
    nop
    nop
    ld de, $03ff
    cp $fc
    nop
    nop
    ld de, $04ff
    ld a, a
    ld a, a
    ccf
    ld de, $03ff
    ei
    pop af
    ldh a, [$fff0]
    ld de, $04ff
    cp $11
    nop
    ld [bc], a
    ld d, l
    ld de, $02d6
    ld d, h
    ld d, h
    xor d
    add b
    ld b, h
    ld de, $02ee
    ld b, h
    ld b, h
    jp c, $a281

    ld de, $02f7
    and d
    and d
    ld l, l
    nop
    xor d
    ld de, $026b
    ld a, [hl+]
    ld a, [hl+]
    or l
    ld de, $0700
    ld de, $02ff
    add b
    add b
    ld de, $029f
    nop
    ld de, $06db
    nop
    ld de, $066e
    ccf
    rra
    rrca
    add a
    add e
    add c
    or b
    or b
    ld de, $06ff
    ld a, a
    ld de, $07ff
    ldh a, [$fffb]
    ei
    ld a, [$e8fa]
    add sp, -$38
    nop
    dec e
    dec c
    dec b
    pop bc
    pop hl
    ldh [$fff0], a
    nop
    ld a, a
    ld hl, $6b3d
    nop
    ld a, a
    push de
    nop
    rst RST_38
    inc d
    ld [hl], l
    xor [hl]
    nop
    rst RST_38
    or a
    nop
    rst RST_38
    ret z

    db $eb
    db $dd
    nop
    rst RST_38
    ld h, l
    nop
    cp $24
    xor h
    halt
    nop
    cp $ab
    nop
    ld de, $0692
    nop
    ld de, $0649
    ld de, $079f
    ld de, $0292
    nop
    nop
    rst RST_38
    add b
    add b
    ld de, $0248
    nop
    nop
    rst RST_38
    ld bc, $b001
    or [hl]
    or a
    and h
    and h
    rst RST_38
    db $f4
    rst RST_38
    ccf
    rra
    rrca
    nop
    nop
    ld b, e
    ld b, b
    ld b, c
    rst RST_38
    rst RST_38
    cp $00
    nop
    rst RST_38
    nop
    rst RST_38
    ld de, $0308
    nop
    pop hl
    nop
    adc a
    ld de, $0200
    ld bc, $9b06
    call $9460
    jr c, jr_03a_5fe0

jr_03a_5fe0:
    add b
    ld l, h
    ld e, d
    ld d, l
    ld bc, $92b5
    nop
    sub d
    nop
    nop
    jr nc, jr_03a_606b

    ld h, l
    ld c, c
    nop
    ld c, c
    nop
    ld c, c
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    dec hl
    ccf
    jr nz, @+$13

    sub d
    ld [bc], a
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    ld de, $0249
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    ld de, $0f9f
    ld de, $07f9
    ld a, a
    ld a, a
    ccf
    rra
    ld c, a
    ld h, a
    ld d, a
    ld b, e
    pop af
    ldh a, [$fff8]
    ld de, $02fc
    ld de, $02fe
    db $fc
    ld sp, hl
    ld [hl], e
    halt
    inc h
    ld [$1804], sp
    nop
    pop bc
    inc bc
    rlca
    inc bc
    ccf
    ld [hl], c
    inc b
    ld [hl], a
    ld de, $05ff
    ld l, $11
    rst RST_38
    ld b, $00
    ret nz

    ld hl, sp-$04
    cp $ff
    db $fc
    rst RST_38
    inc bc
    ld [hl], c
    nop
    inc b
    nop
    ld b, $01
    nop
    jr nz, @+$13

    daa
    ld [bc], a
    jr nz, jr_03a_6072

    rra
    rra
    nop
    ld de, $02ff
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    ld de, $02fc
    nop
    nop
    rst RST_38
    rst RST_38
    ld de, $0f9f
    ld de, $07f9
    ld c, c

jr_03a_606b:
    ld c, c
    ld c, [hl]
    ld de, $044c
    ld a, a
    cp a

jr_03a_6072:
    sbc a
    sbc a
    rst RST_08
    adc a
    adc a
    add a
    ld [$2910], sp
    add hl, de
    db $10
    jr nz, @+$03

    ld bc, $f747
    di
    rst RST_08
    ld hl, sp+$77
    ei
    or $11
    rst RST_38
    inc bc
    ld a, a
    db $fd
    ld e, $e6
    ld de, $05ff
    ld hl, sp-$09
    ld de, $03ff
    ldh a, [$fffd]
    ld a, l
    sbc [hl]
    add b
    add b
    nop
    add b
    nop
    ret nz

    ld de, $0280
    nop
    rst RST_00
    inc b
    ld h, h
    inc b
    add h
    ld h, h
    nop
    nop
    rst RST_38
    nop
    nop
    ld de, $02ff
    nop
    nop
    db $fc
    inc b
    inc b
    ld de, $02e4
    ld de, $0f9f
    ld de, $07f9
    ld de, $075c
    ld de, $0282
    and b
    add b
    ld de, $02a0
    ld b, c
    or b
    ld h, b
    ret nz

    add b
    dec bc
    dec bc
    jp $fbed


    ei
    or $e4
    ret nc

    ld sp, $c080
    add c
    ld de, $0201
    pop hl
    pop af
    nop
    rst RST_20
    ldh [$fff0], a
    db $fc
    cp $ec
    db $f4
    ldh a, [$ffef]
    ld [hl], a
    dec de
    dec b
    ld [bc], a
    jr nz, @+$7a

    nop
    add b
    ld de, $03c0
    ld h, b
    jr nc, jr_03a_60fb

jr_03a_60fb:
    inc h
    ld de, $0504
    jr nz, @+$13

    rst RST_38
    rlca
    ld de, $06e4
    inc b
    ld de, $0f9f
    ld de, $07f9
    ld de, $025c
    ld de, $0458
    nop
    ld bc, $0211
    dec b
    ld h, [hl]
    inc sp
    jr nc, jr_03a_614f

    ld [hl], $20
    ld h, d
    nop
    inc bc
    nop
    nop
    ld c, b
    inc b
    ld [$1007], sp
    ldh [rP1], a
    and b
    jr nz, @+$43

    ld bc, $0181
    ldh [rLCDC], a
    pop af
    pop af
    ldh a, [$fff0]
    ld de, $02f8
    nop
    db $10
    inc b
    adc c
    dec b
    jr c, jr_03a_6140

jr_03a_6140:
    ld h, b
    jr c, jr_03a_614b

    add b
    ld h, b
    sub b
    add b
    ld b, b
    ld b, b
    adc b
    adc b

jr_03a_614b:
    add b
    nop
    inc b
    inc b

jr_03a_614f:
    ld b, b
    ld de, $07ff
    inc b
    inc h
    inc h
    inc b
    inc b
    ld de, $02e4
    ld de, $0b9f
    add b
    add b
    rst RST_38
    nop
    ld de, $03f9
    ld bc, $ff01
    nop
    ld de, $0358
    ld a, b
    jr @+$08

    nop
    ld de, $0201
    ld de, $0200
    ld bc, $0801
    nop
    ld bc, $8509
    ld h, l
    daa
    ld h, [hl]
    rrca
    ldh a, [$ff8c]
    ld a, c
    rst RST_28
    cp $fd
    di
    add e
    dec de
    db $db
    or c
    ld h, e
    rst RST_00
    rst RST_08
    rst RST_18
    ld de, $04f8
    ldh a, [$ffe2]
    di
    ld h, c
    nop
    db $10
    ld l, [hl]
    ld a, a
    ccf
    inc a
    rra
    ld [hl], b
    ldh a, [$ff78]
    sub b
    ret nz

    add b
    nop
    nop
    ld c, b
    db $10
    and b
    add b
    nop
    inc d
    inc b
    rlca
    ld de, $04ff
    nop
    nop
    rst RST_38
    ld de, $04e4
    inc b
    inc b
    db $fc
    ld de, $039f
    add b
    add b
    rst RST_38
    nop
    pop hl
    jp $f078


    inc c
    jr jr_03a_6207

    ld a, [hl]
    pop hl
    jp Jump_03a_7038


    rrca
    ld e, $01
    inc bc
    and $e0
    inc e
    jr c, jr_03a_61dd

    rrca
    ret nz

    add b
    and c
    ld de, $0201

jr_03a_61dd:
    pop bc
    add l
    push bc
    push bc
    ld h, [hl]
    ld h, d
    ld [hl], e
    ld hl, $0011
    ld [bc], a
    dec a
    ld a, a
    ld a, a
    ccf
    sbc a
    sbc [hl]
    sbc $cd
    call $819b
    jr nz, jr_03a_6225

    ld a, [hl]
    ret nz

    cp a
    ld b, b
    ei
    ldh a, [rP1]
    ld bc, $4007
    rra
    ldh [rIF], a
    rrca
    ld b, $82
    ldh [c], a
    inc sp

jr_03a_6207:
    sub e
    ld e, e
    ldh a, [rNR41]
    ld h, b
    ret nz

    add b
    add b
    ld bc, $0021
    inc c
    inc bc
    ld bc, $1e3c
    ret nz

    ldh [$fffe], a
    ccf
    ret nz

    ldh [rTAC], a
    inc bc
    ld a, b
    inc a
    rra
    rrca
    ldh a, [$ff78]

jr_03a_6225:
    ld bc, $1e80
    rrca
    rlca
    add e
    ld a, h
    ld a, $c1
    ldh [$ff03], a
    ld bc, $0381
    ldh [$ffc0], a
    add b
    ld a, b
    ldh a, [$ffe0]
    ldh [$ffc0], a
    inc a
    ld a, b
    ldh a, [rIF]
    rra
    ld a, $78
    ldh a, [rTIMA]
    ld [$8010], sp
    nop
    nop
    dec b
    dec b
    ld de, $0415
    sub l
    ld bc, $0001
    inc a
    ld de, $0200
    ld a, [hl]
    ld de, $0a80
    ld sp, $b1b6
    or c
    db $d3
    db $db
    ld e, c
    ld a, b
    db $ec
    add b
    and b
    add b
    dec sp
    rst RST_20
    ld c, b
    db $10
    inc hl
    db $e3
    nop
    ld a, [hl]
    nop
    ld a, d
    nop
    ld bc, $e2c0
    ld [$0e1a], sp
    ld e, [hl]
    rst RST_38
    ei
    inc sp
    ret nc

    ret nc

    sub c
    ld a, [bc]
    and b
    ld [bc], a
    and e
    and e
    inc b
    inc b
    ld a, [bc]
    and b
    ld [bc], a
    ld a, [bc]
    nop
    rrca
    ld a, [bc]
    inc b
    ld [bc], a
    inc a
    rra
    and b
    or b
    jr c, jr_03a_6294

jr_03a_6294:
    add b
    add b
    rra
    ld a, $7c
    inc bc
    rlca
    rrca
    add b
    add b
    ld bc, $0301
    ldh [$ffc0], a
    add b
    inc a
    ld a, h
    add d
    ld b, d
    ldh [c], a
    ld [de], a
    ld [hl-], a
    ld [hl], d
    ld [bc], a
    ld [bc], a

jr_03a_62ae:
    sub l
    sub h
    sub h
    sub l
    sub h
    sub b
    sub b
    sub a
    ld a, [bc]
    nop
    ld [bc], a
    rst RST_38
    ld a, [bc]
    nop
    ld [bc], a
    rst RST_38
    ld a, $51
    inc e
    ld a, [hl+]
    sbc a
    dec h
    ld [bc], a
    ld b, l
    db $10
    add h
    db $10
    ld h, [hl]
    rrca
    adc a
    ld h, e
    sbc h
    inc hl
    adc [hl]
    ld hl, sp+$07
    rst RST_38
    rst RST_38
    db $fc
    inc bc
    add d
    inc d
    ld b, [hl]
    or h
    ld c, h
    sub c
    ld hl, $a082
    ld h, b
    ld l, b
    push de
    sbc c
    and e
    db $10
    ld [$240a], sp
    ld [bc], a
    add b
    add b
    and b
    inc b
    inc b
    ld a, [bc]
    nop
    add hl, bc
    inc b
    ld a, [bc]
    nop
    ld [bc], a
    inc b
    inc b
    rrca
    rlca
    cp e
    cp b
    cp h
    ld a, $00
    add b
    nop
    cp h
    cp b
    or b
    rrca
    rra
    ccf
    ld a, a
    ld hl, sp+$00
    inc b
    inc c
    ret nz

    add b
    add b
    nop
    ld [bc], a
    ld [hl-], a
    jp nc, $0202

    ld [de], a
    ld [de], a
    nop
    sub b
    add b
    add b
    cp a
    add b
    ld a, [bc]
    nop
    dec b
    ret nz

    ld a, [bc]
    nop

jr_03a_6322:
    inc bc
    jr nc, jr_03a_633f

    ld l, h
    ld a, [hl-]
    rra
    cp a
    rst RST_08
    rst RST_18
    ld b, e
    jr c, jr_03a_62ae

    ld b, $13
    xor b
    xor [hl]
    ret nz

    cp $00
    adc h
    dec hl
    ld d, l
    ld d, e
    xor a
    ld d, b
    jr z, jr_03a_6322

    inc de
    add [hl]

jr_03a_633f:
    ld b, a
    xor a
    ccf
    rra
    ld [hl], b
    ret nz

    ld l, b
    ld hl, sp-$18
    ldh [$ffd0], a
    add sp, $04
    jr nz, jr_03a_6358

    nop
    dec c
    inc b
    ld a, [bc]
    nop
    ld b, $c0
    rra
    rrca
    rlca

jr_03a_6358:
    or b
    cp b
    cp h
    cp [hl]
    ld hl, sp+$0a
    nop
    ld b, $a6
    ld [bc], a
    jr nz, jr_03a_63bc

    jr jr_03a_638e

    inc c
    inc c
    cpl
    ld de, $041e
    ld [bc], a
    ld a, [bc]
    ld bc, $5702
    adc h
    adc e
    ld d, b
    ld a, [$040a]
    ld [bc], a
    cp c
    ld l, c
    and b
    add c
    nop
    nop
    ld bc, $8801
    ld [$5010], sp
    ret nc

    ret nc

    ldh [$ffe0], a
    inc b
    ld a, [bc]
    nop
    ld b, $14
    inc b

jr_03a_638e:
    ld [bc], a
    ld c, $03
    dec b
    ld bc, $0102
    inc bc
    ld de, $0a1f
    rst RST_38
    inc bc
    inc b
    adc [hl]
    ld [hl], h
    ld a, [bc]
    rst RST_18
    inc b
    ld bc, $4201
    jp $feff


    cp $fd
    ld a, [bc]
    add b
    ld [bc], a
    ret nz

    nop
    add b

jr_03a_63af:
    nop
    nop
    ret


    adc $ce
    db $ec
    db $ec
    xor $ef
    ld a, a
    ccf
    ld b, b
    rra

jr_03a_63bc:
    ld b, a
    jr nz, jr_03a_63af

    ldh [$ffc0], a
    db $fc
    nop
    add c
    rst RST_38
    db $fc
    ld a, [bc]
    nop
    ld [bc], a
    add hl, de
    inc sp
    pop bc
    ld hl, $0001
    inc b
    inc c
    jr nz, jr_03a_63f3

    ld h, c
    ld b, b
    ld b, b
    ld b, d
    ld b, c
    ld b, e
    rrca
    rlca
    ldh a, [$fff0]
    ld hl, sp+$03
    ld bc, $8001
    ret nz

    rrca
    rrca
    rlca
    ldh a, [$fff0]
    ld hl, sp-$10
    ld a, b
    ld bc, $8000
    rrca
    rlca
    rlca
    inc a
    rra

jr_03a_63f3:
    ldh [$fff0], a
    ld a, b
    ld bc, $c080
    rra
    ld a, $7c
    inc bc
    rlca
    rrca
    ret nz

    add b
    ld bc, $0301
    ldh [$ffc0], a
    add b
    ld a, $7c
    ldh a, [c]
    ldh [c], a
    ldh [c], a
    ld [de], a
    ld [hl-], a
    ld [hl], d
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    sub l
    inc b
    ld a, [bc]
    sub a
    ld [bc], a
    cp $fc
    cp $ff
    rst RST_38
    ldh a, [$fff8]
    rst RST_38
    ld [hl], a
    ld a, $3b
    sbc l
    ld l, h
    ld e, $5e
    inc hl
    adc a
    ld a, e
    rst RST_28
    sbc a
    rst RST_38
    ld a, a
    rra
    inc bc
    ret nz

    ld bc, $0a07
    rst RST_38
    inc bc
    db $fc

jr_03a_6436:
    dec c
    db $e3
    ld sp, hl
    ei
    di
    and $c6
    inc c
    ld b, b
    add b
    add h
    add hl, bc
    ld bc, $0803
    ld [hl], b
    ld a, [hl]
    ld a, $3f
    ret nz

    ret nz

    ldh [rIF], a
    rrca
    ld bc, $0000
    ld a, a
    ccf
    ccf
    ret nz

    ret nz

    ldh a, [$fff8]
    db $fd
    ld bc, $8000
    ccf
    rra
    rrca
    rlca
    ei
    ld hl, sp-$04
    ld a, [hl]
    nop
    add b
    nop
    db $fc
    ld hl, sp-$10
    rrca
    rra
    ccf
    ld a, a
    ld hl, sp+$03
    rlca
    rrca
    ret nz

    add b
    add b
    nop
    ld [bc], a
    ldh a, [c]
    ldh a, [c]
    ldh [c], a
    ld [bc], a
    ld [de], a
    ld [de], a
    jr nc, jr_03a_6436

    ld a, [bc]
    cp a
    ld [bc], a
    cp [hl]
    ldh a, [rP1]
    nop
    rst RST_38
    add b
    ret nz

    ret nz

    ld a, [bc]
    nop
    inc bc
    ld e, c
    ld l, h
    scf
    ccf
    ccf
    rra
    rra
    rrca
    add b
    ld b, b
    nop
    ld hl, sp-$14
    rst RST_08
    rst RST_08
    ldh [rP1], a
    nop
    ld [hl], b
    ld [hl], b
    inc hl
    daa
    rlca
    adc b
    ld de, $0f03
    ld a, a
    cp a
    sbc a
    sbc a
    ccf
    ret z

    cp b
    ld a, [bc]
    ldh a, [$ff03]
    ldh [$ffc0], a
    rrca
    ld [hl], b
    stop
    ld bc, $000a
    ld [bc], a
    ldh [rIF], a
    rrca
    rlca
    ldh a, [rNR23]
    nop
    nop
    rra
    ldh [$fff0], a
    ld hl, sp+$03
    ld bc, $0000
    ret nz

    rra
    rrca
    rlca
    ldh a, [$fff8]
    db $fc
    cp $ff
    ld a, [bc]
    nop
    ld b, $4f
    ld h, h
    ld a, b
    inc a
    inc a
    inc e
    jr jr_03a_64f8

    ldh a, [$ff3e]
    rrca
    inc bc
    ld bc, $000a
    inc bc
    inc bc
    rlca
    adc a
    inc b
    ld a, [bc]
    nop
    ld [bc], a
    ld a, a
    ldh a, [$ffc0]
    nop
    ld bc, $0001
    nop
    ret nc

jr_03a_64f8:
    or b
    ld h, b
    ld a, [bc]
    ldh [rSC], a
    ret nz

    ret nz

    ld b, $0a
    nop
    ld b, $08
    ld [$070c], sp
    rlca
    inc bc
    inc bc
    ld bc, $0000
    rrca
    ld a, [bc]
    rst RST_38
    inc b
    nop
    nop
    adc a
    ld a, [bc]
    rst RST_38
    inc b
    nop
    nop
    add c
    ld a, [bc]
    rst RST_38
    inc bc
    cp $0a
    ret nz

    ld [bc], a
    add b
    add b
    ld a, [bc]
    nop
    ld [bc], a
    dec e
    nop
    add b
    db $e3
    nop
    rst RST_38
    nop
    rlca
    ld bc, $0001
    ld b, $fe
    nop
    db $fc
    ld [hl], a
    db $fc
    nop
    db $fd
    rrca
    rlca
    rst RST_38
    nop
    ld a, a
    ld a, [hl+]
    nop
    ld sp, hl
    ccf
    nop
    add hl, bc
    nop
    ld bc, $f8a0
    and b
    db $fc
    nop
    rst RST_38
    inc bc
    add b
    add c
    jr nz, jr_03a_658d

    nop
    ld e, $80
    rst RST_30
    ret nz

    and b
    ldh [rP1], a
    ld b, $fb
    nop
    pop af
    ld bc, $f0d7
    nop
    ldh a, [rP1]
    ld [$29fe], sp
    ld bc, $0000
    rst RST_38
    ld d, l
    ld d, l
    sub $d6
    sub [hl]
    sub $44
    sub $ff
    inc d
    ld d, h
    nop
    ld d, h
    ld d, b
    xor d
    add c
    add b
    rst RST_38
    ld b, l
    ld b, h
    rst RST_28
    xor $6f
    xor $45
    xor $ff
    ld b, l
    ld b, h
    ld bc, $db44
    jp c, $8101

jr_03a_658d:
    rst RST_38
    ld [hl+], a
    and d
    ld [hl], a
    rst RST_30
    halt
    rst RST_30
    ld [hl+], a
    rst RST_30
    rst RST_38
    ld [hl+], a
    and d
    nop
    and d
    ld l, l
    ld l, l
    nop
    nop
    rst RST_38
    xor d
    xor d
    ld l, e
    ld l, e
    ld l, c
    ld l, e
    ld [hl+], a
    ld l, e
    ccf
    jr z, jr_03a_65d5

    nop
    ld a, [hl+]
    ld a, [bc]
    or l
    ld l, a
    nop
    or b
    ld b, $fc
    inc c
    ld [bc], a
    or c
    inc c
    and b
    rst RST_38
    call nc, $faff
    rst RST_38
    ccf
    rst RST_38
    add b
    ret nz

    add b
    ret nz

    sbc a
    jp c, $b001

    ld bc, $01ff
    ld bc, $0303
    or b
    ldh a, [$ffa0]
    ldh [$fffe], a
    rst RST_10
    nop

jr_03a_65d5:
    add b
    ld hl, sp-$01
    ld hl, sp-$02
    ldh a, [$fffe]
    rst RST_38
    ldh a, [$fffc]
    nop
    ld bc, $0300
    nop
    rlca
    xor $fc
    nop
    nop
    sub d
    db $db
    ld [bc], a
    add hl, de
    nop
    nop
    ld c, b
    db $fd
    ld l, [hl]
    ld [de], a
    add hl, de
    add b
    ccf
    ret nz

    rra
    ld h, b
    rrca
    rst RST_38
    or b
    add a
    sbc b
    add e
    adc h
    add c
    and [hl]
    or b
    ei
    and e
    or b
    jr nc, jr_03a_6614

    ld a, a
    nop
    rra
    rlca
    rrca
    ld a, a
    nop
    rlca
    ld b, $07
    ld [bc], a
    inc bc

jr_03a_6614:
    ld hl, sp+$4a
    db $10
    xor [hl]
    dec de
    nop
    ldh a, [$ff08]
    ei
    ld d, d
    db $10
    ld a, [$1056]
    ld hl, sp-$02
    ld e, d
    db $10
    add sp, -$80
    nop
    ld b, h
    dec e
    inc h
    dec c
    rst RST_38
    inc d
    dec b
    adc b
    pop bc
    add h
    pop hl
    add d
    ldh [rIE], a
    sub c
    ldh a, [$ff3f]
    nop
    rra
    ld a, a
    inc c
    ld hl, $00ff
    dec a
    nop
    ld l, e
    dec b
    nop
    sbc a
    ld a, a
    rst RST_38
    cp [hl]
    push de
    rst RST_38
    nop
    pop de
    rst RST_38
    ld c, c
    inc d
    rst RST_38
    nop
    ld [hl], l
    nop
    xor [hl]
    or a
    nop
    ld hl, sp-$01
    rst RST_38
    db $fd
    or a
    rst RST_38
    nop
    ld [$20ff], sp
    ret z

    rst RST_38
    nop
    db $eb
    nop
    db $dd
    db $ed
    nop
    adc b
    rst RST_38
    rst RST_38
    cp a
    ld h, l
    cp $00
    sbc h
    cp $80
    inc h
    rst RST_38
    nop
    xor h
    nop
    halt
    xor d
    nop
    add hl, sp
    cp $73
    ld a, l
    xor e
    nop
    db $10
    or d
    ld a, [de]
    nop
    nop
    ld c, c
    jp nz, $fc1a

    jp c, $d003

    rla
    ccf
    ccf
    ccf
    ld a, a
    cp a
    rst RST_38
    or h
    db $e4
    ld de, $03e0
    ret nz

    ldh a, [rNR10]
    add b
    add b
    or b
    ld bc, $43c0
    rst RST_38
    add b
    ei
    db $10
    or d
    inc de
    cp [hl]
    ld [bc], a
    push de
    ld [bc], a

jr_03a_66ad:
    ld c, b
    db $10
    ld [hl+], a
    cp $06
    inc hl
    cp $01
    ld [bc], a
    ld bc, $b0a1
    and h
    rst RST_28
    or [hl]
    and h
    or a
    and h
    ld h, $20
    or a
    rst RST_38
    inc h
    rst RST_30
    db $f4
    scf
    rst RST_38
    jr nz, @+$15

    jr nc, jr_03a_66cc

jr_03a_66cc:
    jr jr_03a_66ce

jr_03a_66ce:
    ccf
    ld c, e
    ld b, e
    ld c, h
    ld b, b
    ld b, l
    ld b, c
    inc d
    inc b
    ld [$fe22], sp
    add hl, bc
    ld hl, $e808
    ld [$08c8], sp
    ld [$ef0b], sp
    ld [$0808], sp
    db $fc
    ld e, $01
    rst RST_38
    sub b
    ldh a, [$ffee]
    ld h, b
    jr nz, @-$4e

    or a
    sub c
    ld h, a
    jr nz, jr_03a_66ad

    sub c
    or a
    rst RST_38

jr_03a_66f9:
    pop af
    rst RST_30
    push de
    sub h
    ld d, h
    ld a, h
    nop
    nop
    rst RST_38
    ld d, h
    call c, $8000
    ld d, h
    sub $08
    jp nz, Jump_000_24ff

    ldh a, [$ffb7]
    or l
    sub [hl]
    sub d
    dec b
    nop
    rst RST_38
    sub a
    sub d
    ld bc, $9300
    sub d
    ei
    nop
    rst RST_38
    add b
    nop
    ld l, l
    ld h, l
    ld l, c
    ld c, c
    and b
    nop
    rst RST_30
    jp hl


    ld c, c
    add b
    sub l
    jr nz, @+$01

    nop
    stop
    ld a, a
    xor e
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    nop
    nop
    dec hl
    and e
    jr nz, jr_03a_66f9

    jr z, jr_03a_6767

    ret nz

    ccf
    ld e, a
    jr nz, jr_03a_6741

jr_03a_6741:
    daa
    rlca
    and e
    rst RST_38
    rra
    dec bc
    nop
    jp nz, $be13

    ld bc, $caff
    ld hl, $ff00
    ret nz

    sbc a
    pop bc
    sbc a
    jp $cf9f


    sbc a
    ld e, a
    rst RST_18
    sbc a
    call c, $d89f
    db $dd
    ld bc, $b003
    inc b
    add [hl]
    add hl, de
    nop

jr_03a_6767:
    nop
    ld hl, sp-$14
    jr nz, jr_03a_6795

    inc bc
    cp [hl]
    ld b, $da
    inc bc
    pop bc
    db $eb
    sbc a
    rst RST_00
    push de
    jr nz, @-$20

    db $db
    jr nz, jr_03a_6795

    ld sp, hl
    ld a, d
    rst RST_38
    ld sp, hl
    ldh a, [c]
    ld sp, hl
    jp nz, $82f9

    ld sp, hl
    ld a, [bc]
    db $fd
    ld sp, hl
    db $10
    ld sp, $7f24
    rla
    ld a, a
    call nz, $ff3f
    rst RST_20
    rra
    or b
    ld c, a

jr_03a_6795:
    sbc e
    ld h, a
    adc b
    ld d, a
    rst RST_38
    add h
    ld b, e
    ld d, [hl]
    pop af
    ld d, d
    ldh a, [rHDMA1]
    ld hl, sp+$77
    ld d, l
    db $fc
    ld d, h
    scf
    ld sp, $54fe
    cp $c9
    ld hl, $00ff
    rst RST_38
    ld a, a
    ld a, a
    add b
    ld a, a
    cp a
    ccf
    ldh a, [rNR41]
    db $10
    cpl
    nop
    dec bc
    ld bc, $3552
    ccf
    ccf
    ld de, $7ff7
    pop af
    di
    ld de, $fff1
    rst RST_38
    ld bc, $20ca
    db $fd
    ld bc, $3067
    ld [hl+], a
    ldh a, [rNR43]
    ldh a, [$ff29]
    ld hl, sp-$01
    add hl, hl
    db $fc
    jr z, jr_03a_6858

    jr z, @+$7e

    ld a, [hl+]
    ld a, [hl]
    rst RST_38
    ld a, [hl+]
    cp a
    or a
    jr nc, jr_03a_6816

    or b
    dec sp
    cp b
    rst RST_38
    cp h
    ld a, h
    cp l
    ld a, h
    sbc e
    add hl, sp
    ld e, b
    jr c, @+$01

    ld c, a
    ccf
    ldh a, [rIF]
    jr jr_03a_6808

    db $fc
    rst RST_18
    rst RST_38
    ld a, h
    ccf
    db $fc
    ccf
    db $fc
    sbc a
    ld a, h
    rra
    rst RST_38
    db $fc
    rst RST_38
    ld d, b

jr_03a_6808:
    jr nz, @+$52

    daa
    ld d, b
    daa
    rst RST_38
    ld d, e
    daa
    ld d, b
    jr nz, jr_03a_6872

    jr nz, jr_03a_6874

    ccf

jr_03a_6816:
    ld a, a
    ld e, a
    ccf
    nop
    nop
    ld [hl], e
    rst RST_38
    rst RST_00
    cp e
    jr nz, jr_03a_687d

    rrca
    ld [bc], a
    ld l, c
    ld sp, $fd00
    db $fc
    jp nz, $0131

    cp c
    inc [hl]
    ld a, [$3504]
    rst RST_18
    rst RST_10
    inc [hl]
    inc bc
    inc bc
    rlca
    rlca
    rrca
    sbc $e4
    jr nc, jr_03a_685b

    rra
    nop
    ret nz

    adc l
    jr nz, jr_03a_6842

jr_03a_6842:
    cp $bb
    cp $fc
    ldh a, [c]
    ld [hl-], a
    ld hl, sp-$08
    inc bc
    ld a, [$0730]
    cp e
    rlca
    ret nc

    dec b
    ld [hl], $dc
    sbc a
    ret nc

    db $db
    nop

jr_03a_6858:
    ld a, [$f9eb]

jr_03a_685b:
    ldh [c], a
    dec d
    jr nc, jr_03a_6861

    add hl, de
    ld [hl-], a

jr_03a_6861:
    ld h, d
    ld sp, hl
    jp z, $f9ff

    adc [hl]
    ld c, c
    adc d
    ld c, c
    adc l
    ld c, [hl]
    adc l
    db $fd
    ld c, h
    ld h, $45
    ld d, l

jr_03a_6872:
    ld a, a
    dec d

jr_03a_6874:
    cp a
    dec d
    sbc a
    rst RST_38
    dec d
    sbc a
    dec b
    rst RST_08
    dec b

jr_03a_687d:
    adc a
    ld b, l
    adc a
    rst RST_38
    ld h, l
    add a
    ld a, a
    ccf
    ld b, b
    rra
    ld b, b
    rra
    ld de, $435f
    ld b, b
    ld b, h
    ld b, e
    dec bc
    ld bc, $4f1f
    ld c, b
    dec bc
    inc b
    ld bc, $fb00
    ldh [$ffe0], a
    dec bc
    ld bc, $ffea
    ld a, [hl+]
    rst RST_28
    ld a, [hl+]
    rst RST_38
    rst RST_28
    ld a, [$0aff]
    ei
    ld a, [bc]
    ei
    ld a, [$fbff]
    ld [bc], a
    rst RST_38
    ld c, a
    ccf
    ld c, a
    rra
    daa
    rst RST_38
    rra
    daa
    rrca
    sub a
    adc a
    sub a
    rst RST_08
    sub e
    rst RST_18
    rst RST_00
    adc e
    rst RST_00
    cp $ff
    sub b
    ld c, e
    ld a, a
    jr nz, @+$81

    ld [hl], b
    jr nz, jr_03a_6942

    daa
    ld [hl], a
    inc h
    halt
    and a
    ld b, h

jr_03a_68d1:
    ldh [$ffc6], a
    inc h
    cp b
    inc b
    ld l, b
    jr nc, jr_03a_68d1

    nop
    jp nz, $0430

    dec c
    inc b
    ccf
    ld l, l
    db $e4
    db $ed
    db $e4
    adc l
    db $e4
    ret c

    dec [hl]
    ret c

    dec [hl]
    call nz, RST_00
    db $eb
    ld sp, $e180
    db $10
    ld [$0b40], a
    ld [bc], a
    rrca
    nop
    rst RST_20
    rra
    nop
    rra
    ldh a, [c]
    ld de, $41fa
    pop bc
    sbc a
    add $bf
    sbc a
    call z, $d99f
    sbc a
    rst RST_10
    add hl, bc
    ld [hl-], a
    db $dd
    rst RST_28
    sbc a
    cp d
    ld sp, hl
    ld [hl], d
    ld de, $ca40
    ld sp, hl
    sbc d
    ld l, a
    ld sp, hl
    ld a, [hl-]
    ld sp, hl
    ld a, [$501b]
    sbc l
    ld e, h
    jr nz, jr_03a_697d

    rst RST_30
    ld h, c
    add e
    ld d, c
    ld sp, $4950
    and c
    ld c, c
    add c
    ccf
    ld b, h
    and b
    ld b, h
    and b
    ld b, b
    and b
    ld b, h
    ld c, c
    ld b, h
    ld b, c
    sbc e
    rrca
    rrca
    dec bc
    ld bc, $0707
    dec bc
    ld bc, $5150

jr_03a_6942:
    ld hl, sp-$13
    ld sp, hl
    dec bc
    ld bc, $fcfc
    ld d, d
    inc sp
    rst RST_38
    rst RST_38
    ld [bc], a
    cp [hl]
    sub c
    ld b, b
    ld [bc], a

Jump_03a_6952:
    cp $02
    cp $fe
    ld [hl], l
    ld d, b
    jp nz, $feff

    rst RST_38
    rst RST_38
    adc e
    rst RST_20
    xor c
    rst RST_20
    xor c
    ei
    db $e3
    and l
    add l
    ld d, b
    or l
    di
    or h
    di
    or h
    call $90f1
    ld c, e
    rst RST_38
    rst RST_38
    xor b
    ld b, l
    xor b
    ld b, l
    rlca
    rst RST_38
    rst RST_38
    ld c, $ff
    inc a
    rst RST_38

jr_03a_697d:
    ld a, b
    rst RST_38
    pop af
    rst RST_38
    rst RST_38
    db $e3
    rst RST_38
    rst RST_08
    rst RST_38
    sbc h
    rst RST_38
    dec c
    db $e4

jr_03a_698a:
    db $eb
    dec l
    db $e4
    jp z, $cd41

    call $0d40
    db $e4
    db $ed
    ld bc, $d004
    ld b, a
    ld [$b043], sp
    rlca
    ld [hl], a
    ld d, b
    pop af
    jr nc, jr_03a_698a

    ld b, e
    db $ec
    ld b, d
    ld [hl], d
    or b
    ld [bc], a
    db $db
    rlca
    ld d, d
    sub $55
    ret c

    sbc a
    ldh a, [c]
    ld de, $b142
    add d
    dec d
    ld b, b
    jr jr_03a_6a1b

    jr nz, jr_03a_6a0d

    sbc c
    ld e, b
    ld h, $65
    ld b, b
    push de
    or b
    jr nc, jr_03a_6a25

    cp b
    ld [hl], $61
    ld b, c
    dec sp
    ld h, b
    ld b, b

jr_03a_69ca:
    rra
    rst RST_08
    add b
    rra
    add b
    ccf
    ld c, d
    jr nc, jr_03a_6a16

    ld h, b
    nop
    ccf
    ld l, l
    ld e, a
    push af
    ld [hl+], a
    rlca
    add a
    dec bc
    inc bc
    rra
    sbc a
    ld h, b
    ld b, l
    xor $5e
    ld l, d
    ld bc, $c7c0
    dec bc
    inc bc
    ld hl, sp-$08
    rst RST_38
    rst RST_38
    rst RST_38
    or h
    pop af
    or d
    pop af
    or d
    or c
    cp d
    sbc l
    cp b
    add [hl]
    ld h, c
    ld a, [hl-]
    ld hl, sp-$06
    ld a, l
    ld h, b
    jp z, Jump_03a_7f21

    ld a, h
    sub l
    ld h, [hl]
    and b

jr_03a_6a06:
    ld e, l
    jr c, @+$01

    ld [hl], b
    rst RST_38
    pop hl
    or e

jr_03a_6a0d:
    jr nc, jr_03a_6a06

    sbc [hl]
    rst RST_38
    jr c, jr_03a_69ca

    ld d, d
    adc l
    inc b

jr_03a_6a16:
    adc l
    inc h
    sbc $c2
    ld h, b

jr_03a_6a1b:
    inc b
    db $ed
    inc b
    db $ed
    bit 0, b
    db $ed
    db $e4
    inc h
    ret nc

jr_03a_6a25:
    dec h
    ld [$d341], sp
    rlca
    jr nc, jr_03a_6a2c

jr_03a_6a2c:
    nop
    ldh [$ffe2], a
    ld h, c
    db $e4
    inc sp
    add sp, -$18
    jr nc, jr_03a_6a8b

    ld d, b
    db $fc
    ld bc, $f8f0
    ld h, h
    ld d, b
    sbc a
    ld b, b
    adc $01
    ld [hl], e
    add b
    ld a, a
    add b
    ld a, [bc]

jr_03a_6a46:
    ld bc, $6518
    ld [bc], a
    ld bc, $feed
    ret z

    jr nc, @+$01

    nop
    ld h, $66
    ld a, b
    ld h, c
    jr jr_03a_6a46

    add hl, de
    ld b, $e7
    nop
    inc a
    ld h, c
    ld b, c
    or b
    ld b, d

jr_03a_6a60:
    cp $35
    ld [hl], b
    ld b, h
    or b
    ld b, l
    and c
    ld b, l
    add c
    ld b, b
    push bc
    ld a, a
    ld b, b
    ld [hl], c
    ld a, a
    ld b, c
    ld [hl], d
    ld b, h
    ld [hl], c
    nop
    nop
    add b
    rrca
    dec e
    rst RST_08
    dec bc
    ld [bc], a
    add b
    inc bc
    jp Jump_03a_6f5e


    ld a, b
    ld h, d
    ld h, c
    ld d, d
    rst RST_38
    nop
    ld bc, $f3f0
    rst RST_38
    rst RST_38

jr_03a_6a8b:
    ld a, [hl-]
    ld hl, sp+$7f
    dec sp
    ld hl, sp+$19
    ld hl, sp-$23
    db $fc
    dec e
    add a
    ld [hl], b
    db $fd
    dec c
    jp Jump_000_3f30


    rst RST_38
    ccf
    ld a, a
    rra
    ld a, a
    db $e3
    rrca
    ccf
    cp c
    jr nz, jr_03a_6a60

    ld [bc], a
    and b
    ld d, a
    or $24
    scf
    rst RST_38
    inc h
    rst RST_30
    rlca
    rst RST_08
    rst RST_38
    sbc a
    rst RST_38
    ccf
    ldh a, [$ffca]
    inc hl
    ld [$ca02], sp
    ld h, e
    jp z, Jump_000_0d61

    inc b
    db $fd
    inc b
    adc e
    db $fd
    db $fc
    ret c

    dec [hl]
    ret nz

    db $fc
    ld de, $21cd
    ldh [$ff74], a
    add b
    nop

jr_03a_6ad1:
    rst RST_20
    ld b, b
    ld [$f271], a
    ld h, e
    pop hl
    jr nc, jr_03a_6ad1

    ld h, h
    dec e
    add b
    ld d, e
    rst RST_38
    pop hl
    pop hl
    jp Jump_03a_78c3


    ld a, b
    ldh a, [$fff0]
    rst RST_38
    inc c
    inc c
    jr jr_03a_6b04

    ccf
    ccf
    ld a, [hl]
    ld a, [hl]
    cp $00
    ld bc, $3838
    ld [hl], b
    ld [hl], b
    inc c
    rrca
    ld e, $ff
    ld e, $01
    ld bc, $0300
    ld sp, hl
    and $e6
    rst RST_38

jr_03a_6b04:
    ldh [$ff1f], a
    inc e
    jr c, jr_03a_6b41

    nop
    rlca
    nop
    rst RST_38
    rrca
    ld b, b
    ret nz

    add b
    add b
    ld c, l
    and c
    ld c, c
    rst RST_38
    ld bc, $0129
    reti


    ld bc, $c131
    dec d
    ld a, a
    add l
    dec [hl]
    push bc
    dec h
    push bc
    ld b, b
    ld a, a
    ld b, b
    ld bc, $7ff9
    ld b, c
    ld [bc], a
    ld b, h
    ld bc, $ff00
    nop
    ret nz

    rlca
    ld [hl], a
    rst RST_20
    rst RST_38
    rst RST_38
    ld d, b
    nop
    add b
    ld bc, $56c1
    nop
    rst RST_18
    rrca
    nop

jr_03a_6b41:
    rlca
    and b
    ldh a, [$ff64]
    nop
    ld hl, sp+$00
    rst RST_30
    inc bc
    nop
    ld bc, $006c
    rst RST_38
    nop
    nop
    ld hl, sp-$07
    ld sp, hl
    ld d, [hl]
    ld [bc], a
    ld [hl], e
    ld [bc], a
    dec c
    db $fc
    inc c
    db $fc
    ld c, $af
    cp $fe
    cp $0e
    add a
    nop
    ld b, $85
    nop
    pop bc
    rst RST_38
    ld b, c
    ldh [$ff60], a
    rst RST_18
    rra
    ld c, a
    rrca
    ld h, b
    rst RST_38
    jr nz, @+$72

    jr nc, jr_03a_6be5

    rrca
    daa
    rlca
    and b
    rst RST_38
    ld hl, sp-$5c
    db $fc
    nop
    inc bc
    add b
    add c
    inc h
    rst RST_38
    inc a
    inc b
    ld e, $80
    ret nz

    and b
    ldh [rP1], a
    ld a, a
    cp $00
    ccf
    nop
    ret nz

    nop
    ldh [$ff28], a
    nop
    rst RST_38
    inc bc
    nop
    ld a, b
    nop
    inc a
    inc b
    rra
    inc b
    rst RST_30
    rrca
    nop
    ldh a, [$ffbc]
    nop
    ld bc, $8000
    inc b
    rst RST_38
    ld e, $04
    rrca
    rlca
    rlca
    add e
    add e
    inc a
    ld a, a
    ld a, h
    ld a, $3e
    add c
    pop bc
    add b
    ldh [rOCPS], a
    ld [bc], a
    cp e
    rst RST_38
    ldh a, [$ffe2]
    nop
    ld [hl], b
    ldh a, [rTAC]
    add sp, $04
    inc bc
    db $eb
    db $e3
    inc bc
    ldh a, [c]
    ld [bc], a
    db $fc
    ld hl, sp+$02
    cp $fe
    add c
    cp a
    add c
    inc bc
    inc bc
    and b
    ldh [$ff80], a
    dec l
    nop
    jr c, @+$01

    ld a, b
    or b
    ldh a, [$ffa0]
    ldh [$ffe0], a
    ldh [$ffc0], a

jr_03a_6be5:
    rst RST_30
    ret nz

    inc a
    inc a
    inc b
    ld bc, $0f0d
    inc e
    rra
    rst RST_38
    inc a
    ld a, $00
    ld a, b
    ld h, b
    ldh a, [rSC]
    dec b
    ld a, a
    rlca
    ld [$100f], sp
    nop
    add b
    ld [$0028], sp
    ld a, a
    ld h, l
    dec b
    ld b, l
    dec b
    push de
    dec d
    sub l
    dec [hl]
    db $10
    sub l
    dec d
    dec [hl]

Call_03a_6c0f:
    ld de, $4095
    rlca
    nop
    ld c, c
    db $10
    ld c, [hl]
    ld [bc], a
    add b
    ei
    inc bc
    jp $0376


    ld bc, $ff81
    rst RST_38
    add b
    rst RST_30
    ldh a, [rLCDC]
    ld hl, sp+$62
    db $10
    db $fc
    ld b, b
    cp $00
    db $ec
    ld l, d
    inc de
    ld [hl], c
    nop

jr_03a_6c32:
    cp $fe
    halt
    inc bc
    db $fc
    db $fc
    rst RST_38
    db $e3
    rst RST_38
    ld b, $8b
    nop
    adc h
    ld bc, $1580
    and b
    add b
    cp h
    rst RST_38
    add h
    sbc c
    add c
    cp h
    add b
    db $fc
    add b
    add b
    rst RST_38
    add d
    jp $bf81


    add e
    inc b
    rrca

jr_03a_6c56:
    inc b
    jp z, Jump_000_0b63

    add b
    or h
    nop
    rrca
    ld h, b
    ld bc, $00c4
    ldh a, [rP1]
    push hl
    ld hl, sp-$3c
    inc b
    nop
    jp z, $a100

    db $10
    inc b
    rlca
    inc a
    rst RST_38
    inc a
    rra
    rra
    and b
    ldh [$ffb0], a
    ldh a, [$ff38]
    cp [hl]
    rst RST_00
    nop
    add b
    add b
    add b
    ret nz

    ld [hl], b
    push hl
    nop
    ld [hl], b
    ld e, a
    ldh a, [$ff78]
    ld hl, sp+$78
    ld hl, sp-$0e
    inc bc
    ld bc, $10f0
    db $fc
    ld l, e
    inc d
    ld a, [$1f12]
    rra
    ld a, $3e
    ld a, h
    ld a, h
    ccf
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld b, $11
    ldh a, [rNR11]
    cp e
    inc bc
    inc bc
    db $10
    ld de, $8080
    inc a
    inc bc
    jr nz, jr_03a_6c32

    rst RST_38
    ldh a, [c]
    ld b, d
    ldh [c], a
    ldh [c], a
    ldh [c], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    rst RST_28
    ld [hl-], a
    ld [hl], d
    ld [hl], d
    ld [bc], a
    inc l
    jr nz, jr_03a_6c56

    sub l
    sub h
    db $fc
    ld sp, $3020
    ld hl, $9790
    sub b
    sub a
    sub a
    sub a
    ld b, [hl]
    ld d, b
    nop
    db $fc
    nop
    ld [hl], l
    inc de
    cp l
    db $10
    ld d, [hl]
    inc d
    ld bc, $0376
    ld a, a
    inc bc
    inc bc
    rst RST_38
    rst RST_38
    ld a, a
    and b
    ld [hl], b
    ld h, c
    ld a, [hl+]
    ld e, h
    ld a, b
    dec d
    ld a, b
    rra
    ld [bc], a
    rst RST_38
    ld [bc], a
    ld a, [$a010]
    sub b
    ld [hl+], a
    ld sp, hl
    and a
    sub [hl]
    ld [hl+], a
    sub b
    ld hl, $7e24
    inc h
    ld a, $24
    ld d, c
    ccf
    ld b, $10
    xor l
    nop
    and b
    db $10
    rrca
    call nz, Call_000_0012
    ld c, d
    db $10
    or l
    ccf
    or d
    ld [bc], a
    ret nz

    cp h
    ld de, $fd04
    call nz, Call_000_3f14
    rst RST_30
    inc b
    rra
    rrca
    rst RST_08
    nop
    cp e
    ei
    cp b
    ld hl, sp-$11
    cp h
    db $fc
    ld a, $7e
    rst RST_00
    db $10
    add b
    and h
    cp $f0
    ldh [rNR43], a
    ld [hl], c
    nop
    add sp, $2c
    ld c, c
    ld de, $3f3f
    ccf
    nop
    rst RST_38
    nop
    cp h
    db $fc
    cp b
    ld hl, sp-$50
    ldh a, [rIF]
    rst RST_38
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld hl, sp-$22

jr_03a_6d4c:
    ld l, c
    nop
    inc b
    rlca
    inc c
    rrca
    jr jr_03a_6d75

    add b
    add b
    rst RST_38
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    ldh a, [c]
    jp nc, $dff2

    ld [bc], a
    ldh [c], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld a, [hl+]
    jr nc, jr_03a_6d6b

    inc sp
    ld a, a
    sub b

jr_03a_6d6b:
    or a
    add b
    cp a
    add b
    cp a
    cp a
    inc sp

jr_03a_6d72:
    jr nc, jr_03a_6d4c

    ld d, b

jr_03a_6d75:
    nop
    ld a, [$5810]
    ld bc, $c000
    halt
    inc bc
    nop
    add b
    or $76
    inc bc
    rlca
    rlca
    halt

jr_03a_6d86:
    inc bc
    ccf
    ccf
    rst RST_38
    rst RST_38
    ld a, $62
    daa
    ldh a, [rNR41]
    jr nc, jr_03a_6d72

    ldh a, [$ff6f]
    ld [de], a

jr_03a_6d95:
    ld [hl], h
    dec h
    ld a, $74
    ld de, $ff02
    nop
    rra
    nop
    ld e, l
    jr nc, @+$52

    nop
    db $fc
    add hl, hl
    nop
    adc [hl]
    ld hl, $e7a7
    and a
    rst RST_20
    rst RST_20
    rst RST_20
    rla
    and b
    ldh [rNR41], a
    sbc c
    jr nc, jr_03a_6d95

    xor e
    jr nz, jr_03a_6e1c

    ld b, $6b
    inc bc
    ld [hl], l
    ldh [$ffb4], a
    ld d, $f8
    cp [hl]
    db $10
    db $fc
    inc b
    rra
    or [hl]
    nop
    cp b
    cp l
    ld de, $016b
    ld l, d
    db $10
    ret nz

    ret nz

    rra
    rst RST_08
    ld [hl+], a
    or b
    db $fd
    ldh a, [$ffd6]
    ld hl, $febe
    ret nz

    rst RST_38
    cp a
    rst RST_38
    rst RST_00
    and b
    rst RST_38
    xor a
    push hl
    jr nc, @+$6c

    ld de, $301c
    ret nz

    ret nz

    db $ec
    cp l
    jr nz, jr_03a_6dfd

    db $10
    ldh [rIF], a

jr_03a_6df1:
    ld a, [$0730]
    rlca
    jr nz, jr_03a_6d86

    ld a, [hl]
    jr nz, @+$40

    jr nz, @-$59

    inc h

jr_03a_6dfd:
    or h
    ld [de], a
    ld [$0032], a
    cp c
    add b
    jp nc, $d031

    ld hl, $1f00
    rlca
    ld h, c
    nop
    ld b, $ef
    rlca
    ld [bc], a
    inc bc
    ld hl, sp+$2a
    ld b, b
    db $fc
    db $fc
    ld [hl], b
    ld [hl], b
    reti


    jr nc, @-$24

jr_03a_6e1c:
    inc sp
    ld l, d
    inc de
    ld h, d
    dec hl
    ld [hl], b
    and b
    rst RST_38
    ld l, h
    ld [bc], a
    jr nc, jr_03a_6e7c

    ld c, a
    ld e, [hl]
    ld b, l
    add d
    jr nc, jr_03a_6df1

    ld b, $00
    ld e, $72
    ld b, [hl]
    inc de
    ld b, c
    db $10
    or a
    ld de, $33b7
    push bc
    inc h
    or d
    nop
    rra
    add d
    jr nc, @-$3b

    ld a, [hl-]
    or b
    nop
    ld sp, hl
    rst RST_38
    ld hl, sp+$22
    inc de
    ld b, d
    ret nz

    ret nz

    inc b
    cp $04
    xor a
    rst RST_38
    inc b
    ld a, a
    inc b
    or a
    ld b, [hl]
    nop
    and c
    inc a
    and b
    ld bc, $e0fe
    ld b, d
    rst RST_20
    dec hl
    dec d
    ld c, b
    jr nc, jr_03a_6eb2

    add sp, $2d
    rst RST_20
    dec l
    dec e
    nop
    add b
    ei
    db $eb
    db $e3
    nop
    dec bc
    dec bc
    inc bc
    ei
    inc bc
    inc bc
    ld a, a
    inc bc
    rst RST_38
    rst RST_38
    nop
    nop

jr_03a_6e7c:
    nop
    rst RST_38
    ld a, [de]
    ld bc, $16c0
    ld bc, $0217
    rla
    dec b
    inc hl
    inc b
    jr z, jr_03a_6e98

    jr jr_03a_6e92

    rlca
    nop
    rrca
    ld hl, sp+$00

jr_03a_6e92:
    rlca
    rlca
    ld d, $08
    ld b, e
    ld a, [bc]

jr_03a_6e98:
    dec [hl]
    ld [bc], a
    ld l, a
    ld [$f8ff], sp
    ld hl, sp-$06
    rst RST_38
    db $ec
    rst RST_38
    ld a, [$f9ff]
    call c, Call_000_0083
    add d
    inc bc
    ld [bc], a
    ld hl, sp-$7e
    ld hl, sp+$02
    db $fc
    sub e

jr_03a_6eb2:
    ld [bc], a
    sub d
    inc bc
    db $fd
    rst RST_38
    or $ff
    db $fd
    rst RST_38
    add hl, sp
    xor $a3
    nop
    and d
    inc bc
    ld [bc], a
    ld hl, sp+$42
    sub e
    inc b
    or d
    inc bc
    ld a, a
    cp $ff
    ei
    rst RST_38
    cp $ff
    rst RST_30
    jp Jump_03a_4e00


    jp nz, $8203

    ld hl, sp+$22
    sub c
    ld [bc], a
    ret nc

    dec b
    rst RST_38
    and e
    nop
    ld sp, hl
    rst RST_38
    pop bc
    nop
    ldh [$ff03], a
    nop
    nop
    ld b, d
    ld hl, sp-$6e
    ldh a, [c]
    or c
    nop
    add d
    or c
    nop
    ldh a, [c]
    ld bc, $0002
    xor a
    adc a
    call c, Call_000_1f00
    inc c
    rla
    and b
    add b
    cp $61
    inc c
    cp a
    add b
    ei
    add b
    add b
    ld h, h
    add hl, bc
    ld a, [$f5ff]
    rst RST_38
    jp c, $ff4b

    db $f4
    add e
    nop
    db $f4
    ld b, e
    ld [de], a
    ld a, [de]
    inc bc
    add b
    ld d, c
    ld d, $d7
    ld a, [$edff]
    add e
    nop
    db $fd
    ld e, a
    ld d, $00
    rst RST_38
    sub c
    ld b, b
    dec de
    ld [bc], a
    ld [hl], d
    dec d
    and d
    ld bc, $a7fe
    inc b
    add h
    ld de, $ab80
    rst RST_38
    jr nz, jr_03a_6f8b

    ld [de], a
    and b
    ld d, e
    ld [de], a
    ld d, b
    rst RST_00
    inc b
    rst RST_38
    ld e, [hl]
    rst RST_00
    inc bc
    cp $01
    nop
    add b
    ld [hl], c
    db $10
    sub b
    ld [hl], c
    db $10
    ldh a, [$ff9c]
    ld de, $0222
    ld l, c
    inc b
    inc l
    dec b
    cp $00
    ld bc, $e801
    ld h, h
    add hl, bc
    ld h, d
    dec bc
    sbc $1e

Jump_03a_6f5e:
    ret nz

    ret nz

    ld a, [de]
    rst RST_38
    nop
    ldh a, [$ffec]
    nop
    inc l
    cp a
    inc e
    ret nc

    cpl
    inc b
    add hl, hl
    ld a, [bc]
    dec b
    sub b
    db $ed
    ld h, b
    jp nz, Jump_000_0519

    ld a, [$19d6]
    and b
    ld e, a
    nop
    di
    nop
    rst RST_18
    ld h, a
    dec b
    dec sp
    jr nz, jr_03a_6fd3

    and b
    rrca
    nop
    ld a, e
    and a
    ld [$2944], sp

jr_03a_6f8b:
    rst RST_38
    nop
    db $fd
    ld [bc], a
    jr z, jr_03a_6fb7

    sub d
    ld a, [de]
    ld [bc], a
    ld a, a
    add hl, de
    ld bc, $2467
    xor a
    ld l, l
    jr nz, jr_03a_700b

    ld [hl+], a
    nop
    rst RST_18
    add l
    ld a, d
    nop
    nop
    rst RST_30
    and a
    ld [hl+], a
    di
    inc b
    rst RST_38
    nop
    nop
    ret nz

    ccf
    nop
    nop
    db $eb
    nop
    rst RST_38
    jp hl


    ld [bc], a
    db $eb
    nop

jr_03a_6fb7:
    add sp, $00
    add sp, $03
    ld a, a
    ld sp, $c00e
    nop
    scf
    nop
    rst RST_20
    ld a, [de]
    nop
    cp a
    ldh [rP1], a
    rra
    nop
    ld a, a
    add b
    jr jr_03a_6fd0

    nop
    rst RST_18

jr_03a_6fd0:
    db $fc
    nop
    ld sp, hl

jr_03a_6fd3:
    ld [bc], a
    db $fc
    inc hl
    ld [bc], a
    nop
    nop
    rst RST_30
    or b
    ld b, b
    rrca

jr_03a_6fdd:
    adc e
    ld [hl+], a
    db $fc
    nop
    ld bc, $ff00
    add e
    ld a, h
    dec bc
    db $f4
    nop
    nop
    call $ff00

jr_03a_6fed:
    db $ec
    ld bc, $00ed
    nop
    add hl, bc
    inc h
    ret


    ld a, e
    db $e4
    add hl, bc
    cp a
    add hl, de
    rst RST_08
    nop
    sub a
    jr nz, @-$1a

    ld hl, $c1fa
    add hl, de
    ld e, a
    rra
    ld [hl-], a
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, [hl]

jr_03a_700b:
    db $eb
    ld de, $274e
    jr nc, @-$1f

    ld e, l

jr_03a_7012:
    jr nz, @-$2f

    db $10
    rst RST_08
    ld l, a
    db $10
    ret


    inc d
    ld c, c
    daa
    jr nc, jr_03a_6fed

    db $10
    sbc h
    ld hl, $afff
    nop
    add b
    jr nz, @-$5e

    rrca
    add a
    jr z, jr_03a_7012

    add a
    jr z, jr_03a_6fdd

jr_03a_702e:
    push de
    jr nz, jr_03a_702e

    ld de, $1f20
    ld a, a
    db $eb
    add b
    db $fd

Jump_03a_7038:
    reti


    ld [hl+], a
    ld a, a
    ret


    jr nz, jr_03a_704f

    ld c, $bf
    ld a, [hl-]
    ld [hl], d
    db $10
    ld a, a
    ld e, a
    ld [hl-], a
    xor a
    nop
    daa

jr_03a_7049:
    sbc l
    jr nz, jr_03a_70c0

    dec [hl]
    ei
    daa

jr_03a_704f:
    ld [$21ac], sp
    ldh a, [c]
    dec b

jr_03a_7054:
    sub d
    ld b, h
    sub e
    db $eb
    inc b
    di
    adc c
    jr nc, jr_03a_7054

    or a
    jr nz, jr_03a_7049

    ld [bc], a
    ld l, c
    or e
    ld [bc], a
    ld l, e
    cp e
    ld [hl+], a
    cp b
    ld hl, $10e7
    add $25
    ld h, a
    call $c690
    ld hl, $7887
    sub $25
    jr nz, jr_03a_7089

    add a
    ld a, b
    ld a, d
    adc d
    inc hl
    rst RST_38
    jp hl


    inc h
    rst RST_38
    nop
    db $e4
    add hl, bc
    ret nc

    inc sp
    sbc l
    inc b
    ei

jr_03a_7089:
    ld [hl+], a
    push hl
    ld [$0bb7], sp
    jr nc, jr_03a_7097

    daa
    nop
    cp l
    rrca
    db $e4
    add hl, sp
    nop

jr_03a_7097:
    inc bc
    nop
    db $fc
    ld h, $31
    ld d, b
    ld a, d
    ld sp, hl
    ld sp, $cf81
    db $10
    rst RST_38
    nop
    rrca
    ret nc

    ld sp, hl
    inc [hl]
    adc h
    ld a, [de]
    nop
    ld d, b
    ld bc, $03ff
    call nc, $0d21
    ld b, b
    ld c, $22
    rra
    and a
    nop
    ldh [$ffc0], a
    ld a, [$0e30]
    ld [hl+], a
    ccf

jr_03a_70c0:
    cp $12
    ld a, a
    add c
    rra
    ld [hl], $42
    cp $14
    db $fd
    jr nc, jr_03a_710c

    inc sp
    jr jr_03a_70cf

jr_03a_70cf:
    dec d
    ld b, e
    rrca
    call nc, $21a8
    ret nc

    inc hl
    rrca
    daa
    ld b, d
    db $eb
    ld h, e
    ld b, h
    add b
    add b
    cp a
    ldh [$ffe0], a
    rlca
    rlca
    nop
    ret nz

    rst RST_08
    jr nz, jr_03a_7168

    rst RST_38
    nop
    add b
    ld [hl], b
    ld [hl], b
    ld a, h
    ld a, h
    ld bc, $0f00
    ldh [$ffe0], a
    ld hl, sp-$08
    sub $28
    ld d, $04
    call nz, $8031
    ld b, c
    ei
    ld a, a
    add b
    rst RST_08
    ld hl, $08e5
    push hl
    ld [$3c08], sp
    ld h, $04

jr_03a_710c:
    db $dd
    ld hl, $7f7c
    ld a, a
    inc bc
    ld l, d
    ld sp, $43c4
    ld e, $20
    ld b, b
    rst RST_38
    ldh a, [rIE]
    rst RST_38
    rst RST_28
    ld [hl], $17
    nop
    rrca
    jr nz, @-$4f

    ret nz

    rst RST_38
    rst RST_38
    ccf
    pop bc
    dec d
    ld e, $39
    ld b, e
    rst RST_38
    rst RST_28
    db $fc
    rst RST_38
    rst RST_38
    inc bc
    dec l
    inc bc
    ld a, b
    rst RST_38
    ld bc, $1538
    ld b, d
    jp nc, $0843

    ld b, c
    ldh [rIE], a
    rlca
    daa
    ld b, d

jr_03a_7144:
    db $e4
    ld b, c
    db $ed
    jr nz, jr_03a_7162

    ld b, d
    add b
    rst RST_38
    ldh a, [rSTAT]
    rrca
    rst RST_38
    rst RST_38
    ccf
    ldh a, [rP1]
    ldh a, [$ff80]
    rst RST_38
    ld c, $2d
    ld b, b
    inc l
    ld d, c
    ld a, d
    ld l, d
    ld sp, $290c
    ld d, d

jr_03a_7162:
    ld a, a
    ld [hl], b
    cp a
    nop
    ld c, b
    ld d, e

jr_03a_7168:
    cp a
    ld c, $fe
    cp $f0
    ld a, [hl]
    nop
    ld d, h
    ld d, l
    ld [hl], b
    db $db
    nop
    ld d, [hl]
    jr nz, jr_03a_7187

    ret nz

    ret nz

    adc h
    ld b, c
    cp $fe
    db $eb
    ret nz

    ret nz

    db $dd
    ld [hl+], a
    rlca
    ld a, [de]
    ld b, d
    ld hl, sp+$20

jr_03a_7187:
    ld hl, sp-$01
    ld d, b
    ldh a, [$ffa0]
    ldh a, [rP1]
    inc e
    nop
    db $fd
    sbc [hl]
    ld [$0140], sp
    ld bc, $0203
    inc de
    nop
    ld d, c
    nop
    ld [bc], a
    ld a, [hl]
    rst RST_08
    db $10
    cp $28
    cp $44
    cp $ac
    ld l, e
    ld d, d
    sbc l
    inc a
    sbc a
    ld d, l
    ld bc, $81bd
    xor d
    ld d, c
    ld [hl-], a
    ld b, b
    jr nc, jr_03a_7144

    nop
    ccf
    db $10
    jr nc, jr_03a_7231

    ld b, b
    cp c
    ld d, d
    scf
    ld b, c
    ld b, b
    set 0, b
    rrca
    add $50
    rlca
    jp z, Jump_03a_6952

    inc bc
    inc bc
    nop
    ld d, a
    db $f4
    ldh a, [$fff6]
    reti


    ld d, b
    ld b, $c0
    ld d, $0f
    cp $10
    cp a
    sbc $1e
    sbc $1e
    rst RST_38

jr_03a_71de:
    ld bc, $55f0
    ccf
    ld a, c
    ld bc, $5171
    dec b
    add hl, hl
    rrca
    rrca
    ld l, a
    rrca
    call nz, $f543
    ld [hl], b
    jr jr_03a_71f2

jr_03a_71f2:
    ldh a, [rNR30]
    ld h, b
    ld hl, sp-$08
    cp a
    nop
    reti


    or b
    ld d, e
    nop
    inc de
    nop
    inc bc
    ld bc, $50fb
    ld a, [hl]
    ld a, [hl]
    sbc c
    inc c
    sbc a
    ld d, b
    xor d
    ld d, e
    cp h
    add b
    and b
    ld d, c
    cp c
    ld b, e
    add b
    di
    add b
    ret nz

    push bc
    ld d, b
    inc h
    ld h, c
    nop
    rrca
    inc c
    rrca
    ld d, l
    dec bc
    ld d, c
    ld h, b
    rra
    ld e, b
    ld h, b
    ldh [$ff5c], a
    ld h, b
    ld hl, sp+$60
    ld h, b
    ccf
    ld a, b
    ld hl, sp-$10
    ldh a, [$fff1]
    pop af

jr_03a_7231:
    jp z, $b953

    ld b, e
    rst RST_38
    inc c
    ld c, $ec
    cp $ec
    cp $ee
    cp $e3
    db $fc
    cp $38
    ld h, c
    ld a, [hl-]
    ld h, e
    and b
    ld d, e
    add b
    add b
    ccf
    jr c, jr_03a_71de

    ld h, d
    ld e, b
    ld h, c
    ld e, b
    ld h, c
    jr nc, jr_03a_72c3

    or b
    ld a, [de]
    ld h, b
    and d
    ld h, c
    rst RST_38
    ldh a, [$fff0]
    rst RST_30
    rst RST_30
    rlca
    rlca
    ld b, $00
    cp h
    or b
    ld h, a
    jp c, $de51

    ld e, $df
    rra
    jp nz, $c061

    ld a, b
    cp $10
    ret z

    ld h, c
    ld [hl], e
    ld d, c
    rlca
    nop
    ld [hl], a
    ld [hl], b
    sub $61
    rst RST_38
    scf
    jr nc, jr_03a_72b5

    jr nc, jr_03a_72ef

    rrca
    ld h, b
    nop
    ld b, $e2
    ld l, c
    jp $28c3


    ld h, c
    ld a, [hl+]
    ld h, c
    ld l, a
    ld d, d
    ld d, l
    nop
    ld l, a
    rlca
    or $dd
    ld hl, $003c
    add d
    ld h, c
    cp h
    add b
    cp l
    add c
    inc sp
    dec a
    ld bc, $711a
    or $63
    rra
    rra
    ld l, a
    dec b
    ld e, h
    ld h, c
    or a
    ldh [$ffe0], a
    ret nz

    ld [hl], $70
    rst RST_08
    rst RST_08
    sub d
    ld h, c
    rlca

jr_03a_72b5:
    cp l
    rlca
    add $51
    rrca
    rrca
    jr nz, jr_03a_72dd

    jr nc, jr_03a_7332

    xor $9f
    cp $fe

jr_03a_72c3:
    cp $fc
    db $fc
    cp c
    ld b, h
    dec c
    ld [hl], d
    dec a
    sbc d
    xor c
    ld d, h
    cp h

jr_03a_72cf:
    xor e
    ld d, b
    add b
    add c
    ld h, d
    ld d, c
    ld [hl], d
    ld [hl], d
    ldh [$ff87], a
    and b
    ldh [rLCDC], a
    ld a, c

jr_03a_72dd:
    ld [hl], b
    jp z, $2651

    ld h, c
    ld h, $61
    nop
    rst RST_38
    nop
    ld a, b
    ld a, b
    or $f0
    ldh a, [c]
    ldh a, [$fff0]
    ccf

jr_03a_72ef:
    db $fc
    ldh a, [$fffe]
    ldh a, [rIE]
    ldh a, [$ffec]
    jr nc, jr_03a_733d

    ld b, c
    sbc [hl]
    rst RST_08
    ld hl, $0303
    rra
    ld a, a
    xor b
    ld [hl], e
    call c, Call_000_3761
    rst RST_30
    jr nc, jr_03a_72cf

    ret nz

    or [hl]
    ld [hl], l
    ld l, c
    add hl, bc
    ld h, e
    inc bc
    adc a
    ld h, e
    inc bc
    ld h, c
    ld bc, $71c6
    ldh [c], a
    ld h, c
    ld l, a
    inc c
    rst RST_38
    ld l, h
    ld b, [hl]
    ld h, c
    ld h, h
    ld d, c
    ldh [$ffe0], a
    xor d
    ld h, c
    add e
    add e
    nop
    inc l
    ld bc, $1dff
    add b
    ld e, $bf
    dec a
    ld bc, $013d

jr_03a_7332:
    inc a
    nop
    inc b
    ld bc, $bf3d
    ld bc, $81bd
    add c
    add c

jr_03a_733d:
    rst RST_38
    db $10
    ld [bc], a
    ldh [$ffef], a
    ldh [rP1], a
    nop
    add b
    ld a, [de]
    nop
    ret nz

    ret nz

    ccf
    ld a, [$0020]
    ld a, a
    inc h
    inc b
    ld b, b
    ld b, b
    nop
    nop
    ret nz

    xor [hl]
    jr nc, jr_03a_735d

    rst RST_00
    rst RST_00
    rra
    ld a, [hl-]

jr_03a_735d:
    ld [bc], a
    nop

jr_03a_735f:
    ld b, b
    ld [bc], a
    ld e, $7b
    ld e, $fe
    ld c, b
    inc b
    add c
    rst RST_38
    add b
    ldh a, [rLCDC]
    inc bc
    xor d
    ld b, b
    inc bc
    rrca
    ld h, b
    ld b, $07
    ld l, d
    ld [bc], a
    ld hl, sp+$70
    ld [bc], a
    db $fc
    or $76
    inc b
    db $fd
    db $fd
    ld d, h
    dec bc
    rst RST_38
    rst RST_38
    rra
    ld a, a
    or a
    ccf
    ccf
    rra
    jr nz, jr_03a_738b

jr_03a_738b:
    inc e
    inc a
    ld l, $03
    rst RST_20
    db $fd
    ldh [$ffa0], a
    inc bc
    rlca
    nop
    rlca
    nop
    inc bc
    ld [$00ff], sp
    inc c
    ld h, b
    nop
    ld h, [hl]
    ld b, $6f
    rrca
    adc [hl]
    or h
    dec b
    rrca
    rra
    ldh a, [rHDMA3]
    inc b
    ld a, [de]
    ld bc, $011c
    inc bc
    di
    inc bc
    ld bc, $00d2
    ld d, h
    dec b
    inc bc
    inc bc
    add c
    rst RST_38
    cp $e0
    dec b
    ld bc, $007f
    ld h, b
    add b
    add b
    ldh [$ff7e], a
    ldh a, [rP1]
    ldh a, [$fff0]
    ld hl, sp-$08
    pop af
    pop af
    call nc, $e607
    ld d, h
    rlca
    ld bc, $3a01
    inc bc
    jr nz, jr_03a_73da

    ccf

jr_03a_73da:
    ccf
    jr nc, @-$07

    jr nc, jr_03a_735f

    add b
    ld c, b
    dec b
    db $fc
    db $fc
    add b
    add b
    or $54
    rlca
    rra
    rra
    db $10
    inc bc
    rst RST_38
    rst RST_38
    rlca
    rlca
    ld h, a
    nop
    nop
    ldh a, [rLY]
    ld [de], a
    ld [hl], b
    inc bc
    pop bc
    pop bc
    jp nc, $c001

    call nc, Call_000_3807
    dec d
    jr c, @+$17

    jr nc, @+$03

    ldh a, [rSB]
    ldh a, [rSB]
    pop hl
    pop hl
    ld h, e
    rst RST_38
    rst RST_38
    xor c
    nop
    xor d
    nop
    add h
    ld de, $1c1c
    halt
    ld bc, $0fcb
    rst RST_38
    sub b
    ld de, $5300
    ld b, $36
    ld bc, $9f9f
    ld b, $66
    rlca
    ccf
    ccf
    ld h, d
    rra
    ldh a, [$ff03]
    ld c, b
    inc de
    add b
    dec c
    dec e
    nop
    add b
    ei
    nop
    rst RST_38
    nop
    ld [bc], a
    ret nz

    rra
    rst RST_18
    db $10
    ret nc

    ld l, a
    db $10
    rst RST_10
    db $10
    rst RST_10
    nop
    inc b
    nop
    rst RST_38
    dec d
    nop
    cp $00
    ld bc, $aa55
    xor d
    ld d, l
    ld d, l
    xor d
    ld [bc], a
    rst RST_38
    dec b
    ld hl, sp-$08
    rlca
    rlca
    ld d, b
    xor b
    xor d
    sbc a
    ld d, l
    ld e, a
    and b
    cp a
    ld b, b
    jr nc, @+$03

    ld d, $03
    cp a
    rst RST_18
    ld b, b
    ld [bc], a
    db $fd
    ld bc, $40fe
    ld [bc], a
    ld bc, $fff9
    ld a, [$090a]
    add hl, bc
    ld [$50af], a
    ld d, a
    cp l
    xor b
    ld d, b
    add hl, bc
    dec b
    ld a, [$f50a]
    ld h, b
    add hl, bc
    ld e, [hl]
    rlca
    and b
    cp [hl]
    ld b, b
    ld [hl], b
    add hl, bc

jr_03a_748c:
    nop
    inc b
    ld bc, $8006
    ld a, [bc]
    rla
    nop
    db $e3
    ld h, c
    ld c, $a0
    dec bc
    inc c
    ld bc, $09b0
    ld a, [bc]

jr_03a_749e:
    jp hl


    add hl, bc
    rst RST_00
    ld l, d
    ld a, [bc]
    ld l, c
    jp nz, $cc0f

    dec b
    ld a, [bc]
    inc bc
    db $10
    sub $f8
    and $0f
    xor $04
    dec c
    nop
    jr nc, jr_03a_74ec

    ret nz

    ret z

    rlca
    rst RST_38
    jr nc, jr_03a_74c3

    rst RST_00
    jr nc, @+$11

    ret z

    scf
    jr c, @+$01

    rst RST_00

jr_03a_74c3:
    ret z

jr_03a_74c4:
    scf
    jr z, jr_03a_749e

    add sp, $17
    jr z, jr_03a_74c4

    rst RST_10
    jr jr_03a_74e1

    ld d, b
    dec b
    xor h
    ld d, b
    ld d, e
    and e
    adc h
    rst RST_38
    ld c, h
    inc sp
    jr nc, @+$06

    ld a, [$f101]
    ld c, $ff
    adc $30

jr_03a_74e1:
    ld sp, $cac4
    ld bc, $0e30
    rst RST_38
    pop bc

jr_03a_74e9:
    ld sp, $660e

jr_03a_74ec:
    ld h, b
    sbc c
    add b
    ld b, a
    rst RST_38
    jr nz, jr_03a_748c

    ld b, $67
    jr @-$65

    ld h, [hl]
    ld h, a
    rst RST_30
    sbc b
    sbc c
    ld h, [hl]
    dec de
    ld bc, $fe01
    ld sp, hl
    ld b, $ff
    add hl, bc
    or $e9
    ld d, $28
    sub $29
    call nc, Call_000_00ff
    nop
    ei
    nop
    nop
    rst RST_30
    ld l, a
    add b
    rst RST_38
    ld b, b
    sbc a
    rra
    jr nz, jr_03a_756b

    xor a
    ld d, b
    xor a
    ret nc

    dec de
    ld bc, $0217
    ld [hl], l
    ld [de], a
    inc d
    ld bc, $80ef
    db $10
    sbc $01
    rst RST_38
    ld [bc], a
    db $dd
    cp d
    dec b
    ld a, [bc]
    or l
    ld a, [bc]
    ld [hl], l
    cp $1b
    ld bc, $7f80
    sbc a
    ld h, b
    sub b
    ld l, a
    sub a
    rst RST_38
    ld l, b
    sub h
    ld l, e

jr_03a_7543:
    sub h
    ld l, e
    ld [$0b68], sp
    rst RST_38
    ld l, e
    inc c
    ld l, h
    nop
    ld h, e
    nop
    ld l, h
    inc bc
    rst RST_38
    ld [hl], b
    inc c
    ld b, e
    inc sp
    inc c
    call z, Call_000_13c0
    ei
    jr nz, jr_03a_74e9

    xor l
    ld de, $3333
    call z, Call_000_33cc
    di
    jr nc, @-$2f

    and b
    rra
    or d
    dec de

jr_03a_756b:
    nop
    nop
    ld sp, $bfce
    adc $31
    jr nc, jr_03a_7543

    ret nz

    ccf
    db $10
    dec b

jr_03a_7578:
    add c
    rst RST_30
    ld a, [hl]
    ld bc, $f4fe
    ld de, $fe00
    ld bc, $fff8
    ld bc, $00f6
    nop
    ld hl, $29d6
    add $bf

jr_03a_758d:
    add hl, bc
    sub [hl]
    add hl, hl
    ld d, [hl]
    add hl, hl
    sub $0a
    ld hl, $6100
    nop
    ld l, h
    ld de, $2712
    ld a, [de]
    nop
    ld sp, hl
    stop
    db $fd
    ld h, $20
    ld a, l
    ei
    ld h, c
    db $10
    rst RST_30
    nop
    nop

jr_03a_75ab:
    ld a, [bc]
    push af
    ld [hl-], a

jr_03a_75ae:
    add hl, hl
    db $e3
    nop
    nop
    sbc h
    ld de, $2742
    ld [hl], b
    rlca
    cp b
    ld b, b
    ld b, [hl]
    rst RST_30
    and [hl]
    sbc b
    jr jr_03a_75ae

    ld b, $16
    ldh a, [$fff6]
    nop
    rst RST_38
    ld b, $00
    cp $63
    nop
    ld b, b
    inc e
    ld b, b
    db $dd
    rra
    ld [hl], d
    jr nz, @+$06

    ld h, b
    nop
    ld a, d
    ld hl, $600b
    or $80
    add hl, hl
    ld a, [bc]
    ld h, c
    adc [hl]
    dec h
    ld [$0863], sp
    ld h, e
    adc a
    nop
    ld l, e
    nop
    ld l, e
    sbc l
    jr nz, jr_03a_758d

    ld a, [hl+]
    and c
    add hl, hl
    add b
    rst RST_28
    dec hl
    add b
    dec hl
    nop
    cp l
    jr nz, jr_03a_7578

    dec hl
    ret nz

    cp l
    dec bc
    add $23
    and b
    ld c, e
    add b
    ld l, e
    ret nc

    inc hl
    sub b
    db $fd
    ld h, e
    ret c

    ld hl, $0300
    sub e
    ld h, b
    sub e
    ld l, b
    rst RST_10
    sub e
    ld l, b
    sub c
    push hl
    jr nz, jr_03a_75ab

    jp hl


    inc h
    sub h
    ld l, b
    di
    sub h
    ld l, d
    db $f4
    inc h
    sbc l
    db $10
    call z, $9333
    ld l, h
    ld b, $42
    daa
    nop
    nop
    add sp, $16
    ld de, $0004
    inc b
    dec h
    ld hl, $222d
    ld a, a
    ld bc, $01ee
    sbc $01
    cp [hl]
    ld bc, $15f3
    and c
    nop
    ld a, [bc]
    inc hl
    ld b, b
    dec [hl]
    db $10
    cpl
    ld l, $20
    rst RST_30
    add c
    db $10
    rst RST_28
    cp a
    rlca
    ret c

    inc b
    db $db
    dec b
    cp d
    jr nc, jr_03a_767c

    ld a, [$05df]
    ld [bc], a
    db $fd
    ld a, [$4005]
    dec l
    nop
    nop
    rst RST_38
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    sbc b
    ld h, a
    ld h, b
    sbc a
    ld a, e
    add b
    ld a, a
    nop
    inc bc
    add d
    ld a, l
    ld [bc], a
    db $fd
    and d
    add hl, sp
    add sp, $42
    dec hl
    inc c
    jr nc, jr_03a_769d

    inc sp
    ld sp, hl

jr_03a_767c:
    ld h, d
    ld [hl-], a
    rst RST_18
    nop
    cp a
    ret nz

    call z, $9932
    inc [hl]
    nop
    ld bc, $13f4
    ldh [$ff37], a
    ld b, b
    dec sp
    add hl, hl
    sub $ea
    ld [de], a
    ld [hl+], a
    xor [hl]
    inc b
    ld b, b
    xor l
    ld [$ab40], sp
    ld d, b
    xor e
    db $eb

jr_03a_769d:
    dec b
    ld a, d
    db $10
    ld b, b
    ld a, [$4714]
    ld l, d
    sub l
    ld a, [$05ff]
    ld a, [de]
    push hl
    ld a, [de]
    push hl
    sbc d
    ld h, l
    ld l, d

jr_03a_76b0:
    pop bc
    sub l
    halt
    ld sp, $3fb0
    ld b, b
    ld c, e
    and d
    dec sp
    xor [hl]
    ld [hl-], a
    ld l, d
    sub b
    rst RST_38
    ld l, c
    sub h
    ld h, e
    add h
    ld l, e
    sub h
    ld c, e
    sub h
    rst RST_00
    dec hl
    inc d
    ld l, e
    call nc, Call_000_0039
    ld bc, $400c
    and a
    ld d, b
    rst RST_38
    and a
    ld b, b
    xor a
    ld b, b
    xor a
    ld d, b
    adc a
    ld d, b
    ld a, a
    adc a
    db $10
    xor a
    inc b
    ei
    rlca
    ld hl, sp+$44
    ld c, e
    ei
    ld a, [$3405]
    dec hl
    nop
    ld a, a
    ccf
    ld b, b
    jr nz, jr_03a_76b0

    ld b, b
    cpl
    ld c, a
    jr z, jr_03a_773e

    dec hl
    cp e
    ld b, b
    dec b
    ld h, e
    ld [bc], a
    nop
    jr z, @+$03

    jp nz, $9342

    ld b, c
    ld e, a
    and b
    ld a, [de]
    ld bc, $feff
    ld bc, $0100
    db $fc
    db $fd
    inc b
    dec b
    ld h, e
    db $f4
    dec b
    cp h
    ld b, c
    ldh [rOBP1], a
    ld b, c
    ld c, h
    nop
    db $f4
    db $dd
    ld b, b
    ld hl, sp+$00
    ld e, c
    ldh a, [rVBK]
    nop
    ld d, e
    db $e4
    dec d
    call nc, $a425
    rst RST_30
    ld d, l
    ld d, h
    and l
    ldh [rSCX], a
    add hl, hl
    ld c, d
    ld a, [hl+]
    ld c, c
    rst RST_38
    add hl, hl
    ld c, d
    ld a, [bc]
    ld l, c
    add hl, hl
    ld c, d
    ld a, [$3305]
    push af

jr_03a_773e:
    ld a, [bc]
    ld [hl+], a
    ld bc, $5344
    ld d, h
    xor e
    inc l
    ld d, c
    ld d, b
    ld d, e
    ccf
    inc b
    push af
    add h
    ld [hl], l
    inc b
    push af
    inc a
    ld d, c
    ld h, b
    ld d, a
    rst RST_38
    ld [$aa6b], sp
    ld d, l
    ld d, b
    xor a
    xor b
    ld d, a
    rst RST_38
    ld b, b
    cp a
    and b
    ld e, h
    ld bc, $81fd
    ld a, l
    ei
    ld bc, $00fd
    ld d, l
    inc b
    dec b
    db $fc
    db $fd
    ld [bc], a
    or a
    ld bc, $0142
    ldh [rKEY1], a
    db $fd
    ld bc, $5ba0
    add hl, bc
    rst RST_38
    jr jr_03a_779b

    inc a
    dec e
    ld a, h
    dec e
    ld e, h
    dec c
    ld a, a
    inc e
    add hl, bc
    ld [$0043], sp
    ld b, c
    nop
    and b
    ld d, c
    db $fd
    db $fc
    add b
    ld b, $fe
    ld bc, $3d3c
    call nz, $99c5
    inc [hl]
    db $dd

jr_03a_779b:
    ld b, b
    ld a, [hl+]
    ld d, e
    and h
    ld d, l
    ld [hl], $57
    ld h, b
    ld d, e
    db $fd
    rst RST_30
    ld [bc], a
    ld [$4615], a
    ld d, l
    ld d, l
    xor d
    xor b
    ld d, a
    or [hl]
    ld d, d
    ld d, l
    ld b, h
    or l
    ld e, h
    ld d, c
    inc b
    push af
    ld a, [hl-]
    ld d, e
    ld [$6b0d], sp
    ld d, $65
    ld d, b
    xor a
    sbc b
    dec [hl]
    nop
    inc bc
    inc c
    ld h, c
    jr nc, @+$6b

    cp b
    ld d, $67
    ld d, $63
    add b
    ld a, [bc]
    cp $01
    ld sp, hl
    jr nc, jr_03a_783b

    push hl
    cp a
    jr @-$65

    ld h, b
    ld h, a
    add b
    sbc [hl]
    ld d, $62
    ld l, d
    rst RST_38
    add hl, bc
    ld l, c
    ld c, $6e
    ld [$0069], sp
    ld h, a
    rst RST_28
    nop
    ld a, [hl]
    ld b, $e6
    ld l, d
    ld h, e
    ld bc, $0778
    rst RST_30
    ldh [$ff1f], a
    add b
    ld l, $30
    ld a, b

jr_03a_77fa:
    ld b, $e1
    jr @+$01

    add a
    ld h, [hl]
    add hl, de
    sbc d
    ld h, l
    ld h, d
    sbc l
    sbc d
    db $fd
    ld h, l
    adc [hl]
    ld h, d
    ld b, c
    add hl, sp
    ld b, $c6
    add hl, sp
    sbc c
    rst RST_20
    ld h, [hl]
    sub [hl]

jr_03a_7813:
    ld l, c
    ld a, [bc]
    inc sp
    ld [de], a
    inc b
    nop
    add b
    nop
    adc a
    cp a
    ccf
    and b
    jr nz, @-$4e

    ld h, a
    ld d, $04
    ld a, e
    inc d

jr_03a_7826:
    ld a, [$05ff]
    ld bc, $fc00
    db $fd
    dec b
    inc b
    xor a
    add hl, bc
    jr nz, jr_03a_7813

    ld l, e
    call z, $ff51
    rst RST_10
    ld h, b
    ldh a, [rHDMA1]

jr_03a_783b:
    ld b, d
    ld d, c
    ret c

    ld d, l
    rst RST_38
    ld d, h
    and l
    add h
    ld [hl], l
    ld b, h
    or l
    inc b
    push af
    rst RST_38
    xor a
    jr nz, jr_03a_77fa

    ld hl, $20af
    xor d
    dec h
    rst RST_38
    xor l
    ld [hl+], a
    xor d
    dec h
    and l
    ld a, [hl+]
    xor d
    dec h
    cp e
    push de
    ld a, [hl+]
    cp $50
    xor e
    and b
    ld e, a
    jr nz, @+$63

    ld b, b
    rst RST_30
    cp a
    nop
    rst RST_38
    ld sp, $046c
    dec h
    xor d
    xor b
    ld a, a
    daa

jr_03a_7871:
    inc h
    xor e
    and b
    cpl
    jr nz, jr_03a_7826

    ld b, [hl]
    ld [hl], e
    sbc $81
    add hl, bc
    ld hl, sp+$00
    ei
    inc bc
    ld sp, $0569
    inc b
    ld a, e
    db $fd
    db $fc
    ldh [rOCPD], a
    xor d
    dec h
    ld a, [$8002]
    ld [hl], e
    rst RST_38
    ldh a, [c]
    ld a, [bc]
    ld [$5212], a
    xor d
    xor d
    ld d, d
    db $fd
    dec b
    inc c
    ld h, b
    sub l
    inc b
    ld h, l
    ld h, h
    push hl
    db $f4
    cp a
    push hl
    db $f4
    dec b
    ld h, h
    sub l
    inc b
    inc e
    ld [hl], c
    and l
    rst RST_20
    ld a, [hl+]
    ld a, [hl+]
    and l
    and h
    ld [hl], l
    adc h
    ld [hl], c
    ld d, e
    xor e
    xor b
    scf
    ld d, b
    ld d, h
    xor e
    ld [hl], h
    ld d, c
    add b
    ld a, a
    add [hl]
    ld d, e
    ld l, e
    ld [hl], b

Jump_03a_78c3:
    sbc [hl]
    ld sp, $a564
    ld a, [hl+]
    jr z, jr_03a_7871

    ld b, [hl]
    ld [hl], c
    sub $7e
    and b
    inc bc
    ccf
    cp a
    cp c
    ld h, b
    sub e
    ld a, [bc]
    ld a, [de]
    ld bc, $801d
    daa
    rst RST_30
    nop
    nop
    ld a, a
    ld bc, $050a
    ld [bc], a
    ld hl, sp+$00
    ld a, l
    rst RST_38
    inc de
    ld [$a05f], sp
    nop
    nop
    db $fd
    inc hl
    ld [$029e], sp
    dec b
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    ld d, l
    ld bc, $1401
    dec b
    ld d, l
    ld a, a
    xor d
    xor d
    ld d, l
    ld bc, $00fe
    rst RST_38
    inc h
    rlca
    cp a
    db $fc
    ld bc, $817c
    db $fc
    ld bc, $0c01
    ld a, a
    ret nz

    ld c, h
    ld bc, $0970
    ld e, h
    ld bc, $0980
    nop
    nop
    sub d
    ld a, [bc]
    nop
    nop
    db $fd
    rst RST_38
    and d
    ld a, [bc]
    nop
    ld bc, $0100
    ret nz

    pop bc
    rst RST_38
    ldh a, [$fff1]
    ld hl, sp-$07
    db $fc
    db $fd
    ld hl, sp-$07
    ei
    ldh [$ffe6], a
    sub d
    rlca
    ld a, [hl]
    ld a, [hl]
    ld a, b
    ld a, c
    ld b, b
    rst RST_18
    ld b, [hl]
    rst RST_38
    rst RST_38
    cp $fe
    cp h
    ld bc, $9881
    rst RST_38
    rlca
    ld h, b
    rra
    add b
    nop
    nop
    add c
    jr @+$81

    ld b, $61
    ld e, $81
    ld a, [hl]
    ld bc, $e7fe
    ld [bc], a
    ld a, a
    nop
    nop
    ld bc, $0778
    ld b, b
    ccf
    inc de
    ld a, [bc]
    ld [$0bfe], sp
    add sp, $03
    db $10
    rla
    nop
    and b
    nop
    inc de
    nop
    ld bc, $2006
    dec d
    ret nz

    inc d
    dec b
    ld [hl-], a
    dec bc
    ld a, $05
    ld c, b
    ld bc, $0313
    ld a, [hl-]
    inc d
    add b
    cp a
    rra
    ld b, b
    ld e, a
    and b
    ccf
    ret nz

    jr nz, jr_03a_798a

jr_03a_798a:
    ld h, c
    inc c
    db $fd
    dec c
    ret nz

    ld l, h
    ld de, $1990
    sub b
    add hl, bc
    nop
    ld bc, $09a0
    ld hl, $0011
    nop
    rst RST_38
    ldh [$ffe0], a
    ldh a, [$fff0]
    ld hl, sp-$08
    db $fc
    db $fc
    ei
    cp $fe
    cp h
    inc de
    ei
    nop
    rst RST_30
    nop
    rst RST_28
    ld b, a
    nop
    rst RST_18
    nop
    db $f4
    inc bc
    ld [hl], $17
    inc d
    inc bc
    nop
    push de
    db $10
    adc [hl]
    sub $11
    rst RST_18
    nop
    cp a
    ld sp, hl
    db $10
    xor [hl]
    ld [de], a
    db $e3
    inc e
    cp $04
    ld de, $2420
    ld bc, $d1fb
    ld [de], a
    ld e, $21
    ldh a, [c]
    rla
    ld hl, $1213
    add hl, hl
    nop
    ld a, l
    dec e
    dec de
    inc h
    ldh a, [c]
    db $10
    jr z, jr_03a_7a07

    inc d
    ld b, $ea
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03a_7a07:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03a_7c01:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03a_7c74:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03a_7f04:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03a_7f21:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03a_7f3e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03a_7f66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
