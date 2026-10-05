; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $037", ROMX[$4000], BANK[$37]

    jr nz, jr_037_4042

    cp d

Jump_037_4003:
    ld b, [hl]
    add hl, sp
    ld b, a
    sbc $4c
    rst RST_18
    ld c, h
    ldh [rHDMA1], a
    pop hl
    ld d, c
    rst RST_30
    ld d, a
    ld hl, sp+$57
    pop de
    ld e, [hl]
    reti


    ld h, c
    xor a
    ld l, b
    and [hl]
    ld l, c
    ldh a, [rSVBK]
    pop af
    ld [hl], b
    ld [hl], e
    ld a, b
    ld de, $0b00
    add b
    dec bc
    cp $06
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    dec bc
    ld b, b
    ld [bc], a
    dec bc
    ld [$1c0c], sp
    nop
    ld [$400b], sp
    ld [bc], a
    ld a, a
    dec bc
    inc b
    ld [bc], a
    ld a, a
    dec bc
    ld b, b
    ld [bc], a
    rst RST_38

jr_037_4042:
    dec bc
    inc b
    ld [bc], a
    rst RST_38
    dec bc
    ld b, b
    ld [bc], a
    db $fc
    dec bc
    inc b
    ld [bc], a
    db $fc
    ld bc, $0b01
    cp $04
    nop
    ld h, b
    ld b, b
    dec bc
    ccf
    inc b
    nop
    ld h, a
    ld [hl], a
    ld [hl], a
    dec bc
    ld a, a
    inc b
    adc $ee
    cp $fe
    adc $86
    add $ee
    dec bc
    ld a, a
    ld [bc], a
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    nop
    dec bc
    cp $06
    ld bc, $5f4d
    dec bc
    ld a, a
    dec b
    or $e6
    or $0b
    cp $02
    db $fd
    cp $7f
    ld a, a
    rra
    rrca
    rrca
    rra
    ld a, a
    nop
    dec bc
    cp $06
    ld bc, $3f1f
    dec bc
    ld a, a
    dec b
    adc $0b
    cp $06
    dec bc
    ld a, a
    ld b, $00
    dec bc
    cp $06
    nop
    ld b, c
    ld l, e
    ld l, a
    dec bc
    ld a, a
    inc b
    dec bc
    cp $06
    ld bc, $7f0b
    ld b, $00
    adc $ce
    dec bc
    cp $04
    ld bc, $5f4d
    dec bc
    ld a, a
    dec b
    ld [hl], b
    ld a, b
    dec bc
    ld a, c
    ld [bc], a
    ld a, l
    ld a, a
    ld a, a
    dec bc
    cp $07
    dec bc
    ld a, a
    ld b, $00
    dec bc
    cp $06
    ld bc, $7f0b
    inc bc
    sbc a
    ccf
    ld a, a
    ld a, a
    dec bc
    cp $07
    dec bc
    ld a, a
    ld b, $00
    dec bc
    ld a, a
    dec b

jr_037_40db:
    ld a, [hl]
    ld a, [hl]
    dec bc
    cp $03
    ld a, $1e
    ld c, $0e
    dec bc
    ld a, a
    ld [bc], a
    ld h, a

Call_037_40e8:
    ld h, e
    ld b, e
    ld l, a
    nop
    ld e, $0b
    cp $05
    ld bc, $400b
    ld [bc], a
    rst RST_38
    dec bc
    nop
    ld [bc], a
    db $fc
    cp $f8
    add sp, -$2f
    add h
    inc c
    ld [bc], a
    dec b
    ld b, h
    ld b, $c1
    add [hl]
    inc a
    ld h, c
    ld [bc], a
    ld d, d
    ld l, [hl]
    ld h, d
    add b
    inc d
    xor c
    ld [de], a
    ld h, h
    ld e, d
    adc a
    ld b, l
    ld bc, $2448
    ld e, d
    ld c, b
    and d
    dec bc
    ld b, b
    ld [bc], a
    rst RST_38
    dec bc
    inc b
    ld [bc], a
    ccf
    dec bc
    ld b, b
    ld [bc], a
    add sp, $0b
    nop
    ld [bc], a
    ld hl, sp+$5a
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
    jr c, jr_037_40db

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
    dec bc
    nop
    ld [bc], a
    rrca
    dec bc
    inc b
    ld [bc], a
    rrca
    dec bc
    ld b, b
    ld [bc], a
    db $f4
    ld bc, $0303
    ei
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
    dec bc
    nop
    ld [bc], a
    ccf
    dec bc
    inc b
    ld [bc], a
    rra
    ld b, e
    ld b, c
    ld b, c
    db $fd
    dec bc
    inc b
    ld [bc], a
    rst RST_38
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
    ld e, a
    rst RST_10
    ld b, b
    dec bc
    nop
    ld [bc], a
    rra
    dec bc
    inc b
    ld [bc], a
    ccf
    ld [$0f03], sp
    rra
    inc e
    dec sp
    ld [hl], h
    add sp, $03
    ld a, [bc]
    dec e
    ld [de], a
    dec d
    inc l
    ld l, $25

jr_037_41c1:
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
    call z, Call_037_74ea
    sub h
    ld b, b
    sub b
    ld b, b
    ret nc

    dec bc
    nop
    ld [bc], a
    rra
    dec bc
    inc b
    ld [bc], a
    rlca
    ld a, b
    jr c, jr_037_4215

    inc sp
    inc sp
    ld [hl], a
    ld l, h
    ret nc

    ret nc

    and b
    add b
    ld b, b
    nop
    inc bc
    rrca
    ld a, a
    dec bc
    ld b, b
    inc bc
    nop
    dec bc
    jr nc, jr_037_41fa

    rrca
    dec bc

jr_037_41fa:
    nop
    ld b, $fb
    db $fc
    rrca
    dec bc
    nop
    inc b
    daa
    ld d, b
    add h
    jr jr_037_41c1

    ld e, d
    dec e
    ld hl, $e0e0
    ret nz

    and b
    and b
    add b
    add b
    nop
    rlca
    inc bc
    inc bc

jr_037_4215:
    nop
    dec bc
    ld bc, $0002

jr_037_421a:
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, d
    ld a, c
    ld a, b
    ret nz

    add b
    dec bc
    nop
    ld [$0905], sp
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
    rlca
    rra
    ld e, $0b
    ld c, $02
    inc c
    inc c
    inc b
    dec bc
    nop
    db $10
    ldh a, [rIF]
    dec bc
    nop
    ld [$f4c0], sp
    add sp, $70
    dec bc
    ld bc, $0006
    nop
    ld a, [de]
    ld [de], a
    ld [hl], $36
    ld h, h
    ld l, b
    ld l, h
    dec bc
    nop
    ld b, $01
    inc h
    ld de, $1d1d
    jr c, jr_037_429b

    ld d, $d2
    ld a, b
    ld [bc], a
    ld a, d
    ld b, d
    ld c, b
    ld a, c
    ld bc, $10b5
    jr nz, @-$1e

    ldh [rSVBK], a
    jr nc, jr_037_421a

    jr nz, jr_037_4287

    nop
    cpl
    ld bc, $0181
    ld bc, $1181
    add hl, de
    sbc c
    ld c, b

jr_037_4287:
    ld d, h
    ld c, $14
    ld [$181c], sp
    inc b
    inc bc
    inc bc
    rlca
    rlca
    inc bc
    ld bc, $0f07
    add sp, -$1a
    ldh a, [c]
    ld hl, sp-$04

jr_037_429b:
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
    sbc b
    inc a
    ld a, $3e
    ld a, [hl]
    cp $c4
    dec bc
    nop
    cpl
    dec e
    inc e
    sbc b
    inc d
    ld [de], a
    add d
    ld [de], a
    ld a, [bc]
    dec bc
    inc b
    inc bc
    ld c, $0f
    rlca
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
    jr nc, jr_037_42e7

    nop
    inc [hl]
    ld a, [bc]
    ld l, b
    ret


    ld [$000b], sp
    inc bc
    rra
    dec c

jr_037_42e7:
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

    dec bc
    nop
    ld [de], a
    ld sp, $0b21
    ld h, c
    inc bc
    ldh a, [$ff0b]
    nop
    ld [$3c0b], sp
    ld [bc], a
    dec a
    dec bc
    inc a
    ld [bc], a
    dec a
    dec bc
    inc a
    ld [bc], a
    dec a
    inc e
    ld a, [hl]
    nop
    dec a
    dec bc
    ld a, a
    ld [bc], a
    rst RST_38
    dec bc
    ld a, a
    ld [bc], a
    dec bc
    rst RST_38
    ld [$fc0b], sp
    ld [bc], a
    cp $0b
    db $fc
    ld [bc], a
    dec bc
    cp $02
    inc a
    jr @+$0a

    ld [$001c], sp
    rra
    ccf
    rlca
    inc bc
    ld bc, $0301
    nop
    inc h
    inc d
    db $10
    jr @+$0d

    ld [$0002], sp
    ld c, c
    dec l
    add hl, de
    add hl, de
    add hl, bc
    ld h, c
    ld sp, $0b19
    nop
    inc bc
    ld [$000b], sp
    ld [bc], a
    dec bc
    add hl, bc
    inc b
    add hl, de
    ld a, c
    nop
    ld c, l
    ld d, a
    inc sp
    ld [hl-], a
    jr nc, jr_037_437b

    jr nz, jr_037_435d

jr_037_435d:
    dec d
    dec h
    ld sp, $1919
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec bc
    nop
    ld [bc], a
    ld b, b
    ret nz

    ld h, b
    nop
    nop
    add hl, bc
    add hl, de
    add hl, de
    add hl, bc
    add hl, de
    dec e
    ld a, l
    nop
    db $10
    jr nz, @+$62

    dec bc
    ld b, b
    inc b

jr_037_437b:
    ld c, c
    dec bc
    ld sp, $1103
    ld de, $4031
    ld b, b
    dec bc
    ld h, b
    ld [bc], a
    ld [hl], b
    ld a, b
    nop
    ld sp, $0b21
    ld h, c
    inc bc
    ldh a, [rP1]
    ld b, c
    ld a, [hl+]
    ld h, $36
    ld [hl-], a
    ld [de], a
    ld [de], a
    ld a, [de]
    dec bc
    ld c, c
    inc b
    reti


    reti


    nop
    dec bc
    ld [$1803], sp
    inc e
    ld a, $00
    ld bc, $3121
    ld de, $3111
    ld a, c
    nop
    ld c, l
    ld d, a
    inc sp
    ld [hl-], a
    ld [hl-], a
    dec bc
    jr nz, @+$04

    ld [hl], b
    jr nc, jr_037_43ed

    inc h
    ld h, $22

jr_037_43bc:
    jr nc, @+$32

    dec a
    dec l
    dec l
    dec bc
    dec d
    inc b
    jr nc, @+$12

    db $10
    dec bc
    jr jr_037_43cc

    inc a
    nop

jr_037_43cc:
    dec bc
    dec d
    inc b
    dec c
    ccf
    nop
    rlca
    inc bc
    inc bc
    ld b, $06
    call nz, Call_000_0c0c
    ccf
    rra
    rrca
    dec b
    dec bc
    dec c
    inc bc
    ld b, b
    ld b, b
    dec bc
    ld h, b
    ld [bc], a
    ld [hl], b
    ld a, b
    nop
    dec bc
    inc bc
    inc bc
    dec bc

jr_037_43ed:
    ld bc, $8d03
    adc l
    dec bc
    dec b
    inc bc
    push bc
    push bc
    dec bc
    ld bc, $0302
    inc de
    dec sp
    rla
    nop
    push hl
    dec bc
    add l
    ld [bc], a
    dec bc
    adc l
    ld [bc], a
    nop
    dec bc
    rst RST_38
    inc bc
    ld a, [$fafd]
    ld sp, hl
    dec bc
    nop
    inc b
    ld bc, $1a2c
    nop
    ld bc, $381e
    ld b, c
    ld [de], a
    jr nc, jr_037_43bc

    ld bc, $7f80
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
    inc b
    ld a, a
    ld a, a
    ccf
    db $fc
    ld a, [$fc0b]
    ld [bc], a
    ld sp, hl
    ld a, [$04f8]
    jr nz, jr_037_4484

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
    ccf
    ld a, a
    dec bc
    ccf
    ld [bc], a
    db $fd
    ld hl, sp-$06
    db $f4
    ldh a, [$ff0b]
    ld hl, sp+$02
    ld d, d
    jr nz, jr_037_4494

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
    ld b, [hl]
    adc $ff
    cp a
    ld b, c

jr_037_4484:
    nop
    ld e, $06
    xor e
    ld e, a
    ccf
    dec bc
    ld a, a
    ld b, $f8
    ld a, [$fcfa]
    db $fd
    cp $ff

jr_037_4494:
    rst RST_38
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
    xor [hl]
    ld l, $be
    dec bc
    ld a, a
    inc b
    ccf
    rst RST_38
    ccf
    inc e
    db $10
    dec bc
    nop
    dec b
    jr nc, jr_037_44c1

    nop

jr_037_44c1:
    inc c
    ld c, $1f

jr_037_44c4:
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
    jr jr_037_44c4

    ldh a, [$ffc0]
    rst RST_38
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rlca
    cp $fc
    db $fc
    ld hl, sp-$10
    ldh a, [$ffe0]
    ret nz

    dec bc
    nop
    rlca
    ld e, $0b
    nop
    ld [bc], a
    inc b
    or [hl]
    add a
    add a
    call nz, Call_037_7ef0
    ccf
    inc bc
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

jr_037_4514:
    rra
    dec de
    ld sp, $6030
    dec bc
    nop
    inc bc
    add b
    dec bc
    ret nz

    ld [bc], a
    jr jr_037_453a

    dec bc
    db $10
    inc bc
    jr @+$1a

    nop
    inc bc
    rlca
    ld c, $1c
    add hl, de
    ld sp, $f133
    ret nz

    sbc b
    jr nc, jr_037_4514

    ret nz

    ret nz

    and b
    add e
    ld b, c
    dec bc

jr_037_453a:
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

jr_037_4560:
    inc d
    ld e, $8f
    rst RST_08
    rst RST_20
    di
    nop
    ldh a, [rIF]
    nop
    add a
    pop bc
    ldh a, [$fffc]
    ld a, a
    inc e
    ret nz

    inc a
    nop
    ld bc, $0202
    rst RST_38
    ld a, a
    cp a
    and a
    rlca
    rrca
    rst RST_08
    add b
    nop
    ld a, b
    dec bc
    ld [hl], b
    ld [bc], a
    dec bc
    ld h, b
    ld [bc], a
    ld h, a
    ld c, l
    ld c, e
    ld d, a
    sub a
    adc a
    adc [hl]
    sbc l
    jr nz, jr_037_4560

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
    jr nz, jr_037_45aa

    nop
    inc b
    ld bc, $0001
    ld e, $3f
    ld a, a
    ld a, a
    dec bc
    rst RST_38

jr_037_45aa:
    inc bc
    ret nc

    ld e, b
    sbc b
    adc c
    ret


    dec bc
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
    adc $e6
    di
    ei
    dec sp
    dec e
    dec c
    dec b
    jr nz, jr_037_45e7

    dec c
    inc c
    dec b
    dec b
    nop
    ld c, a
    adc a
    adc a
    ld e, a
    adc a
    add a
    ld b, e
    add e
    ld b, b
    ld b, b
    dec bc
    nop
    inc b
    ld b, b
    db $db
    db $db
    rst RST_30
    rst RST_30
    or e
    cp c

jr_037_45e7:
    or a
    xor a
    ldh [$ffe0], a
    ldh a, [$fff8]
    db $fc
    cp $bf
    rst RST_08
    jr nz, jr_037_4613

    jr nc, jr_037_4600

    nop
    dec b
    jr jr_037_4635

    ld a, $3e
    ld a, [hl]
    cp $c4
    rst RST_38
    ld a, a

jr_037_4600:
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

jr_037_4613:
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
    nop
    dec d
    ld [$8914], sp
    add h
    adc b
    call nz, $4081
    add b
    add h
    ld b, d
    add d
    sub d
    ld a, [bc]

jr_037_4635:
    ld h, b
    ld [hl], b
    ld [hl], b
    or b
    ld b, b
    and b
    ret nz

    add b
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
    dec bc
    ret nz

jr_037_4685:
    ld [bc], a
    pop bc
    pop bc
    ldh [$ffe0], a
    ld hl, sp+$0a
    ld a, b
    reti


    sbc b
    add sp, -$40
    nop
    nop
    rra
    ld l, l
    ld l, $2f
    daa
    inc sp
    jr nc, jr_037_46a3

    pop hl
    db $fc
    rst RST_38
    ccf
    rst RST_00
    ld sp, hl
    cp $3f

jr_037_46a3:
    db $ec
    ld e, b
    add b
    ld [$e8f4], a
    nop
    xor b
    inc bc
    ld b, $06
    inc b
    dec bc
    nop
    inc bc
    rra
    ld e, $1c
    inc e
    ld c, [hl]
    ld c, a
    ld l, a
    scf
    ld de, $0680
    dec c
    ld b, $00
    add hl, hl
    ld [bc], a
    inc c
    jr nc, jr_037_4685

    ld b, $00
    add hl, bc
    ld bc, $0c02
    db $10
    ld h, b
    add b
    nop
    nop
    add b
    ld b, $00
    ld c, $06
    inc b
    ld [bc], a
    ld b, $08
    dec b
    ld b, $10
    dec b
    ld b, $20
    dec b
    ld b, $40
    ld [bc], a
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
    ld b, $07
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
    ld b, $c6
    ld [bc], a
    rst RST_00
    ld b, $c3
    inc bc
    ld a, b
    ld a, h
    ld a, h
    ld b, $3c
    inc bc
    inc e
    cp $fe
    db $fc
    pop af
    jp Jump_000_3f0f


    ld b, $ff
    ld [$fcfe], sp
    pop af
    db $e3
    adc a
    rra
    ld a, a
    rst RST_38
    ld b, $00
    inc bc
    add b
    ldh [$fffe], a
    rst RST_38
    nop
    ld bc, $0301
    inc bc
    rlca
    ld a, a
    rst RST_38
    ld a, c
    ld a, c
    ld sp, hl
    ld b, $f3
    dec b
    ld b, $e7
    dec b
    ld b, $cf
    dec b
    ld b, $9f
    ld [bc], a
    dec e
    nop
    ld a, d
    rst RST_38
    add b
    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    db $fc
    nop
    rst RST_38
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp-$10
    nop
    rst RST_38
    add b
    nop
    ccf
    ccf
    cp a
    cp a
    ld c, a
    ld c, a
    rst RST_38
    ld [hl], $36

jr_037_475a:
    add hl, bc
    ld c, c
    rlca
    ld h, a
    ldh [c], a
    ld [bc], a
    rst RST_38
    jr @+$1a

    add sp, -$18
    ldh a, [$fff0]
    add b
    add b
    rst RST_38
    ld a, a
    ld a, a
    and b
    and b
    jr z, @+$29

    cpl
    jr nz, jr_037_475a

    nop
    nop
    rst RST_38
    ld [hl-], a
    nop
    jr nc, @+$03

    ld bc, $0101
    rst RST_30
    dec a
    dec a
    ld bc, $0730
    nop
    nop
    ld [$fb74], sp
    ld a, h
    nop
    jr nc, jr_037_4793

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [$fffa]
    ld [bc], a

jr_037_4793:
    nop
    ld a, $c0
    adc $f0
    or $fa
    rst RST_38
    ld hl, sp+$3c
    inc a
    sbc $de
    ld l, $2e
    rla
    rst RST_38
    rla
    nop
    ld a, a
    nop
    ld a, [hl]
    ld bc, $017c
    rst RST_38
    ld a, h
    nop
    ld a, b
    nop
    ld a, b
    inc bc
    ld [hl], b
    ld bc, $00ff
    ld bc, $00fe
    inc a
    inc bc
    nop
    jr nc, @+$01

    nop
    rlca
    rlca
    cp a
    jr nc, jr_037_4824

    nop
    ld e, a
    cp $4f
    nop
    nop
    rrca
    nop
    ldh [rIF], a
    rrca
    ldh a, [$fffb]
    rst RST_38
    nop
    sbc c
    ld bc, $00f0
    ld [$a400], sp
    rst RST_28
    jr @+$1c

    ldh [$ffed], a
    sbc [hl]
    nop
    rst RST_38
    nop

jr_037_47e4:
    ld hl, sp-$41
    rlca
    nop
    nop
    jr jr_037_47eb

jr_037_47eb:
    db $10
    or d
    ld [bc], a

jr_037_47ee:
    sub b
    rst RST_38
    nop
    ld l, e
    db $10
    and b
    cp e
    nop
    nop
    jr nz, jr_037_4805

    ret nz

    ld b, $35
    ld bc, $0000
    ld a, [hl]
    nop
    ret nc

    inc b
    rlc e

jr_037_4805:
    rst RST_18
    ld b, $37
    add b
    ld a, a
    nop
    ld [hl], b
    nop
    nop
    ld [bc], a
    ldh a, [rTIMA]
    add b
    nop
    rst RST_38
    nop
    cp $00
    add b
    ld [hl], b
    add b
    ld h, c
    add b
    rst RST_38
    ld h, c
    jp RST_00


    jp $c700


jr_037_4824:
    nop
    rst RST_38
    add a
    add b

jr_037_4828:
    nop
    add d
    ld h, d
    add [hl]
    ld h, [hl]
    add h
    rst RST_38
    ld h, l
    add h
    ld h, l
    inc b
    push bc
    inc c
    adc l
    ld [$89ff], sp
    ld [$2008], sp
    cpl
    jr nz, jr_037_47ee

    jr nz, jr_037_4828

    xor b
    jr nz, jr_037_47e4

    ld h, $10
    ld a, [hl+]
    ld [de], a
    add hl, bc
    dec [hl]
    ld bc, $1559
    ld [hl-], a
    db $10
    ld [hl], $16
    nop
    ld a, h
    ld b, b
    ld de, $4b7c
    nop
    rst RST_38
    ld [$0834], sp
    inc d
    nop
    nop
    add d
    ld a, d
    ld a, $50
    db $10
    ld b, d
    jp nz, Jump_000_023a

    add d
    ld e, b
    db $10
    ld e, d
    nop
    cp a
    dec bc
    dec bc
    dec b
    add l
    inc b
    add h
    ld e, d
    nop
    ld b, d
    rst RST_38
    ld [bc], a
    ld [hl+], a
    ld bc, $0121
    ld bc, $7002
    cp a
    ld bc, $0171
    ld [hl], b
    ld [bc], a
    ld a, b
    ld [hl], d
    db $10
    ld h, b
    rst RST_38
    ld [bc], a
    ld b, b
    ld bc, $0041
    and b
    rlca
    nop
    rst RST_38
    sbc e
    sbc b
    dec l
    cp l
    jr z, @+$40

    and b
    xor [hl]
    sbc a
    jr nz, @-$52

    nop
    add hl, de
    rrca
    sbc d
    ld [bc], a
    inc [hl]
    ld bc, $f880
    db $ec
    ld bc, $0034
    sub d
    dec d
    ld a, a
    ld a, a
    nop
    add b
    rlca
    rst RST_38
    rst RST_20
    ret c

    dec b
    db $dd
    nop
    ret c

    ld [bc], a
    ld a, [$d8bf]
    ld [bc], a
    nop
    db $dd
    ret nz

    dec e
    cp c
    stop
    ld h, a
    rst RST_38
    ldh [$ff1f], a
    sub h
    inc de
    sbc c
    inc bc
    nop
    rst RST_38
    sub a
    nop
    rst RST_30
    rrca
    ldh a, [$fff0]
    ret z

    ld d, $bf
    ld e, $a1
    ccf
    rr [hl]
    ld b, c
    ccf
    nop
    cp a
    jp hl


    ld [de], a
    sbc d
    ld bc, $00fe
    dec d
    cp $fb
    nop
    rst RST_38
    db $fd
    nop
    ld hl, sp-$2f
    ld bc, $05df
    rlc e
    rst RST_38
    rlca
    add b
    rlca
    add b
    inc bc
    adc b
    inc bc
    cp h
    cp e
    ld bc, $9c3e
    ld de, $fe00
    ld de, $2420
    add hl, de
    cp a
    cp $19
    ld a, [hl]
    add hl, sp
    ld a, $3d
    ret nc

