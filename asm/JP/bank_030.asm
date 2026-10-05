; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

    jr nz, @+$42

    ld [hl], $46
    rst RST_08
    ld b, a
    ld [$b24c], sp
    ld c, [hl]
    rst RST_38
    ld d, e
    xor a
    ld d, l
    sub e
    ld e, b
    sub h
    ld e, b
    db $f4
    ld e, [hl]
    push af
    ld e, [hl]
    and [hl]
    ld h, l
    ld hl, $af69
    ld l, [hl]
    or b
    ld l, [hl]
    ld l, h
    ld [hl], l
    dec e
    nop
    add b
    rst RST_18
    ld [$ffff], sp
    rst RST_38
    add b
    inc bc
    nop
    rst RST_38
    rst RST_38
    pop af
    ld [$0009], sp
    ld [bc], a
    rrca
    inc d
    dec c
    ld a, [bc]
    db $fc
    cp $fe
    or a
    add d
    db $fc
    add d
    ld sp, $0a00
    db $fc
    jr nc, @+$11

    add d
    rst RST_38
    db $fc
    ld a, [hl]
    nop
    adc b
    or [hl]
    ld c, b
    sub $2e
    rst RST_38
    ldh [rNR10], a
    halt
    ld [$043a], sp
    inc e
    ld [bc], a
    rst RST_38
    ld c, $5f
    ccf
    jr z, jr_030_407b

    jr z, jr_030_407d

    ld e, a
    adc a
    ccf
    jr nz, jr_030_4082

    jr nz, jr_030_40ca

    nop
    ld h, d
    rrca
    ld [hl], h
    dec c
    cp $3b
    cp $08
    sub c
    nop
    cp $fe
    add b
    sub a
    nop
    sub b
    rrca
    cp $a2
    rrca
    nop

jr_030_407b:
    rst RST_38
    rst RST_30

jr_030_407d:
    ld [$08f6], sp
    nop
    rst RST_38

jr_030_4082:
    cp $7e
    add b
    ld a, a
    add c
    inc bc
    rst RST_38
    rst RST_30
    rst RST_38
    rrca
    nop
    ld a, [hl]
    halt
    ld [$0836], sp
    nop
    rst RST_38
    ld a, $3e
    nop
    cp $c0
    ldh [$fffe], a
    or $ff
    ld hl, sp-$09
    rrca
    rlca
    rst RST_38
    ld a, a
    add e
    ld a, a
    db $fd
    add c
    ret nz

    ld bc, $08f7
    nop
    rst RST_38
    or $f8
    rst RST_38
    ldh a, [$fffe]
    cp $e0
    cp $c0
    nop
    cp $fd
    or $c3
    ld [bc], a
    nop
    nop
    rrca
    ccf
    nop
    ccf
    rst RST_38
    nop
    nop
    nop
    inc c
    nop
    inc hl
    ccf

jr_030_40ca:
    ld b, b
    rst RST_38
    ld [$0037], sp
    nop
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    add b
    nop
    add b
    ld a, a
    rst RST_38
    nop
    cp a
    ld [$00f7], sp
    nop
    cp $fe
    cp $01
    nop
    rst RST_30
    sbc b
    add b
    ld b, a
    inc e
    ld de, $601f
    adc b
    sub a
    rst RST_38
    ld c, b
    rst RST_10
    cpl
    ldh [rNR10], a
    ld [hl], a
    ld [$fd3b], sp
    dec b
    ld e, l
    nop
    ld [$bf77], sp
    add b
    ld b, b
    rst RST_18
    rst RST_38
    jr nz, @-$0f

    rla

jr_030_4108:
    ld [hl], b
    ld [$043b], sp
    dec e
    rst RST_38
    ld [bc], a
    ld c, $00
    ld a, a
    add b
    cp a
    ld e, a
    ret nz

    cp a
    jr nz, jr_030_4108

    db $10
    ld [hl], a
    dec bc
    jr c, jr_030_416a

    ld de, $ff81
    add a
    ld b, b
    jp $e120


    db $10
    ld [hl], b
    adc b
    rst RST_38
    jr c, @+$46

    sbc h
    ld [hl+], a
    adc $91
    rst RST_20
    ld c, b
    rst RST_38
    di
    inc h
    ld sp, hl
    ld [de], a
    ld a, h
    adc c
    ld a, $44
    rst RST_30
    sbc a
    ld [hl+], a
    rst RST_08
    ld l, [hl]
    ld [de], a
    ld a, c
    ld [de], a
    inc a
    add hl, bc
    rst RST_38
    ld e, $04
    rrca
    ld [hl+], a
    daa
    ld bc, $1033
    rst RST_38
    add hl, sp
    inc h
    inc a
    jr nz, jr_030_41cd

    db $10
    inc a
    ld [$1eff], sp
    call nz, $220f
    rst RST_00
    ld sp, $38c3
    rst RST_30
    pop bc
    nop
    nop
    add b
    ld [de], a
    sbc [hl]
    call nz, $e20f

jr_030_416a:
    rst RST_38
    rlca
    ld bc, $f803
    ld bc, $0000
    jr z, @+$01

    ld [hl], d
    jr jr_030_41a9

    ld [$001a], sp
    ld c, $00
    pop af

jr_030_417d:
    ld [bc], a
    ld b, $10
    ld b, $10
    ld h, b
    dec de
    sub b
    and $48
    ldh a, [c]
    rst RST_38
    jr z, jr_030_417d

    jr @+$74

    adc b
    ld a, [hl-]
    ld b, h
    sbc d
    rst RST_38
    inc h
    jp z, $e294

    ld c, b
    ldh a, [c]
    inc l
    ld [de], a
    rst RST_38
    ld [hl], $08
    inc h
    jr jr_030_41aa

    jr nc, jr_030_41b6

    ld [hl+], a

jr_030_41a3:
    rst RST_38
    inc l
    ld [bc], a
    inc e
    ld [bc], a
    inc a

jr_030_41a9:
    ld [bc], a

jr_030_41aa:
    jr c, jr_030_41b1

    cp a
    jr nc, jr_030_41ba

    jr nz, jr_030_41c8

jr_030_41b1:
    nop
    cpl
    cp d
    inc de
    nop

jr_030_41b6:
    rst RST_38
    nop
    add $38

jr_030_41ba:
    jr jr_030_41a3

    nop
    rst RST_38
    rst RST_20
    pop af
    jr jr_030_41d7

    db $10
    inc d
    ld de, $1006
    ccf

jr_030_41c8:
    ccf
    ld b, b
    ld h, b
    rst RST_18
    ld b, c

jr_030_41cd:
    ld b, b
    ld b, a
    ld b, b
    ld c, a
    add hl, de
    jr nz, jr_030_4222

    ld b, c
    db $fc
    db $10

jr_030_41d7:
    ld [de], a
    inc d
    db $10
    rst RST_38
    nop
    ld hl, sp+$07
    add b
    ld a, a
    ld hl, sp+$14
    ld de, $2522
    dec h
    ld [hl+], a
    rst RST_38
    ld e, h
    ld b, e
    ld e, b
    ld b, a
    add $42
    ld hl, $4f50
    ld c, b
    inc hl
    ld a, [hl-]
    inc hl
    ld d, b
    daa
    jr nz, jr_030_4218

    ccf
    nop
    nop
    ld c, a
    ccf
    jr nc, jr_030_420f

    ld h, [hl]
    inc hl
    add hl, bc
    inc hl
    db $e4
    ld [de], a
    ld [de], a
    ld d, c
    inc hl
    nop
    jr jr_030_4217

    ld [hl+], a
    db $10
    add b

jr_030_420f:
    ld a, a
    ld a, a
    ccf
    nop
    ld a, a
    ld a, [hl+]
    ld b, b
    dec d

jr_030_4217:
    ld b, b

jr_030_4218:
    cp d
    ld de, $2092
    cp $11
    ld de, $a2fc
    add hl, de

jr_030_4222:
    ld b, e
    jr jr_030_4225

jr_030_4225:
    nop
    cp a
    inc bc
    inc bc
    db $fc
    db $fc
    nop
    ld bc, $1022

jr_030_422f:
    and $ff
    db $10
    ld c, d
    jr jr_030_4277

    nop
    nop
    db $fc
    cp $db
    nop
    ld [bc], a
    jr @+$0d

    ld a, a
    ld a, a
    and h
    dec c
    ldh [rIE], a
    rst RST_38
    ret nz

    rst RST_38
    add b
    ldh a, [$ff8f]
    rst RST_28
    sub b
    rst RST_18
    xor $e8
    jr nz, jr_030_422f

    sub c
    db $dd
    dec [hl]
    inc h
    rst RST_38
    nop
    jp Jump_000_3cff


    inc a
    jp Jump_000_3cc3


    inc b
    ld bc, $befe
    nop
    jr nc, jr_030_4273

    pop af
    or $03
    ld a, [$3008]
    ld a, d
    ld [hl], a
    add c
    cp b
    nop
    sub e
    jr nz, jr_030_42f2

jr_030_4273:
    ld a, a
    ld [$3015], sp

jr_030_4277:
    ldh [$ff92], a
    ld hl, $3010
    rst RST_38
    nop
    ld [hl+], a
    ld [de], a
    dec h
    inc sp
    nop
    add l
    pop bc
    rst RST_28
    sbc d
    jp c, $d29a

    inc [hl]
    ld sp, $d199
    add l
    rst RST_38
    pop bc
    adc b
    sub $7e
    ld c, $ff
    inc e
    rst RST_38
    rst RST_38
    jr c, jr_030_4319

    db $10
    inc a
    inc b
    ld c, $0e
    inc e
    ld a, a
    inc e
    jp $86c3


    or [hl]
    ld b, b
    ld d, [hl]
    ld d, d
    inc sp
    cp a
    add [hl]
    or b
    add c
    cp b
    inc bc
    ld a, d
    sbc [hl]
    ld hl, $b73f
    ld a, a
    ld b, b
    ccf
    ld h, [hl]
    inc sp
    nop
    nop
    add sp, $21
    add b
    pop af
    rst RST_28
    db $e4
    jr nz, jr_030_42e0

    nop
    sbc a
    jr nz, jr_030_42c9

jr_030_42c9:
    inc a
    inc a
    nop
    pop af
    jp $2570


    ld [$0821], sp
    ld sp, $f605
    add hl, bc
    ld c, $f7
    pop af
    cp $03
    cp h
    jr nz, jr_030_42df

jr_030_42df:
    nop

jr_030_42e0:
    ld b, b
    ccf
    or $05
    ld de, $2758
    dec b
    ld de, $3f40
    sbc h
    ld h, e
    rst RST_38
    halt
    adc c
    cp $00

jr_030_42f2:
    ld bc, $0201
    ei
    rst RST_38
    push af
    ld b, $0b
    dec c
    sub $1b
    dec l
    or [hl]
    sbc $13
    ld de, $3ec1
    ld h, $d9
    ld [$6321], sp
    sbc h
    ld e, $11
    inc de
    sbc h
    ld h, e

jr_030_430f:
    rlca
    ld hl, sp+$08
    ld hl, $212c
    inc de
    ld de, $0eef

jr_030_4319:
    pop af
    add e
    ld a, h
    ld [$2321], sp
    call c, Call_030_7d00
    rst RST_38
    cp a
    nop
    nop
    inc e
    db $e3
    jp Jump_000_083c


    ld hl, $83bf
    ld a, h
    inc e
    db $e3
    ld h, b
    sbc a
    ld a, [de]
    ld de, $fe00
    di
    jr nc, jr_030_433a

jr_030_433a:
    rst RST_38
    ld h, b
    sbc a
    add c
    ld a, [hl]
    ld bc, $feb7
    inc a
    jp Jump_000_2108


    jr c, jr_030_430f

    dec h
    ld hl, $df97
    ld d, b
    jp nz, Jump_000_313d

    adc $08
    ld hl, $c837
    ld l, h
    ld a, [bc]
    ld b, c
    inc l
    ld hl, $e31c
    ld hl, sp+$33
    ld [hl], c
    adc [hl]
    dec [hl]
    inc hl
    ld a, b

jr_030_4363:
    ld de, $8b10
    ld [hl-], a
    ld b, l
    ld b, e
    jr nz, jr_030_438b

    nop
    rst RST_28
    ld b, h
    ld c, c
    rst RST_38
    nop
    nop
    ld [bc], a
    xor $c4
    sbc $d8
    ld b, $ff
    inc c
    ld a, [hl-]
    adc h
    cp d
    inc d
    ld a, d
    inc d
    ld a, d
    ei
    inc c
    di
    ld [$c021], sp
    ccf
    inc bc
    db $fc
    nop

jr_030_438b:
    rst RST_18

jr_030_438c:
    rst RST_38
    add b
    ld a, a
    ldh a, [rIF]
    ld [de], a
    ld de, $0808
    rst RST_38
    jr c, jr_030_4363

    add [hl]
    ld [hl], c
    nop
    rst RST_38
    ret nz

    ccf
    di
    add hl, sp
    add $22
    inc de
    nop
    jr nz, jr_030_438c

    nop
    cp $60
    cp a
    sbc [hl]
    adc h
    ld [hl], d
    db $e4
    ldh a, [c]
    inc h
    and c
    ld b, h
    and h
    rst RST_18
    ldh a, [c]
    inc h
    ld [hl], d
    inc h
    ldh a, [c]
    ld [$7821], sp
    add a
    ld l, a
    ld b, $f9
    pop bc
    ld a, $18
    ld b, c
    pop af
    ld c, $0c
    inc hl
    ld e, [hl]
    ld b, d
    ld b, a
    and $00
    db $10
    db $10
    ld d, b
    ld b, b
    sbc $ad
    nop
    or $06
    db $10
    cp $fe
    and d
    ld b, l
    ld h, h
    ldh a, [c]
    dec h
    or b
    xor a
    dec h
    ldh a, [rNR43]
    pop af
    ld [$c721], sp
    ld bc, $1020
    ld a, a
    rst RST_28
    pop bc
    ld a, $00
    rst RST_38
    ld a, b
    add a
    cp d
    ld de, $306f
    rst RST_08
    inc bc
    db $fc
    ld [$3121], sp
    adc $1e
    ld de, $0976
    ld hl, $7986
    ld [$9e21], sp
    ld h, c
    ld bc, $1125
    db $ec
    or e
    ld b, b
    adc d
    inc sp
    ld c, $f1
    adc d
    inc sp
    ld bc, $f2fd
    db $fd
    dec bc
    cp b
    ld sp, $9b56
    dec l
    or [hl]
    ld e, d
    ld l, h

jr_030_4421:
    rst RST_38
    or h
    ret c

    ld l, b
    or c
    ret nc

    ld h, c
    and c
    ret nz

    cp a
    ld c, h
    add b
    adc h
    ld hl, $610c
    or $33
    pop hl
    rst RST_18
    ld e, $02
    db $fd
    jr jr_030_4421

    ld a, h

jr_030_443b:
    ld sp, $3fc0
    sbc $08
    ld hl, $39c6
    nop
    rst RST_38
    ld [hl+], a
    ld b, e
    inc e
    db $e3
    ld a, [hl]
    or d
    ld sp, $3bc2
    dec h
    sub $8b
    ld l, l
    cp h
    jr nc, @+$01

    ld [hl], $5a
    ld l, h
    or l
    ret c

    ld l, b
    or b
    pop de
    cp a
    ld h, b
    and b
    pop bc
    ld c, h
    add c
    xor l
    ld [$6410], sp
    rst RST_38
    adc c
    push hl
    ld [$0804], sp
    add h
    ld l, c
    ld h, h
    rst RST_30
    adc c
    inc b
    jp hl


    sub d
    ld d, c
    ld [bc], a
    inc e
    add hl, de
    cp [hl]
    ld a, a
    add hl, de
    cp [hl]
    inc bc
    cp h
    and a
    jr jr_030_44a0

    ld [hl], h
    ld b, b
    ei
    inc b
    jp hl


    ld [$7e40], sp
    dec b
    ld a, c
    ld h, d
    dec de
    adc l
    ld [hl], l
    cp c
    jr nc, jr_030_44a9

    db $db
    ld a, $51
    add d
    ld d, b
    ld b, l
    ld d, h
    adc l
    rst RST_38
    jr nz, jr_030_44aa

    ld h, c
    push bc

jr_030_44a0:
    jr z, jr_030_44a6

    jp hl


    inc b
    rst RST_30
    jp hl


jr_030_44a6:
    push bc
    jr z, jr_030_443b

jr_030_44a9:
    ld d, e

jr_030_44aa:
    inc b
    jp hl


    inc c
    adc c
    rst RST_38
    ld [de], a
    inc e
    nop
    ld b, b
    ld h, c
    ld a, $1e
    ld h, b
    cp a
    ld hl, $217e
    ld a, $00
    add b
    ld b, b
    ld d, b
    reti


    rst RST_38
    ld l, c
    jr nc, jr_030_4515

    ld h, b
    jr nz, jr_030_4509

    ld c, h
    ld bc, $0cff
    ld hl, $006d
    inc b
    jp hl


    ld h, l
    adc b
    db $fc
    sub d
    ld d, c
    ret nc

    ld d, c
    ld h, h
    adc c
    add h
    ld l, c
    ld l, $90
    ccf
    sub b
    ld a, $10
    ld a, $10
    cp [hl]
    ld d, $61
    ld [de], a
    ld h, b
    ld sp, hl
    cp [hl]
    sbc d
    ld d, e
    sbc b
    ld d, c
    inc b
    jp hl


    add h
    ld l, c
    ld b, h
    ld b, c
    xor c
    ld [de], a
    ld h, c
    inc e
    ld h, c
    inc e
    ld h, c
    ld d, $61
    sub d
    ld d, c
    call nz, Call_030_50d1
    rst RST_28
    call nz, Call_030_6529
    adc b
    ld a, [bc]

jr_030_4509:
    ld h, c
    inc b
    ld [$ff73], sp
    add b
    ld b, b
    ld a, a
    jr nz, jr_030_4552

    db $10
    rra

jr_030_4515:
    ld c, b
    rst RST_38
    rrca
    ld h, h
    rlca
    ld [hl], d
    inc bc
    add hl, sp
    ld bc, $ffdc
    nop
    ld l, $c0
    rla
    ldh [$ff0b], a
    ldh a, [rTIMA]
    rst RST_00
    ld hl, sp+$02
    db $fc
    ld e, $50
    dec de
    nop
    ld d, h
    ld h, c
    sub b
    rra
    rst RST_30
    ret z

    rrca
    db $e4
    ld e, l
    ld h, b
    cp c
    ld bc, $805c
    cp $64
    ld l, c
    ld e, b
    ld b, a
    ld c, h
    ld b, e
    nop
    jr nz, @-$1f

    rst RST_38
    rra
    and b
    jr nz, jr_030_45ac

    ld b, b
    cp b
    add a
    add b
    ld sp, hl

jr_030_4552:
    add b
    ldh a, [rNR52]
    scf
    inc hl
    nop
    rst RST_38
    ld a, a
    ccf
    ld b, b
    rst RST_38
    nop
    ld a, a
    adc a
    ccf
    rra
    ccf
    rrca
    ccf
    adc a
    rst RST_08
    rra
    rst RST_08
    rra
    ld b, h
    ld b, d
    ld b, e
    ld b, c
    push bc
    ld h, h
    rst RST_00
    rst RST_38
    rra
    rst RST_20
    rrca
    rlca
    rrca
    inc bc
    rrca
    pop hl
    ccf
    rlca
    ldh [rTAC], a
    jp $c000


    call nz, $8a68
    inc sp
    rst RST_38
    ld b, b
    add b
    jp Jump_000_0203


    ld [bc], a
    ld h, b
    add b
    ccf
    sbc h
    ld h, b

jr_030_4591:
    ld b, e
    cp h
    ld e, $e1
    dec bc
    inc h

jr_030_4597:
    sbc e
    ld hl, $009f
    ldh [$ff1f], a
    db $10
    rst RST_28
    ld a, b
    ld b, b
    ld hl, sp+$14
    rst RST_38
    ld a, a
    nop
    ld h, b
    sbc a
    jr jr_030_4591

    add c
    ld a, [hl]

jr_030_45ac:
    ld [hl-], a
    ld d, b
    db $fc
    ld [hl+], a
    ld [hl], b
    jr nz, jr_030_45c3

    nop
    add hl, sp
    add $04
    ei
    ret z

    rst RST_38
    scf
    ld [bc], a
    ld bc, $8083
    nop
    nop
    ld b, $ff

jr_030_45c3:
    ld bc, $043b
    ret nz

    ccf
    ld bc, $0efe
    cp $ef

jr_030_45cd:
    ld b, d
    jr c, jr_030_4597

    rlca
    ld hl, sp-$20
    rra
    nop
    rst RST_30
    rst RST_38
    ld a, h
    add e
    and $33
    ldh a, [rIF]
    inc c
    di
    rst RST_38
    inc bc
    db $fc
    jr nz, jr_030_45c3

    jr jr_030_45cd

    add h
    ld a, e
    ld hl, sp-$50
    ld c, a
    ld b, d
    ld a, a
    ld d, h
    ld a, l
    ldh [$ff1f], a
    ld e, $e1
    ld hl, $de7f
    ret nz

    ccf
    nop
    rst RST_38
    rra
    ldh [$ff08], a
    ld hl, $3cff
    jp $fd02


    add b
    ld a, a
    ld b, b
    cp a
    jp $e718


    ld [bc], a
    ld b, e
    db $f4
    ld c, c
    sub b
    ld a, a
    and d
    ld a, e
    ld b, a
    jr @+$01

    ld b, e
    inc c
    jr nz, jr_030_4619

