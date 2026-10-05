; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

    jr nz, jr_038_4042

Call_038_4002:
    jr z, jr_038_404a

    add hl, hl
    ld b, [hl]
    adc b
    ld c, h
    cp d
    ld c, l
    ld l, a
    ld d, h
    ld [hl], b
    ld d, h
    ld b, b
    ld e, d

Jump_038_4010:
    cp l
    ld e, l
    jr nz, jr_038_4078

    inc h
    ld h, a
    xor e
    ld l, d
    xor h
    ld l, d
    ld h, b
    ld l, a
    ld [hl], e
    ld l, a
    ld h, $75
    dec e
    nop
    ld l, b
    rst RST_38
    ld bc, $fefe
    nop
    cp $00
    ld bc, $ff00
    db $10
    rst RST_28
    rst RST_28

Jump_038_4030:
    nop
    rst RST_28

jr_038_4032:
    nop
    stop
    ld a, l
    rst RST_38
    nop
    nop
    cp $fe
    ld bc, $ff01
    ld [$ef00], sp
    rst RST_28

jr_038_4042:
    rst RST_28
    db $10
    stop
    dec b
    ld [de], a
    db $ec
    db $ec

jr_038_404a:
    rst RST_38
    nop
    db $eb
    nop
    inc d
    nop
    rst RST_38
    rst RST_38
    cp $ff

Jump_038_4054:
    cp $e0
    ldh [rDIV], a
    ld bc, $1c23
    ld bc, $00df
    ld bc, $4806
    jr nc, jr_038_4093

    ld bc, $3e3e
    rst RST_38
    ld b, c
    add c
    or b
    ld b, c
    call nz, $1c00
    nop
    rst RST_38
    ld [bc], a
    nop
    pop af
    ldh a, [$ffea]
    pop hl
    ldh [$ffeb], a

jr_038_4078:
    rst RST_38
    ld [bc], a
    add hl, bc
    add sp, -$20
    db $e4
    ldh [$ffe2], a
    db $e4
    rst RST_38
    inc d
    ld bc, $0003
    cp c
    rlca
    ld c, a
    ccf
    rst RST_38
    ld e, a
    ccf
    ld d, c
    ccf
    ld b, e
    jr nc, jr_038_4032

    ld l, [hl]

jr_038_4093:
    rst RST_38
    or b
    ld h, b
    db $fc
    nop
    di
    db $fc
    db $fd
    cp $ff
    cp $ff
    ld sp, hl
    cp $74
    ld hl, sp-$58
    ld [hl], e
    rst RST_38
    jr nc, jr_038_4108

    rra
    nop
    sbc [hl]
    ld e, $4e
    ld l, $ff
    ld b, c
    ld bc, $0007
    daa
    rlca
    rlca

jr_038_40b6:
    ld d, a
    rst RST_38
    ld b, b
    nop
    nop
    rst RST_38
    cp $80
    cp $c0
    rst RST_28
    ld bc, $fe01
    ld de, $031a
    ret z

    ret nz

    call nc, $c0ff
    call nz, Call_000_02c0
    inc b
    adc b
    sub d
    sub b
    rst RST_38
    and d
    ld h, d
    nop
    ld b, [hl]
    nop
    dec b
    pop af
    inc hl
    rst RST_28
    ld hl, sp-$44
    ld a, a
    sbc a
    or l
    nop
    adc a
    ld a, a
    ld d, a
    rst RST_38
    ccf
    ld c, e
    ld a, $a5
    ld h, c
    inc sp
    ldh [$fff0], a
    rst RST_38
    rst RST_28
    or $ef
    ld a, a
    and [hl]
    or h
    adc $22
    rst RST_38
    db $fc
    ld c, $04
    ld h, a
    dec b
    ld d, $26
    ld b, [hl]
    rst RST_38
    ld d, $51
    ld bc, $2407
    or a

jr_038_4108:
    add a
    or a
    rst RST_38
    add a
    stop
    ret nz

    ccf
    cp $e0
    cp $ff
    ldh [rSB], a
    nop
    ldh a, [rIF]
    rst RST_28
    ldh [$ffef], a
    db $fd
    ldh [rNR34], a
    dec b
    nop
    nop
    db $10
    xor $ec
    nop
    rst RST_38
    add sp, $00
    ld d, $00
    jr nz, jr_038_4131

    or b
    add h
    rst RST_38
    add hl, bc

jr_038_4131:
    ld d, d
    ld c, b
    jr nz, jr_038_40b6

    nop
    ld h, $10
    rst RST_38
    dec c
    jr nz, @+$13

    nop
    and e
    rra
    ld d, e
    rrca
    rst RST_38
    add hl, de
    ld b, a
    ld a, [hl+]
    ld b, c
    ld c, h
    adc b
    or a
    inc b
    rst RST_38
    daa
    ld b, $02
    rlca
    or [hl]
    ld c, h
    db $fc
    ld hl, sp-$01
    db $f4
    ld hl, sp-$18
    ldh a, [rP1]
    nop
    inc sp
    ret nz

    rst RST_38
    cp d
    ld b, c
    xor c
    ld d, b
    scf
    dec b
    ld c, d
    ld [hl+], a
    rst RST_38
    ld [hl+], a
    ld [de], a
    ld bc, $8301
    ld [bc], a
    ld c, e
    inc sp
    rst RST_38
    or b
    inc c
    ld a, [bc]
    add h
    pop af
    ld c, $fe
    ldh a, [$fffb]
    cp $f0
    and $06
    nop
    ret nz

    rrca
    sbc a
    ccf
    rst RST_38
    and a
    ccf
    inc bc
    daa
    and e
    inc sp
    ld [hl], c
    ld a, e
    rst RST_28
    ld l, b
    ld a, l
    ld b, h
    xor $f5
    nop
    ret nz

    nop
    add b
    rst RST_38
    add b
    or $c0
    and $c1
    rst RST_20
    pop hl
    di
    rst RST_38
    ld hl, $0bfb
    rlca
    ld sp, $990f
    ld a, a
    rst RST_38
    cp a
    ld a, a
    and $19
    ld e, e
    inc a
    inc a
    ld a, a
    rst RST_38
    cp a
    ccf
    ld [$54f0], sp
    cp b
    ld [hl], d
    sbc h
    rst RST_38
    sbc d

Call_038_41ba:
    db $fc
    or $f8
    ld e, h
    ldh [c], a
    ldh [$fffe], a
    db $fd
    db $fc
    db $f4
    ld bc, $0004
    ld l, $04
    ld l, [hl]
    ld c, h
    rst RST_38
    rst RST_38
    ld c, h
    rst RST_38
    ld e, h
    rst RST_38
    ld d, h
    rst RST_38
    ccf
    rst RST_38
    nop
    cp [hl]
    add b
    cp [hl]
    add b
    ld bc, $3f80
    rst RST_38
    nop
    rrca
    ld b, b
    rrca
    ldh [rLCDC], a
    ldh [$ffe1], a
    ld e, l
    ld e, $8d
    db $10
    db $fc
    inc bc
    ld [bc], a
    sbc b
    nop
    xor $1c
    ld bc, $2fe6
    nop
    nop
    rst RST_38
    push af
    ld bc, $0009
    xor $00
    db $10
    rst RST_38
    ld bc, $01f9
    di
    rlca
    rst RST_20
    rrca
    ld c, $ff
    rra
    sbc [hl]
    ccf
    ld a, h
    ld a, a
    ld a, [hl]
    cp $ec
    rst RST_38
    cp $c4
    and $a2
    rst RST_30
    sub d
    rst RST_30
    jp nz, $f3ef

    ld b, d
    db $eb
    ld b, b
    jp hl


    ld de, $00cf
    rst RST_38

Call_038_4223:
    rst RST_38
    inc c
    ld a, a
    rlca
    ccf
    rra
    cp a
    rra
    rst RST_38
    rst RST_38
    rra
    rst RST_38
    sbc a
    rst RST_38
    adc a
    rst RST_38
    sbc a
    ccf
    rst RST_38
    rst RST_08
    rra
    rst RST_20
    rrca
    di
    rlca
    ld sp, hl
    inc bc
    rst RST_00
    db $fc
    ld bc, $c3fe
    db $10
    or e
    db $10
    adc l
    db $10
    db $fd
    db $fc
    rst RST_38
    reti


    db $fc
    db $db
    ld hl, sp+$13
    ld hl, sp+$07
    ld d, b
    rst RST_38
    or l
    rst RST_38
    or c
    rst RST_38
    or c
    rst RST_30
    ld [hl], c
    rst RST_30
    rst RST_38
    ld [hl], c
    ei
    ld sp, hl
    ei
    ld sp, hl
    db $fd
    ld hl, sp-$03
    rst RST_38
    ld h, a
    ldh a, [$ff66]
    ldh a, [$ff62]

jr_038_426b:
    ldh a, [$ff30]
    ld hl, sp-$01
    jr nc, jr_038_426b

    ld [de], a
    cp [hl]
    ld [de], a
    cp a
    sub [hl]
    cp [hl]
    ei
    rst RST_38
    nop
    ld [de], a
    ld [bc], a
    nop
    rst RST_38
    add c
    ld a, a
    ld a, a
    cp a
    ccf
    ccf
    nop
    nop
    pop bc
    ld a, $92
    ld [bc], a
    nop
    db $db
    ldh [$ff1f], a
    ld c, d
    inc de
    ld sp, hl
    inc bc
    jp nc, Jump_000_0f11

    rra
    rst RST_38
    sbc $1f
    sbc c
    ccf
    cp b
    dec a
    inc h
    ld a, [hl]
    rst RST_38
    db $e4
    cp $c4
    xor $c0
    xor $60
    or $ff
    jr nz, @+$76

    nop
    or h
    ld bc, $0090
    ld b, b
    rst RST_38
    ld bc, $01cb
    db $d3
    ld [bc], a
    and a
    nop
    inc bc
    rst RST_30
    nop
    ld bc, $89ec
    jr nz, @+$12

    ld bc, $ff8f
    rst RST_38
    adc a
    rst RST_18
    add a
    rst RST_18
    add e
    rst RST_08
    add c
    rst RST_08
    ld a, a
    add b
    jp $c680


    add b
    jp nz, $a0ff

    jr nz, @+$01

    ld a, [$80ff]
    rst RST_38
    push af
    rst RST_38
    ccf
    rst RST_38
    rst RST_38
    inc bc
    rra
    nop
    inc bc
    add a
    adc a
    ret z

    rst RST_38
    ld e, a
    add b
    db $fc
    nop
    rst RST_38

jr_038_42ee:
    rrca
    and b
    jr nz, jr_038_42ee

jr_038_42f2:
    ld b, b
    jr nz, jr_038_42f2

    ldh a, [rSC]
    ld bc, $303c
    db $fc
    ldh [$fff8], a
    add c
    rst RST_38
    ldh [rSB], a
    ret nz

    nop
    nop
    sub b
    cp l
    adc l
    rst RST_38
    cp a
    ld a, [de]
    cp a
    inc d
    ccf
    ld bc, $003f
    rst RST_38
    daa
    add c
    rrca
    ld b, $1f
    rra
    add b
    ld e, $ff
    add b
    ld c, $00
    pop hl
    ldh [rPCM34], a
    ldh a, [rNR22]
    rst RST_38
    ldh a, [$ff0b]
    ld hl, sp+$08
    sbc b
    ld sp, hl
    ld b, $fe
    add a
    ld hl, sp-$02
    ld hl, sp+$46
    jr nz, @+$1b

    inc bc
    adc a
    ld bc, $0203
    sub b
    ld a, a
    ld l, a
    rst RST_28
    add b
    rst RST_28
    ret nz

    stop
    ldh a, [rTMA]
    cp $09
    inc b
    ld [hl+], a
    ld [hl], a
    ld [hl], b
    ld sp, hl
    ld a, b
    cp $63
    cp a
    rst RST_38
    jr nc, @+$81

    inc a
    ld a, a
    sbc [hl]
    xor b
    db $10
    rlca
    rst RST_38
    add b
    ld c, $c0
    ld e, $00

jr_038_435c:
    ld bc, $0fc0
    ld a, a

jr_038_4360:
    ldh [$ff67], a
    ldh [$ff27], a
    ldh a, [$ff30]
    ld a, b
    ld b, c
    jr nz, jr_038_4360

    di
    ld [bc], a
    nop
    cp $0a
    inc bc

jr_038_4370:
    add b
    rst RST_00
    nop
    db $e3
    rst RST_38
    ld b, b
    rst RST_20
    jr nz, jr_038_4370

    ld hl, $11fb
    ld a, a
    ld a, a
    ld [$0c7f], sp
    ld a, a
    nop
    jr c, jr_038_43bd

    di
    db $10
    ld a, a
    nop
    add a
    nop
    or c
    db $10
    db $fc
    db $fc
    xor c
    jr nz, @-$18

    push af
    nop
    pop hl
    pop hl
    and b
    jr nz, jr_038_435c

    db $10
    rra
    inc b
    cp $ff
    ld hl, sp-$04
    inc bc
    nop
    ld [bc], a
    ret nz

    add [hl]
    ret nz

    rst RST_38
    add c
    ret nz

    ld c, $c0
    ld c, $80
    jr jr_038_43af

jr_038_43af:
    rst RST_38
    nop
    ld b, $81
    rrca
    add b
    inc bc
    nop
    inc a
    rst RST_38
    ld bc, $0c1f
    ld a, a

jr_038_43bd:
    ccf
    rst RST_38
    ld [hl], c
    rst RST_38
    rst RST_38
    ldh [rIE], a
    inc bc
    add sp, $22
    ldh a, [rSC]
    ld d, b
    rst RST_38
    ld bc, $03e8
    ldh [$ff83], a
    ldh [rTAC], a
    ldh [$ffcf], a
    nop
    ret nz

    ldh [$ff1f], a
    ldh [c], a
    nop
    ld b, l
    inc de
    add sp, -$11
    ld a, a
    db $ec
    db $10
    db $10
    ret nz

    nop
    ldh [rP1], a
    daa
    db $10
    cp h
    daa
    nop
    ld a, [bc]
    inc bc
    inc bc
    ldh a, [rP1]
    ld c, b
    ld c, e
    nop
    ld a, [hl-]
    rst RST_38
    inc bc
    daa
    add a
    rrca
    rst RST_00
    rra
    nop
    ld h, $fc
    ld b, b
    jr nz, jr_038_4404

Jump_038_4401:
    ld [bc], a
    ld a, a
    nop

jr_038_4404:
    inc l
    nop
    ld bc, $ff83
    inc sp
    scf
    nop
    ccf
    add b
    ccf
    add b
    rra
    ld e, a
    add b
    rrca
    nop
    nop
    ld a, $fb
    db $10
    ld c, a
    jp nz, Jump_038_5f11

    cp $00
    db $fc
    nop
    sbc b
    ld c, l
    nop
    push af
    dec bc
    ld b, c
    rst RST_38
    ld hl, sp+$00
    di
    nop
    inc c
    nop
    jr nz, jr_038_4433

    cp a
    inc hl
    cpl

jr_038_4433:
    inc hl
    cpl
    jr nz, jr_038_443e

    cp $20
    and a
    ld l, a
    jr jr_038_4440

    db $fc

jr_038_443e:
    ld a, c
    or d

jr_038_4440:
    ld de, $e0f0
    ld b, l
    ld sp, $40ff
    ld [hl], b
    nop
    cp h
    add b
    sub b
    nop
    ret nz

    rst RST_30
    rlca
    add b
    ld l, a
    dec bc
    ld [bc], a
    add hl, de
    ld b, $3e

jr_038_4457:
    jr c, @+$01

    ld a, [hl]
    ld [hl], b
    ld bc, $d301
    inc l
    rst RST_28
    jp $1c1e


    ld bc, $917f
    cp $7e
    ld b, h
    ld [hl+], a
    add hl, de

jr_038_446b:
    inc b
    ld b, b

jr_038_446d:
    jr nz, jr_038_446d

    or e
    db $10
    ld bc, $fc00
    inc bc
    rst RST_28
    db $ec

jr_038_4477:
    rst RST_28
    ld e, c
    add sp, $0e
    nop
    pop hl
    inc sp
    ld bc, $acf7
    jr nc, jr_038_446b

    dec c
    nop
    rst RST_38
    ldh a, [rP1]
    rst RST_00
    rlca
    inc a
    inc a
    ldh [$ffe0], a
    rst RST_38
    ld a, [de]
    nop
    dec [hl]
    nop
    ld l, l
    nop
    ld b, a
    nop
    rst RST_38
    jp hl


    db $ec
    sbc c
    sub e
    dec d
    ld h, $05
    add hl, bc
    rst RST_38
    ld b, e
    ld [bc], a
    ld b, d
    inc b
    jp hl


jr_038_44a6:
    nop
    add h
    nop
    rst RST_38
    sbc a
    rst RST_38
    rst RST_20
    ld a, a
    sbc b
    rst RST_38
    ld l, c
    or b
    rst RST_38
    ld d, b
    ld h, b
    jr nz, jr_038_4477

    ld b, b
    add b
    add b
    nop
    ccf
    db $f4
    push af
    db $f4
    db $f4
    ldh [c], a
    ldh a, [c]
    pop bc
    jr nc, jr_038_4457

    db $10
    rst RST_38
    add hl, bc
    nop
    ld b, $00
    adc b
    adc b

jr_038_44cd:
    ret nz

    ret nz

jr_038_44cf:
    cp $86
    jr nz, jr_038_44e2

    nop
    rra
    ld [$081f], sp
    ld a, a
    rst RST_38
    ld [$1fff], sp
    nop
    ld e, $00
    ld e, $c0

jr_038_44e2:
    cp $36
    jr nc, jr_038_44a6

    rlca
    ret nz

    rlca
    ldh [$ff80], a
    ldh [$ffc8], a
    db $10
    dec c
    db $10
    dec b
    add sp, $00
    ret nz

    inc c
    ld bc, $10b0
    ret nz

    cp $9d
    add b
    ld b, $07
    nop
    db $fc
    db $fc
    inc b
    ld b, b
    push af
    nop
    db $fc
    ld sp, hl
    xor $cb
    ld de, $40d1
    dec de
    nop
    dec c
    nop
    rlca
    ld a, h
    dec b
    nop
    add hl, hl
    ld d, e
    ld b, $00
    rst RST_00
    nop
    add $06
    ld b, b
    ld sp, hl
    add b
    add hl, hl
    ld d, h
    dec sp
    ld e, d
    ld bc, $0300
    ld bc, $ff0f
    inc bc
    rrca
    rlca
    rra
    inc b
    rra
    nop
    ccf
    db $ec
    jp Jump_038_4010


    jr nz, jr_038_44cf

    rst RST_38
    ld h, b
    ld d, c
    jr @+$01

    add hl, sp
    db $fd
    ld a, a
    ld l, b
    ld d, c
    add hl, de
    ld a, a
    add e
    ldh [$ff82], a
    ldh [$ffed], a
    add d
    add l
    jr nc, jr_038_44cd

    ret z

    ld a, b
    ld d, b
    call c, $dc88
    and [hl]
    ldh a, [rNR51]
    db $fc
    inc de
    ld l, d
    ld b, b
    cp l
    jr nc, @-$7e

    ld h, d
    db $10
    ld hl, sp-$2e
    ld b, l
    ld sp, $0aff
    ld d, h
    ld c, c
    ld d, e
    rrca
    db $f4
    jr nc, jr_038_45aa

    adc b
    ei
    ccf
    inc c
    xor b
    stop
    rra
    ld bc, $033f
    rst RST_28
    ccf
    rlca
    cp a
    rrca
    cp c
    ld d, b
    ld e, $ff
    db $10
    rst RST_08
    cp $10
    cp $98
    ld a, l
    ld d, b
    add $50
    call z, $ff88

jr_038_458c:
    call z, $ce00
    add hl, de
    ld a, a
    dec de
    rst RST_38
    dec de
    rst RST_28
    rst RST_38
    ld e, e
    rst RST_38
    ld b, e
    rst RST_10
    ld d, b
    ld b, [hl]
    rst RST_38
    ld h, [hl]
    or a
    rst RST_38
    ld [$e09c], sp
    ld d, b
    cp h
    jr jr_038_458c

    ld d, c
    cp [hl]
    cp a

jr_038_45aa:
    db $10
    cp [hl]
    db $10
    ld a, $ff
    add c
    ld [de], a
    dec b
    ld l, a
    sbc [hl]
    ld a, [$1050]
    db $10
    db $fd
    ld [bc], a
    ld h, d
    ld b, e
    jr jr_038_45be

jr_038_45be:
    xor $ff
    rst RST_28
    xor $10
    db $10
    adc h
    ccf
    ld [$ff5f], sp
    ld [$085d], sp
    ld e, l
    nop
    ld l, e
    ld b, b
    ld l, e
    rst RST_38
    ld b, b
    ld [hl], a
    ld b, b
    ld [hl], a
    ld a, $ff
    ld a, $ff
    rst RST_38
    inc a
    cp $3c
    cp $38
    db $fc
    ld a, b
    db $fc
    cp a
    ldh a, [$fff9]
    ldh [$fff1], a
    nop
    ld c, [hl]
    jr nc, jr_038_464c

    ld d, [hl]
    cp $34
    ld h, b
    push de
    nop
    db $dd
    add b
    reti


    sub b
    reti


    db $fd
    ld h, [hl]
    db $dd
    ld d, b
    ld h, h
    rst RST_38
    ld h, b
    cp $60
    cp $ff
    ld [hl], b
    cp $70
    db $fc
    ld [hl], b
    db $fc
    db $10
    ld a, $fe
    ld d, b
    ld h, c
    ld [de], a
    ccf
    ld [de], a
    ccf
    ld [hl-], a
    ld a, a
    ld h, $ee
    ld e, e
    ld h, b
    ld a, a
    ld bc, $623e
    ld h, b
    ld bc, $3f01
    inc bc
    db $10
    rrca
    ld l, d
    ld h, b
    ld e, [hl]
    ld b, d
    inc de
    ld a, [bc]
    rst RST_38
    dec e
    nop
    add b
    ld a, e
    jr nz, jr_038_466e

    nop
    dec bc
    ld bc, $01fd
    db $fc
    ld [de], a
    ld b, $5f
    db $fd
    ld bc, $00fd
    rst RST_38
    jr nz, jr_038_464a

    ld a, a
    cpl
    ld [bc], a
    rst RST_30
    ccf
    rst RST_38
    rra
    scf
    ld [bc], a
    rrca
    rst RST_38

jr_038_464a:
    rst RST_38
    and b

jr_038_464c:
    ld a, a
    rst RST_38
    db $f4
    rst RST_38
    cp $ff
    db $fd
    rst RST_38
    ld c, b
    dec b
    ld e, d
    jr nz, jr_038_4660

    jp nz, $0148

    db $fc
    cp $60
    inc bc

jr_038_4660:
    ld hl, sp+$67
    nop
    db $fd
    ldh a, [rOCPD]
    nop
    xor e
    rla
    and e
    rla
    and a
    inc de
    rst RST_38

jr_038_466e:
    ld [hl+], a
    ld de, $13a7
    xor e
    rla
    xor e
    rla
    cp e
    sub e
    rlca
    nop
    dec b
    inc a
    rra
    ccf
    adc c
    nop
    ld a, $c9
    rra
    inc e
    ld bc, $011a
    nop
    sub c
    ld bc, $061d
    rst RST_38
    add b
    rst RST_38
    nop
    nop
    nop
    ld e, a
    ld c, a
    rra
    rrca
    sbc a
    db $f4
    and b
    inc b
    xor b
    nop
    rra
    ld c, h
    ld [$07ff], sp
    nop
    nop
    ld e, a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$41
    dec b
    ldh [$ffa8], a
    nop
    ld a, [$0221]
    rlca
    rst RST_18
    nop
    ld bc, $ffff
    ld a, a
    nop
    inc hl
    nop
    ld bc, $00e3
    and h
    nop
    ld c, b
    inc bc
    add e
    reti


    nop
    ld a, [$7109]
    db $fc
    ld hl, sp+$0c
    ret c

    ld bc, $0cfb
    cp $ff
    db $fc
    rlc b
    rst RST_38
    ldh [$fffe], a
    ldh [$fffe], a
    ret nz

    cp $fe
    ld [bc], a
    ldh [c], a
    xor b
    nop
    cp $3a
    ld de, $039a
    ld b, b
    rla
    rla
    rst RST_08
    rrca
    rst RST_38
    rst RST_28
    dec bc
    rst RST_20
    add hl, bc