jr_037_4912:
    nop
    ld [bc], a
    rst RST_38
    ld bc, $2001
    ld hl, $4240
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
    jr c, jr_037_49a7

    rrca
    ld [hl], b

jr_037_4932:
    ld e, [hl]
    ret


    ld bc, $7fff
    add b
    sbc l
    ld bc, $c0fd
    rst RST_18
    inc bc
    ld hl, sp+$01
    db $fc
    ldh [rNR34], a
    ldh a, [rIE]
    ld c, $78
    rlca
    inc e
    inc bc
    ld c, $01
    ld b, $f9
    ld bc, $10bc
    ld [hl], c
    ld [hl+], a
    ld e, b
    ld [bc], a
    ld e, d
    nop
    ld a, [de]
    rlca
    add b

jr_037_495a:
    dec e
    ret nz

    and b
    inc d
    add l
    cpl
    ret


    inc d
    ld [$a013], a
    daa
    rst RST_38
    ldh a, [rTAC]
    ldh [rIF], a
    ret nz

    rra
    ret nz

    rra
    sbc a
    add c
    ld a, $83
    inc a
    add a
    ld c, e
    jr nz, jr_037_4912

    ld bc, $e11f
    ldh [rRP], a
    inc hl
    sbc d
    db $10
    db $fc
    ld bc, $10c1
    ld sp, hl
    ld b, $3f
    cp $92
    nop
    rlca
    nop
    inc bc
    nop
    pop af
    ld bc, $ff79
    add hl, de
    cp h
    jr c, jr_037_4932

    jr jr_037_495a

    ld [bc], a
    jp c, $027f

    ld [$e602], a
    ld b, $20
    sbc [hl]
    ldh a, [rNR41]
    rst RST_20
    sbc a

jr_037_49a6:
    db $10

jr_037_49a7:
    rst RST_08
    or $25
    ld [hl], b
    nop
    ld a, a
    inc a
    add e
    rst RST_00
    cp l
    inc a
    add e
    adc a
    ld bc, $211c
    and b
    inc d
    ldh a, [rIF]
    rst RST_38
    inc c
    inc bc
    ld [bc], a
    pop hl
    ld bc, $c0f8
    nop
    rst RST_28
    pop bc
    rra
    pop hl
    rrca
    inc h
    inc sp
    pop af
    rlca
    pop hl
    rst RST_38
    rlca
    ld d, b
    ld e, b
    ld d, $5e
    sub e
    sbc e

jr_037_49d6:
    db $10
    rst RST_00
    dec de
    nop
    rla
    db $dd
    jr nz, jr_037_4a2d

    nop
    ld b, c
    ld de, $80b8
    sbc a
    jr jr_037_49a6

    db $10
    ret nz

    jr nc, @-$32

    ld [hl+], a
    sub b
    ld [bc], a
    jr nc, @+$01

    rrca
    ld c, a
    rra
    ld e, a
    rra
    cp a
    rrca
    cp a
    rst RST_30
    inc bc
    or a
    inc bc
    db $dd
    jr nz, jr_037_49ff

    ret nz

jr_037_49ff:
    ld bc, $ff20
    nop
    and b
    add b
    ret nc

    add b
    ret nc

    nop
    ret nc

    cp a
    dec b
    ldh [$ff80], a
    ld [hl], b
    ret nz

    jr c, @+$66

    ld hl, $29fc
    inc bc
    jp z, Jump_000_0714

    inc hl
    rst RST_38
    nop
    ld sp, $7fbf
    add hl, sp
    sub h
    ld [de], a
    ld hl, sp-$12
    db $10
    call $9324
    inc de
    ld c, $70
    inc c
    ld [hl], b

jr_037_4a2d:
    inc c
    rst RST_38
    ldh a, [rNR32]
    ldh [rNR23], a

jr_037_4a33:
    ld h, b
    jr jr_037_49d6

    jr nc, jr_037_4a33

    add b
    or b
    adc a
    ld bc, $0007
    jr jr_037_4a47

    daa
    rst RST_38
    rrca

jr_037_4a43:
    cpl

jr_037_4a44:
    rrca
    ld e, a
    rlca

jr_037_4a47:
    ld e, a
    ld bc, $fe5b
    ld a, [hl]
    nop
    add b
    nop
    ld h, b
    add b
    sub b
    add b
    ret nc

    rst RST_38
    ret nz

    add sp, -$40
    add sp, -$80
    add sp, -$14
    ld c, $fd
    ldh [$ffe1], a
    jr nc, jr_037_4a43

    dec c
    di
    inc bc
    rst RST_30
    rlca
    rst RST_38
    db $e3
    inc bc
    ld bc, $1001
    rst RST_08
    ld [$36e7], sp
    ldh a, [c]
    scf
    inc b
    di
    cp $37
    ld [bc], a
    ld sp, hl
    ld a, [bc]
    ld b, c
    adc l
    ld l, $3a
    sbc b
    ld de, $5980
    jr nz, jr_037_4a44

    nop
    ldh [$ffa6], a
    ld [hl-], a
    jr nc, jr_037_4ad4

    rst RST_38
    ld hl, sp-$08
    nop
    and e
    nop
    ld b, c
    nop
    ld b, b
    ld a, [hl-]
    add l
    nop
    rrca
    rst RST_18
    inc b
    ret nc

    nop
    and b
    ret nz

    nop
    ld e, d
    inc h
    cp d
    db $ec

jr_037_4aa2:
    nop
    inc bc
    ld h, b
    ld b, d
    ld [bc], a
    ld a, a
    ld b, $68
    ld b, b

jr_037_4aab:
    rra
    cp $a8
    ld de, $7a7f
    ld a, a

jr_037_4ab2:
    ld [hl], d
    ld a, a
    ld e, d
    ld a, a
    rst RST_38
    ld c, d
    ccf
    ld a, [bc]
    rrca
    ld a, [bc]
    adc a
    ld l, d
    cp $c7
    db $fd
    cp $7d
    jr z, jr_037_4ae5

    daa
    ld [hl+], a
    jr nz, @+$23

    ld a, a
    rrca
    adc $60
    ld b, b
    ld b, $7f
    rlca
    sub [hl]
    ld b, d
    ld h, c

jr_037_4ad4:
    ld b, b
    cp $1f
    rst RST_38
    cp $9f
    cp $0d
    ld e, $0d
    ld c, $89
    rst RST_38
    ld c, $e9
    ld c, $e9

jr_037_4ae5:
    cp [hl]
    ld c, c
    ld a, a
    db $10
    ld [$40b0], a
    jr nc, jr_037_4aa2

    ld b, d
    jr nz, jr_037_4aab

    ld b, b

jr_037_4af2:
    jr nc, jr_037_4af2

    ld [hl], c
    ei
    cp $31
    jp nz, Jump_000_2148

    ld a, a
    inc e
    ld a, a
    inc c
    ldh a, [c]
    jp nc, Jump_000_0844

    jp nc, $8241

    ld b, b
    ld l, l
    db $fd
    inc l
    cp $77
    dec l
    cp $25
    add sp, $44
    dec a
    cp $39
    inc h
    inc h
    rst RST_18

jr_037_4b17:
    add hl, sp
    cp $29
    cp $29
    nop

jr_037_4b1d:
    ld sp, $3f40
    cp a
    jr nc, jr_037_4ab2

    inc c
    jp $f003


    ld [$ff00], sp
    db $fd
    add b
    inc bc
    ld d, d
    ld [$06c7], sp
    pop af
    ld bc, $4af8
    and [hl]
    ld [hl-], a
    ld d, c
    ret nz

    ld [bc], a
    jr jr_037_4b17

    jr nz, jr_037_4b1d

    inc bc
    add sp, $50
    ld b, b
    rst RST_30
    stop
    ld h, b
    sbc c
    ld de, $0707
    rra
    rra
    jp nz, $2601

    ld bc, $20db
    sbc c
    nop
    nop
    nop
    ld d, c
    ld d, b
    rst RST_38
    nop
    rst RST_38
    ld [$00f7], sp
    db $e3
    inc e
    call c, $1ede
    rst RST_38
    cp a
    sbc a
    cp a
    adc l
    sbc a
    add h
    sbc a
    add h
    rst RST_28
    rrca
    inc b
    rrca
    inc c
    ld l, d
    ld d, b
    ld [$7187], sp
    cp a
    adc a
    ld c, c
    ccf
    add hl, bc
    ld a, a
    ld c, c
    halt
    ld d, b
    ld a, e
    cp [hl]
    xor d
    stop
    or $31
    or $39
    jp nz, $b942

    ld [hl], $88
    ld d, b
    ld sp, hl
    ld bc, $4e5f
    cp $09
    and b
    ld d, h
    adc c
    ld b, c
    cp $3e
    nop
    ld a, a
    db $10
    ld [hl], a
    db $10
    ld h, e
    nop
    ld b, e
    ld a, a
    jr jr_037_4c08

    jr @+$75

jr_037_4ba7:
    jr jr_037_4c28

    jr c, jr_037_4ba7

    nop
    db $dd
    ld hl, $56c0
    ld h, c
    cp $71
    adc [hl]
    ld d, b
    inc c
    ld h, a
    rst RST_18
    inc b
    ld h, a
    inc d
    ld a, a
    inc b
    sub $50
    inc c
    ld a, a
    jp hl


    ld e, $fc
    nop
    jp hl


    ld b, e
    ld h, l
    and $50
    ld l, l
    cp $ff
    xor a
    ld bc, $fe00
    ld c, c
    ldh a, [$ff50]
    ld c, l
    db $f4
    ld d, b
    ld c, c
    ld [hl], d
    ret nz

    ld b, b
    db $fd
    adc [hl]
    ld d, b
    pop de
    ld b, c
    inc e
    ld a, a
    jr @-$24

    ld b, b
    add h
    add hl, bc
    ld h, d
    ret nz

    ld b, b
    add hl, sp
    jr z, jr_037_4c0d

    jp $2143


    ld hl, $4da1
    ld a, $f0
    inc b
    ld h, d
    dec [hl]
    ld h, c
    add hl, bc
    ld h, e
    ld sp, $0c61
    ld a, a
    inc b
    ld a, h
    ccf
    inc c
    ld a, b
    ld a, [bc]
    ld a, h
    rlca
    ld a, [hl]

jr_037_4c08:
    ld bc, $7023
    ld b, b
    or l

jr_037_4c0d:
    ld b, b
    ld e, b
    ld h, e
    ld b, c
    and d
    inc sp
    cp $fe
    ld e, h
    ld de, $ff7a
    ld a, [$fafa]
    ld c, l
    ld b, e
    ld e, a
    ld b, e
    ld e, e
    rst RST_38
    ld b, a
    ld d, a
    ld c, a
    ld e, a
    ld c, a
    ld d, b

jr_037_4c28:
    ld b, b
    ld b, b
    cp $70
    ld b, b
    or $fa
    xor $f2
    sbc $e2
    cp [hl]
    ei
    jp nz, $5b46

    ld de, $fafe
    cp $40
    ld e, a
    rst RST_38
    ld b, b
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    ld b, c
    ld c, a
    ld b, e
    rst RST_38
    ld c, a
    ld b, e
    ld b, l
    ld b, e
    ld b, [hl]
    ld b, c
    ld [bc], a
    cp $ff
    ld [bc], a
    ld b, $f2
    ld b, $ba
    add $da
    and $cf
    ld [$faf6], a
    or $8e
    ld h, b
    ld e, b
    ld h, c
    ld c, a
    ld b, b
    ld sp, hl
    ld e, a
    xor d
    db $10
    db $eb
    nop
    nop
    nop
    ld a, d
    cp $3a
    pop bc
    cp $a0
    ld h, b
    ld h, l
    ld h, b
    db $fd
    nop
    add hl, bc
    inc sp
    ld bc, $7f30
    nop
    jp Jump_037_7708


    ret c

    ld h, c
    xor e
    db $10
    ld d, c
    ld d, [hl]
    add sp, $61
    rst RST_38
    nop
    ld a, e
    add d
    ld a, [hl]
    ldh a, [$ff61]
    db $fc
    ld [bc], a
    ld a, [bc]
    or $f8
    ld h, c
    di
    db $fc
    ld [bc], a
    ld [$0362], sp
    ld h, c
    inc e
    ld a, a
    ld e, $7f
    add hl, hl
    ld a, $fc
    nop
    ld hl, $3125
    ret nz

    ld b, b
    ld a, l
    xor $50
    and c
    ld e, l
    sub h
    add hl, bc
    ld h, e
    db $d3
    ld b, c
    inc e
    inc c
    ld [hl], d
    dec a
    jr z, jr_037_4cd9

    and c
    ld d, d
    ld a, [hl]
    add a
    add hl, bc
    ld a, [hl]
    ld bc, $624e
    db $d3
    ld l, e
    ld h, $00
    db $e4
    ld l, c
    add b
    pop bc
    add b
    ldh a, [c]
    ld l, e
    rst RST_08
    nop
    ret z

    ld h, d
    add h
    ld [hl], e
    adc a
    ld bc, $3f40
    dec de
    ccf

jr_037_4cd9:
    nop
    sub h
    ld [hl], l
    nop
    nop
    rst RST_38
    dec e
    nop
    ld [hl], b
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

jr_037_4cf2:
    rst RST_38
    rst RST_38
    db $db
    add b
    ld a, a
    db $10
    dec bc
    inc a
    ei
    jr nz, @+$09

    ld a, [hl]
    db $fd
    rst RST_28
    ld a, $c1
    rrca
    cp $30
    inc b
    rst RST_38
    rlca
    rst RST_38

jr_037_4d09:
    cp a
    inc bc
    rst RST_38
    ld bc, $1efe
    db $fd
    ld b, b
    inc bc
    cp [hl]
    rst RST_38
    ld a, l
    db $fc
    ei
    ld hl, sp-$09
    ldh a, [rIF]
    ldh a, [$ffb5]
    rst RST_28
    ld d, b
    dec b
    rst RST_38
    ld e, d
    nop
    ld a, a
    add b
    jr nc, jr_037_4d2c

    rst RST_08
    ld a, a
    cp [hl]
    rst RST_08
    cp [hl]

jr_037_4d2c:
    rst RST_18
    cp a
    rst RST_08
    jr nc, jr_037_4d51

    dec b
    rst RST_38
    ld a, $fd
    rra
    rst RST_38
    adc a
    ld a, a
    add a
    ld a, b
    rst RST_28
    inc bc
    rst RST_38
    ld a, e
    rst RST_30
    add d
    ld bc, $f7fb
    di
    rst RST_38
    rst RST_28
    db $e3
    rst RST_18
    pop bc
    ld a, $fc
    ei
    db $fc
    rst RST_38
    adc e
    adc h

jr_037_4d51:
    di
    add b
    rst RST_38
    add [hl]
    db $fd
    cp $fe
    sbc c
    ld bc, $3f01
    nop
    ret nz

    ccf
    inc a
    rst RST_38
    db $fd
    cp $5a
    ld bc, $f7ff
    ld [$29d6], sp
    nop
    rst RST_38
    dec b
    ret nz

    nop
    jr nz, jr_037_4cf2

    inc e
    adc $10
    ld a, a
    ldh [$ff08], a
    ldh [$ffc8], a
    jr nc, jr_037_4d09

    ld [hl], a
    db $10
    inc bc
    rst RST_38
    or b
    ld e, a
    or b
    ld c, a
    add b
    ld a, a
    rst RST_38
    nop
    or d
    call $ff00
    ret nc

    rlca
    call z, Call_000_0101
    cp $e0
    ld bc, $df0d
    or $0d
    ldh a, [c]
    ld bc, $ccfe
    ld [bc], a
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
    inc c
    inc sp
    db $ec
    db $fc
    nop
    inc bc
    ei
    db $fc
    ld a, $a7
    ld [bc], a
    rst RST_38
    rst RST_38
    rst RST_28
    db $10
    db $ed
    rst RST_38
    ld [de], a
    sub $29
    halt
    adc c
    ld a, a
    add b
    cp $ff
    rst RST_38
    db $fc
    rst RST_38
    jr c, @+$01

    ret nz

    ld a, $3f
    rst RST_38
    nop
    ret z

    ld sp, $7088
    ret z

    jr nz, jr_037_4ded

    cp a
    db $e4
    ld de, $33c0
    add b
    push de
    ret nc

    nop
    or [hl]
    rst RST_38
    ld c, b
    db $ec
    db $10
    ret nc

    inc l
    db $fc
    db $fc
    ld hl, sp-$01
    inc d
    call nc, $b838

jr_037_4ded:
    ld d, h
    cp $fe
    cp a
    rst RST_38
    ld a, a
    ld bc, $2afe
    push de
    ld d, a
    xor b
    cp a
    ld sp, hl
    ld b, b
    pop de
    ld bc, $00cf
    rst RST_38
    ld d, h
    xor e
    ld a, [$fc05]
    pop de
    dec b
    ld c, [hl]
    ld de, $ff00
    cp d
    ld b, l
    ld d, a
    xor b
    ei
    jp z, Jump_037_5a35

    rla
    or d
    ld c, l
    push de
    ld a, [hl+]
    xor e
    cp l
    ld d, h
    ld c, d
    dec d
    dec d
    ld [$41be], a
    ld d, [hl]
    dec de
    add d
    rst RST_18
    ld a, l
    ld d, l
    xor d
    rst RST_28
    db $10
    ld c, d
    inc de
    db $fd
    cp $bf
    ld b, b
    cp a
    xor b
    ld d, a
    db $f4
    dec bc
    ld d, h
    inc de
    nop
    rst RST_38
    nop
    ld [hl], a
    add hl, bc
    dec l
    inc de
    ld de, $3f2f
    rst RST_38
    ccf
    ld a, [hl-]
    dec d
    inc d
    dec sp
    add hl, sp
    ld d, $7f
    rst RST_38
    ld a, a
    inc de
    inc c
    ld [de], a
    dec c
    ld [de], a
    dec c

jr_037_4e53:
    jr c, jr_037_4e53

    rst RST_30
    nop
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
    reti


    ld bc, $ffff
    ld a, $ff
    cp a
    inc bc
    db $fc
    db $fc
    nop
    nop
    ret nz

    ldh [rNR11], a
    ret nc

    db $eb
    ret nz

    db $10
    pop hl
    db $10
    db $10
    push hl
    db $10
    and l
    ld e, d

jr_037_4e7c:
    ld [$14ff], a
    push bc
    jr c, jr_037_4e7c

    db $fc
    push af
    ld a, [de]
    jp c, $34ff

    or l
    ld e, b
    ld a, [$70fc]
    nop
    ld e, h
    rst RST_38
    jr nz, jr_037_4ef8

    jr jr_037_4ede

    inc [hl]
    ld d, a
    jr z, jr_037_4ee3

    rst RST_38
    inc [hl]
    ld d, c
    ld l, $43
    inc a
    ld a, [hl+]
    nop
    dec d
    rst RST_38
    nop
    cpl
    nop
    nop
    ccf
    nop
    jr nz, jr_037_4eaa

jr_037_4eaa:
    rst RST_38
    jr nz, @+$09

    daa
    rlca
    daa
    xor d
    nop
    ld d, l
    ld hl, sp+$4b
    ld de, $03cc
    ld e, d
    nop
    xor d
    nop
    ld d, h
    nop
    cp $ff
    nop
    ld c, $f0
    ld b, $10
    ld [bc], a
    jr nc, jr_037_4eaa

    rst RST_38
    ret nc

    ldh [c], a
    ret nc

    ld d, l
    nop
    ld a, [hl+]
    nop
    ld a, a

jr_037_4ed1:
    rst RST_38
    nop
    ld [hl], b
    rrca
    ld [hl], b
    ld [$0870], sp
    ld [hl], c
    ccf
    add hl, bc
    ld [hl], c
    add hl, bc

jr_037_4ede:
    ld d, l
    nop
    xor d
    inc hl
    ld a, [hl+]

jr_037_4ee3:
    ld d, b
    inc hl
    rst RST_38
    inc bc
    db $fc
    ld bc, $0004
    inc c
    ld hl, sp-$0c
    cp $6c
    jr nz, jr_037_4ef2

jr_037_4ef2:
    db $fc
    add b
    xor [hl]
    ret nc

    sub $a8

jr_037_4ef8:
    rst RST_38
    adc [hl]
    ldh a, [$ff96]
    add sp, -$7e
    db $fc
    add [hl]
    ld hl, sp-$01
    and a
    ld e, c
    ld c, l
    inc sp
    and c
    rra
    ld c, a
    ccf
    rst RST_38
    cp d
    dec d
    ld d, h
    dec sp
    cp c
    ld d, $4f
    ccf
    ei
    ld bc, $9003
    ld hl, $0343
    ld b, b
    inc bc
    nop
    halt
    sub a
    jr nz, jr_037_4f64

    inc bc
    add sp, $15
    db $10
    ret nz

    jr jr_037_4ed1

    jr nz, @+$11

    ret c

    ret nz

    ld b, c
    ld a, $b0
    dec hl
    inc e
    ld hl, $29c0
    dec b
    inc d
    add b
    ret nc

    ld h, $3c
    ld hl, $29e0
    ld c, h
    ld hl, $29f0

jr_037_4f41:
    ld l, h
    ld [hl+], a
    ld bc, $8238
    db $dd
    db $fc
    db $10
    dec sp
    ld bc, $4103
    ld hl, $4330
    inc bc
    dec c
    ld h, b
    daa
    ld [hl-], a
    ld h, e
    inc bc
    xor d
    ld hl, $21ac
    jr nc, jr_037_4f92

    ret nz

    dec l
    jr c, jr_037_4f41

    cpl
    ldh a, [c]

jr_037_4f63:
    cpl

jr_037_4f64:
    nop
    add hl, sp
    add [hl]
    ld hl, sp-$76
    ld a, a
    jr nc, jr_037_4fe4

    ld hl, $8eff
    ldh a, [$ff9e]
    ldh [$ff8c], a
    ldh a, [$ff61]
    inc bc
    sub d
    sub b
    ld sp, $2763
    ld [hl], $1c
    jr nz, jr_037_4fa7

    ld d, $20
    ld de, $0a20
    ld c, a
    nop
    rla
    nop
    rrca

jr_037_4f89:
    push de
    ld de, $2225
    ld e, a
    ret nc

    inc b
    cp $3c

jr_037_4f92:
    jr nz, jr_037_4fa4

    ld [bc], a
    ldh a, [rNR52]
    nop
    jp c, $bf18

    cp $3c
    cp $3c
    jp c, $4c18

jr_037_4fa2:
    jr nz, jr_037_4fae

jr_037_4fa4:
    rst RST_38
    ld h, b
    rrca

jr_037_4fa7:
    ld h, h
    nop
    ld e, d
    jr jr_037_5029

    inc a
    cpl

jr_037_4fae:
    ld a, [hl]
    inc a
    ld e, c
    jr jr_037_4f63

    dec [hl]
    xor a
    ld b, e
    jr nz, jr_037_4f89

    ld bc, $6ce6
    jr nz, jr_037_4fc1

    nop
    sbc $10
    pop de

jr_037_4fc1:
    dec b
    sbc h
    ldh [$ff98], a
    sbc $01
    ld b, b
    adc b
    ldh a, [$ff9c]
    ldh [$ff78], a
    ld hl, $f48a
    ldh [$ffac], a
    ld sp, $4310
    ld d, $23
    pop de
    rlca
    ld h, $23
    and $24
    cp $7f
    inc a
    and $24
    or $34

