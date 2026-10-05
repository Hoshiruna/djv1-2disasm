; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02b", ROMX[$4000], BANK[$2b]

    jr nz, jr_02b_4042

    inc [hl]
    ld b, l
    call nz, $9c46
    ld c, h
    sub b
    ld c, a
    sub c
    ld c, a
    sub d
    ld c, a
    ld l, d
    ld d, l
    db $e4
    ld d, [hl]
    add e
    ld e, e
    dec bc
    ld h, b
    add hl, hl
    ld h, l
    sbc b
    ld l, b
    ld e, e
    ld l, a
    push hl
    ld [hl], b
    add hl, bc
    ld a, b
    dec e
    nop
    add b
    rst RST_38
    ldh [$ff1f], a
    rst RST_38
    nop
    cp $01
    ldh [$ff1f], a
    db $db
    nop
    rst RST_38
    ld [$8005], sp
    ld a, a
    ld [$0205], sp
    db $fd
    ei
    ld d, l
    xor d
    ld [$5507], sp
    xor d
    xor d
    ld d, l
    rst RST_38
    rst RST_30

jr_02b_4042:
    nop
    inc bc
    db $fc
    ld [$a803], sp
    ld d, a
    ld d, a
    xor b
    rst RST_38
    rst RST_38
    nop
    ld hl, sp+$07
    rst RST_38
    nop
    dec b
    ld a, [$08fe]
    inc bc
    ret nz

    ccf
    ld hl, sp+$07
    inc b
    ei
    rst RST_38
    call Call_000_1e00
    add hl, bc
    nop
    rst RST_38
    inc a
    ld bc, $0708
    dec bc
    db $f4
    or $09
    ld bc, $f807
    ld [$fc02], sp
    inc bc
    di
    call z, $0cfd
    ld a, c
    nop
    nop
    di
    inc bc
    inc c
    call z, Call_02b_7f33
    inc sp
    call z, Call_000_30cc
    inc sp
    pop bc
    rst RST_08
    adc b
    inc bc
    rst RST_38
    jp Jump_000_0ccf


    inc a
    jr nc, @-$0b

    pop bc

jr_02b_4091:
    rst RST_08
    ei
    ld b, $3e
    sbc b
    dec b
    jr jr_02b_4091

    ld h, c
    ldh [$ff86], a
    rst RST_30
    add b
    jr jr_02b_40a0

jr_02b_40a0:
    xor b
    dec b
    ld h, b
    nop
    add b
    nop
    ld hl, sp-$45
    ld bc, $005f
    cp [hl]
    nop
    cp $01
    cp $fe
    cp $df
    ld [bc], a
    ld a, [bc]
    cp $1a
    ld c, $c0
    inc bc
    inc bc
    db $fc
    db $e3
    inc bc
    db $fd
    ret c

    inc bc
    ret nz

    inc bc
    ld e, l
    ld bc, $00ff
    add b
    rst RST_00
    ld a, a
    add b
    ld b, b
    ldh [$ff09], a
    ld [$be00], sp
    nop
    dec e
    ldh [c], a
    or e
    ld a, a
    add b
    add hl, bc
    ld bc, $03be
    xor a
    ld d, b
    inc b
    inc de
    cp $fd
    ld bc, $03be
    cp $01
    push af
    ld a, [bc]
    add sp, $17
    inc sp
    ld d, b
    xor a
    ld [de], a
    nop
    cp a
    ld [bc], a
    and b
    ld e, a
    ld [$bf06], sp
    inc b
    ret c

    ld e, d
    dec b
    cp [hl]
    dec b
    inc e
    ld bc, $50af
    ld [$5715], sp
    xor b
    cp a
    cp h
    ld b, b
    di
    inc bc
    call z, $880c
    inc b
    adc $fe
    adc b
    inc bc
    ret nz

    rst RST_08
    inc bc
    inc a
    rra
    db $e3
    ld a, a
    rst RST_38
    sbc h
    rst RST_38
    ld h, e
    ld bc, HeaderManufacturerCode
    rst RST_38
    ld bc, $ffff
    ret nz

    ld a, $c0
    sbc $41
    ld e, h
    ld b, c
    ld a, a
    call c, Call_02b_5cc1
    jr jr_02b_41a8

    ld h, c
    ld h, b
    or h
    add hl, bc
    cp $97
    rla
    nop
    ld bc, $0600
    ld bc, $0118
    rst RST_18
    ld h, d
    ld bc, $0182
    ld [bc], a
    or h
    dec d
    nop
    inc c
    ld h, e
    ld a, [de]
    xor $c0
    dec de
    ret c

    dec b
    ret c

    dec b
    add b
    ld e, a
    ldh [rNR31], a
    ld hl, sp+$54
    add hl, bc
    ld e, h
    ld [bc], a
    pop hl
    ld [$ff02], sp
    ld b, $03
    db $fd
    rst RST_38
    db $fd
    dec b
    dec b
    dec b
    push af
    add l
    ld [hl], l
    add l
    db $fd
    or l
    jr @+$25

    rlca
    add hl, sp
    rrca
    halt
    rra
    ld l, c
    rst RST_28
    ld e, $7a
    inc e
    ld [hl], l
    jr z, jr_02b_419e

    db $fc
    sbc h
    ldh [$ff6f], a
    ld h, e
    add b
    sbc a

jr_02b_4182:
    nop
    inc de
    ld b, $c1
    ld e, h
    ld b, b
    daa
    rst RST_28
    ret nz

    ld e, h
    pop bc
    ld e, [hl]
    ret nz

    rla
    ld a, [$fa0e]
    or a
    cp $02
    cp $39
    ld [de], a
    rst RST_38
    db $ed
    ld h, [hl]
    jr nz, jr_02b_4182

jr_02b_419e:
    rst RST_18
    and $ff
    rst RST_38
    ld hl, sp-$07
    ld h, b
    inc hl
    ld b, l
    ld h, l

jr_02b_41a8:
    rst RST_38
    ld e, h
    ld e, h
    ld b, l
    push hl
    rst RST_38
    rst RST_38
    and d
    or d
    cp $60
    inc hl
    ld d, a
    ld d, a
    ld b, a
    rst RST_28
    ld l, a
    ld l, a
    rst RST_38
    rst RST_18
    rst RST_38
    ccf
    ccf
    ld [bc], a
    db $fc
    sub b
    dec hl
    inc bc
    db $fd
    inc sp
    nop
    cp $f4
    rra
    ld [$fe07], sp
    cp $b2
    dec hl
    ld [$6003], sp
    sub $07
    ld e, d
    dec b
    add sp, $05
    ldh [$ff29], a
    db $fc
    ld bc, $fb06
    nop
    dec sp
    or b

jr_02b_41e2:
    jr @+$27

    jr jr_02b_420b

    jr z, jr_02b_420d

    jr z, jr_02b_420f

    pop bc
    ld e, a
    jr nc, jr_02b_4229

    ld a, [bc]
    sbc c
    ld a, e
    ld b, b

jr_02b_41f2:
    dec sp
    ret nz

    dec l
    ld a, [$6efa]
    jr nz, jr_02b_41e2

    nop
    db $fd
    rst RST_38
    sub d
    or [hl]

Jump_02b_41ff:
    call $ffff
    xor l
    sub $ae
    ld sp, hl
    xor [hl]
    ld a, [hl]
    jr nz, jr_02b_41f2

    nop

jr_02b_420b:
    ld d, l
    xor e

jr_02b_420d:
    xor $95

jr_02b_420f:
    rst RST_38
    rst RST_08
    rst RST_38
    cp l
    ld c, d
    ld a, a
    adc l
    jr nz, jr_02b_427c

    ld sp, $ad5b
    rst RST_38
    or l
    ld l, e
    rst RST_38
    rst RST_38
    or l
    ld l, e
    add l
    dec [hl]
    ld a, $90
    inc a
    or l
    dec b

jr_02b_4229:
    dec [hl]
    dec b
    push af
    and h
    scf
    ld d, b
    dec l
    nop
    cp d
    inc h
    rst RST_00
    ld b, $e0
    add hl, hl
    inc c
    ld hl, $33a4
    ld d, $27
    add c
    nop
    pop af
    ld a, [de]
    rst RST_38
    inc d
    ld [hl], l
    inc d
    ld [hl], h
    ld de, $0770
    ld h, e
    rst RST_28
    rra
    ld e, h
    rra
    ld b, b
    ld a, [bc]
    ld b, c
    jp $1f04


    rst RST_28
    inc a
    rst RST_20
    db $fc
    rlca
    dec d
    ld b, [hl]
    rra
    ld b, [hl]
    rra
    rst RST_10
    ld b, d
    rra
    ld c, [hl]
    ld a, [bc]
    ld b, d
    ld c, [hl]
    ld [hl+], a
    ld b, c
    ld h, a
    inc c
    rst RST_28
    ld h, a
    inc c
    rla
    adc h
    ld d, $42
    sbc h
    ld h, a
    ld l, h
    ei
    ld h, a
    ld c, h
    inc h
    ld b, e
    rlca
    ld e, b
    nop
    ld h, a

jr_02b_427c:
    db $10
    ld a, a
    ld h, b
    inc d
    ld h, c
    inc d
    ld [hl], c
    ld a, [bc]
    xor $50
    ld b, e
    call z, Call_000_123f
    ld e, a
    nop
    ld bc, $60fd
    ld b, e
    ld e, b
    ld b, l
    nop
    ld e, a
    db $10
    ld [hl], b
    ld b, h
    db $fc
    dec d
    inc sp
    rla
    rlca
    inc hl
    ei
    sub b
    ld b, e
    ld e, b
    ld b, l
    add sp, $36
    ld hl, sp-$04
    inc d
    nop
    ld b, b
    or c
    ld b, h
    call nc, $d435
    push af
    call nc, $35df
    jr nc, jr_02b_42c3

    ld b, b
    ccf
    ld [hl], $20
    ld a, a
    ld bc, $7e7f
    ld c, $70
    ld [de], a
    ld [hl], c
    inc d
    ld [hl], e
    add d

jr_02b_42c3:
    ld de, $0dff
    di
    ld [hl], c
    add e
    pop bc
    inc sp
    dec c
    ei
    rst RST_38
    dec c
    ei
    ld h, l
    sbc e
    inc h
    ld b, e
    jr z, @+$49

    rst RST_38
    jr z, @+$49

    inc sp
    ld c, a
    inc sp
    ld c, [hl]
    inc hl
    ld e, [hl]
    rst RST_38
    daa
    ld e, h
    ld h, $5d
    dec b
    db $fc
    dec b
    db $fc
    rst RST_38
    ldh [c], a
    sbc $02
    ld c, $82
    ld c, $02
    ld b, $0f
    ld a, [de]
    add $0a
    and $0a
    ld b, e
    nop
    ld d, h
    dec hl
    ld b, b
    ld d, $47
    adc d
    ld a, [hl-]
    ld b, h
    ld c, b
    inc h
    ld b, h
    ld c, b
    jr z, @+$55

    jr nc, jr_02b_4356

    jr nc, jr_02b_4352

    rst RST_00
    rst RST_08
    inc a
    ld a, [de]
    inc b
    ldh [$fffc], a
    ld [bc], a
    ret nz

    ld de, $0ae0
    db $fc
    ld e, b
    ld d, e
    pop bc
    ld bc, $0096
    xor l
    ld hl, $6944
    ccf
    ld [$1851], sp
    ld b, c
    inc b
    ld bc, $01c1
    ld [hl], b
    ld b, c
    ld h, b
    ld [hl], c
    ld b, l
    ld [hl], b
    ld d, d
    db $e3
    inc hl
    inc [hl]
    dec d
    adc a
    ld b, d
    ld hl, sp+$02
    sbc b
    ld d, e
    ld a, [hl]
    pop bc
    ld bc, $b085
    sub l
    and b
    dec [hl]
    add b
    xor b
    ld d, d
    cp a
    add c
    call nc, $3435
    dec d
    ld [hl], h
    or e
    ld d, b
    ld d, h
    rst RST_30

jr_02b_4352:
    dec [hl]
    ld d, h
    dec [hl]
    or b

jr_02b_4356:
    ld b, d
    ld [hl], e
    ld de, $1976
    rst RST_18
    halt
    ld a, [de]
    ld [hl], h
    jr jr_02b_43d6

    ret z

    ld d, e
    sub l
    dec bc
    rst RST_38
    dec b
    dec bc
    dec c
    inc bc
    ld h, l
    db $e3
    dec d
    di
    cp $da
    ld b, c
    call $26bb
    ld e, l
    inc h
    ld e, a
    inc l
    db $ed
    ld e, e
    db $e4
    ld d, a
    ld [bc], a
    or $f0
    ld d, c
    jp nz, $c2f6

    db $ed
    or [hl]
    ld hl, sp+$51
    add d
    adc [hl]
    ret z

    ld d, c
    add hl, de
    ld [hl], h
    add hl, de
    rst RST_38
    ld [hl], h
    jr jr_02b_4406

    jr jr_02b_440a

    jr jr_02b_440d

    db $10
    rst RST_38
    ld [hl], a
    call $edbb
    sbc e
    call $ad9b
    rst RST_38
    dec de
    dec c
    dec sp
    ld d, l
    inc hl
    dec d
    db $eb
    dec h
    rst RST_28
    sra h
    ld e, e
    inc h
    ld hl, $2664
    ld e, l
    ld h, $ff
    ld e, h
    inc hl
    ld e, [hl]
    jp nz, $a58e

    cp h
    ld b, l
    cp $f1
    ld b, b
    ld a, [bc]
    ld hl, sp+$04
    ldh a, [rP1]
    ret nz

    nop
    rst RST_30
    nop
    jr jr_02b_443a

    ld b, b
    ld l, e
    dec b
    dec sp
    dec b
    dec sp
    rst RST_38
    ld c, l
    dec sp
    dec c
    ld a, e
    dec c

jr_02b_43d6:
    ld a, e
    adc l
    ld a, e
    rst RST_38
    add hl, de

jr_02b_43db:
    di
    add hl, de
    di
    jr nz, jr_02b_4427

    inc h
    ld b, e
    rst RST_38
    inc h
    ld b, e
    jr nz, jr_02b_442a

    jr z, @+$45

    ld a, [hl+]
    ld b, c
    rst RST_38
    ld a, [hl+]
    ld b, c
    jr z, @+$43

    ldh a, [$ff80]
    ld [hl], b
    ret nz

    cp a
    ld [hl], b
    ret nz

    ld a, b
    ret nz

    jr c, jr_02b_43db

    ld a, b
    ld h, c
    inc a
    rst RST_38
    ldh [rNR32], a
    ld [hl], e
    jr @+$79

    jr jr_02b_447d

jr_02b_4406:
    add hl, de
    ld a, [hl]
    add l
    ld h, d

jr_02b_440a:
    ld de, $117f

jr_02b_440d:
    ld a, a
    pop hl
    add e
    sub b
    ld h, c
    ld a, e
    pop bc
    inc bc
    sub [hl]
    ld h, e
    push bc
    inc bc
    jr z, @+$42

    and b
    ld l, e
    rst RST_38
    rlca
    inc a
    rlca
    inc a
    daa
    inc e
    inc hl
    ld e, $fd

jr_02b_4427:
    inc bc
    or a
    ld h, b

jr_02b_442a:
    ld de, $110e
    ld c, $16
    ld a, l
    cp $c0
    ld h, e
    dec d
    ld a, h
    ld [de], a
    ld a, [hl]
    ld [de], a
    ld a, [hl]
    add hl, de

jr_02b_443a:
    cp a
    ld [hl], a
    push de
    or e
    sub l
    di
    dec d
    db $d3
    ld h, d
    sub l
    rst RST_18
    ld [hl], e
    ld h, l
    inc bc
    dec c
    dec bc
    db $ec
    ld b, b
    ld e, h
    inc h
    cp l
    ld e, l
    ld [hl+], a
    ld h, l
    inc h
    ld e, e
    add hl, hl
    ld h, [hl]
    ldh a, [$ff60]
    and [hl]
    rst RST_28
    ld de, $11b6
    or $f8
    ld h, e
    inc d
    ld [hl], e
    add hl, de
    cp $41
    ld l, d
    dec h
    set 0, l
    dec bc
    dec d
    dec bc
    dec b
    db $fd
    dec de
    ld d, $71
    dec h
    dec de
    dec b
    dec sp
    inc hl
    ld e, [hl]
    rst RST_08
    inc hl
    ld c, [hl]
    ld hl, $244f

jr_02b_447d:
    ld [hl], c
    ldh [c], a
    ld b, c
    jr nz, jr_02b_44c9

    ld sp, hl
    ret nz

    inc a
    ld h, b
    jr nc, @+$73

    ldh [rP1], a
    ldh [$ff80], a
    ldh [$ffd7], a
    add b
    ldh a, [$ff80]
    ld [bc], a
    ld [hl], b
    ld [hl], c
    ld b, d
    ld [hl], c
    ld a, [de]
    ld [hl], c
    di
    jr jr_02b_450e

    ld c, d
    ld [hl], c
    ld e, h
    ld h, c
    add hl, sp
    db $e3
    add hl, sp
    db $e3
    cp e
    ld [hl], c
    jp $7158


    pop hl
    add e
    add hl, hl
    and c
    ld l, h
    inc e
    rst RST_38
    ldh a, [rNR32]
    ldh a, [$ff9e]
    ld [hl], b
    sbc [hl]
    ld [hl], b
    ld c, $ff
    ld a, b
    ld c, $78
    ld c, [hl]
    jr c, jr_02b_4505

    inc a
    inc de
    or $cb
    ld h, b
    inc d
    ld a, h
    ret nz

    ld h, l
    ld d, $7d

jr_02b_44c9:
    add l
    inc bc

jr_02b_44cb:
    rst RST_38
    dec e
    ld a, e
    dec b
    ei
    dec h
    db $db
    ld d, l
    res 7, a
    adc l
    add e
    adc l
    add e
    and l
    and e
    and b
    ld h, c
    dec hl
    push af
    ld b, b
    ldh [rSTAT], a
    jr nz, jr_02b_44cb

    ld b, d
    ld de, $010e
    ld c, $ff
    ld b, c
    ld c, $b1
    adc [hl]
    ld d, c
    adc $51
    adc $ff
    add hl, hl
    and $29
    ld h, [hl]
    ld de, $1477
    ld [hl], e
    ld a, a
    inc d
    ld [hl], e
    ld [de], a
    ld [hl], c
    dec c
    ld a, h
    inc bc
    push bc
    ld b, b

jr_02b_4505:
    ld a, a
    nop
    ld a, a
    sub l
    sbc e
    ld h, l
    ei
    dec b
    db $d3

jr_02b_450e:
    ld [hl], b
    rst RST_38
    dec c
    di
    pop af
    inc bc
    pop hl
    db $e3
    add hl, de
    ei
    jp z, Jump_02b_6128

    dec h
    pop hl
    ld h, b
    inc sp
    inc hl
    ld [hl], b
    ldh [c], a
    ld b, c
    ld de, $dfe6
    add hl, hl
    add $c9
    ld b, $09
    push af
    ld [hl], b
    sub c
    ld c, $0f
    pop hl
    sbc $01
    cp $1d
    add b
    jr z, @+$01

    nop
    ld a, a
    jr jr_02b_45a3

    ld e, $71
    add hl, de
    ld [hl], b
    ei
    ld a, [de]
    ld [hl], b
    ld b, $01
    sbc c
    ld [hl], b
    dec b
    rst RST_38
    ld bc, $11fe
    nop
    add c
    ld a, a
    ld h, c
    rra
    add hl, de
    rlca
    and l
    rst RST_38
    inc bc
    ld d, c
    inc bc
    inc [hl]
    ld b, e
    ld a, [hl-]
    ld [hl], c
    dec c
    rst RST_28
    ld a, h
    inc bc
    ld a, a
    nop

jr_02b_4562:
    daa
    inc b
    ld [bc], a
    db $fc
    inc b
    rst RST_38
    ld hl, sp-$78
    ld [hl], b
    or $80
    ld l, a
    ldh [$ff1f], a
    rst RST_38
    ld hl, sp+$07
    cp $00
    rst RST_38
    nop
    nop
    nop
    rst RST_38
    ld bc, $0600
    ld bc, $0618
    ld h, b
    jr jr_02b_4562

    add b
    ld h, c
    nop
    ld c, $01
    ld c, b
    ld bc, $0160
    rst RST_38
    add a
    ld bc, $0719
    ld h, c
    rra
    add c
    ld a, a
    rst RST_38
    ld bc, $0eff
    ld bc, $0f30
    ld b, b
    ccf
    cp $28
    ld bc, $7e01

jr_02b_45a3:
    rlca
    ld a, b
    rra
    ld h, e
    ld bc, $fefd
    ld [hl], b
    ld bc, $f00f
    dec sp
    ret nz

    pop de
    nop
    rst RST_28
    rst RST_30
    ldh a, [$ff0b]
    ld hl, sp+$40
    nop
    nop
    nop
    inc bc
    rst RST_38
    nop
    inc e
    inc bc
    ld h, b
    inc e
    add b
    ld h, b
    nop
    rst RST_38
    add b
    ld bc, $3003
    inc c
    ret nz

    jr nc, jr_02b_45ce

jr_02b_45ce:
    rst RST_38
    pop bc
    nop
    rlca
    nop
    add hl, de
    ld b, $61
    ld e, $f3
    add c
    ld a, [hl]
    add b
    rrca
    sub d
    ld bc, $03c0
    nop
    inc b
    xor $57
    nop
    ld h, a
    rra
    sbc a
    ld b, b
    add hl, bc
    ld h, b
    nop
    inc b
    db $fd
    ld e, $c8
    inc bc
    add h
    inc bc
    db $10
    inc c
    ld b, e
    inc sp
    xor a
    rrca
    rst RST_08
    ccf
    ccf
    ld c, l
    nop
    ld sp, $01dc
    rst RST_38
    ld h, [hl]
    add sp, $04
    ld a, a
    ld a, a
    add sp, $05
    add sp, $03
    inc b
    ld a, [hl]
    nop
    dec d
    rst RST_38
    inc [hl]
    ld c, [hl]
    ld b, h
    ld c, $04
    ld c, [hl]
    inc [hl]
    ld l, [hl]
    rst RST_38
    inc [hl]
    ld l, [hl]
    inc d
    ld l, [hl]
    ld d, h
    ld l, $14
    ld l, $9f
    inc [hl]
    ld c, $14
    ld c, $54
    rrca
    ld [de], a
    jr nz, jr_02b_4644

    ld d, h
    add c
    ld c, $16
    ld de, $1134
    ld d, $10
    inc de
    db $10
    inc a
    rla
    jr nz, jr_02b_464f

    ld h, h
    cp l
    ld c, [hl]
    ld d, d
    inc d
    ld c, $64
    ld c, $44
    ld e, l

jr_02b_4644:
    ld [de], a
    inc b
    ld l, d
    ld h, e
    inc e
    inc d
    dec de
    db $10
    ld [hl], h
    dec a
    ld [de], a

jr_02b_464f:
    ld d, h
    ld l, $f2
    add hl, bc
    db $f4
    ld a, $00
    ldh a, [c]
    ld a, [bc]
    ccf
    adc l
    inc e
    rst RST_38
    rst RST_38
    rra
    rst RST_38
    ld d, e
    inc [hl]
    ld c, $1a
    inc de
    or [hl]
    dec d
    db $fc
    add sp, $04
    inc bc
    adc e
    db $10
    jp Jump_000_01fe


    ccf
    nop
    add e
    dec de
    rst RST_08
    db $10
    ret nc

    dec de
    ld d, h
    ld c, [hl]
    rst RST_18
    inc d
    ld c, $34
    ld l, $54
    ld b, e
    dec d
    ld c, [hl]
    db $fc
    dec de
    nop
    rst RST_38
    ret nz

    inc de
    inc bc
    inc bc
    nop
    jr nz, jr_02b_46cb

    ld bc, $168d
    and a
    rrca
    rrca
    ldh a, [$ff3e]
    ld [bc], a
    adc h
    add hl, de
    ld h, b
    ld h, d
    ld de, $fb64
    ld l, [hl]
    inc d
    ld bc, $0016
    rst RST_38
    jp $ff3c


    db $fd
    jp Jump_000_18a4


    ldh [$fffe], a
    ld bc, $dfe0
    ldh a, [$ffb7]
    rst RST_28
    rst RST_38
    ldh a, [$ffe8]
    inc bc
    ldh [$ff1f], a
    inc c
    ld [hl+], a
    rst RST_38
    rrca
    add b
    ld a, a
    rst RST_38
    add b
    sbc a
    inc e
    add a
    ld [de], a
    dec e
    nop
    add b
    ld a, a
    rst RST_38
    rst RST_38
    db $e3

jr_02b_46cb:
    db $e3
    db $dd
    db $dd
    cp [hl]
    ld b, $02
    db $ed
    db $dd
    inc c
    nop
    set 6, e
    db $10
    dec bc
    ld a, [hl]
    nop
    ld a, [hl]
    rst RST_38
    nop
    ld c, [hl]
    nop
    ld b, d
    nop
    ld b, [hl]
    inc e
    ld d, [hl]
    db $fd
    inc c
    ld a, [hl+]
    ld bc, $ae92
    and [hl]
    sbc [hl]
    xor [hl]
    sbc [hl]
    rst RST_38
    add [hl]
    cp [hl]
    xor [hl]
    sbc [hl]
    and [hl]
    sbc [hl]
    adc [hl]
    cp [hl]
    ld [hl], a
    and [hl]
    sbc [hl]
    rst RST_38
    ld b, b
    nop
    rst RST_00
    rst RST_00
    cp e
    ld b, [hl]
    ld [bc], a
    rst RST_38
    rst RST_10
    rst RST_10
    jp $aac3


    sub [hl]
    or h
    adc d
    rst RST_38
    cp h
    add d
    cp d
    add h
    cp h
    add d
    cp [hl]
    add b
    rst RST_38
    cp [hl]
    add b
    cp h
    add b
    ld c, e
    ld [hl], h
    ld h, a
    ld a, b
    rst RST_38
    ld [hl], a
    ld a, b
    ld h, e
    ld a, h
    ld [hl], a
    ld a, b
    ld h, a
    ld a, b
    cp a
    ld [hl], e
    ld a, h
    ld h, [hl]
    ld a, b
    cp $00
    ld [hl], b
    add hl, bc
    ld c, $ff
    nop
    cp c
    add b
    and c
    add b
    or c
    sbc h
    or l
    db $fd
    sbc b
    add [hl]
    dec b
    ld l, a
    ld l, a
    ld b, a
    ld b, a
    dec sp
    dec sp
    push af
    ld a, l
    sub [hl]
    ld [bc], a
    dec sp
    sbc h
    nop
    add [hl]
    ld [hl], b
    add [hl]
    ld [hl], b
    rst RST_38
    ld b, $30
    ld b, [hl]
    nop
    or [hl]
    add b
    ret z

    ret nz

    rst RST_18
    ldh a, [$fff0]
    cp $fe
    ld l, a
    or b
    ld b, $65
    ld l, a
    cp l
    ld l, d
    cp c
    nop
    rra
    rra
    ccf
    ccf
    ld b, b
    ld bc, $3bff
    rst RST_38
    cp $c7
    ld [bc], a
    set 6, e
    xor e
    ld de, $d200
    inc bc
    rst RST_08
    ld c, e
    di
    sbc e
    db $e3
    ld a, [hl+]
    inc bc
    ldh [rTIMA], a
    ld a, [hl]
    inc e
    db $fc
    jr z, jr_02b_478c

    ldh [rTIMA], a
    pop bc
    pop bc
    db $dd

