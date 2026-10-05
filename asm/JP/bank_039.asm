; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $039", ROMX[$4000], BANK[$39]

    jr nz, jr_039_4042

    ei
    ld b, [hl]
    and d
    ld c, b
    ld e, a
    ld c, a
    ld a, [hl+]
    ld d, c
    ld a, [de]
    ld d, a
    add l
    ld e, b
    sub [hl]
    ld e, [hl]
    ld l, h
    ld h, b
    ld c, l
    ld h, [hl]
    rst RST_10
    ld h, a
    sub l
    ld l, d
    sub [hl]
    ld l, d
    inc d
    ld l, a
    cp d
    ld [hl], b
    ld h, l
    ld [hl], l
    dec e
    nop
    add b
    rst RST_38
    db $e3
    rra
    db $fc
    inc bc
    rst RST_38
    nop
    rst RST_38
    nop

Jump_039_402c:
    cp a
    ld hl, sp+$07
    rst RST_00
    ccf
    ccf
    rst RST_38
    dec c
    ld bc, $7f1f
    rst RST_38
    cp $01
    adc a
    ld a, a
    ld [hl], e
    db $fc
    dec c
    ld [bc], a
    cp $0d

jr_039_4042:
    ld [bc], a
    inc a
    rst RST_38
    db $e3
    db $fc
    rst RST_38
    nop
    rrca
    ei
    ldh a, [$fff8]
    dec c
    nop
    ld h, e
    ld a, b
    ld h, b
    ld a, b
    ld h, b
    sbc a
    ld a, e
    ld h, c
    ld a, d
    ld h, e
    ld a, b
    jr nc, jr_039_405f

    daa
    nop
    nop

jr_039_405f:
    pop bc
    nop
    dec c
    ld [bc], a
    inc bc
    nop
    ld b, e
    nop
    dec b
    nop
    add hl, hl
    nop
    ret nz

    rst RST_38
    cp $19
    ld bc, $0000
    inc bc
    db $fc
    ld a, a
    rst RST_38
    add c
    scf
    ld a, a
    rst RST_38
    nop
    inc d
    ld bc, $ffff
    inc l
    ld bc, $010d
    rst RST_30
    ldh [$ff1f], a
    rra
    ld [hl], c
    ld bc, $1fff
    ldh [$fff7], a
    ld a, $6c
    dec b
    rst RST_38
    ret nz

    rst RST_38
    ccf
    ret nz

    inc b
    ld bc, $0b32
    db $e3
    ld h, c
    ld a, d
    ld b, d
    dec b
    ld d, b
    ld bc, HeaderNewLicenseeCode
    nop
    nop
    rlca
    db $eb
    ld hl, sp-$20
    ld d, a
    nop
    ccf
    ld e, e
    ld [bc], a
    ld hl, sp-$01
    ld [$00fb], sp
    cp [hl]
    ld c, [hl]
    ld [bc], a
    rst RST_18
    nop
    ld e, a
    nop
    rrca
    ccf
    add b
    rrca
    add b
    inc c
    nop
    inc e
    pop bc
    nop
    jp nz, $bf03

    cp $00
    ld a, [hl]
    nop
    jr nc, @+$3d

    ldh [rP1], a
    ld a, [hl-]
    sbc e
    jr nc, jr_039_410a

    and $05
    ld e, b

jr_039_40d5:
    ld e, h
    ldh a, [$ff0b]
    dec c
    ld bc, $eef0
    ld a, e
    nop
    di
    db $fc
    cp $0d
    ld [bc], a
    pop hl
    rst RST_38
    sbc [hl]
    cp l
    pop hl
    inc b
    ld bc, $00ff
    jr jr_039_40d5

    ld a, [de]
    inc bc
    sbc a
    inc bc
    rst RST_38

jr_039_40f3:
    rst RST_20
    ld bc, $6800
    ld bc, $010d
    sub h
    add hl, bc
    jr c, jr_039_40ff

    and h

jr_039_40ff:
    add hl, bc
    cp b
    and [hl]
    ld bc, $036c
    ld d, d
    ld bc, $fe81
    db $fc

jr_039_410a:
    ld de, $8300
    rst RST_18
    db $fc
    ld a, a
    add b
    rst RST_20
    ld hl, sp-$4a
    ld bc, $ff01
    rst RST_38
    inc bc
    di
    jr nz, jr_039_417c

    adc [hl]
    ld a, a
    ld hl, sp+$07
    ei
    sbc a
    ld a, a
    add hl, hl
    ld de, $fdc1
    nop
    ld hl, sp-$20
    ld a, a
    ldh a, [rP1]
    nop
    ld a, a
    ld a, a
    nop
    ld a, a
    ld b, d
    nop
    ld a, a
    or e
    jr nz, jr_039_40f3

    jr nc, @-$43

    jr nc, jr_039_4177

    ld b, e
    ld bc, $50ce
    ld bc, $5840
    ld d, b
    pop af
    ld [bc], a
    sub b
    dec d
    nop
    or $ff
    ld [hl], h
    add a
    ld b, $f7
    ld b, $07
    nop
    nop
    ei
    cp $fe
    db $db
    nop
    nop
    ld bc, $7d7c
    nop
    rst RST_38
    ld bc, $017d
    ld bc, $00c7
    ld a, [hl-]
    add sp, -$01
    ld l, h
    call nc, $d02f
    ld b, a
    cp h
    sbc c
    ld a, [hl]
    rst RST_18
    ld [hl], b
    rrca
    jp z, Jump_039_7c75

    db $dd
    nop

jr_039_4177:
    jr c, jr_039_4179

jr_039_4179:
    rst RST_38
    jr jr_039_417c

jr_039_417c:
    or b
    ld bc, $c100
    cp l
    ld [hl], d
    ei
    xor c
    sbc $e6
    dec b
    ld d, b
    jr jr_039_410a

    ret nz

    ld c, b
    rst RST_30
    add b
    push bc
    add [hl]
    ldh a, [rTIMA]
    jr @+$1e

    ld [$ff3c], sp
    nop
    inc h

jr_039_4199:
    nop
    ld [bc], a
    ld b, $f7
    halt
    add a
    di
    or $07
    xor h
    ld de, $2300
    inc bc
    ld a, e
    ld a, e
    inc bc
    rst RST_28
    ld a, e
    inc bc
    ld b, $77
    ld [$7720], sp
    halt
    rlca
    rst RST_38
    ld l, h
    rrca
    adc b
    ld a, a
    scf
    ld hl, sp-$2f
    and d
    rst RST_38
    ld d, d
    xor a

Call_039_41c0:
    jr z, jr_039_4199

    dec c
    ldh a, [$ffd1]
    ld h, d
    rst RST_38
    ld [hl], e
    call nz, $bf47
    ld a, $c1
    push de
    add sp, -$01
    ld h, d
    db $dd
    dec b
    ld a, [$36c9]
    rst RST_28
    db $10
    rst RST_38
    push bc
    ld a, [$a758]
    sub a
    add sp, -$4e
    ld c, l
    rst RST_38
    rst RST_08
    jr nc, @-$04

    add a
    inc sp
    call z, $ba45
    rst RST_38
    adc b
    ld [hl], a
    add b
    nop
    and h
    ld b, e
    or d
    ld h, c
    rst RST_38
    ld d, $21
    adc b
    daa
    rst RST_30
    nop
    xor e
    ld d, [hl]
    rst RST_38
    pop hl
    rra
    inc b
    ld a, d
    ld c, $f3
    rst RST_10
    add hl, sp
    rst RST_38
    ld h, d
    cp l
    and [hl]
    ld e, c
    and [hl]
    ld e, c
    and d
    ld e, h
    rst RST_38
    ld e, h
    ld [hl-], a
    or b
    cp d
    or b
    cp b
    jr nc, jr_039_4251

    rst RST_38
    ld h, d
    ld a, c
    ld h, b
    halt
    ld h, b
    halt
    ld h, d
    inc d
    rst RST_38
    call nz, Call_000_3032
    nop
    ld c, h
    ld sp, $2e1d
    rst RST_20
    daa
    jr jr_039_4249

    ld b, d
    nop
    db $d3
    db $10
    ld a, b
    ld h, h
    ld hl, sp-$01
    push de
    add sp, $79
    ret nz

    sub d
    ld h, c

jr_039_423b:
    cp d
    ld h, c

jr_039_423d:
    rst RST_30
    ei
    nop

jr_039_4240:
    call z, $0042
    ld l, e
    inc e
    ldh a, [c]
    inc e
    rst RST_38
    dec sp

jr_039_4249:
    call z, $c836
    sbc [hl]

jr_039_424d:
    nop
    adc h
    nop
    rst RST_38

jr_039_4251:
    stop
    ld a, l
    nop
    jr nc, jr_039_42a5

    xor $10
    rst RST_30
    ld [hl], l
    ld a, [bc]
    ld a, a
    pop de
    nop
    ld [$8000], sp
    nop
    rst RST_38
    jp z, Jump_000_0200

    ld de, $06c8
    call nc, $ef0b
    inc a
    inc bc
    dec [hl]
    ld a, [bc]
    inc b
    ld bc, $002e
    ld h, e
    ld e, a
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, b
    jr nc, jr_039_4251

    ld [hl+], a
    ld sp, $21da
    rst RST_38
    inc h
    dec d
    inc [hl]
    dec b
    inc d
    dec b
    dec d
    inc b
    cp $e6
    ld hl, $0435
    ld [hl], l
    inc b
    ld b, b
    ld b, b
    ld h, e
    rst RST_38
    ld h, b
    jr nz, jr_039_423b

    jr nz, jr_039_423d

    and e
    jr nz, jr_039_424d

    rst RST_18
    inc sp
    ret nc

    inc de
    db $d3
    db $10
    ld b, $25

jr_039_42a5:
    ld [hl], d
    add e
    rst RST_38
    nop

jr_039_42a9:
    push bc
    jr z, jr_039_4240

    nop
    ld [hl], b
    inc c
    ld l, [hl]
    rst RST_38
    inc c
    ld c, $0c
    ld l, [hl]
    ld e, b
    ld e, $58
    inc e
    db $fd
    jr @-$07

    db $10
    or b
    cp h
    daa
    db $db
    rst RST_38
    nop
    rst RST_38
    ld b, d
    adc l
    ld c, [hl]
    sbc a
    cp [hl]
    ld b, c
    xor $03
    rst RST_38
    rlca
    db $10
    inc bc

jr_039_42d0:
    and b
    ld d, $e9
    sub l
    ld l, e
    rst RST_38
    dec de
    rst RST_20
    jr nc, jr_039_42a9

    or h
    ld c, e
    rst RST_28
    nop
    rst RST_38
    pop bc
    ld [bc], a
    ld c, b
    and c
    ld c, b
    or b
    ld b, [hl]
    cp b
    rst RST_38
    inc c
    di
    sbc e
    ld h, h
    ei
    inc b
    adc c
    halt
    rst RST_38
    ret nc

    ld l, $3e
    call z, Call_000_3f41
    sbc [hl]
    ld h, c
    rst RST_38
    ld c, b
    or e
    ld h, l
    ld a, b
    add b
    call z, $c031
    rst RST_38
    ld a, [hl]
    ld [bc], a
    adc b
    inc [hl]
    sub [hl]
    ld l, b
    ld [bc], a
    cp $ff
    and d
    sbc h
    jr jr_039_42d0

    ld b, b
    ret nz

    ld b, c
    add b
    rst RST_38
    jr nz, jr_039_4317

jr_039_4317:
    add b
    add b
    ret nz

    db $e4
    ret nz

    ldh [c], a
    rst RST_38
    ret nz

    push hl
    nop
    ld [de], a
    nop
    ld [hl], b
    ld b, b
    ld [hl], h
    rst RST_38
    ld h, b
    ld [hl], b
    ld h, c
    ld [hl], c
    nop

jr_039_432c:
    jr jr_039_4335

    rla
    rst RST_38
    rrca
    rrca
    ld bc, $fe01

jr_039_4335:
    cp $05
    dec b
    db $dd
    ld d, h
    rst RST_20
    jr nz, jr_039_4340

    nop
    db $fc
    sub d

jr_039_4340:
    jr nc, jr_039_4335

    di
    rst RST_38
    ld l, h
    ld l, h
    sub e
    sub b
    db $e3
    ldh [rHDMA1], a
    ld b, d
    ld a, a
    xor e
    ld d, b
    rst RST_38
    nop
    add hl, de
    ld b, $0f
    add b
    jr nc, jr_039_43d6

    rra
    nop
    adc h
    inc bc
    add e
    nop
    ld [hl], c
    dec b
    nop
    rst RST_38
    ld b, [hl]
    cp c
    jr c, jr_039_432c

    ld [hl], d
    adc l
    rst RST_38
    nop
    rst RST_18

jr_039_436a:
    sub b
    ld l, a
    call nz, Call_000_043b
    cp e
    jr nz, jr_039_436a

    nop
    rst RST_38
    db $fc
    nop
    ld [hl+], a
    call c, Call_000_18e7
    adc a
    ld [hl], b
    rst RST_38
    daa
    ld hl, sp+$60
    ld sp, $3161
    ld h, b
    jr nc, jr_039_4405

    ld h, a
    scf
    ld l, a
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    call c, Call_000_2330
    nop
    inc b
    ldh [$ff36], a
    ld b, c
    nop
    ld b, c
    nop
    jr @-$45

    jr nz, @-$0b

    ld sp, $09ff
    nop
    sub $08
    dec b
    db $dd
    nop
    ld [$07ff], sp
    jp Jump_000_000f


    rst RST_00
    inc bc
    call nz, $ffe5
    ld [bc], a
    ld b, d
    and c
    nop
    db $e3
    pop hl
    nop
    ld d, $ff
    jp hl


    rst RST_08
    rst RST_38
    inc h
    rst RST_38
    ldh a, [c]
    rrca
    xor a
    ei
    ld d, b
    ld e, a
    inc bc
    db $10
    rst RST_38
    nop
    add c
    ld a, [hl]
    dec [hl]
    rst RST_38
    cp $01
    cp $d3
    inc l
    sbc $21
    inc hl
    ld a, [hl]
    daa

jr_039_43d6:
    nop
    add a
    ld a, b
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], a
    ld [hl-], a
    ld b, c
    rst RST_28
    ld h, e
    ld [hl], a
    ld h, a
    ld [hl], a
    jr nc, @+$42

    ld l, a
    nop
    rst RST_38
    db $e3
    rlca
    ld hl, sp+$04
    nop
    db $eb
    ld [hl-], a
    inc b
    ld bc, $a01b
    cp e
    rst RST_38
    nop
    dec de
    ld b, b
    ld e, a
    dec de
    ld b, b
    nop
    cp e
    jp $b803


    ld e, c
    ld b, b
    inc d
    inc de

jr_039_4405:
    ld e, d
    ld bc, $10b2
    ld bc, $cbe0
    rst RST_20
    ldh a, [$ff61]
    ld b, [hl]
    ld bc, $10b0
    dec b
    nop
    dec b
    nop
    rst RST_38
    nop
    add hl, de
    add hl, de
    or h
    cp l
    inc d
    ld a, h
    dec b
    rst RST_38
    ld [hl], l
    inc b
    dec [hl]
    nop
    jr jr_039_4436

    ld c, a
    adc a
    rst RST_38
    adc a
    rrca
    adc a
    rra
    ld e, a
    adc a
    adc a
    db $10
    cp a
    add b
    dec de
    ld b, e

jr_039_4436:
    sbc e
    add e
    cp $85
    db $10
    ld hl, sp-$21
    rlca
    ret nz

    ccf
    sbc a
    ld a, a
    cp b
    ld bc, $01fe
    call nz, Call_000_03a8
    add hl, hl
    ld de, $4b80
    ld b, $44
    add hl, bc
    cp b
    ld bc, $c03f
    db $e3
    ld bc, $2cfe
    ld bc, $0152
    and d
    ld b, c
    db $e3
    rra
    adc a
    xor h
    ld [hl], l
    db $10
    xor h
    ld b, c
    ldh [$ff1f], a
    ld b, d
    dec b
    cp $a9
    dec b
    db $10
    rst RST_38
    nop
    dec h
    jr jr_039_44ca

    rlca
    or a
    nop
    rrca
    xor $05
    nop
    rra
    ldh [rP1], a
    xor a
    db $10
    ldh a, [rP1]
    rlca
    rst RST_20
    ldh a, [$fff0]
    rrca
    inc d
    inc de
    jr @+$52

    ld a, $00
    inc bc
    rst RST_38
    ret nz

    ld bc, $e00c
    ldh [$ff0c], a
    db $fd
    nop
    rst RST_38
    ld a, [$fa00]
    sbc h
    inc bc
    di
    rrca
    rrca
    rst RST_28
    cp a
    ccf
    cp a
    rra
    jr c, jr_039_44f5

    rrca
    rst RST_08

jr_039_44a7:
    rrca
    pop hl
    adc a
    ld h, b
    ld b, h
    ld b, c
    ld d, [hl]
    ld e, h
    ld b, b
    ld d, c
    ld d, d
    ld a, [de]
    ld b, b
    ld e, d
    rst RST_38
    nop
    ld e, b
    ld bc, $03b8
    nop
    rra
    add b
    rst RST_38
    ccf
    rlca
    ld a, b
    rrca
    ld [hl], b
    ld e, $e0
    jr c, jr_039_44a7

    ret nz

    ld [hl], b

jr_039_44ca:
    add b
    ld h, e
    add b
    ld c, [hl]
    ld bc, $01fe
    sbc $28
    nop
    nop
    inc bc
    nop
    ret nz

    jp $0130


    push hl
    rst RST_38
    nop
    push af
    nop
    ld hl, sp-$7f
    ld a, c
    ret nz

    dec a
    rst RST_38
    ldh [rNR32], a
    ldh a, [$ff0e]
    ld a, d
    inc b
    nop
    add e
    rst RST_38
    nop
    ld b, c
    add b
    add c
    inc b
    add h

jr_039_44f5:
    ld [bc], a
    ld b, d
    rst RST_38
    add d
    add d

jr_039_44fa:
    ld [de], a
    sub d
    ld a, [bc]
    ld a, [de]
    add b
    ld a, a
    ld a, $74
    ld de, $0000
    db $fc
    inc bc
    pop hl
    push hl
    ld b, d
    halt
    ld bc, $4330
    ld b, b
    ld b, e
    inc b
    inc e
    ld b, b
    ld b, c
    inc e
    pop bc

jr_039_4516:
    cp $0a
    ld de, $01b0
    pop af
    pop hl
    pop de

jr_039_451e:
    ld d, b
    add sp, $41
    add d
    inc de
    cp [hl]
    add b
    cp [hl]
    add b
    db $fc
    jp hl


    ld d, c
    sub b
    dec d
    rrca
    ld h, b
    cpl
    ldh [$ff60], a
    rst RST_28
    sbc e
    ld h, b
    ldh [$ffa0], a
    rrca
    inc bc
    db $fc
    cp [hl]
    ld d, h
    or c
    ld [bc], a
    ret nz

    rst RST_38
    sbc $de
    ret nz

    sbc $c0
    ld h, b
    xor $60
    rst RST_38
    ldh [$ff60], a
    xor $6e
    ldh [$ff36], a
    ldh a, [$ff60]
    rst RST_08
    rst RST_28
    ld l, a
    ldh [$ff6f], a
    ei
    ld d, d
    jr nc, jr_039_45bc

    jr jr_039_4516

    ld a, a
    sbc e
    jr c, jr_039_44fa

    jr c, jr_039_4579

    cp e
    jr jr_039_45a9

    ld h, b
    cp $42
    ld h, c
    ld b, $ee
    and $0e
    and $0e
    ld b, $f3
    xor $06
    ld d, l
    ld h, b
    ld d, d
    ld h, c
    inc c
    ld e, h
    inc c

jr_039_4579:
    inc e
    rst RST_38
    dec c
    ld e, l
    ld b, $de
    ld b, $6e
    ld b, $6e
    rst RST_38
    ld b, [hl]
    ld a, [hl+]
    jp Jump_039_402c


    nop
    ld [hl+], a
    ld c, [hl]
    rst RST_38
    nop
    ld a, e
    ld hl, $7b4a
    add [hl]
    ld a, [bc]
    dec d
    rst RST_38
    dec d
    ld l, $43
    inc a
    nop
    add c
    jr nz, jr_039_451e

    rst RST_38
    pop bc
    inc b
    ld c, $cd
    inc b
    ei
    ld [hl], e
    sbc h
    rst RST_38
    nop

jr_039_45a9:
    db $fd
    nop
    cp $0b
    add hl, bc
    inc d
    add d
    rst RST_38
    ld bc, $72fc
    db $fc
    ld b, c
    or h
    jp nz, $ff11

    ld h, $50

jr_039_45bc:
    add h

jr_039_45bd:
    ld l, b
    add $ce
    ld b, $ce
    cp [hl]
    ld e, b
    ld h, b
    ld c, $06
    ld a, [bc]

jr_039_45c8:
    ld b, $8a
    xor d
    ld h, c
    pop bc
    rst RST_38
    inc a
    add c
    ld a, [hl]
    ld b, d
    cp l
    or b
    ld c, a
    call nc, Call_000_2bff
    cp b
    ld b, a
    ld [hl], l
    ld a, [bc]
    ld a, c
    nop
    jr nc, @+$01

    ld a, h
    ld b, [hl]
    ld a, a
    jr jr_039_45c8

    cp b
    ld b, [hl]
    ld [hl+], a

jr_039_45e8:
    rst RST_38
    db $dd
    inc l
    ld [de], a
    sub a
    jr z, jr_039_45bd

    stop
    rst RST_38
    dec b
    jr nz, jr_039_45fd

    ld b, b
    scf
    ld [hl], b
    adc a
    and d
    rst RST_38
    ld c, h
    push de

jr_039_45fd:
    ld [bc], a
    adc d
    ld bc, $0011
    ld b, $f7
    inc c
    ld b, $ec
    ldh [c], a
    ld h, c
    add $ee
    and $ee
    rst RST_38
    nop
    ld [$f606], sp
    ld sp, hl
    rlca
    rrca
    ld a, a
    ld l, $17
    ld d, c
    jp nz, $303d

    jr jr_039_466e

    or a
    ld b, d
    ld [bc], a
    ld d, b
    ld bc, $8367
    jr @-$73

    ld b, l
    ld h, d
    sub b
    dec d
    ldh [rTMA], a
    ld d, h
    ld h, e
    rst RST_38
    jr nc, @+$78

    jr nc, @+$72

    jr nc, jr_039_46ac

    ld a, [de]
    ld a, b
    rst RST_38
    ld a, [de]
    jr c, jr_039_4654

    ld a, [hl-]
    jr @+$3a

    inc c
    inc a
    ld a, [hl]
    ld [hl], $67
    ld h, b
    rst RST_28
    jr nz, jr_039_45e8

    nop
    inc c
    ld b, [hl]
    ld h, a
    cp a
    jr @-$43

    db $10
    jr nc, jr_039_4655

    jr nz, jr_039_46aa

jr_039_4654:
    ld h, a

jr_039_4655:
    ld b, $ff
    xor $04
    inc c
    nop
    ld [bc], a
    inc bc
    ld h, $23
    rst RST_38
    ld b, a
    inc bc
    add a
    nop
    ld c, b
    nop
    xor [hl]
    ld [bc], a
    cp $a5
    ld h, b
    add [hl]
    adc [hl]
    ld c, b

jr_039_466e:
    scf
    ld d, [hl]
    inc hl
    ld b, l
    rst RST_38
    ld [hl-], a
    nop
    inc hl
    jr nz, jr_039_467a

    db $10
    ld [bc], a