jr_030_4619:
    inc e
    ret nz

    inc hl
    add e
    rst RST_38
    ld b, a
    rla
    adc l
    cpl
    adc h
    cpl
    rst RST_08
    nop
    rst RST_38
    or a
    jr nc, jr_030_46a2

    ld a, b
    ld h, l
    ld a, h
    nop
    jr nc, jr_030_466f

    jp $e3c3


    ei
    add e
    ei
    ld de, $0b80
    inc e
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    nop
    ld [hl], e
    rlca
    ld h, [hl]
    rst RST_08
    or a
    ld a, b
    inc e
    ld bc, $1f0f
    inc c
    ldh [c], a
    jp nz, $3804

    call nz, Call_030_61c2
    ld [hl], c
    ret c

    ld e, b
    inc a
    jr c, @+$7e

    ld a, [hl]
    ld a, a
    ccf
    ld h, d
    jr jr_030_4691

    ld a, [hl-]
    sub a
    ld c, [hl]
    ld c, l
    inc hl
    ldh [$ff60], a
    ld [bc], a
    inc bc
    ld b, e
    pop af
    ldh [c], a
    pop bc
    inc bc
    ld h, c
    db $f4
    ld [hl], b
    nop

jr_030_466f:
    ld bc, $010a
    ld [hl], a
    ld [hl], h
    ldh a, [$fff8]
    ld hl, sp-$10
    xor b
    ld d, b
    dec a
    ld a, [hl-]
    dec b
    ld a, [bc]
    dec bc
    nop
    inc bc
    pop hl
    db $ec
    rst RST_28
    rst RST_38
    ret nz

    nop
    inc bc

jr_030_4688:
    add b
    or b
    ld [hl], b
    ld h, b
    ldh [$ffc0], a
    ld bc, $0680

jr_030_4691:
    dec bc
    rra
    ld [bc], a
    ld a, a
    ld bc, $da00
    ld bc, $00a0
    rrca
    dec bc
    nop
    ld [bc], a
    add b
    ld b, b
    ret nz

jr_030_46a2:
    call nz, $e200
    ldh [$ffe1], a
    db $e4
    ldh a, [c]
    inc e
    ld b, c
    nop
    jr jr_030_4688

    add c
    ld a, $ff
    db $10
    and c
    ld [bc], a
    ld de, $0429
    ret z

    ld c, c
    nop
    or h
    ld [bc], a
    ld l, b
    inc b
    ld a, c
    db $fc
    cp $03
    nop
    add b
    rst RST_00
    ld e, a
    ccf
    ccf
    cp a
    ld hl, sp+$00
    jr c, jr_030_46ce

    pop hl

jr_030_46ce:
    ld bc, $8373
    ld h, b
    ld hl, sp-$08
    dec bc
    db $fc
    inc b
    ld [$8282], sp
    add [hl]
    call nz, $45c4
    ld c, l
    jr c, jr_030_475d

    ld a, h
    dec bc
    cp $03
    rst RST_38
    ld a, a
    nop
    ld [hl], b
    inc c
    inc bc
    jr nz, jr_030_4705

    inc b
    di
    inc bc
    db $e3
    rlca
    daa
    rst RST_00
    rlca
    rlca
    dec bc
    cp $07
    ld c, l
    ld c, l
    dec bc
    ld c, c
    dec b
    dec bc
    rst RST_38
    rlca
    ccf
    nop
    sbc h
    add d

jr_030_4705:
    add b
    add b
    sbc b
    add b
    dec bc
    nop
    inc b
    inc bc
    rlca
    ld h, a
    nop
    jr nc, jr_030_478a

    ld a, h
    ld sp, $7f0f
    cp a
    jr jr_030_4749

    nop
    inc bc
    pop bc
    ret c

    db $ec
    ldh a, [rNR31]
    inc e
    inc a
    cp d
    dec bc
    ld a, a
    ld [bc], a
    cp a
    add d
    ld b, $09
    ld bc, $8000
    add b
    ret nz

    db $e3
    pop hl
    ret c

    cp b
    jr c, @+$0d

    nop
    ld [bc], a
    call c, Call_000_0080
    ld bc, $0703
    ld h, a
    rrca
    ldh a, [$fff2]
    or $f9
    ld hl, sp-$08
    ei
    di
    cp a
    cp a

jr_030_4749:
    rra
    rra
    rst RST_28
    rst RST_20
    add $c8
    pop hl
    db $ec
    rst RST_28
    rst RST_38
    ret nz

    ld a, [hl-]
    ret nz

    inc e
    or b
    ld [hl], b
    ld h, b
    ldh [$ffc0], a
    nop

jr_030_475d:
    ld b, $68
    dec bc
    rra
    ld [bc], a
    ld a, a
    ld bc, $00da
    nop
    di
    rst RST_30
    ldh [$ffe0], a
    rst RST_00
    rlca
    inc bc
    inc bc
    add $c0
    ld [bc], a
    db $e4
    pop hl
    add sp, -$20
    ldh a, [rSTAT]
    add b
    inc e
    and e
    ld bc, $3e00
    rst RST_38
    add c
    ld [bc], a
    jr jr_030_47a3

    nop
    ld b, b
    nop
    ld bc, $02b4
    nop

jr_030_478a:
    inc b
    ld bc, $fc78
    cp $43
    add b
    ld b, b
    rlca
    rra
    dec bc
    ccf
    ld [bc], a
    ld bc, $c303
    ei
    rla
    rst RST_30
    add a
    ld [hl], a
    dec bc
    rst RST_38
    rlca
    dec bc

jr_030_47a3:
    ld bc, $0303
    inc bc
    add e
    add e
    dec bc
    rst RST_38
    rlca
    nop
    nop
    rrca
    ld [hl], e
    cp h
    sbc a
    and a
    cp e
    rlca
    rlca
    rla
    rst RST_28
    rst RST_08
    cpl
    rst RST_28
    rst RST_28
    dec bc
    rst RST_38
    rlca
    add e
    add e
    dec bc
    add a
    dec b
    dec bc
    rst RST_38
    rlca
    add b
    add b
    jp $dfdd


    rst RST_18
    rst RST_00
    rst RST_18
    dec e
    nop
    add b
    db $dd
    rrca
    nop
    nop
    rra
    rra
    ccf
    ld b, $00
    ld a, a
    ld a, a
    ld d, l
    rst RST_38
    inc c
    nop
    ldh [rNR10], a
    nop
    ret nz

    inc d
    nop

Jump_030_47e7:
    add b
    jr jr_030_47ea

jr_030_47ea:
    ld h, c

Call_030_47eb:
    nop
    inc e
    nop
    ld b, $03
    inc h
    ld bc, $010c
    rst RST_38
    rst RST_38
    jr jr_030_47f9

    sbc h

jr_030_47f9:
    jr @+$07

    inc e
    ld bc, $fcfc
    cp $42
    inc b
    ld a, [hl+]
    inc bc
    inc bc
    ld [de], a
    ld d, b
    ld [bc], a
    ld bc, $0056
    jr c, jr_030_4810

    rlca
    ld h, b
    nop

jr_030_4810:
    ld [bc], a
    inc bc
    jr c, jr_030_4817

    cp $2a
    inc bc

jr_030_4817:
    rst RST_38
    rst RST_38
    cp $fe
    nop
    nop
    inc bc
    rlca
    inc bc
    rlca
    rlca
    ld d, $01
    jr c, jr_030_482b

    inc c
    ld bc, $0156
    ld d, b

jr_030_482b:
    ld bc, $079f
    rlca
    nop
    nop
    ldh a, [$ff9c]
    nop
    ld [hl], b
    dec b
    rst RST_38
    db $ed
    rst RST_38
    jr c, jr_030_483e

    ld hl, sp-$08
    sbc h

jr_030_483e:
    ld bc, $f0f0
    ldh [$ff27], a
    ldh [rP1], a
    nop
    ld h, [hl]
    rlca
    ld l, d
    rlca
    rra
    ret nc

    nop
    ld b, $01
    ld h, b
    ld l, b
    ld bc, $0118
    ld h, b
    ld bc, $0350
    ld a, $01
    db $fc
    db $fc
    inc d
    ld bc, $1006
    ld bc, $f0f0
    ld e, [hl]
    inc bc
    ldh [rTIMA], a
    ld e, b
    ld bc, $010c
    jr z, jr_030_4872

    nop
    inc e
    ld bc, $0192

jr_030_4872:
    db $10
    inc bc
    ld a, [de]
    ld bc, $032a
    sub d
    add hl, bc
    ld [de], a
    ld bc, $0ba2
    dec de
    nop
    nop
    db $10
    dec b
    nop
    nop
    ld a, [bc]
    inc bc
    sub b
    dec b
    ld a, $01
    ld bc, $6cf8
    db $10
    db $10
    ld bc, $0110
    cp d
    ld bc, $01d0
    ld e, b
    dec b
    ld l, [hl]
    dec b
    ld l, h
    or $01
    sbc h
    ld bc, $0000
    nop
    ld bc, $0707
    ld d, [hl]
    rlca
    ld h, b
    and b
    rlca
    and [hl]
    inc bc
    jr @+$03

    ld d, $03
    ld d, h
    inc de
    rra
    rra
    nop
    ld bc, $cfff
    dec de
    sub [hl]
    ld [hl-], a
    inc l
    ld h, h
    ld e, b
    ret z

    rst RST_38
    or b
    sub b
    ld h, b
    jr nz, @-$1f

    ld e, a
    cp a
    cp a
    nop
    jr c, jr_030_48d1

    ld e, b
    ld bc, $01b0
    ld [hl+], a

jr_030_48d1:
    inc bc
    and [hl]
    rlca
    or h
    inc bc
    ld d, h
    inc de
    adc h
    rrca
    inc bc
    ldh a, [$fff0]
    ld d, $03
    jr @+$05

    inc c
    ld bc, $0360
    nop
    ld bc, $039a
    jr jr_030_492d

    dec b
    ld a, b
    ld bc, $0156
    ld a, a
    ld a, a
    call nc, Call_030_6803
    ld bc, $03f4
    db $db
    ldh a, [$fff0]
    ld l, h
    ld de, $fcfc
    ld a, d
    ld bc, $0101
    cp $00
    dec e
    sbc $d5
    rst RST_28
    ld [$f5f7], a
    push af
    scf
    push af
    ei
    ld a, [$0558]
    cp $fe
    ld l, d
    inc de
    ld hl, sp+$01
    inc sp
    rra
    rra
    ldh [rNR22], a
    add sp, $01
    ld hl, sp-$08
    ld e, b
    dec d
    and [hl]
    rlca
    jr nc, jr_030_493a

    add hl, bc
    xor b
    ld bc, $0300

jr_030_492d:
    ret nc

    ld bc, $0000
    ld d, [hl]
    ld de, $01ec
    nop
    ld l, h
    ld de, $21ae

jr_030_493a:
    sbc b
    ld bc, $0156
    ldh a, [c]
    inc hl
    sub b
    ld hl, $19a8
    ret nz

    add hl, bc
    add $18
    inc bc
    ld a, a
    ld a, a
    ld e, b
    ld de, $03d4
    sbc [hl]
    ld hl, $e0e0
    ccf
    inc bc
    ld [bc], a
    add d
    add d
    pop bc
    pop bc
    ldh a, [c]
    inc bc
    sbc b
    ld de, $c0ff
    cp a
    ret nz

    ccf
    ldh [$ff5f], a
    ldh a, [$ffaf]
    rst RST_38
    cp b
    sub a
    ld a, b
    ld d, a
    inc a
    dec hl
    sbc $d5
    ld h, e
    ld a, [hl]
    ld a, [hl]
    ld l, d
    ld de, $1198
    inc b
    ld bc, $7f7f
    sub b
    inc bc
    nop
    jr c, jr_030_4993

    ld [de], a
    ld bc, $0142
    ld l, b
    ld hl, $2530
    ld h, d
    dec de
    sbc [hl]
    ld bc, $2746
    nop
    ld d, b
    inc bc
    and $07

jr_030_4993:
    xor b
    scf
    ld c, d
    inc hl
    ld e, h
    inc bc
    and $03
    ld b, [hl]
    dec b
    ld h, h
    dec h
    ld a, [hl]
    ld d, [hl]
    dec b
    ldh a, [$ffaf]
    ld a, b
    ld d, a
    jr c, jr_030_49df

    ld c, h
    ld sp, $effb
    xor $82
    ld hl, $dbc9
    jp nc, $e4f6

    cp a
    db $ec
    ret z

    ret c

    ret nc

    ldh a, [$ffc0]
    dec a
    ld [de], a
    ld a, b
    ld bc, $9a78
    inc hl
    ld [$5c01], sp
    inc bc
    jr c, @+$23

    add $27
    ld [hl], h
    inc de
    ld [hl+], a
    inc bc
    nop
    ld a, [de]
    ld de, $4308
    ld [hl], $05
    ld c, [hl]
    inc bc
    and [hl]
    dec [hl]
    ld a, d
    ld bc, $1394
    db $fc
    inc bc

jr_030_49df:
    ld h, b
    ld a, $01
    ret c

    inc hl
    db $f4
    rlca
    jr c, @+$05

    jr z, jr_030_4a1b

    ld e, $1e
    sbc d
    ld bc, $fffb
    ret nz

    add b
    ld b, e
    db $fc
    pop bc
    ld sp, hl
    jp $fff2


    add $e4
    call $1be9
    jp nc, $a536

    rst RST_38
    ld l, l
    ld c, b
    ret c

    sub b
    or b
    jr nz, jr_030_4a69

    ld b, b
    scf
    ret nz

    cp h
    cp h
    ret nz

    inc hl
    nop
    nop
    ld d, b
    ld sp, $23ec
    and b
    xor b
    ld b, e
    sub [hl]
    dec b

jr_030_4a1b:
    ld c, $45
    or [hl]
    inc bc
    ld l, b
    ld bc, $d283
    ld b, b
    nop
    add e
    nop
    ld a, h
    ret c

    ld b, b
    ret nc

    ld b, c
    ld c, [hl]
    inc de
    sbc b
    inc de
    sbc d
    ld bc, $df0e
    dec bc
    db $f4
    push af
    rst RST_30
    db $f4
    ld d, b
    nop
    ld [bc], a
    add c
    ld a, a
    add c
    ld bc, $3e01
    ld a, $ff
    nop
    nop
    ld d, e
    ld hl, sp-$34
    inc hl
    and a
    ld bc, $5300
    cp $01
    db $fd
    inc bc
    ld a, [$06ff]
    db $f4
    dec c
    jp hl


    dec bc
    jp nc, $a436

    rst RST_38
    ld l, h
    ld c, e
    db $db
    sub [hl]
    or [hl]
    jr nz, jr_030_4ac4

    ld b, e
    ld a, a
    jp $8787


jr_030_4a69:
    nop
    nop
    inc a
    inc a
    ld c, $45
    ld a, $a2
    ld b, e
    ld [hl], b
    ld [hl], b
    nop
    nop
    add a
    ld b, [hl]
    ld d, b
    jr nc, jr_030_4acc

    rst RST_38
    ld a, $3e
    ldh [$ffbf], a
    ld d, b
    ld c, a
    ld [hl], b
    ld e, a
    rst RST_38
    xor b
    and a
    cp b
    xor a
    inc d
    inc de
    inc e
    rla
    rst RST_28
    ld a, [bc]
    add hl, bc
    cp $02
    ld h, b
    ld d, l
    ld a, [$02fe]
    ld h, b
    ld l, c
    ld d, b
    ld h, b
    ld d, a
    ld h, b
    ld d, e
    jr nc, jr_030_4aa5

    jr nc, jr_030_4aa7

    rst RST_38
    inc bc
    ld [hl], b

jr_030_4aa5:
    ld e, e
    db $e4

jr_030_4aa7:
    ld a, [bc]
    ld d, e
    add b
    ld e, b
    ld a, a
    or b
    ld e, a
    cp b
    ld d, h
    rst RST_38
    ld b, b
    ccf
    ei
    and b
    sbc a
    nop
    ld d, e
    ldh a, [rP1]
    rst RST_30
    rlca
    db $f4
    rst RST_18
    inc b
    push af
    dec b
    push af
    dec b
    ld [bc], a

jr_030_4ac4:
    ld e, e
    nop
    nop
    ld hl, sp-$24
    ld d, c
    ldh a, [$ff59]

jr_030_4acc:
    nop
    ld d, l
    rst RST_38
    ld a, a
    push af
    ld c, d
    rst RST_38
    ld [hl], a
    ld a, a
    rst RST_18
    ld b, b
    ldh a, [rRP]
    push hl
    or l
    ld h, l
    jr jr_030_4b3e

    rst RST_18
    dec h
    or $5f
    jp hl


    ld d, [hl]
    jr nz, jr_030_4b49

    rst RST_38
    ld b, b
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    nop
    push af
    and l
    ld [hl], l
    and l
    sbc $30
    ld h, e
    push af
    dec h
    push af
    push hl

jr_030_4af8:
    cp $58
    nop
    rst RST_28
    pop de
    dec bc
    ld c, d
    ld h, c
    ld b, b
    ld h, a
    xor b
    nop
    ld hl, $570e
    rst RST_38
    nop
    ld de, $3f3f
    db $10
    ld c, b
    nop
    ld d, c
    ld h, a
    nop
    add b
    ld b, c
    ld c, d
    ld h, e
    add b
    ld h, a
    rst RST_38
    ld l, b
    db $10
    inc a
    inc b
    ld d, [hl]
    ld a, [bc]
    ld l, e
    dec b
    rst RST_38
    push af
    ld [bc], a
    ld a, [$bd01]
    ld b, b
    xor [hl]
    ld d, b
    rst RST_38
    ld h, h
    ld l, b
    ld h, b
    ld l, h
    inc l
    ld l, h
    ld c, h
    inc l
    rst RST_38
    xor h
    adc h
    call nz, $084c
    db $e4
    add h
    ld [hl], b
    rst RST_38
    sub a

jr_030_4b3e:
    ld l, b
    add e
    ld a, h
    add a
    ld a, b
    add e
    ld a, h
    rst RST_38
    add b
    ld a, a
    pop bc

jr_030_4b49:
    cp [hl]
    ret nz

    cp a
    ldh [$ff5f], a
    rst RST_38
    ld b, b
    jr c, jr_030_4af8

    ld a, [de]
    db $d3
    dec c
    jp hl


    ld b, $ff
    db $f4
    inc bc
    ld a, d
    add c
    cp l
    ld b, b
    ld e, $e0
    rst RST_38
    cpl
    ret nc

    rlca
    ld hl, sp+$0b
    db $f4
    ld bc, $fffe
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst RST_38
    add b
    ld a, a
    rst RST_30
    cp a
    add b
    ld a, a
    inc de
    ld d, e
    nop
    db $fd
    ld bc, $fffa
    ld [bc], a
    db $f4
    dec b
    rst RST_30
    rst RST_00
    db $f4
    call nz, $f9f7
    push bc
    db $f4
    ld l, a
    ld b, $7f
    rst RST_30
    push bc
    ld [hl], a
    ld b, h
    or a
    ld e, e
    add b
    cp a
    rra
    ld [hl], b
    ld a, a

jr_030_4b96:
    ld b, b
    add b
    ld b, l
    rst RST_38
    add hl, bc
    ld hl, $3c5f
    add b
    add b
    cp a
    adc a
    jr jr_030_4ba4

jr_030_4ba4:
    sbc a
    ld a, [hl-]
    ld [hl], c
    ld a, [$2090]
    ld e, $6c
    ld d, b
    ld a, [$0a0a]
    ld a, [bc]
    ld [$4ac0], a
    ld [hl], c
    ld a, [hl-]
    ld [hl], e
    ld d, b
    ld [hl], a
    ld c, d
    ld [hl], e
    ld h, b
    ld [hl], a
    ld d, b
    ld a, c
    add e
    sbc h
    and e
    sbc a
    add b
    ld h, b
    ld a, c
    ld c, e
    ld [hl], c
    ld d, c
    ld a, h
    add b
    ld h, c
    halt
    ld [$eaff], sp
    ld a, [bc]
    add sp, $08
    jp hl


    ld [$09e9], sp
    di
    jp hl


    ld [$73a8], sp
    ld h, c
    ld [hl], e
    rrca
    sub b
    rrca
    sub b
    rst RST_38
    inc e
    sub e
    dec e

jr_030_4be6:
    sbc [hl]
    ld a, [de]
    sbc h
    add hl, de
    sub b
    rst RST_38
    inc d
    add d
    add hl, bc
    add h
    ldh [$ff0a], a
    ret nz

    ld a, [bc]
    rst RST_38
    xor h
    ld [de], a
    ld b, b
    ld a, [hl+]
    adc b
    ld d, d
    ld [$0fa2], sp
    ld [$0842], sp
    add d
    ld [hl], c
    ld l, c
    ld d, a
    ld h, e
    pop hl
    ld a, e
    dec e
    add b
    dec sp
    rst RST_38
    ld [hl-], a
    adc c
    jr nc, jr_030_4b96

    ld bc, $0288
    sub c
    rst RST_38
    inc b
    sub e
    ld bc, $0396
    sub h
    ld b, $90
    rst RST_38
    jr z, jr_030_4c22

    xor b
    ld b, d

