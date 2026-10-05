; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $036", ROMX[$4000], BANK[$36]

    jr nz, jr_036_4042

    sub l
    ld b, h
    ret nc

    ld b, h
    ldh [rWY], a
    nop
    ld c, e
    scf
    ld d, b
    jr c, jr_036_405e

    add $56
    or [hl]
    ld d, a
    ld h, d
    ld e, l
    ld h, e
    ld e, l
    rla
    ld h, h
    inc [hl]
    ld h, h
    db $dd
    ld l, d
    ld b, a
    ld l, [hl]
    call nz, Call_000_1d73
    nop
    add b
    rst RST_38
    and h
    ld [hl], d
    ld d, h
    ldh [c], a
    and h
    jp nz, $82c6

    rst RST_38
    ld b, [hl]
    add d
    add [hl]
    ld [bc], a
    add [hl]
    ld [bc], a
    ld b, $02
    db $fd
    nop
    db $10
    ld a, [bc]
    ld bc, $0600
    nop
    add hl, bc
    nop
    rst RST_38
    ld d, $00

jr_036_4042:
    inc l
    nop
    ld e, b
    nop
    or b
    nop
    rst RST_38
    and b
    nop
    ld b, b
    nop
    rst RST_38
    nop
    dec hl
    nop
    rst RST_30
    rla
    nop
    rrca
    inc sp
    nop
    ld c, $01
    ld c, $01
    rst RST_38
    inc e
    inc bc

jr_036_405e:
    ret nz

    ccf

jr_036_4060:
    jp $863c


    ld a, b
    rst RST_38
    adc l
    ld [hl], b
    ld a, [de]
    ldh [$ff3c], a
    ret nz

    ld a, b
    add b
    ld a, a

jr_036_406e:
    ldh a, [rP1]
    add $01
    add e
    nop
    inc bc
    ld d, e
    nop
    db $fd
    rlca
    dec [hl]
    nop
    inc e
    nop
    ld [hl], b
    nop
    nop
    rst RST_38
    ld [hl], a
    add b
    ld a, a

jr_036_4084:
    rst RST_38
    cpl

jr_036_4086:
    nop
    db $fc
    nop
    add b
    db $10
    ld [bc], a
    rst RST_10
    ld a, a
    add b
    ldh [rBCPD], a
    nop
    ld bc, $0255
    ld c, $01
    rst RST_38
    ld a, h
    inc bc

jr_036_409a:
    rst RST_20
    jr jr_036_4084

    jr jr_036_406e

    jr nc, jr_036_4060

    call z, $9833
    ld h, a
    jr nz, jr_036_4086

    cpl
    nop
    rst RST_38
    rst RST_38
    push hl
    ld a, [de]
    jp z, Jump_000_0435

    ei
    ld de, $ffee
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$0f
    ldh a, [$ff1f]
    ldh [rIE], a
    inc c
    di
    inc e
    db $e3
    cp c
    ld b, [hl]
    ld [hl], a
    adc b
    rst RST_30
    rst RST_38
    nop
    cp $67
    nop
    ld a, [$3000]
    ret nz

    rst RST_20
    ld h, b
    add b
    ret nz

    ld l, c
    inc b
    db $10
    inc bc
    add b
    nop
    jr z, jr_036_409a

    nop
    inc d
    nop
    ld a, [bc]
    nop
    dec b
    ret


    nop
    ld [bc], a
    rst RST_20
    nop
    ld h, b
    ld b, b
    ret nc

    dec bc
    jr jr_036_40f1

    inc c
    ld [bc], a
    ld sp, $00bf

jr_036_40f1:
    ret z

    ld b, $20
    stop
    ld d, e
    nop

jr_036_40f8:
    jr c, @+$81

    inc b
    add e
    ld b, b
    jr c, @+$06

    nop
    ret nz

    db $10
    ld bc, $0679
    dec c
    nop
    nop
    dec d
    dec bc
    ld b, $17
    ld c, $bc
    dec b
    cp a
    ld b, b
    add b
    ccf
    ret nz

    pop af
    cp $18
    dec b
    rrca
    rst RST_18
    nop
    rra
    nop
    ldh a, [rIF]
    cpl
    nop
    nop
    add hl, sp
    rst RST_38
    ld b, $f3
    inc c
    rst RST_20
    jr jr_036_40f8

    jr nc, jr_036_413b

    ld a, a
    ldh a, [rTAC]
    ld hl, sp+$00
    rst RST_38
    rst RST_38
    nop
    ld [hl], d
    ld bc, $10fe
    ld bc, $009f

jr_036_413b:
    db $fc
    inc bc
    ld bc, $fcff
    push de
    inc bc
    ld a, [de]
    inc bc
    ld a, a
    inc l
    ld de, $3dff
    db $10
    rst RST_38
    ld bc, $27da
    db $10
    rst RST_38
    add hl, hl
    ld [de], a
    rrca
    rst RST_38
    ld h, e
    ld bc, $0ff0
    ei
    ret nz

    ccf
    adc h
    ld bc, $ff00
    ret nz

    rst RST_38
    ei
    db $fd
    db $fc
    ld [hl], h
    inc de
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$ff3d]
    ld a, a
    ld c, l
    nop
    ccf
    ret nz

    ccf
    ret nz

    ld [hl], l
    ld [de], a
    ld [hl], h
    ld [de], a
    cp $73
    ld de, $00f4
    add sp, $00
    call nc, $aa00
    ld e, $a3
    db $10
    rst RST_38
    nop
    ld hl, sp+$07
    db $10
    add hl, bc
    ld e, b
    ld de, $031a
    rst RST_38
    ld bc, $0200
    ld bc, $050a
    ld sp, hl
    ld b, $97
    ld b, $f8
    nop
    rst RST_08
    ld c, $80
    rst RST_18
    inc b
    db $10
    dec bc
    ret nz

    cp $5d
    nop
    adc h
    nop
    ld [hl], e
    nop
    ld [$1700], sp
    sbc a
    ld c, $0b
    rlca
    inc b
    inc bc

jr_036_41b4:
    ld c, a
    ld [de], a
    db $10
    ld [bc], a
    ldh [rIE], a
    jr jr_036_41b4

    rst RST_38
    rrca
    ldh a, [rNR32]
    ldh [$ffe0], a
    ld h, $10
    ld b, $81
    ld a, [hl]
    cp l
    ld [de], a
    or c
    jr @-$7d

    ld h, e
    nop
    db $10
    inc bc
    ldh a, [rVBK]
    ld de, $0064
    dec a
    db $10
    ldh a, [rSB]
    ld a, a
    nop
    ld e, $ff
    cp l
    rlca
    xor e

jr_036_41e0:
    db $10
    rst RST_38
    rst RST_38
    ld hl, sp+$07
    ld d, [hl]
    ld de, $f01f
    cp d
    inc de
    ld e, e
    ld [de], a
    ld [hl], l
    ld [de], a
    dec l
    db $10
    ld hl, sp+$00
    rlca
    ld hl, sp+$01
    rst RST_38
    inc de
    jr nz, @+$6a

    dec h
    ld b, b
    daa
    jr @+$22

    ld a, l
    ld a, [hl+]
    db $f4
    ld de, $13b9
    db $e4
    sub h
    dec h
    sbc d
    ld [hl+], a
    nop
    ld [hl], e
    jr nz, jr_036_421e

    ld a, [bc]

jr_036_420f:
    db $fd
    inc bc
    cp $fb
    ld bc, $1001
    ld b, $60
    ld b, b
    ldh [$ff80], a
    and b
    daa
    ret nz

jr_036_421e:
    jr nz, jr_036_41e0

    ei
    ld [bc], a
    db $10
    ld bc, $b540
    ld a, [bc]
    call $fc00
    add $27
    db $10
    ld bc, $1f26
    nop
    ret nz

    jr nz, jr_036_4253

    add c
    jr nc, jr_036_420f

    ld h, $b7
    ld de, $10cd
    db $10
    ld b, $53
    jr nz, jr_036_4251

    ld a, [bc]
    db $fc
    cp b
    or e
    inc l
    ld a, e
    inc h
    db $10
    ld [$fc03], sp
    rra
    push hl
    add hl, hl
    db $fc
    rst RST_18

jr_036_4251:
    nop
    inc bc

jr_036_4253:
    inc c
    ldh a, [$ff0c]

jr_036_4256:
    ld b, $27
    nop
    jr nz, @+$01

    ret nz

    ld [bc], a
    inc a
    ret nz

    inc bc
    inc c
    jr nc, jr_036_4264

    ld l, [hl]

jr_036_4264:
    rrca
    ld c, $04
    ld [bc], a

jr_036_4268:
    jr jr_036_42a1

    ld h, $24
    jr jr_036_4268

    inc bc
    ld e, b
    ld a, [bc]
    inc h
    db $e4
    rra
    stop
    ld [hl], b
    rrca
    ld b, $27
    inc a
    ld d, e
    nop
    ld l, a
    add b
    nop
    add h
    ld a, b
    cp b
    add hl, bc
    ld h, b
    nop
    adc [hl]
    inc sp
    xor c
    rlca
    sbc e
    db $10
    inc d
    ld sp, $ab1f
    ld [de], a
    ld a, a
    ld l, a
    jr nz, jr_036_4256

    cp $cd
    nop
    ld a, [$8500]
    ld a, b
    inc h
    ld hl, sp+$20
    rst RST_38

jr_036_42a0:
    nop

jr_036_42a1:
    ld b, a
    nop
    sbc b
    rlca
    inc hl
    inc e
    jr jr_036_42a0

    ld h, b
    ld h, b
    add b
    ld l, d
    ld bc, $00ff
    add [hl]
    ld a, b
    ld h, c
    ld a, b
    dec bc
    ld b, d
    xor b
    daa
    ld l, b
    jr c, @+$12

    nop
    dec b
    nop
    rst RST_28
    nop
    xor h
    dec l
    nop
    rst RST_18
    nop
    ld b, b
    ld b, b
    ld l, $40
    add b
    call c, Call_000_0431
    cp [hl]
    rrca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $10
    dec b
    ld [$10ca], sp
    nop
    inc b
    ld e, d
    ld b, b
    inc a
    dec b
    jr z, @+$12

    ld bc, $0084
    add a
    and d
    ld b, b
    add hl, sp
    rra
    nop
    ldh a, [c]
    dec hl
    ld d, $10
    dec l
    nop

jr_036_42f1:
    jr nz, jr_036_42f1

    dec l
    ld b, b
    rlca
    nop
    ld a, [hl]
    ld bc, $1fe0
    inc bc
    cp a
    rst RST_38
    dec de
    db $fc
    rst RST_38
    ldh [$fff0], a
    ld [hl], c
    nop
    pop bc
    ccf
    ccf
    ld e, $ff
    rst RST_20
    ld hl, sp+$7e
    ld [hl], c
    nop
    ld l, d
    ld b, h
    rst RST_28
    ldh [rBCPS], a
    add b
    ret z

    ld d, a
    ld b, c
    ld [$0800], sp
    ld l, d
    ld e, h
    ld b, c
    jr nz, jr_036_4353

jr_036_4320:
    ld b, b
    db $10
    ld d, a
    ld b, c
    inc b
    ld [bc], a
    add $22
    rst RST_18
    ld l, $19
    inc de
    rrca
    ld b, $c6
    inc h
    db $fc
    inc bc
    ld a, a
    ld l, a
    rra
    ld a, h
    sbc b
    ret z

    ldh a, [$ff60]
    or [hl]
    inc b
    cp a
    ld e, $e7
    cp $f8
    nop
    inc b
    or [hl]
    ld b, c
    db $10
    add e
    db $10
    jr nz, jr_036_4320

    inc h
    ret nz

jr_036_434c:
    ld b, e
    ld [bc], a
    ld d, e
    adc h
    ld b, c
    ld e, h
    ld b, b

jr_036_4353:
    ld [bc], a
    db $e3
    nop
    inc bc
    push bc
    jr nz, jr_036_434c

    dec hl
    ret nz

    nop
    add b
    ret nz

    ld b, b
    adc a
    ldh [rNR41], a
    ld [hl], b
    rrca
    xor d
    inc a
    inc d
    add hl, sp
    db $10
    dec c
    ld [bc], a
    xor a
    inc b
    inc b
    ld [$3720], sp
    ld b, d
    add b
    or l
    ld b, $10
    sbc a
    jr c, @+$0a

    inc e
    add hl, bc
    ld b, $62
    ld c, e
    ret nz

    ld bc, $5fd0
    jr nz, jr_036_439c

    jr c, @+$18

    rrca
    ld a, d
    add hl, sp
    add b
    cpl
    nop
    ld c, e
    add b
    ld a, a
    xor [hl]
    dec de
    jr @+$44

    dec a
    inc h
    ld a, [hl+]
    ccf
    cp e
    ld d, $ff
    ld [bc], a

jr_036_439c:
    ld bc, $0f13
    call Call_000_363e
    ld hl, sp-$01
    ret nc

    ldh [$ff28], a
    db $10
    ld d, b
    jr nz, jr_036_440b

    ret nz

    sub c
    ret nz

    ld h, [hl]
    ld d, a
    add [hl]
    ld b, c
    ret nz

    ld b, c
    inc c
    rst RST_28
    ld l, $14
    ld [de], a
    ld e, $b6

jr_036_43bb:
    add hl, de
    ld e, h
    ccf
    rst RST_38
    cpl
    ld e, e
    rst RST_38
    rst RST_38
    inc hl
    dec hl
    jp $fc93


    jr c, @+$22

    ld c, e
    ld [de], a
    ld a, [bc]
    ld bc, $40ca
    rrca
    nop
    inc b
    rst RST_18

jr_036_43d4:
    db $10
    ld [$3000], sp
    jr nz, jr_036_43bb

    inc l
    ret nz

    ret nz

    rra
    ldh a, [$ff30]
    sbc b

jr_036_43e1:
    ld l, b
    jr nc, jr_036_43e1

    db $10
    ld b, a
    ld b, b
    add hl, de
    ld e, l
    xor $fa
    nop
    jr z, jr_036_43fe

    dec b
    rrca
    inc c
    nop
    nop
    sub b
    add e
    ld h, b
    inc bc
    adc e
    jr nc, jr_036_43fb

    inc de

jr_036_43fb:
    or d
    ld h, b
    ld e, h

jr_036_43fe:
    ld h, b
    ld h, [hl]
    ld d, b
    ret nz

    add hl, de
    ld b, b
    call nz, Call_000_3c60
    ld b, b
    add b
    ret nz

    add hl, hl

jr_036_440b:
    ld d, b
    ld c, e
    ld l, h
    jr nc, jr_036_4466

    rst RST_18

jr_036_4411:
    inc bc
    nop
    inc d
    ld [$dfa0], sp
    ld bc, $100c
    db $fc
    db $db
    jr nc, jr_036_43d4

    rlca
    inc e

Jump_036_4420:
    db $fc
    ld a, $fc
    ld a, $fe
    rst RST_38
    ld e, $fe
    add [hl]
    ld a, [hl]
    adc $34
    db $f4
    inc b
    db $fd
    add sp, $58
    ld b, c
    nop
    adc [hl]
    ld [hl], b
    ld c, $ff
    ld c, $fa
    add $23
    ld a, [hl]
    db $db
    inc h
    add b
    ld d, b
    ldh [$ffc8], a
    jr nc, jr_036_4463

    inc h
    jr jr_036_4453

    nop
    add hl, bc
    ld c, a
    ld b, [hl]
    ld a, [de]
    daa
    ld c, e
    ld l, l
    add e
    jp $1b3c


jr_036_4453:
    ld e, h
    sbc a
    ld e, d
    cp h
    ld e, l
    inc hl
    jr nz, jr_036_4411

    ld [$fd60], sp
    ldh a, [rNR10]
    dec bc
    db $fc
    nop

jr_036_4463:
    daa
    jr jr_036_447f

jr_036_4466:
    ld b, $5f
    db $10
    rrca
    ld a, [hl]
    ld bc, $fae3
    ld bc, $687e
    ld h, b
    call c, Call_000_22d7
    ld e, b
    dec d
    add c
    ld a, [hl]
    ld a, [hl]
    ld sp, $8d60
    halt
    ld sp, hl

jr_036_447f:
    xor l
    rst RST_00
    ld [hl], h
    or d
    rla
    sbc [hl]
    ld a, a
    ld a, a
    rst RST_38
    inc e
    jr c, @+$26

    ld h, $58
    dec d
    add $55
    ret nz

    ccf
    ccf
    db $eb
    ld [hl], d
    dec e
    add b
    ld b, $85
    nop
    nop
    ld [bc], a
    rst RST_38
    inc b
    nop
    add hl, bc
    ld bc, $0105
    nop
    rlca
    cp $8e
    dec c
    nop
    rst RST_38
    rst RST_38
    pop af
    dec c
    ld bc, $000c
    nop
    inc bc
    xor l
    rst RST_38
    halt
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    sub e
    ld h, h
    ld d, e
    rst RST_28
    inc h
    ld h, [hl]
    nop
    inc h
    nop
    nop
    ld a, a
    rst RST_38
    ccf
    rlca
    rst RST_38
    ret nz

    ccf
    dec c
    rlca
    ld a, [bc]
    inc bc
    dec c
    rlca
    dec e
    nop
    add b
    rst RST_38
    and h

jr_036_44d5:
    ld [hl], d
    ld d, h
    ldh [c], a
    and h
    jp nz, $82c6

    rst RST_38
    ld b, [hl]
    add d
    add [hl]
    ld [bc], a
    add [hl]
    ld [bc], a
    ld b, $02
    cp a
    nop
    nop
    nop
    add b
    add b
    nop
    inc d
    nop
    ld b, b
    ccf
    ret nz

    nop
    ret nz

    jr nz, jr_036_44d5

    db $10
    stop
    jr nz, @+$04

    rst RST_38
    ld bc, $0302
    inc b
    nop
    rra
    jr nz, @+$42

    rst RST_08
    nop
    ld bc, $0100
    ld sp, $2700
    ld bc, $0300
    rst RST_18
    inc b
    rlca
    ld [$4060], sp
    ld b, b
    dec bc
    rla
    ld c, $df
    dec bc
    rlca
    inc b
    inc bc

jr_036_451d:
    inc bc
    jr nz, jr_036_4525

    nop

jr_036_4521:
    ldh [rIE], a
    jr jr_036_451d

jr_036_4525:
    rst RST_38
    rrca
    ldh a, [rNR32]
    ldh [$ffe0], a
    sbc [hl]
    ld hl, $0005
    add c
    ld a, [hl]
    cp $57
    ld b, $10
    ld bc, $4fc0
    jr nz, @+$12

    ld [$30e6], sp
    nop
    ld l, [hl]
    ld bc, $8806
    ld bc, $20fe
    ld [bc], a
    ld b, b
    add b
    ld a, c
    ld b, $c3
    inc a
    ccf
    db $dd
    rst RST_38
    ld [hl], l
    add hl, bc
    rst RST_38
    nop
    ret nz

    sbc a
    inc c
    nop
    rst RST_38
    rst RST_38
    ld h, b
    ld b, b
    ldh [$ff80], a
    and b
    ret nz

    jr nz, jr_036_4521

    ld a, l
    ret nz

    jr nz, jr_036_456b

    inc bc
    inc b
    rrca
    rla
    ld a, a
    dec d

jr_036_456b:
    nop
    or [hl]
    ld de, $0000
    ld [hl], b
    inc de
    nop
    ld hl, sp-$01
    sbc a
    ld a, [bc]
    nop
    daa
    db $fd
    inc bc
    cp $33
    nop
    jr nz, jr_036_4585

    ld b, $0d
    nop
    nop
    dec d

jr_036_4585:
    rst RST_38
    dec bc
    ld b, $17
    ld c, $f0
    nop
    ld hl, sp+$04
    rst RST_38
    db $fc
    ld [bc], a
    cp $01
    ld a, a
    add b
    ccf
    ret nz

    ld sp, hl
    pop af
    ld [hl], h
    ld [$0018], sp
    jr nz, jr_036_459f

jr_036_459f:
    ld hl, sp+$00
    nop
    rst RST_38
    rrca
    db $10
    rra
    jr nz, jr_036_45e7

    ld b, b
    cp $01
    rra
    ld a, [$f905]
    ld b, $06
    dec l
    db $10
    ld b, b
    dec c
    push hl
    ld a, [bc]
    db $fc
    add a
    ld [bc], a
    ld l, h
    inc bc
    dec c
    inc bc
    jr nc, jr_036_45cc

    ret nz

    jr nc, jr_036_4641

    rst RST_10
    ld bc, $0007
    ld a, e
    rlca
    or b
    ld a, b
    inc de

jr_036_45cc:
    nop
    sbc [hl]
    jr nz, jr_036_45d2

    xor $1f

jr_036_45d2:
    ld h, b
    ldh a, [$ffd7]
    ld [bc], a
    ld d, e
    ld a, [de]
    ld b, $ff
    nop
    dec bc
    inc b
    ld de, $0608

jr_036_45e0:
    nop
    inc e
    cp $10
    nop
    ld d, e
    inc c

jr_036_45e7:
    adc a
    jr nc, @+$3a

    ld b, b
    ldh a, [rIE]
    rlca
    ld h, d
    dec e
    sbc h
    inc hl
    ld a, $5f
    nop
    rst RST_38
    nop
    sbc h
    nop
    di
    nop
    ld [hl], h
    nop
    ld [bc], a
    ld a, a
    db $fc
    inc e
    ldh [rPCM12], a
    rst RST_08
    ldh a, [c]
    pop hl
    ld a, l
    ld [bc], a
    rst RST_38
    nop
    or b
    nop
    ld e, b
    nop
    jr nz, jr_036_4610

jr_036_4610:
    ld [$807f], sp
    ld b, h
    add b
    ldh a, [c]
    db $fc
    ld c, $0f
    push af
    ld [$107e], sp
    nop
    jr nz, jr_036_45e0

    jp nz, Jump_000_1cfc

    rra
    call nc, $ff1b
    ret nz

    nop
    ldh a, [$ff80]
    inc c
    jr nc, jr_036_4631

    inc c
    rst RST_38
    nop

jr_036_4631:
    ld bc, $0106
    ld [$1004], sp
    ld [$20e7], sp
    db $10
    ld b, b
    dec d
    ld bc, $0420
    and b

jr_036_4641:
    nop
    ret nc

    rst RST_38
    nop
    and b
    inc bc
    ld b, c
    rrca
    add e
    rra
    adc e
    db $fd
    rra
    ld d, a
    ld b, $cc
    add b
    rst RST_30
    ret nz

    rst RST_30
    pop bc
    db $fd
    ei
    ld [$c01a], a
    pop hl

jr_036_465c:
    ldh [rDIV], a
    db $10
    ld l, $ff
    nop
    dec de
    nop
    ld a, [hl+]
    dec b
    ld a, [bc]
    dec b
    ld a, [hl+]
    cp $49
    jr nz, jr_036_4683

    ld bc, $63b1
    ld hl, $3edf
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    ld a, [hl]
    rst RST_38
    ld a, l
    cp $3d
    rst RST_38
    rst RST_38
    ccf
    rst RST_38
    ld d, e
    rst RST_38
    or a

