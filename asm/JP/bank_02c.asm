; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

    jr nz, jr_02c_4042

    add $46
    ld h, e
    ld b, a
    sbc a
    ld c, e
    and b
    ld c, e
    db $fd
    ld c, a
    ld d, $50
    ld a, d
    ld d, l

jr_02c_4010:
    rst RST_20
    ld d, [hl]
    push de
    ld e, h
    ld h, $5d
    ld b, d
    ld h, h
    ld a, d
    ld h, l
    adc h
    ld l, d
    jr z, jr_02c_4089

    push hl
    ld l, [hl]
    dec e
    nop
    add b
    ld [hl], a
    rst RST_38
    rst RST_38
    db $10
    ld bc, $ff02
    rst RST_38
    ld bc, $0209
    rst RST_38
    cp d
    cp h
    add [hl]
    jp hl


    ld l, h
    rst RST_30
    ld d, c
    cpl
    rst RST_38
    sub a
    ld l, a
    ld a, e
    rst RST_20
    adc c
    ld h, [hl]
    add e
    adc h
    rst RST_38

jr_02c_4041:
    db $e3

jr_02c_4042:
    rst RST_20
    ld [$a657], a
    ld a, e
    adc d
    push hl
    rst RST_38
    ld l, e
    add h
    rrca
    inc c
    db $e3
    dec c
    ld a, [hl]
    adc c
    rst RST_38
    add $ca
    jr nz, jr_02c_4041

    sbc $b6
    ld [hl], d
    xor $ff
    and [hl]
    ld e, h
    sbc $22
    ld [hl], b
    add d
    cp b
    ld b, [hl]
    rst RST_38
    sub h
    adc [hl]
    ld b, b
    ld e, $89
    sbc [hl]
    add e
    pop bc
    rst RST_38
    dec de
    ret nz

    ld b, e
    jr jr_02c_4010

    nop
    sub c
    nop
    rst RST_38
    ld e, $45
    sbc a
    ld c, b
    inc c
    sbc c
    rst RST_08
    nop
    rst RST_38
    inc a
    pop bc
    dec a
    nop
    ld b, b
    nop
    db $db
    nop
    rst RST_38

jr_02c_4089:
    ldh a, [c]
    ld b, [hl]
    ld e, $86
    ld b, h
    and d
    or h
    add sp, -$01
    ld l, h

Jump_02c_4093:
    jp nz, Jump_02c_6228

    and [hl]
    nop
    nop
    nop
    rst RST_38
    reti


    reti


    rst RST_00
    rst RST_00
    nop
    nop
    dec bc
    nop
    rst RST_38
    ld sp, $0e4e
    pop af
    ld [hl], b
    adc a
    nop
    nop
    rst RST_38
    ldh a, [c]
    ldh a, [c]
    ld c, $0e
    nop
    nop
    pop hl
    jr @+$01

    ld a, [hl-]
    push bc
    push bc
    ld a, [hl-]
    ld [hl], d
    adc l
    nop
    nop
    rst RST_38
    ld c, [hl]
    ld c, [hl]
    ld [$0008], sp
    nop
    add b
    nop
    rst RST_38
    ld a, b
    add b
    add [hl]
    ld a, b
    ld a, b
    add b
    nop
    nop
    rst RST_38
    ld [$55ff], sp
    rst RST_38
    cp d
    rst RST_38
    rst RST_28
    rst RST_38
    or a
    ei
    rst RST_38
    ld a, a
    rlca
    nop
    rst RST_38
    rst RST_38
    and b
    ld bc, $eeee
    rlca
    nop
    ei
    rst RST_38
    cp a
    xor e
    ld [bc], a
    ccf
    cp a
    cp d
    rst RST_38
    ccf
    or l
    ccf
    ld l, b
    ld a, a
    ld d, l
    ld a, a
    ld h, c
    rst RST_38
    ld a, a
    ld d, c
    ld a, a
    add c
    rst RST_38
    ld e, [hl]
    ret nz

    cp l
    rst RST_38
    add b
    cp c
    add d
    cp e
    add d
    ld [hl], a
    ld [bc], a
    ld [hl], e
    ld a, a
    ld b, $73
    ld b, $6b
    ld b, $82
    cp $e0
    inc bc
    rst RST_38
    adc d
    cp $86
    cp $aa
    cp $96
    cp $fb
    db $e3
    ld c, $f0
    ld bc, $0ed3

Call_02c_4124:
    jp $c31e


    rst RST_38
    ld e, $43
    sbc [hl]
    jp $aa1e


    cp $de
    cp a
    cp $ae
    cp $fe
    cp $be
    dec b
    db $10
    cp $7f
    cp $98
    sbc b
    add e
    ld e, [hl]
    ld b, e
    sbc [hl]
    db $10
    ld de, $03fb
    sbc $18
    ld de, $8e02
    pop bc
    ld a, d
    jp nz, Jump_02c_79ed

    jr nz, @+$13

    ret nz

    ld a, e
    jr z, jr_02c_4167

    nop
    ld [bc], a
    ld d, l
    rst RST_38
    ld a, a
    ld a, e
    ld a, a
    ld [hl], l
    ld a, a
    ld a, a
    ld a, a
    ld a, l
    cp $35
    db $10
    ld a, a
    ld a, a

jr_02c_4167:
    ld c, c
    ld c, c
    inc hl
    ld b, d
    dec h
    db $fd
    ld b, l
    ld b, d
    ld de, $4726
    ld h, h
    ld b, l
    ld a, b
    ld [hl], l
    rst RST_38
    ld [hl], b
    ld a, a
    jr nz, jr_02c_41f0

    add sp, $51
    pop hl
    ld b, l
    rst RST_38
    sub c
    dec h
    adc c
    ld de, $51a9
    sbc c
    jr nz, @+$01

    ccf
    rst RST_38
    cp $5d
    ld sp, hl
    ld d, c
    ld sp, hl
    ld d, c
    rst RST_38
    cp $5d
    ld hl, sp+$51
    ld hl, sp+$51
    db $d3
    sbc h
    rst RST_38
    ldh [rIE], a
    rst RST_30
    adc b
    ld [hl+], a
    ld d, l
    ld [bc], a
    dec d
    rst RST_38
    inc hl
    call nc, $5c22
    inc hl
    ld d, l
    ld b, d
    sub l
    rst RST_38
    rlca
    rst RST_38
    ld b, d
    sub a
    adc a
    ld b, l
    adc [hl]
    inc b
    rst RST_38
    ld [hl], a
    add d
    db $d3
    ld b, c
    rst RST_08
    ld b, l
    adc d
    rst RST_00
    cp a
    rst RST_38
    rst RST_38
    ldh a, [c]
    ld [hl], a
    ld l, l
    dec h
    sub d
    ld de, $ff6e
    daa
    ld l, h
    dec h
    ld l, b
    dec h
    ldh a, [rIE]
    jp hl


    rst RST_30
    ld [hl], h
    ld c, d
    dec h
    and d
    dec d
    ld c, c
    inc h
    rlca
    rst RST_38
    rst RST_38
    ld h, [hl]
    sub d
    ld h, $52
    ld a, $5a
    inc a
    ld e, d
    rst RST_38
    ld [hl], b
    ld d, [hl]
    ld [hl], b
    ld d, [hl]
    db $e4
    sub d
    ret nz

    cp $ff
    ld d, h
    rst RST_38

jr_02c_41f0:
    ld a, d
    rst RST_38
    ld a, a
    cp $7f
    cp $ff
    ld e, [hl]
    db $fc
    ld a, [hl+]
    db $fc
    ld b, [hl]
    db $fc
    ld [bc], a
    db $fc
    rst RST_38
    rst RST_00
    add b
    sbc [hl]
    ld b, $2c
    ld c, $53
    inc b
    rst RST_38
    ld c, h
    jr nz, @-$64

    ld [hl], e
    or h
    ld h, a
    ldh a, [rTAC]
    rst RST_38
    db $e3
    ld bc, $6099
    or h
    ld [hl], b
    ld [$ff20], a
    ld [hl-], a
    inc b
    rla
    adc $2d
    and $6f
    ldh [$fffb], a
    nop

Call_02c_4225:
    rst RST_38
    ldh a, [rNR11]
    xor d
    ld a, a
    ld [hl], h
    ccf
    ld a, [hl]
    cp $f9
    ld [de], a
    ld [bc], a
    db $fc
    ld [hl+], a
    db $fc
    ld d, [hl]
    db $fc
    ld a, [hl]
    push af
    db $fc
    call nz, Call_02c_7f11
    xor c
    nop
    sub b
    rlca
    or c
    ld h, a
    rst RST_38
    db $eb
    ld [hl], e
    ld c, h
    jr nz, jr_02c_429b

    inc b
    ld [hl+], a
    ld c, $ff
    sbc [hl]
    ld b, $c7
    add b
    ret


    ldh [$ff89], a
    and $ff
    inc de
    adc $36
    inc b
    jp z, $9420

    ld [hl], b
    rst RST_38
    cp c
    ld h, b
    db $e3
    ld bc, $3f5c
    ld c, d
    ccf
    rst RST_38
    ld b, h
    ccf
    nop
    ld a, a
    xor b
    ld a, a
    call nc, $ff7f
    cp $ff
    cp $ff
    ld d, a
    rst RST_38
    ld a, [hl+]
    rst RST_38
    ld sp, hl
    ld b, c
    pop af
    ld [de], a
    ldh a, [rNR12]
    nop
    ldh a, [$ffc0]
    rst RST_38
    ldh a, [$fff7]
    ld [hl], l
    rst RST_38
    ld [bc], a
    ld b, l
    dec h
    ld [hl+], a
    rrca
    inc bc
    rst RST_38
    xor a
    rrca
    rst RST_38
    rst RST_38
    xor [hl]
    ld b, l
    dec h
    jr c, jr_02c_42d2

    ld hl, $f3ae
    rst RST_38
    ld d, d

jr_02c_429b:
    ld d, l
    dec h
    sub e
    nop
    ccf
    rst RST_38
    ret nz

    ccf
    ld a, a
    nop
    nop
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    add [hl]
    pop hl
    nop
    rst RST_30
    nop
    nop
    rst RST_38
    ld c, e
    ld [hl+], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    ld a, a
    sbc h
    ld [bc], a
    jp nz, $961e

jr_02c_42bd:
    cp $8e
    ld bc, $7f10
    cp d
    cp $f6
    cp $ea
    cp $d2
    db $eb
    nop
    rst RST_38
    jp nc, Jump_02c_5a1e

    sbc [hl]
    ld e, [hl]
    sbc [hl]

jr_02c_42d2:
    ld e, $de
    rst RST_38
    ld c, $de
    sub [hl]
    ld e, [hl]
    ld c, d
    sbc [hl]
    add [hl]
    ld e, [hl]
    rst RST_20
    jp nz, $a2fe

    pop hl
    inc b
    adc h
    ld hl, $fe96
    jp nz, $1edf

    add d
    ld e, [hl]
    jp nz, $d41e

    daa

jr_02c_42f0:
    adc d
    cp $c9
    sub $eb
    nop
    ld [bc], a
    inc de
    cp d

jr_02c_42f9:
    dec b
    db $10
    call nc, $4221
    sbc [hl]
    rst RST_38
    add d
    ld e, [hl]
    ld b, d
    sbc [hl]
    sub d
    ld e, [hl]
    ld [bc], a
    sbc $87
    ld a, [de]
    sbc $ea
    and a
    jr nz, jr_02c_42bd

    jr nz, @-$13

    nop
    ret nz

    inc hl
    ld d, $ff
    sbc $9e
    ld e, [hl]
    ld c, [hl]
    sbc [hl]
    adc [hl]
    ld e, [hl]
    add $f0
    push de
    inc h
    ldh [rTIMA], a
    ret z

    daa
    call nc, Call_02c_4225
    sbc [hl]
    jp nz, $571e

    ld b, [hl]
    sbc [hl]
    adc [hl]
    pop hl
    jr nz, jr_02c_42f0

    ld bc, $fe10

jr_02c_4335:
    and a
    jr nz, jr_02c_4335

    ld a, [$20e1]
    jp nz, $561e

    sbc [hl]
    ld c, d
    sbc [hl]
    rst RST_38
    ld d, $de
    ld e, d
    sbc [hl]
    ld a, [bc]
    sbc $12
    sbc $57
    add d
    ld e, [hl]
    ld [$20e1], a
    and d
    xor e
    jr nz, @-$7c

    add hl, bc
    jr nc, @+$01

    add d
    cp $81
    ldh [$ffde], a
    sbc $c1
    ret nz

    ccf
    and b
    sbc a
    add b
    add b
    cp a
    nop
    add l
    jr nz, jr_02c_42f9

    jr nz, @-$3f

    ld d, b
    adc a
    nop
    add b
    ccf
    add b
    ld a, d
    ld sp, $0720
    sbc a
    ld b, b
    ccf
    ld c, l
    jr nz, jr_02c_43c4

    inc h
    ld c, e
    ld [hl+], a
    sub [hl]

jr_02c_437f:
    inc [hl]
    sbc b
    scf
    rst RST_38
    rst RST_38
    nop
    cp $ff
    ld de, $11fe
    cp $ff
    inc de
    db $fc
    db $fc
    rst RST_38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    cp a
    ld b, $f8
    ld hl, sp-$02
    ld d, $f8

jr_02c_439b:
    jp nz, $f831

    rst RST_30
    cp $06
    ld hl, sp-$36
    ld sp, $fcfc
    jr jr_02c_439b

    rst RST_38
    dec de
    ldh a, [rNR23]
    ldh a, [$fffe]
    ld hl, sp-$7a
    ld a, b
    xor a
    add [hl]
    ld a, b
    ld b, [hl]
    jr c, jr_02c_43b7

jr_02c_43b7:
    inc c
    ld b, e
    nop
    dec bc
    nop
    db $ed
    jr jr_02c_437f

    dec sp
    inc b
    ld [hl], b
    nop
    inc bc

jr_02c_43c4:
    sub b
    ld a, a
    ld a, a
    rst RST_38
    rst RST_38
    add c
    ld a, a
    add c
    ld a, a
    ld b, c
    ccf
    ccf
    sub a
    ld a, a
    ld d, b
    ccf
    ld [hl+], a
    ld b, c
    ccf
    dec e
    ld b, b
    ld a, [hl+]
    ld b, c
    ccf
    rst RST_38
    ccf
    db $10
    rst RST_18
    pop de
    ld e, $13
    inc e
    inc a
    ld a, a
    ld a, [hl]
    ld b, [hl]
    jr c, jr_02c_4430

    jr c, jr_02c_4439

    ld sp, $4b20
    di
    nop
    inc l
    ldh a, [$ff3d]
    ldh a, [$ff3c]
    ldh [c], a
    rst RST_08
    adc a
    or b
    rst RST_38
    jr nc, @+$43

    ld b, l
    ld c, c
    ld c, c
    add l
    or l
    add e
    rst RST_38
    cp e
    add b
    add b
    ld a, a
    ld a, a
    rst RST_20
    rst RST_20
    dec de
    rst RST_38
    jr jr_02c_4414

    ld b, h
    dec h
    inc h
    ld b, d
    ld e, d

jr_02c_4414:
    add d
    rst RST_38
    cp d
    ld [bc], a
    ld [bc], a
    ld sp, hl
    db $fd
    nop
    nop
    ld a, h
    rst RST_38
    ld h, c
    ld sp, $197d
    ld a, l
    dec c
    ld a, l
    dec b
    rst RST_38
    ld a, l
    ld bc, $3f01
    ld a, a
    ld bc, $7d01

jr_02c_4430:
    cp l
    dec c
    sbc d
    ld b, b
    ld a, l
    ld b, c
    ld a, l
    ld h, c
    sbc e

jr_02c_4439:
    ld b, b
    ld a, l
    rrca
    db $fd
    ld bc, $1d01
    sub a
    ld b, e
    or a
    ld b, c
    sbc l
    ld b, d
    and [hl]
    ld b, e
    rst RST_20
    ld [hl], c
    ld a, l
    add hl, sp
    xor e
    ld b, h
    and [hl]
    ld b, e
    ld sp, $7d7d
    db $ed
    add hl, de
    sub b
    ld hl, $0101
    add $43
    dec e
    ld a, l
    ld a, l
    ld h, a
    dec c
    ld bc, $ab01
    ld bc, $0902
    db $10
    ldh [rP1], a
    dec bc

jr_02c_446a:
    cp a
    ld de, $380f
    ld a, [hl]
    ld d, [hl]
    jr c, jr_02c_4484

    ld d, c
    jr c, jr_02c_44ef

    add hl, sp
    ld b, d
    ld b, [hl]
    rla
    ld d, b
    sub $38
    sub $38
    add $37
    cp a
    nop
    nop
    rst RST_28

jr_02c_4484:
    db $10
    rst RST_28
    db $10
    ld b, $07
    ld sp, $7df7
    ld e, l
    ld sp, $5142
    ld sp, $4d7d
    ld sp, $4a7e
    ld d, c
    jr nc, jr_02c_4515

    ld e, a
    jr nc, @+$61

    jr nc, jr_02c_44c4

    ld b, a
    ldh a, [$ff90]
    dec h
    adc a
    inc sp
    sbc l
    nop
    ld h, c
    ld d, [hl]
    cp $00
    db $fc
    nop
    rst RST_38
    ld [bc], a
    ld [bc], a
    cp a
    jr nc, jr_02c_446a

    ccf
    cp h
    ccf
    rst RST_38
    cp [hl]
    ccf
    cp a
    rra
    xor a
    rra
    and a
    rra
    cp a
    and e
    rra
    ld a, [$0a02]

jr_02c_44c4:
    ldh a, [c]
    sub d
    ld d, e
    adc d
    rst RST_38
    ldh a, [c]
    jp z, $eaf2

    ldh a, [c]
    ld e, a
    ld b, b
    ld d, b
    db $fd
    ld c, a
    and d
    ld d, b
    ld e, a
    ld e, b
    ld e, a
    ld e, h
    ld e, a
    ld e, [hl]
    ld a, a
    ld e, a
    ld e, a
    ld e, a
    db $fd
    nop
    dec b
    ld hl, sp-$4e
    ld e, c
    rst RST_38
    and c
    ccf
    or b
    ccf
    cp b
    rra
    xor h
    rra
    db $fd

jr_02c_44ef:
    and [hl]
    adc l
    ld d, b
    and c
    rra
    and b
    rra
    ld a, [$fff2]
    ld a, [$7afa]
    ld a, [$fa3a]
    ld a, [de]
    ld a, [$0af3]
    ld a, [$519a]
    xor l
    ld d, b
    ld e, a
    ld e, a
    ld c, a
    ld d, a
    rst RST_28
    ld c, a
    ld d, e
    ld c, a
    ld d, c
    and a
    ld d, c
    ld c, a
    add l

jr_02c_4515:
    ld hl, sp-$01
    push bc
    ld hl, sp-$1b
    ld hl, sp-$0b
    ld hl, sp-$03
    ld hl, sp+$7f
    db $fd
    db $fc
    db $fd
    db $fc
    ld a, l
    db $fc
    and b
    call Call_02c_7e50
    nop
    ld h, a
    add b
    nop
    ld l, d
    ldh a, [c]
    ld a, [hl-]
    ldh a, [c]
    ret c

    ld d, c
    rst RST_38
    ld [de], a
    ldh [c], a
    inc b
    xor $08
    add sp, $08
    ld [$56f9], sp
    rst RST_20
    ld d, c
    and e
    ld d, b
    ld c, b
    ld b, a
    jr nz, jr_02c_45be

    db $10
    rst RST_38
    rla
    db $10
    db $10
    dec a
    db $fc
    dec e
    db $fc
    adc l
    rst RST_38
    db $fc
    push bc
    db $fc
    ld h, l
    ld hl, sp+$35
    ld hl, sp+$1d
    rst RST_08
    ld hl, sp+$01
    nop
    ld a, a
    ld c, l
    jr nz, jr_02c_45a2

    ld h, c
    ld a, $3f
    cp l
    ccf
    adc c
    ld d, d
    xor $fa
    ld [$5008], sp
    ld h, c
    ld a, [bc]
    rst RST_38
    add sp, $0e
    add sp, -$76
    add sp, -$3c
    add sp, $77
    rst RST_30
    ld e, a
    db $10
    db $10
    ld h, b
    ld h, c
    ld d, b
    rla
    ld [hl], b
    rla
    sbc a
    ld d, b

jr_02c_4585:
    rla
    jr nz, @+$19

jr_02c_4588:
    cp $4d
    jr nz, @+$72

    ld h, c
    db $fc
    rst RST_30
    db $fc
    ld a, h
    db $fc
    jr nc, @+$63

    and e
    rra
    cp a
    ld bc, $80fd
    ccf
    ld h, d
    nop
    nop
    jr nc, jr_02c_45df

    cp b
    ccf

jr_02c_45a2:
    rst RST_38
    ldh a, [$ffe0]
    or $f4
    ld b, $04
    ld a, [$fffc]
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld d, $e4
    ld d, $e4
    rst RST_38
    ld [$6f07], sp
    jr nz, jr_02c_461a

    jr nz, jr_02c_461b

    ccf
    db $fd