jr_030_4c22:
    jr z, jr_030_4be6

    ld l, b
    add d
    rst RST_38
    ret z

    ld [bc], a
    ld [$1802], sp
    ld b, d
    ld c, b
    sub d
    rst RST_38
    inc b
    sub c
    ld de, $1282
    add h
    dec d
    adc b
    db $fd
    add hl, de
    inc hl
    nop
    nop
    adc l
    ld de, $928a
    inc h
    rst RST_38
    dec h
    ld c, c
    dec bc
    db $d3
    db $10
    and b
    ld h, b

jr_030_4c4a:
    nop
    rst RST_38
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld [hl+], a
    sub h
    rst RST_38
    dec h
    adc c
    dec de
    add e
    scf
    rst RST_00
    ld l, a
    adc a
    ei
    rst RST_18
    rra
    inc a
    ld bc, $fcff
    inc bc
    inc bc
    db $fc
    sbc [hl]
    ld d, c
    nop
    nop
    db $fc
    nop
    rst RST_38
    ld e, d
    ld bc, $005b
    ld hl, sp-$03
    rlca
    ld h, c
    ld [bc], a
    rra
    ret z

    ccf
    add sp, $3f
    add sp, -$41
    nop
    rst RST_20
    nop
    or b
    nop
    adc a
    ld e, d
    nop
    ldh a, [rIE]
    nop
    add h
    nop
    db $d3
    nop
    rst RST_18
    ccf
    ld l, b
    ld hl, sp-$80
    nop
    ld l, l
    nop
    add d
    inc b
    add sp, $00
    rst RST_38
    rlca
    ld hl, sp-$05
    ld a, a
    add b
    ld e, e
    ld [bc], a
    nop
    rst RST_38
    inc bc
    cp $0e
    ei
    rst RST_38
    jr z, jr_030_4c4a

    inc b
    ld a, b

jr_030_4cac:
    rst RST_18
    ret c

    scf
    jr nc, @+$01

    rst RST_18
    ret nz

    ld sp, hl
    add hl, de
    or $76
    call Call_030_5fcc
    inc sp
    jr nc, jr_030_4cac

    ldh [$ffbf], a
    sub l
    ld [bc], a
    ld a, a
    cp a
    nop
    rst RST_38
    ld h, b
    nop
    ld l, a
    nop
    ld l, b
    rlca
    ld l, e
    inc b
    call c, $0fca
    ret c

    add hl, bc
    ld l, b
    rlca
    ld h, c
    cp a
    nop
    rra
    nop
    rst RST_38
    ld c, a
    ld h, b
    rrca
    ld h, b
    rrca
    nop
    rrca
    ld h, b
    ld sp, hl
    nop
    push af
    nop
    ret z

    dec b
    dec hl
    inc b

jr_030_4cea:
    rlc h
    inc bc
    sbc a
    inc b
    inc hl
    ld b, b
    ld c, b
    ld h, b
    sub [hl]
    inc b
    ld de, $8014
    rst RST_30
    ld bc, $05f5
    jr nz, jr_030_4d17

    dec b
    ld h, l
    sub c
    ld sp, $a9ff
    add hl, de
    push de
    dec c
    ld [$f607], a
    ld bc, $fbff
    nop
    db $fd
    nop
    cp $00
    ld h, l
    ld h, c
    db $db
    ld h, c
    ld h, b

jr_030_4d17:
    ld b, e
    ld de, $fe01
    dec a
    nop
    ld b, b
    ld d, b
    rst RST_30
    jr nz, @-$07

    push bc
    ld d, b
    jr jr_030_4cea

    rst RST_30
    ret nz

    rst RST_38

jr_030_4d29:
    cp $5f
    inc e
    rra
    add b
    rra
    sub b
    rra
    adc b
    rra
    rst RST_18
    add h
    rra
    add d
    rra
    sbc a
    ld [hl], b
    db $10
    add b
    ldh [rIE], a
    ld a, [hl+]
    ldh [rWY], a
    ldh [$ff8a], a
    ldh [rWY], a
    ldh [c], a
    ld a, a
    jr z, jr_030_4d29

    ld a, [bc]
    ldh [$ff08], a
    pop hl
    ld [$1270], sp
    rst RST_10
    adc h
    rra
    add e
    ld a, b
    db $10
    add h
    ld [hl], h
    db $10
    sub b
    pop hl
    sbc a
    add hl, bc
    pop hl
    ld [$08e2], sp
    adc d
    ld de, $108a
    adc d
    di
    ldh [$ffca], a
    ld a, h
    ld de, $1076
    adc h
    ld e, $94
    add hl, de
    rst RST_38
    add b
    inc d
    add d
    add hl, bc
    add h
    ldh [$ffaa], a
    ret nz

    rst RST_38
    adc d
    xor h
    sub d
    ld b, b
    ld a, [hl+]
    adc b
    ld d, d
    ld [$a2ff], sp
    ld [$0842], sp
    add d
    add b
    add [hl]
    ld e, $ff
    ld e, $00
    nop
    pop bc
    pop bc
    add e
    add e
    nop
    rst RST_38
    nop
    ld a, h
    ld a, h
    ld hl, sp-$08
    ld bc, $1819
    rst RST_28
    jr jr_030_4da1

jr_030_4da1:
    nop
    rst RST_00
    and $10
    nop
    nop
    jr c, jr_030_4e1d

    db $ec
    db $10
    dec a
    nop
    ld bc, $1a11
    nop
    nop
    ld hl, sp+$02
    cpl
    inc a
    ld c, $28
    db $10
    jr @+$03

    cp $3f
    ret nz

    ld c, $29
    rrca
    cpl
    ei
    ret c

    jr nz, jr_030_4e21

    ld bc, $15ea
    call nc, $c82b
    rst RST_30
    scf
    add b
    ld a, a
    ld e, d
    ld bc, $50a8
    ld b, b
    cp b
    ld d, d
    inc d
    dec hl
    ld a, a
    inc e
    db $10
    ld de, $f018
    dec sp
    jr nz, jr_030_4de2

jr_030_4de2:
    ld a, b
    nop
    cp [hl]
    inc a
    inc h
    scf
    rst RST_38
    ld a, l
    rst RST_38
    cpl
    sub c
    jr nz, @+$81

    rst RST_38
    rst RST_38
    ld e, a
    rst RST_38
    ld a, e
    rst RST_38
    ld a, $ff
    ld a, b
    rst RST_38
    ld hl, sp-$23
    db $fd
    di
    ei
    ld h, b
    ldh a, [$ffc0]
    ei
    ldh [$ff80], a
    ld a, [hl-]
    ld [bc], a
    ld a, h
    cp $59
    db $fd
    inc sp
    ld a, a
    ei
    ld h, a
    rst RST_30
    ld c, a
    rst RST_28
    rra
    rst RST_18
    dec sp
    ld bc, $50fe
    dec b
    sub b
    db $fc
    jp z, Jump_030_6aff

jr_030_4e1d:
    rst RST_38
    dec [hl]
    cp $5f

jr_030_4e21:
    ld [$c85f], sp
    rst RST_38
    add sp, -$41
    add sp, $13
    rst RST_28
    sbc a
    ld a, [hl-]
    cp [hl]
    rst RST_00
    ld e, e
    ld [bc], a
    ldh a, [rIE]
    db $10
    rst RST_10
    rst RST_18
    ld hl, $80ff
    ld bc, $8bff
    ld [bc], a
    ld a, a
    add sp, -$22
    call c, $4321
    rst RST_38
    add a
    ld sp, hl
    sub h
    nop
    jr nc, @+$01

    ld a, a
    ld [hl], b
    rst RST_38
    ret nc

    rst RST_38
    sub e
    cp $1e
    and b
    ld [bc], a
    ld b, a
    xor b
    rst RST_38
    ld l, b
    xor b
    dec b
    dec a
    nop
    dec sp
    nop
    ld b, b
    ld a, b
    nop
    ld a, a
    ld [$2400], sp
    ld b, b
    ld c, e
    ld h, b
    db $fc
    dec sp
    db $10
    ei
    db $fc
    ld bc, $3734
    nop
    nop
    rrca
    nop
    pop af
    rst RST_38
    ld c, $cc
    ccf
    dec a
    cp $fb
    db $fc
    db $f4
    adc a
    ld hl, sp-$38
    ldh a, [$ff1f]
    ld [hl], h
    nop
    ld d, d
    inc sp
    ld b, b
    ld sp, $f108
    rlca
    inc [hl]
    inc sp
    inc a
    ld de, $0396
    and b
    ret nz

    ld b, b
    add b
    or l
    add b
    dec sp
    ld [bc], a
    ld a, a
    ld c, e
    ld [de], a
    dec bc
    inc b
    add b
    inc sp
    dec de
    cp e
    inc b
    db $e3
    dec bc
    ld [de], a
    ldh a, [rP1]
    sub b
    sub c
    inc [hl]
    db $10
    ld [bc], a
    sbc c
    inc a
    ld hl, sp+$2b
    ld [hl-], a
    dec e
    nop
    add b
    ld a, e
    rst RST_18
    xor b
    nop
    add hl, bc
    sbc $a8
    rst RST_38
    nop
    db $10
    add hl, bc
    ld l, a
    nop
    nop
    adc $25
    jr nz, jr_030_4ed2

    di
    ld c, c
    jr nc, jr_030_4ed6

    db $db
    cp h
    ld d, d
    ld b, b
    dec bc
    rst RST_28
    ld d, h

jr_030_4ed2:
    ld d, b
    dec bc
    adc $31

jr_030_4ed6:
    rst RST_38
    sub c
    ld l, [hl]
    ld l, d
    sbc a
    add hl, bc
    rst RST_38
    db $e4
    dec de
    rst RST_38
    inc sp
    db $fd
    add [hl]
    ld a, e
    ld e, c
    xor a
    xor $01
    rst RST_38
    inc h
    bit 5, l
    add d
    inc h
    bit 4, h
    adc a

jr_030_4ef1:
    rst RST_38
    jr z, @-$37

    ld b, c
    xor a
    add d
    ld bc, $d02e
    rst RST_38
    ld b, $f8
    ld c, d
    db $f4
    ld d, $f8
    adc b
    cp $ff
    ld a, [hl+]
    db $f4
    db $10
    cp $04
    ld a, [$0000]
    rst RST_38
    ld h, e
    rra
    ld a, e
    rlca
    rra
    nop
    inc hl
    nop
    rst RST_38
    jr nz, jr_030_4f28

    inc h
    db $10
    daa
    stop
    nop
    ei
    sub e
    rst RST_28
    and d
    ld bc, $0ff3
    ld a, a
    inc bc
    rrca

jr_030_4f28:
    rst RST_38
    nop
    add c
    nop
    nop
    rra
    jr nz, jr_030_4ef1

    ld l, $f7
    sbc $2e
    rst RST_18
    or [hl]
    ld bc, $5fae
    cp $0f
    rst RST_38
    nop
    ldh [rTMA], a
    ldh [c], a
    nop
    nop
    and b
    ld b, b
    xor a
    cp b
    ld b, [hl]
    cp c
    ld b, a
    jp z, $0201

    dec e
    nop
    ld h, h
    rst RST_38
    ld hl, HeaderLogo
    inc b
    ld bc, $e1c0
    adc $ff
    ldh a, [$ffcf]
    ldh a, [rP1]
    ldh [rP1], a
    db $fc
    nop
    db $fd
    cp $e4
    ld [bc], a
    rst RST_38
    nop
    rra
    ldh [rSB], a
    ld b, e
    and l
    jr z, @-$0e

    dec bc
    sbc $0d
    nop
    nop
    inc de
    ld e, [hl]
    rlca
    ld [de], a
    rst RST_10
    db $eb
    cpl
    ret nz

    dec de
    ld [bc], a
    ld l, d
    inc e
    ld bc, $0000
    rst RST_38
    ld [de], a
    jr nz, jr_030_4f8d

    jp z, $1227

    jr nc, jr_030_4f92

    ldh a, [c]
    scf

jr_030_4f8d:
    ld [de], a
    ld b, b
    rrca
    ld d, b
    dec b

jr_030_4f92:
    db $fd
    xor a
    ld d, a
    ld [de], a
    add [hl]
    ld a, b
    ld a, c
    add c
    or [hl]
    ld b, [hl]
    rst RST_38
    db $ec
    inc c
    ld a, [bc]
    dec bc
    ret nc

    inc de
    ret nc

    ld d, $ff
    dec hl
    cp a
    ld a, h
    ld a, h
    sub e
    rst RST_10
    ld b, h
    ld b, h
    rst RST_38
    nop
    cp $44
    rst RST_00
    ld l, h
    ld l, l
    cp d
    cp d
    rst RST_38
    ld d, l
    ld d, l
    add b
    ld a, [hl]
    ld h, $18
    jp c, $ffc4

    ld l, [hl]
    ld h, b
    and b
    and b
    ld d, $90
    ld d, $d0
    ld a, a
    xor d
    ld hl, sp+$26
    ld de, $1621
    daa
    sbc l
    nop
    cp $94
    ld de, $1225
    ld [hl+], a
    dec d
    or b
    ld b, b
    ld e, b
    ei
    and b
    db $fd
    ld de, $fd02
    ld [bc], a
    jp c, $bf25

    rst RST_28
    ld b, b
    ld a, $00
    ld b, $1d
    nop
    xor b
    nop
    ei
    ld a, a
    nop
    ld a, e
    add b
    xor e
    ld d, b
    db $d3
    jr z, jr_030_5014

    inc bc
    ld l, a
    nop
    nop
    ld b, b
    add b
    ret z

    inc de
    cp $01
    add hl, de
    inc de
    rst RST_38
    dec b
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor d
    nop
    ei
    nop
    cp $19
    inc de

jr_030_5014:
    ld e, b
    ld [bc], a
    cp b
    ld [bc], a
    ld a, b
    rst RST_30
    ld [bc], a
    ld hl, sp+$02
    ldh a, [rTAC]
    ld b, c
    jr z, jr_030_506a

    ld h, $ff
    ld b, d
    ld hl, $a8de
    ld e, $e8
    cp $08
    rst RST_30
    cp $f8
    ld [bc], a
    db $e4
    nop
    ld b, $f8
    ld c, $00
    rst RST_10
    push af
    rl b
    dec de
    ld [bc], a
    adc b
    add hl, de
    ld d, $c8
    daa
    ld a, e
    rst RST_08
    jr nz, @+$12

    inc de
    ret nz

    ccf
    ret nz

    jr nz, jr_030_5083

    ld [de], a
    db $fd
    ld c, b
    db $10
    inc hl
    jr nc, @-$2f

    ld [hl], b
    ld [$52bc], sp
    ld a, a
    inc a
    jp nc, Jump_000_12fc

    db $fd
    ldh a, [c]
    inc b
    ld de, $ff00
    inc c
    di
    inc e
    ld [bc], a
    rst RST_28
    ld d, h
    adc a
    ld [hl], h
    rst RST_18

jr_030_506a:
    rst RST_38
    inc b
    ld a, a
    db $fc
    ld bc, $0011
    inc bc
    db $fc
    rst RST_38
    rlca
    nop
    and c
    dec h
    jr nc, @-$4a

    ld hl, $ffa5
    xor e
    ccf
    ret nc

    ld d, $d0
    inc de

jr_030_5083:
    ld [$ff0b], a
    xor h
    ld c, h
    xor e
    cp e
    add $fe
    xor e
    cp e
    rst RST_38
    ld d, l
    ld d, l
    cp d
    cp d
    ld l, h
    ld l, l
    ld b, h
    rst RST_00
    rst RST_38
    nop
    cp $08
    ld c, d
    jr jr_030_50f8

    ld [$ff4a], sp
    xor b
    ld a, [$d412]
    ld d, $90
    xor d
    and h
    rst RST_38
    ld l, h
    ld h, d
    dec h
    ld [de], a
    daa
    db $10
    add hl, hl
    db $10
    db $ec
    ret nc

    ld bc, $2397
    ld a, a
    add b
    db $10
    ld bc, $0055
    cp d
    rst RST_08
    nop
    ld c, l
    nop
    inc de
    rst RST_10
    db $10
    cp h
    ld de, $10eb
    ld a, a
    ld [hl], e
    ld [$00bb], sp
    ld e, e
    nop

Call_030_50d0:
    cp e

Call_030_50d1:
    or a
    db $10
    ld a, a
    ld b, c
    add b
    ld b, d
    add b
    ld d, l
    add b
    ld c, d
    jp Jump_030_5c27


    db $dd
    db $10

jr_030_50e0:
    ret nc

    inc hl
    xor e
    nop
    ld d, a
    reti


    jr nz, jr_030_50e0

    db $ed
    db $10
    cp $e0
    dec h
    add sp, $12
    ret c

    ld [hl+], a
    ld h, b
    inc e
    ld a, h
    cp a
    ld h, e
    rra
    inc e

jr_030_50f8:
    db $e3
    inc bc
    db $fc
    ld [$0001], a
    ccf
    ld h, e
    nop
    or $08
    sbc $e8
    nop
    rla
    ld c, $01
    cp $11
    dec sp
    rst RST_00
    jr z, @-$30

    daa
    call z, $cc25
    or $21
    ld b, $b1
    ld c, d
    jr nc, jr_030_5125

    db $ec
    ld [de], a
    cp h
    jp nc, Jump_000_3cf7

    ld d, d
    inc a
    ld b, c
    ld d, $7b

jr_030_5125:
    add h
    rst RST_28
    ld [hl], h
    rst RST_30
    rst RST_08
    ld d, h
    rst RST_08
    ld d, c
    ld b, $06
    ld b, $f1
    add hl, bc
    rst RST_38
    jp nz, $ab3c

    ld d, h
    nop
    rst RST_38
    ld c, d
    or l
    rst RST_38
    ldh [$ff1f], a
    ret nz

    ccf
    ld b, h
    ld b, h
    sub e
    rst RST_10
    rst RST_38
    ld a, h

jr_030_5146:
    ld a, h
    ld [bc], a
    add c
    jr z, @-$37

    add hl, hl
    add $ff
    add b
    ld l, a
    jr z, @-$37

    ret nz

    ret nz

    ld a, $00
    rst RST_38
    and [hl]
    ld e, b
    ld a, [bc]
    db $f4
    ld b, b
    cp [hl]
    ld [bc], a
    db $fc
    rst RST_28
    ld [$20f6], sp
    sbc $97
    dec h
    rst RST_38
    rst RST_38
    ld a, a
    push hl
    ld a, a
    ld de, $ff39
    xor b
    jr nc, jr_030_518b

    ld de, $007b
    sbc e
    cp $97
    nop
    dec bc
    nop
    di
    ldh a, [$fffb]
    ld hl, sp+$01
    ld [hl], d
    dec e
    nop
    ld b, l
    push bc
    jr nz, jr_030_5146

    dec [hl]
    ld b, b
    add b
    nop
    db $db

jr_030_518b:
    jr nz, @+$01

    cp a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, [hl]
    ld bc, $f5f3
    ld a, [bc]
    ld a, [de]
    ld de, $21ec

jr_030_519c:
    xor b
    ld d, d
    ld e, b
    and d
    rst RST_18
    adc b
    ld [hl], d
    ld [$00f2], sp
    ret nc

    nop
    inc e
    ld h, b
    rst RST_38
    inc hl
    ld e, h
    inc a
    ld b, e
    ccf
    ld e, b
    scf
    ld d, [hl]
    ccf
    ld sp, $3651
    ld d, b
    scf
    ld d, b
    ld b, $17
    nop
    inc hl
    ld bc, $11ef
    inc a
    ld h, $17
    jr nz, @+$25

    ld [hl], $17
    jr nc, jr_030_51ed

    ld b, b
    add hl, de
    ld b, d
    ld hl, $56fc
    rla
    ld d, b
    inc hl
    or h
    ld e, e
    ld [hl], e
    adc [hl]
    xor l
    ld d, d
    rst RST_38
    db $dd
    ld [hl+], a
    nop
    nop
    call c, $e223
    rra
    rst RST_38
    ld e, b
    and a
    jr nz, @-$2f

    add hl, hl
    add $64
    adc e
    db $fd
    ld l, a

jr_030_51ed:
    call $ef30
    nop
    dec hl
    push bc
    jp nz, $ff2d

    sub b
    cp $0e
    ldh a, [$ff96]
    ld l, b
    xor [hl]
    ld d, b
    rst RST_38
    nop
    nop
    ld e, [hl]
    and b
    ld b, $f8