jr_037_4fe4:
    cp $3c
    ld [hl], $23
    rst RST_38
    ld h, [hl]
    inc h
    ld a, l
    inc a
    ld h, [hl]
    inc h
    ld [hl], l
    inc [hl]
    add e
    ld a, a
    inc a
    ld b, [hl]
    inc hl
    jr nz, jr_037_5045

    pop de
    rlca
    ld h, [hl]
    inc hl
    ld h, b
    ld de, $e71a
    push hl
    ccf
    ret nz

    db $ec
    inc bc
    ld e, [hl]
    inc de
    add b
    ld a, a
    ld c, a
    adc e
    or b
    ldh a, [$ffcd]
    nop
    dec b
    xor c
    jr nc, @+$62

    ld de, $03da
    ld l, $fb
    nop
    ld e, [hl]
    inc sp
    jr nz, jr_037_4fa2

    cp d
    add hl, bc
    or [hl]
    inc de
    rst RST_38

Call_037_5022:
    xor h
    and l
    ld a, [de]
    dec bc
    inc [hl]
    ld d, l
    ld a, [hl+]

jr_037_5029:
    ld l, e
    ld a, a
    inc d
    ld d, a
    jr z, jr_037_5034

    jr nz, jr_037_5033

    jr nz, @-$4e

jr_037_5033:
    ld b, a

jr_037_5034:
    db $e3
    inc bc
    jr nz, @+$52

    ld hl, $35b8
    pop de
    ld bc, $3042
    jp nz, $d1e2

    ld c, d
    ld [hl], c
    ld c, c

jr_037_5045:
    ld hl, $48e1
    ld d, b
    ld hl, $0057
    cp a
    db $fc
    ld b, e
    jr nz, @-$08

    ld b, c
    rst RST_38
    nop
    ld d, b
    inc c
    or b
    inc c
    db $fd
    ldh a, [$ff03]
    ld e, b
    add c
    db $fd
    add h
    ld sp, hl
    adc b
    push af
    ld l, a
    add l
    ld hl, sp-$78
    db $f4
    adc b
    ld sp, $e896
    ld h, b
    ld de, $02df
    db $fd
    rst RST_30
    ld [$cd0f], sp
    nop

jr_037_5075:
    ret nc

    nop
    adc l
    xor b
    jp c, Jump_000_1000

    rst RST_28
    and h
    ld de, $4578
    call $1001
    xor e
    nop
    ld [$5043], sp
    jr z, jr_037_50ce

    ld d, b
    jr c, @-$53

    jr nc, jr_037_50bf

    cp a
    nop
    rra
    nop
    ld a, $01
    ld e, a
    ld d, l
    ld d, b
    ld a, l
    rst RST_38
    ld [bc], a
    cp [hl]
    ld bc, $40be
    cp $00
    cp [hl]
    rst RST_38
    ld b, b
    sbc [hl]
    ld h, b
    ld c, $f0
    sub [hl]
    ld l, b
    ld c, $ff
    ldh a, [$ff86]
    ld a, b
    ld l, a
    db $10
    ld [hl], l
    ld a, [bc]
    ld l, a
    rst RST_28
    db $10
    ld d, [hl]

Call_037_50b8:
    jr z, jr_037_5138

    ld bc, $7820
    nop
    ld h, b

jr_037_50bf:
    ld sp, $bc00
    ld b, c
    cp h
    ld b, c
    inc de
    jr nz, jr_037_5107

    jr nz, jr_037_5075

    jr nc, jr_037_50ee

    ld c, b

jr_037_50cd:
    adc h

jr_037_50ce:
    inc h
    ld [hl+], a
    jp nc, $0245

    ldh a, [$ffa8]
    ld d, b
    inc sp
    jr nz, @-$1e

    ld b, l
    ld [hl], b
    rrca
    dec bc
    ld [hl], b
    rrca
    ld a, b
    ld b, e
    jr nz, jr_037_50cd

jr_037_50e3:
    ld sp, $31ea
    dec h
    ld b, l
    ldh a, [rDIV]
    ld d, l
    db $f4
    jr nc, jr_037_50e3

jr_037_50ee:
    ld [hl-], a
    ld a, b
    ld hl, $d0ac
    sbc [hl]
    ldh [rIE], a
    xor h
    ret nc

    call c, $b8a0
    ret nz

    ldh a, [$ff80]
    rst RST_38
    ld a, a
    nop
    ld [hl], l
    ld a, [bc]
    ld l, d
    dec d
    ld d, l
    ld a, [hl+]

jr_037_5107:
    rst RST_38
    ld l, b
    rla
    ld d, b
    cpl
    nop
    ld a, a
    ld b, b
    ccf
    rst RST_38
    call nc, Call_037_7a00
    add b
    cp l
    ld b, b
    ld e, [hl]
    and b
    rst RST_38
    cpl
    ret nc

    rra
    ldh [rIF], a
    ldh a, [rNR22]
    add sp, -$03
    ld [bc], a
    adc e
    ld b, b
    inc bc
    nop
    add l
    nop
    ld b, e
    nop
    push de
    and l
    rla
    ld h, b
    add l
    ld sp, $3820
    rra
    ld h, d
    ld [hl], l
    nop

jr_037_5138:
    rst RST_38
    ld hl, sp+$00
    push af
    nop
    ld a, [$7d00]
    ld [bc], a
    rst RST_38
    cp d
    dec b
    ld [hl], h
    dec bc
    ld hl, sp+$07
    ld [hl], c
    ld c, $5f
    ld [$7515], a
    ld a, [bc]
    rst RST_20
    rst RST_18
    jr nc, jr_037_5153

jr_037_5153:
    di
    ld b, b
    and l
    cpl
    or a
    jr nc, jr_037_5189

    rla
    ld b, c
    jp c, $2b00

    ret nc

    ld [$fe12], sp
    ld e, a
    ld [de], a
    pop hl
    ld e, $f3
    inc c
    ei
    inc b
    ei
    rst RST_20
    inc b
    rst RST_38
    nop
    ld l, d
    ld h, b
    add c
    ld b, d
    or c
    ld c, [hl]
    ei
    rst RST_18
    inc b
    cp e
    ld b, h
    cp a
    ld b, b
    ld l, [hl]
    ld h, c
    add d
    ld a, l
    cp a
    adc $31
    sbc $21
    xor $11
    sbc b

jr_037_5189:
    ld de, $f9ee
    ld de, $31b0
    sub d
    ld l, c
    dec bc
    db $f4
    dec b
    ld a, [$ff83]
    ld a, h

jr_037_5198:
    dec b
    ld a, [$bc43]
    and c

jr_037_519d:
    ld e, [hl]
    jp Jump_000_3cff


    jp hl


    ld d, $4b
    nop
    add a
    nop
    ld c, e
    dec hl
    nop
    sub a
    or e
    ld h, b
    add l
    or a
    ld h, d
    db $fd
    ret nc

    nop
    ret nz

    ld h, c
    cp $d3
    rlca
    db $10
    ldh [$ffcf], a
    jr nc, jr_037_519d

    rra
    rst RST_30
    db $fc
    ld c, a
    ld b, b
    ret c

    ld h, c
    rst RST_38
    rst RST_38
    daa
    jr jr_037_5198

    jr nc, @-$3f

    rra
    ldh [$ff3f], a
    ret nz

    ld a, a
    add b
    jp nz, $8050

    ld [hl], l
    rr c
    ld h, b
    jp Jump_037_6019


    jp nz, $a100

    rst RST_30
    ld h, d
    rst RST_38
    dec e
    nop
    ld [hl], b
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

jr_037_51f4:
    rst RST_38
    rst RST_38
    db $db
    add b
    ld a, a
    db $10
    dec bc
    inc a
    ei
    jr nz, @+$09

    ld a, [hl]
    db $fd
    rst RST_28
    ld a, $c1
    rrca
    cp $30
    inc b
    rst RST_38
    rlca
    rst RST_38

jr_037_520b:
    cp a
    inc bc
    rst RST_38
    ld bc, $1efe
    db $fd
    ld b, b
    inc bc
    cp [hl]
    rst RST_38
    ld a, l
    db $fc
    ei
    ld hl, sp-$09
    ldh a, [rIF]
    ldh a, [$ffb5]
    rst RST_28
    ld d, b
    dec b
    rst RST_38
    ld e, d
    nop
    ld a, a
    add b
    jr nc, jr_037_522e

    rst RST_08
    ld a, a
    cp [hl]
    rst RST_08
    cp [hl]

jr_037_522e:
    rst RST_18
    cp a
    rst RST_08
    jr nc, jr_037_5253

    dec b
    rst RST_38
    ld a, $fd
    rra
    rst RST_38
    adc a
    ld a, a
    add a
    ld a, b
    rst RST_28
    inc bc
    rst RST_38
    ld a, e
    rst RST_30
    add d
    ld bc, $f7fb
    di
    rst RST_38
    rst RST_28
    db $e3
    rst RST_18
    pop bc
    ld a, $fc
    ei
    db $fc
    rst RST_38
    adc e
    adc h

jr_037_5253:
    di
    add b
    rst RST_38
    add [hl]
    db $fd
    cp $fe
    sbc c
    ld bc, $3f01
    nop
    ret nz

    ccf
    inc a
    rst RST_38
    db $fd
    cp $5a
    ld bc, $f7ff
    ld [$29d6], sp
    nop
    rst RST_38
    dec b
    ret nz

    nop
    jr nz, jr_037_51f4

    inc e
    adc $10
    ld a, a
    ldh [$ff08], a
    ldh [$ffc8], a
    jr nc, jr_037_520b

    ld [hl], a
    db $10
    inc bc
    rst RST_38
    or b
    ld e, a
    or b
    ld c, a
    add b
    ld a, a
    rst RST_38
    nop
    or d
    call $ff00
    ret nc

    rlca
    call z, Call_000_0101
    cp $e0
    ld bc, $df0d
    or $0d
    ldh a, [c]
    ld bc, $ccfe
    ld [bc], a
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
    inc c
    inc sp
    db $ec
    db $fc
    nop
    inc bc
    ei
    db $fc
    ld a, $a7
    ld [bc], a
    rst RST_38
    rst RST_38
    rst RST_28
    db $10
    db $ed
    rst RST_38
    ld [de], a
    sub $29
    halt
    adc c
    ld a, a
    add b
    cp $ff
    rst RST_38
    db $fc
    rst RST_38
    jr c, @+$01

    ret nz

    ld a, $3f
    rst RST_38
    nop
    ret z

    ld sp, $7088
    ret z

    jr nz, jr_037_52ef

    cp a
    db $e4
    ld de, $33c0
    add b
    push de
    ret nc

    nop
    or [hl]
    rst RST_38
    ld c, b
    db $ec
    db $10
    ret nc

    inc l
    db $fc
    db $fc
    ld hl, sp-$01
    inc d
    call nc, $b838

jr_037_52ef:
    ld d, h
    cp $fe
    cp a
    rst RST_38
    ld a, a
    ld bc, $2afe
    push de
    ld d, a
    xor b
    cp a
    ld sp, hl
    ld b, b
    pop de
    ld bc, $00cf
    rst RST_38
    ld d, h
    xor e
    ld a, [$fc05]
    pop de
    dec b
    ld c, [hl]
    ld de, $ff00
    cp d
    ld b, l
    ld d, a
    xor b
    ei
    jp z, Jump_037_5a35

    rla
    or d
    ld c, l
    push de
    ld a, [hl+]
    xor e
    cp l
    ld d, h
    ld c, d
    dec d
    dec d
    ld [$41be], a
    ld d, [hl]
    dec de
    add d
    rst RST_18
    ld a, l
    ld d, l
    xor d
    rst RST_28
    db $10
    ld c, d
    inc de
    db $fd
    cp $bf
    ld b, b
    cp a
    xor b
    ld d, a
    db $f4
    dec bc
    ld d, h
    inc de
    nop
    rst RST_38
    nop
    ld [hl], a
    add hl, bc
    dec l
    inc de
    ld de, $3f2f
    rst RST_38
    ccf
    ld a, [hl-]
    dec d
    inc d
    dec sp
    add hl, sp
    ld d, $7f
    rst RST_38
    ld a, a
    inc de
    inc c
    ld [de], a
    dec c
    ld [de], a
    dec c

jr_037_5355:
    jr c, jr_037_5355

    rst RST_30
    nop
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
    reti


    ld bc, $ffff
    ld a, $ff
    cp a
    inc bc
    db $fc
    db $fc
    nop
    nop
    ret nz

    ldh [rNR11], a
    ret nc

    db $eb
    ret nz

    db $10
    pop hl
    db $10
    db $10
    push hl
    db $10
    and l
    ld e, d

jr_037_537e:
    ld [$14ff], a
    push bc
    jr c, jr_037_537e

    db $fc
    push af
    ld a, [de]
    jp c, $34ff

    or l
    ld e, b
    ld a, [$70fc]
    nop
    ld e, h
    rst RST_38
    jr nz, jr_037_53fa

    jr jr_037_53e0

    inc [hl]
    ld d, a
    jr z, jr_037_53e5

    sbc a
    inc [hl]
    ld d, c
    ld l, $43
    inc a
    db $ed
    ld [bc], a
    db $10
    inc h
    ld h, b
    rst RST_30
    nop
    sub b
    ld h, b
    db $10
    dec h
    ld b, $01
    add hl, de
    ld b, $ef
    daa
    add hl, de
    add hl, sp
    inc bc
    inc d
    ld h, $80
    sbc b

jr_037_53b8:
    ld h, b
    rst RST_28
    db $e4
    sbc b
    sub h
    ret z

    db $10
    add hl, hl
    ld b, $00
    add hl, bc
    rst RST_38
    ld b, $f8
    nop
    db $fc
    add b
    xor [hl]
    ret nc

    sub $ff
    xor b
    adc [hl]
    ldh a, [$ff96]
    add sp, -$7e
    db $fc
    add [hl]
    rst RST_38
    ld hl, sp-$59

jr_037_53d8:
    ld e, c
    ld c, l
    inc sp
    and c
    rra
    ld c, a
    rst RST_38
    ccf

jr_037_53e0:
    cp d
    dec d
    ld d, h
    dec sp
    cp c

jr_037_53e5:
    ld d, $4f
    rst RST_30
    ccf
    ld bc, $7003
    ld hl, $0343
    ld b, b
    inc bc
    db $ed
    nop
    ld [hl], a
    jr nz, jr_037_5439

    inc bc
    add sp, $15
    db $10

jr_037_53fa:
    ret nz

    jr jr_037_545b

    adc c
    jr nz, jr_037_53d8

    ret nz

    ld b, c
    ld a, $90
    dec hl

jr_037_5405:
    ld bc, $00de
    ldh a, [c]
    call Call_000_0200
    and d
    jr nz, jr_037_53b8

    ld hl, $f800
    ld h, b
    ld h, b
    db $fd
    ld hl, sp-$33
    nop
    ld c, b
    ld b, b
    ret nc

    nop
    ldh a, [$ffe0]
    ld a, a
    ldh a, [rSB]
    ldh [rNR23], a
    dec bc
    rra
    nop
    ld c, l
    jr nz, @+$01

    rrca
    dec b
    rrca
    db $10
    ld b, $69
    inc bc
    db $f4

jr_037_5431:
    rst RST_38
    nop
    jr jr_037_5405

    ldh a, [rP1]
    nop
    sub b

jr_037_5439:
    ldh [rIE], a
    ldh a, [$ffa0]
    ldh a, [$ff08]
    ld h, b
    sub [hl]
    ret nz

    cpl
    rst RST_28
    nop
    rra
    ld b, $06
    jp nz, RST_20

    ld [de], a
    nop
    rst RST_38
    dec bc
    ld bc, $070f
    rrca
    add b
    rlca
    add b
    sbc e
    nop
    nop

jr_037_5459:
    ldh a, [rNR41]

jr_037_545b:
    nop
    ld b, b
    ldh a, [c]
    jr nz, jr_037_5459

    ld hl, $bb00
    add d
    db $fc
    nop
    dec sp
    ld bc, $4103
    ld de, $4330
    dec de
    inc bc
    ld h, b
    rla
    ld [hl-], a
    ld h, e
    inc bc
    adc d
    ld hl, $218c
    jr nz, @+$37

    rst RST_38
    ld [bc], a
    db $10
    ld bc, $000a
    nop
    ld [$ff54], sp
    nop
    ld h, b
    ld b, b
    jr nc, @+$33

    nop
    ld hl, $ff08
    inc hl
    nop
    ret z

    nop

jr_037_5491:
    dec b
    jr jr_037_54a9

    jr c, @+$01

    add [hl]
    jr nc, @-$20

    nop
    ld [hl], h
    nop
    ld de, $ff00
    add c
    ld b, $02
    ld b, $e0
    nop
    add e
    nop
    rst RST_18
    daa

jr_037_54a9:
    ld h, b
    cpl
    ld h, b
    rrca
    ld d, a
    jr nc, jr_037_5431

    ld h, b
    rst RST_38
    ld b, h
    ld h, b
    rlca
    nop
    rst RST_20

jr_037_54b7:
    nop
    jp $ff18


    sbc b

jr_037_54bc:
    inc a
    sbc c
    inc a
    sbc c
    ld a, $c4
    nop
    rst RST_38
    inc de
    nop
    ret nz

    jr jr_037_5491

    inc e

jr_037_54ca:
    ld h, c
    inc c
    rst RST_38
    dec sp
    nop
    xor [hl]
    nop
    adc b
    nop
    ld b, b
    ld [$80ff], sp
    ld d, b
    nop
    nop
    db $10
    ld a, [hl+]
    nop
    ld d, $ff
    ld [bc], a
    inc c
    adc h
    nop
    add h
    db $10
    add [hl]
    ld hl, sp-$11
    adc d
    db $f4
    add [hl]
    ld hl, sp+$58
    ld hl, $f08e
    sbc [hl]
    ld e, a
    ldh [$ff8c], a
    ldh a, [$ff61]
    inc bc
    and b
    ld sp, $1763
    ld [hl], $ff
    ld b, c
    nop
    ld b, c
    ld [$0041], sp
    db $10
    inc b
    rst RST_38
    ld [$0c00], sp
    nop
    dec b
    nop
    ld [bc], a
    ld bc, $c1ff
    nop
    or c
    nop
    ldh [c], a
    ld [$1380], sp
    rst RST_38
    ld b, e
    rla
    ld b, d
    rla
    and d
    rlca
    nop
    add e
    db $fd
    inc hl
    ld h, e
    jr nc, jr_037_54bc

    jr nc, jr_037_54b7

    jr nc, @+$46

    add b
    rst RST_38
    ld c, d
    sbc b
    jr z, jr_037_54ca

    inc bc
    rlca
    inc b
    ld e, $ff
    call nz, $eb00
    inc c
    jp hl


    inc c
    ld [hl+], a
    ld bc, $52ff
    add hl, de
    inc d
    reti


    ret nz

    ldh [$ff87], a
    nop
    rst RST_38
    adc c
    nop
    rlca
    db $10
    ld bc, $c2c8
    add sp, -$01
    ld b, b
    add sp, $41
    ldh [rP1], a
    pop bc
    add [hl]
    nop
    rst RST_38
    add d
    db $10
    add d
    nop
    ld [$1020], sp
    nop
    rst RST_38
    jr nc, jr_037_5563

jr_037_5563:
    and b
    nop
    ld b, b
    add b
    sbc h
    ldh [$ffbd], a
    sbc b
    ld de, $8840
    ldh a, [$ff9c]
    ldh [$ff58], a
    ld hl, $fd8a
    db $f4
    and c
    ld hl, $0002
    add d
    nop
    ld h, [hl]
    nop
    rst RST_38
    inc h
    ld [bc], a
    add hl, bc
    ld b, $0e
    ld bc, $0786
    rst RST_38
    jp Jump_037_5c03


    nop
    add b
    rrca
    ld hl, $ffc0
    ld [bc], a
    dec a
    inc c
    inc bc
    and e
    ld b, b
    ld h, b
    ldh [rIE], a
    pop bc
    ret nz

    inc a
    nop
    ld [$22f0], sp
    ret nz

    ld e, a
    add h
    nop
    dec c
    ldh a, [$fff3]
    call $8000
    or $20
    rst RST_38
    ld b, c
    nop
    and [hl]
    ld b, b
    and h
    ld b, b
    db $10
    ret nz

    ld a, e
    ld d, b
    add b
    ld h, b
    ld de, $e51a
    ccf
    ret nz

    db $ec
    inc bc
    sbc [hl]
    ld e, [hl]
    inc de
    add b
    ld a, a
    ld c, a
    or b
    jp nc, $bb20

    jr nc, @+$0c

    db $fc
    ld e, a
    ld [de], a
    jp c, $2e03

    nop
    ld e, [hl]
    nop
    cp $00
    rst RST_38
    add l
    cp d
    add hl, bc
    or [hl]
    inc de
    xor h
    and l
    ld a, [de]
    rst RST_38
    dec bc
    inc [hl]
    ld d, l
    ld a, [hl+]
    ld l, e
    inc d

jr_037_55e8:
    ld d, a
    jr z, jr_037_55e8

    ld [$02ed], sp
    stop
    dec e
    nop
    dec bc
    inc b
    rst RST_38
    inc b
    inc bc
    inc b
    inc bc
    add hl, bc
    inc b
    inc b
    ld [bc], a
    rst RST_38
    ld [bc], a
    ld bc, $0001
    add h
    nop
    rlca
    nop
    db $fd
    dec b
    dec hl
    ld b, b
    ld c, c
    or b
    adc e
    ld [hl], h
    sub h
    dec bc
    rst RST_30
    and c
    ld e, [hl]
    ld a, a
    call $2800
    nop
    sbc b
    nop
    rst RST_38

jr_037_561b:
    call nz, Call_000_2103
    sbc $10
    pop hl
    add hl, hl
    add $fd
    cp $cd
    nop
    ld de, $1a00
    nop
    or b
    nop
    rst RST_38
    jr nc, jr_037_5670

    ld b, b
    add b
    and b
    nop
    ld h, c
    nop
    ld a, a
    and b
    ld b, b
    and b
    ld b, b
    sub b
    ld h, b
    db $10
    db $ed
    ld [bc], a
    db $dd
    ld [$40cd], sp
    ret nc

    jr nz, @+$22

    pop hl
    db $10
    add c
    db $fd
    rst RST_38
    add h
    ld sp, hl
    adc b
    push af
    add l
    ld hl, sp-$78
    db $f4
    or $98
    ld sp, $e896
    ld h, b
    ld de, $fd02
    rst RST_30
    ld [$0fdd], sp
    call $d000
    nop
    xor b
    jp c, Jump_000_1000

    rst RST_28
    xor b
    and h
    ld de, $4568
    and d

jr_037_5670:
    ld b, e
    ld [$40a5], sp
    jr z, jr_037_561b

    ld b, b
    jr c, jr_037_5670

    nop
    rla
    nop
    sbc $20
    nop
    ld a, $01
    ld e, a
    cp $45
    ld d, b
    ld a, l
    ld [bc], a
    cp [hl]
    ld bc, $40be
    cp $ff
    nop
    cp [hl]
    ld b, b
    sbc [hl]
    ld h, b
    ld c, $f0
    sub [hl]
    rst RST_38
    ld l, b
    ld c, $f0
    add [hl]
    ld a, b
    ld l, a
    db $10
    ld [hl], l
    cp a
    ld a, [bc]
    ld l, a
    db $10
    ld d, [hl]
    jr z, @+$80

    ld bc, $7820
    xor [hl]
    dec de
    jr nz, jr_037_56ad

    ld [bc], a

jr_037_56ad:
    ld [bc], a
    and [hl]
    jr nz, @+$04

    db $10
    ld h, $0a
    rst RST_38
    dec b
    dec c
    nop
    add hl, bc
    nop
    inc c
    ld bc, $ff19
    inc b
    ld [de], a
    inc b
    dec d
    ld [bc], a
    ld [de], a
    ld bc, $ff70
    add b
    jr nc, @+$42

    jr nc, jr_037_56cc

