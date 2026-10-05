; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

    jr nz, jr_02f_4042

    db $fc
    ld b, l
    rla
    ld b, a
    xor l
    ld c, l
    rst RST_08
    ld d, b
    ld l, c
    ld d, a
    rst RST_18
    ld e, b
    xor a
    ld e, [hl]
    ld l, d
    ld h, b
    cp $65
    add $67
    ld e, h
    ld l, h
    ld d, l
    ld l, a
    add hl, sp
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ret nc

    ld a, c
    dec e
    nop
    add b
    rst RST_38
    or a
    ld c, c
    db $ed
    inc de
    pop de
    cpl
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, [$d415]
    dec sp
    cp c
    ld d, [hl]
    rst RST_38
    rst RST_38
    ei
    add b
    ld a, a
    db $10
    rrca
    add b
    ld a, a
    or b
    ld e, a
    or b
    rst RST_38
    ld c, a
    add b

jr_02f_4042:
    ld a, a
    rst RST_38
    nop
    nop
    nop

jr_02f_4047:
    inc a
    db $fd
    ei
    jr nc, jr_02f_4053

    ld a, [hl]
    db $fd
    ld a, $c1
    rrca
    cp $fe

jr_02f_4053:
    ld b, b
    inc b
    rst RST_38
    rlca
    rst RST_38
    inc bc
    rst RST_38
    ld bc, $fbfe
    ld e, $fd
    ld d, b
    inc bc
    cp [hl]
    ld a, l
    db $fc
    ei
    ld hl, sp+$5f
    rst RST_30
    ldh a, [rIF]
    ldh a, [$ffef]
    ld h, b
    dec b
    rst RST_38
    ld l, d
    nop
    ei
    ld a, a
    add b
    ld b, b
    dec b
    rst RST_08
    cp [hl]
    rst RST_08
    cp [hl]
    rst RST_18
    rst RST_30
    cp a
    rst RST_08
    jr nc, @+$32

    dec b
    ld a, $fd
    rra
    rst RST_38
    rst RST_38
    adc a
    ld a, a
    add a
    ld a, b
    inc bc
    rst RST_38
    ld a, e
    rst RST_30
    cp $92
    ld bc, $f7fb
    di
    rst RST_28
    db $e3
    rst RST_18
    pop bc
    rst RST_38
    ld a, $fc
    ei
    db $fc
    adc e
    adc h
    di
    add b
    rst RST_28
    rst RST_38
    add [hl]
    db $fd
    cp $a9
    ld bc, $0001
    rst RST_38
    db $fc
    or b
    rlca
    inc l
    ld bc, $003f
    ret nz

    ccf
    inc a
    rst RST_38
    db $fd
    cp $6a
    ld bc, $f7ff
    ld [$29d6], sp
    nop
    rst RST_38
    dec b
    ret nz

    nop
    jr nz, jr_02f_4047

    inc e
    adc $10
    rst RST_38
    ldh [$ff08], a
    ldh [$ffc8], a
    jr nc, @-$70

    ld [hl], a
    sub $ff
    add hl, hl
    halt
    adc c
    ld a, a
    add b
    cp $ff
    db $fc
    rst RST_38
    rst RST_38
    jr c, @+$01

    ret nz

    ld a, $3f
    nop
    ret z

    rst RST_38
    ld sp, $7088
    ret z

    jr nz, jr_02f_4103

    db $e4
    ld de, $c0ef
    inc sp
    add b
    push de
    or b
    nop
    nop
    nop
    inc bc
    rst RST_38
    nop
    inc b
    inc bc
    ld e, b
    rst RST_30
    ld [$1117], sp
    rst RST_38
    rrca
    inc de

jr_02f_4103:
    inc c
    inc sp
    db $ec
    db $fc
    nop
    inc bc
    ei
    db $fc
    ld a, $c7
    ld [bc], a
    rst RST_38
    rst RST_38
    rst RST_28
    db $10
    db $ed
    rst RST_38
    ld [de], a
    inc de
    inc c
    ld [de], a
    dec c
    ld [de], a
    dec c

jr_02f_411b:
    jr c, jr_02f_411b

    rlca
    db $10
    inc d
    inc de
    sub e
    db $10
    dec hl
    rst RST_38
    db $ed
    rst RST_30
    ld [de], a
    db $ed
    ld [de], a
    cp c
    ld bc, $ffff
    ld a, $ff
    rst RST_38
    inc bc
    db $fc
    db $fc
    nop
    or [hl]
    ld c, b
    db $ec
    db $10
    rst RST_38
    ret nc

    inc l
    db $fc
    db $fc
    ld hl, sp+$14
    call nc, $ff38
    cp b
    ld d, h
    cp $fe
    ld [hl], a
    add hl, bc
    dec l
    inc de
    rst RST_38
    ld de, $3f2f
    ccf
    ld a, [hl-]
    dec d
    inc d
    dec sp
    rst RST_38
    add hl, sp
    ld d, $7f
    ld a, a
    cp a
    ld a, a
    ld bc, $bffe
    ld a, [hl+]
    push de
    ld d, a
    xor b
    cp a
    ld b, b
    or c
    ld bc, $9e00
    cp d
    nop
    ld d, h
    xor e
    ld a, [$b105]
    dec b
    ld l, [hl]
    ld de, $7f00
    rst RST_38
    cp d
    ld b, l
    ld d, a
    xor b
    jp z, $7a35

    rla

jr_02f_417d:
    cp a
    or d
    ld c, l
    push de
    ld a, [hl+]
    xor e
    ld d, h
    ld a, d
    rla
    add d
    rst RST_18
    ld a, l
    ld d, l
    xor d
    rst RST_28
    db $10
    ld l, d
    dec d
    dec d
    ld [$befb], a
    ld b, c
    halt
    rla
    db $fd
    cp $40
    cp a
    xor b
    rst RST_30
    ld d, a
    db $f4
    dec bc
    ld [hl], h
    inc de
    nop
    nop
    and l
    ld e, d

jr_02f_41a5:
    rst RST_38
    ld [$c514], a
    jr c, jr_02f_41a5

    db $fc
    push af
    ld a, [de]
    rst RST_38
    jp c, $b534

    ld e, b
    ld a, [$a7fc]
    ld e, c
    rst RST_38
    ld c, l
    inc sp
    and c
    rra
    ld c, a
    ccf
    cp d
    dec d
    rst RST_38
    ld d, h
    dec sp
    cp c
    ld d, $4f
    ccf
    nop
    pop hl
    rst RST_38
    nop
    pop bc
    nop
    pop bc
    ld [$0881], sp
    and c
    cp e
    ld [$fa40], sp
    db $10
    ld h, c
    ld [$0041], sp
    dec h
    inc c
    rst RST_20
    ld h, c
    inc c
    ld b, c
    inc c
    ld h, $0b
    ld h, $01
    add a
    ld bc, $07ff
    ld bc, $0103

jr_02f_41ed:
    dec b
    nop
    add l
    nop
    ld a, a
    ld [bc], a
    nop
    ld [bc], a
    jr nz, jr_02f_417d

    jr nz, @-$7c

    jr nc, jr_02f_4221

    db $fc
    cpl
    cpl
    dec a
    jr nz, jr_02f_4271

jr_02f_4201:
    nop
    ld e, h
    jr nz, @+$68

    jr @+$01

    ld c, d
    inc [hl]
    ld d, a
    jr z, jr_02f_4257

    inc [hl]
    ld d, c
    ld l, $ef
    ld b, e
    inc a
    ld b, c
    ld a, $60
    dec hl
    add l
    cp d
    add hl, bc
    rst RST_38
    or [hl]
    inc de
    xor h
    and l
    ld a, [de]
    dec bc
    inc [hl]

jr_02f_4221:
    ld d, l
    rst RST_38
    ld a, [hl+]
    ld l, e
    inc d
    ld d, a
    jr z, jr_02f_4298

    db $10
    ld [hl], l
    cp a
    ld a, [bc]
    ld l, a
    db $10
    ld d, [hl]
    jr z, jr_02f_42b0

    ld d, c
    jr nz, jr_02f_42ad

    rst RST_38
    nop
    ld h, b
    nop
    ld hl, sp+$00
    db $fc
    add b
    xor [hl]
    rst RST_38
    ret nc

    sub $a8
    adc [hl]
    ldh a, [$ff96]
    add sp, -$7e
    rst RST_18
    db $fc
    add [hl]
    ld hl, sp-$7e
    db $fc
    and b
    dec hl
    add [hl]
    ld hl, sp-$11
    adc d
    db $f4
    add [hl]
    ld hl, sp-$68

jr_02f_4257:
    ld hl, $f08e
    sbc [hl]
    cp a
    ldh [$ff8c], a
    ldh a, [$ff9c]
    ldh [$ff98], a
    pop bc
    jr nz, jr_02f_41ed

    db $fc
    cp a
    jr nz, jr_02f_4201

    ld hl, $f48a
    add c
    db $fd
    add h
    ld sp, hl
    ccf

jr_02f_4271:
    adc b
    push af
    add l
    ld hl, sp-$78
    db $f4
    cp b
    ld hl, $23da
    rst RST_38
    xor h
    ret nc

    sbc [hl]
    ldh [$ffac], a
    ret nc

    call c, $efa0
    cp b
    ret nz

    ldh a, [$ff80]
    add b
    ld de, $e51a
    ccf
    pop af
    ret nz

    inc l
    ld bc, $21f9
    add b
    ld de, $7f80

jr_02f_4298:
    ld c, a
    or b
    sbc l
    ldh a, [$ff2d]
    nop
    dec b
    nop
    ld a, [bc]
    ld a, a
    ld [de], a
    cp d
    inc bc
    ld l, $ef
    nop
    ld e, [hl]
    nop
    cp $7f
    ld [de], a

jr_02f_42ad:
    ld [bc], a
    db $fd
    rst RST_30

jr_02f_42b0:
    cp e
    ld [$2d0f], sp
    nop
    ret nc

    nop
    xor b
    cp d
    nop
    db $10
    ld [hl], c
    rst RST_28
    call nz, $f811
    dec h
    ld sp, hl
    ld hl, $0010
    ld [$3043], sp
    db $fd
    jr z, jr_02f_430e

    jr nc, jr_02f_4305

jr_02f_42cd:
    nop
    rla
    nop
    cpl
    nop
    rst RST_18
    rra
    nop
    ld a, $01
    ld e, a
    ld d, l
    jr nc, @+$7f

    ld [bc], a
    rst RST_38
    cp [hl]
    ld bc, $40be
    cp $00
    cp [hl]
    ld b, b
    rst RST_38
    sbc [hl]
    ld h, b
    ld c, $f0
    sub [hl]
    ld l, b

jr_02f_42ec:
    ld c, $f0
    and a

jr_02f_42ef:
    add [hl]
    ld a, b
    ld d, h
    ld c, l
    jr nc, jr_02f_4365

    ld sp, $8f75
    jr nz, jr_02f_42ef

    rst RST_38
    nop
    ld a, [$7d00]
    ld [bc], a
    cp d
    dec b
    ld [hl], h
    rst RST_38
    dec bc

jr_02f_4305:
    ld hl, sp+$07
    ld [hl], c
    ld c, $ea
    dec d
    ld [hl], l
    adc a
    ld a, [bc]

jr_02f_430e:
    rst RST_20
    jr jr_02f_430e

    or b
    nop
    sub b
    ld sp, $05b1
    ld a, a
    rst RST_38
    nop
    ld [hl], l
    ld a, [bc]
    ld l, d
    dec d
    ld d, l
    ld a, [hl+]
    ld l, b
    rst RST_38
    rla
    ld d, b
    cpl
    nop
    ld a, a
    ld b, b
    ccf
    call nc, Call_000_00ff
    ld a, d
    add b
    cp l
    ld b, b

jr_02f_4330:
    ld e, [hl]
    and b

jr_02f_4332:
    cpl
    rst RST_38
    ret nc

    rra
    ldh [rIF], a
    ldh a, [rNR22]
    add sp, $02
    cp d
    dec bc
    jr nc, jr_02f_4343

    jr z, jr_02f_4362

    ld b, e

jr_02f_4343:
    nop
    and l
    rst RST_00
    jr nc, jr_02f_42cd

jr_02f_4348:
    rst RST_38
    nop
    dec bc
    db $f4
    dec b
    ld a, [$7c83]
    dec b
    rst RST_38
    ld a, [$bc43]
    and c
    ld e, [hl]
    jp $e93c


    rst RST_38
    ld d, $4b
    nop
    add a
    nop
    ld c, e
    nop

jr_02f_4362:
    sub a
    xor d
    db $e3

jr_02f_4365:
    jr nc, jr_02f_42ec

    rst RST_20
    ld [hl-], a
    set 1, c
    jr nc, jr_02f_4330

    ret


    jr nc, jr_02f_4332

    ld d, e
    nop
    and c
    rst RST_30
    ld [hl-], a
    cp e
    ld bc, $5157
    jr nc, @+$61

    ld d, c

jr_02f_437c:
    jr nc, jr_02f_4393

    rla
    ld l, l
    ld [de], a
    dec hl
    or b
    ld [$3512], sp
    ld de, $09b0
    ld a, a
    ld [de], a
    rst RST_38

jr_02f_438c:
    pop hl
    ld e, $f3
    inc c
    ei
    inc b
    ei

jr_02f_4393:
    inc b
    di
    rst RST_38
    nop
    ld a, [hl-]
    ld b, b
    ld bc, $b132
    ld c, [hl]
    ei
    inc b
    rst RST_28
    cp e
    ld b, h
    cp a
    ld b, b
    ld a, $41
    db $10
    ldh [$ffcf], a
    ld a, a
    jr nc, jr_02f_438c

    rra
    rst RST_30
    ld [$00ff], sp
    ld e, b
    ld b, c

jr_02f_43b3:
    rst RST_38
    rst RST_38
    rst RST_38
    daa
    jr @-$2f

    jr nc, @+$21

    ldh [$ffcf], a
    ccf
    ret nz

    ld a, a
    add b
    sbc [hl]
    jr nc, jr_02f_43b3

    jr nz, jr_02f_4348

    ld a, l
    cp a
    adc $31
    sbc $21
    xor $11
    xor b
    ld de, $ffee
    ld de, $df00
    ld [bc], a
    dec [hl]
    nop
    dec bc
    ld bc, $15df
    ld bc, $00e4
    ld [hl+], a
    adc d
    ld b, b
    cp $00
    add a
    ld [bc], a
    ld a, b
    ld a, d
    sub d
    ld b, c
    ld a, [hl+]
    jr nz, jr_02f_437c

    ld c, a
    and c
    ld c, a
    cp $8f
    nop
    nop
    cp $01
    inc b
    add hl, bc
    inc d
    ld [hl+], a

Jump_02f_43fa:
    dec bc
    daa
    ld h, c
    rst RST_38
    inc c
    nop
    call z, $cd21
    ld hl, $e1ed
    rst RST_38
    ld c, h
    and c
    call z, $8c21
    ld h, c
    db $ed
    pop hl
    cp $38
    ld l, $00
    and [hl]
    ld bc, $8721
    inc hl
    add a
    ld a, l
    jr nz, jr_02f_4423

    ld d, d
    inc hl
    add a
    ld a, [hl+]
    nop
    dec d
    ld d, c

jr_02f_4423:
    jr nc, jr_02f_4423

    cp a
    nop
    jr nz, jr_02f_4429

jr_02f_4429:
    jr nz, jr_02f_4432

    daa
    rlca
    daa
    ld b, a
    xor d
    nop
    ld d, l

jr_02f_4432:
    db $fd
    ld bc, $22f8
    ld l, d
    ld bc, $73aa
    jr nc, @+$01

    cp $00
    ld c, $f0
    ld b, $10
    ld [bc], a
    jr nc, jr_02f_44c4

jr_02f_4445:
    ldh [c], a
    ret nc

    ldh [c], a
    ret nc

    ld d, l
    nop
    ld a, [hl+]
    sbc a
    jr nc, @+$01

    ld [hl], b
    rrca
    ld [hl], b
    ld [$0870], sp
    ld [hl], c
    add hl, bc
    sbc a
    ld [hl], c
    add hl, bc
    ld d, l
    nop
    xor d
    inc hl
    ld e, d
    ld d, b
    ld d, e
    inc bc
    rst RST_38
    db $fc
    ld bc, $0004
    inc c
    ld hl, sp-$0c
    ld hl, sp+$01
    db $f4
    inc e

jr_02f_446e:
    ld d, c
    ld [hl], b
    ld e, c
    dec d
    inc d
    add b
    ld d, [hl]
    inc a
    ld d, c
    sub b
    ld e, c

jr_02f_4479:
    ld c, h
    ld d, c
    sub b
    and b
    ld e, c
    ld l, h
    ld d, c
    or b
    ld e, c
    inc e
    ld d, b
    jr z, jr_02f_4445

    nop
    ld de, $0a50
    sub d
    ld c, a
    jr nc, jr_02f_449d

    rra
    ld b, d
    db $fd
    ld bc, $b05f
    inc b
    inc a
    ld d, b
    db $10
    rst RST_38
    ld [bc], a
    ldh a, [rNR52]
    nop

jr_02f_449d:
    jp c, $fe18

    inc a
    rst RST_28
    cp $3c
    jp c, Jump_02f_4c18

    ld d, b
    ld a, [bc]
    ld h, b
    rrca
    rst RST_38
    ld h, h
    nop
    ld e, d
    jr jr_02f_452e

    inc a
    ld a, [hl]
    inc a
    adc e
    ld e, c
    jr @-$2e

    ld d, l
    xor a
    sbc a
    jr nc, jr_02f_446e

    ld bc, $506c
    inc b
    inc bc
    nop
    db $fc

jr_02f_44c4:
    dec h
    ld d, c
    or c
    inc bc
    call z, Call_000_2051
    ld h, e
    ld d, $53
    or c
    rlca
    cp $26
    ld d, e
    and $24
    cp $3c
    and $24
    or $f7
    inc [hl]
    cp $3c
    ld [hl], $53
    ld h, [hl]
    inc h
    ld a, l
    inc a
    ccf
    ld h, [hl]
    inc h
    ld [hl], l
    inc [hl]
    ld a, a

jr_02f_44ea:
    inc a
    ld b, [hl]
    ld d, e
    jr nc, jr_02f_455c

    cp h
    or c
    rlca
    ld h, [hl]
    ld d, e
    dec b
    jr nz, jr_02f_44f9

    jr nz, jr_02f_4479

jr_02f_44f9:
    ld h, a
    inc bc
    ld [hl], c
    jr nz, jr_02f_454e

    ld d, c
    ret c

    ld d, l
    or c
    ld bc, $3042
    jp nz, Jump_02f_6aa1

    ld [hl], c
    ld [hl], c
    ld c, c
    ld d, c
    or c
    ld l, b
    ld d, b
    ld d, c
    ld d, a
    nop
    cp a
    sbc a

jr_02f_4514:
    jr nc, jr_02f_4514

    add $61
    rst RST_38
    nop
    ld d, b
    inc c
    or b
    inc c
    ldh a, [$ff30]
    db $d3
    ld l, b
    adc h
    ld h, c
    adc h
    ld h, c
    ld d, c
    jr nc, jr_02f_4568

    jr nz, @+$51

    jr nc, jr_02f_455f

    ld l, b

jr_02f_452e:
    adc h
    inc h
    ld d, d
    and d

jr_02f_4532:
    ld h, l
    ld [bc], a
    ldh a, [$ff08]
    ld [hl], b
    dec e
    jr nc, jr_02f_44ea

    ld h, l
    ld [hl], b
    rrca
    dec bc
    ld [hl], b
    rrca
    ld a, b
    sbc a
    jr nc, jr_02f_454e

    ld h, c
    ld a, [bc]
    ld h, c
    dec [hl]
    ld h, l
    ldh a, [$ffd4]
    ld h, l
    inc d
    ld h, b

jr_02f_454e:
    dec d
    ld h, d
    ccf
    ld a, c
    ld h, b
    nop
    sub b
    ld h, b
    cp $39
    dec [hl]
    ld b, $01
    add hl, de

jr_02f_455c:
    ld b, $27
    add hl, de

jr_02f_455f:
    add hl, sp
    ld c, a
    inc bc
    ld bc, $0000
    ld h, b
    ld [hl], b
    ld a, [hl+]

jr_02f_4568:
    jr nz, jr_02f_456b

    ld l, b

jr_02f_456b:
    ld [hl], d
    rst RST_18
    nop
    ld hl, sp+$60
    ld h, b
    ld hl, sp+$2d
    nop
    ld c, b
    ld b, b
    rst RST_38
    ret nc

    nop
    ldh a, [$ffe0]
    ldh a, [rSB]
    ldh [rNR23], a
    rst RST_38
    dec bc
    rra
    nop
    nop
    add hl, bc
    ld b, $0f
    dec b
    rst RST_38
    rrca
    db $10
    ld b, $69

jr_02f_458d:
    inc bc
    db $f4
    nop
    ld [bc], a
    rst RST_38
    db $10
    ld bc, $000a
    nop
    ld [$0054], sp
    rst RST_38

jr_02f_459b:
    ld h, b
    ld b, b
    jr nc, @+$33

    nop
    ld hl, $2308
    rst RST_38
    nop
    ret z

jr_02f_45a6:
    nop
    dec b
    jr jr_02f_45bf

    jr c, jr_02f_4532

    rst RST_38
    jr nc, jr_02f_458d

    nop
    ld [hl], h
    nop
    ld de, $8100
    rst RST_38
    ld b, $02
    ld b, $e0
    nop
    add e
    nop
    daa
    rst RST_28

jr_02f_45bf:
    ld h, b
    cpl
    ld h, b
    rrca
    or a
    ld [hl], b
    add c
    ld h, b
    ld b, h
    rst RST_38
    ld h, b
    rlca
    nop
    rst RST_20
    nop
    jp $9818


    cp a
    inc a
    sbc c
    inc a
    sbc c
    ld a, $c0
    ld b, e
    jr nc, jr_02f_459b

    rst RST_38
    jr jr_02f_45a6

    inc e
    ld h, c
    inc c
    dec sp
    nop
    xor [hl]
    ld l, e
    nop
    adc b
    ccf
    ld a, d
    add b
    db $eb
    ld [hl], b
    ld b, c
    nop
    ld bc, $bf20
    nop
    db $10
    inc b
    ld [$0c00], sp
    dec bc
    jr nc, @+$04

    ld bc, $1101
    add b
    ld d, $13
    pop bc
    or c
    ldh [c], a
    add b
    ld b, e
    ld b, d
    and d
    nop
    inc hl
    rlca
    sub a
    sub b
    ld b, h
    ld c, d
    jr z, @+$05

    inc b
    call nz, $e9eb
    ld [hl+], a
    ld d, d
    inc d
    ret nz

    add a
    adc c
    rlca
    ld bc, $40c2
    ld b, b
    nop
    ld d, $80
    ld [bc], a
    ld d, $00
    dec b
    ld bc, $8202
    ld h, [hl]
    inc h
    add hl, bc
    ld c, $86
    jp $805c


    ld hl, $0c02
    and e
    ld h, b
    pop bc
    inc a
    ld [$8422], sp
    dec c
    di
    nop
    add b
    ld b, b
    ld b, b
    and b
    and b
    db $10
    ld d, b
    ld [$0000], sp
    db $10
    dec e
    dec bc
    inc b
    inc b
    add hl, bc
    inc b
    ld [bc], a
    ld bc, $0784
    dec b
    add hl, bc
    ld c, c
    adc e
    sub h
    and c
    ld a, a
    nop
    jr z, @-$66

    call nz, $1021
    add hl, hl
    cp $00

jr_02f_4663:
    ld de, $b01a
    jr nc, jr_02f_46a8

    and b
    ld h, b
    and b
    and b
    sub b
    ld bc, $0216
    ld [bc], a
    ld d, $00
    inc bc
    ld a, [bc]
    dec c
    add hl, bc
    inc c
    add hl, de
    ld [de], a
    dec d
    ld [de], a
    ld [hl], b
    jr nc, jr_02f_46af

    sub b
    ld d, b
    jr nz, jr_02f_4663

    ldh [$ff0d], a
    ld a, [bc]
    ld [$060d], sp
    dec b
    ld b, $07
    ld d, b
    jr nc, @-$2e

    ld d, b
    xor b
    ld [$a868], sp
    nop
    nop
    ld [$1713], sp
    rla
    rlca
    add e
    ld h, b
    nop
    jr nc, jr_02f_46d0

    add b
    sbc b
    sbc e
    rlca
    ld e, $00
    inc c
    inc c

jr_02f_46a8:
    ld bc, $d919
    ldh [rP1], a
    nop
    db $10

jr_02f_46af:
    ret z

    add sp, -$18
    ldh [$ffc0], a
    ld d, $00
    inc c
    ld [bc], a
    ld b, $01
    rlca
    inc bc
    nop
    rrca
    ret nz

    dec a
    inc bc
    ld b, b
    ldh [$ffc0], a
    nop
    ldh a, [$ffc0]
    nop
    ldh a, [rNR21]
    nop
    inc b
    ld b, b
    ld b, b
    ret nz

    add b

jr_02f_46d0:
    ld d, $00
    inc b
    inc b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0016
    ld [bc], a
    ld [bc], a
    ld b, $b0
    ld [hl], h
    dec bc
    ld e, [hl]
    ld d, $00
    inc bc
    inc bc
    sbc $e1
    add $16
    nop
    inc b
    ld b, b
    add b
    nop
    nop
    ld b, b
    ld b, b
    ld h, b
    ld [bc], a
    ld d, $00
    ld b, $05
    nop
    nop
    ld bc, $0404
    ld [bc], a
    ld bc, $4080
    nop
    nop
    add b
    ret nz

    nop
    nop
    ld [bc], a
    inc b
    inc b
    nop
    ld bc, $0002
    nop
    jr nz, jr_02f_4711

jr_02f_4711:
    jr nz, @-$5e

    ld d, $00
    ld [bc], a
    ld b, b
    dec e
    nop
    add b
    rst RST_18
    ret nz

    rra
    ret nz

    rra
    pop bc
    ld bc, $c500
    rra
    rst RST_38
    jp z, $dd1f

    rra
    sbc $1f
    ld b, $c0
    xor $10
    ld a, [bc]
    nop
    ret c

    scf
    jr nz, jr_02f_473a

    rst RST_38
    db $10
    ccf
    rst RST_18
    ccf

jr_02f_473a:
    ld b, e
    cp $33