jr_030_5205:
    jr nz, jr_030_5205

    adc c
    ld e, a
    db $d3
    jr nc, jr_030_519c

    ld c, c
    cp [hl]
    sbc a
    ld c, h
    push hl
    inc bc
    or b
    ld b, a
    scf
    ld a, [$30fd]
    daa
    jp Jump_000_2146


    ld e, b
    ld a, b
    ld b, $06
    ld a, a
    ld h, c
    ld hl, $c818
    ld b, $f2
    ld bc, $21f8
    rst RST_38
    ccf
    nop
    adc a
    nop
    inc hl
    ret nz

    ret z

    ldh a, [$ff7f]
    ldh a, [c]
    inc a
    inc a
    rrca
    rrca
    inc bc
    inc bc
    dec e
    nop
    db $ec
    ret nz

    ld b, c
    ldh a, [rOBP1]
    cp $f8
    push hl
    ld bc, $0000
    ld l, b
    or b
    inc b
    ld d, c
    rst RST_18
    db $10
    add hl, bc
    ld d, e
    ld de, $5a37
    inc bc
    jr nz, jr_030_52a9

    ld e, b
    cp $27
    ld d, c
    ld bc, $005e
    xor h
    ld b, b
    and b
    ld c, a
    rst RST_18
    xor a
    ld b, b
    and b
    ld b, b
    xor b
    dec [hl]
    ld d, b
    ld [hl+], a
    ld bc, $40ff
    nop
    ld a, $01
    jp $0400


    ld hl, sp-$11
    ldh a, [rIF]
    dec c
    ld [bc], a
    cp h
    ld sp, $1020
    ld b, $ff
    ret nz

    and $18
    ld a, $00
    ret nz

    nop
    ld d, [hl]
    rst RST_38
    xor b
    xor d
    ld d, h
    or $08
    ld e, $00
    add b
    rst RST_38
    ld a, a
    inc h
    rst RST_18
    ld b, b
    rst RST_38
    xor b
    ld e, a
    ret z

    rst RST_38
    scf
    ldh a, [c]
    rrca
    db $db
    inc h
    cp a
    ld b, b
    adc h
    rst RST_38
    rst RST_20
    ld hl, $04cf
    db $eb
    add h

jr_030_52a9:
    db $eb
    ld [hl+], a
    rst RST_38
    call $cb26
    xor [hl]
    ld b, c
    ld l, a
    add b
    ld b, b
    cp $04
    jr nz, jr_030_52d8

    cp $02
    db $fc
    sub h
    ld a, [$ffa6]
    ld e, b
    ld c, h
    or d
    or [hl]
    ld c, b
    add hl, de
    db $fc
    ld c, c
    rst RST_38
    cp h
    ld e, c
    xor h
    ld bc, $01ac
    inc l
    push bc
    adc e
    ld [$11f3], sp
    nop
    ld a, a
    sbc a
    ld d, h

jr_030_52d8:
    db $10
    dec b
    jr nz, jr_030_52e7

    nop
    db $ed
    nop
    jr nc, jr_030_52ec

    nop
    nop
    ld b, b
    dec de
    nop
    nop

jr_030_52e7:
    sbc b
    ld sp, hl
    db $10
    ldh [$ff5b], a

jr_030_52ec:
    db $10
    dec bc
    rst RST_38
    nop
    ld e, h
    nop
    ld e, c
    rst RST_38
    ld [bc], a
    ld d, e
    rlca
    ld d, h
    inc bc
    ld e, e
    nop
    ld e, d
    db $fd
    ld bc, $5128
    ld c, $00
    ld [hl], $60
    ld b, b
    ret nz

    rst RST_30
    add b
    ld b, b
    rst RST_28
    push bc
    nop
    and c
    ld b, b
    xor c
    ld b, b
    db $fc
    push hl
    ld bc, $11b2
    ld hl, sp+$00
    rlca
    nop
    ld a, b
    ld a, b
    db $d3
    ld a, a
    ld a, a
    push hl
    inc bc
    dec e
    nop
    ld bc, $2057
    ld bc, $fff4
    ldh a, [rIE]
    nop
    sub e
    nop
    ld c, c
    inc h
    ret c

    rst RST_38
    ld l, b
    ld e, b
    ld hl, sp-$07
    ld e, h
    ld de, $0154
    and a
    db $10
    ld e, e
    inc bc
    ld d, b
    ld h, e
    jr nz, jr_030_5396

    and c
    dec [hl]
    ld d, b
    xor h
    ld sp, hl
    ld b, e
    ld a, [de]
    ld h, e
    inc e
    ld h, c
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    rst RST_08
    ret nz

    jr c, jr_030_535b

    ld b, b
    ld l, a
    ld h, b
    ld a, d
    ld h, c
    or $f0

jr_030_535b:
    rst RST_38

jr_030_535c:
    or $f0
    halt
    ld [hl], b
    add [hl]
    nop
    ld b, [hl]
    jr c, jr_030_5380

    add [hl]
    add b
    add b
    ld h, c
    ld e, c
    db $fc
    sub b
    ld l, e
    db $10
    inc bc
    sbc $47
    ld [hl], a
    rst RST_38
    nop
    add b
    or c
    ld h, b
    sbc a
    rra
    sbc a
    jp hl


    ld d, [hl]
    ldh [$ffa4], a
    inc [hl]
    sub a

jr_030_5380:
    inc h
    add hl, bc
    ld d, l
    db $10
    ld d, l
    ldh [rHDMA3], a
    jr jr_030_5399

    jr jr_030_535c

    sub b
    and $60
    rst RST_20
    ld h, b
    nop
    ld bc, $f15f
    ld h, h
    rra

jr_030_5396:
    add sp, -$0d
    rst RST_38

jr_030_5399:
    ld [$5120], sp
    ld d, b
    ld h, c
    ld b, e
    inc bc
    ld a, e
    inc bc
    rlca
    ld c, e
    inc bc
    ld d, e
    ld e, a
    ld h, b
    ld l, d
    ld h, e
    ld l, b
    ld h, a
    jr nz, jr_030_5429

    add b
    ld h, c
    cp $30
    ld a, c
    ld b, c
    nop
    sub l
    ld b, b
    dec h
    ret c

    ld b, c
    add e
    db $fc
    ld d, c
    ld b, a
    ld [hl], b
    sub b
    ld h, c
    jr nz, jr_030_5418

    ld e, b
    ld h, a
    ld [de], a
    ld [hl], l
    xor b
    rst RST_28
    ld b, h
    xor h
    ld b, e
    and e
    rra
    ld a, b
    ccf
    ccf
    inc bc
    rst RST_30
    jp Jump_000_3cc0


    jr nc, jr_030_5453

    ld [hl], $30
    rst RST_38
    ld hl, sp+$02
    ld a, [de]
    inc bc
    ld l, b
    add hl, de
    inc d
    add sp, $45
    sub a
    dec h
    nop
    dec bc
    nop
    add hl, bc
    db $f4
    ld l, c
    rst RST_30
    rst RST_38
    ld hl, sp+$03
    ld de, $0700
    ld hl, sp+$0f
    nop
    rrca
    rst RST_30
    ld [$e8df], sp
    nop
    add hl, bc
    ldh a, [$ff5d]
    ld de, $0480
    ld hl, $de04
    rlca
    ld e, h
    ld e, c
    ld d, c
    ld d, h
    ld e, b
    ld e, d
    ld e, c
    ld e, b
    ld [$f555], sp
    xor d
    nop
    db $ed
    ld d, e
    and l
    cp $10

jr_030_5418:
    ld b, c
    adc b
    ld [de], a
    ld b, b
    rst RST_00
    ld hl, $84fe
    jr nz, @-$27

    add hl, hl
    dec l
    ret nz

    ld d, a
    rst RST_38
    add e
    dec [hl]

jr_030_5429:
    add sp, $48
    push hl
    ld bc, $04b1

jr_030_542f:
    ld e, d
    inc bc
    ld b, d
    ld a, d
    ld c, d
    ld d, d
    xor h
    xor h
    xor l
    xor l
    and l
    and a
    and l
    and l
    ld hl, $0420
    ld h, h
    dec b
    ld [hl], h
    inc b
    xor d
    dec b
    cp d
    sub l
    ld b, l
    ld b, l
    ld h, l
    inc b
    ld l, l
    ld [bc], a
    dec l
    inc b
    ld e, d
    rlca
    and l

jr_030_5453:
    inc b
    xor l
    ld [bc], a
    inc b
    xor a
    ld [bc], a
    xor l
    ld h, h
    db $e4
    and $04
    ld h, [hl]
    inc b
    ld a, [hl-]
    ld a, [hl+]
    dec hl
    dec hl
    inc b
    ld a, [hl+]
    ld [bc], a
    xor d
    inc b
    dec l
    dec b
    ld l, l
    ld l, l
    inc b
    ld e, d
    inc bc
    ld e, b
    ld e, c
    ld e, b
    ld e, a
    xor c
    xor c
    xor l
    adc b
    add b
    nop
    and d
    nop
    ld h, h
    ld h, h
    inc h
    and h
    ld [$0001], sp
    jr nz, jr_030_542f

    xor d
    cp d
    inc b
    xor d
    inc bc
    ld a, [hl+]
    xor d
    adc d
    ld [bc], a
    ldh [$fffc], a
    rst RST_38
    rra
    pop hl
    dec l
    dec l
    ld l, l
    dec c
    dec c
    call $fff3
    ld c, $36
    ld b, b
    add b
    rst RST_28
    and b
    and b
    xor c
    cp $fe
    ld b, $00
    ld hl, sp+$07
    ld a, b
    ld a, [hl]
    and c
    xor c
    and c
    and b
    and c
    xor c
    and b
    xor b
    ld a, [hl]
    inc b
    ccf
    ld [bc], a
    ld a, a
    ld a, a
    ld a, e
    ld a, c
    and $56
    ld [hl], $76
    inc b
    or $03
    and b
    and b
    xor h
    and b
    and c
    xor b
    and c
    and b
    ld a, d
    dec sp
    nop
    jr c, jr_030_550f

    inc b
    ld a, a
    ld [bc], a
    or $76
    ld [hl], $86
    ld b, [hl]
    ld b, $66
    ld d, [hl]
    and c
    xor c
    and c
    xor c
    and c
    xor b
    xor h
    and e
    ld a, a
    ld l, a
    ld c, a
    cpl
    ld l, [hl]
    ld l, $02
    ret nz

    ld [hl], $76
    inc b
    or $02
    halt
    or [hl]
    ld d, $04
    xor b
    rlca
    nop
    ld [bc], a
    rlca
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    ld [hl+], a
    ld e, a
    ld b, l
    nop
    nop
    xor h
    cp $00
    nop
    adc h
    rra
    dec c
    nop
    nop
    adc $00
    nop

jr_030_550f:
    ld b, d
    rst RST_38
    sub $00
    nop
    xor b
    nop
    nop
    ld c, b
    ret nc

    ldh a, [rNR23]
    nop

jr_030_551c:
    ld b, b
    inc b
    inc bc
    rlca
    inc b
    rst RST_38
    rlca
    adc $04
    rst RST_08
    ld b, $ab
    inc b
    rst RST_38
    ld b, $68
    inc b
    ld hl, sp+$06
    inc b
    inc bc
    rlca
    inc b
    rst RST_38
    rlca
    inc b
    rst RST_08
    rlca
    inc b
    rst RST_38
    rlca
    inc b
    ld hl, sp+$07
    inc b
    inc bc
    inc b
    ld [bc], a
    nop
    nop
    inc b
    rst RST_38
    ld [bc], a
    ld hl, sp-$10
    ldh [rSTAT], a
    nop
    inc b
    rst RST_08
    ld [bc], a
    ld c, a
    rlca
    nop
    nop
    db $10
    inc b
    rst RST_38
    dec b
    inc b
    ld a, a
    inc bc
    rra
    inc bc
    inc b
    nop
    inc bc
    ld hl, sp-$08
    cp b
    xor b
    jr z, jr_030_556d

    inc b
    nop
    ld [bc], a
    ld h, b
    ret nz

    ld b, b
    nop
    ld b, b

jr_030_556d:
    ld b, c
    ld b, b
    inc b
    nop
    dec b
    ld a, b
    rst RST_38
    inc b
    ld b, b
    ld [bc], a
    ld c, a
    ld b, b
    ld b, b
    ld b, e
    ld b, l
    rst RST_38
    ld a, a
    ld a, a
    rst RST_38
    inc b
    ld a, a
    inc bc
    inc b
    ldh a, [rTAC]
    ld c, c
    ld b, b
    ld b, e
    ld b, b
    ld b, d
    ld b, c
    ld b, b
    ld c, a
    ld a, a
    ccf
    ret nz

    rlca
    ld b, b
    ld a, a
    rst RST_38
    rst RST_38
    ldh a, [$fff0]
    ld [hl], b
    nop
    jr c, jr_030_551c

    ldh a, [$fff0]
    inc b
    ld b, b
    inc b
    ld b, h
    ld b, e
    ld b, b
    inc b
    ld a, a
    inc bc
    rst RST_38
    ccf
    jp Jump_000_043c


    ldh a, [rTMA]
    jr nc, jr_030_55cd

    nop
    ld b, [hl]
    ld a, e
    rst RST_38
    nop
    nop
    dec c
    xor $11
    cp e
    ld b, h
    ld [de], a
    ld bc, $55ff
    xor d
    xor d
    ld d, l
    db $10
    rst RST_28
    ld [hl], a
    ld [$5bff], sp
    inc h
    ld a, a
    nop
    ld [hl], $49

jr_030_55cd:
    ld a, a
    nop
    rst RST_38
    scf
    ld c, b
    ld c, d
    dec [hl]
    dec [hl]
    ld c, d
    ld b, h
    cp e
    cp a
    ld de, $00ee
    rst RST_38
    ld b, h
    cp e
    ld bc, $6c05
    ld a, a
    inc de
    ld [de], a
    ld l, l
    ld c, b
    scf
    nop
    ld a, a
    ld b, [hl]
    ld bc, $05ff
    ld a, a
    ld [de], a
    ld a, a
    ld b, h
    rst RST_38
    ld de, $feff
    ld d, b
    inc bc
    xor d
    rst RST_38
    ld d, l
    rst RST_38
    rst RST_28
    rst RST_38
    ld c, c
    rst RST_38
    ld a, a
    inc h
    ld a, a
    ld d, c
    ld a, a
    ld a, [hl+]
    ld a, a
    ld d, l
    cp $65
    ld [bc], a
    dec sp
    ld a, a
    cp e
    rst RST_38
    xor $ff
    rst RST_38
    di
    rst RST_38
    cp e
    ld [hl], e
    nop
    ld [hl], a
    inc bc
    ld l, [hl]
    ld a, a
    scf
    ld a, a
    ld e, b
    add e
    add hl, bc
    inc d
    inc bc
    ld d, $05
    nop
    ret nz

    sub b
    inc c
    nop
    sub b
    inc c
    db $fd
    inc bc
    sub b
    dec bc
    ld de, $5dee
    ld [hl+], a
    ld a, [hl+]
    ld d, l
    db $db
    ld d, l
    ld a, [hl+]
    jp nc, $6b05

    inc d
    jr nc, jr_030_564b

    ld d, $69
    rst RST_38
    ld b, l
    ld a, [hl-]
    db $10
    ld l, a
    ld b, h
    dec sp
    ld de, $fe6e
    ld b, [hl]

jr_030_564b:
    inc bc
    xor d
    sbc a
    ld d, h
    ccf
    inc sp
    ld a, h
    inc l
    rst RST_38
    ld [hl], b
    jr nc, jr_030_56b7

    ld d, b
    jr nz, jr_030_56b6

    inc hl
    ld sp, $7ffb
    add b
    nop
    nop
    scf
    nop
    nop
    nop
    sub h
    rst RST_38
    ld h, b
    rst RST_18
    ld h, b
    and c
    ld c, [hl]
    ld d, h
    adc a
    and b
    rst RST_28
    ld e, a
    dec b
    rst RST_38
    sub h
    dec d
    db $10
    ld [$3d06], sp
    rst RST_38
    ld b, $4a
    inc [hl]
    ld sp, $0d78
    pop af
    ld a, [hl-]
    rst RST_38
    db $fc
    xor $1c
    ld d, h
    ld c, $1c
    ld b, $cc
    rst RST_18
    ld b, $2c
    add $dc
    and $50
    dec bc
    xor $ff
    ld [hl], a
    jr nz, jr_030_5717

    ld d, b
    ld h, l
    nop
    ld b, l
    ld a, a
    jr z, jr_030_5706

    ld [bc], a
    rst RST_38
    ld [hl], l
    ld a, a
    dec c
    ld [hl], e
    ld a, [hl+]
    ld d, c
    dec h
    ld e, b
    rst RST_38
    ld a, b
    ld b, $30
    nop
    dec [hl]
    ld c, $0e
    rra
    rst RST_38
    ld l, $1f
    adc [hl]

jr_030_56b6:
    rst RST_38

jr_030_56b7:
    or $fb
    ld c, b
    di
    rst RST_38
    sub l
    ld h, [hl]
    ld [bc], a
    inc b
    ld b, h
    ld h, b
    add b
    ld h, b
    rst RST_38
    sub d
    inc c
    rst RST_38
    ld a, a
    and a
    ld a, a
    sbc d
    ld h, a
    rst RST_38
    ld b, [hl]
    inc hl
    jr nz, jr_030_56e2

    inc e
    ld b, $0a
    inc b
    rst RST_38
    jr z, jr_030_56e9

    db $ec
    or $08
    or $e8
    ld d, $ff
    inc c
    ld [hl-], a

jr_030_56e2:
    ld [hl], h
    ld [bc], a
    ld b, $00
    ldh [rP1], a
    ei

jr_030_56e9:
    db $10
    ldh [rSVBK], a
    dec bc
    cp $fe
    inc [hl]
    rrca
    ld c, c
    rst RST_38
    ld h, $07
    ld h, b
    inc sp
    ld h, b
    jr nz, jr_030_576a

    db $10
    ei
    jr nc, jr_030_5716

    dec d
    db $10
    pop hl
    ld e, $c0
    rra
    add h
    rst RST_38

jr_030_5706:
    dec de
    dec d
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld b, b
    rst RST_38
    ld h, b
    ld h, $40
    ld b, [hl]
    add hl, sp
    ld b, b
    dec a

jr_030_5716:
    ld d, b

jr_030_5717:
    rst RST_28
    dec l
    dec a
    nop
    jr z, @+$17

    db $10
    inc b
    ld b, $02
    rst RST_38
    inc b
    ret z

jr_030_5724:
    ldh a, [$ffcc]
    ldh a, [rNR30]
    db $e4
    ld l, $ff
    call nz, Call_000_04ce
    ld [bc], a
    inc c
    inc d
    ld [$f128], sp
    db $10
    ld [hl], b
    dec bc
    adc [hl]
    nop
    ld [hl], c
    inc c
    ld d, a
    ld a, a
    ld a, e
    ld a, a
    rst RST_38
    ld a, $7f
    ld [hl], a
    ld a, a
    dec l
    ld a, a
    ld e, e
    ld a, a
    cp l
    ld a, [hl]
    add e
    nop
    nop
    nop
    inc a
    jp Jump_000_2922


    nop
    rst RST_30
    nop
    rst RST_38
    rst RST_00
    ld [hl-], a
    add hl, hl
    nop
    nop
    jr c, jr_030_5724

    sbc $42
    add hl, hl
    nop
    nop
    ld e, [hl]
    di
    ld d, d
    add hl, hl
    ld a, a
    ld a, a
    rst RST_38
    ccf

jr_030_576a:
    cp a
    rra
    rst RST_18
    rrca
    rst RST_28
    rla
    rst RST_20
    rst RST_38
    dec de
    db $e3
    add hl, de
    push hl
    ld a, [de]
    db $e4
    nop
    nop
    db $dd
    cp $15
    db $10
    cp $00
    ld d, h
    dec d
    db $10
    ld [bc], a
    dec b
    rst RST_38
    jr c, @+$22

    ld a, a
    ld a, a
    sbc a
    rra
    ld h, a
    rlca
    rst RST_38

jr_030_578f:
    sbc c
    ld bc, $0066
    add hl, de
    nop

jr_030_5795:
    jp nz, $ff20

    inc c
    db $10
    ld [$2404], sp
    ld de, $0231
    rst RST_38
    inc b
    nop
    dec l
    ld b, $02
    inc c
    ld hl, $ff10
    jr @+$03

    jr nc, jr_030_57ae

jr_030_57ae:
    ld d, b
    inc b
    db $10
    jr z, @+$01

    ld [hl], b
    ld b, b
    ldh a, [rDIV]
    xor h
    ld c, b
    jr jr_030_582b

    jp $a050


    ld [hl], e
    nop
    jr nc, jr_030_57e2

    nop
    ld bc, $21b9
    ld b, $08
    ld a, a
    cp $fe
    cp $00
    ld [bc], a
    db $fc
    cp $71
    ld [hl+], a

Jump_030_57d2:
    cpl
    nop
    nop
    jr nc, @+$49

    or b
    dec hl
    ld [bc], a
    or h
    jr nz, jr_030_578f

    add hl, hl
    rst RST_38
    add b
    nop
    inc bc

jr_030_57e2:
    nop
    reti


    ld [bc], a

jr_030_57e5:
    jp z, $3713

    db $db
    ld [de], a
    jp c, $24f5

    ld a, [de]
    push hl
    nop
    dec sp
    ld h, b
    dec h
    rst RST_38
    rlca
    rst RST_30
    inc bc
    ei
    ld bc, $00fd
    cp $16
    ld [hl+], a
    dec hl
    inc a
    jp $2b32


    rst RST_38
    ld b, e
    ld a, [hl+]
    ld b, d
    ld hl, $2b52
    call c, Call_000_215e
    ld h, b
    dec sp
    ret nz

    add b
    add b
    db $ec
    jr nz, jr_030_5795

    ld b, b
    rst RST_38