jr_039_467a:
    ld [hl], h
    rst RST_38
    ld [bc], a
    ldh [c], a
    ld [$b845], sp
    ldh a, [$ff03]
    ret nz

    rst RST_38
    ld c, $0c
    ld [hl], e
    or h
    adc e
    ld h, h
    rla
    pop bc
    rst RST_38
    ld a, $07
    ld e, $91
    ld a, h
    add b
    cp [hl]
    ret z

    rst RST_38
    ld [hl], $1b
    db $e4
    ld [hl-], a
    call nz, Call_000_00e4
    ld h, b
    rst RST_38
    inc b
    add hl, bc
    ld c, b
    ld b, $8a
    add [hl]
    adc d
    ld b, $ff
    ld a, [bc]

jr_039_46aa:
    and $ea

jr_039_46ac:
    or $f0
    ld b, $f0
    ld b, $fa
    rst RST_18
    ld h, b
    ld h, e
    ld b, d
    nop
    cp h
    nop
    pop hl
    ld e, $fe
    rst RST_38
    ld bc, $7f80
    ld a, a
    add b
    call nz, Call_000_183b
    xor $79
    ld d, b
    ld a, [bc]
    nop
    inc [hl]
    cp e
    jr nz, @+$0a

    sub [hl]
    nop
    cp [hl]
    ld a, e
    nop
    ld b, b
    nop
    ld de, $3060
    ld b, d
    nop
    ld [bc], a
    rst RST_38
    ld bc, $245b
    scf
    ret z

    pop bc
    ld a, $f8
    db $fc
    ld d, e
    ld [bc], a
    ld a, [de]
    rlca
    ld a, h
    inc bc
    and b
    rra
    rra
    rst RST_08
    rst RST_38
    rst RST_20
    rst RST_28
    di
    rst RST_30
    ld sp, hl
    ei
    db $fc
    db $fd
    inc bc
    cp $fe
    dec e
    add b
    dec [hl]
    rst RST_38
    ldh a, [c]
    db $fd
    add b
    rst RST_38
    rlca
    ld hl, sp+$3d
    cp $ff
    cp $07
    nop
    rst RST_38
    add a
    ld a, b
    rst RST_38
    nop
    rst RST_38
    nop
    cp $23
    ret c

    rst RST_38
    nop
    rrca
    ldh a, [rIE]
    rlca
    ldh [$ff03], a
    db $fc
    cp $00
    ldh [rP1], a
    rst RST_38
    ret nz

    ret nz

    rst RST_08
    rst RST_08
    nop
    ccf
    ld a, a
    ld a, a
    rst RST_20
    rst RST_38
    rst RST_38
    nop
    ld c, $00
    inc l
    ld bc, $80ff
    rlca
    rst RST_30
    rst RST_38
    rst RST_38
    db $fc
    jr z, jr_039_4744

    rra
    ldh a, [rIE]
    rst RST_38
    ld sp, hl
    rlca
    ld c, $00

jr_039_4744:
    dec hl
    ld [bc], a
    inc bc
    ld bc, $f1f3
    nop
    rra
    db $fc
    cp $fe
    rst RST_38
    ccf
    ld a, [hl+]
    inc bc
    jr z, @+$09

    ld a, [hl+]
    nop
    inc d
    add hl, hl
    nop
    ld h, b
    ld c, $c0
    ld h, d
    inc c
    ld a, a
    ld h, d
    dec bc
    ld l, b
    rlca
    jr z, jr_039_4766

jr_039_4766:
    jr z, jr_039_47c6

    ld bc, $06af
    xor l
    inc bc
    cp $bd
    ld [bc], a
    ld hl, sp+$29
    ld [bc], a
    xor b
    ld [bc], a
    ld l, h
    xor a
    ld [$01a7], sp
    rst RST_08
    sbc a
    ldh [$ff0b], a
    db $fd
    ei
    ldh a, [$ff0b]
    ld b, a
    ld bc, $e0fe
    cp a
    ld [bc], a
    xor a
    inc bc
    daa
    ld bc, $191f
    nop
    ld c, c
    ret nz

    ld [hl], $01
    and a
    dec b
    ld a, a
    ld [hl+], a
    ld de, $0025
    ld a, a
    ld e, [hl]
    ld [bc], a
    ld h, $a1
    ld a, [bc]
    rst RST_38
    db $fc
    jr nc, jr_039_47c0

    inc l
    ld bc, $52fe
    ld de, $0055
    and c
    cp $40
    ld bc, $07b6
    ld e, d
    dec b
    cp b
    inc b
    ldh a, [rOCPS]
    ld a, [de]
    add b
    inc e
    ld c, b
    dec b
    or [hl]
    inc b
    ccf
    rst RST_38

jr_039_47c0:
    rra
    ld a, [hl+]
    inc b
    ld l, e
    inc bc
    ld h, h

jr_039_47c6:
    inc b
    db $fd
    nop
    inc h
    nop
    rra
    cp a
    rrca
    rst RST_18
    rlca
    rst RST_28
    cp e
    inc bc
    rst RST_30
    xor l
    add hl, bc
    cp $ff
    ldh a, [$ffb9]
    inc b
    ld bc, $fef1
    ld b, h
    nop
    push de
    rrca
    pop hl
    inc b
    rst RST_18
    sbc a
    rst RST_38
    and b
    ld a, c
    ld b, b
    add hl, hl
    db $10
    di
    ld d, $40
    db $fd
    inc bc
    inc bc
    pop de
    add hl, bc
    rst RST_28
    inc bc
    ld b, b
    nop
    ret nz

    pop hl
    ld a, [bc]
    dec b
    rlca
    dec c
    call nz, Call_000_0af1
    db $ec
    inc de
    ret nz

    xor a
    ld b, $f0
    ld [bc], a
    ld bc, $3728
    ld [hl], a
    cp $50
    dec hl
    jr nc, jr_039_4888

    ld [hl-], a
    ld [hl], l
    scf
    ld [hl], b
    ld [hl-], a
    ld [hl], e
    ld [hl], b
    jr nc, jr_039_487d

    jr nz, @+$6c

    ld hl, $1010
    rst RST_10
    ld [hl], d
    ld hl, $57df
    sub a
    ld d, a

jr_039_4826:
    sub a
    rst RST_10
    ld a, d
    ld hl, $9717
    ld a, d
    add b
    inc h
    ld d, a
    adc b
    inc h
    rst RST_10
    rla
    rst RST_10
    ld d, a
    sub e

jr_039_4837:
    jr nz, jr_039_4837

    ld [hl], d
    ld hl, $d7d3
    ret nc

    rst RST_10
    add sp, -$18
    db $eb
    jp c, Jump_000_22a2

    jp hl


    and a
    inc h
    jr nc, jr_039_48ba

    or b
    dec hl
    db $10
    db $10
    ld a, l
    ret nc

    jp nz, Jump_039_5021

    sub b
    ld d, b
    sub b
    ret nc

    jp z, $9321

    db $10
    sub b
    ret nc

    inc h
    ret c

    jr z, jr_039_48b1

    db $e4
    jr nz, jr_039_4826

    ld [hl+], a
    ret nc

    ld a, e
    rst RST_10
    ret nc

    and a
    ld d, $00
    ld b, $01
    rlca
    ld c, c
    ld [bc], a
    db $dd
    inc bc
    ld bc, $1830
    rlca
    rra
    inc l
    inc de
    rst RST_38
    inc c
    cp l

jr_039_487d:
    xor $10
    dec sp
    ld [$0be8], sp
    db $eb
    ld [hl+], a
    ld sp, $5e09

jr_039_4888:
    daa
    inc [hl]
    ld [$08eb], sp
    jp hl


    ld [hl-], a
    ld [hl-], a
    add sp, $38
    inc [hl]
    rst RST_38
    ld [$e808], sp
    ld [$0a0a], a
    ld [$07eb], a
    dec bc
    dec bc
    db $eb
    ld c, b
    ld sp, $001d
    add b
    rst RST_38
    db $e3
    rra
    db $fc
    inc bc
    rst RST_38
    nop
    rst RST_38
    nop
    cp a
    ld hl, sp+$07

jr_039_48b1:
    rst RST_00
    ccf
    ccf
    rst RST_38
    dec c
    ld bc, $7f1f
    rst RST_38

jr_039_48ba:
    cp $01
    adc a
    ld a, a
    ld [hl], e
    db $fc
    dec c
    ld [bc], a
    cp $0d
    ld [bc], a
    inc a
    rst RST_38
    db $e3
    db $fc
    rst RST_38
    nop
    rrca
    ei
    ldh a, [$fff8]
    dec c
    nop
    ld h, e
    ld a, b
    ld h, b
    ld a, b
    ld h, b
    sbc a
    ld a, e
    ld h, c
    ld a, d
    ld h, e
    ld a, b
    jr nc, jr_039_48e1

    daa
    nop
    nop

jr_039_48e1:
    pop bc
    nop
    dec c
    ld [bc], a
    inc bc
    nop
    ld b, e
    nop
    dec b
    nop
    add hl, hl
    nop
    ret nz

    rst RST_38
    cp $19
    ld bc, $0000
    inc bc
    db $fc
    ld a, a
    rst RST_38
    add c
    scf
    ld a, a
    rst RST_38
    nop
    inc d
    ld bc, $ffff
    inc l
    ld bc, $010d
    rst RST_30
    ldh [$ff1f], a
    rra
    ld [hl], c
    ld bc, $1fff
    ldh [$fff7], a
    ld a, $6c
    dec b
    rst RST_38
    ret nz

    rst RST_38
    ccf
    ret nz

    inc b
    ld bc, $0b32
    db $e3
    ld h, c
    ld a, d
    ld b, d
    dec b
    ld d, b
    ld bc, HeaderNewLicenseeCode
    nop
    nop
    rlca
    db $eb
    ld hl, sp-$20
    ld d, a
    nop
    ccf
    ld e, e
    ld [bc], a
    ld hl, sp-$01
    ld [$00fb], sp
    cp [hl]
    ld c, [hl]
    ld [bc], a
    rst RST_18
    nop
    ld e, a
    nop
    rrca
    ccf
    add b
    rrca
    add b
    inc c
    nop
    inc e
    pop bc
    nop
    jp nz, $bf03

    cp $00
    ld a, [hl]
    nop
    jr nc, @+$3d

    ldh [rP1], a
    ld a, [hl-]
    sbc e
    jr nc, jr_039_498c

    and $05
    ld e, b

jr_039_4957:
    ld e, h
    ldh a, [$ff0b]
    dec c
    ld bc, $eef0
    ld a, e
    nop
    di
    db $fc
    cp $0d
    ld [bc], a
    pop hl
    rst RST_38
    sbc [hl]
    cp l
    pop hl
    inc b
    ld bc, $00ff
    jr jr_039_4957

    ld a, [de]
    inc bc
    sbc a
    inc bc
    rst RST_38

jr_039_4975:
    rst RST_20
    ld bc, $6800
    ld bc, $010d
    sub h
    add hl, bc
    jr c, jr_039_4981

    and h

jr_039_4981:
    add hl, bc
    cp b
    and [hl]
    ld bc, $036c
    ld d, d
    ld bc, $fe81
    db $fc

jr_039_498c:
    ld de, $8300
    rst RST_18
    db $fc
    ld a, a
    add b
    rst RST_20
    ld hl, sp-$4a
    ld bc, $ff01
    rst RST_38
    inc bc
    di
    jr nz, jr_039_49fe

    adc [hl]
    ld a, a
    ld hl, sp+$07
    ei
    sbc a
    ld a, a
    add hl, hl
    ld de, $fdc1
    nop
    ld hl, sp-$20
    ld a, a
    ldh a, [rP1]
    nop
    ld a, a
    ld a, a
    nop
    ld a, a
    ld b, d
    nop
    ld a, a
    or e
    jr nz, jr_039_4975

    jr nc, @-$43

    jr nc, jr_039_49f9

    ld b, e
    ld bc, $50ce
    ld bc, $5840
    ld d, b
    pop af
    ld [bc], a
    sub b
    dec d
    nop
    or $ff
    ld [hl], h
    add a
    ld b, $f7
    ld b, $07
    nop
    nop
    ei
    cp $fe
    db $db
    nop
    nop
    ld bc, $7d7c
    nop
    rst RST_38
    ld bc, $017d
    ld bc, $00c7
    ld a, [hl-]
    add sp, -$01
    ld l, h
    call nc, $d02f
    ld b, a
    cp h
    sbc c
    ld a, [hl]
    rst RST_18
    ld [hl], b
    rrca
    jp z, Jump_039_7c75

    db $dd
    nop

jr_039_49f9:
    jr c, jr_039_49fb

jr_039_49fb:
    rst RST_38
    jr jr_039_49fe

jr_039_49fe:
    or b
    ld bc, $c100
    cp l
    ld [hl], d
    ei
    xor c
    sbc $e6
    dec b
    ld d, b
    jr jr_039_498c

    ret nz

    ld c, b
    rst RST_30
    add b
    push bc
    add [hl]
    ldh a, [rTIMA]
    jr @+$1e

    ld [$ff3c], sp
    nop
    inc h

jr_039_4a1b:
    nop
    ld [bc], a
    ld b, $f7
    halt
    add a
    di
    or $07
    xor h
    ld de, $2300
    inc bc
    ld a, e
    ld a, e
    inc bc
    rst RST_28
    ld a, e
    inc bc
    ld b, $77
    ld [$7720], sp
    halt
    rlca
    rst RST_38
    ld l, h
    rrca
    adc b
    ld a, a
    scf
    ld hl, sp-$2f
    and d
    rst RST_38
    ld d, d
    xor a
    jr z, jr_039_4a1b

    dec c
    ldh a, [$ffd1]
    ld h, d
    rst RST_38
    ld [hl], e
    call nz, $bf47
    ld a, $c1
    push de
    add sp, -$01
    ld h, d
    db $dd
    dec b
    ld a, [$36c9]
    rst RST_28
    db $10
    rst RST_38
    push bc
    ld a, [$a758]
    sub a
    add sp, -$4e
    ld c, l
    rst RST_38
    rst RST_08
    jr nc, @-$04

    add a
    inc sp
    call z, $ba45
    rst RST_38
    adc b
    ld [hl], a
    add b
    nop
    and h
    ld b, e
    or d
    ld h, c
    rst RST_38
    ld d, $21
    adc b
    daa
    rst RST_30
    nop
    xor e
    ld d, [hl]
    rst RST_38
    pop hl
    rra
    inc b
    ld a, d
    ld c, $f3
    rst RST_10
    add hl, sp
    rst RST_38
    ld h, d
    cp l
    and [hl]
    ld e, c
    and [hl]
    ld e, c
    and d
    ld e, h
    rst RST_38
    ld e, h
    ld [hl-], a
    or b
    cp d
    or b
    cp b
    jr nc, jr_039_4ad3

    rst RST_38
    ld h, d
    ld a, c
    ld h, b
    halt
    ld h, b
    halt
    ld h, d
    inc d
    rst RST_38
    call nz, Call_000_3032
    nop
    ld c, h
    ld sp, $2e1d
    rst RST_20
    daa
    jr jr_039_4acb

    ld b, d
    nop
    db $d3
    db $10
    ld a, b
    ld h, h
    ld hl, sp-$01
    push de
    add sp, $79
    ret nz

    sub d
    ld h, c
    cp d
    ld h, c
    rst RST_30
    ei
    nop
    call z, $0042
    ld l, e
    inc e
    ldh a, [c]
    inc e
    rst RST_38
    dec sp

jr_039_4acb:
    call z, $c836
    sbc [hl]
    nop
    adc h
    nop
    rst RST_38

jr_039_4ad3:
    stop
    ld a, l
    nop
    jr nc, jr_039_4b27

    xor $10
    rst RST_30
    ld [hl], l
    ld a, [bc]
    ld a, a
    pop de
    nop
    ld [$8000], sp
    nop
    rst RST_38
    jp z, Jump_000_0200

    ld de, $06c8
    call nc, $ef0b
    inc a
    inc bc
    dec [hl]
    ld a, [bc]
    inc b
    ld bc, $002e
    ld h, e
    ld e, a
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, b
    jr nc, jr_039_4ad3

    ld [hl+], a
    ld sp, $21da
    db $fd
    add b
    ld h, e
    nop
    ld [hl], c
    adc [hl]
    inc bc
    db $fc
    or b
    ld c, a
    rst RST_38
    rst RST_08
    jr nc, @+$80

    add c
    inc bc
    db $fc
    jp $fefc


    halt
    nop
    nop
    inc b
    ei
    ld e, e
    and h
    add b
    ld a, a
    ld sp, hl
    jr nc, jr_039_4b7d

    nop
    ld b, $25
    ld [hl], d

jr_039_4b27:
    add e
    nop
    push bc
    jr z, @+$01

    sub h
    nop
    ld [hl], b
    inc c
    ld l, [hl]
    inc c
    ld c, $0c
    cp a
    ld l, [hl]
    ld e, b
    ld e, $58
    inc e
    jr @-$07

    db $10
    or b
    rst RST_38
    cp h
    daa
    db $db
    rst RST_38
    nop
    ld b, d
    adc l
    ld c, [hl]
    rst RST_38
    sbc a
    cp [hl]
    ld b, c
    xor $03
    rlca
    db $10
    inc bc
    rst RST_38
    and b
    ld d, $e9
    sub l
    ld l, e
    dec de
    rst RST_20
    jr nc, @+$01

    rst RST_08
    or h
    ld c, e
    rst RST_28
    nop
    pop bc
    ld [bc], a
    ld c, b
    rst RST_38
    and c
    ld c, b
    or b
    ld b, [hl]
    cp b
    inc c
    di
    sbc e
    rst RST_38
    ld h, h
    ei
    inc b
    adc c
    halt
    ret nc

    ld l, $3e
    rst RST_38
    call z, Call_000_3f41
    sbc [hl]
    ld h, c
    ld c, b
    or e
    ld h, l

jr_039_4b7d:
    rst RST_38
    ld a, b
    add b
    call z, $c031
    ld a, [hl]
    ld [bc], a
    adc b
    rst RST_38
    inc [hl]
    sub [hl]
    ld l, b
    ld [bc], a
    cp $a2
    sbc h
    jr @+$01

    ret nz

    ld b, b
    ret nz

    ld b, c
    add b
    jr nz, jr_039_4b97

jr_039_4b97:
    add b
    rst RST_38
    add b
    ret nz

    db $e4
    ret nz

    ldh [c], a
    ret nz

    push hl
    nop
    rst RST_38
    ld [de], a
    nop
    ld [hl], b
    ld b, b
    ld [hl], h
    ld h, b
    ld [hl], b
    ld h, c
    rst RST_38
    ld [hl], c
    nop

jr_039_4bad:
    jr jr_039_4bbe

    db $10
    rrca
    nop
    ccf
    rst RST_38
    nop
    rra
    nop
    dec sp
    inc b
    ldh a, [rIF]
    rst RST_28
    ei
    rra

jr_039_4bbe:
    bit 1, [hl]
    ld [bc], a
    rst RST_38
    nop
    db $fd
    ld [bc], a
    ld c, h
    rst RST_38
    or e
    ld h, e
    sbc h
    inc e
    db $e3
    xor e
    ld d, b
    rst RST_38
    rst RST_38
    nop
    ld sp, hl
    ld b, $ff
    nop
    ret nz

    ccf
    rlca
    cp a
    ld hl, sp-$04
    inc bc
    inc sp
    ret z

    ld [hl], c
    dec b
    nop
    ld b, [hl]
    rst RST_38
    cp c
    jr c, jr_039_4bad

    ld [hl], d
    adc l
    rst RST_38
    nop
    sub b

jr_039_4beb:
    rst RST_28
    ld l, a
    call nz, Call_000_043b
    cp e
    jr nz, jr_039_4beb

    nop
    db $fc
    rst RST_38
    nop
    ld [hl+], a
    call c, Call_000_18e7
    adc a
    ld [hl], b
    daa
    rst RST_38
    ld hl, sp+$60
    ld sp, $3161
    ld h, b
    jr nc, jr_039_4c6e

    ccf
    scf
    ld l, a
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    call c, Call_000_0630
    ld bc, $c0e7
    ccf
    inc bc
    or a
    nop
    ld a, [de]
    inc bc
    add b
    ld a, a
    rlca
    xor c
    rst RST_38
    add hl, hl
    inc d
    dec c
    nop
    cp $04
    nop
    jp Jump_000_30ef


    ccf
    rst RST_20
    ret nz

    add b
    ld a, a
    daa
    nop
    ld e, d
    nop
    ld d, $e9
    rst RST_08
    rst RST_38
    rst RST_38
    inc h
    rst RST_38
    ldh a, [c]
    rrca
    xor a
    ld d, b
    ld e, a
    cp $03
    db $10
    rst RST_38
    nop
    add c
    ld a, [hl]
    dec [hl]
    cp $01
    cp a
    cp $d3
    inc l
    sbc $21
    inc hl
    daa
    nop
    add e
    rst RST_18
    ld a, h
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], a
    ld [hl-], a
    ld b, c
    ld h, e
    ld [hl], a
    sbc e

jr_039_4c5d:
    ld h, a
    ld [hl], a
    jr nc, jr_039_4ca1

    ld l, a
    cp $85
    db $10
    ldh [c], a
    ld sp, $4d9f
    ld a, a
    cp b
    ld bc, $01fe

jr_039_4c6e:
    xor b
    inc bc
    add hl, hl
    ld de, $4b80
    ld b, $3c
    ld b, h
    add hl, bc
    cp b
    ld bc, $c03f
    ld bc, $2cfe
    ld bc, $0152
    adc $42
    ld b, c
    db $e3
    rra
    adc a
    ld [hl], l
    db $10
    ld c, h
    ld b, c
    ldh [$ff1f], a
    jr nc, @+$44

    dec b
    cp $30
    xor e
    inc b
    and d
    dec c
    inc bc
    db $fc
    inc e
    ld b, b
    xor l
    ld b, $ff
    ret nz

    sbc $de

jr_039_4ca1:
    ret nz

    sbc $c0
    ld h, b
    xor $ff
    ld h, b
    ldh [$ff60], a
    xor $6e
    ldh [$ff36], a
    ldh a, [rIE]
    ld h, b
    rst RST_28
    ld l, a
    ldh [$ff6f], a
    ldh [$ff60], a
    rst RST_28
    db $fc
    ret z

    ld b, b
    pop de
    ld b, d
    jr @-$43

    sbc e
    jr c, jr_039_4c5d

    jr c, @-$17

    jr @-$43

    jr @-$19

    ld b, b
    ldh [c], a
    ld b, c
    ld b, $ee
    and $3f
    ld c, $e6
    ld c, $06
    xor $06
    push af
    ld b, b
    ldh a, [c]
    ld b, c
    rst RST_38

jr_039_4cda:
    ld a, $c0
    dec b
    ld hl, sp-$08
    di
    rst RST_20
    rst RST_30
    rst RST_38
    rst RST_08
    rst RST_28
    sbc a
    rst RST_18
    ccf
    cp a
    ld a, a
    ld a, a
    rst RST_18
    rra
    nop
    ldh a, [rIF]
    inc bc
    ld a, [de]
    rlca
    rst RST_38
    add a
    ld sp, hl
    ld a, b
    halt
    ld b, e
    ld a, [de]
    dec b

jr_039_4cfb:
    sbc h
    inc bc
    di
    rrca
    rrca
    or $15
    ld e, b
    add b
    ld a, a
    ld [hl], h
    ld de, $0000
    db $fc
    inc bc
    adc c
    pop hl
    add l
    ld b, d
    halt
    ld bc, $41f8
    ld b, $b4
    ld b, h
    ld b, l
    jr jr_039_4cda

    adc c
    cp $0a
    ld de, $01b0
    pop hl
    ld [hl], c
    ld d, b
    adc b
    ld b, c
    add d
    inc de
    cp [hl]
    rst RST_20
    add b
    cp [hl]
    add b
    adc c
    ld d, c
    sub b
    dec d
    rrca
    ld h, b
    cpl
    sbc h
    push de
    ld b, d
    sub b
    dec d
    add e
    jr @-$73

    push hl
    ld b, d
    sub b
    dec d
    ldh [$fffd], a
    ld b, $f4
    ld b, e
    jr nc, jr_039_4dbb

    jr nc, jr_039_4db7

    jr nc, @+$78

    rst RST_38
    ld a, [de]
    ld a, b
    ld a, [de]
    jr c, jr_039_4d67

    ld a, [hl-]
    jr @+$3a

    ei
    inc c
    inc a
    sub $47
    ld h, b
    rst RST_28
    jr nz, jr_039_4cfb

    nop
    db $fd
    inc c
    and $47
    jr @-$43

    db $10
    jr nc, @+$05