jr_02f_473d:
    db $ec
    jr nc, @+$03

    ld sp, $ffee
    ld [hl], $e8
    cp $27
    ei
    cp $03
    cp $ff
    jr nc, jr_02f_473d

    jr nc, @-$0f

    or c
    ld l, [hl]
    or c
    ld l, [hl]
    rst RST_38
    ld a, a
    jr nz, jr_02f_47d7

    rst RST_38
    jp $c33e


    ld a, $fb
    ret nc

    ld l, $50
    ld bc, $208e
    ld e, $7e
    db $ec
    rst RST_38
    sbc d
    db $ec
    ld a, [de]
    call z, $853a
    add l
    cp l
    ld a, a
    cp l
    add c
    add c
    rst RST_38
    rst RST_38
    ld hl, sp-$05
    ld l, b
    nop
    rst RST_38
    ld hl, sp-$01
    rst RST_38
    ld b, [hl]
    dec c
    ld c, a
    inc b
    ld c, a
    ei
    rrca
    ld b, b
    ld [hl], l
    inc bc
    nop
    ld e, a
    nop
    dec de
    db $f4
    rst RST_38
    rst RST_38
    inc de
    cp $ff
    ld b, d
    rst RST_38
    ld b, a
    ld a, [$5fff]
    rst RST_20
    nop
    ld bc, $00fe
    rst RST_38
    sub d
    rst RST_38
    rst RST_38
    rst RST_38
    dec h
    rst RST_38
    ccf
    push hl
    rst RST_38
    ccf
    rst RST_38
    jp z, Jump_02f_4bff

    cp $7f
    rlc l
    ld a, a
    rst RST_30
    dec bc
    ld a, a
    rlca
    and c
    inc b
    dec b
    ld a, a
    ld b, d
    ccf
    ei
    ld a, a
    rst RST_38
    or c
    rlca
    ld d, l
    rst RST_38
    xor d
    rst RST_38
    nop
    db $fd
    ld c, d
    ret nz

    inc bc
    ld a, [bc]
    ld a, e
    ld bc, $0a7b
    ld c, d
    rst RST_38
    ld [bc], a
    ld c, d
    nop
    ld d, d
    ld [de], a
    ld d, d
    nop

jr_02f_47d7:
    ld d, d
    rst RST_30
    ld d, [hl]
    ld d, d
    sbc $d8
    nop
    ld d, d
    ld d, d
    ld d, d
    sub $ee
    ld [bc], a
    ld a, [bc]
    ld e, $dc
    inc e
    db $10
    rlca
    dec b
    add b
    inc bc
    rst RST_38
    nop
    rrca
    nop
    call c, $c01c
    nop
    rst RST_18
    halt
    inc bc
    ld [de], a
    ret nz

    nop
    nop
    ld bc, $0006
    or $11
    ld [de], a
    rst RST_38
    ld b, $00
    ld b, $c0
    ld h, $e0
    ld h, [hl]
    ldh [$fffc], a
    ld c, h
    ld bc, HeaderMaskROMVersion
    add a
    ld a, d
    ld a, a
    rlca
    ld a, b
    rst RST_38
    rst RST_30
    ret c

    scf
    inc bc
    dec a
    nop
    inc bc
    cp $3e
    jp nz, $fef7

    ccf
    di
    inc sp
    ld [bc], a
    add e
    ld a, [hl]
    add e
    ld a, [hl]
    cp a
    ld a, a
    inc bc
    ld a, h
    rst RST_38
    or b
    ld l, a
    ld c, b
    inc de
    adc [hl]
    rst RST_18
    ld a, b
    sbc [hl]
    ld c, $90
    cp $50
    inc bc
    ld d, [hl]
    xor b
    rst RST_38
    ld c, $a6
    add c
    add c
    cp l
    cp l
    nop
    nop
    ld a, a
    rst RST_38
    nop
    nop
    nop
    add l
    add l
    sub l
    ld l, e
    db $10
    rst RST_28
    ld b, b
    nop
    ld b, b
    ld bc, $1364
    ld b, c
    ld bc, $ff54
    inc b
    ld d, l
    dec b
    ld bc, $1600
    add $12
    rst RST_38
    rlca
    sub d
    rla
    ld b, a
    ld [bc], a
    daa
    rlca
    jr nz, @+$01

    rlca
    db $10
    rlca
    ld [hl], l
    ld a, a
    sub l
    ccf
    ld e, a
    rst RST_38
    dec d
    ld l, $0f
    ld d, d
    rlca
    ld d, a
    ld [bc], a
    ld c, e
    rst RST_38
    inc bc
    ld d, l
    ld bc, $7f01
    ld d, b
    cpl
    jr nz, @+$01

    ld e, a
    ld d, h
    dec hl
    ld l, d
    dec d
    ld [hl], l
    ld a, [bc]
    ld a, a
    sbc a
    nop
    ld a, a
    nop
    ld d, h
    rst RST_38
    ld h, l
    db $10
    or c
    db $10
    xor d
    ei
    ld d, l
    ld d, l
    cp [hl]
    nop
    rst RST_38
    nop
    ld a, [bc]
    ld c, d
    ld a, [bc]
    xor a
    ld c, d
    ld a, [de]
    ld c, d
    ld e, d
    push bc
    db $10
    ld a, e
    jp z, RST_10

    rra
    ld c, d
    ld d, d
    sub $52
    sub $d1
    db $10
    ret nc

    db $10
    ret c

    ld bc, $00ff
    ld d, d
    ret c

    jr @-$3e

    nop
    pop bc
    nop
    rst RST_38
    rst RST_00
    nop
    sbc a
    nop
    ld a, [hl]
    nop
    ld hl, sp+$00
    rst RST_38
    pop hl
    nop

jr_02f_48d2:
    rra
    rra
    ld a, h
    ld a, h
    ldh a, [$fff0]
    rst RST_38
    db $e3
    db $e3
    add e
    adc [hl]
    rrca
    ld [de], a
    rra
    ld h, d
    dec hl
    ld a, e
    add [hl]
    ld [bc], a
    ld bc, $03c2
    nop
    ret z

    ld bc, $0000
    ld bc, $e67f
    ldh [$ffe6], a
    ldh [$ffa6], a
    ldh [rDMA], a
    ld de, $fe06
    jr nz, jr_02f_4900

    db $db
    inc [hl]
    rst RST_38
    inc de

Jump_02f_48ff:
    cp a

jr_02f_4900:
    ld a, $23
    db $fd
    sbc $40
    ld bc, $e837
    ld a, a
    and a
    ei
    ld a, [hl]
    db $fd
    add e
    ld sp, $f712
    jr z, jr_02f_48d2

    daa
    dec sp
    ld a, [hl]
    ei
    ld b, e
    cp [hl]
    jr nz, jr_02f_492e

    rst RST_38
    inc bc
    sbc h
    ld a, d
    db $fc
    rst RST_38
    adc d
    ld l, h
    sbc d
    ld l, [hl]
    sbc b
    ld a, [hl]
    adc [hl]
    sbc b
    sbc a
    ld e, $90
    xor $d0

jr_02f_492e:
    ld l, $6b
    ld [de], a
    ld l, h
    db $10
    add e
    rst RST_38
    sub e
    add a
    sub a
    add h
    sub h
    jp $45d0


    rst RST_18
    dec d
    ld b, l
    dec d
    ld b, h
    inc d
    ld [hl], b
    ld hl, $1101
    rst RST_38
    inc bc
    db $d3
    rst RST_00
    rst RST_10
    ld [$0443], sp
    ld b, c
    rst RST_38
    inc b
    ld d, b
    ld [bc], a
    ld d, b
    dec b
    ld d, h
    inc b
    ld b, h
    ld a, a
    inc c
    ld c, [hl]
    ld a, [de]
    ld e, h
    ld [de], a
    ld b, b
    ld de, $2091
    rst RST_38
    ld [de], a
    ld b, b
    ld a, [bc]
    nop
    sbc d
    ld [bc], a
    add d
    ld [bc], a
    rst RST_38
    ld d, d
    ld [de], a
    nop
    nop
    ld d, b
    cpl
    nop
    nop
    rst RST_38
    add b
    ccf
    ld b, b
    rra
    ld b, b
    rra
    and b
    rrca
    db $fd
    sub a
    ld h, a
    db $10
    ld d, a
    xor b
    nop
    nop
    xor a
    ld d, b
    cp a
    rla
    add sp, $0b
    db $f4
    rla
    add sp, -$41
    nop
    ld e, d
    db $ed
    nop
    add $10
    db $10
    ld c, d
    add $21
    nop
    ld a, e
    add b
    ld l, a
    nop
    ld d, d
    sub $00
    pop de
    db $10
    add h
    ld d, d
    sub $21
    rst RST_38
    nop
    sbc $01
    nop
    add c
    ld b, $05
    ld a, [de]
    rst RST_38
    dec e
    ld h, d
    ld a, a
    add d
    ei
    ld b, $e3
    ld e, $bf
    add e
    ld a, [hl]
    inc bc
    cp $f3
    ld c, $ea
    inc hl
    rlca
    ld a, a
    ei
    ld c, $f7
    jr c, @-$2f

    ld a, b
    or a
    ld a, [bc]
    inc hl
    call c, $3700
    db $10
    inc c
    ret nz

    db $e3
    ld e, $20
    dec d
    rst RST_08
    inc sp
    rst RST_38
    cp h
    rrca
    jr c, jr_02f_4a56

jr_02f_49df:
    inc bc
    cp $02
    cp $7f
    rra
    db $e3
    ld a, h

jr_02f_49e7:
    sbc a
    ldh a, [$ff6f]
    or b
    ld b, c
    nop
    rst RST_38
    jr nc, jr_02f_49df

    inc e
    rra
    sub b
    rst RST_28
    ret nc

    cpl
    rst RST_38
    ret nc

    cpl
    db $d3
    inc l
    ld e, a
    and e
    ld e, a
    xor [hl]
    rst RST_38
    ld d, e
    cp [hl]
    ld d, d
    xor h
    ld e, [hl]
    and d
    ld e, h
    xor [hl]
    rst RST_38
    call z, $fc3a
    jp z, $8a7c

    ld l, [hl]
    sbc b
    rst RST_38
    ld l, [hl]
    sbc d
    add e
    sub a
    rlca
    ld d, a
    cpl
    rst RST_00
    ei
    nop
    rst RST_38
    or c
    inc d
    nop
    rst RST_00
    rst RST_10
    rst RST_00
    rst RST_10
    db $ed
    xor $65

jr_02f_4a27:
    jr nc, jr_02f_4a27

    ld bc, $3378
    ld b, $58
    ld e, $ff
    ld b, b
    inc e
    ld b, b
    ld a, [de]
    ld b, b
    inc b
    ld b, d
    ld a, [de]
    rst RST_38
    ld b, [hl]
    ld b, $5e
    ld e, $5e
    jr nz, jr_02f_4a42

    db $10
    rst RST_38

jr_02f_4a42:
    add d
    db $10
    add d
    jr z, jr_02f_49e7

    inc h
    or b
    ld a, [de]
    rst RST_38
    xor b
    ld h, $80
    jr nc, @-$7e

    ld [$1800], sp
    add hl, bc
    add e
    push hl

jr_02f_4a56:
    db $10
    or c
    inc d
    ld a, a
    ld h, a
    db $10
    and [hl]
    dec [hl]
    or d
    ld de, $1166
    xor a
    rla
    add sp, $0a
    push af
    or [hl]
    add hl, sp
    rst RST_38
    or l
    jr nz, jr_02f_4ac2

    pop af
    xor d
    ld a, c
    ld sp, $3166
    jr nc, jr_02f_4a85

    rst RST_38
    ld c, $f3
    inc e
    rst RST_38
    rst RST_28
    ld a, b
    sub a
    ld hl, sp+$77
    sbc b

jr_02f_4a80:
    rst RST_30
    jr @-$03

    rst RST_30
    ret c

jr_02f_4a85:
    db $eb
    ld [hl-], a
    jr jr_02f_4a80

    add hl, de
    or $1b
    ld a, a
    push af
    rra
    ldh a, [c]
    rra
    or $58
    or a
    jr nz, jr_02f_4a99

    rst RST_38
    jr c, jr_02f_4ab0

jr_02f_4a99:
    cp e
    sub h

jr_02f_4a9b:
    rst RST_18
    db $d3
    rst RST_18
    sbc $ff
    ld sp, $37ee
    jp hl


    ccf
    and $7b
    cp [hl]
    ld a, l
    db $e3
    add hl, sp
    inc h
    sub e
    ld l, [hl]
    di
    adc [hl]

jr_02f_4ab0:
    ld [hl], e
    inc hl
    ld b, b
    rst RST_38
    daa
    db $db
    inc h
    rst RST_00
    ld [$d0df], sp
    cpl
    rst RST_38
    ld l, h
    adc [hl]
    nop
    sbc [hl]
    ret nc

jr_02f_4ac2:
    ld l, [hl]
    ret nc

    xor [hl]
    rst RST_38
    ld d, d
    xor h
    ld d, [hl]
    xor d
    ld c, [hl]
    and [hl]
    ld c, h
    cp d
    ld a, e
    add b
    ld a, a
    ld b, b
    ld b, c
    ret nz

    ccf
    and b
    ld e, a
    ld b, [hl]
    ld b, c
    di
    ret nc

    cpl
    or c
    ld [$02b1], sp
    cp b
    ld e, $00
    cp $fb
    db $fc
    ld [bc], a
    ld h, h
    ld b, e
    db $fd
    ld [bc], a
    db $fc
    inc bc
    jr z, @+$01

    add h
    dec d
    adc h
    dec d
    adc h
    ld a, [hl+]
    sbc b
    inc d
    rst RST_38
    or b
    jr z, jr_02f_4a9b

    ld l, b
    ld [hl+], a
    db $10
    jp nz, $ff80

    nop
    nop
    ccf
    ccf
    nop
    ccf
    nop
    cp a
    db $fc
    add a
    ld b, h
    or b
    ld sp, $0af5
    ld [$f415], a
    dec bc
    rst RST_28
    ld a, [$d405]
    dec hl
    ld h, [hl]
    ld de, $ff1f
    ld b, b
    cp e
    cp a
    ld bc, $10b1
    ld bc, $02ff
    call $ff33
    rst RST_18
    xor a
    rst RST_38
    ld a, a
    rst RST_38
    cp a
    or l

Call_02f_4b30:
    ld b, d
    rst RST_38
    nop
    cp $f4
    ld sp, $f718
    dec de
    db $f4
    rra
    di
    rra
    rst RST_38
    or $3b
    sbc $73
    cp [hl]
    dec sp
    sbc $63
    di
    cp [hl]
    jp Jump_000_2439


    ldh [$ff31], a
    rra
    db $e3
    ld a, [de]
    db $e3
    rst RST_38
    ld [bc], a
    push hl
    ld [hl], $d9
    ld a, [hl]
    or c
    call c, $ff73
    sbc h
    di
    dec e
    ldh a, [c]
    ld [hl-], a
    db $ec
    inc [hl]
    add sp, -$01
    add hl, sp
    ldh [$ff33], a
    pop hl
    daa
    db $e3
    ld c, a
    add a
    rst RST_38
    sbc a
    rrca
    ccf
    rra
    inc bc
    ld e, $13
    ld l, $fb
    or e
    adc $24
    ld b, c
    inc sp
    adc $33
    adc $37
    db $ed
    set 6, [hl]
    dec h
    ld [hl], b
    cp a
    jr c, jr_02f_4bba

    ret nc

    rst RST_28
    ld d, c
    rst RST_38
    xor [hl]
    ld d, e
    xor l
    ld d, a
    xor d
    ld e, a
    and [hl]
    ld c, e
    rst RST_38
    xor [hl]
    ld l, e
    or [hl]
    db $db
    ld h, [hl]
    ld d, h
    xor d
    db $f4
    rst RST_38
    ld c, d
    or h
    jp z, $c836

    ld d, $ea
    inc d
    rst RST_38
    xor $20
    adc $68
    or [hl]
    and b
    ld e, a
    call nc, $2b37
    ld [$9415], a
    ld b, c
    db $fd
    ld [bc], a
    or c
    ld de, $35a6

jr_02f_4bba:
    rst RST_38
    and b
    ld e, a
    ld d, h
    xor e
    xor d
    ld d, l
    push af
    ld a, [bc]
    cp $69
    inc [hl]
    cp $01
    db $fc
    ld [bc], a
    ld hl, sp-$7e
    ld a, b
    rst RST_38
    ld b, h
    or b
    and b
    ld [bc], a
    ld b, b
    ld [bc], a
    ld c, b
    ld [bc], a
    rst RST_18
    adc b
    nop
    ld a, [bc]
    nop
    ld a, [hl+]
    ld a, c
    ld d, b
    xor d
    nop
    rst RST_38
    add b
    nop
    ccf
    add b
    ld [hl-], a
    adc h
    ld [hl+], a
    sbc h
    rst RST_38
    ld [hl+], a
    sbc h
    dec h
    sbc b
    dec b
    cp b
    inc b
    cp c
    rst RST_38
    nop
    nop
    ld a, e
    inc b
    call nc, $a02b

jr_02f_4bfa:
    ld e, a
    rst RST_28
    ld b, b
    cp a
    add b

Jump_02f_4bff:
    ld a, a
    or d
    ld [de], a
    nop
    xor d
    ld d, l
    inc a
    or d
    add hl, sp
    or b
    add hl, sp
    inc bc
    db $fc
    inc b
    ld hl, sp-$2c
    ld c, b
    pop hl
    jr nc, @+$01

    ld b, $fb
    ld b, $fb
    inc e

Jump_02f_4c18:
    rst RST_20
    jr c, jr_02f_4bfa

    ei
    ld a, b
    or a

jr_02f_4c1e:
    ldh a, [$ff33]
    add hl, de
    or $1e
    ldh a, [rNR32]
    rst RST_38
    ldh a, [rNR24]
    ldh a, [rNR13]
    pop af
    ld h, $c2
    ld c, h
    ld a, a
    add h
    sbc d
    ld a, [bc]
    ld [hl], $16
    ld b, b
    ccf
    sbc d
    ld d, h
    cp $b1
    inc d
    inc c
    rst RST_20
    jr nz, jr_02f_4c1e

    add sp, $37
    ret c

    ld a, [hl]
    db $ed
    jr nc, @+$3a

    rst RST_10
    add hl, hl
    sub $2b
    push de
    db $10

jr_02f_4c4c:
    ld b, e
    rst RST_30

jr_02f_4c4e:
    dec sp
    xor $73
    rla
    ld b, h
    sbc e
    and $1b
    and $ff
    dec de
    rst RST_20
    ld a, [bc]
    di
    nop
    rst RST_30
    inc [hl]
    set 7, a
    ld a, h
    or e
    db $fd
    ld h, d
    ld a, [$bc64]
    ldh [rIE], a
    jr c, jr_02f_4c4c

    jr nc, jr_02f_4c4e

    inc bc
    ret nz

    ld c, e
    adc b
    adc a
    sbc e
    nop
    dec sp
    ld [$1166], sp
    ld b, c
    ld h, d
    or c
    inc d
    cp $eb
    ld bc, $4307
    ld h, l
    cp $66
    ld d, c
    xor b
    ld b, b
    jp nc, Jump_000_00ff

    stop
    jr nz, jr_02f_4c8f

jr_02f_4c8f:
    ld b, b
    nop
    add b
    cp a
    ld b, $80
    ld b, $10
    ld b, $88
    ld a, l
    ld d, b
    add c
    rst RST_38
    ld [$0881], sp
    add e
    ld [$08a3], sp
    and d
    rst RST_38
    add hl, bc
    and d
    add hl, bc
    dec bc
    or b
    ld a, [bc]
    or c
    ld c, d
    rst RST_38
    ld sp, $6394
    inc d
    db $e3
    inc l
    jp $e328


    rst RST_00
    jr z, @-$59

    ld [hl], $96
    ld l, a
    or d
    inc de
    ld [$10f3], sp
    ld a, a
    rst RST_20
    jr nz, @-$2f

    jr nz, @-$2f

    ld b, b
    sbc a
    cp b
    ld h, c
    or e
    add b
    ccf

jr_02f_4cd0:
    jp nc, $f659

    ld sp, $f41a
    ldh [c], a
    ld d, l
    ld c, l
    rst RST_38
    add l

jr_02f_4cdb:
    sbc l
    dec c
    dec a
    dec e
    ld c, d
    ld a, [hl+]
    sub d
    rst RST_38
    ld d, d
    ld h, [hl]
    ldh [c], a
    ld d, [hl]
    ld b, d
    sub [hl]
    add d
    ld b, [hl]
    sbc a
    ld [de], a
    ld b, [hl]
    ld [de], a
    ld [bc], a
    ld d, d
    or d
    add hl, sp
    ld b, b
    ld b, c
    inc hl
    rst RST_38
    jp nc, $de27

    dec bc

jr_02f_4cfb:
    sub $fb
    ld h, $db
    xor [hl]
    ld hl, $e661
    rra
    ldh [c], a
    jp z, $0c53

    dec d
    ld d, h
    or c
    rst RST_18
    xor $fe
    ldh [$ff3c], a
    ldh [$fff4], a
    ld c, b
    rrca
    ld h, e
    db $db
    jr jr_02f_4cfb

    ld sp, $c370
    jr c, jr_02f_4d53

    ld [hl], e
    ld h, e
    sbc b
    cp $9e
    ld l, l
    ld [bc], a
    ld hl, sp+$04
    ldh a, [rDIV]
    ldh a, [$ff08]
    rst RST_38
    ldh [rNR10], a
    ret nz

    jr nz, @-$7e

    ld [hl+], a
    add b
    ld c, d
    ld a, a
    ld [$0610], sp
    db $10
    ld b, [hl]
    db $10
    add $64
    ld [hl], h
    rst RST_38
    nop
    sub $c6
    ld [hl+], a
    adc c
    jr nz, jr_02f_4cd0

    inc d
    ld a, a
    add e
    jr @-$77

    jr nc, jr_02f_4cdb

    ld hl, $7a9e
    ld [hl], c
    ld a, a
    ld b, b
    sbc a

jr_02f_4d53:
    ld d, b
    adc a
    ld e, b
    add a
    adc a
    ld a, a
    ld d, c
    ld h, a
    nop
    ld l, d
    dec d
    and d
    jr nz, @-$45

    ld [hl], $c1
    ld a, $9a
    ld d, c
    ld a, a
    ld bc, $06fe
    ld hl, sp+$78
    add c
    rst RST_20
    ld h, a
    db $10
    rst RST_38
    ld d, l
    xor d
    ld a, [bc]
    push af
    ld bc, $80fe
    ccf
    ld l, b
    xor l
    db $10
    call $d038
    ld h, c
    dec e
    push hl
    ld d, b
    daa
    jp Jump_02f_43fa


    cp a

jr_02f_4d88:
    ld b, c
    dec a
    add c
    ld a, l

jr_02f_4d8c:
    ld bc, $d4fd
    ld [hl], c
    dec b
    ei
    ld sp, hl
    inc b
    db $db
    ld [hl], c
    ld d, [hl]
    add hl, bc
    ld c, h
    inc de
    ld e, b
    rst RST_38
    ld h, $31
    ld c, a
    ld h, b
    ld c, e
    ld h, h
    sub a
    ret z

    inc sp
    inc hl
    sbc h
    ld a, [$f061]
    ld [hl], a
    nop
    rst RST_38
    dec e
    add b
    ccf
    rst RST_30
    ld h, b
    rra
    ldh [rSB], a
    nop
    ldh a, [rIF]
    ld [hl], b
    adc a
    rst RST_38
    jr nc, jr_02f_4d8c

    jr c, @-$37

    jr c, jr_02f_4d88

    ld h, e
    sbc b
    ei
    inc hl
    ret c

    ld [de], a
    dec b
    ld h, e
    sbc b
    ld h, e
    sbc b
    nop
    rst RST_38
    cp $01
    db $fc
    ld bc, $02fc
    ld hl, sp+$04
    rst RST_38
    ldh a, [$ff08]
    pop hl
    ld [$10e1], sp
    jp $fb9a


    jr jr_02f_4dfc

    ld sp, $5806
    ld a, [de]
    ld e, b
    ld a, [de]
    sub $ff
    add $d6
    add $00
    db $10
    push bc
    call nc, $f7c5
    call nc, $9182
    ld c, d
    ld bc, $9e21
    ld [bc], a
    cp h

jr_02f_4dfc:
    rst RST_38
    ld b, d
    inc a
    add h
    ld a, c
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    rst RST_38
    ld [$09f3], sp
    di
    jr nz, @+$61

    ret nz

    ccf
    rst RST_38
    add d
    ld a, a
    dec d
    rst RST_38
    cpl
    rst RST_38
    ld d, a
    rst RST_38
    rst RST_38
    cp a
    rst RST_38
    ld a, a
    rst RST_38
    nop
    rst RST_38
    dec b
    rst RST_38
    rst RST_28
    xor d
    rst RST_38
    ld e, l
    rst RST_38
    ld [hl], a
    dec b
    nop
    rst RST_38
    ld d, h
    ld a, [$0073]
    db $dd
    ld [hl], a
    ld b, $2b
    call nc, $fa05
    add d

jr_02f_4e35:
    rst RST_38
    db $fd
    pop de
    cp $e0
    rst RST_38
    push af
    cp $e8
    rst RST_38
    rst RST_38
    ldh a, [rIE]
    ld [hl], b
    rrca
    ldh [$ff1f], a
    ret nc

    cp l
    cpl
    and d
    inc bc
    ldh [$ff1f], a
    ret nz

    ccf
    ld e, b
    nop
    ld hl, sp-$01
    dec b
    ld hl, sp+$07
    ld hl, sp+$0e
    pop af
    rlca
    ld hl, sp-$01
    ld a, [bc]
    push af
    rlca
    ld hl, sp+$45
    ld a, [hl-]
    add e
    ld a, h
    rst RST_28
    ld bc, $03fe
    db $fc

jr_02f_4e69:
    call nz, $8301
    ld a, h
    rlca
    db $fd
    ld hl, sp+$20
    ld bc, $f902
    dec b
    di
    dec bc
    rst RST_20
    rst RST_38
    rla
    rst RST_08
    xor a
    rra
    ld e, a
    ccf
    nop
    nop
    push de
    ld a, a
    ld [hl], a
    nop
    db $fd
    ld [hl], a
    nop
    or $77
    nop
    jp c, $f7ff

    nop
    nop
    rst RST_38
    sbc l
    nop
    xor b
    rst RST_38
    ret nc

    rst RST_38
    cp a
    and b
    rst RST_38
    ld b, d
    db $fd
    add l
    ld a, [$010c]
    jr c, jr_02f_4e69

    rst RST_00
    jr @-$17

    ld b, $15
    inc e
    ld bc, $1310
    ld b, e
    cp b
    cp $1c
    ld bc, $8720
    jr nz, jr_02f_4e35

    jr nz, @-$7b

    nop
    ld l, a
    jp $e700


    nop
    ld l, a
    nop
    nop
    rst RST_38
    inc a
    ld bc, $30b6
    inc de
    jr jr_02f_4f21

    ld a, [hl-]
    ld de, $9384
    ld b, b
    ld de, $ff80
    sub a
    xor d
    add l
    cp h
    add e
    ld a, d
    dec b
    ld a, h
    rst RST_38
    inc bc
    ld [$11f3], sp
    rst RST_20
    ld [de], a
    rst RST_20
    ld hl, $c7ff
    ld [hl+], a
    rst RST_08
    dec h
    rst RST_08
    ld b, d
    adc a
    ld b, l
    inc bc
    sbc a
    rst RST_38
    ld l, l
    nop
    ld h, e
    rla
    ld h, d
    add hl, de
    ld [hl], a
    ld bc, $01e6
    ld [hl], a
    dec b
    rst RST_18
    push af
    rst RST_38
    cp d
    rst RST_38
    push de
    push af
    ld [bc], a
    ldh [rIE], a
    db $fd
    ld d, b
    push af
    nop
    ld b, c
    cp $a2
    db $fd
    ld bc, $fefe
    and d
    dec b
    add sp, $17
    ldh a, [rIF]
    add sp, $17
    db $f4
    ld a, a
    dec bc
    ld a, [bc]
    db $f4
    dec b
    ld hl, sp+$0a
    pop af
    sub $03
    xor e

jr_02f_4f21:
    cpl
    sbc a
    sbc $05
    cp $77
    nop
    ei
    ld [hl], a
    nop