jr_030_5817:
    ld h, b
    jr jr_030_5837

    ld [bc], a
    rlca

jr_030_581c:
    nop

jr_030_581d:
    jr nz, jr_030_581f

jr_030_581f:
    rst RST_38
    ld bc, $0002
    ld bc, $0100
    inc bc
    ld [bc], a
    ld a, a
    inc e
    ld a, [bc]

jr_030_582b:
    ld c, b
    ldh a, [$ffe0]
    nop
    inc b
    rst RST_18
    inc l
    cp $b9
    ld hl, $00ff

jr_030_5837:
    ret nz

    nop
    ret nz

    ccf
    rst RST_18
    ld a, a
    jr nz, jr_030_5817

    jr nz, jr_030_581c

    jr nz, jr_030_581d

    jr nz, jr_030_57e5

    ld sp, $9fe0
    ld sp, $21b8
    cp b
    inc hl
    cp b
    ld [hl+], a
    pop bc
    jr nz, jr_030_5858

    nop
    or $cf
    ld [$0816], sp

jr_030_5858:
    jp c, $30ad

    ret nc

    add hl, sp
    sub $08
    ld hl, sp-$20
    dec sp
    ld hl, sp+$25
    ld hl, sp+$23
    jp c, $c013

    nop

jr_030_586a:
    db $db
    ccf
    nop
    rl b
    ld e, e
    sub b
    db $db
    dec b
    ld c, a
    dec bc
    ld b, b
    rst RST_28
    db $db
    db $10
    ld l, d
    inc c
    jr nz, jr_030_58c8

    ld d, b
    ld h, b
    ld d, b
    add hl, hl
    ld h, [hl]
    ld [hl-], a
    ld b, b
    ld sp, $6741
    ld a, [hl-]
    ld b, b
    ld h, b
    ld a, [hl-]
    ld b, d
    dec sp
    ld c, b
    nop
    ld b, a
    ld [bc], a
    ld d, c
    ld c, b
    rst RST_38
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

jr_030_58a9:
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
    rst RST_08
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

jr_030_58c8:
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

    jr c, jr_030_586a

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
    jr nc, jr_030_58a9

    ret nz

    pop hl
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
    jr nc, jr_030_5960

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

jr_030_5960:
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

jr_030_5973:
    ld a, [bc]
    add b
    ret nz

    ld h, b
    or b
    ld e, b
    jr z, jr_030_5991

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

jr_030_598b:
    ld [$fcfe], a
    ldh a, [$ffc0]
    ld [bc], a

jr_030_5991:
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
    jr nz, jr_030_59bf

jr_030_59bf:
    ld d, h
    ld [$e381], sp
    jp Boot


    ld c, $70
    add a
    jr nc, jr_030_598b

    inc bc
    ccf
    ret nz

    rrca
    ld [hl], b
    nop
    rlca
    jr c, jr_030_5973

    ld hl, sp-$08
    rrca
    ld c, $00
    rst RST_38
    nop
    rst RST_38
    nop
    ret nz

    call z, Call_030_673d

jr_030_59e1:
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
    jr nc, jr_030_5a0d

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

jr_030_5a0d:
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

    jr z, jr_030_59e1

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
    call z, Call_030_7cb3
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

Jump_030_5a5a:
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
    jr c, jr_030_5acc

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
    jr jr_030_5ac4

    inc [hl]
    jr c, jr_030_5b2a

    jp Jump_000_2ff5


    rst RST_10
    dec l
    inc de
    ld d, $28
    ld [hl], d
    reti


    db $e4
    add a

jr_030_5ac4:
    cpl
    ld e, l
    db $fd
    ld l, l
    inc hl
    rra
    ei
    db $dd

jr_030_5acc:
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
    rst RST_38
    nop
    nop
    dec e
    ld hl, sp+$02
    ldh a, [$ff2c]
    xor d
    cp d
    jp c, Jump_030_5a5a

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

jr_030_5b2a:
    ld a, [$535a]

Jump_030_5b2d:
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
    jr jr_030_5b95

jr_030_5b95:
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
    jr jr_030_5bcc

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
    jr z, jr_030_5bcf

    ld [de], a

jr_030_5bcc:
    add hl, bc
    nop
    nop

jr_030_5bcf:
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

Jump_030_5c27:
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
    jr nz, jr_030_5c8b

    dec e
    nop

jr_030_5c8b:
    inc bc
    ccf
    ldh a, [$ff80]
    dec e

jr_030_5c90:
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

jr_030_5cb8:
    jr nc, jr_030_5cd6

    inc c
    ld b, $01
    adc a
    jp c, $2265

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
    jr nc, jr_030_5c90

    ld [bc], a
    inc b
    ld a, [de]
    ld l, a
    dec e
    nop

jr_030_5cd6:
    inc bc
    ld b, b
    jr nz, jr_030_5cf4

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

jr_030_5cf4:
    jr c, jr_030_5cb8

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

jr_030_5d9d:
    jp Jump_030_71e1


    ld [hl], b
    jr c, jr_030_5e04

    ld h, b
    ld h, b
    jr nz, jr_030_5dc4

    jr nc, jr_030_5dab

    db $10
    inc e

jr_030_5dab:
    jr c, jr_030_5de5

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

jr_030_5dc4:
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

jr_030_5de4:
    rra

jr_030_5de5:
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
    jr jr_030_5d9d

    adc h
    adc $ce

jr_030_5e04:
    and $e7
    rst RST_30
    jr jr_030_5e21

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

jr_030_5e21:
    dec e
    rst RST_38
    dec b
    jr jr_030_5e42

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

jr_030_5e42:
    inc c
    inc e
    rst RST_00
    rst RST_08
    rra
    dec a
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
    jr z, jr_030_5de4

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
    jr jr_030_5ea1

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

jr_030_5ea1:
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
    jr jr_030_5eb9

    dec e
    nop

jr_030_5eb9:
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
    jr jr_030_5edd

    ld b, $07
    inc bc
    nop
    add b
    dec e
    nop
    add hl, bc
    ld bc, $001d
    inc b

jr_030_5edd:
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
    ld de, $2200
    add b
    rst RST_38
    rst RST_38
    db $fc
    ld hl, sp-$0f
    ldh a, [$ffe4]
    ldh [$fffc], a
    add d
    inc bc
    sbc l
    ld a, [$0080]
    add hl, bc
    nop
    jr c, jr_030_5f74

    jp hl


    ld c, l
    dec c
    jr @+$05

    ld a, a
    adc a
    jp $fed0


    ld a, [bc]
    nop
    inc e
    ld [hl+], a
    rst RST_38
    inc b
    ld a, a
    ld a, a
    ccf
    and $e3
    db $e4
    db $e3
    ldh a, [c]
    ldh a, [$ffe6]
    rst RST_28
    ld d, $2f
    inc de
    inc l
    ld d, a
    ld d, b
    ld h, e
    ld b, b
    ld [hl], b
    rst RST_38
    rst RST_20
    ld l, c
    adc h
    ld a, d
    ld bc, $42e2
    ei
    db $fc
    jr nc, jr_030_5f85

    and [hl]
    nop
    or h
    ccf
    ccf
    ld [hl+], a
    ld a, a
    ld [bc], a
    ld [hl+], a
    rst RST_38
    ld [bc], a
    add sp, -$13
    db $ec
    db $ec
    or $f7
    ei
    ld a, [$3059]
    ld c, l
    ld a, a
    ld a, [hl-]
    ld b, a
    ld sp, hl
    ld h, [hl]
    ld d, c
    ld [bc], a
    ld l, e
    dec a
    add hl, sp
    or e
    ret


    ld a, [hl+]
    nop
    cpl
    ld h, a
    rst RST_00
    ld hl, sp-$29
    cp d
    ld c, b
    rst RST_38
    ld [hl+], a
    ld a, a
    ld b, $f9
    db $fc
    cp $fc
    pop bc
    ld sp, $b1d1
    ld l, b

jr_030_5f74:
    ld b, c
    ld l, e
    halt
    ld l, h
    jr nc, jr_030_5fb4

    inc e
    ret nz

    sub [hl]
    ld d, b
    sub b
    ld b, c
    sbc h
    ld a, b
    or h
    inc d
    ld h, d

jr_030_5f85:
    dec b
    ld [bc], a
    sub h
    ld sp, $2c1a
    ld [hl+], a
    ld a, a
    ld [bc], a
    ccf
    ccf
    rra
    rrca
    inc bc
    ret nc

    ld [hl+], a
    sub b
    inc bc
    ret nc

    sub c
    add hl, de
    dec c
    add [hl]
    ldh [$ff78], a
    inc e
    rlca
    nop
    add b
    dec hl
    ld c, a
    ld h, l
    jr nc, jr_030_5fae

    add b
    db $fc
    rra
    add h
    db $e4
    ld c, b
    db $10

jr_030_5fae:
    ldh [rP1], a
    inc c
    ldh a, [$ffd1]
    ld c, [hl]

jr_030_5fb4:
    daa
    inc sp
    ld hl, $2932
    db $10
    rst RST_38
    ld a, a
    sbc a
    rst RST_28
    db $e3
    ldh [$ffe0], a
    and $22
    rst RST_38
    dec b
    rra
    inc bc
    adc b
    ld c, b
    adc b
    ld c, h
    add h

Call_030_5fcc:
    xor h
    call nz, $f0b6
    cp $3c
    ld c, $22
    nop
    dec b
    ld b, b
    ld [bc], a
    ld a, a
    ld [hl+], a
    nop
    ld [bc], a
    ld bc, $0b02
    ldh a, [$ff80]
    ld [hl+], a
    nop
    ld [bc], a

jr_030_5fe4:
    add hl, de
    db $10
    ld [$0c08], sp
    ld c, $04
    ld b, $ef
    db $ec
    ld h, h
    db $e4
    ld [hl], h
    or b
    ld [hl], b
    inc sp
    cp $9a
    dec c
    ld [$361c], sp
    ld c, e
    add c
    ld [hl+], a
    nop
    ld [bc], a
    ld a, [hl+]
    rra
    xor a
    sbc a
    adc d
    ld [hl+], a
    nop
    ld [bc], a
    and b
    rst RST_30
    rst RST_38
    push af
    xor b
    nop
    inc bc
    rlca
    xor $f4
    and b
    nop
    nop
    ld b, $07
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc de
    xor d
    ld e, e
    dec sp
    ld e, e
    cp c
    ld a, c
    inc a
    ld a, h
    cp h
    nop
    ld bc, $0000
    add b
    add b
    ld b, b
    ld b, b
    add b
    ret nz

    ret nz

    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld h, b
    nop
    ld bc, $170a
    ld a, a
    xor d
    ld d, a
    ld l, $03
    ld e, a
    rst RST_38
    rst RST_38
    cp $be
    ld e, h
    and b
    ld d, e
    ld a, [$52b3]
    and e
    ld [bc], a
    ld [bc], a
    ld b, $7c
    jr c, jr_030_60bf

    ld h, b
    jr nz, jr_030_60b2

    jr nc, jr_030_608c

    ld b, b
    ld [hl+], a
    jr nz, jr_030_605a

    jr nc, jr_030_606a

jr_030_605a:
    jr jr_030_5fe4

    ld [hl+], a
    jr nz, jr_030_6061

    jr nc, jr_030_6083

jr_030_6061:
    db $10
    inc bc
    ld [hl+], a
    nop
    inc bc
    ld bc, $0102
    nop

jr_030_606a:
    dec b
    ld b, $04
    inc b
    ld b, h
    and h
    ld b, h
    add h
    inc e
    inc l
    jr jr_030_60ae

    ld e, b
    jr nc, jr_030_60e9

    ld h, b
    adc h
    call nz, $c2c6
    db $e3
    pop hl
    pop af
    add sp, $18

jr_030_6083:
    ld [$0818], sp
    jr jr_030_60d4

    sub h
    call z, Call_000_0022

jr_030_608c:
    inc bc
    db $10
    ld e, $0b
    dec b
    ld bc, $0502
    ld [bc], a
    add b
    add d
    stop
    ld b, h
    add h
    ld c, l
    adc c
    add hl, bc
    adc d
    add hl, de
    inc de
    ldh [$ffe0], a
    ld [hl+], a
    ret nz

    inc bc
    add b
    add b
    ldh a, [$fff8]
    db $f4
    ld a, [$fafc]

jr_030_60ae:
    db $fc
    cp $f6
    ld l, d

jr_030_60b2:
    halt
    dec sp
    dec d
    dec bc
    dec c
    rlca
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    dec b
    add b

jr_030_60bf:
    add b
    nop
    nop
    ld [bc], a
    nop
    adc h
    ld e, [hl]
    ld a, $1e
    dec de
    rla
    dec hl
    scf
    daa
    ld a, [hl+]
    ld b, [hl]
    ld l, [hl]
    add b
    ld [hl+], a
    nop
    inc bc

jr_030_60d4:
    inc b
    ld [$fd14], sp
    cp $ff
    cp $22
    rst RST_38
    inc bc
    rlca
    inc bc
    ld bc, $0081
    add b
    ld b, b
    and b
    add b
    ld [hl+], a
    ret nz

jr_030_60e9:
    ld [bc], a
    ldh [$ffe0], a
    ld [hl], b
    ld [hl], b
    inc a
    inc e
    ld [$1109], sp
    add hl, bc
    inc de
    dec bc
    call c, $b89c
    ld hl, sp-$08
    ldh a, [$fff0]
    pop hl
    ld a, [bc]
    ld d, h
    adc d
    ld e, h
    xor [hl]
    ld e, h
    cp [hl]
    ld a, h
    rst RST_38
    rst RST_28
    rst RST_28
    rst RST_10
    db $eb
    push bc
    and e
    pop bc
    ret nz

    ldh a, [$ffe8]
    db $f4
    ld a, [$fafd]
    db $fd
    jr nc, jr_030_6134

    inc c
    inc c
    ld b, $02
    add e
    ld b, c
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld a, $be
    ldh [$ffc1], a
    ret nz

    add c
    add d
    ld bc, $0502
    cp d
    ld a, h
    ld hl, sp+$74
    ld hl, sp-$0c

jr_030_6134:
    ld hl, sp-$10
    rst RST_38
    ldh a, [rIE]
    nop
    ld h, b
    rrca
    db $fc
    ldh a, [rIE]
    inc bc
    ld hl, sp+$00
    inc a
    rst RST_38
    nop
    nop
    ld [hl+], a

jr_030_6147:
    rst RST_38
    ld [bc], a
    nop
    nop
    ldh a, [$ff1f]
    nop
    rlca
    ccf
    ld a, a
    rst RST_38
    cp $fe
    db $fc
    inc a
    ret nz

    add b
    ld [hl+], a
    nop
    ld [bc], a
    inc e
    ld h, e
    ld c, h
    ld [hl+], a
    nop
    inc bc
    inc bc
    ld b, $19
    db $e3
    ld [hl+], a
    nop
    inc bc
    ld [$f102], sp
    ld hl, sp+$1f
    rrca
    rlca
    inc bc
    inc bc
    ld bc, $8101
    ld a, h
    ld [hl+], a
    ld a, [hl]
    ld [bc], a
    cp $7e
    cp $fe
    sub a
    add e
    rrca
    rra
    ld c, $37
    db $dd
    ldh a, [rIE]
    ld a, [$fdf4]
    db $fd
    ld a, e
    ld h, [hl]
    push bc
    db $fc
    db $fc
    dec a
    reti


    cp b
    ld h, d
    ldh a, [rKEY1]
    add c
    pop bc
    ld b, c
    ld [hl+], a
    ld b, e
    ld [bc], a
    pop bc
    add $fe
    cp $22
    rst RST_38
    ld [bc], a
    ld [hl+], a
    cp $02
    ld a, [bc]
    add a
    nop
    ld a, b
    jr nz, jr_030_6147

    or b
    cp a
    sub c
    ld h, b
    jr nz, jr_030_61c0

    ld l, b
    and h
    xor e
    ld [hl], h
    inc bc
    ld [bc], a
    pop af
    nop
    call nc, $fc19
    ld sp, hl
    ld c, c
    and c
    dec h
    ld h, b

jr_030_61c0:
    db $e4
    pop hl

Call_030_61c2:
    or b
    xor b
    ld [hl], a
    ld a, c
    ld a, c
    ld a, e
    ld [hl], e
    ld [hl], c
    ld [hl], a
    ld l, l
    cp $22
    rst RST_38
    ld b, $b8
    ld d, c
    ld b, b
    and e
    or h
    db $d3
    reti


    ret c

    ld a, c
    ld h, h
    inc hl
    adc h
    ld d, e
    xor a
    ld [bc], a
    nop
    ld a, d
    or h
    ld l, c
    adc [hl]
    ld b, [hl]
    cp a
    ld a, l
    ld d, l
    and b
    ldh a, [$ff61]
    jp Jump_030_47e7


    ld h, e
    ld b, b
    ld [hl+], a
    rst RST_38
    ld b, $fc
    rst RST_38
    rst RST_38
    cp $fd
    ld a, [$84f2]
    ld [hl], c
    db $db
    rla
    ld d, $04
    dec b
    dec b
    ld [bc], a
    ld bc, $ff01
    nop
    ld c, [hl]
    sub c
    xor h
    ld c, $21
    ld c, h
    adc b
    sbc b
    inc l
    db $e4
    ret z

    ldh [$ff80], a
    ld [$1b19], sp
    or e
    ld [hl-], a
    ld h, [hl]
    and $c6
    rra
    xor a
    ld d, a
    ld d, e
    xor c
    xor c
    ld d, [hl]
    ld e, [hl]
    ret nz

    pop bc
    pop hl
    push af
    ld [hl+], a
    db $f4
    ld [bc], a
    xor $03
    push af
    push de
    call nc, $c1c1
    push bc
    rst RST_10
    and b
    nop
    ld d, b
    ld c, b
    jr z, jr_030_624f

    ld b, l
    ld a, [hl+]
    ld b, h
    add [hl]
    add a
    ld [hl+], a
    ld b, e
    ld [bc], a
    ld h, e
    ld h, e
    cp $00
    ld b, [hl]
    inc e
    dec a
    ld b, [hl]
    ccf
    ld e, $03
    dec b
    dec bc

jr_030_624f:
    scf
    ld c, [hl]
    ld l, $a7
    sub a
    push bc
    add l
    ld a, [bc]
    ld a, [bc]
    dec c
    ld c, l
    jp nz, Jump_030_57d2

    cpl
    xor e
    add e
    ld b, l
    ld b, c
    add d
    sbc d
    ld [$ebea], a
    jp hl


    ret


    ret z

    adc b
    ld [$5456], sp
    ld a, l
    ccf
    ccf
    add [hl]
    ld b, c
    ld h, b
    dec d
    dec d
    jp nc, Jump_000_09a2

    dec d
    ld d, h
    jp z, $2627

    and [hl]
    and h
    ld h, l
    ld h, l
    or c
    or e
    ld e, h
    add hl, de
    cp e
    add $c8
    add $d4
    push de
    sub e
    add hl, bc
    add hl, bc
    dec b
    ld h, e
    or b
    db $10
    ld e, b
    reti


    sbc c
    sub h
    inc d
    add hl, hl
    ld [hl-], a
    ld h, h
    ld c, c
    ld l, d
    ld l, b
    ldh [$ff80], a
    ld h, c
    ld a, [hl]
    sbc d
    inc h
    jr @+$16

    ld [de], a
    inc de
    ld de, $1710
    ld [de], a
    ld h, b
    ld h, b
    jr nz, jr_030_62d0

    sub b
    ld [hl+], a
    ret nc

    ld [bc], a
    xor d
    ld h, l
    dec [hl]
    inc sp
    ld a, [de]
    ld [$060c], sp
    ld d, e
    ld d, c
    ld c, c
    add hl, hl
    and h
    sub h
    db $10
    ld [bc], a
    sbc e
    cp d
    cp h
    dec a
    dec [hl]
    ld [hl], l
    ld a, e
    ld e, d
    inc a
    cp b
    ret nc

    pop bc

jr_030_62d0:
    ld b, c
    jp nz, $8482

    ld d, d
    and h
    add hl, bc
    ld [de], a
    inc h
    ld c, c
    sub d
    dec h
    ld [hl+], a
    nop
    ld c, $06
    ld [hl+], a
    nop
    ld e, $06
    rrca
    rra
    rrca
    inc de
    jr c, @+$22

    nop
    nop
    adc a
    rst RST_38
    rst RST_38
    rst RST_30
    ld [hl], e
    ld bc, $0100
    cp h
    db $fc
    ei
    rst RST_38
    or b
    nop
    nop
    jr jr_030_631f

    nop
    rlca
    add hl, bc
    ld [$0422], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    jr nz, jr_030_6309

jr_030_6309:
    ld sp, $7c00
    jr c, jr_030_6315

    rra
    ldh [rSB], a
    ld hl, $07c3
    ld h, a

jr_030_6315:
    rst RST_20
    pop bc
    nop
    and h
    sbc b
    add b
    add a
    xor a
    rst RST_20
    and a