jr_02c_45be:
    ld b, b
    ld e, e
    nop
    ld l, a
    daa
    ld l, e
    daa
    dec c
    db $fc
    ld [hl], a
    db $fd
    inc b
    ld bc, $6273
    nop
    nop
    call nz, Call_02c_50f3
    jp z, $5284

    ccf
    add h
    ld h, e
    ld a, a
    ld l, l
    nop
    sbc h
    ld h, c
    or $04

jr_02c_45df:
    ld a, h
    sub h
    ld h, e
    adc a

jr_02c_45e3:
    jr nz, jr_02c_45e5

jr_02c_45e5:
    ld l, c
    daa

jr_02c_45e7:
    ld l, b
    daa
    and d
    ld h, l
    db $e4
    call z, $f661
    ld d, d
    ld a, h
    or h
    ld h, e
    call c, $9061
    jr nc, jr_02c_4588

    ld l, a
    jr nc, @-$66

    jr c, jr_02c_4585

    dec b
    ld [hl], b
    add h
    inc a
    ld a, [bc]
    ld [hl], b
    ei
    inc c
    ld [bc], a
    db $10
    ld [hl], b
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld [de], a
    rst RST_38
    ld a, [de]
    ld [hl+], a
    ld a, [hl-]
    ld b, d
    ld a, d
    add d
    ldh a, [c]
    ld b, c
    ld a, [$7620]
    ld b, b

jr_02c_461a:
    ld a, [hl+]

jr_02c_461b:
    ld [hl], d
    ld bc, $01f0
    ldh [rSB], a
    rst RST_38
    ret nz

    ld bc, $0580
    inc b
    dec c
    inc c
    add hl, bc
    rst RST_08

jr_02c_462b:
    inc c
    ld de, $801c
    sub l
    nop
    ld b, b
    ld [hl], e
    or b
    jr nc, @-$0f

    adc h
    inc a
    add b
    jr c, jr_02c_464b

    ld [hl], c
    ld [bc], a
    ld [bc], a
    ld a, d
    rst RST_38
    ld a, d
    add d
    ld a, [$7a02]
    ld [bc], a
    ld a, [de]
    ld [bc], a
    db $fd
    ld a, [bc]
    ld a, [hl+]

jr_02c_464b:
    ld [hl], e
    ld b, h
    ld b, h
    ld e, b
    ld e, h
    ld b, b

jr_02c_4651:
    ld e, b
    ld a, [hl]
    ld l, d
    ld [hl], b
    ld d, b
    ld hl, $013c
    inc c
    ld bc, $60b3
    ld e, [hl]
    halt
    ld [hl], l
    add b

jr_02c_4661:
    jr c, jr_02c_45e3

    jr nc, jr_02c_45e7

    ld [hl], b
    jr nz, @-$78

    ld [hl], b
    cp $41
    ld [hl], d
    add d
    add d
    add d
    jp nz, $e282

    add d
    rst RST_38
    ldh a, [c]
    ld d, d
    ld h, d
    ld b, h
    ld l, [hl]
    ld c, b
    ld l, b
    ld [$08e7], sp
    ld b, b
    ld d, b
    and b
    ld [hl], b
    ld a, [hl+]

jr_02c_4683:
    ld [hl], b
    ld c, b
    ld b, b
    jr nz, jr_02c_4683

    ld [hl], b
    db $10
    xor h
    ld [hl], b
    ld bc, $6100
    ld h, b

jr_02c_4690:
    add hl, de
    ld a, a
    ld a, b
    dec b
    inc a
    ld bc, $013c
    inc e
    cp d
    ld [hl], b
    cp $3f
    ld h, [hl]
    ld [$0838], sp
    jr c, jr_02c_462b

    jr @-$7e

    db $fd
    nop
    ld d, b
    ld h, l
    ld a, [hl+]
    jr z, jr_02c_46fa

    ld l, b
    adc d
    add sp, -$05
    inc b
    ld [$6560], sp
    ld d, d
    ld d, $71
    rla
    ld d, b
    rst RST_20
    ld d, $20
    db $10
    ld [hl], b
    ld h, l
    ld a, e
    ld sp, $2021
    ld de, $3001
    dec e
    add b
    dec c
    rst RST_38
    adc b
    jr jr_02c_4651

    inc a
    add b
    nop
    ld a, a
    rst RST_38
    db $fd
    nop
    ld [$0800], sp
    jr c, jr_02c_4661

    jr c, jr_02c_46db

jr_02c_46db:
    nop
    rst RST_38
    ld b, $04
    ld b, $04
    ld a, [$02fc]
    nop
    rst RST_38
    ld [bc], a
    nop
    ld b, [hl]
    ld [hl], h
    add [hl]
    db $f4
    inc b
    ld b, $ff
    ld l, b
    ld l, $60
    jr nz, jr_02c_4753

    ccf
    ld b, b
    nop
    rst RST_38
    ld b, b
    nop

jr_02c_46fa:
    ld h, d
    inc hl
    ld h, d
    inc hl
    add hl, bc
    jr c, @-$1f

    dec b
    inc a
    ld bc, $fe00
    rlca
    ld [bc], a
    nop
    ret nz

    ccf
    ld bc, $8880
    jr jr_02c_4690

    nop
    ld b, d
    ld bc, $0106
    cp l
    ld a, a
    ld [$8600], sp
    db $e4
    ld b, [hl]
    ld b, h
    ld [de], a
    dec b
    cp $7e
    ld [$6000], sp
    ld hl, $2c6c
    ld h, b
    jr z, jr_02c_474e

    inc bc
    ld a, [hl]
    ld c, h
    ld bc, $0c0d
    ld de, $091c
    inc c
    inc [hl]
    inc bc
    ld a, $5c
    ld bc, $0000
    rst RST_38
    rst RST_38
    nop
    scf
    inc bc
    adc d
    ld c, $d7
    ld a, a
    nop
    ld a, [hl]
    sub c
    ld a, [bc]
    add b
    ld [$0100], sp
    nop
    rst RST_38

jr_02c_474e:
    ld a, b
    rlca
    ld [hl], b
    rrca
    rrca

jr_02c_4753:
    ld [hl], b
    rra
    ld h, b
    inc bc
    ccf
    ld b, b
    ld c, h
    ld bc, $0007
    add e
    nop
    add e
    ld bc, $0383
    dec e
    nop
    ld l, e
    xor e
    cp $00
    nop
    dec bc
    rst RST_38
    db $10
    inc c
    cp $20
    inc c
    rst RST_38
    db $ed
    nop
    jr nc, @+$0d

    ldh [rIF], a
    ld b, b
    inc bc
    add sp, $0f
    push hl
    di
    rrca
    ld [$0049], a
    ld sp, $8805
    cp $55
    db $fc
    rst RST_28
    xor e
    ld hl, sp+$57
    ldh a, [$ff31]
    nop
    ldh a, [rIF]
    ret nz

    db $fd
    ld a, $01
    nop
    pop af
    nop
    jp z, $b000

    ld bc, $e7ff
    nop
    pop hl
    ld [$06e8], sp
    db $e4
    nop
    rst RST_38
    ldh [c], a
    ld [$0ee0], sp
    ldh [rSC], a
    db $fc
    nop
    rst RST_30
    db $eb
    rrca
    rst RST_28
    add c
    ld a, [bc]
    or a
    ldh a, [$ffee]
    ldh [$ff7f], a
    xor $e0
    db $ed
    ldh [$ffdd], a
    ret nz

    db $db
    sbc c
    ld [bc], a
    rst RST_38
    ld [hl], l
    dec b
    push hl
    dec d
    push de
    dec h
    push hl
    dec d
    rst RST_38
    call nz, $a334
    ld e, b
    ld b, c
    cp b
    add [hl]
    ld h, [hl]
    rst RST_38
    rst RST_20
    nop
    add a
    db $10
    rla
    ld h, b
    daa
    nop
    rst RST_38
    ld b, a
    db $10
    rlca
    ld [hl], b
    rlca
    ld b, b
    ccf
    nop
    sbc $70
    nop
    nop
    ldh [rP1], a
    and $c5
    ld [bc], a
    db $e4
    ld [bc], a
    ei
    db $e4
    ld [bc], a
    add d
    dec bc
    rst RST_28
    rrca
    cp e
    add b
    cp e
    rst RST_38
    add b
    or [hl]
    add c
    or h
    add e
    or h
    add d
    or b
    rst RST_38
    add [hl]
    or c
    add l
    or b
    add l
    inc e
    call c, $ff22
    or b
    ld c, [hl]
    ld h, b
    ld de, $524e
    rst RST_08
    and l
    rst RST_38
    sbc a
    ld a, [hl+]
    sbc a
    ld b, a
    ccf
    jr c, @+$3d

    ld b, h
    rst RST_38
    dec c
    ld [hl], d
    ld b, $88
    ld [hl], d
    ld a, [hl+]
    di
    ld d, l
    rst RST_38
    ld sp, hl
    and h
    ld sp, hl
    ldh a, [c]
    db $fc
    ld e, l
    add c
    dec e
    ei
    pop bc
    dec l
    inc de
    ld de, $2d41
    ld b, c
    xor l
    add c
    ld a, e
    dec c
    and c
    nop
    add hl, bc
    ld c, $00
    nop
    ldh a, [rNR10]
    dec bc
    ld a, e
    nop
    nop
    jr nz, jr_02c_4856

    nop
    nop
    ldh [rTMA], a
    ld d, b
    add hl, de
    di
    jr nz, jr_02c_485a

    ret nc

    dec c

jr_02c_4856:
    db $ec
    ld bc, $83b0

jr_02c_485a:
    or b
    add d
    ld c, $76
    dec d
    nop
    rrca
    nop
    dec l
    db $10
    dec b
    add hl, bc
    add d
    db $10
    ld sp, $3c08
    sub b
    inc de
    nop
    rlca
    nop
    ret nz

    nop
    scf
    add d
    db $10
    add $03
    ld a, $c6
    ld bc, $0000
    rst RST_30
    nop
    nop
    ld b, c
    inc b
    ld b, b
    nop
    rst RST_38

jr_02c_4884:
    db $10
    ld [bc], a
    nop
    ldh [c], a
    nop
    jr @-$7c

    nop
    rst RST_30
    add b
    jr nc, @-$7c

    reti


    ld [de], a
    ld e, e
    ccf
    inc bc
    ld bc, $01ff
    ld a, l
    sub c
    dec b
    ld bc, $03fd
    ld bc, $8bff
    ld a, a
    nop
    nop
    ld [$c0fc], a
    add b
    rst RST_38
    add b
    cp [hl]
    adc b
    and b
    add b
    cp a
    ret nz

    add b
    ld bc, $4de9
    db $10
    ld bc, $2f0c
    ld c, $00
    dec c
    or [hl]
    jr jr_02c_4884

    ld [bc], a
    add $17
    ldh a, [rSTAT]
    inc bc
    jp c, Jump_02c_5213

    dec hl
    ret c

    db $10
    ld [hl-], a
    add h
    ld [hl], $81
    rst RST_38
    dec [hl]
    add b
    jr nc, jr_02c_485a

    scf
    rst RST_38
    rst RST_38
    add c
    rra
    nop
    nop
    add c
    ld bc, $7781
    cpl
    add h

jr_02c_48e0:
    add hl, hl

jr_02c_48e1:
    ld c, [hl]
    db $10
    ld a, a
    ldh [rNR32], a
    dec e
    ldh [$ffe1], a
    ld a, [hl-]
    add hl, sp
    ld bc, $7f06
    db $fc
    inc bc
    di
    inc c
    rst RST_08
    jr nc, jr_02c_4934

    sbc b
    ld d, $f0
    rrca
    ld bc, $18a3
    cp b
    dec h
    or [hl]
    jr jr_02c_48e1

    rrca
    rst RST_28
    nop
    rst RST_38
    rst RST_28
    nop
    ldh [rNR21], a
    add $20
    sub b
    ld c, a
    rst RST_38
    cpl
    sbc [hl]
    ld e, [hl]
    ld bc, $0781
    rlca
    ld hl, sp-$07
    ld hl, sp+$41
    ld bc, $003f
    rst RST_08
    ccf
    jr nc, jr_02c_48e0

    ldh a, [rIE]
    nop
    ret nz

    rrca
    rrca
    nop
    or b
    inc bc
    and e
    rst RST_38
    inc de
    dec bc
    ldh [rNR10], a
    ld c, $ee
    ld bc, $ff01

jr_02c_4934:
    ld a, [hl]
    ld a, [hl]
    add b
    add b
    jp nz, Jump_02c_76c1

    ld [hl], c
    rst RST_38
    dec b
    ld [bc], a
    push af
    ldh a, [c]
    dec b
    ld a, [bc]
    push hl
    ld [$05ff], a
    ld a, [bc]
    dec b
    ld a, [bc]
    rst RST_18
    ldh [$ffef], a
    rra
    rst RST_38
    cp l
    ld a, [hl]
    ld a, [hl]
    add c
    ei
    rlca
    or $f8

jr_02c_4957:
    db $fd
    sbc $21
    jr nc, jr_02c_49cb

    ld h, b
    add b
    add b
    nop
    rrca
    ld a, [$3032]
    ld a, a
    sub c
    ld [de], a
    ld a, a
    ldh [c], a
    db $ed
    ld a, [bc]
    dec b
    ei
    ld l, d
    add l
    dec e
    jr nc, jr_02c_4957

    ld [$0ae5], a
    dec b
    rst RST_38
    ld [$c005], a
    inc a
    nop
    ldh a, [rSB]
    ret nz

    rst RST_38
    ld a, $1c
    ldh a, [$ffe0]
    ret nz

    add b
    ccf
    rra
    ld a, a
    rst RST_38
    rst RST_38
    ccf
    ret nz

    rst RST_18
    ccf
    ccf
    inc a
    db $10
    rst RST_38
    rst RST_38
    nop
    ei
    rlca
    rst RST_30
    ld hl, sp-$41
    ret nz

    rst RST_38
    ldh a, [rIF]
    rst RST_28
    ldh a, [$ff7f]
    add b
    cp a
    ld a, a
    rst RST_38
    ld a, e
    db $fc
    rst RST_30
    ld hl, sp-$05
    rlca

jr_02c_49ab:
    rst RST_28
    rra
    cp $20
    ld sp, $7fbe
    ld a, a
    add b
    cp $01
    db $fc
    rst RST_38
    ld [bc], a
    ei
    db $fc
    rst RST_28
    ldh a, [$ff3f]
    ccf
    ret nz

    rst RST_20
    ret nz

    inc bc
    inc bc
    ld [hl], $34
    sub c
    ld de, $0870
    ld h, a

jr_02c_49cb:
    di
    db $10
    ld c, a
    or a
    inc h
    dec a
    db $10
    ld a, [bc]
    dec b
    ld a, [hl+]
    push bc
    ld h, e
    ld a, [hl+]
    push bc
    ld b, [hl]
    inc [hl]
    ld c, e
    jr nc, jr_02c_4a19

    ld de, $01fe
    ld l, d
    ld sp, $dfdf
    ldh [$ff7f], a
    add b
    rst RST_38
    add l
    jr nc, jr_02c_49ab

    ld a, a
    cp a
    cp $ff
    ei
    db $fc
    db $fd
    inc bc

jr_02c_49f4:
    ld a, h
    inc sp
    rst RST_18
    ld [hl], a
    ccf
    cp a
    ret nz

    jr nc, jr_02c_49ff

    rst RST_38
    db $fd

jr_02c_49ff:
    cp $d6
    ld sp, $20e0
    ld sp, $30e0
    add l
    jr nc, jr_02c_4a3a

    ld bc, $3032
    ld l, a
    rrca
    ld h, b
    rst RST_38
    inc c
    ld h, b
    ld a, [hl+]
    ld b, c
    inc h
    ld b, e
    ld h, h
    inc bc

jr_02c_4a19:
    sbc a
    ld l, b
    rlca
    nop
    nop
    ld bc, $002f
    sub e
    jr jr_02c_4a24

jr_02c_4a24:
    sub c
    ld [$304d], a
    or b
    inc sp
    or d
    inc sp
    cp $e9
    jr nc, jr_02c_49f4

    ld [hl-], a
    rrca
    adc a
    rst RST_18
    ldh [$ffbf], a
    ret nz

    ld hl, sp+$33
    scf

jr_02c_4a3a:
    dec d
    jp nz, $fa31

    ccf
    rlca
    db $ec
    ld e, $de
    ldh [$ffbe], a
    dec a
    ld b, b
    or $30
    ld hl, sp+$3b
    ld de, $405c
    sub b
    ld de, $7314
    inc d
    ld [hl], b
    inc d
    rlca
    ld [hl], c
    inc d
    ld [hl], c
    xor b
    dec [hl]
    ld [hl], h
    ld b, a
    ld [hl], d
    ld c, e
    cp b
    dec [hl]
    cp h
    jr nc, @+$01

    dec h
    ld c, d
    and l
    jp z, Jump_02c_50a5

    and a
    ld d, a
    rst RST_38
    and a
    ld d, b
    and a
    ld d, b
    and b
    ld d, h
    and e
    ld d, h
    sbc a
    and b
    ld d, h
    and c
    ld d, h
    and c
    ld [hl], b
    ld c, a
    or d
    ld c, h
    cp $fe
    xor d
    inc sp
    ld [$08ee], sp
    ld l, $48
    xor [hl]
    ret z

    ld sp, $42ae
    ld b, [hl]
    ld h, l
    ld [hl-], a
    ld l, b
    inc sp
    rst RST_28
    ldh a, [$ff3a]
    ld b, c
    db $f4
    ld [hl-], a
    ld [hl], $e7
    ld b, [hl]
    cp $01
    ld [$f731], a
    ld hl, sp+$6c
    ld b, c
    db $10
    ld e, c
    ld hl, $9dca
    ld b, b
    jr nz, jr_02c_4b04

    xor h
    ld b, c
    jr nc, jr_02c_4b08

    ret z

    db $dd
    ld b, b
    ld b, b
    ld e, c
    call nz, $5508
    ldh a, [$ff33]
    ccf
    ld e, h
    ld b, d
    jr nc, jr_02c_4ac2

    dec e
    ld bc, $efff

jr_02c_4ac2:
    rra
    ldh a, [$fff7]
    rrca
    rst RST_28
    rra
    ldh a, [c]
    ld [hl-], a
    dec a
    ld b, d
    db $10
    ld d, l
    rst RST_38
    dec d
    ld [hl], b
    inc d
    ld [hl], e
    db $10
    ld [hl], b
    db $10
    ld [hl], a
    rst RST_08
    nop
    ld a, a
    ccf
    ld b, b
    cp b
    inc h
    or [hl]
    ld [hl+], a
    ld [bc], a
    db $fc
    ld c, b
    add $26
    or [hl]
    ld [hl+], a
    jr nz, jr_02c_4b3f

    dec h
    sub h
    ld b, e
    jr nc, jr_02c_4b43

    ld d, l
    and a
    ld b, b
    adc a
    ld d, b
    and b
    ld d, b
    and a
    sub b
    ld e, a
    and d
    ld e, e
    ld b, b
    ld d, [hl]
    ld l, $fe
    ret c

    ld b, b
    ld c, $08
    xor $00

jr_02c_4b04:
    ld a, a
    nop
    ld a, a
    rst RST_18

jr_02c_4b08:
    rra
    ld h, b
    rra
    ld l, a
    jr jr_02c_4b15

    ld h, b
    rra
    ld l, b
    rst RST_38
    db $10
    ld h, b
    nop

jr_02c_4b15:
    cp $02
    db $fc
    ld a, [$ff04]
    ldh a, [c]
    db $f4
    ld [de], a
    db $e4
    ld [de], a
    db $e4
    ldh a, [c]
    inc b
    ld l, e
    ld [bc], a
    inc b
    rrca
    nop
    nop
    ld [hl], h
    ld sp, $0ff7
    ret c

    jr nc, @+$01

    db $fc
    rst RST_38
    rst RST_38
    ld e, a
    ccf
    ld [$1b4d], sp
    rst RST_38
    ld d, d
    dec bc
    ld c, d
    add hl, de
    ld d, b
    ld a, [bc]

jr_02c_4b3f:
    ld c, d
    ccf
    rst RST_38
    ld a, a