jr_036_4683:
    ld e, a
    ld a, a
    rst RST_38
    rst RST_38
    daa
    rst RST_38
    ei
    rlca
    ccf
    ei
    adc a
    rst RST_38

jr_036_468f:
    rst RST_38
    rst RST_38
    rst RST_38
    jr nz, jr_036_465c

    xor h
    ret z

    call c, $e8ff
    call c, $cce0
    ldh a, [$ffcc]
    ldh a, [$ffe6]
    rst RST_38
    ld hl, sp-$4e
    db $fc
    nop
    ld b, b
    nop
    jr nz, @+$0a

    rst RST_08
    db $10
    inc b
    ld [$3002], sp
    ld bc, $0010
    ld de, $ff00
    adc d
    nop
    ld d, c
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    cp a
    xor a
    nop
    ld e, a
    nop
    cp $01
    sbc b
    ld hl, $fe7f
    xor e

jr_036_46c9:
    nop
    rst RST_38
    nop
    push de
    ld a, [hl+]
    ld l, d
    sub l
    push de
    rst RST_38
    ld a, [hl+]
    ld d, l
    nop
    xor d
    nop
    push af
    nop
    ld a, [$00ff]
    db $fc
    nop
    cp $00
    cp h
    ld b, b
    ld a, [hl]
    cp $79
    inc de
    rlca
    nop
    rra
    inc b
    ccf
    inc c
    ld a, $7f
    inc c
    ld a, [hl]
    inc e
    ld a, [hl]
    ld a, [hl+]
    nop
    ld [hl], l
    and e
    jr nz, jr_036_468f

    ld a, a
    nop

jr_036_46fa:
    ccf
    push de
    inc h
    ei
    and l
    ld [hl+], a
    and [hl]
    ld hl, $3ffe
    nop
    db $fc
    ld bc, $03f8
    ld e, e
    and l
    ld [hl+], a
    ret z

    nop
    cp a
    ld a, $0c
    rst RST_38
    ld l, $ff
    inc c
    sbc a
    ld [$5204], sp
    jr nc, jr_036_471b

jr_036_471b:
    ld c, d
    jr nz, @+$04

    rrca
    ld bc, $0d94
    jr nc, jr_036_4739

    or c
    jr nz, @+$59

    nop
    nop
    ld b, h
    adc a
    jr nz, @+$24

    sub a
    jr nz, @-$54

    daa
    ld [hl-], a
    ld c, $20
    scf
    adc d
    nop
    ld d, b
    rst RST_10

jr_036_4739:
    ld bc, $003a
    ld b, b
    jr nc, jr_036_46c9

    inc hl
    cp [hl]
    ld [hl], c
    db $10
    rrca
    rst RST_38
    ld b, b
    rst RST_38
    ld a, b
    ld e, l
    jr nz, jr_036_475a

    ld e, [hl]
    and [hl]
    ld hl, $d400
    nop

Call_036_4751:
    cp $e2
    ld [hl+], a
    jp Jump_000_206d


    ei
    db $fc
    rst RST_38

jr_036_475a:
    db $eb

jr_036_475b:
    jr nz, jr_036_475d

jr_036_475d:
    jr c, jr_036_475b

    ld a, b
    db $fc
    rst RST_38
    ret nc

    ld hl, sp-$7f
    ldh a, [$ff0a]
    ldh [$ff15], a

jr_036_4769:
    add b
    dec d
    ld l, $a3
    jr nz, jr_036_476f

jr_036_476f:
    dec h
    jr nc, jr_036_46fa

    ld hl, $2a30
    ld sp, $3126
    rst RST_38
    ld a, a
    nop
    db $fd
    ld [bc], a
    ld a, [$d505]
    ld a, [hl+]
    rst RST_38
    xor d
    ld d, l
    ld d, l
    xor d
    xor b
    ld d, a
    ret nz

    ccf

jr_036_478a:
    ld hl, sp-$68
    ld sp, $33a0
    pop hl
    inc hl
    cp h
    ld b, b
    ld e, [hl]
    and b
    xor h
    rst RST_30
    ld d, b
    ld d, [hl]
    xor b
    or h
    inc sp
    ld d, $e8
    inc e
    ld a, [hl]
    ld a, a
    add hl, bc
    ld a, h
    jr jr_036_4821

    add hl, de
    ld a, h
    jr c, @-$3b

    jr nc, jr_036_478a

    jr z, jr_036_4829

    db $10
    ld a, [hl]
    rst RST_38
    and e
    ld [hl+], a
    ld a, a
    nop
    db $fd
    cp a
    and e
    jr nz, jr_036_4769

    nop
    ld a, b
    nop
    ldh a, [rTAC]
    rst RST_38
    ldh [rTMA], a
    ldh [$ff0e], a
    ret nz

    dec e
    add b
    dec a
    ld a, a
    nop
    dec a
    nop
    ld a, l
    nop
    ld a, e
    ld h, [hl]
    ld d, l
    jr nz, jr_036_47f1

    ld c, a

jr_036_47d3:
    rst RST_38
    rst RST_20
    rst RST_38
    rst RST_30
    ld l, l
    jr nz, jr_036_47d3

    ld [hl-], a
    push hl
    inc h
    rst RST_18
    ld a, [hl]
    nop
    ld a, d
    nop
    inc d
    rl b
    dec e
    ld a, a
    rst RST_38
    ld a, [bc]
    ld a, a
    inc bc
    ld a, a
    ld bc, $11ff
    rst RST_38
    db $fd

jr_036_47f1:
    ld e, c
    add hl, de
    ld b, b
    ld l, c
    rst RST_38

jr_036_47f6:
    pop de
    ei
    sub b
    ld sp, hl
    rst RST_38
    jr nz, jr_036_47f6

    add b
    ld hl, sp-$40
    ld a, [$f6c0]
    rst RST_38
    ldh [$fff6], a
    ldh [$fffe], a
    ret nz

jr_036_4809:
    ld hl, sp-$10
    db $fc
    rst RST_38
    ld a, b
    cp $3c
    rst RST_38
    ld d, $ff
    ld [bc], a
    rst RST_38
    rst RST_28
    rlca
    rst RST_28
    ld c, $df
    ld a, [hl+]
    ld sp, $0029
    rla
    rst RST_38
    nop

jr_036_4821:
    adc e
    add b
    rst RST_10
    ret nz

    set 0, b
    rst RST_20
    rst RST_00

jr_036_4829:
    ldh [$ffa0], a
    ld e, a
    pop hl
    ld h, $59
    ld c, a
    and [hl]
    jr nz, jr_036_485f

    ret nc

    rst RST_38
    ld b, $f8
    inc c
    ldh a, [rNR21]
    add sp, $0c
    ldh a, [$fff6]
    ld [hl], d
    ld b, c
    ld b, $f8

jr_036_4842:
    call z, Call_036_7a30
    ld bc, $037c
    rst RST_38
    ld a, b
    rlca
    ld [hl], b
    rlca
    ld h, b
    rrca
    jr nz, jr_036_4870

    rst RST_38
    nop
    ldh a, [rP1]
    db $e4
    nop
    ret z

    ld bc, $ffd8
    ld bc, $01b0
    ld [hl], b

jr_036_485f:
    ld bc, $03e0
    add sp, -$07
    inc bc
    rst RST_18
    jr nz, jr_036_4809

jr_036_4868:
    ld b, b
    db $10
    ei
    jr nc, jr_036_4868

    jr nc, jr_036_48ce

    ld sp, hl

jr_036_4870:
    ld a, b
    db $fd
    ld a, b
    db $fd
    ld sp, hl
    inc sp
    ld a, a
    or l
    ld b, d
    cp l
    ccf
    ld e, l
    jr nz, jr_036_4842

    db $fc
    ldh [$fffe], a
    jp nz, $ff40

    push af
    ldh a, [$ffc7]
    ld b, b
    ld hl, sp-$35
    ld b, b
    inc de
    ld a, a
    inc de
    ccf
    rst RST_30
    inc de
    ccf
    inc bc
    push de
    ld b, e
    rra
    inc bc
    rra
    cp $f2
    ld l, c
    jr nc, @-$02

    bit 0, d
    call z, $fe40
    ld hl, sp-$02
    inc d
    rst RST_38
    ld a, [hl]
    ld [$007e], sp
    inc a
    nop
    inc e
    ld b, b
    rst RST_38
    jr @+$42

    ld [$0040], sp
    ld c, b
    nop
    inc d
    rst RST_38
    ret nz

    ld [$24e0], sp
    ldh [rNR41], a
    ldh a, [$ff90]
    rst RST_38
    ld hl, sp-$68
    ld hl, sp-$78
    db $fc
    ret z

    db $fc
    ld a, e
    ld e, d
    ld d, l
    jr nz, jr_036_4904

    inc de

jr_036_48ce:
    ld d, b
    inc sp
    ld a, a
    jr jr_036_4926

    db $ec
    pop hl
    ld b, d
    db $fd
    cp $25
    ld d, [hl]
    dec c
    ccf
    ld e, $3f
    dec e
    ccf
    rst RST_38
    ld a, [de]
    ld a, a
    inc a
    ld a, a
    jr c, jr_036_4966

    inc d
    ld a, a
    rst RST_38
    jr z, jr_036_496b

    rst RST_28
    ldh [$ffd6], a
    pop bc
    call $ffc2
    sub $c1
    xor l
    add d
    sbc d
    add l
    inc c
    inc bc
    rst RST_38
    ld e, d
    dec b
    ret nz

    cp a

Call_036_4900:
    ld h, b
    ld e, a
    jr nc, @+$31

jr_036_4904:
    ccf
    inc e
    inc de
    ld c, $0d
    inc bc
    ld [bc], a
    push af
    ld [bc], a
    ld e, l
    ld b, [hl]
    ld a, a
    add b
    ld a, a
    ret nz

    cp a
    ld [hl], b
    ld c, a
    rrca
    ld a, c
    ld b, b
    ld a, [$5570]
    ld c, $79
    ld b, b
    ld a, [de]
    nop
    ld [hl], $00
    dec [hl]
    cp $d1

jr_036_4926:
    jr nz, jr_036_4995

    nop
    ld l, c
    nop
    jp hl


    nop
    ret


    rst RST_38
    nop
    add sp, $03
    add sp, $01
    ld hl, sp+$01
    ldh a, [rIE]
    ld bc, $00b4
    db $f4
    nop
    cp d
    nop
    cp l
    rst RST_38
    nop
    ld a, b
    db $fd
    ld a, h
    db $fc
    inc a
    cp $3c
    rst RST_38
    cp $1e
    rst RST_38
    rra
    rst RST_38
    rrca
    ld a, a
    rlca
    rst RST_38
    rra
    rra
    rst RST_38
    rla
    rst RST_38
    dec bc
    ld a, a
    dec b
    rst RST_38
    ld a, a
    ld [bc], a
    ccf
    ld bc, $809f
    rst RST_20
    ret nz

    di
    pop af

jr_036_4966:
    ld hl, sp+$23
    ld d, h
    or h
    ld b, c

jr_036_496b:
    ccf
    rst RST_38
    inc a
    cp $ff
    ld bc, $039f
    sbc a
    ld bc, $019f
    rst RST_08

jr_036_4978:
    rst RST_38
    nop
    rst RST_08
    add b
    ret nz

    ld bc, $208d

jr_036_4980:
    jr nz, jr_036_4980

    db $ec
    ld b, c
    ldh a, [$fffe]
    nop
    db $fd
    nop
    ld bc, $5da4
    or [hl]
    ld [$0e30], sp
    ld l, h
    nop
    ldh a, [rHDMA1]
    ld h, [hl]

jr_036_4995:
    add c
    ld d, b
    cp a
    ld a, $80
    ld a, $80
    ld [hl], $80
    ld e, [hl]
    ld b, a
    ld bc, $feff
    inc bc
    db $fd
    rrca
    di
    inc bc
    db $fd
    ld b, $ff
    ld a, [$f40c]
    jr c, jr_036_4978

    ld [hl], b
    or b

jr_036_49b2:
    ret nz

    ld sp, hl
    ld b, b
    ld a, b
    dec d
    ld [hl], $25
    ldh a, [$ff30]
    sbc b
    ld l, b
    inc a
    rst RST_18
    inc sp
    rrca
    ld [$0607], sp
    push af
    rlca
    ld a, [bc]
    db $f4
    rst RST_38
    ld d, [hl]
    xor b
    xor [hl]
    ld d, b
    cp $00
    rst RST_38
    ret nz

    db $eb
    ccf
    jr c, jr_036_4a09

    ld h, c
    ret


    adc l
    ld d, b
    jp hl


    nop
    ld h, h
    cp [hl]

jr_036_49dd:
    or l
    db $10
    ld a, [hl]
    nop
    ld a, [hl-]
    nop
    rra
    ld [$3e30], a
    cp d
    rst RST_10
    jr nz, @-$5f

    ld h, l
    ld h, b
    ld c, a
    nop
    inc hl
    jr nc, jr_036_49f2

jr_036_49f2:
    inc bc
    rst RST_38
    rrca
    pop hl
    rrca
    jr nc, jr_036_4a00

    adc b
    inc bc
    ldh [$fffb], a
    ld bc, $e6f0

jr_036_4a00:
    ld d, b
    ld a, [hl]
    nop
    ret nz

    db $fc
    xor b
    rst RST_08
    rst RST_38
    ld d, b

jr_036_4a09:
    rst RST_38
    jr nz, jr_036_49b2

    ld hl, $20d6
    add b
    rlca
    rst RST_38
    jr nc, jr_036_4a8c

    ld [bc], a
    ld [hl+], a
    ld [$218c], sp
    inc sp
    rst RST_38
    inc b
    adc h
    nop
    db $ec
    ld bc, $00e1
    jr @+$01

    ld b, b
    ld h, b
    nop
    add c
    jr jr_036_4a46

    ld b, b
    ld d, b
    ld l, a
    inc b
    add h
    db $10
    inc d
    add hl, de
    nop
    inc a
    ld [hl], $fd
    ld d, b
    sbc l
    ld h, [hl]
    pop af
    ld d, b
    ld c, h
    nop
    ret z

    inc de
    jr nz, jr_036_4a51

    nop
    jr nc, @-$46

    add $03

jr_036_4a46:
    cp h
    ld bc, $31ff
    add c
    ld a, [hl]
    ld a, [hl]
    ld d, a
    jr nz, jr_036_49dd

    di

jr_036_4a51:
    halt
    xor l
    rst RST_10
    ld h, h
    and h
    rlca
    sbc [hl]
    ld a, a
    ld a, a
    rst RST_38
    xor c
    inc e
    sbc a
    ld b, $c8
    ld h, l
    db $fc
    rst RST_10
    jr nz, jr_036_4a84

    ld e, l
    ld h, b
    ld a, a
    db $eb
    nop
    db $e3
    push af
    db $10
    ld a, [hl]
    add b
    nop
    ld bc, $2083
    ld a, a
    ld [hl], b
    nop
    add b
    dec b
    dec b
    ld d, b
    ld e, b
    rst RST_10
    ld bc, $1cff
    db $fc
    ld a, $fc
    ld a, $fe

jr_036_4a84:
    ld e, $fe
    rst RST_38
    add [hl]
    ld a, [hl]
    adc $34
    db $f4

jr_036_4a8c:
    inc b
    add sp, $08
    inc l
    jr nz, jr_036_4a93

    ld b, [hl]

jr_036_4a93:
    ld h, b
    nop
    rrca
    jr nz, jr_036_4a9a

    ld a, [hl]
    rst RST_28

jr_036_4a9a:
    rla
    inc l
    db $10
    cp a
    inc a
    nop
    inc c
    nop
    add hl, de
    ld b, $50
    dec de
    nop
    inc l
    ld [hl], c
    nop
    ld d, d
    ld a, l
    jp Jump_036_503c


    dec de
    add b
    ld a, [hl]
    ld sp, $0cb0
    ld [$0775], sp
    rst RST_08
    jr nc, @-$79

    jr jr_036_4b1d

    dec l
    db $10
    adc b
    ld a, h
    rst RST_38
    inc [hl]
    jr nz, jr_036_4ac8

    rst RST_38
    xor l
    halt

jr_036_4ac8:
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    sub e
    ld h, h
    ld e, a
    ld d, e
    inc h
    ld h, [hl]
    nop
    inc h
    cp l
    ld [hl], h
    ret nz

    sbc [hl]
    nop
    nop
    rst RST_28
    ld l, b
    pop bc
    ld [hl], h
    ld sp, hl
    ld [hl], e
    dec e
    add b
    inc bc
    db $fd
    nop
    nop
    ld [bc], a
    ccf
    nop
    ret nz

    ccf
    ccf
    rst RST_38
    rrca
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    nop
    inc bc
    rrca
    nop
    dec bc
    nop
    inc c
    rlca
    ld [bc], a
    inc d
    inc bc
    cp $1d
    nop
    dec e
    nop
    ld l, l
    rst RST_38
    and e
    call nz, $c6b1
    nop
    nop
    xor e
    call z, $abff
    call z, RST_00
    cp c
    jp nz, RST_00

    res 0, b
    ld a, e
    stop
    ld a, a
    inc d
    ld [bc], a

jr_036_4b1d:
    inc de
    ld [bc], a
    dec b
    ld e, $eb
    dec b
    sbc [hl]
    ld [hl+], a
    nop
    sbc $26
    nop
    cp $05
    sbc $ff
    rlca
    ld hl, sp-$4c
    jp $e394


    nop
    nop
    rst RST_38
    sub e
    rst RST_08
    sub e
    rst RST_08
    nop
    nop
    ld [$fff1], a
    nop
    nop
    and b
    ld a, h
    and b
    ld a, [hl]
    and b
    ld a, l
    cp $44
    ld [bc], a
    ld a, a
    and b
    ld [hl], a
    ldh [$ff1f], a
    ld bc, $bb56
    ld bc, $52d6
    ld [bc], a
    sbc $01
    xor $5a
    ld bc, $7f80
    ld a, a
    rst RST_38
    nop
    add b
    ld b, d
    add b
    ld h, e
    ld h, [hl]
    nop
    db $fd
    ld h, a
    ld l, d
    ld bc, $f708
    ei
    rlca
    ld [$ff07], sp
    add hl, bc
    rla
    ld [$0897], sp
    sub a
    ld c, $d7
    rst RST_38
    ld [$3fd7], sp
    rst RST_38
    cp b
    rst RST_38
    ccf
    rst RST_38
    ld [hl], a
    rst RST_38
    rst RST_38
    inc [hl]
    add e
    nop
    ld a, a
    rst RST_38
    inc h
    add l
    nop
    db $fd
    cpl
    add l
    nop
    set 7, a
    nop
    nop
    ld [hl], c
    ld a, a
    ld a, a
    ccf
    ld e, a
    ld a, b
    ld c, [hl]
    rst RST_38
    rst RST_38
    ld b, d
    add l
    nop
    db $fd
    sbc b
    sub a
    nop
    inc c
    rst RST_38
    pop af
    rst RST_38
    jr jr_036_4be3

    ld [hl], h
    add l
    nop
    add l
    nop
    ld [hl+], a
    sub a
    nop
    ld a, h
    rst RST_38
    and a
    sub a
    nop
    rst RST_38
    db $10
    rst RST_28
    rst RST_18
    ldh [rNR10], a
    ldh [$ff90], a
    jp hl


    rst RST_18
    db $10
    db $eb
    db $10
    jp hl


    ld [hl], b
    rst RST_00
    nop
    ld bc, $fffe
    rst RST_38
    nop
    ld bc, $0142
    ldh [c], a
    ld bc, $3e72
    ret c

    nop
    ldh a, [c]
    ld bc, $8072
    ld [hl], a
    ldh [rDIV], a
    dec d
    ld bc, $e1fa
    nop

jr_036_4be3:
    dec bc
    ld a, l
    nop
    add hl, bc
    rst RST_30
    ld [$07d7], sp
    xor c
    ret c

    ld a, [hl+]
    nop
    dec hl
    nop
    cp a
    add e
    nop
    db $f4
    add e
    nop
    nop
    rst RST_38
    nop
    inc e
    ld h, b
    inc l
    ld [hl], b
    ld [hl], $7a
    ld a, [hl]
    rst RST_38
    ld a, [hl]
    ld b, $7e
    ld a, h
    ld a, a
    ld c, $7e
    ld b, d
    rst RST_38
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    inc c
    ld a, h
    ld a, d
    ld a, d
    jp nz, $daff

    ldh [c], a
    ld [$7272], a
    cp d
    cp d
    sbc h
    rst RST_38
    sbc h
    adc [hl]
    xor [hl]
    add h
    or h
    ld [bc], a
    ld a, b
    sbc $ff
    sbc $c0
    ret nz

    ret nz

    pop bc
    call c, $c0dd
    rst RST_38
    pop bc
    ret nz

    pop bc
    ret c

    reti


    ld [bc], a
    nop
    ret c

    rst RST_28
    jp c, $dad8

    ld l, l
    ld b, h
    ld [de], a
    ld [hl], $b6
    inc [hl]
    rst RST_38
    or l
    ld [bc], a
    adc b
    sbc d
    sbc d
    cp e
    cp e
    jr nz, @+$01

    jr nz, jr_036_4c6b

    ld e, [hl]
    ld bc, $3b01
    cp e
    jr @+$01

    ret c

    ld [bc], a
    ldh [$fffe], a
    cp $08
    ld a, [hl]
    ld h, d
    rst RST_28
    ld a, [hl]
    ld a, $fe
    ld h, b
    add hl, de
    db $10
    db $10
    ld a, h
    ld a, [$faaf]
    db $fd
    rst RST_38
    db $fc

jr_036_4c6b:
    sub c
    nop
    db $fc
    sub a
    nop
    jr c, @+$01

    ld b, $34
    ld c, $2c
    ld e, $d0
    db $ed
    db $10
    ld a, a
    db $ed
    sub b
    xor $10
    xor $e0
    ld e, $4a
    nop
    ld a, [hl]
    adc e
    db $10
    ld bc, $017a
    ld [$fa01], a
    sub d
    db $10
    db $fd
    xor $94
    db $10
    ld a, [$fe01]
    add b
    ld a, a
    rst RST_00
    ld a, a
    nop
    add b
    ld a, h
    add b
    ld e, [hl]
    add b
    ld e, a
    and [hl]
    db $10
    rst RST_38
    ld a, a
    add b
    ld e, [hl]
    rlca
    db $fc
    db $ed
    ld [bc], a
    dec b
    rst RST_38
    adc [hl]
    dec b
    adc $05
    xor $05
    xor $04
    rst RST_38
    rst RST_28
    dec b
    xor $33
    ld b, $47
    rrca
    rrca
    rst RST_38
    dec e
    rra
    inc a
    rra
    ld a, a
    ld a, $f6
    ld a, $ff
    db $eb