jr_030_631f:
    ld [hl+], a
    nop
    rlca
    ld hl, sp-$04
    cp $fc
    ret nz

    nop
    jr nz, jr_030_636a

    rra
    ld a, $14
    ld [$0810], sp
    ld bc, $0003
    ld [$603f], sp
    adc [hl]
    inc bc
    add b
    ld [$1903], sp
    ld hl, sp+$0c
    ld h, d
    jp nz, Jump_000_1000

    ld [hl+], a
    nop
    rlca
    jr nz, jr_030_6369

    ld h, b
    inc bc
    jr nz, jr_030_63ab

    ldh [rSC], a
    ld [hl+], a
    nop
    ld b, $1c
    ccf
    rra
    rrca
    ld [hl+], a
    nop
    inc bc
    ld a, b
    ld hl, sp-$10
    ldh [rNR43], a
    nop
    inc bc
    ld hl, $1830
    inc c
    ld e, $0d
    ld d, $0f
    rst RST_38
    ld a, a
    rra

jr_030_6369:
    rrca

jr_030_636a:
    inc bc
    ld [hl+], a
    nop
    ld a, [bc]
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld a, b
    ld d, b
    jr c, jr_030_63be

    nop
    nop
    inc bc
    ld bc, $0022
    dec b
    add b
    db $fd
    ld [hl+], a
    nop
    dec bc
    ld b, $0f
    rlca
    rlca
    inc bc
    ld bc, $0103
    nop
    inc bc
    add e
    inc bc
    add e
    ld b, e
    add e
    ret nz

    nop
    inc b
    ld [bc], a
    rlca
    inc bc
    add hl, bc
    inc [hl]
    ld a, [hl]
    ld [hl+], a
    nop
    rla
    ld bc, $0000
    ld bc, $0100
    nop
    ld bc, $c0a0
    and b
    ld b, b
    add b
    ret nz

jr_030_63ab:
    add b
    ld b, b
    rst RST_38
    cp $ff
    rst RST_38
    ld a, a
    ld a, a
    ccf
    ccf
    ld [hl+], a
    nop
    ld [bc], a
    ld [hl+], a

Call_030_63b9:
    add b
    inc b
    ld [hl+], a
    nop
    db $10

jr_030_63be:
    ld bc, $0100
    nop
    ld [hl+], a
    ld bc, $8002
    ret nz

    add b
    add b
    ret nz

    add b
    ret nz

    ret nz

    ccf
    ld [hl+], a
    rra
    ld [bc], a
    rrca
    rrca
    rlca
    rlca
    ld [hl+], a
    ret nz

    inc bc
    ld [hl+], a
    ldh [$ff03], a
    ld [hl+], a
    nop
    rlca
    ld [bc], a
    ld bc, $0322
    dec b
    ldh [$ffd0], a
    ldh [$ffc0], a
    and b
    ret nz

    add b
    add b
    inc bc
    inc bc
    ld bc, $2201
    nop
    inc bc
    ldh [$fff0], a
    ldh [$fff0], a
    ldh [$ffb0], a
    ld l, b
    jr nc, jr_030_641d

    nop
    rrca
    inc bc
    inc bc
    ld [bc], a
    ld b, $06
    dec b
    ld b, $0c
    ld [hl+], a
    nop
    rrca
    ld [$0814], sp
    inc b
    ld a, [bc]
    inc b
    ld [bc], a
    ld [hl+], a
    nop
    db $10
    inc b
    ld [$0814], sp
    jr jr_030_642c

    jr c, jr_030_642a

    ld [hl+], a
    nop
    daa

jr_030_641d:
    jr nz, jr_030_647f

    ld b, b
    ld [hl+], a
    nop
    inc a
    ld [hl+], a
    rst RST_38
    inc bc
    sbc a
    ldh a, [rP1]
    nop

jr_030_642a:
    ld [hl+], a
    rst RST_38

jr_030_642c:
    inc bc
    jp Jump_000_0022


    ld [bc], a
    ld [hl+], a
    rst RST_38
    inc b
    rrca
    nop
    nop
    ld hl, sp-$40
    add b
    ld [hl+], a
    nop
    inc bc
    ret nz

    ld [hl+], a
    nop
    dec b
    inc e
    ccf
    ld [hl+], a
    nop
    inc b
    ld bc, $1f07

Jump_030_6449:
    ld [hl+], a
    nop
    inc bc
    ldh a, [$fffc]
    cp $ff
    ld [hl+], a
    nop
    rlca
    ld [hl+], a
    add b
    inc bc
    nop
    add b
    nop
    nop
    ld a, a
    ld a, a
    ld [hl+], a
    rst RST_38
    ld [bc], a
    adc $e2
    ld [hl+], a
    rst RST_38
    inc bc
    cp $fe
    db $fc
    ld sp, hl
    ld a, e
    rst RST_38
    rst RST_38
    cp $3e
    ld a, [hl]
    db $fc
    db $fc
    add b
    ld [hl+], a
    nop
    ld b, $80
    ld [hl+], a
    nop
    rlca
    rst RST_08
    ld [hl+], a
    nop
    ld [bc], a
    ld b, b
    ld l, c
    ld h, b

jr_030_647f:
    ld [hl], b
    ld l, [hl]
    nop
    nop
    jr nz, jr_030_64b5

    ld a, b
    ld [hl], h
    ei
    ld bc, $0001
    nop
    sbc b
    nop
    inc bc
    cp $86
    ld [$8d48], sp
    ld bc, $490c
    ld b, e
    ld [$0606], sp
    inc b
    inc c
    ld c, $0c
    ld e, $22
    nop
    rlca
    ld a, [hl]
    ld a, $38
    db $10
    inc bc
    rlca
    ld b, $04
    ld hl, sp-$08
    ld b, b
    inc bc
    adc a
    rst RST_18
    ld bc, $fc00
    ld a, b

jr_030_64b5:
    jr nc, jr_030_64e8

    cp c
    ret nz

    add b
    ld [$0c46], sp
    adc h
    ld [hl+], a
    add b
    inc b
    ld [hl+], a
    nop
    rlca
    rst RST_38
    rst RST_38
    cp $fc
    ld hl, sp-$10
    add b
    inc b
    inc b
    nop
    nop
    ld [hl+], a
    inc bc
    ld [bc], a
    ld bc, $fe00
    nop
    nop
    add b
    adc $df
    rst RST_38
    sbc $08
    inc c
    inc c
    jr @+$1a

    jr nc, jr_030_64e3

jr_030_64e3:
    nop
    ld [hl+], a
    add b
    ld [bc], a
    ld [hl+], a

jr_030_64e8:
    nop
    ld [bc], a
    ld bc, $1f01
    rrca
    rlca
    inc bc
    ld bc, $0001
    jr nz, jr_030_64b5

    ret nz

    ldh [rNR43], a
    ldh a, [$ff03]
    ldh [rP1], a
    ld a, [bc]
    ld a, [hl+]
    dec hl
    ld a, $3e
    ld a, [hl-]
    jr z, jr_030_6551

    ld [$958a], a
    sub l
    xor d
    ld a, [hl-]
    dec d
    ld [hl+], a
    nop
    inc b
    ld [hl+], a
    add b
    ld [bc], a
    nop
    nop
    jr c, jr_030_6515

jr_030_6515:
    ld e, $3f
    ld a, a
    ld a, a
    nop
    ld [bc], a
    inc b
    ld [$1030], sp
    jr jr_030_6529

    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec c
    dec c

Call_030_6529:
jr_030_6529:
    xor b
    ret nc

    ld d, b
    ld l, b
    xor b
    or h
    ld d, h
    ld b, b
    ld [hl+], a
    db $e4
    ld [bc], a
    and $c6
    rst RST_00
    add a
    rlca
    jr z, jr_030_6563

    ld [hl+], a
    nop
    inc bc
    add b
    add b
    ld a, [bc]
    ld a, [bc]
    dec c
    dec e
    halt

jr_030_6545:
    ld [$35ab], a
    ret nz

    ret nz

    ld b, b
    ld b, b
    add b
    add b
    ld b, b
    ld b, b
    ccf

jr_030_6551:
    ld a, $1c
    jr jr_030_6555

jr_030_6555:
    jr jr_030_6575

    ld e, $0c
    ld b, $06
    ld [bc], a
    nop
    ld b, b
    ld h, b
    jr nz, jr_030_6567

    ld b, $0b

jr_030_6563:
    dec bc
    ld d, $0d
    dec de

jr_030_6567:
    ld [hl], $80
    add b
    nop
    nop
    add b
    add b
    ld h, h
    jp c, $0307

    ld bc, $0022

jr_030_6575:
    inc bc
    ld bc, $8080
    ret nz

    ret nz

    ld h, b
    ld [hl+], a
    jr nz, jr_030_6581

    ld d, l
    ld a, [de]

jr_030_6581:
    ld a, [bc]
    inc c
    dec b
    ld b, $02
    ld bc, $a0a0
    or b
    ret nc

    ld e, b
    ld l, b
    xor h
    inc [hl]
    ld [hl], $37
    inc sp
    ld [hl], e
    ld a, e
    ld a, e
    ld a, l
    ld a, l
    ld [hl+], a
    nop
    inc bc
    add b
    add c
    pop bc
    jp Jump_030_5b2d


    or $ed

jr_030_65a2:
    db $db
    or [hl]
    ld l, l
    jp c, $8011

    dec bc
    ld b, b
    ld c, d
    db $d3
    inc [hl]
    ld c, h
    sbc b
    ld d, d
    push hl
    jp nz, Jump_000_3b13

    add hl, sp
    add hl, de
    inc e
    ld c, $0f
    rlca
    ld e, b
    jr jr_030_6545

    and h
    db $e4
    ld h, h
    jr c, jr_030_65a2

    ld [bc], a
    ld b, c
    ld b, b
    ld b, b
    ld d, b
    ld d, b
    ld d, h
    inc d
    nop
    dec b
    inc h
    and d
    ld d, d
    ld sp, $1009
    ld e, [hl]
    inc e
    ld c, h
    adc h
    ld c, h
    ld c, h
    inc h
    and h
    add sp, -$14
    reti


    ldh a, [c]
    and h
    ld c, c
    inc de
    daa
    ld c, e
    sub a
    inc l
    ld a, b
    ldh a, [$ffe0]
    pop bc
    ld bc, $078f
    rra
    rrca
    jr nz, jr_030_6661

    ld h, c
    dec a
    inc bc
    inc de
    ld c, $0e
    ld b, $03
    ld bc, $fc07
    cp $ac
    or h
    adc h
    call z, $fee2
    ld d, $06
    dec bc
    inc b
    ld [bc], a
    inc d
    inc d
    ld b, $08
    inc b
    ld bc, $0103
    add b
    add b
    and b
    add l
    ld d, b
    ld d, l
    xor d
    db $ed
    sbc e
    dec [hl]
    ld a, [hl+]
    ld c, [hl]
    sbc h
    jr c, @+$62

    ret nz

    add b
    add b
    nop
    inc b
    db $10
    ld [hl-], a
    ld l, d
    ld l, b
    and b
    add d
    xor d
    add hl, sp
    xor l
    xor c
    add hl, hl
    dec h
    and l
    push hl
    push hl
    dec b
    ld b, l
    inc bc
    ld bc, $0f03
    ld a, [de]
    ld b, $f8
    ld [hl], b
    ld e, b
    ld e, c
    ld sp, hl
    ld sp, hl
    or c
    sub c
    dec bc
    ld [bc], a
    inc bc
    dec bc
    add d
    ld [bc], a
    add b
    xor b
    xor b
    and c
    ld [hl+], a
    and l
    and l
    add c
    adc l
    ld [hl], h
    ldh a, [$ffe0]
    sub b
    jr nc, jr_030_66cf

    ld e, b
    ld c, b
    nop
    nop
    ld d, l
    xor [hl]
    and b
    ld l, l
    dec h
    db $10

jr_030_6661:
    xor d
    rst RST_28
    rst RST_28
    db $ed
    add hl, hl
    ld bc, $00e9
    dec bc
    push af
    dec b
    ld a, l
    ld d, l
    inc bc
    add hl, bc
    dec c
    rra
    ld a, [de]
    ld [de], a
    ld d, $37
    ld de, $f999
    ld c, b
    nop
    ld d, h
    call nc, $80d6
    dec bc
    ret nz

    ld b, $8c
    add h
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    add d
    ld c, h
    ld e, h
    ld d, [hl]
    ld d, [hl]
    ld d, e
    ld e, e
    ld e, c
    ld e, l
    add hl, bc
    dec c
    dec b
    ld b, $03
    inc hl
    and c
    push af
    db $fd
    xor d
    ld d, d
    ld l, b
    ld d, l
    sub e
    jp nc, $8360

    ld d, l
    add hl, hl
    nop
    nop
    add h
    and l
    push af
    scf
    dec a
    dec l
    dec hl
    ld c, d
    ld e, d
    ld e, d
    ld e, h
    ld a, [hl]
    halt
    ld d, h
    call nz, $8cd8
    inc l
    xor b
    ld b, b
    ld b, b
    ld h, d
    ld l, d
    ld l, d
    ld h, d
    ld h, d
    ld l, d
    sub d
    ld [de], a
    inc h
    dec bc
    or h
    ld [bc], a
    inc h
    inc h
    ld c, l
    ld l, c
    ld h, c
    dec [hl]
    dec [hl]

jr_030_66cf:
    scf
    ld e, $0e
    push af
    ld d, l
    ld b, b
    ld d, b
    ld [hl], b
    push af
    cp l
    adc a
    ld d, b
    ld c, d
    ld c, a
    ld b, c
    ld bc, $4000
    ld d, b
    ld d, b
    jr jr_030_673d

    db $f4
    ld h, h
    jr nz, jr_030_66e9

jr_030_66e9:
    nop
    rst RST_28
    nop
    db $fc
    rrca
    db $f4
    nop
    rrca
    rst RST_38
    add b
    nop
    rra
    rst RST_38
    nop
    ldh a, [$fffc]
    rst RST_38
    ccf
    rlca
    ret nz

    rra
    nop
    ldh a, [rP1]
    rst RST_38
    ldh a, [$ffe0]
    rlca
    nop
    cp $01
    nop
    rst RST_38
    nop
    inc a
    rst RST_38
    cp $ff
    rst RST_38
    ld bc, $000b
    ld [bc], a
    db $d3
    add b
    db $fc
    rst RST_38
    rst RST_38
    inc bc
    nop
    ld bc, $7fff
    ld bc, $e0fc
    rst RST_38
    ld a, $df
    rst RST_38
    ldh a, [rIE]
    nop
    rst RST_38
    rst RST_38
    ld e, a
    rst RST_38
    rst RST_30
    nop
    ld e, $7f
    ldh [$fff7], a
    rst RST_38
    rst RST_38
    ld a, $7f
    nop
    inc bc
    ldh a, [$fff0]
    ret nz

    ccf
    ld a, h

Call_030_673d:
jr_030_673d:
    rst RST_38
    ld e, $ff
    rrca
    ld a, [de]
    add b
    rlca
    ret nz

    ei
    ldh a, [$fff2]
    rst RST_08
    sbc a
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_20
    nop
    ld a, a
    ccf
    rrca
    cp $f0
    cp $e8
    ld e, $e6
    or $06
    ld b, $82
    ldh a, [$fffd]
    pop af
    call $ffe3
    rst RST_30
    jp $fbf9


    pop hl
    db $fc
    rst RST_38
    rst RST_38
    cp a
    jp $f3e7


    rst RST_28
    ld l, a
    rra
    rst RST_18
    ldh a, [c]
    or $fa
    ldh a, [c]
    ldh a, [$ffc0]
    pop hl
    rst RST_30
    dec bc
    rst RST_38
    inc b
    dec bc
    rst RST_30
    ld [bc], a
    ldh [$ffc7], a
    ccf
    add a
    rst RST_08
    pop hl
    ld b, $ff
    rra
    add a
    pop af
    rst RST_28
    di
    adc a
    inc bc
    rst RST_38
    db $ed
    db $ec
    sbc h
    rst RST_18
    sbc h
    pop bc
    ret


    ld a, a
    dec bc
    rst RST_38
    rlca
    or h
    inc l
    ret z

    or b
    ld h, b
    add b
    ld [bc], a
    rlca
    dec bc
    nop
    rlca
    and b
    ldh [rSVBK], a
    ld e, b
    jr @+$1a

    nop
    nop
    ld bc, $000b
    ld b, $56
    sbc d
    adc e
    dec c
    dec b
    ld b, $02
    inc bc
    ld a, l
    ld a, a
    ccf
    ccf
    sbc a
    sbc a
    adc $4e
    rst RST_00
    jp $cdc6


    sbc e
    ld [hl], $6c
    ret c

    or h
    ld l, b
    ret nc

    add b
    dec bc
    nop
    inc bc
    rlca
    rrca
    rrca
    rra
    rra
    nop
    nop
    ld b, b
    nop
    nop
    dec bc
    ld bc, $0b02
    nop
    inc b
    ld d, b
    ld c, b
    ld [hl], b
    jr nc, jr_030_6802

    nop
    nop
    db $10
    dec bc
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0b01
    nop
    dec b
    ld l, h
    and e
    and d
    ld b, l
    ld [bc], a
    inc b
    ld a, [bc]
    inc d
    or b
    ld h, b
    ret nz

    add b
    dec bc
    nop

jr_030_6802:
    inc bc

Call_030_6803:
    ld bc, $0505
    dec d
    rla
    ld e, a
    ld a, l
    ld d, l
    ld b, h
    ld d, b
    ld d, h
    call nc, Call_030_50d0
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    dec bc
    nop
    inc bc
    dec b
    ld bc, $8000
    and b
    and b
    nop
    nop
    ld b, b
    ld h, b
    dec bc
    nop
    ld a, [bc]
    add c
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [$000b], sp
    inc b
    jr nz, jr_030_6860

    dec bc
    nop
    ld [bc], a
    ld d, c
    ld e, a
    rra
    rra
    rrca
    ld d, l
    db $10
    db $10
    ld [de], a
    sub $fe
    cp $ff
    dec bc
    nop
    dec b
    add b
    xor b
    dec bc
    nop
    inc bc
    dec b
    dec c
    add hl, bc
    ld [$60e0], sp
    nop
    or b
    ld hl, sp-$58
    jr z, jr_030_687c

    dec bc
    nop
    rlca
    ld b, $0e
    dec bc
    inc c
    dec b
    jr nc, jr_030_688e

    jr c, @+$3a

jr_030_6860:
    inc a
    inc a
    ld a, $3e
    rlca
    inc bc
    inc bc
    ld bc, $000b
    inc bc
    ld [bc], a
    nop
    add b
    ret nc

    ld hl, sp+$7c
    dec a
    rra
    ld a, h
    jr z, @+$0d

    nop
    dec b
    ld [$1000], sp
    inc d

jr_030_687c:
    dec d
    dec b
    dec b
    ld bc, $000b
    inc b
    dec bc
    ld d, b
    ld [bc], a
    dec bc
    nop
    inc b
    ld [$0008], sp
    inc c
    adc h

jr_030_688e:
    sbc b
    dec bc
    jr jr_030_6896

    ld a, $1e
    ld e, $0a

