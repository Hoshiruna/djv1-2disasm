; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $035", ROMX[$4000], BANK[$35]

    jr nz, jr_035_4042

    adc a
    ld b, l
    sub b
    ld b, l
    cp $4b
    or b
    ld c, l
    add h
    ld d, e
    pop af
    ld d, e
    and [hl]
    ld e, c
    and a
    ld e, c
    ld l, a
    ld e, a
    db $f4
    ld e, a
    or d
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld hl, sp+$6c
    ld h, d
    ld l, l
    xor e
    ld [hl], e
    dec e
    nop
    ld a, d
    db $db
    ld h, a
    scf
    nop
    dec bc
    db $d3
    add $10
    dec bc
    nop
    nop
    cp a
    ld a, a
    ld a, a
    ld a, a
    ld b, e
    ld a, a
    ld bc, $0026
    dec hl
    rst RST_38
    ld a, a
    rla
    ld a, [hl]
    ld e, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst RST_28

jr_035_4042:
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld h, $34
    nop
    ld h, [hl]
    ld a, [hl]
    ld d, [hl]
    rst RST_38
    ld a, [hl]
    ld a, [hl]
    ret


    ld a, $9e
    ld a, a
    add $3f
    rst RST_38
    cp [hl]
    ld a, a
    ld a, [hl]
    rst RST_38

jr_035_4059:
    db $fd
    cp $a3
    db $fc
    rst RST_38
    nop
    nop
    ret nz

    sbc a
    nop
    db $10
    jp Jump_035_7fd0


    rlca
    inc de
    add $d7
    rlca
    db $10
    ret z

    ld d, c
    nop
    rst RST_38
    inc bc
    ld sp, hl
    nop
    ld [$08e2], sp
    add b
    add sp, -$01
    inc bc
    jp hl


    ldh [$ff08], a
    ld [de], a
    ld hl, sp+$00
    ld [$e3ff], sp
    ld [$6b80], sp

Call_035_4087:
    ld b, b
    xor e
    ld b, b
    xor e
    rst RST_20
    jr nz, jr_035_4059

    db $e3
    ld l, a
    nop
    ld l, [hl]
    ld bc, $ea01
    ld [bc], a
    rst RST_18
    jp hl


    ld [bc], a
    jp hl


    nop
    db $eb
    ld a, d
    inc bc
    jr nz, jr_035_40fe

    ld e, a
    stop
    ld [$0076], sp
    jr nc, jr_035_40aa

    ld a, [hl]
    sub [hl]

jr_035_40aa:
    nop
    ld a, [$0096]
    ld a, a
    and c
    ld [bc], a
    nop
    inc c
    nop
    ld [$ff63], sp
    nop
    ld [$617f], sp
    ld a, a
    ld b, b
    ld a, [hl]
    ld h, d
    rst RST_38
    ld a, a
    ld d, b
    ld a, [hl]
    ld a, d
    ld a, [hl]
    ld d, [hl]
    ld a, h
    ld l, h
    ld e, a
    ld a, e
    ld a, e
    nop
    nop
    add b
    and e
    nop
    rst RST_38
    sub [hl]
    nop
    ld a, a
    ld h, d
    nop
    ld [$e240], a
    adc b
    rst RST_38
    ret nc

    nop
    rst RST_38
    db $fc
    db $fc
    ei
    ei
    rst RST_30
    rst RST_30
    rst RST_08
    set 7, a
    cp a
    or c
    ld a, a
    ld b, d
    cp a
    and b
    ld a, a
    ld b, c
    rst RST_38
    ld a, a
    ld h, e
    ld a, a
    ld c, e
    ld a, a
    ld [hl], a
    ld a, a
    ld e, a
    add $22
    nop
    ld a, a
    rst RST_38
    push bc

jr_035_40fe:
    nop
    ldh a, [$ff09]
    nop
    dec b
    ld h, [hl]
    scf
    rst RST_18
    ld h, c
    ld [hl], $62
    ld sp, $0f63
    ld b, $03
    add $ff
    db $e3
    ld e, $7b
    cp $0f
    ldh a, [c]
    ld a, a
    cpl
    rst RST_38
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    inc bc
    inc bc
    ld [hl], a
    ld [hl], h
    rst RST_38
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld d, $77
    rla
    ld h, b
    ld h, b
    rst RST_38
    ld c, $0e
    cp $fa
    cp $22
    cp $00
    rst RST_38
    cp $02
    cp $9c
    cp $6a
    ld a, [hl]
    rst RST_38
    ld a, a
    rst RST_08
    ld sp, $0503
    inc bc
    dec b
    inc hl
    ld b, l
    db $10
    rst RST_38
    ld b, e
    dec b
    inc sp
    dec b
    jp $0cd3


    rla
    rst RST_38
    rst RST_08
    sub b
    nop
    rra
    sbc a
    nop
    nop
    ccf
    rst RST_38
    sbc a
    rra
    ld b, b
    nop
    db $e3
    jp hl


    db $10
    add sp, -$01
    ldh a, [c]
    ld [$f800], sp
    pop bc
    nop
    inc c
    ld hl, sp-$35
    ldh a, [$fff0]
    call nz, $ff02
    jp nz, $f000

    nop
    rst RST_38
    nop
    db $fd
    cp $96
    nop
    ld b, b
    ccf
    pop bc
    ld a, $83
    ld a, h
    rst RST_38
    rlca
    ld hl, sp+$08
    ldh a, [rNR24]
    ldh [$ff31], a
    ret nz

    rst RST_38
    ld [hl], a
    add b
    ld sp, hl
    ld bc, $02f2
    push bc
    dec b
    ei
    adc e
    dec bc
    call nz, $e001
    rra
    ret nz

    ccf
    nop
    rst RST_38
    nop
    ld e, $01
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$fff7], a
    rra
    jr c, @+$09

    sbc h
    ld de, $3537
    rlca
    ld bc, $17ff
    ld [de], a
    ld [hl], a
    ld [hl], l
    rst RST_30
    call nc, Call_000_12f7
    rst RST_38
    rst RST_30
    dec d
    rst RST_30
    inc sp
    ldh [c], a
    ld [$c8e0], a
    rst RST_38
    ldh [c], a
    ret z

    ldh [c], a
    adc b
    ldh [c], a
    jp z, $8ac2

    rst RST_38
    and d
    ld a, [hl+]
    ld h, d
    ld l, d
    rst RST_38
    ld bc, $03ff
    ei
    rst RST_38
    rlca
    call nc, Call_035_4f10
    rst RST_38
    cp a
    rst RST_38
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, [hl]
    ld a, h
    ld a, h
    ld e, b

jr_035_41e4:
    ld a, e
    ld [hl+], a
    rst RST_38
    halt
    inc b
    ld c, l
    ld [$1112], sp
    inc l
    inc hl
    cp e
    ld d, b
    ld c, a
    pop af
    ld bc, $f108
    add hl, sp
    pop af
    inc bc
    add b
    ld a, a
    nop
    nop
    ld h, b
    scf
    ld h, a
    jr nc, @+$62

    inc bc
    jr z, jr_035_41e4

    db $e3
    ld [bc], a
    dec de
    ld [bc], a
    dec sp
    inc de
    jr z, @+$79

    dec d
    rst RST_38
    ld [hl], a
    ld b, $77
    ld b, l
    halt
    ld [hl], $70
    ld d, b
    rst RST_38
    ld h, e
    ld h, e
    rrca
    add hl, bc
    ccf
    inc hl
    db $fc
    sbc h
    rst RST_38
    ldh a, [c]
    ldh a, [c]
    adc $cc
    ld a, $22
    ld a, [hl]
    ld c, d
    cp [hl]
    inc a
    nop
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    dec b
    ld b, b
    add hl, hl
    ld [hl], d
    rst RST_38
    dec b
    rst RST_28
    ld h, a
    nop
    nop
    cp $7e
    ld b, $f7
    nop
    rst RST_28
    rst RST_20
    sbc [hl]
    inc bc
    ld c, b
    ld d, h
    ld c, b
    ld d, a
    rst RST_38
    ld c, b
    ld d, b
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld c, a
    ld d, b
    rst RST_08
    ld c, b
    ld d, a
    ld c, e
    ld d, h
    ld a, d
    ld bc, $057a
    dec d
    add sp, -$01
    nop
    rst RST_38
    rst RST_28
    nop
    jp $cf00


    nop
    push af
    adc a
    sub [hl]
    nop
    inc bc
    sbc l
    ld [bc], a
    ret nz

    ccf
    add b
    ld a, a
    cp e
    add b
    ld a, a
    sbc [hl]
    ld de, $00ff
    rrca
    adc l
    ld [hl+], a
    ret nz

    rst RST_10
    ccf
    ld hl, sp+$07
    and c
    ld bc, $9b3f
    ld [hl+], a
    or $e6
    rst RST_38
    push af
    db $e4
    di
    ldh [$fff7], a
    db $e4
    db $ec
    ret z

    rst RST_38
    ret c

    ret nc

    or b
    and b

jr_035_4293:
    ld h, l
    ld b, b
    ld h, d
    ld l, d
    di
    ld h, d
    ld c, b
    ret nz

    jr nz, jr_035_431a

    nop
    ld h, b
    ld [$2895], sp
    rst RST_38
    nop
    cp a
    cp $fc
    db $fd
    ld sp, hl
    ld a, [$ff72]
    push af
    and h
    ld [$d009], a
    rla
    and b
    cpl
    rst RST_38
    nop
    rra
    and b
    sbc a
    ld b, c
    ld a, $82
    ld a, h
    rst RST_38
    inc b
    ld hl, sp+$0d
    ldh a, [rNR23]
    ldh [$ff39], a
    ret nz

    and e
    ld a, b
    add b
    db $ec
    ld bc, $29f0
    inc b
    dec h
    ld b, b

jr_035_42d0:
    rlca
    jr nc, jr_035_4314

    rst RST_30
    jr nc, jr_035_431d

    jr nc, jr_035_42ec

    dec h
    dec b
    ld [bc], a
    ld a, l
    ld c, $af
    ldh a, [c]
    inc a
    call nz, $90f8
    dec b
    jr nz, jr_035_4315

    nop
    ld [$76bb], sp
    ld a, [hl]
    and d

jr_035_42ec:
    nop

jr_035_42ed:
    ld a, a
    nop
    rra
    xor c
    ld [hl+], a
    rra

jr_035_42f3:
    db $f4
    sbc e
    jr nz, jr_035_4293

    jr nz, @+$80

    inc l
    ld sp, $0031
    ld a, e
    inc bc
    rst RST_38
    ld b, b
    jr c, @+$65

    dec de
    jr jr_035_4306

jr_035_4306:
    ld b, b
    ld b, b
    or $68
    dec h
    ld c, d
    ld d, l
    ld e, d
    inc sp
    ld c, b
    ld d, l
    nop
    ld d, l
    ld a, a

jr_035_4314:
    nop

jr_035_4315:
    ld d, h
    rla

jr_035_4317:
    ld b, b
    db $10
    ld b, b

jr_035_431a:
    ld e, a
    sub [hl]
    nop

jr_035_431d:
    rst RST_38
    jp z, $b485

    ld a, [bc]
    ld a, b
    inc b
    ret nc

    jr z, @+$01

    and c
    ld d, b
    ld d, e
    and b
    jr nz, jr_035_42ed

    ld h, b
    add b
    rst RST_18
    cp e
    dec sp

Jump_035_4332:
    ld [hl], a
    ld [hl], a
    rst RST_28
    add h
    jr nc, jr_035_4317

    rst RST_18
    xor l
    cp a
    adc d
    jr nc, jr_035_43bd

    ld a, a
    sbc c
    ld bc, $947d
    jr nc, jr_035_43c0

    ldh [c], a
    sbc b
    jr nc, jr_035_43c0

    sbc h
    jr nc, jr_035_42d0

    inc sp
    adc b
    dec [hl]
    ld a, a
    ld a, a
    ccf
    db $10
    xor c
    jr nz, jr_035_42f3

    ld bc, $1274
    sub [hl]
    nop
    cp $7c
    ld de, $03f0
    push bc
    ld [bc], a
    sbc a

jr_035_4363:
    halt
    halt
    or $f6
    push af
    call nc, Call_035_5230
    jr nz, jr_035_436e

    db $e4

jr_035_436e:
    pop af
    ld bc, $0199
    ld a, [hl]
    ldh [rNR10], a
    jp nz, Jump_000_3e37

    nop
    ld [$f17d], sp
    pop af
    rlca
    ld b, b
    ld [hl], a
    ld b, b
    ld a, a
    ld b, b
    ldh [c], a
    nop
    rst RST_38
    ld b, d
    ld a, [hl]
    ld c, h
    ld a, h
    ld [hl], c
    ld [hl], c
    rlca
    rlca
    rst RST_38
    ld [$32f8], sp
    ldh a, [c]
    ld b, [hl]
    add $9e
    sbc [hl]
    rst RST_38
    inc a
    inc a

jr_035_439a:
    ei
    ld a, [$f0f7]
    rst RST_08
    ret z

    cp $50
    add hl, hl
    cp $7c
    ld [$0700], sp
    nop
    ld bc, $2ff2
    ld b, d
    inc bc
    ld sp, $9d40
    ld bc, $423c
    ld [bc], a
    ld a, h
    rst RST_38
    ld d, [hl]
    jr z, jr_035_43ba

jr_035_43ba:
    nop
    ld [hl], e
    dec bc

jr_035_43bd:
    ld b, b
    jr c, jr_035_4363

jr_035_43c0:
    dec de
    ld h, e
    jr nz, jr_035_43c4

jr_035_43c4:
    or c
    rrca
    jp $c10a


    ld a, [hl-]
    ld b, b
    cp $4f
    ld bc, $07f8
    ldh a, [$ff9c]
    jr nz, jr_035_439a

    ld bc, $805b
    ld b, b
    cp c
    dec sp
    add h
    ld b, d
    sbc b
    ld sp, $7b7b
    xor $90
    ld b, h
    sbc $80
    sbc b
    ld b, h
    rst RST_00
    ld [hl-], a
    sbc l
    ld bc, $44a0
    xor e
    ld b, h
    rst RST_00
    ld [hl], $b0
    ld b, a
    cp a
    ld e, $af
    ld c, b
    rrca
    ldh a, [$ff30]
    ld [$46a9], sp
    push bc
    ld [hl], $c6
    ld bc, $6d00
    ld [de], a
    ldh a, [$ff08]
    pop hl
    ld b, [hl]
    jp $f034


    dec b
    ld a, c
    ld b, d
    and b
    ld b, e
    ldh a, [$ff0a]
    ld [hl], l
    ld e, h
    jr nc, jr_035_4466

    inc a
    inc [hl]
    ld d, b
    ld a, [hl-]
    ld a, [hl-]
    ld a, d
    ld a, [hl-]
    ld d, d
    rst RST_38
    dec b
    dec b
    nop
    ld h, b
    nop
    inc a
    ld b, b
    rlca
    rst RST_38
    ld a, b
    ld bc, $001e
    ld b, a
    add b
    ld [$ff00], sp
    xor $ee
    nop
    nop
    ld c, $0e
    nop
    add b
    cp $ef
    ld b, b
    ld a, $c0
    rlca
    ld hl, sp+$01
    db $ed
    db $ed
    rst RST_38
    nop
    nop
    ld [$00ea], a
    nop
    xor d
    xor d
    cp [hl]
    sub [hl]
    nop
    rst RST_00
    nop
    ld hl, sp-$3d
    ld [$5370], sp
    inc bc
    sbc e
    ld [$7183], sp
    ld d, b
    ld b, e
    adc b
    ld [hl], b
    ld d, l
    add b
    ld d, [hl]
    nop
    xor a
    ret z

    nop

jr_035_4466:
    rlc b
    add b
    ld d, a
    add a
    sub [hl]
    nop
    ld c, $e9
    ldh a, [$ff5d]
    ld d, b
    ld a, h
    db $10
    ld hl, sp-$6a
    nop

jr_035_4477:
    ld bc, $8068
    rst RST_38
    ld [hl+], a
    ld b, b
    rra
    ld h, b
    rrca

jr_035_4480:
    or b
    rlca
    jr jr_035_4477

    inc bc
    inc e
    ld c, c
    ld d, b
    ld [hl], b
    ld d, c
    ld b, e
    ld [$8803], sp
    cp e
    inc bc
    ret z

    ret z

    ld d, c
    ld bc, $9fe8
    add e
    jr nz, jr_035_4480

    ei
    nop
    di
    or c
    ld b, a
    ld h, d
    add b
    ccf
    ret nz

    rra
    rst RST_38
    ldh [rIF], a
    db $10
    rlca
    ret c

    inc bc
    ld l, h
    add c
    dec de
    ld l, $c0
    jp nz, $c85a

    ld [bc], a
    ld a, l
    jr nz, @-$1c

    ld c, e
    pop af
    inc bc
    rst RST_08
    ld d, $e0
    inc c
    ld [bc], a
    jp c, $014a

    ld d, a
    nop
    nop
    ld e, a
    ldh [rP1], a
    db $fc
    nop
    ccf
    ld e, h
    ld d, c
    ld a, [hl]
    sbc e
    ld hl, $cbf9
    ld b, b
    ld h, l
    ld [hl], b
    ld d, c
    nop
    ld [$003e], sp
    inc bc
    sbc a
    ret nz

    ld [$00c0], sp
    jp z, Jump_035_6548

    ld [hl], $63
    ld a, $af
    nop
    rlca
    ret nz

    pop bc
    ld d, [hl]
    ld h, b
    nop
    reti


    ld b, l
    nop
    ei
    inc bc
    db $fc
    cp d
    inc sp
    inc hl
    ld c, b
    ld bc, $0020
    rst RST_38
    ld e, $00
    rrca
    add b
    rlca
    ret z

    inc bc
    inc c
    inc bc
    ld bc, $950e
    ld d, h
    call nz, Call_000_1057
    ld e, [hl]
    ld hl, sp+$13
    and e
    nop
    ld c, l
    nop
    cp $96
    nop
    rla
    ldh [rNR31], a
    ldh [$ff0b], a
    ldh a, [$ff7d]
    ld h, h
    db $fd
    db $10
    ret z

    ld h, h
    ld h, e
    ldh [c], a
    ld d, e
    and l
    ld d, b
    inc bc
    db $fc
    xor b
    ld d, b
    ld sp, hl
    db $fd
    ld a, e
    db $10
    ldh a, [$ff0d]
    ld a, a
    nop
    cp a
    nop
    rst RST_18
    ccf
    nop
    rst RST_28
    nop
    rst RST_30
    nop
    ei
    rst RST_38
    ld b, $00
    inc bc
    db $fd
    ld h, h
    rrca
    inc c
    ld d, e
    add [hl]
    ld h, d
    inc [hl]
    ld h, c
    jr nc, jr_035_45ca

    ld h, [hl]
    ld sp, $3766
    ld b, c
    ld [hl], $46
    dec bc
    jr nc, @+$01

    ld b, [hl]
    ld sp, $0633
    db $e3
    ld [hl], $c3
    or $ff
    ld h, e
    add [hl]
    sbc l
    ld [bc], a
    ld l, l
    ld e, $b2
    ld a, h
    ld a, e
    call nz, Call_000_00f8
    ld c, l
    rst RST_38
    nop
    inc b
    ei
    ld a, [$3647]
    call nz, Call_000_0101
    cp $62
    ld [hl], c
    ld h, c
    sbc [hl]
    jr c, jr_035_458c

    jp nz, Jump_035_4332

    db $10
    rst RST_28
    ld d, h
    ld a, e
    dec de
    ld d, a
    add e
    ld [hl], a

jr_035_4587:
    ld a, h
    ld de, $62e2
    nop

jr_035_458c:
    inc bc
    nop
    ld [$1dff], sp
    nop
    add b
    cp e
    rst RST_38
    db $e3
    nop
    ld a, [bc]
    jp $c0ff


    db $10
    inc b
    add b
    cp $18
    inc bc
    nop
    rst RST_38
    ld a, a
    rst RST_38
    rst RST_18
    jr nz, jr_035_4587

    rst RST_38
    jr z, @-$20

    ld hl, $21de
    rst RST_18
    ld hl, $ffdc
    ld [hl+], a
    nop
    db $fc
    ldh [$fff8], a
    add b
    ld [hl], b
    nop
    rst RST_38
    ldh [rP1], a
    ret nz

    nop
    add c
    add b
    add e
    pop bc
    rst RST_38
    push bc
    nop
    rrca
    inc bc
    rra
    nop

jr_035_45ca:
    jr c, jr_035_45cc

jr_035_45cc:
    xor $35
    inc bc
    add b
    ldh [$ffe0], a
    ld hl, $7f00
    rst RST_38
    ccf
    ld a, [hl-]

jr_035_45d8:
    ld d, h
    rlca
    nop
    ld h, b
    nop
    cp $fe
    rst RST_38
    ld h, [hl]
    ld [bc], a
    ld h, b
    ld bc, $606e
    ld bc, $1f1f
    rst RST_38
    ld c, $00
    jp nz, Jump_035_6cc2

    dec b
    rst RST_08
    db $fc
    db $fc
    rst RST_38
    rst RST_38
    ld h, h
    ld bc, $0160
    add hl, de
    ld b, $ff
    add hl, de
    ld b, $12
    dec c
    ld [de], a
    dec c
    db $10
    rrca
    rst RST_38
    db $10
    ld a, [bc]
    ld a, [bc]
    nop
    ld [bc], a
    nop
    ret nz

    jr nz, @+$01

    ret nc

    jr nz, jr_035_45d8

    scf
    rst RST_20
    rla
    ld h, e
    sub e
    rst RST_38
    inc bc
    and e
    and b
    nop
    and b
    nop
    inc bc
    inc bc
    rst RST_38
    rrca
    inc c
    rra
    inc e
    ccf
    jr c, jr_035_4666

    jr nc, @+$01

jr_035_4629:
    ccf
    jr nz, jr_035_46ab

    ld [hl], b
    ccf
    jr nz, jr_035_4629

    ld bc, $c0fe
    dec bc
    rst RST_00
    rst RST_00
    adc $cf
    add a
    add a
    ld [hl], e
    ei
    di
    rra

jr_035_463e:
    jr jr_035_4640

jr_035_4640:
    di
    di
    jp $b4c3


    rst RST_38
    db $f4
    ld c, [hl]
    adc $18
    inc e
    ldh [$fffc], a
    ret nz

    rst RST_38
    db $fc
    inc b
    db $fc
    db $f4
    db $f4
    add b
    add b
    ld c, b
    rst RST_38
    ld h, c
    ld c, b
    ld h, b
    ld c, b
    ld h, b
    ld b, [hl]
    ld l, [hl]
    ld e, d
    rst RST_38
    ld a, [hl]
    ld c, d
    ld l, a
    ld e, d
    ld a, a