jr_02b_478c:
    push bc
    db $e3
    db $e3
    rst RST_38
    dec hl
    inc hl
    rlc e
    sbc e
    inc bc
    ld [hl], a
    rlca
    ld l, e
    rrca
    rrca
    db $10
    inc bc
    db $eb
    inc de
    inc d
    xor e
    di
    ldh [$ff0b], a
    di
    ld d, [hl]
    inc c
    inc a
    ld bc, $013c
    cp [hl]
    adc [hl]
    sub [hl]
    xor [hl]
    cp a
    xor d
    sbc [hl]
    sub h
    xor [hl]
    sub l
    add c
    ld b, b
    ld de, $f78d
    add c
    jp $c4c3


    inc bc
    ld d, [hl]
    ld l, b
    ld l, $50
    rst RST_38
    ld a, $40
    ld e, a
    jr nz, jr_02b_4808

    ld b, b
    ld a, a
    nop
    sbc a
    ld a, a
    nop
    ccf
    nop
    ld [hl], d

Jump_02b_47d2:
    ld l, l
    nop
    ld h, b
    ld de, $ff7e
    ld [hl], b
    ld l, d
    ld [hl], h
    ld d, [hl]
    ld a, b
    ld a, [hl+]
    ld [hl], h
    ldh a, [rIE]
    nop
    ld e, $00
    and $60
    or [hl]
    ld [hl], b
    or [hl]
    sbc e
    ld [hl], b
    sub [hl]
    and c
    nop
    add [hl]
    ld [hl], b
    add [hl]
    rlca
    add [hl]
    inc bc
    inc bc
    rst RST_38
    inc bc
    dec sp
    inc hl
    ld b, a
    ld b, a
    ld d, h
    ld b, h
    ld d, e
    rst RST_38

Jump_02b_47ff:
    ld b, b
    ld e, c
    ld b, b
    ld l, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld l, b
    rst RST_30

jr_02b_4808:
    ld l, b
    ld l, h
    ld l, h
    or b
    rlca
    ld l, a
    ld l, a
    ld h, d
    ld l, a
    rst RST_38

jr_02b_4812:
    ld l, b
    ld h, a
    ld l, b
    ld h, a
    ld h, h
    ld l, e
    ld l, d
    ld h, l
    cp $b6
    ld de, $626d
    db $fd
    rst RST_38
    ld a, [$f5ff]
    rst RST_28
    rst RST_38
    xor d
    rst RST_38
    ld d, l
    push bc
    db $10
    ld d, c
    cp $0a
    ei
    push af
    dec bc
    db $dd
    nop
    dec de
    db $e3
    dec sp
    jp $ff5b


    and e
    dec sp
    jp $837b


    ei
    inc bc
    ld a, [hl]
    rst RST_38
    nop
    ld a, h
    nop
    ld a, d
    ld [bc], a
    ld a, b
    ld [bc], a
    ld a, h
    cp $21
    nop
    ld [hl], d
    nop
    ld b, [hl]
    inc c
    inc b
    ld e, [hl]
    ld [$5cff], sp
    db $10
    ld e, h
    ld bc, $0358
    ld [hl], b
    rlca
    rst RST_38
    ld [hl], b
    nop
    ld h, b
    rrca
    ld b, b
    or l
    sbc b
    or c
    rst RST_38
    sbc h
    cp a
    adc h
    sbc a
    add d
    xor a
    and b
    adc a
    cp $09
    jr nz, jr_02b_4812

    add b
    add c
    cp d
    add d
    or h
    add h
    rst RST_38
    adc b
    adc d
    or b

jr_02b_487d:
    and b
    add d
    adc b
    add d
    and b
    rst RST_18
    adc d
    add b
    xor d
    nop
    rst RST_38
    jr nz, jr_02b_48ad

    daa
    rst RST_38
    ld a, a
    nop
    nop
    ret nz

    rst RST_38
    nop
    cp $2c
    ld hl, $e722
    ret nz

    rst RST_38
    ld e, $29
    jr nz, jr_02b_48bd

    jr nz, jr_02b_491e

    add b
    xor d
    sub $40
    dec hl
    call z, Call_02b_5022
    dec hl
    jp z, $2c5f

    inc b
    ld d, d

jr_02b_48ad:
    cp $70
    dec hl
    cp a
    ret nz

    add b
    ldh a, [$ffd7]
    rst RST_20
    rst RST_00
    rst RST_38
    ldh a, [$ffe8]
    ldh a, [$ffdb]
    di

jr_02b_48bd:
    ldh [c], a
    ld a, [$ddf2]
    ld a, [$238c]

jr_02b_48c4:
    ld a, [$eaf2]
    sub a
    ld [hl+], a
    jp z, Jump_02b_7ef2

    ld hl, $e021
    nop
    ld hl, sp+$10
    rst RST_30
    jr jr_02b_487d

    inc hl
    ld l, d
    ld hl, $0721
    or e
    jr nz, jr_02b_48c4

    or a
    inc h
    rst RST_38
    rra
    ld hl, $fe24

jr_02b_48e4:
    and c
    dec h
    ldh a, [rIE]
    nop
    ld sp, hl
    nop
    or $06
    ld h, a
    db $f4
    ld b, $f9
    or e
    ld [hl+], a
    xor b
    inc hl
    ldh a, [$ff1f]
    ret nz

    dec h
    push af
    cp a
    rst RST_00
    db $10
    ld a, [hl+]
    ld hl, $aa20
    ld d, l
    ld d, a
    xor b
    cp $39
    ld hl, $80bf
    xor a
    add b
    or a
    sub b
    or e
    db $fc
    ld bc, $8620
    inc bc
    ld b, b
    ld e, a
    ld e, a
    ld b, b
    ld b, b
    ld b, b
    db $db
    ld d, e
    ld b, h
    ld d, $35

jr_02b_491e:
    nop
    rst RST_38
    add hl, sp
    ld hl, $4433
    cp $26
    dec [hl]
    sbc a
    ld e, a
    ld c, a
    cpl
    inc hl
    inc de
    ld d, c
    rst RST_38
    dec c
    inc b

jr_02b_4931:
    ld b, d
    ld [de], a
    ld b, c
    dec b
    ld d, b
    ld b, $7d
    ld d, b
    ld b, b
    jr z, jr_02b_48e4

    add c
    and [hl]
    add d
    xor h
    ld d, b
    daa
    or $3a
    ld hl, $00ff
    ld h, b
    daa
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [$fafb]
    ld [bc], a
    ld [hl], b
    jr z, jr_02b_4965

    add h
    ld h, d
    ld b, h

jr_02b_4956:
    ld [hl-], a
    ld hl, sp+$39
    ld [hl+], a
    ld hl, $2132
    ld sp, $00ff
    xor d
    ldh a, [c]
    ld c, d
    rst RST_38
    ldh a, [c]

jr_02b_4965:
    ld a, [de]
    ldh [c], a
    ld e, d
    and d
    cp d
    ld b, d
    ld a, [$0283]
    ld a, [$306a]
    xor b
    dec h
    ldh [rNR51], a
    cp b
    dec h
    cp b
    inc hl
    rla
    dec c
    ldh [$ffa0], a
    dec sp
    rst RST_30
    jr jr_02b_4931

    dec sp
    or [hl]
    jr c, jr_02b_4956

    jr nz, jr_02b_49a8

    ld hl, $1aff
    ld a, [hl-]
    jp z, Jump_000_0c1a

    inc e
    and $0e
    rst RST_38
    inc bc
    rlca
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    nop
    ld bc, $84ff
    sbc b
    adc e
    sub b
    adc b
    or b
    sub a
    and b
    or a
    and b
    add b
    sbc a
    add hl, bc

jr_02b_49a8:
    ld b, b
    add b
    add b
    dec sp
    ld hl, $fe00
    ld [hl], c
    nop
    ld bc, $fd00
    nop
    ei
    nop
    inc bc
    db $fc
    ld a, [hl-]
    ld [hl+], a
    dec sp
    ld hl, $00ff
    call nz, $8f3f
    ld [hl], b
    ld c, e
    cp a
    ld b, b
    jr nz, @+$49

    ld b, h
    ld hl, $3930
    ld hl, $2103
    inc h
    sub a
    add b
    rst RST_38
    ld [hl], h
    add hl, hl
    jr nz, jr_02b_4a2f

    ld c, c
    ld b, b
    jr nz, jr_02b_49fe

    ld [hl], d
    cp $39
    ld [hl+], a
    rrca
    rrca
    rst RST_28
    rrca
    rst RST_18
    ld e, $df
    rst RST_38
    ld e, $be
    dec a
    cp [hl]
    dec a
    ld a, [hl]
    ld a, l
    ld a, h
    rst RST_38
    ld a, e
    rst RST_38
    ld [hl], d
    adc a
    ld [hl], a
    rra
    rst RST_28
    rra
    rst RST_38
    rst RST_28
    ccf
    rst RST_18
    ccf
    rst RST_18

jr_02b_49fe:
    ld a, a
    cp a
    ld a, a
    rst RST_38
    cp a
    nop
    ccf
    inc de
    ld a, a
    nop
    nop
    ret nc

    add sp, $21
    ld [hl+], a
    pop bc

jr_02b_4a0e:
    jr nz, jr_02b_4a30

jr_02b_4a10:
    jr nz, jr_02b_4a10

jr_02b_4a12:
    ld a, [hl-]
    jr nz, jr_02b_4a12

    ld bc, $fffd
    ld bc, $03fb
    ei
    inc bc
    rlca
    rlca
    ld [hl], e
    rst RST_38
    inc c
    di
    inc c
    rst RST_20
    jr jr_02b_4a0e

    ret c

    rst RST_38
    ld a, a
    db $db
    rst RST_08
    or a
    rst RST_08
    or a

jr_02b_4a2f:
    sbc a

jr_02b_4a30:
    ld l, a
    ld hl, $1f24
    and b
    rst RST_38
    ret nc

    rst RST_38
    ld [$10c3], a
    dec sp
    ld b, d
    ld hl, $5720
    ld [bc], a
    rst RST_38
    dec d
    di
    jr nz, jr_02b_4a5d

    cp [hl]
    ld b, h
    ld de, $10c5
    ld d, l
    rst RST_18
    call nz, $9f02
    ld hl, $0a20
    ret z

    ld b, b
    xor a
    call nz, $ff03
    rst RST_38
    rst RST_38
    adc $36

jr_02b_4a5d:
    rst RST_08
    or a
    rst RST_20
    db $db
    rst RST_38
    rst RST_20

jr_02b_4a63:
    db $db
    rst RST_38
    db $db
    di
    db $ed
    di
    db $ed
    ld e, a
    ld sp, hl
    or $00
    ld a, a
    ld b, b
    add hl, hl
    jr nz, jr_02b_4a63

    ld c, c
    ld b, b
    db $fd
    ld bc, $2029
    cp b
    rst RST_38
    rst RST_30
    nop
    rst RST_30
    nop
    rst RST_38
    ld c, $01
    xor $01
    call c, $dc03
    inc bc
    rst RST_38
    ccf
    ld b, $b9
    ld b, $3f
    ret nz

    rst RST_38
    add b
    pop af
    ld a, a
    ld d, d
    ld b, l
    dec hl
    ld e, a
    dec sp
    ld e, e
    inc bc
    rst RST_38
    inc b
    db $fc
    rst RST_28
    inc bc
    rst RST_38
    ld bc, $0afe
    ld d, b
    rst RST_38
    ld d, b
    rst RST_38
    rst RST_30
    xor b
    rst RST_38
    ld b, b
    ld c, c
    ld b, b
    ei
    ld hl, sp-$09
    ld hl, sp-$01
    rst RST_30
    pop af
    xor $f1
    xor $e3
    call c, Call_02b_7fe0
    rst RST_18
    ret nz

    cp a
    rst RST_38
    cp a
    rst RST_38
    ld a, a
    ld [hl], d
    ld d, b
    ld c, d
    ld b, b
    ld bc, $7a1f
    ld b, c
    ld b, $21
    ld [hl+], a
    ld a, a
    ld sp, $218b
    ld [hl+], a
    rst RST_38
    rst RST_30
    rlca
    rst RST_28
    ld c, $ef
    ld c, $de
    dec e
    rst RST_38
    ld e, $1d
    cp h
    dec sp
    cp h
    dec sp
    ld a, b
    ld [hl], a
    sbc a

jr_02b_4ae5:
    sbc a
    ld l, a
    ccf
    rst RST_18
    rst RST_38
    ld a, c
    ld b, h
    ld [hl], d
    ld d, d
    ld sp, hl
    set 7, a
    db $fd
    ld [hl], d
    ld d, h
    db $fc
    or b
    ld d, b
    call nz, $c703
    rst RST_38
    pop de
    db $e3
    ld b, b
    nop
    ld [hl], l
    ld d, e
    jp $bf03


    sbc $40
    cp h
    rst RST_38
    cp c
    pop hl
    call nz, $e850
    ld b, l
    add c
    rst RST_38
    rlca
    ld b, b
    ld bc, $7300
    nop
    ld [bc], a
    ld hl, $af20
    ld hl, $ff30
    ld c, $8b
    ld [hl-], a
    db $fc
    add e
    ld b, b
    rst RST_38
    jr nz, jr_02b_4ae5

    add b
    rst RST_18
    ret nz

    rst RST_18
    ret nz

    rst RST_38
    ldh [$ffe0], a
    nop
    rra
    ld c, $3f
    nop
    nop
    ld a, a
    ld [hl], b
    ld a, a
    inc e
    ld a, a
    nop
    rst RST_38
    ld b, c
    add hl, sp
    ld hl, $e09f
    rra
    ret nz

    ccf
    add b
    add hl, de
    ld h, b
    jr nz, jr_02b_4b6c

    nop
    rst RST_38
    nop
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$06
    rst RST_38
    ld hl, sp+$0c
    ldh a, [rNR33]
    ldh [$ff39], a
    ret nz

    nop
    ld a, a
    ld bc, $19e2
    adc d
    ld [hl], c
    ld a, [$4601]
    ld h, c
    rst RST_28
    ld e, d
    and c
    ld [bc], a
    ld bc, $0120

jr_02b_4b6c:
    ld bc, $7d01
    rst RST_28
    ld bc, $037b
    ld a, e
    dec bc
    db $10
    ld [hl], a
    rlca
    ld sp, hl
    rst RST_38
    or $ff
    or $f1
    xor $f3
    db $ed
    db $e3
    ld a, a
    db $dd
    rst RST_20
    db $db
    rst RST_00
    cp d
    rst RST_08
    or h
    ldh [rRP], a
    sub a
    ld [$44ff], a
    ld c, c
    ld b, b
    ld d, h
    push bc
    inc b
    ld b, $51
    nop
    ld a, [hl-]
    add hl, bc
    ld d, b
    rra
    ld b, b
    nop
    db $fd
    rst RST_38
    ld l, d
    ret z

    ld b, b
    jr nz, jr_02b_4bc6

    db $fd
    sub l
    ld hl, $7f31
    ld bc, $037c
    ld a, b
    rlca
    rst RST_38
    ld a, b
    rlca
    ld [$7e7f], sp
    rra
    nop
    nop
    cp $62
    ld b, b
    rra
    rst RST_18
    rra
    cp a
    ld a, $bf
    ccf
    cp l
    ld a, a
    cp d
    ld h, b

jr_02b_4bc6:
    rst RST_38
    rst RST_38
    ret nz

    cp a
    inc hl
    ld d, b
    ld a, a
    sbc h
    ld hl, $e820
    ld b, h
    ld a, a
    add b
    inc bc
    ld c, h
    ld d, b
    add $67
    ld h, b
    db $fd
    ld l, a
    ldh [$ff61], a
    ld b, b
    ld b, a
    ld b, b
    ld d, e
    ld d, b
    ld c, l
    rst RST_38
    ld h, h
    ld b, d
    ld l, d
    ld b, c
    sbc b
    cp l
    adc h
    cp l
    rst RST_38
    inc b
    dec a
    add b
    dec a
    ret nz

    rra
    ldh [rIF], a
    rst RST_38
    ldh [rTAC], a
    nop
    inc bc
    rst RST_28
    ldh [$fff7], a
    ld [hl], b
    rst RST_38
    rst RST_30
    ld [hl], b
    ld a, e
    cp b
    ld a, b
    cp b
    dec a
    call c, Call_000_3def
    call c, $ee1e
    inc a
    ld hl, $7f0e
    inc hl
    ld [hl-], a
    add e
    ld b, b
    ld [hl], b
    ld e, d
    ld de, $6426
    ld bc, $21fe
    ld hl, $4192
    rst RST_38
    ld [hl], e
    add b
    ld h, e
    adc b
    jp nz, $8201

    add hl, sp
    rst RST_38
    add d
    add hl, sp
    nop
    ld a, e
    ld a, b
    inc bc
    ld a, b
    nop
    xor h
    ld b, [hl]
    ld h, e
    ld b, [hl]
    ld h, c
    nop
    ld hl, sp+$1f
    ld h, b
    rst RST_38
    ld [$4f50], a
    ldh a, [rSVBK]
    ld d, d
    ld b, d
    ld b, c
    ld [hl], l
    ld d, e

jr_02b_4c46:
    add sp, $45
    ld a, [hl+]
    rst RST_38
    dec b
    rst RST_38
    call c, $704e
    add sp, $44
    ld hl, sp-$01
    and a
    ret nc

    ld d, b
    ld a, a
    sbc a
    rst RST_38
    ld l, h
    rst RST_38
    ld h, c
    adc a
    ld [hl], a
    rst RST_08
    or a
    rst RST_00
    ld a, a
    cp e
    rst RST_20
    db $db
    db $e3
    db $dd
    di
    db $ed
    ld e, d
    ld de, $80fd
    rlca
    ld h, h
    rst RST_28
    ldh [$ffef], a
    ldh [$ff7e], a
    nop
    dec a
    ld a, l
    ld d, l
    ld h, [hl]
    rlca
    rlca
    rst RST_28
    rrca
    adc e
    ld [hl-], a
    push de
    ld l, b
    sub l
    rst RST_38

jr_02b_4c83:
    dec hl
    jr nz, jr_02b_4c46

    or l
    ld a, d
    jr nc, jr_02b_4c83

    ld d, b
    add $67
    ld c, h
    db $eb
    ld h, b
    ld c, a
    pop hl
    ld a, d
    ld a, a
    dec b
    ld h, [hl]
    rst RST_28
    ldh [$ffe0], a
    nop
    rst RST_20
    jr nc, jr_02b_4cba

    add b
    ld b, b
    rst RST_38
    rst RST_38
    xor d
    rst RST_38
    db $dd
    rst RST_38
    ld a, [$f5ff]
    rst RST_38
    rst RST_38
    db $eb
    rst RST_38
    rst RST_18
    rst RST_38
    cp a
    rst RST_38
    ld a, a
    rst RST_38
    ld h, b
    ld [$7230], a
    db $10
    ld [hl-], a
    sbc b
    ld a, [hl-]

jr_02b_4cba:
    rst RST_38
    call z, $e61c
    ld c, $02
    ld b, $f8
    ld [bc], a
    ld a, a
    nop
    nop
    ld a, a
    nop
    nop
    nop
    rst RST_38
    dec h
    nop
    rst RST_38
    call nz, $8f3f
    ld [hl], b
    cp a
    ld b, b
    ld l, b
    rrca
    ld a, a
    ld d, c
    rra
    dec hl
    ccf
    ld e, a
    ld a, a
    rst RST_38
    jr c, jr_02b_4ce4

    ld sp, hl
    rra
    jr c, jr_02b_4ce9

jr_02b_4ce4:
    jr c, jr_02b_4ce9

    cp $07
    ld d, a

jr_02b_4ce9:
    nop
    ld d, a
    cp a
    nop
    ld d, b
    rlca
    ld d, a
    rlca
    ld d, [hl]
    ld d, [hl]
    nop
    ld d, a
    rst RST_10
    inc bc
    ld e, e
    rst RST_38
    ld h, $01
    nop
    jr c, jr_02b_4cfe

jr_02b_4cfe:
    ld d, b
    rst RST_38
    db $fd
    ld [hl+], a
    jr c, jr_02b_4d04

jr_02b_4d04:
    ld h, l
    cp $fe
    nop
    cp $01
    rst RST_38
    ld bc, $fdfd
    db $fd
    xor l
    db $fd
    ld c, l
    db $fc
    rst RST_38
    db $fd
    ld hl, sp+$3a
    jp c, $dac2

    jp nz, $dfba

    add d
    cp d
    add d
    ld a, [hl-]
    ld [bc], a
    adc c
    nop
    ld a, [hl-]
    ld a, d
    rst RST_30
    ld [bc], a
    ld c, a
    ld h, b
    sub b
    dec b
    daa
    ld b, b
    ld b, a
    db $10
    rst RST_38
    inc bc
    jr jr_02b_4da7

    ld hl, sp+$01
    ld hl, sp+$01
    db $fc
    ld e, a
    nop
    cp $00
    nop
    add hl, sp
    ld h, $01
    rst RST_38
    sub b
    rlca
    sbc [hl]
    sub b
    inc bc
    ld d, l
    xor d
    xor a
    ld d, b
    xor e
    ld [bc], a
    push bc
    inc b
    inc bc
    db $fd
    ei
    ret nc

    inc bc
    ld bc, $01f9
    push af
    dec b
    ret


    ld l, a
    add hl, bc
    or c
    rst RST_20
    ld [$0be0], sp
    sbc c
    inc hl
    ldh a, [$ff0b]
    ld d, e
    rst RST_38
    ld hl, sp+$41
    dec bc
    inc hl
    nop
    adc a
    inc hl
    inc bc
    ld c, [hl]
    rrca
    ld de, $26bc
    nop
    rrca
    ld de, $22cc
    call z, $6422
    ld bc, $ef03
    rst RST_38
    ld [bc], a
    ld a, [$89fa]
    nop
    jp z, $ca22

    ld a, a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ldh a, [c]
    ldh [c], a
    ldh [c], a
    ldh [c], a
    ld h, $00
    rst RST_30
    ld a, [hl+]
    rst RST_38
    ld d, l
    add hl, bc
    dec d
    rst RST_38
    rst RST_38
    inc d
    ld d, h
    adc a
    inc de
    ld d, e
    nop
    ld b, b
    ld d, [hl]
    rlca
    ld h, h
    ld bc, $0964

jr_02b_4da7:
    ld [bc], a
    di
    ld [bc], a
    cp $73
    rrca
    add l
    ld b, $3a
    ld [bc], a
    call z, $be1d
    ld a, [de]
    ld bc, $07f3
    ld sp, hl
    inc bc
    db $fc

jr_02b_4dbb:
    and h
    inc bc
    rst RST_38
    push af
    rlca
    ld h, e
    nop
    ret nz

    xor e
    ld [bc], a
    ld b, $ff
    ld e, b
    rst RST_38
    db $fd
    daa
    pop hl
    inc c
    rst RST_38
    rst RST_38
    db $fc
    db $fc
    ld hl, sp-$05
    cp a
    ldh a, [c]
    db $f4
    push bc
    ret z

    adc e
    or b
    sbc d
    nop
    adc b
    rst RST_38
    inc hl
    ld b, c
    ld e, e
    add c
    sbc e
    ld hl, $211b
    db $f4
    ldh a, [rTIMA]
    ldh [$ff0b], a
    and $ef
    ld [bc], a
    sub e
    ld hl, $2d81
    rst RST_38
    add l
    add hl, de
    adc h
    jr nc, jr_02b_4e11

    ld h, b
    jr nc, jr_02b_4dbb

    db $fd
    cp $00
    ld h, $3e
    ld a, $1e
    sbc $4e
    ld l, $ff
    and [hl]
    ld d, $d2
    ld a, [bc]
    adc b
    ld b, h
    sub h
    ld b, d
    sbc a
    sbc d
    ld b, b

jr_02b_4e11:
    sub b
    ld c, b
    sub d
    dec de
    cpl
    dec h
    ld h, $12
    cp $37
    ld hl, $1288
    ret z

    ld a, d
    ld [bc], a
    ld [hl], l
    inc b
    cpl
    ld l, e
    ld [$1057], sp
    ld b, [hl]
    dec h
    ld a, a
    ld hl, $5000
    dec h
    rst RST_38
    ld a, [hl]
    nop
    ld a, l
    ld bc, $00f8
    db $e4
    inc d
    rst RST_38
    ld [$d208], a
    db $10
    xor d
    jr nz, jr_02b_4e9a

    ld b, b
    rst RST_38
    cp d
    adc b
    ld a, d
    ld a, [de]
    jp nc, $aad2

    and d
    rst RST_28
    xor d
    and d
    ld c, d
    ld b, d
    ld [hl], d
    ld hl, $626a
    ld e, d
    rst RST_38
    ld b, d
    ldh [c], a
    ldh [c], a
    ld [$cac2], a
    jp nz, $f5ca

    add d
    ld [hl], d
    jr nz, @+$24

    ld a, h
    ld hl, $fa01
    ld [bc], a
    db $f4
    rst RST_38
    inc b
    ret z

    ld a, [bc]
    or b
    ld [hl+], a
    ld b, b
    ld c, b
    add b
    rst RST_38
    xor e
    inc bc
    ld h, h
    rlca
    ld a, [de]
    ld a, [$fa3a]
    ld a, e
    ld a, d
    ld a, [$23a5]
    ld hl, sp-$08
    push af
    push af
    jr nz, @+$1d

    db $dd
    cp a
    cpl
    dec de
    ldh a, [c]
    jp nc, Jump_02b_47d2

    ld hl, $1711
    rst RST_38
    ld de, $5057
    ld d, $11
    dec d
    ld d, d
    ld [de], a
    rst RST_38

jr_02b_4e9a:
    ld d, d
    ld [de], a
    add sp, -$16
    ret nc

    sub $a2
    xor h
    rst RST_18
    ld d, h
    ld c, d
    xor d
    sub h

jr_02b_4ea7:
    ld a, $5b
    jr nz, jr_02b_4ea7

    nop
    rst RST_38
    rst RST_38
    ccf
    rst RST_18
    ccf
    rst RST_08
    ccf
    db $eb
    rra
    rst RST_38
    ldh [rNR34], a
    ld hl, sp+$06
    ld a, l
    ld bc, $017d
    rst RST_38
    rst RST_38
    ld l, $f1
    ld c, $f8
    rla
    ld hl, sp-$09
    rst RST_38
    db $fc
    ei
    db $fc
    ei
    cp $7d
    cp $fd
    adc $41
    ld a, [bc]
    call nc, $eaff
    ld b, c
    ld a, [bc]
    and d
    ld de, $007f
    rst RST_38
    ld [hl], b
    rrca
    nop
    ld a, b
    nop
    ld h, b
    nop
    ld l, c
    db $eb
    inc b
    ld h, l
    add hl, sp
    jr nc, @+$81

    ld b, b
    inc a
    jp nc, Jump_02b_662e

    rst RST_38
    ld e, $6e
    ld e, $46
    ld a, $6e
    ld e, $66
    rst RST_30
    ld e, $4e
    ld a, $5a
    scf
    cp $0e
    sub $2e
    rst RST_38
    ld [$d41e], a
    ld l, $ea
    ld d, $f4
    ld a, [bc]
    ccf
    db $fc
    ld [bc], a
    ld a, [$fc04]
    ld [bc], a
    ld [hl], c
    nop
    db $ed
    jr nz, @+$01

    ld h, l
    ld [$0865], sp
    ld l, c
    inc b
    ld h, h
    ld [$62ff], sp
    nop
    ld l, l
    ld bc, $0313
    rrca
    rrca
    rst RST_38
    dec b
    ld l, b
    dec bc
    ld d, b
    inc de
    jr nz, jr_02b_4f5c

    ld b, b
    rst RST_38
    ld c, d
    db $10
    add hl, bc
    ld de, $134b
    ld b, a
    rla
    rst RST_38
    rlca
    nop
    rla
    nop
    ld c, $01
    xor $01
    rst RST_38
    call c, $dc03
    inc bc
    ccf
    ld b, $b9
    ld b, $bf
    ld c, e
    inc de
    ld c, e
    inc de
    ld c, l
    ld de, $31b4
    ld c, h
    ld a, a
    db $10
    ld c, b
    db $10
    ld c, b