jr_037_56cc:
    sub b
    nop
    ld d, b
    rst RST_38
    add b
    jr nz, @-$3e

    ldh [rP1], a
    ldh [rP1], a
    dec c
    cp a
    ld [bc], a
    ld a, [bc]
    inc b
    ld [$0d04], sp
    daa
    jr nz, jr_037_56e7

    cp e
    ld [bc], a
    ld b, $b9
    ld b, b

jr_037_56e7:
    ld d, b
    jr nz, jr_037_571a

    ld sp, hl
    ld b, b
    ld d, b
    ei
    and b
    xor b
    push af
    ld b, b
    ld l, b
    nop
    xor b
    ld b, b
    add b
    bit 0, b
    ld b, b
    or $20
    ld b, b
    db $10
    ld h, $58
    ld hl, $d0ac
    rst RST_38
    sbc [hl]
    ldh [$ffac], a
    ret nc

    call c, $b8a0
    ret nz

    rst RST_38
    ldh a, [$ff80]
    ld a, a
    nop
    ld [hl], l
    ld a, [bc]
    ld l, d
    dec d
    rst RST_38
    ld d, l
    ld a, [hl+]
    ld l, b
    rla

jr_037_571a:
    ld d, b
    cpl
    nop
    ld a, a
    rst RST_38
    ld b, b
    ccf
    call nc, Call_037_7a00
    add b
    cp l
    ld b, b
    rst RST_38
    ld e, [hl]
    and b
    cpl
    ret nc

    rra
    ldh [rIF], a
    ldh a, [$fff7]
    rla
    add sp, $02
    cp e
    jr nc, jr_037_573a

    nop
    add l
    nop

jr_037_573a:
    ld [hl], a
    ld b, e
    nop
    and l
    rlca

jr_037_573f:
    ld h, b
    add l
    nop
    ld d, h
    dec a
    ld d, b
    cp $10
    ld h, c
    ld [hl], l
    nop
    ld hl, sp+$00
    push af
    nop
    ld a, [$00ff]
    ld a, l
    ld [bc], a
    cp d
    dec b
    ld [hl], h
    dec bc
    ld hl, sp-$01
    rlca
    ld [hl], c
    ld c, $ea
    dec d
    ld [hl], l
    ld a, [bc]
    rst RST_20
    ld d, l
    jr jr_037_573f

    ld bc, $4157
    ld d, b
    ld e, a
    ld b, c
    ld d, b
    rla
    ld c, l
    ld [de], a
    push af
    dec hl
    ret nc

    ld [$5f12], sp
    ld [de], a
    pop hl
    ld e, $f3
    inc c
    ccf
    ei
    inc b
    ei
    inc b
    rst RST_38
    nop
    ld e, d
    ld h, b
    ld [hl], c
    ld b, d
    rst RST_38
    or c
    ld c, [hl]
    ei
    inc b
    cp e
    ld b, h
    cp a
    ld b, b
    cp $5e
    ld h, c
    add d
    ld a, l
    adc $31
    sbc $21
    xor $cd
    ld de, $1198
    xor $11
    ld e, d
    nop
    ret nc

    add hl, bc
    nop
    dec bc
    rst RST_38
    db $f4
    dec b
    ld a, [$7c83]
    dec b
    ld a, [$ff43]
    cp h
    and c

jr_037_57af:
    ld e, [hl]
    jp $e93c


    ld d, $4b
    cp a
    nop
    add a
    nop
    ld c, e
    nop
    sub a
    and e
    ld h, b
    add l
    ldh [c], a
    and a
    ld h, d
    db $fd
    ret nc

    nop
    or b
    ld h, c
    db $d3
    rlca
    db $10
    ldh [$ffcf], a
    ld a, a
    jr nc, jr_037_57af

    rra
    rst RST_30
    ld [$00ff], sp
    ret z

    ld h, c
    rst RST_38
    rst RST_38
    rst RST_38
    daa
    jr @-$2f

    jr nc, jr_037_57fd

    ldh [rIE], a
    ccf
    ret nz

    ld a, a
    add b
    rst RST_38
    nop
    ld a, a
    add b
    ld [hl], l
    rrc c
    ld h, b
    jp Jump_037_6009


jr_037_57ef:
    jp nz, $a100

    rst RST_20
    ld h, d
    nop
    rst RST_28
    ld l, l
    rst RST_38
    ld de, $2700
    add b
    daa

jr_037_57fd:
    nop
    rrca
    daa
    rlca
    ld [bc], a
    dec b
    dec b
    ld bc, $0000
    rst RST_38
    set 1, c
    adc c
    sbc c
    reti


    nop
    ccf
    nop
    add [hl]
    ld [bc], a
    add sp, $08
    add sp, -$18
    xor b
    nop
    rrca
    ld [$090b], sp
    ld [$080f], sp
    nop
    ld hl, sp+$08
    add sp, -$18
    ld [$08f8], sp
    nop
    nop
    ld hl, sp+$00
    inc d
    inc d
    inc e
    inc e
    nop
    nop
    pop af
    daa
    nop
    ld [bc], a
    ld a, a
    ld e, a
    nop
    nop
    db $e3
    daa
    nop
    ld [bc], a
    rst RST_38
    rst RST_38
    nop
    nop
    db $e3
    daa
    nop
    ld [bc], a
    ret nz

    ld b, b
    ret c

    sub b
    or b
    or b
    jr nc, jr_037_57ef

    inc h
    ld h, h
    daa
    db $10
    inc bc
    nop
    nop
    db $10
    daa
    nop
    ld l, $07
    rlca
    ld hl, $1d15
    ld e, [hl]
    sbc $00
    rst RST_38
    ld bc, $fa98
    ld [bc], a
    ld b, $fe
    ld [bc], a
    ld hl, sp+$28
    dec bc
    dec bc
    rrca
    rra
    rra
    nop
    stop
    adc b
    ret z

    ld hl, sp+$00
    db $fc
    daa
    nop
    ld [bc], a
    ld sp, hl
    jp Jump_000_2707


    nop
    ld [bc], a
    rst RST_38
    nop
    ccf
    rst RST_38
    rst RST_38
    daa
    nop
    ld [bc], a
    ret nc

    daa
    nop
    ld [$c8c0], sp
    ret nz

    push bc
    adc $c8
    nop
    sub b
    daa
    ld h, b
    dec b
    ret nz

    ret z

    daa
    nop
    dec b
    ld [$2708], sp
    nop
    jr @+$11

    ld [$090b], sp
    ld [$080f], sp
    nop
    ld hl, sp+$08
    add sp, -$18
    ld [$08f8], sp
    ld b, $04
    inc b
    ld b, $27
    nop
    inc bc
    rst RST_00
    rst RST_28
    rst RST_38
    ld b, a
    nop
    ld [hl], a
    ld a, a
    ld a, a
    ret z

    jp nc, $da30

    ld a, [$8600]
    nop
    daa
    ld a, a
    rlca
    daa
    rst RST_38
    daa
    daa
    rst RST_18
    inc bc
    ret nz

    rst RST_18
    rst RST_18
    ret nz

    daa
    ld [$0003], sp
    ld [$0027], sp
    ld de, $4f2e
    ld h, e
    ld [hl], c
    cp [hl]
    xor $f2
    db $fc
    add hl, bc
    dec bc
    rrca
    ld e, $1f
    nop
    stop
    ret z

    add sp, $18
    nop
    db $fc
    daa
    nop
    dec b
    rlca
    inc b
    ld b, $07
    ld [bc], a
    ld a, [hl]
    jr c, jr_037_58fc

jr_037_58fc:
    rst RST_38
    inc de
    inc sp
    dec sp
    inc de
    daa
    nop
    ld b, $fe
    ld a, $3d
    ld de, $0001
    nop
    ld bc, $270b
    rst RST_38
    inc bc
    daa
    nop
    ld [bc], a
    or e
    ld hl, sp-$02
    cp $fc
    nop
    nop
    rst RST_28
    add $3f
    rst RST_38
    rst RST_30

jr_037_591f:
    rst RST_30
    nop
    nop
    rlca
    or b
    ld hl, sp-$02
    ld hl, sp-$10
    nop
    nop
    rst RST_38
    nop
    add c
    inc b
    ld e, $0c
    nop
    nop
    ld hl, sp-$2d
    db $db
    adc [hl]
    jr @+$04

    rla
    ld bc, $b448
    daa
    nop
    rla
    sbc e
    inc b
    inc bc
    ret nz

    ldh [$ffcf], a
    sbc c
    ld [hl], d
    nop
    ld [$2295], sp
    jr nc, jr_037_5959

    ldh [c], a
    sub $15
    ld c, a
    ccf
    rst RST_38
    ld d, b
    nop
    nop
    jr jr_037_591f

    rrca

jr_037_5959:
    ld e, $3f
    ld h, e
    ld [hl], c
    jr jr_037_596d

    and [hl]
    inc de
    dec bc
    and l
    ld [hl], h
    and b
    add d
    sbc e
    ld e, c
    ld a, e
    ld [hl], c
    ld sp, hl
    reti


    ld e, h

jr_037_596d:
    ld e, l
    inc [hl]
    daa
    adc a
    ld [bc], a
    adc l
    db $dd
    db $fd
    call nc, $18dc
    inc de
    cp a
    xor h
    db $e4
    db $e4
    and [hl]
    or a
    jr z, jr_037_59b1

    add hl, sp
    cp c
    db $fd
    ld l, l
    ld c, e
    ld e, e
    rst RST_10
    ld a, [$b3db]
    jp nc, $94b2

    cp l
    call z, $d8cc
    ld sp, hl
    db $e3
    rst RST_30
    and $a7
    rra
    ld [hl], b
    ret nz

    add [hl]
    dec c
    jr c, jr_037_59b6

    db $ec
    cp $8c
    nop
    jr c, @+$6e

    and h
    ld b, h
    ld d, l
    nop
    nop
    ld hl, $d9f2
    ld [hl], c
    ret


    sbc c
    nop
    nop

jr_037_59b1:
    inc bc
    and $b4
    inc [hl]
    sub h

jr_037_59b6:
    dec d
    nop
    ldh a, [$ff39]
    ld [de], a
    ld [hl], $7c
    ld l, b
    ld [hl], b
    nop
    nop
    ld hl, sp+$1f
    dec c
    rlca
    rra
    cp e
    ld c, c
    ld c, l
    ld h, [hl]
    inc sp
    dec e
    rrca
    add e
    adc c
    inc e
    ld c, $8e
    call nc, $4dc8
    pop hl
    or $f4
    cp $a6
    ld bc, $f9f1
    ccf
    nop
    ld a, $6e
    ld h, [hl]
    ld b, e
    ld c, e
    add hl, hl
    ld [bc], a
    nop
    and [hl]
    ld [hl+], a
    ld [hl-], a
    ld e, d
    jp nc, $28dc

    nop
    call nc, Call_037_7674
    jp c, Jump_000_33fa

    ld bc, $b540
    sbc b
    ret nc

    ld e, c
    sbc e
    xor [hl]
    inc c
    nop
    ld c, c
    call $d3d9
    ld e, [hl]
    inc c
    ld b, b
    and l
    sbc l
    sbc c
    dec de
    db $10
    ld a, [hl-]
    ld sp, $4592
    ld [$cbef], a
    ld c, [hl]
    sub $5e
    inc d
    nop
    nop

Jump_037_5a18:
    ld [bc], a
    ld e, a
    daa
    rst RST_38
    inc b
    nop
    add a
    daa
    rst RST_38
    dec b
    nop
    ccf
    daa
    rst RST_38
    dec b
    nop
    daa
    rst RST_38
    ld b, $00
    daa
    rst RST_38
    inc bc
    cp $f0
    add b
    nop
    rst RST_38
    rst RST_38

Jump_037_5a35:
    ld a, [$0040]
    nop
    ld [bc], a
    and a
    pop de
    ei
    db $fd
    ld a, a
    sbc a
    adc a
    push bc
    cp a
    inc de
    and d
    cp $a1
    sbc b
    pop bc
    ld sp, hl
    rst RST_38
    dec de
    ld bc, $e183
    ld b, a
    rrca
    rra
    add b
    ret nz

    pop hl
    pop bc
    db $e3
    jp $87c7


    jr nc, @+$62

    pop bc
    pop bc
    add e
    add e
    rlca
    rlca
    ld hl, sp-$10
    ldh a, [$fff1]
    db $e3
    db $e3
    rst RST_20
    rst RST_00
    daa
    ret nz

    ld [bc], a
    adc b
    sbc a
    inc e
    jr nc, jr_037_5ab4

    rlca
    ccf
    inc bc
    ld a, a
    rst RST_38
    ld bc, $ff70
    add b
    ldh [$fff0], a
    cp $f8
    ret nz

    rlca
    rst RST_38
    rlca
    ld bc, $3e00
    rla
    add b
    ld b, b
    db $fc
    ldh [rIE], a
    ccf
    rra
    rra
    add e
    nop
    ld bc, $8000
    ldh a, [rIE]
    rst RST_38
    ld de, $c000
    nop
    nop
    ld de, $fcfc
    cp $1f
    inc b
    inc e
    rst RST_38
    rst RST_38
    rst RST_30
    ld sp, hl
    inc c
    nop
    nop
    db $fc
    xor c
    pop bc
    pop af
    ld sp, hl
    ld hl, sp-$03
    ld a, $f8
    inc a

jr_037_5ab4:
    sbc $fe
    db $fc
    cp $ff
    rst RST_38
    di
    ldh a, [rOCPS]
    dec h
    sbc e
    add hl, sp
    rst RST_10
    rst RST_38
    ld h, $11
    add hl, hl
    sub c
    ld sp, hl
    ldh a, [$fffc]
    ldh [rIE], a
    rst RST_38
    cp $fc

jr_037_5ace:
    ldh a, [$ffc0]
    ld [hl], b
    db $10
    ld c, $0e
    ld e, $1c
    inc b
    jr nz, jr_037_5b51

    ld a, b
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    rla
    dec b
    rst RST_08
    rst RST_08
    adc a
    sbc a
    sbc a
    rla
    ld [bc], a
    nop
    adc [hl]
    inc e
    inc d
    nop
    ld hl, $e3f3
    nop
    rst RST_38
    rst RST_38
    ld a, a
    dec bc
    nop
    sbc d
    rst RST_00
    nop
    daa
    rst RST_38
    inc bc
    cpl
    rst RST_38
    rst RST_38
    nop
    daa
    rst RST_38
    ld [bc], a
    db $fc
    ldh a, [c]
    db $fc
    rst RST_38
    nop
    db $fc
    rst RST_38
    rst RST_38
    ld b, b
    jr jr_037_5ace

    rst RST_38
    nop
    jr nc, jr_037_5b1b

    add [hl]
    inc bc
    nop
    ld hl, sp-$02
    nop
    inc bc
    dec b

jr_037_5b1b:
    adc e
    rst RST_38
    rst RST_38
    ld a, a
    ccf
    nop
    ret nc

    ld a, [$ff27]
    inc b
    nop
    ld e, $8f
    pop bc
    adc $e7
    rst RST_30
    ldh a, [c]
    nop
    ld a, a
    or a
    jp $f101


    ld hl, sp-$04
    nop
    ld a, e
    ld a, e
    nop
    sbc $de
    nop
    ld a, e
    ld a, e
    sub $d6
    nop
    db $e3
    ret


    nop
    call c, Call_037_76de
    ld [hl], b
    nop
    ldh [c], a
    ldh [c], a
    ld b, $70
    ld a, [hl]
    ld a, e
    dec [hl]

jr_037_5b51:
    ld [hl], $77
    ld h, [hl]
    ld h, $18
    db $db
    nop
    ld a, b
    nop
    ld [de], a
    jp nz, $0202

    jp nz, Jump_000_07e0

    and b
    and c
    nop
    ldh [$ffe2], a
    nop
    ld bc, $0be0
    db $eb
    ldh [$ff03], a
    ld h, e
    nop
    nop
    ld hl, sp-$08
    pop hl
    daa
    db $dd
    ld [bc], a
    inc e
    nop
    pop af
    pop af
    db $e3
    rst RST_00
    add b
    ld a, a
    ld e, a
    nop
    db $e3
    db $e3
    rst RST_00
    adc a
    nop
    rst RST_38
    rst RST_38
    nop
    db $e3
    db $e3
    rst RST_00
    adc a
    ld e, $dc
    ld b, b
    jp c, $baba

    ld a, [hl-]
    jr c, jr_037_5bc7

    halt
    halt
    dec bc
    ld bc, $080a
    inc e
    jr jr_037_5bac

    dec e
    sbc a
    dec d
    adc d
    dec b
    nop
    nop
    add d
    dec bc
    rrca
    ei
    xor l
    dec bc
    dec sp

jr_037_5bac:
    ld e, l
    ld a, [hl-]
    dec d
    nop
    sbc l
    cp l
    nop
    rst RST_30
    rst RST_30
    nop
    cp l
    nop
    sbc $de
    nop
    ld a, e
    ld a, e
    daa
    nop
    ld [bc], a
    rst RST_30
    rst RST_30
    nop
    sbc $de
    nop
    scf

jr_037_5bc7:
    nop
    xor $ee
    nop
    ld a, [hl]
    ld [hl], b
    ld b, $e0
    rst RST_18
    db $eb
    db $e3
    and c
    ld hl, $7f32
    rst RST_38
    ldh [c], a
    nop
    nop
    ld hl, sp+$00
    nop
    ld [bc], a
    jp nc, $a3a0

    ld bc, $c0de
    nop
    add b
    cp a
    inc bc
    add e
    ldh [rSB], a
    ld bc, $0300
    ld a, a
    db $fd
    rst RST_30
    rst RST_08
    rst RST_18
    nop
    rst RST_38
    rst RST_38
    nop
    daa
    rst RST_38
    inc bc
    nop
    rst RST_38
    rst RST_38
    daa
    nop
    ld [$e027], sp

Call_037_5c02:
    inc bc

Jump_037_5c03:
    pop hl

Jump_037_5c04:
    db $e4
    jr z, jr_037_5c07

jr_037_5c07:
    ld [hl], l
    daa
    ld [hl], c
    ld [bc], a
    ld [hl], l
    push af
    ldh a, [$ffe0]
    ld e, $1d
    rra
    dec d
    dec bc
    rrca
    rlca
    rlca
    ld bc, $0702
    add d
    ret nz

jr_037_5c1c:
    add c
    jp $8887


    ld bc, $0000
    and b
    ld b, b
    add sp, -$0b
    nop
    rst RST_28
    rst RST_28
    nop
    cp l
    cp l
    nop
    rst RST_28
    jr nz, @+$05

    jr nz, jr_037_5c5b

    ld [$2220], sp
    nop
    ld bc, $0bc0
    db $eb
    ld h, b
    ld bc, $0061
    pop hl
    inc bc
    ld [hl], e
    ld [hl], c
    nop
    db $ec
    xor $00
    jr c, jr_037_5c5a

    nop
    cp b
    ld h, h
    cp a
    add c
    add c
    ld [hl-], a
    jr z, jr_037_5c1c

    jr nz, jr_037_5c54

jr_037_5c54:
    ld [bc], a
    ld a, b
    nop
    ld b, h
    daa
    ld h, [hl]

jr_037_5c5a:
    dec b

jr_037_5c5b:
    ld b, h
    ld sp, hl
    ld a, c
    daa
    ld [hl], h
    ld [bc], a
    ld l, b
    ld l, [hl]
    call nz, $e3c6
    di
    pop hl
    jp hl


    ld l, b
    ld l, h
    ld b, $26
    ld c, h
    ld c, [hl]
    ld c, a
    ld c, b
    ld c, h
    ld c, h
    ld h, [hl]
    add c
    call $c3cb
    set 1, a
    call $1381
    daa
    sbc c
    ld [bc], a
    sub e
    sbc c
    sbc b
    dec c
    sbc $df
    rst RST_18
    daa
    ret nz

    ld [bc], a
    rst RST_18
    ret nz

    daa
    rlca
    inc bc
    ld c, $07
    rrca
    rra
    add e
    ld b, a
    adc e
    rlca
    ld a, [bc]
    dec b
    ld bc, $f680
    db $fd
    rst RST_38
    rst RST_38
    rst RST_18
    rst RST_20
    adc e
    add a
    ld bc, $1000
    inc c
    add b
    ldh [$fff0], a
    db $fc
    jr nz, jr_037_5cd6

    dec bc
    inc e
    daa
    nop
    ld [bc], a
    ld e, $03
    jp Jump_000_01e0


    ld bc, $0300
    rst RST_38
    ld a, h
    ld a, h
    nop
    db $e3
    db $e3
    ld bc, $6570
    add c
    rst RST_00
    ld [hl-], a
    di
    db $ed
    call $ecc4
    nop
    ld d, $16
    nop
    ld e, $1e
    nop
    nop
    daa
    ld a, a
    inc b

jr_037_5cd6:
    daa
    nop
    ld [bc], a
    rst RST_38
    ld d, c
    inc sp
    ld d, c
    rst RST_38
    daa
    nop
    ld [bc], a
    rst RST_38
    ld de, $1731
    rst RST_38
    nop
    db $10
    ld bc, $8aff
    xor d
    adc b
    rst RST_38
    nop
    nop
    ld b, b
    rst RST_38
    adc a
    rst RST_18
    rst RST_18
    rst RST_38
    daa
    nop
    ld [bc], a
    daa
    rst RST_38
    inc b
    nop
    nop
    inc l
    daa
    ret nz

    inc b
    daa
    nop
    ld [bc], a
    ld e, $15
    ld [$0027], sp
    ld [bc], a
    db $10
    ld a, [de]
    add c
    nop
    inc bc
    rlca
    rrca
    rra
    rlca
    ld bc, $8301
    and l
    jp $ebe3


    rst RST_30
    ld a, e
    rst RST_38
    rra
    inc bc
    daa
    nop
    ld [bc], a
    ld b, $0c
    nop
    ld [$c215], sp
    ret nz

    ldh a, [rNR23]
    ld [$4f15], sp
    ccf
    rst RST_38
    ld d, b
    nop
    nop
    jr jr_037_5d36

jr_037_5d36:
    nop
    ld bc, $1c00
    ld c, $07
    ld bc, $e041
    ldh a, [rOBP0]
    daa
    nop
    inc bc
    and b
    add b
    add b
    nop
    daa
    jr nz, @+$04

    ld [$7027], sp
    ld [bc], a
    ld [hl], d
    ld [hl+], a
    ld [bc], a
    inc hl
    inc hl
    rst RST_20
    db $e4
    ld b, b
    ld d, e
    dec de
    dec de
    add hl, de
    ld [$cfc7], sp
    add $46
    ld [bc], a
    add d

jr_037_5d62:
    add h
    add h
    jr z, jr_037_5d6a

    inc b
    daa
    inc c
    ld [bc], a

jr_037_5d6a:
    ld [$3000], sp
    jr nc, jr_037_5d8f

    nop
    stop
    nop
    ld b, b
    rra
    ld a, h
    ldh a, [$ffc0]
    ld [bc], a
    rlca
    rlca
    inc bc
    rst RST_38
    db $fc
    nop
    nop
    db $10
    jr @-$46

    xor b
    add b
    daa
    nop
    ld [bc], a
    jr nz, jr_037_5d8a

jr_037_5d8a:
    jr nc, jr_037_5dec

    daa
    nop
    ld [bc], a

jr_037_5d8f:
    ld bc, $c343
    ld h, e
    ldh [c], a
    nop
    nop
    ret nz

    pop hl
    pop bc
    add e
    add a
    adc a
    daa
    nop
    ld [bc], a
    ldh [$fff2], a
    ld hl, sp-$20
    ld b, h
    add [hl]
    add d
    add c
    ret nz

    ldh [$fff0], a
    ld a, h
    halt
    inc e
    ld c, $08
    ld [bc], a
    ld [bc], a
    jr nz, jr_037_5db9

    ld bc, $0000
    ld e, b
    cp $0e