jr_02c_4b43:
    dec a
    ld a, l
    rst RST_38
    rst RST_38
    sub d
    ld [hl], $6d
    rst RST_38
    ld c, c
    ld l, l
    ld l, l
    inc h
    ld c, b
    sub l
    sub c
    rst RST_38
    rst RST_38
    rst RST_38
    ld [hl], l
    ld [hl], l
    db $fd
    cp $42
    pop de
    or a
    ld a, a
    daa
    or a
    inc sp
    sub a
    daa
    ld d, e
    ld b, c
    ld l, $60
    rst RST_38
    ld e, a
    dec sp
    ld a, d
    dec sp
    ld a, e
    dec sp
    ld a, d
    dec a
    rst RST_38
    ld a, l
    ccf
    ld a, a
    ccf
    ld a, a
    inc a
    ld a, h
    ld e, a
    rst RST_38
    ccf
    ld l, h
    ld l, c
    ld l, h
    ld l, c
    ld h, h
    ld h, c
    inc e
    cp c
    add hl, bc
    ld e, $01
    ld a, $11
    rra
    rra
    ld e, a
    add c
    ld h, c
    ld e, a
    ld a, a
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    ld a, [hl]
    ld a, a
    ld a, l
    ld c, l
    db $10
    ld bc, $927f
    ld l, b
    sub d
    ld [de], a
    inc sp
    ld a, [de]
    rst RST_38
    dec e
    nop
    add b
    ld c, e
    nop
    rst RST_38
    nop
    inc c
    nop
    inc c
    ld [$0101], sp
    cp $20
    inc c
    sub c
    nop
    inc l
    ld [$0121], sp
    ld bc, $7f09
    ld c, h
    ld b, $01
    dec b
    rra
    ld e, a
    ldh [$ffe1], a
    ld e, $fe
    ld bc, $015d
    ld bc, $012f
    cpl
    add b
    nop
    nop
    ld a, [hl]
    ld [hl], b
    dec bc
    add b
    ld [hl], c
    inc c
    ld [hl], b
    nop
    ld a, [$0c23]
    rst RST_38
    ld l, l
    nop
    cp a
    ld h, $bf
    add hl, de
    add b
    ld [hl], d
    and e
    ld bc, $1129
    ld bc, $0011
    ld d, d
    rst RST_38
    xor c
    stop
    rst RST_10
    nop
    ld a, [hl]
    jr c, jr_02c_4c03

    ld bc, $c301
    ld b, $fd
    jr nc, jr_02c_4c6b

    and h
    nop
    ld [hl], $a4
    nop

jr_02c_4bfe:
    xor c
    nop
    cp a
    dec hl
    add b

jr_02c_4c03:
    ld c, $02
    db $db
    ld a, [hl]
    ld l, [hl]
    cp h
    inc bc
    ld a, [hl]
    ld l, h
    ret nz

    inc bc
    db $fd
    ld l, h
    ld a, [de]
    call z, $9400
    call z, $6400
    ld bc, $010e
    ccf
    dec bc
    dec d
    add hl, bc
    ldh a, [rSB]
    ld [bc], a
    and d
    ld bc, $1922
    rrca
    ld bc, $123a
    ld a, [hl+]
    ld a, [hl+]
    cp a
    inc hl
    inc hl
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl-]
    ld [de], a
    or b
    inc bc
    cp e
    rst RST_38
    cp c
    and d

jr_02c_4c38:
    and d
    or d
    or d
    and d
    and d
    cp e
    db $fd
    cp c
    or b
    inc bc
    xor c
    add hl, hl
    xor c
    xor c
    add hl, hl
    jr z, jr_02c_4c38

    cp b
    or b
    xor b
    jr z, jr_02c_4bfe

    inc bc
    ld e, l
    ld c, c
    ld d, l
    ld a, a
    ld d, l
    push de
    sub l
    sub l
    sub l
    sbc l
    adc c
    or b
    inc bc
    rst RST_28
    ld e, h
    ld e, b
    ld d, h
    ld d, h
    ld [hl], h
    ld de, $d4d4
    nop
    sbc a
    nop
    add e
    inc bc
    add d

jr_02c_4c6b:
    ld [bc], a
    add b
    inc de
    call c, $bb03
    rst RST_38
    ld de, $aaaa
    xor d
    ld a, [hl+]
    cp d
    cp d
    xor e
    db $fc
    xor a
    inc b
    sub b
    ld de, $2222
    xor e
    xor e
    cp d
    sbc d
    cp $3e
    inc d
    inc de
    xor d
    xor d
    and e
    and e
    xor d
    xor d
    ei
    cp e
    sbc e
    or b
    inc bc
    sub l
    sub l
    dec d
    dec d
    dec e
    rst RST_18
    dec e
    dec d
    dec d
    sub l
    sub l
    or b
    inc bc
    db $dd
    reti


    rst RST_38
    dec d
    dec d
    sbc l
    sbc c
    dec d

jr_02c_4ca9:
    dec d
    push de
    push de
    cp $b0
    inc bc
    pop bc
    ret nz

    ld bc, $8100
    add b
    ld bc, $dffc
    ld [de], a
    rrca
    ld bc, $0c72
    ld a, [hl]
    inc c
    ld l, h
    ld e, $cf
    nop
    nop
    ld l, h
    ld e, $f8
    rra
    nop
    inc hl
    inc l
    inc e
    jp Jump_000_0240


    db $10
    ld hl, $01dc
    rra
    db $10
    ld d, c
    dec bc
    rst RST_38
    nop
    ld b, c
    db $fc
    jr nc, jr_02c_4cff

    ld hl, $4107
    dec bc
    scf
    rlca
    ld hl, $fc01
    cp d
    ld bc, $0cfc
    inc b
    add hl, hl
    rlca
    rst RST_38
    add c
    nop
    ld b, d
    inc a
    nop
    ld a, a
    ld a, $00
    ld a, a
    ld [hl], a
    cp e
    rst RST_38
    inc sp
    db $10
    ld b, $fc
    ld c, l

jr_02c_4cff:
    dec b
    ccf
    dec b
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$ff1f], a
    rst RST_38
    ret nz

    inc sp
    ld c, h
    ld c, l
    ld [hl-], a
    ld d, d
    inc l
    ld [hl-], a
    ld a, l
    inc c
    push af
    stop
    ld a, [de]
    dec sp
    ld de, $5233
    ld b, $ff
    ccf

jr_02c_4d1e:
    ret nz

    rrca
    ld [hl], b
    rlca
    ld a, b
    inc bc

jr_02c_4d24:
    inc a
    rst RST_38
    add b
    jr nc, jr_02c_4ca9

    ld a, b
    nop
    ld e, h
    nop
    jr jr_02c_4d1e

    nop
    stop
    jr nc, jr_02c_4cff

    jr nz, jr_02c_4d87

    ld de, $ff01
    add hl, de
    add hl, bc
    dec de
    ld [$080b], sp
    add hl, bc
    nop
    db $fd
    ld [$01ba], sp
    ld c, b
    inc bc
    inc e
    ld bc, $011c
    ld [hl], a
    ld c, $00
    ld [bc], a
    jp c, $1820

    nop
    ld c, b
    add a
    ld hl, $5e9c
    ld [hl+], a
    sbc l
    jr nz, jr_02c_4d9b

    add b
    ld a, a
    rra
    db $10
    stop
    inc bc
    ld a, a
    inc bc
    ld bc, $1c03
    ldh [rTAC], a
    ld hl, sp+$1e
    db $10
    cp $0f
    nop
    ret nz

    ret nz

    ret nz

    ldh [$ff80], a
    and b
    ld e, $f7
    add b
    daa
    jr jr_02c_4d88

    inc sp
    ld h, b
    ld h, b
    ldh a, [$fff0]
    ccf
    jr nz, jr_02c_4d24

    inc c
    inc hl
    sbc b

jr_02c_4d87:
    rlca

jr_02c_4d88:
    inc c
    ld [hl-], a
    ld e, l
    inc hl
    ld a, a
    nop
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $1ffe
    db $10
    ld a, [hl]
    cp $22
    cpl
    ld b, b

jr_02c_4d9b:
    ld b, b
    ld l, a
    ld b, b
    ld h, b
    ld c, b
    jr nc, @-$1d

    ld l, b
    ld b, b
    inc sp
    rrca
    nop
    ld d, d
    inc [hl]
    ld b, b
    inc sp

jr_02c_4dab:
    sbc c
    jr nz, jr_02c_4dd2

    ld a, a
    cp c
    inc h
    jr c, jr_02c_4dd7

    cp c
    and h
    cp c
    ld b, b
    inc sp
    rst RST_38
    db $f4
    nop
    ld [bc], a
    db $f4
    ld [bc], a
    inc b
    ld [bc], a
    db $f4
    ld [hl], e
    ld [de], a
    inc d
    ld a, $31
    db $fd
    inc bc
    ld hl, sp+$00
    rlca
    adc e

jr_02c_4dcc:
    jr nc, jr_02c_4e41

    ld b, b
    ld l, e
    sub b
    dec sp

jr_02c_4dd2:
    inc e
    inc de
    rst RST_38
    ld a, a
    ret nz

jr_02c_4dd7:
    and a
    inc [hl]
    rst RST_38

jr_02c_4dda:
    nop
    cp $02
    db $fc
    ld a, [$f204]
    db $f4
    adc e
    ld [de], a
    db $e4
    cp b
    inc sp
    and h
    ld l, l
    jr nc, jr_02c_4dab

    add hl, sp
    ld c, h
    ld bc, $4f1f
    ld h, b
    rra
    ld l, a
    jr jr_02c_4dcc

    inc [hl]
    inc e
    inc de
    cp $b1
    jr nc, jr_02c_4dda

    add sp, $33
    ld [de], a
    call nc, $9452
    ldh a, [c]
    add hl, sp
    rst RST_38
    rra
    adc a
    rst RST_38
    ldh [rIE], a
    add b
    dec e
    ld de, $4208
    adc a
    jr c, jr_02c_4e53

    rst RST_18
    ld l, d
    ld b, b
    ld l, b
    ld b, a
    ld l, a
    xor b
    ld sp, $40ff
    or h
    ld l, [hl]
    nop
    ld d, c
    inc sp
    rst RST_38
    cp b
    ld sp, $04f2
    ld a, d
    jr nc, @-$02

    ld a, [$226f]
    rst RST_38
    ret c

    ld sp, $681f
    db $10
    ld h, b
    nop
    rlca
    ld a, a
    ccf
    ld b, b
    ld e, a
    ld sp, $31e8
    cpl
    ld bc, $4528
    ldh a, [c]

jr_02c_4e41:
    scf
    cp a
    jp nc, Jump_000_1214

    inc d
    ldh a, [c]
    db $f4
    ldh a, [c]
    inc hl
    db $fc
    rst RST_38
    db $fc
    db $fc
    db $fd
    ei
    ld hl, sp-$08

jr_02c_4e53:
    ld hl, sp-$04
    dec c
    db $fc
    ld c, d
    ld sp, $604f
    ld e, a
    ld [hl-], a
    cp $23
    daa
    ld b, [hl]
    ld b, b
    inc sp
    ld h, d
    ld l, d
    ld sp, $bfa5
    ld bc, $343f
    ld a, d
    ld sp, $04f2
    add [hl]
    ld c, b
    add h
    add hl, de
    dec c
    rra
    dec b
    ld a, [hl]
    adc d
    ld h, $3d
    add hl, hl

jr_02c_4e7b:
    and d
    ld [hl-], a
    ld c, $01
    ld a, a
    cp a
    nop
    ccf
    nop
    ret nz

    nop
    ldh [rNR10], a
    nop
    or [hl]
    call $02cf
    ld e, a
    or [hl]
    rst RST_08
    cp b
    ld c, b
    inc hl
    inc c
    ld a, a
    rst RST_38
    rst RST_38
    xor a
    ld h, b
    ret nc

    jr nc, jr_02c_4e7b

    ccf
    db $eb
    jr @+$01

    db $f4
    inc c
    ei
    rlca
    rrca
    nop
    rst RST_30
    ldh a, [rIE]
    dec bc
    add sp, $0b
    ld [$fcfd], sp
    ld [bc], a
    ld a, [$02fb]
    ld [bc], a
    cp $21
    cp $80
    ld a, [hl]
    pop bc
    cp [hl]
    rst RST_38
    ld h, c
    ld e, [hl]
    add hl, sp
    ld [hl], $0d
    ld a, [bc]
    rlca
    ld b, l
    ei
    inc bc
    db $fc
    ld e, a
    ld d, b
    inc a
    inc bc
    call c, $e7c3
    sbc a
    ldh [$ffe8], a
    ldh a, [$ffeb]
    rst RST_30
    add b
    inc [hl]
    ccf
    inc [hl]
    dec a
    rst RST_28
    jp $ffff


    ld a, [hl]
    ld a, b
    jr nz, jr_02c_4f3f

    ld b, b
    ld h, [hl]
    ld a, a
    ld h, b
    ld [hl], d
    ld a, b
    ld [hl], b
    ld a, h
    ldh a, [$fffc]
    ld e, [hl]
    ld b, b
    rst RST_38
    ld bc, $0059
    ld c, h
    nop
    ld b, [hl]
    nop
    ld b, d
    xor $ed
    jr nz, jr_02c_4f46

    nop
    ld c, d
    ld e, a
    inc [hl]
    xor a
    ld b, b
    ld b, b
    scf
    rst RST_28
    ld b, b
    ldh [$ffa8], a
    ld d, b
    add sp, $48
    sbc l
    ld d, b
    or d
    ld d, l
    ccf
    ld c, h
    nop
    ld b, $00
    ld b, b
    db $eb
    ret nz

    ld e, e
    ldh [$ff34], a
    rst RST_30
    ld a, [hl]
    jp nz, $d87c

    ld d, e
    ld d, d
    nop
    jr z, jr_02c_4f22

jr_02c_4f22:
    rst RST_38
    adc h
    nop
    sub $00
    jp z, $e400

    nop
    ld sp, hl
    ldh a, [c]
    adc c
    jr nc, @-$3e

    ld d, a
    ld b, c
    ld [$e840], a
    ld b, a
    dec d
    rst RST_28
    ret c

    ld d, c
    cp $25
    ld c, b
    ld hl, sp+$34

jr_02c_4f3f:
    ld [hl+], a
    and c
    inc sp
    rrca
    ld bc, $aafc

jr_02c_4f46:
    ld d, c
    add h
    ld c, c
    rst RST_38
    ret nz

    rst RST_38
    ccf
    rst RST_38
    rrca
    rst RST_20
    rst RST_38
    ld bc, $3dff
    jr nc, jr_02c_4f88

    ld h, b
    ret nz

    ldh a, [$fff0]
    or a
    cp $fe
    ld a, a
    ld c, l
    ld hl, $c080
    stop
    ccf
    rst RST_18
    ccf
    rst RST_38
    inc bc
    rst RST_38
    rlca
    ld d, d
    ld h, b
    ld hl, sp-$01
    add l
    ldh a, [$ff58]
    ld h, b
    ldh [rP1], a
    ld b, b
    add hl, bc
    ld b, h
    add hl, de
    dec d
    ld [bc], a
    ld b, b
    ldh [rLY], a
    jr nc, jr_02c_4fe2

    ld [hl], a
    ld h, e
    ret nz

    ld l, b
    ld h, [hl]
    ld h, c
    ld h, l
    ld h, c

jr_02c_4f88:
    ld l, l
    ld hl, sp+$56
    ld h, b
    ld b, l
    db $fc
    ld d, b
    ld h, b
    inc bc
    ld [hl], $60
    scf
    ld h, c
    add c
    ld l, l
    ld a, a
    ret nz

    ld h, b
    adc d
    ld a, l
    ld h, c
    ldh [$ff58], a
    ld h, d
    rrca
    and h
    ld h, b
    ld h, e
    ld l, e
    nop
    ld bc, $1080
    ret nz

    ld h, h
    ld bc, $eb41
    ld h, c
    ld d, l
    ld h, c
    db $fc
    jr c, jr_02c_5016

    adc a
    ld l, a
    db $e3
    ld h, c
    ld a, [hl+]
    ld sp, $0763
    ld d, b
    ld h, b
    db $fc
    nop
    ld b, b
    rrca
    inc e
    ld [hl], d
    ld h, c
    ld h, l
    dec b
    rra
    ld a, d
    ld h, h
    add b
    inc b
    ld c, b
    ld h, l
    ld l, c
    scf
    ld [hl], e
    db $fd
    jr nz, jr_02c_5036

    ld l, h
    ld b, b
    adc c
    ld l, a
    ld l, e
    ld h, e
    add hl, sp
    ld h, c
    push de
    ld l, l
    rlca
    ld b, e
    pop bc
    ld h, c

jr_02c_4fe2:
    add b
    jr jr_02c_505b

    inc b
    add c
    ld [hl], l
    ld h, c
    ld l, l
    ldh a, [$ffa2]
    ld h, h
    xor e
    ld h, c
    adc l
    ld a, e
    ld h, e
    ld h, e
    db $eb
    ld h, c
    ld bc, $c00f
    ld [hl], d
    ei
    ld l, a
    adc d
    ld b, b
    ld de, $0280
    ld [bc], a
    ld [bc], a
    rst RST_38
    rlca
    ld [bc], a
    nop
    ld [$e0c0], sp
    rra
    rlca
    inc bc
    ld bc, $81fe
    ld b, d
    inc h
    jr jr_02c_502b

    inc h
    ld b, d
    add c

jr_02c_5016:
    dec e
    nop
    add b
    rst RST_38
    add hl, sp
    ld b, [hl]
    ld l, l
    ld a, [bc]
    ld b, h
    ld [de], a
    ld b, h
    ld [bc], a
    rst RST_38
    ld l, l
    ld [bc], a
    dec a
    ld b, d
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld b, [hl]

jr_02c_502b:
    rst RST_38
    jp nc, Jump_02c_5236

    halt
    ld [de], a
    or [hl]
    ld [de], a
    ld [hl], $ff
    ld d, d

jr_02c_5036:
    ld [hl], $d2
    ld [hl], $92
    halt
    jp nc, $fb36

    nop
    ld a, a
    jr nz, jr_02c_5043

    db $10

jr_02c_5043:
    ld l, a
    ld [$1077], sp
    ld a, a
    ld l, a
    jr c, jr_02c_5092

    jr jr_02c_50b4

    ld [de], a
    or $30
    ld bc, $92e3
    halt
    inc [hl]
    ld bc, $013a
    db $10
    add hl, bc
    sub [hl]

jr_02c_505b:
    ld [hl], d
    jp nc, Jump_000_32df

    jr c, jr_02c_50a8

    db $10
    ld l, a
    ld d, d
    dec b
    jr nc, jr_02c_50b6

    rst RST_38
    or $09
    sub l
    halt
    ld e, c
    or h
    sub d
    ld a, l
    rst RST_38
    sub b
    ld a, e
    sub h
    ld a, e
    ret nc

    scf
    ret c

    scf
    rst RST_38
    ldh a, [rIF]
    ld e, h
    ld l, d
    inc h
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    rst RST_38
    ld l, $52
    ld h, $5a
    ld h, $5a
    ld l, $52
    rst RST_38
    ld b, $7a
    rst RST_38
    nop
    db $10
    rst RST_28

jr_02c_5092:
    rst RST_38
    nop
    ei
    ld b, h
    cp e
    add b
    rlca
    rst RST_38
    nop
    ld d, h
    xor d
    xor [hl]
    ccf
    ld d, c
    db $10
    rst RST_20
    ld b, b
    sbc a
    nop

Jump_02c_50a5:
    sub c
    nop
    sub b

jr_02c_50a8:
    ld bc, $aaff
    ld d, l
    ld b, h
    cp d
    db $10
    db $ed
    nop
    ei
    rst RST_38
    nop

jr_02c_50b4:
    nop
    rst RST_28

jr_02c_50b6:
    nop
    rst RST_18
    nop
    cp a
    nop
    rst RST_38
    ld d, l
    ld a, [hl+]
    ld [hl+], a
    db $dd
    adc b
    halt
    nop
    cp $7f
    nop
    nop
    db $fd
    nop
    ld c, $00
    cp [hl]
    or e
    nop
    rst RST_18
    add hl, bc
    halt
    inc hl
    call c, $bb01
    nop
    rst RST_38
    nop
    rst RST_38
    ld [hl], b
    nop
    ld a, l
    nop
    ld a, [hl+]
    ld d, h
    db $10
    ld l, [hl]
    db $d3
    ld b, h
    dec sp
    jr nz, jr_02c_50e6

jr_02c_50e6:
    jr nz, jr_02c_50e8

jr_02c_50e8:
    ld d, l
    sbc h
    nop
    push de
    ld a, [hl+]
    rst RST_08
    xor d
    ld d, l
    rst RST_38
    nop
    jp hl


Call_02c_50f3:
    inc bc
    ldh [rSB], a
    ld d, l
    xor d
    sbc $e6
    rlca
    jr nc, jr_02c_514c

    ld sp, $004e
    ld de, $6718
    ldh a, [$ff08]
    inc de
    inc e
    ld bc, $033a
    ld a, [hl-]
    inc bc
    nop
    nop
    push af
    ld a, [bc]
    rst RST_38
    and h
    ld e, e
    add h
    ld a, e
    add h
    ld a, e
    and h
    ld e, e
    ei
    xor $11
    jp hl


    ld bc, $1de2
    ld b, b
    cp a
    nop
    ld a, a
    rst RST_38
    db $10
    rst RST_28
    ld d, d
    xor l
    ei
    inc b
    jp hl


    ld bc, $d1ff
    ld l, $81
    ld a, [hl]
    nop
    rst RST_38
    add b
    ld a, a
    xor a
    db $10
    rst RST_28
    dec sp
    call nz, Call_000_00e9
    ld h, b
    ld d, b
    ld de, $bf08
    ld h, b
    ld [bc], a
    ld h, b
    dec b
    ld h, b
    rrca
    ld d, c
    ld de, $fe06