jr_038_46ef:
    rst RST_28
    ld bc, $04f7
    sbc a
    di
    inc b
    rst RST_30
    ld [bc], a
    ld sp, hl
    ld a, [$3409]
    ld bc, $54f8
    dec hl
    db $10
    ld [hl], d
    ld de, $77f8
    ld [de], a
    ldh a, [$ff33]
    inc b
    rrca
    db $eb
    ld [bc], a
    jr z, @-$5c

    ld [bc], a
    ld c, b
    inc c
    ld c, b
    dec b
    ldh [$ff89], a
    ld d, $fe
    and a
    ld d, $20
    ld [bc], a
    add sp, $3b
    ld [de], a
    ret nz

    rla
    nop
    dec c
    db $fd
    ldh [rNR21], a
    pop af
    pop af
    call $c1ff
    xor d
    sub h
    db $fd
    db $fc
    db $fc
    db $fc
    cp $fd
    cp $48
    inc bc
    ccf
    ccf
    cp a
    ccf
    rrca
    rst RST_38
    rst RST_38
    jp Jump_038_607f


    cp a
    inc e
    daa
    ld bc, $f4c0
    ld a, [hl-]
    db $10
    ld hl, $c000
    ld hl, $8004
    rst RST_38
    ld b, b
    ld a, $ef
    jr nc, jr_038_46ef

jr_038_4753:
    inc c
    rst RST_00
    ld a, [$3007]
    jr nc, jr_038_4765

    rst RST_30
    ret nz

    ld d, b
    jr nz, @+$4a

    dec b
    ret nz

    ret nz

    ld hl, $ef02

jr_038_4765:
    adc h
    ld [hl], b
    ld h, e
    inc e
    ld a, [$0707]
    rlca
    ld e, c
    sub e
    ld hl, $d910
    inc b
    jr nz, jr_038_477b

    db $fc
    jr nz, jr_038_4784

    ld bc, $3e01

jr_038_477b:
    db $fc
    ld [hl], d
    inc h
    ld bc, $5402
    ld a, [hl+]
    xor c
    ld d, h

jr_038_4784:
    ld d, d
    add hl, hl
    rst RST_38
    add l
    ld [hl+], a
    call Call_038_4002
    ld a, $aa
    sub h
    ld a, e
    and l
    sub b
    db $fd
    db $10
    cp a
    cp a
    ccf
    ld a, a
    sub [hl]
    jr nz, jr_038_4753

    ld l, b
    ld [de], a
    sbc c
    ld [hl+], a
    ld c, b
    inc bc
    ld hl, sp-$08
    db $fd
    di
    db $10
    ldh [rIE], a
    ldh [$fff1], a
    ldh a, [$ffe4]
    add sp, -$80
    add b
    ld b, a
    rst RST_38
    jr c, @+$32

    nop
    db $10
    add a
    and b
    ld c, b
    jr @+$01

    ld b, $82
    ld b, c
    ld l, c
    db $10
    inc [hl]
    ret z

    add hl, bc
    rst RST_38
    inc b
    ld [bc], a
    nop
    ret nz

    inc c

Jump_038_47c8:
    ld [$0810], sp
    rst RST_38
    nop
    inc bc
    db $10
    ld c, c
    add a
    daa
    rrca
    ld d, a
    rst RST_38
    adc a
    jr z, jr_038_47f4

    rst RST_08
    jr c, jr_038_4823

    cp e
    ld l, h
    rst RST_38
    ld bc, $708c
    ld a, [$fdfc]
    cp $ff
    rst RST_38
    cp $7f
    cp $3d
    ld a, [hl]
    or b
    jr c, jr_038_486e

    rst RST_38
    ld a, a
    add a
    rlca
    ld e, h

jr_038_47f4:
    adc h
    inc bc
    inc bc
    ld h, b
    ld a, a
    inc b
    add hl, hl
    db $10
    ld [$8604], sp
    ld b, c

Call_038_4800:
    ld a, [$ff07]
    ccf
    ccf
    ld e, a
    rra
    cpl
    rrca
    ld hl, sp-$07
    rst RST_38
    ret


    jp z, $d2c0

    ret z

    pop de
    push hl
    add sp, -$01
    ldh [c], a
    db $ec
    pop hl
    xor $f1
    or $8f
    rrca
    rst RST_38
    ld b, a
    daa
    dec bc

jr_038_4821:
    db $d3
    sub l

jr_038_4823:
    ld hl, $4925
    rst RST_38
    add hl, bc

jr_038_4828:
    ld d, c
    add l
    ld de, $01ed
    adc d
    inc b
    rst RST_38
    ld [hl], d
    ld bc, $848a
    ld h, h
    inc bc
    sbc e
    inc b
    cp a
    ld h, d
    nop
    ld a, [de]
    inc b
    jp nc, $fccc

    ld de, $f97f
    ld a, a
    sub h
    ld hl, $1401
    db $fc
    db $fd
    db $fc
    ld hl, sp-$05
    rst RST_38
    ldh [c], a
    db $ec
    pop af
    ldh a, [$fffa]
    ld hl, sp-$0b
    ldh a, [c]
    rst RST_38
    ld hl, sp-$08
    inc b
    inc bc
    ld h, b
    add b
    adc c
    ld b, $ff
    ld c, d
    jr nc, jr_038_4828

    nop
    ld a, [hl+]
    db $10
    inc b
    inc bc
    rst RST_38
    ret nz

    inc c
    ld d, d
    nop
    sub d

jr_038_486e:
    inc b
    ld bc, $ff24
    inc b
    ld c, b
    adc d
    db $10
    ld d, h
    jr nz, jr_038_4879

jr_038_4879:
    nop
    rst RST_18
    adc l
    nop
    adc h
    db $fc
    sbc $8a
    ld bc, $3f3f
    rst RST_38
    rra
    ld l, a
    rra
    ld l, a
    ld e, $56
    cpl
    and d
    rst RST_38
    ld [hl], h
    ld h, c
    ldh a, [$ffe0]
    cp $7c
    xor [hl]
    cp [hl]
    rst RST_38
    call z, $fc80
    inc h
    jr jr_038_4821

    jr @-$56

    rst RST_38
    ld b, b
    ld d, $28
    inc bc
    inc b
    jr nz, jr_038_48a7

jr_038_48a7:
    adc l
    rst RST_38
    ld [hl+], a
    ld [hl+], a
    sbc b
    add hl, de
    inc h
    ld d, h
    ld [bc], a
    sub a
    rst RST_38
    ld b, a
    ld l, h
    inc c
    add d
    nop
    add hl, hl
    dec b
    ld h, e
    rst RST_38
    dec de
    rla
    rlca
    ld l, a
    adc a
    ld d, a
    rlca
    ldh a, [rIE]
    rst RST_30
    ld hl, sp-$05
    ld a, [$f7f9]
    ldh a, [$fff6]
    rst RST_38
    pop af
    ld sp, hl
    ld hl, sp-$05
    ld hl, sp-$07
    ld hl, sp-$25
    rst RST_38
    inc hl
    cp e
    ld b, e
    rla
    rst RST_20
    add a
    ld h, a
    ld [hl], e
    rst RST_38
    add e
    sbc e
    ld h, e
    rst RST_20
    rlca
    rst RST_30
    rlca
    pop de
    rst RST_38
    adc $d1
    adc $e9
    and $e8
    rst RST_20
    add sp, $7f
    and $e0
    pop hl
    rst RST_00
    ret nz

    ret c

    ret nz

    sub [hl]
    ld hl, $44fc
    ld sp, $11fc
    rra
    rra
    rst RST_28
    rrca
    cp $fe
    ei
    ld sp, hl
    ld hl, sp-$0c
    dec d
    cp $fe
    db $fd
    db $fc
    dec a
    rst RST_38
    nop
    pop af
    nop
    rrca
    nop
    sbc b
    rlca
    ld c, h
    rst RST_38
    inc de
    ld h, $19
    add $39
    db $e3
    inc e
    ld [hl], d
    rst RST_38
    nop
    or b
    ld b, b

jr_038_4925:
    ld de, $13e6
    rst RST_20
    ld d, e
    rst RST_38
    and a
    ld d, b
    and a
    ld a, c
    add e
    ld a, b
    add e
    ld c, e
    rst RST_38
    scf
    and l
    ld e, e
    db $eb
    call c, $ffc8
    jp z, $ffff

    ld a, [hl+]
    rst RST_18
    call z, Call_038_7dff
    rst RST_38
    jp hl


    rst RST_38
    ldh a, [$fff0]
    ldh [$ffe7], a
    nop
    ld c, h
    add e
    ld c, c
    rst RST_38
    add [hl]
    jp z, $ae85

    pop bc
    adc [hl]
    pop hl
    add c
    ei
    nop
    ld [hl], b
    xor b
    nop
    call z, $f600
    ld [$ffc4], sp
    jr c, jr_038_4970

    ldh a, [rNR23]
    ldh [$ff2b], a
    ld d, e
    ld b, e
    rst RST_38
    dec bc
    rla
    daa
    daa
    rla

jr_038_4970:
    ld b, e
    dec de
    scf
    rst RST_38
    rlca
    cpl
    adc a
    rst RST_18
    rra
    or $f1

jr_038_497b:
    pop af
    cp $c7
    jr nc, jr_038_497b

    ld hl, sp-$0c
    di
    db $f4
    di
    ldh a, [rIE]
    di
    db $ed
    ldh [rNR31], a
    db $e3
    rst RST_00
    rlca
    scf
    rst RST_38
    rst RST_00
    rst RST_00
    rlca
    cpl
    rst RST_08
    ld l, a
    adc a
    rst RST_08
    ld c, a
    rrca
    rst RST_18
    rra
    jr z, jr_038_4925

    nop
    sub d
    ld b, c
    ld a, $97
    ld b, h
    rst RST_38
    pop hl
    ldh [$fff3], a
    ldh a, [$fff7]
    ldh a, [$fff5]
    ldh a, [$fffc]
    xor d
    ld hl, $41aa
    ld [hl], a
    add a
    dec de
    db $e3
    dec d
    jp hl


    rst RST_38
    sbc $20
    ret z

    ld [hl], $9f
    ld h, b
    xor a
    ld b, b
    rst RST_38
    or [hl]
    ld c, c
    di
    ldh a, [$ffc6]
    pop bc
    ld [hl-], a
    ld bc, $99ff
    ld h, b
    ld c, l
    or b
    inc bc
    ld a, h
    add hl, de
    ld h, [hl]
    rst RST_38
    xor h
    ld d, e
    ld sp, hl
    ld b, $39
    add $0c

jr_038_49db:
    di
    rst RST_38
    inc b
    ei
    sub l
    ld l, d
    sub $28
    sub h
    ld l, b
    rst RST_38
    sbc h
    ld h, b
    ld e, h
    and c
    sbc h
    ld h, c
    adc [hl]

jr_038_49ed:
    ld [hl], b
    ei
    dec bc
    db $f4
    inc d
    ld [hl+], a
    ld a, a
    add b
    ld a, a
    rrca
    rst RST_38
    ei
    rst RST_10
    rst RST_28
    inc [hl]
    nop
    ld a, a
    sbc a
    ccf
    ld c, a
    sbc a
    rst RST_38
    dec h
    rst RST_08
    ld [de], a
    push hl
    call nz, Call_038_50eb
    adc a
    rst RST_38
    call nc, $88cb
    rst RST_10
    pop de
    adc [hl]
    or c
    adc [hl]
    rst RST_38
    ld hl, $209e
    sbc a
    jr nc, jr_038_49db

    ld [hl], h
    add b
    rst RST_38
    ld a, h
    add b
    or e
    ld c, h
    ld h, a
    sbc b
    ld c, h
    or e
    rst RST_18
    ret c

    daa
    ret nc

    cpl
    rst RST_18
    add [hl]
    jr nc, jr_038_4a6e

    ccf
    rst RST_38
    inc bc
    inc bc

jr_038_4a33:
    ld hl, sp+$00
    inc h
    ret c

    add hl, bc
    db $f4
    rst RST_38
    ld c, e
    or h
    ret


    add $c0
    rst RST_00
    or h
    add e
    rst RST_38
    ld l, c
    db $10
    add $38
    xor l
    ld d, d
    scf
    ret nz

    rst RST_38
    ld [hl], e
    add b
    rra
    rra
    rst RST_18
    rra
    ld e, a
    sbc a
    pop af
    sbc a
    add [hl]
    jr nc, jr_038_49ed

jr_038_4a59:
    inc hl
    ret nz

    dec d
    ld c, $f8
    db $10
    ld hl, sp-$21
    jr nz, jr_038_4a59

    jr nz, jr_038_4a33

    ld a, $93
    ld b, d
    jr c, @+$21

    ld sp, $6730
    ld d, b

jr_038_4a6e:
    nop
    ld bc, $205e
    db $fc
    nop
    sub a
    nop
    sbc b
    dec b
    ld a, [hl]
    inc e
    ld b, c
    ld a, [hl]
    nop
    adc h
    add b
    ret nz

    call nz, $0348
    rst RST_38
    or a
    ld c, b
    db $fd
    nop
    ldh a, [rP1]
    ld b, b
    nop
    db $fd
    rra
    cp d
    inc bc
    rst RST_38
    ld a, [$d200]
    ld [$ff25], sp
    ld a, [bc]
    dec b
    ld [de], a
    adc e
    add h
    ret


    call nz, $ffe9
    db $e4
    ld [$e0e4], a
    rra
    cp b
    ld b, a
    add c
    rst RST_38
    ld a, [hl]
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    sbc h
    cp a
    inc bc
    and a
    ld b, b
    ld a, [bc]
    pop af
    inc b
    adc $00
    ld a, a
    rst RST_10
    add b
    rlca
    ld hl, sp+$20

jr_038_4ac0:
    inc bc
    ld b, b
    cp c
    ld d, b
    db $fd
    ld [bc], a
    rst RST_30
    pop af
    ld c, $01
    dec sp
    db $10
    ld [bc], a
    db $fc
    inc c
    ldh a, [$ffdf]
    sub b
    ld l, a
    jp $ff3c


    ld d, c
    ld b, b
    ld bc, $fe00
    db $f4
    ld de, $3f3f
    db $e3
    inc e
    add [hl]
    ld a, c
    adc d
    rst RST_38
    ld [hl], c
    ld [$f311], a
    nop
    ld hl, $c000
    rst RST_38
    ret nz

    rst RST_38
    rst RST_38
    ld e, c
    and b
    ld c, b
    or b
    inc b
    rst RST_38
    ld hl, sp+$2d
    pop de
    ld a, l
    add c
    rlc e
    rlca
    ld a, a
    rlca
    rra
    rra
    nop
    ld a, a
    nop
    ld a, a
    db $ec
    nop
    cp $db
    ld d, b
    inc b
    db $fc
    nop
    ld sp, hl
    inc b
    db $fd
    ld b, b
    rst RST_38
    adc [hl]
    add b
    sbc [hl]
    nop
    ld a, $00
    ld a, [hl]
    nop
    rst RST_38
    cp $40
    ld a, [hl]
    jr nc, jr_038_4ac0

    inc c
    add $f4
    ei
    ldh a, [c]
    push af
    ld sp, $f160
    ldh a, [c]
    ldh a, [c]
    pop af

jr_038_4b2e:
    di
    rst RST_38
    ldh a, [$ffe9]
    ldh [$ffe6], a
    add sp, -$77
    ld h, b
    ld e, [hl]
    rst RST_38
    ld hl, $31ce
    inc hl
    call c, $ef10
    adc h
    rst RST_38
    ld [hl], e
    ld [hl], d
    adc l
    add c
    ld a, [hl]
    ldh [$ff1f], a
    sbc a
    rst RST_38
    nop
    rlca
    ld hl, sp-$80
    ld a, a
    db $fd
    ld [bc], a
    ld [hl], b
    ei
    adc a
    rlca
    adc $00
    add hl, sp
    pop bc
    pop hl
    ld bc, $ff83
    inc bc
    rst RST_00
    rlca
    rlca
    rlca
    rst RST_08
    rrca
    sbc a
    rst RST_38
    ld e, a
    rra
    rst RST_18
    ld [$0ccf], sp
    rst RST_28
    ld b, $cf

jr_038_4b70:
    rst RST_30
    ld bc, $00fb
    ret


    ld d, h
    ld [de], a
    dec h
    rst RST_38
    ldh a, [$ffdf]
    nop
    ld [bc], a
    ld bc, $01f9
    ld e, a
    inc h
    ld bc, $fbff
    cp $2e
    ret c

    ld bc, $ff80
    jr jr_038_4b70

    jr nz, jr_038_4b2e

    db $e3
    ld b, b
    rst RST_18
    add b
    ccf
    db $10
    ld h, b
    ld hl, $f003
    db $e4
    ret nz

    inc e
    and c
    inc bc
    ccf
    ret c

    ld [bc], a
    dec sp
    db $10
    db $eb
    db $e4
    call nz, $c3ff
    ret nz

    pop bc
    sbc h
    add b
    scf
    ld [$ff60], sp
    rra
    ld b, h
    dec sp
    adc h
    ld [hl], e
    ret nz

    ccf
    or b
    rst RST_38
    rrca
    ld b, a
    add b
    ld [hl], b
    nop
    inc e
    nop
    rst RST_30
    rst RST_38
    ld [$ff00], sp
    inc a
    jp $19e6


    inc a
    xor a
    ret nz

    di
    nop
    ld b, $a8
    nop
    db $fc
    ld a, [hl-]
    db $10
    inc sp
    rra
    call z, $1f1f
    sbc a
    rra
    inc bc
    ld [hl], c
    cp b
    nop
    inc bc
    ld [hl], b
    ld h, e
    rrca
    rrca
    adc d
    dec d
    ret c

    dec b
    ld e, [hl]
    inc hl
    rst RST_38
    inc bc
    ret c

    dec b
    rst RST_38
    ld b, b
    ld a, a
    ld [hl], b
    rra
    db $10
    sbc a
    rst RST_28
    xor $88
    jr jr_038_4c70

    or c
    ld b, $ba

jr_038_4bfd:
    add hl, de
    cp $f6
    ld h, c
    dec sp
    ld [de], a
    ld d, b
    ld sp, $fbfd
    db $fc
    ld sp, hl
    call $f930
    ld hl, sp-$0f
    ldh a, [$fff1]
    rra

jr_038_4c11:
    ldh a, [$ff8e]
    ld [hl], c
    rlca
    ld hl, sp-$28
    ld d, b
    jp hl


    ld b, d
    jr nz, jr_038_4c1d

    rst RST_38

jr_038_4c1d:
    ld d, b
    adc a
    ld e, b
    add a
    ld e, h
    add e
    or [hl]
    ld c, c
    rst RST_38
    cp e
    ld b, h
    jr jr_038_4c11

    ld b, h
    cp e
    jr nc, jr_038_4bfd

    rst RST_38
    dec de
    db $e4
    add hl, bc
    or $08
    or $0a
    db $f4
    rst RST_38
    sub d
    ld l, h
    dec b
    ld hl, sp+$06
    ld sp, hl
    ld [$fff7], sp
    daa
    rlca
    ld [hl], e
    inc bc
    ld [hl], c
    ld bc, $00e0
    cp a
    db $e4
    nop
    xor [hl]
    ld b, b
    ccf
    ret nz

    ld sp, hl
    rlca
    ld a, a
    ld a, a

jr_038_4c54:
    ld a, a
    ccf
    ccf
    rst RST_18
    rra
    ld l, a
    adc a
    jr nz, jr_038_4c60

    or a
    ld [bc], a
    rst RST_38

jr_038_4c60:
    dec bc
    dec [hl]
    ld bc, $3ffc
    or c
    ld h, h
    jr nz, jr_038_4c54

    cp $60
    ld h, a
    nop
    ldh [rOCPD], a
    nop

jr_038_4c70:
    jr nz, @+$41

    ld [hl+], a
    ld c, e
    ccf
    daa
    db $e3
    ld [hl], h
    cpl
    db $eb
    ld [hl], b
    inc e
    ld bc, $f381
    ld [hl], b
    rra
    pop bc
    db $fd
    pop hl
    db $fd
    pop af
    ei
    ld [hl], b
    ld de, $0280
    dec d
    pop af
    pop af
    ldh a, [$fff0]
    ldh a, [c]
    di
    ei
    ei
    ld [bc], a
    nop
    ld [bc], a
    add b
    ld b, b
    nop
    and b
    ldh a, [rNR32]
    ld [de], a
    ld de, $6089
    inc a
    rrca
    rlca
    nop
    ld bc, $1312
    ld [hl-], a
    ldh [c], a
    ldh [$ffc0], a
    ldh [rBGP], a
    sbc c
    inc d
    jr z, jr_038_4cd2

    ld d, b
    ld d, b
    rla
    dec bc
    add l
    ld b, $47
    ld h, e
    ld [hl], c
    ld [hl], b
    ld [bc], a
    rst RST_38
    ld [bc], a
    ld a, a
    ccf
    rst RST_18
    rst RST_28
    rst RST_30
    ccf
    ld a, a
    rra
    ccf
    ld a, a
    ld [bc], a
    rst RST_38
    ld [bc], a
    ldh a, [$ffd0]
    ret nz

    add b
    add b
    ret nz

jr_038_4cd2:
    ldh [$fff0], a
    cpl
    cpl
    ld [bc], a
    ccf
    dec b
    ld sp, hl
    ld [bc], a
    db $fd
    ld b, $02
    ei
    ld [bc], a
    ld [bc], a
    ld sp, hl
    ld [bc], a

Call_038_4ce3:
    ld hl, sp-$08
    jr jr_038_4ce7

jr_038_4ce7:
    ld [bc], a
    add b
    ld [bc], a
    ret nz

    ldh [rSVBK], a
    ld b, c
    jr nc, jr_038_4d0e

    adc c
    ld b, a
    ld h, b
    jr c, @+$4e

    ld bc, $7c0e
    sbc b
    db $10
    ret z

    ld h, h
    ld a, [de]
    ld d, b
    ld [hl], h
    ld h, l
    ld b, a
    ld b, [hl]
    ld b, $0e
    ld c, $70
    ret nz

    ret nz

    ld [bc], a
    ld bc, $0003
    dec sp
    dec e

jr_038_4d0e:
    inc c
    ld b, $07
    add e
    add e
    pop bc
    ld [bc], a
    nop
    rlca
    rst RST_38
    ld a, a
    rst RST_38
    cp a
    rra
    rra
    nop
    nop
    ldh a, [$fff0]
    ld [bc], a
    ldh [rSC], a
    ret nz

    nop
    nop
    ld [bc], a
    ldh a, [rTIMA]
    ld hl, sp-$08
    ld [bc], a
    rst RST_38
    ld [bc], a
    ld a, a
    ccf
    ccf
    rra
    rrca
    db $e3
    pop hl
    db $e4
    halt
    sbc a
    jp $f8f0


    rst RST_38
    cp $ec
    db $ec
    call Call_000_1f1d
    ccf
    rra
    jr c, jr_038_4da7

    db $e3
    rst RST_00
    rst RST_08
    adc a
    adc a
    rst RST_20
    di
    ld a, c
    ld hl, sp-$48
    sbc h
    adc [hl]
    adc a
    ld [bc], a
    rst RST_38
    ld [bc], a
    ld a, a
    ccf
    rra
    rrca
    rlca
    ldh [$fff0], a
    ei
    rst RST_30
    rst RST_20
    cp $9a
    ldh a, [rSC]
    cp $06
    ld a, [hl]
    ld [bc], a
    ccf
    ld [bc], a
    ld [bc], a
    rra
    inc b
    db $fd
    db $fd
    ld [bc], a
    db $fc
    dec b
    ld [bc], a
    ld hl, sp+$07
    rst RST_20
    rst RST_38
    ld [bc], a
    ld a, a
    ld [bc], a
    ccf
    rra
    rrca
    cp [hl]
    rst RST_08
    pop hl
    ld [hl], b
    cp b
    sbc a
    rst RST_00
    add e
    cp $f1
    add e
    rlca
    rrca
    rlca
    add e
    pop hl
    adc a
    adc e
    sbc d
    cp b
    cp c
    ld sp, hl
    pop af
    pop af
    adc a
    ccf
    ccf
    ld [bc], a
    cp $03
    rst RST_38
    jp $f0e1


    ld hl, sp-$08
    ld a, h
    ld a, h
    ld a, $02
    rst RST_38

jr_038_4da7:
    inc bc
    ld [bc], a
    ld a, a
    ld [bc], a
    ccf
    ldh [$ffc0], a
    push bc
    ldh a, [rSC]
    rst RST_38
    inc bc
    ld e, $be
    ld a, $3e
    ld [bc], a
    cp $03
    ld de, $3500
    ld [hl], e
    jr z, jr_038_4dc3

    inc d
    nop
    sub d