jr_035_4666:
    ld l, d

jr_035_4667:
    ld e, a
    rst RST_38
    push bc
    pop bc
    nop
    ld [de], a
    add c
    ld b, $16
    add hl, de
    inc b
    jr jr_035_4679

    db $dd
    ld [hl+], a
    cp $20
    add hl, de

jr_035_4679:
    rst RST_18
    jr nz, jr_035_463e

    ld a, [bc]
    add l
    inc d
    add a
    rst RST_38
    or l
    add a
    pop af
    add a

jr_035_4685:
    ldh a, [$ff83]
    ld hl, sp-$7f
    rst RST_38
    ld hl, sp-$80
    cp $d0
    ld de, $cbf8
    jr @+$01

    rst RST_28
    jr jr_035_4685

    jr z, jr_035_4667

    ldh a, [rTAC]
    ldh [$ff2b], a
    rra
    nop
    ld d, l
    ld bc, $521f
    inc d
    rrca
    ld e, d
    ld de, $0160
    ld a, a
    rst RST_38
    rst RST_38

jr_035_46ab:
    db $fc
    db $fc
    call nz, $c3c7
    ld l, e
    ld b, $7f
    rst RST_38
    rst RST_38
    ccf
    ccf
    ld b, e
    jp Jump_035_6bc1


    ld b, $fa
    add h
    ld bc, $69f1
    ld [$f2f0], sp
    db $fc
    rst RST_38
    db $fc
    rst RST_38
    rst RST_38
    db $fd
    cp $ed
    cp $6b
    ld a, [hl]
    nop
    rst RST_38
    dec h
    nop
    inc de
    ld b, b
    ld e, a
    ret nz

    ld c, a
    ret nz

    ld a, l
    ld b, a
    xor b
    db $10
    ld b, b
    ret nz

    ld c, a
    ld a, a
    ld h, b
    or b
    ld [de], a
    ld e, l
    ld b, b
    or [hl]
    inc d
    ld h, b
    rst RST_38
    nop
    ret nz

    jr jr_035_46f5

    ld l, c
    ld bc, $c0f2
    inc d
    inc bc
    ld d, d

jr_035_46f5:
    db $10
    ld h, [hl]
    nop
    jr nc, @+$3a

    ld b, b
    ld d, h
    rst RST_38
    nop
    ld l, b
    nop
    ld d, h
    ld bc, $0328
    nop
    rst RST_38
    inc c
    nop
    add b
    nop
    xor b
    ld d, b
    xor b
    ld d, b
    rst RST_38
    adc b
    ld d, b
    ret nc

    nop
    or b
    nop
    ld h, b
    nop
    cpl
    adc [hl]
    nop
    ccf
    nop
    ld b, $10
    ld bc, $2a02
    ld de, $4915
    db $e3
    ld l, b
    inc bc
    ret nz

    inc d
    jr nc, @-$67

    db $10
    dec de
    add hl, hl
    inc c
    ld d, h
    nop
    ld c, $1b
    add hl, hl
    ld h, b
    rst RST_38
    ldh a, [$ff28]
    ld hl, $1062
    ld e, e
    ld [de], a
    ld e, d
    db $10
    db $fd
    rra
    jr c, jr_035_4766

    adc a
    ldh [$ff57], a
    ldh a, [rPCM34]
    ldh a, [rIE]
    or a
    ldh a, [$ff7b]
    ld hl, sp-$05
    ld hl, sp+$03
    add b
    rst RST_38
    inc bc
    ld hl, sp+$00
    nop
    jr nz, jr_035_4779

    ld a, a
    ld a, a
    rst RST_38
    db $e3
    rst RST_38
    inc a
    jp $e0e0


    ld hl, sp-$08
    di
    rrca

jr_035_4766:
    ldh a, [$ff60]
    ld bc, $004e
    rst RST_38
    ccf
    ret nz

    inc e
    rst RST_18
    inc e
    ld h, b
    ld h, b
    add h
    ld a, h
    ld h, b
    dec b
    ld hl, sp+$07

jr_035_4779:
    cp a
    ld c, [hl]
    ld [hl], c
    nop
    nop
    ld [hl-], a
    ld [hl-], a
    ld a, [hl]
    dec b
    ld bc, $ffff
    ld a, $c1
    nop
    nop
    rrca
    rrca
    ld a, b
    rst RST_30
    ld [hl], b
    ld [hl], b
    ld [hl], c
    or d
    ld hl, $0100
    nop
    ld a, l
    rst RST_28
    nop
    ld h, c
    nop
    ld sp, $0060
    rst RST_00
    jr c, @-$74

    rst RST_38
    ld l, l
    ld b, l
    ld a, l
    ld b, l
    ld a, l
    ld l, l
    jr c, @-$44

    rst RST_38
    nop
    rst RST_00
    rlca
    rlca
    inc bc
    dec de
    db $e3
    dec hl
    rst RST_38
    or e
    inc de
    di
    inc de
    di
    or e
    db $e3
    db $eb
    rst RST_38
    inc bc
    dec de
    inc bc
    add b
    ld hl, $1160

jr_035_47c3:
    ret nc

    rst RST_38
    ld bc, $0120
    ld e, b

jr_035_47c9:
    inc bc
    jr nz, jr_035_47d3

    nop
    rst RST_38
    adc a
    nop
    and d
    and d
    rst RST_38

jr_035_47d3:
    rst RST_38
    inc sp
    rst RST_08
    rst RST_38
    ld a, a
    add b
    cp $ff
    add c
    add c
    ldh a, [$fff0]
    db $fc
    rst RST_08
    ld de, $1096
    rlca
    inc a
    rla
    sub h
    cpl
    or h
    push af
    ld l, a
    ld a, [bc]
    jr nc, jr_035_47fe

    jr nz, jr_035_47f2

    ld e, a

jr_035_47f2:
    ldh [$ffdf], a
    ld l, b
    ldh a, [c]
    inc h
    nop
    jr nz, jr_035_4824

    ld bc, $1063
    rst RST_38

jr_035_47fe:
    di
    rrca
    rst RST_00
    rst RST_38
    jr c, jr_035_47c3

    ld h, b
    ld a, a
    ret nz

    cp a
    add b
    ld a, a
    db $fc
    rra
    nop
    ld h, [hl]
    nop
    ldh a, [$fffb]
    inc e
    push af
    ld c, $fc
    db $fd
    inc bc
    ld [bc], a
    jr nz, @+$05

    jr @-$17

    and $c7
    add $ff
    dec de
    and [hl]
    inc hl
    ld h, [hl]

jr_035_4824:
    dec hl
    add [hl]
    dec bc
    ld h, $af
    dec bc
    cp $df
    ccf
    ld d, b
    jr nc, jr_035_484f

    ld d, h
    jr c, jr_035_4833

jr_035_4833:
    rst RST_18
    jr nz, jr_035_4836

jr_035_4836:
    nop
    ld c, a
    ld c, a
    ld l, b
    ld [bc], a
    rst RST_38
    cpl
    ld [hl], a
    jr nc, jr_035_47c9

    adc [hl]
    ld h, b
    inc de
    ret nz

    rst RST_38
    rst RST_20
    sub $11
    rst RST_30
    db $fc
    cp $01
    ld [hl], b
    inc d
    rst RST_38

jr_035_484f:
    rst RST_00
    rst RST_38
    ccf
    rst RST_18
    rst RST_00
    rst RST_08
    ccf
    dec sp
    ei
    ld h, b
    ld bc, $c0c0
    rst RST_38
    ld hl, sp-$08
    db $fc
    db $fc
    inc e
    db $fc
    sbc h
    db $fc
    rst RST_18
    call z, Call_035_62fc
    ld a, a
    ld h, [hl]
    and c
    jr nc, jr_035_48ce

    ld a, a
    rst RST_30
    ld [hl], b
    ld a, a
    ld d, d
    xor c
    jr nc, @+$58

    ld a, a
    nop
    ld de, $00ff
    ld bc, $7931
    ld bc, $0101
    ld de, $11ff
    add hl, sp
    db $10
    ld sp, $7930
    ld b, b
    rst RST_38
    rst RST_38
    cp $ff
    db $fc
    cp $f8
    db $fc
    ldh a, [$fffa]
    rst RST_38
    ldh a, [$fff6]
    ldh a, [$fff4]
    jr nc, @-$06

    inc bc
    jp Jump_000_3bbf


    inc bc
    ld b, l
    ld bc, $0082
    sub $31
    ld b, l
    rst RST_38
    ld bc, $033b
    sbc a
    ldh [$ffc2], a
    jp nz, $bf01

    ld bc, $01fe
    ccf
    ret nz

    ldh a, [$ff7f]
    jr nz, @-$0e

    rst RST_38
    ldh a, [$ff86]
    ld a, c
    sub e
    sbc h
    cp $fe
    ld sp, $f1ff
    ldh a, [rIF]
    rst RST_18
    ldh [$ff7f], a
    ld a, a
    ld bc, $3dec

jr_035_48ce:
    jr nc, jr_035_48d0

jr_035_48d0:
    ld c, e
    sbc $23
    db $10
    ld c, c
    rst RST_18
    ld hl, $cd7f
    nop
    jr nz, jr_035_4925

    ccf
    add b
    call z, Call_000_3110
    ld b, b
    ld a, [$ff03]
    ld a, [$f900]
    inc b
    ld sp, hl
    ld [bc], a
    db $fc
    ld bc, $fcff
    push de
    cp $d1
    cp $d3
    and $cb
    rst RST_38
    or $d3
    halt
    db $db
    ld h, [hl]
    ld c, e
    ld h, $0b
    rst RST_38
    ret nz

    ld b, b
    jp $c740


    ld b, b
    rst RST_08
    ld b, b
    rst RST_30
    rst RST_18
    ld b, b
    cp c
    xor l
    nop
    add b
    nop
    inc bc
    nop
    rst RST_38
    inc sp
    ret nz

    dec de
    ldh [$ff8b], a
    ld [hl], b
    adc e
    ld [hl], b
    cp a
    xor e
    ld d, b
    xor e
    ld d, b
    xor d
    ld d, b
    ret nz

    add hl, de
    adc a

jr_035_4925:
    rst RST_38
    nop
    ld h, a
    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    ld hl, sp-$01
    ld hl, sp-$08
    rlca
    ld hl, sp-$08
    add b
    add b
    db $fc
    rst RST_38
    db $fc
    ld a, $c1
    inc hl
    inc a
    ld b, b
    ld h, b
    rrca
    or $0f
    jr nc, @+$51

    ld [hl], b
    ld l, a
    inc de
    ret nz

    ccf
    sub b
    sbc a
    rst RST_30
    ldh [$ffe0], a
    ld a, b
    add l
    ld b, b
    ld [bc], a
    inc bc

jr_035_4953:
    nop
    nop
    rr [hl]
    cp $ba
    jr nz, jr_035_495c

    or d

jr_035_495c:
    inc hl
    or d
    ld [hl+], a
    ld [hl], l
    nop
    ld [hl], l
    cp $c1
    stop
    or [hl]
    db $10

jr_035_4968:
    ld h, a
    ccf
    jr nc, jr_035_49ca

    jr nc, @-$1f

    add b
    inc bc
    inc bc
    inc bc
    ei
    pop de
    ld b, b
    dec bc
    db $fd
    rst RST_38
    db $fd
    cp $02
    cp $fe
    nop
    nop
    ld a, c
    rst RST_38
    ld sp, hl
    jr nc, jr_035_4953

    ld h, $27
    pop bc
    pop bc
    ld a, a
    rst RST_38
    rst RST_38
    adc h
    ld [hl], e
    cp [hl]
    pop bc
    ld hl, sp-$08
    jp $c3ff


    ccf
    rst RST_38
    ld [hl], b
    adc a
    add a
    add a
    ret nz

    ld a, a
    ret nz

    ld a, a
    rst RST_38
    jr c, jr_035_4968

    ld a, [hl]
    ld a, a
    nop
    ld c, d
    sbc a
    ld bc, $00ff
    rst RST_18
    ld hl, $3118
    ret nz

    db $10
    ld [$bfff], sp
    ld b, b
    add b
    ld a, a
    cp a
    nop
    sbc a
    ret nz

    xor a
    rst RST_08
    ldh [$ffe0], a
    ld [hl], b
    ld d, h
    nop
    rrca
    dec e
    ld hl, $7eff
    ret nz

    ld b, b
    ldh [c], a
    inc bc
    dec c

jr_035_49ca:
    ld c, $fb
    db $fc
    ld c, b

jr_035_49ce:
    jr nz, jr_035_49ce

    dec hl
    ld d, d
    ld h, $83
    ld h, $53
    sub [hl]
    ld h, e
    add [hl]
    rst RST_38
    inc sp
    add $13
    and $03
    ld [bc], a
    rst RST_38
    cp $19
    ld bc, $3954
    ld d, h
    ld sp, $744b
    ld h, b
    ld e, e
    ret nz

    dec b
    jp nz, $cf41

    ld [hl], c
    add hl, bc
    ld [hl], c
    add hl, bc
    ld h, [hl]
    inc bc
    rst RST_08
    ld [de], a
    nop
    rst RST_00
    rst RST_30
    rst RST_20
    rst RST_00
    rst RST_20
    add b
    ld e, c
    inc e
    sbc [hl]
    inc e
    sbc [hl]
    cp a
    nop
    rst RST_38
    ld a, [hl]
    add c
    ld bc, $9401
    ld b, c
    ld a, b
    ld a, a
    add a
    ld c, $0e
    nop
    nop
    ld [hl], b
    ld [hl], l
    or b
    ld d, d
    scf
    ld [hl], h
    ld [hl], c
    ld [hl], l
    cp b
    ld d, c
    ld a, c
    ld a, e
    jr c, jr_035_4a23

jr_035_4a23:
    ret nz

    ld de, $02ff
    ld sp, hl
    ei
    ld sp, hl
    ei
    db $fc
    db $fd
    db $fc
    rst RST_00
    db $fd
    inc bc
    sub e
    jp nc, $d340

    ld b, b
    add b
    ld d, l
    adc a
    adc a
    rst RST_38
    db $e3
    db $e3
    rlca
    rst RST_38
    pop hl
    rst RST_38
    rra
    rra
    ld a, a
    add e
    add e
    push hl
    push hl
    inc bc
    rst RST_38
    add e
    add a
    db $10
    rst RST_38
    ret nz

    ret nz

    ld a, b
    ld hl, sp+$01
    rst RST_38
    jr nc, @+$41

    adc a
    add hl, de
    add hl, de
    add c
    add c
    ret nz

    ld a, [de]
    pop bc
    ld de, $1186
    ld h, b
    ld a, [$2046]
    ld b, b
    jr jr_035_4acc

    cp $ff
    ld hl, sp-$01
    ld [hl], b
    adc $24
    ld h, b
    jr nc, @+$01

    jr nz, @+$2c

    ld h, d
    pop bc
    inc d
    db $fc
    nop
    cp a
    ldh [$ff03], a
    jp $0e1f


    ccf
    ld l, $50
    ld [bc], a
    rst RST_28
    ldh a, [rNR11]
    nop
    rrca
    db $fd
    db $10
    ld hl, sp+$00
    ldh [$ffef], a
    ld bc, $80c0
    nop
    db $fd
    ld de, $f100
    nop
    xor $5f
    ld b, b
    ld h, [hl]
    ld [bc], a
    jp $307f


    rra
    rst RST_38
    pop hl
    db $fd
    di
    ld c, d
    ld h, b
    dec e
    add b
    ld c, $40
    ld [bc], a
    and b
    cp $80
    inc hl
    ld hl, sp+$00
    rst RST_28
    rrca
    sbc a
    jr jr_035_4af5

    rst RST_38
    inc d
    ld a, a
    rrca
    ccf
    rst RST_00
    rst RST_20
    rlca
    daa
    rst RST_38
    rlca
    rlca
    rlca
    rst RST_00
    rlca
    rst RST_30
    inc bc
    ei
    adc a
    ld bc, $00fd

jr_035_4acc:
    cp $9c
    ld d, c
    sub b
    ld l, c
    sbc $10
    rst RST_38
    ld l, a
    rlca
    ld hl, sp+$13
    inc e
    ld a, h
    jr nz, @+$01

    jr nz, @+$52

    jr nc, @+$01

    ld a, c
    ld a, e
    ld a, h
    ld a, l
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [hl]
    rst RST_38
    ld a, a
    ld [hl], a
    ld a, a
    ld h, e
    ld a, a
    ld h, c
    ld a, a
    ld h, b
    sbc [hl]
    ret z

    ld d, c
    di

jr_035_4af5:
    ei
    rlca
    rst RST_20
    ld [hl], h
    ld bc, $0066
    ld a, a
    add sp, -$80
    ld d, l
    pop bc
    ld sp, $6022
    ldh [$ffea], a

jr_035_4b06:
    jr nc, jr_035_4b06

    ret nz

    cp $7f
    ld b, h
    ld b, [hl]
    ldh [c], a
    ldh [c], a
    ld [hl], b
    ldh a, [$ff0e]
    jp c, $ff40

    ld l, d
    ld e, a
    ld a, c
    ld c, [hl]
    ld [hl], l
    ld b, [hl]
    ld [hl], c
    ld b, d
    rst RST_38
    ld [hl], c
    ld b, d
    ld h, l
    ld d, [hl]
    ld l, l
    ld e, [hl]
    ld e, b
    ld a, a
    ret c

    ld a, [bc]
    inc sp
    nop
    ld [hl], a
    ret nz

    add hl, de
    cp $00
    ld a, $40
    nop
    ld hl, sp-$01
    ld bc, $07f1
    ret nz

    rrca
    add b
    ld e, $04
    rst RST_38
    ld e, [hl]
    ld c, b
    db $fc
    ld c, b
    rst RST_38
    inc b
    rra
    ret nz

    rst RST_38
    rst RST_38
    db $e4
    or $64
    and $24
    or $34
    rst RST_38
    halt
    inc d
    ld [hl], $14
    inc e
    ld [bc], a
    dec b
    ld bc, $0eff
    dec bc
    inc [hl]
    jr jr_035_4b84

    inc de
    inc l
    ld b, $ff
    add hl, sp
    nop
    rra
    add hl, de
    inc h
    or b
    ld c, a
    add c
    rst RST_38
    ld [hl], b
    rlca
    ret z

    ld bc, $c0e0
    inc a
    ld h, h
    rst RST_38
    adc d
    add h
    ld a, d
    and d
    ld c, l
    ld a, h

jr_035_4b79:
    ld [bc], a
    ret nz

    rst RST_38
    ccf
    add e
    ld a, h
    rst RST_20
    jr jr_035_4b79

    nop
    and a

jr_035_4b84:
    rst RST_38
    ld b, b
    ld c, $65
    ld a, [bc]
    ld l, c
    inc e
    ccf
    sbc b
    rst RST_38
    inc a
    call z, $881d
    dec bc
    jr nz, jr_035_4b98

    ld [hl], b
    rst RST_18
    ld [bc], a

jr_035_4b98:
    ldh a, [rSC]
    cp b
    nop
    rla
    nop
    sub a
    add b
    rst RST_38
    rst RST_00
    or [hl]
    rst RST_38
    ld a, h
    rst RST_38
    jr c, @+$01

    inc e
    rst RST_18
    ld a, a
    ld l, [hl]
    ld a, a
    inc e
    ld e, $9c
    ld d, b
    sbc $0c
    rst RST_38
    xor $0c
    xor $04
    or $04
    or $00
    rst RST_38
    ld a, [$cfcf]
    rst RST_08
    rst RST_38
    scf
    rst RST_08
    ret nz

    ld l, a
    ccf
    inc c
    rrca
    rst RST_38
    call z, $a310
    cp a
    cp h
    ld de, $b2fc
    ld a, c
    sbc [hl]
    ld b, b
    nop
    ld h, b
    sbc a
    db $10
    ldh [$ff08], a
    rst RST_38
    rst RST_30
    inc b
    ld hl, sp+$02
    db $fd
    ld bc, $04fe
    rst RST_38
    di
    call nz, Call_000_2400
    db $d3
    inc d
    ldh [rNR14], a
    rst RST_38
    db $e3
    inc c
    ldh a, [$ff0c]
    di
    inc b
    ld hl, sp-$39
    rlca
    ld b, d
    rst RST_08
    ld c, d
    ldh [c], a
    ld a, c
    ld bc, $1d6d
    add b
    jr nz, @-$0f

    rst RST_38
    xor d
    rst RST_38
    nop
    nop
    nop
    ld d, l
    rst RST_38
    rst RST_38
    rst RST_38
    ld d, l
    ld d, l
    xor d
    xor d
    nop
    nop
    ld hl, sp-$57
    rst RST_38
    ld hl, sp+$03
    ld hl, sp-$55
    ld hl, sp+$51
    ld hl, sp-$08
    rst RST_38
    ld d, h
    ld d, h
    xor b
    xor b
    nop
    nop
    jp c, $ffff

    db $db
    rst RST_38
    ld hl, sp-$01
    ld l, b
    db $fc
    nop
    ld l, [hl]
    rst RST_38
    nop
    jr z, jr_035_4c33

jr_035_4c33:
    ld [$0600], sp
    ld [$ff9c], sp
    nop
    adc b
    add b
    ret nz

    nop
    ldh [rP1], a
    nop
    rst RST_38
    nop
    ld sp, $7800
    nop
    ret nz

    nop
    ld de, $3afe
    nop
    jr nz, jr_035_4c4f

jr_035_4c4f:
    add hl, de
    jr @+$27

    inc b
    add hl, de
    ei
    nop
    add c
    ld [hl], $00
    and a
    nop
    inc bc
    nop
    ld bc, $00ff
    ld b, b
    add b
    ld b, $c0
    ld b, $00
    db $fc
    rst RST_38
    nop
    adc h
    inc bc
    ld h, b
    rlca
    ld h, c
    ld c, e
    inc l
    cp a
    ld d, h
    inc hl
    ld h, $05
    ld hl, $3801
    nop
    nop
    rst RST_38
    ld d, b
    ld [$1840], sp
    ld d, b
    ld [$8088], sp
    db $fc
    ld [hl], a