jr_02c_514c:
    ld h, b
    ld de, $0680
    jr nz, jr_02c_5158

    ret nc

    ld b, $f0
    cp $61
    db $10

jr_02c_5158:
    ld h, $5a
    ld b, $7a
    ld b, $7a
    ld e, [hl]
    rst RST_38
    ld l, d
    ld h, $02
    halt
    ld a, [bc]
    halt
    ld a, [bc]
    ld [hl], $ff
    ld c, d
    add sp, $17
    ld d, b
    xor a
    add b
    ld a, a
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_20
    rst RST_38
    ld a, [hl-]
    push bc
    nop
    rst RST_30
    rst RST_38
    sbc l
    ld [bc], a
    sbc l
    ld [bc], a
    cp $fe
    db $fd
    db $fd
    rst RST_38
    ei
    add b
    ld [hl], a
    nop
    rst RST_28
    ld c, d
    sub l
    nop
    cp a
    cp a
    inc d
    ld l, e
    ld l, $d1
    rst RST_30
    add a
    db $10
    inc d
    rst RST_38
    db $eb
    ld l, $d1
    inc l
    db $d3
    db $10
    db $eb
    ld [$f7ff], sp
    nop
    rst RST_30
    rst RST_28
    rst RST_38
    rst RST_28
    rst RST_28
    jr nz, @+$01

    rst RST_18
    nop
    rst RST_18
    dec d
    ld [$fc03], a
    ld bc, $fe7f
    ld bc, $fefe
    rst RST_38
    cp $ff
    call nz, $4e11
    jr nz, jr_02c_51c2

    nop
    ld a, a
    rst RST_38

jr_02c_51c2:
    rst RST_10
    db $10
    jr nz, jr_02c_51c7

    ld [hl+], a

jr_02c_51c7:
    rst RST_18
    nop
    pop de
    ld a, [hl+]
    rst RST_18
    ld bc, $04e9
    ldh [rNR11], a
    xor d
    push hl
    jr jr_02c_51ed

    ld h, a
    rst RST_08
    add hl, de
    ld h, [hl]
    add hl, de
    ld h, [hl]

jr_02c_51db:
    inc c
    ld bc, $010c
    jr c, jr_02c_5228

    nop
    inc d
    add hl, de
    inc e
    inc de
    jr nz, jr_02c_51e8

jr_02c_51e8:
    ld d, c
    ld [de], a
    ld d, b
    inc de
    add h

jr_02c_51ed:
    ld [bc], a
    add sp, $00
    add b
    dec b
    rst RST_38
    ei
    ld a, b
    ld a, e
    rst RST_38
    ld a, b
    ld hl, sp+$78
    ld a, e
    rrca
    ei
    ld a, b
    nop
    add e
    adc h
    inc b
    add sp, $00
    add [hl]
    ld a, [bc]
    add sp, $00
    rst RST_18
    ld a, a
    db $fc
    db $fd
    ld a, a
    ld a, h
    ld h, a
    ld [hl+], a
    ld [hl], $4a
    rst RST_38

Jump_02c_5213:
    ld d, $6a
    ld [hl], $4a
    ld [hl], $4a
    ld b, $7a
    ld [hl], $70
    ld hl, $7a06
    jp hl


    ld bc, $1fe0
    rst RST_20
    ld d, $e9
    inc bc

jr_02c_5228:
    ld hl, sp-$18
    dec b
    sub c
    inc hl
    and c
    jr z, @+$03

    cp $08
    rst RST_20
    jr nz, @+$01

    rst RST_08

Jump_02c_5236:
    db $10
    rst RST_08
    ld b, b
    sbc a
    jr nz, jr_02c_51db

    add b
    rra
    ccf
    ld b, b
    ccf
    nop
    ld a, a
    call nz, $c011
    add hl, hl
    ret nc

    dec d
    sbc h
    ret nc

    dec d
    ret nz

    cpl
    nop
    ld a, a

jr_02c_5250:
    add b
    di
    ld [hl+], a
    jr nz, jr_02c_5258

    jr c, jr_02c_5250

    ld b, a

jr_02c_5258:
    inc l
    ld bc, $1108
    add hl, de
    ld h, [hl]
    dec de
    ld h, h
    inc sp
    ld bc, $1c4c
    ld bc, $1312
    inc [hl]
    ld bc, $001e
    dec h
    jr z, @+$2e

    inc hl
    add d
    nop
    ld hl, sp+$35
    ld hl, $2235
    add [hl]
    ld bc, $fb38
    cp e
    ld a, [$3f38]
    add hl, sp
    cp e
    ld hl, sp+$38
    dec sp
    jp $264d


    ld d, b
    inc [hl]
    cp $e8
    nop
    add c
    jr z, @+$2a

    db $eb
    db $eb
    jr z, jr_02c_52fa

    db $e3
    xor e
    db $eb
    ld h, c
    inc [hl]
    halt
    ld de, $0374
    inc b
    ld a, d
    ld h, $ff
    ld e, b
    ld bc, $0078

jr_02c_52a3:
    nop
    rst RST_20
    jr jr_02c_52a3

    cp $87
    db $10
    rst RST_38
    rst RST_38
    ld e, a
    and b
    xor h
    ld d, e
    ld [bc], a
    cp a
    db $fd
    nop
    nop
    ld a, [$cd04]
    sub a
    db $10
    ei
    rst RST_38
    db $fd
    ldh a, [$ff0b]
    call nz, $1033
    rst RST_20
    nop
    rrca
    nop
    add b
    ld a, a
    ld a, a
    add l
    ld [hl-], a
    jp z, $9000

    ld bc, $20f2
    ei
    db $eb
    rst RST_38
    xor b
    ld de, $c03f
    rla
    add sp, $09
    push af
    or $9c
    ld bc, $c83f
    db $10
    ld sp, hl
    cp $ef
    db $10
    rst RST_38
    push de
    ld a, [hl+]
    dec hl
    call nc, RST_00
    ld [hl], b
    rrca
    and e
    ccf
    ld a, a
    call nc, $d031
    inc d
    ld hl, $fa10
    add a

jr_02c_52fa:
    db $10
    sbc a
    rst RST_18
    rst RST_38
    db $f4
    dec bc
    ret nz

    ccf
    sub h
    ld de, $fc02
    rst RST_38
    ld bc, $04fc
    ld sp, hl
    ld [bc], a
    ld sp, hl
    ld a, [bc]
    pop af
    rst RST_08
    inc b
    di
    inc d
    db $e3
    sub h
    ld [hl+], a
    and c
    ld a, [hl+]
    nop
    nop
    cp a
    ld d, a
    xor b
    dec hl
    call nc, $fa05
    xor h
    ld hl, $ff03
    db $fc
    ld l, a
    add b
    nop
    nop
    db $dd
    ld [bc], a
    ret nz

    add a
    rra
    and b
    rra
    cp d
    inc hl
    add sp, $01
    xor d
    inc [hl]
    sbc [hl]
    ld [bc], a
    rst RST_30
    rst RST_38
    ld [$0000], sp
    ld e, a
    and b
    cp d
    ld b, l
    ld d, a
    rst RST_38
    xor b
    xor d
    ld d, l
    db $10
    rst RST_28
    nop
    rst RST_38
    add sp, $11
    rla
    sbc h
    ld bc, $31ec
    add h
    ld de, $b900
    jr nc, @-$62

    ld bc, $27e0
    ld c, a
    ld l, l
    ld [de], a
    nop
    nop
    cp h
    ld hl, $23f4

Jump_02c_5364:
    add b
    cpl
    ld b, d
    inc b

jr_02c_5368:
    and b
    add hl, hl
    inc [hl]
    stop
    ld h, b
    ld b, b
    and c
    daa
    pop de
    jr z, jr_02c_5368

    add hl, hl
    ret nc

    ld d, $56
    sub b
    nop
    ld d, l
    xor d
    add sp, $05
    rst RST_38
    rst RST_28
    db $10
    ld d, h
    db $e3
    db $10
    dec b
    ld d, h
    rst RST_20
    jr jr_02c_53dd

    di
    db $10
    sub $47
    and b
    daa
    ret nz

    ld b, c
    jp hl


    ld bc, $7f47
    ld a, a
    ld d, l
    ld hl, $db02
    nop
    sub b
    inc hl
    rst RST_38
    rst RST_20
    nop
    ld c, $90
    nop
    ld hl, sp+$07
    ld [$501b], sp
    db $10
    ld d, a
    inc c
    ld b, l
    ld [hl+], a
    ld e, a
    adc [hl]
    inc d
    ld d, e
    rrca
    ldh a, [$ff08]
    ld c, e
    ld d, b
    db $10
    ld d, a
    add sp, $03
    ccf
    rst RST_38
    nop
    rlca
    rlca
    ld hl, sp+$07
    ldh a, [$fffb]
    ld hl, sp+$7f
    ld hl, sp+$03
    ld hl, sp+$08
    di
    ld hl, sp+$03
    push bc
    db $10
    ld a, [hl]
    sbc [hl]
    inc bc
    ld bc, $03fc
    ld [bc], a
    rst RST_38
    ld [bc], a
    sub b
    nop
    sbc $0a
    ld d, c

jr_02c_53dc:
    ld a, a

jr_02c_53dd:
    nop
    ld b, b
    jr nz, jr_02c_5431

    ld de, $6010
    or e
    nop
    rst RST_38
    cp e
    nop
    cp d
    nop
    db $fc
    ld [bc], a
    ld h, b
    ld de, $f308
    ld b, $3f
    ld a, [hl]

jr_02c_53f4:
    ld b, c
    sub b
    ld bc, $3f80
    add b
    jr nz, jr_02c_53dc

    or a
    jr nz, jr_02c_544f

    ld [hl+], a
    dec l
    ld d, e
    ld d, h
    inc [hl]
    or d
    ld d, a
    ld bc, $01ff

jr_02c_5409:
    nop
    cp a
    ld e, b
    xor [hl]
    ld [hl-], a
    cp h
    ld d, h
    sub $55
    bit 2, b
    or c
    ld d, [hl]
    add [hl]
    ld d, b
    cp e
    jr nz, jr_02c_5409

    add hl, bc
    ld d, b
    ld a, a
    ld d, l
    ld a, [hl+]
    ld a, [bc]
    ld d, l
    ccf
    nop
    ld [$e5ff], a
    dec c
    ldh [c], a
    ld l, d
    add l
    rst RST_28
    nop
    rrca
    sbc [hl]
    rla
    ld h, d

jr_02c_5431:
    ldh [rP1], a
    ld [hl+], a
    db $dd
    db $f4
    ld [bc], a
    ld d, e
    ld [hl], $27
    ld a, a
    rst RST_10
    ld d, b
    and b
    xor d
    ld d, l
    rst RST_30
    rst RST_30
    ld d, h
    dec [hl]
    rst RST_38
    dec hl
    ld d, b
    ld e, e
    jr nz, jr_02c_53f4

    ld d, c
    db $db
    and b
    rst RST_38
    ld a, b

jr_02c_544f:
    nop
    ld hl, sp+$00
    ld hl, sp-$80
    inc bc
    nop
    ld sp, hl
    sbc a
    add l
    db $10

jr_02c_545a:
    call nz, Call_000_0449
    inc bc
    jr c, jr_02c_5467

    inc [hl]
    db $ed
    dec bc
    ld h, d
    ld h, l
    nop
    rlca

jr_02c_5467:
    ld a, h
    ld d, c
    ld a, [bc]
    ei
    ld a, d
    rst RST_38
    ei
    ld b, d
    bit 2, d
    jp $cf52


    ld b, d
    rst RST_38
    rst RST_18
    db $10
    ld h, b
    rra

jr_02c_547a:
    ld a, a
    db $10
    ld [hl], b
    ld de, $70ef
    inc d
    ld [hl], e
    rra
    inc hl
    ld hl, $087f
    ld b, $ff
    ld hl, sp-$02
    ld a, b
    ld c, $88
    ld a, [hl]
    ld [$ebfe], sp
    ld hl, sp-$02
    ld h, b
    db $10
    cp $ac
    ld d, c
    jr nz, jr_02c_545a

    ld a, $ff
    cp l
    ld b, $a5
    ld h, $85
    ld [hl], $85
    ld h, $f1
    sub l
    call z, $b051
    ld l, c
    inc hl
    jr nz, jr_02c_54cd

    ld l, l
    rra
    ld h, [hl]
    rra
    rra
    ld l, e
    rra
    ld h, l
    rra
    cp $50
    xor b
    jr nc, jr_02c_547a

    ld h, b
    cp a
    rst RST_38
    xor e
    rst RST_38
    push de
    rst RST_38
    db $fd
    call $fe50
    sbc c
    rst RST_38
    db $fc
    ld d, c
    ldh [rBCPD], a

jr_02c_54cd:
    inc a
    rst RST_38
    ldh a, [$ff63]
    ld hl, sp+$45
    cpl
    rst RST_18
    rra
    jr nc, jr_02c_54e7

    jr nc, jr_02c_54e9

    ld e, [hl]
    ld d, c
    inc c
    inc bc
    rst RST_38
    db $f4
    ei
    db $fc
    ei
    ld e, [hl]
    rst RST_18
    ret nz

    ld e, a

jr_02c_54e7:
    rst RST_38
    ret nz

jr_02c_54e9:
    ld e, a
    ld b, d
    ld b, c
    sbc $43
    jp nz, $ff5f

    jp nz, $ca5f

    ld c, e
    jr nc, jr_02c_5566

    jr nz, jr_02c_5559

    cp a
    jr nz, jr_02c_556b

    jr nz, jr_02c_554d

    nop
    ld l, a
    jr z, jr_02c_5576

    cp $ef
    ld [$0806], sp
    cp $34
    ld [hl], a
    dec [hl]
    cp a
    ld b, $ff
    push af
    ld b, $f5
    inc b
    add h
    scf
    add h
    ld h, $1f
    sub l
    ld b, $95
    ld h, $a5
    or d
    ld e, c
    ldh a, [$ff61]
    or d
    ld e, e
    adc b
    ld d, c
    dec [hl]
    ld h, [hl]
    ld a, a
    ld a, b
    ld [hl], l
    cp a
    ld e, e
    ld b, d
    halt
    ld [hl], a
    xor d
    nop
    ei
    rst RST_38
    ld hl, sp+$03
    inc b
    inc bc
    rrca
    nop
    scf
    rrca
    db $fd
    jr @+$21

    ld d, b
    ld a, [$827b]
    dec bc
    and d
    ld d, e
    ld e, a
    add $3b
    ld c, $f3
    cp $7d
    ld d, c
    inc bc

jr_02c_554d:
    jr z, jr_02c_55c0

    ld a, e
    rra
    ld l, a
    ld [$8053], sp
    add b
    sbc a
    sbc a
    inc [hl]

jr_02c_5559:
    ld [hl], c
    ld a, [$609a]
    cp $92
    ld d, c
    ld [bc], a
    ld [bc], a
    ld a, [$3efa]
    rst RST_38

jr_02c_5566:
    cp l
    ld [bc], a
    and c
    ld a, [bc]
    sub l

jr_02c_556b:
    ld h, $99
    jr nz, jr_02c_55ee

    sbc a
    rra
    cp a
    ld b, b
    cp a
    ld b, b
    add b

jr_02c_5576:
    inc b
    ld c, h
    ld bc, $1dff
    add b
    dec de
    rst RST_38
    nop
    nop
    inc d
    jr c, jr_02c_5583

jr_02c_5583:
    nop
    jr z, @+$74

    rst RST_38
    ld a, [hl+]
    halt
    nop
    ld b, b
    inc d
    jr c, jr_02c_55a2

    jr c, @+$01

    inc a
    inc a
    ld [hl], d
    ld c, [hl]
    db $ed
    sbc a
    db $ed
    sbc a
    rst RST_38
    di
    adc l
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    nop
    rst RST_38

jr_02c_55a2:
    nop
    cp $00
    ld a, [hl]
    inc bc
    nop
    dec sp
    ld b, $ff
    ld bc, $fc00
    nop
    ldh a, [rP1]
    ret nz

    nop
    cp a
    ret nz

    add b
    rst RST_18
    add b
    rst RST_08
    sbc a
    jr nc, jr_02c_55c1

    nop
    ld a, a
    nop
    ld [bc], a

jr_02c_55c0:
    ld [bc], a

jr_02c_55c1:
    ld a, [$fa02]
    ld a, [$0540]
    rst RST_38
    nop
    nop
    ld b, b
    ccf
    ret nz

    ccf
    nop
    nop
    cp a
    ld [$fb00], sp
    nop
    ld bc, $5a02
    ld bc, $fd00
    rst RST_38
    ld h, b
    nop
    nop
    rlca
    nop
    inc bc
    inc e
    ld [$30df], sp
    ld de, $1123
    ld h, h
    ld h, b
    inc bc
    ldh [rP1], a

jr_02c_55ee:
    rst RST_38
    ret z

    jr nc, jr_02c_5616

    jr jr_02c_55f4

jr_02c_55f4:
    ret nz

    adc [hl]
    ccf
    cp $60
    inc bc
    nop
    nop
    inc a
    jp Jump_000_3c99


    ld c, [hl]
    rst RST_30
    nop
    xor b
    inc e
    ld h, b
    inc bc
    db $fc
    nop
    ld hl, $fd10
    ld a, l
    ld e, $00
    and l
    ld b, d
    nop
    nop
    db $fd
    nop
    rst RST_38

jr_02c_5616:
    ld a, [hl+]
    ld d, h
    ld [hl], h
    adc d
    ld [$02e6], sp
    ld hl, sp-$32
    rra
    ld bc, $ff00
    ld a, a
    add h
    ld bc, $0065
    ld [$df07], sp
    rla
    rrca
    rla
    rrca
    adc b
    cp e
    nop
    sub a
    rrca
    rst RST_20
    ld [$8707], sp
    ld e, $00
    dec a
    nop
    nop
    db $10
    ldh [$ff7f], a
    add sp, -$10
    add sp, -$10
    db $10
    ldh [$ffe0], a
    or e
    ld [bc], a
    ldh [$ffca], a
    inc bc
    ldh [rTIMA], a
    db $eb
    rrca
    or $07
    or d
    ld bc, $8080
    sbc a
    pop de
    sbc a
    or $05
    xor [hl]
    nop
    ccf
    ld bc, $61fa
    ld bc, $aa54
    cp a
    xor [hl]
    ld d, b
    db $10
    and $40
    sbc [hl]
    rra
    ld bc, $ff5e
    ld l, d
    ld h, $02
    ld a, [hl]
    ld [bc], a
    ld l, $52
    ld h, $7f
    ld e, d
    inc b
    ld a, d
    ld h, $58
    nop
    ld a, b
    ld h, c
    ld bc, $aaff
    ld d, h
    ld b, h
    cp d
    db $10
    db $ec
    nop
    ld a, [$00ff]
    nop
    xor $00
    rst RST_18
    nop
    cp a
    nop
    cp a
    ld d, h
    ld a, [hl+]
    ld [hl+], a
    call c, Call_02c_7688
    xor l
    ld bc, $effc
    nop
    ld c, $00
    cp [hl]
    ld d, e
    db $10

jr_02c_56a4:
    ld [$2276], sp
    ld a, l
    call c, $01ad
    cp $00
    ld [hl], b
    nop
    ld a, l
    and e
    nop
    ld a, a
    db $10
    ld l, [hl]
    ld b, h
    ld a, [hl-]
    nop
    ld a, [hl]
    nop
    ld a, d
    ld de, $a194
    nop
    ld b, h
    ld [de], a
    ld l, [hl]
    ld a, d
    ld de, $1ebe
    nop
    ld [hl+], a
    ld de, $ff22
    ld e, h
    ld [$00b6], sp
    sbc $00
    nop
    or $ff

jr_02c_56d4:
    nop
    ld a, [$6456]
    ld b, b
    ld a, [hl]
    ld b, b
    ld [hl], h
    rst RST_38
    ld c, d
    ld h, h
    ld e, d
    jr nz, jr_02c_5740

    ld h, h
    ld a, [de]
    add b
    ld bc, $1d1e
    nop
    add b
    rst RST_08
    rst RST_38
    nop
    rst RST_38
    nop
    inc bc
    nop
    nop
    ld bc, $03ff
    or a
    rst RST_38
    rra
    rst RST_38
    nop
    inc bc
    ld bc, $16fc
    ld bc, $f781
    db $fc
    ld sp, $06fc
    ld [bc], a
    nop
    ld e, a
    nop
    ld e, b
    ld a, a
    ld b, $50
    dec c
    ld b, c
    add hl, de
    dec b
    ld e, c
    jr nz, @+$05

    rst RST_38
    ld a, [$1a00]
    jr nz, jr_02c_56a4

    ret nc

    ret nz

    jp c, $c0fb

    jp c, Jump_000_0320

    ccf
    nop
    ld e, a
    jr nz, @+$21

    rst RST_18
    ld h, b
    nop
    ld h, b
    db $10
    ld l, a
    jr nz, jr_02c_5732

    ld a, [de]
    ld h, b
    rst RST_38

jr_02c_5732:
    jr jr_02c_5796

    nop
    ld h, d
    ld [bc], a
    ld h, d
    ld a, [de]
    ld h, d
    cp $40
    inc b
    add b
    jr nz, @-$6b