jr_036_4cc9:
    ld e, a
    dec [hl]
    ld [hl], e
    ld b, $a7
    rrca
    set 5, a
    sbc l
    sub l
    cp h
    dec e
    ret


    db $10
    ld a, [hl+]
    ld l, e
    dec e
    rst RST_38
    or l
    ld d, $08
    adc d
    inc b
    sub $80
    ld [$c0ff], a
    db $f4
    ldh [$fff8], a
    or b
    db $fc
    ret c

    cp $7f

jr_036_4ced:
    db $ec
    ldh [$ff3f], a
    cp a
    ld b, b
    and b
    ld [hl], b
    db $f4
    inc d
    rst RST_30
    ld a, b
    and b
    ld a, b
    ret nc

    ld [bc], a
    add d
    ld bc, $0186
    ld a, l
    add $56
    ld [bc], a
    sub $80
    ld c, [hl]
    add b
    ld c, a
    inc d
    nop
    sub l
    ld e, a
    inc d
    inc b
    ld a, a
    ld a, [hl+]
    nop
    xor $fa
    ld [bc], a
    dec h
    inc h
    cpl
    rst RST_38
    dec de
    rla
    ld c, $2a
    dec b
    inc d
    inc bc
    ld l, d
    rst RST_38
    ld bc, $2051
    ld c, b
    jr nc, @+$4e

    jr nc, jr_036_4cc9

    rst RST_38
    set 0, a
    xor $e6
    ld [hl], c
    ld [hl], b
    cp e
    ld sp, $ccff
    ld l, d
    sbc h
    sbc h
    ld a, b
    ld c, b
    jr nc, @+$01

    db $fd
    ld a, [$0085]
    ld a, a
    ld a, l
    cp a
    scf
    sbc $6e
    rst RST_38
    sbc h
    inc e
    ld a, b
    ld a, [bc]
    jr nc, jr_036_4ced

    ld a, c
    and b
    rst RST_18
    ld sp, hl
    and b

jr_036_4d52:
    db $fd
    jr nz, jr_036_4d52

    ld b, [hl]
    inc b
    ld a, a
    ld bc, $f6e5
    ld [hl], b
    ld h, $fe
    ld a, d
    ld hl, $0097
    rst RST_38
    inc bc
    cp $ff
    inc bc
    cp $06
    db $fd
    ld b, $fd
    inc c
    ei
    db $db
    inc c
    ei
    ld h, b
    ld bc, $ff00
    sub h
    daa
    rlca
    db $fc
    db $db
    db $fc
    inc bc
    sub h
    add hl, hl
    jr nc, jr_036_4dfc

    or b
    dec hl
    ld bc, $fd30
    nop
    jp nz, $0c25

    nop
    ld [hl-], a
    nop
    inc l
    nop
    dec e
    db $10
    jp nz, $fc26

    nop
    ld [bc], a
    call c, $d120
    daa
    jp nz, Jump_000_3b21

    ld a, $01
    pop de
    jr nz, @+$05

    nop
    ld bc, $20f5
    jp nz, $ff23

    add c
    ld d, $f7
    add c
    cp a
    db $d3
    halt
    rst RST_38
    rst RST_38
    cp l
    rst RST_20

jr_036_4db3:
    cp l
    ld a, [hl]

jr_036_4db5:
    inc a
    ld h, [hl]
    db $db
    inc a
    cp a
    inc d
    ld d, $0c
    ld l, $0c
    ld a, $14
    scf
    and b
    rst RST_20
    ld a, a
    ld a, a
    add b
    sub h
    add hl, hl
    ret nc

    ld bc, $7fc0
    ld h, b
    rst RST_38
    cp a
    ld h, b
    cp a
    jr nc, jr_036_4db3

    jr nc, jr_036_4db5

jr_036_4dd6:
    jr @-$01

jr_036_4dd8:
    rst RST_28
    sub d
    dec hl
    nop
    rst RST_38
    jr jr_036_4dd6

    jr jr_036_4dd8

    ldh a, [c]
    add b
    ld hl, $95ff
    jr z, @+$56

    add hl, sp
    jr nz, jr_036_4e0a

    rra
    nop
    rst RST_38
    ld h, b
    rra
    sbc a
    ld h, b
    ld b, b
    ccf
    ld a, a
    nop
    rst RST_38
    add b
    ld a, a
    ld a, a
    nop
    inc bc

jr_036_4dfc:
    db $fc
    cp $00
    jp c, Jump_000_01d0

    ld [bc], a
    add c
    ld [hl-], a
    cp $00
    adc d
    inc sp
    add c

jr_036_4e0a:
    ld a, [hl]
    rst RST_38
    db $fd
    ld [bc], a
    add d
    ld a, h
    ld sp, hl
    ld b, $06
    ld hl, sp-$01
    ld [bc], a
    ld [bc], a
    ld c, $0c
    ld e, $10
    ld [hl], $20
    rst RST_38
    halt
    ld b, b
    ld h, a
    ld b, b
    rst RST_30
    add b
    res 0, b
    rst RST_38
    and l
    add c
    db $db
    jp $81a5


    cp l
    add c
    db $fd
    ld a, [hl]
    sub h
    jr nz, @-$06

    nop
    ei
    nop
    ld b, b
    ld b, b
    rst RST_38
    ld [hl], b
    jr nc, jr_036_4eb5

    ld [$046c], sp
    ld l, h
    inc b
    rst RST_38
    and $02
    ld l, $02
    sub e
    ld bc, $ef18
    ld e, l
    inc c
    ld d, e
    ld a, [hl-]
    ld b, h
    nop

jr_036_4e51:
    xor d
    jp nz, Jump_036_4420

    ret nc

    ld [hl+], a
    rst RST_38
    add d
    nop

jr_036_4e5a:
    jr z, jr_036_4e5c

jr_036_4e5c:
    inc [hl]
    ld a, b
    ld sp, $f77b
    inc sp
    ld [hl], a
    jr nc, jr_036_4e5a

    ld [hl-], a
    dec [hl]
    ld [hl], b
    ld [hl-], a
    ld a, d
    db $fc
    ld d, l
    ld [hl-], a
    sub l
    jr nz, jr_036_4ee8

    add a
    inc bc
    db $fc
    db $fd
    nop
    cp e
    ld [bc], a
    ld [bc], a
    nop
    ld b, l
    ld e, $e1
    ret nz

    ld b, $11
    nop
    ld a, a
    inc l
    ld e, $8c
    sbc $cc
    xor $0c
    dec h
    ld b, d
    ret


    db $ec
    and d
    jr nc, jr_036_4e51

    ld hl, $c244
    ld [hl+], a
    pop de
    inc hl
    ld d, e
    ld h, $b7
    ld h, a
    rrca
    ld c, a
    push bc
    ld [de], a
    or [hl]
    halt
    call z, Call_000_1d1f
    rst RST_38
    or l
    ld a, a
    nop
    cp a
    nop
    pop bc
    sbc [hl]
    pop hl
    cp a
    adc $f7
    and $fb
    or d
    db $fd
    db $ed
    db $10
    ld c, h

jr_036_4eb5:
    ld sp, hl
    ld a, $70
    ld c, e
    jr nc, jr_036_4ede

    ld d, h
    inc bc
    ld a, [hl+]
    ld bc, $df59
    jr nz, jr_036_4f2f

    db $10
    ld e, h
    jr nz, jr_036_4f07

    daa
    ld l, h
    sbc d
    cp a
    sbc c
    ld a, h
    ld b, e
    jr c, @+$01

    cp $52
    inc hl
    ld [hl], $ff
    sbc $6d
    sbc h
    add hl, de
    ld a, d
    sub c
    ld h, $4c
    rst RST_18

jr_036_4ede:
    ld a, $8c
    cp [hl]
    adc h
    cp [hl]
    ld [hl], b
    ld b, a
    ld sp, $ff97

jr_036_4ee8:
    add a
    ld c, a
    ld a, h
    rst RST_38
    and e
    ld e, h
    ld e, [hl]
    pop hl
    rst RST_38
    and a
    ld a, b
    ld a, b
    rst RST_38
    adc a
    ld a, a
    add b
    rst RST_10

jr_036_4ef9:
    ld e, a
    add h
    db $eb
    ld h, e
    sbc a
    rra
    add l
    nop
    rlca
    ld h, e
    ld [hl-], a
    rst RST_28
    nop
    rst RST_10

jr_036_4f07:
    rlca
    rst RST_28
    or b

jr_036_4f0a:
    ld bc, $fefd
    jr c, jr_036_4f0a

    rst RST_00
    ld bc, $0083
    inc bc
    rst RST_10
    inc bc
    db $ec
    ldh a, [$ffbe]
    add l
    nop
    rst RST_08
    ccf
    ld [hl], a
    adc b
    add b
    add l
    nop
    add c
    rst RST_20
    sub [hl]
    and $09
    ld bc, $8b42
    nop
    ld b, $f9
    ldh a, [rIE]

jr_036_4f2f:
    rst RST_38
    jp nz, $2d0f

    jp nc, $fd02

    pop hl
    ld a, e
    cp $fc
    rst RST_20
    ld b, b
    add d
    db $fd
    ccf
    ret nz

    ld e, d
    jr c, jr_036_4ef9

    ld e, b
    jr nc, jr_036_4f49

    cp $20
    ld e, e

jr_036_4f49:
    rrca
    pop af
    jr nz, jr_036_4fa8

    ld sp, hl
    rst RST_28
    rst RST_38
    ld [hl-], a
    ld a, h
    ld [hl-], a
    or c
    jr nz, @+$35

    ld a, c
    inc sp
    rst RST_38
    ld a, e
    ld [hl-], a
    ld a, c
    inc sp
    ld a, b
    add b
    nop
    ld h, c
    rst RST_38
    rst RST_38
    sbc [hl]
    ld h, c
    nop
    nop
    rst RST_20
    rst RST_38
    sbc c
    ldh a, [$ff61]
    inc sp
    ld h, d
    ld sp, $0097
    ld h, [hl]
    ld d, a
    nop
    rst RST_38
    ld a, [hl]
    add c
    or b
    ld [hl], h
    ld e, e
    ld [hl+], a
    ld e, c
    sub h
    add hl, hl
    ld d, a
    ld sp, $7fc0
    add [hl]
    daa
    rra
    cp a
    rst RST_30
    rst RST_38
    ldh a, [$fff0]
    rrca
    ld bc, $522f
    rra
    ld a, a
    rst RST_38
    ld a, a
    ldh [$ffe0], a
    sbc a
    add b
    ld a, a
    ld d, [hl]
    jr nc, @+$81

    ld b, $de
    ld a, c
    ld hl, sp-$59
    ldh [$ff1f], a
    sub h
    dec h
    di
    ret nz

    ccf
    ld b, d
    dec sp

jr_036_4fa8:
    adc b
    ld hl, $fd07
    rlca
    db $fc
    rst RST_38
    ld b, $fd
    rrca
    ei
    rrca
    ld hl, sp+$0c
    ei
    cp $94
    inc hl
    ldh [rIE], a
    ld hl, sp+$1f
    call c, $87a7
    rst RST_30
    ld a, e
    inc bc
    db $fc

jr_036_4fc5:
    and [hl]
    jr z, @+$01

    ld hl, sp-$31
    call z, Call_000_37c7
    ret nz

    ld a, a
    inc [hl]
    inc sp
    jr c, @+$35

    ld a, [hl-]
    jr nc, jr_036_4fc5

    ld h, b
    ld a, a
    rst RST_18
    ld h, b
    rst RST_18
    ret nz

    cp a
    ret nz

    cp a
    inc d
    ld bc, $009b
    rst RST_38
    adc h
    ld hl, $fb0c
    ld d, b
    ld sp, $6346
    ld h, [hl]
    rst RST_38
    cp e
    ld h, e
    cp l
    ld sp, $31de
    sbc $18
    db $ed
    rst RST_28
    ret nc

    ld sp, $f70c
    sub h
    ld hl, $fff0
    ld hl, sp-$01
    rrca
    inc c
    rst RST_30
    ld c, $f7
    rlca
    ld sp, hl
    inc bc
    ld sp, hl
    db $fd
    ld e, b
    ld h, c
    ld e, d
    ld h, e
    inc c
    rst RST_30
    ld b, $fb
    ld b, $e8
    rst RST_38
    ld d, h
    jr nz, jr_036_5074

    or e
    add hl, bc
    ld [bc], a
    and b
    dec bc
    ld bc, $ff21
    xor $03
    db $10
    rst RST_38
    rst RST_38
    db $d3
    sub a
    nop
    adc [hl]
    cp $fc
    rst RST_30
    ld a, [$f21e]
    sub b
    ld c, c
    add hl, de
    ld a, h
    add e
    jr c, @+$01

    ld de, $1300
    add b

Jump_036_503c:
    and e
    or c
    nop
    xor e
    xor e
    nop
    cp c
    nop
    inc de
    add b
    rlca
    inc de
    dec b
    ld b, $07
    or h
    sub h
    nop
    sub e
    sub e
    nop
    ld [$1300], a
    and b
    ld b, $e0
    inc de
    ld bc, $8007
    rst RST_38
    inc de
    add b
    dec b
    ld [$08fb], sp
    add hl, bc
    ld [$0e08], sp
    ld [$b83f], sp
    ccf
    rst RST_38
    inc [hl]
    ccf
    ld a, a
    inc h
    rst RST_38
    cpl
    rst RST_38
    rlc b

jr_036_5074:
    ld [hl], c
    ccf
    ld a, b
    rst RST_38
    ld b, d
    rst RST_38
    sbc b
    nop
    inc c
    pop af
    ld e, a
    inc de
    rst RST_38
    ld [bc], a
    ld [hl+], a
    nop
    ld a, h
    and a
    ld hl, sp+$10
    rst RST_18
    db $10
    sub b
    db $10
    db $10
    ld [hl], b
    db $10
    ld bc, $13ff
    ld bc, $1305
    add b
    rlca
    dec bc
    ld [$0809], sp
    rlca
    inc de
    dec b
    ld [bc], a
    cp a
    ccf
    db $f4
    ccf
    nop
    inc e
    inc l
    ld [hl], $7f
    rlca
    ld a, h
    rrca
    ld b, e
    ld a, [hl]
    dec c
    ld a, b
    jp nz, $72ef

    cp e
    sbc h
    cp [hl]
    adc h
    nop
    sbc $c7
    ldh a, [$ffdd]
    ret nz

    ld hl, sp-$24
    nop
    ld hl, sp-$21
    ld l, l
    db $ed
    ld a, a
    rst RST_30
    inc [hl]
    jp nz, $bbfa

    rst RST_20
    ld e, $31
    cp a
    ld hl, sp+$08
    cp $88
    ldh [c], a
    ld a, $e0
    ld a, [hl]
    db $10
    ld hl, sp-$03
    db $fc
    cpl
    db $fc
    nop
    jr c, jr_036_5112

    inc l
    ret nc

    db $10
    sub b
    db $10
    ldh [rNR13], a
    and b
    ld [bc], a
    inc de
    ld bc, $8007
    rst RST_00
    inc de
    add b
    dec b
    rlca
    db $ed
    inc de
    dec b
    inc bc
    inc b
    dec b
    ld [hl+], a
    and d
    jp nz, $f2e2

    ld a, [$fefc]
    ldh [$ffbf], a
    inc de
    and b
    dec b
    ld bc, $13ff
    ld bc, $1305
    add b
    rlca
    inc de
    dec b
    rlca
    inc de
    ld bc, $ff07

jr_036_5112:
    nop
    inc bc
    inc bc
    ld b, $06
    inc c
    inc c
    add b
    rst RST_38
    inc de
    nop
    dec b
    rlca
    db $fc
    inc de
    nop
    dec b
    inc de
    jr nc, jr_036_512d

    inc de
    inc c
    rlca
    and b
    ld a, a
    inc de
    nop

jr_036_512d:
    dec b
    ld bc, $c0ff
    ld h, b
    ld h, b
    jr nc, jr_036_5165

    jr @+$01

    inc de
    nop
    ld b, $18
    jr @+$01

    nop
    rst RST_38
    inc de
    nop
    inc b
    rst RST_38
    nop
    rst RST_38
    inc de
    nop
    ld [bc], a
    jr jr_036_5156

    rst RST_38
    nop
    rst RST_38
    inc de
    nop
    ld [bc], a
    ld b, h
    xor d
    nop
    ld b, h
    stop

jr_036_5156:
    add d
    jr z, jr_036_5185

    adc h
    call z, Call_000_0c13
    ld [bc], a
    db $ec
    inc c
    nop
    nop
    ld b, h
    nop
    nop

jr_036_5165:
    db $10
    inc de
    nop
    ld b, $ff
    rst RST_38
    inc bc
    inc de
    nop
    inc b
    rst RST_38
    rst RST_38
    inc de
    nop
    dec b
    rst RST_38
    rst RST_38
    ret nz

    inc bc
    ld b, $06
    inc c
    inc c
    rra
    rst RST_38
    ldh a, [$ff30]
    ld h, b
    ld h, b
    ret nz

jr_036_5183:
    ret nz

    add b

jr_036_5185:
    add b
    inc de
    nop
    ld [$4f47], sp
    ld e, a
    cpl
    ld b, a
    cp d
    inc a
    ld e, [hl]
    ld [hl], l
    adc b
    db $d3
    scf
    ld d, a
    xor a
    ld b, $02
    inc de
    nop
    ld [bc], a
    ld bc, $0c04
    ld [hl+], a
    dec b
    ld b, h
    ld b, $c1
    add d
    inc a
    pop hl
    ld [bc], a
    ld [de], a
    ld h, b
    ld h, b
    add b
    inc d
    xor c
    ld [de], a
    ld h, h
    ld e, d
    nop
    nop
    ld b, b
    ld l, b
    jr nz, jr_036_5209

    ld c, b
    and d
    ld [hl], a
    adc a
    ld e, e
    dec [hl]
    ld e, l
    ld a, $2a
    dec e
    inc l
    ld d, l
    ld a, [bc]
    inc b
    ld a, [bc]
    dec l
    inc h
    jr nc, jr_036_51da

    nop
    add d
    ld b, b
    jr nc, jr_036_5234

    dec bc
    add hl, de
    ld e, d
    inc b
    and l
    add hl, bc
    inc d
    ld l, c
    ld b, l
    ld c, b
    and [hl]

jr_036_51da:
    ld c, e
    add l
    add hl, de
    sub h
    ld [hl-], a
    ld [hl], a
    dec sp
    and l
    ld c, d
    sbc h
    jr c, jr_036_5183

    ei
    db $fd
    cp a
    inc bc
    xor d
    ld d, h
    adc d
    add e
    ld [hl], a
    db $fd
    di
    rra
    rlca
    ld b, $00
    ld bc, $0013
    ld [bc], a
    inc de
    rst RST_38
    ld [bc], a
    ld a, l
    scf
    ld l, [hl]
    inc e
    ld a, [de]
    and b
    inc de
    jr nz, jr_036_5207

    inc de
    and b

jr_036_5207:
    inc bc
    inc de

jr_036_5209:
    nop
    inc b
    ld bc, $0301
    and b
    ld e, d
    ld d, l
    dec [hl]
    adc h
    and $a2
    ld [de], a
    ld a, a
    ld hl, sp-$31
    sub b
    ret z

    ld [hl], c
    add h
    pop af
    sbc $6e
    dec c
    ret z

    inc b
    add d
    ld l, h
    dec d
    call z, Call_000_36de
    jp $0123


    adc b
    ld [bc], a
    inc de
    add b
    ld [bc], a
    inc de
    nop
    ld [bc], a

jr_036_5234:
    add b
    add b
    inc bc
    ld [bc], a
    nop
    ld bc, $1301
    nop
    ld [bc], a
    sub d
    ld [$a2a2], a
    cp b
    ld e, [hl]
    ld a, h
    ld [hl-], a
    sub a
    ld a, l
    rst RST_38
    ld a, a
    cpl
    ld d, a
    ld l, $97
    dec c
    ld a, $ee
    add $cf
    sbc a
    or e
    ld d, l
    ld [$f9ff], a
    cp $fe
    ld e, [hl]
    rst RST_10
    ld b, b
    add b
    nop
    nop
    inc de
    add b
    ld [bc], a
    nop
    nop
    inc [hl]
    ld sp, $1033
    nop
    nop

jr_036_526c:
    dec b
    nop
    nop
    cp $fc
    nop
    ld [hl], b
    nop
    db $fd
    nop
    inc bc
    ld a, [bc]
    dec e
    ld [de], a
    dec d
    inc l
    ld l, $25
    ld h, $97
    ld b, e
    add b
    ld d, b
    xor d
    ld b, b
    sub h
    sbc c
    ld a, l
    halt
    rst RST_20
    ld b, b
    sbc a
    ld hl, sp+$4f
    call z, Call_036_74ea
    sub h
    ld b, b
    sub h
    ld b, h
    ret nc

    nop
    rst RST_38
    rst RST_38
    nop
    ld e, $c0
    rst RST_38
    inc de
    nop
    dec c
    inc de
    jr nc, jr_036_52a5

    rrca

jr_036_52a4:
    inc de

jr_036_52a5:
    nop
    ld b, $fb
    db $fc
    rrca
    inc de
    nop
    inc b
    daa
    ld d, b
    add h
    jr jr_036_526c

    ld e, d
    dec e
    ld hl, $e0e4
    ret nz

    inc de
    add b
    inc bc
    inc de
    nop
    ld [$4c13], sp
    ld [bc], a
    ld b, h
    ld b, h
    inc de
    ld b, b
    ld [bc], a
    inc de
    nop
    ld a, [bc]
    dec b
    add hl, bc
    ld de, $2805
    nop
    ld a, b
    call z, $0286
    ld [bc], a
    add [hl]
    call z, Call_000_0013
    ld [bc], a
    add b
    ld b, b
    nop
    add b
    ld b, b
    inc de
    nop

jr_036_52e0:
    rlca
    rra
    ld e, $13
    ld c, $02
    inc c
    inc c
    inc b
    inc de
    nop
    ld e, $01
    inc h
    ld de, $1d1d
    jr c, jr_036_5325

    ld d, $d2
    ld a, b
    ld [bc], a
    ld a, d
    ld b, d
    ld c, b
    ld a, c
    ld bc, $10b5
    jr nz, jr_036_52e0

    ldh [rSVBK], a
    jr nc, jr_036_52a4

    jr nz, jr_036_5319

    nop
    daa
    ld b, h
    ld a, [hl+]
    nop
    inc b
    stop
    ld [bc], a
    ld [$0713], sp
    inc b
    ei
    rst RST_38
    inc de
    inc bc
    ld [bc], a
    rlca

jr_036_5319:
    rlca
    inc bc
    ld bc, $0f07
    add sp, -$1a
    ldh a, [c]
    ld hl, sp-$04
    cp $bf