jr_035_4c85:
    ld bc, $016c
    nop
    add hl, de
    nop
    inc sp
    nop
    dec [hl]
    xor e
    nop
    ld l, c
    inc l
    nop
    ld [$027c], sp
    ld hl, sp+$5c
    nop
    ld a, h
    rst RST_38
    nop
    ld a, [hl]
    jr nc, jr_035_4cdd

    ld h, b
    ld a, [hl]
    ret z

    rst RST_28
    rst RST_28
    add h
    rst RST_08
    jp nc, $a02e

    inc b
    xor $ff
    rst RST_38
    rst RST_38
    nop
    ld a, a
    nop
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ei
    ld a, a
    ld [hl], b
    or h
    ld bc, $303f
    ccf
    or b
    ccf
    rst RST_20
    cp b
    rst RST_18
    jr nz, jr_035_4c85

    ld bc, $0002
    ld [$40bf], sp
    cp a
    add b
    ld a, a
    rst RST_38
    nop
    add b
    rst RST_38
    ret nc

    nop
    ld a, a
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    rst RST_38
    nop
    nop

jr_035_4cdd:
    xor d
    nop
    db $fd
    nop
    ld [bc], a
    nop
    nop
    rst RST_38
    ld bc, $07fe
    ld hl, sp-$02
    jp c, $9403

    cpl
    db $f4
    rrca
    db $f4
    rrca
    db $fc
    rst RST_38
    rlca
    db $fc
    rla
    db $fc
    rlca
    inc b
    rst RST_38
    db $fc
    rrca
    inc bc
    xor d
    xor d
    ld d, l
    rlca
    nop
    dec b
    ld bc, $00dc
    jp c, $fe00

    nop
    dec e
    add b
    add b
    ld d, b
    ld d, b
    add sp, -$18
    xor h
    rst RST_28
    db $fc
    ld d, [hl]
    cp $03
    dec bc
    ld [de], a
    nop
    nop
    inc e
    rst RST_38
    nop
    ld [hl-], a
    inc c
    ld sp, $380e
    rlca

jr_035_4d25:
    jr jr_035_4d25

    add hl, sp
    db $10
    add hl, de
    ld b, $00
    nop
    ldh [$ffe0], a
    ld a, a
    ld a, [hl]
    ld b, h
    ld [de], a
    cp a
    ccf
    ld c, a
    adc a
    and b
    ld b, b
    ld e, $11
    sbc a
    rst RST_38
    rst RST_38
    db $fd
    rst RST_38
    ldh [c], a
    pop de
    nop
    db $dd
    ld bc, $3f03
    inc bc
    ccf
    ccf
    ld [$54ff], a
    pop hl
    ld [bc], a
    db $dd
    ld [bc], a
    adc $0b
    db $10
    xor e
    rst RST_38
    dec d
    ld h, a
    ld d, $0e
    nop
    ld hl, sp-$02
    cp a
    cp $5e
    cp $0b
    rst RST_38
    ld bc, $120b
    inc b
    rst RST_38
    rlca
    ld a, [de]
    dec sp
    ld [hl+], a
    rst RST_20
    ld b, $47
    inc bc
    rst RST_38
    rrca
    inc bc
    inc bc
    ld [bc], a
    daa
    inc b
    ld a, [hl]
    nop
    rst RST_38
    nop
    ld [de], a
    sub d
    cpl
    xor a
    rra
    sbc $1f
    rst RST_38
    ret c

    rra
    ret nc

    rrca
    ldh [rIF], a
    add sp, $7f
    sbc a
    ld [hl], b
    rst RST_38
    ldh a, [rIE]
    ldh [$ffe1], a
    ld [bc], a
    ldh [rSC], a
    ld c, b
    add a
    db $d3
    ld c, b
    ld b, b
    ret nz

    add hl, de
    ldh [rP1], a
    rst RST_18
    ld bc, $16d3
    inc b
    di
    di
    inc b
    rst RST_18
    ld a, [de]
    ret nz

    jr jr_035_4dab

jr_035_4dab:
    ld [$08d3], sp
    ld bc, $1d00
    nop
    add b
    db $fd
    rst RST_38
    nop
    inc b
    ret nz

    ret nz

    ret z

    rst RST_10
    ret z

    rst RST_10
    ei
    ret


    sub $00
    dec b
    ld a, a
    ld a, a
    nop
    add b
    nop
    rst RST_20
    rst RST_38
    cp $01
    nop
    dec b
    ld d, $04
    cp $7e
    add c
    ld a, a
    ccf
    ret nz

    adc e
    db $f4
    pop hl
    cp $f9
    scf
    nop
    rst RST_38
    db $fc
    rst RST_38
    rrca
    rrca
    db $10
    rst RST_30
    rst RST_30
    rst RST_38
    dec bc
    ld d, b
    rst RST_10
    ld b, d
    rlca
    nop
    nop
    nop
    ld d, b
    add hl, bc
    ld b, b
    ld bc, $0960
    rst RST_28
    rrca
    daa
    adc a
    and a
    ld [hl], b
    add hl, bc
    ld d, b
    ld d, b
    ld b, b
    rst RST_38
    ld h, a
    ld h, d
    ld a, a
    ld a, c
    ld a, a
    ld e, [hl]
    ld a, a
    ld b, b
    rst RST_38
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    ld b, b
    nop
    nop
    add [hl]
    rst RST_28
    add e
    add d
    add e
    adc [hl]
    sub e
    nop
    or [hl]
    add e
    add e
    rst RST_38
    add e
    nop
    nop
    db $10
    db $10
    ld [bc], a
    and $62
    rst RST_38
    cp $ca
    cp $9a
    cp $02
    cp $fe
    rst RST_38
    cp $00
    nop
    ld [hl], h
    ld b, b
    ld b, b
    ld b, b
    ld l, l
    ld a, [$00b1]
    halt
    or c
    inc b
    ld e, e
    nop
    nop
    nop
    ld [hl], $ea
    pop bc
    nop
    db $db
    pop bc
    nop
    or [hl]
    pop bc
    nop
    ld e, l
    ld a, a
    ld b, d
    cp a
    ld a, a
    ld c, c
    ld a, a
    ld d, h
    ld a, a
    ld l, l
    adc c
    inc b
    sbc a
    ld [$0497], a
    sub [hl]
    sub e
    nop
    or a
    sbc l
    nop
    add sp, -$02
    ld [hl-], a
    cp a
    cp $ea
    cp $f2
    cp $4a
    xor c
    inc b
    ret z

    ld a, l
    sub $00
    dec de
    rrca
    rst RST_28
    rst RST_08
    cpl
    ld c, a
    inc de
    jr jr_035_4ed5

    nop
    dec b
    ldh a, [$fff0]
    ldh a, [$fff7]
    ld a, [hl+]
    db $10
    or $00
    dec b
    ldh a, [$ffc1]
    nop
    ld c, a
    nop
    add hl, sp
    stop
    inc b
    rrca
    rlca
    rrca
    rst RST_20
    sbc $4a
    db $10
    daa
    ldh a, [$fff6]
    pop af
    dec l
    db $10
    ldh a, [$fff7]
    adc h
    ld d, d
    dec d
    ld b, b
    ld [bc], a
    ld d, b
    ld d, b
    ld h, c
    ld d, $50
    ld [bc], a
    ld a, $12
    ld a, a
    db $f4
    ld a, $12
    ld h, b
    ld [bc], a
    db $10
    add b
    rla
    rst RST_30
    ldh a, [$ffe7]
    add sp, -$01
    ldh [$ffef], a
    ldh [$ffe0], a
    rst RST_38
    rst RST_38
    pop af
    ldh a, [c]
    rst RST_38
    di

jr_035_4ebf:
    push af
    rst RST_20
    db $eb
    rst RST_18
    ld h, b
    cp a
    ret nz

    db $fd
    add b
    dec a
    ld [de], a
    adc a
    rrca
    rst RST_08
    xor a
    rst RST_00
    or a
    db $fc
    dec sp
    inc de
    ld a, $17

jr_035_4ed5:
    rst RST_28
    rlca
    rst RST_20
    inc de
    rlca
    di
    add e
    rlca
    inc bc
    nop
    dec b
    sub b
    rla
    nop
    inc bc
    and b
    rla
    ld [hl+], a
    dec d
    ld hl, sp-$42
    ldh a, [c]
    db $10
    ld sp, hl
    ld sp, hl
    rst RST_38
    rst RST_38
    rra
    ld c, a
    nop
    ld b, b
    ld a, l
    cp a
    nop
    jr jr_035_4ebf

    ret z

    ld h, $08
    and $14
    add hl, de
    ret c

    inc d
    ld de, $1350
    ld [hl+], a
    daa
    pop af
    or $30
    dec hl
    rrca
    daa
    rst RST_28
    rrca
    rst RST_20
    adc a

Call_035_4f10:
    ld h, a
    ld b, h
    daa
    rst RST_28
    db $e3
    rst RST_08
    rst RST_38
    rst RST_10
    rst RST_18
    rst RST_00

jr_035_4f1a:
    sbc a
    xor a
    adc a
    rst RST_10
    db $e3
    rst RST_38
    db $f4
    db $fc
    db $fc
    db $fd
    db $fc
    rst RST_20
    rst RST_10
    db $e3
    rst RST_38
    sbc e
    di
    db $eb
    pop af
    call $ebf1
    rlca
    rst RST_18
    adc a
    ccf
    cpl
    sub b
    sub b
    inc b
    ld [bc], a
    rst RST_38
    cp a
    rst RST_10
    rst RST_00
    ldh a, [$fff0]
    sub h
    ld de, $3f1f
    ld [de], a
    inc bc
    ei
    ld a, e
    db $fd
    pop af
    pop bc
    nop
    db $fc
    nop
    nop
    cp $3f
    ld d, $ee
    ld d, $01
    rra
    rra
    ret nz

    adc a
    jr z, jr_035_4f1a

    ret nz

    sub b
    rst RST_30
    add b
    nop
    rrca
    jr nz, jr_035_4f69

    rrca
    rrca
    daa
    ld b, a
    di
    ld b, b
    add b

jr_035_4f69:
    adc e
    nop
    ret nz

    ld [hl+], a
    ld a, [hl]
    ld a, [hl]
    ld a, b
    ld a, c
    rst RST_38
    ld h, b
    ld h, a
    ld e, a
    ld b, b
    db $fc
    db $fd
    ei
    ld sp, hl
    cp a
    ldh [$ffe7], a
    add a
    sub e
    nop
    ld a, e
    adc d

jr_035_4f82:
    jr nz, jr_035_4f82

    rst RST_38
    db $fd
    nop
    db $10
    cp a
    add b
    ld e, a
    nop
    adc a
    cp a
    ret nz

    rrca
    nop

jr_035_4f91:
    rra
    nop
    ccf
    ld d, b
    nop
    nop
    ld a, e
    nop

jr_035_4f99:
    ret nz

    ldh a, [rNR42]
    rrca
    ret nc

    nop
    ldh [$fff8], a
    jr nz, jr_035_4f99

    ld d, d
    nop
    ld [$00e6], sp
    ld sp, $8668
    adc b
    ld h, [hl]
    rst RST_28
    ld [$6384], sp
    ld h, e
    xor b
    db $10
    xor a
    rst RST_08
    rst RST_28
    rst RST_38
    rst RST_08
    rst RST_28
    adc a
    cpl
    rrca
    ld l, a
    adc a
    rst RST_28
    ldh a, [c]
    ld a, [de]
    jr nc, jr_035_5033

    ld d, h
    ld [de], a
    ld sp, $dd28
    db $dd
    sbc $de
    ld l, e
    pop hl
    pop hl
    nop
    ld bc, $4fe1
    nop
    inc sp
    call z, $2944
    ret z

    ld b, h

jr_035_4fda:
    ld hl, $00c1
    adc b
    ld hl, $5002
    ld [hl-], a
    ld d, d
    nop
    jr nc, jr_035_4fed

    ld h, a
    nop
    rlca
    nop
    rst RST_20
    inc h
    db $ec

jr_035_4fed:
    ld hl, $8807
    ldh a, [rNR44]
    cp h
    ld a, [$ec21]
    ld hl, $8340
    nop
    inc bc
    add d
    jr nc, jr_035_4ffe

jr_035_4ffe:
    rst RST_38
    nop
    ld e, $01
    cp $06
    ld sp, hl
    db $fc
    inc bc
    cp $8a
    ld sp, $f608
    jr nc, jr_035_4fda

    nop
    jr c, jr_035_4f91

    rst RST_38
    ld b, b
    ld [bc], a
    jp nz, $0202

    ld b, b
    rra
    nop
    rst RST_38
    ld h, b
    nop
    or $40
    ld [hl], $70
    add [hl]
    nop
    ld a, a
    ld [hl], a
    nop
    rlca
    pop af
    or $00
    ei
    ld d, b
    ld sp, $f3ff
    di
    nop
    rst RST_30
    nop

jr_035_5033:
    nop
    jr nc, jr_035_5066

    db $e3
    db $10
    jr nc, jr_035_5076

    ld de, $325b
    scf
    db $10
    ccf
    ccf
    call z, $f3bd
    ret nz

    add hl, sp
    pop hl
    pop hl
    sbc h
    db $fc
    ret nz

    add hl, sp
    db $f4
    rst RST_18
    db $f4
    sbc d
    ld a, [$fa04]
    xor [hl]
    nop
    ld a, h
    inc c
    db $eb
    ld [hl], h
    ld [$34f7], sp
    ld b, $00
    ld b, b
    inc b
    ld b, $02
    cp $03
    ld b, b
    ld b, b

jr_035_5066:
    ld b, [hl]
    and b
    and [hl]
    ld d, b
    ld d, [hl]
    ld a, a
    rst RST_38
    add b
    add b
    rst RST_38
    add b
    rst RST_38
    pop de
    rst RST_38
    ld a, $f3

jr_035_5076:
    pop bc
    add b
    dec [hl]
    ld [de], a
    jr nc, jr_035_50a9

    ld a, [bc]
    ld [de], a
    ld hl, $ff22
    ld e, c
    ld a, c
    ld d, d
    ld l, d
    ld [bc], a
    dec b
    inc hl
    inc hl
    rst RST_38
    inc c
    inc c
    cpl
    cpl
    cp $fe
    xor a
    ld l, a
    rst RST_38
    ld [hl], d
    adc a
    rlca
    rlca
    db $e3
    db $e3
    ld l, h
    sbc a
    rst RST_38
    db $e3
    db $fc
    db $e4
    rst RST_20
    ld d, e
    ld l, a
    db $e4
    rst RST_20
    rst RST_38
    ld e, l
    cp l
    ld e, d
    ld h, [hl]

jr_035_50a9:
    adc c
    adc a
    ldh a, [c]
    di
    rst RST_38
    ld c, c
    ret


    ld c, $fe
    jp c, Jump_035_78e6

    cp $ff
    ld e, $fe
    ld hl, sp-$08
    ldh a, [c]

jr_035_50bc:
    cp $4c
    ldh a, [c]
    rst RST_08
    ld a, $fe
    ldh a, [$fff0]
    ld hl, sp+$35
    ld hl, sp+$35
    or b
    or [hl]
    rst RST_38
    ld [hl], h
    ld [hl], d
    call nc, $a4f2
    ldh [c], a
    call nz, $ffe2
    add b
    add $40
    sub $04
    jp nc, Jump_000_2f0f

    rst RST_38
    inc hl
    daa
    rlca
    rlca
    nop
    nop
    dec sp
    ld b, b
    rst RST_28
    ld b, b
    ld a, e
    ld [hl], e

jr_035_50e9:
    ld [hl], e
    adc c
    jr nz, jr_035_50e9

    ld l, a
    sbc a
    ei
    xor [hl]
    or c
    or e
    dec d
    nop
    nop

jr_035_50f6:
    dec hl
    scf
    ldh a, [$fff7]
    rst RST_38
    ld [$a6f8], sp
    ld b, a
    db $fc
    db $fc
    jp nz, $8bfe

    inc a
    ld a, $8c
    jr nz, jr_035_510a

    ld [hl], b

jr_035_510a:
    inc de
    ret nz

    dec h
    ret nz

    dec h
    nop
    rst RST_38
    add $01
    push hl
    ld bc, $31c1
    or c
    ld [hl], a
    adc a
    ld [hl], a
    rst RST_30
    rst RST_30
    rrca
    xor a
    jr nz, jr_035_50bc

    nop
    sbc e
    nop
    add a
    ld sp, hl
    add a
    inc [hl]
    ld [de], a
    ld d, d
    nop
    inc bc
    ld [bc], a
    sbc b
    ld hl, sp+$00
    rst RST_38
    rst RST_38

jr_035_5132:
    ccf
    ret nz

    jr nz, jr_035_50f6

    ld h, $c6
    daa
    rst RST_38
    rst RST_00
    ld h, $c7
    ldh a, [rIF]
    rra
    db $10
    ret nz

    cp $9e
    jr nz, @+$40

    ld b, c
    ld [bc], a
    ld bc, $6d66
    ld h, [hl]
    ei
    ld l, l
    ld h, $0d
    ld d, b
    ld h, $c7
    ld [hl+], a
    jp $ff2a


    sra d
    sra e
    sra a
    rst RST_08
    sub $5d

Jump_035_5160:
    db $fd
    jr nc, jr_035_51b4

    ld d, [hl]
    db $fd
    halt
    scf
    ld d, b
    ld [hl], $3b
    ld d, b
    rst RST_38
    cpl
    rst RST_08
    ccf
    ret c

    jr c, jr_035_5132

    daa
    rst RST_20
    rst RST_38
    nop
    rst RST_38
    add hl, bc
    ld hl, sp+$0e
    pop af
    ld [hl-], a
    call z, $fdff
    add b
    add e
    nop
    ld sp, hl
    ld a, [$f1f0]
    rst RST_38
    sbc h
    add b
    pop hl
    inc e
    ld bc, $01c0
    nop
    rst RST_18
    inc l
    rst RST_08
    inc l
    rst RST_08
    inc h
    ld hl, $2254
    jp Jump_000_20ff


    ret nz

    sub [hl]
    db $fd
    sub [hl]
    db $fd
    sbc [hl]
    push af
    rst RST_38
    sbc $f5
    ld a, $b5
    ld c, $85
    jp z, $fbc1

    ld [hl-], a
    add hl, bc
    ld a, [hl-]
    db $10
    db $fc
    inc bc
    di
    rrca

jr_035_51b4:
    rst RST_08
    db $db
    ccf
    ccf
    nop
    inc bc
    ld e, a
    ld h, b
    sub b
    ld d, c
    rst RST_18
    ldh [rIE], a
    sbc [hl]
    pop hl
    cp e
    push bc
    or l
    rst RST_08
    rst RST_08
    rst RST_38
    ei
    ld [hl], c
    ld a, [hl]
    ld d, b
    inc sp
    nop
    nop
    ld [$2208], sp
    rst RST_38
    ld [hl+], a
    ld c, c
    ld c, c
    ldh a, [rIF]
    rst RST_08
    ldh a, [rP1]
    rst RST_38
    nop
    ld bc, $0301
    inc bc
    dec hl
    dec hl
    ld e, d
    ld h, a
    ld e, e
    ld hl, sp-$05
    sub b
    ld d, e
    ret nz

    ld d, a
    ldh [rNR31], a
    ret nc

    ld e, e
    cp $90
    ld d, c
    ld c, a
    ld [hl], b
    ld e, a
    ld h, b
    ld c, d
    ld [hl], l
    ld c, a
    rst RST_18
    ld [hl], b
    ld b, l
    ld a, d
    ld h, d
    ld a, l
    ret nc

    ld d, a
    ret nz

    dec sp
    rst RST_38
    add b
    ld a, e
    nop
    ei
    dec l
    rst RST_08
    dec l
    rst RST_08
    dec a
    inc h
    inc bc
    ld h, h
    cpl
    rst RST_08
    daa

jr_035_5215:
    ret z

    ld [hl], b
    ld d, c
    ld [hl], b
    ld d, c
    rst RST_38
    ld e, $75
    ld a, [hl]
    ld [hl], l

jr_035_521f:
    ld a, [hl]
    add l
    ld a, [hl]
    db $fc
    ld a, $00
    ld h, c
    dec h
    rst RST_00
    dec h
    rst RST_00
    dec l
    ld h, c
    ld d, b
    ld h, b
    ld d, c
    ld a, a

Call_035_5230:
    ld h, $ed
    ld h, $ed
    ld [hl], $fd
    or [hl]
    dec [hl]
    ld h, [hl]
    xor l
    jr nz, jr_035_5243

    ld d, b
    inc hl
    jp Jump_035_5160


    ld l, $49

jr_035_5243:
    ld h, d
    nop
    rst RST_38
    ld [$e9e2], sp
    add d
    jp hl


    add [hl]
    db $ed
    sub d
    db $fd
    ld sp, hl
    jr nc, jr_035_52a5

    jr nz, jr_035_5215

    daa
    ret nz

    jr c, jr_035_521f

    ei
    jr nz, @-$26

    ld h, d
    ld h, d
    rst RST_18
    nop
    rst RST_38
    jp nz, $9f31

    inc c
    jp Jump_000_0f30


    ret nz

    ld l, c
    ld sp, $5283
    ld b, e
    rst RST_10
    inc hl
    ld b, a
    daa
    inc d
    db $10
    rrca
    adc b
    ld d, l
    ld c, a
    inc l
    xor a
    ld c, h
    inc hl
    ld b, b
    cpl
    sub h
    ld h, c
    ld b, e
    sub c
    ld h, c
    inc l
    rst RST_38
    daa
    daa
    ld e, l
    ld e, a
    ld l, d
    ld a, a
    ld d, b
    ld a, a
    rst RST_38
    ld b, l
    ld a, d
    ld c, a
    ld [hl], b
    ld e, d
    ld h, l
    ld c, a
    ld [hl], b
    rst RST_38
    ld hl, sp-$05
    ld d, b
    ei
    ld [$20fb], sp
    db $db
    sbc e
    ld b, b
    cp e
    ld hl, sp+$51
    ldh [rNR31], a

jr_035_52a5:
    jr nz, jr_035_52ae

    nop
    inc bc
    ld hl, sp-$0b
    ei
    ret nc

    ld h, h