jr_039_4d65:
    jr nz, jr_039_4d65

jr_039_4d67:
    or $47
    ld b, $ee

Call_039_4d6b:
    inc b
    inc c
    nop
    ld [bc], a
    inc c
    rst RST_38
    ld e, h
    inc c
    inc e
    dec c
    ld e, l
    ld b, $de
    ld b, $ff
    ld l, [hl]
    ld b, $6e
    ld b, [hl]
    ld a, [hl+]
    jp Jump_039_402c


    rst RST_38
    nop
    ld [hl+], a
    ld c, [hl]
    nop
    ld a, e
    ld hl, $7b4a
    rst RST_38
    add [hl]
    ld a, [bc]
    dec d
    dec d
    ld l, $43
    inc a
    nop
    rst RST_38
    add c
    jr nz, @-$7e

    pop bc
    inc b
    ld c, $cd
    inc b
    rst RST_38
    ei
    ld [hl], e
    sbc h
    nop
    db $fd
    nop
    cp $0b
    rst RST_38
    add hl, bc
    inc d
    add d
    ld bc, $72fc
    db $fc
    ld b, c
    rst RST_38
    or h
    jp nz, Jump_000_2611

    ld d, b
    add h
    ld l, b

jr_039_4db7:
    add $f7
    adc $06

jr_039_4dbb:
    adc $f8
    ld b, b
    ld c, $06
    ld a, [bc]

jr_039_4dc1:
    ld b, $fd
    adc d
    ld c, d
    ld h, c
    pop bc
    inc a
    add c
    ld a, [hl]
    ld b, d
    cp l
    rst RST_38
    or b
    ld c, a
    call nc, $b82b
    ld b, a
    ld [hl], l
    ld a, [bc]
    rst RST_38
    ld a, c

jr_039_4dd7:
    nop
    jr nc, jr_039_4e56

    ld b, [hl]
    ld a, a
    jr jr_039_4dc1

    rst RST_38
    cp b
    ld b, [hl]
    ld [hl+], a
    db $dd
    inc l
    ld [de], a
    sub a
    jr z, @+$01

    adc $10
    nop
    dec b
    jr nz, jr_039_4df6

    ld b, b
    scf
    rst RST_38
    ld [hl], b
    adc a
    and d
    ld c, h
    pop bc

jr_039_4df6:
    ld [bc], a
    add b
    dec e
    rst RST_38
    nop
    ld e, $31
    nop
    ld [hl], e
    nop
    db $e3
    nop
    rst RST_38
    ldh [$ff03], a
    db $e4
    inc bc
    add $01
    ret nz

    rlca
    rst RST_38
    add a
    nop
    ld [bc], a
    ld [bc], a
    add $06
    push bc
    inc b
    rst RST_38
    inc b
    push bc
    inc b
    push bc
    inc c
    call $cb08
    sbc a
    rrc b
    jr nz, jr_039_4e42

    xor b
    and c
    ld h, b
    and c
    ld h, d
    xor b
    adc a
    jr nz, jr_039_4dd7

    xor [hl]
    jr nz, jr_039_4e42

    inc de
    ld e, d
    ld bc, $1082
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

jr_039_4e42:
    db $dd
    ret nz

    dec e
    ret


    ld h, b
    pop af
    nop
    ld [hl], e
    nop
    or h
    ld h, e
    inc d
    inc de
    nop
    rst RST_38
    cp $fe
    rst RST_18
    db $fc
    db $fd

jr_039_4e56:
    db $fc
    db $fd
    ld hl, sp-$18
    ld h, b
    ldh a, [$fff3]
    ei
    ldh a, [$fff1]
    adc c
    ld hl, $0300
    nop
    jr nc, jr_039_4e6e

    rst RST_30
    rlca
    jr nc, @-$3f

    ret


    nop
    ld e, a

jr_039_4e6e:
    inc bc
    ld h, $23
    rst RST_38
    ld b, a
    inc bc
    add a
    nop
    ld c, b
    nop
    xor [hl]
    ld [bc], a
    cp $45
    ld h, b
    add [hl]
    adc [hl]
    ld c, b
    scf
    ld d, [hl]
    inc hl
    ld b, l
    rst RST_38
    ld [hl-], a
    nop
    inc hl
    jr nz, jr_039_4e8c

    db $10
    ld [bc], a

jr_039_4e8c:
    ld [hl], h
    rst RST_38
    ld [bc], a
    ldh [c], a
    ld [$b845], sp
    ldh a, [$ff03]
    ret nz

    rst RST_38
    ld c, $0c
    ld [hl], e
    or h
    adc e
    ld h, h
    rla
    pop bc

jr_039_4e9f:
    rst RST_38
    ld a, $07
    ld e, $91
    ld a, h
    add b

jr_039_4ea6:
    cp [hl]
    ret z

    rst RST_38
    ld [hl], $1b
    db $e4
    ld [hl-], a
    call nz, Call_000_00e4
    ld h, b
    rst RST_38

jr_039_4eb2:
    inc b
    add hl, bc
    ld c, b
    ld b, $8a
    add [hl]
    adc d
    ld b, $ff
    ld a, [bc]
    and $ea
    or $f0
    ld b, $f0
    ld b, $f7
    nop
    ld b, $0c
    adc c
    ld hl, $003c
    ldh [rNR34], a
    rst RST_38
    db $fc
    nop
    add b
    ld a, h
    ld a, b
    add b
    ret nz

    add hl, sp
    db $fc
    ld [hl], d
    ld b, b
    ld h, d
    ld [hl], b
    rst RST_08
    rst RST_08
    ld [hl], $36
    add hl, bc
    add hl, bc
    rst RST_38
    add a
    rlca
    ld a, [bc]
    ld [bc], a
    nop
    jr @-$1e

    add sp, -$01
    ldh a, [$fff0]
    add b
    add b
    ld a, a
    ld a, a
    and b
    and b
    rst RST_28
    cpl
    jr nz, jr_039_4ea6

    jr nz, jr_039_4eb2

    jr nz, jr_039_4e9f

    jr jr_039_4f17

    xor a
    ldh [$ffed], a
    nop
    ldh a, [rTIMA]
    ld [bc], a
    nop
    push de
    db $10
    db $10
    cp $92
    ld [hl], d
    sub b
    nop
    ld l, e
    db $10
    and b
    cp e
    nop
    di
    nop
    jr nz, @-$5e

    halt

jr_039_4f17:
    rst RST_10
    ld h, d
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
    call z, $c160
    ld [hl], d
    ld e, b
    ld [bc], a
    sbc a
    ld e, d
    nop
    ld a, [de]
    add b
    dec e
    adc e
    ld [bc], a
    ret nc

    ld a, c
    ldh a, [rIE]
    ldh a, [c]
    pop af
    pop af
    ldh a, [$fff1]
    ld hl, sp-$06
    pop af
    rst RST_38
    pop af
    ld [$d801], sp
    jp nz, $c1d9

    nop
    rst RST_38
    and b
    nop
    nop
    sbc b
    sbc b
    dec l
    cp l
    jr z, @+$81

    ld a, $a0
    xor [hl]
    jr nz, @-$52

    nop
    jr jr_039_4f7d

    add b
    ld [hl], $ff
    nop
    nop
    nop
    rrca
    nop
    ldh [rIF], a
    rrca
    rst RST_30
    ldh a, [rIE]
    nop
    add hl, bc
    ld bc, $00f0
    pop bc
    nop
    rst RST_38
    add d
    ld bc, $2081
    ld hl, $4240

jr_039_4f7d:
    ld b, c
    rst RST_38
    ld b, c
    ld c, b
    ld c, c
    ld d, b
    ld e, b
    add b
    and a
    nop
    rst RST_38
    xor a
    nop
    rra
    add c
    sbc [hl]
    inc bc
    cp h
    rlca
    cp a
    jr c, jr_039_4fa2

    ld [hl], b
    ld e, [hl]
    jr nz, @+$01

    jr nc, jr_039_4f9b

    ld a, a
    rst RST_18

jr_039_4f9b:
    rst RST_38
    rrca
    rst RST_38
    nop
    nop
    jr nc, jr_039_4fa3

jr_039_4fa2:
    db $fc

jr_039_4fa3:
    cp $ff
    ld hl, sp-$03
    ldh a, [$fffb]
    ldh [$fff7], a
    ret nz

    rst RST_28
    cp $3a
    inc bc
    ret nz

    ret nz

    rst RST_08
    rst RST_08
    nop
    ccf
    ld a, a
    ld [hl], e
    ld a, a
    rst RST_38
    add hl, bc
    ld bc, $025c
    rst RST_38
    add b
    rlca
    ld a, $00
    ld a, $58
    ld [$f01f], sp
    rst RST_38
    rst RST_38
    rlca
    add hl, sp
    ld bc, $015c
    rst RST_38
    inc bc
    ld bc, $f1f3
    nop
    db $fc
    cp $fe
    add e
    rst RST_38
    ccf
    ld e, d
    inc bc
    ld e, b
    rlca
    ld a, [bc]
    ld [bc], a
    jr nc, jr_039_4fe3

jr_039_4fe3:
    sub d
    inc c
    ret nz

    jp nz, $0c92

    ld a, a
    sub d
    dec bc
    sbc b
    rlca
    ld e, b
    nop
    ld a, [hl-]
    nop
    ld b, $0c
    ei
    ld b, $ec
    ldh [c], a
    ld bc, $eec6
    and $ee
    nop
    rst RST_18
    ld [$f606], sp
    rst RST_08
    sbc a
    ldh a, [$ff09]
    rst RST_18
    sbc a
    ld a, l
    rrca
    sbc d
    inc b
    nop
    nop
    add b
    nop
    nop
    pop bc
    ld bc, $09f6
    nop
    ld a, a
    add b
    dec c
    ld bc, $00c0
    inc bc
    nop
    ld hl, $991f

Jump_039_5021:
    dec b
    sub h
    inc b
    dec bc
    db $10
    inc sp
    ld [bc], a
    rra
    ld e, c
    ld [bc], a
    jr nc, jr_039_5030

    jr nz, @+$3e

    dec d

jr_039_5030:
    ld a, [hl-]
    inc bc
    dec l
    ld de, $1152
    ld d, l
    nop
    ld a, a
    adc [hl]
    ld [bc], a
    pop de
    ld a, [bc]
    sub e
    rst RST_38
    db $fc
    ld h, b
    inc e
    ld e, h
    ld bc, $82fe
    ld de, $0085
    cp $10
    ld [hl], b
    ld bc, $1846
    adc e
    inc b
    ld c, b
    inc d
    ldh a, [$ff9a]
    ld a, [de]
    dec d
    db $10
    sbc d
    ld a, [de]
    and a
    ccf
    rst RST_38
    rra
    ld e, d
    inc b
    inc a
    dec de
    rst RST_38
    ldh a, [$ff0b]
    rst RST_08
    ld [hl], a
    sbc a
    db $fd
    ei
    ldh a, [rNR31]
    rst RST_38
    and b

Jump_039_506e:
    ld b, b
    ld e, c
    db $10
    sbc $03
    ld h, $40
    db $fd
    inc bc
    inc bc
    inc a
    add hl, de
    inc bc
    ld b, b
    dec sp
    nop
    ret nz

    pop af
    ld a, [bc]
    dec b
    rlca
    dec c
    pop af
    ld a, [de]
    db $fc
    ld bc, $ffc7
    and b
    ret nz

    inc a
    ld d, $f0
    ld [de], a
    ld de, $3728
    ld [hl], a
    cp $60
    dec hl
    jr nc, jr_039_5110

    ld [hl-], a
    ld [hl], l
    scf
    ld [hl], b
    ld [hl-], a
    ld [hl], e
    ld [hl], b
    jr nc, jr_039_5115

    jr nz, jr_039_511e

    ld hl, $1010
    rst RST_10
    add d
    ld hl, $57df
    sub a
    ld d, a
    sub a
    rst RST_10
    adc d
    ld hl, $9717
    ld a, d
    sub b
    inc h
    ld d, a
    sbc b
    inc h
    rst RST_10
    rla
    rst RST_10
    ld d, a

jr_039_50be:
    and e

jr_039_50bf:
    jr nz, jr_039_50bf

    add d
    ld hl, $d7d3
    ret nc

    rst RST_10
    add sp, -$18
    db $eb
    jp c, $22b2

    jp hl


    or a
    inc h
    jr nc, jr_039_5142

    ret nz

    dec hl
    db $10
    db $10
    ld a, l
    ret nc

    jp nc, Jump_039_5021

    sub b
    ld d, b
    sub b
    ret nc

    jp c, $9321

    db $10
    sub b
    ldh [rNR50], a
    add sp, $28
    ld d, b
    db $f4
    jr nz, jr_039_50be

    ld [hl+], a
    ret nc

    ld a, e
    rst RST_10
    ret nc

    daa
    ld d, $00
    ld b, $01
    rlca
    ld a, c
    ld [bc], a
    call Call_000_1b03
    db $10
    jr jr_039_5106

    ld e, $11
    add hl, sp
    ld bc, $ee0c
    ld e, [hl]

jr_039_5106:
    jr nz, jr_039_5143

    ld [$0be8], sp
    db $eb
    ld [hl-], a
    ld sp, $3709

jr_039_5110:
    inc [hl]
    xor a
    ld [$08eb], sp

jr_039_5115:
    jp hl


    ld b, d
    ld [hl-], a
    add sp, $48
    inc [hl]
    ld [$08ff], sp

jr_039_511e:
    add sp, -$16
    ld a, [bc]
    ld a, [bc]
    ld [$0beb], a
    inc bc
    dec bc
    db $eb
    ld e, b
    ld sp, $001d
    add b
    cp l
    rst RST_38
    nop
    ld [$fcfc], sp
    ld hl, sp-$06
    nop
    dec b
    nop
    add a
    nop
    ld a, a
    nop
    dec de
    nop
    nop
    ld b, $1d
    nop

jr_039_5142:
    dec de

jr_039_5143:
    ld bc, $eafe
    jr nz, jr_039_5154

    jp c, Jump_000_0c20

    db $db
    nop
    dec b
    ccf
    ccf
    cp a
    rst RST_38
    ccf
    rrca

jr_039_5154:
    rrca
    rlca
    rst RST_10
    db $fc
    db $fc
    rst RST_38
    rst RST_30
    ld a, a
    rst RST_38
    cp a
    ld h, d
    nop
    cpl
    rst RST_38
    ld d, l
    rst RST_38
    rst RST_38
    ld a, [bc]
    rst RST_38
    inc h
    nop
    nop
    rrca
    nop
    jr nz, jr_039_51ad

    ld b, b
    jr nc, jr_039_51b1

    scf
    ld b, b
    ld [hl], $79
    ld [bc], a
    dec l
    nop
    db $f4
    dec de
    ld bc, $0281
    cp $8c
    nop
    nop
    nop
    or h
    nop
    rst RST_38
    and l
    db $10
    jp z, $ca35

    dec [hl]
    ld c, b
    or a
    rst RST_38
    adc d
    ld [hl], l
    ld b, b
    cp a
    nop
    nop
    ld c, d
    inc b
    rst RST_18
    ld a, [hl+]
    ld b, h
    ld [bc], a
    ld l, h
    sub d

jr_039_519c:
    and a
    ld [bc], a
    ld [bc], a
    db $fc

jr_039_51a0:
    daa
    rrca
    rrca
    cp a
    ld e, c
    nop
    or d
    rlca
    rst RST_38
    add hl, hl
    nop
    ret nz

    add hl, bc

jr_039_51ad:
    ldh a, [$ff7a]
    inc bc
    ret nc

jr_039_51b1:
    rlca
    adc h
    ld bc, $07e0
    nop
    nop
    add b
    ld a, a
    rst RST_38
    jr nz, jr_039_519c

    inc b
    ei
    jr nz, jr_039_51a0

    and h
    ld e, e
    cp $f8
    ld bc, $4ab5
    ld [de], a
    db $ec
    ld [bc], a
    db $fc
    ld [bc], a
    rst RST_38
    db $fc
    add d
    ld a, h
    ld [de], a
    db $ec
    add d
    ld a, h
    sub d
    rst RST_20
    ld l, h
    cp d
    ld b, h
    or d
    dec bc
    cp [hl]
    inc b
    ld a, [bc]
    rst RST_38
    inc d
    rst RST_38
    rst RST_38
    ld a, [hl-]
    rst RST_38
    ld e, $ff
    inc a
    rst RST_38
    ld a, [de]
    pop af
    scf
    ld [hl], a
    ld b, $da
    inc b
    add c
    ld [bc], a
    db $fc
    cp $f0
    cp $bf
    ld hl, sp-$02
    ldh a, [$fff8]
    ret nz

    cp $c0
    ld bc, $ff77
    add b
    ld c, e
    adc b
    ld a, [hl-]
    cp c
    ld a, [hl-]
    cp c
    ld e, d
    rst RST_30
    sbc c
    ld h, h
    add e
    ld b, b
    ld de, $40be
    sbc d

jr_039_5212:
    ld h, h
    cp a
    sub b
    ld l, [hl]
    add b
    ld a, [hl]
    db $10
    xor $2e
    nop
    inc c
    cp d
    ld a, [hl+]
    db $10
    dec l
    ld a, [hl+]
    db $10
    ccf
    rst RST_38
    ld e, a
    ld h, d
    nop
    rst RST_38
    db $fc
    ret nc

    rlca
    jr nc, jr_039_523f

    jr nc, jr_039_5270

    add b
    db $fc
    nop
    xor b
    rst RST_08
    nop
    ret nc

    nop
    ld hl, sp-$80
    ld bc, $0182
    ld e, h
    and e

jr_039_523f:
    rst RST_38
    ld e, h
    and e
    ld c, h
    or e
    nop
    cp e
    ld a, [hl+]
    sub c
    rst RST_18
    and b
    add hl, de
    adc c
    db $10
    sub b
    dec l
    nop

jr_039_5250:
    ld b, b
    cp [hl]
    rst RST_38
    ld d, b
    xor [hl]
    ld d, b
    xor [hl]
    ld d, d
    xor h
    ld a, [bc]
    and h
    rst RST_00
    ld l, $80
    add h
    ld e, $00
    ldh [rTIMA], a
    nop
    inc bc
    ld [hl], b
    rrca
    jr z, jr_039_5287

    nop
    add hl, hl
    ld [bc], a
    ld [de], a
    inc b
    cp $d2

jr_039_5270:
    dec de
    ld l, a
    dec e
    ld bc, $18d5
    db $fd
    ld [hl], b
    pop af
    inc e
    ccf
    ccf
    rra
    rst RST_18
    rst RST_18
    rra
    rst RST_28
    rst RST_18
    rra
    rra
    rra
    ld [hl+], a
    rlca

jr_039_5287:
    ld a, a
    add b
    or a
    rst RST_38
    ld c, b
    dec bc
    ld [hl], h
    ld b, a
    jr c, jr_039_5212

    ld a, $a0
    pop af
    rra
    jr z, jr_039_5298

    ret nz

jr_039_5298:
    add hl, bc
    jr z, jr_039_529c

    db $fd

jr_039_529c:
    ld [bc], a
    ld a, [$bf05]
    db $fc
    inc bc
    ei
    inc b
    cp $01
    ret nz

    nop
    rst RST_38
    rst RST_38
    ld a, a
    ld a, a
    ccf
    cp a
    rra
    rst RST_18
    rrca
    rst RST_28
    rst RST_38
    rlca
    rst RST_30
    ld d, e
    xor e
    db $fd
    ld bc, $1fc0
    rst RST_38
    ld e, a
    nop
    ld h, b
    nop
    or a
    adc b
    or a
    adc b
    db $ed
    sub a
    ld l, c
    jr nz, jr_039_5250

    adc b
    jp nc, Jump_000_0011

    nop
    and a

jr_039_52cf:
    db $dd
    ld [$2176], sp
    and b
    rrca
    and b
    pop af
    ld [de], a
    nop
    nop
    rst RST_00
    ret nc

    rrca
    ret nz

    add hl, hl
    ld bc, $13d6
    dec de
    nop
    ld a, e
    add b
    ld a, a
    ld a, c
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld bc, $01fe
    adc d
    ld bc, $1bf6
    nop
    dec a
    ld b, c
    and [hl]
    dec h
    xor b
    add b
    and a
    adc b
    rst RST_38
    and e
    add h

jr_039_52fe:
    sub e
    and h
    sub e
    and h
    inc de
    inc h
    rst RST_38
    inc de
    and h
    sub e
    inc h
    jr nz, jr_039_532a

    add b
    nop
    rlca
    ccf
    ccf
    ld a, a
    add $20
    dec de
    nop
    ret z

    ld hl, $0127
    inc de
    inc b
    ld a, [$11d2]
    ld bc, $0082
    ei
    ld hl, sp-$05
    ld hl, sp-$07
    rst RST_38
    ld a, [$0201]

jr_039_532a:
    ld bc, $f9fa
    ld [bc], a

jr_039_532e:
    ld b, c
    rst RST_38
    ld bc, $413d
    add hl, de

jr_039_5334:
    ld hl, $231b
    dec de
    rst RST_38
    inc hl
    jr @+$22

    jr jr_039_5361

    dec de
    jr nz, jr_039_5354

    rst RST_00
    inc h
    sub e
    inc h
    nop
    ld sp, $3002
    cp l
    jr nz, jr_039_52cf

    inc b
    ld a, [$0118]
    rrca
    add hl, de
    nop
    ld a, a

jr_039_5354:
    nop
    ld b, b
    nop
    ld h, b
    ld sp, $1a1f
    ld bc, $21de
    call nc, $1f13

jr_039_5361:
    ldh [$ffde], a
    jr nz, jr_039_52fe

    jr nz, @-$17

    ld sp, hl
    ld [bc], a
    pop hl
    sbc c
    ld hl, $2099

jr_039_536e:
    ld hl, sp+$00
    jr jr_039_53d5

    jr nz, jr_039_538f

    ld b, c
    jr nc, jr_039_53b7

    inc [hl]
    db $fd
    jr nz, jr_039_536e

    inc b
    ld d, b
    dec [hl]
    rra
    inc bc
    db $f4
    di
    inc b
    ldh a, [$ff15]
    inc [hl]
    ld h, b
    scf
    adc e
    inc h
    cp d
    add hl, hl
    nop
    inc bc
    pop bc

jr_039_538f:
    ld [bc], a
    dec de
    jr nz, jr_039_532e

    ld b, c
    jr nc, jr_039_532e

    cp $81
    jr nc, @-$63

    jr nz, jr_039_5334

    inc hl
    add e
    nop
    cp a
    rst RST_38
    cp a
    sbc a
    cp a
    adc a
    rst RST_18
    adc a
    rst RST_18
    and a
    rst RST_38
    rst RST_28
    rst RST_00
    rst RST_28
    rst RST_10
    rst RST_30
    db $e3

jr_039_53b0:
    rst RST_30
    rst RST_38
    ld [hl], a
    db $e3
    rst RST_38
    push af
    and b