jr_02b_4f5c:
    ld [de], a
    rst RST_38
    db $10
    jr c, jr_02b_4f61

jr_02b_4f61:
    rst RST_30
    call $c0ff
    ld b, a
    dec d
    ld hl, sp+$3a
    ld hl, sp-$06
    ei
    ldh a, [$fff4]
    call nc, $e131
    ldh [$ffe3], a
    ldh [$ff03], a
    rst RST_20
    ldh [rIE], a
    ld a, a
    ccf
    nop
    dec h
    ld bc, $fff8
    cp $ee
    jr c, jr_02b_4f85

    ldh [rIE], a

jr_02b_4f85:
    add b
    ld h, $00
    inc bc
    rst RST_38
    rla
    inc bc
    rst RST_38
    xor b
    inc c
    ld de, $ffff
    dec e
    nop
    add b

jr_02b_4f95:
    xor e
    ld l, b
    rst RST_38
    nop
    inc bc
    ld [$0007], sp
    dec bc
    dec bc
    ld bc, $75fb
    ld l, e
    ld de, $0b04
    add hl, de
    ld [bc], a
    ld l, e
    rst RST_38
    ld l, e

jr_02b_4fab:
    dec bc
    ld [bc], a
    ret nz

    ld [$0801], sp
    ld [bc], a
    add hl, de
    inc b
    db $10
    dec b
    jr z, @+$08

    dec bc
    nop
    ld a, [bc]
    cp $fb
    ld bc, $14e0
    dec b
    add hl, bc
    ld sp, hl
    dec b
    add c
    dec a
    rst RST_18
    ld bc, $01e1
    reti


    inc b
    ld h, b
    add hl, bc
    ret nc

    nop
    ei
    jp hl


    inc bc
    ld [hl], b
    add hl, bc
    nop
    nop
    ld bc, $03ff
    rst RST_38
    cp $06
    db $fc
    inc c
    ld hl, sp+$18
    ldh a, [$ff30]
    rst RST_38
    pop hl
    ld h, c
    jp nz, $85c2

    add [hl]
    nop
    ld d, $ff
    db $10
    inc h
    ld [hl-], a
    ld d, h
    ld [hl], d
    and h
    ldh [c], a
    call nc, Call_02b_52ff

jr_02b_4ff7:
    inc b
    add d
    inc b
    ld [hl], d
    ccf
    add b
    nop
    rst RST_38
    add b
    inc b
    cp e

Jump_02b_5002:
jr_02b_5002:
    jr jr_02b_4fab

    jr nc, jr_02b_4f95

    jr nc, @+$01

    sbc a
    inc bc
    cp a
    nop
    nop
    rst RST_38
    nop
    nop
    rst RST_38
    nop
    cp $00
    db $fd
    ld bc, $03fb
    di
    ld a, a
    inc bc
    rst RST_30
    rlca
    rrca
    rrca
    sub a
    ret nz

    ret nz

Call_02b_5022:
    dec bc
    ei
    sbc e
    jr nz, jr_02b_4ff7

    dec bc
    ld d, [hl]
    ld [hl], c
    dec hl
    jr c, jr_02b_5002

    rst RST_38
    inc e
    ld [$f50e], a
    rlca
    ld b, d
    cp e
    ld bc, $01ff
    cp $00
    dec de
    jr nz, @+$1d

    and b
    sbc e
    rst RST_38
    ld h, b
    db $db
    jr nz, @+$7d

    nop
    cp c
    add b
    ld e, h
    rlca
    jp nz, $e1ae

    inc h
    rlca
    nop
    inc bc
    inc [hl]
    add hl, bc
    jr @+$03

    ld [$e203], sp
    jr nz, jr_02b_505a

    ld l, e

jr_02b_505a:
    ld bc, $1802
    dec b
    inc [hl]
    dec b
    rra
    nop
    ldh a, [rIE]
    nop
    rrca
    nop
    db $fc
    nop
    ld a, [de]
    dec b
    add hl, de
    push af
    call nz, Call_000_0160
    add hl, de
    ld [hl], c
    nop
    add hl, bc
    inc bc
    add hl, bc
    db $e3
    ld a, $76
    ld b, $cf
    nop
    cp a
    nop
    ld a, a
    xor a
    nop
    ld h, a

jr_02b_5082:
    inc d
    cp $80
    dec b
    ld a, [de]
    ldh a, [$ff36]
    ldh [$ff66], a
    ret nz

    add $ff
    add b
    add h
    ld a, [bc]
    add hl, bc
    inc d
    sub e
    jr z, @-$5e

    rst RST_28
    db $10
    adc b
    daa
    sbc a
    ld h, d
    db $10
    ccf
    add b
    call nz, Call_000_32ff
    db $f4
    ld [bc], a
    db $f4
    ld [bc], a
    nop
    nop
    ld a, h
    rst RST_38
    sbc a
    and b
    ld e, a
    ret nz

    ccf
    add b
    ld a, a
    dec b
    db $fd
    ld a, [$1367]
    cp $00
    ret nz

    inc a
    ld bc, $ff00
    ld a, [$df01]
    rra
    sbc a
    rra
    cp a
    ccf
    rst RST_38
    ld a, a
    ld a, a
    cp $ff
    cp $ff
    db $fc
    rst RST_38
    ei
    ld hl, sp-$01
    ret nz

    rlca
    sub e
    ret nz

    sbc c
    call nz, Call_02b_59ac
    ldh [c], a
    ret nc

    dec c
    ld h, a
    ld de, $07f8
    or d
    nop
    ld bc, $1167
    rst RST_38
    dec b
    ld a, [$7057]
    xor e
    jr c, jr_02b_5082

    ld e, h
    ld a, a
    ld a, [bc]
    ld c, $05
    rst RST_30
    ldh [c], a
    dec de
    db $fd
    db $ed
    nop
    cp $b0
    ld bc, $007f
    cp a
    add b
    rst RST_18
    ret nz

    rst RST_08
    rst RST_18
    ret nz

    rst RST_28
    ldh [$fff0], a
    ldh a, [$ffb0]
    ld bc, $27d8
    cp $67
    inc de
    and $19
    nop
    nop
    sub d
    sbc [hl]
    jp c, $debf

    ld e, d
    ld e, [hl]
    ld d, d
    ld e, [hl]
    ld d, [hl]
    daa
    jr nz, jr_02b_5172

    di
    ld e, [hl]
    ld e, d
    daa
    ld h, $24
    dec h
    ld c, [hl]
    ld b, b
    ld e, b
    ld b, b
    rst RST_38
    ld b, [hl]
    ld b, b
    ld e, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld e, b
    ld sp, hl
    ld e, d
    ld b, l
    jr nz, @-$4e

    ld bc, $00ff
    add c
    nop
    add d
    sub a

jr_02b_5140:
    dec a
    sbc h
    ld hl, $215a
    cp $51
    inc l
    ld e, d
    ld hl, $e7a0
    ld bc, $3fc0
    ld d, b

jr_02b_5150:
    ld [hl+], a
    ld h, a
    ld de, $0500
    nop
    rst RST_38
    ld a, [bc]
    dec b
    ld c, $07
    ld e, $01
    dec d
    dec bc
    rst RST_38
    inc h
    dec de
    daa
    ld [$01ae], sp
    ld a, b
    xor a
    rst RST_38
    inc de
    db $fc
    ld a, a
    add b
    sub b
    rst RST_28
    or a
    rst RST_08
    rst RST_38

jr_02b_5172:
    ld [hl], $df
    jp hl


    ld d, $a8
    nop
    ld d, d
    xor b

jr_02b_517a:
    rst RST_38
    push af
    ld a, d
    sbc e
    ld a, a
    ld bc, $6afc
    add b
    rst RST_28
    rla
    add sp, $3b
    push bc
    or c
    nop
    nop
    ret nz

    nop
    rst RST_38
    jr nz, jr_02b_5150

    ld [hl], b
    nop
    ldh a, [$ff60]
    cp b
    ld h, b
    rst RST_38
    ldh [$ff80], a
    add b
    nop
    ld [hl], b
    nop
    add hl, sp
    ld b, h
    rst RST_38
    adc d
    db $10
    add d
    inc h
    sbc e
    jr nz, jr_02b_5140

    ld [hl+], a
    rst RST_38
    sbc b
    inc hl
    ld c, $01
    ld [$0304], sp
    nop
    rst RST_38
    add e
    db $10
    push bc
    ld [de], a
    add hl, bc
    ld [hl+], a
    xor c
    ld b, d
    db $fd
    reti


    sub l
    stop
    inc bc
    nop
    ld bc, $0000
    rst RST_38
    ld b, b
    ld b, b
    jr nc, @+$72

    ld [$0078], sp
    ld h, b
    rst RST_38
    nop
    nop
    ld c, b
    rst RST_08
    ld b, h
    rst RST_00
    add d
    add e
    rst RST_30
    ld [bc], a
    inc bc
    ld bc, $20fa
    nop
    nop
    ei
    ld hl, sp-$01
    ld sp, hl
    ld hl, sp-$03
    db $fc
    cp $fe
    ld a, a
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    ccf
    rst RST_38
    rra
    rst RST_38
    ldh a, [rIF]
    cp $e8
    inc de
    ld a, a
    nop
    rlca
    jr c, jr_02b_517a

    nop
    ld e, a
    pop af
    add b
    inc h
    add hl, hl
    inc h
    ld hl, $2934
    ld d, d
    ld e, [hl]
    ld d, b
    ld d, b
    db $fc
    ld c, h
    ld hl, $214c
    ld d, d
    ld b, b
    ld b, h
    ld c, b
    ld c, d
    ld d, d
    rst RST_30
    ld d, h
    ld b, [hl]
    ld a, a
    ld d, c
    ld [hl+], a
    inc bc
    nop
    dec b
    ld a, d
    jp $4239


    ld e, d
    ld sp, $2350
    ld d, [hl]
    scf
    ld e, d
    ld sp, $0241
    ei
    add c
    ld a, [hl]
    ld a, b
    dec h
    ld d, $09
    rla
    dec bc
    ld sp, $1fff
    inc d
    dec bc
    xor $e1
    inc bc
    nop
    ld b, c
    rst RST_38
    db $fc
    ld bc, $3c00
    jp $f48b


    dec de
    rst RST_38
    db $e4
    ld l, l
    add b
    call nc, $af07
    nop
    halt
    rst RST_38
    nop
    inc h
    ld de, $edd6
    cp a
    ld b, [hl]
    ld b, $ff
    ld a, b
    rst RST_38
    nop
    reti


    ld [bc], a
    ld d, a
    jr nz, jr_02b_527b

    rst RST_38
    nop
    inc de
    add h

jr_02b_5265:
    sub b
    ldh [$ffa8], a
    ld d, b
    ldh a, [$ff5f]
    nop
    ld b, b
    nop
    sbc a
    ccf
    ld d, c
    ld [hl+], a
    nop
    ld [hl], b
    inc h
    rst RST_38
    dec a
    ld a, [$0001]
    inc bc

jr_02b_527b:
    pop hl
    ldh [c], a
    add hl, de
    rst RST_38
    jp c, Jump_000_02d9

    reti


    ld [bc], a
    pop bc
    ld [bc], a
    pop bc
    rst RST_38
    ld e, $df
    nop
    and b
    nop
    and a
    rlca
    xor b
    rst RST_38
    dec bc
    nop
    nop
    ld [$088e], sp
    adc h
    nop
    rst RST_30
    add b
    add b
    add b
    ld a, [$0023]
    nop
    jr nz, jr_02b_52e1

    rst RST_38
    jr nz, @+$40

    ld b, b
    ld a, b
    add b
    ldh [$ff80], a
    ret nz

    rst RST_38
    ld [bc], a
    ld [bc], a
    nop
    ld b, $4a
    ld c, [hl]
    ld d, h
    ld e, l
    rst RST_38
    ld c, b
    ld e, b
    ld d, a
    ld d, b
    ld b, b
    ld c, a
    ld b, b
    ld b, b
    db $db
    dec b
    ld a, [hl-]
    ld d, b
    ld sp, $f20d
    xor [hl]
    ld bc, $40bf
    ldh [c], a
    xor [hl]
    ld bc, $bae0
    inc sp
    ld h, [hl]
    ld [de], a
    xor [hl]
    inc bc
    nop
    jr nz, jr_02b_5265

    rst RST_38
    ccf
    rrca
    ccf
    rst RST_00
    rra
    ldh [rIF], a
    nop
    ei
    inc bc

jr_02b_52e1:
    ld hl, sp-$50
    ld hl, $f004
    db $fc
    ldh a, [$fffc]
    ld a, a
    pop hl
    ld hl, sp+$03
    ldh a, [rP1]
    ret nz

    rra
    or b
    ld hl, $21f8
    ld c, l
    inc de
    jr nz, jr_02b_531d

    ld b, a
    rlca
    nop
    ld d, d
    ld [hl], d
    ld a, [hl+]

Call_02b_52ff:
    rst RST_38
    cp d
    ld [de], a
    ld a, [de]
    jp z, Jump_000_022a

    ldh a, [c]
    ld [bc], a
    cp a
    ld [bc], a
    ret nc

    inc l
    cp $00
    rlca
    inc a
    ld b, b
    and b
    cp c
    ld e, a
    ld h, a
    ld de, $4118
    ret nz

    ld a, $f3
    ld l, l
    ld b, b

jr_02b_531d:
    rst RST_28
    rst RST_38
    nop
    rst RST_18
    nop
    sbc [hl]
    ld bc, $2b3e
    ld a, h
    rst RST_38
    inc bc
    ld hl, sp-$51
    jp $873c


    ld a, b
    adc a
    rst RST_38
    ld [hl], b
    rrca
    ldh a, [rNR34]
    pop hl
    ccf
    ld [$df3f], a
    ret nz

    ld a, [hl]
    db $eb
    ei
    inc b
    ld d, $30
    add b
    rst RST_30
    rst RST_38
    ld [$01fe], sp
    ei
    xor [hl]
    rst RST_18
    jr nz, @+$01

    ld a, a
    xor d
    rst RST_30
    ld [$00ff], sp
    rst RST_28
    db $10
    ld h, a
    ld [de], a
    dec [hl]
    xor d
    or b
    ld b, b
    xor d
    ld h, a
    ld de, $02fd
    cp h
    ld b, b
    ret


    ld b, b
    or $c8
    ld b, c
    cp a
    ld b, b
    ret nz

    ld b, c
    db $fd
    ld [bc], a
    rst RST_38
    nop
    db $fd
    rst RST_18
    rst RST_08
    ld b, b
    db $fd
    xor d
    jp $e13c


    ld e, $ff
    pop af
    ld c, $f0
    rrca
    ret c

    daa
    db $fc
    xor e
    rst RST_38
    db $fc
    inc bc
    cp $ab
    ld a, a
    add b
    nop
    nop
    or e
    ld e, [hl]
    and c
    and [hl]
    ld de, $007e
    db $fc
    ei
    ld h, b
    db $10
    ld e, $ff
    ld bc, $03bc
    ld a, b
    rlca
    ld a, b
    rlca
    pop af
    sbc a
    ld c, $e1
    ld e, $e3
    inc e
    or b
    nop
    ld h, a
    db $10
    ld a, a
    sbc a
    add b
    rst RST_38
    nop
    db $db
    inc h
    ld h, a
    inc de
    ld h, [hl]
    ld de, $61ff
    nop
    ret nz

    ld b, c
    ld h, $51
    jr nc, jr_02b_5412

    ld h, a
    ld de, $8877
    ld l, $55
    rst RST_38
    cp $01
    ld a, a
    add b
    db $eb
    inc d
    ld a, a
    add b
    rst RST_38
    cp $01
    di
    nop
    ld a, b
    add b
    dec a
    ret nz

    rst RST_38
    ld e, $e0
    ld e, $e0
    adc a
    ld [hl], b
    add a
    ld a, b

jr_02b_53de:
    sub a
    rst RST_00
    jr c, jr_02b_53de

    ld a, l
    nop
    cp a
    ld c, a
    jr nz, jr_02b_5438

    ld sp, $ff87
    jr c, @-$2f

    db $10
    db $fc
    nop
    ld sp, hl
    nop
    ei
    rst RST_38
    inc bc
    rlca
    rlca
    rst RST_20
    rlca
    rst RST_08
    rrca
    rst RST_18
    cp $b3
    db $10
    ld hl, sp+$57
    ldh a, [$ffaf]
    pop hl
    rst RST_18
    pop hl
    rst RST_38
    rst RST_38
    jp $877f


    rst RST_38
    add a
    rst RST_38
    rrca
    rst RST_30
    rst RST_38
    ld a, a

jr_02b_5412:
    push de
    ld [$dd40], a
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    ld [hl], a
    cp a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_30
    rst RST_38
    db $fd
    dec [hl]
    ld d, a
    jp z, $dd40

    xor d
    ld d, b
    ld [hl], a
    ld a, a
    xor l
    ld d, b
    xor e
    ld d, b
    cp a
    ld d, l
    rst RST_38
    xor d
    cp $dd
    rst RST_18
    and a
    ld d, b

jr_02b_5438:
    ld a, l
    xor $ab
    ld d, b
    rst RST_28
    rst RST_38
    rst RST_28
    pop bc
    ld d, b
    rst RST_38
    db $dd
    rst RST_38
    and a
    rst RST_38
    ei
    ld [hl], a
    cp l
    ld d, c
    cp [hl]
    ld d, c
    ld a, a
    db $d3
    ld d, d
    rst RST_38
    ei
    ld [hl], a
    ld a, e
    jp c, $fe52

    ld d, l
    ld a, a
    xor e
    rst RST_38
    cp c
    rst RST_38
    add $51
    xor h
    ld d, c
    rst RST_38
    rst RST_38
    rst RST_08
    dec e
    ld b, b
    rst RST_30
    rst RST_38
    nop
    ei
    nop
    ld a, c
    add b
    ld a, h
    xor b
    ld a, $6f

jr_02b_5470:
    ret nz

    rra
    ld [$4ce0], a
    ld b, b
    ld c, a
    or b
    inc l
    ld d, h
    ld a, a
    nop
    inc bc
    ld a, h
    ld a, $3f
    ld a, [hl]
    ld a, a
    cp h
    ld de, $f87f
    rst RST_38
    ldh a, [rIE]
    ldh [rIE], a
    pop hl
    sbc l
    ld d, b
    dec l
    rra
    dec bc
    jr nc, jr_02b_54d2

    rst RST_38
    ld [$ff53], a
    add hl, bc
    jr nc, jr_02b_5470

    ld d, b
    ld [$52da], sp
    xor d
    ld d, c
    cp l
    ld d, c
    rst RST_18
    scf
    ld h, h
    and [hl]
    ld d, b
    ccf
    ld h, d
    ld c, b
    ld h, e
    add b
    ld e, d
    ld h, c
    ld b, d
    ld h, c
    reti


    ld d, l
    ld b, h
    ld h, e
    ld c, [hl]
    ld h, e
    ld l, b
    ld h, e
    ld c, b
    ld h, c
    cp $50
    jp c, Jump_02b_5a54

    ld h, c
    add $50
    xor e
    ld d, b
    ldh a, [$ffbd]
    db $10
    cp h
    cp e
    db $10
    cp h
    adc [hl]
    ld h, c
    ld b, b
    ld h, c
    ld a, h
    db $fc
    ld a, [hl]

jr_02b_54d2:
    cp $0c

jr_02b_54d4:
    ld sp, $0a1f
    sbc l
    ld d, b
    rlca
    sbc e
    ld d, b
    ccf
    ccf
    ld h, d
    add h
    ld h, l
    ld a, c
    ld h, l
    ld b, h
    ld h, e
    add hl, bc
    ld a, a
    ld e, c
    ld h, b

jr_02b_54e9:
    ld b, h
    ld h, e
    ei
    ld c, c
    ld h, b
    cp h
    ld d, d
    ld c, l
    ld h, h
    ld [hl], d
    ld h, a
    rst RST_28
    rra
    push af
    rrca
    ei
    sbc d
    ld d, c
    jp $e17f


    cp [hl]
    dec l
    ld h, b
    ldh a, [rIE]
    ccf
    nop
    sbc a
    rlca
    jr nz, jr_02b_54e9

    cp a
    ldh [$ffe7], a
    ld h, b
    di
    ldh a, [$fffb]
    inc bc
    jr nc, jr_02b_54d4

    dec hl
    rst RST_38
    add e
    sbc e
    ld d, b
    rlca
    sbc l
    ld d, b
    dec e
    ld sp, $8e62
    ld h, e
    add hl, hl
    rst RST_28
    ld sp, $7876
    ld h, l
    xor a
    ld e, c
    ld h, d
    cp a
    di
    ld h, [hl]
    cp h
    ld d, c
    ld b, b
    xor d
    ld d, c
    ld c, d
    ld h, l
    cp h
    ld d, c
    ld b, b
    ld h, a
    ld c, b
    ld h, e
    ld b, h
    ld h, c
    cp a
    ld h, a
    ld h, h
    ret nz

    db $f4
    ld h, l
    ld a, [$5a53]
    ld h, c
    inc a
    ld [hl], l
    ld [$4267], a
    ld h, c
    add e
    rst RST_38
    ld [hl], l
    pop bc
    dec l
    ld h, b
    ldh [$ff9f], a
    ld h, d
    ld hl, sp-$01
    call c, Call_02b_7235
    nop
    ld e, [hl]
    ld h, e
    call nz, $8269
    ld h, a
    adc [hl]
    ld h, c
    add d
    ld h, e
    ld [hl], $73
    ld [hl], d
    ld l, c
    xor d
    ld d, c
    dec e
    add b
    dec hl
    rst RST_08
    rst RST_38
    rst RST_38
    rst RST_28
    rst RST_38
    inc bc
    inc bc
    ld [bc], a
    inc bc
    db $fc
    rst RST_38
    ld d, l
    cp $03
    inc b
    ld a, a
    inc bc
    inc b
    ei
    inc bc
    nop
    nop
    dec h
    inc b
    ld [$052d], sp
    ld h, $0f
    jr c, @+$09

    rst RST_30
    inc sp
    rrca
    ld d, l
    ld a, [bc]
    ld [bc], a
    ld bc, $0956
    pop bc
    db $fd
    ld d, e
    rrca
    add l
    ld [$031a], sp
    add [hl]
    rrca
    xor b
    dec b
    rst RST_30
    rlca
    rst RST_38
    rst RST_20
    rlca
    rst RST_28
    rrca
    rst RST_18
    rra
    cp a
    ccf
    rst RST_30
    ccf
    ccf
    ld a, a
    ld a, [de]
    nop
    ld hl, sp-$01
    ldh a, [rIE]
    ld e, l
    ldh [$ffd3], a
    nop
    pop bc
    rst RST_38
    add e
    reti


    nop
    rlca
    ld de, $d500
    cp $0f
    nop
    ld hl, sp-$31
    inc b
    rst RST_38
    db $dd
    nop
    rrca
    rst RST_38
    db $dd
    rra
    and l
    ld [$ff40], sp
    ld e, b
    ld bc, $4010
    rst RST_38
    cp l
    ld b, e
    rlca
    db $10
    ld b, b
    db $fc
    ld e, c
    db $fd
    nop
    add hl, de
    nop
    db $fc
    xor h
    nop
    db $10
    ld a, [de]
    ccf
    sbc b
    cp a
    ld e, c
    db $fd
    ld b, c
    ld a, [$1431]
    ld e, c
    add hl, sp
    db $10
    ld b, c
    db $fd
    sbc b
    cp a
    add b
    cp e
    cp a
    add e
    ld b, e
    db $10
    add b
    cp a
    sbc b
    ld c, c
    db $10
    add b
    ld a, l
    cp a
    jr c, @+$17

    ld b, c
    db $fd
    ld b, b
    db $fc
    ld b, b
    dec de
    db $10
    sbc $48
    dec d
    add e
    cp a
    inc bc
    ccf
    ld e, h
    ld de, $0f01
    rst RST_38
    ld [hl], b
    ld bc, $007e
    ld a, a
    nop
    ld e, a
    jr nz, jr_02b_56a4

    ld b, a
    jr nz, jr_02b_5681

    jr nz, jr_02b_566f

    jr nz, jr_02b_5681

    ld a, a
    rra
    cp $85
    ld [de], a
    ld b, l
    jr nc, @+$5f

jr_02b_5634:
    jr nz, jr_02b_5687

    inc l
    ld c, a
    rst RST_38
    jr nc, jr_02b_56ba

    nop
    ld c, a
    nop
    scf
    jr nc, jr_02b_5658

    rst RST_18
    jr nc, jr_02b_568d

    nop
    ld h, l
    nop
    ld a, [hl]
    add hl, de
    ld c, l
    jr nc, @+$01

    ld e, e
    inc h
    ld d, a
    jr z, jr_02b_569f

    jr nc, jr_02b_56af

    jr nz, jr_02b_5634

    ld a, b
    nop
    ld [hl], b

jr_02b_5658:
    inc bc
    ld h, a
    and c
    stop
    nop
    rst RST_38
    ld a, $01
    ccf
    ld b, b
    add b
    ldh a, [$ff0e]
    add b
    rst RST_38
    ld a, [hl]
    nop
    cp $00
    ld a, [$e204]

jr_02b_566f:
    inc b
    sbc a
    sbc d
    inc b
    and d
    inc b
    xor d
    rst RST_18
    rra
    push hl
    ld [de], a
    and d
    rst RST_38
    inc c
    cp d
    inc b
    adc d
    inc [hl]

jr_02b_5681:
    ldh a, [c]
    inc c
    ld a, $df
    nop
    sbc [hl]

jr_02b_5687:
    ret nz

    ld e, $c0
    nop
    jr nz, jr_02b_568d

jr_02b_568d:
    and [hl]
    db $fd
    nop
    sbc $19
    or d
    inc c
    jp c, $ea24

    inc d
    rst RST_38
    ld [hl], d
    inc c
    ld a, [hl-]
    inc b
    ld e, $00

jr_02b_569f:
    adc $00
    ld a, a
    add $20

jr_02b_56a4:
    ld [bc], a
    ldh a, [rP1]
    nop
    db $fc
    push de
    db $10
    rrca

jr_02b_56ac:
    ld bc, $000f

jr_02b_56af:
    ld bc, $10c9
    ld l, [hl]
    db $10
    jr c, jr_02b_56e5

    ld c, d
    dec l
    rst RST_18
    inc e

jr_02b_56ba:
    ld bc, $003c
    ld a, [hl]
    inc sp
    jr nz, jr_02b_5739

    rlca
    ld e, c
    ld a, a
    ld [hl], l
    db $10
    jp z, Jump_000_0015

    add b
    inc [hl]
    ld [hl+], a
    add b
    ld a, b
    cpl
    and $8a
    dec l
    jr c, @-$7e

    ld e, [hl]
    jr nz, jr_02b_574a

    jr nz, jr_02b_56f7

    ldh [$fffe], a
    ld a, [hl]
    push de
    stop
    nop
    ld a, h
    add b
    db $fc
    ld [bc], a
    dec e

jr_02b_56e5:
    nop
    add b
    dec sp
    nop
    rst RST_38
    nop
    rrca
    ld d, l
    rst RST_38
    xor d
    inc de
    ld c, $27
    rrca
    cp $2e
    inc bc
    or c

jr_02b_56f7:
    cp [hl]
    cpl
    or b
    jr z, jr_02b_56ac

    ld d, b
    rst RST_38
    ld h, b
    add hl, hl
    ld b, c
    jr nc, jr_02b_5744

    ld a, [hl+]
    ld b, b
    inc e
    rst RST_38
    ld h, e
    rst RST_38
    nop
    inc d
    nop
    jr z, jr_02b_570e