jr_035_52ae:
    ld hl, sp+$00
    inc bc
    ld a, d
    ld a, a
    ccf
    ccf
    rst RST_38
    nop
    nop
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    rla
    rla
    db $fd
    ld l, h
    ld a, d
    db $10
    ld hl, sp-$05
    ldh a, [$fff3]
    nop
    inc bc
    db $fd
    ld [$60b3], sp
    ldh a, [$fff3]
    ld [$00fb], sp
    inc bc
    ld hl, sp-$78
    ld d, l
    nop
    dec b
    ld [hl], b
    ld c, e
    ld bc, $6f79
    ld [hl], b
    ld c, a
    cp $21
    ld [hl], b
    ld e, a
    ld h, b
    ld e, [hl]
    ld h, c
    ld e, [hl]
    ld h, c
    ld e, d
    rst RST_30
    ld h, l
    ld e, b
    ld h, a
    dec sp
    ld de, $619e
    inc c
    di
    rst RST_18
    dec b
    ei
    add hl, bc
    rst RST_38
    ld a, c
    nop
    nop
    cp $01
    rst RST_38
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld a, c
    add a
    dec sp
    rst RST_00
    or a
    and a
    rst RST_18
    rst RST_08
    nop
    nop
    ld e, c
    ld h, a
    ld d, b
    ld [hl], a
    add hl, de
    halt
    ld e, e
    ld [hl], b
    add hl, sp
    ld b, a
    ld h, b
    ld a, e
    ld a, c
    rlca
    ld a, e
    ld [hl], c
    ld a, b
    rst RST_38
    dec sp
    ld b, a
    dec sp
    ld b, a
    dec hl
    ld d, a
    cpl
    ld d, a
    xor a
    daa
    ld e, a
    rlca
    ld a, a
    adc b
    ld [hl], c
    rrca
    adc l
    ld [hl], b
    rra
    ld a, [$7291]
    ccf
    sub a
    ld [hl], h
    cp a
    ret nz

    adc a
    ldh a, [$ffe7]
    di
    ld hl, sp-$1f
    dec sp
    nop
    ld sp, $ff15
    nop
    or $09
    ld a, a
    jp nz, Jump_000_083d

    rst RST_38
    cp h
    rst RST_38
    db $fd
    inc [hl]
    ld [de], a
    ld a, a
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    inc bc
    ld d, b
    cp $4c
    ld [hl], c
    rst RST_38
    rst RST_38
    call nc, $85ff
    cp $3b
    cp a
    call nz, $fc83
    rst RST_20
    db $fc
    cp $37
    db $10
    sbc $ff
    rst RST_38
    ld c, [hl]
    rst RST_38
    ld c, h
    rst RST_38
    xor l
    ld e, [hl]
    db $ed
    ld a, a
    ld e, $f5
    ld c, $73
    adc h
    dec sp
    ld b, h
    jr nz, jr_035_5388

    nop
    ld a, [hl-]
    inc sp
    ld de, $0180
    dec bc

jr_035_5388:
    ld bc, $02ff
    ld a, [$a8f4]
    ld b, d
    sub l
    ld a, [$a1d4]
    dec bc
    rra
    ld e, a
    rst RST_38
    rst RST_38
    nop
    rrca
    ld bc, $05ff
    rst RST_18
    ld bc, $0cff
    push af
    xor b
    ld bc, $04ff
    ld hl, sp+$40
    ld [de], a
    rst RST_38
    db $fc
    db $fc
    ld sp, hl
    pop hl
    rlca
    cpl
    rst RST_38
    rrca
    ccf
    ld a, a
    ld bc, $07ff
    ld hl, sp-$08
    ldh [$ffe3], a
    add a
    ld a, a
    ld bc, $14ff
    db $fd
    ld [$ffff], a
    cp $f4
    ldh [$ffa0], a
    nop
    nop
    rst RST_38
    ldh a, [rSB]
    nop
    dec b
    jr nz, jr_035_53d2

    nop

jr_035_53d2:
    ld b, $01
    rst RST_38
    ld c, $ed
    ld bc, $02ff
    cp $fe
    ld hl, sp-$30
    nop
    ldh a, [$ffc0]
    add b
    ld bc, $0400
    ld bc, $05ff
    db $fc
    ld hl, sp+$7f
    ld bc, $06ff
    ld bc, $0700
    dec e
    nop
    ld l, e
    rst RST_38
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
    nop
    inc h
    rst RST_28
    nop
    ld a, [hl]
    nop
    ccf
    ld a, [bc]
    nop
    ld e, a
    rst RST_38
    ei
    cp a
    rst RST_38
    cp $ff
    rst RST_38
    rst RST_38
    cp $00
    ld [bc], a
    db $e3
    rst RST_38
    nop
    ld hl, sp-$01
    and b
    rst RST_38
    ld d, h
    rst RST_38
    and d
    rst RST_38
    rst RST_38
    push de
    rst RST_38
    xor [hl]
    rst RST_38
    push af
    rst RST_38
    ld a, [$14ae]
    nop
    add b
    rst RST_38
    inc d
    inc h

jr_035_542a:
    nop
    ld d, l
    jr z, jr_035_542e

jr_035_542e:
    ld [hl], l
    cp a
    rst RST_38
    xor d
    rst RST_38
    rst RST_18
    nop
    rst RST_38
    ld b, b
    dec bc
    rrca
    rst RST_38
    ldh a, [rTMA]
    ld sp, hl
    inc c
    di
    ld b, $f9
    ld e, $ff
    pop hl
    ld c, $f1
    ld c, $f1
    dec bc
    db $f4
    ld bc, $feff
    inc bc
    db $fc
    ld b, $f9
    ld bc, $01fe
    rst RST_30
    cp $02
    db $fd
    ld h, [hl]
    ld bc, $ff00
    rlca
    rst RST_38
    ld e, a
    inc b
    db $fc
    inc b
    db $fc
    dec b
    ld [hl], l
    inc b
    nop
    inc d
    nop
    rst RST_38
    nop
    nop
    and b
    nop
    rra
    and b
    nop
    and b
    db $fd
    ld e, a
    adc c
    nop
    ld [bc], a
    db $fd
    rst RST_38
    rst RST_38
    ld bc, $bf01
    ld de, $ed01
    ld de, $1101
    sbc b
    ld bc, $ff01
    cp $1f
    rst RST_38
    sub b
    ld [hl], b
    sub b
    ld [hl], d
    sub l
    ld a, a
    ld [hl], d
    ret nc

    ld [hl-], a
    push de
    ld [hl-], a
    ld d, b
    or d
    ld a, b
    inc b
    rst RST_38
    inc a
    add h
    inc a
    ld b, h
    sbc h
    ld b, h
    sbc h
    inc h
    db $fd
    call z, Call_000_018c
    ld e, a
    and b
    jr nz, jr_035_542a

    dec c
    sbc l
    cp a
    add b
    jr nc, jr_035_54bf

    cp a
    nop
    nop
    sbc b
    dec b
    add c
    rst RST_38
    db $ed
    ld bc, $817d
    db $fd
    ld bc, $1501

jr_035_54bf:
    ld b, a
    ldh a, [c]
    db $10
    ldh a, [c]
    ldh [rTIMA], a
    ld [$8201], a
    ld bc, $8000
    nop
    rst RST_30
    ld [$1008], sp
    add b

jr_035_54d1:
    nop
    ld b, b
    ld b, b
    ld [bc], a
    dec b
    cp $00
    db $10
    dec c
    ld b, $11
    ld b, $19
    ld c, $01
    rst RST_38
    ld a, [bc]
    dec d
    ld [bc], a
    dec l
    ld h, b
    sub b
    ld h, b
    sbc b
    xor $10
    db $10
    sbc c
    jr nz, @-$26

    ld [de], a
    db $10
    sub c
    jr nz, jr_035_54d1

    cp $00
    ld [bc], a
    add e
    nop
    ld h, b
    nop
    or b
    nop
    db $fc
    ccf
    nop
    inc a
    nop
    ld a, h
    rst RST_38
    db $eb
    inc d
    nop
    inc d
    nop
    ld l, $00
    inc b
    nop
    rst RST_38
    ld d, a
    inc l
    nop
    ld [hl], a
    ld [hl-], a
    inc de
    ld [hl-], a
    ld de, $25ff
    call Call_000_3c24
    nop
    ld [hl], b
    nop
    ld [hl], a
    rst RST_38
    nop
    cp b
    add b
    add b
    scf
    or b
    jr c, jr_035_5560

    rst RST_38
    db $dd
    db $dd
    nop
    nop
    rlca
    rlca
    nop
    ldh [rIE], a
    nop
    nop
    inc b
    nop
    or $00
    ld bc, $ef01
    db $dd
    db $dd
    ld bc, $dc01
    nop
    ld a, l
    ld bc, $fe7d
    db $f4
    ld bc, $ffff
    db $10
    ldh a, [c]
    nop
    add b
    rla
    rst RST_38
    ld l, b
    ld b, e
    nop
    inc c
    nop
    ld [bc], a
    nop
    add b
    and c
    add b
    ld [hl-], a
    inc de
    ld b, b
    ld [bc], a
    db $f4
    nop
    ldh a, [c]

jr_035_5560:
    nop
    inc bc
    sub b
    inc e
    adc [hl]
    rst RST_38
    nop
    pop hl
    inc a
    rst RST_38
    inc bc
    rst RST_00
    ld hl, sp-$04
    rst RST_38
    rlca
    rra

jr_035_5571:
    pop hl
    di

jr_035_5573:
    inc a
    ld a, [hl]
    rlca
    sbc a
    rst RST_38
    nop
    ldh a, [$ff1f]
    ccf
    add c
    db $e3
    ld a, b
    cp $ff
    ld c, $9f
    pop bc
    di
    jr c, @-$05

    rlca
    adc a
    ld a, h
    db $f4
    ld bc, $1196
    ld d, l
    nop
    xor d
    nop
    db $fd
    sub [hl]
    inc de
    db $fc
    db $d3
    ld a, [de]
    ld b, c
    dec bc
    nop
    nop
    rst RST_18
    rst RST_38
    db $db
    rst RST_38
    cp e
    jp c, $13bf

    nop
    di
    ld a, a
    ld a, [hl]
    inc a
    ld de, $ff10
    add sp, $10
    db $ec
    jr c, jr_035_5571

    jr c, jr_035_5573

    jr nc, @+$01

    call z, $e418
    db $10
    add sp, $00
    ldh a, [$ff08]
    cp l
    scf
    jr nz, jr_035_55e2

    jr jr_035_55ea

    jr jr_035_562c

    jr z, @+$22

    daa
    cp e
    jr jr_035_55f2

    nop
    dec e
    add b
    cp [hl]
    add b
    ld b, d
    ld [hl+], a
    adc a
    rst RST_38
    add b
    adc a
    add a
    adc a
    add h
    adc a
    add l
    nop
    pop af
    xor [hl]
    rst RST_10
    db $10
    sbc b
    ld [de], a

jr_035_55e2:
    sub c
    ld [de], a
    rst RST_38

jr_035_55e5:
    ld bc, $01ff
    rst RST_38
    ld e, a

jr_035_55ea:
    ld bc, $012f
    rlca
    pop af
    dec b
    pop af
    rst RST_38

jr_035_55f2:
    db $e3
    pop af
    ld hl, $a3f1
    ld [$1cf7], sp
    rst RST_18
    db $e3
    jr jr_035_55e5

    jr @-$17

jr_035_5600:
    ld [hl], d
    ld hl, $e31c
    rst RST_38
    ld [$00f7], sp
    nop
    jr nz, jr_035_562b

    ld l, b
    ld b, b
    rst RST_38
    and b
    and b
    inc b
    inc b
    db $10
    db $10
    jr z, @+$2a

    rst RST_38
    ld bc, $0301
    inc bc
    ld b, $06
    inc c
    inc c
    cp a
    ld e, b
    ld e, b
    or l
    or b
    ld l, d
    ld h, b
    cpl
    nop
    add b
    rst RST_38
    xor b

jr_035_562b:
    xor b

jr_035_562c:
    ld d, b
    ld d, b

jr_035_562e:
    nop
    nop
    ld [$f700], sp
    or e
    nop
    ld c, c
    pop de
    ld de, $0000
    ld e, $00
    rst RST_38
    ld [hl], $00
    ld a, [de]
    nop
    inc d
    nop
    ld l, $00
    rst RST_18
    ld [hl], $c0
    cp $e0
    ld a, h
    ld b, b
    ld [$03fe], sp
    rst RST_30
    ei
    rlca
    or $40
    inc bc
    ld bc, $07fd
    or $ff
    ld c, $ec
    jr jr_035_562e

    ld [hl], c
    ld h, c
    inc e
    ret c

    rst RST_38
    ld a, [hl-]
    or d
    ld h, h
    ld b, h
    ret nz

    add b
    inc b
    inc b
    or $f2
    ld bc, $0505
    sub b
    inc hl
    rra
    rra
    jr c, jr_035_56ae

    db $fd
    ld h, h
    sbc e
    jr nz, jr_035_5600

    add l
    ld a, h
    ld a, h
    rst RST_38
    db $d3
    rst RST_38
    rst RST_38
    call c, $dff3
    db $f4
    rst RST_18
    di
    db $db
    rst RST_28
    ld sp, hl
    rst RST_18
    ldh a, [c]
    jp c, RST_08

    cp $e0
    cp $ff
    ld hl, sp-$02
    ld a, [hl]
    ld a, a
    cp a
    cp a
    ld a, a
    ld a, a
    rst RST_28
    ld e, a
    ld e, a
    adc a
    add l
    jr nz, jr_035_56de

    ld a, a
    add b
    ld a, a
    rst RST_38
    add b
    ld b, b
    add b
    ld b, b
    sbc a
    ld b, [hl]
    add c

jr_035_56ae:
    ld b, d
    or $35
    jr nc, @+$42

    add b
    sub l
    inc de
    adc b
    rlca
    ld [$cff0], sp
    jr nz, @+$21

    ld b, d
    add c
    ld d, [hl]
    ld [hl+], a
    ldh a, [c]
    nop
    ld [de], a
    pop hl
    cp a
    add d
    ld a, h
    ld b, h
    add e
    dec b
    ld hl, sp+$4e
    inc sp
    ld bc, $02ff
    ld hl, $898a
    ld [hl], d
    ld d, c
    adc d
    ld bc, $f2df
    ld bc, $f102
    and c

jr_035_56de:
    ld [hl], b
    dec sp
    nop
    ld a, a
    ei
    nop

jr_035_56e4:
    cp a
    ld a, [bc]
    ld [bc], a
    ccf
    rrca
    rra
    ld a, a
    ld a, a
    rst RST_28
    ld a, [$00fa]
    ld hl, sp-$70
    jr nc, jr_035_56e4

    ld e, $fe
    db $ed
    ld a, a
    inc d
    nop
    sbc a
    sbc a
    sub d
    nop
    db $fd
    inc bc
    ei
    rst RST_38
    ld b, $f4
    ld e, $d8
    ld [hl], b
    ldh [$ffe3], a
    pop bc
    rst RST_38
    add d
    ld [bc], a
    nop
    nop
    call c, $b884
    ld [$14fd], sp
    ldh a, [c]
    nop
    add b
    add b
    nop
    nop
    sub e
    sub e
    rst RST_38
    daa
    daa
    inc bc
    inc bc
    rlca
    ld b, $2f
    cpl
    rst RST_38
    ld e, b
    ld e, b
    or b
    or b
    ld h, b
    ld h, b
    pop de
    ret nz

    cp $82
    inc bc
    db $fd
    db $fd
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    and c
    ei
    nop
    ld b, d
    add b
    nop
    add hl, de
    ldh [c], a
    ld b, c
    ld a, [hl-]
    ld h, c
    rst RST_38
    add d
    ld de, $01e2
    ld [bc], a
    db $fd
    ld [bc], a
    ld bc, $fe5d
    ld b, c
    nop
    db $fd
    rst RST_38
    add l
    ldh a, [c]
    inc [hl]
    push de
    ldh a, [c]
    jr nc, @+$01

    db $fd
    ldh a, [$ffde]
    ldh a, [$ffdf]
    di
    rst RST_18
    rst RST_30
    ld a, [$4005]
    or $05
    ld b, b
    db $f4
    rst RST_18
    and a
    and a
    ld l, a
    rst RST_28
    rst RST_38
    rst RST_20
    rst RST_38
    rst RST_30
    ld b, h
    db $10
    scf
    cp a
    ld [hl], a
    cp $44
    db $10
    ld [hl], e
    cp e
    ld l, d
    xor d
    ld [hl], e
    cp e
    ld h, d
    rst RST_28
    and d
    ld h, d
    and d
    ld b, b
    ld sp, $6030
    sbc a
    ld a, [hl-]
    rst RST_38
    cp d
    sub d
    sub d
    ld [de], a
    ld [de], a
    sub d
    sub e
    cp c
    db $fd
    cp c
    sbc c
    ld [de], a
    rst RST_38
    sub e
    cp e
    xor c
    xor c
    cp c
    rst RST_18
    cp c
    xor c
    xor c
    add hl, hl
    add hl, hl
    ld a, [hl-]
    ld b, e
    cp c
    cp d
    rst RST_38
    ld hl, $3122
    ld a, [hl-]
    ld hl, $3922
    ld a, [hl-]
    cp $e8
    ld sp, $fc03
    nop
    cp a
    inc bc
    ld a, a
    ccf
    rst RST_38
    ld a, a
    ld a, l
    rst RST_38
    ld a, d
    cp $73
    di
    ld h, a
    rst RST_38
    rst RST_28
    ld h, [hl]
    rst RST_28
    dec c
    dec c
    db $fd
    push af
    sbc l
    xor a
    push af
    ld e, l
    ld d, l
    sbc l
    ld [hl], e
    ld b, b
    db $dd
    ld a, e
    ld b, b
    push af
    rst RST_38
    db $fd
    jp nc, $c0d3

    rst RST_38
    rst RST_00
    rst RST_38
    rst RST_08
    rst RST_28
    rst RST_38
    call $c8ff
    adc c
    ld b, b
    ld e, a
    ld [hl], a
    rst RST_18
    db $eb
    rst RST_30
    rra
    sub e
    ld b, b
    sbc a
    sub a
    ld b, h
    db $f4
    db $dd
    ldh a, [c]
    rst RST_38
    rst RST_18
    rst RST_38
    rst RST_18
    ld sp, hl
    reti


    ld hl, sp-$24
    db $fd
    cp $05
    ld b, b
    di
    rst RST_18
    rst RST_10
    rst RST_18
    daa
    rst RST_38
    ld [hl], a
    rst RST_38
    ld a, a
    rst RST_28
    rst RST_28
    rst RST_00
    rst RST_00
    rst RST_00
    rst RST_08
    rst RST_28
    rst RST_38
    rst RST_38
    ccf
    ld a, a
    ld h, h
    ld a, a
    ld h, d
    ld a, [hl]
    ld h, l
    cp a
    ld a, l
    ld h, h
    ld a, h
    ld l, h
    ld a, h
    ld [hl], a
    jp z, Jump_035_6c40

    rst RST_38
    ld a, a
    ld e, l
    ld [hl], l
    sbc l
    or l
    db $dd
    push af
    cp l
    db $fd
    or l
    ld a, b
    ld b, b
    or l
    dec a
    dec [hl]
    ld e, l
    ld d, l
    ret


    rst RST_38
    rst RST_38
    push bc
    rst RST_38
    set 7, e
    ret


    ld sp, hl
    reti


    ld a, a
    ld sp, hl
    db $fd
    db $fd
    rst RST_28
    rst RST_28
    db $fd
    rst RST_38
    sbc b
    ld b, c
    rst RST_38
    rst RST_18
    rst RST_30
    ld a, a
    ld [hl], a
    ccf
    or a
    sbc a
    rst RST_10
    cp $af
    ld b, b
    rst RST_10
    ldh a, [c]
    sbc $f2
    sub $f0
    push de
    rst RST_38
    ld hl, sp-$21
    db $fc
    call c, $dff7
    ldh a, [$ffdf]
    rst RST_38
    cp $df
    rra
    rst RST_18
    rla
    sub a
    daa
    daa
    rst RST_38
    ld [hl], a
    ld [hl], a
    sbc a
    sbc a
    rla
    sub a
    rla
    rst RST_10
    rst RST_38
    rst RST_38
    rst RST_38
    ld b, e
    sbc h
    ld c, b
    add a
    ld e, h
    add b
    ei
    ld b, d
    sbc h
    ld a, [hl+]
    ld b, e
    ld a, a
    add b
    ld [$1907], sp
    rst RST_18
    ldh [$ff82], a
    ld a, h
    db $10
    rrca
    ld a, [hl-]
    ld b, e
    rst RST_38
    nop
    db $db
    ld h, h
    add e
    ld c, b
    ld sp, $c023
    jr c, jr_035_58f3

    add hl, sp
    jp nz, $c1ff

    ld a, [hl-]
    ld a, c
    add d
    add hl, bc
    jp nz, Jump_000_0281

    rst RST_38
    inc bc
    nop
    dec de
    ret c

    cp l
    inc a
    ld h, h
    ld a, a
    rst RST_38
    ld h, [hl]
    ld a, a
    ld h, a
    ld a, a
    ld h, h
    ld a, h
    ld h, h
    ld a, l
    rst RST_38
    ld h, l
    ld a, a
    ld a, l
    ld a, l
    ld a, a
    ld a, a
    dec a
    dec [hl]
    rst RST_38
    dec e
    push de
    db $fd
    push af
    db $dd
    push de
    dec a
    or l
    rst RST_38
    ld e, l
    ld d, l
    dec a
    ld [hl], l
    db $dd
    push de
    call nc, $f5f7
    call c, Call_035_4087
    ret z

    adc e
    ld b, b
    jp nc, $d2ff

    ld a, [$d6ff]
    cp $9f
    rst RST_30
    ld a, a
    rst RST_30

jr_035_58e8:
    rst RST_38
    rst RST_30
    cp a
    ccf
    scf
    ld a, a
    rst RST_30
    cp a
    or a
    sbc b
    ld d, c

jr_035_58f3:
    rst RST_38
    rst RST_38
    rst RST_18
    ld hl, sp-$26
    ld hl, sp-$21
    ld hl, sp-$21
    db $fd
    rst RST_38
    rst RST_18
    ld hl, sp-$27
    db $fd
    db $dd
    ei
    db $db
    rst RST_18
    rst RST_38
    rst RST_18
    ccf
    ccf
    ld e, a
    rst RST_38
    xor a
    rst RST_28
    rra
    rst RST_38
    sbc a
    xor a
    rst RST_28
    rst RST_10
    rst RST_18
    cp a
    rst RST_38
    rst RST_10
    rst RST_38
    db $10
    ld bc, $2900
    jr z, jr_035_58e8

    ld [$7f69], sp
    xor b
    xor c
    ld l, b
    add hl, hl
    add sp, $11
    ret nc

    sub d
    ld d, d
    db $fc
    db $d3
    ld d, b
    dec d
    ld b, b
    scf
    rst RST_38
    rst RST_10
    ld a, $3e
    db $fd
    db $fd
    db $dd
    inc d
    nop
    rst RST_18
    rst RST_38
    db $fc
    rst RST_38
    pop bc
    cp $ff
    rst RST_38
    ld h, b
    ld a, a
    nop
    rlca
    rst RST_18
    rst RST_38
    rst RST_38
    cp a
    pop af
    cp $86
    ld hl, sp+$3e
    ret nz

    sub c
    ld sp, $3fa0
    nop
    ld h, b
    ld a, a
    ld b, a
    ld a, a
    ld a, b
    ld h, h
    db $10
    ld b, $66
    rst RST_38
    rst RST_38
    push af
    db $fd
    push af
    rst RST_38
    sub l
    ld a, l
    ld a, l
    rst RST_38
    xor c
    ld bc, $825c
    inc b
    ld hl, $d000
    cp a
    cp c
    inc a
    db $d3
    jr jr_035_5979

    nop
    ld h, [hl]
    dec [hl]