jr_039_53b7:
    jr nc, jr_039_53b0

    rst RST_38
    ei
    and [hl]
    ld [hl-], a
    rst RST_10
    db $fd
    rst RST_38
    sbc a
    or b
    ld [hl-], a
    rst RST_08
    or [hl]
    dec [hl]
    rst RST_30
    rst RST_10
    ei
    rst RST_30
    rst RST_00
    ret nz

    ld sp, $d7f3
    pop af
    push bc
    pop af
    rst RST_30
    push hl
    pop af

jr_039_53d5:
    push hl
    ld a, [bc]
    ld bc, $f3f3
    pop hl
    db $eb
    rst RST_38
    ret z

    ret c

    ret


    db $db
    rst RST_00
    rst RST_00
    sbc a
    cp a
    rst RST_38
    pop hl
    di
    add sp, -$07
    ldh a, [c]
    ld hl, sp-$0f
    ld hl, sp-$49
    push af
    db $fc
    ld hl, sp-$17
    jr nc, @-$05

    db $fc
    ld d, b
    jr nz, @+$01

    rst RST_38
    ccf
    ld a, a
    rrca
    ccf
    add e
    rrca
    inc bc
    inc bc
    ccf
    ld h, c
    ld bc, $01f8
    rst RST_38
    rst RST_28
    nop
    ld c, b
    nop
    nop
    rst RST_38
    ld sp, hl
    pop af
    ld sp, hl
    ei
    ld sp, hl
    ei
    db $fc
    db $fd
    sbc $c8
    dec d
    sbc a
    cp a
    cp a
    cp a
    add $21
    ld a, a
    ld a, a
    ret c

    ld hl, $2140
    ld b, b
    ld [$f833], a
    db $fc
    scf
    ld b, e
    ld hl, sp-$04
    rlca
    nop
    nop
    ld a, b
    add c
    nop
    ret


    ld [hl+], a
    ld hl, $4f21
    ld hl, $30f3
    ld a, a
    rra
    ccf
    ld b, $1f
    add b

jr_039_5442:
    rlca
    ldh [$ffe0], a
    ld [de], a
    cp $00
    inc bc
    jr nc, @-$0e

    add hl, bc
    rrca
    rlca
    rst RST_38
    ld c, a
    sbc a
    ld a, a
    cp a
    or a
    ld a, a
    ld [hl], a
    ld [hl], d
    ld b, c
    and [hl]
    jr nc, jr_039_5442

    cp $00
    ld b, c
    ld hl, sp-$04
    ldh a, [$fffc]
    db $f4
    db $fc
    ldh a, [rNR51]
    ld hl, sp-$79
    ld b, e
    ldh a, [$ff97]
    db $10
    ld c, h
    ld b, c
    ccf
    add hl, hl
    ld sp, $4493
    db $fc
    ld a, [hl-]
    daa
    ret nz

    ld bc, $1f07
    add a
    rrca
    db $eb
    rrca
    rst RST_38
    jp Jump_000_0507


    rlca
    di
    inc bc
    ld sp, hl
    ld bc, $e0e3
    nop
    nop
    ld c, d
    ld a, l
    ld b, d
    ld [hl], $40
    cp $fc
    rst RST_38
    ld hl, sp+$2f
    dec b
    sbc b
    ld b, e
    cpl
    jr nz, jr_039_549b

jr_039_549b:
    inc bc
    add b
    adc a
    ret nz

    rst RST_38
    jp Jump_000_00e0


    nop
    ld sp, hl
    ld bc, $03fa
    rst RST_38
    ldh [$ff03], a
    dec b
    rlca
    pop af
    rlca
    db $eb
    rrca
    cp e
    db $e3
    rrca
    ld a, d
    ld b, b
    db $e3
    rst RST_38
    di
    inc b
    ld d, h
    ei
    db $d3
    rst RST_38
    ld sp, hl
    nop

jr_039_54c0:
    ld [bc], a
    adc h
    ld bc, $edfc
    jr nc, jr_039_54c0

    db $fc
    rst RST_38
    pop af
    ldh [$ffe0], a
    add h
    sbc h
    ld [de], a
    ld a, [hl]
    ld sp, $ffd3
    ld a, b
    db $10
    ld d, e
    rla
    ld [bc], a
    rst RST_38
    sbc c
    ld b, b
    add b
    add b
    rst RST_38
    ld c, a
    ret nz

    sbc a
    add b
    adc a
    add b
    rlca
    rrca
    db $fd
    rst RST_20
    ld b, c
    ld d, b
    rst RST_00
    rrca
    rlca
    rrca
    add a
    rrca
    cp a
    rst RST_10
    rra
    rst RST_08
    rra
    rst RST_38
    ld a, c
    ld d, b
    ld d, b
    dec a
    cp a
    rst RST_38
    cp l
    rst RST_38
    cp c
    rst RST_38
    db $db
    ld e, d
    ld d, c
    db $fd
    di
    ldh a, [$fffd]
    ld c, b
    ld de, $5265
    rst RST_38
    ld hl, sp-$01
    ldh a, [$ffe6]
    cpl
    ld [bc], a
    ld a, a
    ld a, a
    ld h, d
    nop
    halt
    ld d, b
    ld a, a
    ccf
    ld a, a
    db $fd
    nop
    add hl, sp
    ld d, b
    ld c, a
    ret nz

    xor a
    ldh [$ff90], a
    ldh a, [rIE]
    call z, $f2fc
    cp $fd
    rst RST_38
    rrca
    rra
    ld e, l
    adc a
    ld c, l
    ld d, b
    adc a
    rra
    rrca
    ld c, l
    ld d, b
    sbc a
    rla
    ld hl, $dfdf
    rst RST_38
    jp c, $9eff

    and h
    ld d, b
    adc h
    rst RST_38
    rst RST_18
    ld [$ecff], a
    rst RST_38
    jp nz, Jump_039_506e

    ldh a, [$fffe]
    rst RST_38
    ldh [$fffe], a
    ldh [$fffc], a
    pop bc
    db $fd
    pop bc
    ld sp, hl
    rst RST_00
    jp $83fb


    push bc
    jr nz, jr_039_55da

    ld de, $0200
    ret nz

    ret nz

    di
    add b
    cp a
    rst RST_10
    ld b, b
    cpl
    inc b
    nop
    nop
    ldh a, [rIF]
    rst RST_38
    db $fc
    inc bc
    rra
    rra
    sbc a
    sbc a
    rst RST_18
    ld e, a
    db $fd
    rst RST_28
    and $50
    nop
    nop
    ld e, a
    and b
    ld [bc], a
    db $fd
    rst RST_38
    rst RST_38
    add sp, -$01
    ret nz

    rst RST_38
    xor b
    rst RST_38
    call nc, $ffc3
    ld [$40e4], sp
    ld e, d
    ld b, b
    ld de, $e055
    dec b
    add b
    add b
    rst RST_38
    rra
    nop
    ld [hl], b
    rrca
    and c
    ld e, $c3
    inc e
    rst RST_38
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, [hl]
    ld bc, $1f20
    rst RST_38
    or b
    rrca
    ld e, h
    add e
    rst RST_20
    nop
    add hl, bc
    ldh a, [rIE]
    ld [hl+], a
    call c, Call_000_3fc0
    rst RST_08
    jr nc, jr_039_55bd

    db $fc
    sbc $c1

jr_039_55bd:
    ld bc, $7f80
    db $e4
    dec de
    jr jr_039_55c4

jr_039_55c4:
    add b
    add b
    cp $1d
    nop
    ret nz

    ccf

jr_039_55cb:
    db $10
    rst RST_28
    ld b, $f9
    rrca
    db $fd
    ldh a, [rNR32]
    ld bc, $013e
    cp b
    ld b, b
    ld e, l
    and b

jr_039_55da:
    rst RST_18
    ld c, $f0
    ld b, a
    cp b
    cp a
    ld a, a
    nop
    jr jr_039_55cb

    ld a, e
    inc bc
    db $fc
    ld a, [$0153]
    ld a, b
    nop
    ld a, [hl]
    pop bc
    ld [bc], a
    ld b, c
    ld hl, sp-$40
    dec b
    ld a, [$8a53]
    inc bc
    add sp, $05
    and b
    ld [hl+], a
    ccf
    sbc c
    ld b, b
    ld a, a
    rst RST_08
    nop
    rst RST_20
    nop
    di
    nop
    ld sp, hl
    ld b, e
    ld b, d
    rst RST_38
    ld hl, sp+$03
    ld h, b
    rrca
    add b
    rra
    ret nz

    dec de
    cp a
    ret nz

    dec a
    add b
    ld a, $80
    ccf
    add hl, de
    nop
    ldh a, [$ffef]
    rrca
    add b
    ld a, a
    ret nz

    cp a
    nop
    ld hl, sp+$07
    ldh a, [$ff8f]
    rrca
    ld a, h
    inc bc
    ret nz

    inc hl
    jr nz, jr_039_5675

    ld h, b
    ret nz

    nop
    ld a, a
    and a
    add b
    rra
    ldh [$ffe0], a
    ld hl, $6274
    add b
    pop bc
    ld bc, $b9fc
    inc bc
    xor [hl]
    ld b, b
    ld l, d
    ld h, e
    rlca
    ld c, $f1
    pop bc
    ld bc, $f9ab
    ld d, h
    ldh [c], a
    ld h, e
    pop bc
    dec b
    rlca
    ld hl, sp+$3f
    ccf
    rst RST_08
    rst RST_38
    rrca
    di
    inc bc
    inc a
    ret nz

    rrca
    ldh a, [rTAC]
    add a
    ld hl, sp+$7f
    add b
    ld a, [hl+]
    ld bc, $0082
    ld [de], a
    halt
    rla
    nop
    cp a
    rst RST_38
    nop
    sbc a
    nop
    adc a
    nop
    add a
    nop
    add e
    rst RST_38
    inc b

jr_039_5675:
    add l
    ld b, $06
    rlca
    rlca
    ccf
    add b
    db $fd
    ccf
    and l
    ld h, b
    rrca
    ldh [rIF], a
    ldh [rTAC], a
    ldh a, [rIE]
    ld bc, $00f8
    ld a, h
    and b
    rra
    ret nz

    ccf
    rst RST_38
    adc $31
    sbc h
    ld h, e
    sbc b
    ld h, a
    sbc h
    ld h, e
    di
    cp h
    ld b, e
    ld e, b
    ld h, b
    ret nz

    nop
    ld a, b
    add a
    ld e, $e1
    xor $c1
    inc c
    rst RST_38
    dec d
    ld [$07c1], a
    ld bc, $1ffe
    ei
    ldh [$fffc], a
    ld a, d
    inc sp
    rst RST_38
    rra
    ldh [$ff3e], a
    pop bc
    rst RST_38
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst RST_38
    rrca
    ldh a, [$ff6e]
    ldh [rNR41], a
    rst RST_38
    ld hl, sp+$07
    ld d, [hl]
    ld [hl], e
    rrca
    ldh a, [$ffc0]
    ld bc, $3cff
    jp $bf80


    ret nz

    rst RST_18
    ldh [$ffef], a
    ld [hl], a
    nop
    rlca
    ld hl, sp+$15
    ld b, h
    ccf
    nop
    rrca
    ld e, d
    ld b, b
    call Call_000_3b03
    ld [hl], b
    ld bc, $43fc
    ld b, c
    inc l
    ld sp, $00ff
    rst RST_38
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rrca
    ld a, a
    nop
    inc bc
    db $fc
    call nc, $8912
    ld [hl], b
    pop bc
    inc bc
    ld c, h
    ld hl, $8cf8
    ld [hl], c
    ld c, h
    ld hl, $63c4
    ldh a, [rIF]
    cp $01
    ccf
    rst RST_38
    ret nz

    inc bc
    db $fc
    ret nz

    ccf
    ldh a, [rIF]
    rra
    ld bc, $1de0
    add b
    inc hl
    ei
    nop
    rst RST_38
    nop
    ld bc, $1fe0
    rst RST_38
    nop
    ld a, a
    db $fd
    add b
    inc b
    ld bc, $003f
    ccf
    add b
    rra
    ret nz

    rst RST_38
    rrca
    ldh [rTAC], a
    ldh a, [$ff03]
    ld hl, sp+$00
    db $fc
    rst RST_38
    nop
    ld a, [hl]
    ld d, a
    xor b
    xor a
    ld d, b
    ld a, h
    add e
    cp a
    ld hl, sp+$07
    ld hl, sp+$07
    cp $01
    ld [$0000], sp
    and $04
    ld bc, $fe01
    nop
    inc bc
    ld bc, $0f01
    ldh a, [$ff7f]
    or a
    add b
    ldh [$ff1f], a
    nop
    inc bc
    ld b, b
    cp a
    ld a, [hl+]
    ld bc, $f7ff
    nop
    rlca
    ld hl, sp+$00
    inc bc
    nop
    rst RST_38
    ldh a, [rIF]
    rst RST_38
    add b
    cp a
    nop
    rra
    ldh [$ffef], a
    ldh a, [$fff7]
    cp a
    nop
    inc bc
    ldh a, [$fff5]
    ldh a, [$fff6]
    ld h, [hl]
    nop
    nop
    di
    nop
    ccf
    dec l
    nop
    ld [hl], l
    inc bc
    ccf
    nop
    nop
    rlca
    ld b, a
    nop
    nop
    ldh [rRP], a
    dec b
    nop
    nop
    adc h
    ld bc, $1c00
    nop
    cp $87
    ld [$00ff], sp
    rra
    nop
    rlca
    ret nz

    nop
    cp e
    ldh a, [rP1]
    dec [hl]
    ld bc, $ff00
    ld a, a
    or b
    inc c
    ld bc, $ffef
    add c
    rst RST_38
    add e
    call nz, Call_000_0500
    rst RST_38
    inc bc
    cp e
    rst RST_38
    ld b, l
    call nz, $c700
    rst RST_38
    rst RST_08
    jp nc, $e700

    ld a, [$00d0]
    xor a
    call nc, $2b02
    rst RST_38
    sub e
    rst RST_38
    adc a
    rst RST_38
    rst RST_38
    inc hl
    rst RST_38
    and a
    rst RST_38
    db $dd
    rst RST_38
    rst RST_10
    adc d
    jp c, $ef02

    ldh a, [c]
    nop
    rst RST_38
    db $f4
    ld [bc], a
    ld a, [$b101]
    ld bc, $cb71
    rst RST_38
    ld h, b
    ld b, $10
    ld b, b
    ld a, [bc]
    ld [de], a
    rst RST_30
    inc bc
    rra
    rst RST_38
    pop bc
    rlca

jr_039_57f3:
    ret nz

    nop
    ld c, b
    ld [bc], a
    jr nz, jr_039_5818

    ld a, [hl+]
    ld d, $07
    ld de, $7f50
    rst RST_38
    inc h
    ld a, a
    ld d, b
    ld a, a
    inc l
    ld a, a
    ld d, $7f
    xor a
    inc bc
    ld a, a
    dec b
    ld a, a
    nop
    inc bc
    ld bc, $1018
    ld h, c
    cp a
    rst RST_38
    ret nz

    rst RST_38
    ld [hl], b

jr_039_5818:
    rst RST_38
    cp h
    ld [hl], l
    ld [bc], a
    ld b, b
    ei
    ld a, a
    dec [hl]
    ld [hl], l
    dec b
    rst RST_38
    ld e, b
    rst RST_38
    ccf
    rst RST_38
    ld a, a
    sbc a
    rst RST_38
    ld l, [hl]
    rst RST_38
    ld d, a
    rst RST_38
    ld d, $37
    inc bc
    cp $fa
    inc b
    ld a, [hl]
    rst RST_38
    ld a, [hl+]
    rst RST_38
    sub h
    rst RST_38
    ld [$0363], sp
    db $fc
    adc l
    inc bc
    adc e
    inc bc
    ld d, a
    inc bc
    ccf
    ret nz

    sbc [hl]
    inc bc
    inc sp
    ld bc, $57fe
    inc bc
    xor h
    inc de
    db $fc
    inc bc
    add l
    dec b
    sub l
    inc bc
    jr jr_039_57f3

    dec d
    sub b
    ld bc, $0101
    ld c, $f0
    call z, $2a17
    ld bc, $018e
    rst RST_28
    ret nz

    ccf
    rst RST_38
    nop
    ld d, l
    inc bc
    add b
    ld a, a
    ret nz

    ld d, d
    ld d, [hl]
    inc b
    ld bc, $068a
    ld d, a
    inc bc
    or [hl]
    adc d
    inc b
    ccf
    nop
    nop
    add hl, bc
    ldh a, [$ffeb]
    ld de, $0200
    jp Jump_000_14cf


    dec e
    nop
    add b
    xor a
    cp $1d
    cp $0d
    ld [bc], a
    nop
    add hl, bc
    ld b, $00
    ld de, $fefb
    add hl, de
    ld b, $00
    ld h, c
    cp $21
    ld sp, hl
    ld h, $ef
    db $fd
    ld [hl+], a
    cp $31
    jr jr_039_58a4

jr_039_58a4:
    ld de, $11fe
    cp a
    or $11
    and $29
    or $39
    ld a, [bc]
    nop
    ld hl, $deaf
    ld bc, $61de
    stop
    sub c
    jr nc, jr_039_58bb

jr_039_58bb:
    ld d, c
    cp h
    inc [hl]
    inc b
    ld sp, $3f00
    ld b, a
    ccf
    ld b, c
    ld b, d
    ld bc, $ff2f
    ld b, c
    rrca
    ld d, d
    ld c, a
    ld [hl-], a
    ld e, a
    ld [hl+], a
    ccf
    db $fd
    ld b, [hl]
    ld d, b
    nop
    ld b, d
    inc sp
    ld b, d
    dec a
    ld b, c
    inc sp
    rst RST_30
    ld c, l
    dec sp
    ld b, l
    ld b, d
    nop
    ld d, c
    ccf
    ld d, e
    ccf
    db $fd
    ld d, d
    ld h, h
    ld [bc], a
    ld e, d
    ccf
    ld c, d
    ccf
    ld c, [hl]
    ccf
    pop af
    ld b, h
    ld [hl], b
    inc b
    ld d, e
    nop
    ld a, d
    nop
    ld b, [hl]
    ccf
    ld c, b
    ccf
    rst RST_38
    ld b, h
    ld a, $44
    ld a, $45
    ld e, a
    ld h, $5f
    db $fd
    ld h, $50
    ld bc, $ffdf
    rst RST_18
    rst RST_38
    call c, $fffc
    inc c
    ldh a, [$ffe2]
    pop hl
    adc b
    add a
    db $10
    rrca
    rst RST_38
    ld [$f827], sp
    ret c

    ret nz

    ret nz

    inc b
    inc bc
    rst RST_38
    ld b, b
    ccf
    nop
    rst RST_38
    ld bc, $1ffe
    ldh [$ff2f], a
    ld a, a
    add b
    jr nz, jr_039_592e

jr_039_592e:
    or c
    nop
    rst RST_38
    or h
    ld bc, $01b5
    db $eb
    nop
    nop
    or b
    dec c
    cpl
    or c
    nop
    ldh a, [$fff0]
    rst RST_38
    ld a, [hl]
    sub $00
    ccf
    rst RST_38
    ld bc, $c0ff
    ccf
    sub b
    ld bc, $3fff
    rra
    db $10
    rrca
    inc bc
    pop hl
    nop
    ld hl, sp-$01
    ld [bc], a
    db $fc
    call z, $de31
    cp $dc
    db $fc
    rst RST_38
    reti


    ld hl, sp+$0a
    pop af
    call nz, $90c3
    adc a
    rst RST_30
    ld [$a607], sp
    dec bc
    ld bc, $013d
    nop
    cp $65
    ld a, c
    stop
    ld h, c
    jr jr_039_5977

jr_039_5977:
    ld de, $fe00
    ld [hl], c
    inc b
    db $10
    ld [hl], c
    dec e
    ld b, $04
    daa
    nop
    ld [de], a
    ld [de], a
    db $dd
    cp $89
    jr z, @+$14

    ld [hl], l
    sbc c
    jr nc, jr_039_598e

jr_039_598e:
    ld sp, hl
    inc b
    db $10
    sbc a
    cp $05
    jr c, jr_039_59a7

    ld a, e
    and $05
    ld a, h
    ld bc, $0040
    ccf
    ld e, h
    add b
    nop
    db $dd
    ld c, h
    ld [hl], b
    ld [bc], a
    ld b, c
    ccf

jr_039_59a7:
    ld b, e
    ld b, h
    db $10
    ld e, a
    ccf
    ld e, l
    ld c, c
    ld e, b
    inc d
    ld b, [hl]
    ccf
    ld c, h
    ld b, h
    db $10
    ld e, [hl]
    ld [hl], b
    nop
    ld a, h
    ld c, c
    dec d
    ld h, e
    ld de, $3f7c
    ld [hl], b
    ccf
    ld e, b
    add b
    nop
    cp $49
    ld de, $405e
    nop
    dec a
    ld e, b
    dec a
    ld c, d
    cp $4a
    ld [de], a
    ld b, [hl]
    ld [hl], d
    scf
    ld hl, sp+$7b
    db $fc
    db $fc
    rst RST_38
    ld hl, sp-$02
    ld hl, sp-$02
    ldh a, [$fffc]
    ret nz

    ld hl, sp-$41
    add b
    ldh a, [rP1]
    ldh [rP1], a
    add b
    or c
    ld bc, $ff3f
    nop
    ld a, [hl]
    ld bc, $0780
    jr nc, jr_039_5a6d

    nop
    db $db
    nop
    rlca
    or d
    ld [bc], a
    ldh a, [rIF]
    or h
    nop
    rrca
    ld h, e
    ld sp, hl

Jump_039_5a00:
    rst RST_30
    and a
    nop
    and a
    db $10
    add e
    nop
    ld a, h
    add b
    inc bc
    ld a, a
    db $fc
    nop
    adc a
    ld b, b
    ld l, a
    cp $01
    or l
    ld bc, $fc7f
    nop
    di
    nop
    rrca
    nop
    cp a
    db $db
    db $10
    rst RST_38
    inc de
    db $e3
    rst RST_20
    rrca
    sub a
    rrca
    ld [hl], e
    rrca
    rst RST_38
    pop af
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst RST_38
    ccf
    ccf
    rra
    sbc a
    rrca
    rst RST_08
    ld [$ffe7], sp
    ld bc, $04f1
    ld hl, sp-$7e
    ld a, h
    add h
    ld a, b
    rst RST_38
    ld h, c
    jr jr_039_5aa6

    ld e, $61
    ld e, $63
    inc e
    cp $06
    inc hl
    ld d, e
    inc l
    nop
    ret nz

    inc b
    add b
    inc c
    rst RST_38
    nop
    inc e
    nop
    ld e, $00
    inc e
    inc bc
    inc e
    rst RST_38
    inc bc
    jr c, jr_039_5a69

    ld a, b
    call $84cc
    call $a4ff

jr_039_5a69:
    ld a, h
    call Call_039_7d38

jr_039_5a6d:
    ld [$5008], sp
    rst RST_38
    sbc c
    inc h
    or b
    sub d
    sbc d
    ld l, d
    ld a, [bc]
    adc b
    rst RST_38
    ld c, c
    ld sp, $49b9
    adc c
    add hl, hl
    ld c, e
    sub b
    rst RST_38
    sbc b
    ld h, a
    ldh a, [rBCPS]

jr_039_5a87:
    rst RST_28
    xor $af
    xor [hl]
    rst RST_38
    xor a
    xor a
    cpl
    daa
    daa
    di
    ei
    daa
    rst RST_38
    inc hl
    adc a
    daa
    ld e, a
    add b
    cpl
    ret nz

    scf
    rst RST_38
    ret nz

    add hl, de
    ldh [$ff9e], a
    ldh [$ff8f], a
    ldh a, [$ff8f]