jr_038_4dc3:
    inc l
    cp l
    ld b, $03
    ldh [c], a
    push de
    adc [hl]
    ld a, a
    ld d, $4e
    nop
    rst RST_30
    rst RST_30
    and [hl]
    nop
    ld e, h
    ld h, b
    ld bc, $f79e
    rst RST_10
    push af
    nop
    ld hl, sp+$02
    sub e
    ld h, b
    rst RST_30
    rst RST_30
    rst RST_20
    nop
    rst RST_38
    rra
    ld bc, $2212
    ld h, b
    stop
    jr @+$62

    ld b, b
    ld [hl+], a
    ret nz

    jr nc, jr_038_4e19

    rst RST_38
    sbc b
    ld bc, $5f06
    rlca
    adc h
    add [hl]
    adc h

jr_038_4dfa:
    nop
    nop
    ld b, b
    rst RST_38
    ld [hl-], a
    inc l
    ld b, c
    jr z, @+$13

    nop
    db $e3
    call z, $9209
    jr jr_038_4e0a

jr_038_4e0a:
    sub b
    ldh [$ff31], a
    add l
    rla
    add a
    ld b, a
    nop
    inc bc
    ld de, $a070
    ld h, e
    ldh [rP1], a

jr_038_4e19:
    nop
    jr @+$0e

    nop
    nop
    add sp, -$20
    jp z, $5420

    ld b, h
    nop
    ld a, [hl+]
    ld e, h
    jr z, jr_038_4e51

    ld e, b
    inc c
    ld d, h
    or [hl]
    ld c, [hl]
    ld h, c
    nop
    jr nc, jr_038_4e79

    rrca
    dec [hl]
    rra
    ld [bc], a
    inc c
    ld c, a

jr_038_4e38:
    ccf
    dec [hl]
    rst RST_38
    inc b
    ld h, b
    inc hl
    db $10
    ld h, e
    ld c, $5a
    ld b, b
    inc c
    pop hl
    add e
    ld [de], a
    ld h, b
    ld c, $1b
    nop
    jr jr_038_4e61

    ldh a, [$fffe]
    dec [hl]
    rst RST_38

jr_038_4e51:
    inc b
    ld [$041c], sp
    inc b
    add [hl]
    add d
    jp nz, $8fc2

    and a
    ld d, a
    jr nz, jr_038_4dfa

    dec b
    ld b, c

jr_038_4e61:
    jr nc, jr_038_4ec3

    inc hl
    db $10
    ld h, d
    ld c, $5a
    ld b, b
    inc c
    ld a, [hl+]
    inc d
    ld e, d
    ld [de], a
    add [hl]
    push bc
    ld b, l
    jr z, @+$58

    xor d
    ld e, d
    ld [hl+], a
    ld [de], a
    ld [bc], a
    add b

jr_038_4e79:
    ld h, b
    rra
    sbc a
    cp a
    ccf
    add hl, sp
    ld [hl], $39
    jr nz, jr_038_4eb8

    rst RST_38
    inc bc
    cpl
    ld bc, $82f5
    dec [hl]
    rst RST_38
    inc b
    cp $7c
    db $fc
    jp nz, $c1c2

    pop bc
    inc bc
    ldh [rSC], a
    jp nz, $a589

    ld e, b
    ld c, b
    inc h
    jr nc, jr_038_4e38

    ld c, b
    ld h, b
    inc hl
    db $10
    ld h, e
    ld c, $4a
    ld b, b
    inc c
    ld h, h
    ldh [rNR10], a
    nop
    dec e
    jr nz, jr_038_4f06

    add hl, sp
    db $10
    adc c
    db $10
    add b
    dec hl
    ld a, [bc]
    call $8004

jr_038_4eb8:
    ld c, b
    add b
    ld c, b
    ld bc, $0081
    db $10
    ld bc, $a886
    or h

jr_038_4ec3:
    cp d
    dec [hl]
    ccf
    ld [bc], a
    ld bc, $0945
    sbc d
    ld a, h
    ld hl, sp-$40
    rst RST_38
    db $fc
    add hl, sp
    inc a
    ld a, $3e
    ld a, [hl-]
    ld a, [$00f8]
    ld b, b
    rrca
    sbc l
    di
    ld a, l
    db $fd
    rst RST_38
    ld c, l
    dec c
    inc [hl]
    nop
    nop
    ld de, $2d29
    ld bc, $8063
    inc h
    db $10
    ld a, $40
    jr jr_038_4ef0

jr_038_4ef0:
    xor d
    ld [$5074], sp
    jr c, jr_038_4ef8

    nop
    and d

jr_038_4ef8:
    or l
    ld b, h
    add d
    sub c
    ld hl, $3352
    db $10
    jr nz, jr_038_4f42

    adc b
    adc l
    dec d
    inc d

jr_038_4f06:
    db $10
    cp a
    sbc a
    rst RST_18
    rst RST_28
    rst RST_30
    add e
    ccf
    ld a, $35
    rst RST_38
    ld [bc], a
    cp $fe
    dec [hl]
    rst RST_38
    ld [bc], a
    ld hl, sp-$08
    ld a, [$9efe]
    ld l, h
    add b
    adc c
    rst RST_38
    db $fd
    ld [hl], c
    ld bc, $0335
    ld [bc], a
    add $14
    ld [$0908], sp
    ld [de], a
    ld [hl], $24
    jr nz, jr_038_4f30

jr_038_4f30:
    dec sp
    add hl, bc
    inc a

jr_038_4f33:
    ld [hl], b
    inc e
    add b
    inc a
    ldh a, [$fff1]
    ldh [c], a
    inc b
    ld a, b
    ld l, c
    ld d, [hl]
    ld [bc], a
    ld bc, $3885

jr_038_4f42:
    ld d, h
    or [hl]
    inc bc
    ld b, d
    add b
    db $10
    inc d
    ld a, [bc]
    dec bc
    dec b
    inc b
    ld [bc], a
    add d
    ld a, $9f
    sbc a
    rrca
    ld b, a
    ld h, e
    sbc c
    ld h, [hl]
    ld a, a
    ld d, e
    ld c, h
    db $f4
    ei
    db $fc
    rst RST_38
    cp $e8
    sbc $78
    inc de
    and [hl]
    ld a, b
    inc bc

jr_038_4f66:
    ld a, a
    ld h, l
    and l
    dec b
    dec bc
    ld de, $2010
    jr nz, jr_038_4fd8

    ld c, b
    nop
    rla
    db $10
    jr jr_038_4f86

    ld b, h
    ld [hl], a
    ld [hl], a
    inc sp
    nop
    ccf
    rst RST_18
    daa
    jr z, jr_038_4f66

    call z, $3198
    ld c, c
    ld d, $11

jr_038_4f86:
    ld d, b
    ld de, $3212

jr_038_4f8a:
    jp nz, $2c06

    pop de
    ld [$0141], sp
    jr nz, jr_038_4f33

    add b
    ld d, d
    ld [de], a
    adc b
    ld a, e
    db $ed
    add d
    ld hl, $7230
    inc de
    add e
    ccf
    rst RST_18
    ld h, a
    db $10
    rst RST_20
    ld a, b
    ccf
    sbc h
    cp $fe
    ld sp, hl
    inc b
    ld c, c
    inc bc
    rst RST_38
    ld a, a
    and d
    ld [hl+], a
    ld b, $14
    sub h
    db $e4
    ld b, a
    dec c
    jp z, Jump_038_47c8

    jr nz, jr_038_4fdc

    jr z, @+$1d

    adc c
    res 6, a
    ld b, a
    nop
    inc de
    db $e3
    dec h
    adc b
    nop
    ld h, b
    dec [hl]
    nop
    inc bc
    ld c, $3f
    add h
    ld h, $99
    ld [hl], e
    ld [bc], a
    nop
    and c
    ret nc

    dec e
    ld [hl], a

jr_038_4fd8:
    ld h, $ec
    and c
    nop

jr_038_4fdc:
    ld b, c
    adc b
    ld l, $26
    ld bc, $af18
    ld b, h
    ld [bc], a
    sbc b
    inc bc
    ld de, $8959
    ld c, b
    ld c, b
    sub b
    jr c, jr_038_4f8a

    set 1, e
    db $ed
    push hl
    push af
    ld [hl], l
    ld a, d
    ccf
    sbc e
    reti


    pop de
    sub l
    or l
    inc h
    ld c, [hl]
    call $e2c4
    adc b
    jr nz, jr_038_5041

    ld [bc], a
    jr c, jr_038_504a

    cp c
    add a
    or b
    ld [$0002], sp
    jr nz, jr_038_5044

    nop
    ld b, $1f
    ld [bc], a
    ld h, [hl]
    nop
    nop
    ld b, $02
    ret nz

    ldh a, [$ff60]
    jp nz, Jump_000_3c00

    add b
    or h
    jr jr_038_503a

    dec [hl]
    ld a, a
    ld [bc], a
    dec [hl]
    ccf
    ld [bc], a
    ld a, a
    ld a, a
    ret nz

    ld hl, sp+$35
    rst RST_38
    inc b
    cp a
    inc bc
    ld sp, $fefc
    dec [hl]
    rst RST_38
    inc bc
    nop
    add b
    ret nz

jr_038_503a:
    ldh [rSVBK], a
    sbc b
    ret c

    db $ec
    ldh a, [$ff80]

jr_038_5041:
    nop
    rlca
    rst RST_38

jr_038_5044:
    ld a, [hl]
    nop
    nop
    ld a, d
    dec sp
    dec sp

jr_038_504a:
    ei
    db $fd
    inc c
    ld a, $7f
    rst RST_08
    rst RST_18
    cp a
    cp a
    ccf
    ld a, [hl]
    ld a, h
    db $fd
    db $fd
    ei
    and $89
    ld [hl], $70
    ret nz

    ld c, $80
    ld bc, $8f4f
    rrca
    rra
    rra
    ccf
    dec [hl]
    rst RST_38
    rlca
    ld hl, sp+$35
    db $fc
    ld b, $60
    ldh [rNR41], a
    nop
    ld [de], a
    ld h, e
    inc bc
    inc bc
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    adc a
    sbc a
    rst RST_08
    rst RST_08
    rst RST_20
    di
    pop af
    ld sp, hl
    ld hl, sp+$35
    rst RST_38
    inc bc
    rst RST_18
    rst RST_18
    sbc a
    sbc a
    or $fb
    ld sp, hl
    db $fc
    dec [hl]
    rst RST_38
    inc bc
    nop
    nop
    adc a
    adc a
    ld b, a
    ld h, a
    di
    pop af
    rra
    rlca
    add a
    rst RST_00
    dec [hl]
    rst RST_38
    inc bc
    db $fc
    dec [hl]
    rst RST_38
    ld b, $3e
    dec [hl]
    cp $02
    db $fc
    db $fd
    ld sp, hl
    ei
    ccf
    ld a, a
    ld a, a
    dec [hl]
    rst RST_38
    ld [$f7f7], sp
    ei
    ei
    db $fc
    dec [hl]
    cp $04
    db $fc
    ld hl, sp+$28
    inc bc
    inc d
    nop
    sub d
    inc l
    cp l
    ld b, $67
    add a
    rlca
    rrca
    ld c, a
    dec [hl]
    rrca
    ld [bc], a
    rst RST_00
    db $e3
    di
    dec [hl]
    rst RST_38
    inc b
    dec [hl]
    db $fc
    inc b
    ld hl, sp-$08
    ldh a, [$ff35]
    ccf
    dec b
    rra
    rra
    dec [hl]
    rst RST_38
    rlca
    ei
    db $fd
    cp $35
    rst RST_38
    ld b, $7f
    ccf

Call_038_50eb:
    ccf
    sbc a
    rst RST_00
    pop af
    rst RST_38
    rst RST_38
    rst RST_30
    di
    di
    ei
    ld sp, hl
    ld sp, hl
    di
    rst RST_30
    rst RST_20
    rst RST_28
    rst RST_08
    rst RST_18
    sbc a
    ccf
    dec [hl]
    rst RST_38
    rlca
    ld sp, hl
    dec [hl]
    ld hl, sp+$02
    dec [hl]
    db $fc
    inc bc
    ldh a, [$fff3]
    di
    rst RST_20
    ld l, a
    dec [hl]
    ld a, a
    ld [bc], a
    ld d, a
    ld bc, $0000
    sbc d
    xor a
    add b
    add b
    rst RST_30
    rst RST_30
    db $e3
    nop
    ld a, a
    ld a, a
    ld a, [hl]
    nop
    rst RST_30
    push af
    ldh [c], a
    nop
    ccf
    ld a, a
    ld sp, $f700
    rst RST_30
    and [hl]
    nop
    ld e, h
    ld h, b
    jr jr_038_5191

    rst RST_30
    rst RST_10
    push af
    nop
    ld hl, sp+$04
    nop
    inc c
    rst RST_30
    rst RST_30
    rst RST_20
    nop
    rst RST_38
    rra
    pop bc
    inc h
    rst RST_30
    rst RST_30
    and $00
    ld a, l
    ld a, [de]
    jr c, jr_038_5149

jr_038_5149:
    ret nz

    nop
    rlca
    nop
    nop
    ld b, $19
    jr nz, jr_038_5152

jr_038_5152:
    ld [hl], b
    ld bc, $0070
    nop
    add b
    nop
    pop bc
    nop
    add b
    db $10
    ld c, $00
    inc e
    nop
    add b
    ld h, b
    nop
    inc b
    ld [bc], a
    ld [$0004], sp
    rla
    rlca
    rlca
    nop
    inc bc
    ld bc, $0000
    dec [hl]
    rst RST_30
    ld [bc], a
    nop
    dec [hl]
    ld a, a
    ld [bc], a
    nop
    ldh [c], a
    ldh [$ffc0], a
    ld a, [bc]
    ld b, b
    db $10
    stop
    and b
    ld d, b
    ld d, b
    nop
    jr nz, jr_038_5187

jr_038_5187:
    nop
    and b
    ld e, $00
    rrca
    ccf
    dec [hl]
    ld a, a
    inc bc
    inc bc

jr_038_5191:
    ccf
    dec [hl]
    rst RST_38
    dec b
    rst RST_30
    rst RST_30
    rst RST_20
    nop
    ld a, a
    ccf
    ccf
    nop
    rst RST_30
    rst RST_30
    rst RST_20
    nop
    dec [hl]
    ld a, a
    ld [bc], a
    nop
    ldh [$ff35], a
    rst RST_38
    ld b, $00
    ldh [$fff9], a
    ld hl, sp-$07
    db $fc
    db $fd
    db $fd
    rrca
    ld b, a
    rlca
    nop
    inc bc
    ld b, c
    ld hl, $f700
    rst RST_30
    and $00
    ld a, [hl]
    ld a, $3c
    nop
    ld b, b
    ld b, b
    add b
    adc b
    db $10
    stop
    nop
    and b
    ld b, b
    jr nz, @+$12

    dec [hl]
    nop
    inc bc
    dec [hl]
    ld a, a
    ld [bc], a
    rst RST_38
    cp $f8
    rst RST_30
    dec [hl]
    rst RST_38
    inc b
    rra
    inc bc
    ld hl, sp+$0c
    dec [hl]
    rst RST_38
    dec b
    cp $7d
    db $fc
    db $fc
    cp $fe
    db $fc
    nop
    ld a, h
    inc b
    ld bc, $0011
    db $10
    stop
    ld b, b
    nop
    rst RST_30
    rst RST_30
    rst RST_20
    nop
    ld a, a
    ccf
    ccf
    nop
    ldh a, [$fff4]
    and $00
    ld a, l
    ld a, h
    inc h
    ld bc, $1008
    add b
    nop
    nop
    ld b, b
    nop
    add b
    ld b, b
    jr nc, @+$42

    jr nc, @+$37

    nop
    inc bc
    cp $78
    ld a, l
    ld a, [hl]
    ld a, a
    dec [hl]
    rst RST_38
    ld [bc], a
    ld [bc], a
    ld b, b
    inc c
    sbc c
    add a
    dec [hl]
    rst RST_38
    ld [bc], a
    ld a, d
    db $fc
    ld sp, hl
    ld hl, sp-$07
    db $fd
    db $fd
    rst RST_38
    nop
    ld c, h
    inc c
    sbc d
    inc c
    dec [hl]
    cp $02
    ld hl, $0021
    inc d
    inc d
    inc b
    inc b
    nop
    rst RST_30
    rst RST_30
    ld [hl], a
    nop
    ld a, a
    ld a, a
    ccf
    nop
    or $f7
    or $00
    ld a, h
    ld a, h
    ld a, c
    ld [bc], a
    inc b
    ld [bc], a
    inc de
    ld de, $4020
    nop
    nop
    jr nz, jr_038_5294

    add b
    dec [hl]
    nop
    inc b
    ld a, a
    ld a, a
    ccf
    rra
    rrca
    ld a, a
    dec [hl]
    rst RST_38
    dec c
    add hl, sp
    sub e
    rst RST_38
    rst RST_38
    dec [hl]
    cp $03
    dec [hl]
    db $fc
    ld [bc], a
    ld sp, hl
    add hl, bc
    ld de, $1011
    dec [hl]
    nop
    ld [bc], a
    inc b
    dec [hl]
    ld [hl], a
    ld [bc], a
    nop
    rst RST_38
    rst RST_38
    ld a, a
    nop
    db $f4
    ldh a, [c]
    db $e4
    nop
    ld [hl], c
    ld h, d
    ld d, b
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $82
    nop

jr_038_5289:
    ld b, b
    add c
    ld bc, $0035
    rlca
    rst RST_38
    dec [hl]
    ld a, a
    ld [bc], a
    ccf

jr_038_5294:
    rra
    rlca
    ld bc, $ecff
    ldh a, [$fffb]
    db $fc
    dec [hl]
    rst RST_38
    inc bc
    jr nc, jr_038_52a1

jr_038_52a1:
    add b
    pop bc
    add a
    rst RST_38
    rst RST_38
    ei
    ld a, e
    ei
    pop af
    ldh [$ffe0], a
    ret nz

    ret nz

    dec [hl]
    inc b
    ld [bc], a
    dec [hl]
    nop
    ld [bc], a
    ld [$7708], sp
    ld [hl], a
    inc sp
    nop
    ccf
    rra
    ld b, a
    ld b, b
    add sp, -$30
    add b
    nop
    ld [bc], a
    ld [$0102], sp
    nop
    jr nz, jr_038_5289

    dec [hl]
    db $10
    ld [bc], a
    ld [$8081], sp
    ret nz

    ret nz

    ld b, b
    ld b, b
    add b
    add b
    stop
    db $10
    inc a
    ld e, $35
    rrca
    ld [bc], a
    rra
    rst RST_38
    ccf
    rra
    rrca
    nop
    add b
    ret nz

    db $e3
    rst RST_38
    rst RST_38
    cp $f8
    dec [hl]
    nop
    ld [bc], a
    add b
    nop
    nop
    ld b, b
    ld [bc], a
    ld [bc], a
    ld [de], a
    jr nz, jr_038_52f6

jr_038_52f6:
    inc b
    rlca
    nop
    inc bc
    db $10
    stop
    nop
    inc hl
    ld b, a
    add a
    nop
    inc hl
    ld bc, $00c1
    dec [hl]
    db $f4
    ld [bc], a
    nop
    ld a, d
    ld h, b
    nop
    nop
    ld b, b
    ret nz

    ld h, b
    nop
    inc e
    ld bc, $0000
    ld [bc], a
    dec [hl]
    nop
    ld [bc], a
    ld b, b
    add b
    ld [bc], a
    inc b
    db $10
    ld e, b
    xor $81
    nop
    ld [hl+], a
    sbc b
    nop
    sbc a
    adc a
    rlca
    rlca
    add a
    add a
    rrca
    rlca
    rst RST_20
    rst RST_30
    rst RST_30
    di
    dec [hl]
    ei
    ld [bc], a
    db $fd
    ret nz

    db $e4
    and $ee
    xor $ce
    rst RST_18
    cp a
    dec [hl]
    nop
    ld [bc], a
    ld [hl], b
    ret nz

    ret nz

    db $fc
    cp $80
    ld b, [hl]
    jr nc, jr_038_534d

    nop
    nop
    add b

jr_038_534d:
    ld b, b
    ld sp, $c081
    dec [hl]
    nop
    ld [bc], a
    ld bc, $f700
    rst RST_30
    ld [hl], a
    nop
    rrca
    rlca
    rlca
    nop
    rst RST_30
    rst RST_30
    or $00
    ld a, [hl]
    ld a, [hl]
    ld a, h
    dec [hl]
    nop
    ld [bc], a
    add b
    dec [hl]
    ret nz

    ld [bc], a
    sub b
    or b
    ccf
    rlca
    dec [hl]
    nop
    ld [bc], a
    jr c, jr_038_53b4

    ld c, h
    ldh a, [$ffc8]
    ld [de], a
    ldh a, [$ff3c]
    ld a, $1f
    rrca
    inc hl
    ccf
    rra
    rrca
    rlca
    inc hl
    inc bc
    ld bc, $7f0f
    dec [hl]
    rst RST_38
    dec b
    db $fd
    dec [hl]
    db $fc
    ld [bc], a
    cp $35
    rst RST_38
    ld [bc], a
    ccf
    ccf
    ld a, a
    ld a, a
    dec [hl]
    rst RST_38
    ld [bc], a
    cp $fe
    db $fc
    ld hl, sp-$10
    pop bc
    adc a
    ccf
    rst RST_38
    dec [hl]
    nop
    ld [bc], a
    ld b, e
    dec [hl]
    add a
    ld [bc], a
    adc a
    nop
    inc e
    ld [hl], b
    ldh [$ffc0], a
    dec [hl]
    add b
    ld [bc], a
    inc bc

jr_038_53b4:
    ld bc, $0001
    dec [hl]
    ld bc, $0002
    dec [hl]
    db $f4
    ld [bc], a
    nop
    dec [hl]
    ld a, b
    ld [bc], a
    nop
    cp b
    cp b
    ret c

    adc $6e
    daa
    rst RST_10
    ld d, c
    ld h, a
    inc sp
    ld sp, $0c18
    ld c, $86
    add a
    rrca
    add e
    sub c
    db $10
    ld a, [hl+]
    dec hl
    ld l, a
    ld l, a
    adc b
    call nz, $e3c6
    ldh a, [$fff8]
    db $fc
    cp $ff
    ld a, a
    ccf
    ccf
    sbc a
    adc a
    rlca
    rlca
    dec [hl]
    rst RST_38
    ld [de], a
    cp $fe
    db $fc
    db $fc
    ld hl, sp+$1f
    rra
    ccf
    ccf
    dec [hl]
    ld a, a
    ld [bc], a
    rst RST_38
    add b
    dec [hl]
    ret nz

    ld [bc], a
    add sp, -$18
    db $e4
    add h
    ld [bc], a
    ld [bc], a
    adc d
    ld c, $4e
    ld e, h
    ld a, e
    ld [hl], a
    rst RST_30
    rst RST_30
    db $e3
    nop
    ld a, a
    ld a, a
    ld a, [hl]
    nop
    dec [hl]
    ldh a, [rSC]
    nop
    dec [hl]
    ld h, b
    ld [bc], a
    nop
    add hl, hl
    inc e
    ld c, h
    ld b, b
    ldh [$ffe0], a
    ldh a, [$fff8]
    add a
    rst RST_00
    rrca
    dec de
    inc sp
    halt
    and $ee
    rst RST_18
    dec [hl]
    db $db
    ld [bc], a
    ld c, e
    ld c, e
    ld l, c
    ld hl, $ff35
    rlca
    inc bc
    ld bc, $8080
    ret nz

    ldh a, [$fff8]
    db $fc
    dec [hl]
    rst RST_38
    ld [bc], a
    ld a, a
    ccf
    ccf
    rrca
    inc bc
    dec [hl]
    rst RST_38
    rlca
    ld hl, sp-$10
    ldh a, [$ffe0]
    ldh [$ffc0], a
    ret nz

    add b
    rst RST_38
    ld hl, sp-$20
    ld b, b
    dec [hl]
    nop
    inc bc
    inc b
    dec [hl]
    dec b
    ld [bc], a
    dec [hl]
    ld [bc], a
    inc bc
    cpl
    inc c
    rrca
    ld a, [de]
    sub [hl]
    adc h
    add b
    add b
    dec [hl]
    ld [hl], a
    ld [bc], a
    nop
    dec [hl]
    ccf
    ld [bc], a
    nop
    rst RST_38
    dec e
    nop
    add b
    db $fd
    nop
    nop
    inc b
    ld bc, $0e00
    ld bc, $0e30
    cp e
    ld b, c
    jr nc, jr_038_5481