jr_035_5979:
    ld hl, $1a15
    jr nz, @+$55

    ld b, b
    dec hl
    ld d, d
    ld a, a
    ccf
    jr nc, @+$32

    ld d, e
    rst RST_18
    dec d
    adc b
    ld a, $55
    ld b, [hl]
    ld h, a
    ldh [$ff33], a
    ld bc, $33eb
    ld b, b
    nop
    jr nc, @+$3d

    ld b, d
    ld l, l
    add c
    ld b, b
    dec sp
    inc b
    ld hl, sp+$50
    dec sp
    ld h, c
    ld e, $60
    dec sp
    inc bc
    ld hl, $ff1a
    dec e
    nop
    add b
    rst RST_38
    ld [hl], h
    adc e
    jp c, $b725

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
    cp a
    ld b, b
    db $db
    inc h
    or [hl]
    ld c, c
    db $db
    inc h
    rst RST_38
    cp l
    ld b, d
    db $eb
    inc d
    ld [hl], a
    adc b
    xor [hl]
    ld d, c
    cp a
    inc [hl]
    ld c, $68
    ld e, $68
    inc e
    inc h
    inc bc
    ld l, h
    rst RST_38
    ld e, $34
    ld c, $3c
    nop
    ld l, [hl]
    inc d
    call Call_000_36ff
    sbc c
    ld l, [hl]
    cp c
    ld a, [hl]
    db $ed
    ld d, [hl]
    ld b, [hl]
    rst RST_38
    jr c, @+$3e

    nop
    ld l, e
    sub h
    and b
    ld b, b
    adc c
    rst RST_38
    ld c, $3f
    ld [hl], b
    adc a
    rrca
    ld h, b
    sub b
    cp l
    rst RST_38
    ld b, d
    or $09
    nop
    add b
    nop
    nop
    rst RST_20
    rst RST_38
    rra
    or e
    ld a, h
    ld hl, sp-$79
    ld a, a
    ld a, a
    nop
    rst RST_38
    nop
    jp c, Jump_035_6325

    inc e
    ld d, e
    inc c
    ld e, a
    rst RST_30
    nop
    ld b, b
    nop
    ld h, a
    nop
    rst RST_08
    nop
    rst RST_38
    nop
    add sp, $50
    nop
    ld d, c
    nop
    ld [hl], e
    dec b
    ld hl, sp+$67
    nop
    rlca
    ld d, c
    ld b, $f7
    and a
    nop
    rst RST_30
    add l
    nop
    ld d, [hl]
    and b
    and [hl]
    ld d, b
    ld e, a
    ld d, [hl]
    and b
    ld bc, $02c1
    sub d
    nop
    inc b
    sub [hl]
    nop
    rst RST_38
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    ld b, b
    pop bc
    ld b, $f7
    ld hl, sp+$01
    cp $6c
    nop
    ccf
    nop
    rlca
    nop
    rst RST_30
    inc bc
    nop
    ld bc, $006c
    rst RST_38
    nop
    sbc a
    nop
    rst RST_18
    ld b, c
    nop
    and b
    nop
    ret nc

    cp c
    nop
    add sp, $00
    rst RST_20
    db $fc
    nop
    cp $c1
    ld [bc], a
    ld [hl], e
    rlca
    ld a, a
    ld a, a
    add b
    ld h, e
    add b
    ld a, a
    xor a
    ld [bc], a
    ld l, l
    nop
    ld h, a
    nop
    cp a
    cp a
    ldh [rP1], a
    rst RST_38
    nop
    sub c
    ld h, $93
    daa
    ret z

    db $10
    rlca
    push hl
    ld [$0373], sp
    ld bc, $02f5
    ld h, a
    ld bc, $15ea
    cp b
    rst RST_38
    ld b, b
    ret nz

    jr nz, jr_035_5afc

    add b
    ldh [rP1], a
    xor b
    cp a
    ld d, b
    push de
    ld a, [hl+]
    cp [hl]
    ld b, c
    ret nz

    rst RST_00
    ld [$ff00], sp
    nop
    and b
    ld b, b
    ld [hl], $0f
    dec de
    rlca
    dec e
    rst RST_20
    inc bc
    ld b, $01
    ld a, [$6703]
    ld bc, $c380
    jp $ffbf


    ld a, [hl]
    rst RST_38
    add c
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    ld [bc], a
    ld l, d
    rst RST_38
    sub h
    cp b
    ld b, c
    add [hl]
    ld [bc], a
    ld c, b
    add hl, sp
    add h
    adc l
    ld [bc], a
    ld c, d
    inc b
    nop
    ccf
    call c, $dc01
    inc bc
    ld e, l
    nop
    ld [bc], a
    cp $65
    nop
    and b
    nop
    ldh [rP1], a
    db $f4
    ld [bc], a
    ld d, h
    ld a, a
    and d
    and h
    ld d, d
    ld d, d
    and b
    ld bc, $9201
    dec b
    rst RST_30
    ldh [$ff60], a
    sub b
    sbc l
    nop
    inc bc
    nop
    rra
    nop

jr_035_5afc:
    add a
    ld a, a
    nop
    ld a, [hl]
    ld a, h
    nop
    db $10
    inc de
    ret c

    rlca
    ld [hl], e
    inc bc
    add sp, -$06
    cp l
    nop
    ld [hl], h
    and e
    db $10
    inc [hl]
    nop
    ld a, [hl-]
    nop
    ld a, [de]
    xor $ab
    ld [de], a
    add hl, bc
    nop
    ld [$10b3], sp
    rlca
    nop
    nop
    add e
    rrca
    rra
    ld [hl], e
    ld b, $f6
    rlca
    ld d, l
    db $10
    ld l, l
    nop
    or b
    ld bc, $ce7f
    push de
    ld [bc], a
    nop
    nop
    cp $c6
    nop
    jp nz, $fc01

    ld bc, $fd97
    nop
    db $fd
    ld [hl], e
    ld [bc], a
    inc bc
    ld d, h
    inc de
    jp nc, Jump_000_0011

    rst RST_38
    ld [hl], b
    inc b
    ldh [$ff08], a
    ldh [$ff08], a
    ret nz

    db $10
    xor a
    add b
    stop
    ld hl, $220a
    rlca
    and a
    nop
    ld a, a
    rst RST_38
    ld [$107f], sp
    rst RST_38
    jr nz, @+$01

    ld d, h
    rst RST_38
    ei
    xor b
    rst RST_38
    db $ed
    db $10
    db $fd
    inc b
    db $fd
    inc c
    db $fd
    rst RST_38
    inc e

jr_035_5b6e:
    db $fd
    jr c, jr_035_5b6e

    ld d, b
    db $fd
    and b
    db $fd
    scf
    xor b
    xor b
    add a
    push de
    nop
    ldh [rP1], a
    add c
    db $10
    ld [hl], $20
    ld c, [hl]
    ld [hl], e
    inc bc
    inc bc
    nop
    rrca
    and a
    nop
    jp c, Jump_000_0f03

    add e
    db $10
    call c, $03d8
    jp c, $0105

    nop
    ld a, [bc]
    ld b, a

jr_035_5b97:
    ld [hl+], a
    ld d, l
    xor d
    rst RST_38
    xor d
    ld d, l
    ld d, l
    xor d
    inc bc
    inc bc
    ld [bc], a
    inc bc
    xor $f3
    ld de, $0302
    ld bc, $2072
    nop
    nop
    rst RST_00
    rst RST_38
    rst RST_30
    inc d
    rst RST_20
    pop af
    ld b, $00
    nop
    ld a, h
    sbc a
    ld a, a
    ld b, c
    ld a, [hl]
    rra
    ld h, b
    adc l
    ld d, $d8
    ld [bc], a
    inc bc
    rst RST_30
    db $fc
    rlca
    ld hl, sp-$51
    ld bc, $ff07
    rrca
    rst RST_38
    ld a, a
    rra
    rst RST_38
    ccf
    rst RST_38
    ld a, a
    rst RST_38
    rst RST_38
    sub $02
    rst RST_38
    db $fc
    rst RST_38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    cp $2f
    pop bc
    cp $83
    db $fc
    ld d, e
    daa
    add b
    jp c, $c213

    inc bc
    cp $d1
    daa
    rst RST_38
    ld bc, $03ff
    rst RST_38
    ld [hl], a
    inc c
    rst RST_38
    rra
    inc b

jr_035_5bf8:
    rrca
    inc h
    rrca
    inc h
    rlca
    inc d
    set 7, b
    cp $f0
    ld [hl+], a
    ld c, $f6
    jr nz, jr_035_5bf8

    ld hl, $031e
    rst RST_38
    ld b, c
    inc bc
    ld b, e
    rlca
    ld b, a
    inc bc
    ld b, e
    nop
    ld sp, hl
    jr nz, jr_035_5b97

    db $10
    ldh [rP1], a
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    db $e3
    rst RST_38
    add b
    ld d, e
    dec d
    rra
    ld [hl+], a
    db $ed
    db $10
    ld a, [$0400]
    ld [hl], b
    ld a, h
    ld [bc], a
    add $00
    or b
    ld bc, $00ac
    db $fc
    nop
    ld [bc], a
    push af
    ld bc, $0ffb
    ldh a, [$ff7b]
    nop
    ldh a, [rSB]
    nop
    and $01
    rst RST_38
    dec e
    inc bc
    dec de
    rlca
    ld [hl], $0f
    db $fc
    db $fc
    ccf
    di
    di
    rst RST_08
    rst RST_08
    ccf
    ccf
    rst RST_08
    ld bc, $1083
    ld a, [hl]
    ld d, l
    db $10
    ld de, $aaff
    rst RST_38
    ld d, l
    rst RST_38
    ld h, a
    ld sp, $d0f8
    ld de, $2580
    ld [hl], e
    dec b
    ld b, a
    ld [hl], a
    inc d
    ld h, a
    ld [hl], c
    cp $85
    jr z, jr_035_5c7e

    di
    dec bc
    rst RST_30
    rla
    xor $0f
    rst RST_38
    cp $1f
    db $fc
    ccf
    ld sp, hl
    ld a, a

jr_035_5c7e:
    ldh [rIE], a
    rst RST_38
    ret


    rst RST_38
    ld a, a
    cp $7f
    db $fc
    ld a, a
    ld hl, sp-$01
    rst RST_20
    push af
    jp z, Jump_000_3bc4

    swap h
    rst RST_08
    rst RST_38
    jr nc, jr_035_5c97

    db $fd
    inc b

jr_035_5c97:
    ei
    ld h, b
    sbc a
    sub b
    rst RST_38
    ld l, a
    or c
    ld c, [hl]
    ld h, b
    sbc a
    ret z

    scf
    sub c
    rst RST_38
    ld l, [hl]
    inc b
    ei
    inc c
    di
    inc a
    jp $ffd8


    daa
    ld de, $26ee
    reti


    inc a
    jp $fdf0


    rrca
    ret nc

    dec h
    ld [$18fe], sp
    cp $38
    cp $ff
    ld a, b
    cp $07
    inc d
    rlca
    sub h
    inc bc
    adc b
    rst RST_38
    inc bc
    adc b
    ld bc, HeaderNewLicenseeCode
    ld b, l
    ld bc, $ef45
    nop
    ld [hl+], a
    ld hl, sp+$1e
    ldh a, [c]
    dec h
    ldh a, [$fffe]
    ldh [$ffaf], a
    cp $c0
    cp $80
    jp nz, Jump_035_7e01

    add l
    stop
    rst RST_38
    cp a
    ccf
    nop
    add b
    rlca
    ld hl, sp+$04
    ldh a, [rIE]
    inc d
    ldh a, [$ff84]
    ret nz

    add h
    or b
    nop
    ld h, b
    cp a
    ld bc, $435e
    inc a
    ld b, e
    inc a
    ld h, b
    dec e
    push af
    cp $30
    ld b, d
    nop
    nop
    ld [hl], e
    ld [hl], b
    ld h, a
    ld h, b
    ld b, e
    ld [hl], a
    ld e, h
    nop
    ld a, $d0
    ld de, $0f0f
    ret nz

    ld h, l
    db $10
    db $fd
    add [hl]
    ld [hl], l
    ld [hl-], a
    ld hl, sp-$02
    ldh a, [$fffc]
    ldh [$fffc], a
    cp a
    pop bc
    ld hl, sp-$7f
    ldh a, [rSB]
    ldh a, [$ff65]
    db $10
    ldh [rIE], a
    nop
    ld a, l
    nop
    ld a, e
    nop
    ld a, a
    inc c
    ld [hl], e
    rst RST_38
    ld a, [bc]
    ld [hl], l
    dec c
    ld [hl], e
    dec bc
    ld [hl], a
    rrca
    ld [hl], a
    rst RST_38
    ld [$18fc], sp
    ld a, h
    jr c, jr_035_5dc1

    ld a, b
    db $fc
    rst RST_38
    ld hl, sp-$64
    ld hl, sp+$3c
    ld hl, sp-$44

jr_035_5d4e:
    ld hl, sp-$64
    cp $cd
    inc bc
    ld b, $7f
    inc c
    ld a, a
    jr jr_035_5dd8

    jr nc, jr_035_5d4e

    ld a, a
    ld h, b
    ld e, l
    ld sp, $2a8f
    dec b
    or l
    dec de
    ei
    rst RST_38
    ccf
    rst RST_38
    rst RST_38
    halt
    rst RST_38
    ld l, d
    rst RST_38
    ld h, d
    rst RST_38
    rst RST_38
    ld l, d
    db $fd
    ld a, [hl+]
    ld h, e
    ld h, b
    ld b, b
    ld [hl], b
    rst RST_38
    db $10
    ld h, b
    nop
    inc b
    ldh [$fff4], a
    db $10
    db $e4
    rst RST_08
    ldh a, [rTIMA]
    nop
    dec b
    ld [hl], b
    dec h
    ld [hl], b
    dec h
    pop bc
    push af
    rst RST_38
    ld de, $f1e5
    dec b
    ld bc, $8105
    push bc
    rst RST_38
    ld bc, $1105
    ld bc, $0050
    db $e4
    nop
    rst RST_30
    pop bc
    nop
    ld b, e
    ld [hl], e
    dec b
    ld c, $00
    rlca
    rrca
    rst RST_38
    ld a, a
    sbc a
    ccf
    ld e, a
    rra
    cpl
    rrca
    adc a
    rst RST_38
    rrca
    rst RST_10
    rlca
    ld a, [hl+]
    inc bc
    ret c

    inc bc
    nop
    rst RST_18
    ld [hl], a
    db $10
    ld h, a
    inc sp
    ld b, h

jr_035_5dbf:
    ld h, a
    nop

jr_035_5dc1:
    rra
    ldh [rIF], a
    ldh [$ff1f], a

jr_035_5dc6:
    rra
    ldh [$ff71], a
    add hl, bc
    ld l, [hl]
    inc bc
    add c
    inc c
    ld [hl], b
    jr nz, jr_035_5dc6

    ld [bc], a
    or $01
    inc bc
    xor c
    nop
    rlca

jr_035_5dd8:
    nop
    ld b, $00
    rra
    ld b, b
    jr c, jr_035_5dbf

    db $10
    ldh [$ff89], a
    db $10
    ld [hl], b
    inc bc
    daa
    ld de, $c0b9
    ld d, d
    ld d, b
    ld [hl], e
    inc bc
    ld b, $00
    ld [$40ef], sp
    rra
    rst RST_30
    ld a, a
    ccf
    ld a, a
    ld h, l
    ld d, e
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ei
    ld hl, sp-$04
    ld d, d
    ld b, b
    ld hl, sp-$0f
    ld b, b
    adc a
    ret nz

    ld a, a
    sbc [hl]
    nop
    inc e
    ld bc, $0278
    ld b, b
    ld e, e
    ld sp, $7e7d
    ld h, b
    ld b, b
    ld a, a
    nop
    ld a, h
    nop
    ld a, d
    adc h
    ld d, b
    cp $d8
    inc bc
    ld a, [hl]
    nop
    ld l, d
    ld bc, $0345
    dec h
    db $eb
    inc bc
    sub d
    ld [hl], e
    ld [bc], a
    db $fc
    and h
    ld d, a
    ld [hl], b
    ld [hl], l
    ld b, b
    rra
    ld [hl], l
    db $10
    ld h, l
    nop
    dec b
    cp b
    ld b, d
    ld c, l
    ld d, b
    jr z, jr_035_5e54

    cp $78
    ld hl, $0000
    jp hl


    nop
    call z, Call_000_0620
    rst RST_38
    ld [hl], b
    inc bc
    ld a, b
    dec c
    jr nc, jr_035_5e6c

    nop
    rrca
    ld sp, hl
    add b
    cp b
    db $10

jr_035_5e54:
    pop af
    ld de, $0c43
    inc c
    inc sp
    jr nc, jr_035_5ebb

    ld c, a
    ld b, b
    cp a
    add b
    inc a
    rst RST_28
    inc de
    inc bc
    and $57
    add c
    db $f4
    nop
    ld h, d
    ld [hl], $49

jr_035_5e6c:
    ld h, a
    ld bc, $4146
    db $10
    ld e, d
    rst RST_30
    ld b, $c0
    cp $b9
    ld b, c
    inc b

jr_035_5e79:
    nop
    inc b
    add b
    call nz, $0400
    ld d, a
    stop
    ld d, b
    ld a, [de]
    ld d, d
    ld b, b
    ld [$8030], sp
    cp c
    nop
    adc a
    jr z, jr_035_5e8e

jr_035_5e8e:
    ret c

    nop
    or b
    ld c, d
    dec [hl]
    ld h, b
    add b
    dec h
    ld [hl], b
    ld a, a
    ld [hl], b
    ld b, b
    ld [hl], a
    db $10
    ld h, h
    ld bc, $8005
    dec h
    rst RST_38
    ld [$020e], sp
    db $ec
    ld c, $20
    add b
    and b
    nop
    ld [hl], b
    jr c, jr_035_5f19

    ld a, [hl-]
    ld l, b
    ld h, e
    ld e, [hl]
    ld h, a
    ld a, b
    ld h, e
    ld [$af30], sp
    ld [bc], a
    ld e, e
    ld b, b

jr_035_5ebb:
    daa
    rrca
    ret nz

    db $10
    ld [$af30], sp
    ld h, b
    ldh [$ffc5], a
    inc bc
    ld l, l
    nop
    cp a
    ld bc, $0301
    inc bc
    nop
    inc hl
    ret nc

    ld h, b
    ld hl, $001b
    db $10
    or l
    inc de
    nop
    rst RST_18
    xor a
    ld bc, $21e2
    jr jr_035_5f14

    db $eb
    jr nc, @+$51

    jp c, Jump_000_0062

    or l
    ld h, b
    inc c
    ret nz

    jp nz, $e0bb

    pop hl
    ldh a, [rTIMA]
    rrca
    nop
    ld e, $7b
    ld d, d
    jr z, jr_035_5e79

    jr z, jr_035_5eff

    add e
    db $10
    ld [hl], $2b
    ld [hl], e
    dec b
    ld e, h

jr_035_5eff:
    ld d, c
    ret nc

    ld e, l
    db $e4
    ld a, b
    adc c
    db $10
    ld h, [hl]
    ld [bc], a
    ld [hl], e
    inc b
    ld [hl], b
    ld [hl], h
    ld b, b
    ld [hl], h
    sbc h
    ld h, c
    db $fc
    cp b
    ld d, l
    ret nc

jr_035_5f14:
    ld b, l
    ld [hl], c
    ld [hl], l
    ld b, c
    ld [hl], l

jr_035_5f19:
    ld de, $ff65
    ld bc, $8605
    and [hl]
    add h
    and [hl]
    add d
    and h
    rst RST_38
    add b
    and b
    adc b
    xor [hl]
    add d
    xor h
    adc [hl]
    and b
    ld hl, sp+$7e
    ld l, l
    ld l, $67
    ld d, b
    ld [hl], l
    ld b, $26
    inc b
    ld h, $02
    ld a, a
    inc h

jr_035_5f3b:
    nop
    jr nz, @+$0a

jr_035_5f3e:
    ld l, $02
    inc l
    xor h
    ld h, d
    ld [hl], c
    ld hl, $62d0
    or e
    halt
    and h
    ld hl, $ff17
    ld a, [bc]
    dec de
    jr nz, jr_035_5f3e

    ld [$04d8], sp
    ld c, a
    rst RST_18
    db $dd
    ld h, c
    ld c, a
    sub b
    rrca
    rst RST_08
    jr nz, @+$31

    nop
    cpl
    rst RST_08
    jr jr_035_5f3b

    inc bc
    ret nz

    pop hl
    inc bc
    add b
    ld hl, sp+$7c
    nop
    and l
    ld d, c
    jp nz, Jump_000_1d02

    add b
    dec c
    rst RST_38
    ld d, b
    cp $a0
    cp $c0
    cp $80
    rst RST_38
    rst RST_10
    nop
    nop
    nop
    rlca
    inc bc
    ld [hl+], a
    stop
    ld hl, $ff00
    ld b, c
    ld [bc], a
    add b
    inc b
    inc bc
    jr z, jr_035_5f95

    nop
    jp hl


    rst RST_28
    add hl, bc
    nop
    rlca
    nop