jr_030_6896:
    ld a, [bc]
    ld [$000b], sp
    ld [bc], a
    dec bc
    add b
    inc bc
    dec bc
    nop
    ld [bc], a
    rrca
    dec b
    dec bc
    nop
    dec b
    and b
    ldh [$ffa0], a
    dec bc
    nop
    inc b
    ldh a, [$ff0b]
    rst RST_38
    inc b
    ldh a, [rP1]
    ld a, a
    dec bc
    rst RST_38
    inc bc
    rrca
    inc bc
    nop
    dec bc
    rst RST_38
    ld b, $00
    dec bc
    rst RST_38
    ld b, $00
    dec bc
    rst RST_38
    ld h, $f8
    dec bc
    rst RST_38
    dec b
    rrca
    rrca
    dec bc
    rst RST_38
    rlca
    ld a, a
    rst RST_38
    ccf
    rlca
    rrca
    rrca
    ccf
    ld a, a
    dec bc
    rst RST_38
    inc b
    add b
    ret nz

    ldh a, [$ff0b]
    rst RST_38
    inc b
    rra
    rrca
    rst RST_38
    rst RST_38
    ld a, a
    rrca
    ld [bc], a
    ld c, $3e
    inc e
    nop
    rrca
    ccf
    rlca
    rlca
    rra
    inc bc
    nop
    nop
    ret nz

    db $fc
    ld hl, sp-$04
    ldh a, [$fff0]
    ldh [rNR41], a
    rrca
    rrca
    rlca
    rrca
    rrca
    ccf
    ld e, $08
    dec bc
    nop
    inc b
    dec bc
    ld [$1f02], sp
    ccf
    rst RST_38
    ld a, a
    ccf
    rra
    ld sp, hl
    nop
    ldh [$fff8], a
    cp $f0
    db $fc
    ldh a, [$fffc]
    nop
    ld e, $1f
    ld a, a
    ld a, $7f
    ld a, $36
    dec bc
    nop
    ld [$0011], sp
    ld a, [de]
    ld [hl], l
    ld a, [hl]
    ld a, [hl]
    ccf
    cp a
    sbc a
    rst RST_18
    ld c, a
    ld l, a
    ld hl, sp+$78
    ld a, b
    ld a, h
    cp h
    cp h
    sbc [hl]
    sbc $1a
    ld a, a
    ld [bc], a
    ld a, [de]
    ccf
    ld [bc], a
    rra
    rra
    ld a, [de]
    db $db
    inc bc
    db $eb
    ld a, [de]
    db $ed
    ld [bc], a
    ld a, [de]
    rst RST_00
    ld [bc], a
    rst RST_20
    ld a, [de]
    db $e3
    inc bc
    ld a, [de]
    cp a
    ld b, $df
    ld a, [de]
    ld e, $07
    call Call_030_76e4
    dec sp
    sbc c
    ld e, h
    ld l, [hl]
    scf
    db $e4
    or $7a
    ld a, l
    cp l
    sbc [hl]
    rst RST_18
    ld l, a
    rst RST_10
    rst RST_38
    ld l, e
    ld a, a
    or l
    cp e
    rst RST_18
    db $fd
    pop hl
    jp nz, $c4c6

    adc b
    adc c
    adc c
    adc l
    db $ec
    sub l
    ld l, c
    adc d
    sub d
    ld [de], a
    ld [hl+], a
    daa
    sub [hl]
    ld h, $26
    ld l, [hl]
    ld h, b
    add b
    nop
    nop
    ld [$8c80], sp
    ld b, [hl]
    ld e, $00
    nop
    ret nz

    db $10
    ld bc, $6231
    ld a, b
    nop
    nop
    ld bc, $6469
    ld h, h
    halt
    ld b, $01
    ld bc, $af00
    or a
    rst RST_10
    db $db
    db $eb
    ld l, l
    dec [hl]
    or [hl]
    sbc $ef
    rst RST_28
    rst RST_20
    rst RST_30
    rst RST_30
    ei
    ei
    rra
    rrca
    rrca
    adc a
    add a
    add a
    rst RST_00
    jp $f4f5


    or $f6
    ld a, [$fbfa]
    ei
    db $e3
    di
    ld a, [de]
    pop af
    inc bc
    ld a, c
    ld a, c
    ld a, [de]
    rst RST_18
    ld b, $ef
    ld a, [de]
    sbc [hl]
    rlca
    inc de
    sbc c
    call Call_030_73e6
    dec sp
    dec a
    sbc [hl]
    daa
    or a
    db $db
    jp hl


    ld h, l
    or [hl]
    db $db
    db $fd
    ld a, [de]
    rst RST_38
    inc b
    ld a, [de]
    cp $02
    add a
    rlca
    ld a, [de]
    inc bc
    ld [bc], a
    ld bc, $0000
    dec h
    ld b, h
    call z, $8a8a
    adc c
    adc c
    ld b, l
    nop
    ld [bc], a
    ld [bc], a
    ld a, [de]
    nop
    ld [bc], a
    ld a, [de]
    add b
    ld [bc], a
    sbc e
    adc c
    ld b, b
    ld b, b
    ld a, [de]
    nop
    ld [bc], a
    inc b
    ld l, h
    ld c, b
    ld bc, $1a01
    nop
    ld [bc], a
    add b
    and b
    and b
    ld a, [de]
    nop
    ld [bc], a
    ld bc, $9a01
    jp c, $edcd

    and $f6
    ld [hl], e
    ld a, e
    ld sp, hl
    ld a, l
    ld a, l
    ld a, $be
    sbc [hl]
    ld e, a
    ld e, a
    jp $e1e3


    pop hl
    pop af
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, [de]
    db $fd
    inc bc
    ld a, [de]
    cp $03
    ld a, b
    ld a, b
    cp b
    cp b
    cp h
    cp h
    sbc h
    call c, $ef1a
    dec b
    ld l, a
    ld [hl], h
    ld a, [de]
    sbc [hl]
    inc b
    adc [hl]
    add b
    ld hl, $65a5
    ret nz

    ld b, b
    add $87
    inc b
    jr nz, jr_030_6a62

    rst RST_38
    inc bc
    ld a, a
    ccf
    ld e, [hl]
    db $dd
    ld a, [de]
    rst RST_38
    dec b
    db $fc
    pop hl
    ld a, [de]
    db $fc
    ld [bc], a
    ld hl, sp-$08
    ret nz

    nop
    ldh a, [rSCY]
    ld hl, $1a18
    nop
    inc b
    ret nz

jr_030_6a62:
    ld h, b
    ldh [$ff66], a
    sub [hl]
    jp nc, Jump_000_294b

    ld a, [de]
    nop
    dec b
    ld b, b
    ld h, b
    ld b, d
    add l
    dec de
    ld [hl], d
    ret nz

    ld a, [de]
    nop
    ld [bc], a
    ld bc, $2707
    ld c, $1f
    ld e, l
    scf
    db $eb
    dec a
    dec e
    sbc [hl]
    adc [hl]
    rst RST_08
    ld b, a
    daa
    or e
    cpl
    xor a
    sub a
    rst RST_10
    ld c, e
    ld l, e
    and l
    or l
    cp b
    cp b
    sbc h
    call c, $ecdc
    jp hl


    db $e3
    ld a, a
    ld a, b
    ld h, a
    dec e
    ld [hl], c
    ldh [c], a
    add l
    dec bc
    ld e, [hl]
    jr c, @+$05

    add l
    ld c, d
    call nc, Call_000_26b3
    dec c
    ldh a, [$ff58]
    and [hl]
    dec bc
    push af
    add hl, de
    ld [bc], a
    add hl, sp
    dec h
    ld a, b
    cp [hl]
    ld e, d
    xor h
    sub b
    ld b, b
    rst RST_28
    rst RST_10
    ld e, e
    xor e
    dec d
    adc l
    ld b, [hl]
    xor d
    ld a, [de]
    rst RST_38
    dec b
    cp $fd

jr_030_6ac3:
    rst RST_38
    cp $f8
    rst RST_30
    adc $98
    sbc b
    db $10
    adc a
    inc d
    jr z, jr_030_6ac3

    jr jr_030_6ad1

jr_030_6ad1:
    ld b, $03
    ld c, h
    ld [de], a
    dec b
    ld bc, $030a
    adc a
    ld e, h
    ld a, [de]
    nop
    ld [bc], a
    add b
    ld a, [de]
    ret nz

    ld [bc], a
    add b

jr_030_6ae3:
    ld hl, $1814
    ld a, [bc]
    dec b
    ld b, $03
    ld bc, $eae0
    ld l, e
    ld a, $0f
    ret nz

    jr nc, jr_030_6ae3

    ld bc, $0502
    inc bc
    inc bc
    dec b
    inc bc
    nop
    sub c
    reti


    add sp, -$1c

Jump_030_6aff:
    or $fa
    ld sp, hl
    ld a, l
    jp c, $e9da

    db $ed
    ld [hl], h
    halt
    jr c, jr_030_6ac3

    pop hl
    db $e4
    ld c, b
    ld de, $4522
    sbc d
    ld bc, $0c96
    nop
    ldh [$ffb1], a
    db $10
    jr z, @+$1a

    ld c, c
    ld b, d
    dec [hl]
    inc bc
    ld a, [bc]
    halt
    add [hl]
    inc bc
    ret


    push bc
    ldh [rNR12], a
    ld c, c
    ld bc, $0000
    ld [hl], c
    ld e, a
    add d
    ld a, [hl+]
    ld d, d
    adc c
    ldh a, [c]
    ld bc, $c775
    adc l
    sbc d
    pop af
    ldh [$ffc0], a
    rlca
    push de
    ld a, [$a0fd]
    nop
    rra
    ldh [$ff80], a
    ld a, a
    cp a
    ld e, a
    rst RST_28
    scf
    add e
    ld h, c
    ld e, $5f
    cp a
    ld a, [hl]
    db $fd
    ei
    or $fd
    ei
    ld [hl], b
    sbc b
    add b
    nop
    ld [bc], a
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $d6a7
    pop af
    cp e
    rst RST_10
    rst RST_38
    ld sp, hl
    db $fc
    ld sp, $f3d1
    nop
    nop
    add b
    add b
    nop
    ld a, [de]
    add b
    ld [bc], a
    ld a, a
    rrca
    ld a, [de]
    nop
    dec b
    inc a
    cp [hl]
    rst RST_18
    rst RST_08
    ld l, a
    scf
    or e
    db $db
    sbc c
    ret c

    ld h, d
    ld h, b
    or b
    or e
    db $db
    jp hl


    inc e
    dec e
    ld l, $ae
    rst RST_10
    ld d, a
    ld l, e
    xor e
    nop
    ldh a, [c]
    di
    pop af
    ldh a, [c]
    ldh a, [$ffe0]
    ldh [rOBP1], a
    sub h
    ret z

    and e
    add b
    rra
    ld l, b
    ldh a, [rNR41]
    sub h
    db $10
    jp $a426


    ld h, l
    push de
    nop
    inc a
    jp Jump_000_0700


    and b
    ld b, b
    ld c, h
    nop
    rlca
    dec c
    jr nc, jr_030_6bd5

    ld h, b
    ld b, b
    ld b, b
    ld a, a
    push af
    add hl, sp
    ld e, l
    add hl, bc
    add hl, de
    add hl, bc
    add hl, de
    ret nz

    add b
    nop
    add b
    ld b, b
    add b
    ld b, b
    add [hl]
    ld c, $0d
    nop
    inc b
    dec c
    dec d
    add hl, bc
    add hl, bc
    rra
    rst RST_00
    di
    xor c
    push de

jr_030_6bd5:
    and b
    ld b, d
    inc b
    nop
    add b
    pop bc
    ld [$3e75], a
    ld a, $44
    jp hl


    cp $73
    sbc b
    ld h, b
    ldh [$fff0], a
    ld sp, $f3e3
    inc sp
    rlca
    rra
    ld a, a
    cp a
    ld a, a
    nop
    ld bc, $031a
    ld [bc], a
    ld a, [de]
    ld [bc], a
    ld [bc], a
    ld h, b
    ld b, b
    ld l, d
    ld [hl], l
    cp d
    cp l
    ld e, e
    ld h, e
    add hl, hl
    ld e, h
    cp c
    ld hl, sp+$30
    ret nz

    ldh [$ffe0], a
    ld d, c
    xor [hl]
    rst RST_18
    rst RST_18
    rra
    ld c, $0e
    inc b
    add hl, sp
    ld a, [$b272]
    ld [hl+], a
    dec b
    rlca
    ld b, $02
    ld bc, $0103
    inc bc
    add l
    ld [hl+], a
    sub $b0
    cp b
    inc c
    ld a, [de]
    nop
    inc b
    cp a
    ld e, a
    cp a
    ld e, a
    ccf
    ld e, a
    cpl
    rla
    ld a, [de]
    nop
    ld [bc], a
    ld a, [de]
    add b
    inc b
    inc bc
    ld bc, $1a01
    nop
    inc b
    dec a
    cp $1e
    ld l, h
    ld [hl], b
    ld sp, $0011
    ldh [$ffc0], a
    ld b, b
    ld a, [de]
    nop
    ld [bc], a
    ldh [rIE], a
    ld a, [de]
    nop
    ld b, $ff
    ld [bc], a
    ld a, [de]
    nop
    inc bc
    inc bc
    rra
    rst RST_38
    db $ec
    add sp, -$40
    cp b
    ld a, b
    ldh a, [$fff0]
    ldh [$ff2b], a
    rla
    dec bc
    dec b
    add hl, bc
    dec b
    ld a, [bc]
    dec b
    ld a, [de]
    ret nz

    inc bc
    ld a, [de]
    ldh [$ff03], a
    ld a, [de]
    rst RST_38
    inc bc
    ld a, d
    ld d, l
    ld a, [hl+]
    ld d, b
    rst RST_38
    rst RST_38
    ld [$a855], a
    ld b, b
    nop
    nop
    rst RST_38
    rst RST_38
    xor a
    ld d, a
    dec hl
    dec b
    ld bc, $e000
    ldh [rNR30], a
    ret nz

    inc bc
    ld h, b
    ldh [$ffcf], a
    ld h, a
    or a
    ld e, e
    xor l
    sub $eb
    rst RST_30
    ld a, [de]
    rst RST_38
    ld c, a
    ldh [$ffc1], a
    pop bc
    jp $8687


    add [hl]
    add d
    di
    ldh [c], a
    add [hl]
    inc b
    inc c
    inc c
    inc e
    jr @+$1c

    nop
    rlca
    adc b
    ld a, [de]
    nop
    dec b
    ret nz

    ld de, $001a
    dec b
    ld bc, $001a
    ld b, $80
    ld a, [de]
    rst RST_38
    ld c, h
    ld a, [de]
    cp $02
    add b
    ld a, [de]
    nop
    ld b, $18
    jr c, jr_030_6cf2

    ld a, [de]
    ld [hl], b
    inc bc
    jr c, jr_030_6ccd

    ld b, $02
    ld [bc], a
    ld a, [de]
    nop
    inc bc

jr_030_6ccd:
    ld a, [de]
    db $db
    ld [bc], a
    ret nz

    ld b, b
    ld b, b
    nop
    nop
    ld l, c
    ld l, l
    ld l, l
    ld a, [de]
    ld bc, $0002
    nop
    or b
    or b
    and b
    and b
    ld a, [de]
    nop
    inc bc
    ld a, [de]
    rst RST_38
    ld l, $fc
    ld a, [de]
    rst RST_38
    dec b
    add b
    nop
    ld b, c
    add c
    nop
    add b
    ld a, [de]

jr_030_6cf2:
    nop
    inc bc
    ld a, [de]
    rst RST_38
    inc bc
    ld a, a
    ccf
    rra
    rra
    ld a, [de]
    rst RST_38
    dec b
    db $fc
    ldh [rNR30], a
    db $fc
    ld [bc], a
    ld hl, sp-$08
    ret nz

    nop
    nop
    inc a
    ld e, $07
    ld a, [de]
    nop
    rlca
    add [hl]
    ld h, d
    jr nz, jr_030_6d43

    ld de, $001a
    dec b
    ld b, b
    ld h, b
    inc a
    ld a, b
    ldh [$ff80], a
    ld a, [de]
    nop
    ld b, $01
    nop
    ld [bc], a
    ld [$1a14], sp
    rst RST_38
    inc de
    cp $fc
    ld hl, sp-$10
    rst RST_38
    ld hl, sp-$20
    add d
    ld c, $1d
    ld a, d
    db $f4
    db $fc
    stop
    ld [bc], a
    add l
    dec bc
    inc c
    jr jr_030_6d3c

jr_030_6d3c:
    nop
    and b
    ld e, b
    db $f4
    ld a, [bc]
    ld b, $0f

jr_030_6d43:
    nop
    ret c

    call z, $346c
    stop
    add b
    rrca
    daa
    and e
    ld d, e
    jp hl


    ld [hl], c
    cp b
    ld d, h
    ld a, [de]
    rst RST_38
    ld [$f8fe], sp
    ldh a, [$ffc1]
    add a
    add a
    rrca
    add b
    dec bc
    rla
    dec bc
    rst RST_20
    rst RST_38
    ld sp, hl
    db $fc
    or b
    db $ec
    ld a, [$f5fe]
    db $fc
    ld [hl], b
    and b
    ld a, [de]
    nop
    rlca
    jr jr_030_6d7a

    inc b
    inc b
    ld [bc], a
    ld bc, $0000
    ld h, b
    ld l, d

jr_030_6d7a:
    dec bc
    ld a, [de]
    nop
    ld [bc], a
    ret nz

    rrca
    ld a, [de]
    nop
    rlca
    ld a, [de]
    rst RST_38
    inc c
    cp $fd
    db $fd
    and $e8
    ret nc

    and b
    ld b, c
    add d
    dec b
    nop
    ld l, b
    ld a, [de]
    nop
    ld [bc], a
    ld b, b
    ldh [$ffd0], a
    ldh [$ff30], a
    ld sp, $4603
    inc [hl]
    inc c
    inc c
    ld d, $07
    db $e3
    inc de
    ld bc, $6060
    nop
    nop
    add b
    and b
    ld a, [de]
    db $fc
    ld [bc], a
    ld [hl], b
    ld bc, $0a07
    jr c, jr_030_6e24

    ld h, b
    ld a, [de]
    nop
    inc bc
    ld a, [hl+]
    dec b
    ld [bc], a
    ld a, [de]
    nop
    ld [bc], a
    rra
    ld a, a
    ld a, a
    ccf
    sbc a
    rrca
    rlca
    inc bc
    add c
    ldh [rNR30], a
    rst RST_38
    rlca
    rrca
    ld h, a
    ld a, a
    rst RST_38
    db $fd
    cp $fe
    rst RST_38
    cp $ff
    cp $ff
    cp $58
    jr z, jr_030_6de8

    ld b, e
    daa
    rlca
    ld bc, $0000
    ret nz

    ldh [rP1], a
    nop
    add b
    add b
    ld a, [de]

jr_030_6de8:
    nop
    dec bc
    ld a, [de]
    rst RST_38
    rlca
    ld a, [$f4fa]
    push af
    push af
    ei
    rst RST_38
    rst RST_38
    ld a, $7f
    ld a, [de]
    rst RST_38
    dec b
    nop
    ld a, [de]
    ldh a, [rDIV]
    ldh [$ffe0], a
    inc de
    ld [$1a07], sp
    nop
    ld [bc], a
    ccf
    ld a, a
    ret nz

    ld [$00e0], sp
    ld bc, $8243
    ld [bc], a
    inc bc
    nop
    inc a
    rst RST_38
    ld hl, sp+$40
    add b
    adc [hl]
    nop
    nop
    ld [bc], a
    rrca
    rra
    rra
    ccf
    ccf
    nop
    nop
    ret nz

    and b

jr_030_6e24:
    ldh a, [$ffe0]
    ldh a, [$ffe0]
    ccf
    ld a, a
    rst RST_38
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, c
    ldh a, [$fff0]
    ld hl, sp-$08
    ldh a, [$ffe8]
    ldh a, [$fff0]
    rra
    rlca
    inc bc
    ld d, c
    add hl, hl
    ld e, h
    cp h
    ld a, [$7fff]
    ld a, $15
    adc d
    ret nz

    ret nz

    add b
    dec d
    nop
    add b
    nop
    ld h, b
    ldh [$fff0], a
    jr nc, @-$1e

    ldh a, [$ff30]
    ld a, [de]
    nop
    add hl, bc
    ld a, [de]
    ld bc, $1f02
    ccf
    dec d
    ld a, [bc]
    inc b
    ld bc, $8383
    ret nc

    and b
    ld b, b
    nop
    nop
    ret nz

    ldh [$ffe0], a
    and b
    ld c, [hl]
    ld a, [de]
    rra
    ld [bc], a
    ld c, $0e
    inc b
    ret nz

    ld bc, $8101
    ld bc, $0002
    nop
    db $fc
    cp $fc
    cp $fc
    ld a, d
    inc e
    ret z

    jr nc, jr_030_6ebb

    inc c
    ld a, [de]
    nop
    inc e
    pop bc
    nop
    nop
    ld h, b
    ld [hl], b
    jr nc, @+$12

    nop
    ldh [$ffc0], a
    ld b, b
    ld a, [de]
    nop
    inc b
    pop af
    ld a, [de]
    rst RST_38
    ld [bc], a
    rra
    rlca
    nop
    nop
    ldh a, [$fff8]
    ld hl, sp-$04
    ld hl, sp-$10
    nop
    nop
    ldh [$ffe0], a
    ret nz

    add b
    ld a, [de]
    nop
    inc sp
    ld a, [de]
    rst RST_38
    rlca
    rst RST_38
    ld de, $2b00
    ld [hl], d
    dec hl
    rst RST_38
    ld b, $f8
    dec hl
    rst RST_38
    inc bc

jr_030_6ebb:
    cp $fc
    add b
    ld bc, $faf8
    ei
    rst RST_30
    or $f6
    db $e3
    pop bc
    nop
    rlca
    ccf
    rst RST_08
    ld h, b
    add hl, de
    ld b, $80
    ld [hl], l
    db $e3
    add $18
    ld h, c
    adc [hl]
    ld sp, $ff3f
    cp $fe
    dec hl
    rst RST_38
    inc b
    add b
    nop
    rst RST_38
    nop
    add b
    ret nz

    ldh [$ffe0], a
    ret nz

    ld [hl], b
    ret nz

    rlca
    nop
    nop
    ld b, $00
    inc h
    daa
    inc l
    xor b
    cpl
    and [hl]
    ld d, c
    ld c, $2b
    ldh a, [rDIV]
    db $f4
    ldh [c], a
    db $ec
    rrca
    ld a, a
    sbc a
    or a
    ld e, l
    rla
    ld [bc], a
    nop
    ldh a, [$ff80]
    cp a
    rst RST_18
    pop hl
    rst RST_38
    nop
    nop
    and $f1
    jp nz, $a2a4

    ld d, b
    nop
    ld a, [de]
    db $10
    inc b
    and e
    ld e, a
    jr nz, jr_030_6f59

    jp z, Jump_000_2bf4

    nop
    ld [bc], a
    ld hl, sp+$34
    inc bc
    ld b, $29
    nop
    nop
    rrca
    inc d
    nop
    add b
    ld b, b
    pop hl
    inc b
    ld b, d
    add b
    dec c
    jr z, jr_030_6f84

    ld a, [bc]
    dec d
    ld b, a
    ld b, c
    ld c, [hl]
    dec bc
    dec b
    ld bc, $a882
    dec hl
    rst RST_38
    ld [bc], a
    ld a, a
    ld a, a
    dec hl
    cp a
    ld [bc], a
    inc d
    inc hl
    dec h
    sub c
    adc h
    jp nz, $e4d2

    ld c, d
    ld b, d
    ld d, e
    ld h, l
    rst RST_18
    cp [hl]
    cp h
    and e
    adc c
    dec b
    and l
    call Call_030_47eb