jr_038_5481:
    inc bc
    ccf
    nop
    ret nz

    ld d, $02
    rst RST_38
    ldh [rP1], a
    ld [bc], a
    ld e, $00
    inc h
    ld [bc], a
    ld a, [hl+]
    ld bc, $0b22
    rst RST_38
    nop
    ld a, [hl+]
    jp hl


    ld b, h
    ld b, b
    dec bc
    ld [hl+], a
    dec b
    cp $29
    inc c
    inc l
    inc de
    adc e
    rst RST_28
    inc b
    ldh [c], a
    ld bc, $1ff8
    ld [$ff00], sp
    ret nz

    ld [hl], a
    ccf
    or b
    ld c, a
    nop
    inc bc
    db $fc
    nop
    inc bc
    add [hl]
    nop
    ld hl, sp-$7b
    nop
    ld e, $03
    nop
    nop
    add b
    nop
    ld [hl], b
    add b
    inc c
    rst RST_38
    ld [hl], b
    ld [bc], a
    adc h
    adc a
    ld b, b
    ccf
    add b
    ld a, a
    nop
    scf
    ld b, $ac
    rrca
    ld e, b
    dec b
    jr c, jr_038_54da

    ld l, b
    dec b
    ld e, b
    ld b, $2a

jr_038_54da:
    nop
    ld a, h
    ld bc, $681e
    dec b
    ld bc, $00f2
    db $fd
    ld d, a
    dec b
    ld a, h
    ld bc, $012a
    rst RST_38
    db $fd
    ld [bc], a
    ei
    inc b
    cp $01
    db $ed
    ld [de], a
    rst RST_38
    cp $01
    or l
    ld c, d
    ld [$5d14], a
    and d
    rst RST_38
    xor d
    ld d, l
    push af
    ld a, [bc]
    xor d
    ld d, l
    ld d, l
    xor d
    rst RST_38
    and b
    ld e, a
    nop
    rst RST_38
    inc l
    inc de
    dec bc
    add h
    rst RST_28
    and d
    ld d, c
    ld d, b
    xor b
    jr jr_038_5526

    ld a, [hl+]
    push de
    dec b
    push af
    ld a, [$0bae]
    ret nz

    xor l
    inc c
    nop
    nop
    ldh [rP1], a
    cp a
    ldh [rIF], a

jr_038_5526:
    rst RST_20
    ld [$00ef], sp
    ld d, [hl]
    inc de
    ldh [$ffdf], a
    nop
    jr z, jr_038_5575

    jr z, jr_038_5578

    ld h, d
    dec d
    add hl, hl
    ld b, h
    db $fd
    jr z, jr_038_5589

    nop
    db $10
    ld c, a
    ld b, h
    add hl, de
    ld c, b
    ld d, $df
    ld d, d
    inc b
    ld e, c
    nop
    ld e, a
    nop
    nop
    inc bc
    nop
    rst RST_38
    add e
    jr c, @+$3d

    add b
    dec sp
    add b
    cp e
    nop
    cp $88
    ld de, $0003
    ld [$f415], a
    dec bc
    xor d
    rst RST_38
    ld d, l
    db $f4
    dec bc
    ld l, b
    sub a
    call nc, $ea2b
    rst RST_38
    dec d
    or h
    ld c, e
    dec d
    rst RST_38
    cpl
    rst RST_38
    ld e, a
    db $eb
    rst RST_38
    ccf
    and e
    db $10

jr_038_5575:
    cp a
    and e
    ld [de], a

jr_038_5578:
    ld b, d
    db $fd
    and l
    rst RST_38
    ld a, [$fff0]
    pop hl
    cp $f0
    rst RST_38
    jp hl


    rst RST_38
    cp $d2
    db $fd
    pop hl

jr_038_5589:
    cp $fc
    nop
    ldh a, [rIE]
    inc bc
    db $e3
    rrca
    call z, $991f
    ccf
    sbc [hl]
    rst RST_38
    ccf
    jr nz, jr_038_5619

    nop
    ld h, e
    rra
    ccf
    rst RST_38
    xor $d2
    db $10
    ld a, [$c5ff]
    ld a, [hl+]
    ld bc, $000c
    add b
    rst RST_38
    cp $ff
    jp $e7ff


    rst RST_38
    ld a, $ff
    rst RST_38
    ld c, a
    rst RST_38
    ld [bc], a
    rst RST_38
    nop
    rra
    ld a, [bc]
    rst RST_38
    rst RST_38
    rrca
    nop
    add a
    ldh [$ff33], a
    ld hl, sp+$19
    cp h
    rst RST_38
    dec c
    call c, $ce84
    nop
    and $02
    and $fe
    jr c, @+$07

    db $fc
    nop
    ld hl, sp+$03
    ld a, [$fd01]
    cp $37
    ld b, $1f
    nop
    rrca
    ldh [$ff2f], a
    ret nz

    ld e, a
    rst RST_38
    add b
    ld [$d515], a
    ld a, [hl+]
    ld a, [$f505]
    rst RST_30
    ld a, [bc]
    ld a, [$be05]
    nop
    ld bc, $00ff
    ld d, a
    rst RST_38
    rst RST_38
    ld a, [hl+]
    rst RST_38
    dec b

jr_038_55fa:
    rst RST_38
    ld b, b
    cp a
    xor b
    rst RST_38
    ld d, a
    ld d, l
    xor d
    xor d
    ld d, l
    push de
    ld a, [hl+]
    jp nc, $b1fe

    db $10
    ld [bc], a
    db $fd
    dec d
    ld [$55aa], a
    ld d, a
    rst RST_38
    xor b
    xor e
    ld d, h
    rst RST_18
    jr nz, jr_038_5618

jr_038_5618:
    ld d, l

jr_038_5619:
    nop
    rst RST_38
    ld h, e
    nop
    ld b, e
    nop
    ld h, l
    nop
    ld b, b
    nop

jr_038_5623:
    ld a, a
    ld l, b

jr_038_5625:
    nop
    dec [hl]
    nop
    rrca
    nop
    db $e3
    nop
    nop
    db $dd
    pop af

jr_038_562f:
    ld a, e
    db $10
    add [hl]
    nop
    jr nz, jr_038_568d

    jr nz, jr_038_562f

    ld e, h
    db $eb
    rst RST_38
    jr z, jr_038_55fa

    ld bc, $05fc
    ld bc, $0701
    inc c
    rst RST_38
    rra
    ld [bc], a
    add [hl]
    ld b, $ce
    inc b
    ld c, $0c
    rst RST_38
    ld a, $18
    ld a, l
    ld h, c
    ld sp, hl
    add b
    push hl
    nop
    xor a
    ld [bc], a
    db $fc
    db $fc
    inc bc
    add hl, hl
    ld [bc], a
    ld a, a
    dec d
    nop
    ccf
    db $fc
    sub a
    jr nz, jr_038_568c

    inc bc
    cp $01
    ld hl, sp+$07
    ldh [$ff1f], a
    db $fc
    and e
    ld [bc], a
    ld d, a
    nop
    db $e3
    inc e
    inc bc
    db $fc
    inc bc
    db $fc
    ei
    rlca
    ld hl, sp-$46
    ld hl, $8000
    ccf
    nop
    and b
    ld a, a
    rra
    jr nz, jr_038_5623

    jr nz, jr_038_5625

    jr nc, @-$6f

    jp z, $cf21

    ccf

jr_038_568c:
    ccf

jr_038_568d:
    ret nz

    nop
    pop de
    jr nz, @-$50

    ld b, $ff
    rst RST_38
    rst RST_30
    rra
    rra
    ldh [rNR33], a
    nop
    cpl
    ret nc

    inc de
    db $ec
    rst RST_28
    ld [$06f7], sp
    ld sp, hl
    jp nc, Jump_038_7f11

    ld a, a
    add e
    inc c
    adc b
    nop
    ld a, [hl+]
    ld bc, $c03f
    jp nc, $d211

    ld de, $23e2
    db $dd
    ld [hl+], a
    xor $10
    ld [hl], $0f
    rrca

jr_038_56bd:
    ldh a, [rP1]
    nop
    inc d
    nop
    ld [bc], a
    rst RST_38
    ld [$0608], sp
    ld de, $0400
    jr z, jr_038_56f6

    ei
    inc b
    inc b
    nop
    nop
    ld de, $0080
    nop
    adc b
    rst RST_38
    ld [de], a
    ld [de], a
    ld hl, $0021
    ld d, c
    add d
    ld a, [bc]
    cp $4f
    nop
    ld hl, $c8c2
    db $10
    inc h
    db $10
    ld b, d
    rst RST_38
    add b

jr_038_56eb:
    ld de, $8504
    nop
    ld [$1800], sp
    rst RST_38
    nop
    ld d, $60

jr_038_56f6:
    nop
    ld b, $32
    ld h, h
    ld h, d
    rst RST_38
    call nc, $94e2
    ret nc

    or a
    push af
    sbc a
    ld hl, sp+$2f
    rlca
    ldh a, [rIF]
    ret nz

    and d
    dec b
    ld a, a
    sub a
    jr nz, jr_038_56bd

    inc c
    ld h, [hl]
    cp d
    inc hl
    ld c, $f1
    add [hl]
    dec [hl]
    jp z, Jump_038_5823

    add a

jr_038_571b:
    sub [hl]
    dec [hl]
    rst RST_30
    inc bc
    db $fc
    ld bc, $0ac0
    adc a
    ld [hl], b
    add a
    ld a, b
    rst RST_38
    swap h
    ld h, c
    sbc [hl]
    ld [hl], d
    adc l
    add hl, sp
    add $ef
    inc e
    db $e3
    ld c, $f1
    xor [hl]
    rlca
    ld a, a
    add b
    sbc a
    rst RST_38
    ld h, b
    ld c, a
    or b
    ld [hl+], a
    nop
    jr nz, jr_038_574d

    ld [de], a
    rst RST_28
    add hl, bc
    dec b
    nop
    ld a, [bc]
    ld l, $30
    ld b, a
    rrca
    sub b

jr_038_574d:
    rst RST_38
    jr c, @-$5d

jr_038_5750:
    db $10
    call nz, Call_000_0a18
    nop
    jr nc, @-$03

    add e
    ld c, d
    rrca
    nop
    rst RST_38
    rst RST_38
    nop
    inc bc
    jr nz, @+$01

    db $10
    ld b, h
    adc b
    add b
    jr nc, jr_038_56eb

    ld [$ff00], sp
    jr nz, jr_038_576d

    nop

jr_038_576d:
    ld b, b
    add b
    ldh a, [c]
    db $fc
    or l
    rst RST_38
    rst RST_18
    ld e, l
    rst RST_38
    ld a, h
    ld a, a
    sbc l
    ld l, $65
    ld a, a
    ld e, $83
    ld a, h
    add d
    ld a, h
    ld c, b
    jr nc, jr_038_571b

    jr nz, @+$01

    rlca
    ld c, b
    ld a, b
    add hl, sp
    ccf
    rlca
    rlca
    nop
    db $fd
    ldh a, [$ffbf]
    ld [$403f], sp
    rst RST_08
    ret nc

    di
    jr z, jr_038_5750

    add hl, sp
    ld a, [bc]
    adc $86
    ld sp, $e11e
    inc [hl]
    ld b, l
    nop
    dec c
    nop
    sub [hl]
    ld sp, $835c
    ld b, h
    ld b, l
    sbc a
    inc h

jr_038_57ad:
    ld b, h
    add hl, de
    xor [hl]
    inc c
    db $e3
    rrca
    ldh a, [$ffba]
    ld hl, $21b6
    cp b
    ld hl, $f00f
    ld h, a
    rst RST_38
    sbc b
    inc sp
    call z, Call_038_6699
    sbc h
    ld h, e
    adc $e7
    ld sp, $18e7
    adc d
    ld b, c
    jp nz, Jump_038_7f37

    add b
    ccf
    xor a
    ret nz

    cp a
    ld b, b
    and b
    ld e, b
    jr nz, jr_038_5819

    ld hl, $c702
    ld [hl], b
    nop
    dec b
    nop
    nop
    and h
    ld bc, $414d
    nop
    nop
    rlca
    nop
    ld [bc], a
    xor b
    ld a, $13
    dec a
    ld b, b
    sub a
    nop
    db $fc
    dec d
    nop
    ld b, $85
    nop
    pop bc
    cp $95
    ld [hl+], a
    nop
    nop
    ret nc

    cpl
    nop
    nop
    dec b
    cp a
    dec b
    ld [bc], a
    ld [bc], a
    ldh [rP1], a
    ld hl, sp-$47
    ld b, b
    dec b
    rst RST_38
    rlca
    ld [bc], a
    di
    nop
    ld bc, $7d7d
    db $fc
    sbc a
    db $fc
    cp $fe

jr_038_5819:
    ld e, $1e
    jr jr_038_585d

    sbc [hl]
    jr nz, jr_038_57ad

    rst RST_38
    adc l
    rra

Jump_038_5823:
    sbc a
    ld e, a
    rst RST_18
    sbc a
    rst RST_18
    cpl
    scf
    ld l, a
    ld c, a
    ld l, a
    dec e
    ld bc, $a8a8
    db $10
    scf
    dec e
    ld bc, $6af3
    ld l, d
    ld d, $58
    ld [hl], l
    inc bc
    nop
    jr nz, jr_038_585e

    ld b, b
    sbc a
    jr nc, jr_038_5883

    scf
    ld b, b
    ld sp, $5530
    dec e
    nop
    call z, Call_000_00cf
    or l
    nop
    add h
    ld e, $02
    ld l, $03
    ld h, c
    nop
    rst RST_30
    xor a
    nop
    ld h, e
    ld d, b
    ld d, l
    inc de

jr_038_585d:
    db $e3

jr_038_585e:
    dec bc
    di
    xor a
    ld [$0bf0], sp
    di
    inc e
    ld bc, $ab1e
    ld c, b
    pop bc
    ei
    nop
    add a
    ld e, [hl]
    jr nz, jr_038_58b0

    nop
    cpl
    nop
    dec d
    xor a
    nop
    jr z, jr_038_5879

jr_038_5879:
    ld d, b
    ld c, a
    db $10
    ldh a, [rNR33]
    nop
    db $e4
    ld hl, sp+$3d
    db $10

jr_038_5883:
    inc sp
    jr nc, jr_038_5886

jr_038_5886:
    nop
    rra
    nop
    ldh a, [c]
    nop
    add $fb
    nop
    push bc
    ld e, [hl]
    jr nz, @+$0c

    nop
    ld a, [de]
    nop
    db $10
    rst RST_38
    nop
    dec sp
    inc bc
    ld a, l
    ld bc, $00e8
    sbc [hl]
    rst RST_28
    nop
    add hl, sp
    nop
    ld sp, $008a
    ld bc, $4f00
    ei
    ld l, a
    scf
    jp nz, $1750

    rla

jr_038_58b0:
    rst RST_00
    rlca
    rst RST_20
    rst RST_38
    rlca
    cp e
    inc bc
    dec a
    ld bc, $0000
    ld b, b
    rst RST_38
    ccf
    db $10
    ld h, [hl]
    jr nz, @+$5c

    ld a, [bc]
    ld d, b
    daa
    db $fd
    ld b, b
    sbc [hl]
    ld hl, $0101
    dec b
    ld sp, hl
    ld hl, $ffcd
    ld b, c
    or l
    dec d
    and c
    call $fd01
    ld bc, $017b
    ld bc, $503c
    scf
    ld b, b
    ccf
    inc a
    scf
    ld d, b
    cp a

jr_038_58e4:
    jr nz, jr_038_58f6

    ld h, $10
    ld [hl+], a
    db $10
    ld c, h
    ld d, b
    or l
    rst RST_30
    nop
    rst RST_38
    ld a, $22
    ld bc, $3184
    add h

jr_038_58f6:
    db $10
    db $dd
    add h
    ld e, h
    ld d, b
    and c
    nop
    rst RST_38
    sbc [hl]
    jr nz, @+$01

    nop
    rst RST_18
    ld hl, $218c
    add h
    ld hl, $516c
    ld [$fff0], sp
    adc e
    ld [hl], e
    ld [$0b70], sp
    ld [hl], e
    ld [hl], b
    nop
    jp $0333


    jr z, @+$05

    db $eb
    ld sp, $0320
    ld b, b
    ld bc, $4422
    cp d
    ld [hl], $67
    nop
    ld d, b
    jr nz, jr_038_58e4

    nop
    xor $0d
    inc [hl]
    sub l
    ld c, h
    ld e, $00
    ld d, d
    ld l, c
    ld b, a
    rst RST_28
    ld d, b
    ld l, b
    inc d
    ld h, b
    jp nc, Jump_000_209e

    xor $72
    ld l, b
    cp $47
    cp $50
    ld l, c
    di
    rst RST_38
    jp hl


    xor $5f
    ld l, d
    and l
    rst RST_38
    dec de
    ld e, a
    ld l, b
    cp e
    ld b, h
    rst RST_38
    cp a
    nop
    xor $11
    rst RST_38
    rst RST_38
    set 2, d
    db $10
    sub c
    db $fd
    ei
    call nz, $fd60
    rst RST_38
    rst RST_38
    add l
    rst RST_18
    db $e4
    xor a
    ld a, a
    rst RST_38
    ld a, a
    push af
    pop de
    ld h, b
    push de
    pop de
    ld h, b
    rst RST_38
    rst RST_38
    nop
    add b
    ld a, a
    ld [hl], a
    cp $ff
    cp $37
    ld a, d
    pop hl
    ld h, b
    sub a
    pop hl
    ld h, b
    rst RST_38
    nop
    ld bc, $d2fe
    ld de, $e2dd
    jp nc, $ea10

    rst RST_38
    ldh [$ffd2], a
    db $10
    add $ff
    rst RST_38
    cp e
    ld b, h
    xor $11
    push de
    ld a, [hl+]
    xor d
    ld d, l
    rst RST_38
    call nz, $913b
    ld l, [hl]
    call nz, $803b
    ld a, a
    adc $c4
    ld h, b
    db $db
    sub c
    rst RST_10
    dec l
    ld d, d
    ld a, [hl+]
    ld [bc], a
    sub c
    ld l, [hl]
    rst RST_08
    add b
    ld a, a
    add h
    ld a, e
    sbc c
    ld b, b
    and h
    inc b
    ld de, $3fee
    ld bc, $05fe
    ld a, [$fe01]
    ld [hl], $71
    call c, Call_038_4223
    ld a, [$ed61]
    inc l
    ld d, e
    dec e
    ld a, d
    and e
    inc b
    or e
    ld b, d
    ld c, c
    ccf
    nop
    cp a
    nop
    ld l, [hl]
    ld b, b
    ld l, [hl]
    ld b, b
    ld l, c
    jr nz, jr_038_59e0

    ret c

    ld a, a
    nop

jr_038_59e0:
    adc b
    ld d, l
    nop
    db $ed
    nop
    xor [hl]
    ld a, h
    ld [hl], b
    ld e, [hl]
    ld hl, $8f02
    nop
    adc b
    ld d, b
    ld [hl], l
    ld [hl], b
    cp b
    db $eb
    ld b, b
    ld a, [hl]
    ld hl, $e202
    nop
    and d
    ld d, l
    nop
    rst RST_30
    sbc d
    ld [hl], b
    db $fd
    db $f4
    jr nz, jr_038_5a06

    inc h
    nop
    ld [hl+], a

jr_038_5a06:
    ld d, l
    nop
    ld [hl], a
    ld c, a
    nop
    halt
    nop
    ld [hl], h
    jr nz, @+$05

    ld h, [hl]
    ld [hl], d
    xor $55
    ld h, b
    push af
    jp hl


    jr nz, jr_038_5a1c

    sub c
    ld [hl], a
    ld [hl], c

jr_038_5a1c:
    rst RST_18
    nop
    db $db
    nop
    ld [hl], a
    db $d3
    ld b, b
    ld l, a
    ret nc

    ld [hl], d
    ld b, [hl]
    ld b, b
    ld a, a
    ret c

    ld [hl], e
    cp e
    nop
    ld b, a
    xor d
    ld [hl], b
    ld [hl], a
    nop
    ld [hl+], a
    scf
    ld b, $78
    ld a, [hl+]
    ldh a, [$ff72]
    jr nz, jr_038_5a55

    ld b, b
    ld hl, sp-$0e
    nop
    rst RST_38
    dec e
    add b
    ld c, d
    ei
    nop
    rst RST_30
    nop
    ld [bc], a
    ld [hl+], a
    nop
    ld a, a
    nop
    rst RST_38
    xor [hl]
    ld a, [bc]
    ld [bc], a
    halt
    nop
    ld [hl], a
    ld [de], a
    nop

jr_038_5a55:
    inc h
    ld a, [bc]
    inc b
    rst RST_38
    cp e
    nop
    xor $20
    nop
    ld l, [hl]
    nop
    ld c, [hl]
    jr jr_038_5a69

    db $db
    cp a
    nop
    rst RST_18
    nop
    ld e, l

jr_038_5a69:
    nop
    sub c
    jr jr_038_5a72

    ld b, b
    db $fd
    ld a, a
    ld b, b
    dec bc

jr_038_5a72:
    nop
    nop
    ld a, a
    ld a, a
    ld b, b
    ld b, b
    rst RST_38
    ld a, l
    ld a, a
    rrca
    nop
    ld h, b
    rra
    ld [hl], b
    rrca
    ld l, $4f
    nop
    nop
    ldh [rIE], a
    ld e, a
    nop
    rst RST_38
    ld h, e
    nop
    dec bc
    nop
    ld a, [$0563]
    inc bc
    ld h, a
    ld [$fefe], sp
    ld [bc], a
    ld [bc], a
    cp $1d
    cp $80
    nop
    nop
    ld e, $e0
    add a
    nop
    add hl, de
    dec b
    add hl, de
    inc b
    ld a, [$0b91]
    ldh a, [$ff0a]
    nop
    db $fc
    nop
    ld sp, hl
    inc bc
    ldh [rIE], a
    rlca
    ret


    rra
    sbc [hl]
    ccf
    and b
    ccf
    nop
    rst RST_38
    ld h, e
    inc bc
    rrca
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, [$fffb]
    push bc
    dec bc
    ld bc, $000c
    add b
    cp $ff
    rst RST_38
    jp $e7ff


    rst RST_38
    ld a, $ff
    ld c, a
    rst RST_38
    rst RST_38
    ld [bc], a
    rst RST_38
    nop
    rra
    ld a, [bc]
    rst RST_38
    rrca
    nop
    rst RST_38
    add a
    ldh [$ff33], a
    ld hl, sp+$19
    ld a, h
    dec c
    inc a
    rst RST_38
    inc c
    ld e, $04
    ld c, $04
    ld c, $00
    ld d, l
    ei
    nop
    inc bc
    ldh a, [c]
    nop
    dec b
    nop
    ld b, b
    nop
    ld h, b
    cp a
    nop
    ld h, c
    nop
    ccf
    nop
    db $e3
    ld e, a
    nop
    pop af
    rst RST_08
    nop
    ld e, a
    nop
    add b
    ld e, a
    nop
    ld h, b
    nop
    ld e, h
    cp $fb

jr_038_5b11:
    jr z, jr_038_5b11

    or c
    nop
    ldh [rP1], a
    ld bc, $0300
    rst RST_28
    inc bc
    rra
    jr jr_038_5b9b

    db $ec
    nop
    inc e
    ld [$ff3c], sp
    db $10
    ld hl, sp+$20
    di
    pop bc
    rst RST_20
    nop
    sbc b
    rst RST_18
    nop
    nop
    db $fc
    db $fc
    inc bc
    ld a, [bc]
    nop
    ld a, a
    nop
    ld sp, hl
    cp a
    scf
    db $10
    add hl, bc
    ld bc, $0000
    inc d
    nop
    ld [bc], a
    rst RST_38
    ld [$0608], sp
    ld de, $0400
    jr z, @+$2c

    db $eb
    inc b
    inc b
    ld e, a
    nop
    ld de, $1009
    adc b
    ld [de], a
    ld [de], a
    rst RST_38
    ld hl, $0021
    ld d, b
    add d
    ld a, [bc]
    ld b, h
    nop
    rst RST_38
    nop
    ld hl, $c8c2
    nop
    inc h
    db $10
    inc bc
    rst RST_38
    ld bc, $0111
    rlca
    ld bc, $010b
    ld [$00ff], sp
    ld h, b
    ld b, $06
    ld [$c00c], sp
    adc $ff
    and b
    add [hl]
    ld l, b
    sub d
    ld a, l
    sub c
    ld a, a
    ld hl, sp-$41
    rlca
    ldh a, [rIF]
    ret nz

    ccf
    add b
    add hl, bc
    inc bc
    ld a, a
    rst RST_38
    nop
    ccf
    ld [hl+], a
    nop
    jr nz, jr_038_5b9f

    ld [de], a
    add hl, bc
    rst RST_30
    dec b
    nop
    ld a, [bc]
    ld c, [hl]

jr_038_5b9b:
    db $10
    ld b, a
    rrca
    sub b

jr_038_5b9f:
    jr c, @+$01

    and c
    db $10
    call nz, $0b18
    nop
    dec d
    and d
    rst RST_38
    ld c, d
    jr nc, jr_038_5bad