jr_035_5f95:
    rst RST_38
    ld a, [bc]
    nop
    ld sp, hl
    inc bc
    db $fc
    cp $0a
    ld bc, $ee01
    xor $01
    ld bc, $00ee
    rst RST_38
    daa
    ret z

    and a
    ret z

    daa
    ld [$08e7], sp
    rst RST_38
    cpl
    nop
    rst RST_18
    nop
    ld c, a
    sub b
    ld c, a
    sub b
    ld b, e
    sub b
    nop
    ld c, b
    inc bc
    ld h, $01
    ld h, $01
    ld d, a
    dec b
    rst RST_20
    dec a
    nop
    ccf
    rst RST_20
    ld [$08e0], sp
    ld [$6800], sp
    inc bc
    ld c, b
    inc bc
    ld b, l
    jr nz, jr_035_6048

    ld [bc], a
    nop
    ld c, c
    nop
    ld l, b
    dec b
    ld l, b
    rlca
    adc b
    ld d, a
    ld [bc], a
    ret nc

    inc hl
    ld bc, $0756
    sub [hl]
    rlca
    ld l, b
    ld bc, $0830
    nop
    ldh [rP1], a
    rlca
    nop
    ldh a, [$fff3]
    sub h
    inc bc
    pop bc
    ld a, [bc]
    dec e
    nop
    add b
    rst RST_38
    ld [hl], h
    adc e
    jp c, $b725

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
    cp a
    ld b, b
    db $db
    inc h
    or [hl]
    ld c, c
    db $db
    inc h
    rst RST_38
    cp l
    ld b, d
    db $eb
    inc d
    ld [hl], a
    adc b
    xor [hl]
    ld d, c
    cp a
    inc [hl]
    ld c, $68
    ld e, $68
    inc e
    inc h
    inc bc
    ld l, h
    rst RST_38
    ld e, $34
    ld c, $3c
    nop
    ld l, [hl]
    inc d
    call Call_000_36ff
    sbc c
    ld l, [hl]
    cp c
    ld a, [hl]
    db $ed
    ld d, [hl]
    ld b, [hl]
    rst RST_38
    jr c, @+$3e

    nop
    ld l, e
    sub h
    and b
    ld b, b
    adc c
    rst RST_38
    ld c, $3f
    ld [hl], b
    adc a
    rrca
    ld h, b
    sub b

jr_035_6048:
    cp l
    rst RST_38
    ld b, d
    or $09
    nop
    add b
    nop
    nop
    rst RST_20
    rst RST_38
    rra
    or e
    ld a, h
    ld hl, sp-$79
    ld a, a
    ld a, a
    nop
    rst RST_38
    nop
    jp c, Jump_035_6325

    inc e
    ld d, e
    inc c
    ld e, a
    rst RST_30
    nop
    ld b, b
    nop
    ld h, a
    nop
    rst RST_08
    nop
    rst RST_38
    nop
    add sp, $50
    nop
    ld d, c
    nop
    ld [hl], e
    dec b
    ld hl, sp+$67
    nop
    rlca
    ld d, c
    ld b, $f7
    and a
    nop
    rst RST_30
    add l
    nop
    ld d, [hl]
    and b
    and [hl]
    ld d, b
    ld e, a
    ld d, [hl]
    and b
    ld bc, $02c1
    sub d
    nop
    inc b
    sub [hl]
    nop
    rst RST_38
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    ld b, b
    pop bc
    ld b, $f7
    ld hl, sp+$01
    cp $6c
    nop
    ccf
    nop
    rlca
    nop
    rst RST_30
    inc bc
    nop
    ld bc, $006c
    rst RST_38
    nop
    sbc a
    nop
    rst RST_18
    ld b, c
    nop
    and b
    nop
    ret nc

    cp c
    nop
    add sp, $00
    rst RST_20
    db $fc
    nop
    cp $c1
    ld [bc], a
    ld [hl], e
    rlca
    ld a, a
    ld a, a
    add b
    ld h, e
    add b
    ld a, a
    xor a
    ld [bc], a
    ld l, l
    nop
    ld h, a
    nop
    cp a
    cp a
    ldh [rP1], a
    rst RST_38
    nop
    sub c
    ld h, $93
    daa
    ret z

    db $10
    rlca
    push hl
    ld [$0373], sp
    ld bc, $02f5
    ld h, a
    ld bc, $15ea
    cp b
    rst RST_38
    ld b, b
    ret nz

    jr nz, jr_035_6149

    add b
    ldh [rP1], a
    xor b
    cp a
    ld d, b
    push de
    ld a, [hl+]
    cp [hl]
    ld b, c
    ret nz

    rst RST_00
    ld [$ff00], sp
    nop
    and b
    ld b, b
    ld [hl], $0f
    dec de
    rlca
    dec e
    rst RST_20
    inc bc
    ld b, $01
    ld a, [$6703]
    ld bc, $c380
    jp $ffbf


    ld a, [hl]
    rst RST_38
    add c
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    ld [bc], a
    ld l, d
    rst RST_38
    sub h
    cp b
    ld b, c
    add [hl]
    ld [bc], a
    ld c, b
    add hl, sp
    add h
    adc l
    ld [bc], a
    ld c, d
    inc b
    nop
    ccf
    call c, $dc01
    inc bc
    ld e, l
    nop
    ld [bc], a
    cp $65
    nop
    and b
    nop
    ldh [rP1], a
    db $f4
    ld [bc], a
    ld d, h
    ld a, a
    and d
    and h
    ld d, d
    ld d, d
    and b
    ld bc, $9201
    dec b
    rst RST_30
    ldh [$ff60], a
    sub b
    sbc l
    nop
    inc bc
    nop
    rra
    nop

jr_035_6149:
    add a
    ld a, a
    nop
    ld a, [hl]
    ld a, h
    nop
    db $10
    inc de
    ret c

    rlca
    ld [hl], e
    inc bc
    add sp, -$06
    cp l
    nop
    ld [hl], h
    and e
    db $10
    inc [hl]
    nop
    ld a, [hl-]
    nop
    ld a, [de]
    xor $ab
    ld [de], a
    add hl, bc
    nop
    ld [$10b3], sp
    rlca
    nop
    nop
    add e
    rrca
    rra
    ld [hl], e
    ld b, $f6
    rlca
    ld d, l
    db $10
    ld l, l
    nop
    or b
    ld bc, $ce7f
    push de
    ld [bc], a
    nop
    nop
    cp $c6
    nop
    jp nz, $fc01

    ld bc, $fd97
    nop
    db $fd
    ld [hl], e
    ld [bc], a
    inc bc
    ld d, h
    inc de
    jp nc, Jump_000_0011

    rst RST_38
    ld [hl], b
    inc b
    ldh [$ff08], a
    ldh [$ff08], a
    ret nz

    db $10
    xor a
    add b
    stop
    ld hl, $220a
    rlca
    and a
    nop
    ld a, a
    rst RST_38
    ld [$107f], sp
    rst RST_38
    jr nz, @+$01

    ld d, h
    rst RST_38
    ei
    xor b
    rst RST_38
    db $ed
    db $10
    db $fd
    inc b
    db $fd
    inc c
    db $fd
    rst RST_38
    inc e

jr_035_61bb:
    db $fd
    jr c, jr_035_61bb

    ld d, b
    db $fd
    and b
    db $fd
    scf
    xor b
    xor b
    add a
    push de
    nop
    ldh [rP1], a
    add c
    db $10
    ld [hl], $20
    ld c, [hl]
    ld [hl], e
    inc bc
    inc bc
    nop
    rrca
    and a
    nop
    jp c, Jump_000_0f03

    add e
    db $10
    call c, $03d8
    jp c, $0105

    nop
    ld a, [bc]
    ld b, a

jr_035_61e4:
    ld [hl+], a
    ld d, l
    xor d
    rst RST_38
    xor d
    ld d, l
    ld d, l
    xor d
    inc bc
    inc bc
    ld [bc], a
    inc bc
    xor $f3
    ld de, $0302
    ld bc, $2072
    nop
    nop
    rst RST_00
    rst RST_38
    rst RST_30
    inc d
    rst RST_20
    pop af
    ld b, $00
    nop
    ld a, h
    sbc a
    ld a, a
    ld b, c
    ld a, [hl]
    rra
    ld h, b
    adc l
    ld d, $d8
    ld [bc], a
    inc bc
    rst RST_30
    db $fc
    rlca
    ld hl, sp-$51
    ld bc, $ff07
    rrca
    rst RST_38
    ld a, a
    rra
    rst RST_38
    ccf
    rst RST_38
    ld a, a
    rst RST_38
    rst RST_38
    sub $02
    rst RST_38
    db $fc
    rst RST_38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    cp $2f
    pop bc
    cp $83
    db $fc
    ld d, e
    daa
    add b
    jp c, $c213

    inc bc
    cp $d1
    daa
    rst RST_38
    ld bc, $03ff
    rst RST_38
    ld [hl], a
    inc c
    rst RST_38
    rra
    inc b

jr_035_6245:
    rrca
    inc h
    rrca
    inc h
    rlca
    inc d
    set 7, b
    cp $f0
    ld [hl+], a
    ld c, $f6
    jr nz, jr_035_6245

    ld hl, $031e
    rst RST_38
    ld b, c
    inc bc
    ld b, e
    rlca
    ld b, a
    inc bc
    ld b, e
    nop
    ld sp, hl
    jr nz, jr_035_61e4

    db $10
    ldh [rP1], a
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    db $e3
    rst RST_38
    add b
    ld d, e
    dec d
    rra
    ld [hl+], a
    db $ed
    db $10
    ld a, [$0400]
    ld [hl], b
    ld a, h
    ld [bc], a
    add $00
    or b
    ld bc, $00ac
    db $fc
    nop
    ld [bc], a
    push af
    ld bc, $0ffb
    ldh a, [$ff7b]
    nop
    ldh a, [rSB]
    nop
    and $01
    rst RST_38
    dec e
    inc bc
    dec de
    rlca
    ld [hl], $0f
    db $fc
    db $fc
    ccf
    di
    di
    rst RST_08
    rst RST_08
    ccf
    ccf
    rst RST_08
    ld bc, $1083
    ld a, [hl]
    ld d, l
    db $10
    ld de, $aaff
    rst RST_38
    ld d, l
    rst RST_38
    ld h, a
    ld sp, $d0f8
    ld de, $2580
    ld [hl], e
    dec b
    ld b, a
    ld [hl], a
    inc d
    ld h, a
    ld [hl], c
    cp $85
    jr z, jr_035_62cb

    di
    dec bc
    rst RST_30
    rla
    xor $0f
    rst RST_38
    cp $1f
    db $fc
    ccf
    ld sp, hl
    ld a, a

jr_035_62cb:
    ldh [rIE], a
    rst RST_38
    ret


    rst RST_38
    ld a, a
    cp $7f
    db $fc
    ld a, a
    ld hl, sp-$01
    rst RST_20
    push af
    jp z, Jump_000_3bc4

    swap h
    rst RST_08
    rst RST_38
    jr nc, jr_035_62e4

    db $fd
    inc b

jr_035_62e4:
    ei
    ld h, b
    sbc a
    sub b
    rst RST_38
    ld l, a
    or c
    ld c, [hl]
    ld h, b
    sbc a
    ret z

    scf
    sub c
    rst RST_38
    ld l, [hl]
    inc b
    ei
    inc c
    di
    inc a
    jp $ffd8


    daa

Call_035_62fc:
    ld de, $26ee
    reti


    inc a
    jp $fdf0


    rrca
    ret nc

    dec h
    ld [$18fe], sp
    cp $38
    cp $ff
    ld a, b
    cp $07
    inc d
    rlca
    sub h
    inc bc
    adc b
    rst RST_38
    inc bc
    adc b
    ld bc, HeaderNewLicenseeCode
    ld b, l
    ld bc, $ef45
    nop
    ld [hl+], a
    ld hl, sp+$1e
    ldh a, [c]

Jump_035_6325:
    dec h
    ldh a, [$fffe]
    ldh [$ffaf], a
    cp $c0
    cp $80
    jp nz, Jump_035_7e01

    add l
    stop
    rst RST_38
    cp a
    ccf
    nop
    add b
    rlca
    ld hl, sp+$04
    ldh a, [rIE]
    inc d
    ldh a, [$ff84]
    ret nz

    add h
    or b
    nop
    ld h, b
    cp a
    ld bc, $435e
    inc a
    ld b, e
    inc a
    ld h, b
    dec e
    push af
    cp $30
    ld b, d
    nop
    nop
    ld [hl], e
    ld [hl], b
    ld h, a
    ld h, b
    ld b, e
    ld [hl], a
    ld e, h
    nop
    ld a, $d0
    ld de, $0f0f
    ret nz

    ld h, l
    db $10
    db $fd
    add [hl]
    ld [hl], l
    ld [hl-], a
    ld hl, sp-$02
    ldh a, [$fffc]
    ldh [$fffc], a
    cp a
    pop bc
    ld hl, sp-$7f
    ldh a, [rSB]
    ldh a, [$ff65]
    db $10
    ldh [rIE], a
    nop
    ld a, l
    nop
    ld a, e
    nop
    ld a, a
    inc c
    ld [hl], e
    rst RST_38
    ld a, [bc]
    ld [hl], l
    dec c
    ld [hl], e
    dec bc
    ld [hl], a
    rrca
    ld [hl], a
    rst RST_38
    ld [$18fc], sp
    ld a, h
    jr c, jr_035_640e

    ld a, b
    db $fc
    rst RST_38
    ld hl, sp-$64
    ld hl, sp+$3c
    ld hl, sp-$44

jr_035_639b:
    ld hl, sp-$64
    cp $cd
    inc bc
    ld b, $7f
    inc c
    ld a, a
    jr jr_035_6425

    jr nc, jr_035_639b

    ld a, a
    ld h, b
    ld e, l
    ld sp, $2a8f
    dec b
    or l
    dec de
    ei
    rst RST_38
    ccf
    rst RST_38
    rst RST_38
    halt
    rst RST_38
    ld l, d
    rst RST_38
    ld h, d
    rst RST_38
    rst RST_38
    ld l, d
    db $fd
    ld a, [hl+]
    ld h, e
    ld h, b
    ld b, b
    ld [hl], b
    rst RST_38
    db $10
    ld h, b
    nop
    inc b
    ldh [$fff4], a
    db $10
    db $e4
    rst RST_08
    ldh a, [rTIMA]
    nop
    dec b
    ld [hl], b
    dec h
    ld [hl], b
    dec h
    pop bc
    push af
    rst RST_38
    ld de, $f1e5
    dec b
    ld bc, $8105
    push bc
    rst RST_38

jr_035_63e2:
    ld bc, $1105
    ld bc, $0050
    db $e4
    nop
    rst RST_30
    pop bc
    nop
    ld b, e
    ld [hl], e
    dec b
    ld c, $00
    rlca
    rrca
    rst RST_38
    ld a, a
    sbc a
    ccf
    ld e, a
    rra
    cpl
    rrca
    adc a
    rst RST_38
    rrca
    rst RST_10
    rlca
    ld a, [hl+]
    inc bc
    ret c

    inc bc
    nop
    rst RST_18
    ld [hl], a
    db $10
    ld h, a
    inc sp
    ld b, h

jr_035_640c:
    ld h, a
    nop

jr_035_640e:
    rra
    ldh [rIF], a
    ldh [$ff1f], a

jr_035_6413:
    rra
    ldh [$ff71], a
    add hl, bc
    ld l, [hl]
    inc bc
    add c
    inc c
    ld [hl], b
    jr nz, jr_035_6413

    ld [bc], a
    or $01
    inc bc
    xor c
    nop
    rlca

jr_035_6425:
    nop
    ld b, $00
    rra
    ld b, b
    jr c, jr_035_640c

    db $10
    ldh [$ff89], a
    db $10
    ld [hl], b
    inc bc
    daa
    ld de, $c0b9
    ld d, d
    ld d, b
    ld [hl], e
    inc bc
    ld b, $00
    ld [$40ef], sp
    rra
    rst RST_30
    ld a, a
    ccf
    ld a, a
    ld h, l
    ld d, e
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ei
    ld hl, sp-$04
    ld d, d
    ld b, b
    ld hl, sp-$3f
    jr nc, jr_035_63e2

    ret nz

    ld a, a
    sbc [hl]
    nop
    inc e
    ld bc, $0278
    ld b, b
    ld e, e
    ld sp, $7e7d
    ld h, b
    ld b, b
    ld a, a
    nop
    ld a, h
    nop
    ld a, d
    adc h
    ld d, b
    cp $d8
    inc bc
    ld a, [hl]
    nop
    ld l, d
    ld bc, $0345
    dec h
    db $eb
    inc bc
    sub d
    ld [hl], e
    ld [bc], a
    db $fc
    and h
    ld d, a
    ld [hl], b
    ld [hl], l
    ld b, b
    rra
    ld [hl], l
    db $10
    ld h, l
    nop
    dec b
    cp b
    ld b, d
    ld c, l
    ld d, b
    jr z, jr_035_64a1

    cp $78
    ld hl, $0000
    jp hl


    nop
    call z, Call_000_0620
    rst RST_38
    ld [hl], b
    inc bc
    ld a, b
    dec c
    jr nc, jr_035_64b9

    nop
    rrca
    ld sp, hl
    add b
    cp b
    db $10

jr_035_64a1:
    pop af
    ld de, $0c43
    inc c
    inc sp
    jr nc, jr_035_6508

    ld c, a
    ld b, b
    cp a
    add b
    inc a
    rst RST_28
    inc de
    inc bc
    and $57
    add c
    db $f4
    nop
    ld h, d
    ld [hl], $49

jr_035_64b9:
    ld h, a
    ld bc, $4146
    db $10
    ld e, d
    rst RST_30
    ld b, $c0
    cp $b9
    ld b, c
    inc b
    nop
    inc b
    add b
    call nz, $0400
    ld d, a
    stop
    ld d, b
    ld a, [de]
    ld d, d
    ld b, b
    ld [$8030], sp
    cp c
    nop
    adc a
    jr z, jr_035_64db

jr_035_64db:
    ret c

    nop
    or b
    ld c, d
    dec [hl]
    ld h, b
    add b
    dec h
    ld [hl], b
    ld a, a
    ld [hl], b
    ld b, b
    ld [hl], a
    db $10
    ld h, h
    ld bc, $8005
    dec h
    rst RST_38
    ld [$020e], sp
    db $ec
    ld c, $20
    add b
    and b
    nop
    ld [hl], b
    jr c, jr_035_6566

    ld a, [hl-]
    ld l, b
    ld h, e
    ld e, [hl]
    ld h, a
    ld a, b
    ld h, e
    ld [$af30], sp
    ld [bc], a
    ld e, e
    ld b, b

jr_035_6508:
    rlca
    dec c
    ret nz

    ld de, $220a
    ld h, l
    db $10
    add $02
    adc a
    ld b, e
    ld e, c
    ld sp, $deee
    ld d, e
    ldh a, [rP1]
    inc c
    ld a, [hl-]
    ld sp, $2904
    nop
    db $fd
    dec hl
    ldh [c], a
    ld h, b
    dec bc
    nop
    dec bc
    ld [$0010], sp
    rst RST_20
    db $10
    add b
    ld [hl+], a
    ld d, e
    inc l
    cp a
    ld d, $0f
    nop
    ld e, $0e
    ld a, e
    ld d, d
    jr z, jr_035_6563

    rlca
    add e
    db $10
    ld [hl], $2b
    ld [hl], e
    dec b
    ld e, h
    ld d, c
    ldh [c], a
    ret nc

    ld e, l
    db $e4

Jump_035_6548:
    adc c
    db $10
    ld h, [hl]
    ld [bc], a
    ld [hl], e
    inc b
    ld [hl], b
    ld [hl], h
    ld b, b
    pop af
    ld [hl], h
    sbc h
    ld h, c
    cp b
    ld d, l
    ret nc

    ld b, l
    ld [hl], c
    ld [hl], l
    ld b, c
    ld [hl], l
    rst RST_38
    ld de, $0165
    dec b
    add [hl]

jr_035_6563:
    and [hl]
    add h
    and [hl]

jr_035_6566:
    rst RST_38
    add d
    and h
    add b
    and b
    adc b
    xor [hl]
    add d
    xor h
    db $e3
    adc [hl]
    and b
    ld a, [hl]
    ld l, l
    ld l, $67
    ld d, b
    ld [hl], l
    ld b, $26
    inc b
    rst RST_38
    ld h, $02
    inc h
    nop
    jr nz, @+$0a

    ld l, $02
    sbc l
    inc l
    xor h
    ld h, c
    ld bc, $0022
    or c
    ld [hl], d
    and h
    ld [hl], b
    dec h
    adc b
    cp d
    ld [hl], d
    ld d, d
    add hl, hl
    or b
    ld bc, $7ce1
    nop
    ret nz

    dec b
    jp nz, $0600

    ccf
    ld h, $06
    and [hl]
    ld b, $26
    add [hl]
    pop hl
    ld [hl], d
    ld [$0271], a
    adc h
    inc de
    cp $b5
    ld h, b
    ld sp, hl
    ld [hl], e
    dec e
    add b
    ld de, $007b
    cp $00
    inc b
    ld hl, sp+$04
    nop
    ld [$000b], sp
    ei
    nop
    ld [hl+], a
    stop
    ld hl, $1100
    ld [bc], a
    db $10
    rst RST_38
    inc b
    inc de
    ld [$0007], sp
    rrca
    stop
    rst RST_38
    stop
    and b
    nop
    inc h
    nop
    ld b, a
    nop
    rst RST_30
    ld b, c
    nop
    add b
    dec hl
    nop
    nop
    ld bc, $0e0e
    rst RST_38
    ld bc, $0e01
    nop
    rlca
    ld [$08c7], sp
    rst RST_38
    ld b, a
    ld [$0807], sp
    ld b, $26
    add [hl]
    ld h, $9f

jr_035_65f9:
    ld b, $a6
    ld b, $a6
    add [hl]
    ld b, c
    nop
    ld c, b
    ld bc, $9e00
    ld d, b
    ld b, $04
    inc bc
    nop
    rst RST_38
    ld e, h
    nop
    ld d, b
    ld b, $10
    cp a
    ldh [$ff08], a
    ldh a, [rP1]
    ld hl, sp+$07
    dec a
    nop
    rlca
    ld hl, sp+$0c
    nop
    inc c
    ld bc, $010c
    add [hl]
    ld [hl], $82
    ld [de], a
    add d
    rst RST_18
    ld [de], a
    ld [bc], a
    ld [de], a
    nop
    jr jr_035_6637

    ld bc, $0880
    cp e
    jr c, jr_035_65f9

    ld e, l
    ld bc, $00ff
    ld a, a