jr_039_5aa6:
    rst RST_20
    ldh a, [$ffc7]
    ld hl, sp-$4b
    ld [bc], a
    push de
    db $10
    db $e3
    nop
    ld e, $ff
    ld bc, $0f70
    ld h, b
    rra
    jp c, Jump_039_6220

    cp a
    ld b, h
    ld b, $18
    ld b, [hl]
    jr c, jr_039_5a87

    ld [hl], a
    inc h
    ld h, b
    xor l
    ccf
    add b
    ld hl, $7f3f
    ld a, e
    ld bc, $8542
    jr nz, jr_039_5af1

    ld a, [hl]
    db $10
    db $10
    ld hl, $fefe
    rst RST_38
    inc bc
    cp $98
    ld hl, $febf
    rst RST_38
    ld h, b
    rra
    ld b, b
    ccf
    and d
    daa
    ld h, b
    cp c
    rra
    ld a, b
    dec h
    ld a, b
    ld [hl+], a
    ld a, [hl-]
    adc $b2
    xor d
    inc hl
    ld h, b

jr_039_5af1:
    ld l, a
    rra
    ld [hl], b
    rrca
    ld a, a
    or c
    nop
    ld [hl], b
    rrca
    ld a, b
    dec h
    rst RST_38
    adc $b2
    cp $8e
    nop
    nop
    jp nz, $ff3c

    ld h, b
    rra
    ld a, b
    rlca
    rlca
    nop
    ld h, b
    jr jr_039_5b8d

    and b
    dec h
    sub $28
    adc $b4
    cp $ce
    call c, $fe21
    ld a, b
    inc hl
    ld h, e
    dec e
    ld h, e
    dec e
    ld h, a
    ld e, e
    ld a, a
    or a
    ld b, a
    nop
    nop
    inc b
    inc hl
    jr c, jr_039_5b32

    db $10
    ld sp, $ef1e
    ld bc, $0000

jr_039_5b32:
    rra
    add hl, de
    jr nc, jr_039_5b36

jr_039_5b36:
    nop
    adc [hl]
    cp a
    inc b
    rst RST_38
    ld c, $3f
    rst RST_38
    inc bc
    cp h
    nop
    add a
    ld a, e
    ld a, a
    add a
    jp z, $0f20

    rlca
    rst RST_38
    rrca
    sub $01
    cp h
    or e
    nop
    dec [hl]
    ld [hl-], a
    rst RST_18
    adc a
    rst RST_38
    adc a
    inc [hl]
    add hl, sp
    rst RST_00
    rst RST_38
    ld hl, sp-$3d
    db $fc
    db $e3
    db $fc
    jp Jump_000_13fc


    ld a, a
    inc c
    jp hl


    and $c9
    and $49
    ld h, [hl]
    xor b
    dec h
    cp a
    ld a, [hl]
    nop
    ld h, b
    ld bc, $0708
    adc $22
    ld a, [hl-]
    ei
    adc $32
    jp c, $ca21

    inc [hl]
    or [hl]
    ld c, b
    add $77
    jr c, @+$22

    rst RST_38
    add b
    ld sp, $ffff
    ld [bc], a
    add a
    ld [hl-], a
    rst RST_28
    rst RST_38

jr_039_5b8d:
    rst RST_38
    jr nz, jr_039_5c0f

    sub b
    ld sp, $ff7f
    ld [bc], a
    ld a, l
    ld a, a
    sbc b
    ld sp, $ff7f
    halt
    add hl, bc
    ld a, b
    or b
    db $10
    ld h, b
    ld l, h
    ld hl, $23a2
    db $f4
    add hl, hl
    ld a, h
    ld [hl+], a
    and c
    inc l
    and [hl]
    ld e, b
    or b
    add hl, hl
    di
    and [hl]
    ld e, b
    xor b
    dec h
    ldh [rNR42], a
    ld b, $01
    ld [hl], c
    nop
    cp $b2
    ld a, [hl+]
    ld [hl], $fe
    ld e, $d6
    dec c
    adc $35
    ei
    xor $15
    ld b, $00
    adc c
    db $fd
    adc d
    ld sp, hl
    adc $ff
    db $fd
    ld e, d
    db $fc
    ld d, b
    db $fc
    ld d, b
    nop
    nop
    rst RST_10
    ld hl, sp-$68
    ldh a, [$ff9e]
    ld [de], a
    ret nz

    or e
    inc b
    nop
    rst RST_38
    rst RST_38
    inc bc
    db $fc
    ld [$e0f0], sp
    rlca
    add b
    rra
    rst RST_38
    inc a
    nop
    jr nc, jr_039_5bf3

    jr nz, @+$11

    ld h, b

jr_039_5bf3:
    ccf
    ld a, $15
    jr nz, jr_039_5c33

    nop
    ld [hl], h
    nop
    add sp, -$4e
    inc b
    or e
    ld bc, $40f9
    ld c, d
    ld b, d
    ld b, c
    ld b, a
    nop
    ld a, $1c
    ld a, $1c
    cp $40
    ld c, b
    add b

jr_039_5c0f:
    inc c
    add b
    inc e
    add b
    jr jr_039_5c2d

    di
    db $10
    rla
    reti


    db $10
    inc b
    stop
    dec b
    nop
    inc b
    ld [hl], d
    ld a, h
    ld b, b
    nop
    push de
    db $10
    sub $11
    ld l, h
    nop
    sub b
    and b
    db $10

jr_039_5c2d:
    rst RST_30
    ld b, b
    db $10
    ei
    sub b
    ld b, b

jr_039_5c33:
    dec sp
    db $10
    dec de
    db $10
    ld [hl], a
    inc de
    db $10
    rra
    reti


    db $10
    rrca
    ld c, d
    ld h, h
    and b
    ld b, c
    sbc e
    ld c, [hl]
    ld h, b
    and [hl]
    ld b, l
    ld c, c
    ld h, [hl]
    or b
    ld c, e
    ld b, $21
    ld [hl], e
    ld e, a
    inc c
    ld d, e
    inc l
    ld d, e
    inc l
    nop
    ld [hl-], a
    dec de
    ld b, $24
    ld a, b

jr_039_5c5a:
    inc bc
    scf
    call Call_000_0640
    scf
    ld h, e
    inc e
    db $fd
    nop
    ldh a, [rWX]

jr_039_5c66:
    ld e, [hl]
    nop
    ld c, c

jr_039_5c69:
    ld hl, sp-$32
    db $fc
    ld e, b
    or c
    nop
    ld bc, $4076
    ld a, a
    ld de, $3d00
    ld [bc], a
    ld a, h
    ld bc, $b4fe
    nop
    rst RST_38
    ld a, a
    nop
    rst RST_38
    rlca
    ld hl, sp-$61
    ld h, b
    db $fc
    db $fd
    nop
    sbc a
    ld de, $00cf
    nop
    ret nc

    nop
    and b
    ld [hl], h
    cp a
    nop
    ld c, e
    ld b, e
    add b
    and d
    db $10
    ld b, b
    rra
    ld e, a
    ld b, d
    ld d, l
    sbc h
    adc [hl]
    ld b, b
    ld c, a
    ld b, b
    ret nz

    ret nz

    cp $54
    ld d, h
    or c
    ld bc, $ff00
    add b
    inc a
    cp h
    inc a
    cp h
    jr c, jr_039_5c69

    jr nc, @+$01

    or b
    jr nc, jr_039_5c66

    jr nz, @-$5e

    jr nz, jr_039_5c5a

    nop
    ccf
    inc b
    ld sp, $0135
    dec b
    ld bc, $437b
    ld a, l
    ld b, c
    rst RST_20
    ld b, b
    nop
    ld h, b
    cp a
    nop
    add l
    ld d, c
    jr nc, jr_039_5cd0

jr_039_5cd0:
    db $10
    db $fc
    adc h
    ld d, b
    reti


    db $10
    rst RST_00
    nop
    jp $e004


    rlca
    rst RST_38
    ret nz

    inc bc
    add b
    inc bc
    nop
    ld bc, $604c
    push af
    adc h
    and b
    db $10
    ld hl, sp+$1e
    ld d, c
    add b
    rrca
    ldh a, [rP1]
    call $b0ff
    ld b, c
    ld c, e
    ld h, h
    or h
    ld d, c
    and b
    ld b, e
    ld a, a
    ld b, e
    ld l, h
    and $47
    jp z, Jump_039_635f

    dec e
    or h
    ld bc, $07f8
    cp e
    db $10
    ld sp, hl
    nop
    sbc l
    ld d, b
    push de
    db $10
    rrca
    ldh [rTAC], a
    ldh a, [$ff03]
    rst RST_38
    ld hl, sp+$03
    ld hl, sp-$7f
    ld a, h
    pop bc
    inc a
    pop hl
    ld b, a
    inc e
    ldh a, [$ff0e]
    and d
    inc de
    ld e, h
    ld d, d
    scf
    ld sp, $4a00
    ld b, h
    ld [bc], a
    ld c, e
    ld b, b
    add b
    jp z, $ca20

    ld hl, $6502
    inc e
    ld d, b
    ld a, b
    ld b, b
    inc a
    ld d, d
    add sp, $31
    ld h, e
    dec bc
    ld h, e
    ld a, c
    ld d, l
    inc b
    ld a, [bc]
    ld h, h
    jr jr_039_5d46

jr_039_5d46:
    ld [$52fe], sp
    ld h, d
    add hl, bc
    nop
    sub $08
    dec b
    db $dd
    nop
    cp [hl]
    adc h
    ld d, b
    dec h
    jr jr_039_5daf

    rlca

jr_039_5d58:
    or a
    reti


    db $10
    rst RST_38
    rst RST_30
    nop
    rra
    ldh [$ffb1], a
    ld bc, $00f0
    rlca
    ldh a, [$ffeb]
    ldh a, [rIF]
    ld h, b
    inc hl

jr_039_5d6b:
    rrca
    inc e
    ld sp, $c003
    ld bc, $0c7f
    ldh [$ffe0], a
    inc c
    db $fd
    nop
    ld a, [$608c]
    rst RST_38
    add b
    inc c
    ld b, e
    inc de
    and b
    inc b
    cp b
    ld bc, $1e9d
    add hl, de
    jr nc, jr_039_5d58

    nop
    adc a
    ld hl, $a144
    ld h, [hl]
    cp b
    ei
    nop
    cp e
    or c
    ld h, d
    ld a, [de]
    ld b, b
    ld e, d
    nop
    ld e, b
    rst RST_38
    ld bc, $03b8
    nop
    rra
    add b
    ccf
    rlca
    rst RST_38
    ld a, b
    rrca
    ld [hl], b
    ld e, $e0
    jr c, jr_039_5d6b

    ld [hl], b
    ld c, e
    add b
    ld h, e

jr_039_5daf:
    add hl, sp
    ld h, c
    rst RST_38
    ret nc

    ld de, $51e8
    ret nz

    and l
    ld d, b
    rst RST_38
    ld bc, $00e5
    push af
    nop
    ld hl, sp-$7f
    ld a, c
    rst RST_30
    ret nz

    dec a
    ldh [$fffd], a
    ld d, b
    ld a, d
    inc b
    ld bc, $ff81
    ld bc, $8140
    add b
    inc b
    add h
    ld [bc], a
    ld b, d
    cp a
    add d
    add d
    ld [de], a
    sub d
    ld a, [bc]
    ld a, [de]
    ld a, b
    ld b, b
    cp $1f
    inc a
    pop bc
    cp l
    inc a
    pop bc
    or c
    ld bc, $511d
    or l
    nop
    rst RST_20
    ld a, a
    nop
    ld a, a
    jp z, $1f20

    ld d, c
    rra
    add b
    nop
    ccf
    db $fd
    ld a, b
    add l
    db $fc
    ld a, b
    add d
    and e
    db $10
    ldh a, [rSCX]
    dec sp
    nop
    rst RST_38
    ld [hl], a
    ld h, b
    ldh a, [rIF]
    rrca
    rra
    ld b, l
    ld [hl+], a
    ld d, c
    db $fc
    or a
    ld [bc], a
    jr nz, jr_039_5e56

    dec de
    and b
    cp e
    nop
    dec de
    ld b, b
    ccf
    ld e, a
    dec de
    ld b, b
    nop
    cp e
    inc bc
    or b
    ld h, b
    ld h, $30
    ld a, [hl-]
    or l
    inc b
    nop
    ld e, d
    ld d, b
    ld bc, $e7e0
    xor l
    ld d, b
    ld h, e
    ld [hl], h
    db $fc
    rla
    jr nc, jr_039_5e51

    ld d, c
    dec b
    ldh [rP1], a
    reti


    add hl, de
    or h
    rst RST_38
    cp l
    inc d
    ld a, h
    dec b
    ld [hl], l
    inc b
    dec [hl]
    nop
    rst RST_38
    sbc b
    nop
    ld c, a
    add b
    adc a
    nop
    adc a
    nop
    db $fd
    ld e, a
    sub d
    ld [hl], b

jr_039_5e51:
    add b
    nop
    ld b, e
    add b
    add e

jr_039_5e56:
    ld a, h
    ld [hl], h
    jr nz, @+$52

    and d
    ld [hl], c
    ccf
    dec l
    ld d, b
    di
    nop
    inc a
    ld e, $40
    db $e3
    add b
    ld a, a
    and b
    ld h, a
    ld hl, $3850
    ld sp, $ff1c
    inc c
    rst RST_38
    rst RST_38
    ld a, [bc]
    rst RST_38
    ld a, [de]
    rst RST_38
    ld [de], a
    rst RST_38
    scf
    or e
    ld [bc], a
    db $fc
    db $d3
    ld h, b
    db $d3
    halt
    ld [bc], a
    db $fc
    ld [hl], b
    ld [bc], a
    ld b, b
    rst RST_30
    ld a, $40
    dec a
    and d
    jr nz, jr_039_5ec8

    ld b, e
    ccf
    ld b, b
    nop
    dec [hl]
    ld sp, $03ba
    ld sp, hl
    ld [hl], e
    dec e
    add b
    ld h, $ff
    nop
    nop
    nop
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    jr nc, jr_039_5eb4

    adc b
    rlca
    daa
    ret nz

    ld [$fff0], sp
    nop
    nop
    rlca
    ld hl, sp+$00
    rst RST_38
    ret nz

    ccf

jr_039_5eb4:
    rst RST_38
    ld a, h
    add e
    rlca
    ld hl, sp+$01
    cp $80
    ld a, a
    rst RST_38
    ld b, b
    ld a, a
    ccf
    ld b, b
    add b
    nop
    ld a, a
    add b
    rst RST_38
    nop

jr_039_5ec8:
    rst RST_38
    add b
    ld a, a
    ldh a, [rIF]
    ccf
    ret nz

    db $e3
    ld [bc], a
    db $fc
    ld [bc], a
    ld bc, $0232
    ld bc, $6002
    rra
    sbc b
    ld a, a
    rlca
    ld h, $c1
    add hl, bc
    ldh a, [$ff3e]
    ret nz

    nop
    inc bc
    rst RST_38
    db $10
    rst RST_28
    ld [$04f7], sp
    ei
    adc h
    ld [hl], e
    ei
    ld l, b
    rla
    nop
    inc bc
    nop
    rra
    nop
    ccf
    ccf
    rst RST_38
    ccf
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rst RST_38
    ld b, $0f
    inc c
    nop
    cp $00
    cp $f0
    rst RST_38
    cp $00
    ld d, $90
    sub [hl]
    db $10
    ld d, $d0

jr_039_5f13:
    rst RST_30
    ld d, $d0
    ld d, [hl]
    ld [bc], a
    ld bc, $ff3f
    jr nz, @-$1e

    sbc $86
    ld bc, $e021
    ld hl, $02e1
    ld bc, $fff8
    rst RST_38
    nop
    dec bc
    jr z, jr_039_5f58

    ld l, b
    ld l, e
    ret z

    set 7, a
    add sp, -$75
    rra
    jr @+$21

    ld de, $030f
    cp a
    rra
    rlca
    rra
    rrca
    rra
    rra
    ld h, e
    nop
    ld a, $eb
    ret nc

    sub $b0
    ld b, $96
    ld a, h
    nop
    ld d, $23
    db $e3
    rst RST_38
    inc hl
    ldh [c], a
    ld hl, $23e0
    ldh [$ff27], a
    pop hl

jr_039_5f58:
    rst RST_38
    daa
    db $e3
    daa
    rst RST_20
    cpl
    rst RST_28
    add sp, $0b
    ccf
    add sp, $2b
    add sp, $6b
    add sp, -$15
    sub $02
    sbc l
    nop
    rst RST_38
    ccf
    inc a
    ccf
    jr c, @+$39

    jr nc, jr_039_5f9b

    jr nz, jr_039_5f13

    rrca
    ld h, b
    ld bc, $007f
    nop
    cp h
    ld bc, $05f0
    ldh a, [rIE]
    or $04
    nop
    cpl
    rst RST_28
    cpl
    xor $2d
    rst RST_30
    db $ec
    add hl, hl
    add sp, -$3a
    nop
    ldh [$ff2f], a
    rst RST_38
    ld b, b
    ld sp, hl
    nop
    ret nc

    nop
    ld de, $f816

jr_039_5f9b:
    ei
    nop
    inc bc
    nop
    ld sp, hl
    ccf
    jr nz, jr_039_5fba

    db $ec
    ld bc, $f00e
    inc b
    ldh a, [$ff08]
    db $db
    ldh a, [$ff0c]
    dec [hl]
    stop
    ldh a, [$ff74]
    ld bc, $1fe0
    rst RST_18
    ld b, b
    rra
    add b
    rra

jr_039_5fba:
    ret nz

    ld b, l
    stop
    rra
    ret nz

    add h
    ld bc, $0632
    sub c
    inc b
    nop
    nop
    ld c, c
    db $10
    ld h, d
    jr jr_039_6003

    jr nz, @-$01

    or $72
    inc de
    nop
    add $38
    cp d
    ld a, b
    ld a, d
    ld a, d
    add [hl]
    nop
    rst RST_20
    add d
    add hl, de
    nop
    dec de
    db $10
    ei
    sub d
    add hl, de
    ld e, h
    nop
    nop
    and b
    ld [de], a
    inc bc
    nop
    rlca
    xor c
    db $10
    rrca
    and b
    ld [de], a
    db $fd
    ld c, $70
    nop
    ldh a, [$ff0e]
    ret nz

    ld a, $80
    ld a, [hl]
    rst RST_38
    nop
    cp $1e
    ld bc, $031c
    inc a

jr_039_6003:
    inc bc
    rst RST_38
    jr c, jr_039_600e

    jr nc, jr_039_6018

    ld sp, $630f
    rra
    rst RST_38

jr_039_600e:
    ld h, e
    rra
    ld b, $fe
    ld e, $fe
    ld a, $fe
    ei
    ld a, [hl]

jr_039_6018:
    cp $d7
    dec d
    ld b, a
    ccf
    ld b, a
    ccf
    ld c, a
    ld a, d
    db $e3
    db $10
    ld e, a
    rst RST_20
    db $10
    rra
    ld a, a
    ccf
    ld a, a
    rst RST_10
    ld d, $f6
    rst RST_10
    inc d
    ld bc, $7000
    nop
    inc bc
    ld a, h
    ld a, h
    ld a, a
    cp $08
    inc h
    cp $00
    ld e, $00
    nop
    ldh [rP1], a
    rst RST_20
    ld a, $c0
    ret nz

    rst RST_10
    inc de
    ld [$1f25], sp
    sbc a
    rlca
    rst RST_18
    rst RST_20
    inc bc
    dec sp
    nop
    inc c
    ldh a, [rNR33]
    ld a, $3e

Call_039_6056:
    rst RST_38
    ld c, $ce
    ld [bc], a
    ld [hl-], a
    nop
    inc c
    nop
    ld [bc], a

jr_039_605f:
    rst RST_20
    nop
    jr jr_039_6063

jr_039_6063:
    xor l
    inc d
    and b
    dec d
    jr c, @+$3a

    ld a, b
    ld bc, $1d78
    nop
    add b
    xor a
    cp $1d
    cp $0d
    ld [bc], a
    nop
    add hl, bc
    ld b, $00
    ld de, $fefb
    add hl, de
    ld b, $00
    ld h, c
    cp $21
    ld sp, hl
    ld h, $ef
    db $fd
    ld [hl+], a
    cp $31
    jr jr_039_608b

jr_039_608b:
    ld de, $11fe
    cp a
    or $11
    and $29
    or $39
    ld a, [bc]
    nop
    ld hl, $deaf
    ld bc, $61de
    stop
    sub c
    jr nc, jr_039_60a2

jr_039_60a2:
    ld d, c
    db $fc
    inc [hl]
    inc b
    ld sp, $d600
    dec c
    adc $35
    xor $15
    cp $06
    nop
    adc c
    db $fd
    adc d
    ld sp, hl
    adc $fd
    ld e, d
    ld [$000c], a
    add hl, de
    ld a, [bc]
    nop
    ld bc, $0356
    db $fd
    ld [bc], a
    nop
    rst RST_28
    ccf
    ld a, a
    ccf
    ld b, b
    ld h, e
    ld b, $20
    rra
    rst RST_38
    ld a, a
    nop
    nop
    rst RST_38
    rst RST_38
    inc e
    rst RST_38
    ld [$0076], sp
    cp a
    jr @+$01

    db $10
    rst RST_38
    jr c, jr_039_605f

    ld [hl], c
    dec b
    inc c
    ei
    rst RST_38
    inc b
    adc d
    nop

jr_039_60e7:
    ld [$0000], sp
    ccf
    nop
    ld a, l
    ld a, a
    sub e
    nop
    ld a, [hl]
    ld bc, $0f70
    ld b, b
    sub d
    ld bc, $001b
    rst RST_38
    and c
    nop
    ldh a, [rIF]
    and c
    ld [bc], a
    and d
    ld bc, $02a1
    add e
    rra
    ldh [$ffa8], a
    ld b, $b9
    rlca
    and b
    inc bc
    pop bc
    inc c
    ld d, a
    ld bc, $df02
    db $fd
    inc c
    di
    jr nc, jr_039_60e7

    jp z, Jump_000_2c03

    db $d3
    rst RST_38
    and h

jr_039_611e:
    ld e, e
    ld l, $d1
    ld b, e
    cp h
    pop bc
    ld a, $7c
    jp z, Jump_000_0c03

    nop
    dec a
    ld bc, $fe00
    ld a, c
    stop
    ld e, c
    ld h, c
    jr jr_039_6135

jr_039_6135:
    ld de, $fe00
    ld [hl], c
    inc b
    db $10
    dec e
    ld b, $04
    ld e, h
    daa
    nop
    ld [de], a
    ld [de], a
    db $dd
    cp $89
    jr z, @+$14

    sbc c
    jr nc, jr_039_614b

jr_039_614b:
    db $dd
    ld sp, hl
    inc b
    db $10
    sbc a
    cp $05
    jr c, jr_039_6165

    and $05
    db $e4
    inc [hl]
    ld bc, $1004
    sbc l
    jr z, jr_039_616e

    rlca
    ld bc, $0e09
    rst RST_38
    rst RST_38
    ld sp, hl

jr_039_6165:
    ld b, $00
    nop
    rst RST_30
    nop
    ld h, b
    adc a
    ld [hl], e
    add b

jr_039_616e:
    rra
    sub e