Call_02f_4f2b:
    db $ed
    cp [hl]
    rst RST_28
    ld [bc], a
    ld hl, sp-$01
    call nc, $e8ff
    sub l
    db $10
    and b
    jp $40ff


    rst RST_28
    ld [bc], a
    ld a, [hl+]
    inc de
    db $e4
    inc d
    pop hl
    ld [de], a
    dec b
    ld a, [$2bff]
    call nc, $a857
    xor a
    ld d, b
    ld e, a
    and b
    ld a, [hl]
    ld b, $17
    jr @-$17

    inc e
    db $e3
    inc e
    db $e3
    ld a, [de]
    inc de
    ret nz

    jr jr_02f_4f6c

    ld [de], a
    inc bc
    db $e4
    ld a, [de]
    ld l, a
    nop

Call_02f_4f61:
    ld a, [hl-]
    inc de
    ld a, [hl-]
    inc de
    dec d
    ld d, b
    cp a
    rla
    ld d, b
    ld hl, sp+$07

jr_02f_4f6c:
    db $f4
    dec bc
    xor b
    ld de, $ffa1
    ld e, [hl]
    pop de
    ld l, $a2
    ld e, h
    ld b, d
    cp h
    ld d, d
    rst RST_38
    adc a
    xor b
    rla
    or b
    rrca
    xor b
    rla
    ld d, l
    rst RST_38
    ld a, [hl+]
    ld l, d
    dec d
    ld a, a
    nop
    nop
    nop
    ld [$ffef], a
    ld d, l
    rst RST_38
    ld a, [bc]
    ld l, a
    nop
    ld b, b
    cp a
    xor b
    add hl, hl
    ld d, a
    rst RST_28
    nop
    ld e, a
    jr nz, jr_02f_5012

    ld [hl], e
    nop
    ld d, c
    dec hl
    ld [de], a
    ld l, h
    ld hl, $aaf5
    add c
    nop
    xor b
    ld l, a
    nop
    ld [bc], a
    db $fd
    ld d, l
    xor d
    ld a, [$216c]
    add d
    sbc l
    db $10
    ld a, [bc]
    push af
    dec d
    ld [$772b], a
    call nc, $a05f
    ld l, h
    ld hl, $0000
    cp $21
    nop
    rst RST_38
    ld de, $aaec
    ld d, c
    ld e, b
    and e
    or b
    ld b, a
    ld a, a
    ld [hl], c

jr_02f_4fd0:
    add a
    and b
    rra
    add l
    ld a, a
    ld a, [hl+]
    ld h, c
    jr nz, jr_02f_4fd0

    cpl
    rst RST_38
    ld e, a
    ld [hl], a
    ld [bc], a
    or e
    rst RST_20
    ld d, e
    rst RST_20
    rst RST_38
    and a
    rst RST_08
    ld h, a
    rst RST_08
    rst RST_00
    adc a
    rst RST_08
    sbc a
    rst RST_08
    rst RST_08
    sbc a
    adc a
    rra
    ld a, [hl]
    add hl, de
    ld [hl], a
    ld bc, $fbf0
    ld a, a
    ld [$f1f9], a
    db $fc
    ld hl, sp-$02
    db $f4
    db $d3
    db $10
    sbc l
    db $fc
    db $d3
    db $10
    db $f4
    rst RST_38
    ld a, [$24ef]
    ret c

    inc de
    inc c
    rst RST_38
    di
    inc e
    db $e3
    inc l
    db $d3

jr_02f_5012:
    ld e, $e1
    ld l, $ff
    pop de
    ld e, [hl]
    and c
    ld l, $d1
    ld e, a
    and b
    inc hl
    rst RST_38
    ret c

    inc sp
    ret z

    inc sp
    ret z

    dec sp
    ret nz

    dec sp
    ld a, a
    ret nz

    ld e, e
    and b
    dec hl
    ret nc

    ld e, e
    and b
    jr nz, jr_02f_505e

    rst RST_38
    ld a, [bc]
    ld b, l
    dec c
    ld b, d
    ld a, [de]
    ld b, l
    ld de, $ef4e
    db $10
    ld c, a
    nop
    ld e, a
    ld a, [hl-]
    ld sp, $5ca2
    ld [bc], a
    ld a, a
    db $fc
    inc b
    ld sp, hl
    dec b
    ld hl, sp+$08
    ldh a, [$ff5c]
    ld bc, $13fd
    add hl, hl
    ld [de], a
    ret nz

    ccf
    ld a, [hl-]
    rrca
    add hl, bc
    rst RST_00
    rst RST_38
    and b
    pop af
    ld d, b
    cp $ea

jr_02f_505e:
    rst RST_38
    ld [$ffc7], sp
    ld b, $f1
    ld bc, $aaf8
    cp $7c
    rst RST_38
    cp a
    ld hl, sp-$02
    nop
    ld sp, hl
    ld [bc], a
    rlca
    ld a, [hl+]
    ld de, $dd80
    ld a, a
    ld e, h
    ld hl, $ff17
    xor a
    ld l, l
    ld [bc], a
    rra
    ldh [$ff7f], a
    ld h, b
    add b
    adc b
    rra
    inc d
    ld a, a
    ld a, [$02e5]
    cp $52
    ld sp, $1f60
    db $10
    adc a
    ld [$a4e7], sp
    rst RST_38
    di
    ld d, e
    ld hl, sp-$5c
    ld hl, sp+$01
    rrca
    db $e3
    rst RST_38
    rst RST_28
    rlca
    rst RST_18
    rst RST_00
    rra
    adc a
    ccf
    adc a
    xor a
    ccf
    rra
    ld a, a
    rra
    ld h, d
    inc de
    cp $b4
    ld sp, $fdfe
    db $fc
    cp d
    ld sp, $3f8f
    sub l
    ccf
    ld a, [hl+]
    ld a, a
    rst RST_38
    ld bc, $007f
    ld a, a
    ld bc, $02ff
    rst RST_38
    ld h, c
    ld bc, $126b
    ld l, h
    ld bc, $016c
    ld l, h
    rra
    ld a, [$1dff]
    nop
    add b
    ld a, a
    ld c, [hl]
    rst RST_38
    ld c, [hl]
    rst RST_38
    ld b, h
    rst RST_38
    ld b, b
    inc bc
    nop
    adc $00
    ld bc, $ff55
    ld c, d
    dec c
    nop
    nop
    dec c
    jp z, $01ff

    push de
    inc de
    ld c, $10
    rrca
    ld [hl], $07
    ld [hl], $0f
    ld d, d
    rrca
    ld h, h
    rrca
    halt
    rrca
    cp $88
    ld bc, $4fbf
    or l
    ld e, [hl]
    xor d
    ld [hl], a
    push af
    rst RST_38
    ld c, a
    xor e
    db $dd
    rst RST_38
    rst RST_38
    pop af
    rst RST_18
    ei
    rst RST_38
    ld d, a
    ld e, e
    inc h
    ei
    db $e4
    ld a, d
    ld a, l
    ld e, e
    rst RST_38
    ld l, h
    xor d
    db $fd
    rst RST_38
    db $fc
    rst RST_18
    or h
    rst RST_38
    rst RST_28
    and h
    sub a
    rst RST_38
    sub d

Call_02f_5122:
    ld a, e
    nop
    sub d
    rst RST_38
    ld d, d
    ei
    rst RST_38
    sub l
    pop bc
    nop
    sub a
    rst RST_38
    ld c, c
    rst RST_38
    ld e, l
    ld [$00d1], a
    ld c, c
    ld a, e
    nop
    ld c, c
    push de
    ld [bc], a
    ld [hl+], a
    rst RST_38
    ld [hl], d
    ld [$02e1], a
    ld [hl+], a
    rst RST_00
    nop
    ld [hl+], a
    rst RST_18
    nop
    rst RST_38
    ld d, e
    cp a
    rst RST_38
    ld l, l
    cp a
    ld l, a
    cp c
    ld a, a
    xor a
    ld e, l
    or a
    rst RST_38
    ld c, e
    xor d
    ld d, l
    or c
    ld c, [hl]
    ld a, a
    ld h, h
    ld a, a
    rst RST_38
    ld l, h
    ei
    or h
    ld a, e
    ld h, h
    xor d
    push de
    ld e, e
    rst RST_38
    inc h
    ld a, [hl+]
    ld d, l
    ld e, e
    inc h
    add sp, $17
    adc h
    ld a, a
    ld d, d
    inc c
    and c
    add hl, hl
    and l
    ld h, e
    ld [hl], e
    jr jr_02f_5188

    rst RST_38
    nop
    nop
    or [hl]
    ld c, c
    and d
    ld e, l
    ld [hl+], a
    ld e, l
    rst RST_38
    ld [hl], $49
    ld a, $81
    ld [hl], $89
    ld [hl+], a

jr_02f_5188:
    sbc l
    sub e
    ld [hl+], a
    dec e
    ld [$e201], a
    dec b
    ld [bc], a
    rst RST_18
    nop
    add h
    inc c
    cp $9f
    inc h
    ld a, a
    inc h
    ld a, a
    ld d, l
    ld d, c
    inc d
    ld d, b
    db $10
    ccf
    rst RST_38
    sub l
    call nz, $c091
    ld d, c
    ret nz

    adc c
    ldh [rIE], a
    ld c, l
    ldh [$ff90], a
    ldh a, [$ff94]
    db $fc
    sub d
    rst RST_38
    rst RST_38
    ld c, c
    ld a, a
    dec d
    ccf
    ld c, c
    rra
    ld d, l
    rra
    ld a, a
    ld c, c
    rra
    sbc l
    ccf

Call_02f_51c1:
    ld e, l
    ld a, a
    ld c, c
    pop hl
    inc c
    rst RST_18
    ld d, d
    rst RST_38
    ld d, l
    db $fc
    ld c, l
    sub c
    db $10
    ld b, h
    cp $ff
    ld b, b
    cp $44
    cp $4c
    cp $4d
    db $fc
    rst RST_38
    db $db
    rra
    pop de
    ld de, $0ec0
    ld b, $19
    rst RST_38
    ld c, $31
    ld d, a
    jr z, jr_02f_5257

    db $10
    ld e, a
    jr nz, @+$01

    rst RST_28
    rst RST_38
    rst RST_28
    rst RST_38
    pop hl
    pop af
    ld b, b
    ld c, [hl]
    rst RST_38
    ld [hl-], a
    dec c
    ld [hl], l
    adc d
    ei
    inc b
    pop af
    ld c, $ff
    cp [hl]
    rst RST_38
    cp [hl]

jr_02f_5201:
    rst RST_38
    cp b
    ld hl, sp-$49
    ldh a, [rIE]
    ld sp, $3176
    or [hl]
    sub a
    ld d, b
    ret nz

    jr nz, @+$80

    ldh [rSC], a
    ld a, a
    ld [hl-], a
    ccf
    ld [hl+], a
    ccf
    ld [bc], a
    rst RST_10
    db $10
    ld a, a
    ld [hl], d
    ld a, a
    ld d, l
    db $fc
    ld c, c
    db $fc
    ld d, h
    sbc l
    db $10
    cp $94
    inc de
    ld b, l
    db $fc
    ld l, a
    db $10
    ld a, a
    nop
    ld e, a
    rst RST_38
    jr nz, jr_02f_52a0

    db $10
    ld d, a
    jr z, jr_02f_5244

    ld [hl], b
    rlca
    rst RST_38
    jr jr_02f_5201

    nop
    ei
    inc b
    push af
    ld a, [bc]
    ei
    rst RST_30
    inc b

jr_02f_5242:
    rst RST_38
    nop

jr_02f_5244:
    ld b, $25
    db $e3
    jr jr_02f_5242

    ld [bc], a
    rst RST_38
    ld sp, hl
    ld [bc], a
    ld hl, sp+$02
    or c
    ld b, [hl]
    pop af
    ld b, $ff
    or c
    ld b, [hl]
    pop de

jr_02f_5257:
    ld h, $72
    ld a, a
    ld [hl], d
    ld a, a
    ld e, a
    ld [hl+], a
    ld a, a

jr_02f_525f:
    ld d, d
    ld a, a
    ld [hl+], a
    rst RST_10
    db $10
    ld [de], a
    reti


    db $10
    rst RST_10
    ld d, l
    ld a, a
    ld c, d
    ld d, e
    db $10
    ld c, [hl]
    dec [hl]
    jr nz, jr_02f_52b5

    ld a, a
    rst RST_38
    ld b, b
    ld a, a
    ld b, b
    ld b, c
    ld a, $00
    ld a, h
    inc bc
    rst RST_38
    ldh a, [rIF]
    rst RST_20
    jr jr_02f_525f

    ld hl, $6798
    rst RST_38
    cp b
    ld b, a
    or c
    ld c, a
    ld c, d
    cp $00
    ld bc, $7fff
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$50
    rst RST_38
    db $ed
    and b
    ld a, e
    nop
    nop
    nop
    rlca
    ld hl, $07f8

jr_02f_52a0:
    cp $ef
    ld bc, $8778
    ld [bc], a
    ld a, e
    nop
    ld c, b
    ld hl, sp+$07
    db $fc
    ld h, c
    ld [hl+], a
    rlca
    ld hl, $fc03
    rra
    ldh [$ff0e], a

jr_02f_52b5:
    rrca
    rst RST_38
    ldh a, [rSB]
    db $fc
    nop
    ld c, $f0
    inc bc
    db $fc
    ld a, a
    ld bc, $c0fe
    ccf
    di
    inc c
    ld c, d
    adc c
    inc b
    rst RST_38
    ld b, h
    ld a, a
    ld a, [bc]
    ccf
    nop
    nop
    ccf
    ccf
    ldh a, [$ff92]
    ld de, $11e0
    sub b
    ld de, $2061
    rst RST_38
    ret nz

    jr @-$3a

    db $fd
    rra
    or d
    dec h
    dec b
    rra

jr_02f_52e5:
    add h
    add a
    rst RST_38
    nop
    rst RST_38
    ccf
    nop
    rrca
    ret nz

    sub c
    ldh a, [$ff90]
    cp $fe
    add $03
    cp d
    ld b, b
    add hl, de
    ldh [c], a
    or b
    ld b, a
    db $10
    rst RST_38
    rst RST_20
    ld sp, $8206
    ret nz

    or c
    ldh a, [c]
    or e
    sbc e
    db $f4
    ld [hl+], a
    ld hl, $3220
    ccf
    sub $11
    ld h, $20
    ld a, a
    rst RST_38
    ld [de], a
    ccf
    jr nc, jr_02f_52e5

    ld sp, $30cf
    rst RST_08
    rst RST_38
    add hl, de
    and $d9
    ld h, $d9
    ld h, $cd
    ld [hl-], a
    rst RST_38
    db $ec
    inc de
    cp e
    rst RST_38
    ld e, a
    rst RST_38
    ld a, $ff
    rst RST_38
    sbc l
    ld a, a
    xor d
    ld a, a
    call nc, $c13f
    ld a, $ff
    db $e3
    inc e
    xor b
    rst RST_38
    pop de
    cp $8f
    ldh a, [rIE]
    inc a
    jp $fc03


    rlca
    ld hl, sp-$61
    ld h, b
    rst RST_38
    rst RST_38
    nop
    ld a, a
    add b
    cp $00
    db $fc
    nop
    cp e
    db $fd
    nop
    adc c
    jr nz, jr_02f_5356

jr_02f_5356:
    ret nz

    ccf
    rlca
    jr nz, jr_02f_535b

jr_02f_535b:
    rst RST_38
    inc b
    inc bc
    push af
    rra
    dec hl
    rst RST_38
    ld a, a
    rst RST_38
    rst RST_38
    ccf
    rst RST_38
    rlca
    inc bc
    nop
    ld hl, sp+$7e
    ccf
    cp a
    ldh a, [$ff7f]
    inc bc
    rst RST_38
    dec b
    rst RST_38
    ld b, h
    inc sp
    nop
    or [hl]
    scf
    jr nc, jr_02f_53fa

    rst RST_38
    ld d, e
    add hl, sp
    ld hl, sp-$08
    ld d, e
    ld sp, $f3fd
    rst RST_38
    cp $53
    jr nc, jr_02f_53f1

    ld sp, $126d
    adc d
    sub l
    rst RST_38
    push hl
    ldh [c], a
    add hl, sp

jr_02f_5392:
    ld hl, sp-$72
    cp $03
    rst RST_38
    cp a
    add c
    rst RST_38
    ld b, b
    cp $b1
    or $80
    inc sp
    ld sp, $76ff
    ld de, $0196
    and $00
    nop
    ld [hl+], a
    db $f4
    push hl
    jr nz, jr_02f_5392

    inc hl
    ld [bc], a
    reti


    stop
    nop
    db $ec
    inc de
    rst RST_30

jr_02f_53b7:
    db $ec
    inc de
    ld l, h
    and e
    inc [hl]
    ld l, [hl]
    ld de, $116e
    rst RST_38
    ld h, a
    sbc b
    ld l, [hl]
    sub c
    db $ec
    inc de
    jp hl


    ld d, $ff
    db $e3
    inc e
    db $e3
    inc e
    rst RST_20
    jr jr_02f_53b7

jr_02f_53d1:
    add hl, de
    cp $71
    jr nz, @+$01

    adc d
    ld a, a
    push de
    ccf
    srl a
    ld a, a
    push de
    ccf
    ld c, d
    cp a
    ld b, c
    cp a
    ld a, [hl+]
    ld a, e
    nop
    rst RST_38
    xor d
    rst RST_38
    ld [hl], c
    rst RST_38
    ldh [c], a
    rst RST_38
    ld b, l
    rst RST_38
    rst RST_38
    sub e

jr_02f_53f1:
    rst RST_28
    dec [hl]
    rst RST_08
    nop
    rst RST_38
    ld d, [hl]

jr_02f_53f7:
    rst RST_38
    rst RST_30
    xor l

jr_02f_53fa:
    rst RST_38
    ld e, [hl]
    ld h, l
    jr nc, jr_02f_53f7

    rst RST_38
    di
    db $fc
    rst RST_38
    ld h, a
    ld hl, sp+$1f
    rra
    rlca
    rst RST_20
    ld b, e
    ei
    rst RST_38
    and c
    db $fd
    ld d, c
    db $fd
    and b
    ld a, [hl]
    ret nc

    ld a, $5f
    ldh [rNR34], a
    ld a, a
    rst RST_38
    cpl
    ld a, e
    nop
    dec hl
    ld b, $22
    push de
    dec b
    add hl, sp

jr_02f_5422:
    jr nc, jr_02f_5422

    ld h, l
    jr nc, jr_02f_53d1

    add a
    nop
    nop
    rst RST_38
    db $ed
    ld bc, $30e5
    rst RST_38
    rst RST_38
    ld hl, $fe30
    dec bc
    rst RST_38
    db $dd
    dec d
    ld bc, $5f40
    rst RST_38
    cp a
    ld d, e
    jr nc, @+$22

    rra
    rst RST_38
    ret z

    rlca
    inc sp
    nop
    ld c, h

jr_02f_5447:
    nop
    ld d, e
    nop
    rst RST_38
    ld c, b
    db $10
    ld d, d
    ld [$004a], sp
    ld d, a
    xor b
    rst RST_28
    ld a, [bc]
    push af
    pop bc
    ld a, $61
    ld hl, $0000
    ld a, $57
    ld bc, $02bd
    xor h
    ld sp, $532e
    ld b, h
    ld c, $5b
    ld b, b
    rst RST_08
    db $e4
    dec de
    pop hl
    ld e, $b8
    inc sp
    cp h
    ld sp, $39c6
    rst RST_38
    ld c, h

jr_02f_5476:
    or e
    ld e, h
    and e
    ld e, [hl]
    and c
    ld e, $e1
    rst RST_38
    jr c, jr_02f_5447

    ld sp, $21ce
    sbc $21
    sbc $ff
    ld [hl], d
    adc a
    ld [hl], d
    adc a
    db $e4
    rra
    ldh [$ff1f], a
    rst RST_38
    pop hl
    ld e, $c7
    jr c, @-$2f

    jr nc, jr_02f_5476

    jr nz, @+$01

    adc a
    ldh a, [$ff1f]
    ldh [$ff3f], a
    ret nz

    ld a, a
    add b
    cp $06
    ld hl, $2cd3
    xor e
    ld d, h
    ldh [rNR34], a
    ldh a, [$ff7f]
    ld c, $e0
    rra
    ldh a, [rIF]
    ld [hl], b
    adc a
    xor b
    ld b, b
    ld [hl], a
    adc [hl]
    ld [hl], b
    adc [hl]
    ld d, b

jr_02f_54ba:
    ld sp, $7f2a
    nop
    or l
    ld b, d
    ld a, a
    add b
    ld a, a
    add d
    ld a, l
    rst RST_38
    rst RST_38
    push af
    db $d3

jr_02f_54c9:
    jr nc, jr_02f_54c9

    ld a, [bc]
    ld b, b
    ld a, [$d52a]
    ld e, a
    and b
    cp [hl]
    ld b, c
    rst RST_28
    cp $ff
    ld d, h
    rst RST_38
    sub a
    ld b, d
    rst RST_38
    add b
    ld a, a
    or $d8
    ld b, c
    ld c, d
    nop
    ldh [rWX], a
    cp d
    dec b
    cp h
    inc bc
    rst RST_38
    cp b
    rlca
    or h
    dec bc
    xor b
    rla
    or b
    rrca
    cp $f8
    ld b, c
    adc $91

jr_02f_54f7:
    adc $11
    call z, $cc93
    rst RST_38
    sub e
    inc c
    inc bc
    db $ec
    jp $cee1


    pop hl
    rst RST_30
    adc $c6
    add hl, sp

jr_02f_5509:
    db $10
    ld e, c
    adc $31

jr_02f_550d:
    ld sp, $e3ce
    inc sp
    call z, Call_02f_5122
    and c
    jr nc, jr_02f_5540

    ld d, d
    rst RST_18
    jr nz, jr_02f_54ba

    rst RST_38
    ld h, b
    sbc l
    ld h, d
    adc d
    ld [hl], l
    sub l
    ld l, d
    adc a
    rst RST_38
    ld [hl], b
    rst RST_08
    jr nc, jr_02f_54f7

    ld sp, $ac53
    or e
    rst RST_38
    ld c, h
    halt

jr_02f_5530:
    adc c
    and $19
    db $e4
    dec de
    db $ec
    rst RST_38
    inc de
    ld e, b
    and a
    and c
    ld e, [hl]
    ld sp, $23cc
    rst RST_38

jr_02f_5540:
    pop de
    daa
    jp $c10f


    ld c, a
    add b
    ld b, e
    rst RST_38
    add b
    pop bc
    jr nz, jr_02f_550d

    jr nc, jr_02f_5509

    ld a, a
    ld [hl], h
    ld a, a
    rst RST_38
    xor c
    cp $42
    db $fd
    sub l
    ld l, d
    ld b, $21
    db $fd
    inc bc
    ld h, c
    jr nz, jr_02f_558a

    rst RST_10
    ld d, l
    xor a
    and d
    ld e, a
    ccf
    pop de
    cpl
    ldh [$ff1f], a

jr_02f_556a:
    db $d3
    inc l
    ld b, $20
    ld h, a
    jr nc, jr_02f_5530

    db $fc
    rst RST_38
    pop hl
    cp $4f
    ldh a, [rTMA]
    ld hl, $7e00
    pop hl
    ld c, h
    ld d, d
    nop
    and b
    rra
    sub b
    cpl
    and b
    ld d, e
    cp $fa
    ld b, c
    or l
    ld a, [bc]

jr_02f_558a:
    pop hl
    adc $01
    ld b, $f1
    rst RST_38
    add [hl]
    ld sp, hl
    ldh [c], a
    db $fc
    ldh a, [rIE]
    inc a
    rst RST_38
    or $5f
    jr nz, jr_02f_556a

    ld sp, $51c0
    call z, Call_02f_4b30
    jr nc, @-$01

    add a
    xor l
    jr nz, jr_02f_55a8

jr_02f_55a8:
    nop
    inc sp
    call z, $d824
    rst RST_28
    ld h, e
    add b
    ld e, a
    add b
    dec l
    jr nc, @-$1e

    rst RST_38
    cp $ff
    nop
    nop
    rst RST_18
    jr nz, jr_02f_561b

    ld hl, $038c
    rst RST_30
    or $01
    ld hl, sp+$07
    ld hl, $000f
    nop
    rlca
    cp a
    ld hl, sp+$1f
    ldh [rP1], a
    pop bc
    ld a, $da
    ld b, c
    ld a, a
    rst RST_38
    rst RST_38
    ldh a, [rP1]
    nop
    add a
    ld [hl], b
    add b
    ld [hl], b
    sbc a
    inc bc
    ld hl, sp+$01
    ld a, h
    add e
    jr jr_02f_5626

    db $dd
    ld d, b
    ld hl, sp+$3a
    ld h, b
    inc hl

jr_02f_55eb:
    nop
    add hl, sp
    jr nc, jr_02f_55eb

    rst RST_38
    ld b, a
    ld h, b
    jr nz, jr_02f_5654

    inc hl
    sbc l
    inc bc
    ld d, e
    jr nc, jr_02f_5679

    rst RST_38
    add a
    ld b, [hl]
    ld b, e
    ld b, $20
    db $fc
    db $eb
    rst RST_38
    db $10
    ld d, e
    jr nc, @-$17

    adc [hl]
    ld d, b
    ld b, d
    ld b, d
    ld b, d
    db $fd
    ld c, d
    ld b, e
    ld h, b
    adc d
    ld [bc], a
    ld a, [$fc82]
    add b
    ld [hl], a
    nop
    nop
    cp a
    ld d, b

jr_02f_561b:
    ld h, b
    add b
    add b
    cp a
    ld d, l
    ld h, h
    inc hl
    nop
    nop
    add d
    inc bc

jr_02f_5626:
    xor h
    ld hl, $215f
    add b
    ld e, a
    ld h, d
    ld e, [hl]
    ld hl, $68fc
    ld h, e
    ld e, [hl]
    ld h, e
    ld d, l
    rst RST_38
    ld a, [bc]
    ccf
    sub l
    cp a
    rst RST_38
    adc [hl]
    ccf
    ld c, $3f
    ld b, h
    ld a, a
    ld a, a
    ld b, b
    rst RST_38
    ld a, e
    ld h, h
    ld sp, $316e
    ld e, [hl]
    ld a, [hl-]
    ld e, l
    rst RST_38
    dec a
    ld l, d
    ld l, [hl]
    ld a, l
    dec sp
    ld a, [hl]
    ccf

jr_02f_5654:
    ld l, a
    rst RST_38
    ccf
    ld l, a
    ld a, a
    ld a, d
    ccf
    ld h, h
    add hl, sp
    ld e, [hl]
    cp a
    ld sp, $2a5e
    ld [hl], l
    ld [hl], l
    ld c, d
    inc [hl]
    daa
    ld b, h
    ld e, $35
    ld [hl+], a

jr_02f_566b:
    and b
    nop
    cp a
    rra
    ld h, b
    ld hl, $235f
    jr nz, jr_02f_56d7

    db $fc
    ld e, a
    ld [hl+], a
    ret z