jr_035_6637:
    ld d, b
    ld [bc], a
    rlca
    rst RST_38
    nop
    nop
    ld hl, sp-$78
    ld [hl], b
    ld hl, sp+$00
    ldh a, [$ff63]
    nop
    ret nz

    ld d, b
    inc b
    ld a, b
    dec b
    ld a, b
    dec b
    add b
    ld [$002e], sp
    sub h
    ld d, b
    nop
    ld e, a
    nop
    rst RST_38
    ld e, a
    ld bc, $971f
    inc b
    ret z

    dec b
    add b
    add sp, -$59
    inc b
    ret z

    dec b
    inc c
    ld bc, $5030
    nop
    ldh [rP1], a
    nop
    inc bc
    ldh a, [$fff3]
    call nz, $0103
    ld a, [de]
    ld de, $0b00
    add b
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0003
    rst RST_00
    inc d
    pop af
    nop
    ld a, h
    ld b, c
    rra
    nop
    rst RST_00
    inc d
    pop af
    nop
    ld [hl], b
    ld b, b
    db $10
    ld bc, $14c7
    pop af
    dec bc
    nop
    inc bc
    rst RST_38
    rst RST_00
    inc d
    pop af
    nop
    ld [$0e02], sp
    add b
    dec bc
    nop
    ld [bc], a
    ld b, $0c
    jr jr_035_66d4

    ld h, b
    dec bc
    nop
    rlca
    rrca
    ld a, a
    dec bc
    rst RST_38
    inc b
    nop
    nop
    ld bc, $3f0a
    rst RST_38
    ld d, l
    xor d
    ld d, l
    nop
    nop
    db $fc
    ld hl, sp-$10
    pop hl
    pop bc
    add e
    dec bc
    nop
    inc b
    add b
    add b
    dec bc
    nop
    add hl, bc
    ld bc, $7703
    rra
    rrca
    rrca
    rlca
    dec bc
    ld hl, sp+$07
    rrca
    nop
    ld hl, sp+$01

jr_035_66d4:
    and $1d
    dec de
    ld [hl], $fc
    di
    rst RST_08
    ccf
    dec bc
    nop
    inc bc
    rst RST_00
    inc d
    pop af
    dec bc
    nop
    inc b
    ld b, a
    inc d
    ld [hl], c
    nop
    ld a, h
    ld b, c
    rra
    nop
    pop bc
    ld de, $01f1
    ld [hl], c
    ld b, c
    ld de, $0001
    ld de, $55aa
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    dec bc
    nop
    rlca
    ld b, b
    dec bc
    nop
    ld b, $02
    inc b
    ld h, b
    sub b
    or c
    ld h, b
    ret z

    sub c
    inc b
    inc c
    inc a
    ret c

    ld de, $3c26
    ldh a, [$ff0b]
    nop
    inc bc
    ld [$3818], sp
    ld a, b
    rlca
    rlca
    inc bc
    inc bc
    dec bc
    ld bc, $0002
    dec bc
    ld hl, sp+$04
    ldh a, [$ffe0]
    ret nz

    add b
    dec bc
    nop
    inc bc
    cp a
    nop
    rlca
    inc b
    inc d
    add h
    add h
    nop
    ld bc, $4343
    ld [bc], a
    ld b, b
    and b
    ldh [$fff4], a
    ld d, h
    and h
    ld d, d
    dec bc
    nop
    inc bc
    inc bc
    rlca
    inc bc
    dec bc
    nop
    inc bc
    rlca
    inc b
    dec bc
    rlca
    ld [bc], a
    nop
    db $10
    inc sp
    nop
    nop
    ldh [$ff1f], a
    ldh [rP1], a
    nop
    ld bc, $0301
    rlca
    rlca
    ld b, $03
    ld [bc], a
    dec bc
    nop
    dec b
    jr nc, jr_035_6770

    nop
    inc b
    ret nz

    ldh [$ffc0], a
    add b
    dec bc
    nop
    dec b
    ld d, b
    and b

jr_035_6770:
    ret nz

    add b
    dec bc
    nop
    rlca
    ld [bc], a
    inc b
    jr z, jr_035_6779

jr_035_6779:
    nop
    xor $01
    xor $27
    and a
    daa
    dec bc
    rst RST_20
    inc bc
    ldh [$ff0b], a
    ld [$740b], sp
    jp c, $d7b7

    ld [$b67f], a
    db $ed
    cp a
    db $db
    or [hl]
    db $db
    cp l
    db $eb
    ld [hl], a
    xor [hl]
    inc [hl]
    dec bc
    ld l, b
    inc b
    ld l, h
    inc [hl]
    inc a
    ld l, [hl]
    call $b999
    db $ed
    ld b, [hl]
    inc a
    ld h, e
    ld d, e
    ld e, a
    ld b, b
    dec bc
    nop
    inc bc
    ld [$c0b8], a
    ld h, b
    ldh [$ffa8], a
    push de
    cp [hl]
    ld [hl], $1b
    dec e
    ld b, $01
    dec bc
    nop
    inc bc
    add b
    jp $817e


    ld a, [hl]
    dec bc
    nop
    inc b
    ld bc, $0c34
    and d
    dec b
    inc b
    ld b, $c1
    add [hl]
    inc a
    pop hl
    ld [bc], a
    ld d, b
    ld l, b
    ld h, d
    add b
    inc d
    xor c
    ld [de], a
    ld h, h
    ld e, d
    nop
    ld h, b
    nop
    ld c, h
    inc h
    ld e, d
    ld c, b
    and d
    nop
    nop
    rlca
    rrca
    rra
    ccf
    ld a, a
    ccf
    dec bc
    nop
    inc b
    ld bc, $0103
    ld e, d
    inc b
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
    jr c, @-$61

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
    ld a, [hl]
    ld a, h
    jr c, jr_035_6889

    inc b
    ld c, e
    rrca
    ld bc, $000b
    ld [bc], a
    add b
    ld bc, $0381
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
    call z, $36de
    jp $0123


    adc b
    ld [bc], a
    add b
    ld h, b
    ld a, [hl]
    dec bc
    nop
    ld [bc], a
    ld bc, $0003
    nop
    inc [hl]
    ld a, b
    ld a, [hl]
    ld a, h
    ld a, b
    ld a, b
    inc bc
    ld [bc], a
    nop
    ld bc, $0b01
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
    rlca
    rrca
    rla
    ld a, [bc]
    ld d, h
    ld [$000b], sp
    inc b
    ret nz

jr_035_6881:
    ldh [$ff80], a
    nop
    nop
    inc bc
    ld a, [bc]
    dec e
    ld [de], a

jr_035_6889:
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
    call z, Call_035_74eb
    sub h
    ld b, b
    sub h
    ld b, b
    ret nc

    nop
    nop
    ld bc, $0b03
    nop
    inc bc
    ld b, b
    ldh [$ffe0], a
    ret nz

    add b
    add b
    dec bc
    nop
    ld c, $0b
    jr nc, jr_035_68ba

    rrca
    dec bc

jr_035_68ba:
    nop

jr_035_68bb:
    ld b, $fb
    db $fc
    rrca
    dec bc
    nop
    inc b
    daa
    ld d, b
    add h
    jr jr_035_6881

    ld e, d
    dec e
    ld hl, $e0e0
    ret nz

    dec bc
    add b
    inc bc
    nop
    nop
    inc bc
    dec bc
    nop
    ld b, $ff
    nop
    ccf
    ccf
    add hl, bc
    inc c
    inc bc
    dec bc
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
    call z, Call_000_000b
    ld [bc], a
    add b
    ld b, b
    nop
    add b
    ld b, b
    dec bc
    nop

jr_035_68f7:
    rlca
    rra
    ld e, $0b
    ld c, $02
    inc c
    inc c
    inc b
    dec bc
    nop
    ld e, $01
    inc h
    ld de, $1d1d
    jr c, jr_035_693c

    ld d, $d2
    ld a, b
    ld [bc], a
    ld a, d
    ld b, d
    ld c, b
    ld a, c
    ld bc, $10b5
    jr nz, jr_035_68f7

    ldh [rSVBK], a
    jr nc, jr_035_68bb

    jr nz, @+$0d

    nop
    daa
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
    ld b, b

jr_035_6938:
    sbc b
    inc a
    ld a, $3e

jr_035_693c:
    ld a, [hl]
    cp $c4
    dec bc
    nop
    daa
    ld [$1008], sp
    dec bc
    nop
    ld [bc], a
    inc de
    nop
    dec bc
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
    dec bc
    ld a, d
    ld [bc], a
    ld a, b
    ld [hl-], a
    add h
    ld [$b8d4], a
    cp b
    jr nc, jr_035_6971

    nop
    inc [hl]
    rra
    dec c
    ld c, $0f
    rlca
    inc bc
    nop
    nop
    dec bc

jr_035_6971:
    inc bc
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    nop
    nop
    rst RST_30
    rst RST_20
    ld b, $00
    ld a, a
    ld a, [hl]
    ld h, b
    nop
    rst RST_30
    rst RST_20
    ld b, $00
    ld [hl], b
    ld [hl], a
    ld h, h
    dec b
    rst RST_30
    rst RST_20
    ld b, $00
    nop
    rst RST_38
    nop
    rst RST_38
    rst RST_30
    rst RST_20
    ld b, $00
    ld c, $ec
    jr nz, jr_035_6938

    nop
    nop
    dec bc
    ld a, a
    dec b
    nop
    nop
    dec bc
    rst RST_38
    dec b
    dec bc
    nop
    inc c
    xor d
    ld d, l
    xor d
    dec bc
    rst RST_38
    inc b
    cp $fe
    db $fc
    dec bc
    rst RST_38
    inc b
    ld a, a
    ld a, a
    rst RST_38
    dec bc
    cp $07
    dec bc
    rst RST_38
    ld [bc], a
    inc c
    inc b
    inc h
    inc h
    inc d
    dec bc
    cp $02
    ld c, $0e
    cp $fe
    ld e, $f0
    nop
    ldh a, [rP1]
    ld bc, $0703
    rrca
    db $fc
    di
    rst RST_08
    ccf
    nop
    ld a, a
    ld a, a
    nop
    rst RST_30
    rst RST_20
    ld b, $0b
    nop
    inc b
    ld [hl], a
    ld h, a
    ld b, $00
    ld a, a
    ld a, [hl]
    ld h, b
    nop
    push af
    push hl
    dec b
    dec b
    ld [hl], l
    ld [hl], l
    ld h, l
    dec b
    dec bc
    rst RST_38
    dec b
    nop
    rst RST_38
    nop
    nop
    dec bc
    rst RST_38
    dec b
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, l
    ld a, a
    ld a, h
    ld a, d
    ld a, d
    db $fd
    ei
    sbc a
    ld l, a
    ld c, [hl]
    sbc a
    scf
    ld l, [hl]
    ei
    di
    jp $ee27


    reti


    jp Jump_000_0b0f


    cp $07
    inc d
    sub h
    adc b
    adc b
    ld b, h
    ld b, l
    ld b, l
    ld [hl+], a
    ld e, $fe
    cp $0e
    ld c, $0b
    cp $04
    ld a, [hl]
    ld a, [hl]
    nop
    ccf
    add b
    ld hl, sp-$10
    ldh a, [$ffc0]
    or b
    ld h, b
    ld e, [hl]
    inc a
    inc a
    dec bc
    nop
    inc bc
    ld [bc], a
    and d
    ld d, d
    and b
    dec bc
    nop
    dec b
    inc e
    ld a, $7d
    ld a, e
    ld a, a
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld [hl], a
    ld h, a
    ld b, h
    nop
    rra
    ldh [$ff1f], a
    dec bc
    nop
    ld [$0303], sp
    ld [bc], a
    dec bc
    nop
    inc b
    ld c, a
    rlca
    nop
    nop
    ldh a, [$ff0c]
    jp nz, $e1e1

    ld hl, sp-$08
    db $fc
    db $fc
    dec bc
    cp $05
    rst RST_38

jr_035_6a65:
    nop
    rst RST_38
    nop
    rst RST_38
    ld [hl+], a
    ld [hl+], a
    ld hl, $8041
    inc bc
    rlca
    rst RST_28

jr_035_6a71:
    ld bc, $01ee
    nop
    ret z

    ret z

    dec bc
    ld [$0b05], sp
    nop
    dec bc
    adc e
    dec h
    ld c, b
    jr z, @+$17

    add b
    ld c, c
    ld [de], a
    ld b, b
    inc h
    ld c, c
    inc h
    ld b, d
    inc d
    adc b
    ld d, c
    ld c, $1e
    dec bc
    inc e
    inc bc
    ld e, $0e
    nop
    inc d
    ld [hl], $6e
    ld a, [hl]
    ld d, [hl]
    jr c, jr_035_6a9c

jr_035_6a9c:
    inc e
    inc c
    dec bc
    nop
    ld [bc], a
    rst RST_08
    rst RST_38
    nop
    dec d
    ld b, b
    jr nz, @-$7e

    nop
    ld d, b
    ld a, [hl+]
    ld b, c
    rrca
    rlca
    inc bc
    ld bc, $000b
    inc b
    jp $ffff


    ld a, [hl]
    dec bc
    nop
    ld [$1a0c], sp
    nop
    ld bc, $381e
    ld b, c
    ld [de], a
    jr nc, jr_035_6a65

    nop
    add b
    ld a, a
    db $e3
    ld b, $4c
    sbc c
    and c
    dec bc
    nop
    ld [bc], a
    add b
    ret z

    add h
    sub [hl]
    inc d
    dec bc
    rst RST_38
    dec b
    ld a, a
    ccf
    cp $fc
    cp $7c
    ld l, b
    ld b, h
    jr nz, jr_035_6a71

    inc b
    jr nz, @+$4a

    ld d, d
    ld b, e
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
    jr nz, @+$42

    ld [hl], b
    ld h, h
    rst RST_38
    rst RST_38
    inc [hl]
    ld b, h
    ld [$7400], sp
    cp $fe
    db $fc
    rra
    ld e, a
    rra
    daa
    ld c, d
    dec sp
    inc [hl]
    jr nc, jr_035_6b15

    nop
    inc b
    ld bc, $0203
    ld d, d
    jr nz, jr_035_6b3a

    ld [$e1c1], sp

jr_035_6b15:
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
    ld b, [hl]
    adc $ff
    cp a
    ld b, c
    nop
    ld e, $06
    xor e
    ld e, a
    dec bc
    nop
    inc bc
    ld a, a
    nop
    ld bc, $0b03
    ld a, a
    dec b
    ld a, [hl]

jr_035_6b3a:
    ld a, h
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0b01
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
    cp $0b
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
    dec bc
    ld a, a
    dec b
    rst RST_38
    rst RST_38
    dec bc
    nop
    rlca
    jr nc, jr_035_6b6c

    nop

jr_035_6b6c:
    inc c
    ld c, $1f

jr_035_6b6f:
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
    ldh a, [c]
    ldh a, [$ffb8]
    ld e, b
    jr jr_035_6b6f

    ldh a, [$ffe0]
    rst RST_38
    rst RST_38
    ld a, a
    ccf
    nop
    rra
    nop
    rrca
    jr c, jr_035_6ba3

    dec bc
    nop
    ld a, [bc]
    inc bc
    rrca
    ld a, a
    dec bc
    nop
    inc b
    or h
    add a
    add e
    call nz, Call_035_7ef0
    ccf

jr_035_6ba3:
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

    inc c
    rra
    dec de

jr_035_6bbc:
    ld sp, $6030
    nop
    inc bc

Jump_035_6bc1:
    nop
    nop
    add b
    dec bc
    ret nz

    ld [bc], a
    nop
    rst RST_38
    dec bc
    nop
    ld [bc], a
    inc bc
    dec bc
    nop
    ld [bc], a
    inc bc
    rlca
    ld c, $1c
    add hl, de
    ld sp, $f133
    ret nz

    sbc b
    jr nc, jr_035_6bbc

    ret nz

    ret nz

    and b
    add e
    ld b, c
    dec bc
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
    call z, $644c
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
    dec bc
    nop
    inc bc
    add b
    ret nz

    ldh a, [$fff8]
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

Jump_035_6c24:
    ret nz

    nop
    nop
    ld h, b
    ld b, b
    ld b, b
    ld h, b
    nop
    jr nz, jr_035_6c39

    nop
    inc b
    ld bc, $0001
    ld e, $3f
    ld a, a
    ld a, a
    dec bc
    rst RST_38

jr_035_6c39:
    inc bc
    ret nc

    ld e, b
    sbc b
    adc c
    ret


    dec bc

Jump_035_6c40:
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
    dec bc
    rst RST_38
    ld [bc], a
    cp $7e
    sbc h
    call z, $f2e6
    ei
    dec sp
    dec e
    dec c
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
    jr nz, jr_035_6c8c

    jr nc, jr_035_6c79

    nop
    dec b
    jr jr_035_6cae

    ld a, $3e
    ld a, [hl]
    cp $c4
    rst RST_38
    ld a, a

jr_035_6c79:
    ld a, e
    dec sp
    add hl, sp
    dec e
    inc e
    inc b
    push af
    dec bc
    db $f4
    ld [bc], a
    or $0b
    xor $02
    scf
    ld [hl], a
    inc sp
    ld sp, hl
    ld a, h

jr_035_6c8c:
    cp h
    ld a, h
    ld a, h
    cp a
    dec bc
    rst RST_38
    inc bc
    ld a, a
    ccf
    rra
    inc c
    ld c, $87
    rst RST_00
    rst RST_00
    db $e3
    db $e3
    di
    dec bc
    nop
    inc b
    stop
    nop
    xor a
    cpl
    cpl
    scf
    inc hl
    ld c, $1f
    rra
    rst RST_20
    di

jr_035_6cae:
    ld hl, sp-$02
    rst RST_38
    ld a, a
    ccf
    adc a
    dec bc
    ld b, d
    ld [bc], a
    ld b, b
    ld [bc], a
    add h
    ld [$b8d4], a
    cp c
    ld sp, $010b
    inc bc

Jump_035_6cc2:
    inc bc
    dec bc
    add b
    inc bc
    xor b
    sub a
    cp a
    rra
    ld l, [hl]
    ld c, $0b
    ld b, $02
    and $c7
    add a
    ld a, [hl]
    ld a, [hl]
    ld a, $0b
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
    dec bc
    ret nz

    inc b
    ldh [$ff1f], a
    ld l, l
    ld l, $2f
    daa
    inc sp
    jr nc, jr_035_6d00

    ld de, $0280
    ld a, [bc]
    ldh [$fff8], a
    rst RST_38
    rra

jr_035_6d00:
    add c
    ldh a, [$fffc]
    ccf
    ret nz

    nop
    nop
    ret nz

    ret nz

    ld [bc], a
    nop
    ld a, [hl-]
    pop bc
    ld de, $01f1
    ld [hl], c
    ld b, c
    nop
    nop
    pop hl
    db $fc
    rst RST_38
    ccf
    rst RST_00
    ld sp, hl
    cp $3f
    db $ec
    ld e, b
    add b
    ld [$e8f4], a
    nop
    xor b
    inc bc
    ld b, $06
    inc b
    ld [bc], a
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
    ld [bc], a

jr_035_6d3e:
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
    ld [bc], a
    add $02
    rst RST_00
    ld [bc], a
    jp $6003


    ld [hl], b
    ld [hl], b
    ld [bc], a
    jr c, jr_035_6d5a

    inc a
    inc e

jr_035_6d5a:
    push af
    push hl
    dec b
    dec b
    ld [hl], l
    ld [hl], l
    ld h, h
    nop
    dec e
    nop
    add b
    rst RST_38
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$09
    pop af
    inc bc
    di
    rst RST_38
    inc de
    ldh [c], a
    nop
    ldh [rP1], a
    db $e3
    jr nz, jr_035_6d3e

    rst RST_38
    inc bc
    inc bc
    ccf
    ccf
    ld a, [hl]
    inc a
    ld [hl], b
    ld hl, $00ff
    rrca
    nop
    ld a, a
    nop
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    ld a, c
    inc sp
    ld b, c
    rlca
    ccf
    nop
    nop
    rst RST_38
    db $fd
    ld bc, $0427
    rst RST_38
    rst RST_38
    db $fc
    rst RST_38
    rst RST_38
    ld hl, sp-$59
    ld hl, sp-$01
    ldh a, [$ff37]
    inc b
    ccf
    ld bc, $3f00
    ld [bc], a
    rst RST_38
    rst RST_18
    rst RST_38
    cp $ff
    db $fc
    cp $49
    ld bc, $f00e
    rst RST_38
    push af
    ldh a, [$fff3]
    ldh [$ff35], a
    add d
    dec bc
    inc b
    rst RST_38
    ld l, $11
    push bc
    ld a, [bc]
    ld l, $11
    ld d, a
    jr z, @+$01

    cp l
    ld b, d
    db $db
    inc h
    ld l, l
    sub d
    db $db
    inc h
    rst RST_18
    db $fd
    ld [bc], a
    ret nz

    rst RST_00
    rst RST_08
    ld [hl], d
    ld bc, $8f8f
    res 1, a
    sbc a
    ld a, d
    ld bc, $441f
    dec b
    add c
    ld b, $03
    inc bc
    rst RST_28
    rst RST_38
    inc bc
    rst RST_38
    rlca
    sub l
    inc b
    rrca
    rst RST_38
    rst RST_38
    cp a
    ldh [$ffe0], a
    rst RST_38
    ldh [rIE], a
    ret nz

    and l
    nop
    pop bc
    rst RST_38
    cp $c7
    ld hl, sp-$74
    ldh a, [$ff0c]
    ldh a, [$ffe1]
    rst RST_38
    ldh a, [$ff93]
    ldh [$ff65], a
    add d
    rlc h
    adc l
    ei
    ld [de], a
    ld e, e
    ld l, l
    nop
    rra
    rra
    ccf
    ccf
    nop
    ld b, l
    ccf
    push bc
    ld bc, $ca7f
    ld [bc], a
    ld b, b
    add hl, bc
    ccf
    ld bc, $9d0f
    ld bc, $1ff7
    rra
    rst RST_38
    and $01
    ccf
    cp $7e
    cp a
    rst RST_38
    sbc c
    ldh [$ffb3], a
    ret nz

    ld l, a
    nop
    rra
    nop
    ld h, l
    ccf
    ld a, [de]
    inc bc
    nop
    adc $03
    ld b, [hl]
    dec b
    ld sp, hl
    cp $0c
    ld de, $f7ff
    ld hl, sp-$12
    ldh a, [$ff9c]
    ldh [$ff79], a
    add d
    rst RST_38
    db $e3
    inc b
    call $ff02
    ld a, $fd
    ld a, $ff
    ld a, [hl]
    ld a, l
    ld a, a
    ld a, h
    rst RST_38
    ld a, h

jr_035_6e5a:
    db $fc
    ld a, h
    cp $4b
    nop
    rst RST_38
    rst RST_18
    jr nz, jr_035_6e5a

    ld [$41be], sp
    rst RST_38
    rst RST_30
    ld [$906f], sp
    jr c, jr_035_6e6d

jr_035_6e6d:
    ret nz

    nop
    db $dd
    add c
    ei
    ld [bc], a
    rst RST_38
    nop
    cp $3d
    db $10
    ccf
    nop
    rst RST_28
    ld a, h
    inc bc
    ldh a, [rIF]
    db $fc
    ld bc, $00f8
    rlca
    rst RST_28
    nop
    db $fc
    inc bc
    add b
    dec de
    ld [bc], a
    rst RST_38
    nop
    ldh a, [$fff6]
    jr jr_035_6e91