jr_02b_570e:
    db $10
    rst RST_38
    nop
    ld bc, $2481
    add c
    ld h, [hl]
    nop
    inc h
    rst RST_38
    jp Jump_02b_7f40


    ld h, [hl]
    ld a, c
    ld e, b
    ld h, b
    ld de, $41ff
    jr nz, jr_02b_5766

    ld d, d
    inc b
    jr z, jr_02b_5730

    ld e, h
    rst RST_38
    inc bc
    ld b, b
    and a
    jr nz, jr_02b_5734

jr_02b_5730:
    ld bc, $4300
    rst RST_38

jr_02b_5734:
    add c
    ld bc, $1881
    ld h, [hl]

jr_02b_5739:
    inc h
    jp $ff42


    add c
    nop
    nop
    ld l, a
    add b
    ld l, a
    add b

jr_02b_5744:
    xor a
    set 0, e
    xor [hl]
    add a
    inc b

jr_02b_574a:
    nop
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    rst RST_00
    ld a, a
    nop
    ld b, b
    sub b
    ld a, [bc]
    sbc c
    ld bc, $0891
    ld bc, $33ff
    ld bc, $8803
    dec b
    adc b
    dec b
    rra
    ld b, b

jr_02b_5766:
    ret nc

    dec bc
    ld bc, $fb0d
    db $fd
    rlca
    ldh a, [$ff0b]
    nop
    nop
    push af
    ld a, [bc]
    push af
    rst RST_28
    ld a, [bc]
    ei
    adc [hl]
    dec sp
    rlca
    inc d
    nop
    nop
    xor a
    ld c, $11
    db $10
    adc a
    inc hl
    adc [hl]
    rla
    inc d
    ld [$0815], sp
    dec d
    jr jr_02b_57a1

    db $fc
    jr jr_02b_57a4

    ld l, $01
    ld a, a
    ld a, a
    ccf
    ccf
    ld e, a
    sbc a
    rst RST_38
    daa
    rst RST_00
    sub e
    ld h, e
    ret


    ld sp, $60d8
    ld h, e

jr_02b_57a1:
    ret c

    ld h, c
    ld d, b

jr_02b_57a4:
    ld [de], a
    ld d, a
    ld de, $1051
    dec h
    cp b
    ld h, b
    db $10
    ld a, c
    jr c, @+$62

    ld [de], a
    ld h, e
    ld [de], a
    nop
    nop
    db $fd
    inc bc
    ld [hl], d
    add hl, de
    rst RST_28
    nop
    nop
    cp $ff
    add d
    add hl, de
    nop
    nop
    rst RST_20
    jp hl


    rra
    sub d
    add hl, de
    sbc e
    nop
    add b
    and d
    add hl, de
    nop
    nop
    db $e3
    jp hl


    rra
    or d
    add hl, de
    db $10
    db $10
    rst RST_18
    jp nz, Jump_000_0019

    nop
    ld sp, hl
    cp l
    cp $d2
    add hl, de
    nop
    nop
    ei
    rlca
    ldh [c], a
    add hl, de
    nop
    rst RST_30
    nop
    rst RST_30
    ld hl, sp-$0e
    add hl, de
    nop
    nop
    or $08
    cp a
    or $08
    ld a, [$3acc]
    adc h
    ld [$0023], sp
    ld a, a
    nop
    cp c
    ld b, c
    cp c
    ld b, c
    reti


    ld h, c
    ld d, $25
    sub h
    ld [$0825], sp
    dec h
    reti


    ld d, e
    ld de, $1660
    ld hl, $1358
    ld [$7eff], sp
    inc b
    ccf
    ld [bc], a
    rra
    ld bc, $00cf
    ld a, a
    rst RST_20
    nop
    di
    nop
    ld bc, $fc00
    ld [bc], a
    ld [bc], a
    adc b
    sub b
    inc b
    xor d
    ld bc, $072e
    ld a, a
    ld l, d
    ld [hl+], a
    ld [hl], d
    rla
    sub [hl]
    ld bc, $00ff
    add c
    jr @+$7c

    inc hl
    sub d
    rla
    ld a, d
    inc hl
    and d
    rla
    ld a, d
    inc hl
    or d
    rla
    ld a, d
    inc hl
    nop
    jp nz, Jump_02b_7a17

    inc hl
    jp nc, Jump_02b_7a17

    inc hl
    ldh [c], a
    rla
    ld a, d
    inc hl
    ldh a, [c]
    rla
    ld a, d
    inc hl
    rst RST_38
    ld a, [hl]
    ld a, [hl]
    cp [hl]
    ld a, $ce
    ld c, $c6
    ld [hl], $1f
    jp nz, $c03a

    inc a
    jp $300b


    ld l, $09
    ld b, h
    db $10
    rst RST_20
    cp a
    inc a
    rst RST_38
    jr nz, @+$37

    ld a, d
    inc hl
    rrca
    rst RST_08
    rlca
    ld a, a
    rst RST_30
    dec bc
    di
    dec c
    pop af
    ld c, $f0
    sub l
    ld bc, $80e0
    db $10
    ld b, b
    inc [hl]
    ld l, $05
    sub l
    dec b
    ld e, l
    dec h
    nop
    cp $01
    rst RST_38
    ld sp, hl
    inc bc
    di
    rrca
    rst RST_08
    inc a
    ccf
    ld [hl], b
    rra
    ld a, a
    ldh [rIE], a
    add b
    cp $02
    inc c
    add b
    db $10
    add b
    ld [hl], $38
    ld bc, $8103
    scf
    add c
    ld [hl], $54
    cp $aa
    and e
    ld a, $b7
    ccf
    ld hl, sp+$40
    inc sp
    ld [bc], a
    ld [$3a9f], sp
    call nc, $eafe
    cp $fc
    cp $be
    ld [hl], $fc
    db $fc
    db $fc
    db $fd
    db $fd
    db $fc
    db $fd
    ret nz

    db $ec
    jr nc, jr_02b_5915

    scf
    sbc e
    ld bc, $3658
    dec sp
    ld [hl-], a
    sbc c
    ld bc, $000f
    ei
    rrca
    ld b, b
    ld [hl+], a
    ld b, c
    rra
    ld d, b
    rra
    ld e, b
    rra
    rst RST_38
    ld e, h
    rra
    ld e, [hl]
    rst RST_38
    inc e
    rst RST_38
    ld c, $ff
    rst RST_18
    rlca
    rst RST_38
    inc bc
    rst RST_38
    ld bc, $0301
    rst RST_00
    nop
    cp e
    rst RST_00
    db $10
    ld b, d
    ld b, b
    sub b
    rst RST_00
    ret nc

    ld c, b
    ld b, b
    ld d, b
    rst RST_38
    rst RST_00
    db $10
    rst RST_30
    ldh a, [$fff7]
    ld [hl], b
    rst RST_30
    inc [hl]
    rst RST_28
    rst RST_30
    ld d, $f7
    rlca
    ld e, b
    ld b, b
    inc bc
    rst RST_30
    ld bc, $e3ef
    nop
    db $e3

jr_02b_5915:
    ld [$4462], sp
    adc b
    db $e3
    ret z

    rst RST_38
    db $e3
    add sp, -$01
    db $fc
    rst RST_38
    ld a, [hl]
    rst RST_38
    ccf
    rst RST_28
    rst RST_38
    rra
    rst RST_38
    rrca
    inc [hl]
    ld b, e
    ldh a, [rP1]
    ldh a, [$fffd]
    ld [bc], a
    add d
    ld b, b
    add d
    ldh a, [$ffc2]
    ldh a, [$ffe2]
    ldh a, [rIE]
    ldh a, [c]
    ld hl, sp-$06
    rra
    ld e, a
    rrca
    ld c, a
    rrca
    ld a, a
    ld b, a
    rrca
    ld b, e
    rrca
    ld b, c
    rrca
    ld b, b
    sbc [hl]
    nop
    db $fd
    ld e, a
    ld bc, $8000
    rst RST_38
    ret nz

    rst RST_38
    ldh [rIE], a
    dec de
    ldh a, [rIE]
    rst RST_38
    stop
    rst RST_38
    ld b, d
    ld b, d
    or c
    ld b, h
    ld d, l
    nop
    ld a, a
    rst RST_38
    rst RST_30
    inc d
    rst RST_38
    ld [hl], $ff
    ld [hl+], a
    jp nz, $fd40

    inc e
    xor l
    inc bc
    db $e3
    add sp, -$1d
    ld l, b
    db $e3
    ld a, [hl+]
    rst RST_38
    db $e3
    dec bc
    db $e3
    add hl, bc
    db $e3
    ld [$0800], sp
    ldh a, [$ff95]
    inc bc
    ld bc, $a302
    ld b, b
    xor d
    ld bc, $faf8
    ld hl, sp+$7a
    rst RST_38
    ld hl, sp+$3a
    ld hl, sp+$1a
    ld hl, sp+$0a
    ldh a, [rSC]
    sbc a
    nop
    ld [bc], a
    nop
    ld a, [$2300]
    ld b, d
    ld [hl+], a
    ld b, e
    nop
    db $fd
    ld c, a
    inc c
    ld d, b
    nop
    rst RST_38
    jr nc, @+$01

    jr @+$01

    ld a, a
    inc c

Call_02b_59ac:
    rst RST_38
    ld b, $ff
    inc bc
    rrca
    pop af
    ld [bc], a
    nop
    ld [hl], a
    db $10
    rst RST_00
    ld de, $46b0
    sub b
    call nz, $90d3
    nop
    ld a, [hl]
    xor c
    ld b, b
    rst RST_38
    ld a, h
    rst RST_38
    ld a, $ff
    rra
    ld a, c
    ld b, c
    di
    nop
    ld [$40d6], sp
    ld b, e
    ld d, e
    add hl, bc
    pop hl
    adc d
    ret nz

    ld [hl], l
    db $eb
    sub b
    nop
    ld bc, $47a2
    ld a, [hl]
    db $fd
    nop
    add l
    ld b, e
    rst RST_30
    ld h, d
    ldh a, [$ff32]
    or $41
    nop
    ldh a, [c]
    ld c, e
    inc b
    rst RST_38
    ld b, l
    ld a, [bc]
    ld b, b
    rrca
    ld e, l
    ld [de], a
    ld e, [hl]
    add hl, de
    rst RST_38
    ld e, a
    inc e
    ld e, a
    ld e, $5f
    rra
    rst RST_38
    nop
    rst RST_38
    ld a, l
    add d
    cpl
    ret nc

    ld d, l
    xor d
    add sp, $17
    rst RST_30
    db $f4
    dec bc
    cp $39
    ld b, b
    ret nc

    ld b, a
    ret nc

    rlca
    rst RST_38
    sub d
    ld b, l
    push de
    ld [bc], a
    sub $01
    rla
    call nz, $17ff
    add $93
    ld b, a
    ei
    rlca
    rra
    pop hl
    rst RST_38
    rlca
    ld hl, sp+$40
    cp a
    xor b
    ld d, a
    push af
    ld a, [bc]
    ld a, a
    cp a
    ld b, b
    ld d, a
    xor b
    ld [$e8e1], a
    ret nc

    ld b, b

jr_02b_5a35:
    rst RST_38
    ld [$2b61], a
    ldh [$ff08], a
    db $e3
    add sp, $03
    rst RST_28
    adc e
    ld h, b
    cp [hl]
    ld a, a
    ld [hl], a
    ld b, c
    and a
    ld e, a
    rst RST_38
    rst RST_38
    inc bc
    ld bc, $3fff
    ret nz

    rst RST_38
    nop
    ld d, d
    ld a, a
    and b
    ld [bc], a

Jump_02b_5a54:
    ldh a, [$ffd2]
    and b
    ldh [c], a
    ret nc

    adc e
    ld b, b
    rst RST_38
    ldh a, [$fffa]
    ld hl, sp-$06
    ld a, b
    ld c, a
    rrca
    ld c, a
    sbc a
    rlca
    ld c, a
    inc bc
    ld c, a
    ld bc, $510d
    rrca
    ld d, b
    nop
    rst RST_28
    push de
    xor d
    jp nz, $a7fd

    ld b, c
    db $fc
    ei
    ld a, h
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, $00
    nop
    pop de
    rlca
    sub [hl]
    rst RST_30
    ld b, c
    ld d, a
    add b
    ld b, e
    ld b, c
    inc d
    ret nz

    ret nz

    inc bc
    ei
    inc bc
    inc e
    and e
    ld b, c
    db $fc
    ld h, e
    ld a, a
    or b
    jr jr_02b_5a35

    ld e, e
    inc hl
    nop
    ld l, e
    add b
    db $eb
    ld b, b
    ld d, b
    ld h, e
    ld b, c
    dec hl
    rst RST_38
    nop
    inc bc
    ret nz

    ret nz

    jr c, @+$01

    nop
    ld d, a
    rst RST_08
    xor b
    ld a, [hl+]
    push de
    ld bc, $306f
    sub a
    inc bc
    ld a, [$ef38]
    ld a, [$ba18]
    ld c, b
    ret nc

    ld d, c
    ldh a, [c]
    nop
    ldh a, [c]
    ld e, $0d
    ld c, h
    rra
    ccf
    rra
    ccf
    nop
    ld c, c
    ld b, a
    ld [hl], $05
    ld b, h
    rst RST_08
    or c
    rst RST_08
    ld a, [de]
    rst RST_20
    db $10
    ld c, d
    ld l, l
    ld l, h
    ld e, b
    rst RST_20
    dec de
    adc l
    di
    add b
    ld l, e
    ld a, a
    rst RST_38
    ld e, h
    ld h, c
    or b
    ld l, c
    adc b
    ld hl, $c0e0
    ld l, c
    ld a, h
    ld h, c
    ret nc

    ld l, c
    ld l, $0d
    or b
    ld h, e
    dec d
    ccf
    ld a, [bc]
    cp a
    ccf
    nop
    ccf
    ld a, [hl+]

Jump_02b_5af8:
    dec d
    ccf
    ld l, e
    ld h, d
    cp $3e
    inc de
    ld [bc], a
    nop
    rst RST_38
    xor d
    ld d, l
    rst RST_38
    ld a, e
    ld h, d
    ld a, h
    ld h, c
    ccf
    ld sp, $18cf
    rst RST_20
    or l
    ld c, d
    sub h
    ld bc, $012e
    ldh [rNR21], a
    ld bc, $0012
    ld [$9c70], sp
    ld h, c
    jr nc, jr_02b_5b92

    inc c

Call_02b_5b20:
    di
    ld e, d
    ld h, l

jr_02b_5b23:
    and l
    sub h
    ld bc, $2e7f
    nop
    ld b, $77
    ld hl, sp-$04
    ld d, b
    ld [hl], c
    rst RST_38
    ld d, b
    db $fc
    xor b
    db $fc
    nop
    db $fc
    xor b
    ld d, h
    ld e, a
    db $fc
    nop
    dec d
    ld a, [hl+]
    nop
    push af
    ld h, d
    dec d
    or c
    ld h, h
    cp e
    ld d, l
    xor d
    ld [de], a
    dec b
    cp $ff
    db $fd
    add e
    db $10
    ld e, d
    dec de
    and l
    jr nc, jr_02b_5b23

    ld l, d
    xor d
    ld d, l
    ld a, [bc]
    ld [hl], b
    inc de
    nop
    ld l, $05
    rlca
    xor l
    ld d, d
    jr jr_02b_5b91

    halt
    ld [hl-], a
    ld [hl], c
    ld [hl], b
    ld [hl], l
    ld b, d
    ld [hl], c
    ld b, d
    ld [hl], c
    ld h, a
    ld d, h
    xor b
    nop
    ld d, l
    ld [hl], d
    ld d, b
    ld [hl], e
    ld hl, sp-$04
    or b
    ld l, d
    ld bc, $7020
    db $10
    ld a, c
    ld [hl], h
    ld a, h
    ld [hl], c
    sbc c
    ld bc, $69d2
    ld d, h
    ld sp, $801d
    ld e, h
    db $fd
    rst RST_38
    nop
    add hl, bc
    nop
    nop
    nop
    adc l
    di
    ld e, b
    adc c

jr_02b_5b91:
    rst RST_20

jr_02b_5b92:
    db $10
    dec b
    inc c
    ld bc, $007f
    nop
    jr nz, jr_02b_5ba0

    inc c
    ld bc, $ff4f
    rrca

jr_02b_5ba0:
    ld c, a
    rlca
    ld c, a
    inc bc
    ld c, a
    ld bc, $fd4f
    nop
    jr c, jr_02b_5bac

    nop

jr_02b_5bac:
    nop
    push de
    xor d
    jp nz, $fffd

    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    ei
    ld a, h
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, $00
    nop
    pop de
    rlca
    sub [hl]
    ld b, c
    rst RST_38
    ld d, a
    add b
    db $10
    rst RST_00
    db $10
    rst RST_00
    inc d
    ret nz

    rst RST_38
    ret nz

    inc bc
    inc bc
    inc e
    add b
    rst RST_30
    ret nz

    rst RST_30
    ccf
    db $f4
    ld h, e
    ld [hl], a
    or b
    db $10
    rst RST_30
    dec c
    nop
    dec bc
    nop
    cp a
    ld l, e
    add b
    db $eb
    nop
    ld [$74e3], sp
    ld bc, $ff2b
    nop
    inc bc
    ret nz

    ret nz

    jr c, @+$01

    nop
    ld d, a
    sbc a
    xor b
    ld a, [hl+]
    push de
    ld bc, $6cfe
    ld bc, $010c
    ld a, [$38ff]
    ld a, [$ba18]
    ld c, b
    ld d, d
    and b
    ld [bc], a
    rst RST_28
    ldh a, [$fff2]
    nop
    ldh a, [c]
    dec c
    nop
    rrca
    nop
    rrca
    db $fd
    ld b, b
    and d
    ld [bc], a
    ld b, c
    rrca
    ld b, e
    rrca
    ld c, l
    rra
    rst RST_38
    ld e, l
    rst RST_38
    inc bc
    rst RST_38
    inc c
    rst RST_38
    ld b, $ff
    ld sp, hl
    ld bc, $018a
    adc d
    ld bc, $01c7
    rst RST_00
    ld de, $9fc7
    ld d, [hl]
    rst RST_00
    pop de
    rst RST_00
    ld d, b
    ld d, a
    nop
    ld d, [hl]
    nop
    rst RST_30
    rst RST_38
    db $10
    rst RST_30
    inc b
    rst RST_30
    add e
    rst RST_30
    add c
    rst RST_30
    rst RST_30
    ld bc, $00f7
    jp c, $e301

    ld b, b

jr_02b_5c4b:
    db $e3
    adc c
    ld [hl], d
    ldh [c], a
    nop
    ld a, [bc]
    and $00
    ld [hl], h
    ld bc, $ffc8
    add b
    or [hl]
    nop
    rst RST_30
    ld [bc], a
    rst RST_38
    inc b
    or b
    nop
    nop
    rst RST_38
    ld b, b
    rst RST_38
    rst RST_38
    ld b, b
    ld hl, sp-$68
    ld hl, sp+$0a
    ld hl, sp+$1a
    ld hl, sp-$21
    ld a, [$82f0]
    ldh a, [rSC]
    ld a, [bc]
    ld de, $5a1f
    db $eb
    rra
    ld d, d
    ld [de], a
    db $10
    ld d, h
    ld d, $10
    ld e, b
    nop
    ld b, b
    rst RST_38
    nop
    ld e, a
    rst RST_38
    db $10
    rst RST_38
    jr nc, @+$01

    jr z, jr_02b_5c4b

    rst RST_38
    ld c, c
    rst RST_38
    ld c, h
    rst RST_38
    sbc [hl]
    ld l, d
    ld bc, $f7c7
    inc d
    rst RST_00
    ld [de], a
    ld [hl-], a
    db $10
    pop de
    rst RST_00
    sub c
    rst RST_00
    rst RST_38
    sub e
    nop
    stop
    rst RST_38
    rst RST_30
    inc d
    rst RST_38
    rst RST_10
    ld [hl], $ff
    ld [hl+], a
    ld b, d
    db $10
    sbc h
    inc c
    ld bc, $ff00
    rst RST_38
    db $e3
    xor b
    db $e3
    adc b
    db $e3
    ld c, b
    db $e3
    ld c, c
    cp a
    db $e3
    ld l, c
    db $e3
    ld l, c

Call_02b_5cc1:
    nop
    ld [$006c], sp
    ld h, b
    rst RST_28
    rst RST_38
    ldh [rIE], a
    sub b
    ld c, b
    db $10
    ld [de], a
    rst RST_38
    scf
    ld hl, sp+$6a
    ld bc, $130a
    ld a, [bc]
    inc de
    nop
    ld [bc], a
    nop
    ld a, [$ff00]
    ld b, b
    rra
    ld e, h
    rra
    ld e, c
    rrca
    ld c, c
    rrca
    or a
    ld b, [hl]
    rrca
    ld b, d
    add hl, sp
    inc bc
    rst RST_38
    add c
    or b
    nop
    inc b
    cp a
    rst RST_38
    ld c, $ff
    ld bc, $f00f
    adc e
    nop
    db $10
    cp e
    rst RST_00
    sub h
    ld [hl-], a
    db $10
    ld d, c
    rst RST_00
    ret nc

    xor b
    db $10
    db $10
    ei
    call nz, Call_02b_6b13
    nop
    ld b, b
    rst RST_38
    ret nz

    rst RST_38
    pop bc
    cp a
    rst RST_38
    jp nz, Jump_02b_47ff

    inc bc
    db $fc
    or a
    nop
    ld [$e3ef], sp
    ld c, e
    db $e3
    adc d
    and $00
    add hl, hl
    db $e3
    ret z

    xor a
    pop hl
    adc d
    jr nz, @-$13

    or b
    ld [de], a
    ld b, c
    call nc, $a210
    rst RST_38
    rst RST_38
    ld h, a
    rst RST_38
    jr nz, jr_02b_5d72

    pop bc
    nop
    ld [bc], a
    ei
    ld hl, sp-$76
    ld [bc], a
    rla
    nop
    ldh a, [c]
    ld c, e
    inc b
    ld b, l
    cp a
    ld a, [bc]
    ld b, b
    rrca
    ld c, l
    ld [bc], a
    ld c, [hl]
    scf
    ld [bc], a
    ld b, e
    rst RST_38
    inc c
    rst RST_38
    nop
    ld a, l
    add d
    cpl
    ret nc

    ld d, l
    rst RST_38
    xor e
    db $eb
    rla
    db $f4
    dec bc
    cp $01
    rst RST_38
    rst RST_38
    ld b, b
    ret nc

    rlca
    ret nc

    ld b, a
    sub d
    push bc
    push de
    rst RST_38
    ld [bc], a
    sub $c1
    rla
    ret nz

    rla
    ret nz

    sub c
    rst RST_38
    ld b, a
    ei

jr_02b_5d72:
    rlca
    rra
    ldh [rTAC], a
    ld hl, sp+$40
    rst RST_38
    cp a
    xor b
    ld d, a
    push af
    ld a, [bc]
    cp a
    ret nz

    rst RST_10
    rst RST_38
    xor e
    db $eb
    db $e3
    add sp, $63
    add sp, $03
    ld [$01ff], a
    dec bc
    ldh [$ff0b], a
    db $e3
    add sp, $03
    adc e
    rst RST_38
    ld h, b
    or [hl]
    ld c, c
    ret nz

    rst RST_38
    ld [hl], c
    cp $f0
    rst RST_38
    ld a, a
    cp $c1
    add b
    rst RST_38
    ccf
    ret nz

    rst RST_38
    cp l
    nop
    sub [hl]
    ld bc, $a052
    ld [hl+], a
    ret nc

    ld [hl], c
    inc de
    ldh a, [c]
    rst RST_38
    nop
    ld b, c
    rrca
    ld c, [hl]
    rlca
    ld e, a
    jr jr_02b_5e18

    ld a, a
    db $10
    ld e, a
    ld de, $135f
    ld e, a
    rra
    ld a, $00

jr_02b_5dc3:
    rst RST_38
    ld [$fd42], a
    adc [hl]
    rst RST_38
    push bc
    cp a
    db $fc
    rst RST_38
    add a
    ld [bc], a
    rst RST_38
    rst RST_38
    inc bc
    nop
    nop
    jp nc, $07ff

    sub a
    ld b, l
    ld d, a
    add c
    db $d3
    rst RST_00
    ld d, a
    rst RST_38
    rst RST_00
    call nc, $c0c4
    jp Jump_000_1c03


    add e
    rst RST_38
    rst RST_38
    sub d
    rst RST_38
    db $fd
    inc de
    ld a, a
    xor c
    add hl, sp
    ld a, h
    inc c
    ld bc, $000b
    db $eb
    add b
    db $eb
    ld b, b
    jr z, jr_02b_5dc3

    db $10
    ei
    ld l, e
    ldh [c], a
    ld a, d
    inc b
    ld b, $57
    xor l
    ld l, $d5
    rst RST_38
    add a
    cp $82
    rst RST_38
    rst RST_38
    ld b, d
    rst RST_38
    jp nz, Jump_000_00fd

    sbc e
    nop
    ldh a, [c]
    add b

jr_02b_5e15:
    ldh a, [c]
    ret nz

    ld [hl], d

jr_02b_5e18:
    or b

jr_02b_5e19:
    ld e, $05
    db $10
    jr c, jr_02b_5e18

    ld a, b
    nop
    ld e, a
    cpl
    ld [hl], c
    cpl
    add e
    dec hl
    rst RST_38
    rst RST_30
    sub d
    rst RST_30
    push af
    inc de
    ld [hl], a
    and c
    ld sp, $69f0
    inc b
    and b
    cpl
    or d
    cpl
    call nz, Call_000_0029
    ld hl, sp+$00
    ld h, c
    rst RST_38
    add b
    rlca
    add b
    rrca
    add b
    rrca
    add e
    rrca
    ld a, a
    add a
    rrca
    adc h
    inc c
    inc bc
    and b
    rlca
    ld d, c
    jr nc, @-$3f

    rla
    or b
    rla
    or b
    rra
    cp b
    ld e, d
    jr nc, jr_02b_5e15

    rst RST_38
    rrca
    cp h
    rrca
    cp [hl]
    rlca
    or [hl]
    rlca
    or a
    ei
    rlca
    or e
    ld l, b
    jr nc, jr_02b_5e19

    rlca
    or c
    nop
    and b
    sbc a
    nop
    xor a
    nop
    and b
    rlca
    ld d, a
    jr nc, jr_02b_5ecd

    ld sp, $ff18
    cp a
    cp h
    rra
    cp a
    inc c
    cp a
    ld c, $b7
    rst RST_18

jr_02b_5e81:
    ld b, $b7
    rlca
    or a
    inc bc
    adc d
    jr nc, jr_02b_5e8a

    or h

jr_02b_5e8a:
    rst RST_38
    inc bc
    or d
    dec b
    or b
    rlca
    or b
    rlca
    or h
    rst RST_38
    inc bc
    or b
    rlca
    or a
    nop
    or b
    rlca
    inc bc
    rst RST_38
    and e
    inc e
    add b
    inc bc

jr_02b_5ea1:
    ldh [rP1], a
    inc a
    ret nz

    rst RST_38
    rst RST_00
    jr c, jr_02b_5ea1

    rlca
    rst RST_38
    nop
    ccf
    rst RST_00
    rst RST_20
    ret nz

    ld hl, sp-$08
    ld bc, $410a
    ld a, [hl-]

jr_02b_5eb6:
    adc e
    rrca
    and a
    inc sp
    rrca
    xor e
    rst RST_08
    ccf
    reti


    ld [hl], $a0
    nop
    ld d, b
    inc sp