jr_037_5db9:
    ld b, $00
    nop
    ld bc, $1911
    jr c, jr_037_5df1

    stop
    nop
    jr jr_037_5d62

    adc h
    add h
    inc c
    daa
    nop
    ld [bc], a
    inc hl
    inc bc
    ld bc, $0121
    daa
    nop
    ld [bc], a
    ld a, [bc]
    rlca
    rrca
    add [hl]
    inc b
    daa
    nop
    ld [bc], a
    add [hl]
    ld [bc], a
    ld b, $0c
    daa
    nop
    inc bc
    daa
    jr nz, @+$04

    ld hl, $0027
    inc bc
    inc b
    nop

jr_037_5dec:
    db $10
    db $10
    daa
    nop
    inc bc

jr_037_5df1:
    daa
    rst RST_38
    cpl
    ld e, b
    ld l, $04
    ld [bc], a
    add b
    ld h, b
    ld [hl], b
    ld a, [hl-]
    nop
    inc b
    inc c
    nop
    ld bc, $0e00
    ld b, $27
    nop
    add hl, bc
    ld bc, $0301
    inc bc
    rlca
    rlca
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    db $fd
    ld sp, hl
    ei
    rst RST_38
    rst RST_30
    rst RST_30
    rst RST_38
    rst RST_28
    ldh [$ffe4], a
    rst RST_08
    rst RST_18
    rst RST_18
    cp a
    cp h
    ld [hl], d
    ccf
    daa
    rst RST_38
    inc bc
    rlca
    ld hl, sp-$01
    ldh [$ff27], a
    rst RST_38
    ld [bc], a
    db $fc
    di
    rrca
    rst RST_38
    rlca
    pop bc
    cp [hl]
    ld a, a
    ld a, a
    daa
    rst RST_38
    ld [bc], a
    ld hl, sp-$01
    ld a, a
    cp a
    rst RST_18
    rst RST_18
    rst RST_20
    ld sp, hl
    nop
    ldh a, [$ff27]
    rst RST_38
    dec b
    nop
    rrca
    di
    db $fd
    db $fd
    cp $ff
    rst RST_38
    ld a, [hl]
    daa
    rst RST_38
    inc bc
    rra
    db $e3
    db $fc
    ld a, [hl+]
    sub [hl]
    sbc [hl]
    rst RST_08
    or $7b
    nop
    jr c, jr_037_5e65

    ld [bc], a
    ret nz

    ldh a, [$fff8]

jr_037_5e65:
    cp $ff
    rst RST_38
    daa
    nop
    inc bc
    ld [bc], a
    ld sp, $ffd7
    daa
    nop
    ld [bc], a
    db $10
    jr z, jr_037_5e65

    db $fc
    ldh [$ff27], a
    nop
    rlca
    rrca
    rrca
    rra
    ld e, $3e
    ld a, $7d
    ld a, h
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst RST_28
    rst RST_28
    daa
    rst RST_18
    ld [bc], a
    daa
    cp a
    ld [bc], a
    xor $1e
    ld a, h
    db $fd
    ei
    ei
    di
    nop
    daa
    rst RST_38
    ld [bc], a
    ld a, a
    cp a
    cp a
    rst RST_18
    nop
    daa
    rst RST_38
    ld b, $00
    daa
    rst RST_38
    ld b, $00
    cp $27
    rst RST_38
    dec b
    nop
    ccf
    rst RST_08
    rst RST_20
    ei
    cp $ff
    rst RST_38
    nop
    daa
    rst RST_38
    inc b
    ld a, a
    ccf
    nop
    daa
    rst RST_38
    ld b, $00
    rst RST_18
    rst RST_08
    pop hl
    xor $f7
    rst RST_30
    ei
    nop
    inc de
    adc e
    adc l
    ld c, $e6
    di
    ld sp, hl
    nop
    dec e
    add b
    ld b, b
    rst RST_38
    nop
    rst RST_38
    db $fc
    rst RST_38
    rst RST_38
    rst RST_38
    ccf
    rst RST_38
    ld e, a
    dec b
    rst RST_38
    nop
    rst RST_38
    ld e, a
    inc bc
    nop
    nop
    add hl, bc
    nop
    ld a, [$0313]
    cp a
    inc de
    ld [bc], a
    nop
    rst RST_38
    rrca
    rst RST_38
    add e
    rst RST_28
    rst RST_38
    pop af
    rst RST_38
    cp $13
    inc b
    ld a, a
    ld a, [hl-]
    sbc e
    rst RST_38
    dec h
    pop hl
    sbc [hl]
    ldh a, [c]
    db $ed
    ld hl, sp-$09
    ld hl, sp-$11
    di
    db $fc
    ld sp, hl
    cp $02
    ld bc, $ffff
    rst RST_18
    rst RST_38
    rst RST_18
    ccf
    ccf
    rst RST_18
    rra
    ld [$e51e], a
    and e
    inc h
    db $db
    inc de
    inc b
    ld d, [hl]
    rrca
    inc de
    ld [bc], a
    add b
    ld e, h
    ld [$53fd], sp
    rst RST_38
    ret nz

    ld de, $2802
    inc bc
    add sp, $0f
    ld [bc], a
    rra
    daa
    nop
    ld [hl], a
    ld a, b
    rst RST_38
    add d
    ld a, e
    ld [bc], a
    rlca
    rst RST_38
    ld a, a
    dec c
    ld [bc], a
    push hl
    ld b, $05
    nop
    nop
    sbc e
    ld [bc], a
    inc de
    ld bc, $ff17
    rst RST_28
    xor [hl]
    inc bc
    ld [bc], a
    add e
    rst RST_38
    ldh a, [$ff5c]
    ld a, [bc]
    ldh [$ff09], a
    nop
    ret nz

    ld a, [$085c]
    rrca
    and l
    inc b
    rra
    rst RST_38
    adc a
    rst RST_38
    rst RST_00
    db $eb
    rst RST_38
    jp Jump_000_0025


    pop af
    ld bc, $fe00
    rst RST_38
    ld a, [bc]
    rst RST_38
    ld [hl], l
    add c
    ld a, $c1
    adc $e0
    rst RST_00
    ldh a, [$ff7f]
    db $e3
    db $fc
    pop af
    db $fc
    ld hl, sp-$02
    db $fc
    nop
    rrca
    ld hl, sp+$12
    rrca
    inc h
    rrca
    ld [hl], $07
    nop
    nop
    ld b, d
    inc a
    ld a, [hl]
    rst RST_38
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    nop
    nop
    ld l, b
    rlca
    ld l, a
    rst RST_38
    nop

jr_037_5f96:
    ld l, a
    jr nz, jr_037_5f99

jr_037_5f99:
    nop
    ret nz

    ld a, $fe
    ei
    nop
    cp $47
    db $10
    ld [$cfe7], sp
    jr nz, jr_037_5f96

    rst RST_38
    nop
    nop
    nop
    add [hl]
    ld a, b
    cp $02
    cp $b5
    add d
    ld e, b
    inc de
    rst RST_08
    ld c, a
    db $10
    add d
    ld a, h
    ld d, h
    inc de
    jr z, @+$01

    rst RST_00
    rst RST_28
    jr nz, @-$0f

    jr nz, jr_037_5fc4

    nop

jr_037_5fc4:
    ld b, [hl]
    rst RST_38
    ld a, [hl-]
    halt
    ld [$007e], sp
    ld [bc], a
    ld [bc], a
    ld l, h
    db $fd
    nop
    ld c, h
    ld de, $00ef
    rlca
    inc b
    adc h
    ld [hl], h
    cp $54
    stop
    ld e, $06
    ldh [rP1], a
    jp hl


    rlca
    rst RST_38
    xor $01
    rst RST_28
    nop
    rrca
    nop
    or b
    ld d, b
    ei
    ldh [c], a
    inc e
    sub [hl]
    ld de, $0002
    cpl
    ret nz

    add sp, $7f
    rlca
    rst RST_28
    jr nz, @+$71

    ld h, b
    ldh a, [$ff30]
    sub [hl]
    ld de, $feff
    nop
    cpl
    nop
    ld l, a
    jr z, jr_037_6056

    ld a, $ff

Jump_037_6009:
    ld [hl], b
    ld c, $1c
    ld [bc], a
    ld h, $60
    ld l, b
    nop
    rst RST_38
    ld l, d
    ld b, $26
    db $e4
    jp z, $ec26

Jump_037_6019:
    inc bc
    rst RST_38
    rst RST_28
    add b
    rst RST_28
    ld h, b
    sbc e
    ld a, b
    and $1e
    rst RST_38
    ld a, b
    ld b, $f8
    ld b, $7c
    ld [bc], a
    cp $e0
    cp a
    ld h, $e4
    adc $26
    jp hl


    ld b, $a0
    db $10
    ret nz

    rst RST_38
    rst RST_20
    ld h, b
    adc [hl]
    halt
    ldh [rNR34], a
    db $fc
    ld [bc], a
    rst RST_38
    db $fc
    ld [bc], a
    sbc $c0
    ld e, [hl]
    sbc b
    adc h
    ld h, h
    rrca
    ld a, $00
    ld a, [hl]
    nop
    ld b, h
    inc de
    ld c, h
    db $10
    ld c, l
    db $10
    cp d
    ld [de], a
    ld e, a

jr_037_6056:
    ld [bc], a
    ldh a, [$ff30]
    rrca
    nop
    ld l, h
    ld de, $0fef
    ld [hl+], a
    cp a
    db $fc
    inc e
    inc bc
    inc bc
    ret


    ld h, $1c
    ld hl, $ea00
    cp e
    ld [de], a
    nop
    add hl, de
    inc hl
    nop
    inc l
    ld hl, $0000
    ld h, $b7
    ld e, b
    ld a, $40
    ld b, [hl]
    ld de, $036c
    ld c, h
    inc de
    sub d
    ld a, c
    ld l, h
    ld d, h

jr_037_6084:
    add hl, de
    ld e, [hl]
    ld de, $7e80
    ldh a, [c]
    ld c, $56
    inc de
    sbc $3a
    inc hl
    add b
    ld a, [hl]
    db $fc
    ld [bc], a
    ld [hl-], a
    ld hl, $e708
    cp a
    rrca
    ldh [$ff03], a
    nop
    nop
    ld a, b
    ld [bc], a
    jr nz, jr_037_60a2

jr_037_60a2:
    rst RST_38
    ld c, $02
    ld h, b
    nop
    ld h, c
    rrca
    ld l, [hl]
    ld h, c
    sbc $b4
    ld de, $0083
    add h
    ld a, b
    sub [hl]
    ld de, $323e
    rst RST_38
    ld [bc], a
    ldh [c], a
    ld [$cee0], sp
    ld hl, $00ef
    rst RST_20
    cpl

jr_037_60c1:
    jr z, jr_037_6084

    ld d, c
    db $10
    halt
    ld hl, $000e
    jr nz, jr_037_60c1

    or c
    ld [de], a
    rst RST_28
    ld h, b

jr_037_60cf:
    and h
    ld de, $3ec0
    call c, $ffc2
    and [hl]
    ld h, b
    call z, $eb2c
    rlca
    ld l, h
    inc bc
    rst RST_38
    adc a
    nop
    rst RST_00
    jr nz, jr_037_60cf

    db $10
    xor a
    ld l, b
    rst RST_38
    call $f13c
    dec c
    ld a, h
    ld [bc], a
    db $fc
    jp nz, $8eff

    ld b, b
    adc $2c
    ld [$c906], a
    ld h, $3c
    and b
    db $10
    rst RST_10
    inc d
    ld hl, sp+$06
    db $fc
    ld [bc], a
    ld b, b
    dec c

jr_037_6104:
    ld b, b
    ld [de], a
    cp $01
    jr nz, jr_037_610a

jr_037_610a:
    nop
    ld c, b
    daa
    ld c, a
    jr nz, jr_037_617f

    cp h
    ld e, a
    db $10
    ld [hl], d
    inc de
    ld bc, $0901
    and $5c
    ld de, $1982
    ld a, [hl]
    ld h, h
    db $10
    ld e, a
    db $10
    add sp, $07
    ld [hl], $23
    xor d
    inc hl
    ld c, b
    jr nz, jr_037_6104

    add e
    ld a, h
    ld de, $212c
    ld b, [hl]
    jr c, @+$04

    ld hl, $0000
    ld a, a
    inc hl
    ld c, h
    cpl
    ld b, b
    ld l, a

jr_037_613c:
    nop
    rlca
    or c
    jr nz, jr_037_613c

    add $38
    sbc d
    jr nz, jr_037_6148

    add b
    nop

jr_037_6148:
    ldh [rIF], a
    or h
    ld e, [hl]
    ld hl, $2080
    ld hl, sp+$54
    ld de, $06fe
    ld e, a
    db $10
    xor $f8
    ld e, [hl]
    dec h
    ld h, h
    db $10
    ld l, c
    ld [hl-], a
    rrca
    ld [$2141], sp
    ld [hl], b
    rst RST_38
    inc c
    ld a, h
    ld [bc], a
    ld a, $20
    ld b, [hl]
    ld h, $68
    rst RST_38
    inc b
    ld l, h
    inc bc
    ret z

    daa
    rst RST_28
    add b
    cpl
    rst RST_38
    jr nz, @-$77

    ld b, $c9
    add hl, sp
    ldh a, [$ff0e]
    ld a, h
    rst RST_38

jr_037_617f:
    ld [bc], a
    cp [hl]
    or b
    ld e, $1c
    nop
    ldh [$ffc8], a
    cp $e1
    ld hl, $6f00
    ld h, b
    adc a
    ld l, h
    ldh [rNR32], a
    db $f4
    halt
    ld hl, $32a0
    daa
    ld e, [hl]

jr_037_6198:
    ld hl, $006f
    db $ec
    inc bc
    rst RST_38
    cpl
    nop
    adc a
    ld b, b
    rst RST_00
    jr nc, jr_037_6198

    ld [$f8fb], sp
    inc b
    ldh [c], a
    db $10
    add b
    ld a, [hl]
    ld b, b
    ld l, $e0
    rst RST_38
    jp nz, $c420

    inc l
    db $ed
    inc bc
    ld l, [hl]
    ld bc, $2fff
    nop

jr_037_61bc:
    rrca
    ret nz

    and $e0
    ld a, [$f9f8]
    db $fc
    ccf
    inc bc
    inc de
    ld de, $c3fe
    jr nc, jr_037_61bc

    ld [$e0fe], sp
    ld de, $82dc
    xor $e0
    ld a, [$fcf0]
    ld bc, $1dfc
    nop
    add b
    rst RST_38
    ld a, b
    ld b, c
    ld a, h
    ld h, b
    ld a, b
    ld b, [hl]
    db $10
    ccf
    rst RST_38

jr_037_61e6:
    ld b, b
    ld c, a
    ld [hl], b
    ld [hl], e
    ld a, h
    ld c, h
    ld a, a
    ld h, e
    rst RST_38
    nop
    ret nz

    ld [bc], a
    ldh [rP1], a
    ld [hl], b
    nop
    jr c, @+$01

    nop
    rra
    ld b, b
    ld b, b
    ld h, b
    ld b, [hl]
    jr nc, @+$25

    rst RST_38
    nop
    ld [bc], a
    ldh a, [$fff2]
    ldh a, [$ff82]
    nop
    ld [bc], a
    rst RST_38
    nop
    rst RST_38
    nop
    nop
    ldh a, [rSC]
    nop
    ld [bc], a
    rst RST_38
    db $f4
    ld b, h
    db $f4
    inc d
    halt
    inc b
    nop
    nop
    ld a, [hl]
    jr z, jr_037_621f

    di

jr_037_621f:
    ld d, b
    nop
    nop
    jr nc, jr_037_61e6

    ld b, b
    nop
    rst RST_38
    ld b, d
    db $10
    ld h, d
    nop
    ld [hl+], a
    db $10
    ld [hl-], a
    adc b
    rst RST_38
    ld a, [hl-]
    nop
    ld [de], a
    nop
    ld a, [$f210]
    ld e, b
    rst RST_38
    ld a, [$e46c]
    ld d, [hl]
    ldh a, [c]
    adc b
    cp d
    ld b, b
    rst RST_38
    jp c, $ca00

    rst RST_38
    rst RST_38
    nop
    rrca
    nop
    sbc a
    ld a, $00
    ld a, [hl]
    nop
    db $fc
    scf
    nop
    add hl, hl
    nop
    add c
    rst RST_38
    add c
    adc c
    sub l
    add c
    add c
    sub l
    and c
    add c
    rst RST_30
    add c
    sbc c
    add l
    ld [hl], h
    ld bc, $8080
    adc c
    sub h
    rst RST_38
    add b
    add b
    sub a
    and b
    add b
    add b
    sbc c
    add h
    rst RST_38
    add b
    add b
    or a
    add b
    add b
    add b
    add e
    sub a
    rst RST_38
    add a
    add a
    sub a
    and a
    add b
    add a
    sub b
    add b
    rst RST_38
    add e
    add e
    or d
    add d
    nop
    nop
    add a
    ld a, e
    rst RST_08
    rst RST_38
    cp $ff
    cp $28
    ld bc, $016c
    nop
    nop
    rst RST_38
    ret


    and h
    add b
    ld h, b
    add a
    ld h, b
    nop
    ldh [rIE], a
    add hl, bc
    inc b
    ret nz

    ret nz

    ld d, [hl]
    ld b, c
    nop
    add hl, de
    cp $ae
    ld bc, $f704
    ld [$df0c], sp
    rst RST_18
    db $10
    and c
    rst RST_18
    ld [hl], $03
    ld [hl], $03
    ld h, b
    nop
    xor l
    ld bc, $ae9c
    ld bc, $ff10
    rst RST_18
    jr nz, jr_037_62e5

    ld a, a
    ld a, a
    nop
    ld a, a
    nop
    ld d, a
    nop
    ld [bc], a
    ei
    jp nc, $fe02

    push af
    nop
    cp $f6
    ld bc, $7fef
    ld b, b
    ld a, a
    ld h, b
    nop
    ld de, $180f
    ld h, b
    rst RST_38
    ld h, a
    ld a, b
    jr @+$81

jr_037_62e5:
    rlca
    adc b
    adc c
    db $e4
    rst RST_38
    ld h, b
    ld hl, sp+$18
    cp $06
    ldh a, [$ff0e]
    ldh a, [$fff5]
    ld c, $f6
    nop
    ld a, $d0
    ld [bc], a
    ld h, d
    nop
    ld [hl-], a
    add b
    ld a, a
    sbc d
    ret nz

    rst RST_08
    ret nz

    ret nz

    sub b
    add d
    jr z, jr_037_6308

    rst RST_28

jr_037_6308:
    ld b, b
    ld b, b
    and b
    and b
    ld [hl], $03
    or $04
    nop
    rst RST_38
    jp nc, Jump_000_0a00

    ret nz

    ld c, d
    ldh [rNR52], a
    nop
    rst RST_38
    ld b, $00
    ldh a, [c]
    nop
    ld [bc], a
    ld [$1002], sp
    rst RST_38
    jp nc, Jump_037_5a18

    sub h
    sbc h
    jp nc, $e85e

    ld a, a
    ld l, [hl]
    ldh a, [rNR21]
    ld hl, sp+$0a
    ld b, b
    jr c, @+$64

    nop
    db $fc
    ld h, a
    ld b, $6c
    dec bc
    jr jr_037_633d

jr_037_633d:
    jp $10c3


    nop
    ld a, [$0780]
    add hl, de
    cp e
    nop
    rla
    nop
    add d
    add d
    adc d
    rst RST_38
    sub d
    add d
    add d
    or d
    add d
    add d
    add d
    ld [de], a
    rst RST_38
    ld a, [bc]
    jp nz, $12c2

    ld [bc], a
    rst RST_38
    ret nz

    add c
    ei
    add b
    cp l
    and e
    ld de, $81a0
    add b
    rst RST_38
    nop
    rst RST_38
    db $fd
    rst RST_38
    ld b, b
    ld b, b
    ld c, b
    ld d, l
    ld b, b
    ld b, b
    ccf
    ld d, [hl]
    ld b, c
    ld b, b
    ld b, b
    ld e, b
    ld b, l
    or h
    ld de, $0029
    ld a, c
    ld [hl], e
    jp nc, $c402

    inc d
    pop hl
    rra
    nop
    rst RST_28
    call nz, $bf19
    rst RST_38
    rst RST_38
    ld a, h
    rst RST_38
    add [hl]
    add [hl]
    sub $19
    nop
    rst RST_30
    ld hl, sp+$01
    ld bc, $17c4
    ld sp, hl
    rlca
    db $fd
    inc bc
    rst RST_38
    ld a, c
    rlca
    add hl, bc
    ld [hl], a
    ld bc, $017f
    rra
    rst RST_38
    ld h, c
    ld h, c
    ld a, [hl]
    ld a, [hl]
    ld b, b
    ld c, [hl]
    ld [hl], b
    ld [hl], d
    push af
    ld e, h
    dec c
    nop
    ld e, a
    ld bc, $4e10
    ld b, c
    jr z, jr_037_63e7

    rst RST_38
    ld hl, sp-$3f
    ldh a, [$ff8c]

jr_037_63be:
    ld b, b
    ld a, a
    sub b
    sbc a
    rst RST_38
    ld h, b
    db $e3
    call nc, Call_000_0734
    rst RST_30
    rlca
    ld [hl], h
    rst RST_38
    ld [hl], a

jr_037_63cd:
    inc b
    rlca
    inc b
    ld a, d
    ld a, e
    ld a, h
    ld h, h
    rst RST_38
    ld a, a
    ld b, e
    ld [hl], b
    ld l, a
    adc b
    sbc a
    ldh [$ff67], a
    rst RST_38
    adc h
    add c
    and h
    ld h, b
    ld [$8ee9], sp
    xor $ff

jr_037_63e7:
    add hl, bc
    add hl, hl
    ld c, h
    ld c, e
    ld [hl], b
    ld [hl], a
    ld c, b
    ld c, b
    rst RST_28
    nop
    ld a, [de]
    nop
    jp z, Jump_000_1050

    ret c

    ld [de], a
    ld e, $ff
    ld h, b
    ld l, [hl]
    ld [hl], b
    ld d, d
    ld a, b
    ld c, b
    nop

jr_037_6401:
    nop
    rst RST_38
    dec d
    ld [$0000], sp
    sub c
    jr z, jr_037_640a

jr_037_640a:
    nop
    ld sp, hl
    sub l
    ld h, e
    jr nz, jr_037_63be

    ld bc, $9449
    nop
    nop
    sub a
    rst RST_38
    ld h, b
    nop
    nop
    ld e, c
    add h
    nop
    nop
    ld [hl], $ff
    ld b, b
    or [hl]
    nop
    db $dd
    nop
    xor a
    nop
    jp c, $83fe

    jr nz, jr_037_6401

    nop
    ld a, l
    inc bc
    ret nc

    ld [$ff02], sp
    ld [bc], a
    ld c, d
    sub d
    ld [bc], a
    ld [bc], a
    sub d
    ld h, d
    ld [bc], a
    rst RST_38
    ld [bc], a
    ld d, d
    adc d
    ld [bc], a
    ld [bc], a
    ld a, [$00fa]
    rst RST_18
    nop
    cp l
    and b
    cp l
    or b
    and h
    jr nz, jr_037_63cd

    add e
    or e
    add b
    rst RST_38
    ld a, [$b000]
    dec de
    ld e, a
    ld e, a
    ret nc

    inc bc
    add b
    sub a
    rst RST_38
    add b
    add b
    jp c, Jump_037_4003

    call $ef01
    nop
    ld bc, $01fd
    ld a, [$0003]
    ldh a, [rP1]
    inc c
    nop
    inc bc
    ldh a, [$ffa8]
    inc bc
    xor e
    db $10
    scf
    ld bc, $01db
    ld e, a
    nop
    ld a, [hl+]
    nop
    db $ed
    ld bc, $016c
    ld a, a
    ld b, c
    ld [bc], a
    inc de
    ld h, a
    ld c, b
    ld l, b
    rst RST_38
    ld l, a