jr_035_6e91:
    ld hl, sp+$07
    ccf
    inc d
    rst RST_38
    cp $00
    ld bc, $01ff
    ei
    ld [bc], a
    ld [bc], a
    ld a, [$f406]
    inc b
    sbc a
    db $f4
    dec c
    add sp, $09
    ret z

    inc h
    nop
    jr jr_035_6eac

jr_035_6eac:
    ccf
    ld a, a
    nop
    ld h, b
    rra
    ldh [$ff1f], a
    ret nz

    ccf
    ld e, [hl]
    ld de, $7ff7
    nop
    add b
    ld b, l
    db $10
    ccf
    ret nz

    ld bc, $dcfe
    ld e, h
    inc de
    db $fc
    ld bc, $0403
    ld hl, sp+$1c
    nop
    rrca
    ldh a, [$ff93]
    ld bc, $69fe
    inc d
    rst RST_30
    nop
    add c
    ld d, e
    db $10
    sbc e
    ld de, $ffde
    ld hl, $8877
    rst RST_38
    nop
    xor l
    ld d, d
    cp $df
    nop
    add hl, de
    ld bc, $0107
    jr nc, jr_035_6efc

    xor $11
    rst RST_38
    ld a, a
    add b
    db $db
    inc h
    dec c
    ld [bc], a
    di
    ldh a, [rIE]
    db $fd
    db $fc
    sbc $20
    db $ed

jr_035_6efc:
    ld de, $02fb
    rst RST_38
    or l
    ld b, l
    db $f4
    inc b
    rst RST_20
    dec d
    cp d
    ld b, d
    rst RST_38
    push af
    add hl, bc
    ccf
    nop
    db $db
    call nz, $206f
    rst RST_38
    push de
    ld d, d
    sub a
    sub b
    ld [hl], e
    ld d, h
    cpl
    jr nz, @-$1f

    push de
    jp z, $f8f7

    rst RST_28
    rla
    ld de, $f380
    rst RST_38
    nop
    db $ed
    ld [bc], a
    sbc e
    inc b
    inc a
    ld [bc], a
    sbc a
    rst RST_38
    ld bc, $037f
    ld hl, sp+$00
    rst RST_30
    nop
    call z, Call_000_00ef
    cp b
    nop
    ld h, b
    dec sp
    db $10
    ldh [$ffe0], a
    rra
    cp $61
    db $10
    add b
    nop
    inc b
    nop
    inc c
    nop
    inc a
    ld a, [$000a]
    inc bc
    ld d, e
    db $10
    rrca
    nop
    ld bc, $3000
    db $db
    nop
    ld a, $81
    db $10
    rlca
    rlca
    adc d
    ld [de], a
    rra
    ldh [rIE], a
    rrca
    jr nc, @+$05

    inc e
    ld bc, $c0c6
    db $e3
    ld l, l
    add b
    ld l, b
    dec d
    nop
    ldh [$ffe5], a
    nop
    ldh a, [rSVBK]
    dec h
    nop
    ld hl, sp+$3f
    inc d
    ld b, h
    ld bc, $1081
    ld a, [de]
    reti


    ld a, [de]
    sub c
    ld [hl-], a
    and a
    or c
    inc [hl]
    or e
    ld l, b
    dec h
    ld d, b
    ld h, $07
    dec [hl]
    nop
    rrca
    ld e, l

jr_035_6f8e:
    rrca
    ld e, a
    daa
    rst RST_38
    nop
    ld bc, $100f
    inc bc
    sub b

jr_035_6f98:
    jr z, jr_035_6f98

    add a
    jr nz, @-$02

    db $fc
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld [hl], a
    ld hl, sp+$03
    db $fc
    sbc d
    inc de
    nop
    rra
    add c
    ld a, [bc]
    nop
    db $fc
    cp h
    inc de
    cp $00
    add b
    ccf
    ret nz

    db $fc
    cp $fc
    rst RST_38
    ld a, [hl]
    add hl, sp
    ld a, $11
    ld e, $03
    inc c
    add a
    ei
    nop
    jp nz, Jump_000_000a

    ld [hl], l
    adc d
    xor $11
    rst RST_10
    cp $65
    ld [$48b7], sp
    ld l, l
    sub d
    cp $01
    ld d, a
    rst RST_38
    xor b
    db $eb
    inc d
    db $ed
    ld [de], a
    ld e, e
    and h
    ld l, $ff
    pop de
    ld l, l
    sub b
    cp e
    ld b, b
    sub $20
    ld h, h
    rst RST_38
    add b
    adc h
    nop
    jr jr_035_6fee

jr_035_6fee:
    ld d, b
    ld b, b
    ret nc

    ei
    add b
    add b
    add c
    db $10
    ld bc, $7701
    ld [hl], a
    adc h

jr_035_6ffb:
    rst RST_38
    adc h
    jr @+$1a

    db $10
    db $10
    scf
    jr nc, @+$21

    or a
    rra
    ldh a, [$fff0]
    rrca
    ld [hl-], a
    nop
    jr c, jr_035_6f8e

    db $10
    ret nz

    rst RST_38
    ld [$f8f8], sp
    rrca
    rrca
    ld bc, $0201
    cp $f5
    nop
    rra
    nop
    inc c
    inc bc
    db $10
    inc bc
    add c
    cp $81
    db $10
    sbc [hl]
    add b
    rst RST_28
    ldh [$ff37], a
    jr nc, jr_035_7044

    cp a
    db $db
    jr z, jr_035_6ffb

    ld l, h
    adc l
    add b
    dec sp
    db $10
    ld l, a
    rst RST_38
    nop
    cpl
    nop
    scf
    nop
    dec de
    add b
    ld [$c3f7], sp
    ld [$7dc3], sp

jr_035_7044:
    dec h
    pop bc
    ld a, $be
    ld b, c
    rst RST_28
    ld bc, $3ffe
    ret nz

    ld a, l
    dec h
    rst RST_20
    jr jr_035_706c

    sbc a
    and $f0
    rrca
    cp b
    ld b, a
    ld a, l
    ld hl, $13a8
    ldh [$ff3f], a
    rra
    or $09
    dec de
    db $e4
    inc bc
    ld a, l
    ld hl, $24c5
    db $db
    inc bc
    db $fc

jr_035_706c:
    ld b, h
    nop
    rlca
    rlca
    sub c
    jr c, jr_035_7092

    ldh [$ffbf], a
    ldh [$ffe0], a

jr_035_7077:
    cp $3e

jr_035_7079:
    ccf
    inc bc
    sub b
    ld sp, $aee0
    or e
    inc d
    rra
    nop
    pop hl
    or c
    jr c, jr_035_7077

    ld d, e
    db $10
    ld hl, sp-$01
    nop
    inc e
    nop
    call nz, $f8c0
    ld a, b

jr_035_7092:
    ld a, [hl]
    rst RST_38
    ld c, $0f
    inc bc
    rrca
    adc a
    db $e3
    inc bc
    pop de
    ccf
    add hl, hl
    cp h
    ld b, b
    jp c, Jump_035_6c24

    ld l, e
    ld [bc], a
    sub c
    ld [hl-], a
    db $fc
    sub c
    ld [hl-], a
    ld b, b
    inc de
    or e
    nop
    inc h
    inc bc
    daa
    nop
    rst RST_38
    ld h, h
    ld [bc], a
    ld b, b
    ld c, $4e
    nop
    ld b, b
    nop
    rst RST_38
    ld c, [hl]
    ld c, $6f
    ld h, b
    ld e, h
    ld b, e
    ld b, a
    ld e, b
    rst RST_38
    ret c

    add $8e
    or b
    or d
    adc h
    add b
    add b
    rst RST_38
    cp a
    cp a
    ld [$27b0], sp
    ld b, a
    jr jr_035_712e

    rst RST_38
    jr nz, jr_035_7079

    dec a
    cp h
    ld a, [hl]
    ld h, d
    ld h, [hl]
    ld b, d
    rst RST_38
    ld e, e
    ld b, c
    db $10
    dec c
    db $e4
    ldh [c], a
    jr jr_035_7102

    rst RST_38
    inc b
    dec b
    cp h
    dec a
    ld a, [hl]
    ld b, [hl]
    ld h, [hl]
    ld b, d
    rst RST_38
    jp c, $e682

    ld d, $1a
    ldh [c], a
    ld a, [$ff02]
    ld a, e
    inc bc
    ld b, c
    dec a
    ld bc, $0161

jr_035_7102:
    ld bc, $0dff
    dec c
    call z, Call_000_0501
    ldh [rDIV], a
    pop hl
    rst RST_18
    ld h, $40
    ld b, d
    nop
    ld [bc], a
    ld e, c
    ld b, b
    ld [hl], d
    ld [hl], b

jr_035_7116:
    rst RST_38
    ldh a, [c]
    ld bc, $0ce5
    ld c, $9e
    inc b
    ld e, $f7
    ld bc, $730c
    ld e, b
    jr nz, @+$03

    cp $0e
    pop af
    rst RST_38

jr_035_712a:
    db $e3
    inc e
    db $fc
    inc bc

jr_035_712e:
    rlca
    ld hl, sp-$07
    ld b, $ff
    cp $01
    rra
    ldh [$ffc3], a
    inc a
    call z, $ff33
    db $e3
    inc e
    add hl, sp
    add $8e
    ld [hl], c
    rst RST_20
    jr @-$0f

    jr nc, jr_035_7116

    adc [hl]
    ld [hl], c
    ld [hl], d
    ld b, c
    rra
    ldh [$ffe1], a
    rst RST_38
    ld e, $1e
    pop hl
    db $e3
    inc e
    rst RST_38
    nop
    ld l, l
    rst RST_30
    sub d
    jr nc, jr_035_712a

    ld l, [hl]
    db $10
    ld bc, $3cc3
    add b
    cp $ff
    nop
    ld b, b
    ld b, b
    ld e, b
    ld b, a
    ld e, a
    ld b, b
    ld e, $f1

jr_035_716c:
    pop hl
    ld e, [hl]
    ld de, $2168
    inc a
    jr nz, jr_035_716c

    ld hl, sp+$07
    rra
    rst RST_18
    ldh [rIE], a
    nop
    di
    inc c
    or [hl]
    ld b, h
    ldh [rNR30], a
    db $eb
    reti


    add e
    ld h, c
    db $10
    db $fc
    or l
    ld b, h
    cp $01
    nop
    pop bc
    rst RST_38
    ret nz

    ld c, c
    ld a, l
    ld hl, $49d0
    ld a, l
    ld hl, $400a
    ld c, $46
    rst RST_38
    ld [$064e], sp
    ld h, h
    ld b, $27
    ld bc, $ff20
    ld b, $30
    nop
    cp [hl]
    add b
    add h
    cp h
    sub b
    cp a
    or b
    and b
    and b
    ret nz

    ret nz

    ld b, b
    ld a, [de]
    ld d, b
    ld h, b
    rst RST_38
    ld h, c
    ld e, l
    ld b, c
    ld e, d
    ld b, d
    ld h, d
    ld h, d
    ld a, $ff
    inc a
    dec l
    jr nz, jr_035_71dc

    jr jr_035_71cd

    rst RST_20
    nop
    rst RST_38
    ld hl, sp-$46
    add d
    ld e, d

jr_035_71cd:
    ld b, d
    ld b, [hl]
    ld b, [hl]
    ld a, h
    rst RST_38
    inc a
    or h
    inc b
    jr jr_035_71ef

    ldh [$ffe7], a
    nop
    rst RST_38
    rra

jr_035_71dc:
    ld a, l
    ld bc, $3d21
    add hl, bc
    dec c
    dec b
    rst RST_28
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld c, d
    ld d, b
    ld b, $86
    ld [hl], d
    rst RST_38
    nop

jr_035_71ef:
    ld [bc], a
    ld [hl], b
    ld h, d
    db $10
    ld [hl], d
    ld h, b
    ld b, [hl]
    rst RST_38
    ld h, b
    db $e4
    add b
    inc b
    ld h, b
    inc c
    nop
    rlca
    rst RST_38
    ret nz

    jr c, @-$6b

    xor e
    jr z, jr_035_722e

    xor e
    dec sp
    rst RST_38
    sub b
    rst RST_00
    nop
    ret z

    scf
    nop
    rst RST_38
    ldh a, [$fffd]
    rrca
    and [hl]
    ld b, d
    ld a, a
    ld b, b
    ld h, e
    ld e, h
    ld e, c
    ld d, h
    rst RST_20
    ld e, b
    ld e, h
    ld b, b
    xor $31
    ld b, d
    ld bc, $03fc
    add d
    cp $89
    ld d, b
    ld a, [hl]
    rst RST_38
    cp [hl]
    ld b, c
    inc bc

jr_035_722e:
    nop
    ld sp, hl
    rst RST_38
    db $fc
    dec b
    ld hl, sp+$05
    adc b
    ld [hl], l
    ld h, b
    ld d, c
    rst RST_28
    ld h, b
    ld [hl], c
    nop
    ld e, a
    xor e
    ld b, b
    ld b, e
    ld e, h
    ld c, a
    rst RST_38
    ld d, b
    ld e, h
    ld b, e
    ld e, b
    ld b, a
    ld b, c
    ld e, [hl]
    ld c, a
    rst RST_38
    ld d, b
    inc bc
    db $fc
    rra
    ldh [$fff8], a
    rlca
    rst RST_00
    rst RST_38
    jr c, jr_035_7290

    rst RST_00
    pop af
    ld c, $0f
    ldh a, [$ff7c]
    rst RST_38
    add e
    ret c

    inc bc
    nop
    rst RST_20
    rst RST_38
    nop
    ld e, $7f
    pop hl
    db $fc
    inc bc
    ld hl, sp+$07
    add e
    ld a, h
    or b
    ld b, e
    rst RST_38
    ret nz

    ccf
    rra
    ldh [$fff0], a
    rrca
    jp $0f3c


    adc a
    ld [hl], b
    ld a, h
    add e
    and b
    ld c, c
    ld a, [de]
    ld d, c
    or b
    ld c, c
    ld a, l
    ld hl, $107f

jr_035_7289:
    ld b, b
    db $10
    ld b, b
    ret c

    ld b, b
    ld l, h
    daa

jr_035_7290:
    jr nz, jr_035_7289

    or $f0
    ei
    dec [hl]
    ld hl, $1037
    db $10
    ld e, e
    rst RST_38
    ld e, e
    ld l, h
    inc c
    rlca
    rlca
    ld a, c
    ld a, c
    ld a, $7c
    sub e
    db $10
    ld h, [hl]
    daa
    adc a
    adc a
    ldh a, [$fff0]
    rra
    ld a, a
    nop
    cp $68
    dec h
    pop af
    pop af
    rrca
    rrca
    ld hl, sp-$08
    inc c
    rst RST_38
    db $ec
    ld [$da08], sp
    jp c, $3036

    ldh [$ffef], a
    ldh [$ff9e], a
    adc [hl]
    ld a, h
    dec [hl]
    jr nz, jr_035_72d3

    ld [bc], a
    add hl, bc
    rst RST_38
    ld [bc], a
    dec de
    ld [bc], a
    ld [hl], $00

jr_035_72d3:
    jr nz, jr_035_72d5

jr_035_72d5:
    ld l, a
    di

jr_035_72d7:
    rrca
    rst RST_18
    sub e
    db $10
    adc $20
    inc bc
    pop hl
    ld e, $0f
    db $fd
    ldh a, [rBCPS]
    dec h
    ld b, b
    ld h, b
    ld sp, $0040
    add b
    ld [hl], b
    or h
    ld b, e
    ld a, h
    inc hl
    or h
    ld b, d
    ld [hl], a
    ld h, [hl]
    ld bc, $c580
    cpl
    jr nz, jr_035_7318

    halt
    ld h, a
    ld b, b
    ld b, b
    ld a, a
    ccf
    ld c, a
    ld hl, $2678
    or d
    ld b, d
    inc h
    call nz, $ac43
    ld h, a
    ldh a, [$ff8e]
    ld hl, $68ab
    ld a, a
    ld e, $61
    sbc e
    ld h, h
    and $e0
    ld l, c

jr_035_7318:
    ld c, a
    ld b, b
    ldh a, [$ff37]
    ld h, a
    inc de
    inc a
    jr @+$80

    rst RST_38
    inc h
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld a, [hl]
    inc h
    inc a
    sub l
    jr jr_035_73aa

    ld hl, $1bc0

jr_035_7330:
    jr nz, jr_035_736a

    add hl, hl
    jr nz, jr_035_72d7

    ld sp, $1406
    dec de
    ld [hl], b
    ldh a, [$ff35]
    add b
    ld h, c
    db $10
    rra
    ldh a, [$ff37]
    dec [hl]
    jr nz, jr_035_73a9

    db $10
    xor d
    dec de

jr_035_7348:
    ld [hl], b
    inc bc
    dec de
    ld [hl], b
    inc e
    scf
    jr nz, jr_035_7330

    dec l
    ld a, b
    nop
    ld c, b
    add hl, bc
    jr nc, jr_035_73ad

    ld [hl], e
    ld a, l
    ld hl, $2440
    nop
    ld h, d
    ld [hl], l
    jr nz, @+$2e

    ld [hl], b
    ld sp, hl
    ld b, b

jr_035_7364:
    db $10
    jr nc, @+$74

    ld [hl], l
    add b
    nop

jr_035_736a:
    ld b, d
    inc a
    nop
    ld b, h
    ld a, a
    ld a, a
    adc c
    ld [hl], h

jr_035_7372:
    inc h
    ld e, h
    ld [hl], e
    and l
    nop
    ccf
    ld bc, $6370
    inc h
    ld b, h
    ld e, h
    ld [de], a
    cpl
    nop
    ld a, a
    xor e
    ld a, b
    ld [hl-], a
    nop
    cpl
    nop
    ld hl, sp+$65
    ld [hl+], a
    db $fd
    jr jr_035_7348

    ld [hl-], a
    ret nz

    rst RST_38
    jr nz, jr_035_7372

    jr nc, jr_035_7364

    cp e
    ld h, b
    sbc a
    ld a, l
    ld hl, $c020
    inc c
    or e
    jr nz, jr_035_73e3

    rrca
    db $fc
    db $e3
    db $fc
    ld [hl], e
    call nc, Call_000_2141
    halt

jr_035_73a9:
    ld d, b

jr_035_73aa:
    ld sp, $801d

jr_035_73ad:
    rla
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    nop
    ldh [$ff1f], a
    rlca
    rst RST_38
    ld a, [$0107]
    ld a, h
    nop
    nop
    ldh [$ff1f], a
    rst RST_38
    nop
    ccf
    xor a
    ret nz

    add b
    rst RST_38
    db $fc
    rlca
    nop
    dec e
    nop
    ld bc, $ffff
    cp $00
    ldh a, [rP1]
    adc $30
    nop
    db $fc
    rst RST_38
    inc b
    ld hl, sp+$12
    pop hl
    ld h, h
    add e
    ldh [$ff1f], a
    rst RST_38
    ld h, b
    rra
    ld b, c

jr_035_73e3:
    ccf
    ld b, c
    ccf
    inc bc
    ld a, a
    rst RST_38
    rrca
    rst RST_38
    rra
    rst RST_38
    ld a, a
    rst RST_38
    ld sp, hl
    cp $d7
    ld sp, hl
    cp $f1
    ld b, e
    nop
    pop hl
    ld b, a
    nop
    pop bc
    cp $ef
    add e
    db $fc
    ret nz

    nop
    ld d, b
    rlca
    add b
    ld bc, $fd80
    nop
    ld e, a
    inc b
    inc bc
    nop
    rrca
    nop
    rra
    ld bc, $1fff
    rrca
    ccf
    nop
    nop
    ld bc, $4000
    db $fd
    ccf
    ld e, $01
    ld [hl], b
    rst RST_38
    pop hl
    cp $c3
    db $fc
    ld a, a
    nop
    nop
    add b
    ld a, a
    nop
    rst RST_38
    ccf
    dec a
    nop
    xor a
    rrca
    rst RST_38
    inc bc
    rst RST_38
    add d
    nop
    nop
    ld e, $01
    nop
    ld c, $07
    nop
    rst RST_20
    rst RST_38
    jp Boot


    sub c
    ld [bc], a
    ld b, $03
    sub d
    ld [bc], a
    and h
    sub c
    ld [bc], a
    jr jr_035_744c

    rrca

jr_035_744c:
    and l
    nop
    sbc [hl]
    dec b
    cp $17
    nop
    ld hl, sp-$21
    rst RST_38
    add c
    cp $01
    cp $5f
    nop
    ldh [rP1], a
    rst RST_38
    ld hl, sp+$00
    cp $00
    rst RST_38
    ld c, $ff
    ld e, $ff
    rst RST_38
    adc a
    ld a, a
    rra
    ccf
    ld e, $7f
    ld a, $fe
    db $e3
    nop
    inc a
    rst RST_38
    ld a, $ff
    ld a, [hl]
    rst RST_38
    jr c, @+$01

    rst RST_38
    rlca
    ld hl, sp+$06
    ld hl, sp+$0e
    ldh a, [rNR34]
    rst RST_38
    ldh [$ff38], a
    ret nz

    inc sp
    ret nz

    ld [hl], d
    add c
    db $f4
    ld sp, hl
    inc bc
    ld e, a

jr_035_748f:
    dec b
    ld e, a
    dec b
    ld b, b
    ccf
    ld l, a
    db $10
    inc bc
    rst RST_38
    nop
    ld a, $01
    ret


    ccf
    sbc a
    ld a, a
    inc e
    db $fc
    sub e
    inc bc
    sbc [hl]
    ld bc, $5fff
    rst RST_38
    ei
    rst RST_38
    ret nc

    cp [hl]
    dec e
    jr jr_035_748f

    rst RST_38
    cp a
    rst RST_38
    ld b, $1d
    ld d, $03
    rst RST_28
    db $fc
    ld [hl], b
    rst RST_38
    ret c

    dec e
    ld [bc], a
    ld b, $f8
    call nz, $d4ee
    nop
    ld [hl], $f8
    cp c
    add $00
    xor d
    db $fc
    ld [bc], a
    rst RST_38
    db $fc
    add a
    ld a, a
    add a
    ld a, a
    rlca
    ld a, a
    ld b, a
    ld a, e
    ccf
    ld c, a
    ld h, a
    db $10
    ld e, a
    ccf
    sbc [hl]
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_035_74eb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_035_78e6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_035_7e01:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_035_7ef0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_035_7fd0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