jr_038_5bad:
    nop
    db $fd
    cp $03
    rlca
    ld a, a
    ld hl, $1401
    adc c
    add sp, $10
    and h
    ld e, a
    nop
    rst RST_38
    ld bc, $8000
    ld bc, $f8e6
    db $dd
    cp a
    rst RST_38
    db $fd
    rst RST_38
    ld a, l
    rst RST_38
    cp l
    ld e, [hl]
    ld e, c
    ld a, $ff
    dec sp
    db $fc
    ld [hl-], a
    db $fc
    add h
    ld a, b
    nop
    sbc a
    rst RST_38
    nop
    rst RST_00
    ld [$19d8], sp
    rra
    rlca
    rlca
    cp $ad
    nop
    cp $00
    rst RST_38
    ld bc, $0500
    ld hl, sp-$01
    ld hl, $41cc
    or h
    dec d
    and b
    call $f100
    db $fd
    jr @+$12

    ld h, e
    ld bc, $113d
    inc de
    ldh [$ff08], a
    di
    ei
    ld [$faf0], sp
    dec d
    adc b
    ld [hl], e
    ld [$0870], sp
    rst RST_28
    ld [hl], e
    ld [hl], b
    nop
    inc sp
    ld e, a
    nop
    ld d, l
    nop
    cp e
    ei
    nop
    db $e4
    ld d, $10
    xor $09
    db $ec
    dec bc
    add sp, -$0b
    ld c, $10
    inc hl
    xor $5f
    nop
    ld a, b
    rst RST_38
    di
    db $fc
    ldh a, [$ff0a]
    ld de, $2522
    add b
    ld de, $272e
    dec bc
    nop
    cpl
    ldh [$ffaf], a
    ld l, [hl]
    ldh [rVBK], a
    ldh [rNR41], a
    dec h
    cp e
    ld a, [bc]
    nop
    db $dd
    cp [hl]
    ld a, [bc]
    nop
    add sp, $0e
    ld [$ee0e], a
    ld h, e
    inc h
    db $ec
    rst RST_38
    ld c, $e8
    ld c, $f0
    rrca
    adc a
    ld a, a
    cp a
    rst RST_38
    ld a, a
    ld a, a
    rst RST_38
    ld [hl], a
    rst RST_08
    ld a, a
    rst RST_18
    ld l, e
    rst RST_38
    call nc, $d57b
    ld a, $c1
    sbc h
    db $e3
    pop bc
    db $fc
    jp $8500


    ld hl, $4fbf
    sbc a
    ld l, a
    rlca
    ld hl, sp-$04
    ld h, [hl]
    nop
    jp $f700


    rst RST_38
    xor $f7
    ei
    db $f4
    rst RST_38
    ld a, [$fef5]
    nop
    ld b, $f8
    ldh a, [c]
    db $fc
    rst RST_38
    ld a, [$fcfc]
    cp $fc
    cp $ec
    ld e, [hl]
    rst RST_18
    db $f4
    ld c, [hl]
    dec bc
    ldh [$ff8f], a
    or c
    jr nz, @-$4f

    ret nz

    xor a
    xor a
    ret nz

    rst RST_28
    add b
    cp d
    ld hl, $90b7
    inc c
    add sp, $7c
    ld l, l
    jr nz, jr_038_5d07

    jr nz, jr_038_5cb5

    ld [$ee0c], a
    ld [$21da], sp
    ld a, e
    ld a, a
    rst RST_38
    ldh [rNR42], a
    ld h, l

jr_038_5cb5:
    jp c, $ea55

    ldh [rNR44], a
    adc $86
    inc h
    ld e, a
    dec [hl]
    rst RST_18
    add l
    inc h
    add l
    ld hl, $e5fb
    rst RST_20
    ld a, [de]
    ld e, e
    and h
    add l
    inc hl
    xor b
    ld hl, $fefc
    inc [hl]
    add a
    adc $ac
    ld e, [hl]
    db $10
    inc sp
    cp d
    inc hl
    jr nz, jr_038_5d12

    ld a, [bc]
    ld [de], a
    ld a, a
    ccf
    ccf
    ld b, b
    ccf
    ld e, [hl]
    ccf
    ld c, c
    ld a, [hl-]
    ld sp, $120a
    ld a, [$079f]
    ld h, a
    ld b, b
    ld [hl], $06
    rst RST_38
    rlca
    rst RST_38
    inc bc
    ei
    rst RST_38
    ld [hl], d
    ld b, b
    ld [hl], $23
    rst RST_38
    and c
    rst RST_38
    pop bc
    cp e
    rst RST_38
    ld hl, $3640
    cp b
    rst RST_38
    db $10
    ld a, d

jr_038_5d07:
    jr nc, jr_038_5d1a

    ld a, [$3c40]
    adc b
    ld b, b
    inc a
    jr nc, jr_038_5d50

    ld c, [hl]

jr_038_5d12:
    ccf
    ld c, b
    ldh a, [c]
    and d
    ld [hl-], a
    ld e, h
    ld [hl], $30

jr_038_5d1a:
    xor e
    jr nc, @+$01

    ld [de], a
    rst RST_38
    ld [hl], c
    cp a
    rst RST_38
    sub c
    rst RST_38
    sub b
    rst RST_38
    ld l, c
    reti


    nop
    inc c
    cp $0b
    nop
    inc h
    rst RST_38
    ld b, a
    rst RST_38
    ld b, l
    rst RST_38
    add d
    db $eb
    rst RST_38
    ld bc, $0419
    and c
    ld l, d
    jr nc, @+$23

    rst RST_38
    ld h, c
    rst RST_28
    rst RST_38
    and e
    rst RST_38
    and b
    jp c, Jump_038_4030

    rst RST_38
    ldh a, [c]
    cp e
    rst RST_38
    inc de
    or b
    jr nc, jr_038_5d61

    rst RST_38

jr_038_5d50:
    cp c
    add hl, de
    inc b
    ld c, e
    rst RST_38
    rst RST_38
    call z, $08ff
    rst RST_38
    ld c, b
    rst RST_38
    sbc h
    xor $19
    inc b
    ld c, b

jr_038_5d61:
    rst RST_38
    ld a, b
    sbc $30
    ld c, b
    rst RST_38
    jr nc, jr_038_5d69

jr_038_5d69:
    dec bc
    inc bc
    xor d
    inc sp
    db $10
    ld b, a
    ld [hl-], a
    ld sp, $00f8
    ld d, a
    ld [$123d], sp
    ld h, a
    ld [$89c2], sp
    nop
    ld [bc], a
    adc c
    nop
    adc c
    inc b
    sub c
    inc c
    ld d, $10
    rst RST_28
    rrca
    push de
    add sp, $63
    ld b, b
    ldh [$ff67], a
    ld b, b
    rst RST_28
    ld d, $10
    jr z, @+$46

    rst RST_30
    add hl, hl
    ld b, l
    jr z, jr_038_5e0b

    ld b, d
    add hl, hl
    ld b, h
    add hl, hl
    ld b, h
    db $fd
    jr z, @+$61

    db $10
    db $10
    ld c, a
    ld b, [hl]
    dec e
    ld c, h
    ld e, $e7
    ld c, d
    inc d
    ld e, c
    ld b, $10
    ld [hl], h
    nop
    nop
    add e
    jr c, @+$61

    dec sp
    add b
    dec sp
    add b
    cp e
    inc de
    jr nz, @-$43

    ldh a, [c]
    nop
    dec e
    nop
    add b
    rst RST_30
    ld bc, $00ff
    ld bc, $0100
    cp $01
    cp $fb
    and l
    ld e, d
    ld a, [bc]
    ld bc, $fe81
    nop
    rst RST_38
    ld d, h
    rst RST_38
    xor e
    or $09
    rst RST_30
    ld [$06f9], sp
    ld hl, sp-$01
    rlca
    ld hl, sp+$07
    db $fd
    inc bc
    cp $01
    ld a, a
    rst RST_18
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    ld bc, $ef01
    db $10
    rst RST_38
    ld b, $f8
    ld b, $f8
    ld a, [bc]
    db $f4
    ld e, $e0
    rst RST_38
    inc e
    ldh [c], a
    ld d, $e8
    ld e, $e0
    ld l, $d0
    cp $1a
    ld bc, $2bd4
    ld sp, $3fce
    ret nz

jr_038_5e0b:
    dec a
    rst RST_38
    jp nz, Jump_000_1ce3

    inc [hl]
    set 4, e
    rra
    jp Jump_000_3fff


    jp $c23f


    ccf
    ld b, e
    cp a
    ld c, e
    rst RST_38
    or a
    inc bc
    rst RST_38
    sbc e
    ld h, a
    cp $00
    cp $f7
    rst RST_38
    cp $ff
    ld h, l
    rlca
    ld bc, $0a00
    push af
    rst RST_18
    ld a, [bc]
    push af
    ldh a, [rIE]
    db $f4
    ld h, l
    dec b
    nop
    inc [hl]
    ccf
    sla d

jr_038_5e3e:
    rst RST_18
    dec sp
    rst RST_18
    rst RST_38
    add a
    inc b
    ld h, d
    ld bc, $026e
    ld bc, $ff7f
    ld a, [hl]
    sbc c
    ld [bc], a
    or b
    ld c, a
    and b
    ld bc, $f8f7
    rst RST_38
    ei
    sub a
    nop
    rst RST_38
    rst RST_38
    db $fd
    rst RST_38
    db $eb
    jr nz, jr_038_5e3e

    or b
    inc bc
    db $fc
    or a
    inc b
    ld a, a
    cp $db
    db $fc
    pop bc
    ld [bc], a
    ld b, $01
    add c
    ld a, [hl]
    rst RST_10
    cp $fd
    rst RST_38
    db $fd
    or a
    pop de
    ld [bc], a
    nop
    rst RST_38
    di
    rst RST_38
    ldh [c], a
    rst RST_38
    sbc a
    pop af
    rst RST_38
    db $fc
    rst RST_38
    ld l, b
    pop hl
    ld [bc], a
    ld [bc], a
    ld bc, $df84
    rst RST_38
    jp nz, Jump_000_26ff

    rra
    ldh a, [$ff0b]
    cp $00
    ld hl, sp+$06
    ld bc, $1302
    jr nc, jr_038_5e99

    nop

jr_038_5e99:
    nop
    ld e, l
    and e

jr_038_5e9c:
    inc e
    rst RST_38
    db $e3
    call c, Call_038_4ce3
    di
    nop
    rst RST_38
    ldh a, [rIE]
    rrca
    or c
    ld c, [hl]
    nop
    nop
    ld b, e
    cp h
    inc l
    rst RST_38
    rst RST_18
    dec l
    rst RST_10
    jr jr_038_5e9c

    db $10
    rst RST_28
    ret nz

    cp $53
    nop
    ld e, $e0
    ld a, [hl]
    add b
    dec a
    jp nz, $ff7d

    add d
    ld [hl], l
    adc d
    ld sp, hl
    ld b, $f1
    ld c, $b3
    rst RST_38
    ld c, h
    ld c, $f1
    ld a, [de]
    push hl
    ld a, $c1
    dec de
    rst RST_38
    db $e4
    ld a, [hl]
    add c
    ld [hl], h
    adc e
    ld a, l
    add d
    ld hl, sp-$01
    rlca
    sub e
    ld l, a
    cp e
    ld b, a
    sbc e
    ld h, a
    ld h, e
    rst RST_38
    sbc a
    sub c
    ld l, a
    pop bc
    ccf
    add c
    ld a, a
    ld b, c
    ld [hl], c
    cp a
    ld h, l
    rlca
    ld h, d
    ld bc, $0564
    push bc
    rst RST_38
    add hl, bc
    ld bc, $df02
    ld c, b
    or a
    db $fc
    rst RST_18
    ei
    add a
    inc b
    ld [hl], a
    rst RST_18
    db $ed
    dec h
    or c
    nop
    rst RST_38
    nop
    jp nz, $db03

    cp $7f

Jump_038_5f11:
    sub [hl]
    sbc c
    ld [de], a
    rst RST_38
    nop
    jp nc, $b703

    xor l
    nop
    xor d
    ld de, $c5ff
    nop
    ldh [c], a
    inc bc
    ld l, b
    rst RST_18
    nop
    cp d
    ld de, $1169
    db $fd
    cp $ff
    push bc
    cp $85
    cp $49
    or [hl]
    ld c, e
    or h
    rst RST_18
    sub c
    ld l, [hl]
    ld hl, sp-$01
    ld a, b
    pop de
    db $10
    ld e, h
    rst RST_38
    rst RST_38
    ld e, $ff
    rlca
    rst RST_38
    add e
    rst RST_38
    add c
    rst RST_38
    jp hl


    ldh [rSB], a
    ld [bc], a
    ld [bc], a
    ld bc, $e9f8
    db $10
    db $fc
    rst RST_38
    inc [hl]
    xor l
    ld hl, sp-$10
    dec de
    rra
    inc bc
    nop
    ld hl, $053f
    inc h
    ld a, l
    rst RST_38
    inc bc
    ld hl, sp+$07
    ld a, l
    add d
    ld [hl], h
    adc e
    ld a, [hl]
    rst RST_38
    add c
    dec de
    db $e4
    ld a, $c1
    ld a, [de]
    push hl
    ld c, $ff
    pop af
    ld b, c
    cp a
    add c
    ld a, a
    pop bc
    ccf
    sub c
    rst RST_38
    ld l, a
    ld h, e
    sbc a
    sbc e
    ld h, a
    cp e
    ld b, a
    sub e
    rst RST_38
    ld l, a
    jr c, @+$09

    jr c, jr_038_5f90

    inc a
    inc bc
    ld a, c
    rst RST_18
    ld b, $5f
    nop

jr_038_5f90:
    dec bc
    inc b
    jr nc, jr_038_5fb5

    add c
    ld a, [hl]
    xor $ca
    ld bc, $ff00
    add l
    ld b, l
    jr nz, jr_038_5fa7

    rst RST_38
    ld a, [bc]
    rst RST_38
    db $fd
    adc a
    ld a, h
    adc [hl]
    ld a, l

jr_038_5fa7:
    ld c, h
    ccf
    ld h, a
    rst RST_38
    inc e
    ld b, l
    ld a, $4f
    inc a
    ld c, a
    inc a
    ld l, [hl]
    rst RST_38
    dec e

jr_038_5fb5:
    inc e
    nop
    inc l
    dec de
    ld l, l
    ld a, [de]
    ld l, $ff
    add hl, de
    ld a, $19
    ld a, l
    ld a, [de]
    ld a, h
    dec de
    dec sp
    rst RST_38
    jr @-$55

    nop
    ld h, b
    sbc a
    ld l, c
    sub [hl]
    xor c
    rst RST_38
    ld d, [hl]
    rra
    ldh [rTIMA], a
    ld a, [$58a7]
    ld h, c
    rst RST_38
    sbc [hl]
    rst RST_38
    nop
    add hl, hl
    sub $29
    sub $e9
    rst RST_38
    ld d, $f1
    ld c, $f8
    rlca
    ldh [$ff1f], a
    dec sp
    rst RST_38
    call nz, $0b34
    inc [hl]
    dec bc
    ld d, b
    dec bc
    jr c, @+$01

    inc bc
    add hl, de
    ld [bc], a
    dec de
    nop
    ld a, [hl-]
    ld bc, $fd71
    ld a, [bc]
    ldh [c], a
    dec d
    nop
    rst RST_38
    and b
    ld e, a
    or b
    ld c, a
    ld [hl], a
    db $10
    rst RST_28

jr_038_6008:
    rlca
    reti


    db $10
    rlca
    rst RST_38
    ld b, $b5
    ld h, $7f

jr_038_6011:
    jr nc, jr_038_6022

    ld a, b
    rlca
    ld a, b
    rlca
    ld a, [hl-]
    push bc
    jr nz, jr_038_6008

    ld a, d
    push bc
    jr nz, jr_038_6057

    rlca
    ldh [c], a
    inc de

jr_038_6022:
    rst RST_38
    nop
    ld a, a
    db $fd
    add b
    ret c

    inc hl
    and [hl]
    ld e, a
    or a
    ld c, a
    add e
    ld a, a
    cp a
    jr nz, jr_038_6091

    ld h, b
    rra
    ld a, a
    nop
    ld [$cf21], a
    db $ed
    ret nz

    ldh a, [rNR44]
    rst RST_00
    ret z

    ld hl, sp+$21
    jp Jump_000_03cc


    ld [hl], a
    nop
    dec de
    rlca
    ld [bc], a
    ld sp, $0659
    jr c, jr_038_6011

    jr nz, @+$01

    ld a, b
    rlca
    pop af
    nop

jr_038_6054:
    db $e3
    inc e
    dec a

jr_038_6057:
    jp nz, Jump_000_3fff

    ret nz

    ld sp, $d4ce
    dec hl
    ld hl, sp+$07
    rst RST_38
    ld sp, hl
    ld b, $e7
    nop
    add e
    ld a, a
    ld c, e
    scf
    rst RST_18
    ld b, e
    ccf
    ld b, d
    ccf
    ld b, e
    add hl, hl
    jr nc, jr_038_60d6

    rra
    xor $0a
    inc sp
    ld [hl], b
    rrca
    db $10
    scf
    jr nc, jr_038_60fc

    inc e
    ld a, a

Jump_038_607f:
    rst RST_28
    inc e
    dec bc
    db $fc
    add hl, bc
    ld de, $0200
    db $fd
    db $10
    ld a, a
    rst RST_38
    db $10
    rst RST_38
    ld d, [hl]
    xor c
    ld d, [hl]
    xor c

jr_038_6091:
    ld d, [hl]
    ld hl, $47ff
    inc a
    add a
    ld a, h
    rst RST_20
    inc e
    or a
    ld c, h
    rst RST_38
    adc h
    ld [hl], e
    add h
    ld a, e
    dec hl
    jr @+$65

    jr @+$01

    dec l
    ld a, [de]
    ld l, h
    dec de
    ld l, h
    dec de
    inc l
    dec de
    rst RST_38
    inc a
    dec de
    ld l, e
    jr jr_038_6054

    ld e, a
    ld b, [hl]

jr_038_60b6:
    cp c
    cp a
    and b
    ld e, a
    adc b
    ld [hl], a
    ld c, b
    or a
    ld a, b
    ld sp, $ff00
    rst RST_38
    xor $11
    dec c
    ldh a, [c]
    ld b, [hl]
    cp c
    ld d, d
    rst RST_38
    xor l
    ld d, b
    xor a
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    and b
    rst RST_10
    ld e, a
    rlca

jr_038_60d6:
    nop
    jr nc, @+$23

    jr jr_038_610c

    jr nz, jr_038_612d

    rrca
    rst RST_38
    jr nc, @+$11

    ld [hl], b
    rrca
    rst RST_38
    nop
    jr nc, jr_038_60b6

    rst RST_38
    inc a
    jp $e51a


    dec e
    ldh [c], a
    rrca
    ldh a, [$ffb7]
    rlca
    ld hl, sp+$01
    sub d
    nop
    add a
    ld a, a
    or d
    ld sp, $ff07

jr_038_60fc:
    ld a, a
    ld b, [hl]
    ccf
    ld h, [hl]
    rra
    ld h, [hl]
    rra

jr_038_6103:
    jr jr_038_6103

    sub l
    jr nc, jr_038_6126

    ld bc, $003f
    rra