jr_037_648a:
    nop
    rlca
    ld hl, sp+$78
    ret nz

    jp $aff8


    jr c, jr_037_648a

    ld c, $f8
    rla
    ld de, $280a
    nop
    ld a, $ff
    rlca
    or $07
    db $f4
    rlca
    ld b, $f8
    ld sp, hl
    rst RST_38
    cp $c6
    cp a
    add c
    ldh a, [$ffcf]
    add b
    sbc a
    rst RST_38
    ret nc

    ld sp, $7686
    rlca
    push af
    add a
    db $e4
    rst RST_38
    rlca
    inc [hl]
    ld b, e
    ld b, d
    ld a, h
    ld a, h
    ld a, a
    ld b, e
    rst RST_38
    ld c, e
    ld d, e
    ld e, d
    ld h, d
    sbc d
    sub d
    ldh [c], a
    ld h, d
    rst RST_38
    adc h
    ld l, h
    adc a
    db $eb
    ld c, $69
    inc c
    dec bc
    rst RST_38
    nop
    ld a, [hl-]
    ret nz

    jp z, $5290

    inc e
    call c, Call_000_12ff
    sbc $10
    ld e, $60
    ld h, [hl]
    ld e, b

jr_037_64e3:
    ld a, b
    ldh a, [c]
    ld h, b
    dec hl
    add hl, de
    pop bc
    nop
    ld [hl], d
    add hl, hl
    rst RST_38
    rst RST_38
    jp hl


    nop
    db $fd
    cp d
    adc c
    jr nz, jr_037_64e3

    nop
    cp c
    rlca
    jr nc, jr_037_6572

    rst RST_38
    nop
    add a
    jr nc, jr_037_6577

    xor l
    nop
    db $db
    nop
    scf
    ld l, l
    nop
    cp e
    ld h, a
    ld d, $00
    add b
    and b
    inc a
    or b
    inc a
    ccf
    cp $ff
    inc bc
    ccf
    ld sp, hl
    ld sp, hl
    ldh [rNR41], a
    call nz, $bf14
    rra
    ldh [rTIMA], a
    ld a, [$e7c0]
    call nz, $fd17
    rst RST_20
    ld [bc], a
    ldh [$ff1f], a
    add $37
    xor $26
    rst RST_38
    nop
    xor [hl]
    ei
    nop
    dec d
    ld l, b
    ld [de], a
    rlca
    ld a, [hl]
    ld bc, $037c
    cp a
    ld a, h
    inc bc
    ld a, b
    rlca
    ld [hl], b
    rrca
    db $ec
    ld bc, $e740
    ld b, b
    ld a, a
    ld a, a
    jr jr_037_656a

    jr jr_037_656c

    ld c, a

jr_037_654c:
    ld b, b
    jr z, @+$01

    dec hl
    ret nc

    rst RST_10
    nop
    rlca
    ldh a, [$fff0]
    rst RST_20
    rst RST_38
    rla
    rst RST_20
    ld d, $c7
    inc [hl]
    add a
    halt
    rlca
    rst RST_38
    db $f4
    ld a, d
    ld h, c
    ld a, b
    ld b, a
    ld l, b
    ld a, a
    add b
    rst RST_18

jr_037_656a:
    add e
    db $f4

jr_037_656c:
    ld [hl], h
    rst RST_20
    rla
    ld a, [hl+]
    ld b, b
    ld [hl], h

jr_037_6572:
    ld [hl], b
    rst RST_38
    ld [hl], c
    ld c, d
    ld c, d

jr_037_6577:
    ld d, e
    ld c, e
    ld h, d
    ld e, d
    ld [bc], a
    rst RST_38
    ld a, [hl-]
    pop bc

jr_037_657f:
    ret nz

    xor $2e
    adc c
    cpl
    ld b, b
    push af
    ld a, d
    ld d, b
    jr nc, jr_037_654c

    ld d, [hl]

jr_037_658b:
    ld [hl-], a
    ld e, [hl]
    nop
    ld c, $70
    rst RST_38
    ld [hl], b
    inc b
    db $f4
    ld [$10eb], sp
    rst RST_18
    jr c, @+$0d

    cp a
    ld a, a
    nop
    db $10
    ld b, b
    db $ed
    nop
    ldh a, [$ff35]
    jp c, $2902

    nop
    rst RST_38
    ld bc, $01fd
    db $fd
    ld [bc], a
    ei
    inc bc
    ei
    ccf
    rst RST_38
    rst RST_38
    inc b
    rst RST_30
    inc b
    rst RST_30
    ld l, [hl]
    ld c, a
    ld [hl], b
    ld c, l
    rst RST_38
    jr nz, jr_037_65fd

    jr nz, jr_037_657f

    db $10
    rst RST_18
    inc e
    rst RST_18
    sbc a
    rst RST_38
    rst RST_38
    ld [$08ef], sp
    db $d3
    ld de, $4c71
    jp c, Jump_000_00fb

    ld [hl], a
    add c
    jr nz, jr_037_658b

    nop
    ld a, l
    nop
    or a
    rst RST_38
    nop
    ld l, d
    nop
    cp l
    nop
    ld c, e
    nop
    ld d, e
    rst RST_38
    nop
    sbc l
    nop
    ld e, [hl]
    nop
    ld l, [hl]
    ld b, b
    ld [hl], d
    rst RST_38
    ld h, b
    ld a, b
    ld [hl], b
    jr c, @+$3a

    ld a, [de]
    sbc b
    dec c
    rst RST_38
    call z, $a607
    inc bc
    ld h, d
    ld bc, $00d0

jr_037_65fd:
    sbc l
    cp h
    db $db
    ld b, b
    db $db
    ld a, a
    ld a, a
    ld d, $43
    inc d
    ld b, e
    ld l, b
    rst RST_38
    ld l, e
    ret nz

    ret nz

    cp $3e
    cp $00
    db $fc
    rst RST_38
    ld [bc], a
    ldh [rNR34], a
    ret nz

    ld a, $80
    ld a, [hl]
    nop
    db $fd
    cp $24
    jr nc, @-$06

    cp a
    add a
    cp $c1
    cp b
    db $fd
    add a
    inc l
    ld sp, $dfc0
    add h
    ld [hl], l
    nop
    ld bc, $7eff
    ld a, [hl]
    ld a, a
    ld h, c
    ld e, b
    ld b, a
    ld [hl], b
    ld l, a
    rst RST_38
    ld e, b
    ld c, a
    ld h, b
    ld h, b
    dec bc
    db $ec
    rrca
    ld l, b
    rst RST_38

jr_037_6642:
    nop
    nop
    ld a, e
    ld a, e
    ld b, d
    ld c, d
    ld b, d
    ld e, d
    ld a, a
    ld b, d
    ld a, e
    nop
    nop
    ld c, b
    ld a, d
    ld b, b
    ld d, c
    ld d, b
    rst RST_18
    add b
    add b
    ld e, $de
    db $10
    ld e, c
    ld d, b
    nop
    nop
    rst RST_38
    ld a, h
    ld b, e
    ld [hl], b
    ld l, [hl]
    ld a, c
    ld c, c
    ld h, [hl]
    ld h, a
    rst RST_38
    ld a, [de]
    dec e
    ld a, [hl]
    ld h, c
    ld a, [hl]
    ld bc, $03fc
    ei
    rra
    jr @+$04

    ld de, $617e
    ld e, h
    ld b, e
    ld a, b
    rst RST_38
    ld h, d
    ld c, b
    ld c, b
    ld h, [hl]
    ld h, [hl]
    add [hl]
    halt
    dec b
    rst RST_38
    push af
    add d
    ld [hl], e
    ld c, $c9
    inc a
    inc sp
    ld hl, sp-$01
    rst RST_00
    ld hl, sp-$39
    ldh a, [$ff8e]
    ld h, e
    ld a, h
    ld c, [hl]
    rst RST_38
    ld [hl], b
    ld a, l
    ld h, c
    ld e, e
    ld l, d
    ld h, a
    ld h, [hl]
    ld d, a
    rst RST_38
    ld d, h
    ld [hl], $26
    push af
    call nz, Call_000_002e
    add sp, -$01
    nop
    rst RST_20
    inc bc
    rst RST_28
    rlca
    rst RST_18
    rrca
    ccf
    rst RST_38
    ld e, $fe
    ld a, h
    db $fc
    ld hl, sp+$18
    ld bc, $ff10
    add d
    jr nz, jr_037_6642

    ld b, b
    ld a, [bc]
    add b
    dec bc
    nop
    rst RST_18
    dec [hl]
    nop
    ld d, [hl]
    nop
    db $fd
    ld [$7041], sp
    inc c
    rst RST_38
    ld h, e
    inc de
    rrca
    ld c, h
    ccf
    jr nc, jr_037_6753

    ld h, b
    rst RST_38
    ld a, [hl]
    ld b, c
    jr jr_037_66f8

    ld [hl], b
    ld l, [hl]
    ldh a, [$ff8e]
    cp $18
    ld d, c
    add c
    ld a, l
    add e
    ld [hl], d
    rrca
    db $ec
    ld sp, hl
    rst RST_38
    pop bc
    rst RST_30
    sub [hl]
    rst RST_00
    add $b7
    or h
    ld [hl], a
    rst RST_38
    ld b, [hl]
    or $84
    di
    nop
    db $f4

jr_037_66f8:
    ld [bc], a
    di
    rst RST_38
    ld bc, $01f3
    jp $8701


    inc bc
    ld h, l
    sub d
    db $f4
    db $10
    ld h, d
    ldh [c], a

jr_037_6708:
    jr nz, jr_037_6708

    nop
    ld a, a
    ld [bc], a
    ld b, c
    jp nz, $0f50

    rst RST_08
    ld h, b
    rra
    ret nz

    ccf
    nop
    ld h, c

jr_037_6718:
    nop
    ld de, $405f
    rst RST_18
    ld a, h
    ld h, e
    ld b, b
    ld c, a
    ld l, b
    ld b, e
    ld d, b
    rst RST_30
    rst RST_30
    rst RST_38
    db $e4
    rla
    add $37
    add h
    ld [hl], h
    ld b, $f6
    rst RST_38
    nop
    ldh a, [rIF]
    rrca
    rla
    rla
    db $f4
    rst RST_30
    rst RST_38
    ld b, $f7
    inc [hl]
    rst RST_00
    rst RST_30
    ld b, $b0
    add b
    rst RST_38
    rrca
    rrca
    ld [hl], b
    ld a, a
    rst RST_28
    rst RST_28
    ld [$ffe9], sp
    jr z, jr_037_6718

    add sp, $0f
    ldh [$ff80], a
    dec de
    dec de

jr_037_6753:
    rst RST_38
    ld h, d
    ld l, d
    ld b, d
    ld c, e
    ld a, b
    ld a, d
    ld c, b
    ld [hl], d

jr_037_675c:
    ld a, a
    ld a, b
    ld b, d
    ld h, b
    ld b, b
    ld e, $1e
    ret nc

    ld e, c
    ld d, c
    rst RST_38
    ret nc

    ld hl, sp-$0f
    ldh a, [$ffe2]
    ldh [$ffc5], a
    ret nz

    rst RST_30
    adc e
    add b
    ld c, $ba
    ld d, b
    ld e, e
    nop
    halt
    ld a, [hl]
    rst RST_38
    ld h, c
    ld a, h
    ld b, e
    ld a, [hl]
    ld h, b
    ld a, c
    ld b, c
    ld a, [hl]
    rst RST_38
    ld h, a
    ld e, [hl]
    ld e, c
    ld a, $21
    ld a, h
    ld b, e
    sbc a
    db $fd
    db $10
    ld l, d
    ld d, b
    ld b, c
    ld a, h
    ld h, e
    ld a, h
    ld b, d
    ld a, d
    rst RST_38
    ld l, b
    ld [hl], h
    ld b, b
    ld b, b
    ld b, b
    rst RST_28
    rlca
    call c, Call_000_0cff
    cp h
    inc e
    db $fc
    ld a, h
    db $fc
    db $fc
    ld a, l
    rst RST_38
    ld a, h
    ld a, [hl-]
    jr c, jr_037_675c

    jr nc, jr_037_67c6

    ld bc, $f730
    ld [bc], a
    jr nz, jr_037_67bb

    or [hl]
    ld d, b
    rla
    nop
    dec l
    nop
    rst RST_10

jr_037_67bb:
    ld a, e
    nop
    xor l
    db $eb
    ld bc, $d77e
    ld b, b
    ld [hl], e
    nop
    rst RST_38

jr_037_67c6:
    ld h, [hl]
    nop
    ld c, h
    nop
    inc e
    nop
    rrca
    ld [$1bff], sp
    jr @+$3a

    jr c, jr_037_6850

    ld a, h
    ld a, [hl]
    ld a, h
    rst RST_38
    inc e
    inc e
    ld [bc], a
    nop
    inc b
    nop
    db $10
    ld de, $807f
    ld [bc], a
    ret nz

    rlca
    ret nz

    dec c
    nop
    xor c
    ld h, c
    ld [hl], c
    halt
    sub l
    jr nc, @-$1e

    ld l, a
    or b
    dec sp
    ld a, [hl]
    ld bc, $0001
    ld d, c
    ld e, d
    inc d
    ld h, e
    ld l, a
    ld [hl], a

jr_037_67fc:
    jr nz, jr_037_67fc

    cp $16
    ld [hl-], a
    ld c, $1a
    ld d, d
    cp a
    ldh a, [$fffc]
    ei
    db $fc
    jp Jump_000_29f8


    ld d, b
    ldh [rIE], a
    sbc a
    ret nc

    ld hl, sp+$07
    rlca
    rst RST_30
    or $40
    db $dd
    ld e, a
    inc bc
    db $10
    ld c, e
    ld l, b
    ld l, b
    inc l
    ld [hl], b
    db $f4
    rst RST_20
    rst RST_38
    inc d
    rst RST_00
    inc [hl]
    ld b, d
    ld e, e
    ld h, b
    ld b, b
    rrca
    rst RST_38
    rrca
    ld l, c
    ld l, [hl]
    res 5, h
    ret


jr_037_6832:
    inc l
    adc h
    cp a
    ld l, b

jr_037_6836:
    inc bc
    db $e3
    ld [$708a], sp
    ld d, c
    ld d, c
    ld a, b
    rst RST_30
    ld h, [hl]
    ld b, [hl]
    jr @+$5b

    ld h, b
    ret nc

    inc e
    or c
    ld de, $e0ff
    ld h, $80
    ld c, b
    add b
    db $10
    add b

jr_037_6850:
    and a
    rst RST_38
    jr nz, jr_037_67fc

    inc bc
    daa
    sub b
    db $10
    add b
    add b
    cp $64
    nop
    ld b, c
    inc e
    ld a, $00
    ret nz

    nop
    ld hl, $80fb
    ret nz

jr_037_6867:
    ld h, h
    nop
    ld a, h
    add d
    add d
    ld a, h
    ld a, h
    sub a
    nop
    nop
    inc a
    ld [hl], a
    ld b, b
    ld a, [hl]
    add hl, hl
    nop
    add b
    inc l
    rrca
    ld a, $80
    jr c, jr_037_68fd

    nop
    ld hl, sp+$00
    add b
    sub b
    jr c, jr_037_6832

    ld [bc], a
    rst RST_38
    or b
    inc e
    ldh [$ff38], a
    add b
    ld [hl], b
    add b
    ld h, b
    xor b
    ld a, h
    ld [hl], b
    and c
    jr nc, jr_037_6836

    ld sp, $14c0
    nop
    cp b
    jp nc, Jump_037_7d10

    di
    nop
    rst RST_10
    sub e
    jr nc, jr_037_6867

    rla
    ldh [rP1], a
    ld d, a
    nop
    dec b
    xor l
    or b
    ld a, [hl-]
    ld l, l
    sub c
    jr nc, jr_037_68c1

    add b
    dec b
    db $10
    ld c, b
    ld h, b
    rrca
    ld a, h
    ld a, b
    ld [hl], b
    ld h, b
    ld h, b
    rrca
    dec b
    ld a, a
    ld [bc], a
    ld e, [hl]
    ld a, [hl]

jr_037_68c1:
    ld c, b
    ld h, b
    add a
    rst RST_00
    add h
    ld b, $01
    ld b, $3e
    cp $c4
    add b
    adc a
    ld sp, $6343
    ld c, h
    ld [hl], e
    ld a, [bc]
    ld a, e
    ld c, d
    ld e, c
    ld h, [hl]
    ld [$08e8], sp
    ld b, b
    sbc b
    ld h, b
    ld b, b
    ld b, [hl]
    ld c, b
    db $10
    ld d, b
    adc b
    ret nz

    ld [hl], b
    cp b
    rst RST_28
    ld a, l
    rst RST_10
    ld l, l
    nop
    inc e
    add b
    nop
    nop
    ret nz

    ld e, b
    xor e
    nop
    nop
    inc e
    nop
    inc e
    nop
    nop
    cp d
    ld h, b
    ret nz

jr_037_68fd:
    inc bc
    rra
    dec b
    ld a, a
    ld [bc], a
    ld a, [hl]
    ld c, $05
    ld hl, sp+$02
    ldh a, [$ffe0]
    add c
    rlca
    db $fc
    ld hl, sp-$10
    di
    add $34
    add $c5
    ld b, h
    ld [hl], $c5
    rlca
    inc b
    inc bc
    dec c
    sub c
    dec c
    inc bc
    sbc e
    inc hl
    ld b, d
    ld b, c
    ld b, [hl]
    ld c, b
    jp nc, $b9ca

    ld a, d
    halt
    ld c, [hl]
    ld e, $1c
    dec b
    nop
    rlca
    ld e, e
    ld h, b
    rrca
    ld [hl], e
    rlca
    rrca
    rra
    rra
    rrca
    ld [hl], b
    ld b, b
    ld h, b
    ld b, c
    ld h, c
    ld c, d
    ld h, b
    ld a, h
    ld [hl], $74
    or $f1
    rst RST_00
    add hl, sp
    pop bc
    scf
    ld [hl], b
    adc a
    ld a, $7c
    ld a, b
    ld a, b
    ld h, e
    dec bc
    ld [hl], d
    ld [hl], d
    ld h, c
    ld b, a
    add hl, bc
    db $eb
    ld a, [hl+]
    ld [bc], a
    ld a, [de]
    ld a, d
    ld a, b
    halt
    ld c, [hl]
    ld e, $5c
    ld [$0106], sp
    dec b
    nop
    inc b
    ld b, c
    ld a, $c0
    jr c, jr_037_6970

    dec b
    nop
    ld [bc], a
    ld a, $41
    ld a, $00

jr_037_6970:
    rst RST_38
    dec b
    nop
    ld [bc], a
    rra
    inc a
    ld h, e
    inc e
    ld [hl], b
    ld h, b
    ld b, b
    ld h, c
    ld c, $f6
    dec b
    ld b, $02
    ld e, $79
    and $c1
    add l
    call z, $c693
    inc [hl]
    or $34
    ld b, h
    scf
    call nc, $f436
    ld [hl], e
    xor $9e
    jp hl


    ldh [c], a
    jp c, Jump_037_7a3a

    ld a, c
    ld h, a
    ld c, a
    dec b
    nop
    inc bc
    ld [bc], a
    ld b, $0c
    jr jr_037_69a9

    nop
    rlca

jr_037_69a6:
    ld de, $2b00

jr_037_69a9:
    ld a, e
    dec hl
    cp $02
    ld bc, $00ef
    adc h
    nop
    dec hl
    rst RST_38
    ld [bc], a
    nop
    rst RST_28
    rst RST_28
    inc bc
    jr nc, jr_037_69e6

    rst RST_38
    ld [bc], a
    nop
    db $fc
    ld [$16e8], a
    cp $e0
    ld [$c420], sp
    add d
    dec bc
    xor c
    ccf
    adc b
    rlca
    inc sp
    ld a, [hl]
    ccf
    ld e, b
    rst RST_28
    rra
    call c, $9e7b
    ld a, h
    ld sp, hl
    add hl, bc
    inc a
    ld a, [$ef6c]
    cp l
    ld [hl], h
    sbc c
    jr nc, jr_037_69a6

    jr jr_037_69e4

jr_037_69e4:
    and h
    adc d

jr_037_69e6:
    bit 4, d

jr_037_69e8:
    ld h, h
    jr jr_037_6a2a

    ld e, a
    inc c
    ld [bc], a
    ld a, [hl+]
    ld e, b
    pop bc
    cp $e8
    ldh [$ffcc], a
    jr c, jr_037_69e8

    ldh [$ff82], a
    ld b, $53
    and c
    ld d, h
    adc c
    or e
    ld b, h
    ld l, l
    ld d, a
    db $d3
    xor [hl]
    call nz, Call_037_76df
    ld e, l
    or $58
    push bc
    dec de
    cp $f6
    call c, $b5ba
    ld h, d
    db $10
    ld h, a
    call $9289
    ld [de], a
    dec h
    sbc [hl]
    dec hl
    nop
    inc b
    jr nz, jr_037_6a45

    adc $ac
    adc a
    ld c, a
    inc d
    ld l, a
    or e
    ld l, l
    adc [hl]
    rra
    rst RST_08

jr_037_6a2a:
    daa
    inc c
    inc de
    inc de
    and c
    db $10
    ld [bc], a
    cp $fc
    ld bc, $ed11
    db $ec
    db $10
    ld b, h
    inc b
    ret


    xor c
    ld hl, $a321
    adc [hl]
    and $0b
    ld h, c
    rst RST_00
    adc [hl]

jr_037_6a45:
    add hl, de
    inc l
    ld l, b
    nop
    ld [bc], a
    inc c
    jr @+$32

    ld h, b
    inc bc
    sbc [hl]
    dec hl
    nop
    ld [bc], a
    ld [$2010], sp
    add b
    inc c
    ld bc, $1803
    inc sp
    ccf
    ccf
    ld a, a
    ld a, $9f
    rra
    ld sp, $1cc0
    rst RST_38
    rst RST_38
    ld a, a
    nop
    ret nz

    dec hl
    ldh [rSC], a
    ldh a, [$fff0]
    ld hl, sp-$78
    ld [hl], b
    pop af
    ld a, b
    or l
    ld hl, sp+$34
    sbc d
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld bc, $af3f
    ld c, a
    ld d, b
    db $fc
    db $fd
    ld hl, sp+$01
    ei
    rst RST_20
    ldh [c], a
    ld de, $363a
    ld h, [hl]
    ld l, h
    jr z, jr_037_6a94

    ld d, [hl]
    ld h, h
    ld b, e
    sbc [hl]
    inc a
    ld a, b

jr_037_6a94:
    ld [hl], b
    ld [hl], c
    ld h, a
    sbc $ff
    ld sp, hl
    ldh [$ffc0], a
    pop bc
    add e
    rlca
    rrca
    sbc c
    rst RST_38
    ld sp, hl
    jp $1c80


    ld e, $fe
    db $fd
    add h
    ld c, $4f
    daa
    ld l, e
    cp b
    ret nz

    rra
    rlca
    ld bc, $e000
    db $fc
    rst RST_38
    ld bc, $cefe
    add $73
    ccf
    ld c, $06
    add h
    ld h, h
    sbc d
    call z, $4d1a
    ld c, c
    dec c
    ld c, [hl]
    ccf
    ld a, $9e
    ld bc, $2f7f
    cpl
    db $10
    db $eb
    ei
    db $fc
    nop
    ld sp, hl
    db $ec
    db $ec
    ld de, $8222
    adc d
    db $10