jr_02f_5679:
    ld h, l
    ld d, $11
    or $f1
    ld [bc], a
    ld bc, $02ef
    ld sp, hl
    ld a, [$4601]
    ld b, e
    inc bc
    nop
    inc b
    cp a
    ld hl, sp-$60
    rst RST_38
    call nc, $eaff
    ld h, l
    ld [hl-], a
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rlca
    ccf
    add hl, sp
    ld b, a
    add a
    add hl, bc
    ei
    pop af
    ld [bc], a
    jr z, @+$33

    rst RST_38
    ld bc, $fffe
    ld c, $fe
    ld b, $20
    ld [hl], b
    rst RST_38
    ld c, $00
    nop
    ld a, a
    ld h, b
    ld a, [$41b5]
    ld [$40d1], a
    and b
    rst RST_38
    inc b
    ld hl, sp+$03
    db $fc
    rlca
    jr nz, jr_02f_566b

    jr nz, jr_02f_56c2

jr_02f_56c2:
    ld [bc], a
    db $fc
    add hl, bc
    ldh a, [rTAC]
    rst RST_38
    ret nz

    ld a, $00
    ld sp, hl
    nop
    rst RST_00
    rlca
    ccf
    ld e, c
    inc c
    jr @+$72

    db $ed
    ld d, b
    ld a, a

jr_02f_56d7:
    ld a, b
    ld b, $20
    ret nz

    ld b, $20
    rst RST_28
    adc a
    nop
    nop
    rrca
    ld d, b
    ld [hl], b
    cpl
    rrca
    ld c, a
    rst RST_38
    rrca
    xor a
    rrca
    ld b, b
    nop
    sbc a
    rra
    rst RST_18
    sbc $5d
    halt
    ret nz

    nop
    rst RST_18
    ld b, $5e
    ld [hl], h
    inc e
    rst RST_18
    rst RST_38
    inc bc
    jr nz, jr_02f_56ff

jr_02f_56ff:
    ld d, a
    rlca
    scf
    rlca
    dec hl
    rst RST_18
    inc bc
    dec de
    inc bc
    rst RST_38
    jr nc, jr_02f_571b

    ld [hl], d
    jr nc, @+$01

    push de
    ret nz

    ld h, c
    jr nz, jr_02f_5721

    jr c, jr_02f_5775

    inc bc
    add l
    nop
    jr nc, @+$01

    ld d, a

jr_02f_571b:
    inc c
    rst RST_38
    ld [hl], b
    ld h, c
    jr nz, jr_02f_572d

jr_02f_5721:
    pop hl

jr_02f_5722:
    nop
    pop bc
    sub h
    ld [hl], e
    ld e, l
    rst RST_38
    ld [hl], d
    ld hl, $ff1c
    ld h, b

jr_02f_572d:
    jp c, Jump_000_1850

    ld b, $20
    sub a
    ld h, b
    rst RST_38
    sub [hl]
    ld h, c
    jr nz, @-$1e

    xor h
    ld [hl], b
    ld c, c
    ld [hl], c
    rrca
    or $fc
    ld d, c
    rst RST_38
    rst RST_08
    ld b, $20
    inc c
    rst RST_38
    ld [$75ff], sp
    ldh a, [rNR24]
    ld b, b
    ld a, e
    ld h, c
    jr nz, @+$62

    rst RST_38
    ld e, $06
    ld [hl+], a
    sub c
    jr nz, jr_02f_5722

    ld [hl], b
    ld c, l
    ld h, b
    xor h
    ld [hl], d
    ld c, $e2
    ld [hl], b
    ld d, $41
    or $02
    ld h, c
    jr nz, jr_02f_57e3

    ld c, e
    ld sp, $801d
    dec hl
    rst RST_38
    rst RST_38
    inc bc
    rst RST_38
    add b
    rst RST_38
    ld a, [hl]
    nop
    nop

jr_02f_5775:
    rst RST_38
    rst RST_38
    jp Jump_000_38ff


    rst RST_38
    nop
    rst RST_38
    adc a
    cp a
    rst RST_38
    ldh [rIE], a
    inc e
    rst RST_38
    rlca
    ld b, $00
    ld bc, $ff3b
    ldh a, [$ff0c]
    nop
    rlca
    rst RST_38
    ld [hl], b
    jr @+$03

    ld b, $00
    rst RST_10
    ldh a, [rIE]
    rrca
    inc c
    nop
    inc bc
    ld [de], a
    nop
    jp nz, $f5ff

    rrca
    ld b, $00
    rra
    inc c
    nop
    nop
    rst RST_38
    ldh [$ffbf], a
    rst RST_10
    ccf
    cp a
    nop
    ld b, d
    ld bc, $4380
    nop
    and b
    nop
    cpl
    xor a
    nop
    rst RST_38
    rst RST_38
    ld a, [hl-]
    ld [bc], a
    nop
    ld b, $00
    ld d, a
    ld [bc], a
    rst RST_28
    and $e1
    or $11
    ld h, d
    ld bc, $0106
    or $ff
    ld de, $1116
    sub $11
    xor b
    rlca
    xor b
    and a
    inc b
    xor c
    dec b
    ld [hl], h
    rlca
    ld d, l
    ld bc, $84fe
    ld [$e956], sp
    sub c
    sub b

jr_02f_57e3:
    dec bc
    ld [hl], h
    add hl, bc
    and c
    xor e
    nop
    ld [bc], a
    cp $06
    rst RST_38
    cp $0e
    cp $1e
    cp $2e
    cp $14
    ld a, a
    cp $28
    cp $10
    cp $a5
    add hl, bc
    ret nz

    dec b
    ld a, $ac
    ld bc, $05a9

jr_02f_5804:
    jr nz, jr_02f_5804

    nop
    pop de
    ld a, [bc]
    ld [hl], h
    add hl, bc
    db $fc
    ld a, h
    ld [bc], a
    cp l
    nop

jr_02f_5810:
    jr z, jr_02f_5810

    ld d, b
    cp $e8
    cp $5f
    ret nc

    cp $e0
    cp $c0
    adc a
    inc bc
    sub b

jr_02f_581f:
    inc b
    rla

Call_02f_5821:
    ld a, $74
    ld bc, $04a8
    xor b
    rlca
    xor a
    ld c, e
    nop
    ld c, d
    ld bc, $84f0
    ld bc, $0157
    ld d, [hl]
    dec b
    inc b
    dec d
    sub $10
    ld d, $10
    rrca
    or $f0
    ld d, $10
    ld d, $11
    ld b, d
    add hl, de
    ld h, $11
    ld d, d
    add hl, de
    xor a
    ld d, $d0
    sub [hl]
    ld d, b
    ld h, d
    db $10
    ld d, c
    ld h, [hl]
    inc de
    sub $d5
    ld de, $0b40
    and b
    ld c, a
    inc c
    nop
    ld e, a
    inc c
    ld d, $11
    ld l, h
    ld a, h
    ld de, $19a0
    ld d, $51
    or b
    rra
    ld d, $50
    call nz, $9e17
    and b
    inc de
    and l
    dec b
    xor a
    rrca
    ld a, [de]
    inc de
    rst RST_18
    inc de
    ld d, h
    ld h, c
    ld d, h
    ld [hl+], a
    ld de, $0156
    call nz, $c419
    dec d
    sub [hl]
    db $10
    ld h, [hl]
    rla

jr_02f_5885:
    ldh a, [rSVBK]
    rlca
    inc d
    db $10
    dec de
    jr nz, @-$75

    inc de
    add b
    add b
    ret nz

    ret nz

    cp a
    jp nz, Jump_000_06c2

    ld b, $0e

jr_02f_5898:
    ld c, $a0
    dec c
    jr jr_02f_5898

    jr jr_02f_581f

    ld b, d
    jr nz, jr_02f_58e2

    ret nz

    jr nz, jr_02f_5885

    ld [bc], a
    rst RST_38
    jp nz, $8604

    inc c
    ld c, $a5
    add hl, bc
    and h
    ld a, c
    ld [$2152], sp
    ret z

    dec b
    nop
    ld c, $00
    ld b, $62
    jr nz, @+$01

    ld [bc], a
    ld b, b
    ld b, d
    add b
    jp nz, $c000

    nop
    pop af
    add b
    inc d
    add hl, hl
    ld [hl], d
    ld bc, $14df
    nop
    ld b, b
    ld b, b
    ret nz

    rst RST_18
    ret nz

    add h
    call nz, $c400
    db $10
    dec e
    and $e6
    inc bc
    xor $ee
    inc h
    add hl, de
    dec e
    nop
    add b

jr_02f_58e2:
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
    jr jr_02f_58fe

jr_02f_58fe:
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
    jr nc, jr_02f_5915

jr_02f_5915:
    ld d, c
    db $fc
    inc [hl]
    inc b

jr_02f_5919:
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
    rst RST_28
    ccf
    ld b, a
    ccf
    ld b, c
    ld d, d
    ld bc, $412f
    rrca
    ld a, a
    ld d, d
    ld c, a
    ld [hl-], a
    ld e, a
    ld [hl+], a
    ccf
    ld b, [hl]
    ld h, b
    nop
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
    ld d, d
    nop
    ld d, c
    ccf
    ld d, e
    ccf
    ld d, d
    ld [hl], h
    ld [bc], a
    ld a, a
    ld e, d
    ccf
    ld c, d
    ccf
    ld c, [hl]
    ccf
    ld b, h
    add b
    inc b
    db $fc
    ld h, e
    nop
    adc d
    nop
    ld b, [hl]
    ccf
    ld c, b
    ccf
    ld b, h
    ld a, $7f
    ld b, h
    ld a, $45
    ld e, a
    ld h, $5f
    ld h, $60
    ld bc, $0cea
    nop
    add hl, de
    ld a, [bc]
    nop
    ld bc, $03a6
    db $fd
    ld [bc], a
    nop
    rst RST_28
    ccf
    ld a, a
    ccf
    ld b, b
    or e
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
    ld [$00c6], sp
    cp a
    jr @+$01

    db $10
    rst RST_38
    jr c, jr_02f_5919

    pop bc
    dec b
    inc c
    cp e
    rst RST_38
    inc b
    jp c, Jump_000_0800

    ld h, b
    ccf
    ldh [rSB], a
    ccf
    or l
    ld a, a
    adc e
    ld bc, $e542
    nop
    ld hl, $f0fe
    ld bc, $b7fe
    rst RST_38
    inc bc
    cp $f8
    ld bc, $fffe
    inc c
    nop
    dec a
    cpl
    ld bc, $fe00
    ld a, c
    stop
    ld h, c
    jr jr_02f_59c8

jr_02f_59c8:
    ld de, $8b00
    cp $71
    inc b
    db $10
    dec e
    ld b, $04
    daa
    nop
    ld [de], a
    ld [de], a
    db $dd
    xor e
    cp $89
    jr z, jr_02f_59ee

    sbc c
    jr nc, jr_02f_59df

jr_02f_59df:
    ld sp, hl
    inc b
    db $10
    sbc a
    sbc e
    cp $05
    jr c, jr_02f_59f9

    and $05
    inc [hl]
    ld bc, $1004

jr_02f_59ee:
    sbc l
    db $f4
    jr z, jr_02f_5a02

    rlca
    ld bc, $8c09
    ld bc, $0040

jr_02f_59f9:
    ccf
    ld e, h
    cp d
    sub b
    nop
    ld c, h
    add b
    ld [bc], a
    ld b, c

jr_02f_5a02:
    ccf
    ld b, e
    ld d, h
    db $10
    ld e, a
    cp e
    ccf
    ld c, c
    ld l, b
    inc d
    ld b, [hl]
    ccf
    ld c, h
    ld d, h
    db $10
    ld e, [hl]
    ld hl, sp-$80
    nop
    ld e, c
    dec d
    ld [hl], e
    ld de, $3f7c
    ld [hl], b
    ccf
    ld e, b
    db $fc
    sub b
    nop
    ld e, c
    ld de, $405e
    nop
    dec a
    ld e, b
    dec a
    db $fd
    ld c, d
    ld e, d
    ld [de], a
    ld b, [hl]
    nop
    nop
    add b
    ld a, a
    rst RST_38
    push hl
    nop
    and h
    dec d
    ld a, a
    and l
    db $10
    jp nz, $0c02

    rst RST_38
    ld a, [bc]
    rst RST_38

jr_02f_5a40:
    rst RST_38
    ld a, [de]
    rst RST_38
    ld [de], a
    rst RST_38
    scf
    ld [bc], a
    db $fc
    reti


    rst RST_38
    and [hl]
    dec b
    and [hl]
    nop
    ld [bc], a
    db $fc
    add b
    ld [bc], a
    ld b, b
    ld a, $7b
    ld b, b
    dec a
    or h
    nop
    inc a
    ld b, e
    ccf
    ld b, b
    ldh [$ff09], a
    rst RST_08
    ld a, l
    ld [bc], a
    nop
    nop
    ldh a, [$ff09]
    xor [hl]
    nop
    nop
    rst RST_18
    rst RST_38
    rst RST_38
    rst RST_18
    rst RST_38
    call c, $0cfc
    ldh a, [$ffe2]
    rst RST_38
    pop hl
    adc b
    add a
    db $10
    rrca
    ld [$f827], sp
    rst RST_38
    ret c

    ret nz

    ret nz

    inc b
    inc bc
    ld b, b
    ccf
    nop
    rst RST_38
    rst RST_38
    ld bc, $1ffe
    ldh [$ff7f], a
    add b
    jr nz, jr_02f_5a40

jr_02f_5a8f:
    nop
    ld hl, $a420
    ld [de], a
    and h
    ld de, $0000
    jr nz, jr_02f_5ac7

    cpl
    xor $21
    jr nz, jr_02f_5a8f

    ldh a, [rIE]
    ld b, [hl]
    jr nz, jr_02f_5ae3

    rst RST_38
    ld bc, $fff7
    ret nz

    ccf
    nop
    ld hl, $1f3f
    db $10
    rrca
    rst RST_38
    inc bc
    pop hl
    nop
    ld hl, sp+$02
    db $fc

jr_02f_5ab7:
    call z, $ff31
    sbc $fe
    call c, $d9fc
    ld hl, sp+$0a
    pop af
    rst RST_38
    call nz, $90c3
    adc a

jr_02f_5ac7:
    ld [$a607], sp
    ld de, $61ff
    jr jr_02f_5b2f

    ld e, $61
    ld e, $63
    inc e
    cp $76
    inc hl
    ld d, e
    inc l
    nop
    ret nz

    inc bc
    add b
    ld b, $ff
    ld bc, $0106
    inc c

jr_02f_5ae3:
    inc bc
    ld a, [bc]
    inc b
    dec d
    rst RST_38
    ld de, $1b1b
    sub d
    ld d, d
    db $10
    ret nc

    ld d, d
    rst RST_38
    jp nc, $de6c

    ld d, e
    ldh [$ffcc], a
    nop
    inc sp
    rst RST_38
    ld a, e
    ld c, d
    ld c, d
    sub d
    sub d
    sub l
    sub e
    sub l
    rst RST_38
    sub c
    sub l
    sub c
    ld l, d
    inc b
    ld d, c
    jr nz, jr_02f_5ab7

    rst RST_38
    sbc $52
    ld d, b

jr_02f_5b0f:
    cp b
    sbc a
    ld e, [hl]
    cp a
    ld a, [hl]

jr_02f_5b14:
    cp $b1
    nop
    cp a
    ld a, a
    ld l, b
    nop
    sub a
    sub a
    sub h
    rst RST_38
    sub h
    ld e, a
    add b
    cpl
    ret nz

    scf
    ret nz

    add hl, de
    rst RST_38
    ldh [$ff9e], a
    ldh [$ff8f], a
    ld [hl], b
    rrca
    ld [hl], b

jr_02f_5b2f:
    add a
    db $fd
    ld a, b
    and h
    inc de
    db $fc
    nop
    db $e3
    nop
    ld e, $01
    rst RST_38
    ld [hl], b
    rrca
    ld h, b
    rra
    jp c, Jump_02f_6220

    ld b, h
    sbc a
    ld b, $18
    ld b, [hl]
    jr c, jr_02f_5b0f

    rst RST_20
    inc h
    halt
    ld hl, $ff73
    inc c
    ld d, e
    inc l
    ld d, e
    inc l
    ld h, e
    dec e
    ld h, e
    rst RST_38
    dec e
    ld h, a
    dec de
    ld [hl], d
    scf
    ld hl, sp+$7b
    db $fc
    rst RST_38
    db $fc
    ld hl, sp-$02
    ld hl, sp-$02
    ldh a, [$fffc]
    ret nz

    cp a
    ld hl, sp-$80
    ldh a, [rP1]
    ldh [rP1], a
    ret nc

    nop
    nop
    rst RST_38
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $00f3
    db $ec
    rst RST_28
    ld e, $00
    nop
    rlca
    ld [hl+], a
    ld [hl+], a
    ldh a, [rIF]
    nop
    sbc a
    rst RST_38
    ld b, l
    nop
    cp d
    cp d
    rla
    jr nz, jr_02f_5ba6

    jr nc, jr_02f_5b14

    rst RST_38
    nop
    ld a, h
    add b
    inc bc
    db $fc
    ld b, b
    ccf
    or b
    rst RST_30
    sbc a
    cp $01
    jp nc, $f323

    nop
    rrca
    nop
    db $fd
    cp a

jr_02f_5ba6:
    ld c, e
    jr nc, jr_02f_5bbc

    db $e3
    rst RST_20
    rrca
    sub a
    rrca
    rst RST_38
    ld [hl], e
    rrca
    pop af
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    rst RST_38
    cp $01
    ccf
    ccf

jr_02f_5bbc:
    rra
    sbc a
    rrca
    rst RST_08
    rst RST_38
    ld [$01e7], sp
    pop af
    inc b
    ld hl, sp-$7e
    ld a, h
    ei
    add h
    ld a, b
    ld a, [$5b22]
    ld a, a
    ld b, a
    nop
    nop
    cp $74
    inc hl
    dec d
    dec d
    ld de, $1511
    ld de, $ef0a
    inc b
    nop
    nop
    rra
    adc c
    jr nc, jr_02f_5be5

jr_02f_5be5:
    nop
    ld c, e
    cp a
    ld c, e
    ld c, d
    ld c, d
    ld [hl-], a
    ld a, d
    call $2021
    add a
    rst RST_38
    ld a, a
    add a
    ld a, a
    nop
    nop
    sub $96
    ld d, d
    rst RST_08
    ld d, d
    ld c, [hl]
    ld e, [hl]
    or c
    ld [hl+], a
    ld hl, $2046
    nop
    nop
    ld a, a
    sub [hl]
    sub [hl]
    sub h
    sub h
    ld h, a
    rst RST_30
    sbc b
    and a
    ld [hl], $ff
    add a
    ld a, b
    add a
    ld a, b
    inc bc
    ld a, h
    add e
    ld a, h
    rst RST_38
    inc de
    inc c
    jp hl


    and $c9
    and $49
    ld h, [hl]
    cp $b4
    inc bc
    ld h, b
    rra
    ld a, [hl]
    nop
    ld h, b
    ld bc, $f708
    rlca
    ld [hl], b
    rrca
    add sp, $20
    ld a, [hl-]
    adc $32
    cp $ff
    adc [hl]
    nop
    nop
    jp z, $b634

    ld c, b
    add $07
    jr c, @+$81

    ld b, e
    ld a, b

jr_02f_5c43:
    dec [hl]
    or $3a
    ld [hl], e
    scf
    db $fd
    jr nz, jr_02f_5cc1

    scf
    ld [hl], e
    ld h, e
    inc e
    add sp, $25
    add sp, $22
    ld a, [hl-]
    adc $b2
    add sp, $25
    ei
    adc $b2
    and $31
    jp nz, $d63c

    jr z, @-$30

    ld h, a
    or h
    cp $ce
    inc a
    ld b, c
    add sp, $23
    ld h, b
    rra
    or h
    rlca
    cp h
    call nc, $d231
    inc sp
    ld h, b
    rra
    ld [hl], b
    rrca
    sbc l
    jr nc, jr_02f_5c7a

jr_02f_5c7a:
    ld a, [hl]
    call c, Call_02f_7821
    rlca
    rlca
    nop
    ld h, b
    jr jr_02f_5cd4

    ld b, l
    ld e, e
    ld c, c
    ld h, [hl]
    add b
    ld c, a
    ld c, e
    ld h, h
    sub h
    ld b, c
    ld c, d
    sbc c
    ld b, d
    ld a, [bc]
    ld d, $31
    ld a, a
    xor l
    db $10
    ld a, [hl]
    db $db
    jr nz, jr_02f_5cb1

    jr nz, @-$61

    jr nc, jr_02f_5c43

    ld de, $28d8
    ld sp, $14a5
    and l
    ld [de], a
    rra
    ldh [$ffa5], a
    dec d
    ld c, $ff
    rst RST_38
    ld sp, hl
    ld b, $00

jr_02f_5cb1:
    nop
    rst RST_30
    nop
    ld h, b
    adc a
    dec bc
    add b
    rra
    xor l
    inc de
    ld a, a
    and c
    db $10
    and l
    ld d, $bf

jr_02f_5cc1:
    ld b, d
    and $47
    or e
    ld bc, $f8fe
    dec a
    halt
    ld hl, $1a65

jr_02f_5ccd:
    halt
    ld [hl+], a
    ld e, h
    rst RST_08
    ld h, a
    ld e, c
    ccf

jr_02f_5cd4:
    inc hl
    ld b, h
    ld c, c
    add sp, $21
    and [hl]
    ld e, b
    db $fc
    jr nz, jr_02f_5d27

    jr nc, @+$5c

    ld a, [hl-]
    adc $36

jr_02f_5ce3:
    cp $1e
    halt
    add e
    add hl, bc
    ld a, b
    jr nz, jr_02f_5d1b

    call c, Call_02f_5821
    ld c, c
    ld d, [hl]
    ld c, e
    ld h, d
    ld b, e
    ld a, b
    ld a, a
    rlca
    ld b, $01

jr_02f_5cf8:
    ld [hl], c
    nop
    jr nz, @+$01

    add b
    ld d, c
    or a
    rst RST_38
    rst RST_38
    ld [bc], a
    add a
    ld d, d
    rst RST_38
    rst RST_38
    sbc d
    ld b, e
    ld c, [hl]
    reti


    ld h, b
    sub [hl]
    ld d, l
    di
    ld b, l
    rlca
    ld hl, sp-$5b
    inc de
    ld c, h
    ld h, b
    ld sp, hl
    adc h
    db $10
    jr nc, @-$55

    ld d, c

jr_02f_5d1b:
    ld a, a
    add b
    rrca
    ldh a, [rP1]
    xor e
    rst RST_38
    ld a, h
    and e
    ld b, d
    ld a, a
    rla

jr_02f_5d27:
    jr nc, jr_02f_5cf8

    ld b, a
    jr nc, jr_02f_5d68

    db $fd
    ret nz

    inc hl
    ld hl, $fe01
    rrca
    ldh a, [rNR23]
    rst RST_20
    cp a
    ld [hl], b
    adc a
    ldh [$ff1f], a
    cp b
    ld b, a
    or h
    inc bc
    and b
    rst RST_38
    rra
    jr nz, jr_02f_5ce3

    jr c, jr_02f_5ccd

    ld e, a
    add b
    ld de, $ce61
    and $48
    and h
    db $10
    db $e4
    ld c, d
    and h
    ld [de], a
    inc bc
    db $fc
    nop
    ld l, h
    rst RST_38
    nop
    ld c, h
    add e
    inc de
    ldh [rDIV], a
    ld hl, sp+$01
    ld sp, hl

jr_02f_5d61:
    cp $ba
    ld b, l
    ld h, $23
    jr nc, jr_02f_5d77

jr_02f_5d68:
    adc b
    rlca
    daa
    rst RST_20
    ret nz

    ld [$20f0], sp
    jr nc, jr_02f_5d1b

    ld d, b
    ret nz

    ccf
    ld a, h
    cp e

jr_02f_5d77:
    add e
    rlca
    daa
    ld h, b
    add b
    ld a, a
    ld b, b
    or d
    nop
    add b
    cp h
    cp c
    ld d, b
    db $fc
    ld d, c
    ldh a, [rIF]
    ccf
    ret nz

    jp z, $fd12

    rst RST_28
    inc c
    di
    jr nc, jr_02f_5d61

    ld [hl+], a
    inc hl
    inc l
    db $d3
    and h
    ld a, a
    ld e, e
    ld l, $d1
    ld b, e
    cp h
    pop bc
    ld a, $22
    inc hl

jr_02f_5da1:
    rst RST_38
    db $10
    rst RST_08
    db $10
    rst RST_08
    jr z, @-$37

    ld [$fbe7], sp
    adc b
    ld h, a
    ld [hl+], a
    inc hl
    ret nz

    ccf
    ld a, [hl]
    add c
    inc hl
    sbc a
    call c, $ce31
    jr jr_02f_5da1

    ld [hl+], a
    dec h
    adc h
    ld h, e
    ld [hl], b
    push hl
    adc a
    ld [hl+], a
    inc hl
    ld [bc], a
    ld de, $2367
    ld [hl+], a
    ld h, b
    rra
    sbc b
    ccf
    rlca
    ld h, $c1
    add hl, bc
    ldh a, [$ff3e]
    rst RST_08
    ld d, b
    ld a, h
    ld h, d
    rst RST_38
    rst RST_28
    ld [$04f7], sp
    ei
    adc h
    ld [hl], e
    ld l, b
    add c
    rla
    sbc d
    ld l, c
    inc l
    ld l, b
    add hl, hl
    ld [hl+], a
    inc l
    ld hl, $63f7
    ldh [$ff0a], a
    ld a, $7b
    ld a, $7e
    ldh a, [$ff03]
    sbc [hl]
    sbc a
    inc bc
    ld c, $18
    ld [hl], b
    rst RST_18
    ld b, $06
    rlca
    ld h, b
    ld a, $20
    ld [hl], c
    ld a, $7e
    db $db
    ld b, d
    ld a, $ea
    inc bc
    ldh a, [rTMA]
    jr nc, @+$73

    or $07
    rst RST_38
    ldh a, [c]
    ld b, $62
    ld c, $62
    ld c, $6e
    rrca
    rst RST_38
    nop
    ld c, $60
    ld c, $00
    sbc [hl]
    sbc [hl]
    sbc a
    ld a, e
    ld [bc], a
    cp $48
    ld [hl], c
    cp $ff
    jr nz, jr_02f_5ea8

    ld d, b
    ld [hl], c
    rst RST_28
    ld a, c
    ld sp, hl
    nop
    ld [hl], b
    ld e, b
    ld [hl], b
    ld h, b
    ld h, b
    ldh [$ffbe], a
    ldh a, [$ff0a]
    ld a, [hl]
    ld a, [hl]
    ld a, a
    cpl
    ld h, b
    ld [hl], b
    ld [hl], c
    ld l, a
    rst RST_38
    ldh [rIF], a
    ld h, b
    ld b, $70
    ld b, $70
    halt
    rst RST_30
    ldh a, [rNR42]
    ld a, [hl]
    add b
    ld [hl], c
    ld a, [hl]
    ld a, a
    add e
    ld a, [hl]
    cp $fa
    inc bc
    jr nz, jr_02f_5ec8

    ld h, $70
    jr nz, @+$72

    ld a, c
    rst RST_10
    ld sp, hl
    ld [bc], a
    ld a, a
    sbc b
    ld [hl], c
    ld a, a
    ld c, a
    ld [hl], h
    ld a, a
    rst RST_38
    and $98
    ld a, a
    ld [bc], a
    ld a, a
    db $ec
    ld de, $3089
    ccf
    ccf
    ccf
    rst RST_38
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    ld b, $ff
    rrca
    inc c
    nop
    cp $00
    cp $f0
    cp $ff
    nop
    ld d, $90
    sub [hl]
    db $10
    ld d, $d0
    ld d, $7b
    ret nc

    ld d, [hl]
    and l
    ld de, $ff3f
    jr nz, @-$1e

    and $71
    rst RST_28
    ld hl, $21e0
    pop hl
    and l
    ld de, $fff8
    nop
    rst RST_38
    dec bc
    jr z, jr_02f_5ed3