jr_038_610c:
    nop
    dec de
    ld a, a
    inc b
    ccf
    nop
    add hl, sp
    ld b, $1f
    ldh [$ffac], a
    ld sp, $89ff
    ld a, [hl]
    ldh [$ff1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    sub $20
    rst RST_18
    inc [hl]

jr_038_6126:
    add c
    ld a, [hl]
    xor l
    ld a, a
    xor h
    ld a, a
    rra

jr_038_612d:
    adc a
    ld a, a
    pop bc
    ret nz

    adc $f1
    inc h
    ldh a, [rNR44]
    pop hl
    ld d, $7f
    nop
    db $fc
    nop
    ld a, [$f502]
    dec b
    ldh [$ff35], a
    rst RST_38
    ld a, a
    nop
    ld [hl], e
    nop
    add hl, bc
    ld [$4444], sp
    ld a, [hl]
    nop
    ld b, a
    rst RST_20
    nop
    db $d3
    db $10
    jr nz, jr_038_6174

    nop
    ld b, a
    rst RST_38
    ldh a, [rP1]
    ld [$090a], a
    add hl, bc
    di
    inc bc
    sbc $40
    ld b, a
    ld [hl], e
    inc bc
    inc bc
    inc bc
    ldh a, [rNR42]
    call $8fc2
    ret z

    rst RST_00
    call z, $f1c3
    inc hl
    ld h, b
    nop
    ld h, c

jr_038_6174:
    ld b, b
    ld e, a
    rst RST_38
    and b
    rra
    ldh [$ff3f], a
    ret nz

    ccf
    ret nz

    rra
    rst RST_38
    ldh [$ffcf], a

jr_038_6182:
    ret nz

    adc $c1
    rst RST_08
    ret nz

    ret


    rst RST_30
    add $c8
    rst RST_00
    ld e, d
    ld b, l
    ldh [rNR34], a
    ldh a, [$ff0e]
    rst RST_38
    cp b
    ld b, [hl]
    ld a, b
    add [hl]
    inc a
    jp nz, $d22c

    db $db
    ld h, $d8
    ld sp, hl
    ld hl, $c4cb
    ld [hl], h
    ld b, c
    call z, $ffc3
    ret z

    rst RST_00
    ret


    add $20
    sbc $32
    call z, $a2fe
    ld b, c
    jr nc, jr_038_6182

jr_038_61b4:
    inc h
    jp c, $807e

    db $e4
    pop af
    ld a, [de]
    ld d, [hl]
    ld b, c
    or b
    ld b, e
    cp b
    ld b, e

jr_038_61c1:
    ld l, d
    sub h
    ld l, d
    sub h
    cp $61
    ld b, c
    ld b, b
    cp [hl]
    ld [bc], a
    db $fc
    add d
    ld a, h
    add $fd
    jr c, jr_038_61b4

    inc de
    inc bc
    rst RST_38
    inc c
    db $fc
    pop af
    pop af
    ld b, e
    nop
    nop
    ld [bc], a
    nop
    db $dd
    ld b, c
    pop hl
    ld d, $dd
    jr nc, jr_038_61e5

jr_038_61e5:
    add hl, bc
    ld b, b
    rst RST_38
    db $fc
    nop
    cp $06
    cp $19
    ld hl, sp-$1c
    rst RST_38
    db $e3
    db $10
    rrca
    or $06
    ld sp, $8501
    rst RST_28
    dec b
    ldh a, [c]
    ld [bc], a
    db $fc
    ldh [c], a
    inc d
    ld [bc], a
    db $ed
    ld [bc], a
    sbc a
    ld d, h
    nop
    ld d, [hl]
    inc b
    ld l, $dc
    ld b, b
    call c, $2040
    rst RST_38
    jr nc, jr_038_6252

    ld [hl], l
    add c
    xor e
    inc bc
    xor e
    dec b
    db $fd
    and l
    jr jr_038_626e

    db $10
    ldh a, [$ff50]
    ld e, e
    xor h
    xor c
    rst RST_28
    inc h
    add hl, hl
    nop

Call_038_6225:
    dec de
    jr jr_038_627b

    ld bc, $8361

jr_038_622b:
    rst RST_38
    jr nc, jr_038_61c1

    ld d, b
    sub e
    db $10
    sub e
    db $10
    inc bc
    call Call_038_4800
    ld d, c
    db $e3
    ldh [$fff1], a
    inc hl
    cp b
    ld b, l
    ret z

    rst RST_00
    ccf
    ld e, $e0
    ld c, $f0
    ld c, $f0
    ld c, $10
    ld h, b
    ld b, e
    rst RST_18
    cp $c3
    call z, $ccc3
    ld d, b

jr_038_6252:
    ld e, c
    jr z, jr_038_622b

    cp a
    inc l
    jp nc, $da24

    jr nz, @-$20

    add [hl]
    ld d, l
    rst RST_08
    pop af
    ret nz

    ld sp, hl
    ld hl, $4176
    ld sp, hl
    ld hl, $c3cc
    add [hl]
    ld a, b
    rst RST_38
    db $e4
    ld a, [de]

jr_038_626e:
    and b
    ld e, [hl]
    ld hl, sp+$06
    sub h
    ld l, d
    cp a
    sub [hl]
    ld l, b
    ld b, $f8
    ld l, d
    sub h

jr_038_627b:
    pop af
    inc h
    call z, $c3f7
    jp $b7cc


    ld d, d
    nop
    ld hl, sp+$06
    and $7f
    jr jr_038_62a3

    and $e6
    add hl, de
    add hl, de
    and $c3
    ld d, b
    db $e3
    ldh [$ffe0], a
    ld a, a
    nop
    pop de
    inc h
    jr jr_038_62ee

    inc c
    db $fc
    ld sp, $f07f
    call nz, Call_000_10c3

jr_038_62a3:
    rrca
    ld b, b
    ccf
    rst RST_10
    ld d, d
    ld b, a
    rst RST_38
    ld b, b
    ccf
    ldh [c], a
    dec d
    ld [$f053], a
    add hl, bc
    ld e, a
    rst RST_20
    ld d, b
    rst RST_18
    jp $cc00


    nop
    ret nz

    inc de
    ld h, b
    pop bc
    nop
    ccf
    add $01
    inc h
    inc bc
    ld h, b
    add a
    db $dd
    ld b, b
    rst RST_30
    ld d, e
    call nz, Call_038_6225
    sbc $41
    cp $05
    nop
    ld [hl-], a
    ld h, e
    ld h, c
    ld b, c
    ld bc, $9d00
    rlca
    rst RST_00
    jr nc, jr_038_6359

    inc bc
    ret nz

    pop af
    ld d, h
    ld [$0340], sp
    ei
    add b
    ld a, a
    and b
    daa
    di
    nop
    di
    nop
    ld [hl], e

jr_038_62ee:
    rst RST_38
    add b
    inc sp
    ret nz

    inc de
    ldh [rNR13], a
    ldh [rDIV], a
    rst RST_30
    ldh [rTAC], a
    ldh [$fff0], a
    add hl, de
    ld [hl-], a
    ld hl, sp-$36
    inc a
    rst RST_38
    nop
    nop
    ccf
    rst RST_38
    ret nz

    ccf
    ccf
    rst RST_38
    rst RST_30
    add b
    ld a, a
    ld a, a
    sbc $32
    jr z, @-$17

    ld d, b
    rst RST_08
    rst RST_38
    ld d, b
    rst RST_08
    and b
    sbc a
    and b
    sbc a
    cp a
    sbc a
    cp $ec
    ld d, d
    ld [hl], c
    add b
    or d
    nop
    ld sp, $3002
    rst RST_38
    inc bc
    jr nc, jr_038_632d

    jr nc, @+$03

jr_038_632d:
    ld sp, $3312
    rst RST_38
    jr c, @+$3a

    jr jr_038_634e

    db $10
    jr jr_038_6359

    jr c, @+$81

    ld b, e
    ld [hl], b
    add a

jr_038_633d:
    ldh [rSB], a
    ret nz

    ld bc, $100f
    rst RST_30
    ld a, b
    rst RST_38
    ldh a, [$ffdf]

jr_038_6348:
    db $10
    rst RST_38
    ret nz

    and b
    ret nz

    ld e, l

jr_038_634e:
    cpl
    bit 4, b
    nop
    nop
    rrca
    rst RST_10
    db $10
    inc a
    rst RST_10
    ld d, d

jr_038_6359:
    rst RST_28
    add a
    ld a, b
    rrca
    ldh a, [$ffde]
    ld d, b
    rst RST_38

jr_038_6361:
    jr @+$01

    cp l
    jr nc, jr_038_633d

    ld d, d
    call c, $d903
    ld b, $48
    ld d, b
    ldh a, [$fff2]
    ldh a, [c]
    ld h, c
    di
    ld c, c
    ld d, b
    ld h, b
    ld h, c
    cp a
    rra
    add b
    ld a, a
    di
    sbc a
    ld a, a
    jp hl


    jr nz, jr_038_6361

    ld b, h
    ld d, b
    add e
    jr nc, jr_038_6348

    rrca
    or b
    jp $c7a0


    rst RST_00
    jr nc, jr_038_63b8

    ld h, h
    ldh [c], a
    ld c, c
    ldh [c], a
    ld c, c
    cp b
    ld [$df53], a
    ld b, b
    dec l
    ld a, e
    nop
    rlca
    ld hl, sp-$1e
    ld c, c
    ld [$c1ff], sp

jr_038_63a1:
    dec c
    jp nz, $c30c

    inc b
    db $e3
    nop
    xor [hl]
    ld d, e
    ld [hl], h
    ld [hl], c
    db $fc
    dec b
    jp $fc10


    nop
    db $10
    inc d
    ld e, a
    di

jr_038_63b6:
    jr z, @-$17

jr_038_63b8:
    jr z, jr_038_63a1

    call c, Call_000_3f40
    add d
    ld [hl], b
    db $fc
    ld d, l
    ld l, b
    adc [hl]
    ld a, e
    ld [bc], a
    ldh [c], a
    inc b
    ld h, h
    ld [hl+], a
    ld h, d
    rst RST_38
    ld h, h
    ld h, b
    ld h, [hl]
    ld h, b
    ld h, h
    ld h, c
    ld h, c
    ld h, e
    rst RST_38
    ld b, e
    ld h, a
    ld b, e
    ld [hl], b
    inc bc
    jr nc, jr_038_63ee

    jr nc, @+$01

    inc sp
    ld [hl], b
    ld h, e
    ldh [$ffc3], a
    ret nz

    add e
    add b
    rst RST_28
    inc bc
    ldh a, [$ff28]
    ret nz

    ret nz

    ld [hl], c
    jr nz, jr_038_63b6

jr_038_63ee:
    ld h, b
    adc e
    ret z

    ldh [$ffc9], a
    ld [hl], b
    add sp, -$31
    ld h, b
    inc bc
    ld bc, $40d5
    rlca
    rst RST_38
    cp $0f
    db $fc
    rla
    ld sp, hl
    ld l, $50
    nop
    rst RST_38
    ld b, c
    db $10
    ld b, c
    db $10
    ld de, $1140
    ld b, b
    di
    ld d, c
    nop
    ld [$fa71], a
    ld h, e
    di
    db $10
    di
    jr nc, jr_038_6459

    di
    ld [hl], b
    di
    or b
    di
    ld [hl], b
    dec e
    add b
    dec a
    rst RST_18
    add sp, -$40
    xor b
    ret nz

    jr z, jr_038_642d

    nop
    ld l, b

jr_038_642c:
    ret nz

jr_038_642d:
    cp $00
    inc bc
    db $eb
    inc d
    rst RST_38
    and b
    xor [hl]
    ld d, b
    db $fc
    rst RST_38
    ld bc, $02f9
    ldh a, [c]
    inc b
    db $e4
    ld [$ffc8], sp
    ld de, $0203
    nop
    ld d, c
    ld d, c
    adc b
    adc b
    rst RST_28
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc hl
    ld [bc], a
    db $e3
    or b
    db $e3
    rst RST_38
    ld d, b
    db $d3
    and b
    or e
    ld b, b

jr_038_6459:
    ld [hl], e
    nop
    inc sp
    rst RST_38
    nop
    inc de
    add b
    add e
    ld b, b
    ld hl, $22c2
    rst RST_18
    call nz, $c824
    jr z, jr_038_642c

    ld b, b
    dec b
    ld de, $ff22
    ld [hl+], a
    ld b, h
    ld b, h
    adc b
    adc b

jr_038_6475:
    db $10
    db $10
    jr nz, @+$01

    ld hl, $4340
    add b
    add a
    nop
    inc b
    ld [bc], a
    ld e, a
    ld d, d
    ld bc, $0051
    ld d, b
    ld h, l
    nop
    ld d, c
    ld l, c
    ld [bc], a
    rst RST_08
    ld b, e
    jr nz, jr_038_64b3

    db $10
    inc a
    ld bc, $0170
    sub e
    nop
    cp a
    jp Jump_000_2800


    ret nz

    add hl, hl
    pop bc
    add d
    nop
    ld b, c
    rst RST_30
    jr z, jr_038_64e4

    cpl
    adc c
    nop
    nop
    nop
    rst RST_38
    ld hl, sp-$01
    di
    call c, $e8f7
    ret nz

    ret nz

    nop

jr_038_64b3:
    nop
    rst RST_18
    di
    inc c
    rst RST_20
    jr jr_038_64ba

jr_038_64ba:
    sbc [hl]
    nop
    ld a, b
    rst RST_38
    rst RST_38
    ldh a, [rIE]
    ldh [rIE], a
    rst RST_38
    ret nz

    and b
    ret nz

    db $fd

jr_038_64c8:
    jr nz, jr_038_6475

    nop
    nop
    nop
    rrca
    rst RST_38
    ld e, $ff
    add a
    inc a
    rst RST_38
    rst RST_38
    sbc [hl]
    ld bc, $009e
    xor h
    ld bc, $01ac
    ld h, b
    and e
    ret nz

    ldh [$ffc9], a
    ld [bc], a
    ret nz

jr_038_64e4:
    dec b
    ret nz

    dec b
    jr c, jr_038_64c8

    inc bc
    ld b, b
    sbc a
    jr c, @+$42

    jr nc, jr_038_6530

    ccf
    adc l
    nop
    sbc [hl]
    nop
    ld bc, HeaderManufacturerCode
    ld b, $06
    jr c, @+$3a

    pop bc
    adc [hl]
    nop
    cp b
    nop
    xor h
    inc b
    ld bc, $0004
    pop bc
    add hl, hl
    ld b, c
    inc b
    sub c
    ld d, c
    inc bc
    ld de, $5002
    inc b
    ld de, $0528
    jr z, @+$07

    ld [hl], b
    add hl, bc
    inc a
    ld [$00ab], sp
    nop
    inc de
    rst RST_38
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    inc b
    rst RST_38
    db $fd
    ld [bc], a

jr_038_652a:
    rst RST_38
    db $10
    rst RST_38
    jr z, jr_038_652a

    ld d, h

jr_038_6530:
    cp $6a
    nop
    ld bc, $0353
    ld d, e
    inc bc
    ld d, d
    inc bc
    rst RST_38
    ld b, b
    inc de
    ld b, c
    ld [de], a
    ld de, $e340
    add b
    rst RST_38
    or e
    ld b, b
    di
    add b
    inc sp
    ret nz

    ld [hl], e
    add b
    sbc e
    di
    nop
    ld a, d
    ld de, $4011
    ld l, d

jr_038_6554:
    ld bc, $0166
    rst RST_18
    add sp, -$77
    db $10
    sbc b
    nop
    ld a, e
    ld [de], a
    inc bc
    sub l
    db $10
    add e
    ld [hl], b
    inc bc
    ei
    ldh a, [$ff03]
    sbc [hl]
    nop
    inc c
    rst RST_38
    jr @+$01

    jr nc, jr_038_6554

    or a
    ld b, $96
    db $10
    ldh a, [$ffb2]
    ld de, $1394
    inc bc
    nop
    ldh [$ffe0], a
    xor c
    inc b
    ret z

    ld bc, $01aa
    ldh [rDIV], a
    rst RST_08
    ld d, $0c
    ld [hl], b
    ld [hl], b

jr_038_658a:
    ccf
    add e
    add b
    rrca
    nop
    ld a, a
    nop

jr_038_6591:
    cp b
    nop
    or a
    ld bc, $031b
    di
    ldh a, [rNR21]
    inc bc
    di
    ld sp, hl
    db $10
    cp c
    inc b
    xor d
    inc d
    sub a
    inc bc
    inc c
    inc bc
    db $10
    dec hl
    inc sp
    cp d
    inc de
    jr nz, @+$29

    rlca
    db $fd

jr_038_65af:
    rst RST_38
    add sp, $10
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$18
    rst RST_38
    ld hl, sp+$10
    pop af
    jr nc, jr_038_65af

    ret nz

    ret nz

    ccf
    cp $53
    db $10
    rst RST_08
    nop
    ld [hl], $00
    add hl, bc
    ret nz

    rlca
    rst RST_38
    ret nz

    ld [bc], a
    ret z

    jr jr_038_65e9

    add sp, $08
    ldh a, [$fffb]
    nop
    add b
    and $10
    and b
    nop
    jr nz, jr_038_65ec

    jr nz, @+$01

    adc a
    nop
    nop
    ld [hl], e
    di
    add b
    ld h, e
    ld h, e
    rst RST_38
    db $e3

jr_038_65e9:
    add b
    ld h, a
    ld b, a

jr_038_65ec:
    rst RST_00
    add b
    ld b, a
    add b
    rst RST_38
    rlca
    ld [bc], a
    nop
    add $c0
    inc b
    pop bc
    push bc
    rst RST_38
    pop bc
    inc b
    pop bc
    call $08c1
    jp $ff08


    jp RST_20


    xor h
    adc h
    jr nz, jr_038_658a

    and b
    db $ed
    add b
    add h
    inc hl
    jr nz, jr_038_6591

    add sp, $10
    cp $00
    db $fd
    ld hl, sp-$6c
    jr nz, jr_038_6651

    jr nz, @+$7d

    db $10
    pop af
    ld bc, $00e7
    ld h, h
    rst RST_38
    jp $b0c0


    add b
    rlca
    rlca
    ccf
    or b
    rst RST_38
    rra
    ld b, b
    rra
    ld b, b
    ldh [$ffe0], a

jr_038_6632:
    nop
    rrca
    rst RST_18
    nop
    ldh [rIF], a
    rrca
    ldh a, [$ff31]
    ld hl, $00ff
    rst RST_38
    ldh a, [rP1]
    ld [$a400], sp
    jr jr_038_6660

    ldh [$fffd], a
    db $ed
    cp [hl]
    jr nz, @+$01

    nop
    ld hl, sp+$07
    nop
    nop

jr_038_6651:
    rst RST_30
    jr jr_038_6654

jr_038_6654:
    db $10
    jp nc, $9022

    nop
    ld l, e
    db $10
    db $e3
    and b
    cp e
    cp [hl]
    nop

jr_038_6660:
    ldh [rNR52], a
    jp hl


    ld de, $0000
    ldh a, [c]
    rst RST_38
    ld bc, $00f1
    pop af
    nop
    ld a, [$f101]
    cp a
    add sp, -$1f
    jr jr_038_6677

    add hl, de
    pop bc

jr_038_6677:
    ld e, c
    jr nz, jr_038_667a

jr_038_667a:
    rst RST_38
    sbc b
    sbc b

jr_038_667d:
    dec l
    cp l
    jr z, jr_038_66bf

    and b
    xor [hl]
    sbc a
    jr nz, jr_038_6632

    nop
    jr jr_038_6698

    cp d
    ld [hl+], a

jr_038_668b:
    or a
    ld bc, $f180
    nop
    and $11
    cp c
    inc hl
    or a
    ld bc, $7f7f

jr_038_6698:
    nop

Call_038_6699:
    add b
    rst RST_38
    rlca
    rst RST_20
    ret c

    dec b
    db $dd
    nop
    ret c

    ld [bc], a
    ld a, a
    ld a, [$02d8]
    nop
    db $dd
    ret nz

    dec e
    add hl, sp
    jr nc, jr_038_667d

    nop
    rst RST_38
    ldh [$ff1f], a
    inc d
    inc sp
    cp c
    inc hl
    add b
    add c
    rst RST_28
    nop
    add d
    ld bc, $5981
    nop

jr_038_66bf:
    ld b, d
    ld b, c
    ld b, c
    rst RST_38
    ld c, b
    ld c, c
    ld d, b
    ld e, b
    add b
    and a
    nop
    xor a
    rst RST_38
    nop
    rra
    add c
    sbc [hl]
    inc bc
    cp h
    rlca
    jr c, jr_038_674c

    rrca
    ld [hl], b
    ld e, [hl]
    jp hl


    ld hl, $7fff
    add b
    cp l
    ld hl, $c0fd
    sub l
    db $10
    rra
    nop
    nop
    ld hl, sp+$01
    db $fc
    rst RST_38
    ldh [rNR34], a
    ldh a, [$ff0e]
    ld a, b
    rlca
    inc e
    inc bc
    rst RST_08
    ld c, $01
    add $01
    inc a
    jr nc, jr_038_668b

    ld [hl-], a
    ld e, b
    ld [bc], a
    ccf
    ld e, d
    nop
    ld a, [de]
    add b
    dec e
    ret nz

    jr nz, @+$36

    and c
    ld [hl], $df
    ld b, $ff
    rlca
    rst RST_38
    inc bc
    cp c
    inc hl
    db $e3
    inc e
    cp a
    pop bc
    ld e, $c0
    cp $ff
    or [hl]
    pop bc
    ld [hl-], a
    nop
    ld a, a
    rst RST_38
    jp nz, $bac7

    add e
    ld a, d
    inc bc
    dec e
    nop
    ld e, d
    rst RST_38
    inc bc
    db $fc
    rst RST_38
    nop
    db $fd
    cp $05
    ld a, [$03db]
    db $fc
    ld b, $03
    ld h, e
    rra
    db $10
    dec bc
    add $f8
    cp $20
    dec bc
    db $e3
    rra
    rst RST_10
    cpl
    db $e3
    ld e, $f5
    rst RST_38
    dec bc
    ei
    rlca
    push af
    rrca
    db $e3

jr_038_674c:
    rra
    push af
    rst RST_38
    rrca
    rrca
    di
    ld [hl], b
    sbc a

jr_038_6754:
    ret nz

    ld a, a
    nop
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    ld bc, $07fe
    ld hl, sp+$0f
    rst RST_38
    pop af
    nop
    rst RST_38
    inc bc
    db $fc
    inc c
    ldh a, [rNR10]
    rst RST_38
    ldh [$ff90], a
    ld [hl], b
    ret z

    jr c, jr_038_6754

    sbc h
    ld [hl], d
    rst RST_38
    adc $3f
    ret nz

    ret nz

    nop
    nop
    ld bc, $ff00
    add c
    add b
    ret nz

    ld b, b
    ld b, b
    nop
    nop

jr_038_6783:
    db $10
    rst RST_38
    jr jr_038_6783

    inc bc
    inc bc
    nop
    nop
    add b
    nop
    cp a
    add c
    ld bc, $0203
    ld [bc], a
    nop
    ld a, h
    ld bc, $ffff
    ret nz

    ccf
    jr nc, jr_038_67ab

    ld [$0907], sp
    ld b, $bf
    inc de
    inc c

jr_038_67a3:
    daa
    add hl, de
    ld c, [hl]
    inc sp
    ld [$0b01], sp
    or a

jr_038_67ab:
    db $f4
    rla
    add sp, $47
    nop
    nop
    rst RST_38
    dec b
    nop
    ldh [c], a
    rst RST_38
    rra
    push de
    cpl
    ldh [c], a
    rra
    rst RST_10
    inc l
    rst RST_20
    rst RST_28
    jr @-$1f

    jr nz, jr_038_67a3

    and c
    nop
    ld a, $c7
    ld a, b
    ld e, a
    adc a
    ldh a, [$ff3f]
    ret nz

    ld a, a
    sbc b
    ld bc, $47b7
    nop
    ld a, a
    add hl, sp
    rst RST_20
    inc e
    di
    ld c, $f9
    rlca
    ld bc, $fc00
    ld b, a
    nop
    ld b, a
    nop
    ld a, [bc]
    inc c
    add l
    add [hl]
    ld b, d
    jp $227f


    db $e3
    sub c
    ld [hl], c
    rst RST_08
    ccf
    ret nz

    sbc b
    ld bc, $00ff
    add c
    nop
    jp nz, Jump_038_4401

    add e
    adc c
    rst RST_28
    ld b, $f3
    db $fc
    inc bc
    ld b, a
    nop
    sbc h
    ld h, a
    jr c, @+$21

    rst RST_08
    ld [hl], b
    sbc a
    ldh [$ff3f], a
    ret z

    dec b
    ld a, h
    ld [bc], a
    nop
    jr @+$80

    and b
    ld bc, $03fe
    cp $3b
    xor $33

jr_038_681a:
    jr @+$15

    cp $7c
    nop
    ld a, a
    ccf
    ld b, b
    jr nz, jr_038_6883

    ld hl, $3f5f
    add hl, hl
    ld e, a
    jr nz, @+$61

    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld bc, $00df
    ccf
    rst RST_38
    call Call_038_6aff
    rst RST_38
    dec a
    db $fd
    inc bc
    inc sp
    ld [de], a
    rst RST_18
    ccf
    rst RST_38
    sub a
    rst RST_38
    ld c, d
    sbc b
    ld bc, $0040
    rst RST_38
    ret nz

    ld b, b

jr_038_6849:
    ld l, h
    ld h, [hl]
    rst RST_38
    ld [hl+], a
    ld [hl], a
    db $10
    sbc a
    dec sp
    db $10
    cp h
    sub b
    ld hl, sp+$18
    dec d
    jr jr_038_686e

    jr nz, jr_038_681a

    ld e, a
    jr z, jr_038_68bd

    inc l
    ld e, a
    ld [hl+], a
    ld [hl], c
    ld [de], a
    ld h, $bc
    ld [hl], l
    db $10
    ld hl, $0010
    ld b, b
    ccf
    ld e, a
    add l

jr_038_686e:
    inc de
    jr nc, @+$01

    ld e, a
    jr nc, jr_038_6874

jr_038_6874:
    nop
    cp $00
    ld [bc], a
    db $fc
    sbc l
    ld a, [$1395]
    inc c
    ld a, [$800c]
    rra
    sub d

jr_038_6883:
    dec de
    add b
    rst RST_38
    sub $00
    jp c, $fc38

    jr jr_038_6849

    adc b
    ld a, a
    call c, $fa40
    ld [hl], b
    ld a, [$7d00]
    ld [hl], d
    ld de, $2af5
    ld a, c
    inc d
    jr z, @+$77

    db $10
    ld e, b
    scf
    ld e, b
    scf
    ld a, l
    ld e, c
    db $e3
    jr jr_038_68c2

    db $ec
    ld a, [de]
    db $ec
    ld a, [$18f3]
    db $fc
    ldh [$ff1f], a
    ldh a, [c]
    dec de
    inc c
    ld e, [hl]
    ld b, h
    xor $40
    push hl
    rst RST_38
    ld h, b
    pop af
    db $10

jr_038_68bd:
    ld a, d
    jr nz, jr_038_6932

    jr nz, @+$79

jr_038_68c2:
    inc bc
    nop
    inc h
    ld a, d
    ld de, $1572
    ld a, h
    ld de, $2904
    inc b
    ld hl, $19f4
    nop
    db $f4
    ld de, $2f40
    ld d, b
    dec hl
    ld b, $01

jr_038_68da:
    ret z

    inc bc
    ld [$2c03], sp
    ld de, $1374
    call $2b2a
    db $10
    jr z, jr_038_6947

    ld b, $07
    sub b
    inc bc
    inc l
    ld e, a
    sub l
    inc h
    ld [hl], l
    db $10
    ld a, [hl+]
    or c
    jr nz, jr_038_6920

    sbc c
    ld [hl+], a
    sub d
    inc bc
    cpl
    set 2, b
    cp $91
    db $10
    cp $c8
    jr nz, jr_038_6914

    dec b
    db $e3
    rra
    cp a
    and e
    ld e, a
    or e
    ld c, a
    swap a
    jr nz, @+$07

    rst RST_00
    ld a, a

jr_038_6912:
    ld hl, sp-$3b

jr_038_6914:
    ld a, [$f2cd]
    db $d3
    db $ec
    jr jr_038_6930

    rst RST_38
    ld l, [hl]
    inc sp
    ld a, [hl]
    inc bc

jr_038_6920:
    ld a, [hl]
    ld a, a
    nop
    ld a, a
    sbc d
    sub $17
    jr z, jr_038_68da

    jr nz, jr_038_6957

    ld e, a
    xor h
    ld de, $14a6

jr_038_6930:
    ccf
    rst RST_08

jr_038_6932:
    ld b, b
    ccf
    ld a, a
    nop
    sbc h
    ld de, $1496
    db $fc
    ld [bc], a
    rst RST_20
    db $fc
    cp $00
    db $10
    ccf
    ld [hl+], a
    dec sp
    rst RST_30
    rrca
    rst RST_28

jr_038_6947:
    rst RST_30
    db $10
    rst RST_20
    rra
    ld d, h
    inc sp
    ld h, a
    rra
    inc de
    rrca
    cp a
    db $ed
    ldh a, [c]
    push af
    ld a, [bc]
    push af

jr_038_6957:
    ld a, [$3364]

jr_038_695a:
    or $f7
    ld hl, sp-$18
    ldh a, [rP1]
    dec e
    ccf
    nop
    ccf
    rrca
    rst RST_38
    ccf
    jr jr_038_69a8

    inc de
    ld a, a
    ld d, $7f
    inc [hl]
    rrca
    ld a, a
    inc h
    rst RST_38
    inc l
    jp z, $9001

    inc [hl]
    sbc c
    dec [hl]
    sub e
    ld a, [hl-]
    rst RST_38
    nop
    stop
    ld h, h
    nop
    ld b, $00
    ld h, b
    ei
    nop
    inc [hl]
    or h
    jr nc, jr_038_6912

    nop
    add d
    ld l, l
    rla
    ei
    ld d, d
    cpl
    ret nz

    dec [hl]
    ld b, a
    ccf
    ld d, d
    cpl
    ld c, d
    rst RST_30
    db $f4
    or [hl]
    add sp, -$30
    dec [hl]
    ldh [c], a
    db $fc
    or [hl]
    add sp, -$16
    ld a, h
    ld bc, $e301
    ld [hl-], a

jr_038_69a8:
    inc bc
    jp hl


    ld sp, $ff01
    ld l, b
    ei
    rst RST_38
    ld c, b
    ldh a, [c]
    jr nc, jr_038_6a0c

    rst RST_38
    ret nc

    rst RST_38
    sub b
    db $e3
    rst RST_38
    or b
    db $fc
    jr nc, jr_038_6957

    scf
    xor e
    inc sp
    and h
    nop
    inc b
    cp $b0
    jr nc, jr_038_695a

    nop
    ld [de], a
    nop
    inc h
    nop
    ld [$007b], sp
    ld [$31cc], sp
    ld b, a
    ccf
    ld b, a
    ccf
    ret nz

    ld sp, $6aef
    dec d
    ld a, a
    nop
    call c, $e231
    db $fc
    ldh [c], a
    db $fd
    db $fc
    ret nc

    ld sp, $50ae
    cp $00
    rlca
    ld bc, $40fe
    ld b, b
    inc bc
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    ld b, $bf
    rra
    ld b, $1f
    inc b
    rst RST_38
    jr nz, @+$52

    ld b, b
    ld h, b
    jp c, Jump_038_4054

    ld b, b
    ld e, b
    ld b, b
    ret nz

    rst RST_38
    ld b, h
    nop
    ld d, l

jr_038_6a0c:
    nop
    ld [hl], l
    ld a, [hl+]
    ld h, c
    ld b, b
    nop
    ld h, e
    ld b, b
    nop
    nop
    dec d
    sub c
    db $10
    ld [hl], a
    ld d, h
    nop
    xor d
    ld [hl], c
    ld b, b
    nop
    nop
    xor b
    ld a, h
    nop
    cp a
    ld d, b
    nop
    rra
    inc b
    ccf
    dec c
    add d
    ld b, b
    add hl, bc
    ei
    ld a, a
    add hl, de
    adc b
    ld b, b
    inc de
    rst RST_38
    inc sp
    rst RST_38
    add b
    add sp, -$70
    ld b, h
    xor c
    dec [hl]
    pop hl
    dec sp
    nop
    adc [hl]
    ld b, b
    ld [hl-], a
    rst RST_38
    ld h, [hl]
    sub d
    or h
    ld b, d
    call z, Call_038_41ba
    nop
    rla
    ld bc, $44c7
    ld a, h
    ld bc, $ff55
    nop
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld a, a
    ld d, l
    call nz, Call_000_04ff
    sub $44
    rst RST_38
    sbc $41
    jp z, $ca45

    ld b, e
    xor d
    ld a, a
    rla
    ld e, a
    rst RST_38
    xor a
    ld bc, $aa58
    sub d
    jr nc, jr_038_6a85

    ld e, c
    inc b
    ld e, c
    db $fc
    inc b
    ld d, c
    cpl
    ld e, l
    dec bc
    nop
    rla
    nop
    dec hl
    nop
    ld a, a
    ld d, a
    nop

jr_038_6a85:
    xor a
    nop
    ld e, a
    nop
    cp a
    and c
    db $10
    inc a
    nop
    ld c, [hl]
    pop af
    ld c, b
    ld [bc], a
    nop
    dec b
    nop
    inc b
    ld d, a
    sbc h
    ld [hl], $fc
    ld de, $9955
    ld [hl-], a
    ld a, h
    add d
    ld a, h
    cp d
    ld l, h
    xor d
    ld e, $94
    ld d, e
    ld a, h
    cp d
    ld a, h
    add d
    rst RST_38
    dec e
    nop
    add b
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    ld [bc], a
    db $fd
    dec b
    ld a, [$01ff]
    cp $0a
    db $f4
    db $10
    add sp, $00
    db $fc
    cp a
    inc b
    ei
    ld [de], a
    db $e4
    xor b
    nop
    dec d
    ld bc, $bb03
    inc bc
    ld a, a
    inc e
    nop
    xor b
    ld d, b
    ld b, b
    dec d
    ld [bc], a
    rrca
    di
    rrca
    rst RST_38
    ld a, [hl+]
    ld [bc], a
    dec d
    ld [bc], a
    nop
    nop
    ccf
    add b
    xor a
    rst RST_38
    ret nz

    rst RST_38
    ldh [$ff2d], a
    inc bc
    inc bc

jr_038_6ae9:
    nop
    ld bc, $ff00
    rst RST_38
    inc bc
    rst RST_38
    db $fc
    db $fc
    inc bc
    inc bc
    nop
    db $fd
    rrca
    ld b, h
    inc bc
    rrca
    rst RST_38
    ldh a, [$fff0]
    ld c, $0f

Call_038_6aff:
    ei
    add b
    ldh a, [rLY]
    inc bc
    ccf
    rst RST_38
    ret nz

    ret nz

    jr c, jr_038_6ae9

    ccf
    nop
    ret nz

    rra
    nop
    ld c, b
    dec b
    ldh [$fffc], a
    and a
    ld bc, $7f00
    nop
    nop
    ld e, b
    dec b
    rlca
    ld b, h
    inc bc
    nop
    ld l, [hl]
    ld l, b
    inc bc
    ld e, $00
    cp $97
    inc b
    add c
    rst RST_38
    and b
    dec bc
    rst RST_38
    add b
    ld b, b
    ld d, b
    add h
    adc b
    ld b, d
    ld d, d
    add l
    ld sp, hl
    adc c
    or l
    inc b
    dec d
    ld [bc], a
    add b
    adc b
    ld d, b
    ld d, h
    xor d
    ccf
    xor d
    ld d, l
    ld d, b
    xor a
    and b
    ld e, a
    jr nc, jr_038_6b4c

    jr nc, jr_038_6b4d

    rst RST_38
    add b

jr_038_6b4c:
    nop

jr_038_6b4d:
    ret nz

    nop
    ldh [rNR41], a
    ret nc

    ld b, b
    db $ed
    and b
    ldh [c], a
    rlca
    inc bc
    ld a, [hl]
    ldh a, [rTAC]
    ld b, e
    ld a, [hl]
    ld h, e
    rst RST_38

jr_038_6b5f:
    ld a, [hl]
    nop
    add sp, $24
    ret nc

    ld d, b
    xor b
    jr z, jr_038_6b5f

    ret nc

    ld b, b
    xor b
    ld [bc], a
    ld de, $d020
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld e, $7e
    rrca
    ld a, [hl]
    rlca
    pop af
    inc b
    db $dd
    rst RST_38
    ld e, c
    nop
    inc c
    rrca
    add b
    call c, $8300
    nop
    ld [hl], a
    add a
    nop
    adc a

jr_038_6b8a:
    adc a
    nop
    ccf
    ccf
    ret nz

    ld l, l
    nop
    ld c, $8a
    inc bc
    rst RST_38
    nop
    db $fc
    ld a, c
    inc b
    jr c, jr_038_6bb0

    adc b
    dec b
    jr c, jr_038_6bb4

    sub e
    cp a
    add b
    ld h, b
    dec de
    ld d, d
    dec de
    rst RST_38
    sub a
    ld b, $98
    dec b
    pop bc
    rst RST_38
    rst RST_38
    pop hl
    rst RST_38

jr_038_6bb0:
    pop af
    rst RST_38
    cp c

jr_038_6bb3:
    rst RST_38

jr_038_6bb4:
    sbc l
    ld a, a
    rst RST_38
    adc a
    rst RST_38
    add a
    rst RST_38
    add e
    rst RST_38
    cp b
    dec b
    sbc $b8
    dec b
    ld b, b
    cp a
    and b

jr_038_6bc5:
    ld e, a
    or b
    rla
    add b
    ld a, a
    ld e, d
    sbc $00
    ret nz

    call c, $4001
    and b
    add $13
    nop
    ld a, [hl+]
    nop
    rst RST_38
    ldh [rIE], a
    ld [hl], b
    rst RST_38
    jr nz, jr_038_6bc5

    inc h
    rst RST_20
    rst RST_38
    ld h, $e7
    daa
    rst RST_20
    nop
    ldh [rNR50], a
    ret nc

    rst RST_28
    db $10
    add sp, $28
    ret nc

    nop
    ld de, $e810
    jr nz, jr_038_6bb3

    ret nc

    ld [hl], e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, a
    di
    jr jr_038_6b8a

    rst RST_38
    ld b, d
    ld d, c
    add l
    adc l
    ld b, c
    ld d, c
    add c
    adc c
    cp b
    dec b
    inc h
    ldh a, [$ff09]
    ldh a, [rSB]
    adc a
    nop
    sbc a
    ld hl, $882a
    ldh a, [$ffb1]
    nop
    and b

jr_038_6c17:
    add hl, de
    dec h
    ld bc, $19b0
    nop
    add sp, -$5c
    ret nc

    rst RST_38
    sub b
    xor b
    xor b
    sub b
    add b
    xor b
    and h
    sub b
    ld b, a
    sub b
    xor b
    and b
    ld d, a
    inc h
    ld d, [hl]
    daa
    jr nz, jr_038_6c44

    adc h
    dec h
    db $10
    rst RST_20
    sub [hl]
    inc b
    sbc [hl]
    ld a, c
    ld [hl+], a
    jr nc, jr_038_6c51

    rrca
    rrca
    ldh a, [$ff7f]
    ldh a, [$ff03]

jr_038_6c44:
    rrca
    jp $c33f


    ccf
    ld b, b
    db $10
    rst RST_38
    ld bc, $3e3e
    ret nz

    ret nz

jr_038_6c51:
    inc c
    ld [hl-], a
    call z, $f23d
    sbc d
    ld hl, $0707

jr_038_6c5a:
    ld hl, sp-$08
    ld c, a
    ld de, $022f
    ld c, $2f
    nop
    ldh [$ffe0], a
    nop
    ld [hl], $12
    xor b
    dec h
    ld b, e
    dec d
    xor b
    dec h
    rst RST_18
    inc hl
    rst RST_20
    ld hl, $20e7
    db $d3
    jr nz, jr_038_6c17

    rst RST_20
    push hl
    ldh [$ffd9], a
    jr nz, jr_038_6cdd

    db $d3
    jr nz, jr_038_6c5a

    inc de
    add e
    rst RST_38
    pop bc
    ld l, [hl]
    dec l
    ld [bc], a
    ccf
    ld a, [hl]
    rra
    dec d
    jr @+$05

    ld a, [hl]
    ld [$2025], sp
    ld [$fc25], sp
    ld bc, $11f0
    ldh a, [rNR51]
    ld [hl+], a
    dec hl
    sbc a
    xor e
    ld hl, $0863
    db $fc
    or d
    ld hl, $0572
    nop

jr_038_6ca6:
    ld bc, $7e00
    nop
    add b
    adc $58
    ld b, $07
    nop
    ld hl, sp+$15
    ld bc, $3638
    ldh [$ff0e], a
    dec c
    ld [bc], a
    ld l, d
    ccf
    ld c, $02
    ld a, d
    inc hl
    add b
    scf
    adc h
    ld hl, $3990
    ldh a, [$ff9a]
    inc hl
    and b
    scf
    dec d
    ld bc, $1344
    db $fc
    inc bc
    ldh a, [rIF]
    ld h, e
    ldh a, [rIF]
    xor c
    inc hl
    ld b, l
    ld bc, $0344
    ldh [$ff1f], a

jr_038_6cdd:
    ret nc

jr_038_6cde:
    dec sp
    sub h
    ld d, c
    inc e
    ld b, [hl]
    ld d, $fe
    dec d
    ld bc, $aefc
    jr nz, @-$2d

    jr c, jr_038_6cde

    db $fd
    ld c, $c8
    dec [hl]
    inc bc
    db $fc
    rrca
    ldh a, [$ff3f]
    ret nz

    rst RST_08
    rst RST_38
    inc b
    rst RST_38
    ld a, $b4
    inc hl
    ld b, l
    ld [bc], a
    rla
    xor $ff
    xor [hl]
    db $d3
    db $d3
    rlca
    ld hl, sp+$07
    ld hl, sp-$32
    db $fd
    jr nc, jr_038_6ca6

    ld bc, $80fc
    jr c, jr_038_6d4b

    cp [hl]
    cp [hl]
    cp $45
    ld [bc], a
    ld bc, $22fe
    rst RST_38
    ld [hl], e
    rst RST_38
    rst RST_38
    rst RST_38
    cp c
    cp c
    db $fd
    db $fd
    add h
    ld a, a
    sub a
    dec c
    rst RST_38
    cp a
    dec bc
    ccf
    dec e
    ld a, a
    add h
    call c, $ff03
    ld l, c
    ld b, $ec
    ld [bc], a
    ld a, [bc]
    sub h
    ld b, h
    jr nc, @+$01

    sub $08
    ld d, c
    ld a, [bc]
    ld l, $01
    dec d
    or b
    rst RST_38
    ld [de], a
    xor b
    ld d, c
    sbc b
    ld b, b
    cp [hl]
    ret nz

jr_038_6d4b:
    scf
    rst RST_38
    and b
    dec d
    nop
    cp c
    ld l, b
    sbc l
    ld hl, sp+$6e
    xor a
    jr nc, jr_038_6d8d

    jr nc, jr_038_6dc1

    sub b
    inc a
    cp a
    and b
    add hl, sp
    call $f3e7
    rst RST_08
    di
    ret z

    ld [hl-], a
    rst RST_00
    inc sp
    ld a, a
    add b
    cp a
    ld hl, $6f9f
    db $10
    and d
    ld b, [hl]

jr_038_6d71:
    ld hl, $b244
    ld c, a
    nop
    sub a
    nop
    db $fc
    jr nc, jr_038_6d71

    reti


    ld b, b
    db $fc
    nop
    ld l, [hl]
    add hl, sp
    ld a, $32
    ld a, $3a
    cp $70
    dec e
    nop
    ld l, h
    nop
    ld a, $00

jr_038_6d8d:
    ld l, d
    nop
    rst RST_18
    ld [bc], a
    nop
    ld a, d
    nop
    sub $15
    ld [bc], a
    ld h, e

jr_038_6d98:
    nop
    rst RST_38
    daa
    nop
    ld hl, $e500
    nop
    ld d, b
    nop
    dec a
    db $10
    dec d
    ld [bc], a
    ld b, d
    nop
    ld h, b
    nop
    call $1b11
    ld d, e
    rst RST_38
    nop
    nop
    add c
    nop
    ld a, c
    nop
    add h
    nop
    db $fd
    ld b, l
    ret nc

    dec b
    ld [bc], a
    call nc, $f608
    inc b
    and e

jr_038_6dc1:
    rst RST_38
    rrca
    and $0f
    pop af
    dec b

jr_038_6dc7:
    ld hl, sp-$33
    nop
    rst RST_38
    ld b, e
    cp c
    db $10
    ld [bc], a
    ld e, b
    nop
    jr nz, jr_038_6d98

    rst RST_38
    pop hl
    ld b, e
    rst RST_00
    and c
    ld b, d
    ld l, c
    ldh [rLY], a

jr_038_6ddc:
    rst RST_38
    ret nz

    sbc [hl]
    ret nz

    jr nz, jr_038_6de2

jr_038_6de2:
    inc de
    nop
    ldh a, [c]
    rst RST_38
    jr nc, jr_038_6dc7

    ld h, b
    ld h, d
    nop
    ld c, a
    nop
    ld [$00ff], sp
    halt
    jr nz, jr_038_6ddc

    nop
    ld a, [bc]
    nop
    rst RST_08
    rst RST_38
    nop
    sub $20
    ld e, c
    add b
    ld [hl], c
    ld l, b
    or l
    cp a
    nop
    dec [hl]
    rst RST_38
    ld a, a
    rst RST_00
    ccf
    add d
    ld d, b
    cp a
    rst RST_30
    rst RST_38
    ld a, a
    adc a
    adc c
    ld d, b
    rst RST_08
    rst RST_38
    rst RST_38
    db $fc
    ei
    rst RST_20
    ld hl, sp-$6e
    ld d, b
    ld sp, hl
    rst RST_38
    cp $f3
    db $fc
    cp $9a
    ld d, b
    rst RST_38
    ldh [$ff60], a
    rst RST_28
    ld h, b
    ldh [rLCDC], a
    rla
    ldh [$ff80], a
    rst RST_28
    ldh [rP1], a
    rst RST_08
    dec a
    ld sp, $22bc
    cp e
    inc hl
    ldh [$ffa0], a
    ld b, [hl]
    or l

jr_038_6e39:
    ld e, d
    ld hl, sp+$32
    pop de
    ld d, d
    db $fd
    jr nc, jr_038_6e39

    ld a, $66
    rst RST_38
    ld a, [hl]
    ld h, d
    ld a, [hl]
    ld [hl+], a
    ld a, [hl]
    ld a, [de]
    ld a, d
    ld b, $3f
    ld a, [hl]
    ld b, [hl]
    ld a, $36
    ld c, $0e
    rst RST_08
    db $10
    ld d, c
    ld a, [de]
    sbc e
    add hl, de
    ld h, [hl]
    nop
    ld l, e
    ret nz

    inc a
    db $10
    ld l, e
    dec d
    ld [bc], a
    jr nz, @+$01

    nop
    jr c, jr_038_6e67

jr_038_6e67:
    ld b, $00
    jp $8200


    rlc b
    adc h
    ld b, d
    nop
    dec e
    ld c, d
    jr nc, jr_038_6e8a

    ld bc, $0007
    rst RST_38
    jp c, $0400

    inc bc
    pop hl
    ld b, $e0
    nop
    rst RST_30
    cp b
    nop
    pop hl
    ret nc

    ld b, $07
    nop
    and d

jr_038_6e8a:
    nop
    sbc a
    ld bc, $2702
    dec c
    dec e
    ld d, b
    nop
    dec d
    ld bc, $ffa7
    nop
    jr nc, jr_038_6e9a

jr_038_6e9a:
    cp l
    dec b
    or l
    ld [bc], a
    sbc $ff
    ld b, h
    db $fd
    adc b
    cp [hl]
    ld d, b
    ld [hl], c
    db $10
    inc b
    rst RST_38
    add h
    sbc d
    ld l, b
    ld h, l
    add b
    sub [hl]
    nop
    ld e, [hl]
    rst RST_38
    nop
    ld l, l
    nop
    jp z, $1000

    ccf
    ccf
    jp hl


    nop
    rst RST_38
    ld e, d
    db $dd
    ld b, b
    nop
    inc d
    ld l, d
    ccf
    nop
    ld a, a
    add c
    ld a, a
    or b
    ld [hl-], a
    and h
    ld h, d
    cpl
    ld [hl-], a
    xor b
    inc hl
    cpl
    dec b
    cp a
    ld l, h

jr_038_6ed4:
    ld hl, sp-$0f
    nop
    and d

jr_038_6ed8:
    jr nz, jr_038_6ed4

    ld sp, $53d2
    ld [bc], a
    ld [bc], a
    nop
    ld [$02a3], sp
    inc c
    db $e4
    ld h, a
    ld h, b
    scf
    jr nc, jr_038_6eee

    db $dd
    sbc $00
    add c

jr_038_6eee:
    cp e
    nop
    add hl, bc
    ld h, d
    ld h, b
    add a
    nop
    ld [de], a
    ld l, h
    ld d, b
    ld b, b
    cp a
    nop
    ld c, h
    nop
    sub [hl]
    nop
    inc h
    inc d
    ld [hl], b
    inc d
    rrca
    nop
    ld sp, $6d00
    db $e4
    ld l, c
    db $e4
    ld h, c
    nop
    ld e, a
    ld [de], a
    ld e, a
    sbc b
    inc h
    ld e, a
    ld [hl], $57
    jr nc, @+$16

    rra
    ldh [$ff38], a
    inc d

jr_038_6f1b:
    sub b
    ld hl, $f77e
    ld a, a
    add b
    cp [hl]
    ld b, e
    ld b, c
    ld bc, $03fe

jr_038_6f27:
    db $fc
    ld a, [de]
    and b
    jr nz, jr_038_6f27

    db $fc
    jr nc, jr_038_6f32

    ld hl, sp-$77
    inc b

jr_038_6f32:
    or b
    jr nz, jr_038_6ed8

    ld hl, $a348
    jr nz, jr_038_6f99

    inc bc
    dec d
    ld [bc], a
    ldh a, [$ff50]

jr_038_6f3f:
    nop
    or l
    ld [hl], b
    ldh [$ffad], a
    ld [hl], l
    inc l
    xor [hl]
    jr nz, jr_038_6f3f

    ld h, d
    rra
    ret nz

    ret nc

    rlca
    ret nz

    and b
    ld h, b
    reti


    ld [hl], c
    nop
    ld [hl], b
    inc e
    adc [hl]
    ld [hl], b
    ld sp, $3040
    ld b, c
    cp l
    jr nc, jr_038_6f1b

    jr nc, @+$1f

    add b
    inc bc
    ld l, a
    rrca
    ldh a, [$ff1f]
    ldh [rSC], a
    add hl, bc
    ccf
    ret nz

    db $10
    add hl, bc
    inc bc
    ld a, a
    add b
    ld e, $0d
    dec e
    nop
    add b
    rst RST_38
    nop
    nop
    nop
    rlca
    nop
    rra
    ld bc, $ff3f
    rlca
    ccf
    rrca
    ccf
    rrca
    ld a, a
    rra
    ld a, a
    rst RST_38
    nop
    ld e, a
    nop
    rst RST_38
    dec bc
    rst RST_38
    ld a, a
    rst RST_38
    ldh [c], a
    rla
    dec b
    nop
    rra
    nop
    inc hl
    add hl, bc

jr_038_6f99:
    jr nz, @+$0f

    rst RST_28
    rst RST_38
    di
    rrca
    rst RST_38
    ld sp, hl
    rst RST_38
    cp $27
    ld [$0b51], sp
    jr nz, jr_038_6faa

    ld h, b

jr_038_6faa:
    ld [bc], a
    rst RST_38
    cp $00
    db $fd
    nop
    ei
    nop
    rst RST_30
    nop
    rst RST_38
    db $ec
    nop
    call c, $b801
    ld bc, $0074
    db $fd
    db $f4
    ld [hl], b
    ld bc, $dc00
    add h
    ld de, $5088
    rst RST_38
    adc h
    ld b, b
    add h
    ld d, b
    add b
    ld d, c
    adc b
    ld d, c
    cp a
    adc h
    ld d, c
    inc c
    ld d, c
    nop
    ld a, a
    sub b
    inc b
    ccf
    ldh [c], a
    stop
    ld l, a
    sbc h
    nop
    ld e, a
    rlca
    rra
    ld [bc], a
    ld bc, $07ff
    cp a
    rst RST_38
    rrca
    rst RST_38
    rra
    rst RST_38
    ccf
    dec d
    nop
    ld a, [hl]
    rst RST_30
    cp $fc
    db $fc
    ld h, b
    inc b
    db $e3
    ld e, $80
    ld a, a
    rst RST_18
    nop
    db $e3
    nop
    add c
    ld e, $a0
    ld [$807f], sp
    ld [hl], a
    ccf
    ret nz

    rra
    and c
    inc c
    nop
    rst RST_38
    inc b
    ldh a, [rP1]
    rst RST_30
    inc c
    db $fd
    inc c
    db $f4
    ld bc, $1cfc
    cp $3e
    rst RST_38
    ld c, $7f
    inc e
    ld a, a
    inc e
    rst RST_38
    jr jr_038_70a2

    rst RST_18
    jr c, @+$01

    jr @+$01

    jr c, jr_038_7035

    stop
    nop
    rst RST_38
    ld l, a
    db $10
    ld h, b
    rra
    rra
    ld h, b
    ld e, a

jr_038_7035:
    cpl
    adc [hl]
    jr @+$13

    ld e, h
    inc l
    nop
    jr nz, jr_038_703e

jr_038_703e:
    ld [hl+], a
    nop
    ld [hl+], a
    inc b
    ccf
    pop af
    ccf
    jr nz, jr_038_7062

    ld l, $00
    ld sp, $f61e
    ld [$f806], sp
    rst RST_38
    ld hl, sp+$06
    ld [$cae4], a
    call nz, $848a
    rst RST_18
    ld a, [de]
    inc d
    ld d, h
    ld d, h
    sub $62
    db $10
    ld d, $d6

jr_038_7062:
    rst RST_38
    ld b, h
    sub $14
    ld d, h
    nop
    ld d, h
    ld d, b
    xor a
    rst RST_38
    ld b, h
    ld b, h
    xor $ee
    ld [$6cee], a
    xor $ff
    ld b, h
    xor $44
    ld b, h
    nop
    ld b, h
    rst RST_38
    rst RST_38
    rst RST_30
    ld h, [hl]
    inc sp
    ld [hl], a
    add d
    db $10
    ld b, [hl]
    ld [hl], a
    ld [hl+], a
    ld [hl], a
    rst RST_38
    ld [hl+], a
    ld [hl+], a
    nop
    ld [hl+], a
    rst RST_38
    rst RST_38
    cp $80
    cp a
    rst RST_38
    ret nz

    rst RST_38
    ldh [rIE], a
    ld [hl], b
    dec bc
    ld de, $fffe

jr_038_709b:
    inc e
    db $fd

jr_038_709d:
    dec e
    ld bc, $017f
    ld a, a

jr_038_70a2:
    inc bc
    ld [$10a3], a
    rlca
    and a
    db $10
    rrca
    xor e
    db $10
    ld bc, $02fc
    rst RST_38
    ld hl, sp+$06
    ld hl, sp+$04
    ldh a, [rTIMA]
    pop af
    add hl, bc
    rst RST_38
    pop af
    dec bc
    di
    dec bc
    db $e3
    ld a, $3f
    ld a, a
    cp $16
    ld [bc], a
    cp $ff
    db $fc
    rst RST_38
    ld hl, sp-$01
    ldh a, [rIE]
    rst RST_38
    ldh [rIF], a
    ld h, b
    adc a
    ldh a, [$ff87]
    jr nc, @+$01

    rst RST_00
    jr c, jr_038_709b

    jr c, jr_038_709d

    jr @-$1b

    ld a, b
    rst RST_38
    db $e3
    db $dd
    ld bc, $01dd
    reti


    ld bc, $ffd1
    inc bc
    jp $c707


    rrca
    adc a
    rra
    rra
    cp [hl]
    ld d, $00
    ei
    rst RST_38
    rst RST_08
    rst RST_38
    xor l
    pop af
    db $10
    push hl
    db $e3
    rst RST_38
    jp Jump_000_0027


    inc c
    ld de, $2900
    ld e, b
    jr z, jr_038_715e

    rst RST_30
    jr z, jr_038_7159

    jr nz, jr_038_711f

    daa
    rra
    rra
    rrca
    rrca
    adc a
    rlca
    rlca
    ld bc, $0001
    nop
    jr z, jr_038_713b

    daa
    dec b
    ld a, a
    rst RST_38
    ld a, a
    ccf

jr_038_711f:
    ccf
    ld a, $3e
    ld a, h
    ld a, h
    cp $fe
    cp l
    nop
    ld hl, sp-$08
    pop hl
    pop hl
    add e
    add e
    rlca
    cp $4a
    jr nz, jr_038_7136

    inc bc
    ld a, [de]
    inc d

jr_038_7136:
    ld a, [bc]
    inc b
    ld a, [$f4fd]

jr_038_713b:
    ld d, h
    daa
    rst RST_38
    nop
    inc d
    nop
    ld d, [hl]
    add hl, hl
    rst RST_38
    sub $00
    ld d, l
    xor d
    ld b, c
    push de
    sub h

jr_038_714b:
    push de
    rst RST_38
    push de
    push de
    rst RST_38
    nop
    ld b, b
    nop
    ret nz

    db $10
    rst RST_38
    add b
    nop
    ld l, l

jr_038_7159:
    sub d
    and a
    or a
    or l
    or a

jr_038_715e:
    rst RST_38
    or a
    or a
    rst RST_38
    nop
    ld [bc], a
    nop
    inc bc
    adc b
    rst RST_38
    ld bc, $b600
    ld c, c
    push hl
    ld l, l
    dec l
    ld l, l
    ld c, e
    ld l, l
    ld l, l
    or c
    nop
    inc bc
    and c
    add hl, bc
    xor h
    ld de, $a31f
    inc h
    db $fd
    ccf
    xor e
    jr nz, jr_038_718d

    db $e3
    rla
    rst RST_20
    rla
    rst RST_00

jr_038_7187:
    ld a, a
    rla
    rst RST_00
    ld [hl], $c7
    inc [hl]

jr_038_718d:
    rst RST_00
    jr nc, jr_038_714b

    jr nz, jr_038_7187

    pop hl
    ei
    db $10
    add a
    or e
    nop
    inc e
    rst RST_38
    add hl, sp
    rst RST_38
    db $fd
    ld [hl], e
    ccf
    nop
    db $fc
    pop hl
    call z, $9cf1
    pop af
    or a
    ld a, h
    pop af
    db $fc
    rst RST_10
    ld [hl+], a
    db $ec
    pop af
    daa
    inc bc
    db $eb
    ld c, e
    rst RST_38
    call $10f1
    db $f4
    ld b, l
    ld [$0127], sp
    di
    call $fe10
    nop
    dec l
    ld d, b
    jr nz, jr_038_721c

    jr z, jr_038_7222

    inc l
    ld e, [hl]
    db $ed
    ld l, $16
    inc sp
    ld e, a
    cpl
    jr z, jr_038_71f1

    ld b, b
    ld b, b
    ld [hl], b
    ei
    ld [hl], b
    ld a, b
    jr z, jr_038_7208

    inc a
    inc a
    ld e, $1e
    jr c, @-$05

    jr c, jr_038_7208

    dec h
    jr z, jr_038_7204

    ld bc, $0301
    inc bc
    ld hl, $21ff
    ld [hl], c
    ld [hl], c
    ld a, c
    ld a, c
    ld hl, sp-$08
    db $fc

jr_038_71f1:
    or $4a

jr_038_71f3:
    jr nc, jr_038_71f3

    cp $54
    add hl, hl
    ld a, d
    ld [hl], h
    ld a, d
    ld [hl], h
    ccf
    push de
    push de
    ld d, h
    rst RST_38
    ld d, h
    xor e
    ld h, d

jr_038_7204:
    inc sp
    jr nz, jr_038_7208

    rst RST_38

jr_038_7208:
    or a
    or a
    sub [hl]
    ldh a, [c]
    sub d
    ld l, b
    sub a
    ld a, [$92ff]
    ld l, b
    sub e
    ld a, [$f007]
    rrca
    ldh [$ff7f], a
    ld l, a
    ld l, l

jr_038_721c:
    ld l, c
    ld c, c
    ld c, c
    nop
    jp hl


    add e

jr_038_7222:
    jr nc, @+$01

    ret


    ld c, c
    db $ec
    ld bc, $01f4
    xor e
    xor e
    rrca
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    nop
    sub d
    inc sp
    jr z, jr_038_7256

    xor h
    ld hl, $21ac
    ld e, h
    and a
    ld [hl-], a
    dec d
    nop
    ld sp, $33c7
    or a
    jr nz, jr_038_7279

    or c
    jr nc, jr_038_721c

    scf
    cp c
    ld [hl-], a
    sbc a
    or a

jr_038_724c:
    nop
    ld a, [hl]
    ret


    ld [de], a
    pop hl
    rst RST_38
    rst RST_38
    rst RST_00
    rst RST_38
    adc [hl]

jr_038_7256:
    rst RST_38
    call z, $8cf1
    pop af
    ld a, l
    inc e
    push de
    jr nz, jr_038_724c

    pop af
    call z, Call_000_3cf1
    push de
    jr nz, jr_038_727c

    ccf
    di
    db $10
    rst RST_20
    ld b, c
    nop
    db $fc
    ld b, l
    dec b
    and b
    inc c
    nop
    dec l
    cp $18
    inc de
    ld e, a
    cpl

jr_038_7279:
    rra
    ld h, b
    ld h, b

jr_038_727c:
    rra
    ld l, a
    rst RST_38
    stop
    nop
    adc a
    adc a
    pop bc
    pop bc
    ldh [$ff39], a
    ldh [$ff3d], a
    inc de
    rrca
    stop
    add e
    add e
    add hl, sp
    rla
    inc l
    ld b, c
    or $4a
    ld sp, $fdfd
    ld h, $47
    ld a, [hl-]
    inc [hl]
    ld a, [de]
    inc d
    rst RST_38
    adc d
    add h
    ld a, [$f8f4]
    ld b, $06
    ld hl, sp+$3b
    or $08
    inc hl
    ld de, $ffef
    ld d, a
    jp Jump_000_1620


    dec b
    rst RST_30
    ldh [$ffe0], a
    cp $72
    ld c, d
    inc b
    ld bc, $914c
    ld e, h
    add d
    ld c, c
    ld [bc], a
    nop
    rrca
    nop
    rra
    sub h
    ld b, d
    ccf
    sbc d
    ld b, c
    db $fc
    xor h
    ld sp, $0923
    rla
    rst RST_00
    inc d
    rst RST_00
    db $10
    rst RST_20
    rst RST_38
    inc de
    rst RST_20
    ld [de], a
    db $e3
    ld [$09e3], sp
    di
    ld e, a
    dec b
    pop af
    add hl, de
    rst RST_38
    inc sp
    di
    db $10
    sbc a
    jp $b630


    ret z

    ld sp, $ffc3
    jp c, $1823

    db $e3
    call c, $f811
    rst RST_38
    jp $c7f0


    rst RST_38
    rra
    cp $0e
    rst RST_38
    cp l
    inc c
    ldh a, [rP1]
    ld b, $ff
    rlca
    cp $f1
    nop
    ld a, [$f1ff]
    ld [hl], h
    ld h, c
    xor b
    add hl, hl
    or b
    ld sp, $ffe4
    ld h, c
    adc h
    add c
    inc e
    ld bc, $01dc
    inc a
    db $e3
    rst RST_38
    ld a, $b7
    ld [bc], a
    ld b, $55
    jr nz, @+$0f

    rra
    ldh [$ff87], a
    rst RST_10
    ld hl, sp-$3d
    db $fc
    cp $21
    sbc [hl]
    db $e3
    ld [hl-], a
    ld sp, $ff05
    reti


    ld bc, $00e6
    ld sp, hl
    nop
    ld a, [hl]
    add b
    rst RST_38
    rra
    ldh [rIF], a
    ldh a, [$ffc3]
    db $fc
    add b
    or b
    rst RST_38
    and b
    or h
    or b
    or [hl]
    sub b
    ld d, $c0
    ld b, $7f
    jr nc, @+$04

    call z, $f600
    nop
    inc bc
    or c
    nop
    adc b
    ld d, h
    rrca
    and b
    ld [$403f], sp
    nop
    ld [hl], e
    ld d, c
    ld e, a
    inc b
    add d
    ld c, e
    ld c, h
    rst RST_20
    sub c
    ld bc, $903f
    ld d, h
    and e
    ld [de], a
    inc bc
    ld a, a
    nop
    rst RST_38
    nop
    pop af
    push af
    pop af
    push af
    ld [hl], c
    push af
    ld sp, $f5ef
    ld de, $01f5
    xor e
    ld d, b
    dec b
    ld sp, hl
    ld b, $bf
    ld hl, sp+$02
    ld hl, sp+$03
    db $fc
    ld bc, $04bf
    rrca
    sbc $b7
    ld bc, $3f7f
    ld a, $83
    sub b
    nop
    ld e, $80
    rst RST_38
    nop
    db $e3
    ldh a, [$ff87]
    ldh [$ff8f], a
    ldh [rIF], a
    rst RST_08
    ret nz

    rra
    add b
    ccf
    sub b
    nop
    rra
    nop
    add b
    xor a
    rst RST_38
    adc [hl]
    adc a
    db $fd
    rst RST_38
    db $ec
    rst RST_38
    ld a, [$baff]
    ld b, l
    ld b, c
    rst RST_38
    or e
    nop
    rst RST_30
    rst RST_38
    ld l, d
    xor a
    nop
    add e
    ei
    rst RST_38
    ld l, [hl]
    ld e, e
    add hl, bc
    cp $01
    db $fc
    inc bc
    ld hl, sp-$01
    rlca
    pop af
    rrca
    ldh [rP1], a
    ld hl, sp+$07
    rst RST_00
    rst RST_38
    ccf
    cp a
    ld a, a
    ld a, $fa
    ldh a, [$fff7]
    rst RST_00
    ld b, a
    rst RST_18
    sbc a
    cp a
    cpl
    ld de, $133c
    ld [hl+], a
    inc bc
    rst RST_18
    jr nz, jr_038_7456

    or a
    cp $fe
    ld a, [hl]
    jr nz, jr_038_745c

    rra
    rst RST_38
    sub a
    nop
    ret nz

    rst RST_38
    jp $f8fc


    rst RST_38
    ld d, l
    rrca
    ld [bc], a
    pop af
    rst RST_18
    ldh a, [$fffe]
    cp $ff
    rst RST_30
    ld h, b
    inc b
    ccf
    ret nz

    ld a, a
    sbc a
    ldh [rIF], a
    ld [hl], b
    rlca
    cp b
    add e
    ld [hl], d
    ld c, e
    rst RST_38
    cp $fe
    ld b, b
    add b
    ld c, h
    adc h
    ld c, a
    adc a
    ccf
    ld b, e
    add e
    ld c, b
    sub b
    ld c, e
    sub e
    adc d
    ld h, c
    sbc [hl]
    jr nc, @+$01

    ccf
    rst RST_00
    rst RST_00
    ld hl, sp-$08
    ld a, a
    ld a, a
    rrca
    rst RST_18
    adc a
    ld sp, $0681
    cp b
    ld l, $23
    ld a, a
    ld a, a
    ld l, a
    adc a
    adc a
    ldh a, [$fff0]
    inc l
    ld [de], a
    inc bc
    db $fc
    add sp, $36
    rst RST_28
    rra
    rra
    ldh [$ffe0], a
    ret c

    ld [bc], a
    rlca
    ld hl, sp-$40
    ldh a, [$ffcd]
    db $10
    adc $10
    dec l

jr_038_7456:
    ld hl, $0460
    rra
    ldh [rSB], a

jr_038_745c:
    cp $38
    dec l
    jr z, @+$48

    dec b
    ld [hl+], a
    ld bc, $fff1
    cpl
    sla b
    ld l, c
    ld b, l
    rst RST_38
    sbc $c0
    cp $c0
    ld a, $00
    ld a, $80
    rst RST_38
    ld a, $80
    rra
    nop
    cpl
    add b
    ld a, a
    ld [hl], a
    rst RST_08
    ld a, e
    ld h, e
    rst RST_30
    db $e3
    pop af
    ld d, b
    ld b, $53
    ccf
    rst RST_38
    ld a, a
    adc a
    rst RST_18
    adc a
    rst RST_30
    rlca
    cp a
    adc a
    ldh [rLCDC], a
    cp $46
    inc bc
    adc a
    cp a
    sbc e
    ei
    or e
    rst RST_38
    reti


    rst RST_28
    rst RST_28
    ld c, a
    rst RST_38
    ld e, a
    dec d
    ld b, $f7
    rst RST_28
    rst RST_00
    xor $27
    nop
    sbc a
    sbc a
    rrca
    push bc
    ld b, b
    jp $83cf


    db $fc
    swap b
    daa
    inc bc
    rst RST_00
    rst RST_28
    rst RST_00
    call c, $ecc3
    rst RST_38
    pop hl
    db $fc
    add c
    call c, $fe00
    ret nz

    or $0f
    ldh a, [$fff6]
    ldh a, [$fffe]

jr_038_74ca:
    ld [hl], c
    ld b, h
    dec l
    ld [hl+], a
    inc l
    ld [hl+], a
    adc d
    ld h, e
    cp $8a
    ld h, c
    rl e
    inc bc
    inc de
    inc bc
    ei
    nop
    db $dd
    cp a
    sub b
    ld [hl], b
    and e
    nop
    and b
    sub [hl]
    ld [hl], l
    ld b, a
    add a
    sub a
    jr jr_038_74ca

    inc bc
    cp a
    ld bc, $021f
    nop

jr_038_74f0:
    daa
    jr nz, jr_038_74f0

    ld a, [hl]
    or b
    ld [hl], b
    dec c
    dec c
    ret nc

    db $10
    ld e, l
    sbc h
    cp b
    ld [hl], e
    ret nc

    ld a, [hl-]
    rla
    ret


    nop
    ld hl, $2006
    ld [de], a
    cp $da
    ld [hl], c
    ld bc, $5df5
    pop af
    rst RST_18
    jr nz, jr_038_7562

    rst RST_38
    add h
    rst RST_20
    ld d, b
    ld hl, sp+$27
    ld [bc], a
    ld e, a
    rst RST_08
    rst RST_38
    sub l
    rst RST_38
    cp a
    dec d
    nop
    rst RST_18
    or e
    nop
    inc bc
    xor a
    rst RST_38
    dec e
    add b
    jr nc, @+$01

    jr nc, jr_038_752c

jr_038_752c:
    cpl
    nop
    rra
    nop
    jr c, jr_038_7532

jr_038_7532:
    rst RST_28
    scf
    nop
    cpl
    add b
    ld a, [bc]
    ld bc, $1d3f
    cp d
    rst RST_38
    nop
    rst RST_18
    ld b, b
    xor $20
    ld h, b
    ld h, b
    and a
    db $fd
    daa
    ld a, [de]
    ld bc, $cfff
    rst RST_28
    adc a
    rst RST_38
    nop
    rst RST_38
    ccf
    nop
    nop
    nop
    rst RST_30
    db $e3
    ei
    ld sp, hl
    rst RST_38
    db $fd
    db $fc
    rst RST_38
    rst RST_10
    cp e
    add c
    rst RST_38
    nop
    ld [hl], l

jr_038_7562:
    rst RST_38
    daa
    nop
    rst RST_38
    ld a, [hl-]
    inc bc
    push af
    ld [$34e0], a
    inc bc
    rst RST_38
    ei
    di
    db $fd
    ld hl, sp-$04
    db $fc
    rst RST_38
    rst RST_28
    rst RST_18
    cp a
    ld e, $ff
    nop
    pop af
    scf
    ld b, $f8
    ret nz

    rst RST_38
    rst RST_30
    rlca
    rst RST_28
    rrca
    adc $0e
    dec e
    dec e
    cp a
    ld e, e
    dec de
    ld e, e
    dec de
    sbc e
    adc d
    daa
    nop
    nop
    rst RST_38
    ld [bc], a
    nop
    dec b
    nop
    rlc b
    rst RST_28
    nop
    rst RST_38
    pop hl
    ld c, $ec
    rrca
    inc bc
    inc bc
    xor e
    inc bc
    rst RST_18
    db $db
    inc bc
    ld a, e
    inc bc
    ei
    add a
    ld [bc], a
    ld a, e
    add e
    db $db
    nop
    and b
    sub b
    dec bc
    stop
    and b
    dec bc
    ld e, l
    sbc h
    ld hl, sp-$50
    dec bc
    dec [hl]
    nop
    pop bc
    rlca
    nop
    rra
    ld h, b
    nop
    cp $7b
    ld [bc], a
    db $fc
    jp nc, Jump_000_0601

    ld hl, sp+$3e
    ret nz

    jr c, jr_038_75d1

jr_038_75d1:
    rst RST_08
    nop
    ld sp, hl
    rst RST_38
    cp $3a
    inc b
    ld a, [hl-]
    inc bc
    ldh [rIE], a
    rst RST_38
    ld a, b
    rst RST_38

jr_038_75df:
    inc a
    rst RST_38
    rst RST_18
    rst RST_38
    rst RST_20
    rst RST_38
    rst RST_20
    di
    rst RST_38
    db $fd
    pop hl
    nop
    ld a, [bc]
    ld bc, $800c
    nop
    rst RST_30
    add b
    inc b
    sub c
    ld [$f110], sp
    inc b
    pop af
    xor a
    inc bc
    nop
    jr nz, jr_038_75ff

    nop

jr_038_75ff:
    scf
    ld bc, $03c0
    ld [hl], $02
    dec d
    rra
    daa
    rra
    ld a, h
    add hl, sp
    rra

jr_038_760c:
    pop bc
    ld [bc], a
    ei
    nop
    dec bc
    nop
    ld a, [$0027]
    ei
    ld bc, $683c
    db $10
    db $fc
    ld bc, $f1fc
    rrca
    ld a, a
    db $ec
    rrca
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, b
    inc d
    rst RST_38
    add hl, sp
    pop bc
    adc [hl]
    ldh a, [rBGP]
    ld hl, sp-$6f
    cp $ff
    ret z

    rst RST_38
    or $ff
    ld sp, hl
    rst RST_38
    db $fc
    rst RST_38
    cp $90
    nop
    jr nz, jr_038_75df

    rra
    rst RST_28
    rrca
    di
    inc bc
    cp a
    inc a
    ret nz

    ld e, $e0
    rst RST_00
    ld hl, sp-$60
    ld bc, $fbf0
    ldh a, [$fff8]
    ld c, l
    nop
    db $fc
    db $fc
    ld a, h
    ld a, h
    sbc b
    db $fd
    jr jr_038_760c

    dec c
    ld h, a
    jr jr_038_7698

    ld b, a
    daa
    ld b, b
    rst RST_38
    jr z, jr_038_76ae

    dec h
    ld c, l
    jr z, jr_038_76af

    inc l
    ld c, c
    ei
    dec l
    ld c, l
    inc [hl]
    ld bc, $e01f
    db $e3
    inc e
    inc a
    rst RST_38
    inc bc
    add a
    add b
    db $10
    or b
    ld b, $b6
    ld sp, hl
    rst RST_38
    nop
    ld a, [hl]
    add b
    rra
    ldh [rIF], a
    ldh a, [$ff83]
    ccf
    db $fc
    ldh [rIE], a
    ldh a, [rIE]
    ld a, h
    ld [hl], $00
    ccf
    db $10
    jp c, $09c1

    pop af
    dec [hl]

jr_038_7698:
    ld bc, $7fff
    pop bc
    ld [bc], a
    ld hl, sp-$01
    push af
    ld a, $c0
    ld [bc], a
    ld a, a
    db $e3
    db $10
    rst RST_20
    ld hl, sp+$13
    db $fc
    rst RST_18
    add hl, bc
    cp $00

jr_038_76ae:
    nop

jr_038_76af:
    ld a, a
    jr nz, jr_038_76d2

    ccf
    nop
    rst RST_38
    inc hl
    inc c
    ld bc, $041e
    ld a, [hl]
    ld c, $fc
    rst RST_38
    sbc b
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ld e, a
    ldh [$ff1f], a
    ret nz

    ccf
    add b
    rra
    jr nz, jr_038_774e

    jr c, jr_038_76d1

jr_038_76d1:
    push de

jr_038_76d2:
    ld bc, $2042
    inc bc
    ld b, [hl]
    jr nz, jr_038_76e0

    ldh a, [rNR12]
    nop
    rst RST_38
    rst RST_38
    db $ec
    rst RST_38

jr_038_76e0:
    ret z

    rst RST_38
    ret c

    rst RST_38
    sub b
    rst RST_38
    jp hl


    or b
    ld c, h
    inc h
    ret nz

    dec b
    ld bc, $244c
    rra
    rst RST_38
    ccf
    ld hl, sp+$06
    jr nz, jr_038_7730

    nop
    ldh a, [rNR12]
    ccf
    ret nz

    rst RST_18
    ldh [$ffef], a
    rst RST_38
    ldh a, [$fff7]
    ld hl, sp-$05
    db $fc
    db $fd
    nop
    nop
    ld a, a
    cp $fe
    ld h, c
    cp $98
    rst RST_38
    call z, Call_000_00f9
    db $fc
    adc h
    ld de, $02ec
    nop
    ld hl, sp+$00
    ld a, $c0
    rra
    rst RST_38
    ldh [$ff87], a
    ld hl, sp-$1d
    db $fc
    jr nc, @+$01

    sbc h
    db $fd
    rst RST_38
    or b
    inc bc
    dec e
    inc e
    db $dd
    inc e
    push hl
    inc b
    db $fd

jr_038_7730:
    ld hl, sp-$80
    jr nz, jr_038_7769

    ld b, l
    inc a
    ld b, b
    daa
    ld b, b
    rst RST_38
    ld hl, $2348
    ld c, a
    ld [hl+], a
    ld c, [hl]
    ld l, c
    dec c
    rst RST_38
    ld h, l
    dec c
    and [hl]
    or d
    sub [hl]
    or b
    ld b, $34
    rst RST_38
    add $16

jr_038_774e:
    ld [hl], d
    ld [bc], a
    inc e
    nop
    daa
    jr nz, @+$01

    sbc l
    cp h
    nop
    nop
    adc a
    xor a
    adc a
    xor a
    ld a, a
    adc [hl]
    xor a
    adc h
    xor a
    adc b
    xor a
    add b
    db $eb
    jr nz, jr_038_777d

    rst RST_38

jr_038_7769:
    pop hl
    nop
    db $fd
    ld d, d
    jr nz, jr_038_7769

    ei
    nop
    ld a, b
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_038_777d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_038_7dff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_038_7f11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_038_7f37:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