jr_039_6170:
    nop
    ld [hl], b
    nop
    ld a, a
    nop
    add b
    ld e, l
    ld de, $a9ec
    ld [$07b8], sp
    ld bc, $a0fe
    ld bc, $fe01
    rrca
    rst RST_38
    ldh a, [rNR23]
    rst RST_20
    ld [hl], b
    adc a
    ldh [$ff1f], a
    cp b
    db $fd
    ld b, a
    ld h, h
    inc bc
    and b
    rra
    jr nz, @-$5f

    jr c, jr_039_611e

    adc a
    ld e, a
    add b
    ld de, $b8ce
    dec bc
    ld h, h
    ld a, [de]
    xor c
    ld [bc], a
    db $10
    rst RST_38
    rst RST_08
    db $10
    rst RST_08
    jr z, jr_039_6170

    ld [$88e7], sp
    db $fd
    ld h, a
    jp z, $c003

    ccf
    ld a, [hl]
    add c
    inc hl
    call c, $31ef
    adc $18
    rst RST_20
    jp z, $c009

    ccf
    ld [hl], b
    ld e, c
    adc a
    jp z, $a804

    inc b
    rlca
    ld hl, sp-$58
    inc bc
    rst RST_18
    rst RST_38
    db $10
    rst RST_38
    call c, $0cfc
    ldh a, [$ffe2]
    pop hl
    adc b
    add a
    rst RST_38
    db $10
    rrca
    ld [$f827], sp
    ret c

    ret nz

    ret nz

    di
    inc b
    inc bc
    sbc h
    nop
    rst RST_18
    nop
    rra
    ldh [$ff7f], a
    add b
    and c
    jr nz, @-$34

    nop
    xor b
    inc bc
    rst RST_00
    inc bc
    jr nz, jr_039_6221

    cpl
    jp z, $f000

    dec sp
    ldh a, [rIE]
    ld b, [hl]
    jr nz, jr_039_623d

    rst RST_38
    ld bc, $10cf
    nop
    ld hl, $3fff
    rra
    db $10
    rrca
    inc bc
    pop hl
    nop
    ld hl, sp-$01
    ld [bc], a
    db $fc
    call z, Call_000_0031
    ret nz

    inc b
    add b
    rst RST_38
    inc c
    nop
    inc e
    nop
    ld e, $00
    inc e
    inc bc
    rst RST_38

Jump_039_6220:
    inc e

jr_039_6221:
    inc bc
    jr c, @+$09

    ld a, b
    call $84cc
    rst RST_38
    call Call_039_7ca4
    call Call_039_7d38
    ld [$ff08], sp
    ld d, b
    sbc c
    inc h
    or b
    sub d
    sbc d
    ld l, d
    ld a, [bc]
    rst RST_38
    adc b
    ld c, c

jr_039_623d:
    ld sp, $49b9
    adc c
    add hl, hl
    ld c, e
    rst RST_38
    sub b
    sbc b
    ld h, a
    ldh a, [rBCPS]
    rst RST_28
    xor $af
    rst RST_38
    xor [hl]
    xor a
    xor a
    cpl
    daa
    daa
    di
    ei
    rst RST_38
    daa
    inc hl
    adc a
    daa
    ld e, a
    add b
    cpl
    ret nz

    rst RST_38
    scf
    ret nz

    add hl, de
    ldh [$ff9e], a
    ldh [$ff8f], a
    ldh a, [$ffef]
    adc a
    ldh a, [$ffc7]
    ld hl, sp-$57
    inc bc
    db $fc
    nop
    db $e3
    ei

jr_039_6272:
    nop
    ld e, $99
    nop
    ld h, b
    rra
    sbc $fe
    call c, $fcff
    reti


    ld hl, sp+$0a
    pop af
    call nz, $90c3
    rst RST_38
    adc a
    ld [$a607], sp
    ld de, $1861
    ld h, b
    rst RST_18
    ld e, $61
    ld e, $63
    inc e
    sub $23
    ld d, e
    inc l
    sbc $d6
    ld hl, $0c73
    ld d, e
    inc l
    sbc $20
    dec e
    ld h, e
    rst RST_30
    dec e
    ld h, a
    dec de
    sub $24
    dec e
    ld h, a
    ld e, e
    ld a, a
    rst RST_38
    ld b, a
    nop
    nop
    ld h, c
    ld e, $72
    scf
    ld hl, sp-$01
    ld a, e
    db $fc
    db $fc
    ld hl, sp-$02
    ld hl, sp-$02
    ldh a, [rIE]
    db $fc
    ret nz

    ld hl, sp-$80
    ldh a, [rP1]
    ldh [rP1], a
    db $fc
    add b
    nop
    sub b
    ld bc, $017e
    add b
    rlca
    jr nc, jr_039_634c

    rst RST_20
    nop
    nop
    rlca
    jp z, $a602

    ld [bc], a
    rrca
    ld h, e
    rst RST_30
    db $fc
    rla
    jr nz, jr_039_6272

    nop
    add e
    nop
    ld a, h
    add b
    inc bc
    db $fc
    cp a
    nop
    adc a
    ld b, b
    ld l, a
    cp $01
    or d
    inc hl
    di
    rst RST_28
    nop
    rrca
    nop
    cp a
    ld c, e
    jr nc, jr_039_630d

    db $e3
    rst RST_20
    rst RST_38
    rrca
    sub a
    rrca
    ld [hl], e
    rrca
    pop af
    rrca
    ld hl, sp+$7f
    rlca
    db $fc
    inc bc
    cp $01
    jr c, jr_039_6314

jr_039_630d:
    ld h, b
    ld sp, $1edf
    ld bc, $0000

jr_039_6314:
    rra
    ld l, c
    jr nc, jr_039_6318

jr_039_6318:
    nop
    ld a, a
    adc [hl]
    inc b
    rst RST_38
    ld c, $3f
    rst RST_38
    inc bc
    ld [hl], b
    nop
    rst RST_30
    add a
    ld a, a
    add a
    sbc a
    nop
    rrca
    rlca
    rst RST_38
    rrca
    ld a, b
    ld b, [hl]
    ld hl, $0171
    add [hl]
    ld sp, $8fdf
    rst RST_38
    adc a
    add h
    add hl, sp
    rst RST_38
    rst RST_00
    ld hl, sp-$3d
    db $fc
    db $e3
    db $fc
    jp $fffc


    inc de
    inc c
    jp hl


    and $c9
    and $49
    ld h, [hl]

jr_039_634c:
    cp $64
    inc bc
    ld h, b
    rra

jr_039_6351:
    ld a, [hl]
    nop
    ld h, b
    ld bc, $ff08
    rlca
    ld [hl], b
    rrca
    ccf
    ccf
    rra
    sbc a
    rrca

Jump_039_635f:
    rst RST_38
    rst RST_08
    ld [$01e7], sp
    pop af
    inc b
    ld hl, sp-$7e
    rst RST_00
    ld a, h
    add h
    ld a, b
    ld [$f922], a
    inc h

jr_039_6370:
    sub $21
    ld a, a
    ld b, e
    ldh [$ffd8], a
    dec [hl]
    add sp, $3f
    db $f4
    ld hl, $21ec
    sub $37
    ld h, e
    inc e
    jp c, Jump_000_20ff

    ld h, d
    ld b, h
    ld b, $18
    ld b, [hl]
    jr c, jr_039_6351

    cp [hl]
    rla
    ld c, a
    jr c, @-$38

    ld a, [hl-]
    adc $b2
    ld a, [de]
    ld b, l
    adc $ff
    or d
    cp $8e
    nop
    nop
    jp nz, $d63c

    sbc a
    jr z, jr_039_6370

    or h
    cp $ce
    inc a
    ld b, c
    ld a, [de]
    ld b, e
    ld h, b
    pop af
    rra
    ld h, h
    rlca
    or h
    ld sp, $33b2
    ld h, b
    rra
    ld [hl], b
    rrca
    ld a, [$009f]
    nop
    cp h
    ld hl, $0778
    rlca
    nop
    ld h, b
    sbc l
    jr jr_039_6414

jr_039_63c4:
    ld b, l
    ld c, h
    ld h, b
    adc h
    db $10
    jr nc, jr_039_63c4

    ld de, $bf7f
    add b
    rrca
    ldh a, [rP1]
    rst RST_38
    ld a, h
    sub e
    ld [bc], a
    ld a, a
    ld a, [hl-]
    sub c

jr_039_63d9:
    nop
    rst RST_08
    ld b, a
    jr nc, jr_039_641a

    ret nz

    nop
    ld h, e
    db $10
    cp c
    rlca
    cp $9f
    nop
    ldh a, [$fff3]
    ldh a, [$ff03]
    ldh [$ff03], a
    ldh [$ffef], a
    rlca
    ldh [rTAC], a
    ret nz

    cp d
    ld b, b
    add b
    nop
    ld [bc], a
    rst RST_28
    ret nz

    add $c1
    push bc
    call nz, $cd42
    jp $b3cb


    jp $2fcb


    jr nz, jr_039_63d9

    ld c, d
    ld h, b
    ccf
    ldh [rSTAT], a
    ccf
    ld [hl], a
    ld a, a
    ld b, d
    ccf
    add sp, $41

jr_039_6414:
    ccf
    ld a, a
    ld hl, $1010
    cp a

jr_039_641a:
    ld hl, $fefe
    rst RST_38
    inc bc
    cp $f8
    ld b, c
    cp $ed
    rst RST_38
    sub $21
    ld h, l
    ld a, [de]
    sub $22
    ld e, h
    ld h, a
    ld e, c
    db $eb
    ccf
    inc hl
    ld a, [hl+]
    ld b, d
    ld [hl-], a
    ld a, [hl-]
    ld b, c
    jp z, $b634

jr_039_6439:
    ld h, a
    ld c, b
    add $38
    ld b, h
    ld c, c
    ld a, [de]
    ld b, c
    and [hl]
    ld e, b
    ld a, [de]
    ld c, c
    cp $30
    ld e, d
    ld a, [hl-]
    adc $36
    cp $1e
    halt
    add hl, bc
    pop bc
    ld a, b
    jr nz, @+$32

    cp h
    ld hl, $4958
    ld d, [hl]
    ld c, e
    ld h, d
    ld b, e
    ld a, b
    rlca
    ld [hl], a
    ld b, $01
    ld [hl], c
    and b
    ld bc, $00fe
    db $fd
    add h
    ld d, b
    ld a, l
    ld hl, sp-$7b
    ld b, b
    di
    nop
    pop af
    db $fc
    db $fc
    jp z, Jump_039_7700

    inc bc
    nop
    jr nc, jr_039_6499

    jr nc, jr_039_6439

    nop
    ld e, a
    sbc h
    ld d, b
    cp [hl]
    ld a, [hl]
    jr nc, jr_039_6482

jr_039_6482:
    ldh [rIF], a
    rrca
    ldh a, [$ffa9]
    inc bc
    ldh a, [rIE]
    nop
    ld [$a400], sp
    jr jr_039_64aa

    ldh [$ffed], a
    xor $ae
    ld d, b
    rst RST_38
    nop
    ld hl, sp+$22

jr_039_6499:
    jr nc, jr_039_64b3

    nop
    db $10
    ld a, [hl]
    jp nz, $9052

    nop
    ld l, e
    db $10
    and b
    cp e
    ld l, $21
    db $ec
    pop de

jr_039_64aa:
    ld b, l
    xor a
    ld [bc], a
    jr nz, @+$01

    ldh [rHDMA1], a
    rst RST_38
    rst RST_38

jr_039_64b3:
    ld [bc], a
    sbc $e7
    ld d, d
    rst RST_38
    rst RST_38
    jr nz, jr_039_653a

    ldh a, [rHDMA1]
    ld a, a
    rst RST_38
    db $db
    ld [bc], a
    ld a, a
    ld hl, sp+$51
    ld a, a
    rst RST_38
    ldh [rOBP1], a
    ld a, l
    ld [bc], a
    xor $90
    nop
    ld b, a
    ccf
    ld b, c
    ld [de], a
    ld h, c
    cpl
    ld b, c
    rrca
    ld a, a
    ld d, d
    ld c, a
    ld [hl-], a
    ld e, a
    ld [hl+], a
    ccf
    ld b, [hl]
    jr nz, @+$62

    rst RST_38
    ld b, d
    inc sp
    ld b, d
    dec a
    ld b, c
    inc sp
    ld c, l
    dec sp
    ld a, l
    ld b, l
    ld [de], a
    ld h, b
    ld d, c
    ccf
    ld d, e
    ccf
    ld d, d

jr_039_64f1:
    inc [hl]
    ld h, d
    ld a, a
    ld e, d
    ccf
    ld c, d
    ccf
    ld c, [hl]
    ccf
    ld b, h
    ld b, b
    ld h, h
    db $fc
    inc hl
    ld h, b
    jp hl


    ld b, b
    ld b, [hl]
    ccf
    ld c, b
    ccf
    ld b, h
    ld a, $ff
    ld b, h
    ld a, $45
    ld e, a
    ld h, $43
    ld [hl+], a
    ld bc, $5cdf
    nop
    ld e, [hl]
    and b
    ld a, a
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    cp a
    db $fc
    add b
    ld a, b
    add b
    ld a, b
    ldh a, [$ffae]
    ld d, b
    nop
    ld a, a
    ldh a, [c]
    ld bc, $00f1
    pop af
    nop
    ld a, [$6072]
    rst RST_38
    ld bc, $c200
    ld bc, $00c1
    and b
    rlca
    rst RST_38
    nop

jr_039_653a:
    sbc e
    sbc b
    dec l
    cp l
    jr z, jr_039_657e

    and b
    rra
    xor [hl]
    jr nz, jr_039_64f1

    nop
    add hl, de
    and a
    inc b
    ld [hl], b
    nop
    add b
    nop
    ldh a, [$ff5d]
    db $10
    xor c
    inc b
    ld e, a
    ld de, $1062
    rlca
    rst RST_20
    ret c

    dec b
    rst RST_38
    db $dd
    nop
    ret c

    ld [bc], a
    ld a, [$02d8]
    nop
    ld [hl], a
    db $dd
    ret nz

    dec e
    cp c
    ld h, b
    nop
    rst RST_38
    ldh [$ff6f], a
    nop
    ldh a, [$ff86]
    ld [hl-], a
    inc h
    inc h
    push bc
    dec b
    rst RST_10
    ld h, e
    ld c, c
    ld h, [hl]
    ld c, c
    ld h, [hl]
    bit 1, e
    ld h, h

jr_039_657e:
    db $e4
    ld h, c
    ld c, d
    jp hl


    ld h, d
    ld l, c
    jr nc, jr_039_65c5

    ccf
    rst RST_38
    ccf
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    and a
    ld b, $0f
    inc c
    ldh a, [rOBP1]
    ld e, [hl]
    nop
    nop
    ld c, h
    ld h, c
    ld b, b
    rst RST_10
    nop
    ccf
    ld e, h
    ld d, b
    ld h, b
    ld c, h
    ld b, b
    ld h, d
    ld b, c
    ccf
    db $dd
    ld b, e
    inc d
    ld [hl], b
    ld e, a
    ccf
    ld c, c
    jr z, jr_039_6624

    ld b, [hl]
    ccf
    push bc
    ld c, h
    inc d
    ld [hl], b
    ld e, [hl]
    ld b, b
    ld h, b
    add hl, de
    ld [hl], l
    inc sp
    ld [hl], c
    ld a, h
    ccf
    rst RST_30
    ld [hl], b
    ccf
    ld e, b
    ld d, b
    ld h, b

jr_039_65c5:
    ld c, b
    jr jr_039_65e0

    ld [$e8d5], sp
    xor [hl]
    ld d, b
    add b
    sub e
    nop
    and b
    ret nc

    ld b, c
    ret nz

    ret nz

    db $fc
    sub c
    nop
    sbc b
    ld b, c
    ld [hl], $c0
    add hl, bc
    ret nz

    rlca
    ret z

jr_039_65e0:
    rst RST_38
    ld a, [bc]
    add b
    add c
    add b
    ld [bc], a
    add c
    ld bc, $ff20
    ld hl, $4240
    ld b, c
    ld b, c
    ld c, b
    ld c, c
    ld d, b
    rst RST_38
    ld e, b
    add b
    and a
    nop
    xor a
    nop
    rra
    add c
    rst RST_38
    sbc [hl]
    inc bc
    cp h
    rlca
    jr c, @+$11

    ld [hl], b
    ld e, [hl]
    ld l, $d9
    ld d, c
    rst RST_38
    ld a, a
    add b
    xor l
    ld d, c
    ret nz

    sub h
    ld d, b
    ld l, h
    jr nc, @+$01

    ld hl, sp+$01
    db $fc
    ldh [rNR34], a
    ldh a, [$ff0e]
    ld a, b
    ld a, a
    rlca
    inc e
    inc bc
    ld c, $01
    add $01
    cp h
    ld h, b

jr_039_6624:
    cp $b1
    ld [hl], d
    ld e, b
    ld [bc], a
    ld e, d
    nop
    ld a, [de]
    add b
    dec e
    ld h, c
    ret nz

    cp c
    dec c
    ldh [$ff61], a
    ret nc

    ld a, c
    ld [$4e63], a
    ld h, b
    and $75
    rst RST_38
    rra
    jr jr_039_665f

    ld de, $030f
    rra
    rlca
    cpl
    rra
    rrca
    rra
    rra
    di

jr_039_664b:
    ld h, b
    ld a, $1d
    add b
    inc hl
    rst RST_38
    nop
    cp $00
    cp $f0
    cp $00
    ld d, $ff
    sub b
    sub [hl]
    db $10
    ld d, $d0

jr_039_665f:
    ld d, $d0
    ld d, [hl]
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    ccf
    rst RST_38
    jr nz, jr_039_664b

    sbc $16
    ld bc, $e021
    ld hl, $10e1
    ld bc, $fff8
    rst RST_38
    nop
    dec bc
    jr z, jr_039_66a6

    ld l, b
    ld l, e
    ret z

    set 7, a
    add sp, -$75
    ccf
    inc a
    ccf
    jr c, jr_039_66be

    jr nc, @+$01

    daa
    jr nz, jr_039_669b

    nop
    rra
    nop
    ccf
    ld a, a
    di
    nop
    nop
    inc c
    nop
    ld b, c
    ld b, $f0
    or $04

jr_039_669b:
    nop
    rst RST_38
    cpl
    rst RST_28
    cpl
    xor $2d
    db $ec
    add hl, hl
    add sp, -$01

jr_039_66a6:
    inc hl
    ldh [$ff27], a
    ldh [$ff2f], a
    rst RST_38
    ld b, b
    nop

jr_039_66ae:
    ei
    add sp, $0b
    ld h, b
    rlca
    ld hl, sp-$05
    nop
    inc bc
    nop
    cp c
    nop
    add hl, sp
    nop
    ld [hl], e
    add hl, bc

jr_039_66be:
    ld [hl], $20
    or $82
    ld a, [bc]
    ldh [$ff7b], a
    jr nz, jr_039_66ae

    sub d
    add hl, bc
    nop
    dec de
    db $10
    ei
    and d
    add hl, bc
    ld e, h
    ld [hl], b
    nop
    or b
    ld [bc], a
    inc bc
    nop
    rlca
    cp c
    nop
    rrca
    or b
    ld [bc], a
    db $fd
    ld c, $00
    nop
    ldh a, [$ff0e]
    ret nz

    ld a, $80
    ld a, [hl]
    ld a, a
    nop
    cp $47
    ccf
    ld b, a
    ccf
    ld c, a
    db $d3
    nop
    ld a, l
    ld e, a
    rst RST_10
    nop
    rra
    ld a, a
    ccf
    ld a, a
    cp $e0
    inc c
    db $fd
    ld a, a
    ldh a, [rDIV]
    rra
    sbc a
    rlca
    rst RST_20
    inc bc
    dec sp
    xor a
    nop
    inc c
    ret nc

    sub $00
    ld d, $96
    ld b, b
    ld bc, $df23
    db $e3
    inc hl
    ldh [c], a
    ld hl, $58e0
    nop
    pop hl
    daa
    rst RST_18
    db $e3
    daa
    rst RST_20
    cpl
    rst RST_28
    ld h, b
    nop
    dec hl
    add sp, $67
    ld l, e
    add sp, -$15
    ld h, $12
    dec l
    nop
    nop
    ccf
    jr nc, jr_039_6747

    cp $3c
    ld bc, $f00e
    inc b
    ldh a, [$ff08]
    ldh a, [$ff0c]
    or $45
    stop
    ldh a, [rDIV]
    ld bc, $1fe0
    ld b, b
    rra
    scf
    add b

jr_039_6747:
    rra
    ret nz

    ld d, l
    stop
    rra
    inc d
    ld bc, $0110
    add sp, $60
    dec d
    inc h
    ld bc, $0572
    rra
    ld sp, $0011
    nop
    ccf
    cp $82
    dec b
    ldh [$fff6], a
    nop
    or $00
    ld b, $00
    ld a, l
    cp $92
    dec b
    daa
    rst RST_28
    jr nz, @+$01

    nop
    ld e, a
    db $10
    xor $a2
    dec b
    ldh a, [$fffb]
    nop
    ld l, l
    ld bc, $1eff
    ld bc, $1cff
    inc bc
    inc a
    inc bc
    jr c, jr_039_678c

    jr nc, jr_039_6796

    rst RST_38
    ld sp, $630f
    rra

jr_039_678c:
    ld h, e
    rra
    ld b, $fe
    rst RST_18
    ld e, $fe
    ld a, $fe
    ld a, [hl]

jr_039_6796:
    ldh [rTMA], a
    ld bc, $bf00
    nop
    ld a, [hl]
    nop
    inc bc
    ld a, h
    ld a, h
    ldh a, [rTIMA]
    cp $77
    nop
    ld e, $00
    sbc h
    db $10
    ld a, $c0
    ret nz

    ldh [$ff03], a
    inc bc
    nop
    di
    ld [hl], b
    nop
    ld h, c
    ld de, $11f3
    or $11
    ret nc

    db $10
    ld l, [hl]
    nop
    db $fc
    cp [hl]
    ld bc, $107b
    rst RST_38
    nop
    ld a, $3e
    ld c, $ce
    rst RST_38

jr_039_67ca:
    ld [bc], a
    ld [hl-], a
    nop
    call z, Call_000_0200
    nop
    db $fc
    nop
    di
    ld de, $0de0
    dec e
    nop
    ld d, h
    ld a, e
    add d
    db $fc
    nop
    dec bc
    ld a, [$f405]
    dec bc
    db $10
    add hl, bc
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    ccf
    ret nz

    ccf
    rst RST_18
    rst RST_38
    ccf
    ret nc

    jr c, jr_039_67ca

    dec sp
    call nc, $d43a
    adc h
    jr nz, @+$03

    ld sp, $ff01
    nop
    ld [hl-], a
    ld bc, $003d
    ld sp, $ff0f
    rst RST_38
    db $fc
    inc bc
    ld hl, sp-$05
    ld hl, sp+$0b
    jr c, @-$13

    cp a
    ld hl, sp+$2b
    ld a, b
    dec hl
    jr z, @+$7d

    ld h, b
    dec bc
    rst RST_38
    rst RST_30
    nop
    add b
    ld a, a
    ld [hl], d
    add hl, bc
    nop
    rst RST_38
    inc a
    rst RST_38
    cp l
    ld [hl], $83
    ld [$e817], sp
    ld c, $f0
    sub b
    inc bc
    sbc $ff
    ldh a, [rIE]
    ld hl, sp-$22
    ld hl, sp+$40
    nop
    ld hl, sp-$01
    ld a, b
    ld l, h
    ld l, h
    db $ec
    ld l, h
    ld l, h
    ld l, h
    db $ed

jr_039_683f:
    sbc a
    ld l, l
    ld a, c
    ld a, c
    db $ed
    ld l, l
    dec a
    ld bc, $03b0
    and e
    ld e, a
    and e
    or $f6
    or [hl]
    or [hl]
    dec a
    ld bc, $c403
    ld [bc], a
    daa
    adc a
    adc a
    db $db
    call z, $b000
    rlca
    ld h, h
    jp c, Jump_000_2002