jr_02f_5ea8:
    ld l, b
    ld l, e
    ret z

    set 5, b
    ld bc, $1d8b
    add b
    inc h
    rst RST_38
    rra
    jr @+$21

    ld de, $030f
    rra
    rlca
    rst RST_38
    rra
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ld a, $fb
    ret nc

    sub $10

jr_02f_5ec8:
    ld b, $96
    ret nc

    ld d, $d0
    ld d, $ff
    inc hl
    db $e3
    inc hl
    ldh [c], a

jr_02f_5ed3:
    ld hl, $23e0
    ldh [rIE], a
    daa
    pop hl
    daa
    db $e3
    daa
    rst RST_20
    cpl
    rst RST_28
    rst RST_38
    add sp, $0b
    add sp, $2b
    add sp, $6b
    add sp, -$15
    cp $36
    ld [bc], a
    set 5, b
    adc e
    ccf
    inc a
    ccf
    jr c, @+$01

    scf
    jr nc, jr_02f_5f1e

    jr nz, jr_02f_5f08

    nop
    rra
    nop
    rst RST_08
    ccf
    ld a, a
    nop
    nop
    inc e
    ld bc, $0550
    ldh a, [$fff6]
    rst RST_38

jr_02f_5f08:
    inc b
    nop
    cpl
    rst RST_28
    cpl
    xor $2d
    db $ec
    ei
    add hl, hl
    add sp, $26
    nop
    ldh [$ff2f], a
    rst RST_38
    ld b, b
    nop
    db $fc
    jr nc, jr_02f_5f1d

jr_02f_5f1d:
    ld [hl], c

jr_02f_5f1e:
    ld b, $f8
    ei
    nop
    inc bc
    nop
    ccf
    db $fc
    add b
    rlca
    ld c, h
    ld bc, $f00e
    inc b
    ldh a, [$ff08]
    ldh a, [$fffd]
    inc c
    sub l
    nop
    nop
    ldh a, [$fff0]
    cp $00
    ld d, $7f
    ldh [$ff1f], a
    ld b, b
    rra
    add b
    rra
    ret nz

    and l
    nop
    rst RST_38
    nop
    rra
    ccf
    rst RST_38
    jr nz, @-$1e

    nop
    rst RST_38
    ld a, [hl]
    or b
    rlca
    ld hl, sp-$01
    nop
    dec bc
    nop
    nop
    ld c, c
    nop
    xor $c3
    add hl, bc
    ld [hl], $20
    or $d2
    ld a, [bc]
    ldh [rNR41], a
    rst RST_20
    sbc [hl]
    ldh [c], a
    add hl, bc
    nop
    dec de
    db $10
    ei
    ldh a, [c]
    add hl, bc
    jp nz, Jump_000_1f05

    xor $81
    ld bc, $0000
    ccf
    jp nc, $e005

    or $00
    rst RST_18
    or $00
    ld b, $00
    cp $e2
    dec b
    daa
    rst RST_28
    rst RST_20
    jr nz, @+$01

    nop
    xor a
    nop
    ldh a, [c]
    dec b
    ldh a, [$fffb]
    nop
    ld [$017d], a
    rst RST_38
    ld c, c
    ld bc, $0b3f
    db $10
    rrca
    ld [$ff0f], sp
    ld [$0406], sp
    inc b

jr_02f_5fa0:
    inc b
    nop
    cp $00
    db $dd
    cp $9c
    ld bc, $1690
    db $10
    ld e, c
    db $10

jr_02f_5fad:
    ld d, b
    ld d, [hl]
    db $fc
    or b
    ld bc, $01ac
    jr z, @-$16

    jr z, jr_02f_5fa0

    inc l
    db $e4
    ld sp, hl
    inc l
    xor a
    ld [bc], a
    cp h
    ld bc, $8be8
    add sp, -$75
    ret z

    rst RST_38
    adc e
    adc b
    adc e
    ld b, b
    ld b, b
    ld h, b
    jr nz, @+$73

    cp a
    ld de, $0070
    ld h, b
    nop
    ld b, b
    ret nz

    nop
    ld [bc], a
    rla
    ld [bc], a
    ld d, b
    ld d, [hl]
    ld a, [de]
    ld bc, $5950
    ld [de], a
    ld e, d
    ld de, $00e0
    db $fc
    and c
    ld [de], a
    ld l, d
    ld de, $e22e
    inc l
    ldh [$ff08], a
    dec bc
    rst RST_38
    ld [$280b], sp
    dec hl
    ld l, b
    ld c, e
    ld l, b
    dec bc
    db $fd
    jr z, jr_02f_5fad

    db $10

jr_02f_5ffd:
    ld [$030b], sp
    ld bc, $0003
    ccf
    ld bc, $1100
    db $10
    add hl, sp
    jr nz, @+$0f

    db $10
    ld c, l
    nop
    cp a
    db $10
    ld d, $90
    sub [hl]
    ret nc

    ld d, [hl]
    inc e
    ld bc, $fe10
    ld e, e
    ld [bc], a
    jr z, jr_02f_5ffd

    jr z, @-$1e

    ld hl, $21e1
    di
    ldh [rNR42], a
    and c
    db $10
    ld l, h
    ld bc, $0b08
    adc b
    adc e
    rst RST_10
    adc b
    dec bc
    ret z

    ld [hl], c
    nop
    ld [$037b], sp
    nop
    ld a, [hl]
    adc l
    nop
    jp RST_10


    ld a, a
    ld [$0620], sp
    ld hl, $00c0
    nop
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    add b
    add b
    ld hl, sp+$13
    ld hl, $2013
    ret nz

    nop
    ret nz

    ret nz

    ccf
    ccf
    rrca
    ld sp, hl
    rrca
    inc e
    inc hl
    dec de
    jr nz, jr_02f_60e0

    rra
    rra
    ldh [$ffe0], a
    inc bc
    ld hl, sp-$08
    inc e
    ld hl, $001d
    add b
    db $d3
    nop
    rst RST_38
    nop
    rrca
    inc c
    ld [$0cfe], sp
    inc c
    nop
    ld [bc], a
    add l
    cp $30
    ld a, [bc]
    ld a, [hl]
    ld e, $00
    ld b, c
    dec bc
    ld a, [hl+]
    inc bc
    dec c
    ld b, $42
    dec a
    ld a, $60
    dec c
    jp nz, $823e

    ld a, [hl]
    jr nc, jr_02f_609d

    ld sp, $ee08
    ld a, [de]
    inc b
    cp $01
    db $fc
    sbc b
    ld bc, $f803

jr_02f_609d:
    ret nz

    cp a
    ret nz

    ld c, $3f
    ccf
    rst RST_38
    ld a, a
    and l
    nop
    ld hl, $ffff
    nop
    adc h
    inc b
    ld a, a
    rst RST_38
    rst RST_38
    ccf
    ld a, a
    ccf
    rst RST_18
    rra
    ld e, a
    sbc a
    cpl
    rst RST_08
    cp b
    nop
    rst RST_38
    ld c, a
    sub a
    daa
    ei
    ld hl, sp-$05
    ld hl, sp-$03
    ei
    db $fc
    cp $c6
    ld bc, $fdfc
    db $fd
    ei
    ei
    rst RST_38
    inc b
    sub [hl]
    sub h
    rst RST_38
    rst RST_28
    rst RST_38
    ld h, c
    di
    rst RST_38
    sbc [hl]
    rst RST_38
    and c
    pop hl
    ld e, $7f
    nop
    cp a

jr_02f_60e0:
    rst RST_38
    ld d, a
    daa
    sub a
    ld h, a
    cpl
    rst RST_08
    ld e, a
    sbc a
    rst RST_38
    sbc a
    ld e, a
    adc a
    ld c, a
    add e
    inc de

jr_02f_60f0:
    ld bc, $fe6d
    inc c
    nop
    db $fc
    ld bc, $03fb
    rst RST_30
    rlca
    rst RST_30
    rst RST_38
    rlca
    push af
    rlca
    db $ec
    inc c

jr_02f_6102:
    xor $05
    dec b
    rst RST_38
    ld b, l
    push hl
    and $c6
    db $e3
    db $e3
    jp $ffe3


    db $d3
    db $e3
    db $d3
    and c
    or c
    ld bc, $c080
    rst RST_38
    add d
    ld [$c0c0], a
    ld a, [de]
    jr nz, jr_02f_618e

    nop
    rst RST_38
    ld h, e
    nop
    adc h
    adc h
    ret c

    db $db
    inc b
    ld sp, hl
    rst RST_38

jr_02f_612a:
    add d
    ld a, h
    add d
    ld a, h
    ld b, [hl]
    jr c, jr_02f_6176

    jr c, @-$3f

    dec h
    jr jr_02f_60f0

    ld [bc], a
    ld b, d
    add d
    sub [hl]
    nop
    ld e, $7f
    nop
    rst RST_28
    nop
    rst RST_28
    ld h, b
    rst RST_30
    ldh a, [$ff39]
    ld [de], a
    rst RST_38
    ld e, $de
    jr jr_02f_612a

    db $10
    reti


    inc e
    sbc $ff

jr_02f_6150:
    jr nc, jr_02f_6102

    ld hl, $02ac
    or c
    inc b
    or e
    rst RST_38
    ld de, $0601
    ld b, $83
    rrca
    db $10
    inc bc
    rst RST_38
    ld e, h
    nop
    and b
    ld b, b
    ld bc, $00fe
    ld hl, sp-$01
    ret nz

    db $db
    nop
    ld e, b
    add e
    sbc e
    add $c7
    rst RST_38

jr_02f_6174:
    jr c, jr_02f_6174

jr_02f_6176:
    ld bc, $0238
    ld bc, $013b
    rst RST_38
    rrca
    ccf
    rst RST_00
    rst RST_18
    add [hl]
    xor $01
    add c
    rst RST_38
    ld [hl], a
    rlca
    rst RST_10
    ld h, a
    sub e
    rst RST_20
    ld [hl], e
    add a

jr_02f_618e:
    ld a, a
    ld c, b
    ld a, e
    jr jr_02f_620e

    jr c, jr_02f_6150

    sub b
    add l
    ld de, $cbff
    ret nz

    db $dd
    call nz, $a8e9
    and a
    xor b
    rst RST_38
    and a
    xor h
    and e
    xor a
    and b
    and a
    and b
    add b
    rst RST_38
    add b
    ret nz

    ret nz

jr_02f_61ae:
    nop
    nop
    nop
    db $fc
    inc de
    rst RST_38
    ldh [$ff78], a
    add b
    db $e4
    nop
    ld [de], a
    nop
    ret nc

    rst RST_38
    nop
    ldh [rP1], a

jr_02f_61c0:
    ld h, b
    nop
    dec sp
    db $10
    dec hl
    db $fd
    db $10
    or b

jr_02f_61c8:
    inc de
    dec sp
    nop
    inc bc

jr_02f_61cc:
    jr c, jr_02f_6201

    nop
    rst RST_30
    di
    rlca
    pop af
    pop bc
    ld [de], a
    ldh a, [rTAC]
    ldh a, [$ff03]
    rst RST_38
    ret nz

    inc bc
    nop
    ld bc, $e9e4
    db $e4
    jp hl


    rst RST_38
    xor h
    pop hl
    jr c, jr_02f_61c8

    jr jr_02f_61cc

    jr c, jr_02f_61ae

    rst RST_30
    ld [hl], b
    add a
    ldh [$ff0c], a
    nop
    add b
    nop
    add b
    ccf

Jump_02f_61f5:
    rst RST_38
    add b
    nop
    sbc a
    rra
    sbc h
    inc e
    sbc d
    add hl, de
    ld [hl], e
    sbc c
    ld a, [de]

jr_02f_6201:
    dec l
    nop
    ld d, b
    ld bc, $e00f
    rst RST_28
    ld hl, sp+$10
    rst RST_20
    ld l, a
    ldh [$ff6f], a

jr_02f_620e:
    ldh a, [rNR14]
    dec c
    inc bc
    ret nz

    rra
    rst RST_18
    rst RST_08
    rst RST_38
    nop
    ld bc, $9800
    inc bc
    sbc b
    nop
    inc e
    pop bc

Jump_02f_6220:
    rst RST_38
    call c, $1b98
    sbc l
    inc e
    sbc d
    jr jr_02f_61c0

    rst RST_38
    db $10
    sbc a
    rra
    sub c
    db $10
    sbc e
    inc d
    sbc a
    db $fd
    rra
    db $fc
    db $10
    rst RST_28
    ld h, b
    ld h, e
    jr z, jr_02f_6266

    add sp, -$01
    db $eb
    jr z, jr_02f_62ab

    add sp, $2a
    add sp, -$16
    dec d
    cpl
    ret nc

    rra
    rst RST_18
    ld de, $2041
    jr jr_02f_628f

    jr nz, @+$52

    nop
    cp a
    rst RST_38
    ld b, c
    ld e, h
    pop bc
    call c, Call_02f_51c1
    inc h
    ld bc, $047f
    pop af
    db $f4
    add b
    nop
    add c
    dec a
    ld h, d
    add hl, hl
    ld e, a

jr_02f_6266:
    ld [$f80a], sp
    ld a, [$7188]
    jr nz, jr_02f_62a6

    ld [hl], l
    ld hl, $1aff
    ld hl, sp-$06
    res 0, b
    xor c
    add b

jr_02f_6278:
    rst RST_38
    rst RST_38
    rst RST_38
    and l
    jp $c381


    adc c
    jp $ff9d


    jp $e38d


    ld d, c
    inc d
    ld [hl], c
    inc d
    pop af
    or e
    db $f4
    sub c
    sub e

jr_02f_628f:
    jr nz, @-$6c

    ld hl, $1451
    ld h, d
    dec h
    add b
    db $fd
    inc a
    db $e4
    ld de, $00ff
    ret z

    ld c, d
    ld hl, sp-$06
    db $ed
    sbc b
    ld [hl], c

jr_02f_62a4:
    jr nz, jr_02f_62a6

jr_02f_62a6:
    ld [bc], a
    ld c, [hl]
    ld bc, $00fe

jr_02f_62ab:
    jp $814f


    rst RST_38
    rst RST_38
    db $e4
    add e
    jr nz, jr_02f_6278

    ld hl, $83c6
    jr nz, jr_02f_62a4

    pop af
    db $f4
    sub h
    inc hl
    ld d, c
    sub a
    ld hl, $f710
    ldh a, [$ff74]
    jr nz, @+$0f

    inc c

jr_02f_62c7:
    inc bc
    rst RST_38
    di
    dec h
    nop
    ld e, $e0
    ld e, h
    db $10
    sbc $0d
    ld [$0007], sp
    ld hl, sp+$07
    inc c
    add hl, bc
    add b
    nop
    add hl, sp
    ld a, a
    xor h
    ld hl, $060d
    cp $00
    rra
    sbc $11
    dec c
    ld b, $af
    jr jr_02f_62f2

    ldh a, [rIF]
    inc c
    add hl, bc
    ld bc, $0c0d

jr_02f_62f2:
    ld a, a
    rst RST_38
    ld a, a
    ccf
    cp a
    sbc a
    ld e, a
    rst RST_08
    cpl
    rst RST_20
    ld a, a
    rla
    rst RST_20
    rla
    di
    dec bc

jr_02f_6302:
    ld sp, hl
    dec b
    jr nc, jr_02f_6307

jr_02f_6306:
    pop af

jr_02f_6307:
    ld bc, $28f5
    cp h
    ld hl, $22bb
    ld c, $e0
    xor $20
    rst RST_38
    xor $20
    ld l, [hl]
    nop
    nop
    jr c, jr_02f_631f

    inc b
    dec sp
    dec a
    add l
    sub l

jr_02f_631f:
    ld [hl], $00
    nop
    ld a, a
    and c
    jr nc, jr_02f_62c7

    jr nc, @+$81

    ld [hl], b
    rlca
    ld [hl], a
    nop
    ld [hl], a
    ld [bc], a
    halt
    ld d, b
    ld b, $fc
    db $fc
    ld hl, $12f0
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    inc bc
    cp $7f
    inc bc
    ld c, $e3
    xor $23
    xor $23
    adc a
    jr nc, jr_02f_6306

    call z, $cc22
    ld [hl+], a
    ld [hl-], a
    xor $d6
    dec [hl]
    jr nz, jr_02f_6302

    ld l, [hl]
    ldh [$ff3b], a
    sub [hl]
    scf
    sub [hl]
    inc sp
    ld [bc], a
    halt
    nop
    ld c, e
    inc hl
    pop af
    ld l, [hl]
    db $10
    ld c, e
    sub $37
    sub $33
    nop
    rst RST_38

jr_02f_6367:
    cp e
    sbc e
    rst RST_30
    sbc c
    add b
    sbc c
    add e
    jr nz, jr_02f_63ef

    ld a, a
    or h
    jr @+$7f

    ret


    xor h
    jr nz, jr_02f_6367

    rst RST_28
    dec b
    add b
    add c
    ld c, l
    jr nz, @+$01

    rst RST_10
    sbc e
    pop de
    ld [de], a
    ld d, l
    jr jr_02f_6388

    ld hl, sp-$01

jr_02f_6388:
    ld [hl], d
    ld a, b
    ld a, d
    ld a, b
    ld a, [$fa78]
    ld hl, sp+$3f
    ld a, d
    ld a, b
    ld e, b
    ld a, [de]
    db $10
    ld a, [de]
    ld a, l
    ld sp, $20f5
    ld a, b
    db $ed
    ld [hl+], a
    ld h, a
    ld b, l
    ld h, h
    ld c, c
    cp d
    cp d
    ld [bc], a
    ld [bc], a
    add $01
    ld a, a
    ld c, $0e
    ld c, $ee
    adc $2e
    ld c, [hl]
    adc l
    ld c, [hl]
    ld hl, sp+$64
    ld b, c
    and b
    ld c, c
    adc [hl]
    ld b, l
    ld b, b
    jr nz, jr_02f_63fc

    ld l, $4e
    ld sp, hl
    jr nz, @+$64

    ld b, e
    and b
    ld b, e
    rra
    rra
    inc bc
    db $e3
    ldh [$fff7], a
    inc e
    ld hl, sp-$08
    ld h, h
    ld b, e
    add b
    add b
    ld hl, sp-$08
    rst RST_38
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld l, a
    ret nz

    ret nz

    ccf
    ccf
    sbc $41
    cp $fe
    ld h, h
    ld b, c
    ccf
    ld a, a
    ld a, a
    rlca
    rlca
    ld hl, sp-$08
    db $ec

jr_02f_63ef:
    ld b, c
    sub $41
    ld l, l
    inc e
    call z, $fc40
    db $fc
    pop af
    ld de, $e0e0

jr_02f_63fc:
    jp z, $fd40

    inc bc
    ld h, d
    ld b, e
    ld a, a
    ld a, a
    add b
    add b
    ldh [$ffe0], a
    rst RST_08
    ldh a, [$fff0]
    ld hl, sp-$08
    ld d, $51
    inc e
    ld d, c
    rlca
    rlca
    sbc [hl]
    ldh [rSTAT], a
    nop
    nop
    ld hl, sp-$08
    ld c, $51
    db $10
    ld d, l
    rra
    add hl, bc
    rra
    ld c, h
    ld hl, $513c
    ldh [$ff03], a
    ld d, b
    ld h, h
    ld b, d
    dec c
    inc c
    ld a, [hl]
    dec c
    db $e4
    ld [hl-], a
    ld d, e
    cp [hl]
    ld b, l
    ld a, a
    xor a
    nop
    jr c, jr_02f_6479

    ccf
    ccf
    ret nz

    adc l
    ret nz

    inc e
    ld d, c

jr_02f_643f:
    db $fc
    db $fc
    ld c, b
    ld d, c
    ld hl, sp+$43
    sbc b
    ld e, c
    add b
    dec c
    add b
    inc a
    ld d, c
    rrca
    rrca
    ld [bc], a
    inc h
    and d
    ld sp, $53b5
    cpl
    inc c
    inc a
    and b
    jr nc, @+$19

    ld d, b
    ret nz

    ret nz

    ldh [$ffe0], a
    or $41
    ldh [rSTAT], a
    inc a
    sub [hl]
    ld e, c
    sub [hl]
    ld d, e
    cp $fe
    ld a, $3e
    xor d
    ld d, c
    db $f4
    ld b, c
    cp $e2
    ld b, b
    rst RST_38
    jr nc, @+$01

    inc c
    rst RST_38
    inc bc

jr_02f_6479:
    ccf
    rra
    nop
    rrca
    ld b, b
    inc bc
    ld [hl], b
    sbc [hl]
    db $10
    and h
    jr nc, jr_02f_643f

    inc [hl]
    rst RST_18
    inc e
    nop
    inc b
    reti


    db $eb
    or [hl]
    jr c, @+$32

    nop
    ccf
    ld [$d6b2], sp
    nop
    db $fd
    nop
    db $eb
    ld b, b
    ld c, [hl]
    ld bc, $007f
    ld h, a
    rlca
    rla
    ld h, a
    xor a
    adc a
    or a
    scf
    cp a
    or b
    add b
    adc b
    or b
    call nc, $b7c4
    scf
    ld h, b
    rst RST_38
    nop
    db $10
    ld h, b
    jr nz, jr_02f_64b5

jr_02f_64b5:
    ld hl, sp+$05
    db $fc
    cp $4b
    inc b
    ld c, $c1
    call z, Call_000_18e3
    ld b, a
    inc b
    rst RST_38
    jr @+$0d

    inc bc
    dec bc
    inc bc
    dec b
    add hl, de
    add hl, bc
    rst RST_38
    ld bc, $1915
    call nz, $dcd8
    ret nz

    ld [$30ff], sp
    sub $c6
    rst RST_10
    rst RST_00
    adc e
    or e
    rst RST_10
    cp a
    rst RST_00
    xor e
    or e
    ld [$3830], sp
    ld e, e
    ld h, d

jr_02f_64e6:
    jr nz, jr_02f_64e6

    ld e, e
    ld h, b
    and b
    add b
    ld d, b
    ld h, b
    rla
    ld h, a
    ld h, a
    rst RST_38
    rlca
    add hl, bc
    ld sp, $0010
    stop
    ld [$30ff], sp
    stop
    jr z, jr_02f_6530

    adc e
    or e
    cp e
    rst RST_38
    add e
    ld d, $66
    xor a
    adc a
    cpl
    rrca
    ld d, $ff
    ld h, [hl]
    cpl
    rrca
    ld d, [hl]
    ld h, [hl]
    db $10
    ld h, b
    ld [hl], b
    rst RST_38
    nop
    ret z

    rst RST_20

jr_02f_6519:
    jr jr_02f_6562

    db $10
    ld c, a
    ret nz

    push af
    rst RST_28
    call nz, $c061
    dec [hl]
    db $10
    add sp, -$20
    call nz, $bfd8
    ld [$eae2], a
    ldh [c], a
    dec b
    add hl, de

jr_02f_6530:
    ld [hl], h
    ld h, c
    dec c
    db $ed
    ld de, $63a4
    stop
    add [hl]
    ld h, c
    adc e
    or e
    sbc e
    rst RST_38
    and e
    cpl
    rrca
    rla
    ld h, a
    cpl
    rrca
    daa

jr_02f_6547:
    rst RST_38
    rlca
    db $10
    ld h, b
    xor h
    adc h
    ld d, $66
    ld [hl], $ed
    ld b, [hl]
    add h
    ld h, e
    rst RST_10
    rst RST_00
    and [hl]
    ld h, c

jr_02f_6558:
    ld [$1830], sp
    cp l
    jr nz, jr_02f_6558

    ld h, c
    xor a
    adc a
    xor a

jr_02f_6562:
    adc a
    ld e, h
    ld h, c
    db $10
    rst RST_20
    ld h, b
    jr nc, jr_02f_65aa

    call nz, $c463
    ld h, l
    add b
    rst RST_28
    inc c
    rst RST_28
    db $10
    call $e310
    cp b
    ld [hl], $fe
    cp $18
    rst RST_28
    jr nz, jr_02f_6519

    jr nz, jr_02f_6547

    cp b
    scf
    nop
    jr nc, jr_02f_65c5

    or a
    dec [hl]
    ld b, b
    adc [hl]
    ld sp, $0066
    nop
    ld b, b
    ld a, e
    rlca
    cp a
    rlca
    jr nc, jr_02f_65d4

    ld [hl], $40
    adc a
    cp b
    ld [hl], $ff
    rst RST_38
    rst RST_38
    ld h, e
    add b
    ld l, l
    add b
    ld e, $00
    ld [bc], a
    add sp, $62
    ld h, d
    ld [$3051], sp
    inc c

jr_02f_65aa:
    adc $80
    ld e, e
    ldh a, [$fff0]
    rst RST_38
    rst RST_38
    rst RST_38
    db $fc
    db $fc
    di
    ldh a, [$ff4c]
    ld b, e
    inc sp
    rst RST_38
    inc c
    ld c, a
    jr nc, jr_02f_65fa

    ld b, b
    ld [hl], b
    nop
    jr nc, @+$01

    ld [bc], a
    ret z

jr_02f_65c5:
    ld [hl-], a
    jr c, @-$3c

    ldh a, [rSC]
    call nz, Call_000_067f
    inc h
    ld b, $14
    ld h, [hl]
    and h
    ld c, $d0

jr_02f_65d4:
    ld d, l
    db $fc
    sub d
    ld d, c
    ldh [rSTAT], a
    call z, Call_000_13c0
    inc c
    inc e
    inc bc
    rst RST_38
    rrca
    nop
    inc bc
    nop
    inc c
    nop
    ldh [c], a
    db $ec
    rst RST_38
    push af
    ldh [rP1], a
    nop
    ld a, $3e
    adc $0e
    rst RST_38
    ld [hl-], a
    jp nz, Jump_000_30cc

    di

jr_02f_65f8:
    inc c
    inc a

jr_02f_65fa:
    inc bc
    inc bc
    ld c, a
    nop
    dec e
    add b
    inc hl
    rst RST_38
    ret nz

    rst RST_38
    jr nc, @+$01

    inc c
    rst RST_38
    inc bc
    ccf
    rst RST_38
    nop
    rrca
    nop
    inc bc
    nop
    ret nz

    db $ec
    ret nz

    rst RST_38
    ld b, d
    inc c
    dec d
    nop
    ld b, d
    adc h
    and l
    db $10
    rst RST_38
    ld d, h
    add c
    add d
    inc c
    add l
    jr nc, @+$4c

    adc h
    cp a
    inc d
    ld h, [hl]
    and h
    ld c, $24
    adc [hl]
    jr nz, jr_02f_662f

    ld d, b

jr_02f_662f:
    rst RST_18
    ld h, b
    db $10
    ld h, a
    ld [hl], a
    nop
    cpl
    inc bc
    rst RST_38
    rst RST_38
    db $fd
    ld a, a
    jr c, jr_02f_6641

    ldh [c], a
    db $ec
    ld [hl], h
    ld h, c