jr_02c_5740:
    inc c
    xor l
    inc c
    adc l
    ld c, e
    jr nz, jr_02c_56d4

    jr nz, @+$05

    cp $74
    ld bc, $0379
    ld a, a
    add b
    ld [bc], a
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    ld c, c
    ret nz

    ld a, a
    rst RST_38
    ld h, h
    rst RST_30
    ret nz

    nop
    ei
    sub b
    inc bc
    ld hl, sp-$0d
    jr c, jr_02c_5777

    cp a
    ld hl, sp-$0d
    ld e, b
    inc de
    ld b, b
    nop
    and b
    dec bc
    ld [$6751], sp
    or b
    dec bc
    ld b, $03
    ret nz

    rlca
    ccf

jr_02c_5777:
    rst RST_08
    nop
    ld a, a
    add a
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    cp $ff
    db $fc
    rst RST_38
    ld hl, sp-$01
    rst RST_38
    pop hl
    db $fc
    pop af
    db $fc
    pop hl
    db $fc
    pop de
    db $fc
    ld sp, hl
    and c
    dec de
    nop
    ld d, $01
    ld e, l

jr_02c_5795:
    nop

jr_02c_5796:
    ld e, [hl]
    ld bc, $df5d
    inc bc
    ld e, l
    inc bc
    ld e, e
    rlca
    ld hl, sp+$01
    ld d, e
    rrca
    cp a
    jp c, $ba00

    ret nz

    jp c, Jump_000_04e0

    ld de, $ffca
    ldh a, [$ffca]
    ldh a, [$ffea]
    ldh a, [rNR23]
    ld h, a
    rla
    ld sp, hl
    ld l, b
    ld c, b
    nop
    ld bc, $f000
    rrca
    rrca
    ldh a, [$fff0]
    rst RST_38
    rrca
    ld [bc], a
    ld h, d
    ld e, d
    ld [hl+], a
    sbc d
    ld [bc], a
    ld a, [$02ff]
    add d
    ld a, d
    ld a, d
    add d
    add d
    ld a, d
    ld b, d
    rst RST_30
    add d
    xor l
    ld e, $30
    ld de, $3f8c
    adc h
    ccf
    rst RST_00
    sbc [hl]
    ccf
    cp [hl]
    dec sp
    db $10
    ld a, b
    ld b, $79
    inc b
    ld a, a
    rst RST_38
    cp a
    ld b, h
    jp nz, $ff7f

    ld d, c
    pop de
    call nc, $8000
    adc $06
    ld bc, $f3f8
    jr jr_02c_5795

    nop
    ld h, d
    ld de, $03f8
    xor $90
    ld bc, $fff0
    add b
    add hl, bc
    ld [bc], a
    rla
    rst RST_38
    cpl
    ld e, a
    rst RST_38
    rst RST_10
    rst RST_38
    rst RST_28
    rst RST_38
    ld d, $03
    pop bc
    db $e3
    nop
    rst RST_30
    pop af
    db $fc
    ldh a, [$ff8b]
    db $10
    ld e, a
    rrca
    ld e, a
    rrca
    rst RST_28
    ld d, b
    nop
    ld b, b
    rrca
    ld b, l
    nop
    ld e, e
    nop
    rst RST_10
    rst RST_38
    nop
    or a
    ld a, [$faf8]
    ld hl, sp+$7a
    ld a, b
    cp a
    ld a, [de]
    sbc b
    ld a, [bc]
    add sp, $02
    ldh a, [$ffaa]
    db $10
    jr c, @+$01

    ld [$00f0], sp
    nop
    inc d
    nop
    and b
    nop
    rst RST_38
    rrca
    rrca
    or b
    ld [hl], b
    nop
    rrca
    nop
    ldh a, [rIE]
    ld a, [bc]
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, h
    ld a, h
    rst RST_38
    add b
    add e
    nop
    ld a, h
    inc bc
    add b
    ld a, h
    inc bc
    sbc $3c
    db $10
    ld a, $80
    ld bc, $d3c0
    db $10
    ld b, b
    ccf
    rst RST_38
    cp h
    ld a, a
    cp c
    ld a, [hl]
    nop
    ldh [rP1], a
    rra
    ccf
    nop
    ldh [rNR34], a
    nop
    ldh [c], a
    inc e
    ld a, d
    ld [$09c1], sp
    db $fc
    sub c
    inc b
    sub b
    dec b
    rst RST_10
    rst RST_38
    xor e
    rst RST_38
    ld b, b
    rst RST_38
    rst RST_18
    nop
    ld hl, sp+$00
    nop
    rlca
    ld d, $20
    rlca
    nop
    rst RST_38
    ldh [$fffc], a
    nop
    db $fc
    nop
    add b
    inc bc
    nop
    rst RST_30
    ld a, h
    nop
    add d
    ldh a, [c]
    ld [de], a
    nop
    and a
    nop
    ld bc, $80ff
    inc h
    dec l
    ld a, l
    ld a, l
    ld a, a
    jr @+$3e

    rst RST_38
    cp b
    inc a
    sub b
    ld a, [hl-]
    jp c, Jump_02c_6ad8

    add sp, -$01
    ld [hl-], a
    ld [hl], b
    ld c, d
    ld e, b
    ld a, [bc]
    xor b

jr_02c_58c0:
    and d
    xor b
    rst RST_38
    ld [bc], a
    ld d, b
    ld c, d
    ld c, b

jr_02c_58c7:
    inc bc
    nop
    db $fc
    ld hl, sp-$01
    ldh a, [c]
    db $fc
    ld hl, sp-$0a
    inc b
    ld a, [$f40a]
    rst RST_38
    ld c, $f0
    ld e, $e0
    add b
    nop
    ld e, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    cp a
    ret nz

    ccf
    ld b, b
    ld h, a
    jr nz, @+$01

    ldh [$ff1f], a
    ld bc, $fa00
    db $fc
    pop af
    cp $ff
    db $f4
    ei
    ld a, [bc]
    push af
    dec c
    ldh a, [c]
    ld c, $f1
    xor e
    dec e
    ldh [c], a
    ld [hl], l
    nop
    ld a, [hl]
    add d
    jr nz, jr_02c_58c0

    add [hl]
    ld hl, $c706
    cp a
    jr jr_02c_58c7

    ret nz

    add hl, bc
    rrca
    ld [bc], a
    ld bc, $f828
    ei
    ei
    inc bc
    ld hl, sp-$50
    add hl, bc
    rrca
    ld l, a
    ld h, b
    rrca
    nop
    rst RST_38
    ret nz

    daa
    rra
    sbc a
    ld a, a
    ccf
    rst RST_38
    ld l, d
    ld a, a
    cp a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    dec b
    nop
    jp nc, Jump_000_22d2

    xor d
    pop bc
    dec b
    sbc d

jr_02c_5935:
    jr nz, jr_02c_5935

    reti


    nop
    xor c
    cp $ff
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    nop
    rst RST_38
    add h
    ld hl, sp+$01
    cp $00
    rst RST_38
    ld d, b
    xor a
    ccf
    xor d
    ld d, l
    call nc, $fa2b
    dec b
    ld a, c
    ld bc, $2185
    rst RST_38
    ld a, $80
    ld e, [hl]
    add b
    ld e, $c0
    ld e, $c0
    xor [hl]
    pop bc
    inc c
    nop
    cp $01
    jr jr_02c_599f

    nop
    rla
    ld bc, $ff20
    cp b
    ld bc, $03b6
    xor h
    ld b, $98
    dec e
    ld a, a
    ld bc, $e1c9
    inc hl
    pop hl
    ld bc, $03cb
    nop
    rst RST_38
    ld e, $01
    ld bc, $7342
    ld [$214e], sp
    rst RST_30
    add hl, sp
    ld b, b
    ld h, a
    and c
    nop
    nop
    nop
    ld h, [hl]
    ld de, $ddff
    ld [hl+], a
    inc sp
    adc h
    xor $10
    sbc h
    ld b, d
    rst RST_38
    ld [hl], d
    adc [hl]

jr_02c_599f:
    adc $00
    nop
    ret nz

    nop
    daa
    rst RST_38
    rra
    ld c, a
    ccf
    or b
    ld c, a
    ld d, b

jr_02c_59ac:
    xor a
    ldh a, [$ffc1]
    rrca
    ld e, d
    db $10
    inc b
    ld bc, $239b
    sbc c
    ld hl, $0003
    inc bc
    nop
    rst RST_38
    db $e4
    ld hl, sp-$3e
    db $fc
    jr z, @-$28

    inc d
    ld [$3a3f], a
    call nz, Call_000_02fc
    ret nz

    ccf
    pop bc
    dec bc
    ld a, h
    ld sp, $c1fe
    add hl, bc
    db $fc
    inc bc
    ld a, [$fc05]
    inc bc
    cp $e1
    ld bc, $35b4
    inc c
    ld sp, $39c0
    pop bc
    add hl, bc
    pop af
    nop
    ldh [$fff9], a
    ld c, $f5
    jr nz, jr_02c_59ac

    ld a, [bc]
    ld bc, $093b
    inc sp
    sbc c
    rst RST_38
    inc hl
    or c
    inc bc
    inc hl
    add a
    add a
    rrca
    dec c
    rst RST_38
    sbc l
    add hl, de

jr_02c_59fe:
    cp c
    add hl, sp
    add hl, sp
    halt
    ld [hl], a
    ld c, b
    rst RST_38
    ld c, [hl]
    ld sp, $6739
    ld [hl], a
    ld c, a
    ld l, a
    ld e, $d7
    ld e, a
    inc a
    ld a, $86
    jr nz, jr_02c_5a92

    add hl, de
    db $10
    pop bc
    ccf
    rra
    add e
    ccf
    add e
    ld a, a
    ld [bc], a

Jump_02c_5a1e:
    di
    inc de
    ret nc

    add hl, hl
    nop
    inc bc
    rst RST_30
    ld hl, sp-$01
    ldh a, [$ff37]

jr_02c_5a29:
    ld b, b
    and l
    ld a, [$f50a]
    cp $00
    inc sp
    sbc c
    nop
    ld b, h
    add e
    jr nz, jr_02c_59fe

    ld a, [bc]
    daa
    push hl
    add l
    ld l, d
    nop
    inc bc
    jp nc, $d503

    add l
    nop
    or h
    ld sp, $1efe
    add hl, sp
    inc d
    ret nz

    ld a, [bc]
    ret nz

    nop
    ret nz

    add b
    rst RST_38
    ld b, b
    ld b, b
    add c
    add b
    ld b, e
    ld b, b
    adc a
    ret nz

    rst RST_38
    ld bc, $1e00
    add d
    inc a
    inc b
    ld a, b
    ld a, [bc]
    rst RST_38
    ldh a, [rNR10]
    ldh [c], a
    jr nz, jr_02c_5a29

    ld b, b
    add d
    adc [hl]
    rst RST_08
    ld [bc], a
    ld d, l
    nop

jr_02c_5a6e:
    xor d
    inc bc
    ld bc, $0103
    xor d
    nop
    rst RST_38
    ld d, h
    nop
    cp $72
    ld [hl-], a
    ldh [$ff60], a
    ret nz

    rst RST_38
    ld b, a
    ret nz

    ld b, b
    rst RST_08
    ld c, a
    jp $8050


    rst RST_30
    jr c, jr_02c_5a8e

    ld a, b
    daa
    jr nz, jr_02c_5a6e

jr_02c_5a8e:
    rra
    rst RST_18
    ccf
    rst RST_38

jr_02c_5a92:
    cp a
    ccf
    ccf
    rst RST_18
    rst RST_18
    db $e3
    ld hl, $fe04
    ld b, $02
    ccf
    nop
    rst RST_08
    ret nz

    rst RST_30
    ldh a, [$fffb]
    ei
    ret nz

    db $fd
    rst RST_28
    jr nz, jr_02c_5af5

    and h
    and a
    ld c, b
    res 3, a
    inc h
    rst RST_20
    ld [$00ef], sp
    ret c

    ld b, e
    nop
    ld bc, $fff8
    nop
    rst RST_00
    rlca
    cp [hl]
    ccf
    ret nc

    rra
    ret nz

    sub a
    inc bc
    cp h
    dec a
    jr z, jr_02c_5af9

    db $fd
    ld d, $03
    ld b, $02
    inc a
    rst RST_38
    inc a
    ldh a, [c]
    db $fc
    db $ec
    db $fd
    db $10
    pop af
    ld bc, $e6ff
    inc bc
    inc e
    ld b, $18
    ld c, h
    db $10
    ld [hl+], a
    rst RST_38
    ld c, [hl]
    ld h, d
    adc [hl]
    ld h, d
    adc [hl]
    jp nz, $820e

    rst RST_38
    ld e, $0e
    ld a, $1a
    ld a, d
    ld [hl-], a
    ldh a, [c]
    pop af
    ld a, a
    ld sp, hl
    rst RST_20

jr_02c_5af5:
    rst RST_30
    adc a
    rst RST_28
    rra

jr_02c_5af9:
    sbc a
    add b
    nop
    rst RST_38
    nop
    db $fc
    cp $f9
    db $fd
    ldh a, [$fff8]
    db $e4
    rst RST_38
    db $f4
    ret


    add sp, -$6e
    ret nc

    dec [hl]
    or b
    ld [hl], l
    rst RST_38
    ld [hl], b

jr_02c_5b10:
    ld sp, hl
    ld hl, sp-$02
    cp $2c
    nop
    ld d, h
    rst RST_38
    ld bc, $01b4
    xor b
    inc bc
    ld l, c
    ld bc, $fb58
    ld bc, $8010
    jr nc, @+$69

    ldh a, [$ff83]
    ret z

    call $fcff
    cp $fe
    ldh [$fff8], a
    rst RST_00
    ldh a, [rOCPD]
    sub a
    ld hl, sp+$39
    jr c, jr_02c_5b10

    ld b, l
    xor $67
    ld d, b
    ret c

    ld b, c
    adc [hl]
    cp a
    ld a, $82
    ld c, $02
    ld h, [hl]
    ld h, a
    sub $00
    ld a, a
    rst RST_18
    rst RST_38
    ld c, $1f
    rst RST_08
    rrca
    pop bc
    add hl, bc
    xor d
    nop
    db $ed
    ld de, $3717
    nop
    db $fd
    sub c
    ld b, b
    stop
    sbc b
    rst RST_38
    ld bc, $0350
    add c
    rlca
    ld b, e
    rrca
    add [hl]
    rst RST_38
    ld e, $0c
    inc a
    jr @+$7a

    ldh a, [$ff30]
    and $df
    ld h, [hl]
    add $c6
    add [hl]
    add [hl]
    adc l
    ld d, b
    rra
    nop
    rst RST_18
    ld a, $00
    ld a, l
    nop
    di
    sub b
    nop
    ldh [rTAC], a
    adc a
    ret nz

    rra
    add b
    ccf
    ld h, l
    nop
    add c
    ld bc, $3080
    rst RST_38
    rla
    rlca
    rst RST_38
    rrca
    push de
    ld d, b
    rra
    reti


    ld d, d
    ret nc

    dec h
    ldh [c], a
    ld d, l
    ld e, a
    nop
    nop
    ldh a, [rIE]
    ldh [$fff3], a
    ld d, b
    ret nz

    rst RST_30
    ld d, h
    ccf
    rra
    nop
    daa
    ret nz

    ld [$f4f0], sp
    ld hl, $0378
    rst RST_38
    ldh [rP1], a
    ret z

    rlca
    and b
    rra
    ld b, b
    ccf
    inc de
    nop
    ld a, a
    bit 2, b
    nop
    ld [bc], a
    rra
    pop de
    ld b, $ec
    ld d, e
    jr nc, jr_02c_5c30

    ld e, a
    xor d
    nop
    ld d, c
    nop
    rst RST_20
    jr nc, jr_02c_5c3a

    ld a, [hl+]
    sbc h
    ld b, b
    push hl
    db $fd
    ld b, b
    ld l, d
    ld d, l
    ld bc, $9403
    ld c, b
    cp [hl]
    ldh [rNR42], a
    rst RST_38
    ldh [rNR44], a
    ldh [$ff27], a
    ldh [$ff2f], a
    ldh [$ff2e], a
    rst RST_38
    ldh [$ff29], a
    ret nz

    rla
    nop
    cpl
    rst RST_08
    rst RST_28
    push af
    sbc a
    or l
    ld b, b
    ld a, a
    jr z, jr_02c_5c5c

    cp $fe
    db $fc
    cp $ff
    ld a, [bc]
    ld [hl], l
    dec d
    ld l, d
    cpl
    ld d, b
    rra
    ld h, b
    ei
    ccf
    ld b, b
    sub [hl]
    ld h, e
    or l
    ld e, a
    ld c, d
    cp a
    ldh [$ff95], a
    rra
    and h
    ld h, c
    ldh a, [$ff7f]
    ld d, d
    ld d, l
    rst RST_10
    daa
    rrca
    ld [bc], a
    ld l, d
    rst RST_18
    push de
    sub l
    ld [$c13e], a
    call $c020
    ld a, a
    cp $72
    ld de, $8000
    ld a, [hl]
    ld d, b
    xor [hl]

jr_02c_5c30:
    xor b
    ld d, [hl]
    cp a
    ret nc

    ld l, $e8
    ld d, $f4
    ld a, [bc]
    ret c

jr_02c_5c3a:
    ld h, c
    ld a, [bc]
    rst RST_38
    push af
    dec d
    ld [$d42b], a
    ld e, a
    and b
    cpl
    ld a, a
    ret nc

    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    or b
    ld h, a
    db $e3
    add b
    ld a, a
    nop
    ld bc, $20c3
    inc l
    ld [hl+], a
    ld hl, sp-$04
    di
    ld a, a

jr_02c_5c5c:
    ei
    rst RST_00
    rst RST_30
    adc a
    rst RST_08
    db $e3
    di
    inc h
    ld d, c
    db $fc
    add [hl]
    ld h, c
    jp c, $fe00

    ld hl, sp-$04
    db $fc
    cp $f1
    rst RST_20
    db $fd
    db $e3
    di
    add b
    ld h, a
    ld d, $75
    ld sp, hl
    db $fd
    di
    rst RST_00
    ei
    rst RST_20
    rst RST_30
    add b
    ld l, c
    ld [hl-], a
    ld a, a
    add [hl]
    ld h, c
    ccf
    ld b, b
    ccf
    ld e, a
    jr nz, jr_02c_5cca

    ld b, b
    ld a, a
    nop
    ld h, h
    ld [hl], c
    add c
    ld bc, $f8ff
    ld b, $f4
    ld a, [bc]
    ld a, [$fc04]
    ld [bc], a
    ret nz

    ld [hl], h
    ld [hl], e
    ldh [$ff31], a
    jp z, Jump_000_2263

    scf
    ld b, c
    dec de
    add h
    ld h, [hl]
    rst RST_38
    ld hl, sp-$03
    cp $20
    ld d, c
    ldh a, [$fff9]
    ret nz

    ldh a, [$ff8f]
    rst RST_08
    nop
    ld b, d
    ld [hl], a
    ld bc, $dc01
    nop
    add hl, bc
    ld [hl], b
    inc a
    ld [hl], e
    or h
    ld b, b
    ld h, h
    jr nz, @+$48

    ld a, a
    rst RST_08
    sbc a
    rst RST_18
    nop
    cp a

jr_02c_5cca:
    ldh [$ff57], a
    ld a, [de]
    ld [hl], c
    ld bc, $0ffd
    inc bc
    inc bc
    di
    ei
    dec e
    add b
    inc c
    rst RST_38
    rst RST_08
    rst RST_28
    sbc a
    rst RST_18
    ccf
    cp a
    ld a, a
    ld a, a
    db $fd
    rst RST_38
    ld [$fe04], sp
    rst RST_38
    db $fc
    cp $f9
    db $fd
    rrca
    di
    ei
    rst RST_20
    rst RST_30
    nop
    inc bc
    inc b
    rrca
    ld d, $07
    ld [hl+], a
    rlca
    ldh [$ff2a], a
    ld bc, $0310
    inc [hl]
    rlca
    ld [hl+], a
    inc bc
    db $10
    ld bc, $fdf1
    ldh [$fff7], a
    di
    ret nz

    ldh [rHDMA4], a
    add hl, bc
    nop
    rst RST_38
    nop
    nop
    sbc [hl]
    ld a, [hl+]
    add hl, bc
    rrca
    rst RST_28
    rra
    rra
    ld a, [hl-]
    dec bc
    inc h
    ld bc, $07fc
    rst RST_38
    ld hl, sp-$04
    ld d, $01
    inc [hl]
    rrca
    ld a, $07
    ld de, $1200
    add b
    ld [de], a
    ret nc

    rlca
    ld [de], a
    nop
    add hl, bc
    add b
    ld [hl], b
    ld c, $57

jr_02c_5d34:
    xor a
    ld e, [hl]
    ld [de], a
    nop
    inc b
    and e
    ld c, l
    adc [hl]
    ld [de], a
    nop
    inc b
    pop bc