jr_039_6861:
    ld bc, $e0d8
    add hl, bc
    sub b
    rlca
    sub d
    inc bc
    nop
    cp $00
    dec de
    pop bc
    ld a, [hl]
    cp $10
    dec de
    ld a, [hl-]
    call nc, $d43b
    dec sp
    rst RST_10
    ccf
    rst RST_18
    ret nc

    ccf
    rst RST_18
    jr nz, jr_039_683f

    ldh [rSC], a
    nop
    ret nz

    pop hl
    ccf
    inc sp
    dec b
    inc l
    inc de
    dec [hl]
    ld [bc], a
    scf
    ld d, $78
    dec hl
    ld hl, sp-$01
    dec hl
    ld hl, sp-$15
    ld hl, sp+$0b
    ld hl, sp-$05
    nop
    dec b
    inc bc
    jr nz, jr_039_689e

    ld a, [hl-]

jr_039_689e:
    dec l
    nop
    ld h, b
    add hl, de
    jr c, @+$03

    ldh [$ff09], a
    add h
    inc bc
    db $fd
    inc a
    pop hl
    ld b, $d7
    add sp, -$32
    ldh a, [$ffd7]
    xor $fb
    adc $f6
    sub b
    dec b
    ld l, l
    ld l, l
    db $ed
    ld l, l
    ld l, l
    ld a, a
    ld l, l
    ld sp, hl
    ld a, c
    ld b, b
    nop
    add b
    nop
    xor b
    ld de, $86cd
    or b
    ld [de], a
    add e
    add e
    or b
    dec b
    call z, $db01
    db $db
    xor e
    adc a
    adc a
    or b
    dec b
    ld l, b
    ret nc

    db $10
    jr nc, @-$2a

    db $10
    jr nz, jr_039_6861

    ret c

    db $10
    ret nz

    call c, $a810
    dec d
    xor b

jr_039_68e7:
    dec d
    rst RST_28
    ld e, $e1
    ld a, [bc]
    ld bc, $01f6
    inc e
    ld [bc], a
    nop
    nop
    ld de, $02fc
    ld hl, sp-$06
    rst RST_38
    ld hl, sp+$0a
    jr c, jr_039_68e7

    ld hl, sp+$2a
    ld a, b
    ld a, [hl+]
    cp $3d
    nop
    add b
    sbc b
    ldh [$ffac], a
    ret nz

    add b
    call nz, $826b

jr_039_690d:
    db $ec
    ld a, [hl-]
    jr nz, jr_039_690d

    nop
    dec e
    ld b, b
    ld a, [hl]
    ld d, b
    jr nz, @-$21

    ld a, $54

jr_039_691a:
    ld hl, $3e00
    add b
    ld e, e
    jr nz, jr_039_6961

    sbc [hl]
    db $ed
    ld d, b
    ld h, c
    jr nz, jr_039_6937

    sbc $66
    inc hl
    ld d, b
    sbc [hl]
    inc [hl]
    rst RST_38
    jp nz, $e200

    ld a, [hl+]
    ret z

    inc l
    ret z

    ld d, h
    rst RST_28

jr_039_6937:
    sbc b
    ld d, b
    sbc h
    ld d, d
    ld a, e
    jr nz, @-$6c

    ld [de], a
    cp d
    rst RST_38
    ld [hl+], a
    ld [hl], h
    ld b, [hl]
    ld l, d
    ld c, h
    sub d
    ld e, h
    sub d
    rst RST_38
    ld c, h
    sub d
    ld c, h
    xor d
    ld c, h
    ld a, b
    rlca
    ld [hl], h
    cp c
    dec bc
    sub b
    add hl, hl
    dec a
    ld bc, $00aa
    ld d, h
    nop
    db $10
    ld d, h
    ccf
    xor d
    xor d

jr_039_6961:
    ld d, h
    ld d, h
    xor d
    cp $0d
    jr nz, jr_039_691a

    daa
    rst RST_28
    cp $00
    xor d
    ld d, l
    jr nz, jr_039_6971

    ld d, l

jr_039_6971:
    rst RST_38
    xor d
    db $ec
    ld [hl], $00
    ret


    ld hl, $55aa
    ld c, $20
    rst RST_38
    ld d, c
    cp $ff

jr_039_6980:
    xor b
    rst RST_38
    pop de
    cp $e8
    rst RST_38
    pop af
    cp $8e
    pop hl
    add hl, bc
    xor d
    ld d, l
    ld d, l
    ret z

    dec h
    ldh a, [rNR52]
    nop
    dec e
    db $fc
    rst RST_38
    cp $82
    add b

jr_039_6999:
    ld c, h
    jr nc, jr_039_6980

    ld a, b
    ld h, h
    rst RST_38
    ld hl, sp+$0c
    ldh a, [$ff98]
    ld h, b
    ldh a, [rP1]
    ld a, b
    rra
    ld a, [hl+]
    ld l, c
    ld a, [hl-]
    ld l, b
    dec sp
    ld h, b
    rlca
    or b
    ld [bc], a
    ld bc, $cb18
    add b
    ld a, [hl]
    ld b, b
    ld sp, $4500
    jr nc, @+$52

    ld [hl+], a
    ld a, [hl]
    and b
    scf
    ld a, $20
    cp [hl]

jr_039_69c3:
    ld d, d
    add hl, sp
    ld d, b
    sbc [hl]
    ld d, d
    ld sp, $205e
    rst RST_38
    ld a, [hl]
    db $10
    ld c, $60
    adc [hl]
    jr nc, jr_039_6999

    ld d, d
    rst RST_38
    sbc h
    ld d, b
    sbc [hl]
    ld h, b
    adc [hl]
    ld [hl], b
    add [hl]
    inc [hl]
    rst RST_38
    jp nz, $c03a

    jr jr_039_69c3

    ld h, b
    add b
    xor d
    rst RST_38
    ld c, h
    ld a, [bc]
    db $ec
    ld a, [hl+]
    call z, $d816
    ld d, [hl]
    adc a
    sbc b
    ld d, [hl]
    adc b
    ld e, $ee
    db $10
    sub b
    dec hl
    ld [hl-], a
    ld sp, $8caa
    and [hl]
    ld hl, $1601
    ld a, a
    rst RST_38
    ld [hl], d
    add hl, bc
    ld a, a
    nop
    ldh [$ff0a], a
    ld a, a
    ld a, c
    add b
    call c, $d021
    add hl, sp
    cp a
    ld b, b
    ld a, a
    add b
    ldh [$ff39], a
    add b
    ld bc, $401c
    ld [de], a
    ld [hl], $17
    ld [hl], $03
    ld a, [bc]
    ld c, e
    ld d, $4b
    ld [hl+], a
    ld c, l
    nop
    cp a
    nop
    push af
    rst RST_38
    dec d
    ld [$38f5], a
    nop
    ld [bc], a
    and a
    db $fd
    dec b
    ld a, [$1338]
    ld [hl], b
    ld [de], a
    nop
    ldh [$ff31], a
    ld d, b
    rst RST_38
    rst RST_38
    and b
    nop
    dec hl
    call nc, $a857
    ld a, [bc]
    ld a, a
    push af
    ld [$fdff], a
    nop
    dec b
    ld a, [$112e]
    or $3b
    ld b, h
    rst RST_38
    ld b, b
    call $af30
    ld d, b
    ld e, a
    and b
    rst RST_38
    dec hl
    call nc, $ffa8
    push af
    nop
    dec d
    ld [$4ac8], a
    ld b, c
    ld b, d
    ld [bc], a
    ld d, l
    ld b, d
    rst RST_38
    ld e, c
    ld b, d
    ld a, [hl]
    ld b, c
    call nc, $0fff
    xor b
    nop
    ld a, [bc]
    push af
    adc b
    ld b, a
    ld l, [hl]
    ld b, l
    sbc d
    ld b, e
    ld d, b
    ld b, a
    nop
    sub b
    ld b, a
    jp z, $d64b

    ld c, e
    ldh [c], a
    ld c, [hl]
    rra

jr_039_6a87:
    jr nz, jr_039_6a87

    jr nc, jr_039_6a8f

    ld d, d
    inc b
    ld d, a
    nop

jr_039_6a8f:
    inc c
    ld e, c
    ld d, $5b
    ld [hl+], a
    ld e, l
    rst RST_38
    dec e
    nop
    add b
    db $fd
    rst RST_38
    nop
    ld [bc], a
    ldh [$ffe0], a
    rra
    nop
    nop
    rst RST_38
    db $fc
    ld a, [bc]
    ld bc, $0300
    rlca
    rlca
    ld a, h
    nop
    nop
    ld a, a
    rst RST_28
    inc bc
    ld [hl], b
    db $10
    ld h, b
    rrca
    inc b
    rst RST_38
    rrca
    rrca
    sbc a
    ld [$00f0], sp
    rst RST_38
    rlca
    ld c, $05
    nop
    nop
    ld bc, $01e7
    rlca
    ld hl, sp+$2f
    ld [$0000], sp
    nop
    nop
    ld bc, $feff
    cp $ff
    push af
    rst RST_38
    ld a, [$d5ff]
    rst RST_38
    rst RST_38
    ld [$55ff], a
    rst RST_38
    ld a, [hl+]
    ld a, a
    add b

jr_039_6ae0:
    rst RST_38
    nop
    xor d
    rst RST_38
    ld d, h
    rst RST_38
    xor d
    rst RST_38
    ld d, b
    cp $63
    nop
    ld b, b
    rst RST_38
    xor b
    rst RST_38
    nop
    rrca
    and d
    ld [$000b], a
    add b
    dec bc
    nop
    jr nz, jr_039_6b06

    ld [bc], a
    nop
    rst RST_38
    ld bc, $feb9
    add b
    dec bc
    ccf
    ld a, [bc]
    rst RST_38

jr_039_6b06:
    db $fd
    rst RST_38
    ld d, b
    add hl, bc
    xor d

jr_039_6b0b:
    cp $59
    nop
    add b
    nop
    jr nz, jr_039_6b71

    ld d, e
    rrca
    cpl
    rst RST_30
    ld e, a
    rra
    ld a, a
    cp b
    ld bc, $7f3e
    ld b, $07
    cp $00
    ld bc, $c7bb
    rst RST_00
    add e
    ld bc, $8393
    rst RST_38
    ld de, $0100
    inc b
    ld a, [$f0ca]
    db $f4
    cp a
    ld a, [$fef8]
    ld hl, sp-$02
    db $fc
    reti


    ld [bc], a
    ld a, a
    rst RST_18
    ld a, a
    ld h, e
    ld h, h
    ld h, c
    ld h, h
    ldh [rSB], a
    add hl, hl
    ld h, h
    rst RST_30
    ccf
    ld a, a
    ld a, [hl+]
    rra
    nop
    jr z, jr_039_6ae0

    dec c
    sub d
    ld e, a
    rst RST_38
    rst RST_38
    ld [$2592], sp
    push af
    nop
    xor d
    add hl, bc
    inc b
    ld d, [hl]
    nop
    rla
    db $10
    ld h, b
    db $10
    dec de
    nop
    jr nz, jr_039_6b7f

    ld bc, $1220
    ld a, a
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    ld a, [bc]

jr_039_6b71:
    ld [bc], a
    xor $07
    nop
    rrca
    pop af
    ld e, $44
    rla
    nop
    rst RST_38
    jr c, jr_039_6b0b

    rlca

jr_039_6b7f:
    jr nz, jr_039_6b9a

    jr c, @-$3e

    inc l
    ld bc, $1730
    ld l, $10
    cp $1e
    ld [hl], d
    db $10
    ld b, $08
    ld c, $f8
    ld a, c
    ld [de], a
    add b
    dec c
    ld h, b
    inc c
    xor e
    rst RST_38
    and e

jr_039_6b9a:
    add c
    nop
    add c

jr_039_6b9d:
    add c
    nop
    ld hl, $0481
    ccf
    rst RST_38
    ld a, [hl]
    ld a, $7e
    ccf
    ld a, a
    ld h, e
    ld h, c
    ld h, a
    rst RST_30
    ld l, a
    ld h, e
    ld h, e
    cp b
    db $10
    ld h, c
    ld bc, $7c00
    cp a
    jr c, @+$01

    rst RST_38
    or $b9
    or [hl]
    ret z

    ld [de], a
    or $73
    cp c
    cp $d0
    inc de
    ret z

    inc de
    or [hl]
    add [hl]
    adc $ec
    ld bc, $3f7f
    ld a, a
    ld a, [bc]
    ld h, b
    rrca
    ld a, a
    cpl
    or e
    nop
    db $e3
    jr nz, jr_039_6c38

    db $fc
    ld bc, $13f0
    nop
    ld bc, $ff7e
    cp $ff
    cp $8e
    ld c, [hl]
    ld a, $4e
    db $fc
    cp $9c
    ld e, e
    ld c, [hl]
    inc c
    dec b
    jr nz, jr_039_6b9d

    ld c, $90
    dec bc
    ld hl, sp+$3d
    nop
    cp h
    ld [bc], a
    rra
    db $10
    ld de, $6717
    db $10
    ld h, a
    db $10
    ld de, $9c01
    dec l
    db $10
    ld b, b
    ld hl, $80c0
    ld a, a
    dec bc
    ld bc, $2620
    rrca
    ld a, a
    nop
    ldh a, [$fff0]
    rrca
    rst RST_38
    jr nz, jr_039_6c37

    ld b, h
    rla
    cp a
    ld sp, $d11e
    sbc $11
    sbc $20
    dec de
    ld a, a
    adc c
    ld a, a
    ld a, [hl-]
    inc de
    ld a, c
    inc bc
    ccf
    ld b, a
    jr nz, jr_039_6ca8

    inc de
    sub b
    dec h

jr_039_6c31:
    jr jr_039_6c31

    ld a, a
    ld d, $02
    db $fc

jr_039_6c37:
    dec b

jr_039_6c38:
    ld a, [$7c82]
    dec b
    db $dd
    ld a, [$2a20]
    nop
    nop
    add b
    db $10
    inc de
    rlca
    ld [hl], a
    ld [hl], d
    add hl, sp
    db $10
    ld a, a
    ld a, [hl+]
    inc de
    ld b, b
    ld hl, $f8fd
    rlca
    dec bc
    nop
    jr nz, jr_039_6ca9

    ld de, $2621
    ld [hl], c
    ld bc, $20cb

jr_039_6c5d:
    ld b, h
    dec d
    ldh a, [$ffb7]
    inc h
    inc c
    ld hl, $f87f
    cp $a8
    ld c, $f0
    cp $f4
    pop de
    nop
    inc bc
    inc b
    ld a, [$0b90]
    ld l, $10
    ld hl, $132f
    rra

jr_039_6c79:
    daa
    ld d, $2e
    ld de, $0f09
    dec [hl]
    db $10
    add b
    daa
    ld de, $1845
    ld c, h
    ld [de], a
    sla d
    ld [hl], h
    jr z, jr_039_6d05

    db $eb
    ld [hl+], a
    ld d, d
    ld sp, $1338
    add sp, -$12
    ld [$78ee], sp
    dec d
    sbc $7a
    ld de, $748a
    ld d, [hl]
    xor b
    and b
    ld sp, $54aa
    rra
    sbc $20
    xor [hl]

jr_039_6ca8:
    ld d, b

jr_039_6ca9:
    cp $bd
    jr nz, jr_039_6c5d

    inc a
    jr nz, @+$18

    add hl, bc
    inc bc
    add hl, sp
    ld [de], a
    jr nz, @+$19

    db $fc
    cp b
    inc h
    jr nz, @+$19

    call c, $ce3f
    scf
    rlca
    cp $fc
    inc bc
    reti


    ld [hl+], a
    ld hl, $0b38
    ld [bc], a
    sub b
    jr z, jr_039_6d3f

    ld de, $fe61
    dec hl
    ld b, d
    ld sp, $0946
    nop
    ld de, $013b
    add b
    ccf
    ld c, l
    cp a
    add b
    ld bc, $0380
    add b
    rlca
    ld h, l
    ld b, h
    rrca
    ret c

    cp a
    jr nc, jr_039_6c79

    dec bc
    ld hl, $003c
    rst RST_30
    adc a
    ld b, b
    or $01
    ld a, [hl]
    sub h
    ld b, e
    db $f4
    inc bc
    db $f4
    inc bc
    ld [bc], a
    rst RST_38
    and b
    ld c, e
    ld l, a
    nop
    ld a, a
    ld b, b
    ccf
    or d
    ld b, e
    ld h, b

jr_039_6d05:
    rra
    cp d
    ld b, c
    sbc a
    inc sp
    db $e4
    inc sp
    db $e4
    ld [hl-], a
    jp $c044


    ld b, c
    ld a, [$00ff]
    ld l, d
    ld h, b
    sbc d
    ldh a, [$ffba]
    ldh a, [$ff2a]
    rst RST_38
    or b
    ld a, [bc]
    sub b
    ld a, [bc]
    ld h, b
    sbc d
    nop
    dec hl
    cp a
    rst RST_38
    ld b, a
    rst RST_38
    ld a, [bc]
    rst RST_38
    dec d
    and c
    ld b, b
    dec b
    db $fc
    ld a, l
    ld bc, $040f
    ld a, a
    rst RST_38
    cp a
    rst RST_38
    ld e, a
    rst RST_38
    cp c
    xor e
    ld e, c
    nop
    inc h

jr_039_6d3f:
    add hl, de
    db $e3
    nop
    di
    jr nz, @+$14

    inc b
    rst RST_38
    ld bc, $031c
    ld a, [hl]
    inc bc
    ld a, [$f207]
    rst RST_00
    rrca
    ldh [c], a
    rra
    ld l, $10
    ret


    ld hl, $5623
    ccf
    rst RST_18
    rst RST_28
    ccf
    ldh [$ff30], a
    ldh [$ffc0], a
    ld b, b
    push hl
    ld [hl-], a
    push hl
    call c, Call_039_41c0
    ret nc

    stop
    ld [bc], a
    nop
    ret nc

    ld b, b
    ldh a, [$ff0a]
    db $d3
    ld h, b
    ld a, [de]
    ld b, l
    ld d, b
    db $f4
    ld b, l
    xor a
    ld sp, hl
    ld b, d
    ld d, a
    rst RST_38
    dec d
    rrca
    ld l, l
    ld b, b
    rra
    ld h, e
    ld d, h
    ccf
    ld l, e
    ld d, b
    ld hl, $1f3b
    dec l
    or e
    nop
    nop

jr_039_6d8e:
    sbc h
    ld b, c
    sbc h
    ld b, c
    ldh a, [rTAC]
    sbc b
    ld d, c
    nop
    db $fd
    nop
    and d
    ld c, h
    nop
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld a, b
    rst RST_30
    rlca
    ld a, h
    inc bc
    inc hl
    ld d, e
    ld bc, $3000
    rst RST_20
    ei
    jr nc, jr_039_6d8e

    ld [hl-], a
    ld d, e
    di
    dec h
    ldh a, [c]
    dec h
    di
    adc a
    inc h
    ld a, [bc]
    ldh a, [rSC]
    ld [hl], d
    db $10
    ld b, h
    ld d, a
    db $ec
    jr nz, @+$01

    rst RST_38
    ld b, b
    cp a
    nop
    rst RST_38
    adc b
    ld [hl], a
    jr nz, @-$1f

    ld e, a
    inc b
    ei
    and b
    ld e, a
    ld a, [hl+]
    push hl
    ld b, b
    ld a, [hl+]
    ld hl, $5d38
    ccf
    or c
    ld sp, $00bf
    ccf
    ld a, a
    ld b, l
    ld hl, sp+$32
    ld de, $3e7e
    db $10
    rst RST_18
    rst RST_18
    ld b, b
    rst RST_38
    cp a
    ld b, b
    rst RST_20
    inc [hl]
    rst RST_38
    ld hl, sp+$03
    rlca
    db $fc
    rst RST_38
    inc bc
    db $fc
    db $fc
    adc b
    jr nc, @+$15

    ld c, l
    ld hl, $22e6
    nop
    scf
    db $10
    ld c, h
    ld hl, $3080
    rst RST_38
    rst RST_30
    ld a, a
    add b
    add b
    jr nc, jr_039_6e6d

    ldh [rIF], a
    rra
    ldh a, [$ff2f]
    rst RST_38
    rrca
    ldh a, [$fff0]
    db $dd
    inc hl
    ccf
    ld h, $67
    dec bc
    nop
    call nc, Call_039_6056
    cpl
    ld b, b
    rst RST_38
    inc a
    ld b, c
    ld a, $72
    ld de, $04fc
    cpl
    ld b, $f3
    inc h
    ld [hl], e
    add c
    ld l, d
    ld a, [$5045]
    sub b
    ld l, c
    rst RST_38
    ld d, b
    xor a
    and c
    ld e, [hl]
    ld d, h
    xor e
    xor b
    ld d, a
    rst RST_38
    ld d, l
    xor d
    xor d
    ld d, l
    push af
    ld a, [bc]
    xor d
    ld d, l
    ld a, b
    ld a, [bc]
    ld bc, $51e4
    ld [$5051], a
    xor a
    and b
    ld e, a
    jr nz, @+$3b

    and h
    ldh [rHDMA1], a
    xor h
    ld bc, $100a
    ld c, c
    ld d, l
    ld d, d
    ld d, a
    ld h, e
    nop
    dec b
    adc b
    di
    ld d, b
    xor $45
    ldh a, [c]
    ld b, e
    cp e
    db $fd
    ld b, c
    ld hl, $733c

jr_039_6e6d:
    nop
    add b
    cp a
    rst RST_38
    adc a
    or b
    ret nc

    or a
    ret nc

    ld d, $71
    or a
    db $fd
    ret nc

    ld a, l
    ld [bc], a
    cp $00
    ld bc, $7e80
    ld bc, $0af0
    nop
    add hl, bc
    ld b, d
    cp e
    ld hl, $244d
    inc bc
    db $fc
    rst RST_38
    ld sp, hl
    ld a, a
    dec bc
    dec c
    dec hl
    call Call_039_4d6b
    db $eb
    ld b, a
    ld [hl], h
    db $db
    ret nz

    ret nz

    ld e, [hl]
    db $10
    rlca
    ld b, b
    scf
    ld [de], a
    ld a, b
    rlca
    ld e, e
    ld [hl], b
    rrca
    ld c, a
    ld [hl-], a
    ldh a, [rIF]
    ld a, [bc]
    nop
    pop hl
    ld c, a
    db $10
    rst RST_38
    nop
    rst RST_38

jr_039_6eb4:
    inc b
    ld b, $14
    and $34
    ld h, $fd
    db $f4
    ld [hl], l
    halt
    ld [hl], e
    inc h
    ld [hl], b
    daa
    ld [hl], b
    jr nz, jr_039_6eb4

    ld a, a
    jr nz, jr_039_6f38

    jr nz, @-$7c

    ld h, d
    dec h
    adc d
    ld [hl], b
    ld a, a
    ld [bc], a
    add b
    ld a, [hl]
    nop
    jp nz, Jump_000_3a00

    ld b, l
    ld d, b
    rst RST_38
    ld [$6a10], a
    ldh [$fffd], a
    ld [bc], a
    ld e, a
    and b
    di
    or $09
    ld hl, $a837
    ld h, e
    cp d
    ld b, l
    rst RST_28
    db $10
    reti


    ld a, [$41ea]
    add hl, bc
    nop
    and b
    ld e, a
    and h
    ld h, c
    push de
    ld a, [hl+]
    sbc a
    ld [$d715], a

jr_039_6efc:
    jr z, jr_039_6efc

    ld a, [hl+]
    ld [hl], c
    ld a, a
    nop
    nop
    rst RST_38
    rst RST_38
    ld b, l
    cp d
    xor d
    ld d, l
    ld d, l
    xor d
    xor [hl]
    rlca
    ld d, c
    or [hl]
    pop de
    ldh [$ff7b], a
    add b
    dec c
    dec e
    add b
    daa
    db $db
    db $eb
    ld c, l
    nop
    dec bc
    ld h, b
    rra
    db $10
    dec bc
    nop
    rst RST_38
    sbc $20
    add hl, bc
    ld bc, $f4fe
    ld h, $30
    dec bc
    ld [hl], d
    dec h
    ei
    ld [hl], e
    inc h
    ld b, d
    dec b
    ld h, e
    inc h
    inc hl
    inc h
    ld a, [de]
    rst RST_08