jr_02b_5ec4:
    ld d, d
    jr nc, jr_02b_5ec4

    or d
    ld h, h
    jr nc, jr_02b_5e81

    rrca
    cp [hl]

jr_02b_5ecd:
    rrca
    cp d
    rrca
    ld d, a
    cp d
    rla
    or c
    inc b
    ld b, d
    or e
    ld a, [bc]
    ld b, b
    or a
    ld [hl], b
    inc [hl]
    ld sp, hl
    or d
    ld hl, sp+$30
    ld l, l
    ld sp, $b4b7
    inc bc
    or a
    nop
    rst RST_28
    or e
    inc b
    or l
    ld [bc], a
    ld sp, hl
    ld [hl-], a
    rlca
    cp a
    ld c, $bf
    cp l
    ld c, $be
    dec c
    or h
    rla
    inc [hl]
    ld b, e
    cp a
    rst RST_38
    jr jr_02b_5eb6

    rra
    rst RST_38
    nop
    inc e
    nop
    inc c
    rst RST_38
    pop hl
    dec d
    ld sp, $1bc8
    rst RST_20
    rrca
    ldh a, [$fffb]
    ld bc, $b780
    nop
    ld [hl], c
    nop
    ld h, b
    ld c, $50
    rst RST_38
    jr jr_02b_5f41

    or b
    rst RST_08
    ldh [$ff1f], a
    nop
    inc bc
    rst RST_38
    nop
    cp c
    add hl, sp
    ret nz

    inc c
    push af
    dec b
    db $f4
    rst RST_38
    rlca
    db $f4
    inc b
    db $f4
    dec b
    db $f4
    dec b
    push af
    rst RST_38
    dec c
    dec sp
    jr c, jr_02b_5f9e

    ld h, b
    ld e, a
    ld b, b
    ld e, a
    ld sp, hl
    ret nz

    ld [hl], h
    ld b, b
    ld a, c
    ld b, b

jr_02b_5f41:
    rra
    ld b, b
    ld bc, $01f0
    ld e, a
    ld hl, sp+$54
    db $fc
    xor c

jr_02b_5f4b:
    db $fc
    add h
    ld b, c
    ld d, l
    add l
    ld b, b
    rst RST_38
    nop
    rra
    nop
    ccf
    ld d, l
    ld a, a
    ld a, [hl+]
    ld a, a
    inc b
    sub h
    ld b, [hl]
    adc c
    ld b, h
    db $fd
    and a
    ld b, h
    sub h
    ld b, l
    or a
    ld b, l
    xor b
    ld b, l
    xor b
    ld b, l
    db $fc
    or a
    ld b, [hl]
    or a
    ld b, h
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, h
    ld a, e
    ld a, b
    rst RST_38
    ld a, e
    ld a, b
    ld [hl], e
    ld [hl], h
    ld h, e
    ld l, h
    ld h, e
    ld l, h
    ei
    ld b, e
    ld e, h
    and a
    ld b, e
    db $f4
    push af
    ldh [$ffe9], a
    ldh [$fffd], a
    add sp, -$06
    ld b, c
    ld b, e
    ld e, h
    inc hl
    inc e
    inc hl
    inc e
    ld sp, hl
    ld h, e
    dec b
    ld d, b
    ld l, h
    ld bc, $0000
    ld [$0b09], sp
    rst RST_38

jr_02b_5f9e:
    db $eb
    ldh [$ffe0], a
    ld [$08e9], sp
    jp hl


    nop
    rst RST_28
    jp hl


    ld bc, $1f01
    db $dd
    jr nz, jr_02b_5f4b

    add b
    dec e
    rst RST_30
    nop
    dec h
    jr c, jr_02b_5fdb

    ld d, e
    and l
    cp b
    ldh [rP1], a
    rst RST_38
    add hl, bc
    db $10
    ret nz

    db $10
    sub b
    jr nz, jr_02b_5fe2

    ld b, b
    pop de
    rrca
    ld l, d
    ld bc, $5625
    ld h, $50
    cp b
    ld c, b
    ld d, c
    cp $fe
    rst RST_38
    db $fd
    db $fc
    ei
    ld hl, sp-$05
    ld hl, sp-$0d
    db $f4
    cp a
    db $e3

jr_02b_5fdb:
    db $ec
    db $e3
    db $ec
    jp Jump_000_00dc


    rlca

jr_02b_5fe2:
    cp $7e
    ld l, d
    ld d, d
    jp $a3dc


    sbc h
    and e
    sbc h
    ld b, $57
    ld a, b
    ld l, d
    ld [bc], a
    cp b
    dec b
    ld a, l
    ld d, d
    dec e
    add b
    sbc l
    add b
    ld c, d
    ld d, b
    add b
    sub a
    ld d, c
    daa
    ld d, b
    sbc c
    ld [hl+], a
    add [hl]
    ld d, [hl]
    ld a, $50
    ld c, e
    ld d, d
    sub [hl]
    ld d, [hl]
    cp b
    dec e
    nop
    add b
    cp e
    or b
    rst RST_38
    nop
    inc bc
    add b
    rst RST_38
    add [hl]
    add hl, bc
    ld [bc], a
    ld b, e
    rst RST_28
    rst RST_38
    ld b, b
    rst RST_38
    ld e, b
    inc de
    ld [bc], a
    nop
    nop
    ld a, a
    rst RST_38
    nop
    ld b, b
    nop
    ld b, l
    rst RST_38
    ld b, l
    rst RST_38
    ld b, c
    ei
    rst RST_38
    ld d, c
    dec h
    ld [bc], a
    nop
    nop
    cp $00
    add hl, bc
    dec sp
    rst RST_38
    dec hl
    ld sp, $0900
    rst RST_38
    ld c, l
    scf
    nop
    jr nc, jr_02b_6043

    db $fd

jr_02b_6043:
    add [hl]
    rlca
    nop
    db $10
    rra
    ldh [rTAC], a
    jr @+$05

    rst RST_38
    ld [$08e3], sp
    db $e3
    ld c, d
    and e
    ld [$df23], a
    ld [$ea63], a
    db $e3
    add sp, $55
    nop
    ld [$0f03], sp
    ld hl, sp+$03
    nop
    inc bc
    ld [$4005], sp
    ld bc, $0100
    inc [hl]
    add hl, bc
    rst RST_38
    add hl, bc
    rra
    pop hl
    inc bc
    db $fd
    pop hl
    push hl
    ld sp, hl
    rst RST_38
    push bc
    ld sp, hl
    push af
    adc c
    and l
    ld e, c
    ld d, l
    xor c
    rst RST_28
    db $fd
    ld bc, $0101
    jr nc, jr_02b_6092

    ld b, b
    ld a, a
    ld b, e
    adc [hl]
    and c
    nop
    ld b, b
    ld a, a
    ld e, b
    and a
    nop
    and b
    rrca

jr_02b_6092:
    or d
    rrca
    ld b, b
    dec sp
    cp $42
    pop de
    nop
    ld b, b
    cp $58
    rst RST_10
    nop
    ret nc

    rrca
    xor $e2
    rrca

jr_02b_60a4:
    nop
    nop
    nop
    add hl, de
    nop
    rst RST_38
    nop
    rst RST_38
    sub b
    inc bc
    ld [de], a
    ld [bc], a
    ld de, $001b
    dec de
    nop
    ld a, a
    inc de
    ld [de], a
    dec de
    nop
    inc bc
    rst RST_38
    db $fc
    rlca
    db $fc
    rst RST_30
    inc c
    rst RST_30
    inc c
    rla
    di
    db $ec
    scf
    ld a, [hl+]
    rra
    inc [hl]
    dec d
    call z, Call_000_0cf7
    rst RST_00
    rst RST_38
    inc a
    rrca
    ldh a, [$ff3f]
    ret nz

    db $fc
    inc bc
    di
    rst RST_38
    rrca
    call z, Call_000_333c
    di
    call z, Call_000_30cc
    ld a, a
    jr nc, jr_02b_60a4

    ret nz

    inc bc
    inc bc
    inc c
    ccf
    add hl, de
    nop
    cp a
    inc a
    di
    ldh a, [$ffcf]
    ret nz

    ccf
    ld [$0c11], sp
    rst RST_18
    rst RST_38
    inc [hl]
    rst RST_38
    db $e4
    rst RST_38
    ld [$e411], sp
    rst RST_38
    pop bc
    inc h
    ld a, c
    ld [de], a
    ld [$7a11], sp
    inc de
    ld a, [hl]
    dec de
    ld a, [hl]
    inc de
    dec h
    cp $ff
    nop
    add c
    ld a, $81
    ld a, $bd
    ld [hl+], a
    cp l
    ei
    ld [hl+], a
    or l
    xor b
    inc de

jr_02b_611b:
    nop
    ld b, b
    rra
    ld b, b
    rra
    cp a
    ld c, a
    jr jr_02b_6173

    jr jr_02b_6172

    add hl, de
    cp c

Jump_02b_6128:
    ld [de], a
    nop
    rst RST_38
    ld b, $f8
    ld c, $f8
    xor $18
    adc $18
    ld b, a
    ld c, [hl]
    sbc b
    adc $ca
    ld de, $15a8
    xor b
    inc d
    cp l
    cp d
    inc de
    xor e
    add hl, de
    ld c, l
    or [hl]
    db $10
    ld c, b
    or d
    db $10
    ld e, a
    jp z, $cc10

    cp a
    sub b
    jp $cf8c


    ccf
    ccf
    rla
    inc de
    ld l, $7f
    or c
    inc a
    adc a
    jr nc, jr_02b_611b

    nop
    cp h
    ld d, b
    dec d
    ldh [$ff15], a
    ld de, $001a
    jr @+$14

    inc de
    stop
    db $10
    dec c
    and b
    ld hl, $2cbf
    and c
    xor h

jr_02b_6172:
    and c

jr_02b_6173:
    inc l
    ld hl, $2127
    inc l
    ld a, $04
    inc de
    add b
    rst RST_38
    add b
    ret nz

    sbc a
    add hl, sp
    ld [hl+], a

jr_02b_6182:
    ld bc, $ff11
    db $fd
    db $fc
    ld bc, $01fc
    inc b
    ld sp, hl
    inc c
    ld a, [hl]
    ld c, d
    ld hl, $0000
    ld d, l
    and b
    and c
    db $f4
    ld d, h
    daa
    halt
    ld bc, $fe11
    cp $2d
    nop
    ld [bc], a
    db $fc
    ld b, $6a
    ld hl, $00bf
    nop
    or b
    ld b, h
    push bc
    ld [hl], h
    ld [hl], h
    daa
    ld h, b
    rst RST_38
    rrca
    ldh [rIF], a
    ldh [rP1], a
    rst RST_28
    rrca
    rst RST_28
    add e
    nop
    ldh [$ff87], a
    ld hl, $1204
    ld bc, $0810
    ld [de], a
    rrca
    ld de, $9f30
    db $fc
    ret nz

    ldh a, [rP1]
    rst RST_08
    nop
    ld de, $1108
    ret nz

    jp c, Jump_000_229b

    add b
    inc de

jr_02b_61d5:
    db $10
    add b
    ld a, a
    ld [$8011], sp
    ld a, a
    inc b
    inc l
    ld hl, $24c0
    xor h
    jp nz, $3a21

    inc hl
    ret nc

    daa
    ld c, d
    inc hl
    ldh [$ff27], a
    nop
    ld d, h
    add hl, hl
    ld d, h
    ld hl, $236a
    nop
    scf
    ld [hl], h
    add hl, hl
    ld [hl], h
    ld hl, $2083
    add h
    jr nz, jr_02b_6182

    ld [hl+], a
    ld sp, $228b
    rst RST_28
    rrca

jr_02b_6204:
    ld de, $120e
    ld [hl], e
    ld [de], a
    sub l
    inc hl
    jr c, jr_02b_6204

    rst RST_30
    ld d, b
    xor a
    ld [$6811], sp
    or a
    ld l, b
    or a
    sbc $08
    ld de, $58af
    xor b
    ld e, a
    ld [$aa11], sp
    ld e, l
    di
    xor d
    ld e, l
    jp z, Jump_02b_6423

    jr nc, jr_02b_61d5

    inc hl
    cpl
    and b
    scf
    cpl
    add b
    nop
    ld a, [hl-]
    jr nz, @-$1f

    add b
    inc bc
    dec d
    add hl, de
    nop
    ldh a, [rWY]
    jr nz, jr_02b_6281

jr_02b_623c:
    ld hl, $3677
    ld d, h
    daa
    and e
    rst RST_30
    jr nz, jr_02b_623c

jr_02b_6245:
    jp RST_00


    ld l, d
    jr nz, @+$67

    ld hl, $3677
    ld [hl], h
    jr z, jr_02b_6245

    inc b
    rst RST_30
    db $f4
    ld bc, $8700
    jr nz, @-$3e

    db $10
    rst RST_08
    db $10
    cp l
    xor a
    jr jr_02b_6271

    db $10
    rst RST_28
    db $10
    rst RST_28
    ld [$1711], sp
    rst RST_30
    db $ec
    sub h
    ld l, a
    ld [$9d11], sp
    ld h, [hl]
    sbc l
    ld h, [hl]

jr_02b_6271:
    ld a, b
    ld c, b
    dec [hl]
    ld c, [hl]
    inc sp
    ld c, [hl]
    inc sp
    xor d
    ld e, l
    xor e
    ld e, h
    ld d, [hl]
    inc sp
    ei
    cp a
    ld b, b

jr_02b_6281:
    ld [$7311], sp
    xor a
    ldh a, [c]
    dec l
    ld [hl], d
    call Call_000_08ad
    ld de, $2df2
    sub a
    inc h
    inc d
    ld b, e
    nop
    and b
    ld l, l
    rst RST_18
    db $10
    ld b, l
    cp $01
    ld [$0a11], sp
    db $fd
    ld [$3f11], sp
    xor e
    rst RST_30
    xor d
    push af
    xor d
    push af
    ld e, b
    ld [hl-], a
    add hl, sp
    ld b, d
    halt
    inc d
    ld b, a
    dec b
    cp $08
    ld de, $f5ce
    ld c, [hl]
    ld d, l
    ld b, b
    ldh [$ff08], a
    ld de, $4358
    call z, $ce31
    inc sp
    adc $33
    sub l
    ld l, [hl]
    sub l
    db $fd
    ld l, [hl]
    sub $33
    sbc a
    ld h, b
    ld h, h
    cp a
    ld l, h
    cp e
    cp $00
    ld b, d
    adc l
    ld h, [hl]
    sbc e
    ld c, l
    or [hl]
    ld a, [de]
    db $ed
    ld l, e
    add b
    ld a, a
    cp b
    dec h

jr_02b_62de:
    rst RST_38
    sub a
    ld b, d
    ld [hl], d
    xor l
    ld [$7b43], sp
    ld [hl], d
    xor l
    ld b, $41
    ldh a, [c]
    dec l
    and b
    rst RST_18
    ld e, $43
    inc c
    or b
    ld b, c
    or b
    ld b, c
    ld a, [bc]
    db $fd
    ld l, $43
    ret nz

jr_02b_62fa:
    ld b, c
    ret nz

jr_02b_62fc:
    ld b, c
    ld [hl], $47
    ld b, $d8
    ld b, e
    dec b
    cp $4e
    ld b, e
    ldh [rSTAT], a
    ldh [rSTAT], a
    ld d, [hl]
    ld b, a
    ld hl, sp+$43
    cp $cc
    dec [hl]
    jr jr_02b_62fa

    jr jr_02b_62fc

    jr c, jr_02b_62de

    jr c, @-$05

    rst RST_00
    sub b
    ld c, l
    ld [$d711], sp
    ld l, c
    xor a
    db $d3
    ld e, e
    rst RST_30
    and a
    cp c
    ld c, a
    sub a
    dec h
    ret c

    ld a, a
    ret c

    ld a, a
    add a
    ret nz

    ld a, a
    jp $22b9


    and h
    ld b, e
    ld b, h
    ld d, e
    sub a
    dec h
    and b
    rst RST_08
    rst RST_18
    cp a
    ret nz

    add b
    ld [hl], e
    db $10
    sub a
    dec h
    ld a, [bc]
    db $fd
    rra
    ld a, [$0205]
    db $fd
    cp $2f
    ld b, d
    call nc, $9749
    dec h
    ld a, a
    dec b
    cp $fd
    ld [bc], a
    ld bc, $fffe
    ld c, a
    ld b, d
    db $fc
    db $f4
    ld c, c
    sub a
    dec h
    ld d, b
    xor a
    ret nc

    cpl
    ldh [$ff1f], a
    pop hl
    and b
    ld d, a
    ld [hl-], a
    ld a, [hl-]
    inc sp
    or h
    ld d, e
    ld [$8d11], sp
    ld a, a
    add hl, hl
    ld l, [hl]
    ld sp, $0b00
    rst RST_38
    adc c
    ld [hl], e
    ld [de], a
    add hl, hl
    rst RST_38
    inc [hl]
    ld d, l
    add d
    ld a, [hl-]
    ld d, e
    ret nz

    sbc c
    ld b, d
    sbc b
    ld b, c
    jr c, jr_02b_63bf

    inc b
    ld d, $3a
    inc sp
    ld b, b
    pop bc
    cp a
    sub b
    ld b, c
    or h
    jr nz, jr_02b_63ce

    inc [hl]
    ld c, $67
    ld a, [hl-]
    inc sp
    call $ff32
    sub [hl]
    ld a, e
    xor [hl]
    ld a, e
    dec hl
    cp $7b
    xor $ff
    ld e, l
    xor $f5
    ld c, [hl]
    ld [hl+], a
    ld c, h
    or h
    rst RST_18
    adc $30
    ld l, c
    add b
    ret nz

    jr nz, jr_02b_63ce

    inc de
    rla
    ld [de], a
    ld [$c763], sp
    ld [$4063], sp
    inc c

jr_02b_63bf:
    inc d
    or b
    ld d, l
    ld d, b
    ld l, c
    ldh a, [rIE]
    dec a
    ld a, b
    ld e, a
    ld l, d
    ld h, b
    rst RST_38
    jr nc, @+$01

jr_02b_63ce:
    ld c, h
    ld h, c
    add b
    ld h, [hl]
    rst RST_20
    inc bc
    ld a, b
    inc bc
    ld c, $69
    dec b
    ld de, $ff3c
    ld e, $ff
    rst RST_38
    rrca
    rst RST_38
    rlca
    rst RST_38
    inc bc
    rst RST_38
    ld bc, $b5fe
    ld d, d
    jr @+$01

    inc c
    rst RST_38
    ld b, $ff
    add e
    rst RST_18
    rst RST_38
    pop bc
    rst RST_38
    ldh [rIE], a
    ld l, h
    ld h, c
    db $10
    add $fe
    ret nz

    ld h, e
    sub b
    add $d0
    add $50
    ret nz

    ld e, $ff
    ret nz

    dec bc
    inc bc
    dec hl
    ld b, e
    add hl, bc
    ld h, e
    add hl, bc
    rst RST_38
    ld h, d
    ld c, b
    inc hl
    ld l, b
    inc bc
    ld l, d
    ld bc, $f929
    ld b, d
    ld e, c
    ld d, d
    ld e, c
    ld d, c
    ld a, a
    ld a, a
    sbc a
    ccf
    call z, Call_000_1ffb

Jump_02b_6423:
    ldh [$ffe0], a
    ld h, [hl]
    rst RST_08
    rst RST_20
    rra
    jp $ff3d


    add c
    ld a, [hl]
    db $10
    ret nz

    inc d
    add $16
    add $fd
    sub d
    ret


    ld h, b
    sub $c0
    sub $c0
    ld d, [hl]
    ret nz

    rst RST_38
    dec hl
    ld b, b
    add hl, bc
    ld h, d
    ld [$0a63], sp
    inc bc

jr_02b_6447:
    rst RST_38
    ld a, e
    inc bc
    dec bc
    inc bc
    dec bc
    ld h, e
    ld c, c
    inc hl
    rst RST_38
    adc a
    ld [hl], b
    rst RST_20
    jr jr_02b_6447

    ld c, $7c
    add e
    rst RST_18
    ld d, $e9
    add c
    cp $c0
    cp c
    ld h, b
    pop hl
    ld e, $ff
    ld hl, sp+$07
    ld e, h
    and e
    ld b, $f9
    ld bc, $fefe
    ld b, $61
    ld bc, $c1fe
    ld a, $7f
    add b
    rra
    rst RST_30
    ldh [$ff3f], a
    ret nz

    ld hl, $f810
    rra
    ldh [$ffe1], a
    rst RST_38
    ld e, $d2
    inc b
    ret nc

    ld b, $d0
    ld b, $90
    rst RST_38
    ld b, b
    sbc [hl]
    ld b, b
    sub b
    ld b, b
    sub [hl]
    ld b, b
    ld d, $7f
    ret nz

    ld l, b
    inc bc
    jr z, jr_02b_64db

    ld a, [bc]
    ld h, c
    ld [de], a
    ld [hl], c
    rst RST_18
    ld [$4863], sp
    inc hl
    ld l, e
    ld l, e
    ld h, b
    ld a, [hl]
    ld sp, hl
    rst RST_38
    ld a, $fc
    sbc [hl]
    ld a, [hl]
    xor $1e
    ld a, [hl]
    add [hl]
    rst RST_38
    ld a, $c2
    cp $00
    call nc, $d002
    ld b, $ff
    ld [de], a
    ld b, h
    ld d, $40
    ld d, $40
    ld d, [hl]
    nop
    rra
    ld d, [hl]
    ld [bc], a
    ld d, [hl]
    ld b, $08
    rla
    ld de, $1618
    jp z, $d730

    nop
    ld a, [hl]
    ld a, [hl]
    and c
    ld [hl], c
    nop
    and [hl]
    ld [hl], e
    nop
    add b
    rst RST_38
    nop
    ld a, a

jr_02b_64db:
    ccf
    ret nz

    ld a, a
    sbc a
    ldh [$ffa7], a
    rst RST_38
    ld b, b
    rst RST_00
    nop

jr_02b_64e5:
    sub a
    nop
    xor $01
    ld bc, $00ff
    cp $f8
    rlca
    db $fc
    db $e3
    ld e, $1b
    rst RST_38
    ld b, $85
    ld [bc], a
    push de
    ld [bc], a
    ld l, l
    add d
    rst RST_18
    rst RST_18
    jr nz, @-$77

    ld a, b
    add e
    ld a, h
    call nc, $c771
    jr c, jr_02b_64e5

    inc e
    ld hl, $c23d
    dec c
    ldh a, [c]
    ldh [c], a
    ld [hl], c
    dec a
    jp nz, $f7f7

    nop
    jp Jump_000_1000


    add h
    ld a, e
    and h
    ld a, e
    rst RST_38
    xor d
    ld a, a
    ld l, e
    cp $3d
    xor $15
    xor $0f
    cp e
    ld b, h
    ld [hl+], a
    ld b, h
    dec e
    add b
    ld e, c
    rst RST_38
    sbc b
    ld bc, $09f6
    db $dd
    dec hl
    xor l
    ld a, e
    di
    dec l
    ei
    ld [$1a0f], sp
    rrca
    dec c
    dec bc
    sub e
    rst RST_30
    rst RST_38
    and e
    rst RST_30
    db $d3
    rst RST_20
    and e
    rst RST_10
    ld b, e
    and a
    rst RST_38
    add e
    ld b, a
    inc bc
    add e
    jr nz, jr_02b_6554

    ld a, [hl-]
    dec a
    cp e
    cp d

jr_02b_6554:
    ld a, l
    ld b, d
    ld bc, $ffff
    nop
    ld c, b
    nop
    nop
    ld h, a
    rst RST_38
    ei
    db $fc
    ld d, b
    inc bc
    ld c, b
    dec b
    rst RST_08
    ccf
    ld h, b
    inc bc
    or $48
    dec b
    ld e, a
    cp a
    ld [hl], b
    inc bc
    rst RST_38
    rst RST_38
    ld bc, $5ffe
    cp $00
    ld bc, $40fe
    ld c, h
    ld bc, $4d00
    nop
    sbc $4c
    nop
    pop hl
    rst RST_38
    ld h, c
    rst RST_38
    add b
    add hl, bc
    ld [hl], d
    rst RST_38
    db $fd
    ld [hl+], a
    adc a
    ld a, [bc]
    ld c, $ff
    daa
    rst RST_38
    ld [$df63], sp
    ld a, [bc]
    ld h, e
    add hl, bc
    ld h, e
    ld [$03b5], sp
    inc bc
    ld a, b
    rst RST_38
    inc bc
    ld [hl], b
    rst RST_38
    jr nc, @+$01

    db $10
    rst RST_38
    sub b
    rst RST_38
    rst RST_38
    ld c, b
    rst RST_38
    jr z, @+$01

    jr @+$01

    ld [$ffff], sp
    and d
    rst RST_38
    jp nz, Jump_02b_41ff

    rst RST_38
    ld bc, $d5fc
    ld [bc], a
    add e
    nop
    rst RST_38
    ld [hl], e
    rst RST_38
    ld d, c
    rst RST_38
    adc c
    db $eb
    rst RST_38
    add [hl]
    db $db
    ld [bc], a
    nop
    push de
    nop
    sub b
    add $d0
    rst RST_28
    add $90
    add $10
    push af
    ld [bc], a
    ret nc

    ret nz

    sbc [hl]
    rst RST_38
    ret nz

    inc bc
    rst RST_38
    ld b, $ff
    rrca
    rst RST_38
    inc sp
    sbc e
    rst RST_38
    ld e, $e7
    inc b
    db $10
    ret nz

    ld hl, sp+$02
    push af
    nop
    ld d, $ff
    ret nz

    ld d, $c0
    ld d, [hl]
    add b
    dec hl
    ld b, b
    dec bc
    db $fc
    or e
    ld bc, $00bd
    add hl, bc
    inc bc
    ld a, [bc]
    ld h, e
    ld c, b
    inc hl
    rst RST_38
    rst RST_38
    ld a, b
    rst RST_30
    sbc b
    pop af
    xor [hl]
    db $fc
    jp $96ff


    jp hl


    inc bc
    cp $1e
    rst RST_38
    ld h, h
    rst RST_38
    rst RST_38
    pop bc
    ld a, $7f
    add b
    ccf
    ldh a, [$ff3f]
    db $ec
    rst RST_38
    daa
    cp $17
    ld sp, hl
    rra
    ld hl, sp-$03
    ld e, $ff
    jp nc, $d004

    ld b, $d0
    ld b, $90

Jump_02b_662e:
    ld b, b
    rst RST_18
    sbc [hl]
    ld b, b
    sub b
    ret nz

    sub $1b
    db $10
    ld l, e
    inc bc
    cp a
    dec hl
    ld b, e
    dec bc
    ld h, c
    add hl, bc
    ld h, d
    or [hl]
    ld bc, $ff48
    inc hl
    ld l, e
    nop
    adc b
    rst RST_38
    ld c, $f9
    sub [hl]
    rst RST_38
    ld hl, sp-$12
    ldh a, [$ffee]
    ld [hl], b
    ld a, [hl]
    ret nz

    cp [hl]
    rst RST_38
    ret nz

    cp $80
    call nc, $d002
    ld b, $52
    ld a, a
    ld b, h
    ld d, [hl]
    ld b, b
    ld d, $40
    ld d, [hl]
    nop
    adc d
    ld de, $76ff
    ld sp, hl
    ld a, a
    ld sp, hl
    db $ed
    ld a, e
    jp hl


    ld a, a
    rst RST_38
    ei
    ld l, a
    rst RST_10
    ld l, a
    cp d
    ld b, a
    ld h, c
    ld b, $ff
    cp e