jr_02c_5d40:
    or b
    ld [hl], b
    ld [de], a
    nop
    ld [bc], a
    inc b
    jr nc, jr_02c_5d40

    db $fc
    ld a, h
    ld [de], a
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    inc c
    ld b, $06
    cp a
    ld a, [hl]
    ld a, l
    inc bc
    ld [de], a
    nop
    ld [bc], a
    ret nz

    rrca
    add a
    inc bc
    rst RST_18
    ld hl, sp+$7c
    nop
    nop
    or b
    add b
    ret nz

    ei
    ld e, $3e
    nop
    nop
    ld a, [hl]
    ld a, $7c
    ret nz

    ld a, [bc]
    nop
    nop
    inc bc
    ld [de], a
    nop
    dec b
    ld b, b
    jr nz, @+$14

    rst RST_38
    dec b
    ldh a, [rIF]
    ld [de], a
    rst RST_38
    inc bc
    ldh a, [rIF]
    ldh a, [rNR12]
    nop
    ld [$ffff], sp
    ldh a, [rIF]
    ldh a, [rNR12]
    nop
    ld [bc], a
    ret nc

    db $10
    ldh [rNR12], a
    nop
    inc b
    ld c, $17
    dec c
    db $10
    inc c
    ld e, $33
    add hl, hl
    ld h, b
    rst RST_08
    ld a, b
    db $e4
    ld e, h
    ld e, $0f
    add a
    nop
    ldh [$fff8], a
    inc e
    ld b, e
    ldh [$fff0], a
    ld d, l
    nop
    rlca
    ld c, a
    jr jr_02c_5d34

    ld b, $4f
    db $eb
    ld [$1df2], sp
    ld [bc], a
    ld a, b
    ldh a, [$fff2]
    db $e4
    ret nz

    and b
    ret nz

    jr nz, jr_02c_5e30

    ld hl, sp-$38
    sbc b
    ldh a, [rNR12]
    nop
    ld b, $28
    ld [hl-], a
    ld [hl-], a
    db $10
    jr jr_02c_5de9

    ld c, $06
    add l
    rst RST_10
    ld d, b
    rrca
    xor [hl]
    and d
    sbc b
    ld c, e
    adc e
    jp $f228


    call nz, $9c7b
    ld d, c
    jp nc, $b021

    ld c, l
    ld a, $df
    ld l, $8f
    push bc
    rst RST_08

jr_02c_5de9:
    rlca
    add hl, de
    cp e
    ld [hl], l
    sbc c
    ld c, c
    sbc b
    ld e, b
    db $10
    jr nc, jr_02c_5e64

    ldh [$ffe0], a
    add b
    nop
    ret nz

    ld [de], a
    add b
    dec b
    ld [de], a
    nop
    ld [$127c], sp
    ld sp, hl
    dec b
    ld [de], a
    nop
    inc b
    inc bc
    rlca
    rra
    ld [hl], l
    ld c, l
    dec [hl]
    ld h, $05
    dec b
    ld bc, $8f1c
    ld l, a
    inc de
    xor b
    add a
    ld c, a
    jr c, jr_02c_5e2c

    di
    jp hl


    sub b
    ld d, $c4
    ldh [c], a
    dec c
    ldh [c], a
    db $fc
    ld e, b
    ret nc

    ld d, b
    add b
    inc h
    inc l
    ld e, b
    ld [de], a
    nop
    inc b

jr_02c_5e2c:
    ret nz

    ld hl, sp-$02
    nop

jr_02c_5e30:
    add b
    ld [de], a
    nop
    inc c
    ld bc, $0012
    inc bc
    ld bc, $e323
    db $e3
    nop
    nop
    inc b
    ldh a, [$ffe8]
    pop de
    pop hl
    ldh a, [$ff3b]
    inc sp
    ld [hl], e
    ld h, e
    db $e3
    pop bc
    db $eb
    push af
    ld a, [de]
    adc l
    adc [hl]
    rst RST_00
    jp $e0e1


    ldh [rP1], a
    nop
    add b
    nop
    add b
    db $e3
    ld [hl], e
    daa
    ld [de], a
    nop
    inc bc
    ld de, $8c98
    db $ec
    inc de

jr_02c_5e64:
    scf
    ld h, a
    rst RST_00
    rst RST_00
    add a
    rlca
    rlca
    rst RST_38
    rst RST_18
    rst RST_08
    rst RST_10
    rst RST_08
    rst RST_00
    rst RST_08
    rst RST_00
    nop
    add b
    add b
    pop bc
    db $eb
    rst RST_20
    res 2, a
    ld [de], a
    nop
    ld [bc], a
    ret nz

    ldh a, [$fff2]
    rst RST_28
    rst RST_38
    ld [de], a
    nop
    dec b
    ret nz

    ret nz

    ld bc, $1205
    ld b, $02
    ld [bc], a
    ld [$f305], sp
    pop af
    pop af
    ld [de], a
    ld sp, hl
    ld [bc], a
    ret c

    ret c

    ld hl, sp-$04
    sbc d
    sbc l
    sbc [hl]
    sbc l
    sbc d
    sbc h
    dec sp
    dec e
    rrca
    rlca
    rrca
    rra
    ccf
    ld a, b
    ld [de], a
    ldh [rSC], a
    di
    ldh a, [c]
    ldh a, [c]
    di
    ldh a, [c]
    inc de
    ld [de], a
    nop
    ld [bc], a
    ldh a, [$ffb8]
    ld e, d
    xor e
    ld h, b
    nop
    jr nz, jr_02c_5edc

    ld h, c
    ld h, e
    ld sp, $1232
    rlca
    ld [bc], a
    rst RST_00
    rst RST_20
    rst RST_00
    rlca
    add a
    rst RST_00
    adc $cc
    ret c

    ldh a, [$ffd8]
    db $fc
    cp $0f
    rra
    rra
    ccf
    ccf
    ld e, a
    ld a, $1e
    db $e3
    rst RST_00
    adc a
    sbc a

jr_02c_5edc:
    rra
    ccf
    ld a, a
    ld a, a
    ret nz

    add b
    add b
    ld [de], a
    ret nz

    inc b
    rlca
    inc bc
    ld bc, $1201
    nop
    ld [bc], a
    ld [bc], a
    sbc h
    adc h
    call z, $c6c6
    and $62
    ld h, d
    ret c

    reti


    reti


    ret c

    db $ec
    and $66
    halt
    or $eb
    db $e4
    db $eb
    db $f4
    ldh a, [$ff7f]
    ld a, a
    ld [hl-], a
    ld d, b
    db $10
    db $10
    jr nc, jr_02c_5f7c

    ld hl, sp-$10
    ei
    ei
    ld [de], a
    ld a, e
    inc bc
    dec sp
    dec sp
    add hl, sp
    cp e
    cp e
    ei
    ei
    db $db
    db $db
    ret c

    ld l, a
    rst RST_28
    adc $cd
    call z, $0f8e
    ld c, a
    rst RST_38
    rra
    adc a
    daa
    and [hl]
    ld b, $0e
    db $fc
    ld a, $3e
    ccf
    ccf
    ld [de], a
    ld a, l
    inc bc
    rst RST_38
    rst RST_38
    cp a
    cp l
    ld a, b
    ld [hl], b
    ld b, b
    ret nz

    ldh [$ffe0], a
    ld [de], a
    ldh a, [$ff03]
    ld hl, sp-$08
    rlca
    ld [de], a
    rrca
    inc bc
    rlca
    ld bc, $3600
    or [hl]
    or a
    or a
    ld [de], a
    di
    ld [bc], a
    ld sp, hl
    ld [hl], e
    ld [hl], e
    add hl, sp
    add hl, sp
    inc a
    inc e
    ld e, $9e
    ccf
    ld a, $1e
    sbc [hl]
    adc [hl]
    adc $4e
    ld h, a
    ld hl, sp+$78
    jr c, jr_02c_5f7e

    inc e
    inc e
    inc c
    ld c, $12
    inc bc
    ld [bc], a
    ld hl, $0c10
    inc bc
    nop
    jp z, $c1c0

    add [hl]
    inc e
    ld hl, sp-$10
    ld h, b
    ld e, e
    sbc e

jr_02c_5f7c:
    scf
    scf

jr_02c_5f7e:
    ld l, $7c
    ld e, h
    ld a, b
    db $fc
    db $fc
    jr c, jr_02c_5fbf

    add hl, sp
    inc sp
    inc sp
    ld [hl], a
    ld a, c
    ld hl, sp-$08
    ld sp, hl
    ei
    ld hl, sp-$08
    ld a, b
    add $ce
    call z, $cfcc
    rst RST_18
    rst RST_18
    rst RST_38
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    sbc $3f
    ld [de], a
    rst RST_38
    ld b, $7f
    inc bc
    inc bc
    ld bc, $1911
    inc e
    ld e, $0e
    ld l, c
    xor a
    rst RST_30
    inc sp
    sbc b
    adc $f2
    dec e
    ld [de], a
    adc a
    ld [bc], a
    rst RST_00
    rst RST_00
    inc bc
    ld bc, $2701

jr_02c_5fbf:
    inc hl
    ld [hl], e
    pop af
    ld sp, hl
    ld sp, hl
    db $f4
    ld hl, sp+$1e
    ld l, $d7
    ld [de], a
    rst RST_38
    inc b
    ld b, $00
    nop
    ld bc, $8080
    ret nz

    ret nz

    ld h, b
    ld [hl], b
    ld [hl], b
    ld h, c
    ld bc, $4221
    ld h, e
    ld hl, sp-$50
    ldh a, [$ffe0]
    pop hl
    pop hl
    db $e3
    rst RST_38
    ld h, a
    ld h, [hl]
    adc $ce
    adc h
    sbc h
    add hl, de
    add hl, sp
    ld a, b
    ld a, b
    ld [de], a
    ld hl, sp+$03
    ldh a, [$fff0]
    ld a, h
    ld a, b
    add hl, sp

jr_02c_5ff6:
    inc sp
    scf
    ld h, $2e
    inc e
    ld a, a
    adc $c5
    add a
    rlca
    rrca
    ccf
    rst RST_38
    ld [de], a
    nop
    ld b, $80
    nop
    rlca
    rrca
    ld h, a
    ld bc, $0100
    rlca
    pop hl
    rst RST_38
    ld bc, $8cf6
    sub d
    ld a, l
    ld [$1200], a
    add b
    ld [bc], a
    ld hl, sp-$21
    inc a
    ld [hl], d
    db $f4
    ld l, b
    inc [hl]
    nop
    nop
    rst RST_38
    ld a, [hl]
    db $fc
    ld a, a
    ld a, a
    ccf
    rra
    rlca
    add b
    jr nc, jr_02c_5ff6

    ldh [c], a
    ldh a, [rNR12]
    ld hl, sp+$02
    nop
    nop
    jr nc, jr_02c_607d

    ld b, a
    ld c, a
    dec bc
    adc a
    rra
    rla
    rrca
    rst RST_38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    pop af
    dec sp
    inc sp
    ld [hl], e
    ld [hl], a
    ld h, e
    rst RST_20
    db $e3
    rst RST_00
    ld [de], a
    ldh a, [rTIMA]
    ldh [$ffe0], a
    rra
    ld [de], a
    ccf
    ld [bc], a
    inc a
    dec sp
    rla
    rrca
    ld [de], a
    rst RST_38
    inc bc
    rst RST_20
    rst RST_00
    adc a
    cp $12
    add b

jr_02c_6065:
    dec b
    nop
    nop
    rrca
    ld c, $00
    ld bc, $0012
    inc bc
    halt
    ld h, h
    rst RST_28
    rst RST_08
    rst RST_08
    rlca
    ld bc, $c502
    dec c
    db $fd
    db $fd
    ld [de], a
    rst RST_38

jr_02c_607d:
    ld [bc], a
    cp e
    ld a, [$f4f5]
    jp hl


jr_02c_6083:
    ld [$ebe5], a
    ld d, e
    ld a, a
    rst RST_38
    db $fd
    ld a, l
    rst RST_38
    rst RST_28
    cp d
    ld [hl], e
    call z, $ffff
    rlca
    ret nz

    jr nz, @+$04

    sub d
    jr c, jr_02c_6065

    db $eb
    pop af
    ld hl, $3c20
    jr nz, jr_02c_6083

    ld h, c
    ld b, e
    ld b, c
    ld bc, $0301
    inc bc
    rst RST_00
    rst RST_00
    rst RST_08
    adc a
    adc a
    sbc a
    rra
    ccf
    ld [de], a
    ldh [$ff03], a
    ld [de], a
    ret nz

    ld [bc], a
    add b
    rrca
    ld [de], a
    rra
    ld [bc], a
    inc de
    rlca
    rrca
    inc bc
    db $fd
    rst RST_38
    sub a
    rst RST_30
    add a
    cpl
    cp $f0
    ld [de], a
    cp a
    rlca
    ld [de], a
    db $fc
    rlca
    ld bc, $7fff
    rrca
    ld [de], a
    nop
    ld [bc], a
    ld bc, $ff12
    inc bc
    nop
    ld e, a
    or l
    ld a, d
    ld [de], a
    rst RST_38
    inc bc
    nop
    cp $af
    ld e, a
    add b
    rst RST_38
    cp $f0
    ld [de], a
    nop
    ld [bc], a
    add b
    ld [de], a
    rra
    rlca
    db $fc
    db $fc
    ld hl, sp-$0c
    ld [$f6e8], a
    and $00
    ld h, c
    ld a, [hl-]
    inc bc
    ldh [$ff7f], a
    rra
    ret nz

    push af
    ld a, c
    db $fc
    xor a
    ld a, b
    add b
    rst RST_38
    rst RST_38
    xor a
    sbc a
    ccf
    push af
    ld e, $01
    rst RST_38
    rst RST_38
    add b
    add $9c
    ret nz

    ld bc, $f8fe
    inc bc
    ld [de], a
    rra
    dec b
    ld e, a
    cpl
    ld [de], a
    rst RST_38
    inc b
    ldh a, [rIF]
    ld [de], a
    rst RST_38
    inc bc
    ldh a, [rIF]
    ld [de], a
    rst RST_38
    dec bc
    ldh a, [rIF]
    ld [de], a
    rst RST_38
    inc b
    ccf
    ld [de], a
    rst RST_38
    ld b, $ea
    jp nc, $d0ec

    ret nz

    jp c, $80a0

    ret nc

    xor a
    sbc b
    nop
    inc a
    ld c, $0f
    cpl
    nop
    ret nz

    ld [hl], l
    add hl, sp
    nop
    ld h, b
    pop hl
    and c
    nop
    ld bc, $98af
    nop
    inc b
    add a
    add a
    ld b, $f0
    inc e
    nop
    inc c
    ldh a, [$fff0]
    ldh a, [c]
    rst RST_08
    xor a
    rst RST_08
    rrca
    rlca
    inc sp
    ld b, e
    inc bc
    ld [de], a
    rst RST_38
    rlca
    ld [de], a
    add b
    ld [bc], a
    ld [de], a
    ret nz

    ld [bc], a
    db $e4
    ldh a, [$ff2e]
    inc de
    jr z, jr_02c_619f

    rra
    rra
    ld b, [hl]
    dec h
    ld h, l
    adc l
    rlca
    ld bc, $7c00
    db $fc
    add c
    and a
    db $d3
    ret nz

    add b
    inc e
    ld a, $36
    add d
    ld [hl-], a
    ldh [rNR10], a
    and $1c
    ld hl, sp+$61
    inc [hl]
    inc bc
    inc bc
    rlca
    daa
    ld b, a
    rrca
    rrca
    rra
    nop
    ccf
    ld [de], a
    ld a, a
    dec b
    nop
    ld [de], a
    rst RST_38
    ld b, $00
    add b
    ld [de], a

jr_02c_619f:
    nop
    ld b, $12
    cp $02
    db $fc
    ld hl, sp+$02
    ld b, $29
    add hl, sp
    add hl, bc
    ld [$2000], sp
    jr nc, @+$3e

    add b
    ccf
    ld h, b
    ld b, a
    rst RST_38
    cp a
    rst RST_00
    ldh [$ff03], a
    ld sp, hl
    inc c
    ldh [$fffa], a
    db $fc
    ldh a, [rSB]
    db $10
    sub b
    sub b
    db $10
    ld h, b
    ret nz

    call nz, Call_000_008c
    dec b
    dec bc
    rlca
    dec bc
    inc bc
    ld [de], a
    nop
    ld [bc], a
    ld a, a
    ld [de], a
    rst RST_38
    ld a, [bc]
    db $fc
    ld hl, sp-$08
    ld [de], a
    rst RST_38
    ld [bc], a
    ld hl, sp-$40
    ld bc, $4101
    ld hl, sp-$10
    nop
    nop
    ret nz

    add b
    add b
    ret nz

    ld e, $1e
    ld [de], a
    ld a, $02
    ld a, a
    ccf
    rra

Jump_02c_61f0:
    ld a, $1f
    ld e, $0f
    rrca
    rlca
    rlca
    inc bc
    ld a, b
    ccf
    adc a
    nop
    ret nz

    pop af
    ld a, [$0ff1]
    db $fc
    pop af
    rlca
    ccf
    rra
    rrca
    rrca
    jr c, jr_02c_627a

    ldh a, [$ffe0]
    ldh [$ffc0], a
    add b
    nop
    ld h, b
    ld [hl], b
    ld a, b
    ld a, h
    ld hl, sp-$03
    cp $fd
    rra
    ld [de], a
    nop
    inc bc
    ld bc, $0301
    rst RST_38
    rst RST_38
    ccf
    rlca
    pop bc
    ldh [$ffc0], a
    sbc a
    ld [de], a

Jump_02c_6228:
    rst RST_38
    inc b
    ccf
    rra
    rra
    ldh a, [$fff0]
    db $f4
    db $f4
    ld [de], a
    ldh [$ff03], a
    pop bc
    and c
    ld b, b
    jr nz, @+$42

    jr nz, jr_02c_62ab

    ldh a, [$ffd0]
    ld hl, sp-$10
    ld hl, sp+$74
    ld a, b

jr_02c_6242:
    ld [hl], b
    ld a, b
    rrca
    rlca
    rlca
    inc bc
    ld bc, $1201
    nop
    inc bc
    ld [de], a
    inc bc
    dec b
    ldh a, [$ff30]
    nop
    ldh [$fffc], a
    db $fc
    ld hl, sp-$08
    ld c, $0c
    ld bc, $0703
    rla
    inc hl
    inc bc
    jr nz, jr_02c_6242

    ldh [rNR12], a
    ldh a, [rDIV]
    cp $fc
    ld hl, sp+$70
    ld h, b
    ld h, b
    ld [hl], b
    jr nz, jr_02c_6276

    ld c, $0c
    dec e
    add hl, bc
    ld [de], a
    inc bc
    ld [bc], a

jr_02c_6276:
    ld a, $7c
    ld hl, sp-$08

jr_02c_627a:
    di
    xor $cc

jr_02c_627d:
    ret c

    ld [de], a
    rra
    ld b, $0f
    pop hl
    pop bc
    ld [de], a
    ret nz

    dec b
    ld [de], a
    ld hl, sp+$02
    ld a, h
    ld a, h
    ld [de], a
    inc a
    ld [bc], a
    ld [de], a
    ld [hl], b
    inc bc
    jr c, jr_02c_62d0

    inc a
    inc e
    rlca
    dec c
    ld a, [bc]
    inc c
    dec b
    ld [de], a
    nop
    ld [bc], a
    inc bc
    add e
    ld b, c
    add c
    ld [de], a
    nop
    inc bc
    ld [de], a
    ld hl, sp+$02
    ld [de], a
    ld sp, hl
    ld [bc], a

jr_02c_62ab:
    ld a, b
    ld a, b
    inc de
    inc bc
    inc de
    ld [de], a
    inc bc
    inc b
    ld [de], a
    ldh [rSC], a
    pop hl
    pop bc
    ret nz

    add b
    ld [de], a
    nop
    ld [bc], a
    ldh [$ffb0], a
    ldh a, [$ff50]
    nop
    nop
    rlca
    rlca
    dec d
    ld [$2010], sp
    nop
    jr nz, jr_02c_627d

    db $e3
    rst RST_20
    rst RST_20
    rst RST_08

jr_02c_62d0:
    rst RST_18
    rst RST_38
    cp a
    rlca
    ld [de], a
    add a
    ld [bc], a
    rst RST_00
    jp $e3e3


    ret nz

    jp nz, $8b83

    add e
    add c
    add b
    nop
    ld [de], a
    inc e
    ld [bc], a
    inc c
    ld c, $8e
    adc [hl]
    ld c, a
    ld e, $1e
    ld c, $0f
    rlca
    rlca
    ld [de], a
    inc bc
    inc bc
    rlca
    rlca
    inc bc
    add e
    add e
    pop bc
    add b
    ret nz

    ldh [rNR12], a
    ldh a, [rSC]
    ld hl, sp-$08
    jr c, @+$1a

    ld [de], a
    nop
    dec b
    ld [bc], a
    ld [de], a
    nop
    ld b, $0e
    ld c, $1d