jr_030_6f59:
    jp z, $a0e1

    and h
    or b
    and h
    db $d3
    ldh [c], a
    ld d, c
    add [hl]
    ld h, h
    ld l, $15
    cpl
    rst RST_38
    ld b, [hl]
    cp b
    ld h, a
    sbc b
    jp nz, $6568

    ld c, b
    ld d, c
    add l
    dec de
    cp a
    cp a
    ld a, a
    ld a, a
    dec hl
    rst RST_38
    inc bc
    ldh a, [$ff2b]
    cp $05
    db $fc
    sub l
    cp d
    db $db
    ld hl, sp+$2c

jr_030_6f84:
    ld a, l
    xor [hl]
    and l
    ld e, h
    pop af
    add b
    nop
    ld a, [hl+]
    nop
    and b
    inc [hl]
    daa
    ld [hl], d
    pop af
    dec bc
    jp c, $dd01

    inc d
    nop
    inc d
    and d
    adc h
    ld [hl], $39
    ld b, h
    ld c, c
    rlca
    sbc a
    ld e, a
    ld e, a
    ccf
    cp a
    ccf
    ccf
    dec hl
    rst RST_38
    ld b, $fe
    rst RST_38
    cp $f9
    or $e8
    sub b
    ld h, b
    ret nz

    rst RST_38
    rra
    rst RST_20
    ld [hl], e
    add hl, sp
    ld [hl], c
    ld l, c
    pop af
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08

jr_030_6fbf:
    ei
    di
    rst RST_30
    rst RST_00
    push de
    add [hl]
    jp nz, Jump_030_6449

    ld [hl-], a
    add hl, de
    ld b, $f7
    ld c, a
    or a
    ccf
    rst RST_18
    ld b, a
    ld sp, $a09e
    rra
    xor c
    ldh a, [c]
    db $ec
    pop hl
    adc [hl]
    ld a, h
    ld [$3018], sp
    ld [hl], c
    add $15
    ld c, e
    sub a
    rra
    ld e, a
    adc a
    rrca
    ld c, $01
    dec de
    dec sp
    rst RST_38
    rst RST_38
    ld hl, sp-$1f
    nop
    ld b, b
    nop
    db $10
    ld sp, hl
    or $6c

jr_030_6ff6:
    sbc b
    jr nc, jr_030_705c

    ld c, a
    ld a, a
    add e
    ld d, $2d
    ld e, d
    db $f4
    ret nc

    and c
    ld b, e
    db $e3
    rst RST_00
    rrca
    rra
    ccf
    ld a, a
    dec hl
    rst RST_38
    dec b
    rst RST_00
    add b
    inc bc
    inc b
    dec hl
    rst RST_38
    inc bc
    ldh a, [rIF]
    ld d, $e0
    rst RST_38
    rst RST_38
    db $fc
    add e
    ld a, h
    add b
    jr c, jr_030_7051

    cp $c1
    ccf
    ldh [c], a
    add b
    ld [hl], b
    jr z, jr_030_7040

    ld b, $c7
    bit 0, l
    inc h
    ld [hl+], a
    add hl, bc
    add h
    inc b
    ld h, d
    jr c, jr_030_6fbf

    add $30
    inc e
    add a
    dec hl
    nop
    ld [bc], a
    ldh [rNR23], a
    and [hl]
    xor c
    add hl, de
    dec hl

jr_030_7040:
    nop
    ld [bc], a
    inc c
    inc de
    ld l, $17
    ld e, d
    jp nz, $1104

    nop
    ld b, e
    rlca
    sbc e
    inc bc
    ld [hl+], a
    ld [bc], a

jr_030_7051:
    ld [de], a
    sbc l
    dec l
    dec h
    and [hl]
    jp hl


    inc d
    inc d
    ld d, $26
    add hl, hl

jr_030_705c:
    add a
    pop de
    ld c, e
    cp [hl]
    inc a
    ld e, b
    ld b, b
    jr nz, jr_030_6ff6

    dec bc
    rla
    rrca
    rra
    ccf
    ccf
    sbc a
    pop bc
    add b
    ld b, b
    dec hl
    rst RST_38
    inc b
    rst RST_08
    rlca
    ld b, e
    inc b
    ld bc, $0e00
    add hl, de
    ld [hl-], a
    ld [hl+], a
    ld h, [hl]
    inc bc
    jp Jump_000_0af2


    dec b
    dec b
    add l
    ld [bc], a
    add hl, de
    ld b, $81
    add b
    ld c, c
    ld c, l
    ld c, d
    xor c
    ld bc, $70b1
    add sp, $28
    rst RST_00
    add b
    add b
    ld [bc], a
    ld b, c
    and b
    ldh [rIE], a
    nop
    nop
    ld e, $61
    db $10
    add [hl]
    ld b, c
    add b
    inc bc
    inc c
    ld [hl-], a
    ld [bc], a
    nop
    nop
    ldh a, [rNR41]
    ld sp, $3a39
    ld [hl], a
    rst RST_20
    ld a, [hl]
    nop
    nop
    add sp, $05
    dec e
    inc bc
    dec hl
    ld [bc], a
    ld [bc], a
    ld de, $b169
    add sp, $64
    ld [hl+], a
    ld hl, $7830
    call c, $cfdf
    add [hl]
    ld b, d
    ret nz

    ret nz

    jr nz, jr_030_70e2

    add hl, de
    ld a, c
    rrca
    rla
    ld e, $bf
    ld a, [hl]
    dec e
    ld a, $bd
    jp z, $9150

    dec d
    sbc e
    nop
    add b
    nop
    ld b, e
    jp Jump_000_1881


    inc l

jr_030_70e2:
    ld b, [hl]
    ld b, a
    add a
    ld l, a
    ld l, e
    pop bc
    ld b, c
    add b
    adc b
    ret z

    ld l, b
    ld b, d
    ld b, e
    and a
    and l
    and l
    and d
    ld [hl-], a
    ld [de], a
    and l

jr_030_70f6:
    or h
    ld d, d
    ld d, d
    adc d
    xor d
    xor d
    ld l, $93
    sub h
    sub h
    sub [hl]
    sub a
    inc de
    db $10
    jr nc, jr_030_7106

jr_030_7106:
    db $fc
    cp $c7
    add e
    add hl, de
    add hl, de
    inc bc
    ld [$4e63], sp
    sbc b
    jr nc, @+$22

    ld b, b
    ld b, b
    ld [hl], d
    add d
    ld bc, $5c25
    adc l
    dec de
    scf
    rst RST_30
    xor $9c
    ld [hl], b
    db $e3
    rst RST_08
    inc e
    jr c, jr_030_70f6

    ld h, b
    ret nz

    add b
    add b
    ld bc, $1f0f
    rst RST_08
    ld h, a
    inc hl
    inc sp
    rra
    call $f0e2
    db $fd
    dec hl
    rst RST_38
    ld [bc], a
    rst RST_28
    ld [hl], a
    xor d
    ld d, h
    ld a, [$fafd]
    db $ec
    ld h, c
    ld [$8160], sp
    add c
    ld bc, $0301
    add c
    ld b, e
    ld h, c
    ret nz

    add [hl]
    ld l, $2d
    ld a, l
    ld e, e
    ld e, e
    sub $86
    ld a, b
    cp b
    ld e, h
    xor h
    ld d, [hl]
    dec sp
    sbc e
    adc l
    ld de, $9911
    adc b
    adc b
    ret z

    call z, Call_000_2bcc
    inc d
    ld [bc], a
    sub h
    sbc b
    adc b
    add b
    add b
    jr nc, jr_030_718f

    ld h, $29
    ld a, [hl+]
    ld l, d
    ld c, l
    ld b, l
    ld [bc], a
    ld [bc], a
    ld sp, $2449
    sub [hl]
    ld c, d
    cp e
    ld b, c
    ld b, c
    inc hl
    ld [hl], $99
    di
    ld l, a
    rra
    call z, Call_030_63b9
    rst RST_08
    cp [hl]
    call c, $f078
    ldh [$ffc0], a

jr_030_718f:
    add c
    inc bc
    rlca
    rrca
    rra
    ccf
    dec sp
    ld [hl], d
    ldh [c], a
    push bc
    push bc
    add d
    adc e
    sub c
    sub b
    adc b
    ld [$d058], sp
    sub b
    db $10
    jr nz, jr_030_71cf

    ld [bc], a
    rrca
    rrca
    dec hl
    nop
    inc bc
    ld c, a
    or e
    call Call_030_7b33
    db $fc
    cp $ff
    ld a, $fd
    ldh [$ffcc], a
    sub d
    inc [hl]
    ld l, h
    sbc b
    inc c
    adc b
    ret c

    ld c, l
    ld b, a
    ld h, c
    ld [hl], b
    xor b
    push bc
    db $e4
    ld [hl], d
    dec de

jr_030_71c8:
    ld bc, $002b
    ld [bc], a
    db $e4
    ld h, h
    inc d

jr_030_71cf:
    ld b, $06
    ld h, $9e
    ld e, $2b
    add b
    ld [bc], a
    dec hl
    ld b, b
    ld [bc], a
    ld b, c
    ld b, c
    ld b, l
    ld b, d
    jp $c2c1


Jump_030_71e1:
    add c
    add e
    add c
    rlca
    ld c, $1c
    db $d3
    rst RST_20
    ld c, a
    cp a
    ld a, a
    dec a
    ld [hl], a
    rst RST_08
    sbc [hl]
    dec a
    ld a, d
    db $f4
    add sp, -$20
    ret nc

    and c
    ld b, a
    adc a
    rra
    ccf
    ld a, a
    ld a, a
    cp $fc
    db $fc
    ld sp, hl
    di
    cp $fe
    inc d
    jr z, jr_030_7211

    ld d, h
    sub c
    ld de, $6733
    ld h, b
    ld h, b
    ret nz

    dec hl
    add b

jr_030_7211:
    inc bc
    nop
    ld a, [hl]
    inc a
    ld bc, $0203
    rlca
    rrca
    ld b, $21
    ld b, c
    add d
    inc a
    di
    and $88
    jr nc, jr_030_71c8

    ld b, h
    ld b, [hl]
    adc h
    ld e, $7e
    cp $38
    dec hl
    rst RST_38
    ld b, $f8
    dec hl
    rst RST_38
    inc bc
    cp $fd
    add e
    ld a, [hl]
    ld hl, sp-$07
    ld hl, sp+$2b
    ldh a, [rSC]
    db $ec
    sbc $07
    rst RST_38
    rst RST_38
    ccf
    rra
    ld b, $00
    nop
    ld a, [$f8fc]
    ldh [$ff80], a
    nop
    nop
    ld d, $ff
    cp $fe
    dec hl
    rst RST_38
    inc b
    cp a
    ld a, a
    nop
    nop
    add b
    ret nz

    ldh [$ffe0], a
    nop
    add b
    ld bc, $002b
    ld [bc], a
    ld bc, $0b00
    ld [$1783], sp
    ld e, $0e
    add c
    ld bc, $f02b
    dec b
    ldh [$ffe0], a
    nop
    nop
    ld h, b
    ld a, b
    ld a, $0f
    ld bc, $0000
    ld a, a
    ld a, a
    ccf
    rra
    rst RST_38
    rst RST_38
    nop
    ldh [$fff0], a
    ret nz

    sbc b
    adc h
    ld h, $76
    ld b, h
    dec hl
    nop
    dec b
    inc b
    ld [$002b], sp
    dec b
    ld bc, $2b03
    nop
    dec b
    add b
    add l
    dec hl
    nop
    inc bc
    inc e
    inc l
    nop
    ld [hl+], a
    rlca
    ld bc, $1000
    jr nc, jr_030_72db

    ld sp, $2b11
    rst RST_38
    ld [bc], a
    ld a, a
    ld a, a
    dec hl
    ccf
    ld [bc], a
    ld c, b
    ld b, b
    ld b, b
    and b
    or b
    call c, $e8cc
    ld [bc], a
    jr nz, jr_030_72bd

    jr jr_030_72f8

    ld a, a

jr_030_72bd:
    ld a, a
    ld a, h
    and e
    inc bc
    jp Jump_000_1f03


    sbc e
    ld bc, $c200
    ret nz

    jp $f8d0


    reti


    add d
    inc bc
    ld c, a
    inc de
    db $eb
    rla
    rrca
    cp a
    ld b, a
    add b
    ld bc, $8301
    add d

jr_030_72db:
    add [hl]
    adc l
    add hl, de
    inc bc
    ccf
    ccf
    ld a, a
    ld a, a
    dec hl
    rst RST_38
    inc bc
    ldh a, [$ff2b]
    cp $05
    db $fc
    ld a, b
    ld [hl], c
    ld [hl], b
    ld d, b
    ld d, b
    ld [bc], a
    ld bc, $e002
    cp $7f
    nop
    ld a, [hl+]

jr_030_72f8:
    nop
    jp nz, Jump_000_1ff8

    adc h
    add c
    inc bc
    ret c

    ld bc, $08dc
    add b
    nop
    inc d
    ld [hl], $2c
    ld a, h
    ld a, c
    ldh a, [rTAC]
    rra
    sbc a
    sbc a
    cp a
    dec hl
    ccf
    ld [bc], a
    dec hl
    rst RST_38
    ld b, $fe
    rst RST_38
    cp $f8
    pop af
    rst RST_20
    adc a
    rra
    ccf
    rst RST_38
    rra
    rlca
    add e
    pop bc
    add c
    add c
    ld bc, $f82b
    inc b
    ldh a, [$fff0]
    ret nz

    ld [bc], a
    ld b, c
    ld hl, $1830
    inc c
    ld b, $01
    rrca
    add b
    rst RST_08
    rst RST_38
    ccf
    ccf
    rrca
    ld bc, $ffc1
    add $e1
    di
    cp $f0
    add b
    ldh a, [$ffe0]
    ret nz

    add b
    nop
    add hl, bc
    inc sp
    ld h, a
    rra
    rra
    rrca
    rrca
    ld c, $2b
    nop
    ld [bc], a
    rst RST_38
    rst RST_38
    ld hl, sp-$1a
    rrca
    sbc a
    rst RST_18
    rst RST_08
    ld hl, sp-$0f
    ld h, e
    rlca
    rrca
    inc e
    jr nc, jr_030_7365

jr_030_7365:
    ld a, h
    add sp, -$30
    and b
    nop
    nop
    ld bc, $0303
    rlca
    rrca
    rra
    ccf
    ld a, a
    dec hl
    rst RST_38
    dec b
    rst RST_00
    add b
    nop
    inc bc
    dec hl
    rst RST_38
    inc bc
    ldh a, [rP1]
    add hl, bc
    rra
    rst RST_38
    rst RST_38
    db $fc
    add b
    inc bc
    ld a, a
    rst RST_00
    pop bc
    cp $c0
    nop
    dec e
    ld a, a
    adc a
    rst RST_00
    and $01
    nop
    nop
    add b
    ret nz

    ret nz

    ldh a, [$ff78]
    ret c

    db $e4

jr_030_739b:
    ei
    ld a, h
    ccf
    rrca
    inc bc
    nop
    rst RST_00
    ld h, c
    jr jr_030_73ab

    ld bc, $a8a0
    jr jr_030_739b

    db $e3

jr_030_73ab:
    nop
    nop
    jp Jump_000_178e


    jr @-$26

    ld h, d
    adc [hl]
    ld a, $bd
    cp c
    inc bc
    inc bc
    add hl, de
    add hl, sp
    add hl, sp
    inc sp
    sub e
    sub e
    sub c
    sub b
    dec hl
    rst RST_08
    inc bc
    add $e0
    ldh [$fff0], a
    nop
    dec hl
    add b
    ld [bc], a
    ret nz

    ld h, b
    ldh a, [$ffe8]
    rrca
    rra
    ccf
    ccf
    rra
    ld bc, $0000
    dec hl
    rst RST_38
    inc b
    rst RST_08
    rlca
    inc bc
    inc bc
    dec hl
    nop
    ld [bc], a
    ld b, $0f
    rra
    rra

Call_030_73e6:
    db $fc
    inc a
    inc c
    inc b
    dec hl
    ld [bc], a
    ld [bc], a
    add c
    ldh [$fff8], a
    ld a, [hl]
    ld a, a
    ld [hl], $32
    ld sp, $fe10
    ld c, [hl]
    rrca
    rlca
    rst RST_00
    dec hl
    nop
    ld [bc], a
    ld a, h
    ld a, $1f
    rra
    dec hl
    nop
    ld [bc], a
    ld bc, $0800
    nop
    add b
    dec hl
    nop
    ld [bc], a
    pop bc
    dec hl
    nop
    inc b
    ret nz

    nop
    pop bc
    dec hl
    nop
    inc b
    db $10
    ld hl, sp-$1f
    nop
    dec hl
    ld bc, $2b02
    nop
    inc bc
    sbc b
    call c, $cfde
    add a
    inc hl
    jr nz, @+$32

    ld a, c
    dec a
    ccf
    ccf
    sbc $e8
    and $86
    ldh a, [$ffe8]
    ldh [rLCDC], a
    add b
    ldh [$ffc0], a
    ld b, b
    dec b
    ld c, a
    adc [hl]
    ld a, [bc]
    add b
    nop
    add b
    nop
    add e
    inc bc
    ld bc, $1000
    jr c, jr_030_7480

    ld a, b
    rra
    rra
    ccf
    cp a
    dec hl
    rst RST_38
    inc bc
    add c
    add b
    ret nz

    jp nz, $c1c2

    pop bc
    pop hl
    jr @+$0a

    adc h
    adc h
    dec hl
    ld b, h
    ld [bc], a
    ret nz

    nop
    ld bc, $0103
    dec hl
    nop
    rlca
    jr jr_030_74a5

    inc a
    jr @-$77

    inc e
    jr nc, @+$62

    ret nz

    ret nz

    add b
    add b
    add c
    ld bc, $0202
    ld [hl+], a
    ld [hl], c
    db $e3
    rst RST_00
    ldh a, [$ffe1]
    add e
    rrca
    inc e

jr_030_7480:
    jr nc, @-$1e

    ret nz

    nop
    add b
    dec hl
    nop
    ld [bc], a
    ld bc, $1f0f
    jr nc, jr_030_74a5

    inc e
    inc c
    nop
    ret nz

    ldh [$fff0], a
    ld [bc], a
    dec hl
    nop
    ld b, $f8
    db $fd
    ld a, [$60ec]
    rlca
    rra
    ld a, [hl]
    dec hl
    nop
    inc b
    add b
    add b
    nop

jr_030_74a5:
    ld a, b
    ret nc

    ret nc

    dec hl
    add b
    ld [bc], a
    ld bc, $ff01
    ld a, a
    ccf
    rra
    adc a
    rst RST_00
    rst RST_20
    di
    dec hl
    ldh [rSC], a
    dec hl
    ldh a, [rDIV]
    dec hl
    ldh [rSC], a
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld h, b
    dec hl
    nop
    ld [bc], a
    ld b, $07
    rlca
    inc bc
    inc bc
    ld bc, $0001
    jr nc, jr_030_74e8

    ld [$c484], sp
    add b

jr_030_74d4:
    add b
    ret nz

    ret nz

    ld h, c
    inc bc
    rrca
    rra
    jp Jump_000_1c86


    jr nc, jr_030_7520

    jr nz, @-$7e

    nop
    ldh [$ffc0], a
    add b
    dec hl
    nop

jr_030_74e8:
    inc b
    inc b
    inc c
    inc e
    jr c, jr_030_7526

    ld a, c
    ld [hl], c
    ld h, e
    ld h, b
    ld [hl], b
    ldh a, [$ff2b]
    ldh [$ff03], a
    ret nz

    nop
    ld bc, $002b
    dec b
    ldh a, [rLCDC]
    inc bc
    rrca
    rlca
    inc bc
    ld bc, $0000
    ld a, $ff
    di
    pop hl
    jp $0783


    inc bc
    rlca
    rlca
    add d
    dec hl
    add b
    ld [bc], a
    db $10
    ei
    ei
    db $fd
    db $fc
    cp $2b
    rst RST_38
    ld [bc], a
    dec hl
    ld hl, sp+$04

jr_030_7520:
    ret c

    ld h, b
    ldh [rNR41], a
    dec hl
    nop

jr_030_7526:
    ld b, $03
    ld bc, $002b
    dec b
    ld hl, sp-$10
    ldh [rNR44], a
    rlca
    rrca
    ccf
    ld a, a
    ld [bc], a
    ld [$6030], sp
    ret nz

    add b
    nop
    nop
    ldh [$ffd0], a
    and b
    ld b, b
    add b
    dec hl
    nop
    inc bc
    ld bc, $0303
    ld b, $0c
    nop
    nop
    db $e3
    rst RST_00
    rst RST_00
    adc a
    ld c, $0e
    inc c
    jr jr_030_74d4

    add b
    dec hl
    nop
    add hl, bc
    ld bc, $002b
    ld [bc], a
    ld e, $3e
    ld a, h
    ret nz

    nop
    ld bc, $0e06
    jr jr_030_759e

    jr c, jr_030_75d8

    ldh [$ff80], a
    nop
    nop
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

jr_030_759e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_030_75d8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_030_76e4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_030_7b33:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_030_7cb3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_030_7d00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