jr_036_5325:
    rst RST_08
    or h
    or l
    or l
    add h
    db $fc
    ld a, b
    nop
    ld a, b
    ld b, b
    sbc b
    inc a
    ld a, $3e
    ld a, [hl]
    cp $c4
    inc de
    nop
    daa
    ldh a, [rNR13]
    ld hl, sp+$03
    db $fc
    rst RST_38
    cp $13
    inc bc
    ld [bc], a
    dec de
    ld a, a
    db $e3
    add e
    ld bc, $c6c4
    nop
    call z, Call_000_00cc
    jp nz, Jump_036_7b00

    ld a, e
    inc de
    ld a, a
    ld [bc], a
    ld a, e
    ld a, a
    ld a, a
    ld e, $9e
    sbc [hl]
    sbc $de
    cp $de
    ld hl, sp-$3d
    db $e3
    nop
    rst RST_08
    rst RST_08
    nop
    pop af
    nop
    ld a, h
    ld a, [hl]
    inc de
    ld a, l
    ld [bc], a
    ld a, a
    ld [hl], a
    rra
    ld d, [hl]
    inc de
    sub $02
    sbc $13
    xor $02
    ld a, a
    nop
    ld b, d
    ld h, e
    ld h, e

jr_036_537d:
    inc de
    ld h, a
    ld [bc], a
    rst RST_30
    rlca
    rlca
    rla
    sub a
    sub a
    rst RST_10
    rst RST_10
    inc de
    rst RST_38
    dec bc
    nop
    ld a, a
    ld e, a
    ld c, a
    inc de
    rst RST_38
    inc bc
    nop
    inc de
    rst RST_38
    ld b, $00
    inc de
    rst RST_38
    ld [bc], a
    rst RST_28
    ldh [$ffe0], a
    jp hl


    db $eb
    jp hl


    jp hl


    db $eb
    cp $00
    ld b, d
    ldh [c], a
    ld [hl], d
    ld [hl], d
    ldh a, [c]
    ld [hl], d
    inc de
    ld [hl], a
    inc bc
    ld a, a
    ld a, a
    ld [hl], a
    ld [hl], a
    rst RST_10
    rst RST_10
    rst RST_30
    rst RST_10
    ret c

    cp $fe
    sbc $13
    rst RST_38
    inc bc
    nop
    ld h, b
    ld [hl], b
    ld a, d
    inc de
    ld a, a
    dec b
    ld a, l
    ld a, d
    rst RST_38
    ldh a, [c]
    rst RST_38
    cp $ff
    rst RST_08
    push af
    ld a, [$f8ff]
    rst RST_08
    cp $ff
    rst RST_00
    db $fd
    ld a, [$f8df]
    rst RST_38
    ld a, a
    db $ed
    ld a, $fd
    jr c, jr_036_537d

    rst RST_38
    jr c, @+$01

    rst RST_08
    ld a, e
    dec e
    ldh a, [c]
    inc de
    cp $05
    db $fc
    ld a, [$ff13]
    inc bc
    nop
    ld b, $0e
    ld e, $ed
    db $ed
    xor $ee
    ld e, $13
    ld a, a
    ld [bc], a
    ld a, d
    ld [$eafa], a
    xor $fa
    ld a, [$7ffe]
    nop
    ld a, h
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld a, a
    ld e, [hl]
    db $fc
    ld [bc], a
    adc [hl]
    adc $ee
    xor $ef
    xor $1c
    inc e
    sbc h
    call z, $b0e4
    ret c

    db $ec
    ccf
    ld b, b
    inc de
    ld [hl], b
    inc bc
    ld a, b
    ld a, b
    cp $00
    add d
    add [hl]
    add $d6
    sbc $d6
    ld c, [hl]
    ld c, a
    ld a, a
    ld e, a
    inc de
    ld a, a
    inc bc
    cp $ee
    inc de
    cp $05
    inc de
    or $04
    inc de
    cp $02
    nop
    rst RST_38
    cp $fe
    db $fd
    db $fd
    ei
    ei
    ld a, a
    nop
    inc de
    rst RST_38
    dec b
    db $fc
    inc bc
    inc de
    rst RST_38
    dec b
    inc de
    ld a, h
    rlca
    ld c, $13
    ld a, $06
    ld a, a
    add b
    inc de
    rst RST_38
    dec b
    cp $00
    ld a, a
    cp a
    cp a
    rst RST_18
    rst RST_18
    rst RST_28

jr_036_5460:
    nop
    inc de
    rst RST_38
    ld b, $f7
    rst RST_30
    nop
    inc de
    rst RST_38
    ld b, $00
    inc de
    rst RST_38
    inc b
    rst RST_28
    rst RST_30
    nop
    inc de
    rst RST_38
    inc b
    inc de
    nop
    rlca
    ld e, $de
    inc de
    xor $03
    ld c, $1e
    inc de
    nop
    rlca
    inc de
    rst RST_38
    dec b
    nop
    cp $13
    rst RST_38
    dec b
    nop
    inc de
    rst RST_38
    ld b, $00
    ld a, a
    cp $fd
    db $fd
    ei
    ei
    rst RST_30
    ldh a, [rIF]
    rst RST_28
    rst RST_18
    rst RST_18
    cp a
    cp a
    ld a, a
    ld a, a
    inc de
    rst RST_38
    ld [$2732], sp
    dec c
    inc e
    cpl
    halt
    ld [$0235], a
    daa
    adc h
    sbc b
    jr c, jr_036_551f

    ld a, b
    cp h
    inc de
    nop
    inc b
    ld bc, $1a0c
    nop
    ld bc, $3c1e
    ld b, c
    ld [de], a
    jr nc, jr_036_5460

    nop
    add b
    ld a, a
    db $e3
    ld b, $4c
    sbc c
    and c
    inc de
    nop
    ld [bc], a
    add b
    ret nc

    add h
    sub [hl]
    inc d
    ld [bc], a
    daa
    dec c
    inc e
    ccf
    halt
    ld l, e
    dec [hl]
    dec de
    ld c, $65
    ld h, e
    ld [hl], c
    ld [hl], b
    ld a, b
    ld a, h
    adc $ee
    ld [hl], h
    cp d
    ret z

    sbc b
    ld [hl], b
    jr nz, jr_036_54ec

    jr nz, jr_036_5532

    ld d, d
    ld b, e

jr_036_54ec:
    ld b, $88
    sub c
    ld b, c
    inc b
    ld a, [bc]
    add d
    nop
    add c
    adc a
    ld c, l
    ld b, d
    sub h
    jr nz, jr_036_553b

Call_036_54fb:
    ld [hl], b
    ld h, h
    rst RST_38
    rst RST_38
    inc [hl]
    ld b, h
    ld [$7400], sp
    cp $fe
    db $fc
    ld c, e
    ld l, $31

jr_036_550a:
    ld e, e
    ld e, h
    ld l, $1c
    jr z, jr_036_550a

    rst RST_38
    ld a, a
    cp a
    sbc $9c
    ld a, b
    jr nz, jr_036_5591

    ld sp, hl
    db $fd
    db $fd
    ld a, l
    ld a, l
    ld a, a
    ld a, a

jr_036_551f:
    inc de
    nop
    inc b
    ld bc, $0203
    ld d, d
    jr nz, jr_036_5550

    ld [$e1c1], sp
    ld sp, $3ed1
    ld a, a
    ldh a, [$ffe0]
    rst RST_38

jr_036_5532:
    ld hl, sp-$0b
    xor $bf
    rst RST_18
    rst RST_10
    inc h
    nop
    inc b

jr_036_553b:
    ld b, [hl]
    adc $ff
    cp a
    ld b, c
    nop
    ld e, $06
    xor e
    ld e, a
    inc de
    nop
    rlca
    ld [bc], a
    inc bc
    inc bc
    ld bc, $1301
    nop
    ld [bc], a

jr_036_5550:
    pop de
    pop af
    cp c
    cp c
    db $db
    jp hl


    ld a, e
    ld a, c
    rst RST_38
    cp $13
    rst RST_38
    inc b
    ld a, h
    cp [hl]
    rst RST_38
    rst RST_38
    rst RST_28
    rst RST_18
    sbc a
    ld e, a
    ldh [c], a
    inc sp
    ld e, $06
    ccf
    rra
    xor a
    ld l, $be
    inc de
    nop
    rlca
    ld a, b
    ld a, e
    inc de
    ld [hl], a
    inc bc
    ld h, b
    ld b, b
    nop
    cp $fe
    db $fc
    adc b
    ld hl, sp+$00
    ld [bc], a
    jr nc, jr_036_5583

    nop

jr_036_5583:
    inc c
    ld c, $1f

jr_036_5586:
    rra
    ld e, $dd
    ld l, l
    cp l
    ld a, a
    cpl
    dec d
    adc a
    ld h, e
    db $fd

jr_036_5591:
    ei
    rst RST_08
    add b
    add b
    ld a, a
    ld h, b
    rst RST_38
    ldh a, [c]
    ldh a, [$ffb8]
    ld e, b
    jr jr_036_5586

    ldh a, [$ffe0]
    nop
    inc de
    rst RST_38
    ld [bc], a
    pop hl
    ccf
    inc de
    nop
    ld b, $03
    rrca
    ld a, a
    inc de
    nop
    inc bc
    inc b
    or [hl]
    add a
    add a
    call nz, Call_036_7ef0
    ccf
    rlca
    ld bc, $9830
    ld [hl], b
    inc a
    rlca
    ldh a, [$fffe]
    cp $7f
    ld [hl], e
    rst RST_18
    rrca
    inc bc
    ret nz

    ld c, l
    dec l
    ld a, [hl+]
    ld e, $f0
    ret nz

jr_036_55cd:
    inc c
    rra
    dec de
    ld sp, $6030
    inc de
    nop
    inc bc
    add b
    inc de

Call_036_55d8:
    ret nz

    ld [bc], a
    inc de
    ld a, $04
    ld e, $0e
    ld b, $00
    inc bc
    rlca
    ld c, $1c
    add hl, de
    ld sp, $f133
    ret nz

    sbc b
    jr nc, jr_036_55cd

    ret nz

    ret nz

    and b
    add e
    ld b, c
    inc de
    nop
    inc bc
    inc b
    ld [$e6cc], sp
    ld [hl], a
    inc sp
    dec de
    add hl, de
    inc c
    inc b
    ld hl, $0422
    adc d
    add b
    nop
    nop
    rrca
    adc h
    adc h
    call z, Call_036_644c
    inc h
    inc h
    or b
    ld h, b
    ret nz

    add h
    ld b, $0f
    rla
    rrca
    rrca
    ld b, b
    nop
    inc d
    ld e, $8f
    rst RST_08
    rst RST_20
    di
    inc de
    nop
    inc bc
    add b
    ret nz

    ldh a, [$fffc]
    ld h, a
    ld c, l
    ld c, e
    ld d, a
    sub a
    adc a
    adc [hl]
    sbc l
    jr nz, @-$2e

    ret nc

    ret nz

    add b
    add d
    inc b
    ret nz

    nop
    nop
    ld h, b
    ld b, b
    ld b, b
    ld h, b
    nop
    jr nz, jr_036_5652

    nop
    inc b
    ld bc, $0001
    ld e, $3f
    ld a, a
    ld a, a
    inc de
    rst RST_38
    inc bc
    ret nc

    ld e, b
    sbc b
    ret


    ret


    inc de
    jp hl


jr_036_5652:
    ld [bc], a
    rlca
    inc bc
    ld bc, $3111
    ld e, b
    ld a, $5f
    pop af
    ld sp, hl
    db $fc
    inc de
    rst RST_38
    ld [bc], a
    cp $7e
    sbc h
    adc $e6
    di
    ei
    dec sp

jr_036_5669:
    dec e
    dec c
    inc de
    nop
    rlca
    inc de
    ld hl, sp+$04
    db $fc
    nop
    db $fc
    db $db
    db $db
    rst RST_30
    rst RST_30
    or e
    cp c
    or a
    xor a
    ldh [$ffe0], a
    ldh a, [$fff8]
    db $fc
    cp $bf
    rst RST_08
    jr nz, jr_036_56a6

    jr nc, jr_036_569b

    nop
    dec b
    jr jr_036_56c8

    ld a, $3e
    ld a, [hl]
    cp $c4
    rst RST_38
    ld a, a
    ld a, e
    dec sp
    add hl, sp
    dec e
    inc e
    inc b
    push af
    inc de

jr_036_569b:
    db $f4
    ld [bc], a
    or $13
    xor $02
    scf
    ld [hl], a
    inc sp
    ld sp, hl
    ld a, h

jr_036_56a6:
    cp h
    ld a, h
    ld a, h
    cp a
    inc de
    rst RST_38
    inc bc
    ld a, a
    ccf
    rra
    inc c
    ld c, $86
    add $c7
    db $e3
    db $e3
    di
    rrca
    inc de
    rlca
    inc bc
    inc bc
    nop
    ld bc, $fc13
    inc bc
    ldh [$ff9c], a
    ld a, h
    cp $11
    add b

jr_036_56c8:
    add hl, bc
    ld d, $09
    rrca
    ld [bc], a
    rlca
    inc bc
    ld c, $1f
    rra
    rst RST_20
    di
    ld hl, sp-$02
    ld a, a
    ld a, a
    rra
    add a
    add hl, bc
    ld a, d
    ld [bc], a
    ld a, b
    ld [hl-], a
    add h
    ld [$b8d4], a
    cp b
    jr nc, @+$0b

    nop
    jr c, jr_036_5669

    add b
    ret nz

    ret nz

    rra
    dec c
    ld c, $0f
    rlca
    inc bc
    nop
    nop
    ldh [$fff8], a
    rst RST_38
    rra
    add c
    ldh a, [$fffc]
    ccf
    ret nz

    nop
    nop
    ret nz

    ret nz

    add hl, bc
    nop
    ld a, [hl-]
    add hl, bc
    ret nz

    ld [bc], a
    ldh [$ffe0], a
    add hl, bc
    ldh a, [rSC]
    xor a
    cpl
    cpl
    scf
    inc hl
    ld c, $1f
    rra
    rst RST_20
    di
    ld hl, sp-$02
    rst RST_38
    ld a, a
    ccf
    adc a
    add hl, bc
    ld b, d
    ld [bc], a
    ld b, b
    ld [bc], a
    add h
    ld [$b8d4], a
    cp c
    ld sp, $0109
    inc bc
    inc bc
    add hl, bc
    add b
    inc bc
    xor b
    sub a
    cp a
    rra
    ld l, [hl]
    ld c, $09
    ld b, $02
    and $c7
    add a
    ld a, [hl]
    ld a, [hl]
    ld a, $09
    ccf
    ld [bc], a
    rra
    rra
    rrca
    rrca
    rlca
    inc de
    add hl, de
    sbc l
    adc a
    ld c, $f1
    pop hl
    ldh [$ffe0], a
    db $e4
    db $e4
    and $c6
    add b
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [$fff8]
    add hl, bc
    rst RST_38
    inc bc
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    ld l, l
    ld l, $2f
    daa
    inc sp
    jr nc, jr_036_5771

    pop hl
    db $fc
    rst RST_38
    ccf
    rst RST_00
    ld sp, hl
    cp $3f

jr_036_5771:
    db $ec
    ld e, b
    add b
    ld [$e8f4], a
    nop
    xor b
    inc bc
    ld b, $06
    inc b
    add hl, bc
    nop
    inc bc
    rra
    ld e, $1c
    inc e
    ld c, [hl]
    ld c, a
    ld l, a
    scf
    rlca
    inc bc
    rlca

jr_036_578b:
    inc bc
    dec b
    add e
    pop hl
    pop hl
    rrca
    rrca
    add hl, bc
    rlca
    ld [bc], a
    add a
    add a
    adc a
    rrca
    adc a
    adc a
    rst RST_08
    rst RST_00
    rst RST_00
    add a
    inc bc
    add hl, bc
    add $02
    rst RST_00
    add hl, bc
    jp Jump_036_7803


    ld a, h
    ld a, h
    add hl, bc
    inc a
    inc bc
    inc e
    add hl, bc
    ccf
    ld [bc], a
    rra
    rra
    add hl, bc
    rrca
    ld [bc], a
    dec e
    nop
    ld [hl], b
    rst RST_38
    nop
    rst RST_38
    nop
    db $10
    ld b, l
    db $10
    rst RST_28
    db $10
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld bc, $55ab
    ld bc, $ffff
    rst RST_38
    jr jr_036_578b

    ld a, [hl]
    rst RST_38
    ld a, [hl]
    ei
    rst RST_38
    rst RST_38

jr_036_57d5:
    ei
    rst RST_38
    db $e3
    ld a, [hl]
    cp h
    ld a, [hl]
    cp h
    jr jr_036_57d5

    rst RST_38
    jr @+$3e

    inc de
    ld b, $3c
    ld a, [hl]

jr_036_57e5:
    inc a
    jr jr_036_57e5

    nop
    jr nc, jr_036_57eb

jr_036_57eb:
    ld [hl], a
    adc a
    ld b, e
    ld hl, $6001
    cp c
    ld b, c
    add hl, sp
    ld [bc], a
    jr nc, jr_036_57f8

    nop

jr_036_57f8:
    nop
    add b
    ld b, [hl]
    nop
    ld b, a
    rst RST_18
    rst RST_00
    ld c, l
    call $9880
    jr nc, jr_036_5806

    inc b

jr_036_5806:
    inc b
    rst RST_38
    inc c
    inc c
    ccf
    inc sp
    ld [$8804], sp
    add h
    di
    ld c, b
    call nz, $0340
    jr nc, @+$03

    ld c, $0e
    dec de
    dec de
    ei
    jr nz, jr_036_584f

    ld b, b
    inc bc
    ld b, b
    jr nz, @+$42

    jr nz, jr_036_582b

    rst RST_18
    ld hl, $4408
    add b
    inc c

jr_036_582b:
    ld h, b
    rlca
    add b
    add b
    rst RST_38
    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    nop
    inc bc
    ld [bc], a
    rst RST_38
    rlca
    ld b, $05
    ld b, $09
    inc c
    dec c
    ld [$11ef], sp
    jr @+$1b

    db $10
    jr nc, jr_036_5849

    ld [bc], a

jr_036_5849:
    ld bc, $ff00
    inc bc
    add c
    ld [bc], a

jr_036_584f:
    ld [bc], a
    add c
    add d
    ld bc, $dd02
    add h
    jr nc, @+$03

    jr @+$1a

    db $10
    or h
    nop
    ld [$d210], sp
    cp c
    nop
    ld [$0760], sp
    ld h, b
    dec b
    inc c
    jp nc, Jump_000_0a00

    ld c, $ff
    ld c, $0a
    ld c, $0a
    ld de, $1b1b
    ld de, $d0f6
    ld bc, $0c08
    or [hl]
    ld bc, $1018
    jr nz, jr_036_58b0

    dec hl
    jr nc, jr_036_58a3

    ld h, b
    rlca
    ret nz

    ld sp, hl
    nop
    nop
    nop
    nop
    or d
    nop
    db $d3
    nop
    inc h
    dec b
    db $10
    cpl
    ld [bc], a
    nop
    ld [$1000], sp
    cp $ff
    db $10
    ld a, $d0
    cp $fe
    or d
    ld c, h
    ld h, [hl]
    rst RST_38

jr_036_58a3:
    sbc b
    adc a
    ld [hl], b
    rst RST_38
    ccf
    pop af
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    ld [bc], a
    db $fd
    db $10

jr_036_58b0:
    rst RST_28
    ld a, [de]
    push hl
    dec sp

jr_036_58b4:
    rst RST_38
    call nz, Call_000_00ff
    ld b, e
    ld h, c
    ld [hl], e
    ld a, a
    ld b, b
    cp a
    ld h, b
    nop
    ld h, b
    ld b, b
    jr nz, jr_036_58b4

    ld b, b
    ld [bc], a
    sub b
    rst RST_30
    adc b
    rra
    rrca
    cp [hl]
    nop
    jr @+$0a

    inc c
    rlca
    db $fd
    rlca
    jr nc, jr_036_58d6

    ld c, b

jr_036_58d6:
    call nz, $c4c8
    ld [$ef04], sp
    ld c, b
    inc b
    inc c
    add b
    ld c, e
    ld [de], a
    nop
    ld sp, $ff20
    ccf
    jr nz, @+$22

    db $10
    and b
    db $10
    sub b
    add hl, bc
    dec a
    ld c, $40
    ld [bc], a
    ld [$058c], sp
    add [hl]
    ld l, [hl]
    ld de, $1548
    rst RST_38
    ld bc, $0101
    add c
    ld b, b
    ret nz

    ret nz

    ld b, b
    rst RST_28
    ld b, b
    ret nz

    add b
    add b
    jr nc, jr_036_590b

    pop af

jr_036_590b:
    ldh a, [$ffc1]
    rst RST_38
    ld hl, sp+$3c
    ld l, $46
    ld h, a
    ld h, c
    ld b, c
    add b
    ei
    ret nz

    ret nz

    adc a
    nop
    ld b, $84
    ld [bc], a
    add h
    add [hl]
    rst RST_38
    ld b, h
    adc h
    ld c, [hl]
    sub h
    ld e, [hl]
    rst RST_00
    sub a
    jp $c37f


    nop
    nop
    db $10
    jr nz, jr_036_5950

    jr nc, @-$4c

    db $10
    ld a, a
    ld [hl], b
    ld [hl], b
    ld a, b
    jp c, $8cdc

    adc h
    ld h, b
    rlca
    rst RST_30
    inc h
    jr jr_036_597d

    ld l, e
    inc de
    ld de, $1109
    jr nc, @+$01

    db $10
    db $10
    jr nc, jr_036_595c

    jr nc, jr_036_59ae

    jr nz, jr_036_5970

jr_036_5950:
    cp $3f
    nop
    sub b
    and b
    db $10
    and b
    pop hl
    and c
    and c
    ld a, a
    pop hl

jr_036_595c:
    ldh [c], a
    db $e3
    ld h, e
    ld h, d
    ld h, h
    ld h, h
    ld [hl], h
    nop
    rst RST_38
    add b
    add c
    ret nz

    add d
    pop bc
    and $c2
    ld b, [hl]
    rst RST_28
    ld l, [hl]
    ld l, e

jr_036_5970:
    ld a, e
    ld sp, $006f
    rst RST_38
    rst RST_38
    di
    rst RST_38
    inc e
    rst RST_38
    db $10
    ld a, $d1

jr_036_597d:
    rst RST_38
    rst RST_38
    or e
    rst RST_38
    ld c, l
    ld h, a
    sbc c
    adc a
    ld [hl], c
    ld d, l
    nop
    xor d

jr_036_5989:
    rst RST_38
    nop
    ld a, a
    nop
    xor d
    dec d
    ld [hl], l
    ld a, [bc]
    xor b
    rst RST_18
    db $10
    ld [hl], c
    dec bc
    xor e
    ld [de], a
    db $10
    ld hl, $00ff
    rst RST_38
    xor d
    ld d, l
    ld d, l
    xor d
    nop
    nop
    ld d, l
    rst RST_38
    cp $24
    jr nz, jr_036_59a9

jr_036_59a9:
    ld d, l
    nop
    cp $00
    ld d, l