jr_02c_630e:
    add hl, de
    dec de
    scf
    cpl
    cpl
    nop
    ret nz

    ld [de], a
    ldh [$ff03], a
    pop hl
    pop bc
    nop
    jr nz, jr_02c_633d

    and b
    ldh [$ffe0], a
    ret nz

    ret nz

    cp a
    dec sp
    ld [hl], a
    rst RST_30
    ld [hl], a
    ld [hl], e
    ld [hl], b
    jr nc, jr_02c_630e

    db $e3
    jp hl


    jp hl


    db $ec
    inc c
    inc c
    inc b
    ld [de], a
    nop
    inc c
    ld [$000c], sp
    rlca
    rlca
    add e
    ldh [$fff0], a

jr_02c_633d:
    ld a, b
    ld a, $06
    inc bc
    ld bc, $1201
    nop
    inc b
    pop bc

jr_02c_6347:
    pop bc
    ret nz

    and b
    ld b, b
    and b
    ld b, b
    jr nz, jr_02c_6347

    ld [de], a
    db $fc
    ld [bc], a
    ld a, [hl]
    ld l, $14
    nop
    ld b, $06
    nop
    ld bc, $0012
    rlca
    add b
    jr nz, jr_02c_6369

    ld bc, $5f5f
    ld a, a
    rst RST_38
    cp a
    ld a, a
    ld a, $5e

jr_02c_6369:
    jp $8312


    ld [bc], a
    rlca
    rlca
    rrca
    rrca
    ld [de], a
    ret nz

    ld [bc], a
    add b
    ret nz

    add b
    ld b, b
    add b
    jr nz, jr_02c_638d

    nop
    ld [bc], a
    ld bc, $0703
    rlca
    jr c, @+$7a

    ld hl, sp-$04
    db $fc
    cp $fe
    rst RST_20
    ld [de], a
    ld a, a
    ld [bc], a
    ld [de], a

jr_02c_638d:
    ccf
    inc bc
    rra
    nop
    nop
    rlca
    ld [de], a
    nop
    ld [bc], a
    ld bc, $0001
    cp $ff
    ld h, e
    rlca
    inc c
    sbc b
    ld sp, $0012
    ld [bc], a
    ld b, b
    nop
    ld [hl], b
    rst RST_28
    cp a
    ld [de], a
    nop
    dec b
    ldh a, [$ff80]
    ld [de], a
    nop
    dec b
    rrca
    ccf
    inc bc
    inc bc
    ld [de], a
    nop
    inc b
    rst RST_08
    ld [bc], a
    ld [bc], a
    nop
    inc b
    nop
    nop
    ld [$2880], sp
    ld d, h
    jr z, jr_02c_6414

    ld [de], a
    nop
    inc bc
    rrca
    rra
    rra
    ld [de], a
    ccf
    ld [bc], a
    ld a, $7f
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    rrca
    dec b
    ld a, [bc]
    ld [de], a
    nop
    ld [bc], a
    ld bc, $8783
    rrca
    rrca
    ld a, $7e
    db $fc
    ld hl, sp-$10
    ld [de], a
    rra
    inc b
    ld [de], a
    rrca
    ld [bc], a
    add [hl]
    add b
    ret nz

    ret nz

    ldh [$fff0], a
    ld hl, sp-$02
    inc hl
    inc bc
    inc bc
    nop
    ld bc, $0012
    ld [bc], a
    rst RST_38
    rst RST_38
    cp $ae
    ld d, [hl]
    ld a, [hl+]
    ld [bc], a
    ld [de], a
    nop
    inc b
    ld bc, $0703
    rrca
    ccf
    ld a, a
    ld a, a
    rst RST_38
    ei
    di
    ld b, a
    adc a
    di

jr_02c_6414:
    ld [de], a
    rst RST_38
    inc bc
    db $fc
    ld sp, hl
    db $e3
    ret nz

    ldh a, [$fff0]
    ldh [c], a
    jp c, $9d5d

    sbc l
    ld [de], a
    nop
    dec b
    ld bc, $7e01
    db $fc
    db $fc
    ld a, [$f8fc]
    ld hl, sp-$10
    ld [de], a
    nop
    rlca
    add a
    add a
    ld [de], a
    add b
    ld [bc], a
    pop bc
    pop bc
    ret nz

    add b
    ldh [$ff8a], a
    inc c
    db $fc
    ld hl, sp-$30
    nop
    ld de, $0c80
    dec de
    nop
    inc c
    add b
    inc bc
    inc c
    nop
    ld [bc], a
    ld bc, $000c
    ld b, $55
    ld a, [bc]
    inc c
    nop
    dec b
    rla
    ld [hl+], a
    ld de, $0c0e
    nop
    inc bc
    ld d, e
    sbc e
    add hl, bc
    dec b
    ld b, $03
    ld bc, $f900
    ld a, [$fddc]
    db $eb
    rla
    db $ec
    nop
    and c
    inc [hl]
    inc l
    or h
    jr c, jr_02c_64e3

    add b
    nop
    rlca
    ld b, $2e
    ld e, h
    inc a
    ld a, b
    jr c, jr_02c_64f5

    ccf
    ccf
    ld a, a
    ld a, [hl]
    cp $fd
    ei
    rst RST_30
    add b
    inc c
    nop
    ld [bc], a
    ret nz

    ret nz

    ldh [$ffc0], a
    nop
    inc bc
    rlca
    inc c
    rrca
    inc b
    inc a
    cp $cf
    adc a
    inc c
    cpl
    inc bc
    nop
    ld b, b
    ld b, b
    ret nz

    ret nz

    and b
    ret nz

    ret nz

    inc c
    db $fc
    rlca
    inc c
    nop
    ld [$0502], sp
    dec bc
    rlca
    dec bc
    rlca
    rrca
    nop
    xor b
    cp $0c
    rst RST_38
    inc b
    nop
    nop
    add b
    ld b, b
    xor b
    db $f4
    rst RST_38
    rst RST_38
    ld [$2a14], sp
    dec a
    ld a, $1f
    ld c, $8f
    add hl, sp
    ccf
    ccf
    ld a, a
    ld a, e
    ld a, e
    cp a
    ld a, a
    inc c
    rst RST_38
    rlca
    ldh [$ffc0], a
    ldh [$ffc0], a
    and b
    ret nz

    ret nz

    add b
    inc c
    rrca
    ld [bc], a
    inc c
    rra
    dec b
    ccf
    inc c
    rst RST_38
    dec b
    add b

jr_02c_64e3:
    inc c
    ret nz

    ld [bc], a
    inc c
    add b
    inc bc
    inc c
    rst RST_38
    rlca
    nop
    ld a, a
    inc c
    rst RST_38
    dec b
    inc c
    rrca
    rlca
    nop

jr_02c_64f5:
    ret nz

    ld hl, sp+$0c
    db $fc
    inc b
    inc c
    nop
    rlca
    rrca
    rra
    ld c, $0c
    nop
    inc b
    adc a
    rlca
    rlca
    inc bc
    ld bc, $000c
    ld [bc], a
    add e
    ld a, c
    pop hl
    ld hl, sp-$10
    ldh [rP1], a
    nop
    sbc h
    adc b
    sub b
    ld [$000c], sp
    inc bc
    inc c
    inc bc
    ld [bc], a
    rlca
    rlca
    inc c
    rrca
    ld [bc], a
    ld hl, sp-$10
    add sp, -$10
    ldh [$ffd0], a
    and c
    jp Jump_000_000c


    inc bc
    ld bc, $8181
    ld bc, $c0e0
    ret nz

    add e
    add e
    add l
    add e
    add l
    nop
    jr jr_02c_65b4

    db $fc
    cp $dc
    call c, $0cf8
    rrca
    inc b
    inc c
    rlca
    ld [bc], a
    inc c
    nop
    cpl
    rrca
    ld c, $05
    ld b, $0e
    ld c, $04
    nop
    ld b, $8d
    inc d
    ld c, b
    inc c
    nop
    inc bc
    add c
    inc c
    ld bc, $8306
    add c
    ld bc, $000c
    ld [bc], a
    inc bc
    nop
    ld hl, sp-$20
    ret nz

    ret z

    sbc h
    inc a
    db $fc
    db $fc
    inc c
    rlca
    ld [bc], a
    inc c
    rrca
    inc b
    inc c
    nop
    ld [$0c80], sp
    nop
    dec b
    dec e
    nop
    add b
    db $d3
    nop
    rst RST_38
    nop
    rrca
    ld a, [bc]
    dec b
    rst RST_38
    add hl, bc
    ld [$ef1f], sp
    rst RST_38
    inc e
    add sp, $1f
    rst RST_28
    ld a, [de]
    add sp, $00
    cp $fe
    jr nc, @+$04

    rst RST_38
    cp $ff
    sub d
    inc bc
    cp $ff
    sbc a
    ld h, $03
    rra
    rst RST_28
    jr jr_02c_65ce

    nop
    ld b, d
    ld bc, $fd1f
    ldh [$ff0a], a
    ld bc, $fffe
    ld [hl+], a
    ld b, e
    cp $ff
    cp a
    adc d
    adc e

jr_02c_65b4:
    cp $ff
    cp $01
    ld a, [bc]
    ld b, $00
    inc sp
    adc e
    jr z, jr_02c_6625

    dec b
    ld h, b
    inc bc
    push hl
    jr jr_02c_663b

    dec b
    ld h, b
    inc bc
    rst RST_38
    ld e, a
    nop
    ld e, b
    inc b
    ld d, c

jr_02c_65ce:
    dec bc
    inc bc
    ld e, e
    ei
    inc bc
    ld e, e
    ld h, b
    inc bc
    ld a, [$1a00]
    ld h, b
    ld a, [bc]
    rst RST_18
    or b
    add d
    sbc b
    and b
    sbc d
    ld h, c
    ld [bc], a
    nop
    add b
    dec a
    ccf
    and [hl]
    ld bc, $3f81
    adc h
    ccf
    and b
    inc bc
    ld a, [bc]
    inc bc
    rst RST_18
    ret nz

    rst RST_38
    ld hl, sp-$01
    adc b
    ld h, a
    ld [bc], a
    adc b
    dec hl
    ld a, [hl]
    ld h, [hl]
    dec b
    ld e, e
    nop
    ld e, l
    inc bc
    ld e, e
    rlca
    call nc, $ff01
    ld d, e
    rrca
    ld d, e
    rrca
    ld d, a
    rrca
    cp d
    nop
    rst RST_38
    ld a, d
    add b
    cp d
    ret nz

    cp d
    ret nz

    jp c, $fee0

    add sp, $01
    jp z, $87f0

    ccf
    adc a
    ccf
    add a
    rst RST_08
    ccf
    adc e

jr_02c_6625:
    ccf
    add l
    xor e
    nop
    and [hl]
    ld bc, $fffc
    push af
    db $fc
    scf
    nop
    cp $1b
    nop
    ld a, a
    rst RST_38
    ccf
    rst RST_38
    ei
    rra
    rst RST_38

jr_02c_663b:
    jp nz, $2902

    ld c, $2e
    ld bc, $bfe1
    nop
    ld a, $c0
    ld bc, $40be
    ld h, c
    ld [bc], a
    rst RST_38
    rst RST_38
    rrca
    nop
    ldh a, [$fff0]
    dec c
    ld c, $00
    ldh a, [$ff79]
    nop
    db $dd
    nop
    jr nc, jr_02c_6674

    rst RST_00
    rlca
    ld [$40f0], a
    dec de
    ld [$03a6], a
    add e
    di
    nop
    adc a
    ld e, c
    ld [de], a
    rrca
    rst RST_38
    ld bc, $b9fe
    ld [bc], a
    add sp, -$01
    db $f4
    rst RST_38

jr_02c_6674:
    db $eb
    rst RST_38
    rst RST_30
    rst RST_38
    rst RST_38
    ld bc, $fa00
    db $fc
    db $fc
    cp $fe
    rst RST_18
    db $fd
    inc bc
    db $fc
    ld [bc], a
    db $fd
    add hl, bc
    ld bc, $00c0
    rst RST_38
    ccf
    rra
    ld c, a
    ccf
    rra
    ld l, a
    jr nz, jr_02c_66f2

    rst RST_18
    ld d, b
    cpl
    ld a, a
    nop
    ld a, a
    and e
    nop
    db $fd
    ld sp, hl
    push hl
    cp $00
    db $10
    inc bc
    sub a
    db $10
    add hl, bc
    ld bc, $302a
    jp nz, $c0ff

    ld c, $30
    ld b, e
    ld b, b
    ld c, h
    ld [hl], b
    ld e, a
    cp a
    ld h, b
    rra
    ld h, b
    ccf
    ld b, b
    add a
    and a
    nop
    nop
    cp a
    ld bc, $00c0
    ld a, $00
    pop bc
    inc [hl]
    ld bc, $ff00
    db $eb
    rst RST_38
    push de
    rst RST_38
    ld [bc], a
    rst RST_38
    nop
    rra
    rst RST_10
    nop
    nop
    ldh [$ffc6], a
    db $10
    ldh [$ffa3], a
    nop
    ret nz

    nop
    rst RST_38
    daa
    rra
    ld b, e
    ccf
    inc d
    ld l, e
    jr z, jr_02c_673a

    adc a
    ld e, h
    inc hl
    ccf
    ld b, b
    or e
    ld [bc], a
    dec de
    ld b, $a2
    ld bc, $ff03
    nop
    db $e4

jr_02c_66f2:
    ld hl, sp-$0e
    db $fc
    dec c
    ldh a, [c]
    ld a, [bc]
    rst RST_30
    push af
    rrca
    ldh a, [$ff5a]
    nop
    nop
    nop
    ld h, [hl]
    adc b
    rst RST_38
    cp e
    ld b, h
    call z, Call_02c_7731
    ld [$4239], sp
    rst RST_30
    ld c, [hl]
    ld [hl], c
    ld [hl], e
    and e
    nop
    ld a, b
    add b
    add b
    ld b, d
    rst RST_38
    adc $10
    ld [hl], d
    add h
    sbc h
    ld [bc], a
    and $00
    ld hl, sp-$3c
    db $10
    add hl, bc
    dec bc
    adc h
    ld de, $007e
    ld a, l
    nop

jr_02c_6729:
    ld a, h
    rst RST_38
    ld bc, $017a
    ld a, b
    inc bc
    ld a, b
    inc bc
    ret nz

    rst RST_38
    nop
    ld hl, $801f
    ld a, a
    nop

jr_02c_673a:
    rst RST_38
    ld a, [bc]
    ld a, a
    push af
    ld d, l
    xor d
    dec hl
    call nc, $a05f
    ldh [c], a
    ld de, $7ffd
    add hl, bc
    db $10
    sub l
    ld a, a
    ld b, b
    cp a
    ret nz

    ccf
    cp e
    ret nz

    ccf
    ldh [c], a
    inc de
    rst RST_38
    rst RST_38
    ld d, l
    add hl, bc
    dec b
    inc bc
    ld a, e
    db $e4
    ld hl, sp-$6d
    ld de, $fd56
    ld bc, $98fe
    dec d
    rlc b
    nop
    ld [bc], a
    inc de
    xor e
    dec [hl]
    nop
    jr nc, jr_02c_6793

    sbc c
    nop
    rst RST_38
    ld [hl+], a
    pop bc
    inc b
    db $e3
    ld d, b
    and a
    and c
    ld d, [hl]
    xor $a0
    inc bc
    rra
    rst RST_38
    rrca
    and a
    jr nz, jr_02c_6729

    ld e, a
    ld d, b
    jp hl


    xor a
    and b
    inc bc
    ld h, d
    jr z, jr_02c_680a

    inc sp
    jr nz, jr_02c_679f

    ldh a, [$ff83]
    rst RST_38

jr_02c_6793:
    db $fc
    pop bc
    db $fc
    pop bc
    cp $40
    cp $00
    rst RST_38
    sbc h
    sbc h
    ld l, [hl]

jr_02c_679f:
    xor $12
    ld [hl], d
    adc h
    sbc h
    rst RST_38
    and $ee
    ldh a, [c]
    or $78
    ld a, [$7c3c]
    rst RST_38
    add b
    call c, $cc90
    sbc c
    call nz, $c08d
    rst RST_38
    call nz, $e1e1
    ldh a, [$ffb0]
    cp c
    sbc b
    sbc l
    ld a, b
    ld b, l
    jr nz, @-$0d

    cpl
    ld sp, hl
    inc h
    adc a
    nop
    rlca
    ld [hl], b
    inc a
    ld hl, $10fe
    add hl, sp
    ccf
    ret nz

    ld e, a
    and b
    ccf
    ret nz

    ld a, a
    cp l
    add b
    inc h
    dec [hl]
    ld bc, $01fe
    cp $fa
    add hl, hl
    jp nc, Jump_000_25ff

    push hl
    ld [de], a
    db $d3
    inc h
    rst RST_20
    db $10
    rst RST_30
    dec a
    nop
    ld c, b
    inc sp
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, [$ea29]
    inc de
    cp $fa
    daa
    ld a, [hl-]
    call nz, $c23c
    cp $00
    db $fc
    db $fd
    ld [bc], a
    ld sp, $fe03
    nop
    adc [hl]
    cp [hl]
    rst RST_00
    rst RST_08

jr_02c_680a:
    rst RST_38
    di
    rst RST_30
    ld sp, hl
    ei
    db $fc
    db $fd
    ld a, [hl]
    cp $ff
    ccf
    ld a, a
    sbc a
    cp a
    ld c, [hl]
    ld c, h
    rlca
    ld b, $ef
    inc bc

jr_02c_681e:
    ldh [c], a
    inc bc
    ldh a, [c]
    sub [hl]
    jr nc, jr_02c_681e

    ld bc, $9f7c
    nop
    cp [hl]
    xor d
    nop
    ld d, l
    or e
    ld bc, $01b3
    ld d, l
    ei
    nop
    ld a, [hl+]
    adc l
    db $10
    ld a, b
    ld b, c
    inc a
    jr nz, jr_02c_6859

    rst RST_38
    ld d, b
    rrca
    ld [$0447], sp
    ld b, e
    ld [bc], a
    ld b, c
    rst RST_38
    ld [hl], c
    ld b, b
    jr z, jr_02c_684c

    ld d, b
    inc bc
    nop

jr_02c_684c:
    inc bc
    rst RST_38
    ld bc, $0202
    add c
    ld bc, $02c2
    pop af
    ld bc, $2703

jr_02c_6859:
    ld [hl-], a
    ld l, $20
    db $d3
    jr nc, jr_02c_6859

    inc hl
    ld c, b
    dec [hl]
    ld c, b
    dec [hl]
    ld a, b
    dec [hl]
    sbc $78
    dec [hl]
    rst RST_08
    rst RST_18
    rst RST_20
    rst RST_28
    add h
    ld sp, $fd00
    rst RST_00
    nop
    nop
    ld a, a
    inc c
    ld b, b
    nop
    ld b, l
    adc b
    dec [hl]
    adc a
    sbc a
    cp a
    rst RST_20
    rst RST_28
    pop af
    rst RST_30
    ld hl, sp-$07
    jr nc, jr_02c_6886

jr_02c_6886:
    nop
    cp $8c
    ld sp, $7244
    ld b, [hl]
    ld [hl], c
    ld b, [hl]
    ld [hl], c
    ld b, e
    rst RST_38
    ld [hl], b
    ld b, c
    ld a, b
    ld [hl], b
    ld a, h
    ld e, b
    ld e, [hl]
    ld c, h
    rst RST_38
    ld c, a
    inc a
    inc a
    ld c, a
    ccf
    scf
    cp a
    ld [$8fff], sp
    add b
    ld h, a
    ret nz

    jr c, jr_02c_690a

    jr jr_02c_68de

    ld h, l
    ld [$212e], sp
    cp a
    and [hl]
    inc bc
    ld h, b
    inc bc
    nop
    ld hl, sp+$01
    ld d, $fe
    db $e4
    ld de, $0007
    inc de
    ldh [rTIMA], a
    ld hl, sp+$02
    di
    db $fc
    nop
    ld sp, $f930
    ld hl, $00f8
    db $e4
    inc bc
    db $e3
    db $10
    rrca
    ld b, h
    ld hl, $222f
    adc [hl]
    db $10
    rrca
    rst RST_38
    rlca
    jp nz, Jump_02c_4093

    inc bc

jr_02c_68de:
    sub a
    ld b, h
    ld h, b
    dec h
    and d
    ld b, l
    and b
    ld c, a
    ret nz

    rst RST_38
    rst RST_10
    ldh [rIE], a
    ldh a, [$ffc5]
    ld b, b
    ld hl, sp-$37
    ld b, d
    nop
    rst RST_18
    rst RST_38
    nop
    rlca
    ldh [$ff03], a
    ld hl, sp+$01
    db $fc
    nop
    db $fd
    db $fc
    ld a, d
    ld b, b
    cp $00
    ld h, a
    ld h, [hl]
    ld h, e
    ld h, e
    ld a, a
    ld h, c
    ld h, c
    nop