jr_02f_6641:
    inc h
    ld sp, $c2ff
    call z, $e0f4
    ld [$e2ec], a
    db $ec
    rst RST_38
    xor $e0
    inc de
    ld h, b
    jr nz, @-$76

    db $10

jr_02f_6654:
    ld h, e
    rst RST_38
    xor l
    nop
    xor b
    inc bc
    dec d
    ld h, b
    dec l
    add b
    rst RST_18
    ld d, b
    ld h, e
    rst RST_28
    nop
    rst RST_28
    ld [$7f00], sp
    nop
    rst RST_38
    ccf
    add b
    ld a, [hl]
    ld bc, $037c
    jr c, jr_02f_65f8

    rst RST_38
    add d
    inc c
    ld c, [hl]
    add b
    ld d, l
    add b
    jp nz, $ff0c

    add h
    ld sp, $8055
    and d
    inc c
    or l
    nop
    rst RST_38
    jr nz, jr_02f_6686

jr_02f_6686:
    ld d, $66
    and a
    rrca
    and a
    rrca
    rst RST_38
    rla
    ld h, a
    and a
    rrca
    db $10
    ld h, b
    jr nc, jr_02f_66d5

    or $2f
    inc b
    nop
    add b
    sbc b
    nop
    ld a, a
    ld a, a
    rra
    rra
    ld a, a
    dec b
    nop
    ld [bc], a
    inc c
    inc b
    nop
    inc b
    and c
    ld [bc], a
    rst RST_38
    ldh [c], a
    db $ec
    and $e8
    dec d
    ld h, b
    ld [hl], d
    inc bc
    rst RST_28
    xor b
    inc bc
    inc de
    ld h, b
    ld d, [hl]
    ld bc, $6411
    ld hl, $84ff
    ld a, b
    rlca
    jr c, @-$77

    jr nc, jr_02f_6654

    jr nc, @-$07

jr_02f_66c7:
    adc a
    ld [hl], b
    rrca
    add $01
    ld [hl], b
    rrca
    ld b, d
    adc h
    rst RST_38
    and [hl]
    ld [$8846], sp

jr_02f_66d5:
    add $08
    ret nz

    ld de, $c3ff
    inc e
    rrca
    jr nc, jr_02f_671b

    ret nz

    jr nc, @+$42

    rst RST_38
    jr nc, jr_02f_6725

    ld [$3880], sp
    ret nz

    di
    inc bc
    rst RST_38
    rst RST_08
    rrca
    ccf
    ccf
    rst RST_38
    rst RST_38
    rra
    rra
    db $fd
    rrca
    ldh a, [c]
    nop
    rlca
    rlca
    ld hl, sp-$08
    db $fc
    db $fc
    db $fd
    cp $fc
    nop
    and $e8
    add $c8
    ret nc

    pop bc
    di
    call c, Call_000_09c3
    ld bc, $012f
    db $10
    ld h, e
    ld sp, $ff44
    jr nc, jr_02f_6759

    ld sp, $0142
    adc d
    pop bc

jr_02f_671b:
    ld a, [hl-]
    rst RST_38
    ldh a, [$ff0c]
    inc a
    inc bc
    jr nz, @-$5f

    ld h, b
    rra

jr_02f_6725:
    ei
    jr nz, jr_02f_66c7

    inc h
    inc de
    nop
    rra
    ret nz

    rst RST_08
    di
    daa
    inc bc
    rst RST_00
    rlca
    or $03
    ld a, [$ff03]
    ld b, b
    ld [de], a
    sub b
    dec b
    ld hl, sp+$34
    ld bc, $1b42
    sub [hl]
    ld bc, $c0c0
    ccf
    ccf
    rra
    ld h, b
    ld l, b
    db $10
    ldh a, [c]
    ld bc, $1308
    ld b, b
    inc de
    ld b, b
    ld de, $07e8
    add b
    ld de, $08ff

jr_02f_6759:
    rlca
    ld a, b
    rlca
    cp h
    add e
    rst RST_18
    ret nz

    ld a, e
    ldh [$ffe0], a
    ld b, h
    db $10
    rst RST_38
    nop
    ret nz

    rra
    sub l
    db $10
    ei
    ccf
    rst RST_18
    ld h, a
    nop
    ld b, e
    cp $ff
    ld bc, $6ffe
    ld de, $f10e
    ld e, $a6
    db $10
    cp $01
    xor e
    db $10
    ld a, a
    ld hl, sp-$03
    jp nz, $0001

    nop
    rst RST_18
    inc l
    db $10
    adc $9a
    db $10
    cp $00
    db $fd
    xor h
    ld de, $14a4
    ldh a, [c]
    dec b
    rst RST_18
    inc c
    db $fd
    ld hl, sp+$02
    db $fc
    sub h
    add hl, de
    ld hl, sp-$03
    cp a
    dec c
    nop
    inc de
    nop
    db $fd
    ld [de], a
    xor b
    dec d
    ld bc, $fea1
    or d
    jr jr_02f_67f3

    ld [de], a
    and d
    add hl, de
    ld d, l
    add hl, de
    add b
    ld h, l
    nop
    nop
    rst RST_10
    rra
    nop
    rlca
    sub b
    dec b
    ld a, a
    rla
    jr nz, jr_02f_67c2

jr_02f_67c2:
    ldh a, [$ff03]
    nop
    cp $1d
    nop
    add b
    ld a, a
    ei
    rst RST_38
    ei
    rst RST_38
    nop
    rst RST_38
    rst RST_18
    dec b
    nop
    db $fd
    nop
    ld bc, $fb00
    rst RST_38
    ld a, a
    ld a, a
    ld a, h
    ld a, [hl]
    db $dd
    ld a, l
    inc d
    ld [bc], a
    ld a, h
    ld a, [hl]
    ld a, a
    inc e
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    ccf
    cp a
    ccf
    ccf
    add b
    xor d
    nop
    db $10
    rst RST_30
    ld [bc], a

jr_02f_67f3:
    xor b
    rst RST_38
    inc l
    ld [bc], a
    db $e3

jr_02f_67f8:
    rst RST_20
    db $eb
    db $eb
    ccf
    add hl, hl
    ld l, b
    xor b
    jr z, jr_02f_6822

    and l
    inc l
    inc bc
    inc l
    ld bc, $05bf
    db $10
    ld c, d
    nop
    adc d
    ld a, [bc]
    inc l
    ld bc, $7efe
    ld d, b
    ld [bc], a
    ld a, [hl]
    ld a, $3e
    cp [hl]
    ld a, [hl]
    ld a, $50
    ld bc, $fb7d
    ld e, a
    nop
    ld bc, $dfff

jr_02f_6822:
    cp $df
    ld h, e
    nop
    adc $60
    ld bc, $ff00
    cp a
    ld [hl], c
    nop
    ld a, [bc]
    inc bc
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    ld b, c
    ld l, l
    ld d, c
    ld b, e
    ld b, b
    ld d, b
    rst RST_28
    ld b, b
    ld b, d
    ld b, d
    ld d, d
    inc e
    ld bc, $0000
    db $fc
    rst RST_38
    db $fc
    db $fd
    db $fd
    inc h
    inc h
    dec b
    ld b, l
    inc l
    db $ed
    inc l
    inc l
    ld bc, $0000
    ld e, $01
    add b
    xor d
    ret nz

    rst RST_20
    sub h
    ld [bc], a
    jr z, jr_02f_67f8

    inc bc
    ld d, b
    ld bc, $5800
    and b
    di
    inc b
    nop
    dec hl
    ld [bc], a
    xor [hl]
    inc bc
    ld [bc], a
    and [hl]
    ld c, d
    ld c, d
    ei
    adc d
    ld a, [hl+]
    or b
    ld [bc], a
    nop
    ld bc, $bfff
    cp $f5
    cp a
    ld l, c
    inc b
    ld bc, $007d
    ld h, e
    ccf
    ld e, d
    ccf
    rst RST_38
    ld a, c
    ld a, a
    ld h, a
    ccf
    ld c, a
    ccf
    ld l, [hl]
    ld a, a
    rst RST_38
    ld h, c
    ccf
    ld l, e
    ccf
    inc a
    rst RST_38
    cp c
    rst RST_38

jr_02f_6896:
    rst RST_38
    and l
    rst RST_38
    sbc l
    rst RST_38
    inc a
    rst RST_38
    ld sp, hl
    rst RST_38
    rst RST_18
    rst RST_20
    rst RST_38
    sbc a
    rst RST_38
    cp $f9
    ld [bc], a
    adc a
    rst RST_38
    rst RST_38
    ld l, a
    rst RST_38
    xor $fe
    ldh [$fff1], a
    add b
    adc a
    db $dd
    ld a, e
    ld bc, $f800
    db $fc
    ldh a, [$ff0d]
    db $10
    inc bc
    inc a
    rst RST_28
    inc e
    ldh [$ffe1], a

jr_02f_68c1:
    nop
    ld d, $11
    ld bc, $0e3e
    rst RST_38
    ldh a, [$ff71]
    add b
    adc [hl]
    ld bc, $0f30
    ret nz

    rst RST_38
    ccf
    ld c, $f0
    jr nc, jr_02f_6896

    rst RST_00

jr_02f_68d7:
    nop
    jr c, jr_02f_68c1

    rlca
    ret nz

    ccf
    ld a, h
    nop
    inc bc
    nop
    ld b, b
    cpl
    and b
    rst RST_30
    ld l, a
    jr nz, jr_02f_68d7

    ld b, h
    rla
    ld e, d
    ld a, a
    ld a, c
    ccf
    rst RST_38
    ld h, a
    ccf
    ld c, [hl]
    ld a, [hl]
    ld h, b
    ld sp, $0641
    rst RST_38
    ld b, $38
    jr c, jr_02f_693c

    ld a, $fe
    or b
    pop af
    rst RST_38
    add b
    rst RST_00
    rlca
    jr c, jr_02f_693e

    ret nz

    jp nz, $ef00

    inc e
    ld [bc], a
    ldh [rNR34], a
    ld a, [de]
    ld de, $00e3
    inc e
    rst RST_30
    inc bc
    ldh [$ff1f], a
    ld a, [hl-]
    inc de
    ld [bc], a
    add hl, bc
    ld a, b
    dec bc
    xor a
    adc b
    ld a, e
    ld [$86fb], sp
    dec d
    nop
    sbc h
    ld bc, $cf00
    sbc a
    jr nz, jr_02f_694c

    cp a
    sbc b
    inc de
    sub b
    inc de
    inc a
    ld b, c
    inc bc
    ld b, c
    ld a, l
    xor b
    inc de
    sub b
    inc de
    ld a, l
    nop

jr_02f_693c:
    dec sp
    ld [de], a

jr_02f_693e:
    ld a, [hl-]
    ld de, $1192
    adc a
    ld sp, hl
    ld [bc], a
    ld [bc], a
    ei
    ret z

    inc de
    sbc b
    dec d
    sbc b

jr_02f_694c:
    rla
    nop
    rst RST_38
    rst RST_38
    ld a, a
    add b
    ld a, a
    cp a
    ld [hl], e
    or e
    ld h, e
    ld e, a
    and e
    ld [hl], e
    or e
    ld [hl], e
    or e
    ld a, [hl-]
    ld de, $e480
    stop
    db $f4
    dec d
    xor b
    dec d
    xor b
    rla
    db $10
    dec hl
    ret z

    dec d
    ret z

    dec e
    or h
    db $10
    ld a, e
    ld [bc], a
    ldh a, [$ffb8]
    ld d, $39
    inc h
    xor b
    ld d, $39
    inc h
    rlca
    ld b, b
    jr nz, @+$19

    rst RST_08
    ld d, b
    scf
    db $10
    ld [hl], a
    ld h, [hl]
    cpl
    ld l, [hl]
    inc hl
    ld [bc], a
    cp $c0
    add b
    dec hl
    add [hl]
    rla
    add [hl]
    inc de
    ld b, h
    add hl, de
    ld b, h
    ld de, $2910
    ld bc, $fbfe
    rra
    pop hl
    db $10
    add hl, hl
    ldh a, [rIF]
    ldh a, [$ffef]
    rra
    ld a, a
    rst RST_28
    inc e
    db $ec
    add hl, de
    jp hl


    add hl, de
    jp hl


    ret nc

    ld hl, $18ff
    add sp, $1f
    rst RST_28
    ldh a, [$ffef]
    ld [hl], b
    ld l, a
    rst RST_38
    jr nc, jr_02f_69e9

    jr nc, jr_02f_69eb

    ld [hl], b
    ld l, a
    ldh a, [$ffef]
    rst RST_38
    jr nc, jr_02f_69f2

    ldh a, [$ffef]
    nop
    ccf
    rrca

jr_02f_69c8:
    rra
    rst RST_38
    nop
    rra
    nop
    ldh [$ffc0], a
    ldh [rP1], a
    ldh [$fffb], a
    nop
    rra
    ldh a, [c]
    jr nz, jr_02f_69c8

    ldh a, [$fff8]
    nop
    ld hl, sp-$01
    nop
    rlca
    ld bc, $0003
    ld bc, $fe00

jr_02f_69e5:
    rst RST_38
    db $fc
    cp $00

jr_02f_69e9:
    rrca
    inc bc

jr_02f_69eb:
    rlca
    nop
    inc bc
    ret nz

    adc a
    nop
    ld l, a

jr_02f_69f2:
    nop
    sub e
    db $10
    adc [hl]
    ld bc, $3519
    sbc [hl]
    nop
    rra
    ccf
    ld hl, sp+$0a
    jr nc, jr_02f_6a2a

    dec [hl]
    push af
    jr nz, jr_02f_69e5

    ld hl, sp+$00
    rst RST_38
    rra
    dec h
    ld a, a
    ld a, [hl-]
    ld [hl-], a
    ldh a, [rDIV]
    jr nc, @+$0b

    ld sp, $f8c0
    jr nz, jr_02f_6a61

    ld sp, $1cfc
    ld sp, $002c
    add hl, sp
    jr jr_02f_6a3b

    inc b
    rlca
    inc bc
    rst RST_38
    inc bc
    ld hl, sp+$7c
    db $fc
    nop
    ld a, a
    nop

jr_02f_6a2a:
    add b
    ei
    add b
    ldh [$ff80], a
    ld [hl+], a
    ld a, $c2
    sbc $22

jr_02f_6a34:
    and $ff
    ld a, [de]
    ld a, d
    inc b
    inc e
    inc bc

jr_02f_6a3b:
    rrca
    nop
    rrca
    ld c, e
    nop
    ldh a, [rOBP0]
    jr nc, jr_02f_6a34

    db $10
    ld sp, $3012
    rlca
    inc h
    ld [hl], $cc
    inc l
    ld [bc], a
    inc a
    inc hl
    ld a, a
    rst RST_38
    ld l, d
    ld sp, $306c
    ret nz

    nop
    add c
    ret nz

    db $f4
    jr nz, @+$53

    ld sp, $3587
    dec d

jr_02f_6a61:
    jr nc, jr_02f_6a93

    inc [hl]
    sbc c
    ld a, $80
    ld a, [hl+]
    or e
    inc sp
    rst RST_38
    xor d

jr_02f_6a6c:
    ld [hl-], a
    ldh [rNR10], a
    inc [hl]
    nop
    ld c, d
    inc [hl]
    rst RST_00
    ld [hl], $e2
    ld d, a
    jr nc, @-$02

    or d
    nop
    sub d
    ld de, $3147
    db $fc
    ret nz

    rst RST_18
    rst RST_38
    jr nz, jr_02f_6a6c

    db $10
    ld [hl], e
    inc c
    cp h
    ld [bc], a
    ld c, $fa
    ld [$0032], sp
    add [hl]
    ld d, $7b
    adc b

jr_02f_6a93:
    sbc e
    ld l, b
    db $eb
    rst RST_38
    db $10
    ld [hl], e
    nop
    ld hl, sp-$10
    ld hl, sp-$08
    db $fc

jr_02f_6a9f:
    ld b, $c0

Jump_02f_6aa1:
    jr nc, jr_02f_6aa6

    ld bc, $4039

jr_02f_6aa6:
    jr nc, jr_02f_6adc

    push bc
    add hl, sp
    db $fd
    jr nz, jr_02f_6a9f

    jr nz, @+$24

    add c
    jr nc, @-$0e

    ld sp, $c040
    jr nc, jr_02f_6ace

jr_02f_6ab7:
    jr nc, jr_02f_6ab7

    dec sp
    inc hl
    ld l, b
    ld c, c
    ld bc, $2c80
    ld sp, $3238
    rlca
    inc sp
    rst RST_00
    scf
    sbc c
    scf
    db $e3
    inc sp
    sbc c
    ld b, c
    nop

jr_02f_6ace:
    or l
    ld sp, $4581
    ccf
    ld b, l
    inc l
    nop
    and h
    ld [hl-], a
    and e
    jr nc, jr_02f_6b1d

    inc [hl]

jr_02f_6adc:
    inc sp
    ld b, c
    rst RST_38
    rst RST_38
    inc a
    dec c
    ld c, $c2
    jp $01e1


jr_02f_6ae7:
    db $fd
    ld hl, sp+$40
    ld b, a
    nop
    ld a, a
    add b
    sbc a
    ld b, b
    rst RST_08
    ld a, a
    jr nc, jr_02f_6ae7

    inc c
    dec a
    ld [bc], a
    ld e, $01
    adc a
    ld sp, $110e
    daa
    ld a, a
    add b
    cp a
    inc c
    ld sp, $5102
    ld h, [hl]
    ld c, [hl]
    and c
    ld [hl-], a
    adc b
    and h
    jr nc, @+$3d

    ld b, e
    push af
    ld [hl-], a
    cp $9b
    ld [hl-], a
    inc l
    inc bc
    ld a, [de]
    inc [hl]
    add b
    ld h, b
    ld b, [hl]
    ld sp, $445a

jr_02f_6b1d:
    dec h
    ld d, e
    ld de, $ba58
    ld b, d
    rrca
    rlca
    ld de, $8030
    ld [$2c33], sp
    ld e, [hl]
    xor e
    ld sp, $32d9
    ld c, b
    ld [hl], $4f
    ld e, a
    dec l
    jr nc, jr_02f_6b3e

    cp c
    rra
    ld [de], a
    inc [hl]
    inc l
    nop
    inc bc

jr_02f_6b3e:
    ldh a, [$fff0]
    ld h, c
    ld c, c
    ret nz

    cp $e6
    ld b, b
    rst RST_30
    ld [$0679], sp
    sbc [hl]
    ld bc, $eccf
    ldh a, [c]
    inc sp
    ld b, h
    ld d, $2f
    ret nz

    pop bc
    ld d, d
    ld [hl], c
    ldh a, [$ff0e]
    db $fc
    db $db
    ld bc, $16b9
    add b
    rrca
    ld b, b
    cpl
    add b
    adc a
    add c
    ld h, b
    and a
    cpl
    add hl, de
    cpl
    ret


    ld [de], a
    ld [hl], b
    cpl
    add d
    cpl
    add [hl]
    db $10
    ld hl, sp-$01

jr_02f_6b74:
    add hl, bc
    ei
    nop
    ld hl, sp+$07
    rst RST_30
    nop
    rst RST_30
    rst RST_00
    rra
    xor $1e
    cp a
    ld hl, $1290
    ld a, [hl-]
    ld hl, $0ff0
    ret c

    ld b, [hl]
    daa
    ld a, [hl-]
    ld hl, $22ac
    rrca
    ldh [$ff71], a
    ld h, d
    ret nz

    rst RST_08
    and a
    ld h, b
    rst RST_08
    nop
    ld c, l
    ld h, b
    add b
    ld h, b
    rst RST_20
    add [hl]
    ld h, l
    ld h, b
    db $fc
    ld a, l
    ld h, b
    sub b
    ld l, c
    nop
    ldh [$ff1f], a
    rst RST_18
    inc bc
    rst RST_18
    ld a, a
    nop
    rst RST_18
    jr nz, jr_02f_6b74

    inc e
    ldh [$ff03], a
    call $ff40
    ld h, b
    ld c, a
    add b
    add e
    ldh a, [$fffd]
    inc a
    pop af
    rst RST_38
    inc c
    pop af
    inc c
    ld sp, $4380
    ld c, h
    jp Jump_000_1043


    rst RST_20
    add b
    ld h, h
    rst RST_00
    ld l, a
    add e
    ld l, d
    ret nz

    ld h, e
    rlca
    ld c, c
    jr nc, @+$81

    ld a, [bc]
    ld hl, sp+$09
    ld hl, sp+$0a
    ld a, [$8709]
    inc d
    rst RST_38
    ret nz

    ccf
    jr c, jr_02f_6bec

    add $01
    ld sp, $e700
    adc $c0

jr_02f_6bec:
    ld sp, $58e1
    nop
    ld [hl], c
    add [hl]
    ld bc, $7771
    nop
    adc [hl]
    add b
    sub b
    ld l, c
    and b
    ld c, a
    jr nz, jr_02f_6c5f

    ld h, c
    ldh a, [rSCX]
    ld a, [hl+]
    ret z

    dec d
    jr c, jr_02f_6c2b

    ld l, [hl]
    daa
    sub b
    or a
    ld d, b
    rst RST_10
    ei
    jr nz, jr_02f_6c76

    ld l, [hl]
    daa
    nop
    ld b, b
    nop
    ccf
    rra
    pop bc
    cpl
    jr nc, jr_02f_6c81

    ld e, d
    inc sp
    nop
    ld l, b
    ld e, e
    ld [hl-], a
    ld b, b
    ld h, a
    ld [$ef18], sp
    dec bc
    add sp, -$15
    ret z

    ld d, b
    ld l, c

jr_02f_6c2b:
    add b
    add b
    cp a
    sbc l
    add b
    ld h, b
    ld l, c
    nop
    nop
    push de
    rst RST_08
    ld d, d
    ld [hl], h
    ld h, l
    nop
    rst RST_18
    rrca
    ld b, b
    rrca
    jr jr_02f_6c6f

    ret nc

    ld a, e
    dec hl
    ret z

    rst RST_38
    dec hl
    ret z

    inc hl
    ret z

    dec hl
    ret nz

    inc hl
    ret nz

    sla c
    jp nz, Jump_02f_71ea

    cp a
    xor l
    ld [hl], b
    ldh a, [$ff75]
    add e
    cp h
    inc bc
    add b
    cp a
    dec e
    add b
    ld b, e

jr_02f_6c5f:
    rst RST_18
    ld a, [$fd00]
    nop
    rst RST_38
    inc bc
    ld [$0fa0], sp

jr_02f_6c69:
    ld e, a
    ld b, b
    rrca
    and b
    rrca
    ret nz

jr_02f_6c6f:
    inc de
    ld [bc], a
    ldh [$ff15], a
    nop
    rst RST_38
    di

jr_02f_6c76:
    ld [bc], a
    db $ed
    inc c
    sbc $1e
    and [hl]
    ld [hl], $ff
    ld c, [hl]
    ld l, [hl]
    rlca

jr_02f_6c81:
    ld e, a
    add a
    ccf
    add a
    ccf
    rst RST_38
    cpl
    jr jr_02f_6c91

    nop
    dec hl
    jr z, jr_02f_6cd1

    ld h, b
    xor a
    dec c

jr_02f_6c91:
    ld e, h
    dec e
    ld a, h
    ld a, [hl-]
    nop
    cp h
    inc bc
    ld a, [bc]
    ldh [$ffbf], a
    ld c, $cf
    add hl, hl
    jp nz, $ca21

    ld d, d
    ld bc, $7e29
    ld d, a
    nop
    jr nz, jr_02f_6c69

    rrca
    rrca
    add b
    cp a
    ld h, b
    ld b, $ff
    cp h
    nop
    inc bc
    rlca
    rst RST_38
    ccf
    ret nz

    ccf
    rst RST_38
    ret nz

    rra
    ldh [$ff1f], a
    ldh [rP1], a
    ldh a, [$ff08]
    ld e, a
    rrca
    rrca
    rst RST_38
    add c
    rst RST_38
    inc e
    ld bc, $1be0
    nop
    rst RST_38
    nop
    rrca
    nop
    rst RST_28

jr_02f_6cd1:
    add b
    rst RST_28
    ret nz

    rst RST_28
    cp $03
    ld a, [bc]
    rst RST_38
    nop
    nop
    jp $c31f


    rra
    rst RST_30
    db $e3
    rrca
    pop hl
    and l
    ld [bc], a
    db $e3
    rrca
    inc bc
    rrca
    rst RST_30
    ld e, $be
    adc [hl]
    or c
    nop
    add [hl]
    sbc $86
    rst RST_18
    cp $b8
    ld bc, $df07
    nop
    ldh [rSB], a
    rra
    nop
    rst RST_38
    ld a, a
    ld a, a
    ld a, a
    rrca
    ld a, a
    inc bc
    ld a, a
    ld bc, $7fff
    ld b, b
    ld a, a
    ccf
    ccf
    rst RST_38
    rst RST_38
    rra
    rst RST_38
    rst RST_38
    add a
    rst RST_38
    pop hl
    rst RST_38
    pop af
    cp $f8
    rst RST_38
    rst RST_38
    ld a, h
    rst RST_38
    rrca
    rst RST_38
    add b
    rst RST_38
    call z, $ffff
    rst RST_20
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    cp l
    xor a
    ld a, a
    ld e, [hl]
    cp a
    ldh a, [$ffe7]
    nop
    ccf
    db $d3
    nop
    call $f3ff
    di
    db $fc
    ld sp, hl
    cp $fc
    rst RST_38
    jr nz, @-$43

    rst RST_38
    ld e, $e5
    nop
    db $e3
    rst RST_38
    ei
    jp hl


    nop
    and a
    cp a
    ld a, a
    db $d3
    ccf
    ld h, b
    rst RST_28
    jr nz, @-$73

    ld [bc], a
    ldh [$fffd], a
    rst RST_28
    db $10
    inc de
    ld b, b
    ld a, a
    ld [hl], b
    ccf
    ld a, b
    rrca
    rst RST_38
    inc a
    add a
    ld c, $c3
    rlca
    pop af
    inc bc
    ld hl, sp-$01
    ld bc, $07fc
    ldh a, [$ff08]
    ldh a, [rTAC]
    ld hl, sp-$09
    ld bc, $00fe
    pop hl
    nop
    ret nz

    ld a, a
    ldh [$ff3f], a
    rst RST_38
    rlca
    ccf
    rrca
    cp a
    inc c
    cp a
    nop
    sbc $af
    ret nz

    ld hl, $1fe0
    inc b
    ld bc, $cf7c
    nop
    inc hl
    rst RST_38
    ccf
    ld l, a
    stop
    rra
    ld c, $0f
    rst RST_00
    cp a
    rlca
    ldh a, [rP1]
    ld a, $ff
    sbc a
    rst RST_20
    nop
    cp a
    cp a
    ld a, a
    ldh [$ff1f], a
    nop
    rst RST_38
    ldh [$ffe7], a
    nop
    ld h, a
    rst RST_38
    sbc a
    dec sp
    rst RST_00
    xor l
    db $d3
    ld d, a
    xor b
    xor [hl]
    ei
    ld d, c
    nop
    jp hl


    nop
    di
    rst RST_38
    ccf
    cp $8b
    rst RST_38
    db $fc
    jp z, Jump_02f_61f5

    cp $ff
    rst RST_38
    ld [hl], c
    rst RST_38
    rst RST_38
    ld h, b
    rst RST_38
    rst RST_18
    rst RST_38
    add sp, $1f
    ld [hl], h
    rst RST_38
    adc a
    xor e
    ld d, a
    ld de, $81ef
    rst RST_38
    ld sp, hl
    cp $df
    nop
    pop af
    rst RST_38
    ldh [$ffef], a
    ldh [$ff2f], a
    ld h, b
    ld c, a
    adc a
    and b
    rst RST_08
    add b
    rla
    db $10
    xor d
    ld de, $3700
    db $10
    ld a, [$039a]
    rst RST_38
    sbc e
    ld [bc], a
    ld [hl], b
    rra
    inc a
    adc a
    ld e, $7f
    jp $e10f


    ld [bc], a
    nop
    db $fc
    db $fc
    or b
    db $10
    ldh a, [$ffb8]
    db $10
    inc bc
    ld bc, $00e7
    sbc h
    ld bc, $6000
    ld h, a
    inc e
    rst RST_30
    ldh [$ff03], a
    db $fc
    call nc, Call_000_0217
    cp $7c
    ld a, a
    ld a, l