jr_02b_667c:
    rst RST_00
    reti


    rst RST_20
    or l
    rst RST_28
    or [hl]
    db $ed
    rst RST_38
    ld l, d
    cp l
    ld c, e
    cp h
    db $db
    inc a
    and h
    jr jr_02b_667c

    ld e, e
    add a
    sbc e
    rst RST_00
    or d
    ld de, $e3cd
    ld l, l
    rst RST_38
    db $e3
    xor a
    ld h, c
    nop
    ld h, c
    dec sp
    db $fc
    ld [hl], l
    rst RST_38
    cp $e5
    cp $f5
    xor $d6
    rst RST_28
    sbc d
    rst RST_38
    rst RST_20
    cp e
    rst RST_00
    ld b, h
    add e
    rst RST_28
    ccf
    and [hl]
    rst RST_38
    ld a, a
    ld d, [hl]
    rst RST_28
    sub [hl]
    rst RST_28
    or l
    adc $35
    rst RST_38
    adc $71
    adc [hl]
    jp z, Jump_000_0004

    sbc b
    ld b, $ef
    ld sp, hl
    ld b, $f9
    ld h, $e5
    ld d, $02
    ld b, c
    ld b, $eb
    ld sp, hl
    add $f3
    db $10
    sub $f7
    inc d
    sub h
    ld [bc], a
    call nc, Call_000_237d
    ld [bc], a
    add hl, hl
    nop
    jr c, jr_02b_66ff

    rst RST_38
    ld [hl], d
    rst RST_18
    nop
    cp $16
    dec h
    jr nz, jr_02b_66f8

    ld h, b
    sbc a
    ld l, b
    sbc a
    ld l, h
    ret nz

    dec h
    ld h, $e6
    rla
    and $13
    ld hl, sp+$15
    ld hl, sp+$15

jr_02b_66f8:
    ld [bc], a
    dec hl
    call nc, $9023
    ld d, $27

jr_02b_66ff:
    ld d, $23
    ld h, $27
    ld a, [hl+]
    jr z, @-$06

    add h
    daa
    ld d, $22
    ld a, a
    ld a, [$2794]
    ld h, $e3
    db $10
    ld b, $f9
    adc [hl]
    ld [hl], c
    sbc a
    ld a, a
    ld h, b
    rst RST_18
    jr nz, @+$01

    nop
    ret nz

    nop
    ld hl, sp+$11
    cp a
    ld b, $f9
    rrca
    ldh a, [rVBK]
    or b
    db $db
    ld bc, $fd00
    nop
    add h
    ld hl, $f806
    ld c, $f0
    cp $00
    or $c8
    ld hl, $0000
    sub h
    ld hl, $7f00
    ld c, b
    scf
    rst RST_18
    ld l, h
    inc de
    ld l, l
    ld [de], a
    ld a, a
    add l
    nop

jr_02b_6747:
    ld h, b
    sbc a
    cp $e0
    ld hl, $9b64
    xor $11
    cp $01
    cp $7f
    ld bc, $010e
    rra
    ld b, b
    nop
    ld e, a
    ldh a, [c]
    ld [hl+], a
    rst RST_28
    ld e, b
    nop
    ld e, b
    inc bc
    ei
    jr nz, jr_02b_6765

jr_02b_6765:
    ld [bc], a
    ld hl, sp-$09
    ld [bc], a
    nop
    ld a, [$3004]
    ld a, [de]
    jr nz, @+$3c

jr_02b_6770:
    ldh [rTAC], a
    ld a, d

jr_02b_6773:
    ldh [$ff7a], a
    db $fc
    ld hl, $3910
    inc c
    ld sp, $3920
    db $fc
    jr nz, jr_02b_6747

    ld e, e
    inc bc
    ld e, e
    ldh a, [c]

jr_02b_6784:
    inc h
    di
    jr nz, @+$0e

    jr nc, jr_02b_6784

    ldh [$ffbf], a
    ld a, [$f200]
    inc c
    db $ec
    inc b
    ld c, c
    jr nc, jr_02b_6795

jr_02b_6795:
    add c
    ldh a, [$fff6]

jr_02b_6798:
    daa
    db $10
    inc sp
    ld b, $37
    ld a, [hl+]
    ld [hl], $31
    inc sp
    dec [hl]
    ld [hl-], a
    inc bc
    db $fd
    ld e, h
    ld b, b
    inc [hl]
    ld a, [$f008]
    jr nc, jr_02b_6770

    ret nz

    rst RST_38
    nop
    jr c, jr_02b_67b5

    ld d, b
    ld e, h
    ld b, b

jr_02b_67b5:
    ld d, b
    ld b, b
    rst RST_28
    ld c, a
    nop
    rra
    ld a, a
    call c, $a620
    ld e, e
    and h
    cp l
    ld e, e
    ld c, e
    ld bc, $fa05
    dec h
    ld a, [HeaderOldLicenseeCode]
    ld h, l
    dec bc
    ld a, [$a765]
    ld [hl-], a
    and h
    sbc l
    jr nc, jr_02b_6773

    inc sp
    sbc [hl]
    inc sp
    xor h
    ld sp, $ae06
    inc sp
    ld h, l
    ld a, [$37b6]
    or h
    inc sp
    add $37
    call nz, $d837
    dec [hl]
    sbc b
    ld c, e
    ld [bc], a
    push hl
    ccf
    push af
    jr c, jr_02b_6798

    ld e, b
    inc b
    ld b, l
    xor [hl]
    inc sp
    add l
    cp a
    ld a, d
    ld c, h
    rra
    ld c, h
    rra
    ld b, c
    inc sp
    ld b, b
    ld b, b
    ld a, [$4031]
    ld c, h
    scf
    ld b, b
    ld [bc], a
    nop
    ld a, [hl+]
    ldh [$ffaa], a
    ld [bc], a
    ld b, e
    ld b, b
    ld a, [hl+]
    ld b, a
    ld b, h
    inc [hl]
    ld c, c
    inc [hl]
    ld b, c
    ld b, h
    ld c, c
    ld b, h
    ld b, c
    ld d, h
    ld c, c
    ret c

    jr c, jr_02b_6860

    ld h, h
    ld c, c
    ld c, b
    ld b, c
    nop
    ld b, b
    scf
    ld b, b
    ld b, b
    nop
    ld a, h
    sub l
    ld b, b
    sub d
    ld b, c
    inc e
    ld b, b
    nop
    ld a, [bc]
    ldh [$ffa1], a
    ld b, b
    sbc c
    nop
    and l
    ld b, b
    and d
    ld b, e
    dec e
    ld b, b
    or b
    ld c, e
    and h
    ld b, b
    ld [$6067], a
    adc d
    ld b, b
    push bc
    ld b, [hl]
    or b
    ld c, e
    inc e
    ld b, c
    add $47
    inc bc
    ld h, b
    adc d
    ret nz

    ld b, c
    sub d
    ld b, c
    sub h

jr_02b_6856:
    ld b, c
    db $f4
    ld b, l
    and d
    ld b, c
    and h
    ld b, c
    ret nc

    inc b
    ld d, l

jr_02b_6860:
    ldh a, [c]
    jr nz, jr_02b_6856

    ld b, h
    db $f4
    ld b, h
    ld [$5406], a
    nop
    db $fd
    ei
    ld [bc], a
    nop
    add hl, hl
    ld d, b
    ld e, a
    ld e, a
    ld b, b
    ld b, b
    ld c, a
    rst RST_30
    ld b, b
    rra
    nop
    sbc b
    ld sp, $40bf
    cp a
    ld b, b
    dec a
    rst RST_38
    call z, $fd20
    ld [bc], a
    db $fd
    ld [bc], a
    ld c, e
    ld bc, $5544
    nop
    inc a
    ld d, c
    ld a, $50
    ld d, c
    ld e, a
    ld h, c
    ld e, a
    ld [hl], e
    ld d, [hl]
    ld e, b
    ld d, l
    dec e
    nop
    add b
    cp a
    rst RST_38
    ld bc, $ffff
    rst RST_38
    db $10
    inc b
    nop
    rst RST_38
    ret c

    nop
    nop
    ld bc, $0101
    ld a, [bc]
    nop
    nop
    inc b
    ld bc, $3f3f
    rst RST_38
    rra
    ret nz

    ld c, $80
    nop
    pop hl
    nop
    ldh a, [rIE]
    nop
    rst RST_08
    rst RST_38
    db $10
    db $fc
    db $10
    ldh [$ffe3], a
    rst RST_38
    add b
    rra
    nop
    ld a, a
    nop
    rst RST_38
    nop
    ld a, b
    cp a
    nop
    sbc [hl]
    ret nz

    nop
    nop
    ccf
    inc l
    nop
    db $fc
    rst RST_38
    nop
    add [hl]
    ld bc, $02e0
    jr nc, jr_02b_68df

jr_02b_68df:
    nop
    rst RST_38
    rrca
    rrca
    ld bc, $0e01
    ld c, $38
    jr c, @+$01

    jp $9fc0


    add b
    ld e, [hl]
    ld hl, $718e
    rst RST_18
    cp $fe
    ldh [$ffe0], a
    rrca
    ld a, [hl-]
    nop
    ld a, a
    add b
    ccf
    halt
    ret


    or $cd
    db $ed
    sbc a
    ld e, $00
    ld [hl], c
    inc b
    cp a
    rst RST_20
    jr @-$24

    cp l
    cp [hl]
    di
    ld [hl], d
    dec b
    rst RST_38
    ld a, a
    nop
    halt
    adc c
    ld d, [hl]
    db $ed
    or l
    rst RST_28
    ld [hl], d
    dec b
    rst RST_38
    db $fc
    inc bc
    db $fd
    inc bc
    ei
    add a
    ei
    add [hl]
    cp $70
    dec b
    ld [hl], a
    adc b
    cp [hl]
    push bc
    xor l
    ld [hl], e
    ld l, e
    cp a
    rst RST_38
    ld a, a
    ld a, a
    rlca
    rlca
    ldh a, [$ff71]
    ld [bc], a
    ld a, c
    rst RST_38
    add [hl]
    or [hl]
    rst RST_08
    ldh [$ff3f], a
    ld hl, sp-$08
    ldh [rIE], a
    ldh [$ff78], a
    ld a, b
    inc e
    inc e
    rst RST_00
    rlca
    pop hl
    ld a, a
    ld de, $38c4
    add e
    db $fc
    nop
    nop
    jr c, jr_02b_6954

jr_02b_6954:
    db $fd
    dec b
    ld a, [hl-]
    nop
    nop
    ret nz

    rst RST_00
    ld h, b
    nop
    jr @+$01

    ld bc, $003f
    rlca
    ret nz

    ld bc, $00f9
    rst RST_30
    cp $00
    cp a
    ld a, [hl-]
    nop
    ld a, $00
    ld sp, hl
    rst RST_38
    rst RST_38
    ld [$08ff], sp
    db $fc
    db $fc
    jr c, jr_02b_697c

    db $10
    rst RST_38
    add c

jr_02b_697c:
    nop
    rst RST_00
    nop
    rrca
    nop
    di
    nop
    rst RST_38
    rra
    nop
    sbc a
    nop
    or a
    nop
    xor a
    nop
    rst RST_30
    sbc l
    nop
    dec de
    ld a, [bc]
    db $10
    dec bc
    nop
    jp $ff00


    adc d
    nop
    db $ec
    nop
    xor [hl]
    nop
    rst RST_10
    nop
    rst RST_38
    sub $00
    and $00
    xor $03
    nop
    rlca
    rst RST_38
    nop
    rla
    ld [$1c23], sp
    ld d, l
    ld a, [hl+]
    ret


    rst RST_38
    ld [hl], $c1
    ld a, $e3
    inc e
    dec b
    ei
    ld d, h
    rst RST_38
    xor e
    daa
    reti


    adc a
    ld [hl], b
    db $db
    inc h
    ld hl, sp-$01
    rlca
    ei
    inc b
    rst RST_38
    nop
    db $ed
    sbc e
    ld [hl-], a
    rst RST_38
    rst RST_08
    rst RST_38
    and $ff
    nop
    ld h, [hl]
    sbc c
    ld e, e
    rst RST_38
    and h
    ld h, a
    sbc b
    rst RST_38
    nop
    or l
    ld l, e
    call Call_000_3fff
    rst RST_38
    sbc c
    rst RST_38
    nop
    ld hl, $63de
    rst RST_30
    sbc h
    ld h, c
    sbc [hl]
    cp b
    nop
    rst RST_20
    dec sp
    rst RST_00
    or $ff
    ld l, a
    call Call_02b_7c3e
    sbc e
    ld a, h
    add e
    ld e, $ff
    pop hl
    rst RST_38
    nop
    or a
    ld c, [hl]
    db $10
    rst RST_28
    ld c, a
    rst RST_38
    or a
    rla
    add sp, -$59
    ld e, b
    ld b, [hl]
    cp c
    ld c, a
    rst RST_38
    or b
    ld e, a
    and b
    ld e, e
    cp $dc
    di
    rst RST_38
    rst RST_38
    sub c
    rst RST_38
    nop
    add hl, de
    and $f0
    rrca
    ld d, $ff
    jp hl


    rst RST_38
    nop
    ld l, a
    sbc a
    pop af
    adc $ff
    rst RST_38
    add a
    rst RST_38
    nop

jr_02b_6a2b:
    jp z, $8a35

    ld [hl], l
    sbc d
    rst RST_38
    ld h, l
    rst RST_38
    nop
    xor e
    call nc, Call_02b_6c93
    rst RST_00
    rst RST_38
    jr c, jr_02b_6a2b

    db $10
    reti


    ld h, $56
    xor c
    sbc c
    rst RST_38
    ld h, [hl]
    rst RST_38
    nop
    ret z

    ld [$04e4], sp
    add sp, -$01
    db $10
    call nz, $aa38
    ld d, h
    sub e
    ld l, h
    add e
    rst RST_18
    ld a, h
    rst RST_00
    jr c, jr_02b_6a59

jr_02b_6a59:
    jp nz, Jump_000_002c

    ldh [rP1], a
    rst RST_38
    jp nc, Jump_000_2200

    nop
    and c
    nop
    pop bc
    nop
    rst RST_30
    and b
    nop
    adc $1c
    db $10
    jp nz, $d800

    nop
    db $fd
    ld e, h
    db $ec
    nop
    cp [hl]
    nop
    xor $00
    nop
    rlca
    rst RST_28
    ldh [rBGP], a
    ldh [$ffe7], a
    push hl
    db $10
    jp $81c0


    ei
    add b
    ld [bc], a
    ret nc

    nop
    ldh [rTAC], a
    pop hl
    rlca
    rst RST_20
    ccf
    rlca
    db $e3
    rlca
    ret nz

    inc bc
    add b
    dec e
    nop
    ldh [rNR11], a
    rst RST_38
    rst RST_20
    ldh [$ffc7], a
    ldh [rTAC], a
    ldh [$ff03], a
    ret c

    xor a
    ld bc, $1e80
    ld b, b
    ldh a, [rNR11]
    rst RST_20
    push af
    ld [de], a
    pop bc
    cpl
    dec de
    add b
    ld bc, $ff7e
    ld [de], a
    rst RST_00
    push hl
    inc de
    dec bc
    jr nz, @+$01

    ld a, [hl]
    nop
    ld c, $04
    ld e, $0e
    adc [hl]
    ld c, $ff
    xor [hl]
    add [hl]
    and [hl]
    ld [hl+], a

jr_02b_6ac8:
    ld h, [hl]
    ld [hl+], a
    ld l, d
    jr nz, jr_02b_6ac8

    ld l, d
    ld c, b
    jr c, jr_02b_6ad1

jr_02b_6ad1:
    ld l, l
    add b
    cpl
    ret nz

    dec c
    rst RST_38
    ldh [rTIMA], a
    ld hl, sp-$07
    db $fc
    ld de, $10fe
    rst RST_38
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld h, e
    ld l, e
    ld h, e
    ld l, c
    ei
    ld h, c
    ld l, l
    ld e, b
    jr nz, jr_02b_6b5a

    ld h, b
    ld l, [hl]
    adc b
    nop
    di
    db $dd
    nop
    ld [$0506], sp
    nop
    ld b, b
    ld b, b
    ld d, b
    ld b, b
    rst RST_18
    ld e, d
    ld e, b
    ld e, b
    ld b, b
    ld e, b
    ld [hl], e
    jr nz, jr_02b_6b5f

    ld c, b
    rst RST_38
    ld e, d
    ld c, b
    ld l, b
    ld c, b
    ld h, h
    ld b, h
    ld d, h
    inc b
    rst RST_38
    inc d
    inc d

Call_02b_6b13:
    ld e, b
    ld c, b
    ld e, d
    ld [$8bcb], sp
    rst RST_38
    and a
    ld [bc], a
    nop
    rst RST_38
    cp $01
    cp $01
    rst RST_38
    nop
    rst RST_38
    rst RST_28
    db $10
    rst RST_28
    ld de, $f70f
    rst RST_28
    rst RST_38
    ld e, $60
    ld l, [hl]
    and b
    jr nz, @+$68

    ld h, b
    ld h, [hl]
    rst RST_38
    ld l, b
    ld h, d
    ld l, l
    ld h, b
    ld l, l
    ld l, l
    ld l, a
    ld l, c
    db $fc
    ld h, h
    add hl, hl
    ld [$5b01], sp
    ld e, d
    ld e, e
    ld b, c
    ld e, e
    ld b, b
    cp $c0
    jr nz, jr_02b_6b96

    ld e, e
    ld c, b
    ld e, e
    ld e, e
    ld e, e
    ld b, b
    rst RST_38
    ld c, $81
    nop
    rra
    rrca
    sub b

jr_02b_6b5a:
    cpl
    sub b
    rst RST_38
    nop
    cp a

jr_02b_6b5f:
    ld a, $01
    ld a, $81
    nop
    cp a
    rst RST_38
    rst RST_38
    inc a
    ccf
    sbc $ff
    daa
    rst RST_38
    add hl, sp
    rst RST_38
    ccf
    xor $ff
    ld a, $ff
    ld a, [hl+]
    ccf
    cp $ff
    ld c, $6d
    ld c, b
    ld l, a
    rrca
    ld h, h
    ld c, a
    ld l, h
    rst RST_38
    inc c
    ld l, a
    ld c, [hl]
    ld l, l
    ld c, [hl]
    ld l, l
    ld c, h
    ld h, a
    ldh [c], a
    call nz, Call_02b_5b20
    jp z, $cb20

    ld [hl+], a
    nop
    ld sp, $106f
    ld l, a

jr_02b_6b96:
    rst RST_38
    ld de, $7f07
    ld a, a
    ld e, $7f
    inc a
    rra
    rst RST_38
    ld a, [hl]
    ld a, a
    daa
    ld a, a
    add hl, sp
    rst RST_38
    ld a, [hl-]
    rst RST_28
    rst RST_38
    ld e, $c2
    rst RST_38
    cp $f1
    cp $79
    ldh a, [rIE]
    rst RST_38
    rst RST_38
    ret z

    rst RST_38
    jr c, @+$51

    ld l, h
    ld c, a
    rst RST_38
    ld h, b
    ld b, b
    ld l, a
    ld c, [hl]
    ld h, c
    ld c, [hl]
    ld h, c
    ld b, b
    ld e, a

jr_02b_6bc4:
    ld l, a
    ld c, a
    ld h, b
    ld c, a
    ld h, b
    sbc b
    jr nz, jr_02b_6bdc

    sub b
    jr z, jr_02b_6bc4

    db $10
    inc b
    ld [hl], $41
    ret nz

    jr nz, jr_02b_6c1e

    ld e, e
    ld c, c
    ccf
    rst RST_38
    ld l, [hl]
    ld a, a

jr_02b_6bdc:
    ld a, $7f
    ld a, [hl+]
    ccf
    ld a, [hl]
    ld a, a

jr_02b_6be2:
    rst RST_28
    ld a, [hl-]
    ld l, a
    ld e, $02
    sub c
    jr nz, jr_02b_6be2

    rst RST_38
    cp $ff
    cp c
    cp $a9
    ld hl, sp-$11
    rst RST_38
    ld hl, sp-$11
    inc bc
    ldh a, [$ff80]
    sub c
    jr nz, jr_02b_6c2f

    add hl, sp
    inc [hl]
    ld sp, $3944
    sub b
    ld hl, $20c0
    sub d
    ld d, a
    jr nc, @+$61

    ld e, e
    ld [hl-], a
    and [hl]
    jr nc, @+$42

    sub h
    add hl, sp
    sub h
    jr nz, jr_02b_6c12

jr_02b_6c12:
    ld a, d
    jr c, jr_02b_6c4a

    nop
    dec [hl]
    jr nc, jr_02b_6c27

    ld h, c
    nop
    ld h, b
    and h
    scf

jr_02b_6c1e:
    rst RST_38
    ld e, d
    ld b, b
    ld e, c
    ld b, c
    ld b, e
    ld b, e
    rst RST_38
    ld sp, hl

jr_02b_6c27:
    ei
    adc a
    rst RST_38
    dec a

jr_02b_6c2b:
    db $10
    rst RST_38
    ld b, h
    rst RST_38

jr_02b_6c2f:
    ldh [$ffbf], a
    ld a, e
    pop af
    rra
    ld e, $00
    sbc $21
    rst RST_38
    jr nz, jr_02b_6c2b

    ld bc, $ffdf
    ld l, l
    rst RST_38
    rst RST_38
    sub e
    ld c, [hl]
    nop
    ld l, [hl]
    ld bc, $6ffb
    nop
    inc bc

jr_02b_6c4a:
    ld b, b
    ld [$0c6f], sp
    ld l, a
    rrca
    rst RST_38
    ld h, e
    nop
    ld h, b
    rst RST_38
    ld [hl], h
    db $dd
    cp $0a
    rst RST_38
    cp $05
    db $fc
    inc b
    di
    ld h, b
    rst RST_08
    and b
    rst RST_38
    sbc a
    nop
    ld a, a
    jr jr_02b_6cc2

    nop
    ld e, c
    ld [$43df], sp
    nop
    ld e, a
    ldh [$ff5f], a
    ld [hl], c
    inc bc
    rlca
    ld a, b
    rst RST_38
    rrca
    di
    rrca
    and $1f
    db $e4
    rra
    call z, Call_000_3fbf
    ret nz

    ld a, a
    sbc b
    ld a, a
    add b
    ld [hl], d
    nop
    or [hl]
    ld l, a
    rst RST_38
    nop
    sub h
    ld l, e
    ld [hl], c
    ld bc, $7e81
    ld [hl], d
    ld [bc], a

Call_02b_6c93:
    rst RST_38
    ld l, l
    rst RST_28
    db $10
    add l
    ld a, d
    ld bc, $02fe
    rst RST_30
    db $fd
    ld d, a
    xor b
    ld h, [hl]
    nop
    nop
    rst RST_38
    dec d
    rst RST_38
    ld e, a
    ld l, b
    rst RST_38
    ld b, b
    rst RST_38
    or e
    nop
    nop
    sub a
    ld [bc], a
    nop
    rst RST_18
    nop
    rst RST_38
    ld d, h
    rst RST_38
    adc d
    ld sp, hl
    jr nc, jr_02b_6cd8

    rst RST_38
    db $fd
    inc c

jr_02b_6cbd:
    ld [$fc20], a
    nop
    ld h, b

jr_02b_6cc2:
    inc b
    ld h, b
    ld a, [bc]
    ei
    ld h, b
    rrca
    add l
    ld b, b
    ld c, $60
    dec c
    ld h, c
    ld a, [bc]
    add hl, de
    ld h, e
    ret nc

    ld [bc], a
    sub e
    ld b, c
    nop
    add b
    add hl, sp

jr_02b_6cd8:
    ld bc, $00d7
    ld [hl], c
    inc b
    ld a, a
    nop
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$41
    jr nc, @-$01

    rst RST_28
    rra
    nop
    rst RST_28
    jr nc, jr_02b_6cbd

    ldh a, [$ff28]
    ldh a, [$ff67]
    ld l, a
    ldh [$ffdf], a
    ld [hl], c
    ld b, $9f
    ld b, d
    ld a, [hl+]
    push de
    ret nz

    ld b, a
    rst RST_38
    ld bc, $070e
    ld hl, sp-$01
    nop
    ld [$7ff7], sp
    ld [$00f7], sp
    rst RST_38
    ld [$0cf7], sp
    ld a, a
    ld bc, $06c7
    rst RST_38
    inc bc
    ret nz

    ld c, b
    ld [hl], d
    ld [bc], a
    rst RST_38
    ld b, d
    db $fd
    rst RST_38
    push af
    ld [$0272], a
    ld d, b
    inc b
    ld d, b
    ld hl, sp-$01
    db $f4
    rst RST_38
    ei
    ret nc

    rst RST_38
    and $00
    ldh a, [rP1]
    ld sp, hl
    ld bc, $cff2
    inc bc
    nop
    ld h, a
    ld [$4203], sp
    inc b
    ld b, c
    sub b
    ld l, a
    rst RST_38
    ret nc

    ld a, a
    rlca

jr_02b_6d40:
    ld hl, sp+$0f
    pop af
    rra
    db $e3
    rst RST_38
    rra
    ldh [$ff3f], a
    add $7f
    add h
    ld a, a
    adc h
    rst RST_38
    rst RST_38
    nop
    ret nz

    ccf
    jp z, $95b5

    ld l, d
    rst RST_28
    ld l, a
    sub b
    cp a
    ld b, b
    ld [hl], d
    inc bc
    dec d
    ld [$31af], a
    ld d, b
    ld a, $42
    ld d, a
    ld e, a
    ld a, [hl-]
    nop
    ld a, [$d705]
    ld b, c
    ld [hl], d
    dec b
    cp a
    push de
    ld a, [hl+]
    and b
    ld e, a
    rst RST_38
    or $02
    nop
    cp $fb
    rst RST_38
    sbc l
    add h
    ld d, b
    db $f4
    cp $f9
    db $fc
    ld h, e
    rst RST_38
    ldh a, [$ff87]
    ldh a, [rIF]
    ret nz

    rra
    add b
    ccf
    ldh [$ff38], a
    ld [bc], a
    rst RST_10
    ld b, c
    sub d
    jr nz, jr_02b_6d40

    ld b, c
    jr nc, jr_02b_6de7

    ldh a, [$ff1f]
    ldh [rIE], a
    rra
    pop hl

jr_02b_6d9d:
    rst RST_38
    jr jr_02b_6d9d

    ld a, [hl-]
    cp d
    ld [hl], l
    rst RST_38
    nop
    rst RST_38
    push af
    ld l, d
    ld [$fff5], a
    ret nz

    ld [hl], $bc
    ld d, b
    nop
    and b
    add hl, hl
    ld b, b
    ld [bc], a
    db $fd
    ld d, b
    ld d, c
    ld a, b
    ld d, e
    sub $71
    ld bc, $55aa
    ld d, h
    ld d, l
    ld b, b
    jp hl


    nop
    dec b
    ld a, [$cafc]
    ld d, e
    ld [hl], d
    ld bc, $fe01
    ld a, [bc]
    push af
    ld e, a

jr_02b_6dcf:
    and b
    sbc [hl]
    add b
    rlca
    ld a, a
    sbc b
    rst RST_38
    inc e
    ld a, d
    ld b, b
    db $eb
    ld b, c
    rlca
    rst RST_38
    rst RST_38
    inc bc
    rst RST_38
    inc bc
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    rst RST_18
    ld e, d