jr_02c_690a:
    adc b
    nop
    ld hl, sp+$00
    sbc l
    jr nc, @+$01

    nop
    rst RST_08
    add hl, de
    add b
    ld a, [bc]
    ret nz

    add c
    ldh [rIE], a
    jp nz, Jump_02c_61f0

    ld a, b
    jr nc, jr_02c_695c

    jr @+$20

    dec hl
    rrca
    inc c
    ld a, [$5529]
    and $40
    xor d
    ld h, a
    ld h, $32
    inc sp
    rst RST_38
    ld d, b
    xor a
    xor b
    ld d, a
    call nc, $fa2b
    dec b
    rst RST_38
    db $f4
    dec bc
    ld a, [$fd05]
    ld [bc], a
    cp $01
    rst RST_38
    ld bc, $0a7e
    ld [hl], l
    dec d
    ld l, d
    dec bc
    ld [hl], h
    rst RST_28
    rla
    ld l, b
    cpl
    ld d, b
    jr c, jr_02c_69a2

    ld d, [hl]
    xor e
    xor c
    rla
    ld d, a
    ld a, h
    add e
    sub a
    ld de, $62fe

jr_02c_695c:
    ld de, $580f
    ld h, d
    inc sp
    ld a, [hl]
    ld d, b
    ld e, l

jr_02c_6964:
    xor l
    ld a, [$fd52]
    rlca
    ld hl, sp+$74
    ld d, c
    ei
    rrca
    ldh a, [rNR32]
    ld d, d
    xor [hl]
    xor b
    ld d, [hl]
    db $f4
    ld a, [bc]
    ld c, a
    ld hl, sp+$06
    db $fc
    ld [bc], a
    add [hl]
    ld d, e
    add h
    inc sp
    cp $68
    ld b, d
    rst RST_38
    ld a, a
    ld a, a
    ccf
    ld a, a
    rlca
    add h
    rlca
    call nz, $07ff
    db $e4
    rlca
    db $f4
    rlca
    ld [hl], h
    rlca
    sub h
    ld c, a
    inc bc
    add sp, $00
    db $f4
    and e
    dec [hl]
    xor b
    inc [hl]
    ld a, l
    or b
    ld e, b
    push af
    ld d, h

jr_02c_69a2:
    xor h
    jr nc, jr_02c_6964

    or b
    ld e, d
    adc d
    nop
    rst RST_20
    rra
    ld a, a
    ld h, b
    cpl
    ld d, b
    ld e, a
    jr nz, @+$41

    ld b, b
    db $e4

jr_02c_69b4:
    ld d, e
    call Call_02c_757f
    jr nc, jr_02c_69b4

    inc b
    halt
    ld sp, $3576
    sbc a
    cp a
    db $10
    db $10
    ld b, a
    sub [hl]
    ld d, c
    sub d
    ld d, a
    ld [$7f12], sp
    sub [hl]
    ld d, c
    inc e
    ld h, c
    nop
    ld h, l
    rst RST_08
    ccf
    ld a, a
    adc a
    cp a
    add d
    dec [hl]
    sub [hl]
    ld d, c
    rst RST_00
    rst RST_08
    call z, Call_02c_4124
    jr nz, @+$67

    rra
    ccf
    ld b, h
    ld h, c
    ld h, d
    ld bc, $3f1f
    cp a
    rst RST_08
    rst RST_18
    db $e3
    rst RST_28
    pop af
    di
    ld d, $67
    add b
    sbc a
    cp a
    ret nz

    ret nz

    rst RST_08
    rst RST_18
    nop
    ld h, a
    ld [$ff41], sp
    rlca
    rst RST_38
    ld hl, sp-$05
    ld [hl], e
    ld de, $6716
    ld h, d
    ld bc, $100c
    ld e, c
    ld h, b
    ld a, [hl]
    ld [bc], a
    ld b, e
    rrca
    sbc a
    inc bc
    rrca
    pop af
    di
    ld [de], a
    ld h, a
    ld c, $94
    ld d, [hl]
    rst RST_38
    rra
    ld a, a
    jr nz, jr_02c_6a60

    inc h
    ld l, c
    add [hl]
    ld sp, $5990
    ld b, $db
    ld l, a
    rst RST_38
    rst RST_38
    nop
    ld b, c
    inc b
    ld l, c
    inc b
    ld h, a
    sub $6b
    ld d, h
    ld hl, $8c00
    ld sp, $69d4
    inc e
    ld h, c
    ret nz

    ld l, a
    jp nc, $e46f

    ld l, a
    ld b, b
    ld a, a
    db $e4
    ld de, $943c
    ld h, c
    nop
    ld h, e
    ldh a, [$fff7]
    ld hl, sp-$08
    sub h
    ld d, e
    sub [hl]
    ld d, e
    db $fc
    ld hl, $2b12
    halt
    adc a
    cp a
    rlca
    rst RST_08
    inc bc
    rlca
    cp $92
    ld d, e

jr_02c_6a60:
    ldh [rIF], a
    ldh [rIF], a
    jr nz, jr_02c_6a6e

    ld hl, $09fd
    or [hl]
    ld [hl], l
    inc bc
    ld hl, sp+$03

jr_02c_6a6e:
    ld hl, sp+$02
    ld [$e283], sp
    add sp, -$3a
    ld [hl], l
    or [hl]
    ld [hl], a
    or [hl]
    ld [hl], e
    add $77
    jp z, Jump_000_2075

    push af
    ld [$70f2], sp
    rrca
    or $70
    ld [$0b20], sp
    jr nz, jr_02c_6a8c

    dec bc

jr_02c_6a8c:
    ld de, $0580
    dec bc
    ldh [c], a
    ldh [c], a
    dec b
    ld [bc], a
    dec b
    dec b
    jr nz, @+$04

    dec b
    ld hl, $a102
    ld hl, $5f80
    adc a
    cpl
    ld d, b
    or b
    ld a, a
    cp a
    nop
    add b
    ret nz

    ld h, b
    cp b
    sub e
    call nz, Call_02c_7f80
    dec b
    rst RST_38
    inc bc
    ld a, a
    ccf
    ccf
    dec b
    rrca
    inc b
    ld bc, $0f0e
    dec b
    jr z, jr_02c_6ac3

    ld [$0f05], sp
    ld [bc], a
    nop
    ld [bc], a

jr_02c_6ac3:
    dec b
    rrca
    ld [bc], a
    dec b
    ld hl, sp+$02
    nop
    ret z

    dec b
    ld hl, sp+$02
    inc bc
    ld [$0c0c], sp
    inc b
    dec b
    nop
    ld [bc], a
    ld h, l
    add l

Jump_02c_6ad8:
    ldh [$ff1f], a
    dec b
    rst RST_38
    inc bc
    add sp, -$18
    ld [$f808], sp
    ld hl, sp+$08
    add sp, $0b
    ld a, [bc]
    ld a, [bc]
    dec b
    ld [$0004], sp
    ccf
    ld a, a
    rst RST_18
    xor a
    ld c, a
    add b
    ld b, b
    add hl, bc
    ld l, l
    dec [hl]
    add hl, de
    add b
    add a
    add a
    db $d3
    add b
    dec b
    nop
    inc b
    add b
    add b
    ldh [$ffe0], a
    dec b
    jr nz, @+$07

    jp Jump_000_05c3


    jp nz, Jump_000_0505

    jr nz, jr_02c_6b10

    cpl
    dec b

jr_02c_6b10:
    jr nz, jr_02c_6b15

    dec b
    ld [bc], a
    ld [bc], a

jr_02c_6b15:
    ld a, [$0205]
    inc bc
    jr nz, @+$2e

    ld h, $05
    ld hl, $a102
    ld hl, $1805
    ld [bc], a
    and b
    dec b
    nop
    inc bc
    dec e
    nop
    ld l, a
    ld c, e
    nop
    rst RST_38
    nop
    inc c
    cp $10
    inc c
    ld bc, $000b
    db $10
    inc c
    pop bc
    nop
    inc l
    ld bc, $0241
    add hl, bc
    rlca
    ld d, b
    inc bc
    add hl, de
    rrca
    rst RST_38
    rst RST_38
    sbc $0d
    inc c
    cp $ff
    ld bc, $01fe
    dec c
    ld a, a
    nop
    rst RST_38
    cp a
    nop
    rst RST_18
    nop
    rst RST_28
    nop
    ldh a, [rP1]
    db $e3
    ldh a, [rTAC]
    sbc d
    ld bc, $0727
    nop
    inc bc
    ld hl, sp+$01

jr_02c_6b65:
    pop af
    ei
    dec b
    rst RST_30
    or e
    nop
    rlca
    dec b
    nop
    push af
    nop
    rst RST_00
    ld hl, sp+$00
    db $fc
    sbc d
    inc bc
    ret nz

    rlca
    inc e
    dec c

jr_02c_6b7a:
    di
    nop
    rst RST_30
    db $f4
    nop
    rst RST_30
    db $e3
    nop
    ld hl, sp+$00
    rst RST_20
    nop
    cp c
    ldh [$ffeb], a
    nop
    sbc d
    ld bc, $0730
    or b

jr_02c_6b8f:
    push af
    nop
    jr nc, jr_02c_6b8f

    pop af
    ld [bc], a
    ld l, b
    ld [bc], a
    nop
    add b
    ld a, a
    xor c
    ld b, b
    add b
    ld a, l
    ld a, a
    xor b
    ld b, $07
    nop
    rst RST_30
    and b
    rla
    db $e3
    nop
    cp $ff
    ld [bc], a
    nop
    rst RST_38
    rra
    ldh [rNR10], a
    rst RST_28
    dec d
    rst RST_00
    add sp, $10
    rst RST_28
    db $eb
    nop
    ld h, a
    inc bc
    cpl
    nop
    ld l, b
    ld [bc], a
    jr jr_02c_6bfc

    inc bc
    db $ec
    ld bc, $1740
    nop
    nop
    db $f4
    inc bc
    ld d, d
    rla
    inc e
    db $10
    ldh a, [c]
    ld e, a
    dec de
    ldh a, [$ffa7]
    ld bc, $1944
    nop
    rst RST_10
    nop
    nop
    ld c, a
    add a
    nop
    jr nc, jr_02c_6b65

    adc b
    inc de
    ld l, $00
    rlca
    sub c
    inc d
    call nz, Call_000_125f
    ld b, b
    dec de
    ldh [$ff87], a
    ld d, $88
    ld d, $5f
    inc e
    jr nc, jr_02c_6b7a

    rst RST_38
    ccf
    add a
    jr nz, jr_02c_6b8f

    sub b
    and b
    daa
    rst RST_08

jr_02c_6bfc:
    rst RST_18
    jr jr_02c_6c1e

    ld [hl], b
    rst RST_38
    rra
    and [hl]
    ld [bc], a
    nop
    nop
    rst RST_38
    ld [hl], c
    ld a, a
    jp Jump_000_3cff


    rst RST_38
    ld [hl], b
    rst RST_38
    rst RST_18
    adc a
    rst RST_38
    nop
    rlca
    rlca
    sbc l

jr_02c_6c16:
    ld de, $c7f0
    ei
    rst RST_38
    jr c, jr_02c_6c16

    db $10

jr_02c_6c1e:
    add a
    rst RST_38
    ldh [rTAC], a
    rst RST_20
    rst RST_38
    rrca
    rst RST_20
    rla
    pop bc
    daa
    and e
    ld c, a
    ld b, a
    rst RST_38
    sbc a
    or b
    ccf
    ld [hl], b
    ld a, a
    ld a, $ff
    add c
    rst RST_38
    rst RST_38
    inc bc
    rst RST_38
    db $fc
    rst RST_38
    ld hl, sp-$01
    ldh a, [$fffc]
    db $dd
    db $10
    inc e
    ld hl, $ffe0
    ret nz

    rst RST_38
    ccf
    rst RST_38
    ld [hl], l
    ld a, a
    daa
    jr nz, jr_02c_6c4f

    dec hl

jr_02c_6c4f:
    jr nz, @-$7e

    rst RST_38
    ld a, b
    ld sp, $f520
    rrca
    dec [hl]
    ld [hl+], a
    ldh a, [rNR24]
    jr nz, jr_02c_6c9d

    ccf
    nop
    ld b, b
    xor a
    nop
    ld b, b
    rrca
    ld b, [hl]
    ld b, h
    jr nz, jr_02c_6cad

    ld b, h
    jr nz, jr_02c_6cb2

    or $a5
    inc bc
    rst RST_30
    push de
    ld d, h
    jr nz, @-$67

    nop
    nop
    or $7d
    dec [hl]
    and l
    inc bc
    jp nc, Jump_000_00b7

    nop
    db $e3
    ld h, a
    jr nz, @+$01

    di
    sub $02
    db $fc
    nop
    ld [bc], a
    nop
    ld [bc], a
    rst RST_18
    ret nc

    ldh [c], a
    nop
    ld [bc], a
    ld [hl], b
    ld [hl], a
    jr nz, @-$4e

    ldh [c], a
    ld a, h
    ld c, h
    ld [hl+], a
    ld c, c
    ld [hl+], a
    nop
    ld b, b
    ld b, b
    ccf

jr_02c_6c9d:
    add b
    ld l, $00
    call $67f3
    jr nz, @-$67

    and $e0
    ld [de], a
    and [hl]
    ld [bc], a
    sub $e7
    rst RST_28

jr_02c_6cad:
    nop
    nop
    or l
    sub $98

jr_02c_6cb2:
    ld h, $02
    ldh a, [$ff62]
    add $78
    inc hl
    nop
    ld [bc], a
    ld [hl], b
    jr nz, @-$6f

    nop
    adc a
    nop
    ld a, a
    nop
    ld sp, hl
    ld a, [hl]
    add $22
    dec bc
    db $10
    ldh [$ffe5], a
    add b
    sbc l
    nop
    sbc a

jr_02c_6ccf:
    ld a, b
    nop
    and $00
    sbc [hl]
    add $24
    dec hl
    ld [bc], a
    ccf
    rst RST_38
    cp a
    ld a, [hl-]
    cp d
    add hl, sp
    cp c
    ccf
    cp a
    nop

jr_02c_6ce2:
    db $fd
    add b
    ld a, [hl+]
    inc bc
    rst RST_38
    rst RST_38
    adc c
    adc c
    inc h
    inc h
    call z, Call_000_1133
    cp a
    inc hl
    inc bc
    ld a, h
    ld b, $3f
    jr @+$41

    ld a, [hl]
    rst RST_38
    ld sp, hl
    add c
    rst RST_00
    inc hl
    cpl
    jr c, jr_02c_6d1f

    rst RST_18
    db $10
    rst RST_18
    nop
    ld a, e
    ldh [$ff0e], a
    ld b, l
    ld [hl-], a
    ld b, $e8
    nop
    xor $6c
    ld [bc], a
    db $db
    nop
    xor $55
    inc [hl]
    nop
    xor $c7

jr_02c_6d17:
    ld hl, $80be
    rst RST_38
    sbc $c0

jr_02c_6d1d:
    ld c, $e0

jr_02c_6d1f:
    add [hl]
    ldh a, [$ffc2]
    ld hl, sp+$73
    inc e
    db $fc
    ld d, l
    ld [hl], $56
    inc [hl]
    ld e, $fe
    rrca
    rla
    jr nz, jr_02c_6d85

    cp $6b
    nop
    add b
    inc hl
    jr nz, jr_02c_6d17

    dec l
    nop
    db $fc
    dec hl
    jr nz, jr_02c_6ccf

    nop
    ld bc, $257f
    jr nz, @-$20

    ld de, $1507
    jr nz, jr_02c_6ce2

    ld sp, $cae0
    add hl, de
    jr nz, @-$02

    add hl, sp
    inc h
    ldh a, [$ff35]
    ld [hl+], a
    sbc a
    nop
    nop
    add b
    ld [hl], h
    dec h
    jr nz, jr_02c_6d1d

    ld sp, $c7e0
    ld [hl-], a
    nop
    nop
    ld a, h
    ld de, $c920
    pop bc
    inc hl
    jr nz, jr_02c_6d85

    ld hl, $9f0f
    inc [hl]
    add [hl]
    dec [hl]
    ret nz

    rst RST_38
    cp d
    ldh a, [c]
    stop
    cp d
    ld sp, $ff03
    ld a, [hl]
    sbc e
    ld [hl-], a
    ldh a, [$ff50]
    ld h, e
    rlca
    ld a, $01
    dec a
    inc bc
    inc bc

jr_02c_6d85:
    ld b, a
    inc bc
    ld c, $4b
    cp $3d
    nop
    rst RST_38
    inc bc
    ei
    ld bc, $41fd
    ld a, h
    ld bc, $ff3c
    db $fd
    nop
    ld bc, $3f01
    nop
    inc bc

jr_02c_6d9d:
    nop
    dec h
    ld hl, sp+$17
    jr nz, jr_02c_6da6

    sub e
    ld [hl-], a
    ld c, c

jr_02c_6da6:
    ld b, c
    ld a, a
    ld bc, $bd49
    jr nz, jr_02c_6d9d

    ld b, h
    dec b
    ld [$3e42], sp
    dec b
    dec h
    ld c, b
    rst RST_38
    nop
    ld bc, $bffc
    ld b, c
    ld a, l
    ld bc, $fd3d
    ld bc, $403a
    jr nz, @+$21

    nop
    nop
    call c, Call_02c_7f10
    adc e
    ld [hl-], a
    inc a
    ld hl, $31f4
    pop af
    inc bc
    ld sp, $0113
    ld [de], a
    rst RST_18
    inc d
    xor $ff
    nop
    ld [$eff7], sp
    nop
    rst RST_30
    xor b
    ld b, l
    ld bc, $bf7f
    ccf
    rst RST_38
    ccf
    cp a
    rst RST_18
    rra
    rst RST_18
    rra
    ret nz

    rra
    ld bc, $cb00
    ld b, b
    ld a, h
    nop
    pop de
    ld b, [hl]
    ld c, c
    ld b, c
    ld c, b
    ld b, e
    pop hl
    ld b, e
    nop
    ld bc, $b0a0
    dec [hl]
    ld b, b
    ld b, c
    db $f4
    ld sp, $4598
    jp c, $ff43

    dec [hl]
    jr nz, @-$06

jr_02c_6e0d:
    inc b
    pop hl
    ld [hl], $8a
    ld sp, $01fc
    inc b
    ret nz

    ld sp, $31da
    ld l, h
    ld bc, $531a
    ld [hl+], a
    ret c

    inc sp
    ldh [$ffb9], a
    ld [hl-], a
    ld b, h
    ld b, c
    add [hl]
    ld sp, $bbff
    jr nc, jr_02c_6e0d

    inc sp
    cp $ea
    ld b, e
    add b
    rst RST_38
    inc bc
    inc bc
    jr @+$05

    jr jr_02c_6e4c

    jp Jump_02c_5364


    db $db
    ld l, e
    ld d, b
    add b
    sbc c
    ld [hl-], a
    sbc h
    ld sp, $31fc
    nop
    sbc b
    ld b, c
    ld [de], a
    ld d, l
    ld [$ea43], a

jr_02c_6e4c:
    ld b, e
    nop
    inc bc
    sbc d
    ld sp, $31d6
    ld b, d

jr_02c_6e54:
    ld d, l
    ld d, h
    ld c, c
    ld b, c
    jr jr_02c_6e7d

    ld a, a
    ld l, e
    nop
    ld bc, $2013
    rlca
    push hl
    ld c, b
    adc b
    ld h, b
    dec bc
    pop hl
    ld b, l
    sbc h
    ld b, c
    inc bc
    add l
    jr nc, jr_02c_6e54

    ld d, c
    ld c, c
    ld b, c
    jp $c309


    jp nz, $405b

    ld b, c
    db $fc
    ld b, e
    ld b, d
    sub h
    inc sp

jr_02c_6e7d:
    ret nc

    ld e, l
    ld a, [hl+]
    ld d, e
    sub b
    nop
    ld h, e
    add sp, $55
    call nz, $f15a
    jr nc, @+$21

    dec h
    jr nz, jr_02c_6e8e

jr_02c_6e8e:
    ld bc, $fe01
    rra
    ld d, e
    ret nz

    nop
    ret nz

    dec b
    ret nz

    ld a, [bc]
    ret nz

    rst RST_20
    rla
    ret nz

    dec bc
    ld e, c
    ld h, b
    inc l
    ld bc, $00aa
    ld d, l
    jp z, $6063

    ld a, l
    ld e, $02
    rrca
    ld e, c
    ld h, b
    ld [hl], b
    ld h, c
    dec bc
    ret nz

    xor l
    rlca
    ld [hl], e
    ld h, b
    rlca
    ret nz

    rra
    dec c
    rrca
    ld d, e
    ld h, b
    rra
    ldh [rHDMA3], a
    ld h, b
    sub [hl]
    ld h, l
    ld h, [hl]
    ld b, l
    and l
    ld h, l
    ld a, [de]
    ld d, b
    ret nz

    add b
    rst RST_18
    rst RST_38
    sbc a
    ret nz

    adc a
    rst RST_18
    sub b
    rst RST_08
    sub b
    rst RST_08
    ld bc, $5f9f
    ld h, d
    and [hl]
    ld b, d
    cpl
    inc d
    cp b
    ld h, l
    cp b
    ld h, l
    ret z

    ld h, l
    ret z

    ld h, l
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

Call_02c_757f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02c_7688:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02c_76c1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02c_7731:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02c_79ed:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02c_7e50:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02c_7f10:
    nop

Call_02c_7f11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02c_7f80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