jr_037_6adc:
    inc h
    add b
    ld c, h
    inc b
    ld hl, sp-$10
    ld h, b
    ld h, b
    ld b, b
    ld b, d
    db $e4
    inc a
    rra
    jr nc, @+$43

    inc e
    ld h, c
    add b
    ld h, b
    ld b, c
    ei
    inc bc
    add e
    ld bc, $60c0
    ret nz

    adc h
    ld h, b
    jr nz, jr_037_6adc

    pop bc
    ld bc, $f161
    ld sp, hl
    ld a, [hl]
    add b
    ld b, c
    add c
    add c
    jp nz, $fffd

    ld bc, $03dc
    adc [hl]
    ld b, b
    ld hl, sp-$01
    rst RST_38
    ld h, $20
    dec h
    dec l
    ld l, l
    dec l
    ld h, a
    daa
    ld sp, $3e3e
    ld bc, $2f30
    ld l, a
    db $10
    ld bc, $fcfe
    nop
    db $10

jr_037_6b25:
    xor $ee
    db $10
    ld a, [de]
    jr nz, jr_037_6b6f

    add $f6
    or [hl]
    inc b
    ld [bc], a
    ld [de], a
    db $ec
    ld e, $6e
    ld e, a
    ld e, $3b
    dec a
    or c
    pop bc
    ld a, a
    ld b, e
    inc b
    adc a
    dec bc
    cp $2c
    call c, Call_000_3cbc
    ret c

    or b
    ld h, d
    ld b, a
    call z, $eecc
    cp $ff
    rst RST_20
    jp $ffc2


    ld a, a
    and a
    ret nc

    ld a, a
    ld l, a
    or a
    ret c

    xor $63
    adc c
    ld [hl], a
    rst RST_28
    sbc a
    scf
    ei
    inc sp
    ld [hl], e
    ld [hl], e
    inc sp
    ld a, [hl-]
    ld [hl], $a6
    adc [hl]
    ld sp, $7e3e
    ld bc, $6fd0
    ld l, a

jr_037_6b6f:
    stop
    inc h
    and b
    jr nc, jr_037_6b25

    sbc b
    ret c

    jr nz, jr_037_6bb7

    add hl, sp
    jr c, jr_037_6bb8

    cp a
    rra
    sbc a
    rrca
    nop
    adc h
    add hl, de
    inc sp
    or $ec
    db $dd
    cp a
    res 3, e
    ld e, $1e
    inc c
    ld b, a
    ldh [$ffe7], a
    jp nz, $fee7

    ld a, [hl]
    inc e
    inc bc
    db $e3
    rst RST_30
    ld l, a
    and a
    ld h, b
    ld b, a
    rlca
    di
    ei
    rst RST_38
    rlca
    sbc a
    rst RST_38
    call z, $1cf0
    ld d, $8d
    sbc [hl]
    cp [hl]
    ld a, $3c
    dec e
    inc bc
    rlca
    nop
    nop
    db $fc
    db $fc
    nop
    ld [de], a
    xor $ef

jr_037_6bb7:
    db $10

jr_037_6bb8:
    rlca
    ld d, e
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    inc bc
    rlca
    inc hl
    dec a
    ld d, d
    or c
    or e
    or a
    cp a
    ld a, $3f
    rst RST_10
    rst RST_00
    xor h
    sbc e
    pop af
    add sp, -$40
    nop
    rst RST_38
    add b
    ld c, c
    ld b, b
    ret nz

    nop
    nop

jr_037_6bd7:
    ld bc, $0cfd
    ld [hl+], a
    ld bc, $0000
    ld [hl], c
    db $d3
    and a
    rst RST_08
    add $77
    ld a, l
    ld h, [hl]
    or [hl]
    halt
    ld bc, $1e1e
    ld bc, $3721
    ld [hl], a
    ld [$8103], sp
    add b
    ret nz

    ret nz

    add b
    ld b, b
    ld b, b
    cp a
    sbc b
    db $db
    ld c, a
    daa
    inc bc
    add b
    ld h, b
    ld b, b
    ld [hl], b
    sbc a
    rst RST_20
    pop de
    ld h, [hl]
    ld hl, sp+$67
    pop af
    sub b
    inc bc
    rst RST_38
    rst RST_38
    nop
    add e
    nop
    ld c, $3d
    di
    push hl
    jp z, $8de6

    jr nc, jr_037_6bd7

    xor [hl]
    inc c
    ld [$1059], sp
    jr nc, jr_037_6c60

    ld b, c
    cp $fe
    ld bc, $f7c8
    scf
    ret nz

    ld [bc], a
    db $fd
    ei
    rlca
    rst RST_08
    sbc a
    ld a, a
    ld a, a
    ldh [$ffe0], a
    ldh a, [$fff8]
    db $fc
    cp $ff
    rst RST_38
    ld hl, sp+$7d
    cp [hl]
    ld a, a
    xor a
    ld d, l
    add d
    ldh [rNR23], a
    ld c, $03
    add hl, de
    sbc [hl]
    sbc a
    sbc a
    rrca
    rst RST_28
    nop
    ldh [$ffef], a
    rra
    add b
    add e
    push bc
    push hl
    ld bc, $de23
    ld hl, sp+$00
    ld sp, hl
    ld sp, hl
    ret nz

    adc b
    ld sp, $f979
    ei
    ei
    or a

jr_037_6c60:
    di
    db $fc
    dec hl
    rst RST_38
    inc bc
    cp $fc
    jp nz, $be7e

    ret nz

    xor $02
    nop
    ccf
    db $fc
    di
    rrca
    dec hl
    rst RST_38
    inc b
    rra
    rst RST_20
    ld sp, hl
    cp $2b
    rst RST_38
    rlca
    ccf
    rst RST_18
    rst RST_28
    rst RST_30
    ld hl, sp-$02
    dec hl
    rst RST_38

jr_037_6c84:
    dec b
    rlca
    ld bc, $fff0
    db $fc
    ldh a, [$ffc1]
    rlca
    db $e3
    ldh a, [c]
    add hl, hl
    call nz, Call_000_0c30
    add [hl]
    ldh [c], a
    ld sp, hl
    db $fd
    db $fd
    dec hl
    rst RST_38
    ld [bc], a
    ld a, [hl]
    ld a, [hl]
    sub a
    adc a
    sbc a
    ccf
    ccf
    dec hl
    ld a, a
    ld [bc], a
    ld hl, sp-$0f
    db $e3
    rst RST_00
    rst RST_08
    rst RST_08
    sbc a
    sbc a
    ld a, a
    dec hl
    rst RST_38
    ld b, $c3
    ldh a, [$fffc]
    dec hl
    rst RST_38
    inc b
    ld c, [hl]
    inc b
    nop
    ldh a, [$fff8]
    db $fc
    cp $ff
    ld bc, $fefe
    ld bc, $ec11
    add sp, $11
    rst RST_38
    cp $fe
    nop
    ld bc, $040f
    nop
    rst RST_38
    ldh [rTAC], a
    jr jr_037_6c84

    pop af
    ld a, a
    add [hl]
    rst RST_38
    ld a, $c6
    jr nz, jr_037_6cef

    db $fc
    pop bc
    inc bc
    rst RST_38
    cp $fe
    ld bc, $630f
    pop af
    ldh [$ff08], a
    ld hl, sp-$04
    nop
    ld [bc], a
    xor $ed
    db $10

jr_037_6cef:
    rst RST_08
    nop
    nop
    ld b, $81
    ret z

    adc a
    ld e, $ff
    ld a, a
    add b
    rrca
    add b
    rra
    ret nz

    rra
    cp $c0
    inc c
    add c
    ld a, $c0
    rra
    rst RST_38
    ld bc, $1b05
    ldh [rTAC], a
    ld b, $06
    pop bc
    dec b
    db $fd
    db $fc
    nop
    ld [de], a
    xor $ee
    db $10
    ld a, b
    db $d3

jr_037_6d19:
    call z, $0c70
    inc bc
    inc bc
    ld h, b
    dec c
    ret


    ld d, e
    ld a, a
    rst RST_38
    add h
    add a
    add b
    rst RST_38
    rst RST_00
    rlca
    adc a
    rst RST_38
    and b
    ld b, d
    jp $c7c7


    add a
    add b
    rlca
    ld b, [hl]
    ld h, [hl]
    ld hl, $8aa0
    add [hl]
    db $d3
    ld b, e
    ld hl, $1701
    jr nz, jr_037_6d19

    ldh [$ffec], a
    dec hl
    ld a, [hl+]
    inc bc
    ld sp, $0d25
    push de
    dec hl
    and l
    ld [bc], a
    and [hl]
    dec hl
    daa
    ld [bc], a
    jr nz, jr_037_6dba

    ld h, [hl]
    ld b, [hl]
    ld bc, $e4a4
    and $42
    ld [bc], a
    dec hl
    nop
    ld [bc], a
    dec hl
    rlca
    ld [bc], a
    nop
    rlca
    ld b, $06
    ld bc, $fe01
    cp $01
    db $10
    rst RST_28
    rst RST_28
    db $10
    dec hl
    nop
    dec b
    db $fc
    rlca
    dec hl
    nop
    ld b, $f0
    dec hl
    nop
    inc b
    inc bc
    nop
    ld b, $00
    nop
    rra
    ld a, b
    ret nz

    add e
    rrca
    cp c
    nop
    ld [hl], b
    ld hl, sp+$0f
    db $fd
    adc $bf
    db $10
    rlca
    ccf
    db $e4
    pop hl
    adc a
    ld a, $f0
    jp $f304


    inc e
    add $8b
    ld h, [hl]
    rst RST_28
    ld sp, hl
    nop
    add d
    push hl
    db $eb
    ei
    ld a, [$98fc]

jr_037_6da5:
    dec hl
    nop
    ld [bc], a
    inc bc
    ld l, $5c
    ret c

    cp $08
    nop
    ld bc, $0301
    ld b, $16
    ld l, $60
    ret nz

    adc b
    db $10
    ld b, c

jr_037_6dba:
    inc bc
    ld [hl-], a
    ld h, b
    jr nz, jr_037_6dff

    ld [$8f80], sp
    cp [hl]
    jr c, jr_037_6da5

    inc bc
    ld d, $21
    ld c, a
    ccf
    ld c, l
    ld a, [de]
    inc e
    ldh [$ff80], a
    ld [bc], a

jr_037_6dd0:
    ld b, $0d
    dec c
    ld a, [de]
    jr nz, jr_037_6de7

    nop
    ld de, $84d1
    inc b
    nop
    ld b, $13
    inc a
    and e
    db $e3
    db $fc
    ld a, [hl]
    dec de
    ld bc, $c080

jr_037_6de7:
    ld h, b
    xor b
    ret nc

    jr jr_037_6dd0

    ldh a, [$fffc]
    dec hl
    nop
    ld [bc], a
    xor $2b
    nop
    ld [bc], a
    jr nz, @+$4a

    db $10
    inc d
    inc e
    jr jr_037_6dfc

jr_037_6dfc:
    nop
    ld b, c
    pop bc

jr_037_6dff:
    jp nz, Jump_000_0782

    ld c, $10
    nop
    ldh [$ffc0], a
    add b
    ld bc, $0886
    jr nz, jr_037_6e0d

jr_037_6e0d:
    ld e, b
    or e
    ld b, e
    add d
    inc b
    dec c
    ld de, $8c60
    add b
    nop
    nop
    adc a
    rra
    inc e
    nop
    ld c, $03
    rrca
    ccf
    rst RST_38
    rst RST_38
    ld bc, $4300
    ld bc, $cbcb
    push hl
    ld h, $c3
    pop hl
    ld [hl], h
    adc [hl]
    ldh [c], a
    ldh a, [$ff78]
    inc e
    jp z, $2b60

    nop
    inc b
    add b
    ld b, b
    ld b, b
    nop
    dec hl
    ld bc, $0202
    ld [bc], a
    nop
    ld bc, $002b
    inc bc
    inc b
    dec hl
    nop
    inc bc
    inc bc
    rrca
    rra
    rra
    ccf
    ccf
    ld a, b
    nop
    add b
    add $98
    sbc h
    ld sp, $c763
    nop
    rrca
    ld a, a
    ld a, a
    rst RST_38
    rst RST_38
    di
    pop af
    ld [hl], b
    ld hl, sp-$0c
    ldh a, [c]
    di
    cp b
    sbc b
    add b
    add [hl]
    jp $1cf8


    add c
    ld a, b
    rrca
    nop
    ld [hl], b
    ld a, h
    cp h
    ld a, [hl]
    ld c, $04
    nop
    nop
    jr jr_037_6ef7

    ld a, $0e
    ld [bc], a
    dec hl
    nop
    inc b
    add b
    dec hl
    nop
    inc b
    inc bc
    ld bc, $0000
    dec hl
    ld bc, $2b03
    ld b, b
    ld [bc], a
    adc b
    sub b
    inc b
    nop
    jr jr_037_6f06

    ld h, c
    inc hl
    ld a, [bc]
    db $10
    db $10
    dec hl
    nop
    dec b
    ld bc, $6305
    ld a, [hl]
    ld bc, $0001
    nop
    add b
    and b
    ld b, b
    add b
    ret nz

    ldh [$ffc0], a
    dec hl
    nop
    ld [bc], a
    jr nz, @+$72

    nop
    nop
    ld c, b
    jp nz, $be67

    ld c, h
    inc de
    nop
    inc c
    ld bc, $0000
    ld b, b
    ld hl, sp+$07
    dec hl
    nop
    inc bc
    inc b
    inc b
    ld h, $26
    ld c, $2b
    nop
    ld [bc], a
    rrca
    dec hl
    nop
    ld [bc], a
    cp $2b
    nop
    ld [bc], a
    xor $2b
    nop
    inc bc
    db $10
    jr nc, jr_037_6eeb

    dec hl
    nop
    inc bc
    dec [hl]
    ld l, c
    jr @+$0a

    ld [bc], a
    dec b
    ld b, $0b
    ccf
    add b
    rst RST_38
    ld a, $00

jr_037_6eeb:
    nop
    or $63
    nop
    ret z

    sbc b
    jr nc, jr_037_6f53

    ldh [$ffc0], a
    add b
    ld a, b

jr_037_6ef7:
    ld a, h
    ld a, h
    dec hl
    ld a, [hl]
    ld [bc], a
    rst RST_38
    rst RST_38
    ld h, b
    scf
    sbc h
    rst RST_28
    ld [hl], e
    ld a, h
    ccf
    sbc a

jr_037_6f06:
    ld hl, sp-$62
    ld a, a
    db $eb
    sbc l
    ld h, [hl]
    ld a, [$22fe]
    dec hl
    ld [hl-], a
    inc bc
    nop
    inc b
    inc c
    ld c, $2b
    nop
    ld [bc], a
    cpl
    dec hl
    nop
    dec b
    jr nz, @+$32

    db $10
    ld [$1d00], sp
    rra
    rra
    rrca
    rlca
    rlca
    add d
    inc bc
    rst RST_38
    rst RST_38
    cp $fe
    db $fc
    ld hl, sp-$08
    push af
    ld b, $0e
    inc c
    inc c
    ld [$0004], sp
    nop
    rst RST_38
    ld a, [hl]
    ld a, [hl]
    inc e
    nop
    nop
    ld bc, $c701
    ret nz

    ld b, b
    nop
    inc bc
    pop bc
    pop bc
    nop
    cp $7c
    nop
    add b
    ldh [$fff0], a
    ld hl, sp-$08
    dec hl

jr_037_6f53:
    inc e
    ld [bc], a
    jr jr_037_6f82

    nop
    inc bc
    ld hl, sp+$2b
    nop
    ld [bc], a
    db $ec
    dec hl
    nop
    ld [bc], a
    dec hl
    ld bc, $2303
    ld bc, $0107
    adc a
    sbc a
    sbc l
    sbc a
    ld d, $16
    add hl, bc
    ld [de], a
    rrca
    inc e
    jr jr_037_6fa5

    ld h, b
    dec hl
    nop
    inc b
    ld b, $80
    dec hl
    nop
    dec b
    ld b, b
    nop
    nop
    inc b
    nop

jr_037_6f82:
    ld hl, $78dc
    ld a, h
    inc a
    ld [hl], $3c
    inc e
    sbc h
    ld c, $2b
    nop
    ld [bc], a
    ld e, $2b
    nop
    ld [$4040], sp
    dec hl
    rlca
    ld [bc], a
    inc bc
    ld bc, $002b
    ld [bc], a
    add b
    ret nz

    ld [hl], b
    ld e, $8f
    ld b, c
    jr nc, jr_037_6fb9

jr_037_6fa5:
    nop
    ld h, b
    nop
    inc bc
    rst RST_38
    rst RST_38
    ld a, [hl]
    nop
    rst RST_00
    ld e, $7c
    ld sp, hl
    pop af
    add e
    rlca
    rra
    ld a, h
    dec hl
    ld hl, sp+$02

jr_037_6fb9:
    or b
    ld h, b
    ldh [$ffc0], a
    ld a, $2b
    nop
    ld [bc], a
    scf
    nop
    nop
    ret nz

    db $fc
    ld bc, $0703
    rrca
    rra
    ld a, a
    ld a, a
    ldh [$ffe0], a
    ldh a, [$fff8]
    db $fc
    cp $ff
    rst RST_38
    dec hl
    nop
    dec b
    add b
    ldh [rIF], a
    inc bc
    dec hl
    nop
    dec b
    add b
    rst RST_38
    db $fd
    dec d
    dec hl
    nop
    inc bc
    ld a, e
    rst RST_38
    call c, Call_000_00d8
    nop
    ld a, b
    ld a, b
    nop
    nop
    dec hl
    ld bc, $0302
    inc bc
    rlca
    ldh a, [$fffc]
    dec hl
    rst RST_38
    inc bc
    cp $fc
    inc a
    nop
    add b
    ret nz

    ldh [rP1], a
    nop
    ccf
    nop
    inc bc
    rrca
    dec hl
    rst RST_38
    inc b
    rra
    rst RST_20
    ld sp, hl
    cp $2b
    rst RST_38
    rlca
    ccf
    rst RST_18
    rst RST_28
    rst RST_30
    ld hl, sp-$02
    dec hl

jr_037_7019:
    rst RST_38
    dec b
    nop
    nop
    ldh a, [rIE]
    db $fc
    ldh a, [$ffc1]
    rlca
    dec hl
    nop
    ld [bc], a
    ret nz

    jr nc, jr_037_7035

    add [hl]
    ldh [c], a
    jr c, jr_037_7058

    inc a
    ld [bc], a
    inc e
    jr jr_037_703a

    nop
    rlca
    rrca

jr_037_7035:
    rra
    ccf
    ccf
    dec hl
    ld a, a

jr_037_703a:
    ld [bc], a
    ld hl, sp-$0f
    db $e3
    rst RST_00
    rst RST_08
    rst RST_08
    sbc a
    sbc a
    ld a, a
    dec hl
    rst RST_38
    ld b, $c3
    ldh a, [$fffc]
    dec hl
    rst RST_38
    inc b
    ld c, [hl]
    inc b
    nop
    ldh a, [$fff8]
    db $fc
    cp $ff
    cp $2b
    nop

jr_037_7058:
    ld [bc], a
    xor $00
    nop
    ld bc, $002b
    inc bc
    ld bc, $070f
    dec hl
    nop
    ld [bc], a
    rra
    jr c, jr_037_7019

    pop af
    rst RST_38
    cp $00
    nop
    ret nz

    jr nz, jr_037_7090

    db $fc
    pop bc
    inc bc
    dec hl
    nop
    inc b
    ld h, b
    ldh a, [$fff8]
    ldh a, [$ff2b]
    nop
    ld [bc], a
    db $fc
    nop
    ld bc, $3001
    rlca
    nop
    ld bc, $002b
    ld [bc], a
    add b
    nop
    add b
    ld a, a
    ret nz

    ccf
    dec hl

jr_037_7090:
    nop
    ld [bc], a
    ld bc, $d13e
    ld a, $c0
    dec hl
    nop
    ld [bc], a
    ldh [rDIV], a
    ld hl, sp-$20
    dec hl
    nop
    ld [bc], a
    ret nz

    ld sp, hl
    ld bc, $0000
    db $ec
    dec hl
    nop
    ld [bc], a
    add b
    jr nz, jr_037_70e0

    rrca
    inc bc
    dec hl
    nop
    ld [bc], a
    ld [bc], a
    ld b, $8c
    add b
    nop
    ld [hl], e
    jr nz, @+$22

    dec hl
    nop
    inc b
    db $10
    sub b
    db $10
    ret nz

    ret nz

    add b
    add b
    nop
    ld b, b
    ld h, b
    ld h, b
    ld b, b
    ld h, b
    ld h, b
    inc h
    inc [hl]
    ld d, $16
    nop
    db $10
    rlca
    nop
    nop
    dec hl
    ld b, h
    inc bc
    ld [bc], a
    jp nz, $0202

    dec hl
    ld b, d
    ld [bc], a
    ld b, b
    dec hl

jr_037_70e0:
    ld h, b
    dec b
    ld b, b
    nop
    ld b, b
    dec hl
    nop
    ld c, $fe
    dec hl
    nop
    ld [bc], a
    rst RST_28
    dec hl
    nop
    ld [bc], a
    rst RST_38
    ld de, $1b00
    add b
    ld bc, $fefe
    ld bc, $ef10
    rst RST_28
    db $10
    rst RST_38
    cp $fe
    nop
    di
    call Call_037_5022
    ld bc, $3403
    add sp, -$52
    ld e, $ff
    db $e3
    rst RST_18
    ld c, $06
    add c
    pop bc
    ld [hl], b
    ld c, b
    dec h
    ld bc, $fefe
    ld bc, $ef10
    ld l, a
    db $10
    rst RST_38
    db $fc
    ldh a, [c]
    ld [$a0d0], sp
    and b
    ld b, b
    nop
    ret nz

    ld d, [hl]
    xor a
    ld b, b
    cp a
    cpl
    ld e, $3f
    ld b, [hl]
    ld a, [bc]
    dec b
    ld [bc], a
    inc bc
    dec de
    ld bc, $fe02
    cp $01
    sub b
    ld l, a
    ld l, a
    db $10
    rst RST_38
    cp $fe
    ld bc, $ecff
    ldh [c], a
    inc b
    cp $fd
    di
    rrca
    inc sp
    add c
    nop
    ld bc, $83fd
    rra
    inc e
    dec a
    add hl, sp
    xor h
    rst RST_30
    call c, $e8d3
    ld b, h
    jp z, $c912

    inc h
    ret


    or h
    jp c, Jump_000_324b

    adc h
    ld [bc], a
    inc h
    ld hl, $1e1e
    ld bc, $2f10
    xor a
    db $10
    cp $fe
    db $fc
    nop
    ldh a, [$ffe4]
    call z, Call_037_5c02
    ld h, [hl]
    ld d, $07
    ld c, a
    db $fd
    ld [$1c85], a
    nop
    nop
    rra
    rst RST_28
    dec e
    rst RST_20
    jr z, jr_037_718c

    dec c
    ld [$f89f], sp
    ld a, a
    ld b, l

jr_037_718c:
    add d

jr_037_718d:
    ccf
    ld e, [hl]
    sbc [hl]
    ld hl, $672f
    ld b, a
    ret z

    rst RST_38
    cp $fc
    ld [bc], a
    add sp, -$30
    xor b
    jr nc, jr_037_71ae

    ld b, e
    adc a
    rrca
    rra
    ld e, a
    cp $fc
    dec a
    db $fc
    ld hl, sp-$0f
    db $e3
    adc h
    jr c, jr_037_718d

    sbc h

jr_037_71ae:
    adc $e3
    add c
    dec de
    nop
    ld [bc], a
    rlca
    pop de
    ld hl, sp+$34
    adc h
    ld a, b
    ld bc, $e502
    ld b, [hl]
    adc h
    ld bc, $4700
    ld a, c
    cp $ff
    rst RST_38
    cp $fe
    ld bc, $c71f
    ld [hl], e
    jr c, @-$24

    pop de
    reti


    inc d
    ld [$f4ea], a
    nop
    xor c
    nop
    ld hl, $8a90
    sub d
    cp [hl]
    cp a
    ld bc, $1141
    dec h
    ld b, l
    inc sp
    jp $a124


    adc d
    add b
    and c
    sbc d
    add hl, bc
    ld [hl], a
    add a
    sub l
    ld [$8108], sp
    ld d, c
    ld c, c
    ld b, l
    ld c, b
    ld h, a
    rst RST_08
    sbc a
    ccf
    ld a, a
    ccf
    ld a, [hl]
    ld a, e
    jp hl


    db $d3
    and [hl]
    jp z, Jump_037_73bb

    pop af
    db $e3
    add b
    ld bc, $1e07
    halt
    call z, Call_037_50b8
    inc c
    inc de
    rlca
    cpl
    cpl
    rra