jr_02f_6e1b:
    adc a
    ld [hl], d
    nop
    ld b, b
    sbc a
    add c
    ld c, $c6
    adc $10
    rst RST_18
    nop
    rst RST_38
    rlca
    rst RST_38
    cp $04
    nop
    ret nz

    nop
    adc h
    jp $ce00


    db $10
    inc c
    ei
    cp d
    db $10
    call $9a11
    inc bc

jr_02f_6e3c:
    nop
    ld sp, $d601
    ld de, $2222
    ret c

    inc de
    rst RST_00
    ret nz

    xor [hl]
    db $10
    add a
    ld bc, $19ec
    ld [bc], a
    ld [hl-], a
    ld hl, $bf20
    ld b, b
    ld hl, $8000
    ccf
    ld a, [hl]
    ld b, l
    ld [hl+], a
    jr nz, jr_02f_6e1b

    ld a, a
    cp a
    ld a, a
    add b
    or [hl]
    inc d
    ld e, $b9
    ld [de], a
    add b
    ld a, a
    add b
    ld a, a
    sbc h
    ld bc, $2002
    cp c
    ld [de], a
    ei
    ld b, c
    ld a, l
    ld [hl], b
    dec h
    ld bc, $017d
    cp l
    add c
    rst RST_38
    dec a
    jr nz, jr_02f_6e3c

    ld b, b
    rra
    nop
    ld e, a
    nop
    rst RST_18
    ld e, a
    ld b, b
    rra
    add b
    ccf
    ld b, b
    ld hl, $3d81
    ld d, b
    sub b
    dec hl
    ld b, b
    inc hl
    ld b, b
    inc hl
    add d
    ld hl, $c480
    nop

jr_02f_6e98:
    nop
    ld d, d
    jr nz, jr_02f_6e98

    ld d, d
    ld [hl+], a
    inc b
    nop
    ld de, $e10d
    db $ed
    ld bc, $cfed
    ld de, $210d
    dec e
    sub b
    inc hl
    add [hl]
    dec h
    rra
    and b
    add e
    nop
    add b
    ret c

    ld hl, $0503
    jp c, $da11

    ld de, $2790
    ld bc, $7100
    ld [hl+], a
    ld c, h
    ld hl, $29a0
    cp d
    ld [de], a
    inc b
    ld [$2102], sp
    inc bc
    add hl, bc
    ld [hl], b
    daa
    inc a
    ld [hl], b
    inc hl
    ld b, b
    add hl, hl
    nop
    rra
    ld b, b
    ret nz

    ld d, b
    add hl, hl
    sbc h
    ld bc, $60dc
    add hl, hl
    or b
    db $10
    ld [bc], a
    ld b, b
    ret nz

    ld [hl], b
    dec sp
    nop
    ld [bc], a
    call z, Call_000_3b80
    ld [hl], b
    dec sp
    ld b, d
    ret nz

    ld [hl+], a
    inc hl
    adc $10
    jr z, jr_02f_6ef6

jr_02f_6ef6:
    rst RST_18
    ld b, h
    add hl, sp
    cp h

jr_02f_6efa:
    ld [hl], e
    ld a, b
    add c
    dec [hl]
    nop
    inc d
    rst RST_38
    nop
    ld [hl+], a
    sbc h
    dec a
    adc $1e
    ld b, h
    jp nz, Jump_02f_48ff

    add $4b
    rst RST_00
    ld b, d
    rst RST_00
    ld b, [hl]
    adc $ff
    ld c, b
    ret z

    nop
    rlca
    rlca
    and a
    jp $dff8


    ld h, b
    ld hl, sp+$70
    ld a, h
    ld a, b
    push de
    jr nc, @+$3d

    jr c, @-$01

    rst RST_00
    cp c
    db $10
    jp Jump_000_061f


    rra
    ld c, $3e
    ld a, a
    ld e, $3e
    inc e
    ld a, $d8
    inc e
    db $e3
    cp c
    db $10
    cp $72
    ld h, $3d
    ld bc, $010d
    pop af
    cp $fe
    ccf
    rlca
    and b
    rlca
    or b
    jr nz, jr_02f_6efa

    ld b, $38
    reti


    ld [de], a
    nop
    ld d, $38
    call z, Call_02f_7012
    daa
    dec e
    nop
    ld [hl], b
    rst RST_38
    nop
    rlca
    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst RST_38
    cp $06
    ld a, [bc]
    rra
    nop
    inc bc
    ld [bc], a
    di
    ld b, $ff
    or $1a
    ld bc, $7f00
    jr nz, jr_02f_6f76

    cp [hl]
    ld [bc], a
    cp a
    inc bc

jr_02f_6f76:
    xor d
    dec hl
    ld bc, $30ff
    inc bc
    ld bc, $0537
    rst RST_18
    ld b, b
    inc bc
    add b
    ld d, l
    rst RST_28
    ld c, b
    inc b
    rst RST_38
    ld d, b
    inc bc
    ret nz

    ld d, a
    dec b
    rst RST_30
    ld h, b
    inc bc
    xor e
    ld h, b
    ei
    ld l, b
    inc b
    rst RST_38
    ld [hl], b
    inc bc
    jr nc, jr_02f_7011

    dec b
    db $fd
    ld d, [hl]
    add b
    inc bc

jr_02f_6f9f:
    jr jr_02f_6f9f

    adc b
    inc b
    rst RST_38
    sub b
    inc bc
    inc c
    sub a
    inc c
    inc b
    ld a, [de]
    inc bc
    ld a, [de]
    nop
    ld a, a
    or b
    inc bc
    inc l
    ld [bc], a
    dec hl
    nop
    ld b, $06
    ret z

    ld bc, $07fc
    dec bc
    rlca
    inc b
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    ei
    and b

jr_02f_6fc6:
    ld e, a
    and $01
    ret nc

    cpl
    nop
    rst RST_38
    ld [bc], a
    ld a, a
    db $fd
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$01f6]
    db $db
    dec bc
    db $f4
    db $ec
    ld bc, $17e8
    ld [bc], a
    ld de, $2bd4
    rst RST_38
    ld [$f515], a
    ld a, [bc]
    nop
    rst RST_38
    db $10
    rst RST_28
    rst RST_28
    jr z, jr_02f_6fc6

    inc d
    db $eb
    inc d
    ld de, $55aa
    ld e, h
    rst RST_18
    and e
    nop
    rst RST_38
    ld [$16f7], sp
    inc de
    jr z, @-$27

    ld l, a
    ld d, l
    xor d
    ld a, [hl-]
    push bc
    db $fc
    ld bc, $e817
    ld [hl-], a
    ld de, $2bff
    call nc, $a857
    xor a

jr_02f_7011:
    ld d, b

Call_02f_7012:
    ld a, [$ff05]
    push af
    ld a, [bc]
    ld [$fd15], a
    ld [bc], a
    rst RST_38
    nop
    cp $46
    ld de, $00ff
    xor d
    ld d, l
    ld e, l
    and d
    cp [hl]
    scf
    ld b, c
    ld a, a
    add b
    ld d, h
    ld de, $40bf
    rst RST_00
    nop
    rlca
    nop
    or $e4
    dec bc
    nop
    rst RST_38
    db $f4
    add hl, bc
    ld d, h
    xor e
    cp d
    ld b, l
    rst RST_38
    ld a, h
    add e
    ld a, [$7505]
    adc d
    ld a, [$ff05]
    db $fd
    ld [bc], a
    cp $01
    ld e, a
    and b
    xor a
    ld d, b
    or e
    ld d, a
    xor b
    ld e, h
    ld de, $115c
    rst RST_38
    nop
    sub b
    ld a, [bc]
    cp $fb
    nop
    db $fc
    rlca
    dec b
    ldh a, [rP1]
    adc a
    rrca
    dec a
    rst RST_30
    ld a, a
    ld d, d
    rst RST_38
    dec c
    rlca
    db $e3
    ldh [$fffc], a
    db $fc
    push af
    cp a
    rst RST_08
    dec c
    ccf
    sbc b
    ld bc, $7f8c
    ld c, h
    cp a
    rst RST_38
    and [hl]
    ld e, a
    ld b, [hl]
    cp [hl]
    and [hl]
    ld e, [hl]
    sub $2e
    rst RST_38
    ld a, b
    inc bc
    ld h, c
    rlca
    ld c, e
    rra
    rla
    rra
    rst RST_38
    cpl
    ccf
    rla
    ccf
    dec bc
    ccf
    dec b
    rra
    rst RST_38
    and c
    rst RST_38
    ld d, b
    rst RST_38
    ldh [rIE], a
    ldh a, [rIE]
    ei

jr_02f_70a0:
    db $fc
    rst RST_38
    add hl, bc
    ld hl, $ff7f
    ld e, a
    rst RST_38
    xor a
    rst RST_38
    rst RST_38
    rla
    rst RST_38
    dec bc
    rst RST_38
    dec b
    rst RST_38
    ld [bc], a
    rst RST_38
    rst RST_38
    pop bc
    rst RST_38
    and b
    rst RST_38
    rst RST_08
    ret nz

    rst RST_30
    rst RST_38
    ldh a, [$fffb]
    ld hl, sp-$03
    db $fc
    db $fd
    db $fc
    cp $ff
    cp $7e
    cp $fe
    cp $ff
    nop
    cp $ff
    nop
    ld hl, sp+$01
    ret nz

    rlca
    add b
    ccf
    nop
    cp [hl]
    add hl, sp
    ld [hl+], a
    ret nz

    ld b, e
    rla
    ccf
    ccf
    rrca
    jr nz, jr_02f_70a0

    ld c, [hl]
    rrca
    jr nz, jr_02f_70a0

    rst RST_38
    ld d, h
    add hl, bc
    ld [hl+], a
    ld c, a
    inc hl
    ld hl, sp+$51
    nop
    rra
    nop
    db $fc
    ldh [$ffe3], a
    db $fc
    ld [$2f20], sp
    jr nz, jr_02f_7100

    ld bc, $e0fd
    rlc c
    ld a, a
    nop

jr_02f_7100:
    ccf
    add b
    rra
    ret nz

    sub a
    rrca
    ret nz

    rrca
    nop
    nop
    inc bc
    sbc a
    ld d, $78
    inc b
    db $fc
    db $db
    inc c
    cp a
    sub b
    inc hl
    jr jr_02f_7196

    sbc b
    ld hl, $0000
    ld a, [hl]
    inc [hl]
    ld de, $e01f
    cpl
    ret nc

    ld e, a
    and b
    and [hl]
    ld hl, $1ff1
    ld b, $06
    xor l

jr_02f_712b:
    db $10
    inc sp
    jr nz, @-$0e

    ld bc, $00fe
    ld a, a
    pop af
    ld bc, $0fcf
    ccf
    ccf
    cp a
    dec c
    jr nz, jr_02f_712b

    ret z

    ld hl, $0000
    ld hl, sp+$09
    ld [hl+], a
    rst RST_10
    rst RST_38
    xor e
    rst RST_38
    rst RST_38
    ld b, b
    rst RST_38
    add b
    push af
    nop
    rrca
    nop
    rst RST_38
    ld bc, $e080
    ldh [$fff8], a
    db $f4
    cp $fa
    ccf
    rst RST_38
    db $fd
    rst RST_38
    ld a, d
    ld a, a
    dec hl
    ld sp, $2000
    nop
    rst RST_38
    xor a
    nop
    ld d, a
    nop
    dec bc
    nop
    sub l
    nop
    rst RST_38
    ret nz

    ldh [rIE], a
    ld d, b
    cp $28
    rst RST_38
    inc d
    db $fd
    cp $47
    db $10
    cp $00
    ld h, e
    nop
    nop
    ld a, [hl]
    rst RST_38
    rst RST_38
    ccf
    rst RST_38
    ld a, [bc]
    ld a, a
    dec b
    cp a
    nop
    ld a, a
    rla
    nop
    adc a
    nop
    ld b, c
    nop
    add b
    inc d
    nop
    rst RST_38
    adc a
    add b

jr_02f_7196:
    rst RST_00
    ld d, b
    ldh a, [$ffa0]
    db $fc
    ld d, b
    sub l
    cp $b7
    ld hl, $0708
    ld bc, $6cfc
    ld hl, $3438
    ret nz

    ld a, [hl]
    ret z

    nop
    ld bc, $0f00
    dec b
    ld a, a
    dec bc
    inc de
    jr nz, jr_02f_7213

    adc $10
    inc bc
    ld [bc], a
    ccf
    dec d
    ld de, $7f20
    ld c, a
    inc h
    rst RST_00
    inc bc
    ldh [$ff80], a
    ld [$4f23], sp
    dec h
    jr nz, jr_02f_71ca

jr_02f_71ca:
    sbc a
    add b
    db $e3
    rst RST_28
    ldh [rNR43], a
    ld hl, $2124
    ld b, $00
    ld hl, sp+$00
    rst RST_20
    cp a
    inc d
    sbc a
    ld l, d
    ld a, a
    db $f4
    rst RST_38
    ld [$0021], a
    rst RST_30
    inc bc
    ld bc, $7d03
    jr nz, @+$09

    nop

Jump_02f_71ea:
    add a
    nop
    rst RST_38
    add e
    nop
    jp nz, $8100

    xor a
    rst RST_38
    ld d, a
    ld l, a
    rst RST_38
    xor d
    rst RST_38
    dec d
    add hl, de
    jr nz, jr_02f_71fd

jr_02f_71fd:
    ld e, a
    or $20
    rst RST_38
    ld d, l
    ret nz

    ld a, [$f5c0]
    ldh [$fffe], a

jr_02f_7208:
    ld [hl], b
    rst RST_28
    db $fd
    sbc b
    cp $4c
    dec de
    nop
    inc bc
    rst RST_38
    inc e

jr_02f_7213:
    rst RST_38
    ccf
    ld c, $1f
    ld c, $9f
    rlca
    ld c, a
    ld bc, $a3ff
    nop
    pop de
    ld bc, $80eb
    pop af
    ld l, b
    cp $a5
    jr nc, jr_02f_7233

    rst RST_38
    dec b
    xor a
    ld [bc], a
    rst RST_10
    add c
    rst RST_18
    db $eb
    ld b, b
    pop af

jr_02f_7233:
    and b
    ld hl, sp+$40
    jr nc, @-$1e

    and b

jr_02f_7239:
    scf
    db $f4
    ld d, b
    ld hl, sp+$28
    ld sp, $fc28
    ld sp, $f020
    scf
    db $dd
    ld bc, $36f8
    rlca
    nop
    rra
    jr @+$22

jr_02f_724e:
    ld a, a
    dec b
    ld l, $13
    jr nc, jr_02f_7255

    ld a, a

jr_02f_7255:
    ld a, [bc]
    and c
    jr nc, jr_02f_7208

    ld b, l
    inc h
    ret z

    ld hl, $4fea
    dec h
    cp $eb
    jr nz, jr_02f_724e

    ld c, a
    inc h
    ei
    rst RST_38
    call nc, $1dde
    jr nz, @+$42

    ldh a, [$ff80]
    jp Jump_000_2109


    rst RST_30
    rst RST_38
    ld a, a
    di
    rst RST_38
    ld sp, hl
    rst RST_38
    ld a, b
    rst RST_38
    inc e
    xor e
    db $10
    ld a, h
    ld h, $23
    ld a, [hl+]
    ld hl, $ffbe
    ld e, h
    rst RST_38
    inc a
    add hl, hl
    ld b, d
    rst RST_10
    cp $ff
    ld a, l
    and e
    jr nc, jr_02f_72e1

    rlca
    inc bc
    add b
    nop
    ld [hl], e
    ret nz

    add b
    pop hl
    jr nc, jr_02f_729d

    nop
    ret nc

jr_02f_729d:
    nop
    add sp, $1e
    jr nc, jr_02f_7239

    ld a, [hl+]
    nop
    dec d
    add b
    ld b, b
    ld de, $36f3
    xor c
    ld sp, $bfab
    nop
    ld d, l
    nop
    ld a, [bc]
    nop
    dec b
    ret z

    ld bc, $eb50
    ld hl, sp-$58
    ld c, l
    jr nz, jr_02f_72e7

    and l
    ld sp, $017f
    cp a
    rst RST_38
    nop
    ld e, a
    ld b, b
    db $f4
    jr nz, jr_02f_7343

    db $10
    ccf
    rst RST_38
    ld a, [bc]
    sbc a
    dec b
    rst RST_08
    ld [bc], a
    rst RST_00
    nop
    di
    cp $02
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, c
    nop
    add sp, $3a
    inc a
    ld b, b

jr_02f_72e1:
    add sp, $7a
    ld b, b
    nop
    nop
    ld [bc], a

jr_02f_72e7:
    sbc d
    ld b, b

jr_02f_72e9:
    sbc c
    ld b, c
    ld e, b
    pop de
    ld b, c
    ret z

    nop
    jp nc, Jump_02f_7f30

    dec d
    rra
    ld bc, $f8ff
    jr nz, jr_02f_72e9

    xor b
    nop
    db $10
    ld a, a
    and e
    jr nc, jr_02f_7356

    rst RST_38
    ld [hl+], a
    db $fc
    jr nc, jr_02f_7327

    adc $41
    rra
    push af
    rst RST_38
    xor b
    cp $40
    rst RST_38
    ldh [rP1], a
    ld bc, $0701
    ld a, [bc]
    ccf
    ld d, l
    cp [hl]
    and e
    jr nc, jr_02f_731b

jr_02f_731b:
    add a
    inc bc
    rra

jr_02f_731e:
    rra
    ld de, $7f30
    cp $65
    jr nz, jr_02f_731e

    db $fc

jr_02f_7327:
    and b
    ldh a, [$ff0e]
    cp $ee

jr_02f_732c:
    cp $2d
    jr nz, jr_02f_732c

    db $fc
    ldh a, [$fff1]
    ld bc, $0a8b
    ei
    rra
    dec d
    ld e, e
    ld b, d
    ld a, b
    ld sp, hl
    ld a, b
    ld sp, hl
    ldh a, [$ff7f]
    ei
    ld [hl], b

jr_02f_7343:
    di
    ldh [$ffe3], a
    ldh [$ffe3], a
    inc b
    ld de, $f8bf

jr_02f_734c:
    rlca
    db $f4
    dec bc
    ld a, [$4605]
    ld d, c
    db $fc
    add sp, -$0e

jr_02f_7356:
    jr nz, jr_02f_735f

    dec bc
    ld b, $03
    ret nz

    dec b
    jr nz, jr_02f_739b

jr_02f_735f:
    rst RST_38
    rrca
    rst RST_20
    rst RST_38
    inc bc
    cp a
    adc b
    ld b, $89
    ld [bc], a
    ret c

    cp $55
    sbc a
    xor d
    xor b
    ld d, a
    ld d, b
    xor a
    add d
    ld d, a
    rst RST_08
    dec c
    push de
    rst RST_18
    ld a, [hl+]
    xor d
    ld d, l
    ld d, h
    xor e
    and d
    ld d, c
    xor b
    ld d, a
    ld a, [bc]
    and h
    ld d, c
    ld [bc], a
    rla
    ld [hl+], a
    dec b

jr_02f_7388:
    dec d
    ld [hl+], a
    ld d, $21
    ld e, $49
    add hl, bc
    ld hl, $c0df
    rst RST_08
    jr nc, jr_02f_7388

    inc c
    ld c, [hl]
    ld d, a
    rra
    ld hl, sp-$05

jr_02f_739b:
    cp $38
    dec hl
    ld sp, $c03e
    adc $30
    ldh a, [c]
    ld c, h
    call nc, $a851
    ld d, c
    push af
    ld a, [bc]
    adc d
    ld de, $01c7
    rst RST_38
    rst RST_20
    ld b, c
    and $07
    nop
    and b
    ld e, a
    and h
    ld d, c
    rlc b
    rst RST_38
    call nc, Call_02f_4f2b
    xor d
    ld d, l
    push de
    ld a, [hl+]
    or $56
    add hl, de
    jr nz, jr_02f_73c9

    add hl, de

jr_02f_73c9:
    jr nz, jr_02f_734c

    and c
    rlca
    ld h, [hl]
    ld c, a
    inc hl
    db $10
    ld hl, $508f
    dec l
    ld h, c
    ld b, $02
    ld a, a
    ldh a, [$ff5c]
    jr nz, jr_02f_7425

    ld l, a
    inc sp
    ld sp, $234f
    db $fc
    db $fc
    di
    di
    ccf
    call z, Call_000_30cf
    ccf
    ret nz

    rst RST_38
    ld l, b
    ld h, l
    ld b, $04
    rst RST_38
    ld hl, sp+$0f
    ldh a, [$ff87]
    ld a, b
    pop bc
    ld a, $e0
    rst RST_10
    rra
    ld hl, sp+$07
    ld c, [hl]
    ld d, c
    ccf
    ld b, $06
    ld a, a
    add b
    rst RST_38
    ccf
    ret nz

    rra
    ldh [$ff8f], a
    ld [hl], b
    rst RST_08
    ret nz

    ei
    inc sp
    ldh a, [$ffd4]
    ld e, c
    db $e3
    inc e
    pop af
    ld c, $fc
    rlca
    inc bc
    ld a, $01
    and b
    ld h, l
    ld e, h
    ld d, l
    push bc
    inc bc
    call $d021

jr_02f_7425:
    ld l, a
    cp $c4
    ld l, b
    rst RST_38

jr_02f_742a:
    nop
    add c
    nop
    ld b, d
    nop
    inc h
    dec hl
    nop
    jr jr_02f_742a

    ld h, b
    inc h
    ldh a, [c]
    ld h, b
    add c
    rst RST_38
    dec e
    nop
    add b
    rst RST_38
    sbc [hl]
    ld h, c
    add $39
    ret c

    daa
    ld e, d
    and l
    rst RST_38
    dec de
    db $e4
    ld h, e
    sbc h
    ld l, c
    sub [hl]
    ld l, [hl]
    sub c
    rst RST_38
    dec a
    jp nz, Jump_000_32cd

    pop hl
    ld e, $6c
    sub e
    rst RST_38
    adc a
    ld [hl], b
    and a
    ld e, b
    cp c
    ld b, [hl]
    inc a
    jp $897b


    cp $20
    ld bc, $fffe
    add c
    cp $28
    ld bc, $feff
    rst RST_38
    ld a, a
    nop
    ld b, b
    ccf
    ld c, $7f
    rst RST_30
    dec d
    ld a, a
    inc h
    scf
    ld [bc], a
    dec h
    ld a, a
    rst RST_38
    nop
    rst RST_30
    nop
    rst RST_38
    ld [bc], a
    ld b, e
    nop
    add d
    rst RST_38
    sub d
    rst RST_38
    rst RST_38
    xor d
    rst RST_38
    ld [hl-], a
    rst RST_38
    rst RST_38
    nop
    inc a
    jp $5dff


    and d
    cp b
    rst RST_00
    dec e
    ldh [c], a
    cp b
    rst RST_00
    rst RST_38
    cp e
    rst RST_18
    cp e
    rst RST_28
    rst RST_38
    nop
    jp $ff3c


    and c
    ld e, [hl]
    jp $813c


    ld a, [hl]
    and e
    ld a, h
    rst RST_38
    pop af
    ld a, a
    and e
    db $fd
    rst RST_38
    nop
    ret nz

    ccf
    rst RST_38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst RST_38
    add b
    ld a, a
    rst RST_20
    ld [de], a
    rst RST_38
    sub d
    ccf
    ld [bc], a
    add d
    dec b
    and l
    rst RST_38
    or l
    cp $4f
    nop
    ld h, a
    sbc b
    ld d, [hl]
    xor c
    ld h, a
    sbc b
    and $3f
    add hl, de
    ld c, a
    or b
    rst RST_18
    cp c
    ld d, a
    ld l, a
    nop
    add d
    rlca
    db $fd
    ld b, b
    xor e
    nop
    cp $00
    ld [bc], a
    db $fc
    nop
    cp $96
    or h
    rlca
    adc b
    ld a, a
    ret nz

    ld bc, $797f
    nop
    ld [hl], h
    ld bc, $3b7f
    rst RST_38
    ld [$02cf], sp
    rst RST_38
    rst RST_38
    add b
    rst RST_10
    ld [bc], a
    ld c, a
    nop
    db $fd
    ld a, a
    ldh [rP1], a
    rra
    nop
    add a
    ld b, b
    add c
    ld b, b
    rst RST_38
    sbc b
    ld b, b
    add [hl]
    nop
    reti


    sbc l
    add d
    push hl
    rst RST_38
    ldh [c], a
    pop af
    or $f6
    pop af
    rst RST_30
    ldh a, [rPCM34]
    ld a, a
    ld [hl], b
    ld de, $8416
    add e
    adc [hl]
    ld [hl], c
    ld [bc], a
    ld [bc], a
    rst RST_38
    dec h
    dec de
    inc b
    ld h, e
    ld h, h
    ld a, c
    ld a, b
    ld a, [hl]
    rst RST_38
    ld a, [hl]
    sbc l
    ld h, d
    push hl
    ld a, [de]
    jp hl


    ld d, $6e

jr_02f_753a:
    db $fd
    sub c
    jr @+$06

    ld b, e
    rst RST_30
    ld [$ff09], sp
    add hl, bc
    ld a, [$00d5]
    add c
    daa
    db $10
    pop bc
    rst RST_38
    rst RST_38
    ld a, a
    ld d, $cf
    ld a, a
    dec b
    ld a, a
    dec c
    pop hl
    ld bc, $00e1
    ld b, b
    ccf
    rst RST_38
    nop
    nop
    ld [hl+], a
    rst RST_38
    ld a, [hl+]
    rst RST_38
    ld [de], a
    rst RST_38
    rst RST_30
    adc b
    rst RST_38
    ld [hl], b
    add e
    inc bc
    nop
    cp d
    rst RST_28
    cp d
    rst RST_38
    rst RST_38
    cp d
    rst RST_08
    jr c, jr_02f_753a

    ld a, c
    add [hl]
    ld a, h
    rst RST_38
    add e
    ld a, c
    add [hl]
    nop
    nop
    and c
    rst RST_38
    and e
    rst RST_30
    db $fd
    or c
    rst RST_38
    ld h, d
    inc bc
    rst RST_00
    jr c, jr_02f_7588