jr_02b_6de7:
    ld a, [de]
    ld a, [de]
    ld [bc], a
    ld a, [de]
    inc de
    ld h, b
    sbc d
    ld a, [bc]
    rst RST_18
    ld e, d
    ld a, [bc]
    ld de, $bb00
    ld h, e
    ld a, [hl+]
    ldh [c], a
    ld [bc], a
    rst RST_38
    ldh [c], a
    ld [bc], a
    add $d6
    add $16
    add [hl]
    ld [hl], $bf
    add [hl]
    or [hl]
    add [hl]
    ld [hl], $06
    halt
    and $00
    or [hl]
    rst RST_38
    ld bc, $03f5
    or c
    rlca
    and c
    rra
    sbc a
    rst RST_38
    ccf
    sub b
    ld a, a
    db $10
    jp c, $da5a

    add d
    ei
    jp c, Jump_02b_5002

    ld h, b
    adc d
    jp c, $da0a

    jp c, $daef

    ld [bc], a
    ld b, $76
    ld h, b
    ld h, b
    ld h, [hl]
    ld b, $66
    rst RST_38
    ld d, $46
    or [hl]
    ld b, $b6
    or [hl]
    or $16
    cp [hl]
    sub b
    jr z, jr_02b_6dcf

    ldh [rIE], a
    cp $79
    ld d, h
    ld h, b
    jp c, Jump_02b_5af8

    ld h, b
    ld e, e
    ld h, d
    add b
    ld h, c
    ldh a, [$ff36]
    inc d
    or $f0
    rst RST_38
    ld h, $f4
    ld [hl], $30
    and $f4
    ld [hl], $f4
    rst RST_38
    ld h, $34
    or $fe
    dec a
    db $fc
    ld a, e
    rst RST_38
    rst RST_38
    db $e4
    rst RST_38
    sbc h
    db $fc
    ld a, a
    cp $5d
    cp $ff
    ld d, l
    db $fc
    ld [hl], a
    ldh a, [rSB]
    nop
    ld hl, sp-$18
    rst RST_38
    ld de, $11ec
    nop
    db $fd
    db $fc
    nop
    db $fc
    rst RST_10
    ld bc, $fd00
    add h
    ld h, [hl]
    add d
    ld d, b
    ld h, b
    ld a, [bc]
    jp c, $8a7d

    sbc d
    ld h, b
    ld b, $04
    or $f4
    ld b, $d2
    ld h, c
    rst RST_38
    db $e4
    ld d, $e4
    ld d, $ff
    ld a, h
    rst RST_30
    ld a, b
    rst RST_38
    ld b, e
    rst RST_38
    rst RST_38
    rrca
    rst RST_38
    ld e, $0f
    rst RST_38
    rst RST_38
    rst RST_38
    inc de
    rst RST_38
    inc e
    xor $10
    xor $90
    rst RST_38
    ldh [$fffe], a
    db $fc
    ld a, d
    db $fc
    ld a, $f8
    ld a, [hl]
    ld c, a
    cp $e4
    cp $9c
    ld d, b
    ld h, b
    rst RST_00
    ld h, b
    ld a, [$62cb]
    ldh a, [c]
    ld b, $70
    ld [bc], a
    call nc, $d469
    ld h, c
    rra
    rst RST_30
    rst RST_38
    dec e
    cp e
    rst RST_38
    rra
    jr nz, jr_02b_6f47

    rst RST_30
    rrca
    ld bc, $2091
    db $fc
    rst RST_38
    ld a, [hl]
    db $fc
    ld e, [hl]
    db $fc
    ld d, [hl]
    db $fc
    halt
    cp $cf
    ld a, h
    cp $70
    ld b, b
    sub c
    jr nz, jr_02b_6ef1

    ld [hl], a
    ld e, d
    ld [bc], a
    xor a

jr_02b_6ef1:
    sbc d
    add d
    jp nz, $d8c2

    ld h, l
    nop
    push de
    ld h, b
    ldh a, [$ffe7]
    ld b, $00
    ld b, $fe
    ld de, $4193
    ld h, b
    rra
    ld h, b
    ld e, a
    db $10
    ld h, a
    db $10
    ld h, a
    inc de
    cp $11
    cp $e6
    nop
    rst RST_38
    ld b, $f8
    ld b, $08
    ld b, [hl]
    xor b
    or $e8
    cp $fe
    ld de, $40bf
    cp a
    ld b, b
    and b
    ld e, a
    and b
    ld e, a
    ld d, b
    and a
    ld d, b
    and a
    ld d, e
    ld [hl], b
    ld a, c
    ld d, [hl]
    ld a, l
    ld [hl], b
    ei
    ld h, a
    inc de
    and b
    ld [hl], a
    ld h, e
    rla
    ld h, a
    inc de
    or $ed
    add sp, -$50
    ld a, e
    and a
    ld d, e
    ret nz

    ld [hl], a
    and e
    ld d, a
    and a
    db $ed
    ld d, e
    or b

jr_02b_6f47:
    ld a, l
    ld h, e
    rla
    ldh [$ff75], a
    ld l, a
    db $10
    ld h, b
    rst RST_30
    rra
    ld a, a
    nop
    or b
    ld a, b
    ld [$f806], sp
    cp $01
    nop
    dec e
    add b
    daa
    ei
    and e
    ld d, a
    nop
    dec b
    xor a
    ld d, b
    and b
    ld e, a
    cp a
    rst RST_30
    ld b, b
    or $e8
    db $10
    ld b, $08
    ld b, $f8
    cp $ff
    nop
    ld a, a
    nop
    ld h, b
    rra
    ld h, b
    db $10
    ld h, a
    rst RST_30
    db $10
    ld h, a
    inc de
    jr z, @+$05

    cp $00
    ld b, $f8
    cp a
    ld b, $0e
    ld d, [hl]
    xor [hl]
    or $ee
    jr c, jr_02b_6f91

    cp a
    rst RST_38
    ld b, b

jr_02b_6f91:
    and b
    ld e, a
    ldh [rSVBK], a
    rst RST_20
    ld [hl], b
    rst RST_20
    cp c
    ld [hl], e
    ld c, b
    inc bc
    jr nc, @+$04

    ld [$a846], sp
    db $10
    dec b
    ldh a, [$fffc]
    ld de, $1107
    ld [bc], a
    rst RST_00
    inc de
    and a
    ld d, e
    and a
    ld d, e
    di
    and e
    ld d, a
    ld [hl], h
    ld bc, $0100
    ld h, e
    rla
    ld h, e
    rla
    rst RST_18
    ld h, a
    db $10
    ld h, b
    rra
    ld a, a
    rra
    nop
    ld a, a
    nop
    or e
    nop
    nop
    ld d, $07
    sbc b
    ld bc, $0000
    nop
    ld bc, $e0a7
    dec bc
    ld [bc], a
    xor b
    ld bc, $0f8e
    cp l
    ld bc, $0188
    ld h, b
    rra
    ld l, a
    sbc a
    db $10
    ld l, a
    rla
    ld l, [hl]
    ld d, $bd
    ld bc, $0198
    ld b, $7f
    ld hl, sp+$36
    ld [$2836], sp
    ld [hl], $28
    cp l
    ld bc, $a8fe
    ld bc, $5fa0
    and l
    ld d, d
    and a
    ld d, a
    and d
    db $dd
    ld d, d
    ret nc

    rlca
    ld b, $08
    ld d, $fb
    nop
    ld l, d
    ld [de], a
    rst RST_38
    ld h, b
    db $10
    ld l, b
    db $10
    ld h, h
    inc e
    ld h, [hl]
    ld e, $3f
    ld h, a
    rra
    ld l, h
    inc d
    ld h, b
    db $10
    db $fc
    ld bc, $1910
    ei
    and b
    ld d, b
    jr nz, jr_02b_7034

    xor b
    ld d, b
    and h
    ld e, h
    xor b
    cp $21
    db $10
    ld [hl], $28
    halt
    ld l, b
    or $e8
    ld [hl], $2d
    jr z, @+$12

    dec d

jr_02b_7034:
    ld h, b
    db $10
    ld b, b
    dec d
    ld l, a
    add l
    ld [bc], a
    db $fc
    ld bc, $3078
    inc de
    ld a, [de]
    inc bc
    jr nz, jr_02b_7057

    xor h
    ld e, h
    xor h
    ld e, h
    ld a, [bc]
    inc bc
    or $50
    dec d
    ld d, $08
    ld a, [de]
    rlca
    ld h, l
    ld [de], a
    ld h, a
    rla
    di
    ld h, d

jr_02b_7057:
    ld [de], a
    inc b
    inc de
    jr nc, @+$05

    ld d, $0e
    ld [hl], $2e
    cp a
    ld [hl], $2e
    halt
    ld l, [hl]
    ld [hl], $2e
    ld b, b
    ld bc, $ffe2
    ld [hl], c
    pop hl
    ld [hl], c
    ldh [rSVBK], a
    ldh [rSVBK], a
    add sp, -$09
    ld a, b
    db $ec
    ld a, h
    jr nc, @+$03

    ld h, $c8
    sub $c8
    res 2, [hl]
    adc b
    db $10
    inc de
    ld h, d
    add l
    db $10
    add h
    add hl, bc
    halt
    ld l, b
    ld h, e
    ld [hl], $28
    sub h
    add hl, bc
    jr nz, jr_02b_70a1

    and h
    add hl, bc
    ld d, [hl]
    ld c, b
    sub d
    dec bc
    ld l, a
    rst RST_38
    nop
    rst RST_38
    ld a, a
    ld [bc], a
    jr nz, @+$62

    ldh [rTAC], a
    inc h

jr_02b_70a1:
    sbc b
    nop
    jr nz, jr_02b_70b7

    ld hl, $04bd
    nop
    nop
    ld [$0825], sp
    dec h
    ldh [c], a
    rst RST_38
    ld h, b
    push hl
    ld h, b
    rst RST_20
    ld h, a
    rst RST_20
    ld h, b

jr_02b_70b7:
    rst RST_28
    rst RST_38
    ld h, b
    rst RST_28
    ld l, a
    rst RST_28
    ld l, a
    ldh [$ff60], a
    ld [hl+], a
    ld b, e
    nop
    ld d, l
    ld de, $ff21
    ld de, $2214
    ld b, b
    ld [hl+], a
    add b
    ld [bc], a
    ld [hl+], a
    rst RST_38
    add b
    rst RST_38
    add b
    nop
    nop
    daa
    ld b, $57
    sbc a
    ld b, $f7
    ld b, $f7
    or $66
    jr nz, jr_02b_7144

Jump_02b_70e1:
    jr nz, jr_02b_70ea

    ld bc, $1d06
    nop
    add b
    rst RST_38
    di

jr_02b_70ea:
    inc c
    cp $00
    add h
    nop
    inc b
    nop
    db $fd
    inc e
    rlca
    nop
    jr c, jr_02b_70f7

jr_02b_70f7:
    ld [hl], a
    nop
    rra
    nop
    rst RST_38
    ld [$1407], sp
    ld [$1820], sp
    ld [$ff30], sp
    ld h, e
    inc bc
    call c, $fb00
    inc bc
    nop
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    ld c, a

jr_02b_7111:
    jr nc, jr_02b_7111

    nop
    add b
    nop
    rst RST_38
    ld hl, sp-$08
    ld a, $3e
    ld b, $06
    ld e, b
    add b
    rst RST_38
    add c
    ld bc, $1c1c
    cp $fe
    inc c
    inc c
    rst RST_38
    pop hl
    nop
    rst RST_00
    nop
    ld [bc], a
    nop
    ldh a, [rIF]
    rst RST_38
    inc e
    inc bc
    inc c
    inc bc
    ld c, a
    nop
    sub $00
    rst RST_38
    db $d3
    nop
    sub c
    nop
    jr nc, jr_02b_7141

jr_02b_7141:
    nop
    cp $ff

jr_02b_7144:
    ld bc, $0186
    xor $02
    db $fd
    ccf
    nop
    rst RST_38
    adc [hl]
    nop
    ld b, c
    ld b, b
    call nz, Call_000_0fc3
    db $10
    rst RST_38
    ld de, $e400
    inc bc
    ld c, l
    add d
    inc de
    inc c
    rst RST_38
    ld e, [hl]
    jr nz, @+$72

    add b
    ld h, b
    add c
    rrca
    ldh a, [rIE]
    ccf
    ret nz

    rst RST_38
    nop
    ld a, [$3c01]
    inc bc
    rst RST_38
    ld h, l
    ld a, [de]
    sbc e
    ld h, b
    ld hl, $c8c0
    rlca
    rst RST_38
    db $ed
    ld [de], a
    inc bc
    db $fc
    ld b, e
    cp h
    ld [bc], a
    db $fc
    rst RST_38
    ld [bc], a
    db $fc
    call c, $b820
    ld b, b
    ld [bc], a
    db $fd
    rst RST_38
    ld a, [$ff04]
    nop
    ld hl, sp+$00
    ret nz

    nop
    rst RST_38
    rra
    ld e, $03
    nop
    jr jr_02b_7202

    ld h, b
    add b
    rst RST_38
    ld de, $7310
    ld [hl], b
    ret z

    ret nz

    jr jr_02b_71a6

jr_02b_71a6:
    rst RST_38
    ld a, b
    nop
    pop de
    ld l, $06
    ld hl, sp-$0a

jr_02b_71ae:
    ld b, $ff
    rst RST_20
    rlca
    rst RST_20
    rlca
    db $f4
    inc b
    dec b
    inc b
    db $fd
    ld a, a
    dec sp
    nop
    dec b
    ld [bc], a
    db $ec
    ldh [$fff0], a
    ldh a, [rIE]
    ret nz

    ret nz

    ld a, $01
    ld b, b
    cp a
    add b
    ld a, a
    rst RST_38
    sbc b
    rlca
    add b
    nop
    ld c, [hl]
    jr nc, jr_02b_7201

    db $10
    rst RST_18
    add sp, $10
    ld b, $f8
    inc bc
    adc c
    nop
    ld [bc], a
    db $fc
    rst RST_38
    inc e
    nop
    ld hl, sp-$01
    db $e3
    db $fc
    rst RST_08
    ldh a, [rIE]
    sbc h
    ldh [$ffb0], a
    ret nz

    jr nc, jr_02b_71ae

    ld h, b
    add b
    rst RST_28
    ld h, b
    add b
    ld e, a
    rrca
    ldh a, [rSB]
    ld c, a
    rrca
    cpl
    rst RST_38
    cpl
    cpl
    rrca
    xor a
    adc a
    adc a

jr_02b_7201:
    adc a

jr_02b_7202:
    ld a, c
    rst RST_38
    ld b, $f2
    inc c
    add $38
    ld b, $f8
    ld bc, $fefd

jr_02b_720e:
    jr nz, jr_02b_7211

    rlca

jr_02b_7211:
    ld hl, sp-$1f
    nop
    rla
    db $10
    db $ed
    rrca
    sub l
    nop
    push af
    ld a, [bc]
    jr nz, jr_02b_721f

    ret nz

jr_02b_721f:
    nop
    db $f4
    rst RST_38
    inc b
    ld sp, hl
    jr jr_02b_7229

    nop
    ld c, $00

jr_02b_7229:
    rst RST_38
    rst RST_28
    inc bc
    jr jr_02b_720e

    pop bc
    rrca
    nop
    db $e4
    inc b
    sbc [hl]
    rst RST_38

Call_02b_7235:
    ld e, $3c
    inc a
    ld a, b
    ld a, b
    db $e3
    ldh [$ff1f], a
    cp [hl]
    jr nz, jr_02b_7240

jr_02b_7240:
    ret nz

    nop
    scf
    rlca
    ld h, a
    ld b, c
    db $10
    rst RST_20
    rst RST_38
    rlca
    rst RST_30
    rlca
    ld sp, hl
    ld bc, $00d0
    rrca
    rst RST_38
    nop
    ret


    add $ae
    sub b
    ld a, a
    nop
    sbc a
    cp a
    add b
    ld [hl], b
    nop
    ret nz

    ret nz

    nop
    jr nz, jr_02b_7263

jr_02b_7263:
    adc a
    ei
    nop
    ld h, b
    sub a
    nop
    add b
    nop
    nop
    nop
    ld bc, $20ce
    nop
    ld [hl], b
    adc a
    ld bc, $1069
    inc h
    db $10
    ld bc, $ff20
    rra
    add b
    ld a, a
    ld bc, $70fe
    add b
    ldh a, [$ffdf]
    nop
    db $fc
    inc bc
    ret nz

    ccf
    jr nz, @+$03

    ld b, $f8
    xor $98
    nop
    rra
    or b
    ld c, a
    jr nz, jr_02b_7296

    nop

jr_02b_7296:
    rst RST_38
    ld c, $ff
    pop af
    nop
    nop
    ld [hl], l
    ld [hl], l
    nop
    nop
    ld b, $af
    ld hl, sp+$39
    ret nz

    dec sp
    and e
    db $10
    pop bc
    ld [hl], e
    db $10
    rst RST_28
    rst RST_38
    ldh [rP1], a
    nop
    ccf
    nop
    ret nz

    ccf
    add b
    rst RST_38
    ld a, a
    add b
    ld a, a
    ldh [$ff1f], a
    ret nc

    cpl
    db $fc
    ld a, e
    inc bc
    ld bc, $0027
    ldh [rP1], a
    add hl, sp
    ret nz

    sub d
    inc de
    rst RST_30
    or d
    ld c, l
    rst RST_38
    ld h, a
    stop
    nop
    sbc [hl]
    ld h, b
    ld a, [hl]
    add [hl]
    ld [de], a
    ld sp, hl
    ld a, a
    add b
    add b
    nop
    rst RST_38
    ldh [rNR10], a
    rst RST_38
    db $fd
    db $fd
    ld sp, hl
    ld a, [$fcfe]
    ldh a, [c]
    push af
    rst RST_38
    ei
    ld hl, sp-$04
    db $fc
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    rst RST_38
    xor a
    cpl
    cpl
    rst RST_18
    and e
    ld c, e
    rst RST_38
    rlca
    rst RST_18
    ld b, e
    inc hl
    adc a
    rrca
    rst RST_38
    ld l, c
    db $10
    db $dd
    ld [hl+], a
    ld a, [hl]
    or h
    ld de, $003f
    ldh a, [rP1]
    jp $ae03


    ld de, $c8f3
    scf
    jr nz, @+$03

    adc $11
    rst RST_38
    rst RST_38
    dec bc
    nop
    rst RST_38
    pop bc
    nop
    ld [bc], a
    db $fd
    nop
    rst RST_38
    ld bc, $fdfe
    ld hl, sp+$67
    db $10
    ldh [$ffe0], a
    adc a
    rrca
    inc bc
    inc bc
    rst RST_38
    ldh a, [rP1]
    ccf
    ret nz

    ldh a, [rP1]
    rst RST_00
    rst RST_00
    rst RST_38
    ld c, $01
    ret nz

    ccf
    sbc [hl]
    add c
    cp a
    add b
    ld a, a
    ccf
    nop
    ld b, h
    nop
    ld a, b
    ld a, b
    add e
    sbc $10
    rst RST_38
    nop
    rst RST_38
    ld e, h
    and e
    db $fc
    inc bc
    rst RST_38
    nop
    db $fd
    rlca
    rrca
    nop
    ld hl, sp+$07
    ld [$00f7], sp
    rst RST_38
    ld a, a
    and b
    ld e, a
    inc bc
    db $fc
    db $fd
    nop
    cp $b1
    db $10
    ld h, d
    sub d
    inc de
    ret nz

    pop bc
    db $10
    inc a
    db $10
    add l
    db $10
    inc bc
    db $fc
    sub d
    ld [de], a
    ld a, [$0020]
    ccf
    push bc
    db $10
    rlca
    ld hl, sp-$03
    nop
    rrca
    rst RST_08
    ldh a, [$ff03]
    db $fc
    jr z, jr_02b_7402

    inc hl
    ld hl, $e100
    ld e, $bd
    cp $c1
    db $10
    ld a, [$e800]
    rla
    sub h
    daa
    inc b
    rst RST_38
    nop
    ld e, a
    nop
    add e
    ld a, h
    inc bc
    db $fc
    inc a
    ei
    ret nz

    ld a, [hl]
    db $dd
    db $10
    ld a, $3e
    rrca
    rrca
    ldh [rIE], a
    nop
    sbc [hl]
    ld e, $bc
    inc a
    ld c, $0e
    dec de
    rst RST_10
    dec de
    db $fc
    db $fc
    xor [hl]
    ld de, $7300
    db $10
    ret nz

    ccf
    or a
    ldh [$ff1f], a
    rst RST_38
    ld h, [hl]
    ld de, $ee00
    rst RST_18
    db $10
    db $fd
    rst RST_38
    rst RST_38
    db $fc
    rst RST_38
    cp $f5
    push af
    ldh a, [c]
    ld a, [$f8f7]
    pop af
    ldh a, [$ffee]
    ld de, $bfff
    sbc a
    ld a, a
    rst RST_38
    cp a
    ld e, a
    rst RST_10
    rrca
    cpl
    ld d, a
    rst RST_10
    rlca
    rst RST_38
    cpl
    rra
    ld hl, sp+$00
    ld e, l
    and c
    di
    inc bc
    rst RST_38
    ld b, $06
    ld sp, hl
    ld hl, sp+$38
    rlca
    ld h, b
    rra
    rst RST_18
    ld [hl], b
    rrca
    ld hl, sp-$08
    rst RST_28
    add hl, sp
    db $10
    rra
    nop
    or l
    ld a, a

jr_02b_7400:
    sub e
    inc h

jr_02b_7402:
    rra
    or c
    db $10
    ld bc, $93fe
    ld de, $fd3c
    jp $2178


    ld [bc], a
    db $fd

jr_02b_7410:
    dec a
    jp nz, Jump_000_00ff

    db $fd
    rst RST_18
    jr nz, jr_02b_7418

jr_02b_7418:
    rra

jr_02b_7419:
    ldh [$ff5c], a
    and b
    di
    inc bc
    rst RST_18
    jr nz, jr_02b_7400

    and $19
    push bc
    sub l
    nop
    di
    inc bc
    rst RST_18
    rst RST_20
    rlca
    ld l, $20
    rst RST_08
    push bc
    db $10
    rrca
    ldh a, [$ff7f]
    ld hl, sp+$00
    inc bc
    inc bc
    ret c

    ret c

    rlca
    rla
    jr nc, jr_02b_7419

    ld a, a
    ld hl, $11ce
    ldh a, [$fff0]
    rrca
    ld h, a
    ld h, $c1
    ld a, $f9
    inc a
    dec de
    ld hl, $2293
    rlca
    ld hl, sp+$0f
    ldh a, [$fffb]
    ld c, a
    inc bc
    ld a, $3e
    ld bc, $1081
    ld d, d
    ld hl, $2780
    nop
    db $fc
    add l
    ld de, $21b2
    cp $00
    ld bc, $3e01
    ld a, $f7
    ld [bc], a
    nop
    ld l, a
    jr nz, jr_02b_7470

jr_02b_7470:
    cp $01
    ldh [$ff1f], a
    ld a, a
    ld hl, sp+$07
    ldh a, [$fff0]
    ld a, $3e
    inc bc
    add c
    db $10
    rst RST_38
    ldh a, [rIF]
    add hl, sp
    add $19
    ldh [rTAC], a
    ld hl, sp-$57
    ccf
    ld d, l
    jr nz, jr_02b_7410

    inc de
    ld hl, sp-$65
    jr nc, jr_02b_7491

jr_02b_7491:
    add hl, sp
    jr nc, @+$01

    db $ed
    nop
    ld a, d
    ld hl, $fa05
    ld c, a
    nop
    cp $7c
    ld a, h
    rst RST_38
    ld [hl+], a
    ld [hl+], a
    ld e, $1e
    db $fd
    db $fc
    ld [$ffe9], a
    db $f4
    di
    ldh [$fffc], a
    call nc, $e8c8
    pop af
    rst RST_38
    ret nz

    pop bc
    db $f4
    db $f4
    xor a
    xor a
    dec b
    dec h
    rst RST_38
    sbc c
    ld c, c
    inc b
    ld a, [hl-]
    ld [hl-], a

jr_02b_74c0:
    add b
    ld c, h
    add d
    rst RST_28
    sub b
    ld h, c
    dec b
    dec b
    ld e, h
    ld [hl-], a
    nop
    ccf
    ccf
    ld a, a
    ldh [rP1], a
    add b
    ld a, a
    ld hl, sp+$07
    inc b
    ld d, e
    jr nz, jr_02b_74c0

    ld a, [de]
    inc hl
    xor [hl]
    db $10
    push bc
    ld [de], a
    db $fc
    ld d, l
    jr nc, @+$81

    ld a, a
    ld hl, sp-$0d
    ld hl, sp+$07
    add hl, bc
    ld b, b
    jr nz, jr_02b_74ec

    inc bc

jr_02b_74ec:
    inc bc
    db $ec
    db $ec
    rst RST_38
    jr c, jr_02b_752a

    ld a, e
    ld a, b
    ret nz

    nop
    ld a, [bc]
    ldh a, [rIE]
    rlca
    ld hl, sp+$00
    rst RST_38
    ret c

    rst RST_00
    jr c, jr_02b_7508

    sbc a
    ret z

    scf
    sbc a
    ld h, b
    ld a, a
    ld d, l

jr_02b_7508:
    jr nz, jr_02b_7589

    ld hl, $ef07
    ld hl, sp+$06
    ld hl, sp+$78
    db $dd
    db $10
    rrca
    nop
    ldh [$fffc], a
    ld a, c
    db $10
    ld e, $31
    ld a, b
    ld a, b
    rst RST_38
    rst RST_38
    ld a, h
    ld a, h

jr_02b_7521:
    cp $92
    inc hl
    ld hl, $c1de
    ld bc, $0404

jr_02b_752a:
    ld [hl], b
    rst RST_38
    ld [hl], b
    ld a, a
    nop
    ld sp, hl
    nop
    ld e, $e0
    dec sp
    xor $73
    nop
    rst RST_30
    rst RST_30
    add hl, bc
    jr nz, jr_02b_753c

jr_02b_753c:
    cp d
    nop
    ld c, a
    cp d
    sub l
    nop
    xor a
    jr nz, jr_02b_7545

jr_02b_7545:
    add b
    add b
    rla
    dec sp
    nop
    ld l, b
    inc d
    ld c, l
    nop
    and e
    ld hl, $67c7
    db $10
    or b
    ld h, l
    jr nz, jr_02b_7521

    jr nc, @+$41

    nop
    db $d3
    ei
    inc b
    adc $21
    rst RST_08
    ld de, $832c
    ld [de], a
    db $10
    rst RST_28
    xor a
    add sp, $17

jr_02b_7569:
    ld b, b
    nop

jr_02b_756b:
    cp [hl]
    ld hl, $3b0c
    ld b, b
    inc bc
    rst RST_38
    db $fc
    ld bc, $17fe
    add sp, $30
    jr nc, jr_02b_756b

    cp a
    ldh a, [rSC]
    ld bc, $070b
    rst RST_20
    ld a, [hl-]
    db $10
    inc bc
    ld sp, hl
    db $fc
    ld [hl], d
    jr nz, jr_02b_7569

jr_02b_7589:
    ld b, l
    ld hl, sp-$02
    ldh [$fff8], a
    ret nz

    ei
    ldh [$ff80], a
    ldh [rLY], a
    adc a
    ld a, c
    ld bc, $003f
    pop af
    dec sp
    ld c, l
    ld bc, $30d7
    ldh [rNR11], a
    ld a, a
    ld a, a
    ld bc, $fd01
    ldh a, [rNR41]
    nop
    ld a, b
    rlca
    nop
    nop
    call c, $eedc
    ld b, $51
    adc h
    adc h
    jr nc, jr_02b_75d6

    nop
    ld a, a
    add b
    ld l, e
    cp $73
    db $10
    ld sp, hl
    ld hl, sp-$44
    cp h
    ld b, b
    ld b, b
    ccf
    xor [hl]
    and l
    ld [hl-], a
    cp $01
    rst RST_38
    sub l
    ld b, b
    cp $af
    db $10
    jp Jump_000_3cfd


    ld h, $21
    add a
    ld a, b