jr_037_7213:
    rra
    ld e, a
    inc e
    and $f2
    ldh a, [c]
    ldh a, [$fffa]
    ei
    rst RST_30
    rst RST_38
    rst RST_38
    rst RST_30
    dec de
    rst RST_38
    ld [bc], a
    ld a, a
    sbc a
    ld e, l
    db $fc
    xor [hl]
    or $fa
    ld a, [$f3fb]
    ldh a, [$ffec]
    db $10
    inc b
    ld e, b
    ld b, c
    ld b, c
    inc hl
    ld d, a
    ld hl, $0b17
    add hl, bc
    ld [de], a
    add l
    add l

jr_037_723d:
    inc de
    ret nz

    ld hl, sp-$0c
    and b
    adc a
    ret nc

    rst RST_08
    ld a, [bc]
    ld d, h
    xor d
    or [hl]
    ld d, [hl]
    xor [hl]
    dec e
    adc c
    ld d, a
    adc $5e
    ld b, c
    ccf
    scf
    ld [hl], a
    ld [$ff7f], sp
    add b
    ldh a, [c]
    sub a
    sbc h
    add b
    nop
    add $8c
    jr @+$71

    add b
    dec de
    nop
    ld [bc], a
    ld [hl], b
    ldh [$ffc0], a
    dec de
    nop
    ld [bc], a
    ld bc, $4f00
    add a
    ldh a, [$ff1f]
    jr c, jr_037_7276

    ldh a, [$ff3f]
    db $f4

jr_037_7276:
    call z, $d43c
    jr z, jr_037_7213

    jr nc, jr_037_723d

    ld c, a
    inc hl
    db $10
    jr jr_037_728e

    inc b
    ld b, $02
    db $e3
    rlca
    dec a
    ld h, c
    ld b, c
    ld h, c
    ccf
    rlca
    ld b, d

jr_037_728e:
    ld b, b
    ld [hl], b
    ld [hl], d
    ld sp, $7a71
    cp e
    ld b, b
    ld b, d
    and c
    and b
    ret nc

    ld d, c
    sub d
    ld h, l
    sub b
    and a
    ld l, e
    db $f4
    ld [$6080], sp
    sbc b
    ld d, c
    or d
    ld d, h
    xor b
    nop
    ld bc, $92e1
    ld a, a
    cp $fe
    ld bc, $0000
    jr c, jr_037_72fc

    nop
    cp $fe
    ld bc, $0f50
    rlca
    nop
    nop
    add b
    ld hl, sp+$00
    db $10
    rst RST_28
    rst RST_28
    db $10
    dec de
    nop
    inc b
    rst RST_28
    rst RST_28
    db $10
    dec de
    nop
    inc bc
    ld bc, $efef
    db $10
    dec de
    nop
    inc bc
    db $10
    ldh [$ffe1], a
    ld bc, $001b
    ld [bc], a
    inc bc
    dec e
    pop hl
    sbc d
    dec a
    dec de
    ld [bc], a
    ld [bc], a
    add d
    ld c, $1c
    db $10
    rst RST_38
    ld [hl-], a
    ld [hl], b
    ld a, b
    ld a, h
    ld a, h
    ld a, [hl]
    cp $ff
    cp b
    cp b
    sub e
    or b
    cp l
    ld a, l
    ld l, d
    ld a, [hl]
    push hl
    sub d
    ld l, c

jr_037_72fc:
    or h
    ld e, d
    xor [hl]
    or a
    add c
    ret z

    jp hl


    ld d, c
    ldh [rTMA], a
    dec bc
    db $10
    rst RST_38
    ld d, d
    ld d, d
    inc h
    or $e2
    and $0c
    inc b
    ld b, b
    adc a
    sbc a
    add c
    ld [hl], b
    ld a, b
    jr @+$14

    jr nc, @-$62

    and $f2
    add hl, sp
    inc bc
    add h
    pop de
    add c
    ld a, [hl]
    ld a, $01
    db $10
    rrca
    rrca
    nop
    ld bc, $fefe
    ld bc, $ee11
    db $ed
    ld [de], a
    jp nz, $c0c0

    ld [de], a
    ld hl, $9c48
    ld a, [hl]
    ld a, [hl]
    ld a, b
    ld a, a
    cp $7e
    ccf
    adc c
    inc hl
    ld a, a
    ld a, a
    db $db
    sbc c
    cp a
    cpl
    jr nz, jr_037_735c

    cp $fe
    db $fd
    di
    add $8d
    ld e, e
    scf
    sbc a
    ld e, a
    sbc e
    jp c, $e549

    db $f4
    ldh a, [c]
    ld a, a
    cp a
    ld e, a

jr_037_735c:
    and a
    ld c, b
    and c
    jr z, jr_037_736d

    ld hl, sp-$01
    rst RST_38
    cp $fd
    db $10
    ld b, $18
    ld a, [de]
    xor d
    ld e, d
    and d

jr_037_736d:
    ld d, [hl]
    or h
    jr z, jr_037_73c9

    add hl, bc
    db $10
    ld hl, $8d46
    ld l, d
    xor e
    rla
    jp c, $9f2c

    inc a
    ld [hl], b
    jp hl


    sub l
    ld h, a
    jp Jump_000_3cf1


    ld [de], a
    pop hl
    rst RST_30
    db $eb
    pop hl
    ld bc, $fefe
    ld bc, $ee01
    db $ec
    db $10
    db $f4
    jp hl


    jp nz, Jump_037_5c04

    ld c, h
    ld d, $27
    di
    di
    ld a, a
    inc e
    ld h, e
    ld hl, sp-$02
    ld a, h
    ld c, a
    ldh [rIE], a
    rst RST_38
    ld c, [hl]
    ld b, b
    rst RST_38
    ld a, $1c
    inc bc
    ld c, a
    cp [hl]
    ld bc, $0800
    ld b, $33
    rst RST_20
    sbc a
    ccf
    dec de
    rst RST_38
    ld [bc], a
    rra
    ei
    ld sp, hl

Jump_037_73bb:
    db $fd
    dec de
    db $fc
    inc b
    cp a
    rst RST_08
    ldh [$fffc], a
    ld a, a
    ccf
    ld b, $40
    cp $fd

jr_037_73c9:
    ld b, b
    inc c
    ld hl, sp-$0f
    rlca
    rra
    call z, Call_000_053e
    dec [hl]
    or $f6
    and $84
    ld l, $2d
    ld [de], a
    ld c, h
    ld b, c
    ld hl, $0019
    jp $2113


    add d
    add hl, bc
    ld [de], a
    ld b, l
    adc e
    call z, Call_000_2e2e
    ld e, l
    cp c
    or $dc
    ld sp, $f5fa
    push af
    ld a, [bc]
    push de
    jp nc, Jump_000_24aa

    add e
    ret nz

    ldh a, [$fffb]
    daa
    ld bc, $0003
    ld [$0000], sp
    ret nz

    ld sp, hl
    ldh [rTAC], a
    rrca
    add hl, bc
    dec bc
    ld c, $7c
    pop af
    ld [bc], a
    inc c
    add e
    rlca
    ld d, e
    ldh [$ff30], a
    ldh a, [$ff78]
    ldh a, [rNR41]
    inc bc
    ret nz

    ldh a, [$ff7f]
    rra
    rrca
    inc bc
    ld bc, $00f8
    nop
    rlca
    rst RST_38
    db $fd
    ld [$60d4], a
    db $fd
    db $fd
    ld sp, hl
    di
    ld sp, $1f38
    rst RST_38
    rst RST_38
    cp $fe

jr_037_7433:
    db $fc
    ld hl, sp+$00
    nop
    inc b
    ld c, $0c
    jr @+$1b

    inc sp
    ld [hl], a
    ld h, b
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    add c
    ret nz

    ldh [rP1], a
    jr jr_037_7452

    ld b, [hl]
    and b
    ld h, b
    or h
    ld e, d
    daa
    ld b, c
    add e
    dec b

jr_037_7452:
    add hl, bc
    ld de, $010f
    nop
    ld bc, $fefe
    nop
    ld [de], a
    db $ec
    db $ed
    ld de, $4854
    jr z, jr_037_7433

    ld d, b
    xor d
    rst RST_18
    ld d, c
    nop
    ld b, b
    ld e, h
    ld e, $0f
    inc bc
    ld bc, $3f80
    rst RST_38
    ld a, a
    rrca
    ld bc, $df87
    rst RST_38
    rrca
    rst RST_38
    rst RST_38
    rst RST_20
    rst RST_28
    rst RST_00
    rlca
    nop
    ldh [$ffc7], a
    adc a
    sbc a
    ld a, a
    ld a, a
    ld hl, sp-$40
    ldh [$fffc], a
    dec de
    rst RST_38
    inc bc
    ccf
    nop
    db $ec
    ccf
    add c
    db $fc
    cp $1b
    rst RST_38
    ld [bc], a
    ld d, $23
    push af
    ccf
    rlca
    inc bc
    dec de
    add b
    ld [bc], a
    ld h, c
    or e
    ld e, a
    adc $e0
    or b
    ld d, h
    jp hl


    adc $de
    add c

jr_037_74aa:
    db $10
    cpl
    ld l, a
    db $10
    ld [$fefc], sp
    nop
    db $10
    rst RST_28
    rst RST_28
    db $10
    ld a, [de]
    rlca
    nop
    add b
    jr jr_037_74aa

    rst RST_28
    db $10
    add b
    nop
    ret nz

    nop
    nop
    ld bc, $00c3
    db $f4
    di
    push hl
    inc de
    jp z, $17a6

    ld c, e
    cp b
    rra
    ld l, $81
    jr nc, jr_037_74ec

    inc b
    ldh [c], a
    ret nz

    ld [$8000], sp
    nop
    nop
    inc bc
    ccf
    db $fd
    ld sp, $0000
    add b
    add b
    ret nz

    ldh a, [$ffc1]
    db $e3
    ldh [$fffc], a

Call_037_74ea:
    ld a, [hl]
    ccf

jr_037_74ec:
    rra
    rlca
    cp $1b
    nop
    ld [bc], a
    rst RST_28
    dec de
    nop
    ld [bc], a
    rst RST_38
    cp $fe
    nop
    ldh a, [$ffc2]
    add hl, de
    inc hl
    nop
    nop
    add hl, bc
    rra
    rra
    dec de
    rst RST_38
    ld [bc], a
    rra
    xor $f6
    ld a, c
    dec a
    adc [hl]
    add a
    jp nz, $1bfe

    nop
    ld [bc], a
    rst RST_28
    dec de
    nop
    ld [bc], a
    rst RST_38
    db $fc
    pop af
    rlca
    rst RST_08
    sbc a
    sbc a
    ccf
    nop
    ccf
    dec de
    rst RST_38
    dec b
    ccf
    add [hl]
    ldh a, [c]
    ld sp, hl
    db $fc
    db $fc
    dec de
    cp $02
    dec de
    nop
    ld [bc], a
    ld l, a
    dec de
    nop
    ld [bc], a
    rst RST_38
    cp $fe
    ld bc, $ecff
    pop hl
    inc bc
    cp $fc
    ldh a, [rP1]
    inc c
    ld a, [hl]
    rst RST_38
    cp $03
    rra
    ccf
    ccf
    ld e, $1e
    rra
    rrca
    db $e3
    ldh [$fff0], a
    ld hl, sp+$3c
    rrca
    rlca
    jp Jump_037_78f0


    inc a
    inc a
    inc c
    nop
    pop bc
    jp Jump_000_1b1e


    nop
    ld [bc], a
    cpl
    dec de
    nop
    ld [bc], a
    cp $fe
    db $fc
    nop
    ldh a, [$ffe8]
    ret nc

    db $10
    ccf
    rra
    rrca
    rrca
    rlca
    ld b, [hl]
    ld a, h
    ld a, b
    dec de
    rst RST_38
    inc b
    rrca
    dec c
    jp $feff


    cp $f8
    rst RST_38
    adc a
    add e
    add hl, de
    ccf
    ld e, $5e
    pop bc
    rst RST_08
    add a
    add a
    nop
    rst RST_38
    cp $fc
    ld bc, $cfe7
    sub a
    ld c, a
    rrca
    ccf
    ld a, a
    dec de
    rst RST_38
    inc b
    cp $ff
    rst RST_38
    cp $fc
    ldh a, [$ffc0]
    nop
    inc bc
    ld bc, $001b
    dec b
    ldh [$fff0], a
    ld hl, sp+$70
    nop
    nop
    ld bc, $8003
    dec de
    nop
    ld [bc], a

jr_037_75b0:
    jr c, jr_037_75b0

    dec de
    rst RST_38
    ld [bc], a
    cp $fe
    ld bc, $071f
    add e
    dec de
    ret nz

    inc bc
    ld [$e4e4], sp
    ldh a, [rP1]
    ld b, b
    ret nz

    ret nz

    ld h, b
    ld [hl], c
    ld l, l
    ld a, a
    ld a, a
    inc de
    ld b, e
    inc hl
    inc bc
    add e
    rlca
    rla
    sub e
    inc b
    ld [$0000], sp
    ld bc, $cfc7
    ld l, a
    add hl, bc
    inc d
    inc b
    dec d
    adc l
    add l
    add c
    add b
    sbc a
    ccf
    ld a, a
    dec de
    rst RST_38
    inc b
    cp $fc
    ld hl, sp+$1b
    db $fc
    ld [bc], a
    cp $fc
    dec de
    nop
    inc bc
    ld [$6030], sp
    ldh [$ff03], a
    rrca
    dec de

jr_037_75fb:
    rra
    ld [bc], a
    dec de
    ccf
    ld [bc], a
    db $e3
    ld sp, hl
    db $fd
    db $fd
    rst RST_38
    db $fd
    db $fc
    ld hl, sp+$1b
    rst RST_38
    ld b, $7f
    ldh [$ffe0], a
    ldh a, [$fff8]
    dec de
    db $fc
    inc bc
    ldh a, [$ff60]
    inc c
    jr @+$1d

    nop
    ld [bc], a
    ld b, b
    ccf
    ld e, $08
    db $10
    db $10
    ld bc, $0202
    add b
    nop
    nop
    ld a, [hl-]
    ld [hl], b
    ld l, d
    nop
    nop
    rlca
    inc hl
    ld [hl], c
    ld a, c
    add hl, sp
    sub c
    ld b, d
    ld b, $87
    ld c, $1e
    ld bc, $373f
    ld [hl], a
    ld [$7fff], sp
    ld a, a
    dec c
    ld [$001b], sp
    ld [bc], a
    ld sp, hl
    di
    rst RST_20
    add b
    dec de
    nop
    inc bc
    ret nz

    add b
    dec de
    nop
    dec b
    ccf
    ld a, a
    rrca
    dec de
    nop
    ld [bc], a
    rrca
    nop
    ld hl, sp-$10
    ret nz

    ld [$6010], sp
    ret nz

    nop
    ccf
    rra
    rrca
    rlca
    inc bc
    inc bc
    ld bc, $fc01
    ld hl, sp-$40
    dec de
    add b
    ld [bc], a
    ret nz

    ld hl, sp+$61
    ld h, e
    ld h, e
    ld h, c
    ld h, b

Call_037_7674:
    jr nz, jr_037_76a6

    jr nc, jr_037_75fb

    add c
    ret nz

    ret nz

    ldh [$ffe0], a
    ld h, c
    inc bc
    rrca
    rra
    sbc h
    ld [$0000], sp
    add b
    ldh [$ff8e], a
    call z, Call_037_40e8
    dec de
    nop
    ld [bc], a
    ld h, b
    ld a, a
    cp $fe
    ld bc, $001b
    ld [bc], a
    jr c, @+$01

    dec de
    nop
    ld [bc], a
    cpl
    dec de
    nop
    ld b, $ef
    dec de
    nop
    ld b, $e0
    dec de
    nop

jr_037_76a6:
    ld c, $e0
    dec de
    nop
    ld b, $02
    ld e, $7c
    ld hl, sp+$1b
    ld bc, $0304
    rrca
    rrca
    db $fd
    dec de
    rst RST_38
    dec b
    cp $33
    inc sp
    jr c, jr_037_76d9

    jr jr_037_76c2

    ld e, h
    ld l, h

jr_037_76c2:
    inc bc
    pop hl
    ldh a, [$ff78]
    inc a
    inc e
    ld c, [hl]
    ld a, a
    ldh a, [$fff0]
    ldh [rP1], a
    ld bc, $0f07
    nop
    ldh [$ffe0], a
    jp nz, $f602

    db $f4
    db $e4

jr_037_76d9:
    ld [$1b3f], sp
    ld a, a
    ld [bc], a

Call_037_76de:
    rrca

Call_037_76df:
    rlca
    inc b
    ld bc, $e0c0
    ld hl, sp-$04
    cp $00
    ld h, b
    ldh [$ff7e], a
    dec de
    nop
    ld [bc], a
    rrca
    dec de
    nop
    ld [bc], a
    cp $1b
    nop
    ld [bc], a
    xor $00
    ld bc, $c102
    jp Jump_000_01c3


    ld c, b
    sub h
    ld h, d
    add c
    ld sp, hl
    dec de
    rst RST_38
    inc bc
    cp $7e

Jump_037_7708:
    inc e
    sbc a
    sbc a
    ccf
    ccf
    dec de
    rra
    ld [bc], a
    inc c
    cp $fc
    ld sp, hl
    ei
    or $ec
    sbc c
    inc sp
    xor d
    xor l
    ld l, h
    ld l, [hl]
    cp $fb
    ei
    db $fd
    ccf
    rra
    adc a
    ld b, e
    jr nc, jr_037_7745

    rst RST_00
    ldh a, [$fff0]
    rst RST_38
    cp $fc
    ld [hl], b
    rrca
    ld hl, sp+$07
    nop
    db $10
    inc h
    ld c, h
    adc b
    ld [$a050], sp
    rlca
    rrca

jr_037_773b:
    ld e, $38
    ld [hl], b
    pop af
    ld b, a
    rrca
    db $e4
    cp $7e
    rst RST_38

jr_037_7745:
    rst RST_38
    rst RST_30
    db $e3
    add e
    dec de
    nop
    ld [bc], a
    call z, $e0c6
    db $f4
    cp $fe
    dec de
    nop
    ld [bc], a
    cp $1b
    nop
    ld [bc], a
    pop af
    ldh [c], a
    push de
    dec hl
    inc bc
    inc de
    add hl, hl
    ld e, b
    ld c, $0f
    adc a
    db $e3
    db $fc
    dec de
    rst RST_38
    ld [bc], a
    ret nz

    jr nc, jr_037_773b

    ld sp, hl
    dec de
    rst RST_38
    inc bc
    nop
    inc bc
    cp [hl]
    pop bc
    rst RST_38
    rst RST_38
    rst RST_30
    ld sp, hl
    rst RST_28
    sbc a
    ld a, a
    dec de
    rst RST_38
    inc b
    db $fc
    cp $fe
    dec de
    rst RST_38
    inc b
    ld a, a
    ccf
    rra
    inc bc
    add b

jr_037_7789:
    ret nz

    ld sp, hl
    cp a
    rst RST_38
    cp $ff
    di
    rlca
    rrca
    rst RST_38
    rst RST_38
    ld [hl], b
    ret nz

    ld a, [$1bfa]
    ld hl, sp+$03
    rra
    ld e, $0c
    nop
    jr nz, @+$12

    nop
    nop
    rlca
    rrca
    ld e, $7c
    ldh a, [$ffe1]
    add e
    rlca
    cp $de
    ld e, $3e
    ld a, [hl]
    ld hl, sp-$20
    ret nz

    ld hl, sp-$10
    ldh a, [rSB]
    jp nz, $85c5

    dec bc
    ld a, h
    ccf
    rrca
    rlca
    rst RST_18
    dec de
    rst RST_38
    ld a, [bc]
    cp $fc
    db $fd
    cp $fc
    ld sp, hl
    ei
    db $fc
    jr c, jr_037_7789

    cp a
    ld a, a
    ccf
    cp a
    ld a, a
    rst RST_38
    rst RST_38
    ccf
    rrca
    add b
    ldh [$fff0], a
    db $fc
    cp $1b
    rst RST_38
    ld [bc], a
    ld hl, sp+$1b
    nop
    inc bc
    sbc a
    inc bc
    inc bc
    rlca
    rrca
    rrca
    rlca
    nop
    dec de
    rst RST_38
    rlca
    ld hl, sp-$10
    ldh a, [$ffe0]
    pop hl
    jp $8087


    dec de
    nop
    ld [bc], a
    ld bc, $001b
    inc bc
    rlca
    ld b, $00
    nop
    add b
    ld b, b
    jr nz, jr_037_781c

    add b
    nop
    ld [bc], a
    ld b, $0e
    dec de
    nop
    ld [bc], a
    cp $1b
    nop
    ld [bc], a
    db $ec
    nop
    ld bc, $0b01
    rla
    ld d, a
    cpl
    xor a
    ld b, l
    nop
    adc [hl]

jr_037_781c:
    dec de
    rst RST_38
    ld b, $7f
    dec de
    rst RST_38
    rra
    nop
    ret nz

    cp $1b
    rst RST_38
    inc b
    dec de
    nop
    ld [bc], a
    ret nz

    ld hl, sp-$04
    rst RST_38
    rst RST_38
    ld a, a
    ld e, $0c
    dec de
    nop
    ld [bc], a
    ld b, b
    and b
    and $c0
    ret nz

    add b
    cpl
    dec de
    nop
    ld [bc], a
    ldh a, [rNR31]
    nop
    ld [bc], a
    rst RST_28
    dec de
    nop
    ld [bc], a
    inc b
    dec de
    nop
    ld [bc], a
    ldh [rNR31], a
    nop
    ld a, [bc]
    pop af
    ldh a, [$ffe2]
    inc b
    push bc
    adc c
    ld [$0710], sp
    nop
    ld de, $cf1e
    rst RST_20
    ei
    dec e
    ccf
    rst RST_30
    rst RST_38
    ld a, a
    rst RST_38
    rst RST_38
    db $fc
    ret nz

    dec de
    rst RST_38
    inc bc
    ld a, a
    ld a, a
    ccf
    rrca
    dec de
    rst RST_38
    rlca
    ld de, $0280
    dec b
    ld hl, sp-$20
    rrca
    rlca
    inc bc
    add e
    ret


    sbc h
    ld a, a
    ld [bc], a
    rst RST_38
    ld [bc], a
    call nz, $ffff
    ld a, a
    rst RST_38
    cp $f8
    nop
    nop
    ret nz

    ldh a, [$fff1]
    ld [bc], a
    nop
    ld [bc], a
    jr nz, jr_037_7894

jr_037_7894:
    ld l, b
    ldh a, [$fffe]
    jr z, jr_037_790d

    jr c, jr_037_78b7

    jr z, jr_037_78b9

    jr z, jr_037_78bb

    ld [bc], a
    rst RST_38
    dec b
    rst RST_30
    db $e3
    ld [bc], a
    rst RST_38
    ld c, $fe
    ld [bc], a
    rst RST_38
    ld [bc], a
    rst RST_18
    rst RST_38
    sub a
    rrca
    ld bc, $80c0
    ret nz

    ldh [$ffd0], a
    ldh [$ffd0], a

jr_037_78b7:
    ldh [rP1], a

jr_037_78b9:
    nop
    nop

jr_037_78bb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_037_78f0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_037_790d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_037_7a00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_037_7a3a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_037_7d10:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_037_7ef0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