jr_036_59ae:
    xor b
    rst RST_38
    xor [hl]
    ld d, b
    dec d
    ld [$d08e], sp
    push de
    ld c, b
    rst RST_38
    rst RST_38
    rst RST_38
    dec e
    ldh a, [c]
    or h
    ld e, e
    ld [hl], c
    sbc [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    adc a
    pop af
    or e
    call $bbc5
    cp $30
    ld hl, $0080
    ld d, l
    ld a, [bc]
    adc d
    dec d
    ld d, b
    sbc a
    rrca
    adc b
    inc d
    ld d, b
    dec c
    jr nc, jr_036_59fd

    ld a, [hl+]
    jr nz, jr_036_5989

    ei
    xor d
    ld d, l
    rst RST_38
    ld [bc], a
    rst RST_38
    ld [hl], c
    ld a, [bc]
    xor e
    ld [de], a
    call c, Call_000_2970
    ret nz

    add hl, bc
    ld bc, $0200
    ld b, b
    ld [bc], a
    dec b
    nop
    or l
    ld a, [hl+]

jr_036_59f7:
    ld sp, $af20
    inc de
    jr nz, jr_036_59f7

jr_036_59fd:
    dec b
    jr nc, jr_036_5a01

    ld d, h

jr_036_5a01:
    ldh a, [$ff2f]
    ld [hl+], a
    inc hl
    db $10
    dec h
    jr nz, jr_036_5a49

    inc b
    nop
    ld b, b
    nop
    xor b
    rrca
    nop
    push de
    nop
    ld a, [$0ac0]
    db $10
    ld hl, $2fc0
    ld h, b
    rlca
    cp h
    cp b
    ld hl, $0dc0
    adc b
    dec d
    ld d, b
    dec c
    nop
    add hl, sp
    nop
    cp $13
    jr nz, jr_036_5a6b

    nop
    ld b, b
    rra
    ld b, b
    rra
    ld b, d
    rst RST_18
    rra
    ld b, l
    rra
    ld b, e
    rra
    adc h
    ld hl, $0005
    push af
    inc bc
    sub e
    jr nz, jr_036_5a4b

    daa
    ld [hl-], a
    call nc, $a82b
    ld d, a
    rst RST_38
    db $d3
    cpl

jr_036_5a49:
    xor a
    ld e, a

jr_036_5a4b:
    ld c, h
    cp a
    sbc d
    ld a, l
    rst RST_38
    ld e, c
    cp [hl]
    sbc d
    ld a, l
    ld bc, $fcfe
    rst RST_38
    rst RST_38
    cp $ff
    ld b, $ff
    ld d, c
    xor [hl]
    add d
    ld a, l
    ld a, a
    ld a, l
    cp $7e
    rst RST_38
    ld a, l
    add b
    rst RST_38
    ld h, l
    ld [hl+], a

jr_036_5a6b:
    rst RST_38
    ld b, h
    cp e
    or e
    ld a, a
    inc sp
    rst RST_38
    or e
    ld a, a
    db $fc
    ld l, c
    ld hl, $2166
    ld b, c
    cp [hl]
    ld [hl], $ff
    ccf
    rst RST_38
    rst RST_38
    add hl, sp
    rst RST_38
    ld e, a
    nop
    cp a
    nop
    push af
    ld a, [bc]
    rst RST_38
    ld [$5015], a
    xor a
    and a
    ld e, a
    ld c, a
    cp a
    rst RST_38
    xor h
    rst RST_18
    call nc, $ea00
    nop
    ld [hl], l
    add b
    rst RST_38
    cp d
    ld b, b
    ld e, l
    and b
    xor [hl]
    ret nc

    dec e
    ldh [rSCX], a
    ld l, $d0
    inc e
    ld sp, $3990
    jr z, jr_036_5adf

    ld h, $31
    ld [bc], a
    adc e
    jr nz, @+$01

    nop
    nop
    ld e, c
    cp [hl]
    xor [hl]
    ld e, a
    rst RST_10
    cpl
    ld a, a
    xor c

jr_036_5abc:
    ld d, a
    call nc, $fa2b
    dec b
    ld a, a
    sbc c
    jr nz, jr_036_5abc

    ld b, $ff
    rrca
    rla
    nop
    ldh a, [rIE]
    dec b
    ld a, [$aaff]
    ld d, l
    rst RST_38
    nop
    db $fd
    nop
    ld l, e
    rst RST_30
    rst RST_38
    ld h, a
    rst RST_38
    ld h, a
    rst RST_38
    cp l
    ld a, a
    ld b, b

jr_036_5adf:
    cp a
    rst RST_38
    xor e
    ld d, a
    rst RST_10
    cpl
    and $1f
    dec [hl]
    ei
    rst RST_38
    ld sp, $b4ff
    ei
    or d
    db $fd
    dec b
    ld a, [$caff]
    push af
    push hl
    ld a, [$f46b]
    sub a
    rst RST_28
    sbc a
    and c
    rst RST_18
    rst RST_08
    rst RST_38
    rst RST_18
    inc hl
    db $10
    ld h, $21
    rst RST_38
    push af
    nop
    adc b
    ld sp, $8d9d
    jr nc, @+$5f

    and b
    cp d
    ld b, b
    rlca
    ld [hl], h
    add b
    add sp, -$4d
    ld [hl+], a
    db $10
    ld b, e
    add [hl]
    dec h
    adc d
    inc hl
    inc h
    ld sp, $07fd
    add hl, hl
    jr nc, jr_036_5b7b

    nop
    xor [hl]
    ld bc, $025d
    rst RST_38
    ld a, [$f405]
    dec bc
    ld sp, hl
    rlca
    push de
    dec hl
    rst RST_38
    xor c
    ld d, a
    ld [$b500], a
    ld b, b
    ld e, d
    and b
    rst RST_38
    cpl
    ret nc

    rst RST_10
    add sp, -$16
    push af
    and l
    ld a, [$b0ff]
    rst RST_38
    db $d3
    cpl
    ld l, e
    rla
    rst RST_10
    cpl
    rst RST_38
    xor h
    ld e, a
    call z, $af3f
    ld e, a
    ld d, a
    xor a
    rst RST_38
    xor b
    ld d, a
    push de
    ld [$fdc2], a
    db $ed
    cp $ff
    ld a, d
    db $fd
    ld a, c
    cp $ec
    rst RST_38
    sub $ef
    rst RST_30
    ld [$fff7], sp
    add c
    jr nc, jr_036_5bc4

    add b
    db $eb
    nop
    xor a
    ld [hl], a
    add b
    cp $01
    ld h, [hl]
    ld hl, $b9d4

jr_036_5b7b:
    jr nz, jr_036_5bd1

    cp $81
    jr nc, @-$01

    nop
    xor [hl]
    ld d, b
    ld d, a
    xor b
    dec bc
    ld a, a
    db $f4
    rla
    nop
    ld c, $01
    dec d
    ld [bc], a
    sub d
    ld b, e
    rst RST_38
    rla
    nop
    ld a, [bc]
    ld bc, $af51
    adc a
    ld a, a
    rst RST_38
    inc hl
    rst RST_38
    ld d, e
    rst RST_28
    ld b, [hl]
    rst RST_38
    ld a, h
    rst RST_38
    rst RST_38
    add hl, sp
    cp $82
    ld a, l
    or e
    rst RST_38
    sbc c
    rst RST_38
    rst RST_38
    reti


    rst RST_38
    db $fd
    rst RST_38
    dec e
    rst RST_38
    and l
    ld e, a
    ld c, a
    ld d, l
    xor a
    ld [$5815], a
    jr nc, jr_036_5bc5

    nop
    reti


    or c
    ld b, b
    rst RST_38
    sbc c
    rst RST_38

jr_036_5bc4:
    ld d, h

jr_036_5bc5:
    cp e
    xor d
    ld d, l
    ld h, c
    cp $7f
    ld [hl], $ff
    cp a
    rst RST_38
    cp e
    rst RST_38

jr_036_5bd1:
    or e

jr_036_5bd2:
    rst RST_10
    ld b, b
    rst RST_38
    and d
    rst RST_38
    ld [$15f7], sp
    db $eb
    ld l, e
    rst RST_30
    ld [hl], a
    or $ff
    ld [hl], $e5
    ld b, b
    inc sp
    rst RST_38
    ld d, l
    call $ff40
    push hl
    ld a, [$fcf3]
    dec [hl]
    ld a, [$7cb3]
    rst RST_38
    dec [hl]
    ld a, [$f4eb]

jr_036_5bf6:
    rst RST_10
    add sp, $2e
    ret nc

    ld sp, hl
    ld b, b
    or l
    ld [hl+], a
    ld [bc], a
    ld d, a
    rlca
    ld [$1503], sp
    ld d, $ff
    ld de, $4708
    add c
    dec l
    pop bc
    sub b
    ldh [rIE], a
    ld l, [hl]
    ld a, a
    rrca
    jp hl


    ld d, $c0
    or e
    ld [bc], a
    rst RST_38
    inc c
    add l
    jr nc, jr_036_5c21

    call z, Call_000_2183
    daa
    sbc a

jr_036_5c21:
    ld c, [hl]
    cp $f0
    push af
    ld a, [bc]
    ld d, d
    jr nc, jr_036_5bf6

    ld h, $ff
    push bc
    rst RST_38
    db $fc
    ld sp, $1157
    jr nz, jr_036_5bd2

    ld [hl+], a
    rrca
    db $10
    ld e, a
    and b
    rla
    cp $00
    push af
    ld de, $5020
    dec bc
    inc d
    inc d
    ld c, c
    ld c, $11
    rst RST_38
    adc b
    dec d
    ld e, l
    inc c
    sbc [hl]
    ld e, $5e
    rra
    rst RST_38
    sbc a
    ld e, $5d
    inc c
    add c
    db $10
    ld e, l
    inc c
    pop hl
    ld b, b

jr_036_5c59:
    inc de
    jr nz, jr_036_5c59

    ld [bc], a
    rst RST_30
    inc [hl]
    jr nc, @+$23

    cp a
    nop
    ld h, b
    ei
    nop
    and b
    sub l
    ld d, h
    sbc a
    nop
    adc a
    inc bc
    ld h, e
    rst RST_38
    nop
    rrca
    nop
    rra
    rrca
    ccf
    ld de, $ff67
    dec b
    halt
    inc b
    ldh [rP1], a
    cp $f0
    cp $ff
    ld b, $fe
    ldh a, [$fffc]
    ld [$18bc], sp
    cp h
    ccf
    and b
    ld l, $24
    jp z, $9dff

    dec h
    db $10
    inc h
    ld de, $83ff
    ld a, h
    rst RST_30
    ld [$00ff], sp
    db $ed
    rst RST_38
    ld a, l
    sbc a
    jp Jump_000_0c52


    di
    ld a, $c1
    ld a, a
    ld d, c
    jr nc, @-$03

    pop af
    rst RST_38
    ld d, c
    jr nc, @+$01

    ld [de], a
    db $ed
    db $10
    rst RST_28
    rrca
    ld b, d
    cp l
    ei
    inc b
    ld l, $23
    nop
    ld de, $0560
    sbc b
    ld d, l
    ld hl, sp-$68
    ld d, l
    cp d
    ld d, b
    inc de
    ld a, [bc]
    adc l
    inc e
    ld e, l
    inc c
    adc l
    ei
    inc e
    ld e, h
    rlca
    ld a, [hl-]
    ld a, a
    nop
    ld h, b
    rra
    ld l, a
    rst RST_28
    db $10
    ld l, b
    db $10
    ld l, e
    dec sp
    ld h, b
    rst RST_38
    rst RST_38
    ld sp, hl
    rst RST_18
    ld d, $f4
    dec de
    ld [hl-], a
    db $dd
    ld [$d025], sp
    db $fd
    cp a
    cp d
    ld d, b
    push de
    jr nc, jr_036_5d6e

    sub b
    ld [$7305], sp
    rst RST_38
    inc de
    jr c, @+$12

    ccf
    db $10
    rra
    ld a, [bc]
    ld l, a
    rst RST_38
    ld a, [bc]
    ld a, a
    ld [hl+], a
    scf
    nop
    inc hl
    nop
    adc $df
    call nz, Call_000_2c3e
    db $fc
    add sp, $74
    ld h, d
    xor b
    ld hl, sp-$05
    and b
    ldh a, [$ff8b]
    db $10
    cp d
    nop
    ld d, l
    db $10
    rst RST_38
    cp $07
    ld b, $0b
    ld e, a
    cp d
    dec d
    ld d, l
    cp d
    cp $fd
    ld de, $0608

jr_036_5d27:
    rst RST_38
    ld [hl], e
    sbc h
    dec [hl]
    jp c, $ff59

    or [hl]
    rst RST_38
    rst RST_38
    ld b, c
    cp a
    ld b, c
    cp a
    ld [hl], a
    ld [hl], c
    adc c
    nop
    dec a
    inc a
    ld h, c
    ret nz

    ld l, c
    rst RST_38
    ld hl, sp-$41
    inc hl
    db $10
    rst RST_38
    inc h
    db $db
    jr nz, jr_036_5d27

    inc b
    ei
    xor h
    ld d, e
    cp $23
    db $10
    rst RST_38
    di
    sbc h
    dec d
    ld a, d
    add hl, de
    halt
    rst RST_38
    ld a, a
    ld a, a
    ld b, c
    ccf
    ld b, c
    ccf
    rst RST_30
    add hl, bc
    nop
    ret nz

    dec c
    rst RST_38
    ld de, $2900
    add b
    nop
    nop
    ld b, l
    rst RST_28
    rst RST_38
    rst RST_38
    xor e

jr_036_5d6e:
    ld bc, $bcff
    rst RST_38
    ei
    ei
    db $e3
    cp h
    cp h
    rst RST_38
    inc a
    rst RST_38
    ei
    ei
    db $e3
    inc a
    inc a
    nop
    nop
    ld [hl], a
    ld b, e
    ld bc, $4129
    ld [bc], a
    add hl, hl
    nop
    ld [bc], a
    add b
    add b
    ld b, a
    ld c, l
    add b
    nop
    nop
    inc b
    inc c
    ccf
    ld [$4888], sp
    add hl, hl
    nop
    inc b
    ld c, $1b
    jr nz, @+$2b

    nop
    ld [bc], a
    ld b, b
    ld b, b
    ld b, $08
    add b
    add hl, hl
    nop
    inc b
    add b
    ld b, b
    ld b, b
    nop
    inc bc
    rlca
    dec b
    add hl, bc
    dec c
    ld de, $0019
    nop
    ld [bc], a
    nop
    add c
    ld [bc], a
    add d
    ld [bc], a
    nop
    nop
    jr jr_036_5dcf

    jr jr_036_5dc9

    db $10
    db $10
    add hl, hl
    nop
    ld [$0c0c], sp
    ld a, [bc]

jr_036_5dc9:
    ld c, $0e
    ld de, $001b
    inc c

jr_036_5dcf:
    ld [$1810], sp
    jr jr_036_5df4

    jr nc, jr_036_5dff

    nop
    inc b
    ret nz

    ret nz

    nop
    rst RST_38
    nop
    jr jr_036_5e03

    inc h
    jr jr_036_5de2

jr_036_5de2:
    nop
    rst RST_38
    rst RST_38
    cp $3e
    cp $b2
    ld h, [hl]
    adc a
    rst RST_38
    pop af
    nop
    ld [bc], a
    db $10
    ld a, [de]
    dec sp
    rst RST_38
    ld b, e

jr_036_5df4:
    ld [hl], e
    ld b, b
    nop
    ld b, b
    ldh a, [rP1]
    nop
    sub b
    rra
    stop

jr_036_5dff:
    ld [$0007], sp
    nop

jr_036_5e03:
    ld c, b
    ret z

    ld [$0c48], sp
    rlca
    add hl, hl
    nop
    dec b
    inc h
    inc a
    nop
    nop
    ld [$3009], sp
    db $10
    db $10
    ld h, b
    jr nz, jr_036_5e18

jr_036_5e18:
    sub b
    db $10
    pop hl
    and c
    ldh [c], a
    ld h, e
    ld h, h
    nop
    ld b, b
    add c
    add d
    and $46
    ld l, e
    ld sp, $ff00
    di
    rst RST_38
    ld a, $ff
    or e
    ld h, a
    adc a
    ld d, l
    xor d
    ld a, a
    xor d
    ld [hl], l
    xor b
    ld [hl], c
    xor e
    ld d, l
    xor d
    rst RST_38
    xor d
    ld d, l
    nop
    ld d, l
    rst RST_38
    xor d
    ld d, l
    cp $55
    xor [hl]
    dec d
    adc [hl]
    push de
    rst RST_38
    dec e
    or h
    ld [hl], c
    rst RST_38
    adc a
    or e
    push bc
    xor d
    ld d, l
    add b
    ld d, l
    adc d
    ld d, b
    adc b
    ld d, b
    xor d
    ld d, l
    nop
    ld d, l
    xor d
    add hl, hl
    nop
    ld [bc], a
    ld [hl], c
    xor e
    ld [hl], c
    xor e
    ld [hl], c
    xor e
    ld [hl], c
    xor e
    adc b
    ld d, b
    adc b
    ld d, b
    adc b
    ld d, b
    adc b
    ld d, b
    nop
    ld a, a
    add hl, hl
    ld b, b
    ld [bc], a
    ld b, d
    ld b, l
    ld b, e
    ld b, l
    ld b, e
    ld b, l
    ld b, e
    ld b, l
    ld b, e
    ld b, l
    ld b, e
    adc b
    ld e, l
    sbc [hl]
    ld e, [hl]
    sbc a
    ld e, l
    add c
    ld e, l
    ld b, b
    ld a, a
    add hl, hl
    nop
    inc bc
    xor d
    ld d, l
    adc l
    ld e, l
    adc l
    ld e, h
    adc b
    ld d, b
    adc b
    ld d, b
    nop
    ld a, a
    ld a, a
    ld h, b
    ld l, a
    ld l, b
    ld l, e

jr_036_5e9e:
    ld l, e
    rst RST_38
    ld sp, hl
    db $f4
    ld [hl-], a
    rst RST_38
    or e
    ld h, a
    adc a
    ret nc

    cp d
    push de
    ld a, a
    rst RST_38
    rst RST_38
    xor e
    ld bc, $5088
    adc b
    ld d, b
    adc b
    ld d, b
    adc b
    ld d, b
    add hl, hl
    ld l, e
    rlca
    ld sp, $203e
    and b
    sub b
    inc c
    add hl, hl
    nop
    inc b
    ld bc, $0c04
    ld [bc], a
    dec b
    inc b
    ld b, $c1
    add [hl]
    inc a
    pop hl
    ld [bc], a
    ld d, d
    ld h, b
    ld h, d
    add b
    inc d
    xor c
    ld [de], a
    ld h, h
    ld e, d
    add hl, hl
    nop
    ld [bc], a
    ld c, h
    inc h
    ld e, d
    ld c, b
    and d
    db $10
    jr nz, jr_036_5f03

    nop
    nop
    ld [bc], a
    add hl, hl
    nop
    ld b, $01
    inc bc
    ld bc, $045a
    and l
    add hl, bc
    inc d
    ld l, c
    ld b, l
    ld c, b
    and [hl]
    ld c, e
    add l
    add hl, de
    sub h
    ld [hl-], a
    ld [hl], a
    dec sp
    and l
    ld c, d
    sbc h
    jr c, jr_036_5e9e

    ei
    db $fd

jr_036_5f03:
    cp a
    inc bc
    xor d
    ld d, h
    adc d
    add e
    ld [hl], a
    db $fd
    di
    rra
    inc a
    ld a, a
    ld a, e
    ld a, e
    inc hl
    inc a
    inc a
    ld d, l
    xor d
    rst RST_38
    xor d
    ld d, h
    nop
    ld d, b
    ld hl, sp+$01
    add hl, hl
    nop
    inc bc
    ld bc, $0301
    and b
    ld e, d
    ld d, l
    dec [hl]
    adc h
    and $a2
    ld [de], a
    ld a, a
    ld hl, sp-$31
    sub b
    ret z

    ld [hl], c
    add h
    pop af
    sbc $6e
    dec c
    ret z

    inc b
    add d
    ld l, h
    dec d
    call z, Call_000_36de
    jp $0123


    adc b
    ld [bc], a
    sub l
    ld a, [hl+]
    ld a, a
    ld a, [hl+]
    dec d
    nop
    dec b
    rrca
    inc bc
    ld [bc], a
    nop
    ld bc, $2901
    nop
    ld [bc], a
    sub d
    ld [$a2a2], a
    cp b
    ld e, [hl]
    ld a, h
    ld [hl-], a
    sub a
    ld a, l
    rst RST_38
    ld a, a
    cpl
    ld d, a
    ld l, $97
    dec c
    ld a, $ee
    add $cf
    sbc a
    or e
    ld d, l
    ld [$f8ff], a
    cp $fe
    ld e, [hl]
    rst RST_10
    ld b, b
    inc bc
    ld a, [bc]
    dec e
    ld [de], a
    dec d
    inc l
    ld l, $25
    ld h, $97
    ld b, e
    add b
    ld d, b
    xor d
    ld b, b
    sub h
    sbc c
    ld a, l
    halt
    rst RST_20
    ld b, b
    sbc a
    ld hl, sp+$4f
    adc $e8
    ld [hl], h
    sub h
    ld b, b
    sub b
    ld b, b
    ret nc

    add hl, hl
    nop
    inc c
    add hl, hl
    jr nc, jr_036_5f9b

    rrca
    add hl, hl

jr_036_5f9b:
    nop
    ld b, $fb
    db $fc
    rrca
    add hl, hl
    nop
    inc b
    daa
    ld d, b

jr_036_5fa5:
    add h
    jr @-$44

    ld e, d
    dec e
    ld hl, $e0e0
    ret nz

    add hl, hl
    add b
    inc bc
    add hl, hl
    nop
    ld [$558e], sp
    ld c, $15
    ld b, $05
    ld [bc], a
    ld bc, $0029
    ld a, [bc]
    dec b
    add hl, bc
    ld de, $2805
    nop
    ld a, b
    call z, $0286
    ld [bc], a
    add [hl]
    call z, Call_000_0029
    ld [bc], a
    add b
    ld b, b
    nop
    add b
    ld b, b
    add hl, hl
    nop
    rlca
    rra
    ld e, $29
    ld c, $02
    inc c
    inc c
    inc b
    add hl, hl
    nop

jr_036_5fe1:
    rla
    rst RST_38
    dec e
    or h
    ld [hl], c
    ld a, a
    rrca
    inc de
    dec b
    add hl, hl
    nop
    ld b, $01
    inc h
    ld de, $1d1d
    jr c, jr_036_6026

    ld d, $d2
    ld a, b
    ld [bc], a
    ld a, d
    ld b, d
    ld c, b
    ld a, c
    ld bc, $10b5
    jr nz, jr_036_5fe1

    ldh [rSVBK], a
    jr nc, jr_036_5fa5

    jr nz, jr_036_6030

    nop
    daa
    rrca
    ld bc, $0029
    dec b
    inc bc
    inc bc
    rlca
    rlca
    inc bc
    ld bc, $0f07
    add sp, -$1a
    ldh a, [c]
    ld hl, sp-$04
    cp $bf
    rst RST_08
    or h
    or l
    or l
    add h
    db $fc
    ld a, b
    nop
    ld a, b

jr_036_6026:
    ld b, b
    sbc b
    inc a
    ld a, $3e
    ld a, [hl]
    cp $c4
    add hl, hl
    nop

jr_036_6030:
    cpl
    add hl, hl
    rrca
    ld [bc], a
    rlca
    inc bc
    ld c, $1f
    rra
    rst RST_20
    di
    ld hl, sp-$02
    ld a, a
    ld a, a
    rra
    add a
    add hl, hl
    ld a, d
    ld [bc], a
    ld a, b
    ld [hl-], a
    add h
    ld [$b8d4], a
    cp b
    jr nc, jr_036_6076

    nop
    inc [hl]
    rra
    dec c
    ld c, $0f
    rlca
    inc bc
    nop
    nop
    ldh [$fff8], a
    rst RST_38
    rra
    add c
    ldh a, [$fffc]
    ccf
    ret nz

    nop
    nop
    ret nz

    ret nz

    add hl, hl
    nop
    ld [hl+], a
    rst RST_38
    add hl, hl
    db $10
    ld [bc], a
    rst RST_38
    ld bc, $ff55
    jr jr_036_60ef

    ld a, [hl]
    rst RST_38
    rst RST_38
    ld a, [hl]
    ld a, [hl]

jr_036_6076:
    jr jr_036_6090

    ld a, [hl]
    ld a, [hl]
    rst RST_38
    rst RST_38
    ld a, [hl]
    ld a, [hl]
    jr jr_036_6080

jr_036_6080:
    nop
    adc a
    ld hl, $6029
    inc bc
    add hl, hl
    nop
    ld [bc], a
    add b
    add b
    rst RST_00
    call Call_000_0098
    nop

jr_036_6090:
    inc b
    inc c
    inc sp
    inc b
    add h
    call nz, Call_000_0029
    inc b
    ld c, $1b
    ld sp, $0029
    ld [bc], a
    jr nz, @+$22

    ld hl, $0c44
    add hl, hl
    nop
    inc b
    add b
    ret nz

    ret nz

    nop
    ld [bc], a
    ld b, $06
    inc c
    ld [$1018], sp
    nop
    nop
    ld bc, $0203
    add c
    ld bc, $0084
    nop
    jr jr_036_60d6

    db $10
    db $10
    ld [$2908], sp
    nop
    ld [$0c0c], sp
    ld c, $0a
    ld a, [bc]
    dec de
    ld de, $0c00
    inc c
    jr jr_036_60e1

    db $10
    jr nc, jr_036_60f4

    add hl, hl
    nop

jr_036_60d6:
    rrca
    rst RST_38
    db $10
    db $10
    ret nc

    cp $4c
    sbc b
    ld [hl], b
    ccf
    rst RST_38

jr_036_60e1:
    rst RST_38
    db $fd
    rst RST_28
    push hl
    call nz, Call_036_6100
    ld a, a
    ld h, b
    ld h, b
    jr nz, jr_036_6116

    nop
    ld [bc], a

jr_036_60ef:
    adc b
    rrca
    ld [$0c18], sp

jr_036_60f4:
    rlca
    nop
    nop
    call nz, Call_000_04c4
    inc b
    add b
    add hl, hl
    nop
    ld b, $18

Call_036_6100:
    add hl, hl
    nop
    ld [bc], a
    ld de, $1011
    jr nc, @+$32

    jr nz, jr_036_616a

    nop
    and b
    and b
    and c
    pop hl
    db $e3
    ld h, d
    ld h, h
    nop
    add b
    ret nz

    pop bc

jr_036_6116:
    jp nz, Jump_036_7b6e

    ld sp, $ff00
    inc e
    db $10
    pop de
    rst RST_38
    ld c, l
    sbc c
    ld [hl], c

jr_036_6123:
    add hl, hl
    nop
    ld [bc], a
    dec d
    ld a, [bc]
    db $10
    dec bc
    ld [de], a
    add hl, hl
    nop
    ld [bc], a
    ld d, l
    xor d
    nop
    rst RST_38
    add hl, hl
    nop
    inc bc
    xor b
    ld d, b
    ld [$48d0], sp
    rst RST_38
    ldh a, [c]
    ld e, e
    sbc [hl]
    rst RST_38
    pop af
    call $29bb
    nop
    ld [bc], a
    ld a, [bc]
    dec d
    rrca
    inc d
    dec c
    add hl, hl
    nop
    ld [bc], a
    xor d
    ld d, l
    rst RST_38
    nop
    rst RST_38
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a

jr_036_6156:
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    dec d
    dec c
    dec d
    dec c
    dec d
    dec c
    dec d
    dec c
    add hl, hl
    nop
    ld [bc], a
    add hl, hl
    rra
    inc c
    dec d
    inc c

jr_036_616a:
    ld e, $1f
    ld e, $0c
    db $10
    inc c
    add hl, hl
    nop
    ld [bc], a
    add hl, hl
    rst RST_38
    ld [bc], a
    ld d, l
    xor d
    inc e
    inc c
    inc e
    dec c
    dec d
    dec c
    dec d
    dec c
    add hl, hl
    nop
    ld [bc], a
    rra
    add hl, hl
    db $10
    inc bc
    rst RST_38
    ld d, $1b
    db $dd
    rst RST_38
    ld c, l
    sbc c
    ld [hl], c
    db $fd
    ld d, b
    jr nc, jr_036_6123

    rst RST_38
    ld bc, $ff55
    dec d
    dec c
    dec d
    dec c
    dec d
    dec c
    dec d
    dec c
    add hl, hl
    db $10
    rlca
    jr nz, jr_036_61c4

    db $10
    db $10
    ld [$0029], sp
    rlca
    ld bc, $1a0c
    nop
    ld bc, $381e
    ld b, c
    ld [de], a
    jr nc, jr_036_6156

    nop
    add b
    ld a, a
    db $e3
    ld b, $4c
    sbc c
    add c
    add hl, hl
    nop
    ld [bc], a
    add b
    ret z

    add h
    sub [hl]

jr_036_61c4:
    inc d
    jr nz, jr_036_61f7

    jr nc, jr_036_61d9

    ld [$2904], sp
    nop
    add hl, bc
    inc b
    jr nz, jr_036_6219

    ld d, d
    ld b, e
    ld b, $88
    sub c
    ld b, c
    inc b
    ld a, [bc]

jr_036_61d9:
    add d
    nop
    add c
    adc a
    ld c, l
    ld b, d
    sub h
    jr nz, jr_036_6222

    ld [hl], b
    ld h, h
    rst RST_38
    rst RST_38
    inc [hl]
    ld b, h
    ld [$7400], sp
    cp $fe
    db $fc
    jr @+$80

    ld a, [hl]
    ld a, a
    ld a, a
    ld a, $7e
    jr @+$2b

jr_036_61f7:
    nop
    ld [bc], a
    ld d, h
    xor b
    nop
    ld hl, sp+$29
    nop
    dec b
    ld bc, $0203
    ld d, d
    jr nz, jr_036_622e

    ld [$e1c1], sp
    ld sp, $3ed1
    ld a, a
    ldh a, [$ffe0]
    rst RST_38
    ld hl, sp-$0b
    xor $bf
    rst RST_18
    rst RST_10
    inc h
    nop
    inc b

jr_036_6219:
    ld b, [hl]
    adc $ff
    cp a
    ld b, c
    nop
    ld e, $06
    xor e

jr_036_6222:
    ld e, a
    add hl, hl
    nop
    ld [bc], a
    ld d, l
    ld a, [hl+]
    nop
    rrca
    nop
    ld [bc], a
    inc bc
    inc bc

jr_036_622e:
    ld bc, $2901
    nop
    ld [bc], a
    pop de
    pop af
    cp c
    cp c
    db $db
    jp hl


    ld a, e
    ld a, c
    rst RST_38
    cp $29
    rst RST_38
    inc b
    ld a, h
    cp [hl]
    rst RST_38
    rst RST_38
    rst RST_28
    rst RST_18
    sbc a
    ld e, a
    ldh [c], a
    inc sp
    ld e, $07
    ccf
    rra
    xor a
    ld l, $be
    jr nc, jr_036_6254

    nop

jr_036_6254:
    inc c
    ld c, $1f

jr_036_6257:
    rra
    ld e, $dd
    ld l, l
    cp l
    ld a, a
    cpl
    dec d
    adc a
    ld h, e
    db $fd
    ei
    rst RST_08
    add b
    add b
    ld a, a
    ld h, b
    rst RST_38
    ldh a, [$fff0]
    cp b
    ld e, b
    jr jr_036_6257

    ldh a, [$ffe0]
    add hl, hl
    nop
    inc b
    inc bc
    rrca
    ld a, a
    add hl, hl
    nop
    inc bc
    inc b
    or [hl]
    add a
    add a
    call nz, Call_036_7ef0
    ccf
    rlca
    ld bc, $9830
    ld [hl], b
    inc a
    rlca
    ldh a, [$fffe]
    cp $7f
    ld [hl], e
    rst RST_18
    rrca
    inc bc
    ret nz

    ld c, l
    dec l
    ld a, [hl+]
    ld e, $e0
    ret nz

jr_036_6298:
    inc c
    rra
    dec de
    ld sp, $6030
    add hl, hl
    nop
    inc bc
    add b
    add hl, hl
    ret nz

    ld [bc], a
    ld d, b
    ld c, b
    db $10
    ld [$0029], sp
    inc b
    inc bc
    rlca
    ld c, $1c
    add hl, de
    ld sp, $f133
    ret nz

    sbc b
    jr nc, jr_036_6298

    ret nz

    ret nz

    and b
    add e
    ld b, c
    add hl, hl
    nop
    inc bc
    inc b
    ld [$e6cc], sp
    ld [hl], a
    inc sp
    dec de
    add hl, de
    inc c
    inc b
    ld hl, $0422
    adc d
    add b
    nop
    nop
    rrca
    adc h

jr_036_62d3:
    adc h
    call z, Call_036_644c
    inc h
    inc h
    or b
    ld h, b
    ret nz

    add h
    ld b, $0f
    rla
    rrca
    rrca
    ld b, b
    nop
    inc d
    ld e, $8f
    rst RST_08
    rst RST_20
    di
    add hl, hl
    nop
    inc bc
    add b
    ret nz

    ldh a, [$fffc]
    rst RST_38
    ldh a, [c]
    ld e, e
    sbc [hl]
    ld a, a
    ld sp, $1b0d
    ld h, a
    ld c, l
    ld c, e
    ld d, a
    sub a
    adc a
    adc [hl]
    sbc l
    jr nz, jr_036_62d3

    ret nc

    ret nz

    add b
    add d
    inc b
    ret nz

    nop
    nop
    ld h, b
    ld b, b
    ld b, b
    ld h, b
    nop
    jr nz, jr_036_633b

    nop
    inc b
    ld bc, $0001
    ld e, $3f
    ld a, a
    ld a, a
    add hl, hl
    rst RST_38
    inc bc
    ret nc

    ld e, b
    sbc b
    adc c
    ret


    add hl, hl
    jp hl


    ld [bc], a
    rlca
    inc bc
    ld bc, $3111
    ld e, b
    ld a, $5f
    pop af
    ld sp, hl
    db $fc
    add hl, hl
    rst RST_38
    ld [bc], a
    cp $7e
    sbc h
    adc $e6
    di
    ei

jr_036_633b:
    dec sp
    dec e
    dec c
    rrca
    ld b, $0b
    rlca
    dec b
    add hl, hl
    nop
    ld [bc], a
    db $db
    db $db
    rst RST_30
    rst RST_30
    or e
    cp c
    or a
    xor a
    ldh [$ffe0], a
    ldh a, [$fff8]
    db $fc
    cp $bf
    rst RST_08
    jr nz, jr_036_6378

    jr nc, jr_036_6383

    nop
    dec b
    jr jr_036_639a

    ld a, $3e
    ld a, [hl]
    cp $c4
    rst RST_38
    ld a, a
    ld a, e
    dec sp
    add hl, sp
    dec e
    inc e
    inc b
    push af
    add hl, hl
    db $f4
    ld [bc], a
    or $29
    xor $02
    scf
    ld [hl], a
    inc sp
    ld sp, hl
    ld a, h

jr_036_6378:
    cp h
    ld a, h
    ld a, h
    cp a
    add hl, hl
    rst RST_38
    inc bc
    ld a, a
    ccf
    rra
    inc c

jr_036_6383:
    ld c, $87
    rst RST_00
    rst RST_00
    db $e3
    db $e3
    di
    add hl, hl
    nop
    ld [bc], a
    add b
    add b
    add hl, hl
    ret nz

    ld [bc], a
    xor a
    cpl
    cpl
    scf
    inc hl
    ld c, $1f
    rra

jr_036_639a:
    rst RST_20
    di
    ld hl, sp-$02
    rst RST_38
    ld a, a
    ccf
    adc a
    add hl, hl
    ld b, d
    ld [bc], a
    ld b, b
    ld [bc], a
    add h
    ld [$b8d4], a
    cp c
    ld sp, $0129
    inc bc
    inc bc
    add hl, hl
    add b
    inc bc
    xor b
    sub a
    cp a
    rra
    ld l, [hl]
    ld c, $29
    ld b, $02
    and $c7
    add a
    ld a, [hl]
    ld a, [hl]
    ld a, $29
    ccf
    ld [bc], a
    rra
    rra
    rrca
    rrca
    rlca
    inc de
    add hl, de
    sbc l
    adc a
    ld c, $f1
    pop hl
    ldh [$ffe0], a
    db $e4
    db $e4
    and $c6
    ret nz

    add hl, hl
    ldh [rSC], a
    add hl, hl
    ldh a, [rSC]
    ld hl, sp+$1f
    ld l, l
    ld l, $2f
    daa
    inc sp
    jr nc, jr_036_63f0

    pop hl
    db $fc
    rst RST_38
    ccf
    rst RST_00
    ld sp, hl
    cp $3f

jr_036_63f0:
    db $ec
    ld e, b
    add b
    ld [$e8f4], a
    nop
    xor b
    inc bc
    ld b, $06
    inc b
    add hl, hl
    nop
    inc bc
    rra
    ld e, $1c
    inc e
    ld c, [hl]
    ld c, a
    ld l, a
    scf
    rlca
    inc bc
    rlca
    inc bc
    dec b
    add e
    pop hl
    pop hl
    rrca
    rrca
    add hl, hl
    rlca
    ld [bc], a
    add a
    add a
    adc a
    ld de, $0180
    inc bc
    ld bc, $1700
    rrca
    adc a
    adc a
    rst RST_08
    rst RST_00
    rst RST_00
    add a
    inc bc
    ld bc, $02c6
    rst RST_00
    ld bc, $03c3
    ld a, b
    ld a, h
    ld a, h
    ld bc, $033c
    inc e
    dec e
    nop
    add b
    db $ed
    nop
    nop
    inc c
    jr nz, jr_036_645c

    db $10
    ld bc, $1f21
    ld b, c
    db $fd
    ccf
    jr jr_036_6447

    add c

jr_036_6447:
    ld a, a
    dec a
    cp $fe
    db $fc

Call_036_644c:
    ld a, [hl]
    ld [hl+], a
    dec b
    db $fd
    cp $ff
    cp $ff
    nop
    jr nc, jr_036_6458

    rst RST_38

jr_036_6458:
    cp $01
    db $fc
    inc bc

jr_036_645c:
    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst RST_38
    rst RST_38
    nop
    ret nz

    ccf
    adc b
    ld [hl], a
    ld de, $ffef
    inc hl
    rst RST_18
    ld h, a
    sbc a
    rst RST_00
    ccf
    rst RST_08
    ccf
    rst RST_08
    adc a
    ld a, a
    rra
    rst RST_38
    ld d, c
    rrca
    ld e, [hl]
    add hl, bc
    ld hl, sp-$01
    push af
    db $fc
    ld l, $00
    cp $5e
    ld b, $43
    cp h
    inc hl
    call c, $33bf
    call z, $e01f
    rrca
    ldh a, [$ff88]
    ld bc, $f71f
    ldh [rLCDC], a
    ccf
    db $10
    ld bc, $0c13
    inc e
    inc bc
    ld a, a
    ld [$0807], sp
    rlca
    db $10
    rrca
    ld a, a
    ld e, [hl]
    nop
    rst RST_08
    ld a, a
    cp a
    ld a, a
    rst RST_38
    and b
    ld bc, $015e
    and b
    ret nz

    add $b0
    dec bc
    add e
    ld a, a
    ret nz

    dec bc
    ld [hl], e
    ld [bc], a
    pop de
    ld [$007f], sp
    ld a, [$03e0]
    ccf
    rst RST_20
    inc b
    rrca
    rst RST_38
    rlca
    rst RST_38
    add c
    rst RST_38
    ld a, a
    cp $01
    rst RST_38
    nop
    ld hl, sp+$07
    ret nz

    ei
    ccf
    pop hl
    ld d, b
    ld [bc], a
    db $fc
    rst RST_38
    inc bc
    db $fc
    ld hl, sp-$55
    rlca
    rlca
    ld e, [hl]
    inc b
    ldh [$ff30], a
    nop
    rlca
    and a
    ld b, $ff
    ld c, e
    rst RST_38
    daa
    ld e, [hl]
    nop
    pop bc
    ld [hl], l
    ld [$1500], sp
    ldh a, [$ff5e]
    ld [bc], a
    db $fd
    cp $71
    nop
    ldh a, [rIE]
    rrca
    ldh a, [$fff0]
    rrca
    db $fd
    ld [$1043], sp
    jp $1efc


    ldh [$ff3e], a
    ret nz

    rst RST_38
    ld a, [hl]
    add b
    cp $00
    inc e
    ldh [rNR32], a
    ldh [$ff7f], a
    cp h
    ld b, b
    ld a, h
    add b
    db $10
    rrca
    ld de, $1461
    push af
    ld hl, $0015
    ld hl, $0c50
    cp $ff
    ret nz

    add b
    sbc $80
    inc de
    ld b, b
    add b
    add b
    nop
    adc d
    ld de, $3f43
    add sp, -$70
    ld de, $0118
    ld l, d
    inc de
    db $fd
    ld hl, $fa04
    db $fc
    db $fc
    ld a, a
    ld hl, sp-$04
    ld hl, sp-$0c
    ld hl, sp+$1f
    nop
    or b
    ld de, $0fb5
    or l
    ld [de], a
    rlca
    cp e
    db $10
    ldh a, [rIF]
    or $01
    db $fc
    rst RST_38
    inc bc
    ldh [$ff1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc

jr_036_655e:
    rst RST_18
    inc bc

jr_036_6560:
    rst RST_38
    rst RST_38
    inc bc
    rst RST_38
    ld [$fe11], sp
    rst RST_38
    rst RST_20
    ld [hl], e
    rst RST_38
    rra
    jr nc, jr_036_656e

jr_036_656e:
    ld e, [hl]
    ld bc, $fff0
    ret nz

    ld [$10db], sp
    ld e, [hl]
    ld bc, $15e8
    inc bc
    ld b, e
    db $10
    ld e, [hl]
    dec b

jr_036_657f:
    ld b, h
    ld [de], a
    ld e, [hl]
    nop
    db $fd
    inc d
    jp hl


    inc de
    ldh [$fff9], a
    ld b, $c3
    inc a
    ld c, $ff
    pop af
    jr nc, jr_036_6560

    pop bc
    ld a, $07
    ld hl, sp+$3f
    rst RST_38
    ret nz

    ld hl, sp+$00
    ld hl, sp+$00
    jr c, jr_036_655e

    jr nc, jr_036_657f

    ret nz

    ld [hl], b
    add b
    ldh a, [rP1]
    ld a, [hl+]
    ld hl, $1f21
    pop bc
    inc hl
    ld sp, $9024
    inc de
    ld [hl], e
    ld bc, $11a0
    xor b
    ld de, $f8f4
    scf
    ld hl, sp-$10
    ld hl, $0011
    db $10
    rrca
    ld d, h
    inc hl
    db $10
    ld bc, $f8fb
    ldh a, [$ff60]
    inc hl
    ld [hl], h
    ld hl, sp+$1c
    ld hl, sp+$3a
    or [hl]
    inc hl
    nop
    inc bc
    nop

jr_036_65d2:
    ld [hl], b
    jr nz, jr_036_65d6

    inc bc

jr_036_65d6:
    cp e
    db $10
    dec c
    sbc a
    ld [bc], a
    ld [$1907], sp
    ld b, $30
    inc bc
    add b
    inc h
    ld b, b
    ld l, a
    rst RST_38
    nop
    add a
    ld a, b
    inc [hl]
    ld bc, $07f8
    add b
    dec h
    ld [hl], e
    ldh [$ff1f], a
    ld l, a
    jr nz, jr_036_65fa

    db $10
    call nz, $fb3f
    sub a

jr_036_65fa:
    ld [hl+], a
    db $fd
    ld a, a
    jr nc, jr_036_6601

    add e
    ld a, h

jr_036_6601:
    jr nc, jr_036_65d2

    sbc b
    rst RST_20
    or $ce
    stop
    ldh [rIF], a
    jr nz, jr_036_6685

    add a
    pop hl
    ld e, $bf
    rra
    ldh [$ff7f], a
    add b
    rlca
    ld hl, sp+$30
    inc bc
    ccf
    sbc l
    ret nz

    add b
    inc h
    ld [bc], a
    rst RST_38
    ld [$212a], sp
    jr nz, jr_036_6646

    ret c

    ld a, a
    and b
    sbc h
    ld h, b
    adc h
    ld [hl], b
    adc $30
    sub b
    ld de, $47dd
    di
    jr nz, @-$77

    ld a, a
    adc a
    ld sp, hl
    ld [hl+], a
    add sp, -$10
    sbc a
    ldh a, [$ffe0]
    ret nc

    ldh [$ffe0], a
    or c
    nop
    add h
    inc de
    rst RST_38

jr_036_6646:
    rst RST_38
    nop
    ld sp, $c7ce
    jr c, @+$1d

    db $e4
    ld h, a
    ld [hl], a
    sbc b
    adc a
    ld [hl], b
    call nc, $c121
    ccf
    jp $20f7


    rst RST_38
    add h
    ld a, a
    cp a
    ld e, a
    cp a
    ld e, e
    rst RST_30
    cp e
    ei
    rst RST_28
    or a
    ld [hl], l
    ld bc, $ffcf
    ld sp, hl
    rst RST_38
    ld a, [$ddff]
    or l
    jp c, $9bf4

    ld [hl], a
    sbc b
    rst RST_38
    rst RST_38
    nop
    rst RST_30
    ld a, b
    ei
    add a
    rst RST_38
    rst RST_20
    ld a, a
    rst RST_18
    ld hl, sp-$7a
    ld a, c
    ld a, a
    add a

jr_036_6685:
    inc [hl]
    nop
    nop
    ld a, a
    ei
    cp $df
    ld [de], a
    db $10
    rst RST_18
    ccf
    db $ed
    di
    cp a
    ei
    adc $ff
    nop
    nop
    add b
    nop
    ld [hl], b
    add b
    rst RST_18
    ld a, a
    jr nc, jr_036_66d7

    rst RST_08
    db $eb
    rst RST_30
    ld a, [hl]
    ld sp, hl
    ld e, [hl]
    ld sp, $007e
    inc bc
    rst RST_38
    nop
    db $dd
    db $e3
    ei
    db $fc
    ld l, [hl]
    scf
    cp a
    cp $01
    cp $ff
    sbc l
    ld a, [hl]
    ld e, [hl]
    ld sp, $ff01
    nop
    ld c, $01
    rst RST_28
    rra
    rst RST_38
    ret nz

    ld e, a
    rst RST_30
    cp a
    cp $71
    xor [hl]
    jr nz, jr_036_66cc

jr_036_66cc:
    cp l
    ld a, [hl]
    rst RST_30
    rst RST_38
    ei
    rst RST_18
    db $ec
    cp a
    ld a, a
    rst RST_28
    sbc a

jr_036_66d7:
    db $fc
    db $fd
    db $e3
    jr nc, jr_036_66dd

    rst RST_30

jr_036_66dd:
    rrca
    db $fd
    di
    rst RST_38
    inc e
    cp a
    rst RST_10
    rst RST_28
    di
    db $fc
    call $30f3
    ld bc, $bffb
    db $fc
    ei
    rst RST_30
    rst RST_28
    rra
    db $ec
    cp l
    ld sp, $feff
    jr nc, jr_036_66fa

    rst RST_28

jr_036_66fa:
    dec e
    rst RST_10
    xor $fb
    rst RST_30

Call_036_66ff:
    cp $ef
    ld sp, hl
    ccf
    cp $e7
    call c, Call_000_0011
    db $db
    ld l, l
    rst RST_38
    rst RST_38
    ld l, l
    db $fd
    ld l, [hl]
    db $ed
    halt
    cp [hl]
    ld [hl], a
    rst RST_28
    rst RST_10
    dec sp
    ei
    ld e, l
    add hl, sp
    nop
    db $fc
    rlca
    ld sp, hl
    rst RST_38
    and [hl]
    ld e, c
    rlca
    ld hl, sp+$5f
    and d
    xor e
    ld d, l
    rst RST_38
    ei
    dec b
    ld l, a
    or [hl]
    db $ed
    halt
    db $dd
    ld l, [hl]
    rst RST_38
    rst RST_18
    ld l, h
    db $db
    db $ec

jr_036_6734:
    cp l
    jp c, $1af5

    cp a
    db $fd
    and [hl]
    xor $31
    db $ec
    inc sp
    ld [de], a
    ld b, c
    rst RST_28
    or a
    jr nc, jr_036_6734

    jr nc, @+$60

    ld sp, $1fef
    jr nz, jr_036_678d

    ldh [$ffdf], a
    rra
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld e, [hl]
    ld sp, $dead
    rst RST_38
    xor l
    sbc $ab
    call c, $9867
    ld h, e
    sbc h
    ei
    and $19
    ld e, [hl]
    ld sp, $f97e
    ld [hl], d
    db $fd
    and $8f
    ld sp, hl
    rlca
    ld hl, sp+$06
    ld b, l
    ld b, b
    ld e, [hl]
    ld sp, $113e
    cp $cf
    rst RST_38
    ld bc, $00fe
    ld d, l
    ld b, b
    ld e, [hl]
    ld sp, $7ebd
    ccf
    db $db
    inc a
    db $db
    inc a
    add $39
    ld h, [hl]
    ld b, c
    inc a
    ld b, d
    rst RST_38

jr_036_678d:
    pop af
    or $f9
    or $f9
    ld b, $f9
    inc b
    rst RST_20
    ei
    inc b
    ei
    ld e, [hl]
    ld sp, $4172
    ld a, [$07fd]
    ld sp, hl
    ld hl, sp-$10
    ld sp, $315e
    db $fd
    di
    push af
    ei
    xor $1f
    pop af
    ld c, $f1
    ld b, $f9
    sub b
    ld hl, $414e
    ld e, [hl]
    ld bc, $81fc
    inc hl
    ld e, [hl]
    ld sp, $9f6e
    ld l, l
    sbc [hl]
    jp hl


    sbc [hl]
    cp a
    ld h, e
    sbc h
    ld h, a
    sbc b
    rst RST_28
    db $10
    ld e, [hl]
    ld sp, $ffed
    ld e, [hl]
    rst RST_38
    ld c, d
    cp $0b
    ei
    dec c
    cp a
    rst RST_38
    ld c, l
    rst RST_38
    ld c, l
    db $eb
    ld e, l
    rst RST_38
    add hl, de
    rla
    ld a, a
    dec bc
    dec d
    dec bc
    ld e, $0d
    rra
    inc b
    sub $41
    rst RST_38
    ld e, $09
    inc e
    inc bc
    db $fd
    or [hl]
    db $fd
    or [hl]
    rst RST_38
    ld a, e
    call nc, Call_036_54fb
    di
    ld e, h
    cp e
    call c, $fbff
    sbc h
    db $db
    or h
    jr jr_036_6820

    dec sp
    inc a
    rst RST_38
    dec a
    ld a, $36
    ccf
    inc sp
    ccf
    ld sp, $ef3f
    ld [hl-], a
    dec a
    daa
    jr c, @-$54

    ld b, c
    ld hl, sp+$1f
    cp $ff
    inc bc
    ld a, a
    add b
    cp a
    ret nz

    ld c, a
    ldh a, [$ffb7]
    ei

jr_036_6820:
    ld a, b
    ld bc, $10d3
    cp $01
    nop
    rst RST_38
    jp $b072


    inc hl
    jr nz, jr_036_686c

    ld de, $003d
    rst RST_38
    jp $ae3c


    ld [hl-], a
    ld a, a
    ld [$ffe0], sp
    add a
    ld hl, sp+$3e
    pop bc
    call nc, $bf21
    sbc a
    ld h, b
    db $eb
    inc e
    rst RST_30
    rrca
    xor d
    ld b, c
    ccf
    rst RST_38
    ret nz

    ld sp, hl
    ld l, $fe
    rlca
    cp $03
    rst RST_38
    rst RST_38
    ld bc, $807f
    nop
    rst RST_38
    ret nz

    ccf
    pop af
    rst RST_38
    ld c, $ff
    nop
    add b
    ld a, a
    ld a, c
    rst RST_38
    ld b, c
    ld e, [hl]
    dec h
    stop
    rst RST_38
    ld a, [hl]
    add c

jr_036_686c:
    ret nc

    inc hl
    cp a
    ld l, c
    ld d, b
    db $db
    cp [hl]
    pop bc
    ld sp, $b001
    ld c, a
    sub [hl]
    ld hl, $30cf
    ei
    cp a
    ret nz

    ld c, [hl]
    ld d, c
    ld bc, $3ffe
    ret nz

    ei
    rst RST_38
    rlca
    ld sp, hl
    ld e, $cf
    jr nc, jr_036_686c

    ld h, b
    rst RST_38
    rst RST_38
    nop
    inc c
    db $fc
    jp c, Jump_036_6a3e

    or $ba
    rst RST_38
    add $ea
    ld [hl], $ea
    ld [hl], $da
    ld h, [hl]
    ld a, [de]
    rst RST_38
    and $df
    add hl, sp
    rst RST_38
    inc sp
    cp e
    halt
    or a
    rst RST_38
    ld l, [hl]
    rst RST_38
    ld l, h
    rst RST_28
    ld e, l
    rst RST_38
    ld e, l
    db $fd
    rst RST_38
    dec de
    dec de
    ld b, $27
    inc e
    ld l, $19
    ld l, $ff
    ld de, $172a
    cpl
    inc e
    inc l
    inc de
    scf
    rst RST_38
    rrca
    ei
    inc [hl]
    cp e
    ld h, h
    ld [hl], e
    call z, $ff73
    call z, $9ceb
    cp e
    ld a, h
    ei
    call nc, $fffb
    or h
    daa
    jr c, jr_036_6903

    jr c, jr_036_6904

    add hl, sp
    daa
    db $fd
    add hl, sp
    ret nc

    ld d, c
    ld b, e
    ld a, h
    ld b, e
    ld a, h
    add $39
    rst RST_38
    db $fc
    rlca
    cp $07
    ld a, [hl]
    add a
    cp $87
    ei
    ld a, h
    add a
    ld [$4050], sp
    sbc $31
    db $ec
    rra
    db $dd
    rst RST_38
    db $e3
    ld d, b
    cp $07

jr_036_6903:
    db $fc

jr_036_6904:
    sub a
    ld [hl+], a
    ld sp, hl
    ld b, $fd
    rst RST_38
    rst RST_30
    nop
    rst RST_38
    ldh [$ffdf], a
    jr nc, @+$01

    ld [$fbff], sp
    inc b
    cp $03
    ld hl, sp+$07
    sbc a
    ldh [$ff8f], a
    di

jr_036_691d:
    ld a, h
    db $fd
    ld c, $4a
    ld d, c
    xor [hl]
    jr nz, jr_036_692e

    ld d, b
    ld e, a
    rst RST_38
    ldh [$ffbf], a
    ld h, b
    rst RST_18
    jr nc, jr_036_691d

jr_036_692e:
    jr jr_036_69a1

    cp a
    adc [hl]
    cp h
    ld b, e
    db $e4
    ld e, e
    ld h, a
    ld e, e
    ld d, b
    xor c
    rst RST_38
    ld a, a
    and l
    ld a, a
    or c
    ld a, a
    adc b
    ld a, a
    adc h
    rst RST_38
    ld a, a
    xor h
    ld a, a
    cp l
    add $b3
    call z, $ffaf
    ret c

    ld [hl], a
    sbc b
    ld c, a
    or b
    ld e, a
    and b
    rra
    rst RST_38
    ldh [$ff5f], a
    ldh [$fffe], a
    ld bc, $1fe0
    ld a, [$f5dc]
    ld d, d
    db $db
    ld [de], a
    nop
    ld a, [$6006]
    ld h, l
    jp c, $ff26

    jp c, $fa66

    ld b, [hl]
    rst RST_38
    dec de
    rst RST_38
    dec de
    rst RST_38
    cp $1b
    rst RST_38
    ld a, [de]
    rst RST_38
    ld a, [de]
    cp $5b
    rst RST_38
    rst RST_28
    ld e, e
    rst RST_38
    ld c, e
    ld a, $1f
    ccf
    ld e, $f7
    ld a, $1d
    ccf
    add l
    ld h, b
    ld e, e
    dec a
    ld c, l
    dec sp
    rst RST_38
    ld l, a
    dec de
    ld [hl], e
    db $ec
    ei
    ld l, h
    ld l, e
    call c, $fb9d
    db $eb
    ld b, b
    sub $b8
    or $9b
    ld h, b

jr_036_69a1:
    call c, Call_036_4751
    rst RST_38
    ld a, b
    ld b, a
    ld a, b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld b, b
    rst RST_38
    ld a, a
    ld b, e
    ld a, h
    cp a
    ld b, b
    sbc a
    ldh [$ffef], a
    db $db
    ld [hl], b
    rst RST_38
    dec de
    ld b, b
    rra
    ldh [$ffd4], a
    inc hl
    inc e
    rst RST_28
    and $30
    ld bc, $1ffc
    ld [bc], a
    ld h, d
    ld e, b
    ld b, b
    rst RST_38
    nop
    ld c, a
    rst RST_38
    ldh a, [$fffb]
    inc e
    ld a, $c7
    rst RST_18
    ld h, c
    rst RST_28
    rst RST_38
    ld sp, $19f7
    rst RST_38
    add b
    add a
    ld a, b
    ei
    db $fd
    inc a
    ld d, $60
    rlca
    ld a, [hl]
    add e
    ld a, [hl]
    add c
    ld a, a
    rst RST_38
    add b
    sub $69
    jp c, $ed65

    ld [hl-], a
    add sp, -$01
    scf
    ldh [$ff1f], a
    add b
    ld a, a
    ccf
    cp $7e
    rst RST_28
    pop hl
    inc h
    rst RST_38
    ld h, h
    call c, $0f20
    rst RST_38
    or e
    rst RST_38
    rst RST_38
    db $10
    rst RST_38
    dec d
    rst RST_38
    add hl, bc
    rst RST_38
    ld e, a
    rst RST_38
    ldh [$ff3e], a
    pop bc
    cp c
    rst RST_00
    rst RST_20
    sbc h
    ld e, a
    db $eb
    or b
    ccf
    ld a, l
    ld d, b
    ld [hl], $cd
    jr nc, @+$21

    ldh [$ffef], a
    rst RST_30
    ldh a, [$fffc]
    rrca
    jr nc, jr_036_6a2b

    ld c, a
    or b
    rst RST_38

jr_036_6a2b:
    ld bc, $fc7f
    rlca
    di
    inc c
    ld a, a
    add b
    or c
    cpl
    inc b
    rst RST_38
    or d
    adc $62
    sbc [hl]
    ldh [c], a
    ld e, $c2

Jump_036_6a3e:
    ld a, $fc
    ld b, [hl]
    ld [hl], l
    ldh [c], a
    ld sp, $6dfe
    rst RST_18
    ld l, h
    rst RST_38
    ld c, h
    rst RST_38
    ld [$df1d], a
    add hl, sp
    cp l
    ld a, e
    ld a, a
    dec bc
    rst RST_18
    ld a, a
    dec hl
    ld a, a
    dec hl
    ld a, l
    ld h, l
    ld [hl], b
    halt
    dec l
    cp a
    ld a, a
    ld [hl-], a
    ld a, [hl]
    inc sp
    or $b8
    sbc d
    ld h, b
    ret c

    rst RST_38
    and $d8
    or $e8
    or $f8
    or [hl]
    ld a, b
    or c
    halt
    sbc a
    ld h, b
    and h
    ld h, l
    xor b
    ld h, c
    ld c, [hl]
    ld [hl], c
    ld [hl], $00
    rlca
    rst RST_28
    adc [hl]
    ld [hl], a
    or $0f
    ld hl, sp+$51
    rst RST_28
    db $10
    rra
    ld hl, sp+$4f
    ld h, b
    ldh [c], a
    ld d, c
    or $57
    ei
    dec e
    db $fd
    ld b, $fd
    ld sp, hl
    ld [bc], a
    or $01
    ld [hl-], a
    inc bc
    ld a, h
    add e
    ld a, d
    add a
    cp e
    rst RST_38
    rst RST_00
    sbc e
    rst RST_20
    ld e, b
    rst RST_20
    and c
    ld a, a
    ret


    rst RST_38
    ccf
    jr @+$01

    cp $c1
    cp $c1
    sbc $fb
    and c
    ldh [$ff29], a
    ld b, b
    cp [hl]
    pop bc
    add [hl]
    rst RST_38
    ldh [c], a
    rst RST_38
    rst RST_38
    inc l
    rst RST_38
    add l
    rst RST_38
    ld l, l
    rst RST_38
    or b
    rst RST_38
    rst RST_38
    cp b
    rst RST_38
    call c, Call_000_0eff
    rst RST_38
    ld c, [hl]
    rst RST_18
    rst RST_38
    rst RST_08
    ldh a, [$ff3f]
    ret nz

    ld l, b
    ld d, c
    add a
    cp $3f
    cp c
    rst RST_00
    cp [hl]
    pop bc
    cp a
    ret nz

    ld de, $0480
    add hl, sp
    cp $e0
    ld a, [$fefe]
    inc b
    rst RST_38
    ld [bc], a
    cp $e0
    ld a, [$fefe]
    rst RST_38
    rst RST_38
    db $d3
    jp nz, $f2f2

    ld a, [$f204]
    inc bc
    cp e
    xor $ff
    rst RST_18
    db $fd
    cp e
    rst RST_28
    cp $7b
    ld a, [hl]
    ld a, a
    or a
    cp a
    xor a
    or a
    rst RST_38
    sub $a6
    or $d6
    halt
    and $f6
    db $ec
    adc h
    adc b
    add c
    add e
    adc a
    adc a
    sbc [hl]
    sub b

jr_036_6b18:
    ld h, c
    ld e, $ff
    rst RST_38
    add e
    rra
    ld a, a
    rst RST_38
    rst RST_38
    rra
    pop af
    cp $04
    rst RST_38
    inc bc
    ldh a, [$ffe7]
    xor $1d
    sbc b
    or a
    or l
    or e
    jr nc, jr_036_6b18

    push af
    add c
    add hl, bc
    jp nz, $f0e0

    cp c
    inc e
    and a
    sub e
    add sp, -$0d
    dec de
    inc bc
    add [hl]
    sub d
    ld d, b
    and b
    ld [$51ac], sp
    and l
    rst RST_18
    ldh a, [rDIV]
    rst RST_18
    dec b
    rst RST_38
    ld a, a
    rrca
    ldh a, [rDIV]
    rst RST_38
    inc bc
    cp $ff
    rst RST_38
    ld c, $04
    rst RST_38
    inc bc
    ld [hl], d
    sub d
    adc d
    add d
    jp nz, $f2e2

    ldh a, [c]
    rst RST_38
    cp $ef
    rst RST_10
    ei
    cp l
    rst RST_38
    rst RST_20
    rst RST_38
    rst RST_28
    rst RST_38
    rst RST_30
    rst RST_38
    rst RST_18
    rst RST_30
    rst RST_38
    db $ec
    xor h
    db $ec
    db $ec
    xor h
    inc b
    db $ec
    ld [bc], a
    inc b
    sbc a
    inc bc
    sbc l
    adc [hl]
    or c
    ld c, a
    cp $fc
    xor $6e
    sbc [hl]
    ld a, h
    rst RST_38
    rst RST_38
    or c
    or b
    ret z

    db $ec
    inc b
    rst RST_38
    ld [bc], a
    cp $e0
    add e
    rrca
    ld a, a
    rst RST_38
    rst RST_08
    cp a
    ld a, a
    pop hl
    xor c
    db $dd
    ld a, [hl]
    inc b
    cp a
    inc bc
    pop bc
    pop af
    ret nc

    ld bc, $0483
    rst RST_38
    ld [bc], a
    ld e, a
    ccf
    cp a
    rst RST_18
    rst RST_28
    inc b
    rst RST_30
    ld [bc], a
    inc b
    ldh a, [c]
    inc bc
    ld [hl], d
    and d
    jp c, $bee4

    rst RST_18
    rst RST_28
    rst RST_38
    sbc a
    rst RST_28
    rst RST_30
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_18
    rst RST_38
    rst RST_18
    db $ed
    cp a
    rst RST_38
    rst RST_38
    bit 6, [hl]
    db $dd
    scf
    db $eb
    ld a, [hl]
    rst RST_38
    rst RST_38
    rst RST_30
    push af
    push af
    ldh [$ffe0], a
    db $e4
    and $04
    rst RST_38
    ld [bc], a
    inc b
    rst RST_30
    inc bc
    ld h, a
    rst RST_38
    or a
    or e
    cp e
    db $fd
    cp l
    cp l
    ld a, l
    rst RST_38
    db $fc
    cp [hl]
    scf
    inc b
    ld [hl], a
    ld [bc], a
    rst RST_30
    rst RST_38
    ei
    ei
    ld [hl], l
    or b
    cp b
    cp b
    cp $ff
    ld l, a
    ld c, a
    rrca
    rra
    rra
    scf
    ld h, [hl]
    rst RST_38
    xor $ec
    db $fd
    rst RST_18
    rst RST_38
    db $fd
    ei
    rst RST_38
    rst RST_38
    cp $fd
    db $dd
    inc b
    rst RST_18
    ld [bc], a
    rst RST_38
    ld [hl], a
    di
    ei
    rst RST_30
    inc b
    rst RST_38
    inc bc
    rst RST_08
    rst RST_38
    dec sp
    di
    ld d, e
    inc hl
    inc hl
    rst RST_38
    rst RST_30
    db $fd
    rst RST_38
    sub a
    db $db
    call $ffff
    ei
    ei
    rst RST_28
    db $ec
    inc b
    rst RST_38
    ld [bc], a
    or l
    di
    di
    ld a, [de]
    ld e, $9c
    call z, Call_036_66ff
    ld h, [hl]
    add $0e
    dec c
    rra
    ccf
    rst RST_38
    or $e0
    db $e4
    inc b
    ldh a, [rSC]
    di
    rst RST_38
    inc bc
    dec bc
    nop
    ld a, [de]
    ccf
    dec a
    rst RST_38
    rst RST_38
    scf
    ld b, b
    scf
    pop bc
    or $81
    rst RST_30
    rst RST_38
    db $ec
    adc e
    adc a
    xor a
    sbc [hl]
    ret c

    rst RST_18
    rst RST_38
    ld d, b
    xor d
    adc b
    ld c, b
    ret z

    db $10
    rst RST_18
    rst RST_38
    ld a, [hl]
    ld h, e
    db $ed
    ld l, l
    ld l, l
    add e
    ld e, a
    rst RST_38
    ldh a, [$ff94]
    ld h, a
    ld l, b
    ld h, a
    sub a
    rst RST_30
    rst RST_38
    scf
    ld [hl], $e6
    push af
    or a
    rst RST_10
    sub a
    rst RST_38
    ccf
    ld a, c
    reti


    db $e3
    inc b
    rst RST_38
    inc bc
    rlca
    rra
    rra
    sbc a
    inc b
    cp a
    ld [bc], a
    rst RST_38
    ld l, l
    ld l, a
    ld l, $0e
    inc c
    sbc h
    inc b
    rst RST_38
    inc bc
    pop af
    ld bc, $1f07
    rst RST_38
    rst RST_38
    ld bc, $041f
    rlca
    ld [bc], a
    rra
    ret nz

    nop
    ld bc, $041f
    rlca
    ld [bc], a
    rra
    nop
    rst RST_28
    ld a, $0e
    ld c, $06
    inc b
    ld c, $02
    adc [hl]
    ld [hl], a
    ld [hl], a
    ld l, [hl]
    ld l, l
    ld e, e
    ld d, a
    ld [hl], $25
    scf
    daa
    ld h, $6e
    ld c, [hl]
    ld e, a
    ld e, a
    scf
    cp b
    ret c

    ret z

    add sp, -$18
    ld a, b
    ld a, b
    ld [hl], b
    di
    rst RST_30
    cp $fc
    ldh a, [$fff0]
    pop hl
    rst RST_28
    cp a
    pop hl
    nop
    nop
    ld a, h
    ldh [$ff80], a
    nop
    ret nz

    db $fc
    rrca
    ld bc, $0004
    inc bc
    rrca
    rra
    rst RST_18
    rst RST_38
    inc b
    ld a, a
    inc bc
    inc b
    rst RST_38
    rla
    ldh [rIE], a
    rst RST_28
    inc b
    ldh [rDIV], a
    nop
    add b
    ldh a, [rIE]
    ld bc, $0004
    ld [bc], a
    ld bc, $0000
    rst RST_38
    ret nz

    inc b
    nop
    ld [bc], a
    adc $6e
    halt
    ld a, [hl]
    ld a, $1e
    ld c, $0e
    dec h
    dec h
    ld [hl], $3b
    dec e
    ld c, [hl]
    ld h, a
    jr c, jr_036_6d8a

    ld [hl], a
    ld h, a
    inc b
    ld l, a
    ld [bc], a
    ld c, a
    nop
    ld [hl], b
    ld [hl], b
    or b
    or b
    ret nc

    ret nc

    ldh a, [rNR10]
    inc b
    ldh [$ff03], a
    db $e3
    rst RST_38
    cp $70
    ld bc, $1707
    rst RST_30
    rst RST_20
    add a
    nop
    nop
    ld a, a
    ld a, a
    ccf
    rra
    inc b
    nop
    ld [bc], a
    ld bc, $fcff
    ldh a, [$ff80]
    nop
    jr nc, jr_036_6d80

    add b
    rra
    ld [hl], a
    ld h, e
    pop bc
    inc b
    ret nz

    inc bc
    inc b
    rst RST_38
    ld [bc], a
    cp $7c
    inc b
    nop
    ld [bc], a
    ldh [$ffc0], a
    ret nz

    ld h, b
    jr nc, @+$06

    jr @+$04

    inc b
    ld c, $02
    adc [hl]
    adc $7e
    ld a, $1c
    ld e, a
    ld h, a
    ld [hl], c
    inc e
    ld l, a
    ld [hl], a
    ld a, c
    nop
    nop
    rst RST_38
    ldh [rP1], a
    ccf
    di
    adc $00
    nop
    rst RST_30
    ld sp, hl
    ld a, $cf
    rst RST_30
    ld sp, hl
    nop
    ld a, a
    ld [hl], a
    ld [hl], l
    ld [hl], l
    ld h, b
    ld h, b
    ld h, h
    ld h, [hl]

jr_036_6d80:
    rst RST_38
    rlca
    call c, $d304
    ld [bc], a
    call nc, $ff67
    or [hl]

jr_036_6d8a:
    sub e
    ld a, [bc]
    ld d, h
    inc d
    sub b
    ld a, l
    rst RST_38
    ld hl, sp-$46
    ld bc, $0222
    ld h, d
    add a
    rst RST_38
    db $db
    adc e
    ld d, l
    sub b
    sbc b
    ld [$fffe], sp
    ld l, h
    ld c, e
    inc c
    rra
    rla
    jr nc, jr_036_6e0e

    rst RST_38
    ld l, $ec
    ld h, h
    adc d
    and d
    ld e, l
    db $db
    rst RST_38
    cp $76
    xor b
    inc c
    jp z, $df16

    rst RST_38
    ld [hl], l
    sub c
    jp hl


    push bc
    xor l
    add l
    rst RST_38
    cp $ce
    cp $3a
    ldh a, [c]
    ld d, d
    ld [hl+], a
    ld [hl+], a
    nop
    rrca
    di
    inc e
    rst RST_28
    db $e4
    di
    nop
    nop
    db $fc
    rst RST_30
    rra
    di
    nop
    rst RST_38
    nop
    adc $cc
    call z, $e1e5
    ld h, e
    inc sp
    nop
    inc b
    ld sp, hl
    ld [bc], a
    pop af
    ldh a, [c]
    ldh [$ffc0], a
    nop
    halt
    ld h, b
    ld h, h
    inc b
    ld [hl], b
    ld [bc], a
    ld [hl], e
    nop
    inc bc
    dec bc
    nop
    ld a, [de]
    ccf
    dec a
    rst RST_38
    nop
    ccf
    ld a, a
    ld a, a
    inc b
    rst RST_38
    inc bc
    nop
    rst RST_28
    adc a
    adc a
    xor a
    sbc a
    rst RST_18
    rst RST_18
    nop
    sbc $fb
    inc b
    reti


    ld [bc], a
    sbc $df

jr_036_6e0e:
    nop
    ld a, [hl]
    ld l, a
    rst RST_38
    ld a, a
    ld a, a
    rst RST_08
    ld e, a
    nop
    ldh a, [$fff4]
    rst RST_30
    rst RST_38
    inc b
    rst RST_30
    ld [bc], a
    nop
    scf
    ld [hl], $e6
    push af
    or a
    rst RST_10
    sub a
    nop
    ccf
    ld a, c
    reti


    db $e3
    inc b
    rst RST_38
    ld [bc], a
    nop
    ld b, $1e
    ld e, $9e
    inc b
    cp [hl]
    ld [bc], a
    nop
    di
    inc b
    pop af
    ld [bc], a
    di
    ld h, e
    nop
    nop
    rst RST_38
    inc b
    cp $02
    ld hl, sp-$20
    nop
    nop
    dec e
    nop
    ld [hl], h
    cp a
    cp $31
    cp $21
    cp $61
    inc b
    inc b
    ldh a, [rIE]
    nop
    nop
    ld [$031c], sp
    db $10
    rrca
    nop
    rst RST_38
    rra
    nop
    inc e
    nop
    dec sp
    nop
    ld [hl], h
    nop
    sbc a
    add sp, $00
    nop
    nop
    rst RST_38
    ld hl, $2000
    ld bc, $f040
    add hl, hl
    ld [bc], a
    jr nz, jr_036_6e7d

    add hl, sp
    dec b
    ld [hl+], a
    dec b
    add b
    nop
    add b

jr_036_6e7d:
    inc c
    rst RST_38
    add b
    inc e
    jr jr_036_6e9b

    db $10
    rla
    nop
    rrca
    rst RST_38
    nop
    ld bc, $fe00
    nop
    dec b
    nop
    inc b
    rst RST_38
    ld bc, $0005
    ld bc, $00fc
    db $fd
    nop
    rst RST_38
    ldh a, [c]

jr_036_6e9b:
    nop
    ld l, h
    nop
    sub b
    ld [bc], a
    ldh [rDIV], a
    cp $2e

jr_036_6ea4:
    nop
    rst RST_38
    nop
    ld a, a
    nop
    ccf
    rra
    rra
    rst RST_38
    inc b
    rra
    inc b
    rrca
    inc b
    rrca
    rlca
    rlca
    rst RST_18
    jr @+$81

jr_036_6eb8:
    jr jr_036_6f39

    db $10
    add e
    inc b
    jr @+$80

    rst RST_38
    add hl, de
    ld a, h
    jr nz, jr_036_6ea4

    ld h, c
    ldh [rSTAT], a
    ret nz

    sbc a
    ld d, c
    ret nz

    dec a
    add b
    ld a, h
    ld e, b
    nop
    inc h
    nop
    add b
    ld [hl], b
    add hl, sp
    ld [$0123], sp
    ld a, [hl+]
    inc bc
    ld a, [hl+]
    nop
    add b
    ld a, a
    nop
    ld [hl], d
    nop
    ld c, $bf
    rlca
    ld bc, $00fe
    ld e, b
    nop
    ld c, c
    ld bc, $04d0
    xor e
    inc bc
    cp c
    inc b
    ldh [rTMA], a
    xor e
    inc bc
    jr jr_036_6ef7

jr_036_6ef7:
    ld [$02f2], sp
    add hl, bc
    rst RST_38
    nop
    sub $08
    dec b
    db $dd
    nop
    ld a, c
    db $fc
    rst RST_38
    add hl, sp
    db $fc
    ld sp, $31f8
    ld hl, sp+$30
    ldh a, [$fffe]
    ld [$d013], sp
    nop
    and b
    ld [$08a0], sp
    ld b, b
    ld l, h
    dec d
    ld de, $02d0
    ld b, b
    rra
    or c
    inc b
    rla
    ld b, b
    ld l, l
    nop
    ld a, [de]
    ld l, $00
    ld a, h
    dec l
    ld [bc], a
    nop
    nop
    dec c
    nop
    add hl, sp
    ld bc, $004a
    db $dd
    inc e
    ld b, d
    db $10
    jr jr_036_6eb8

    db $10

jr_036_6f39:
    ld c, b
    inc de
    dec b
    ld bc, $05f3
    ld sp, $1050
    ld d, l
    ld d, $40
    rra
    ld h, b
    nop
    db $fd
    jr nz, @+$65

    ld de, $3007
    inc b
    stop
    db $10
    rst RST_38
    nop
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    inc bc
    or a
    inc bc
    nop
    pop bc
    ld d, [hl]
    nop
    ld bc, $7200
    db $10
    dec de
    rst RST_28
    ld a, b
    rla
    ld [hl], b
    scf
    add l
    db $10
    ld [hl], e
    ld [hl], b
    ld h, b
    ld hl, sp-$74
    db $10
    ld hl, $2202
    nop
    inc bc
    db $fc
    ld [$e0f0], sp
    rst RST_30
    rlca
    add b
    rra
    ld e, b
    nop
    cp $3c
    pop bc
    cp l
    db $e3
    inc a
    pop bc
    add hl, sp
    ld bc, $019c
    ld [hl+], a
    nop
    ld a, a
    nop
    ld a, a
    db $fc
    cp e
    nop
    ld [hl], c
    ld bc, $801f
    nop
    db $fd
    ld a, b
    add l
    sbc a
    db $fc
    ld a, b
    ld h, d
    ld h, b
    nop
    ld h, e
    nop
    jp z, Jump_000_0011

    ld a, a
    rst RST_38
    ldh a, [rIF]
    rst RST_38
    ldh a, [$ff37]
    scf
    jr nz, @+$05

    add $ab
    ld bc, $f807
    ld [hl+], a
    nop
    xor e
    ld [bc], a
    ld [hl+], a
    ld bc, $a01b
    rst RST_38
    cp e
    nop
    dec de
    ld b, b
    ld e, a
    dec de
    ld b, b
    nop
    rst RST_30
    cp e
    inc bc
    cp b
    ld sp, hl
    stop
    db $10
    rrca
    cpl
    rst RST_28
    nop
    ld e, b
    nop
    or a
    ld d, h
    nop
    rst RST_38
    nop
    rra
    sbc l
    ldh [$ff36], a
    ld de, $0ff0
    rrca
    jr c, @+$12

    sub c
    inc de
    rrca
    cp $72
    nop
    inc e
    nop
    ret nz

    nop
    inc a
    ret nz

    nop
    rst RST_38
    db $fc
    ld bc, $02f8
    ld hl, sp+$02
    ld bc, $ffff
    ld bc, $017f
    cp a
    add hl, de
    and a
    add hl, de
    rrca
    rst RST_38
    ld de, $011f
    rst RST_08
    nop
    add b
    ld c, a
    nop
    rst RST_38
    ld e, [hl]
    jr @+$1f

    inc a
    add hl, de
    jr c, jr_036_7058

    ld b, b
    ccf
    ld e, e
    ld b, b
    ld d, a
    ld b, b
    ld h, a
    ld h, b
    ld [hl], d
    nop
    pop hl
    db $10
    ld [hl], a
    sbc a
    ld h, b
    db $fc
    jr c, jr_036_7037

    db $e3
    nop
    rst RST_08
    jr nz, @+$04

    ei
    ld hl, sp+$07
    dec e
    ld hl, $0003
    pop hl
    nop
    db $fc
    rst RST_38

jr_036_7037:
    nop
    rrca
    ldh [rTAC], a
    ldh a, [$ff03]
    ld hl, sp+$03
    rst RST_38
    ld hl, sp-$7f
    ld a, h
    pop bc
    inc a
    pop hl
    inc e
    ldh a, [rSB]
    ld c, $ca
    inc de
    add b
    daa
    sub c
    inc d
    sub l
    cpl
    sub b
    inc d
    db $fc
    db $10
    or c
    ld [hl+], a

jr_036_7058:
    rst RST_38
    ld a, [de]
    ld b, b
    ld e, d
    nop
    ld e, b
    ld bc, $03b8
    cp $bd
    db $10

jr_036_7064:
    ccf
    rlca
    ld a, b
    rrca
    ld [hl], b
    ld e, $e0
    rst RST_18
    jr c, @-$3e

    ld [hl], b
    add b
    ld h, e
    reti


    ld bc, $feff
    db $fd
    ld bc, $2366
    ret nz

    nop
    ld hl, sp+$00
    ld bc, $ffe5
    nop
    push af
    nop
    ld hl, sp-$7f
    ld a, c
    ret nz

    dec a
    db $fd
    ldh [$ff7d], a
    jr nz, @+$7c

    inc b
    dec e
    add c
    inc e
    ld b, b
    rst RST_38
    sbc b
    add b
    inc d
    add h
    ld [de], a
    ld b, d
    add d
    add d
    rst RST_08
    ld [de], a
    sub d
    ld a, [bc]
    ld a, [de]
    sub c
    inc d
    inc h
    nop
    cp $fe
    rrca
    nop
    ld bc, $e7e0
    rla
    inc h
    inc h
    nop
    ld a, l
    db $10
    sbc h
    ld bc, $05ff
    ldh [rP1], a
    reti


    add hl, de
    or h
    cp l
    inc d
    rst RST_38
    ld a, h
    dec b
    ld [hl], l
    inc b
    dec [hl]
    nop
    sbc b
    ld bc, $4fff
    add c
    adc a
    ld bc, $018f
    ld e, a

jr_036_70cd:
    add c
    rst RST_38
    adc a
    ld de, $1987
    ld b, e
    sbc c
    add e
    scf
    ei
    ld [hl], b
    rlca
    ld b, c
    jr nc, jr_036_7064

    or b
    rst RST_08
    ret nz

    rst RST_28
    rst RST_38

jr_036_70e2:
    ldh [$ffc7], a
    ret nz

    add b
    add b
    sbc h
    nop
    sub b
    rst RST_38
    ld bc, $0620
    ld hl, $4109
    dec bc
    ld b, e
    rst RST_38
    rla
    inc bc
    rla
    ld bc, $0e17
    nop
    ld [bc], a
    rst RST_38
    ldh [rSB], a
    jr jr_036_70e2

    db $e4
    ldh a, [$fff4]
    ldh a, [rIE]
    ld a, [$fae0]
    add b
    jp c, $0e70

    jr nc, @+$01

    ld c, $30
    rrca
    jr c, @+$09

    sbc b
    ld b, $98
    rrca
    dec b
    adc h
    ld bc, $cd8d
    ld de, $0139
    ld d, c
    jr nz, jr_036_7126

    inc sp
    ldh a, [$ff38]

jr_036_7126:
    inc b
    nop
    ld [hl], $90
    jr c, jr_036_70cd

    db $10
    db $fd
    nop
    and b
    rlca
    ld l, a
    ld bc, $030e
    inc e
    call nz, Call_000_3f21
    ret nz

    ld [hl+], a
    ld bc, $ceff
    nop
    ret c

    nop
    sub b
    inc bc
    or b
    inc b
    rst RST_38
    jr nz, jr_036_714d

    ld hl, $010b
    dec bc
    nop

jr_036_714d:
    dec bc
    rst RST_38
    ld b, $00
    ld bc, $00f0
    inc c
    ldh a, [$fff2]
    rst RST_38
    ld hl, sp-$06
    ld hl, sp-$03
    ldh a, [$fffd]
    ret nz

    db $ed
    rst RST_38
    ld a, $00
    cp [hl]
    nop
    sbc l
    ld bc, $03d8
    rst RST_38
    ld c, b
    inc bc
    ld c, h
    ld bc, $0040
    ld h, b
    nop
    rst RST_38
    ld a, [bc]
    ld a, [de]
    ld l, b
    ld a, d
    ret


    reti


    ld [$72d8], sp
    dec e
    nop
    ret nz

    inc a
    inc de
    add hl, sp
    inc b
    add b
    nop
    ldh [rNR42], a
    ld [bc], a
    rst RST_00
    rla
    nop
    dec bc
    ldh a, [c]
    nop
    ret nc

jr_036_718f:
    jr nc, jr_036_71ca

    ld bc, $e0e0
    sub a
    nop
    adc d
    ld bc, $01e1
    jr jr_036_71a6

    ld b, b
    add hl, sp
    inc bc
    dec bc
    ld hl, sp+$5a
    ld bc, $1072
    add hl, sp

jr_036_71a6:
    dec b
    push bc
    nop
    add d
    nop
    ld [bc], a
    rlc b
    inc c
    jr c, jr_036_71c6

    ld h, b
    ld a, [$3933]
    inc b
    rra
    rra
    ret nz

    rst RST_00
    ld bc, $0056
    ld [hl], e

jr_036_71be:
    db $10
    ld [hl], b
    db $10
    add a
    ld sp, $10a1
    ld [bc], a

jr_036_71c6:
    db $fc
    rst RST_38
    inc c
    pop af

jr_036_71ca:
    jr nc, jr_036_718f

    ret nz

    rrca
    nop
    ccf
    ld a, d
    sbc l
    cpl
    ld bc, $4273
    db $10
    db $e3
    ld h, b
    adc a
    sbc [hl]
    db $10
    halt
    ld d, c
    jr nz, jr_036_71e4

    ld a, c
    and b
    ld b, b
    ld sp, hl

jr_036_71e4:
    ld [$a6f3], sp
    ld b, a
    db $db
    db $10
    rst RST_20
    or d
    ld b, a
    jr nz, jr_036_71be

    cp [hl]
    ld b, a
    ld b, b
    sbc a
    sub $ca
    ld b, c
    ld c, d
    inc a
    ret nc

    ld b, d
    dec a
    ret nc

    ld c, l
    ld l, d
    inc e
    rst RST_38
    sbc l
    ld a, [hl]
    ld a, [hl]
    nop
    ld c, d
    dec a
    ret nz

    ld a, a
    sbc $f0
    ld b, c
    ld a, a
    rst RST_38
    add h
    ld a, a
    ld hl, sp+$41
    ld a, a
    rst RST_38
    db $dd
    ld b, b
    rst RST_38
    ld b, d

jr_036_7217:
    rst RST_38
    rst RST_38
    inc b
    rlca
    ld d, d
    rst RST_38
    rst RST_38
    ld a, e
    ld b, d
    db $fc
    db $10
    ld d, c
    db $fd
    cp $06
    db $fc
    jr jr_036_727a

    rst RST_30
    db $fd
    cp $01
    rra
    ld d, b
    cp $3c
    cp $18
    db $eb
    cp $08
    jr z, jr_036_7288

    inc e
    ld c, [hl]
    ld b, b
    rra
    ld b, b
    ccf
    ccf
    ccf
    rlca
    ccf
    inc bc
    ccf
    ld bc, $5038
    scf
    ld b, b
    rst RST_18
    ld h, a
    inc h
    ld [hl], a
    inc d
    ld [hl], a
    adc d
    nop
    ld a, a
    ld [$48fe], sp
    ld d, d
    nop
    adc $49
    xor $2d
    cp $19
    rst RST_38
    cp $19
    adc $09
    add [hl]
    ld h, c
    add $31
    ld [hl], e
    xor $19
    or h
    db $10
    ld [hl], d
    nop
    ld [hl], a
    nop
    ld [hl], a
    ld c, l
    ld d, b
    or $be
    ld bc, $09fe
    ld [hl], b
    ld d, [hl]
    add hl, de

jr_036_727a:
    cp $79
    ld bc, $00ff
    ld c, l
    ld c, l
    ld e, a
    ld d, a
    ld a, a
    inc sp
    ld a, a
    rst RST_18
    ld [hl-], a

jr_036_7288:
    ld a, a
    jr nc, @+$81

    jr nz, jr_036_7217

    ld d, b
    nop
    or $df
    dec d
    and $25
    or $31
    ld d, h
    ld d, c
    cp $09
    rst RST_28
    db $fd
    ld a, [bc]
    cp $09
    ld h, b
    ld d, c
    rra
    nop
    rrca
    rra
    ld b, b
    rrca
    ret nz

    rra
    ld h, b
    ld l, h
    ld d, h
    sub a
    ld d, d
    ld d, h
    ld d, b
    rst RST_38
    dec e
    cp $7d
    ld bc, $1f00
    db $10
    ccf
    rst RST_18
    jr nz, jr_036_733b

    ld h, b
    ld a, a
    ld b, b
    add $55
    adc $49
    ld d, h
    nop
    nop
    db $d3
    ld d, e
    ld de, $50da
    ld sp, $52c6
    ld h, b
    db $e4
    ld d, d
    rst RST_20
    ld [hl], b
    ld a, a
    ld a, b
    call z, Boot
    inc c
    ld b, c
    ld b, c
    ld l, e
    ld e, a
    ld a, [hl+]
    ld l, a
    ld h, $7f
    ld [hl], $86
    ld d, b
    ld [de], a
    ld a, [bc]
    ld h, b
    rst RST_30
    ld a, [de]
    and $25
    sub d
    ld d, b
    ld [hl], l
    or $55
    cp $b7
    ld e, l
    cp $4d
    ld a, [de]
    ld h, c
    ld a, a
    ld a, [de]
    jr nz, jr_036_735b

    ld a, [bc]
    xor [hl]
    inc h
    ld h, d
    ld a, [de]
    ld a, a
    ccf
    call z, Call_036_4900
    jr nc, jr_036_736d

    reti


    xor a
    cp $d9
    ld bc, $4800
    ld d, h
    ld [$0081], sp
    inc e
    rst RST_38
    ld a, a
    ld a, $00
    nop
    adc $01
    adc $21
    call nc, Call_036_55d8
    ld a, h
    ld e, d
    ld [hl-], a
    adc d
    ld d, d
    jr nz, @-$6e

    ld d, a
    add $01
    rst RST_38
    add c
    ld a, [hl-]
    ld [bc], a
    ld a, c
    ld [hl], b
    ld [hl], b
    ld a, b
    jr nc, @+$01

    ld a, c
    inc [hl]
    ld a, c
    inc h
    ld a, c
    ld h, $7d
    ld [hl+], a

jr_036_733b:
    cp [hl]
    adc b
    ld d, b

jr_036_733e:
    jr nc, jr_036_733e

    dec a
    cp $2d
    sub d
    ld h, b
    dec d
    sub b
    sub [hl]
    ld h, l
    adc b
    ld d, b
    adc b
    ld [bc], a
    and [hl]
    ld h, d
    inc a
    call z, $9700
    ld h, [hl]
    cp $77
    dec c
    cp $3f
    ld a, $60

jr_036_735b:
    rlca
    ld a, a
    inc bc
    jp nz, $ff60

    ld b, $9f
    ld b, $3f
    call nz, Call_000_0c7f
    ld a, a
    rst RST_38
    inc c
    cp $3f

jr_036_736d:
    cp $1f
    cp $0f
    cp $b1
    dec b
    cp d
    ld h, b
    reti


    ld h, d
    call z, Call_036_7f61
    inc b
    db $e4
    ld h, d
    ld c, $cb
    ld a, a
    rrca
    call z, $0d00
    sub $60
    di
    ld h, e
    dec c
    cp $a1
    sbc a
    ld a, $60
    jp $c361


    ld h, c
    ld [hl-], a
    jr nz, jr_036_7414

    dec bc
    ld [hl], b
    cp $f9
    adc l
    db $10
    ld [hl], b
    di
    ld h, b
    ld a, $05
    ld e, $05
    ld c, $f7
    push bc
    ld c, $c5
    ld [$7f71], sp
    ld bc, $0367
    rst RST_38
    ld h, e
    inc de
    ld b, e
    dec sp
    ld l, a
    rla
    nop
    nop
    rst RST_08
    ld e, $e5
    cp $85
    ld [hl-], a
    ld [hl], d
    ld de, $8d71
    ld bc, $0001
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

jr_036_7414:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_036_74ea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_036_7803:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_036_7a30:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_036_7b00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_036_7b6e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_036_7ef0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_036_7f61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