jr_02f_7588:
    nop
    rra
    ld a, [hl+]
    rst RST_38
    cp d
    ld a, a
    xor c
    ld a, c
    nop
    ld a, b
    ld bc, $114c
    push af
    xor l
    adc e
    nop
    dec h
    add e
    ld b, $00
    nop
    ld e, [hl]
    ld sp, hl
    rst RST_38
    ld d, [hl]
    db $fd
    rst RST_18
    or h
    ld b, [hl]
    cp c
    ld l, a
    sub b
    rst RST_38
    ld h, [hl]
    sbc c
    ld c, [hl]
    or c
    nop
    nop
    sub [hl]
    rst RST_38
    ld sp, hl
    sub l
    and c
    db $10
    add [hl]
    rla
    sbc b
    cp $a0
    cp $98
    inc a
    or l
    inc b
    or d
    nop
    nop
    adc c
    cp $88
    ld b, l
    db $10

jr_02f_75c8:
    sub $07
    di
    rst RST_30
    ld [$0bd2], sp
    ret nc

    add hl, de
    add e
    rst RST_38
    rst RST_38
    cp $f4
    ret nc

    add hl, de
    db $dd
    ld bc, $e000
    nop
    ld h, b
    rra
    ld h, b
    db $10
    sbc a
    ld h, b
    rla
    ld h, e
    inc d
    ld h, d
    dec bc
    cpl
    dec de
    inc l
    ld h, b
    rst RST_18
    db $10
    ld h, [hl]
    ld d, $66
    ld d, $2e
    jr nz, jr_02f_7609

    ld h, [hl]
    db $fd
    ld [de], a
    ld l, $21
    ld h, b
    db $10
    ld h, e
    inc d
    ld h, b
    rla
    cp $1e
    ld l, $17
    nop
    nop
    di
    nop
    db $fc

jr_02f_7609:
    db $fc
    db $f4
    ei
    inc de
    ld e, a
    inc hl
    nop
    db $fd
    ld [de], a
    inc bc
    inc bc
    ld bc, $ff01
    add b
    add b
    ret nz

    ld b, b
    ret nz

    nop
    ldh [rNR41], a
    xor a
    ldh a, [$ff30]
    sbc b
    ld [$10ff], sp
    nop
    ld [hl], d
    ld hl, $b3e0
    ld h, b
    ret nz

    ld a, [hl]
    ld hl, $2689
    add b
    add b
    add [hl]
    ld hl, $fe80
    adc c
    ld h, $04
    inc b
    inc c
    ld [$101c], sp
    inc e
    dec [hl]
    db $10
    ld h, b
    dec h
    rst RST_38
    sbc e
    jr nz, jr_02f_75c8

    ccf
    cp d
    jr nz, jr_02f_76b0

    ld [hl+], a
    ld a, [hl]
    ld h, c
    inc hl
    rst RST_38
    ld a, a
    ccf
    ccf
    rst RST_08
    rst RST_08
    ld h, b
    dec hl
    cp $d5
    nop
    ld bc, $03ff
    rst RST_38
    ld b, $ff
    inc c
    rst RST_38
    rst RST_38
    jr @+$01

    ld sp, $63ff
    rst RST_38
    add $fe
    ld b, l
    db $10
    ld de, $23ff
    rst RST_38
    ld b, [hl]
    rst RST_38
    dec c
    cp d
    ld b, e
    db $10
    inc b
    rst RST_08
    nop
    db $10
    rst RST_38
    ld hl, $26e2
    jr nc, jr_02f_76ed

    rst RST_38
    ld b, c
    inc b
    jr c, @+$42

    cp $11
    dec bc
    cp $20
    ld sp, $ff97
    cp $83
    daa
    ld [hl-], a
    rst RST_38
    ld hl, $2432
    dec [hl]
    add b
    rst RST_38
    db $fc
    db $fd
    db $fd
    add hl, bc
    ld a, h
    ld [$087c], sp
    jp Jump_02f_7f7f


    dec [hl]
    inc d
    push bc
    nop
    rst RST_38
    db $10
    call nc, $8909
    ccf
    ld l, e

jr_02f_76b0:
    add hl, bc
    ccf
    inc h
    dec d
    add c
    push de
    nop
    ret


    ld a, a
    ld [hl], b
    ld sp, $fff7
    ld a, a
    pop bc
    ld [hl], a
    jr nc, jr_02f_76c3

    ccf

jr_02f_76c3:
    cp a
    cp a
    ld a, [$3970]
    pop bc
    ld [hl], l
    jr nc, jr_02f_76cc

jr_02f_76cc:
    nop
    ld a, l
    nop
    ld a, h
    ld e, a
    nop
    ld a, [hl]
    ld [bc], a
    ld a, l
    inc bc
    sbc b
    ld sp, $557e
    jr nz, @-$0f

    db $e3
    nop
    ld [hl], c
    jr nc, jr_02f_775f

    inc hl
    ldh a, [rSVBK]
    adc h
    ei
    ld a, h
    nop
    or h
    nop
    call c, $d430

jr_02f_76ed:
    jr c, @-$26

    ei
    jr nc, jr_02f_7732

    adc c
    inc h
    rra
    nop
    rra
    ld bc, $3f3f
    inc bc
    dec a
    rlca
    ld [$053f], sp
    dec a
    db $10
    or b
    jr nc, @+$01

    add sp, -$02
    ret nc

    cp $a0
    ldh a, [rLCDC]
    add b
    rst RST_38
    nop
    ld e, $1e
    ld a, $20
    ld a, a
    inc l
    ld [hl], b
    rst RST_38
    ld d, b
    nop
    nop
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld a, h
    ld a, a
    ld e, h
    ld a, a
    inc hl
    ld a, l
    ld d, d
    xor b
    ld [hl], b
    adc c
    dec h
    ld e, e
    ldh [$fff0], a
    adc b
    dec h
    inc bc
    inc bc
    ld [bc], a
    ld b, d

jr_02f_7732:
    ld bc, $3151
    cp a
    ld bc, $5401
    rst RST_38
    rst RST_38
    db $eb
    jp nz, RST_30

    rst RST_38
    ld b, $81
    and c
    ld h, b
    jr nc, @+$52

    cp $c0
    xor $b5
    dec b
    cp [hl]
    ld b, d
    ld a, [hl]
    ld e, l
    db $10
    ld a, h
    jr nz, jr_02f_77cb

    rst RST_38
    ld h, b
    ld [hl], b
    ld b, b
    ld b, d
    ld [bc], a
    inc c
    ld [$fd7d], sp
    ld [hl], c
    ld h, a

jr_02f_775f:
    ld hl, $1c1c
    inc a
    jr nz, jr_02f_77de

    ld b, c
    cp a
    ld sp, hl
    add c
    di
    add d
    rst RST_30
    inc b
    ld h, a
    ld hl, $ff08
    inc b
    ld c, $02
    rst RST_08
    pop bc
    rst RST_08
    ld bc, $fbcf
    nop
    rst RST_18
    ld h, [hl]
    ld [hl+], a
    inc a
    inc e
    ccf
    inc bc
    rra
    cp a
    ld bc, $000f
    add a
    add c
    jp Jump_000_30ba


    rst RST_38
    rst RST_38
    rst RST_38
    ld a, b
    ld hl, sp+$3e
    ld [hl], $9e
    adc [hl]
    adc $8f
    jp z, $a0ee

jr_02f_779a:
    or $a5
    jr nc, @-$01

    ld de, $01e1
    ld a, [hl]
    ld sp, hl
    ld bc, $3798
    ld a, [bc]
    ld sp, $e01f
    xor a
    ldh a, [$ffb6]
    rst RST_18
    jp hl


    or l
    ld l, e
    adc h
    ld a, e
    add c
    ld bc, $30df
    rst RST_38
    rst RST_10
    jr c, jr_02f_779a

    jr nc, @-$28

    dec a
    ld d, l
    cp a
    pop af
    push de
    dec a
    db $10
    add e
    nop

jr_02f_77c6:
    pop hl
    jr nz, jr_02f_77c6

    rlca
    ld c, b

jr_02f_77cb:
    rst RST_38
    ld h, a
    ld b, l
    rst RST_38
    ld d, l
    ld b, b
    nop
    jp nc, $fe33

    ld b, b
    or l
    inc bc
    rst RST_38
    ld a, a
    inc l
    ld a, a
    ld e, b
    ld a, a

jr_02f_77de:
    jr c, jr_02f_785f

    ld [hl], b
    rst RST_38
    ld a, a
    ld h, b
    ld a, l
    ld d, d
    ld a, l
    ld [hl+], a
    ld a, l
    ld d, d
    cp a
    xor l
    ld [hl], d
    ld [hl], $e9
    ld sp, hl
    and $e4
    jr nz, jr_02f_77f4

jr_02f_77f4:
    rst RST_38
    db $ed
    ld [de], a
    push de
    ld a, [hl+]
    push bc
    ld a, [hl-]
    ld d, h
    cp a
    rst RST_28
    rst RST_10
    inc a
    rst RST_38
    add hl, hl
    ldh [c], a
    jr nz, jr_02f_780c

    ld e, d
    xor a
    ccf
    ld c, d
    cp l
    ld d, d
    cp l

jr_02f_780c:
    ld d, l
    rst RST_38
    ld [de], a
    ld b, c
    rst RST_10
    nop
    ld a, a
    nop
    ld h, [hl]
    sbc c
    xor e
    ld d, h
    and a
    ld e, b
    or l
    rlca
    cp $2a
    ld b, c
    ld a, [hl]
    adc h

Call_02f_7821:
    ld a, h
    inc hl
    ld a, a
    ld h, b
    ld a, a
    add hl, de
    ld b, b
    dec [hl]
    inc de
    ld h, a
    ld hl, $a956
    or d
    ld b, e
    and $41
    ld h, a
    ld hl, $da8f
    ld [hl], l
    rst RST_38
    ldh [rTMA], a
    ld d, c
    ld c, e
    ld [de], a
    ld l, b
    jr nz, jr_02f_78ab

    push af
    sub h
    add e
    inc b
    ld bc, $2365
    ld a, [hl]
    sbc d
    cp $36
    ld c, a
    cp $6c
    cp $d8
    or c
    db $10
    ld h, [hl]
    ld [hl+], a
    adc c
    ld l, a
    ld d, d
    sbc $66
    scf
    rst RST_18
    ld [hl], l
    rst RST_38
    sbc l
    and c

jr_02f_785f:
    ld de, $74df
    rst RST_38
    rst RST_38
    jr nz, @+$01

    ld a, a
    rst RST_38

jr_02f_7868:
    jr nz, jr_02f_7868

    ld a, a
    xor a
    rst RST_38
    ld d, h
    cp $57
    sub d
    ld d, b
    sub a
    add e
    nop
    cp $77
    rst RST_38
    nop
    adc b
    pop bc
    add hl, de
    rst RST_20
    inc bc
    dec de
    ld d, d
    ld sp, $d406
    add hl, bc
    ld [$d27f], sp
    inc c
    ld bc, $d725
    ld d, h
    ld h, b
    ld h, $89
    inc h
    cp h
    sub $57
    sub $55
    ld l, a
    db $10
    ld a, a
    rra
    ld d, [hl]
    jr nz, jr_02f_78bc

    db $e4
    ld e, d
    daa
    ld c, $64
    xor d
    call z, Call_000_2023
    ld l, e
    ld b, b
    add [hl]
    ld c, c
    ld a, e
    sbc c

jr_02f_78ab:
    ld b, d
    db $ed
    nop
    ld b, b
    add [hl]
    ld b, b
    sbc c
    db $ec
    ld bc, $65ff
    ld h, d
    add l
    add d
    ld l, c
    ld h, [hl]
    adc [hl]

jr_02f_78bc:
    add c
    rst RST_38
    ld l, a
    ld h, b

jr_02f_78c0:
    add a
    adc b
    ld l, c
    ld h, [hl]
    adc h
    add e
    and a
    ld b, b
    add [hl]
    ld b, c
    dec sp
    ld h, d
    jr c, jr_02f_792f

    ld b, [hl]
    db $ed
    nop
    ld l, l
    rst RST_20
    ld h, d
    add l
    adc d
    ld b, h
    ld l, e
    ld a, [hl-]
    ld h, c
    ld [$46d9], sp
    call nc, $6471
    ld h, b
    ld l, l
    ld b, d
    ld d, c
    ld h, d
    ld [$6037], sp
    ld bc, $ef5b
    nop
    inc c
    db $10
    rla
    ld h, b
    ld h, l
    rst RST_28
    ldh [$ff27], a
    rst RST_38
    jr z, jr_02f_78c0

    add $6c
    ld h, e
    add [hl]
    rra
    jp Jump_000_0bff


    ldh a, [rDIV]
    ld hl, sp+$01
    sbc [hl]
    ld h, b
    cpl
    rst RST_38
    ret nc

    inc bc
    db $fc
    nop
    rst RST_38
    adc l
    add d
    ld h, l
    rst RST_38
    ld l, d

jr_02f_7911:
    add hl, hl
    ld h, $ce
    pop bc
    rst RST_28
    add sp, $27
    rst RST_18
    ld h, $c1
    ld bc, $80e0
    ldh [rTAC], a
    ld e, b
    sbc b
    cp a
    ld b, [hl]
    add [hl]
    ld de, $40d1
    add h
    ld a, [hl-]
    ld h, d
    pop de
    rst RST_38
    ld b, [hl]
    add [hl]

jr_02f_792f:
    ld d, e
    sbc e
    ld h, b
    add [hl]
    nop
    ld sp, hl
    ld l, a
    ld h, l
    ld h, d
    dec b
    ld [bc], a
    ld b, h
    ld h, c
    cpl
    jr nz, jr_02f_7989

    ld h, e
    rst RST_00
    halt
    adc b
    ld [hl], a
    ld bc, $c970
    jr nz, jr_02f_7911

    ld [bc], a
    nop
    rst RST_38
    ld a, a
    dec l
    ld [hl+], a
    dec b
    ld a, [bc]
    add hl, bc
    ld b, $0e
    ld h, l
    ld b, b
    ccf
    rlca
    ld [$0609], sp
    inc c
    inc bc
    ld [bc], a
    ld [hl], c
    inc b
    ld a, c
    db $d3
    dec c
    ld [bc], a

jr_02f_7964:
    ld [de], a
    ld a, a
    inc b
    ld a, b
    nop
    jr nc, jr_02f_79e8

    ldh [rP1], a
    push hl
    db $f4
    or h
    ld [bc], a
    sbc a
    cp c
    ld h, h
    jr nc, @+$77

    adc a
    ld [$e3e7], sp
    ld b, $e1
    call Call_02f_4f61
    nop
    sub $00
    add b
    ld a, a
    ld b, b
    rst RST_38
    or b
    cpl
    ld e, b

jr_02f_7989:
    sub a
    inc l
    srl b
    ret nz

    ld hl, sp-$4d
    nop
    cp l
    db $10
    add b
    dec b
    ld hl, $0004
    inc a
    ld b, d
    ei
    nop
    ld a, e
    ld c, e
    ld b, b
    jr z, jr_02f_79b7

    ld a, [hl+]
    inc d
    ld a, [bc]
    ld sp, hl
    inc b
    add e
    ld bc, $522a
    nop
    ldh a, [rIF]
    ret nz

    ccf
    db $e3
    ldh [$ff9f], a
    ld b, [hl]
    ld d, [hl]

jr_02f_79b4:
    add c
    inc b
    ld b, [hl]

jr_02f_79b7:
    ld d, l
    db $fc
    nop
    rra
    ld sp, hl
    ldh [$ffbc], a
    ld h, c
    ld b, [hl]
    ld d, [hl]
    ret nz

    ccf
    jr nz, jr_02f_7964

    jr @+$1b

    rst RST_20
    rst RST_20
    ld b, b
    jp nz, $e075

    rra
    ld a, d
    ld de, $801d
    ld b, l
    ld l, e
    rst RST_38
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $01fe
    ld bc, $00fe
    dec b
    ccf
    jr nc, jr_02f_79b4

    inc c
    ld [hl], e
    add e

jr_02f_79e8:
    inc c
    db $fd
    ldh a, [rP1]
    rlca
    rst RST_38
    nop
    ret nz

    ccf
    ldh [$ffdf], a
    rst RST_38
    ld d, $e5
    adc e
    ldh a, [c]
    ld b, l
    ld a, c
    and d
    inc a
    rst RST_38
    pop de
    ld e, $e8
    rrca
    ld [hl], h
    rlca
    ld a, [hl-]
    inc bc
    cp $01
    nop
    cp $80
    ld a, [hl]
    ret nz

    cp a
    ld h, b
    ld e, a
    rst RST_38
    cp a
    ccf
    ld b, b
    add b
    ld a, $c0
    ld [bc], a
    inc [hl]
    rst RST_38
    ld [bc], a
    call nc, $04ca
    ld a, [bc]
    inc [hl]
    ld a, [hl+]
    inc d
    rst RST_38
    nop
    nop
    ld a, [hl]
    nop
    add c
    nop
    ld [hl], b
    ld l, a
    rst RST_38
    inc e
    sub e
    ld c, $cd
    inc bc
    ldh a, [c]
    ld bc, $9ff9
    cp $fe
    nop
    nop
    ld a, a
    ld h, $03
    nop
    nop
    add b
    dec e
    ld a, a
    rrca
    nop
    nop
    sbc a
    jr @+$72

    dec b
    ld c, $00
    inc b
    nop
    ccf
    rst RST_38
    nop
    add hl, de
    pop hl
    inc b
    ld hl, sp+$0a
    inc b
    adc e
    ld [bc], a
    cp $2c
    ld bc, $3f30
    ld c, b
    adc a
    ld h, $c7
    ld sp, hl
    sbc c
    ld sp, hl
    ld b, $01
    add b
    dec bc
    ccf
    jr nc, jr_02f_7a73

    inc bc
    add [hl]
    rlca
    jr nc, jr_02f_7a8d

    ccf
    ld c, h
    adc a
    inc de
    db $e3

jr_02f_7a73:
    sub d
    ld bc, $038a
    ld [hl], b
    inc bc
    rst RST_38
    ret nz

    rst RST_38
    jr nz, jr_02f_7abd

    rst RST_08
    rst RST_08
    nop
    nop
    dec a
    db $fc
    xor a
    inc c
    rst RST_38
    add b
    inc bc
    di
    db $ed
    nop
    add l

jr_02f_7a8d:
    ld [$9dff], sp
    ld bc, $00ce
    ld h, a
    add b
    inc sp
    ret nz

    rst RST_38
    sbc c
    ldh [$ffcc], a
    ldh a, [$ff66]
    ld hl, sp+$33
    db $fc
    cp $42
    nop
    rst RST_38
    ld a, a
    ld a, a
    add b
    nop
    add b
    ccf
    rlca
    add b
    ccf
    ccf
    dec b
    ld [bc], a
    ld b, $00
    inc h
    inc b
    inc b
    ld bc, $006d
    db $fc
    adc c
    ld [bc], a
    jr c, jr_02f_7ad2

jr_02f_7abd:
    ld b, $e5
    inc bc
    ldh a, [c]
    db $fd
    db $fd
    add $05
    nop
    cp $00
    ld l, d
    ld bc, $1337
    inc b
    nop
    add b
    rst RST_38
    rst RST_08
    add b

jr_02f_7ad2:
    rst RST_38
    rst RST_38
    add b
    ld e, [hl]
    rla
    jr c, @+$17

    ld c, h
    adc a
    db $e3
    ld [de], a
    db $e3
    xor d
    ld bc, $1638
    add a
    inc b
    ld b, b
    ld a, a
    ld b, b
    rst RST_38
    ld a, a
    ld a, a
    ld b, b
    nop
    nop
    jr nz, jr_02f_7b2e

    ld [$cfff], sp
    di
    di
    nop
    nop
    ld bc, $01fd
    rst RST_38
    db $fd
    db $fd
    ld bc, $0000
    sbc c
    ld a, [hl]
    ld l, h
    rst RST_38
    sbc a
    sub a
    rst RST_28
    db $eb
    rst RST_30
    ld [hl], c
    rst RST_38
    cp h
    sbc a
    ld a, a
    sub [hl]
    ld l, a
    ld l, e
    sub a
    ld [bc], a
    ld [bc], a
    adc c
    nop
    rst RST_38
    ld a, a
    rst RST_38
    ld d, $e9
    dec l
    jp nc, $fc83

    ret nz

    rla
    cp a
    nop
    rst RST_38
    rst RST_28
    db $10
    xor [hl]
    ld d, c
    nop
    ld bc, $ef1f
    ldh [rP1], a
    rst RST_38

jr_02f_7b2e:
    db $fc
    adc c
    nop
    ld [bc], a
    db $fd
    ld a, h
    db $fd
    add e
    nop
    inc b
    rst RST_38
    rra
    ldh [$ffe3], a
    db $fc
    ld bc, $fefb
    inc bc
    rst RST_08
    ld [de], a
    rst RST_38
    nop
    ldh [$ff1f], a
    rst RST_00
    ld a, a
    ccf
    sbc a
    ld a, a
    rst RST_08
    ccf
    ldh [$ff1f], a
    jr z, @+$05

    dec a
    ld bc, $12c5
    rst RST_00
    rst RST_38
    and b
    rst RST_18
    ret nz

    rla
    adc c
    nop
    or a
    ld hl, sp+$0e
    pop af
    jr nz, @+$2b

    ret nz

    ccf
    ld c, $03
    ld bc, $fefb
    ldh a, [$ff39]
    ld hl, $0cff
    di
    ld a, $c1
    ld a, [hl-]
    nop
    ld bc, $3ffc
    nop
    rst RST_38
    rst RST_38
    ld e, $00
    nop
    cp $13
    rst RST_30
    nop
    rst RST_38
    ld a, h
    rst RST_10
    ld [de], a
    ld [hl], a
    adc b
    db $fd
    ld [bc], a
    ld hl, sp+$00
    ld bc, $1025
    adc c
    nop
    dec bc
    push af
    rra
    ldh [$fff8], a
    db $fd
    rlca
    ldh a, [$ff15]
    rst RST_38
    rst RST_38
    rst RST_28
    sbc a
    ei
    rlca
    rst RST_38
    nop
    rst RST_38
    cp b
    rst RST_00
    rst RST_00
    ld hl, sp-$1f
    cp $ff
    ld a, b
    rst RST_38
    rra
    rst RST_38
    ld a, l
    add e
    cp $01
    cp $0d
    ld bc, $ff7f
    adc $3f
    rst RST_30
    ld c, $4e
    rst RST_28
    or c
    rst RST_38
    db $fc
    ld a, a
    sub a
    jr nz, jr_02f_7bc7

    db $fc
    cp $ff

jr_02f_7bc7:
    rst RST_38
    ei
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    cp a
    rst RST_20

jr_02f_7bd0:
    ld b, b
    ret c

    rst RST_20
    ld l, e
    db $10
    ld b, c
    db $10
    xor $11
    inc b
    db $fd
    ei
    ret nz

    inc de
    sbc e
    rst RST_20
    add hl, bc
    rst RST_38
    ccf
    rst RST_38
    rst RST_38
    or $6b
    jr jr_02f_7bd0

    rst RST_38
    nop
    adc a
    ld [hl], b
    cp $e4
    ld bc, $ff00
    ld [hl], d
    adc l
    and c
    ld e, [hl]
    cp b
    rst RST_38
    ld b, a
    cp a
    ld b, b
    jp nc, Jump_000_002d

    rst RST_38
    rlca
    rst RST_38
    rst RST_38

jr_02f_7c02:
    ccf
    ret nz

jr_02f_7c04:
    call nc, Call_02f_7feb
    rst RST_38
    cpl
    ccf
    rst RST_18
    ld h, h
    sbc e
    ld [hl], c
    adc [hl]
    ld c, $2a
    ld hl, $208d
    adc $6b
    db $10
    rst RST_38
    dec c
    ldh a, [c]
    ld [hl], h
    inc hl
    cp $10
    rst RST_38
    rst RST_08
    cp [hl]
    db $ed
    jr nz, jr_02f_7c02

    ld hl, $7b84
    ld [hl], b
    add hl, de
    ld hl, $7e3f
    push bc
    ld de, $a35c
    nop
    rst RST_38
    ei
    inc b
    inc h
    dec h
    db $fd
    ld hl, sp+$00
    nop
    ld a, [$8305]
    ld a, h
    ld d, b
    xor a
    rst RST_18
    rst RST_38
    rra
    dec sp
    rst RST_00
    rst RST_10
    or l
    db $10
    ldh [c], a
    rra
    db $ec
    inc sp
    ld [de], a
    push hl
    nop
    push de
    ld [$11c5], a
    push bc
    ld a, [hl-]
    inc a
    ld h, a
    jp Jump_000_02fd


    ld a, [bc]
    inc bc
    reti


    nop
    rst RST_38
    ld a, a
    dec bc
    nop
    rst RST_38
    inc a
    jp Jump_000_1fe0


    ld a, [hl]
    rst RST_38
    ld d, l
    xor d
    ei
    add sp, -$09
    inc b
    ld sp, $e51a
    rst RST_38
    add b
    pop bc
    cp $d9
    nop
    add [hl]
    ld a, c
    db $fc
    inc bc
    ld [bc], a
    db $fd
    rst RST_38
    cp $97
    jr nz, jr_02f_7c04

    ld a, [hl]
    ei
    inc b
    inc e
    db $e3
    ldh [$fff7], a

jr_02f_7c8a:
    rra
    dec bc
    db $f4
    add sp, $11
    or b
    rst RST_08
    rst RST_00
    jr c, jr_02f_7c8a

    ld d, h
    ld hl, $c73f
    ld d, h
    inc hl
    rlca
    rst RST_38
    ldh a, [rIF]
    ld a, h
    call nz, Call_02f_7f13
    ld hl, $ffe1
    rst RST_38
    cp $07
    inc [hl]
    ld sp, $ffbf
    ld a, [$00fd]
    rst RST_38
    db $10
    inc sp
    jr nc, @-$0e

    rst RST_08
    cpl
    ld l, a
    sub b
    cp a
    inc e
    ld sp, $0200
    rrca
    rst RST_38
    cp a
    rra
    cp $9f
    ld h, b
    rst RST_28
    db $10
    or a
    jr nc, @+$01

    rst RST_38
    jr c, @-$37

    rst RST_38
    ldh [$ff83], a
    rst RST_38
    ld [hl], b
    adc a
    rst RST_38
    jp c, $8125

    ld a, [hl]
    ret nz

    rst RST_38
    xor a
    ld e, a
    ei
    db $db
    inc h
    adc b
    ld bc, $3dda
    add a
    ld a, b

jr_02f_7ce4:
    cp a
    rst RST_38
    ld b, b
    rst RST_38
    rst RST_38
    jp hl


    ld d, $1f
    ldh [$ff3f], a
    cp e
    rst RST_38
    ldh a, [$ff29]
    jr nc, jr_02f_7ce4

    rrca
    ld h, b
    push bc
    ld de, $ff1f
    ld b, b
    cp a
    ld hl, sp-$01
    ld [hl], a
    adc e
    add h
    ld a, e
    ld a, e
    inc bc
    db $fc
    ld b, [hl]
    ld hl, $d8e7
    rlca
    ld hl, sp-$78
    ld bc, $88cf
    ld [hl], a
    rst RST_18
    jr nz, jr_02f_7d57

    ld hl, $010e
    inc b
    ei
    dec a
    ret nz

    adc c
    nop
    dec sp
    call nz, $03fc
    rrca
    ld bc, $13c2
    rrca
    ld a, a
    add b
    add b
    ld a, a
    ld d, $21
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02f_7d57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02f_7f13:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02f_7f30:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02f_7f7f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02f_7feb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