jr_02b_75d6:
    ld hl, sp+$00
    inc de
    inc de
    di
    ld a, a
    ld a, a
    ld c, d
    ld b, c
    db $10
    ld b, e
    ccf
    ccf
    rst RST_08
    ret nz

    rst RST_28
    cp $81
    add sp, $17
    ld a, [hl+]
    ld b, c
    rst RST_38
    nop
    ld h, b
    ld a, a
    ld h, b
    rrca
    nop
    rst RST_30
    ld [$be41], sp
    jr nz, jr_02b_75fa

    rst RST_30

jr_02b_75fa:
    rrca
    ldh a, [$ff61]
    ld d, a
    ld [hl+], a
    and h
    ld e, e
    nop
    rst RST_38
    sbc $30
    inc sp
    rst RST_38
    nop
    adc d
    ld [hl], l
    ld c, e
    ld d, h
    rst RST_38
    jr nz, jr_02b_768e

    rst RST_18
    ldh [$ff1f], a
    db $fd
    nop
    ld c, e
    or h
    add h
    ld d, l
    inc a
    ld l, d
    ld d, d
    jr nz, jr_02b_761d

jr_02b_761d:
    rla
    add sp, $00
    rst RST_38
    ld e, h
    ld hl, $0120
    dec sp
    db $f4
    dec bc
    sub e
    ld de, $807f
    rrca
    inc c
    ld d, b
    inc h
    ld sp, $1e7b
    ldh [$ff7b], a
    inc hl
    rst RST_38
    nop
    ld d, b
    xor a
    sub e
    ld de, $0fff
    rrca
    rst RST_38
    rst RST_38
    rra
    rra
    ld c, $0e
    push hl
    ldh [$ff79], a
    ld b, b
    rst RST_38
    dec bc
    nop
    pop hl
    ld b, a
    db $d3
    ldh [rIF], a
    cp $af
    db $10
    ld a, a
    ccf
    ccf
    ccf
    cp a
    sbc a
    sbc a
    rst RST_38
    add b
    or b
    rrca
    ld h, [hl]
    sbc c
    rlca
    ld hl, sp-$40
    ei
    ccf
    ccf
    xor a
    db $10
    ld b, $06
    ccf
    ccf
    rst RST_38
    rst RST_38
    ld bc, $fe01

jr_02b_7672:
    ldh a, [rIF]
    rrca
    nop
    or $fd
    add hl, bc
    add d
    jr nz, jr_02b_767c

jr_02b_767c:
    ld [hl], c
    ld [hl], b
    push hl
    push hl
    db $fc
    halt
    add e
    ld [hl+], a
    ld b, b
    cp a
    xor b
    ld sp, $01fe
    ld a, a
    xor a
    db $10
    ld sp, hl

jr_02b_768e:
    adc a
    dec bc
    jr nz, @+$2e

    ld b, d
    db $fc
    scf
    ret z

    rst RST_38
    nop
    call $2fe3
    db $10
    scf
    scf
    ld h, a
    jr nc, jr_02b_76bc

    ld de, $f03f
    and l
    rrca
    ld h, $61
    jp $12c5


    adc h
    ld hl, $8bfe
    jr nz, jr_02b_7672

    rst RST_38
    ld a, $f3
    inc c
    ccf
    ret nz

    ld a, [$e002]
    ei
    nop

jr_02b_76bc:
    jp $104d


    ld [hl], b
    rrca
    pop af
    ld c, $e0
    rst RST_38
    rra
    ld d, $16
    ld a, h
    ld a, h
    sbc h
    sbc e
    ld hl, sp-$01
    rlca
    inc bc
    db $fc
    ccf
    ret nz

    ld a, a
    add b
    ld h, a
    ld a, a
    add a
    ld d, b
    cpl
    ld [hl], h
    dec bc
    ccf
    ret nz

    call z, $fd31
    db $fc
    dec c
    jr nz, jr_02b_76ec

    inc b
    nop
    rst RST_38
    ld de, $feee
    sub e

jr_02b_76ec:
    ld de, $1e1e
    inc hl
    jr nz, @-$07

    ldh a, [rIE]
    rst RST_38
    nop
    ld l, e
    sub h
    cp a
    ld b, b
    rst RST_38
    nop
    pop af
    inc a

jr_02b_76fe:
    ld c, c
    ld b, d
    add d
    ld hl, $00ff
    rst RST_20
    rlca
    ld [hl], d
    ld hl, $237d
    ld [hl], a
    ldh a, [rIF]
    ld hl, sp+$47

jr_02b_770f:
    jr nz, @+$71

    ld h, b
    cp $3d
    jr nz, jr_02b_76fe

    daa
    ld b, b
    reti


    db $10
    inc d
    ld sp, $1ff8
    ld [bc], a
    nop
    rst RST_38
    inc e
    db $fd
    db $e3
    rst RST_18
    ld b, l
    rst RST_18
    ccf
    ld l, a
    sbc a
    rrca
    cpl
    rst RST_28
    daa
    nop
    ld h, h
    add e
    ldh [rDMA], a
    rst RST_38
    rst RST_38
    ret nz

    cp a
    db $fd
    ld [bc], a
    ld e, [hl]
    add c
    db $fc
    nop
    inc a
    ld b, c
    ld a, $f7
    pop bc
    ld c, $f1
    ld a, d
    inc hl
    ld a, b
    rlca
    rra
    nop

jr_02b_774a:
    ld a, a
    db $d3
    db $10
    jr c, jr_02b_770f

    ld bc, $fefe
    add hl, bc
    ld h, b
    call c, Call_000_301e
    ld [hl], d
    jr nz, jr_02b_774a

    rrca
    rlca
    sub l
    nop

jr_02b_775e:
    rlca
    ld hl, sp-$65
    add e
    ld a, h
    ld e, $41
    rrca
    ldh a, [$ff28]
    jr nz, jr_02b_777b

    ld [hl], b
    add a
    cp $c1
    db $10
    ld a, h
    add b
    ld a, h
    ld a, h
    rst RST_18
    rra
    rst RST_38
    ld a, e
    inc bc
    rrca
    sbc l
    ld h, b

jr_02b_777b:
    ldh [$ff1f], a
    inc a
    inc bc
    ld h, $70
    cp $11
    ld [hl], b
    rst RST_30

jr_02b_7785:
    ldh a, [$ff9d]
    inc e
    ld a, [$0402]
    cp $07
    db $10
    ldh [$ff1f], a
    ld a, a
    add b
    ld [hl+], a
    jp nz, $ebff

    rlca
    db $fc
    rla
    jr nc, jr_02b_775e

    ld e, d
    db $10
    ld a, h
    add b
    rst RST_00
    ei
    rlca
    inc bc
    rla
    jr nc, jr_02b_7785

    ret nz

    ld [hl], e
    ld [hl], b
    add $d7
    ld b, $f9
    ld bc, $702d
    ret nz

    ld d, d
    ld hl, $3fc0
    rst RST_38
    ld a, [$fc05]
    inc bc
    cp a
    add b
    ld c, $01
    sbc a
    db $e3
    inc e
    nop
    rst RST_38
    cp $c7

jr_02b_77c5:
    nop
    xor h
    ld d, e
    db $e4
    adc l
    dec de
    ld a, [hl+]
    ld b, e
    ld a, a
    add b
    ld [$9213], sp
    inc de
    ld c, b
    ld [hl], c
    ldh a, [$ffb7]
    rrca
    ld a, $c1
    jr nz, jr_02b_784d

    jr jr_02b_77c5

    cp [hl]
    ld h, b
    rlca
    and $08
    ld [hl], e
    add b
    ld a, a
    ld b, b
    ld h, e
    jr nz, jr_02b_77eb

    add b

jr_02b_77eb:
    ld a, a
    jr c, jr_02b_77eb

    rst RST_00
    jr nz, @+$03

    cp $fc
    cp $fc
    db $fd
    ld sp, hl
    rst RST_38
    ld sp, hl
    pop af
    di
    ld bc, $05fb
    dec bc
    db $f4
    rrca
    dec c
    ldh a, [c]
    rra
    rra
    ldh a, [rBCPS]
    ldh [rNR10], a
    ld de, $1b80
    ld e, h
    rst RST_38
    cp $fb
    di
    rst RST_20
    ldh a, [rLCDC]
    add a
    rst RST_38
    add b
    nop
    nop
    dec bc
    ld c, $f0
    ret nz

    db $fd
    db $fd
    add sp, $00
    nop
    add b
    inc [hl]
    ret nz

    adc a
    adc a
    ld a, a
    ld [bc], a
    nop
    inc bc
    rlca
    rra
    ret nz

    ret z

    add h
    jr @+$1a

    inc l
    ld h, l
    ldh a, [$ffc0]
    add e
    ld b, b
    ld c, [hl]
    dec b
    or l
    daa
    ld h, [hl]
    add e
    ret nz

    nop
    adc h
    ret z

    ret c

    ld e, b
    ld c, h
    dec de
    rst RST_38
    inc bc
    sbc l
    jr @-$2e

    ld [hl], $1b

jr_02b_784d:
    rst RST_38
    ld [bc], a
    ldh a, [$fffd]
    ld a, [hl]
    ccf
    inc c
    rst RST_38
    di
    rrca
    inc a
    cp [hl]
    inc c
    ld b, [hl]
    and e
    dec de
    rst RST_38
    inc bc
    ld a, a
    ld e, a
    scf
    rrca
    dec de
    rst RST_38
    dec b
    cp $1b
    rst RST_38
    ld [bc], a
    cp $e0
    db $ec
    add $03
    or $f8
    ldh [$fff1], a
    jr nc, jr_02b_78a5

    and e
    and b
    and h
    db $e4
    ld a, h
    rrca
    dec bc
    add hl, bc
    nop
    or a
    ld a, l
    adc c
    rst RST_00
    ld b, d
    ld b, b
    ld b, b
    ld h, [hl]
    ld h, $b7
    rst RST_00
    add a
    add hl, de
    sub b
    daa
    ld de, $2104
    or $83
    ret nz

    jr nc, jr_02b_78db

    xor b
    ld [hl], d
    ccf
    ld a, h
    cp b
    rst RST_38
    ld l, h
    ld a, a
    cp h
    rra
    ld l, c
    add hl, sp
    ld a, [$0df2]
    inc b

jr_02b_78a5:
    db $e3
    sbc b
    ret c

    rst RST_38
    rra
    ld c, a
    sub e
    jp nz, $8c19

    ld b, [hl]
    dec de
    rst RST_38
    inc bc
    ld a, a
    db $fc
    add b
    rst RST_20
    dec de
    rst RST_38
    inc bc
    cp $52
    inc b
    nop
    dec de
    rst RST_38
    ld [bc], a
    cp $c9
    ldh [$ffa3], a
    pop hl
    rst RST_38
    db $fd
    db $fd
    push bc
    ret c

    ld b, $01
    add b
    db $fc
    ld b, b
    ld de, $1e18
    ret c

    ld hl, sp+$78
    nop
    inc c
    adc a
    cpl
    rrca

jr_02b_78db:
    add b
    ret nz

    db $fc
    and l
    inc h
    ld hl, $ff43
    rra
    ldh [rP1], a
    cp d
    ld a, $8d
    db $fc
    ldh [c], a
    db $fc
    ld a, a
    ld c, $16
    ld [de], a
    ld c, $46
    db $10
    inc bc
    ret nz

    and a
    ldh [$ff30], a
    sbc l
    rst RST_18
    xor $07
    rra
    dec bc
    ld [hl], d
    ld l, a
    push de
    ld c, [hl]
    ld sp, $d835
    push hl
    ld h, $19
    add a
    jp $2226


    pop de
    ld d, $68
    push af
    dec a
    ld e, $8f
    ld b, a
    ld h, d
    nop
    db $10
    inc b
    ld b, [hl]
    and c
    jp Jump_02b_79c1


    add h
    ccf
    inc c
    ld h, e
    dec d
    ld c, h
    or l
    add hl, de
    adc a
    ldh a, [$fff8]
    ld [hl], $1f
    jp $4731


    jr z, jr_02b_7960

    rrca
    nop
    sub l
    ld h, $09
    or $00
    and b
    ei
    ld a, [hl]
    ld l, a
    dec b
    and b
    ld l, $54
    rra
    ld e, [hl]
    ld [$e204], sp
    ret nz

    jr nz, @+$12

    call $2161
    ld de, $821f
    nop
    db $10
    rst RST_38
    db $fd
    db $fc
    cp $e6
    pop af
    ret nz

    ldh a, [$fffb]
    di
    di
    ld [hl], e
    dec [hl]
    inc h
    add b
    add b
    dec de
    rst RST_38

jr_02b_7960:
    inc bc
    ccf
    ld h, e
    rst RST_08
    sbc a
    ld hl, sp-$40
    sub b

jr_02b_7968:
    db $e4
    reti


    ldh a, [c]
    cp $ff
    ld bc, $001b
    ld [bc], a
    ld hl, $9e44
    rst RST_38
    ld bc, $071b
    inc bc
    adc a
    cp a
    rst RST_38
    ei
    ret


    inc b
    add b
    nop
    ret z

    sub [hl]
    cp $ff
    rst RST_38
    or a
    or a
    rst RST_20
    add [hl]
    add e
    rst RST_28
    rst RST_38
    rst RST_38
    ei
    rst RST_38
    ret nz

    ld a, [bc]
    ld e, $5c
    dec de
    rst RST_38
    inc b
    ld a, a
    rra
    ld e, a
    rst RST_38
    ei
    pop af
    db $eb
    xor b
    ld d, l
    adc $9c
    rst RST_38
    rst RST_38
    add hl, sp
    add a
    jr c, jr_02b_7968

    inc c
    ld [bc], a
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    rst RST_18
    ld a, a
    ld l, a
    add a
    ei
    jp nc, $d2eb

jr_02b_79b6:
    push af
    add b
    set 6, d
    sbc $9a
    and l
    adc a
    adc a
    ld h, a
    dec bc

Jump_02b_79c1:
    add h
    ld c, d

jr_02b_79c3:
    rla
    and l
    add d
    inc a
    sub b
    ret nz

    ld a, [bc]
    rrca
    rst RST_38
    rst RST_28
    db $eb
    rst RST_00
    or a
    ld d, e
    rst RST_00
    dec de
    rst RST_38
    ld [bc], a
    cp $ff
    db $fc
    db $fc
    ld sp, hl
    rst RST_38
    ei
    db $e3
    rst RST_00
    ld d, e
    adc a
    jp c, $e076

    add hl, de
    ld de, $30e0
    rst RST_28
    di
    add hl, sp
    ld bc, $1afc
    dec b
    ld b, $f3
    ld b, c
    jr nc, jr_02b_79c3

    xor b
    ldh [rP1], a
    ldh a, [rNR34]
    adc e
    sub $ff
    rst RST_00
    rlca
    nop
    rlca
    inc bc
    rst RST_38
    rst RST_10
    rst RST_38
    rst RST_38
    cp $7c
    adc h
    ld d, a
    dec l
    sub [hl]
    dec de
    rst RST_38
    ld [bc], a
    rrca
    ld b, $ab
    ld a, [$1b1f]
    rst RST_38
    inc bc
    ld a, a
    pop af

Jump_02b_7a17:
    ld hl, sp-$12
    dec de
    rst RST_38
    inc b
    rst RST_00
    jp $f8a1


    or b
    ldh [$fff3], a
    db $fc
    ei
    db $fc
    rst RST_38
    nop
    ld a, [de]
    inc e
    ld [$9040], sp
    ccf
    db $10
    ld hl, $5868
    ld b, c
    sub c
    jr nz, jr_02b_79b6

    inc c
    ret


    add e
    dec sp
    inc de
    ccf
    ld a, a
    rst RST_38
    sbc a
    push af
    ldh a, [c]
    add sp, -$17
    db $eb
    push bc
    xor b
    sub e
    db $ed
    rst RST_20
    call c, $fb52
    ld [hl-], a
    ld d, e
    adc c
    ld a, b
    dec b
    inc de
    inc e
    add a
    db $eb
    and $1c
    sbc b
    xor h
    sub $76
    inc sp
    sub e
    push bc
    xor $39
    db $dd
    ld b, a
    ld bc, $e023
    ldh a, [$fffc]
    ld a, [hl]
    db $10
    cp $23
    reti


    ld l, l
    rra
    ld e, a
    ld a, a
    adc a
    nop
    nop
    sub b
    ld l, d
    rst RST_38
    ld hl, sp+$07
    pop af
    ld a, $07
    ld bc, $c400
    rst RST_38

jr_02b_7a7f:
    ld e, [hl]
    adc e
    ld de, $d6ab
    ld a, a
    add hl, bc
    ld b, b
    ld de, $ff87
    rst RST_38
    rst RST_18
    rst RST_38
    dec bc
    ccf
    add a
    cp $fe
    ret nc

    ret nz

    db $fc
    rst RST_30
    ld b, c
    ld [hl], e
    rra
    rrca
    rlca
    dec de
    inc bc
    inc bc
    dec de
    ldh a, [rTAC]
    jp hl


    db $d3
    ld [hl-], a
    dec e
    ld [bc], a
    ld [hl], b
    add sp, -$43
    db $fc
    ld a, [de]
    ld b, b
    jr nc, jr_02b_7a7f

    ret nz

    ld hl, $404f
    add e
    sbc $cc
    ld a, h
    ld [hl], $d7
    and c
    rst RST_38
    call nc, Call_000_0080
    add b
    ld b, b
    and d
    rst RST_38
    rst RST_38
    adc a
    inc bc
    nop
    ld bc, $7703
    rst RST_38
    ld a, [hl+]
    nop
    inc c
    jr jr_02b_7ace

jr_02b_7ace:
    nop
    inc h
    ld [hl], a
    rrca
    inc hl
    rlca
    add b
    ld bc, $0307
    dec bc
    rst RST_38
    rst RST_38
    db $fc
    ldh a, [$ffe0]
    rst RST_08
    cp $78
    rst RST_38
    ld a, a
    ld hl, sp-$01
    ldh a, [$fff1]
    nop
    nop
    db $fc
    ld h, d
    rla
    rst RST_38
    rst RST_38
    ld a, a
    dec bc
    ccf
    nop
    nop
    add b
    db $fd
    rst RST_38
    db $fc
    ld hl, sp-$20
    ccf
    scf
    ld a, e
    rst RST_20
    rst RST_20
    jp $1b82


    nop
    ld [bc], a
    add a
    add c
    add d
    ld [hl-], a
    jr nz, @+$62

    ld [hl], e
    ccf
    rst RST_38
    ld [hl], b
    jr nc, jr_02b_7b2f

    jr nz, @+$32

    rst RST_38
    rst RST_38
    db $fc
    ldh a, [$ff80]
    nop
    jr nz, jr_02b_7b21

    rst RST_38
    rst RST_38
    rra
    nop
    nop
    ld bc, $0300

jr_02b_7b21:
    rst RST_38
    pop hl
    nop
    inc bc
    ld bc, $8183
    ld b, b
    rst RST_38
    rst RST_38
    ld a, a
    ccf
    sbc a
    add a

jr_02b_7b2f:
    jp Jump_000_1bf0


    rst RST_38
    dec b
    db $fc
    ld hl, sp-$01
    rst RST_38
    cp $e0
    ldh [$ffc0], a
    nop
    nop
    rlca
    rra
    ld c, $0f
    rrca
    sbc h
    sbc h
    sbc b
    ld h, e
    cp e
    add sp, -$08
    ldh a, [$fff8]
    ld c, e
    ld bc, $3870
    inc a
    ccf
    ccf
    add hl, de
    add hl, de
    adc b
    jr c, @+$7a

    ld b, $10
    rst RST_00
    pop hl
    ld hl, sp-$22
    ld bc, $3800
    rrca
    ld b, c
    xor b
    ld [hl], d
    nop
    add b
    add hl, sp
    ldh [$ff8c], a
    add b
    ld b, e
    nop
    ld l, b
    jr nc, jr_02b_7b70

jr_02b_7b70:
    ld bc, $001b
    ld [bc], a
    ld h, a
    daa
    rst RST_38
    rra
    adc a
    ld h, e
    inc a
    ld b, $03
    add c
    dec de
    rst RST_38
    inc bc
    ld a, a
    inc e
    nop
    nop
    dec de
    rst RST_38
    ld [bc], a
    ldh [$ffc0], a
    dec de
    nop
    ld [bc], a
    dec de
    rst RST_38
    ld [bc], a
    ld sp, hl
    nop
    jr jr_02b_7bb0

    ld e, $ff
    db $fc
    ld hl, sp-$28
    dec de
    nop
    inc bc
    ldh a, [$ff80]
    dec de
    ldh [rSC], a
    daa
    rlca
    rlca
    rst RST_38
    inc bc
    dec de
    nop
    dec b
    sbc c
    jr @+$1e

    inc a
    nop
    nop
    rra

jr_02b_7bb0:
    rst RST_38
    add b
    nop
    ld [bc], a
    inc bc
    dec e
    inc bc
    add b
    ldh a, [$ff08]
    inc c
    nop
    add b
    ldh [$fffc], a
    ccf
    nop
    rra
    rrca
    add d
    ret nz

    ldh [rP1], a
    ldh [$fff4], a
    adc l
    add b
    nop
    nop
    jr nc, jr_02b_7bff

    jr jr_02b_7bd6

    add $e0
    ld a, b
    inc a
    ld e, b

jr_02b_7bd6:
    inc e
    ld c, $00
    rla
    ld a, [bc]
    jp nz, Jump_02b_70e1

    jr c, jr_02b_7bfc

    rra
    ldh [$fff8], a
    cp b
    ld e, h
    inc a
    ld a, $06
    inc bc
    nop
    inc bc
    ld h, b
    inc d
    adc h
    ld b, l
    pop hl
    ld [hl], b
    nop
    nop
    ret nz

    ldh [$ff3c], a
    ld c, $40
    ld [$000e], sp
    nop

jr_02b_7bfc:
    dec d
    add $f1

jr_02b_7bff:
    ld [$0000], sp
    inc b
    ld bc, $0000
    and b
    ld l, $54
    nop
    and b
    ldh a, [$fff8]
    inc e
    ccf
    rra
    rrca
    ld [hl-], a
    ld e, $1e
    ld c, $00
    nop
    ret nz

    ldh [rP1], a
    rlca
    add l
    set 6, h
    ret z

    ld [hl], $0a
    ld c, b
    rst RST_30
    adc $8b
    pop bc
    ld c, e
    ld l, d
    ld h, $1f
    ld hl, sp+$07
    adc a
    cp e
    ld [hl], c
    xor [hl]
    ld a, h
    ld bc, $403d
    ld d, $0c
    ld sp, $0fc4
    ld b, h
    sub b
    dec sp
    db $ec
    sub d

Call_02b_7c3e:
    ld hl, $cc92
    sbc h
    inc h
    sub d
    db $d3
    jr z, @-$5e

    nop
    ld h, e
    inc b
    sub d
    pop af
    ld hl, $25d3
    ret z

    inc d
    dec de
    rst RST_38
    ld [bc], a
    rst RST_18
    adc [hl]
    ld c, [hl]
    ld a, [hl-]
    or b
    dec de
    rst RST_38
    ld [bc], a
    and e
    ld a, $64
    ld [hl], b
    db $ec
    dec de
    rst RST_38
    inc bc
    cp a
    rra
    rla
    rst RST_10
    ld hl, sp-$0c
    xor $94
    ld b, b
    add b
    ld bc, $7f03
    jr c, jr_02b_7c73

jr_02b_7c73:
    nop
    rlca
    ccf
    di
    db $fc
    rst RST_38
    ld a, a
    ccf
    rra
    rrca
    adc a
    sub a
    ld a, b
    rst RST_38
    db $fc
    db $f4
    and l
    ret nz

    add b
    ret nz

    db $f4
    ld a, [bc]
    ld bc, $4020
    ld h, c
    add b
    inc c
    ld a, [de]
    ld [hl], b
    ld hl, sp+$22
    adc h
    jr nc, jr_02b_7c96

jr_02b_7c96:
    ld bc, $ef71
    ld a, e
    ld [hl], c
    ld [hl], e
    dec d
    add c
    ld h, e
    ld bc, $ff1b
    ld [bc], a
    cp $fc
    ld hl, sp-$08
    ldh a, [$fffb]
    ldh [rP1], a
    nop
    inc c
    db $10
    dec b
    add hl, bc
    rra
    ldh [$ffe0], a
    rra
    rst RST_08
    nop
    ldh a, [$ff38]
    db $fd
    ld [bc], a
    pop hl
    ld hl, sp-$08
    inc c
    ld a, $0f
    adc $87
    rra
    rst RST_38
    rrca
    ld bc, $0000
    rlca
    inc hl
    ld hl, sp-$01
    ld hl, sp-$04
    nop
    nop
    rst RST_38
    db $fc
    ld h, c
    inc bc
    inc bc
    dec de
    nop
    ld [bc], a
    rst RST_38
    rst RST_38
    rlca
    pop af
    ld sp, hl
    ld d, h
    dec b
    nop
    dec de
    rst RST_38
    inc bc
    ldh a, [$ff0e]
    rlca
    nop
    dec de

jr_02b_7ce8:
    rst RST_38
    inc b
    daa
    ld bc, $d000
    xor h
    jp hl


    ldh a, [$fff0]
    ld hl, sp-$04
    rst RST_38
    ld d, b
    ld bc, $1b01
    nop
    ld [bc], a
    jr z, jr_02b_7d0d

    ld c, h
    sub b
    jr nz, @+$03

    ld bc, $0000
    inc c
    ld bc, $8b43
    inc hl
    rrca
    rla
    rra
    rra

jr_02b_7d0d:
    ldh a, [$fff1]
    db $e3
    and $c4
    sbc b
    db $10
    jr nz, @+$14

    jr jr_02b_7d38

    inc l
    inc b
    dec c
    inc c
    ld b, $80
    ld hl, sp-$14
    db $e3
    ld [hl], h
    inc de
    add hl, de
    inc bc
    rlca
    inc bc
    ld bc, $c081
    nop
    ld b, h
    ld c, $c0
    jr nz, jr_02b_7ce8

    cp $dc
    rra
    rrca
    inc bc
    ld bc, $010f

jr_02b_7d38:
    jr nz, jr_02b_7d52

    add c
    call z, $809e
    ld [hl], b
    rst RST_38
    rst RST_38
    ld l, a
    dec d
    dec de
    nop
    inc bc
    ret nz

    ld hl, sp-$02
    rst RST_38
    dec sp
    dec de
    nop
    dec b
    add b
    or $bf
    db $10

jr_02b_7d52:
    dec de
    nop
    inc b
    db $f4
    ret nz

    dec de
    nop
    rlca
    ld [hl], e
    rra
    add hl, bc
    inc b
    dec de
    ld [bc], a
    inc bc
    di
    ld [hl], b
    ret nc

    ldh a, [$ff30]
    ld [hl], b
    ld [hl], b
    jr nc, @+$28

    inc c
    inc c
    dec de
    nop
    dec b
    inc b
    ld c, [hl]
    ld l, $ce
    rst RST_18
    ld e, $30
    ccf
    sbc l
    pop bc
    jp $3173


    db $10
    jr nz, jr_02b_7d7f

jr_02b_7d7f:
    ld a, [bc]
    ld [hl], $6c
    inc de
    inc c
    dec de
    nop
    ld [bc], a
    jr nz, jr_02b_7de5

    xor b
    add d
    add hl, hl
    inc bc
    rra
    ld d, l
    jp nc, $c32c

    ld h, [hl]
    inc de
    adc c
    and h
    inc [hl]
    rst RST_08
    sub c
    inc hl
    ld e, b
    add c
    ld e, c
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02b_7de5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02b_7ef2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02b_7f33:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02b_7f40:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02b_7fe0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