jr_039_6f38:
    ld h, b
    ld a, [de]
    nop
    ld a, [$0853]
    ld hl, $0305
    nop
    cp a
    db $fc
    db $fc
    inc bc
    rst RST_38
    ld hl, sp-$01
    ld hl, $0707
    rst RST_28
    nop
    ld hl, sp-$08
    rlca
    ld l, a
    ld [$00ff], sp
    rra
    ld a, a
    nop
    ldh [$ffe0], a
    push de
    ld a, [hl+]
    rst RST_28
    db $10
    ld hl, $6f07
    ccf
    nop
    add b
    ld a, a
    and b
    ld bc, $3fc0
    and [hl]
    ld bc, $e0bf
    rra
    ldh [$ff1f], a
    or [hl]
    pop de
    or b
    add hl, bc
    or a
    db $fd
    ret nc

    jr nz, jr_039_6f82

    rlca
    ld hl, sp-$01
    inc bc
    ld bc, $fefe
    ret nc

    inc bc

jr_039_6f82:
    inc bc
    db $fc
    ccf
    ret nz

    rst RST_38
    rra
    rst RST_38
    db $fd
    ldh [rP1], a
    ld a, [bc]
    adc l
    adc e
    dec c
    ld h, b
    rra
    ld h, c
    rst RST_38
    ld e, $7f
    nop
    ccf
    rra
    ld l, a
    jr nc, jr_039_6fcc

    rst RST_18
    nop
    rra
    rrca
    rst RST_38
    ldh a, [$ffcc]
    ld bc, $fefd
    rst RST_38
    ld a, [hl]
    add b
    add e
    ld bc, $3e7f
    cp $c1
    rst RST_38
    ret nz

    ccf
    db $f4
    ld h, $d4
    and $fc
    ld b, $ff
    inc e
    ld a, [bc]
    ld hl, sp-$0a
    ldh a, [$ff0e]
    nop
    cp $ff
    nop
    ret nz

    inc bc
    inc h
    inc bc
    inc h
    nop
    daa
    rst RST_38
    nop

jr_039_6fcc:
    inc h

jr_039_6fcd:
    nop
    jr nz, jr_039_6fd0

jr_039_6fd0:
    jr nz, jr_039_6fd5

    nop
    rst RST_38
    rst RST_38

jr_039_6fd5:
    rra
    ld a, [$e200]
    db $10
    ld [bc], a
    ldh [$ffdf], a
    ld b, $00
    ld bc, $1f00
    ld a, [hl]
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rlca
    rst RST_38
    ld hl, sp+$07
    rlca
    nop
    nop
    nop
    ld [hl], a
    ld hl, sp+$00
    rrca
    rst RST_38
    nop
    ld a, b
    add b
    ldh [$ffdc], a
    ld bc, $1ffb
    rra
    ld b, l
    db $10
    ldh [rP1], a
    add e
    nop
    nop
    db $eb
    ld a, a
    rra
    ld hl, $f800
    ccf
    jr jr_039_6fcd

    ret nz

    ccf
    db $fc
    ld hl, $5000
    jr jr_039_7034

    ldh a, [rIF]
    ld a, b
    rlca
    ld a, h
    rst RST_28
    inc bc
    ld a, [hl]
    ld bc, $9d3f
    nop
    rrca
    nop
    or e
    rst RST_38
    ret nc

    or a
    db $d3
    or e
    ret nc

    or b
    ret nc

    cp a
    rst RST_38
    rst RST_18
    sbc a
    ldh [$ff80], a
    rst RST_38
    ld h, b

jr_039_7034:
    add b
    rst RST_38
    rst RST_18
    db $fc
    db $fc
    nop
    inc bc
    inc bc
    and b
    db $10
    inc bc
    nop
    xor a
    cp $01
    add b
    ld a, a
    ld e, c
    db $10
    rra
    db $dd
    nop
    ldh [$ffdf], a
    rra
    nop
    ld hl, sp+$07
    nop
    xor b
    db $10
    rst RST_38
    ld a, c
    scf
    halt
    ldh a, [$ff8f]
    xor l
    db $10
    ret nz

    ccf
    ld a, a
    db $10
    jr nz, jr_039_7062

    inc hl

jr_039_7062:
    ldh a, [rIF]
    cp e
    ld de, $12ab
    dec hl
    ld [bc], a
    nop
    ret nc

    db $10
    cp c
    db $10
    adc $2b
    ld [bc], a
    ld e, $e0
    ldh [$ff89], a
    db $10
    jp z, $1f13

    ldh [$fff3], a
    ldh [rP1], a
    adc e
    nop
    ld hl, $0f02
    ldh a, [$fff0]
    nop
    call z, Call_000_108d
    rst RST_00
    inc b
    ld hl, sp+$00
    ld a, c
    nop
    ld hl, $8006
    rlca
    ld a, c
    nop
    reti


    ld [de], a
    jr nz, jr_039_709a

    inc bc

jr_039_709a:
    db $fc
    inc e
    ldh [rNR52], a
    dec h
    rst RST_38
    inc c
    ldh a, [rSVBK]
    add e
    add b
    rrca
    nop
    ld a, a
    ccf
    rlca
    ld hl, sp+$0e
    ldh a, [rSVBK]
    add c
    inc a
    ld hl, $241a
    nop
    ld [hl+], a
    jr nz, jr_039_70d7

    add hl, bc
    ld e, a
    dec l
    dec e
    nop
    add b
    ld a, e
    add d
    db $fc
    nop
    dec bc
    ld a, [$f405]
    dec bc
    db $10
    add hl, bc
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    ccf
    ret nz

    ccf
    rst RST_18
    rst RST_38
    ccf
    ret nc

    jr c, @-$27

    dec sp

jr_039_70d7:
    call nc, $d43a
    adc h
    jr nz, @+$03

    ld sp, $ff01
    nop
    ld [hl-], a
    ld bc, $003d
    ld sp, $ff0f
    rst RST_38
    db $fc
    inc bc
    ld hl, sp-$05
    ld hl, sp+$0b
    jr c, @-$13

    cp a
    ld hl, sp+$2b
    ld a, b
    dec hl
    jr z, jr_039_7173

    ld h, b
    dec bc
    rst RST_38
    rst RST_30
    nop
    add b
    ld a, a
    ld [hl], d
    add hl, bc
    add d
    nop
    ld a, h
    ld a, h
    rst RST_28
    xor d
    call nz, $c482
    add h
    nop
    db $ec
    add d
    db $ec
    rst RST_38
    ld a, h
    nop
    db $fc
    cp $82
    add b
    ld c, h
    jr nc, @+$01

    db $e4
    ld a, b

jr_039_711b:
    ld h, h
    ld hl, sp+$0c
    ldh a, [$ff98]
    ld h, b
    rst RST_38
    ldh a, [rP1]
    nop
    cp $00
    cp $fc
    ld [bc], a
    rst RST_38
    ld hl, sp-$06
    ld hl, sp+$0a
    jr c, jr_039_711b

    ld hl, sp+$2a
    jp $2a78


    dec a
    ld bc, $01a0
    or [hl]
    rrca
    call nz, $8009
    ld a, [hl]
    cp $d6
    inc bc
    nop
    ld a, [hl]
    db $10
    add [hl]
    ld d, b
    add $48
    rst RST_38
    adc $50
    sbc $10
    sbc $10
    adc $10
    rst RST_18
    adc $2c
    ldh [c], a
    nop
    ld a, a
    ldh a, [$ff03]
    inc b
    ld a, e
    cp a
    nop
    ld a, e
    ld [$0473], sp
    ld [hl], a
    call nz, $c10d
    db $fd
    ld a, [hl]
    db $10
    dec de
    ld a, [hl-]
    call nc, $d43b
    dec sp
    rst RST_10
    cp a
    ccf

jr_039_7173:
    ret nc

    ccf
    rst RST_18
    jr nz, @-$3e

    jr nz, jr_039_717b

    nop

jr_039_717b:
    add a
    nop
    ret nz

    ccf
    inc sp
    dec b
    inc l
    inc de
    dec [hl]
    ld [bc], a
    scf
    ld d, $78
    rst RST_38
    dec hl
    ld hl, sp+$2b
    ld hl, sp-$16
    ld hl, sp+$0a
    ld hl, sp+$37
    ld a, [$0200]
    and b
    nop
    rst RST_38
    ld a, [hl-]
    dec l
    nop
    ld h, b
    add hl, de
    call nc, $0138
    ld [hl], d
    ld a, [de]
    add d
    call nz, Call_000_0209
    dec a
    ld bc, $9880
    rst RST_18
    ldh [$ff8c], a
    ldh a, [$ff84]
    ld hl, sp+$00
    inc bc
    ld a, b
    ld a, [hl+]
    ld c, a
    ld l, c
    ld a, [hl-]
    ld l, b
    dec sp
    ld h, b
    rlca
    ld [hl], d
    inc e
    rst RST_38
    add [hl]
    ld d, $6f
    db $fc
    ld [bc], a
    db $fc
    ld c, $9e
    nop
    inc b
    ld a, d
    ret nc

    ld de, $40ff
    ld a, [hl-]
    ld b, b
    ld a, [hl-]
    ld [$8832], sp
    or d
    rst RST_38
    and h
    sub [hl]
    ld [de], a
    ldh a, [$ff08]
    ld hl, sp+$00
    ld hl, sp-$11
    inc b
    db $fc
    ld [bc], a
    cp $e8
    ld de, $fe00
    inc de
    rst RST_38
    ld h, h
    inc d
    ld h, b
    inc hl
    ld b, e
    ld b, d
    ld bc, $ff1c
    dec e
    ld h, c
    ld a, h
    nop
    ld a, h
    ld b, d
    inc a
    dec [hl]
    rst RST_38
    add hl, bc
    ld [$3201], sp
    inc bc
    inc [hl]
    rlca
    jr nz, jr_039_7282

    rlca
    inc d
    inc de
    ld l, d
    ld a, c
    ld bc, $f078
    ld bc, $40ff
    ccf
    nop
    ccf
    ld hl, $001e
    ld e, $ff
    ld b, d
    ld e, h
    dec d
    ld c, c
    dec b
    ld a, h
    nop
    ld a, b
    rst RST_38
    ld [bc], a
    ld a, d
    ld [$0572], sp
    ld [hl], a
    ld bc, $ff77
    db $10
    ld h, a
    ld [$fe6f], sp
    rst RST_38
    ld bc, $bafe
    ld [hl-], a
    daa
    cp $b0
    ld [bc], a
    xor d
    nop
    ld d, h
    and b
    nop
    ld d, h
    rst RST_38
    xor d
    xor d
    ld d, h
    ld d, h
    xor d
    rla
    add sp, $0f
    db $fd
    ldh a, [$ff50]
    add hl, hl
    rst RST_38
    nop
    push af
    nop
    ld [$e70a], a
    push af
    dec b
    ld a, [$14be]
    dec l
    ld de, $00de
    dec l

jr_039_725a:
    ld a, e
    ld hl, $7852
    jr nz, jr_039_725a

    ld a, [$8989]
    dec l
    ld de, $30ff
    nop
    rst RST_08
    rst RST_08
    jr z, jr_039_7294

    adc a
    rrca
    rst RST_38
    jr z, jr_039_7299

    rst RST_08
    rst RST_08
    rst RST_38
    nop
    db $eb
    nop
    rst RST_18
    ld d, l
    inc d
    xor e
    xor b
    ld d, a
    ldh a, [rSC]
    cp a
    add b
    db $e3

jr_039_7282:
    ld a, a
    rst RST_38
    and b
    dec hl
    or c
    dec e
    or c
    dec e
    ldh a, [$fff0]
    add b
    rst RST_38
    adc a
    ld [$7270], sp
    add b
    add h

jr_039_7294:
    ld [bc], a
    ld [hl], h
    rst RST_38
    ld [hl], e
    halt

jr_039_7299:
    ld [hl], c
    dec bc
    adc b
    rrca
    rrca
    ld bc, $f1ff
    db $10
    ld c, $0e
    pop bc
    ld bc, $0ec0
    rst RST_18
    ld c, $2e
    adc $d0
    ld de, $0036
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    ccf
    cp a
    sbc a
    ld e, a
    ld c, a
    cpl
    rlca
    rst RST_38
    ld d, a
    rrca
    adc a
    dec h
    ld e, h
    ld [hl+], a
    ld a, [hl]
    ld [bc], a
    cp d
    db $dd
    nop
    ld bc, $04f1
    ld a, [de]
    ld b, e
    inc h
    dec l
    jr nz, jr_039_72e0

    rst RST_38
    ld [hl], a
    inc b
    ld [hl], e
    nop
    ld [hl], e
    ld [$027b], sp
    rst RST_38
    ld a, c
    jr z, jr_039_7324

    ld d, h
    inc de
    ld e, d

jr_039_72e0:
    add hl, bc
    ld b, b
    ld a, a
    add hl, de
    ld b, l
    inc e
    ld b, c
    inc e

jr_039_72e8:
    ld d, l
    ld [$143a], sp
    jp z, Jump_000_1673

    ld bc, $00a1
    xor d
    ld b, [hl]
    ld hl, $06c3
    rla
    add sp, -$01
    dec c
    ldh a, [rNR12]
    ld [$f20a], a
    inc de
    db $eb
    rst RST_18
    ld a, [bc]
    ldh a, [c]
    ld [de], a
    ld [$5f0d], a
    jr nz, jr_039_72e8

    nop
    rst RST_38
    xor d
    ld [hl+], a
    dec h
    dec h
    push hl
    push hl
    cpl
    cpl
    rst RST_38
    xor b
    jr z, @-$27

    nop
    halt
    nop
    jp $ff00


    cp h
    inc a
    ld [hl+], a
    ld [hl+], a
    inc a

jr_039_7324:
    inc a
    and h
    and h
    rst RST_30
    xor d
    and d
    ld e, l
    add e
    jr nz, jr_039_733b

    nop
    ldh a, [c]
    ldh a, [c]
    rst RST_38
    adc d
    adc d
    xor d
    adc d
    adc d
    adc d
    ldh a, [c]
    ldh a, [c]
    db $fd

jr_039_733b:
    dec c
    ldh a, [rP1]
    halt
    nop
    xor c
    adc c
    jp z, $ffca

    xor d
    xor d
    sbc d
    sbc d
    xor c
    adc c
    halt
    nop
    cp $ae
    jr nz, jr_039_7390

    ccf
    rst RST_18
    rst RST_18
    cpl
    rst RST_38
    rrca
    ccf
    sbc a
    ld l, a
    ccf
    rst RST_08
    rst RST_38
    rra
    or c
    dec e
    and b
    dec hl
    rst RST_38
    nop
    rst RST_38
    add b
    ld [hl], b
    db $10
    rrca
    ldh [$ffe0], a
    db $fc
    ldh a, [rNR42]
    sub $37
    cp $fe
    db $fc
    db $fd
    ld sp, hl
    ld a, [$f2bf]
    db $f4
    ldh [$ffea], a
    ldh a, [$fff1]
    or c
    dec e
    ld d, $5f
    add sp, $0d
    pop af
    dec d
    jp hl


    ld [bc], a
    ld b, e
    ld d, $51
    jr nz, @+$01

    jr jr_039_738e

jr_039_738e:
    rst RST_20
    rst RST_20

jr_039_7390:
    inc d
    inc d
    rst RST_20
    rst RST_20
    rst RST_18
    inc b
    inc b
    ld [hl], l
    inc b
    ei
    jr nz, jr_039_739c

jr_039_739c:
    ld l, e
    nop
    rst RST_18
    sub l
    sub h
    ld d, l
    ld d, h
    sub d
    ld h, $40
    ld d, l
    ld d, c
    db $fd
    xor [hl]
    jr nz, jr_039_73ac

jr_039_73ac:
    dec b
    nop
    ld a, [$82fa]
    add d
    ld a, a
    push af
    pop af
    add [hl]
    add b
    ld a, [$07f8]
    jr nz, jr_039_73bc

jr_039_73bc:
    rst RST_30
    ret nc

    nop
    xor a
    ld l, e
    jr nc, jr_039_7412

    ld c, a
    xor b
    adc b
    rst RST_10
    xor a
    adc a
    ld [hl], b
    jr nz, jr_039_73cc

jr_039_73cc:
    ld d, l
    inc l
    ld [de], a
    xor d
    ld d, l
    db $eb
    ld d, l
    xor d
    ld [hl], d
    inc de
    ld d, l
    ld l, l
    ld [hl+], a
    xor [hl]
    ld d, b
    ld d, a
    sbc a
    xor b
    ld l, $d0
    rla
    add sp, -$34
    ld de, $4970
    add b
    cp $3d
    nop
    rrca
    nop
    ld [$0800], sp
    inc bc
    add hl, bc
    pop af
    ld [bc], a
    adc b
    ld b, e

jr_039_73f5:
    ccf
    ld bc, $013e
    ret nz

    nop
    cp a
    nop
    rst RST_28
    and b
    nop
    and b
    rrca
    sbc a
    ld bc, $0002
    ld [bc], a
    rst RST_38
    ld hl, sp+$3a
    nop
    jp c, Jump_039_5a00

    nop
    ld e, d
    ccf
    add b

jr_039_7412:
    add hl, bc
    ld [bc], a
    ld [$0b00], sp
    add e
    ld c, b
    add hl, sp
    inc de
    nop
    sub h
    ld b, a
    ld e, c
    ld de, $1159
    and [hl]
    ld b, l
    adc b
    ld b, e
    or d
    ld b, a
    ld [hl], e
    inc de
    sub b
    ld b, a
    rst RST_38
    or [hl]
    nop
    ld c, c
    ld c, c
    ld d, h
    ld d, h
    sub h
    sub h
    rst RST_18
    cp [hl]
    cp [hl]
    ld [hl+], a
    ld [hl+], a
    db $dd
    jr nz, jr_039_743d

jr_039_743d:
    ld [$7f00], sp
    rst RST_30
    rst RST_30
    ld b, h
    ld b, h
    ld d, a
    ld b, a
    ld d, h
    dec d
    ld d, b
    ld a, l
    cp b
    jr nz, jr_039_744d

jr_039_744d:
    ccf
    nop
    rst RST_18
    ret nz

    ccf
    sbc l
    jr nz, jr_039_7455

jr_039_7455:
    jr nz, jr_039_74aa

    ld e, $51
    sbc [hl]
    jr nz, jr_039_73f5

    dec h
    cp h
    add hl, de
    ld l, l
    inc h
    ld l, h
    ld b, c
    ld d, b
    ld e, c
    ld a, [bc]
    ld [hl], b
    ld c, c
    ld d, l
    ld b, e
    jr nz, jr_039_74ac

    ld a, l
    ld b, b
    ld [hl], b
    ld e, c
    adc b
    ld b, l
    adc b
    ld b, l
    ccf
    and b
    rrca
    and b
    rrca
    cp a
    nop
    dec hl
    inc de
    dec l
    ld de, $5a7f
    add b
    ld e, d
    add b
    jp c, Jump_000_3a00

    rst RST_08
    ld b, b
    nop
    xor b
    ld d, e
    add b
    ld e, a
    sub b
    ld e, e
    and b
    ld d, c
    and d
    ld e, c
    or b
    ld e, l
    sbc d
    ld b, e
    sub b
    ld d, a
    ld [$57b0], a
    ld [$4081], sp
    nop
    and a
    ld d, h
    ld bc, $f300
    ld a, d
    add c
    ld b, b
    cp a

jr_039_74aa:
    dec a
    nop

jr_039_74ac:
    ldh a, [rP1]
    ret nz

    rrca
    rra
    ld d, b
    ld a, b
    ld [hl], e
    inc d
    inc a
    ld [bc], a
    jp $fe08


    nop
    add c

jr_039_74bc:
    cp a
    ld b, b
    ld h, [hl]
    cp a
    ccf
    add c
    cp a
    ld bc, $bf3f
    sbc c
    ld b, c
    rra
    jr nc, jr_039_751f

    ld h, a
    jp $c401


    add hl, bc
    ld c, d
    ld h, b
    ccf
    ld bc, $604d
    ld [hl], b
    ld h, c
    ld a, a
    add c
    ccf
    ret nz

    nop
    ei
    inc bc
    ld hl, sp+$7f
    ld l, d
    add a
    inc c
    and e
    xor e
    adc a
    ld l, b
    or d
    ld bc, $6162
    and d
    ld h, l
    nop
    cp $6f
    ld d, b
    ld c, d
    ld a, [bc]
    ld d, [hl]
    ld d, $6e
    ld l, $5e
    rst RST_38
    ld e, $fc
    cp h
    ld a, b
    jr c, @-$0e

    ldh a, [$ff81]
    ld bc, $c07e
    ld l, e
    ld [hl], b
    ld c, e
    dec a
    ld [bc], a
    dec [hl]
    jr jr_039_74bc

    inc hl
    ld [hl], $03
    jr z, jr_039_7577

    adc b
    ld [hl], e
    dec d
    sub b
    ld b, h
    ld a, l
    ld b, b
    add b
    ld b, b
    ld h, b
    ld b, [hl]
    ld h, l
    dec a

jr_039_751f:
    ld bc, $007f
    ld [hl+], a
    ld [hl], c
    inc h
    ld [hl], b
    ld [de], a
    ld [hl], b
    or b
    inc b
    call nz, $b002
    ld [bc], a
    ld a, b
    ld h, e
    ld [hl], d
    ld h, a
    add b
    ld d, h
    ld l, c
    ld d, h
    ld h, c
    call nz, $1f0d
    ld [hl], h
    pop af
    nop
    inc h
    ld [hl], b
    dec c
    ld h, c
    ld [bc], a
    or [hl]
    add b
    ld a, e
    ld b, b
    cp a
    sub b
    ld a, c
    rst RST_38
    nop
    ld [hl-], a
    add hl, hl
    ld bc, $fe01
    adc $61
    push af
    ld l, b
    ld a, $12
    xor c
    ld h, e
    add $7f
    ld b, [hl]
    ld d, l
    jr z, jr_039_75c2

    inc c
    push af
    ld h, [hl]
    db $f4
    ld l, c
    nop
    rst RST_38
    dec e
    add b
    ld c, $ff
    nop
    nop
    push af
    rst RST_38
    dec d
    ld [$fff5], a
    ld a, a
    nop
    nop
    ld [bc], a
    db $fd
    dec b

jr_039_7577:
    ld a, [$07ff]
    nop
    ld sp, hl
    nop
    ld c, $01
    rlca
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld d, b
    rst RST_38
    rst RST_38
    and b
    nop
    dec hl
    call nc, $a857
    ld a, [bc]
    ld a, a
    push af
    ld [$fdff], a
    nop
    dec b
    ld a, [$0116]
    db $fd
    rst RST_38
    ld sp, $0002
    rst RST_38
    ld b, b
    nop
    ld a, a
    add b
    rst RST_38
    xor a
    ld d, b
    ld e, a
    and b
    dec hl
    call nc, $ffa8
    adc a
    push af
    nop
    dec d
    ld [$010a], a
    ld [de], a
    ld bc, $0314
    rst RST_38
    db $fc
    add hl, de
    ld [bc], a
    ld a, $01
    call nc, $a8ff
    nop
    ld a, [bc]

jr_039_75c2:
    push af
    jr nz, jr_039_760d

    rlca
    ld l, $05
    ld e, d
    inc bc
    db $10
    rlca
    inc [hl]
    inc bc
    ccf
    ld sp, $3006
    dec b
    inc c
    sub [hl]
    dec bc
    and d
    dec c
    cp $00
    cp a
    inc bc
    add $05
    and a
    ld [$0232], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_760d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_039_7700:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_039_7c75:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_039_7ca4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_039_7d38:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
