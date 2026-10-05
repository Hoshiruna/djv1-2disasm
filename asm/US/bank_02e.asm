; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    jr nz, jr_02e_4042

    call Call_02e_6544
    ld c, b
    xor c
    ld c, a
    and l
    ld d, c
    dec c
    ld e, b
    ld c, $58
    or $5d
    rst RST_28
    ld e, a
    db $e4
    ld h, l
    and b
    ld h, [hl]
    ld l, b
    ld l, h
    push de
    ld l, l
    ld sp, hl
    ld [hl], d
    ld a, [$1d72]
    ld a, c
    dec e
    nop
    add b
    rst RST_38
    nop
    rst RST_38
    add hl, bc
    rst RST_38
    daa
    rst RST_38
    rla
    rst RST_38
    rst RST_38
    cpl
    rst RST_38
    db $10
    ldh a, [$ff33]
    rst RST_30
    inc sp
    rst RST_30
    rst RST_38
    and b
    rst RST_38
    ld e, d
    rst RST_38
    db $ed
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh a, [$fff0]
    rrca

jr_02e_4042:
    rrca
    ld hl, sp-$01
    nop
    ld hl, sp-$01
    nop
    cp $00
    cp $50
    cp $b4

Jump_02e_404f:
    cp $ff
    jr @+$20

    call c, Call_02e_58de
    sbc $5c
    sbc $ff
    ld b, $ff
    nop
    rst RST_38
    inc de
    rst RST_38
    scf
    rst RST_38
    rst RST_38
    dec sp
    rst RST_38
    ccf
    ldh a, [rPCM34]
    rst RST_20
    ld [hl], b
    rst RST_20
    ld a, a
    nop
    rst RST_38
    ld c, c
    rst RST_38
    ld a, [$efff]
    dec d
    nop
    ld a, h
    ld sp, $3100
    nop
    nop
    rst RST_38
    ld b, c
    rst RST_38
    xor d
    ld b, a
    ld bc, $f8ff
    rst RST_38
    dec bc
    db $fd
    db $eb
    dec e
    db $eb
    nop
    ld c, e
    rst RST_38
    ld b, l
    ld d, e
    nop
    rst RST_18
    ld c, c
    ld [bc], a
    ld c, h
    inc bc
    ld d, c
    ld b, e
    nop
    push de
    rst RST_30
    ld h, a
    ld b, $53
    dec c
    nop
    inc hl
    dec c
    nop
    ld d, e
    rst RST_30
    ld de, $0d73
    nop
    adc h
    dec bc
    adc d
    ld bc, $8923
    nop
    adc d
    ld bc, $03a4
    and c
    ld h, e
    sbc c
    ld [bc], a
    sbc h
    inc bc
    inc c
    ld bc, $01ae
    inc de
    add e
    nop
    inc de
    rst RST_38
    rst RST_30
    inc bc
    rst RST_00
    inc sp
    inc bc
    ei
    dec sp
    ei
    rst RST_38
    jp Jump_000_03fb


    ei
    inc bc
    jp Jump_000_0303


    adc a
    inc bc
    inc sp
    inc bc
    or e
    reti


    rrca
    db $dd
    nop
    rst RST_28
    ld bc, $ff83
    inc bc
    ld b, c
    ld bc, $0121
    sub b
    nop
    ld c, b
    ld e, a
    nop
    inc h
    nop
    ld [hl], d
    and $00
    add hl, de
    ld [hl-], a
    dec c
    ld a, [de]
    and h
    inc c
    ld de, $110c
    or d
    dec de
    ld d, $0c
    ld de, $2f52
    inc d
    ld [de], a
    cp $39
    db $10
    ld [bc], a
    ld b, $b2
    ld b, $f2
    or [hl]
    or d
    ld l, d
    ccf
    db $10
    ld [bc], a
    ld b, a
    db $10
    ldh [c], a
    ld c, e
    db $10
    ld e, l
    ld l, e
    ld d, b
    dec e
    pop af
    ld d, l
    ld e, e
    jr jr_02e_4186

    inc de
    ld [hl], d
    rla
    ld b, c
    ld h, e
    ld c, c
    ld h, e
    rst RST_00
    ld b, c
    ld l, e
    ld c, c
    ld a, a
    ld de, $1087
    add h
    ld de, $06e2
    rst RST_38
    db $e3
    rlca
    db $e3
    rlca
    ldh [rTAC], a
    ldh [rP1], a
    rla
    ldh [rP1], a
    xor $9b
    stop
    ld l, c
    dec b
    sbc a
    db $10
    sbc h
    inc de
    ei
    nop
    ld a, a
    or d
    ld de, $7807
    nop
    ld a, e
    inc bc
    add a
    ld a, d
    inc bc
    ld a, d
    sbc a
    ld de, HeaderGlobalChecksum
    and a
    db $10
    rst RST_00
    ld de, $7c00
    cp h
    ld de, $1fd2
    inc bc
    ld c, d
    inc de
    ld [hl-], a
    inc sp
    jp hl


    jr jr_02e_41e8

    inc bc
    ld [hl-], a
    inc bc
    ld c, d
    inc sp
    ld [hl-], a
    inc de
    rst RST_30
    db $10
    adc $bc
    db $10
    ld a, e
    nop
    ld a, b
    or d
    db $10
    cp c
    db $10
    ld [bc], a
    ld a, d
    db $e3
    ld [bc], a
    ld a, d
    push bc
    inc de
    and [hl]
    ld [de], a
    ret z

jr_02e_4186:
    ld de, $4900
    ld h, e
    rst RST_38
    ret


    db $e3
    ret


    db $e3
    add hl, bc
    db $e3
    add hl, bc
    inc bc
    rst RST_00
    add hl, bc
    inc bc
    jp hl


    dec hl
    jr nz, @-$63

    ld [de], a
    sbc h
    db $10
    cp a
    cp a
    rra
    cp a
    nop
    cp a
    nop
    add b
    xor d
    inc de
    sbc h
    db $10
    and e
    ld d, $ff
    nop
    ld a, a
    rst RST_38
    nop
    ldh [rVBK], a
    ld h, b
    ld b, a
    ld a, a
    ld [hl], b
    ld h, e
    jr nc, jr_02e_41dc

    jr c, jr_02e_41ec

    inc e
    ret


    inc de
    ld a, $4d
    ld bc, $00fe
    db $fc
    ld bc, $9ffe
    ld [de], a

jr_02e_41c8:
    pop bc
    inc de
    ld a, [$12c9]
    ldh [rSVBK], a
    inc l
    nop
    db $10
    inc e
    ld [$ff0e], sp
    inc c
    rlca
    inc h
    rlca
    ld h, $83

jr_02e_41dc:
    ld [hl-], a
    add e
    rst RST_28
    dec sp
    add c
    add hl, sp
    add c
    ld c, l
    ld bc, $007f
    ccf

jr_02e_41e8:
    rst RST_38
    nop
    ccf
    add b

jr_02e_41ec:
    rra
    add b
    rra
    ret nz

    rrca
    rst RST_38
    ldh [rLCDC], a
    ld [hl], a
    and b
    jr c, jr_02e_41c8

    inc e
    add sp, $3f
    ld c, $f4
    rlca
    ld a, [$fd03]
    ld l, l
    ld hl, $234c
    cp $a8
    ld de, $0080
    ret nz

    add b

jr_02e_420c:
    ldh [$ff85], a
    cp b
    cp a
    nop
    cp h
    nop
    ld a, $82
    cp [hl]
    sub $25
    add a
    rst RST_38
    ldh [$ffc7], a
    ld [hl], b
    ld b, e
    ld a, b
    ld h, c
    jr c, @+$23

    ld a, a
    inc a
    jr nc, @+$20

    sub b
    ld e, $98
    rrca
    ld c, l
    ld [bc], a
    sbc $f1
    ld h, $7f
    nop
    ld b, b
    ld [hl], b
    or d
    dec hl
    call z, $ff07
    db $e4
    rlca
    and $03
    ldh a, [c]
    inc bc
    di
    ld bc, $f91f
    ld bc, $00f9
    db $fc
    and l
    jr nz, @-$54

    ld [hl+], a
    xor l
    jr nz, jr_02e_420c

Jump_02e_424d:
    rlca
    ldh a, [$ff83]
    ldh a, [$ffc3]
    ld a, b
    ldh a, [$ff2b]
    rst RST_38
    cp l
    nop
    sub $24
    ld a, $02
    cp [hl]
    ld [bc], a
    ld b, a
    ld [hl-], a
    jp $1e7d


    ld d, b
    ld sp, $0e63
    ld [hl], e
    ld c, $23
    ld e, c

jr_02e_426b:
    jr nc, jr_02e_42d0

    inc sp
    ld b, $1d
    jr nc, jr_02e_4293

    nop
    jr nz, jr_02e_4275

jr_02e_4275:
    rst RST_38
    ld bc, $3269
    rst RST_38
    ld b, c
    ld a, b
    ld h, b
    inc a
    jr nz, jr_02e_42be

    jr nc, @+$20

    rst RST_38
    db $10
    rra
    jr jr_02e_4296

    ld c, h
    rlca
    ld c, h
    rlca
    ldh a, [$fff8]
    dec h
    and [hl]
    dec h
    ld l, d
    inc sp
    sub b

jr_02e_4293:
    scf
    ld h, [hl]
    inc bc

jr_02e_4296:
    ld h, [hl]
    inc bc
    ld e, a
    ld [hl], e
    ld bc, $0171
    ld a, c
    inc b
    jr nz, @+$7e

    xor e
    jr nc, @-$02

    jr z, jr_02e_42d6

    add hl, hl
    jr nc, @+$05

    ldh a, [$ff81]
    ld hl, sp-$3f
    ld a, h
    ccf
    ld b, c
    ld a, h
    ld h, b
    ld a, $00
    ld a, [hl]
    ret nz

    jr nc, jr_02e_426b

    ld [de], a
    db $fc
    or d
    inc de
    ld [hl], h
    dec [hl]

jr_02e_42be:
    adc h
    rlca
    adc h
    rlca
    add $03
    di
    add $03
    ld h, b
    scf
    ld c, [hl]
    ld bc, $ff01
    ld a, [hl]
    ld a, a
    rst RST_38

jr_02e_42d0:
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a

jr_02e_42d6:
    rra
    rst RST_38
    ld sp, hl
    ld a, a
    ld b, a
    ld bc, $26f0
    rst RST_38
    rst RST_38
    cp $ff
    db $fc
    adc d
    dec bc
    ld b, b
    rrca
    rst RST_30
    jr nc, @+$41

    ld sp, hl
    jr nc, jr_02e_42ed

jr_02e_42ed:
    ld c, c
    ld a, [bc]
    ld b, c
    inc bc
    and e
    rst RST_38
    rlca
    add hl, hl

jr_02e_42f5:
    ld b, b
    rst RST_28
    daa
    scf
    ld b, l
    ld a, a
    ccf
    ld b, h
    add b
    xor [hl]

jr_02e_42ff:
    ld b, a
    ld b, h
    ldh [$ffef], a
    ldh a, [$fff3]
    jr nc, jr_02e_42ff

    add hl, hl
    ld b, b
    inc bc
    cp $69
    ld [hl-], a
    ld [de], a
    nop
    add hl, bc
    nop
    inc b
    nop
    ld [bc], a
    rst RST_38
    nop
    ld hl, $3000
    nop
    inc [hl]
    inc b
    ld [hl], $ff
    ld b, $00
    dec d
    nop
    cpl
    sbc a
    rra
    ld c, a
    rst RST_38
    rrca
    ld h, $07
    sub b
    inc bc
    ld c, b
    ld bc, $4b24
    nop
    rlca
    rst RST_30
    jr nc, jr_02e_42f5

    ld b, a
    ld b, b
    ld h, l
    inc h
    cp $fc
    ld [hl], $7f
    add e
    nop
    ld bc, $000c
    ld e, $00
    ldh a, [c]
    ld sp, $10a0
    ld b, l
    ld a, [$3431]
    ld c, c
    ld b, a
    ld bc, $4110
    ldh [$ffc3], a
    ld b, d
    ret nz

    add b
    ret


    ld b, d
    db $fc
    add hl, sp
    ld c, [hl]
    ld bc, $4148
    ld b, b
    ld b, l
    ld b, b
    ld b, c
    or b
    ld c, l
    ld [hl], $dd
    ld b, $00
    ld d, c
    jr nc, jr_02e_4371

    ld [hl-], a
    ld bc, $3652
    ld b, $ee

jr_02e_4371:
    ld h, b
    ld b, l
    ld bc, $2000
    ld l, e
    ld b, e
    ld a, [hl]
    nop
    ld a, $ff
    add b
    ld e, $4e
    ld c, $26
    ld b, $92
    ld [bc], a
    cp $fc
    ld bc, $3e1f
    rra
    ld a, [hl]
    rlca
    inc a
    add e
    ld a, a
    ld b, $fd
    ld e, $ff
    ld bc, $7e8f
    dec [hl]
    ld b, l
    ld [bc], a
    and c
    ld [hl+], a
    ld a, a
    inc [hl]
    ld b, a
    pop af
    daa
    add h
    ld b, c
    ldh [c], a
    ld b, e
    ld d, b
    ld e, c
    or e
    ld b, a
    jp nz, $4b42

    add b
    ld c, a
    ld e, [hl]
    nop
    ld d, e
    and b
    ld d, a
    db $10
    ld e, l
    push de
    ld l, $ff
    push hl
    ld e, $c5
    ld a, $a5
    ld e, [hl]
    push bc
    ld a, $23
    add l
    ld a, [hl]
    jp z, $3151

    inc a
    ld l, c
    inc [hl]
    inc bc
    push hl
    ld d, d
    ld a, [hl+]
    ld b, c
    ret nz

    rst RST_28
    ld e, a
    cp $5b
    add [hl]
    ld d, a
    ld c, b
    ld b, e
    ret nc

    ld e, l
    adc $10
    cp $04
    rst RST_38
    cp $08
    db $fc
    db $10
    ld hl, sp+$20
    ldh a, [rLY]
    rst RST_38
    ldh [$ff8c], a
    ret nz

    inc e
    add b
    ld a, [hl-]
    ld bc, $ff74
    inc bc
    add sp, $07
    ret nc

    rrca
    and b
    rra
    ld b, b
    rlca
    ccf
    add b
    ld a, a
    nop
    ld e, l
    ld e, [hl]
    ld l, a
    inc b
    ld d, c
    ld b, $51
    ld [$bc53], sp
    jr nc, @+$71

    ld b, d
    ld l, e
    ld bc, $02ff
    rst RST_38
    add h
    ld h, c
    ld de, $f87f
    inc hl
    ldh a, [rBGP]
    ldh [$ff97], a
    ret nz

    jp z, Jump_000_0053

    or b
    ld h, a
    or b
    ld c, l
    inc l
    ld b, c
    ld d, d
    ld b, c
    db $f4
    ld sp, $41c4
    ret nc

    ld c, a
    ldh [c], a
    ld c, a
    inc e
    inc bc
    ld a, a
    ld a, [hl-]
    ld b, h
    ld a, a
    ld e, a
    ld e, a
    jp z, Jump_02e_6043

    ld d, e
    ld e, $6f
    ldh a, [$ff3c]
    ld a, a
    db $f4
    ld l, c
    ld h, [hl]
    ld d, a
    or e
    ld b, a
    nop
    nop
    pop af
    nop
    ld e, a
    inc a
    nop
    rst RST_08
    nop
    rst RST_20
    ld [hl], l
    ld [hl], b
    ld a, $4d
    ld [hl+], a
    ld d, a
    and $00
    ld [hl], c
    ld [hl], e
    ld [hl], b
    sbc [hl]
    ld [hl], e
    ld [hl], b
    ld [hl], e
    ld c, l
    ld [hl+], a
    ld [hl], a
    inc a
    nop
    adc a
    ld [hl], a
    ld [hl], b
    ld [hl], c
    nop
    db $e3
    ld [hl], l
    ld [hl], b
    rst RST_38
    nop

jr_02e_446b:
    nop
    adc [hl]
    ld bc, $01c6
    pop af
    nop
    rst RST_38
    call c, $c920
    jr nc, @-$3b

    inc a
    call nz, $ff1b
    nop
    adc b
    ld c, [hl]
    add b
    ld h, e
    add b
    add hl, sp
    ret nz

    rst RST_38
    cp h
    ld b, b
    reti


    jr nz, jr_02e_446b

    ld b, $82
    dec c
    rst RST_38
    nop
    adc l
    ld sp, $9c00
    nop
    add $01
    db $fd
    ldh a, [c]
    and c
    ld [hl], b
    sbc [hl]
    ld bc, $1820
    nop
    inc l
    rst RST_38
    rst RST_00
    nop
    inc sp
    ret nz

    add hl, de
    ldh [$ff0c], a
    jr nc, jr_02e_4509

    adc c
    db $10
    inc sp
    adc b
    ld h, a
    sla b
    adc a
    sbc c
    ld [hl], b
    ld [$311c], a
    pop af
    ld [hl], a
    ld [hl], b
    sbc a
    sbc a
    db $10
    sbc [hl]
    nop
    rst RST_00
    db $eb
    nop
    di
    ld e, $00
    di
    pop af
    ld [hl], b
    rra
    rrca
    rrca
    ld bc, $110f
    add b
    ld a, [bc]
    ld c, d
    jr jr_02e_44d5

    add b
    rst RST_20

jr_02e_44d5:
    rst RST_08
    sbc [hl]
    rst RST_38
    rst RST_18
    pop hl
    ld l, b
    inc d
    jp nz, Jump_02e_7c18

    di
    rst RST_00
    ld c, b
    inc h
    nop
    jr nc, jr_02e_4557

    rst RST_20
    adc [hl]
    add b
    inc de
    ld bc, $c890
    adc h
    inc h
    ld [hl], b
    rst RST_08
    sbc c
    call z, $31e7
    ld [hl], e
    and $cc
    ret nz

    sbc h
    rst RST_08
    rst RST_20
    rst RST_30
    rst RST_20
    sbc a
    ccf
    rrca
    rst RST_18
    ei
    db $fc
    reti


    di
    rst RST_38
    rst RST_18
    rst RST_08

jr_02e_4509:
    rst RST_38
    rst RST_08
    rst RST_28
    ld a, [bc]
    rst RST_38
    ld [bc], a
    sbc $98
    cp c
    call c, $e7cf
    rst RST_28
    ld a, a
    ld a, a
    ld l, a
    ld sp, hl
    db $fc
    rst RST_38
    rst RST_18
    rst RST_38
    ld sp, hl
    di
    ret nz

    rst RST_08
    rst RST_20
    di
    ld sp, hl
    di
    rst RST_20
    rst RST_08
    ret nz

    di
    ld a, c
    ld e, $8f
    ld e, $7c
    di
    nop
    rst RST_00
    di
    ld a, h
    ld e, $7c
    di
    rst RST_20
    nop
    rst RST_08
    di
    ld sp, hl
    ld a, h
    ld sp, hl
    di
    adc a
    nop
    nop
    ldh a, [$ff3d]
    rst RST_08
    rst RST_20
    rst RST_08
    ld a, $00
    nop
    and $71
    cp h
    sbc [hl]
    ld a, h
    ld [hl], e
    jr nz, jr_02e_4552

jr_02e_4552:
    inc a
    rst RST_08
    and $73
    pop af

jr_02e_4557:
    rlc a
    nop
    ld [hl], l
    cp h
    rst RST_08
    rst RST_20
    rst RST_08
    ld a, $04
    nop
    and $75

Call_02e_4564:
    add hl, sp
    ld e, $34
    ld e, e
    jr nz, jr_02e_456a

jr_02e_456a:
    ld a, h
    rra
    rst RST_08
    ld [hl], e
    rst RST_20
    rst RST_08
    nop
    rra
    rst RST_20
    ld sp, hl
    db $fc
    pop af
    rst RST_00
    rst RST_38
    rrca
    xor a
    rst RST_10
    pop af
    ld a, h
    ld sp, hl
    di
    rst RST_08
    nop
    adc $e3
    ld sp, hl
    db $fc
    ld sp, hl
    rst RST_20
    adc [hl]
    nop
    dec [hl]
    sbc h
    add $f7
    rst RST_00
    sbc a
    inc a
    nop
    rst RST_00
    or e
    cp c
    adc h
    sbc c
    inc sp
    rst RST_20
    nop
    adc a
    db $e3
    ld sp, hl
    ld a, [$f7fd]
    rst RST_38
    ret nz

    db $fc
    sbc $8f
    rst RST_20
    rst RST_08
    sbc a
    inc a
    nop
    rst RST_20
    ld a, e
    sbc l
    add $cc
    sbc c
    ld [hl], e
    nop
    cp c
    call z, Call_02e_73e7
    di
    and $cc
    nop
    sbc h
    adc $e7
    di
    rst RST_20
    sbc h
    inc a
    ret nz

    ld h, a
    ld [hl], c
    inc a
    ld a, l
    or a
    ld l, e
    rst RST_08
    db $10
    sbc a
    rst RST_08
    rst RST_20
    ei
    ld sp, hl
    rst RST_10
    sbc [hl]
    inc h
    cp c
    call c, $e7ce
    rst RST_08
    inc a
    ld [hl], c
    nop
    ld sp, hl
    rst RST_38
    ld a, $9f

jr_02e_45dd:
    ld a, [hl]
    ld hl, sp-$0d
    and b
    rst RST_08
    rst RST_20
    ld a, e
    cp a
    di
    and a
    rst RST_08
    jr nz, jr_02e_45dd

    ld a, c
    ld e, $8f
    ld e, $7c
    di
    nop
    rst RST_10
    di
    ld l, h
    ld a, $3c
    di
    rst RST_20
    nop
    rst RST_28
    di
    ei
    ld a, l
    ld sp, hl
    di
    adc [hl]
    nop
    adc a
    db $e3
    ei
    cp $f5
    rst RST_20
    sbc a

Call_02e_4608:
    nop
    sbc a
    di
    ld sp, hl
    ld hl, sp-$0b
    rst RST_20
    sbc a
    nop
    xor a
    di
    ld sp, hl
    ld hl, sp-$0b
    db $e3
    sbc a
    ld a, [bc]
    nop
    ld [$6074], sp
    ld b, b
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    ld a, [bc]
    nop
    rrca
    ld a, [bc]
    rst RST_38
    ld b, $00
    nop
    inc de
    sub l
    sub e
    sub c
    or c
    ld a, [bc]
    nop
    add hl, bc
    add b
    ld h, b
    db $10
    jr z, jr_02e_466c

    ld [bc], a
    nop
    add b
    ld e, a
    cpl
    ld d, a
    ccf
    ld e, [hl]
    dec a
    ld a, e
    ccf
    ld h, b
    jr nc, jr_02e_4650

    nop
    dec b
    ld a, [bc]
    ld a, a
    rlca
    nop
    add b
    ld [hl], b
    jr nc, jr_02e_4670

jr_02e_4650:
    ld a, [bc]
    nop
    ld [bc], a
    ld a, [bc]
    ld a, a
    ld b, $0a
    nop
    add hl, bc
    ld a, [bc]
    jr nz, jr_02e_465f

    db $10
    jr nc, jr_02e_465f

jr_02e_465f:
    add hl, bc
    add c
    ld bc, $0a05
    dec d
    dec c
    jr jr_02e_4688

    ld a, [bc]
    ld bc, $0502

jr_02e_466c:
    ld b, e
    ld e, a
    rra
    rra

jr_02e_4670:
    inc e
    nop
    ld b, d
    ld d, [hl]
    dec e
    ld a, [bc]
    dec d
    ld b, $06
    inc b
    jr jr_02e_4686

    nop
    inc b
    ld e, b
    ld a, [bc]
    ld e, h
    ld [bc], a
    ld e, b
    ld e, h
    ld e, h
    ld c, h

jr_02e_4686:
    ld a, [bc]
    ld e, h

jr_02e_4688:
    ld [bc], a
    ld c, h
    ld e, b
    ld e, b
    ld c, h
    ld e, b
    ld e, h
    ld c, [hl]
    ld e, d
    ld d, h
    ld e, b
    ld e, b
    ld c, b
    ld e, b
    ld e, b
    ld c, b
    ld d, b
    ld c, b
    ld d, b
    ld c, b
    ld d, b
    ld b, b
    ld a, [bc]
    ld d, [hl]
    inc c
    ld d, b
    ld a, [bc]
    ld b, b
    ld [bc], a
    ld b, c
    ld b, a
    rra
    ld a, [bc]
    nop
    ld [bc], a
    inc bc
    ld b, e
    ld a, [bc]
    ld e, a
    ld [bc], a
    ld e, h
    ld b, b
    ld b, d
    ld d, [hl]
    ld a, [bc]
    nop
    inc c
    ld a, [bc]
    ld b, b
    ld b, $60
    ld h, b
    ld a, [bc]
    nop
    add hl, bc
    ld h, h
    inc a
    rrca
    ld a, [bc]
    nop
    ld [bc], a
    rst RST_08
    rst RST_18
    ld b, $13
    add hl, bc
    inc c
    rlca
    nop
    add e
    rst RST_00
    and a
    db $d3
    di
    res 0, [hl]
    nop
    nop
    add b
    ld h, b
    ld hl, sp+$6c
    scf
    inc sp
    dec de
    rrca
    rst RST_08
    ld a, [bc]
    nop
    dec b
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    ret c

    ret c

    ld a, [bc]
    ret nz

    ld [bc], a
    ret c

    rst RST_18
    rst RST_08
    rst RST_00
    call z, $cfcc
    rst RST_18
    ret c

    ret c

    sbc b
    add b
    ld a, [bc]
    ret nz

    ld [bc], a
    ldh [$ff60], a
    ld l, a
    ld l, a
    ld a, [bc]
    ret c

    ld [bc], a
    rst RST_18
    rst RST_08
    ld a, [bc]
    ret nz

    ld a, [bc]
    ld a, [bc]
    nop
    jr @+$03

    ld bc, $000a
    rlca
    add b
    add b
    ld b, b

Call_02e_4717:
    ld b, b
    jr nz, jr_02e_471a

jr_02e_471a:
    add b
    ld b, b
    ld hl, $1321
    rrca
    rlca
    nop
    add h
    add h
    ld a, [bc]
    inc b
    inc b
    nop
    ld [bc], a
    ld b, $0c
    ld [$3018], sp
    jr nz, jr_02e_473a

    nop
    rlca
    ldh [rNR32], a
    inc bc
    ld a, [bc]
    nop
    ld [bc], a
    ldh a, [$ff1f]

jr_02e_473a:
    jr nz, jr_02e_474c

    sub b
    ld [hl], b
    ld a, [bc]
    nop
    inc bc
    inc bc
    ld a, [bc]
    nop
    ld b, $04
    inc b
    dec b
    dec b
    ld b, $04
    nop

jr_02e_474c:
    nop
    ld b, b
    ret nz

    add b
    ld a, [bc]
    nop
    ld b, $01
    ld [bc], a
    inc c
    db $10
    jr nz, @-$1e

    ret nz

    ld b, b
    add b
    ld a, [bc]
    nop
    inc c
    jr nc, jr_02e_4779

    inc b
    ld [bc], a
    ld bc, $000a
    ld b, $03
    ld c, $30
    ret nz

    nop
    nop
    inc e
    db $e4
    add h
    inc c
    ld [$0a18], sp
    nop
    ld [bc], a
    ld [$1408], sp

jr_02e_4779:
    inc d
    inc h
    ld a, [bc]
    nop
    ld [$0203], sp
    ld bc, $4041
    and b
    and b
    nop
    add b
    ld a, b
    rlca
    add b
    ret nz

    ld b, b
    ld h, b
    ld a, [bc]
    nop
    rlca
    db $10
    db $10
    jr nc, @+$22

    jr nz, jr_02e_47d6

    ld b, b
    nop
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, c
    ld b, c
    add c
    add c
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    adc b
    nop
    db $10
    db $10
    ld [$0408], sp
    inc b
    ld [bc], a
    nop
    jr nc, jr_02e_47c2

    ld [$040c], sp
    ld b, $02
    nop
    ld a, [bc]
    rst RST_38
    ld b, $ef
    dec bc
    rra
    ccf
    ccf
    ld a, a
    ccf

jr_02e_47c2:
    ld a, a
    ccf
    rst RST_28
    rst RST_30
    sub l
    jp z, $94da

    ld [$77fd], a
    db $eb
    ld l, a
    inc hl
    ld b, l
    sub l
    db $db
    rst RST_38
    nop
    reti


jr_02e_47d6:
    ld c, d
    jp z, $da4b

    nop
    nop
    rst RST_38
    db $ec
    ld l, d
    ld l, h
    ld l, [hl]
    ld c, [hl]
    nop
    nop
    ld a, [bc]
    rst RST_38
    ld b, $00
    ld a, [bc]
    rst RST_38
    inc bc
    ccf
    jp $fffc


    ld h, b
    ld sp, $0f1b
    ld c, $04
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_20
    sbc a
    ld a, a
    ld a, [bc]
    rst RST_38
    ld [bc], a
    ld a, [bc]
    nop
    rlca
    ld a, [bc]
    rst RST_38
    ld [bc], a
    rst RST_30
    rst RST_28
    sbc a
    ld a, a
    ld a, [bc]
    nop
    ld [$ff0a], sp
    inc b
    cp $fe
    nop
    ld a, [bc]
    cp a
    ld [bc], a
    ld a, a
    ld a, a
    rst RST_38
    rst RST_38
    nop
    ld b, $7e
    ld a, d
    ld b, [hl]
    ld a, [bc]
    ld c, [hl]
    dec c
    ld e, l
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, d
    ld h, [hl]
    ret nz

    ld b, e
    sbc h
    ret nz

    nop
    nop
    ld b, b
    ret nz

    ld b, [hl]
    ld a, [bc]
    ld c, [hl]
    ld b, $4c
    ld b, [hl]
    ld e, [hl]
    ld e, [hl]
    ld a, h
    ld a, b
    ld h, b
    nop
    ld a, [bc]
    sbc $1e
    call c, $c00a
    dec bc
    pop bc
    add $d8
    ret nz

    ld b, b
    ld b, c
    ld b, a
    rra
    ld a, a
    ld a, [bc]
    rst RST_38
    ld [bc], a
    ret nz

    jp $0adc


    ret nz

    inc b
    nop
    nop
    inc e
    ld a, h
    ld l, h
    ld a, [bc]
    inc c
    rrca
    inc e
    ld a, h
    ld h, b
    ld a, [bc]
    nop
    inc b
    ld bc, $1702
    dec e
    nop
    add b
    rst RST_38
    db $fd
    nop
    rst RST_38
    nop
    ccf
    ret nz

    sbc a
    ldh [rIE], a
    cp h
    ret nz

    sbc h
    ldh [$ff9c], a
    ldh [$ff94], a
    ldh [rIE], a
    add b
    nop
    and b
    ld b, b
    ldh a, [rP1]
    nop
    ld h, b
    rst RST_30
    db $10
    ld h, b
    add b
    rla
    nop
    sub b
    ld h, b
    sbc h
    ldh [$fff5], a
    cp b
    add hl, bc
    nop
    sbc l
    dec h
    ld [bc], a
    cp a
    ret nz

    cp a
    ret nz

    rst RST_18
    sub b
    ld h, b
    adc b
    ld [hl], b
    add b
    inc sp
    ld [bc], a
    xor b
    ld [hl], b
    ld a, a
    ld a, b
    ldh a, [$ff28]
    ldh a, [$fffb]
    ret nz

jr_02e_48a9:
    cp l
    dec b
    nop
    cp $2c

jr_02e_48ae:
    ld bc, $c0bf
    cp l
    jp nz, $c4fb

    ld [$f0ff], sp
    sbc b
    ld h, b
    ret c

    jr nz, jr_02e_48a9

    db $10
    ld hl, sp-$01
    nop
    add sp, $10

jr_02e_48c3:
    ret z

    jr nc, jr_02e_48ae

    db $10
    rst RST_38
    rst RST_38
    ret nz

    sbc $e0
    rst RST_18

jr_02e_48cd:
    ldh [$ffce], a
    ldh a, [$ffde]
    cp $65
    nop
    adc $f0
    rst RST_10
    add sp, $28
    db $10
    jr z, @+$01

    db $10
    ld [$5830], sp
    jr nc, jr_02e_494a

    jr nc, @+$1a

    rst RST_38
    jr nc, jr_02e_492f

    jr nc, jr_02e_4941

    jr nz, @+$01

    ret nz

    rst RST_30
    cp e
    ret z

    rst RST_38
    dec l
    nop
    rst RST_38
    ret nz

    cp $05
    nop

jr_02e_48f7:
    rst RST_00
    rst RST_38
    ld hl, sp-$28
    jr nz, jr_02e_48cd

    jr nz, jr_02e_48f7

    nop
    jr c, @+$01

    nop
    jr jr_02e_4905

jr_02e_4905:
    sbc b
    nop
    xor b
    db $10

jr_02e_4909:
    sub b
    rst RST_38
    jr c, @-$3b

    db $fc
    rst RST_00
    ld hl, sp-$55
    call nc, $ffbf
    ret nz

    ld a, [$dcc5]
    db $e3
    call c, $c8e3
    rst RST_38
    rst RST_20
    ret nc

    jr c, @-$1e

    jr jr_02e_48c3

    jr jr_02e_4909

    rst RST_38
    jr @-$16

    db $10
    add sp, $10
    ld a, b

jr_02e_492c:
    add b
    ld hl, sp-$01

jr_02e_492f:
    nop
    pop bc
    and $dd
    and $e7
    adc $e6
    rst RST_38
    rst RST_08
    and $cf
    push af
    adc $d1
    xor $d0
    ccf

jr_02e_4941:
    rst RST_28
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [$ffd1]
    nop
    ret nc

jr_02e_494a:
    ld bc, $5cfe
    ld bc, $e8d7
    ret nc

    rst RST_28
    jp nc, $d2ed

    rst RST_38
    db $ed
    sbc $e1
    db $dd
    ldh [c], a
    rst RST_18
    ldh [$ff9f], a
    ei
    ret nz

    ldh a, [$ffd3]
    nop
    ld h, h
    add b
    jr c, @-$3e

    jr z, @+$01

    ret nz

jr_02e_496a:
    jr nc, jr_02e_492c

    and b
    ld b, b
    ldh [rP1], a
    ccf
    rst RST_38
    and b
    ld c, a
    ld h, b
    add a
    ldh a, [$ffd3]
    add sp, -$07
    ld a, a
    call nz, $c4e9
    ld sp, hl
    call nz, $c1fc
    ldh a, [rSB]
    push af
    ret nc

    inc de
    db $10
    ret c

    sbc c
    nop
    ld e, $00
    ld [$ff00], a
    db $fc
    ret nz

    sub e
    ldh [$ffbb], a
    ret nz

    sbc d
    pop hl
    rst RST_38
    sbc h
    pop hl
    jp c, $cbe0

    ldh a, [$ffdf]
    ldh [rIE], a
    ld l, d
    nop
    add sp, $00
    halt
    add b
    jr nc, jr_02e_496a

    rst RST_30
    ld a, [hl-]
    ret nz

    ld a, $99
    nop
    ld d, b
    add b
    sbc [hl]
    pop hl
    rst RST_38
    xor a
    ret nc

    xor a
    ret nc

    adc a
    ldh a, [$ffd9]
    ldh [rIE], a
    di
    ldh [$ffc1], a
    ldh [$ffd3], a
    ldh [$ff50], a
    add b
    rst RST_38

jr_02e_49c7:
    ret nc

    nop
    ret nz

    db $10
    ldh a, [rP1]
    xor b
    ld b, b
    rst RST_28
    sub b
    ld h, b
    ldh a, [rDIV]
    cp [hl]
    nop
    ldh a, [$ffd8]
    pop hl
    ld [hl], a
    reti


    ldh [$ffd1], a
    ld h, l

jr_02e_49de:
    db $10
    jp nz, $d2e1

    ld l, e
    db $10
    ei
    ld a, b
    add b
    ld [hl], b
    dec d
    ld [hl], b
    add b
    ld e, b
    and b
    jr c, jr_02e_49de

    ret nz

    pop de

jr_02e_49f1:
    db $e3
    call nc, Call_000_00ab
    db $db
    ldh [$ffdd], a
    ei

jr_02e_49f9:
    ldh [$ffdc], a
    ld h, e
    ld [bc], a
    ld [hl], b
    add b
    ld d, b
    and b
    jr nc, jr_02e_49f1

    ld sp, hl
    nop
    jr nc, jr_02e_49c7

    ldh [rNR11], a
    nop
    ldh [rP1], a
    call $f09f
    adc $f1
    sbc $e1
    xor d
    ld bc, $01aa
    sbc h
    cp a
    db $e3
    ld b, b
    add b
    nop
    ret nz

    add b
    or e
    db $10
    ld bc, $c1ff
    ld b, d
    add d
    ld c, h
    adc h
    jr c, @-$26

    nop
    db $db
    nop
    ld bc, $12c1
    ld [bc], a
    ld bc, $11c8
    inc b
    inc bc
    rst RST_38
    jr nz, jr_02e_49f9

    nop
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    rst RST_38
    ld [bc], a
    add b
    add d
    nop
    add d
    nop
    ld b, $00
    rst RST_38
    ld [hl], $08
    ld [hl], $08
    or $08
    add $38
    rst RST_38
    ldh [c], a
    inc e
    add [hl]
    ld a, b
    ld b, d
    db $fc
    ld d, b
    xor $7f
    push af
    xor d
    ld b, l
    cp d
    ld b, c
    cp [hl]
    ld b, b
    inc l
    nop
    cp l
    ld b, b
    ld sp, hl
    ld [de], a
    jp nc, $c225

    dec [hl]
    ld [bc], a
    inc hl
    add b
    rst RST_38
    ld [hl], a
    nop
    rst RST_30
    nop
    rst RST_30
    call z, $cc34
    rst RST_30
    inc [hl]
    db $fc
    inc b
    db $10
    ld hl, $bc44
    ld l, h
    or h
    rst RST_38
    ld l, h
    or h
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld [$ef06], sp
    ld [$0a06], sp
    inc b
    jr z, jr_02e_4ab3

    db $10
    inc c

jr_02e_4a94:
    inc b
    ld a, a

jr_02e_4a96:
    ld [bc], a
    inc b
    ld [bc], a
    inc c
    ld [bc], a
    ld c, $00
    ld [hl], $23
    rst RST_38
    ld a, [de]
    inc b
    sub d
    db $ec
    sub d
    db $ec
    ld [de], a
    db $ec
    rst RST_38
    sub b
    xor $92
    db $ec
    ccf
    ret nz

    rst RST_38
    ld a, a
    rst RST_38
    rst RST_30

jr_02e_4ab3:
    ld a, a
    jr z, @-$27

    inc l
    db $d3
    inc l
    db $d3
    rst RST_38
    jr z, jr_02e_4a94

    jr z, jr_02e_4a96

    rst RST_38
    nop
    rst RST_38
    rst RST_38
    ld a, a
    ld a, e
    add a
    and b
    ld [hl], a
    and b
    ld [hl], a
    add d
    dec bc
    ld [hl+], a
    cp $5a
    ld hl, $ff7e
    and h
    ld e, b
    ldh [rNR32], a
    call nz, Call_000_38fd
    ld [hl], h
    ld hl, $00fc
    ld l, [hl]
    ret nc

    cp [hl]
    ldh [$ffef], a
    db $10
    inc c
    inc d
    ld [$2182], sp
    jr nz, @+$1a

    jr nz, @+$01

    jr jr_02e_4b10

    jr jr_02e_4b18

    db $10
    ld e, $00
    ld d, $ff
    ld [$0a14], sp
    inc d
    ld a, [bc]
    inc h
    ld a, [de]
    inc h
    rst RST_38
    ld a, [de]
    jr z, @+$18

    jr z, jr_02e_4b19

    ret z

    rst RST_30
    add b
    rra
    rst RST_38
    add b
    rst RST_38
    ld e, d
    and l
    and d
    ld hl, $21a2

jr_02e_4b10:
    ld bc, $7e00
    xor a
    inc l
    ld bc, $00fe

jr_02e_4b18:
    rst RST_38

jr_02e_4b19:
    ld l, e
    sub h
    or b
    inc hl
    rst RST_38
    dec b
    ld a, [$c03c]
    cp $00
    ld a, [hl-]
    call nz, $feff

jr_02e_4b28:
    nop
    ld a, $c0
    ld e, d
    and h
    ld a, $c0
    rst RST_38
    or $08
    ld a, [hl+]
    db $10
    add hl, hl
    db $10
    ld a, [hl+]
    db $10
    cp a
    ld b, l
    jr nc, @+$58

    jr nz, jr_02e_4b95

    jr nz, jr_02e_4b28

    ld hl, $fb30
    ld e, $2c
    sbc c
    jr nz, @+$56

    ld a, [hl-]
    ld d, h
    ld a, [hl-]
    ld e, h
    db $db
    ld [hl-], a
    ld c, h
    ei
    jr nz, @-$4e

    rst RST_08
    xor d
    dec h
    sub h
    ld l, e
    ld l, a
    ld l, a
    db $10
    jr z, @-$7e

    or b
    ld hl, $9b64
    or b
    ld hl, $3cff
    jp Jump_000_00ff


    inc b
    nop
    cp a
    ld b, b
    rst RST_38
    ld c, $f1
    nop
    rst RST_38
    dec l
    jp nc, $ff00

    rst RST_38
    ld h, d
    sbc l
    rst RST_38
    nop
    nop
    nop
    or $08
    cp $d6
    ld hl, $10ee
    ld a, [hl]
    add b
    cp [hl]
    ld b, b
    ret nz

    ld h, d
    dec l
    jr nc, @+$59

    jp hl


    jr nz, jr_02e_4bce

    add hl, sp
    db $fc
    ld hl, $7a04
    ld d, h
    scf

jr_02e_4b95:
    rst RST_38
    ld [de], a
    db $ec
    ld d, $ec
    nop
    cp $04
    cp $fd
    ld [de], a
    ld b, e
    jr nz, jr_02e_4ba5

    db $fc
    nop

jr_02e_4ba5:
    cp $89
    ld [hl], b

jr_02e_4ba8:
    rst RST_38
    and [hl]
    ld e, c
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    xor h
    ld d, e
    rst RST_38
    inc l
    db $d3
    dec l
    db $d3
    adc h
    ld [hl], e
    rst RST_38
    nop
    cp a
    db $10
    rst RST_20
    nop
    rst RST_30
    ld b, b
    or a
    add [hl]
    ld sp, $ff45
    or [hl]
    ld bc, $10f6
    nop
    jr nz, jr_02e_4ba8

    ld h, b
    ld a, a

jr_02e_4bce:
    call c, $dc20
    inc b
    ld hl, sp+$44
    cp b
    sbc d
    ld sp, $56fb
    ld hl, $20ea
    ld hl, $2255
    ld d, d
    dec h
    cp $a6
    ld sp, $2651
    inc c
    ld [hl], d
    inc c
    ld [hl], d
    ld [$76fd], sp
    or h
    ld sp, $740a
    ld [$0076], sp
    ld a, [hl]
    rst RST_38
    db $10

jr_02e_4bf7:
    xor $04
    cp $00
    cp $02
    db $fc
    ei
    ld b, $fc
    ld h, [hl]
    inc sp
    pop hl
    sbc [hl]
    reti


    and [hl]
    ld sp, hl

jr_02e_4c08:
    rst RST_38
    add [hl]
    jp hl


    sub [hl]
    db $eb
    sub h
    ld l, d
    sub l
    ld [$15bf], a
    ldh [c], a
    dec e
    inc b
    rst RST_30
    ld [hl+], a
    pop hl
    jr nc, jr_02e_4c7d

    ld a, [$30e1]
    ld [bc], a
    jp hl


    jr nc, jr_02e_4c25

    rst RST_30
    add b
    ld a, h

jr_02e_4c25:
    add b
    rst RST_38
    ld a, h
    and b
    ld e, h
    jr nz, jr_02e_4c08

    ldh [$ff5c], a
    and b
    sbc $f9
    jr nc, jr_02e_4c53

    call c, $2750
    nop
    ld b, c
    ld b, h
    inc sp
    rst RST_28
    ld b, h
    inc sp
    jr z, jr_02e_4c52

    ld a, [bc]
    ld b, c
    nop
    ld a, [hl]
    ld b, d
    db $fd
    inc a
    ld [de], a
    ld b, e
    adc d
    inc [hl]
    adc d
    inc [hl]
    ld c, $b0
    or $60
    dec a
    adc d

jr_02e_4c52:
    ld [hl], l

jr_02e_4c53:
    ld [hl], d
    dec sp
    ld [bc], a
    rst RST_30
    ld [de], a
    rst RST_20
    sub a
    ld [bc], a
    rst RST_30
    ld b, d
    add a
    ld [hl], $20
    sub l
    jr nc, jr_02e_4bf7

    add hl, sp
    jr z, @+$01

    inc de
    jr nz, @+$1d

    ld [hl+], a
    add hl, de
    ld [hl+], a
    add hl, de
    inc d
    db $fd
    add hl, bc
    ld l, b
    ld b, c
    ld de, $0a0c
    or h
    ld a, [bc]
    or h
    rst RST_38
    nop
    cp [hl]
    nop
    cp [hl]

jr_02e_4c7d:
    ld b, b
    sbc [hl]
    ld c, d
    sbc h
    rst RST_08
    ld [$1cde], sp
    adc $c2
    ld sp, $4182
    inc d
    xor $fe
    adc b
    ld b, c
    db $10
    xor $8c
    ld [hl], e
    inc c
    di
    ld c, $ff
    pop af

jr_02e_4c98:
    ld l, $d1
    xor [hl]
    pop de
    xor d
    push de
    xor h
    rst RST_38
    db $d3
    xor h
    db $d3
    nop
    rst RST_30
    inc hl
    or $21
    cp $a3
    ld b, b
    inc bc
    or $81
    halt
    add b
    ld [hl], a
    add b
    rst RST_18
    ld [hl], a
    ld b, h
    cp b
    ld h, h
    sbc b
    or d
    ld b, c
    jr nz, jr_02e_4c98

    rst RST_38
    and b
    ld e, h
    and h
    ld e, b
    and h
    ld e, b

jr_02e_4cc3:
    ld de, $da0c
    inc sp
    jr nz, @+$0e

    jr z, jr_02e_4cec

    ld [$2006], sp
    ld hl, $ce90
    rst RST_38
    and b
    ld c, [hl]
    ldh [$ff4e], a
    ld [$c8e6], sp
    ld h, [hl]
    ccf
    jr z, jr_02e_4cc3

    ld d, b
    ld h, [hl]
    inc h
    ld [hl], d
    ld l, b
    ld sp, $2344
    db $eb
    db $10
    xor $68
    ld sp, $51a8

jr_02e_4cec:
    ld h, $aa
    ld d, l

jr_02e_4cef:
    and d
    rst RST_30

jr_02e_4cf1:
    ld e, l
    xor d
    ld d, l
    ld h, b
    inc hl
    jr nz, jr_02e_4cef

    jr nz, jr_02e_4cf1

    ld h, e
    ld h, b
    or a
    ld a, [bc]
    ld d, c
    ld [hl], b
    daa
    ld [hl], h
    inc hl
    inc b
    inc bc
    ret z

    inc de
    cp $c2
    inc de
    nop
    nop
    ld [hl], h
    ld [hl-], a
    cp d
    jr nc, jr_02e_4cc3

    rst RST_38
    jr c, jr_02e_4d4e

    sbc b
    ld e, h
    sbc b
    ld e, b
    sbc h
    ld e, h
    rst RST_28
    adc h
    xor [hl]
    ld c, h
    db $10
    adc l
    ld b, b
    db $10
    db $ec
    inc de
    rst RST_38
    db $eb
    inc bc
    ei
    ld [bc], a
    ld a, [$7b83]
    add e
    db $fd
    ld a, e
    ld [hl], h
    ld sp, $718e
    ld c, $71
    ld c, $11
    cp a
    jp z, $0cd5

    inc sp
    nop
    ld h, e
    add [hl]
    ld sp, $7a00
    jp hl


    jr nc, jr_02e_4d46

    add l

jr_02e_4d46:
    jr nc, @-$3e

    scf
    ld b, b
    or a
    inc d
    ld e, c
    rst RST_38

jr_02e_4d4e:
    ret nc

    inc a
    ret nz

    inc a
    xor h
    ld c, [hl]
    adc [hl]
    ld h, [hl]
    rst RST_38
    ld d, a
    ld h, $56
    inc hl
    dec hl
    inc de
    inc hl
    add hl, de
    db $fd
    dec d
    ld l, l
    ld b, b
    add c
    ld h, c
    sbc d
    ld e, d
    ld c, e
    dec bc
    rst RST_38
    ld b, b
    jr nz, @-$5b

    dec de
    and b
    jr jr_02e_4dc1

    adc [hl]
    rst RST_38
    ld d, b
    adc [hl]
    ld [$7409], sp
    ld [hl], h
    db $e4
    db $e4
    cp a
    ld [$0209], sp
    ld h, c
    ld a, [bc]
    ld [hl], l
    ld [hl], h
    ld sp, $fdc0
    scf
    or b
    ld d, a
    call nz, Call_02e_6e33
    sub c
    ret nz

    inc a
    rst RST_18
    call nz, $8438
    ld a, b
    call nc, Call_02e_50c3
    add h
    ld a, b
    ld a, a
    ret z

    inc [hl]
    db $ec
    db $10
    ld a, [bc]
    inc b
    inc c
    ld hl, $f720
    ld [bc], a
    ld bc, $2b03
    ld d, d
    nop
    nop
    db $ec
    jp nz, $ccff

    ld h, d
    ld [hl], h
    ld [hl+], a
    xor d
    jr nc, jr_02e_4de7

    sbc b
    cp a
    sbc h
    ld c, b
    jp z, Jump_02e_6524

    ld [de], a
    ld d, d
    ld hl, $ff0e

jr_02e_4dc1:
    pop af
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    adc $31
    adc $ff
    ld sp, $013e
    ld a, b
    add a
    ld c, b
    or a
    ld l, c
    rst RST_38
    sub [hl]
    ld a, c
    add [hl]
    ld l, c
    sub [hl]
    ld h, c
    sub [hl]
    ld h, b
    rst RST_28
    sub a
    ld h, c
    sub [hl]
    db $e4
    or l
    nop

jr_02e_4de2:
    ld h, h
    sbc b
    db $ec
    rst RST_30
    db $10

jr_02e_4de7:
    db $fc
    nop
    sub b
    ld bc, $20c0
    ld sp, $ff08
    ld a, [de]
    inc b
    dec c
    ld [bc], a

jr_02e_4df4:
    rlca
    nop
    add hl, bc
    nop
    rst RST_38
    ld d, h
    nop
    xor d
    nop
    ld a, a
    nop
    ld e, [hl]
    add c
    rst RST_38
    and a
    ld b, b
    add hl, hl
    db $10
    ld b, b
    add b
    cp l
    ld b, d
    rst RST_28
    ldh a, [c]
    dec c
    dec e
    ld [bc], a
    dec d
    nop
    sub a
    ld d, b
    and a
    rst RST_38
    ret nc

    inc h
    ld bc, $5f00
    and b
    cp a
    ld b, b
    db $fd
    ld hl, sp+$2d
    jr nc, jr_02e_4de2

    nop
    add b
    nop
    ld d, b
    nop
    push af
    ldh [rHDMA1], a
    ld h, d
    and b
    dec l
    jr nc, @-$14

    dec d
    ret nc

    cpl
    rst RST_38
    db $fc
    inc bc

jr_02e_4e35:
    pop hl
    rra
    pop de
    cpl
    add sp, $17
    rst RST_38
    cp $01
    ccf
    nop
    rrca
    ldh a, [$ffe0]
    rst RST_38
    ei
    ld a, a
    rst RST_38
    ld [hl], l
    ld h, c
    ld [hl], b
    rst RST_38
    add b
    ld a, a
    set 7, a
    inc [hl]
    rst RST_38
    nop
    dec c
    ldh a, [c]
    ldh a, [c]
    db $fd
    jp hl


    rst RST_38
    or $82
    db $fd
    dec b
    ld a, [$a05f]
    rst RST_38
    ld sp, hl
    nop
    ld l, l
    jr nc, jr_02e_4df4

    ld h, d
    cp $00
    ld a, [hl]
    add b
    db $fc
    db $fc
    pop de
    nop
    sbc a
    ld h, a
    inc bc
    inc bc
    ld [$370e], sp
    ccf
    rst RST_38
    nop
    nop
    rlca
    rlca
    dec e
    dec e
    ld [hl], c
    ld a, c
    rst RST_38
    call z, Call_02e_57cc
    ld e, a
    or [hl]
    or $12
    ld [de], a
    rst RST_38
    db $ed
    rst RST_38
    ld l, b
    ld l, h
    inc de
    inc de

jr_02e_4e8f:
    inc c
    inc c
    rst RST_28
    dec b
    rlca
    inc bc
    inc bc
    db $db
    ld d, c
    sub d
    sub d
    ld [hl], l
    rst RST_38
    ld a, a
    ld c, d
    ld c, d
    jp nz, Jump_000_1aca

    ld a, [hl-]
    ld e, h
    rst RST_38
    ld e, h
    ld b, l
    rst RST_00
    ld l, d
    ld a, d
    ld [hl], $36
    jr jr_02e_4e35

    inc e
    inc b
    inc b
    jp z, $eb63

    ld l, a
    daa
    ld d, b
    db $fd
    ld h, b
    ld b, $ff
    ld b, $0c
    inc c
    db $10
    jr jr_02e_4ee1

    jr z, jr_02e_4e8f

    rst RST_30
    rst RST_08
    sub c
    sbc c
    db $ec
    ld l, c
    inc bc
    inc bc
    ld b, $06
    rst RST_38
    inc bc
    inc bc
    inc b
    inc b
    add hl, de
    add hl, de
    ld [hl], $36
    rst RST_38
    ld l, l
    ld l, l
    or d
    or d
    ld l, h
    ld l, h
    rst RST_10
    rst RST_10
    rst RST_38
    ld a, c

jr_02e_4ee1:
    ld a, c
    jp hl


    jp hl


    ld c, e
    ld c, e
    adc e
    sbc e
    rst RST_38
    dec hl
    ccf
    ld [hl], h
    halt
    sub h
    sub h
    inc d
    inc d
    rst RST_38
    dec c
    dec c
    ld d, $16
    ld l, h
    ld l, h
    cp e
    rst RST_38
    rst RST_30
    add c
    adc c
    ld [$724a], sp
    dec h
    dec h
    ld b, [hl]
    ld b, a
    rst RST_38
    cp e
    cp a
    ld [hl], c
    pop af
    jr jr_02e_4f23

    add h
    add h
    rst RST_38
    add e
    add e
    ld b, c
    ld b, c
    sbc h
    sbc h
    db $d3
    ei
    rst RST_38
    and $fe
    inc a
    inc a
    add d
    and d
    ld h, b
    ld h, c
    rst RST_38
    ld a, a
    ld a, a
    sub b

jr_02e_4f23:
    sub b
    and b
    ldh [$ffa0], a
    and b
    rst RST_10
    ld h, b
    ld h, b
    ld b, b
    halt
    ld [hl], b
    ret nz

    ld a, d
    ld [hl], b
    jr nz, jr_02e_4f53

    db $fc
    reti


    ld d, h
    ld sp, hl
    ld h, h
    ld [bc], a
    inc bc
    inc h
    rst RST_20
    ld [$ffef], sp
    db $10
    ld e, [hl]
    jr nz, jr_02e_4f7f

    ld b, b
    ld a, b
    add c
    pop af
    rst RST_08
    nop
    db $e3
    nop
    jp Jump_02e_6051


    sbc a
    ld h, [hl]
    add b
    add b
    rst RST_38

jr_02e_4f53:
    ld b, b
    ret nz

    inc b
    rlca
    ld [$100f], sp
    ld e, $fe
    sub [hl]
    ld [hl], c
    add b
    ldh a, [rSB]
    ldh [$ff03], a
    ret nz

    nop
    rst RST_38
    add c
    nop
    nop
    inc e
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    rst RST_38
    db $10
    ld a, $18
    db $dd
    nop
    inc hl
    nop
    jr nz, @+$01

    ldh [rNR10], a
    ldh a, [$ff08]
    ld a, b
    inc b
    inc a

jr_02e_4f7f:
    ld [bc], a
    rst RST_38
    ld e, $00
    ld c, $c0
    dec b
    jr nz, jr_02e_4f8b

    inc bc
    rst RST_18
    add c

jr_02e_4f8b:
    inc de
    ld de, $3809
    sub $71
    ld bc, $ff0f
    ret nz

    rlca
    jr nz, @+$05

    and e
    ld bc, $81e3
    db $fd
    db $dd
    push bc
    ld [hl], b
    cp d
    sub b
    ld a, $18
    sbc l
    add c
    inc bc
    ld b, d
    jp $801d


    ld l, $ff
    and h
    rlca
    add sp, -$71
    ret nc

    ld e, $20
    inc a
    rst RST_38
    ld b, b
    ld a, b
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    rst RST_38
    and b
    ld bc, $80e0
    call c, $3200
    nop
    rst RST_38
    ld a, [hl-]
    db $10
    ld a, $18
    db $dd
    ld bc, $0322
    cp a
    inc h
    rst RST_20
    ld [$10ef], sp
    ld e, [hl]
    ld b, $01
    add c
    rst RST_38
    pop af

jr_02e_4fdc:
    nop
    db $e3
    nop
    jp $8000


    nop
    sbc $32
    ld b, $80
    add b
    ld b, b
    ret nz

    nop
    add hl, bc
    ld bc, $efe0
    inc bc
    ret nz

    nop
    add c
    ld [hl-], a
    rlca
    pop bc
    nop
    inc hl
    rst RST_38
    nop
    jr nz, jr_02e_4fdc

    db $10
    ldh a, [$ff08]
    ld a, b
    inc b
    rst RST_38
    inc a
    ld [bc], a
    ld e, $00
    ld c, $c0
    dec b
    jr nz, @+$81

    inc bc
    inc bc
    add c
    inc de
    ld de, $3809
    ld h, [hl]
    ld bc, $01ff
    rrca
    nop
    rlca
    nop
    inc bc
    and e
    ld bc, $e3f7
    add c
    db $dd
    dec d
    inc b
    sbc l
    add c
    ld b, d
    jp Jump_000_00f6


    dec c
    nop
    ld bc, $0532
    ret nz

    nop
    ld hl, $7f01
    and d
    inc bc
    db $e4
    add a
    ret z

    rrca
    db $10
    ld b, l
    rrca
    ld a, [$04a5]
    jr nz, @+$61

    ld a, [bc]
    nop
    dec b
    nop
    inc bc
    and b
    add hl, sp
    nop
    ld [de], a
    rlca
    adc h
    ld bc, $0704
    ld [$06b3], sp
    sbc h
    inc bc
    push hl
    inc e
    dec d
    inc b
    call c, Call_000_02ab
    jr nc, jr_02e_5062

    ld c, $00
    add hl, de
    rra
    nop

jr_02e_5062:
    sbc l
    adc b
    ld e, a
    call z, $09b0
    sbc h
    ld [bc], a
    ld d, c
    ld [$01df], sp
    nop
    inc bc
    nop
    ld l, $61
    inc c
    nop
    add b
    rst RST_30
    db $10
    db $10
    ld [$0875], sp
    inc bc
    ld bc, $0103
    call $851d
    ld [$3ca2], sp
    ld [hl], b
    rra
    halt
    ld de, $3c22
    add a
    and d
    cp h
    ld [hl+], a
    adc e
    inc de
    add a
    db $10
    adc b
    db $10
    ld [hl], l
    inc d
    nop
    rst RST_38
    nop
    jr nc, jr_02e_509d

jr_02e_509d:
    ld [hl], h
    ld [$1fe0], sp
    ret nz

    rst RST_38
    ccf
    ret nz

    ccf
    db $fc
    inc bc
    ld a, a
    nop
    daa
    rst RST_28
    rra
    rlca
    inc bc
    dec b
    ld e, a
    db $10
    add a
    ld bc, $7b83
    ld bc, $8346
    nop
    adc h
    di
    ldh [rIE], a
    jp $ff15


    rst RST_18
    rst RST_38

Call_02e_50c3:
    cpl
    rst RST_18
    nop
    nop
    jr c, jr_02e_50d0

    rst RST_38
    ld [hl], b
    rrca
    ld h, b
    rra
    ldh [$ff1f], a

jr_02e_50d0:
    ldh a, [rIF]
    rst RST_30
    halt
    add hl, bc
    rra
    ld [hl-], a

jr_02e_50d7:
    nop
    cp h
    ldh a, [rTMA]
    db $fc
    rst RST_38

jr_02e_50dd:
    ld [bc], a
    db $fc
    inc b
    ld a, [$fa04]
    adc d
    ld [hl], h
    db $fd
    db $fc
    ld [hl-], a
    nop
    jr nc, jr_02e_50eb

jr_02e_50eb:
    ld l, b
    db $10
    ld c, b
    jr nc, jr_02e_516f

    ret z

    jr nc, jr_02e_50d7

    jr jr_02e_516d

    nop
    db $10
    ld [hl-], a
    nop
    ld a, a
    or b
    ldh a, [$ff08]
    ldh a, [rNR10]
    ldh [rP1], a
    inc bc
    ld [hl+], a
    rst RST_38
    ldh a, [rP1]
    cpl
    rst RST_18
    rrca
    rst RST_38
    adc a
    ld a, a
    rst RST_38
    rst RST_08
    ccf
    rst RST_08
    ccf
    xor a
    ld e, a
    sbc a
    ld l, a
    rst RST_38
    sbc a
    ld l, a
    cpl
    rst RST_18

jr_02e_511a:
    adc a
    ld a, a
    xor a
    ld e, a
    rst RST_38
    rst RST_28
    rra
    ld l, a
    sbc a
    rst RST_28
    rra
    xor a
    ld e, a
    db $e3
    adc a
    ld a, a
    inc d
    inc hl
    ld d, $21
    ld l, $21
    rrca
    rst RST_38
    ld l, a
    xor a
    sbc a
    ld c, a
    cp a
    and a
    dec h
    jr nz, jr_02e_511a

    add hl, sp
    jr nz, jr_02e_50dd

    db $fc
    ld c, e
    ld [hl+], a
    ld l, $21
    adc a
    ld a, a
    add a
    ld a, a
    rla
    rst RST_28
    cp a
    rla
    rst RST_28
    scf
    rst RST_08
    inc de
    rst RST_28
    db $10
    ld hl, $f30f
    rst RST_38
    rra
    ld h, l
    jr nz, jr_02e_5195

    ld hl, $7f8f

jr_02e_515c:
    rlca
    rst RST_38
    cp a
    rlca
    rst RST_38
    rla
    rst RST_28
    sub a
    ld l, a
    inc d
    ld hl, $7fef
    rra
    adc $ee
    daa

jr_02e_516d:
    push af
    rst RST_28

jr_02e_516f:
    rra
    ld d, $21
    jp hl


    sbc a
    dec d
    ld [hl+], a
    ld c, h
    ld hl, $93bf
    ld a, [hl+]
    sbc a
    ld a, a
    rst RST_18
    ld [hl], c
    ccf
    and b
    ld hl, $2b94
    and b
    ld hl, $7faf
    and a
    cp l
    jr nz, @+$59

    sub a
    ld a, a
    or a
    jp $2724


    pop bc
    jr nz, jr_02e_515c

jr_02e_5195:
    rla
    jr nz, @+$01

    cp a
    ld a, a
    ccf
    rst RST_38
    ccf
    rst RST_38
    cp a
    ld a, a
    rrca
    or e
    ld a, a
    sub e
    ld a, a
    dec e
    nop
    ld a, h
    rst RST_38
    ld a, h
    jr nz, jr_02e_51d2

    jr c, jr_02e_51e9

    inc h
    rst RST_38
    rst RST_38
    rst RST_38
    push bc
    adc [hl]
    and l
    add [hl]
    add a
    add a
    db $fd
    db $fc
    rst RST_38
    db $10
    db $10

jr_02e_51bd:
    jr nc, jr_02e_51bd

    rst RST_38
    rst RST_38
    db $10
    ccf
    rst RST_38
    rrca
    rst RST_38
    ld a, b
    ld a, [hl]
    adc e
    rst RST_08
    rrca
    ld c, $ff
    ld bc, $ff01
    rst RST_38
    rst RST_38

jr_02e_51d2:
    ccf
    ld sp, hl
    rst RST_38
    rst RST_38
    sbc a
    rst RST_38
    ld a, [hl]
    ld a, [hl]
    sbc $dd
    cp a
    cp a
    cp $22

jr_02e_51e0:
    nop
    rst RST_38
    cp $3f
    add sp, -$01
    cp l
    ldh a, [rIE]

jr_02e_51e9:
    ld h, b
    ld a, [hl]
    jp nz, Jump_000_05cd

    nop
    call c, $ffa4
    rst RST_10
    xor a
    sbc $bf
    db $fd
    rst RST_30
    ld l, h
    or a
    rst RST_38
    dec l
    rst RST_30
    cpl
    rst RST_30
    inc a
    rst RST_28
    ldh a, [$ff7f]
    rst RST_38
    sub e
    add e
    rst RST_08
    ld c, $fb
    sbc b
    ld h, b
    ldh a, [rIE]
    rst RST_20
    ld sp, hl
    scf
    sbc $0c
    rst RST_38
    and $df
    rst RST_38
    ld a, [hl]
    inc c
    sub b
    sbc a
    ld h, b
    ld a, c
    ret nz

    adc $ff
    ld [hl+], a
    nop
    sub b
    nop
    ret nz

    nop
    ld a, e
    rst RST_38
    rst RST_38
    ei
    rst RST_28
    sbc b
    rst RST_28
    add hl, sp
    rst RST_10
    ccf
    rst RST_00
    rst RST_38
    ld l, l
    cp a
    call c, $fc7f
    ld [hl], a
    inc a
    db $db
    rst RST_38
    jr nz, @+$01

    call nz, $80fb

jr_02e_523f:
    rst RST_38
    inc b
    ei
    rst RST_38
    nop
    rst RST_38
    dec b
    ld a, [$fe01]
    sbc a
    jr nz, @+$01

    ld b, c
    jr z, jr_02e_51e0

    ld l, b
    sub l
    ld l, b
    and c
    ld e, b
    rst RST_38
    inc hl
    ret c

    dec h
    jp c, $da25

    nop
    nop
    rst RST_38
    nop
    cp $e0
    rra
    nop
    ccf
    dec c
    ldh a, [$fff7]
    nop
    ld a, [hl]
    ld [bc], a
    dec a
    nop
    db $10
    add b
    ld [$ffa0], sp
    ld b, $b1
    daa
    adc b
    jr @-$57

    dec [hl]
    add b
    cp a
    nop
    add b
    ld sp, $0880
    pop af
    and b
    nop
    sbc [hl]
    rst RST_38
    inc a
    jp Jump_02e_7c00


    ccf
    nop
    ld a, a
    nop
    rst RST_38
    pop de
    nop
    nop
    ldh [rP1], a
    and c

jr_02e_5293:
    ld [bc], a
    dec c
    rst RST_38
    dec h
    ret nz

    rra
    jr nz, jr_02e_5293

    rlca
    nop
    nop
    rst RST_38
    xor d
    nop
    ld [bc], a
    add b
    jr @-$58

    jr nz, jr_02e_523f

    rst RST_38
    scf
    add b
    inc a
    add b
    nop
    cp a
    add hl, bc
    add [hl]
    rst RST_38
    ld b, $99
    call Call_000_1ef7
    db $eb
    ld a, $c3
    rst RST_38
    ld [hl], $db
    ld h, [hl]
    cp e
    ld h, e
    cp l
    jp $ff7d


    jp $017d


    cp $95
    rst RST_38
    sub c
    rst RST_38
    rst RST_38
    inc d
    rst RST_38
    ld [hl+], a
    rst RST_38
    jr nz, @+$01

    ld h, b
    rst RST_38
    rst RST_38
    ld [de], a
    rst RST_38
    dec d
    ld a, [$da2d]
    add hl, hl
    sbc $ff
    ld e, l
    ld [$ea57], a
    dec d
    xor $15
    xor $ff
    ld d, l
    xor $af
    nop
    xor a
    nop
    ret nz

    ccf
    cp a
    daa
    ld [$0827], sp
    ret nz

    ccf
    jr nz, jr_02e_5309

    ld a, a
    rst RST_38
    add b
    ld a, a
    add b
    nop
    rst RST_38
    rst RST_30
    ld [$07f7], sp
    ld [$ff00], sp
    jr nc, jr_02e_5319

    inc h

jr_02e_5309:
    add hl, de
    inc h
    ld de, $1934
    inc [hl]
    ld de, $44f0
    add hl, de
    jr z, jr_02e_5326

    ld d, h
    add hl, de
    jr c, jr_02e_532a

jr_02e_5319:
    ld [hl], h
    add b
    ld [hl], h
    add b
    rst RST_38
    inc bc
    db $fc
    db $f4
    ld [$08f4], sp
    inc bc
    db $fc

jr_02e_5326:
    db $fc
    add b
    rra
    sub d

jr_02e_532a:
    rra
    nop
    pop bc
    ret nc

    rlca
    nop
    cp a
    rst RST_38
    ld [bc], a
    pop hl
    sub b
    ld l, [hl]
    ld bc, $c7f0
    db $10
    rst RST_38
    jr c, jr_02e_533d

jr_02e_533d:
    cp e
    ld b, h
    nop
    call z, $d824
    ld [hl], a
    ret c

    jr nz, jr_02e_532a

    and b
    nop
    jr nz, jr_02e_534b

jr_02e_534b:
    adc a
    cp a
    inc de
    rst RST_30
    ret z

    sbc b
    ld h, b

jr_02e_5352:
    ret z

    dec d
    pop hl
    nop
    inc b
    nop
    rst RST_38
    rla
    nop
    dec b
    ld [bc], a
    ld a, h
    inc bc
    xor h
    inc de
    rst RST_38
    db $ec
    inc de
    and h
    ld e, e
    ld d, h
    dec bc
    and h
    dec de
    rst RST_38
    ld h, b
    rra
    and h
    ld e, e
    add h
    ld a, e
    jr nz, jr_02e_5352

jr_02e_5373:
    rst RST_18
    and b
    ld e, a
    inc b
    rst RST_38
    ld bc, $10e3
    ld a, [bc]
    ld bc, $5cff
    inc bc
    dec d
    ld [bc], a
    dec [hl]
    ld a, [bc]
    ld d, l
    ld a, [bc]
    rst RST_38
    jr nc, @+$11

    and h
    ld e, e
    add c
    ld a, a
    pop de
    ld l, a
    rst RST_38
    ld d, b
    rst RST_28
    inc b
    rst RST_38
    ld d, h
    rst RST_28
    call nz, Call_02e_7fff
    db $10
    rst RST_38
    inc c
    rst RST_38
    ld b, b
    rst RST_38
    ld l, b
    ld hl, $ff20
    ld b, d
    rst RST_38
    ld a, [bc]
    rst RST_38
    ld [bc], a
    rst RST_38
    inc b
    rst RST_38
    rst RST_38
    jr nc, jr_02e_53bd

    or l
    dec bc
    ld l, l
    inc de
    add sp, $17
    rst RST_38
    xor b
    rla
    jp nz, $d23f

    cpl
    ret nc

    cpl

jr_02e_53bd:
    ei
    call c, Call_000_3a2f
    ld hl, $7f88
    add b
    ld a, [hl]
    and c
    ld a, a
    ld [hl], c
    adc a
    ld l, a
    adc a
    ld l, [hl]
    nop
    rst RST_38
    ld d, b
    jr nz, @+$01

    ld hl, sp+$07
    rst RST_00
    ccf
    ccf
    db $fc
    ld hl, sp-$10
    rst RST_38
    ret nz

    add b
    nop
    db $e4
    ei
    add b
    inc bc
    ld hl, sp-$47
    db $e3
    ld h, h
    cpl
    ld l, [hl]
    dec h
    inc c
    rst RST_28
    ld c, h
    add c
    jr nz, jr_02e_541b

    ld a, h
    add l
    jr nz, jr_02e_5373

    ld hl, $ef0c
    ld hl, sp-$1d
    ld sp, hl
    sub c
    inc h
    rst RST_30
    ei
    db $e3
    ld a, [$229b]
    ei
    db $e3
    db $fc
    rst RST_20
    cp $a4
    ld hl, $e7fe
    ld sp, hl
    db $eb
    ld hl, sp-$15
    db $fd
    rst RST_38

Jump_02e_5410:
    rst RST_28
    ei
    db $eb
    ld a, [$fefb]

jr_02e_5416:
    rst RST_30
    db $fc
    rst RST_30
    rst RST_30
    db $fc

jr_02e_541b:
    rst RST_38
    cp d
    jr nz, jr_02e_5416

    ld a, [$faf3]
    rst RST_38
    ei
    rst RST_38
    rst RST_28
    ld sp, hl
    db $eb
    ld sp, hl
    db $eb
    db $fd
    xor l
    rst RST_20
    jp z, $fe21

    rst RST_20
    sbc [hl]
    inc hl
    ei
    sub c
    inc h
    ld b, $eb
    ld sp, hl
    ld h, b
    dec bc
    db $10
    ld [hl], b
    inc hl
    jr nz, @-$4a

    rst RST_38
    ld [hl], $ff
    rst RST_38
    inc sp
    rst RST_38
    ld a, [hl+]

jr_02e_5447:
    push af
    jr nz, @+$01

    add hl, bc
    rst RST_38
    or $8b
    ld [hl], h
    sub e
    ld l, h
    xor d
    ld d, h
    dec c
    rst RST_38
    ldh a, [$ff2a]
    ret nc

    sub h
    ld l, d
    ld b, l
    and b
    jr z, @+$01

    ret nz

    sub d
    ld b, b
    ld b, l
    ld [bc], a
    inc de
    nop
    add hl, hl
    rst RST_38
    ld [de], a
    ld d, [hl]
    ld hl, $0095
    ld hl, $0f00
    rst RST_38
    jr nc, jr_02e_54ec

    dec b
    ld d, b
    cpl
    ld [hl], a
    adc a
    ld [hl+], a
    rst RST_38
    rst RST_38
    rst RST_08
    ccf
    ld a, a
    nop
    pop bc
    ccf
    inc e
    rst RST_38
    rst RST_38
    ld h, a
    rst RST_38
    sub e
    rst RST_38
    ld a, $ff
    pop af
    rst RST_38

jr_02e_548b:
    rst RST_38
    ld e, $ff
    rst RST_38
    nop
    ld a, b
    rst RST_38
    rst RST_08
    rst RST_38
    rst RST_38
    di
    rst RST_38
    inc a
    rst RST_38
    ret z

    ldh a, [rSTAT]
    adc l
    add b
    inc sp
    stop
    db $e4
    daa
    nop
    ld d, b
    jr nz, jr_02e_5447

    nop
    rst RST_38
    call $2000
    nop
    nop
    daa
    ld [hl+], a
    nop
    ld b, [hl]
    dec [hl]
    ret nz

    ret nz

    rst RST_10
    rst RST_38
    nop
    ld e, $35
    jr nc, jr_02e_548b

    scf
    jr nc, jr_02e_54d2

    rrca
    rst RST_30
    add d
    ld bc, $5001
    jr nz, @-$6f

    db $f4
    ccf
    ld sp, hl
    rst RST_38
    rst RST_20
    rst RST_38
    ret


    rst RST_38
    ld a, h
    rst RST_38
    adc a

jr_02e_54d2:
    rst RST_38

jr_02e_54d3:
    rst RST_38
    ld a, b
    rst RST_38
    push hl
    nop
    ld a, [de]
    add b
    pop hl
    inc d
    rst RST_38
    ld e, h
    and b
    dec h
    jp nc, $fbe4

    ld d, a
    db $fc
    rst RST_38
    ld sp, hl
    cp $8c
    ld l, a
    ld c, h
    cpl

jr_02e_54ec:
    inc c
    rrca
    rst RST_38
    xor h
    rrca
    inc e
    ld c, a
    call z, Call_02e_4717
    or b
    ei
    sbc d
    nop
    ret nz

    dec l
    dec l
    rst RST_38
    jp hl


    cp $25
    rst RST_38
    cp $2d
    cp $f2
    rst RST_38
    daa
    rst RST_38
    rst RST_30
    rst RST_38
    ld a, e
    rst RST_30
    ld a, e
    add sp, -$70
    ret z

    ret nz

    ld [$e0ff], a
    pop hl
    and b
    ei
    ldh a, [c]
    jp c, $9cdd

    rst RST_38
    cpl
    and h
    ld e, a
    sub [hl]
    ld c, c
    inc a
    inc bc
    call nc, Call_000_2bff
    sub b
    ld a, a
    ld b, c
    rst RST_38
    ld h, b
    sbc a
    rla
    cp e
    rst RST_38
    inc de
    dec hl
    jr nz, jr_02e_54d3

    rst RST_38
    ld h, d
    daa
    nop
    ld sp, hl
    cp $33
    jr nc, jr_02e_55ae

    rst RST_38
    adc [hl]
    rst RST_38
    db $fc
    cp $88
    rst RST_38
    db $fc
    ld [hl], b

jr_02e_5546:
    ld hl, sp-$20
    ei
    sbc e
    ld hl, sp-$10
    ld a, a
    ld hl, sp+$38
    db $fd
    call nz, Call_000_00fe
    ccf
    ld b, a
    inc sp
    ldh [c], a
    ld [bc], a
    ld b, l
    ld [bc], a
    cpl
    jr nc, jr_02e_55ca

    ld sp, $4502
    ld b, b
    rst RST_38
    rst RST_38
    or a
    jr nz, jr_02e_5546

    ldh [rTMA], a
    ld b, a
    nop
    db $fc
    ld [bc], a
    ld c, e
    cp a
    rst RST_38
    ld a, a
    ld de, $0e3f
    rra
    and a
    rra
    ld e, c
    ld a, a
    rra
    ld c, a
    rra
    inc e
    ccf
    inc hl
    ld a, a
    ldh [$ff3d], a
    rst RST_38
    ld hl, $9ce8
    jp $e8c2


    xor b
    db $fd
    rst RST_38
    jp z, Jump_000_36ff

    ld sp, hl
    ld sp, hl
    rst RST_38
    adc $ff
    cp [hl]
    nop
    dec a
    ldh a, [rP1]
    ldh [$ff0e], a
    add $83
    ld b, b
    add [hl]
    db $fd
    ld l, $88
    ld b, c
    ld h, $6e
    ld [hl], a
    ld [$8a15], sp
    rst RST_38
    dec c
    ldh [c], a
    ld h, a
    ldh [$ff62], a

jr_02e_55ae:
    pop hl
    ld h, b
    db $eb
    rst RST_38
    ld h, c
    add sp, $60
    db $ed
    ld b, l
    cp $01
    cp $df
    adc c
    cp $81
    cp $49
    and c
    ld b, b
    add hl, hl
    cp $6f
    ld b, c
    cp $26
    ld l, [hl]
    or b

jr_02e_55ca:
    ld b, c
    ld h, [hl]
    xor $b6
    ld b, l
    di
    ld h, h
    db $ec
    ret nz

    ld b, b
    or a
    ld b, [hl]
    ld h, [hl]
    xor $19
    cp $ff
    add hl, bc
    cp $a9
    ld a, [hl]
    add hl, hl
    ld a, [hl]
    ld bc, $877e
    dec d
    ld a, [hl]
    ld de, $40d7
    or [hl]
    ld b, a
    add sp, $4f
    or [hl]
    ld b, c
    ld bc, $7ed3
    dec b
    db $db
    ld b, b
    inc b
    ld d, c
    add hl, bc
    add hl, bc
    ld d, b
    ld bc, $ff7e
    ld bc, $633e
    sbc $f3
    xor $79
    or $5f
    add hl, sp
    halt
    add hl, de
    ld [hl], $13
    dec de
    ld d, b
    ld de, $521f
    rst RST_38
    dec d
    ld [hl], $35
    halt
    ld h, c
    or $45
    xor $ff
    add hl, bc
    sbc $01
    ld a, $01
    ld a, [hl]
    inc bc
    ld a, [hl]
    ld e, l
    rlca
    add hl, bc
    ld d, d
    inc bc
    ld a, [hl]
    inc de
    rst RST_10
    ld b, b
    add hl, bc
    push de
    ld b, b
    db $fd
    add hl, hl
    ld bc, $2550
    ld a, [hl]
    and c
    ld a, [hl]
    ret


    cp $70
    or [hl]

jr_02e_563a:
    ld b, [hl]
    or c
    ld b, d
    or h
    ld c, d
    ld l, c
    ld d, c
    db $ec
    ld h, $6e
    adc b
    ld b, d
    cp $83
    ld b, d
    ldh [rTMA], a
    ldh a, [rP1]
    ld h, b
    db $ed
    ld h, c
    rst RST_38
    jp hl


    ld h, c
    ld [$e162], a
    ld h, a
    db $e4
    rrca
    rst RST_38
    add sp, $1b
    inc d
    ld a, e
    ld b, [hl]
    dec b
    ld a, [$ff51]
    cp $55
    ld a, [$fa05]
    ld de, $a1fe
    rst RST_38
    ld e, [hl]
    and l
    ld e, d
    ld d, l
    xor d
    rrca
    ldh a, [rNR10]
    rst RST_38
    ldh [rNR41], a
    ret nz

    jr nz, jr_02e_563a

    ld b, h
    add b
    ld b, b
    db $fd
    add b
    inc a
    ld sp, $7f88
    ld a, [hl+]
    rra
    ld [de], a
    rrca
    rst RST_38
    xor b
    rlca
    dec d
    inc bc
    ld b, c
    inc bc
    ld [bc], a
    ld bc, $08fb
    ld bc, $4da0
    ld d, l
    nop
    ld [bc], a
    nop
    sub h
    cp a
    nop
    ld c, d
    nop
    ld a, [hl+]
    nop
    ld d, l
    rlc b
    ccf
    push hl
    nop
    ret nc

    ld b, c
    add hl, hl
    db $d3
    ld b, b
    ret c

    ld b, e
    pop bc
    ld a, $3f
    db $fc
    db $dd
    ld d, b
    ldh a, [$ff57]
    rra
    nop
    add c
    ld a, $85
    ld a, $75
    sub c
    inc bc
    ld h, d
    ret


    add hl, bc
    ld h, b
    pop hl
    ld e, $1f
    db $fd
    ld d, b
    ld l, $10
    ld l, c
    pop hl
    ld e, $e3
    ld hl, $e960
    dec h
    ld h, b
    jr nz, jr_02e_5737

    inc h
    db $10
    ld l, l
    ld h, $63
    push hl
    ld b, l
    ld h, b
    ld b, h
    ld h, c
    jp hl


    rrca
    ld h, b
    ldh a, [$ff5b]
    rst RST_38
    pop hl
    ld e, $c1
    ld a, $e3
    ld a, $e7
    ld a, $7d
    jp hl


    ld h, a
    ld h, b
    jp $d33e


    ld a, $2f
    rlc b
    ld [hl], a
    ld e, a
    nop
    ld d, a
    ld [hl], e
    ld h, b
    rst RST_10
    nop
    or a
    ld a, e
    ld h, b
    rst RST_18
    pop bc
    ld a, $89
    ld a, [hl]
    jp hl


    add e
    ld h, b
    add l
    ld a, [hl]
    rst RST_38
    dec h
    cp $a1
    cp $c9
    cp $81
    nop
    cp a
    ld b, c
    add b
    ld b, d
    add b
    ld b, h
    add b
    and h
    ld d, c
    sub b
    rst RST_38
    ldh [$ff8f], a
    ldh a, [$ff2e]
    ld bc, $016f
    ld e, l
    rst RST_38
    inc bc
    rla
    inc bc
    ld l, $05
    jr @+$11

    halt
    rst RST_10
    dec e
    db $e4
    ld a, a
    sub b
    ld e, l

jr_02e_5737:
    rlca
    db $dd
    ld d, b
    ld a, a
    nop
    rst RST_38
    ld a, [hl]
    ld bc, $037c
    ld a, d
    dec b
    ld [hl], h
    add hl, bc
    rst RST_38
    ld l, b
    ld de, $2150
    jr nz, jr_02e_578d

    ld c, b
    ld sp, $72ff
    dec c
    inc a
    ld b, e
    rrca
    ld [hl], b
    inc hl
    ld c, h
    rst RST_38
    jr nz, @+$45

    ld hl, $2342
    ld b, h
    ld h, $49
    cp a
    inc l
    ld d, e
    ld a, [de]
    ld h, l
    inc [hl]
    ld c, c
    adc $63
    ld c, h
    rst RST_38
    ld sp, $3d42
    ld l, h
    ld [hl], e
    rst RST_08
    ldh [$ffcf], a
    ei
    ret nz

    rst RST_18
    ei
    ld h, [hl]
    rst RST_08
    ret nc

    rst RST_28
    ldh a, [rVBK]
    rst RST_38
    ld h, b
    ld c, [hl]
    ld bc, $0778
    ld h, b
    add hl, de
    nop
    rst RST_38
    ld h, c
    ld d, b
    ld hl, $1168
    inc [hl]

jr_02e_578d:
    ld c, c
    ld a, [de]
    rst RST_38
    ld h, l
    inc l
    ld d, e
    ld h, $49
    inc hl
    ld b, h
    ld hl, $42ff
    jr nz, jr_02e_57dd

    ld hl, $2746
    ld e, b
    ld e, $fd
    ld h, c
    ld c, $77
    ld [hl], h
    add hl, bc
    ld a, d
    dec b
    ld a, h
    inc bc
    rst RST_30
    ld a, [hl]
    ld bc, $db7f
    ld d, d
    sbc a
    nop
    ld c, a
    nop
    rst RST_38
    add a
    ld h, b
    ld d, e
    add b
    pop de
    jr z, jr_02e_5825

    sub h
    pop de
    ret nz

    ld l, l
    nop
    ld d, b
    ld a, c
    ld b, a
    jr nc, @+$01

    ld d, b
    ld a, c
    jr z, @+$42

    rst RST_38

Call_02e_57cc:
    db $ec
    db $10
    sub d
    ld c, b
    ld c, c
    inc h
    and l
    ld [hl], d
    rst RST_38
    ld e, e
    add h
    sub [hl]
    ld l, c
    ld c, c
    db $f4
    ccf
    add b

jr_02e_57dd:
    db $fd
    ccf
    jp hl


    nop
    scf
    adc b
    scf
    adc b
    nop
    cp a
    ld hl, sp-$80
    ld a, d
    db $dd
    ld d, b
    add h
    ld [hl], c
    rst RST_38
    ld bc, $ff03
    ld a, [hl]
    ld a, a
    add d
    ld a, [hl]
    add d
    inc bc
    rst RST_38
    rst RST_30
    add hl, bc
    jr c, @+$13

    rst RST_38
    scf
    jr z, jr_02e_5831

    ccf
    rra
    db $10
    rra
    db $10
    rrca
    jr nc, jr_02e_5848

    rst RST_30
    add sp, $38
    ld de, $1dff
    nop
    add b
    db $eb
    rst RST_38
    nop
    nop
    dec bc
    cp $0f
    ld [$04fc], sp
    db $fc
    rst RST_38
    jr z, jr_02e_5822

    add b
    inc bc
    nop

jr_02e_5822:
    inc bc
    add d
    dec d

jr_02e_5825:
    rst RST_38
    add c
    dec hl
    add e
    rla
    add e
    ld a, $86
    ld a, $ff
    adc [hl]
    nop

jr_02e_5831:
    nop
    ld d, c
    ld d, b
    xor h
    and e
    ret c

    rst RST_38
    rst RST_00
    cp b
    add a
    ld bc, $7000
    rrca
    add hl, bc
    rst RST_38
    nop
    cpl
    rrca
    rst RST_08
    rrca
    rla
    rst RST_20

jr_02e_5848:
    dec de
    rst RST_38
    db $e3
    dec c
    pop af
    ldh a, [rP1]
    ld c, $f0
    ldh [$ffeb], a
    nop
    rst RST_38
    ld d, b
    ld [$5c7f], sp
    nop
    or $f1
    pop af
    rst RST_30
    ldh a, [$ffec]
    db $e3
    ld [hl], $07
    dec l
    call $0ece
    ld a, $44
    ld a, [bc]
    ld d, b
    rst RST_38
    xor d
    rst RST_38
    push af
    ld d, [hl]
    rlca
    inc c
    ld [bc], a
    rst RST_38
    ld d, b
    db $fc
    xor b
    ld a, [$f8f9]
    ei
    db $f4
    rst RST_30
    di
    ldh a, [$fff7]
    nop
    nop
    ld [bc], a
    rst RST_38
    dec b
    rst RST_38
    db $fd
    ld a, [bc]
    and h
    nop
    dec bc
    rst RST_38
    rla
    rst RST_38
    dec hl
    db $fc
    rst RST_38
    ld d, h
    db $fc
    xor b
    db $fc
    ld [hl], h
    cp $fe
    db $fc
    cp l
    db $fc
    or [hl]
    inc bc
    ccf
    adc a
    ccf
    sbc a
    jp nz, $bf04

    sbc $ca
    ld bc, $fbfc
    cp $fd
    ld d, b
    add hl, bc
    ldh a, [$ffe7]
    rst RST_38
    add sp, -$19
    ldh [$ffef], a
    ldh [$ffcf], a
    pop de
    adc $bf
    pop de
    adc $c1
    sbc [hl]
    and b
    sbc [hl]
    xor h
    nop
    cpl
    ei
    rst RST_38
    rra
    ldh a, [c]
    ld [bc], a
    ccf
    rst RST_38
    ld e, a
    rst RST_38
    ccf
    ld e, [hl]
    cp b
    dec b
    db $fc
    db $fc
    db $fc
    db $fd
    ld a, [bc]
    ld de, $10bf
    db $10
    rst RST_38
    nop
    nop
    ld b, b
    ccf
    ccf

Call_02e_58de:
    nop
    nop
    rst RST_38
    ld l, a
    ld c, h
    ld [hl+], a
    sub c
    ld l, [hl]
    db $fc
    ld bc, $7fff
    ld e, c
    ld bc, $50fc
    inc bc
    ld a, [bc]
    ld de, $fcfd
    ld hl, sp-$05
    ld a, [$f3fa]
    ldh a, [$fff5]
    ld a, [hl-]
    ld de, $0450
    cp $fc
    ld hl, sp-$0d
    rst RST_18
    ldh [$ffcf], a
    add b
    ccf
    nop
    ld a, [hl-]
    db $10
    push hl
    ret nz

    rst RST_38
    add d
    jr nc, jr_02e_5914

    db $f4
    rlca
    ei
    inc bc

jr_02e_5914:
    db $fc
    ld h, h
    ld bc, $4001
    dec d
    cp $0a
    inc de
    ld d, b
    ld bc, $8080
    ld d, $17
    rst RST_38
    pop af
    pop af
    ldh [c], a
    xor $00
    ld c, $6a
    adc [hl]
    rst RST_38
    inc b
    nop
    inc b
    db $e4
    call nz, $0424
    db $e4
    sub [hl]
    jr nc, jr_02e_5955

    ld c, h
    ld [hl+], a
    ld c, a
    nop
    ldh a, [rSB]
    nop
    add hl, de
    stop
    rst RST_30
    ld bc, $017c
    adc h
    ld de, $00c4
    nop
    ldh [rIE], a
    sub d
    call nz, Call_02e_4608
    ld a, [bc]
    ld b, h
    inc b
    ld d, b

jr_02e_5955:
    ld a, a
    nop
    dec b
    ldh a, [rTIMA]
    ldh a, [rSC]
    ldh a, [$ff57]
    ld d, $ff
    inc e
    ld bc, $0100
    nop
    nop
    ld bc, $f503
    ld [bc], a
    or a
    nop
    ld bc, $11a6
    ld e, b
    inc b
    ld e, h
    add hl, bc
    cp a
    ld e, b
    inc de
    ld d, b
    rrca
    nop
    ld a, a
    ld bc, $0002
    sbc $19
    ld bc, $f800
    nop
    ldh a, [$fff7]
    db $10
    ldh [rP1], a
    db $fd
    ret nz

    ld c, a
    inc bc
    ld a, a
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    ccf
    rra
    ccf
    rrca
    ccf
    rrca
    and b
    db $ed
    nop
    db $10
    daa
    rst RST_38
    pop bc
    sbc [hl]
    pop bc
    sbc $d1
    adc $d0
    rst RST_08
    rst RST_38
    ldh [$ffcf], a
    ldh [$ffef], a
    add sp, -$19
    ldh a, [$ffe7]
    rst RST_38
    db $f4
    di
    ld hl, sp-$0d
    ld a, [$fcf9]
    ld sp, hl
    rst RST_38
    db $fd
    db $fc
    cp $f8
    rst RST_38
    db $f4
    rst RST_38
    ld hl, sp-$01
    rst RST_38
    ret nz

    rra
    nop
    ldh [$ff1f], a
    rra
    rst RST_38
    ld a, a
    rra
    nop
    rra
    rst RST_38
    ldh a, [rIF]
    rrca
    xor b
    ld [de], a
    ldh a, [rVBK]
    ld [bc], a
    ld c, a
    nop
    ld d, a
    ld hl, $2251
    add b
    ret nz

    cp a
    ret nz

    rst RST_38
    and b
    call nz, $c2a8
    and c
    jp z, $c5a4

    ld sp, hl
    and b
    ld d, h
    ld hl, $11a6
    sub c
    ld h, b
    ld d, l
    add d
    and h
    rst RST_30
    jr jr_02e_5a52

    add c
    ld [hl], b
    dec h
    ld d, l
    adc b
    dec hl
    db $10
    rst RST_30
    add $00
    or c
    ld c, a
    nop
    add b
    ld a, a
    ld a, [hl]
    rst RST_38
    db $fd
    ld a, [hl]
    ld [hl], a
    dec l
    ld bc, $0031
    adc c
    inc [hl]
    xor l
    rst RST_38
    ld b, b
    dec d
    nop
    add sp, -$40
    add sp, $40
    add sp, $7b
    ld b, b
    ld l, b
    or l
    ld [hl+], a
    jr z, jr_02e_5a63

    inc l
    ld b, b
    ld l, h
    ld hl, $ce6f
    and b
    ret nz

    cp a
    ld [hl], e
    db $10
    ret nz

    add b
    and a
    db $10
    rst RST_38
    and h
    inc de
    ld b, [hl]
    add b
    add hl, hl
    stop
    rst RST_38
    db $fd
    cp $d2
    db $10
    dec de
    ldh [rTAC], a
    nop

jr_02e_5a43:
    ld b, b
    nop
    rst RST_38
    sbc a
    nop
    jr c, @+$09

    ld a, e
    ld [$10fb], sp
    cp a
    di
    jr nz, jr_02e_5a43

jr_02e_5a52:
    ld b, b
    ldh [$ff80], a
    xor c
    ld de, $fff8
    ldh a, [$fff7]
    rlca
    rst RST_30
    inc bc
    ld hl, sp+$00
    ld h, e
    cp e
    ld [bc], a

jr_02e_5a63:
    dec de
    xor b
    ld [de], a
    ld a, a
    ccf
    cp a
    ld c, l
    db $10
    ld a, a
    adc a
    nop
    rra
    nop
    ld h, b
    xor b
    ld [de], a
    ld d, h
    ld [hl+], a
    db $eb
    inc d
    nop
    cp $f3
    db $10
    db $f4
    ldh a, [$ffe4]
    nop
    ld [$d400], a
    rst RST_38
    nop
    or b
    db $10
    ld l, b
    jr nz, jr_02e_5af3

    ld b, b
    ld l, h
    rst RST_38
    ld b, b
    ld l, l
    ld b, b
    ld l, e
    ld b, b
    ld l, d
    ld b, c
    ld h, l
    rst RST_38
    ld b, d
    add sp, $07
    nop
    rrca
    db $fc
    nop
    db $fd
    rst RST_38
    nop
    ld sp, hl
    nop
    ld d, e
    xor b
    inc bc
    ldh a, [rRP]
    sbc a
    and c
    ld b, $f1
    rrca
    ldh [c], a
    xor c
    ld de, $00f9
    add b
    rst RST_20
    cp a
    nop
    ccf
    ld e, c
    jr nc, jr_02e_5ad5

    ld sp, $1fe0
    rst RST_38
    rst RST_00
    rst RST_38
    ret nz

    ccf
    jr @+$39

    ld c, $00
    dec d
    ld a, [hl-]
    rst RST_38
    nop
    rst RST_28
    inc bc
    db $fc
    di
    inc b
    add [hl]
    inc sp
    inc bc
    inc b
    ld a, a
    add [hl]
    jp hl


    db $10

jr_02e_5ad5:
    ld b, c
    ld a, $e9
    db $10
    sub a
    inc [hl]
    ld [hl], d
    ld [hl+], a
    inc c
    ld [bc], a
    ld bc, $fcff
    inc bc
    ld hl, sp+$07
    ldh a, [$ffef]
    ld bc, $ff1f
    jp nz, $843f

    ld a, a
    ld [$10fe], sp
    db $fd
    rst RST_38

jr_02e_5af3:
    jr nz, @-$03

    ld b, b
    rst RST_30
    add b
    jp nz, $8900

    rst RST_38
    ld bc, $0233
    ld e, [hl]
    ld b, $ff
    rlca
    rst RST_38
    rst RST_38
    inc bc
    jp $013c


    cp $74
    inc [hl]
    rst RST_30
    rst RST_38
    ld b, a
    db $fd
    jr nc, jr_02e_5b8f

    ld l, l
    rra
    dec e
    ldh a, [$fffd]
    ret nz

    ld d, h
    ld hl, $b0b8
    cp c
    add b
    rst RST_38
    inc e
    rst RST_38
    rst RST_28
    and [hl]
    rst RST_30
    and c
    ld a, $1e
    ld sp, hl
    ldh a, [rIE]
    ld [$7f07], sp
    nop
    ld [bc], a
    inc a
    jp nz, $ff1c

    push bc
    sbc b
    add d
    jr c, jr_02e_5b42

    ld [hl], d
    dec d
    db $e4
    rst RST_38
    inc l
    ret nz

    ld d, c
    nop
    ret nz

    ld b, c

jr_02e_5b42:
    and b
    add e
    rst RST_38
    ld b, b
    inc bc
    sub b
    inc bc
    and b
    inc bc
    ld [$9f03], sp
    ld d, b
    rlca
    ldh [$ff1f], a
    add b
    ld [$0013], a
    inc b
    rrca
    rst RST_38
    ldh [c], a
    rrca
    jp nz, $c41e

    ld e, $c4
    ld a, $ff
    add h
    inc a
    adc b
    inc a
    ld [$087c], sp
    nop
    rst RST_18
    ccf
    rra
    jr nz, jr_02e_5b8f

    ld e, a
    inc [hl]
    ld b, c
    ld b, c
    cp [hl]
    ld l, a
    ld b, c
    cp [hl]
    ld a, a
    add b
    ld d, a
    ld hl, $7e81
    ld b, h
    ld b, c
    rst RST_28
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld d, b
    ld [hl+], a
    nop
    inc b
    ei
    cp $54
    ld b, l
    rst RST_38
    nop
    rlca

jr_02e_5b8f:
    db $f4
    rst RST_20
    inc d
    daa
    ld l, l
    call nc, Call_02e_4564
    rst RST_20
    inc d
    sub [hl]
    scf
    ld b, b
    ccf
    ld a, d
    ld b, c
    ei
    rrca
    pop hl
    or d
    dec sp
    rst RST_28
    nop
    jp c, $b405

    rst RST_38
    dec bc
    ld l, a
    db $10
    ret nc

    cpl
    and b
    ld e, a
    ld b, b
    db $ed
    cp a
    nop
    ld bc, $fd02
    ld e, h
    ld b, c
    db $10
    rst RST_28
    jr nz, jr_02e_5c2b

    rst RST_18
    sbc h
    ld b, e
    ld bc, $4cfe
    ld b, c
    ld [$a8f7], sp
    ld b, c
    cp $ae
    ld b, l
    cp $01
    inc b
    ld a, [$f409]
    dec d
    rst RST_38
    add sp, -$15
    ld de, $08da
    call nc, $a910
    rst RST_38
    jr nz, jr_02e_5c29

    ld [$41d4], sp
    and h
    add c
    dec hl
    rst RST_38
    jr nz, jr_02e_5c3f

    db $10
    add b
    rlca
    nop
    ld b, a
    db $10
    rst RST_30
    ld b, a
    db $10
    rst RST_00
    and $41
    or b
    inc bc
    add d
    ld bc, $01ed
    ld c, $03
    db $fc
    ld bc, $40f7
    inc bc
    ld hl, sp+$03
    ld l, a
    ld hl, sp+$78
    ld de, $01f8
    ld d, b
    pop af
    ld [hl+], a
    ld b, $51
    rst RST_38
    ldh [c], a
    ld b, l
    db $e3
    ld b, h
    add c
    ld a, [hl]
    add d
    ld a, l
    add e
    add d
    ld a, l
    and d
    ld b, c
    ld e, d
    ld b, e
    ld c, d
    ld b, c
    ld d, $55
    ld e, h
    ld b, c
    ld [$f70d], sp
    jr nc, jr_02e_5c82

jr_02e_5c29:
    rst RST_38
    nop

jr_02e_5c2b:
    ld h, h
    ld b, a
    ld l, d
    ld b, e

jr_02e_5c2f:
    ld a, d
    ld b, e
    ld a, d
    ld b, e
    cp $59
    ld sp, $02ed
    jp c, $b705

    ld [$c568], sp
    rla

jr_02e_5c3f:
    sbc b
    ld b, c
    ccf
    cp $10
    or d
    ld c, e
    ld bc, $0101
    cp $64
    and b
    ld b, e
    inc a
    ld d, c
    nop
    sub c
    jr nz, @+$59

    ld hl, $fe01
    or d
    ld b, c
    rst RST_38
    db $fc
    ld [bc], a
    ld bc, $26fc
    jp nc, $a44d

    rst RST_38
    sbc c
    ld c, c
    ld a, [hl-]
    sbc b
    or $12
    ld l, l
    dec h
    rst RST_38
    jp hl


    ld h, b
    jp c, $97c8

    nop
    xor a
    add b
    rst RST_18
    ld e, a
    ld b, b
    ld e, a
    nop
    cp a
    sub [hl]
    ld [hl-], a
    rst RST_38
    nop
    rst RST_20
    add d
    ld bc, $aac6

jr_02e_5c82:
    jr nc, jr_02e_5c2f

    ld [hl-], a
    rrca
    ldh a, [rIF]
    rst RST_18
    ldh [$ff1f], a
    inc bc
    ldh a, [rTAC]
    pop de
    ld d, b

jr_02e_5c90:
    rrca
    ldh [rIE], a
    rrca
    pop hl
    rrca
    pop bc
    rra
    pop bc
    rra
    add d
    ld l, a
    ldh [c], a
    ld b, l
    call nz, $e28b
    ld d, c
    adc b
    rla
    add sp, $51
    db $db
    db $10
    cpl
    jr nc, jr_02e_5cfc

    db $10
    rst RST_28
    db $f4
    ld d, c
    jr nz, jr_02e_5c90

    ld h, b
    ld a, [$3051]
    ld d, l
    db $f4
    ld d, e
    inc c
    ld l, a
    ld b, b
    ld e, e
    daa
    call nc, $3259

jr_02e_5cc0:
    add $5b
    ld d, d
    ld bc, $383e
    ld h, d
    jp hl


    db $10
    ld b, c
    ld h, c
    nop
    ld a, a
    ld b, c
    cpl
    dec e
    ld sp, $604a
    ld e, c
    inc hl
    ld [hl], b
    ld [hl+], a
    ld c, a
    nop
    inc bc
    ld l, [hl]
    ld d, b
    cp $54
    ld h, a
    cp $fc
    sub l
    sub h
    and l
    nop
    ld l, e

jr_02e_5ce6:
    ld a, a
    jr nz, jr_02e_5cc0

    ld d, b
    sub a
    add b
    xor a
    nop
    or h
    ld d, c
    db $fc
    ld b, $08
    sub [hl]
    ld d, b
    db $fc
    inc bc
    ldh [$ff1f], a
    ret nz

    ccf
    ld c, a

jr_02e_5cfc:
    add b
    ld a, a
    add b
    ld a, [hl]
    rrca
    ld [bc], a
    nop
    nop
    inc a
    rlca
    ld sp, $186c
    ld de, $3067
    nop
    nop
    ret nz

    nop
    nop
    add b
    dec h
    db $10
    rst RST_20
    ret nz

    ccf
    ld a, a
    sub c
    jr nz, jr_02e_5d75

    jr nc, @+$01

    ldh [rP1], a
    rst RST_38
    rrca

jr_02e_5d21:
    ldh a, [$fffc]
    rst RST_38
    jr c, jr_02e_5ce6

    db $fc
    rst RST_38
    rst RST_38
    rlca
    ld hl, sp-$08
    nop
    ld hl, sp-$01
    inc bc
    inc b
    ldh a, [$ff72]
    inc hl
    ld e, d
    inc hl
    ld e, e
    db $10
    add hl, sp
    ld h, b
    ld [bc], a
    dec a
    add c
    ld a, $ff
    add d
    cp l
    add l
    ld a, [hl-]
    inc bc
    ld a, h
    dec b
    ld a, d
    ei
    nop
    rra
    ld c, d
    ld h, c
    cpl
    nop
    rla
    nop
    rrca
    rst RST_08
    nop
    rlca
    nop
    dec bc
    ld d, a
    ld h, l
    rlca
    rlca
    ld hl, sp-$04
    cp $a8
    db $10
    ld a, h
    nop
    ld a, d
    jr nc, jr_02e_5d21

    db $10
    sub c
    ld h, a
    nop
    cp c
    db $10
    cp b
    ld d, l
    nop
    dec b
    ld hl, sp+$07
    ret z

    ld d, c
    db $e3
    ldh [$ff1f], a

jr_02e_5d75:
    sub b
    ld h, h
    inc de
    ld c, d
    ld bc, $3f01
    sbc a
    rra
    rst RST_30
    add b
    nop
    ret nz

    sub $50
    and $17
    ldh [c], a
    ld [bc], a
    scf
    ldh a, [rTAC]
    ldh a, [c]
    ld e, b
    ld h, e
    sbc a
    nop
    or [hl]
    ld d, c
    ld e, d
    ld sp, $8b6f
    ld [hl], h
    add a
    ld a, b
    ld [hl], b
    ld [hl], e
    sub a
    ld l, b
    ld a, b
    ld [hl], c
    ld a, a
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    jp nc, Jump_02e_5410

    add [hl]
    ld [hl], c
    and c
    inc sp
    ld a, a
    or a
    ld d, d
    cp a
    ld h, a
    ld [hl], b
    xor a
    ld b, b
    ld a, l
    rst RST_38
    nop
    cp l
    db $10
    db $d3
    nop
    jp $d300


    rst RST_00
    nop
    db $db
    db $10
    cp b
    ld [hl], e
    adc b
    ld h, l
    jr nc, jr_02e_5e3f

    rlca
    ldh a, [c]
    rst RST_38
    ld a, [de]
    ldh [rNR23], a
    ldh [rNR30], a
    ldh [$ff3b], a
    jp nz, Jump_000_3bbf

    jp nz, $827b

    ld a, e
    add d
    or b
    ld [hl], a
    jp c, Jump_000_10fb

    reti


    jp hl


    ld [hl], b
    xor e
    ld d, h
    sub a
    ld l, b
    xor a
    rst RST_38
    ld d, b
    rst RST_10
    jr z, @+$31

    ld d, b
    rra
    jr nz, jr_02e_5e31

    rlca
    ld b, b
    rst RST_38
    nop
    ld de, $0980
    daa
    add hl, bc
    ld a, a
    rlca
    ld [bc], a
    add b
    jr nc, jr_02e_5e01

jr_02e_5e01:
    nop
    add b
    jr jr_02e_5e05

jr_02e_5e05:
    ld d, l
    ld a, [hl+]
    dec b
    ld [bc], a
    add hl, bc
    nop
    inc bc
    rst RST_38
    cp a
    ld d, a
    xor d
    ld d, l
    ld a, [bc]
    nop
    nop
    res 1, c
    and l
    cp c
    nop
    add d
    inc bc
    nop
    ldh [$ffc0], a
    add b
    add b
    nop
    and b
    ld d, h
    xor d
    add hl, bc
    nop
    ld b, $a0
    ld a, e
    add hl, bc
    rst RST_30
    ld [bc], a
    push af
    ld hl, sp+$7f
    nop
    ld a, a

jr_02e_5e31:
    ccf
    cp a
    ccf
    ccf
    ld a, a
    rst RST_38
    nop
    add hl, bc
    rst RST_38
    ld b, $15
    add hl, bc
    rst RST_38
    inc b

jr_02e_5e3f:
    ld a, [$5fd5]
    rst RST_38
    rst RST_38
    db $fd
    ld a, [$aa55]
    nop
    rst RST_38
    reti


    xor b
    dec d
    xor b
    nop
    add b
    nop
    rst RST_38
    ccf
    rst RST_38
    add hl, bc
    ld a, a
    inc b
    rst RST_38
    ret nz

    add b
    nop
    stop
    jr nz, jr_02e_5e5f

jr_02e_5e5f:
    ld b, b
    nop
    add b
    add b
    add hl, bc
    nop
    add hl, bc
    ld b, b
    nop
    nop
    and b
    ld d, b
    and b

jr_02e_5e6c:
    ret nc

    or b
    add hl, de
    ld c, d
    inc d
    add hl, bc
    nop
    ld b, $40
    ld a, [bc]
    dec d
    dec bc
    dec b
    add d
    ld b, c
    and b
    ret nc

    and b
    ld d, b
    xor b
    sub $bb
    inc d
    ld c, d
    ld sp, $0009
    inc b
    ld b, b
    add b
    jr nz, jr_02e_5e6c

    ld a, [bc]
    ld hl, sp-$01
    rst RST_38
    nop
    rst RST_38
    nop
    inc c
    ld bc, $2080
    ld c, h
    db $10
    rst RST_38
    nop
    sbc b
    add $08
    nop
    nop
    ret nz

    ld b, $00
    sbc [hl]
    ld a, b
    ret nz

    ld d, b
    add b
    jr nz, jr_02e_5eaa

jr_02e_5eaa:
    ld b, c
    add hl, bc
    nop
    ld [bc], a
    db $10
    inc h
    inc d
    ld [hl+], a

jr_02e_5eb2:
    dec d
    ld b, $96
    sub [hl]
    ld d, $25
    dec b
    dec b
    scf
    add [hl]
    dec h
    ld d, a
    add l
    daa
    ld h, h
    ld b, l
    ld d, [hl]
    nop
    nop
    and b
    ld b, b
    and b
    ret nc

    ld b, b
    inc d
    ld b, c
    ld b, c
    ld [de], a
    ld [hl-], a
    ld h, e
    ld b, c
    ld bc, $a603
    ld h, $27
    db $d3
    ld de, $6111
    ld b, c
    ld [de], a
    inc [hl]
    ld [de], a
    add h
    ld b, $15
    ld h, [hl]
    ld b, c
    ld [hl+], a
    ld [hl-], a
    ld [bc], a
    add d
    sub c
    ld bc, $0141
    and [hl]
    inc h
    ld d, h
    sub h
    dec h
    ld h, l
    ld b, l
    ld d, [hl]
    and e
    inc b
    ld b, h
    add h
    inc h
    ld h, h
    ld b, h
    ld d, [hl]
    ld bc, $0811
    inc b
    add d
    ld b, c
    and b
    ret nc

    or d
    and d
    and c
    ld d, c
    ld de, $c204
    jr nc, jr_02e_5eb2

    ld h, $27
    db $d3
    ld de, $6111
    ld b, c
    add hl, bc
    nop
    add hl, bc
    ret nz

    rst RST_38
    rst RST_38
    ld a, a
    rlca
    add hl, bc
    nop
    db $10
    db $10
    jr nc, jr_02e_5f39

    nop
    nop
    ld bc, $0000
    rra
    ccf
    ld a, a
    ld a, a
    rst RST_38
    ld e, a
    xor e
    ld d, l
    add hl, bc
    rst RST_38
    ld b, $5f
    add d
    ld b, $03
    add hl, bc
    nop
    ld [bc], a
    add b

jr_02e_5f39:
    rst RST_38
    add hl, bc
    nop
    ld b, $ff
    add hl, bc
    nop
    ld b, $ea
    add hl, bc
    nop
    ld b, $a0
    add hl, bc
    nop
    rlca
    db $10
    jr nz, jr_02e_5f5c

    add hl, bc
    nop
    inc b
    ld b, b
    add hl, bc
    nop
    add hl, bc
    and b
    ld b, b
    ret nz

    ret nz

    add b
    add b
    add hl, bc
    nop
    inc de

jr_02e_5f5c:
    add b
    add b
    ret nz

    add hl, bc
    nop
    rlca
    ldh [$ffe0], a
    ldh a, [$fff8]
    ld a, h
    ld a, $1f
    rrca
    add hl, bc
    nop
    dec b
    add b
    ret nz

    add hl, bc
    nop
    rlca
    rlca
    pop af
    db $fc
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    ldh a, [$fffe]
    ld a, a
    rra
    add e
    ldh [$ff09], a
    nop
    inc bc
    ldh a, [rIE]
    rst RST_38
    ccf
    ld bc, $0009
    inc bc
    and b
    ld b, c
    ret nz

    push bc
    add h
    add hl, bc
    nop
    ld b, $20
    add h
    add hl, bc
    inc b
    ld [bc], a
    ld b, $26
    ld h, $04
    inc d
    add d
    add h
    ld b, d
    ld b, h
    ld [bc], a
    inc h
    inc h
    add hl, bc
    nop
    rlca
    inc d
    inc d
    ld b, h
    ld b, h
    inc b
    ld h, $26
    inc h
    dec d
    sub h
    sub h
    inc b
    ld b, h
    ld b, h
    inc b
    inc h
    nop
    add b
    nop
    nop
    ld b, b
    ld b, b
    nop
    add hl, bc
    inc b
    ld [bc], a
    inc d
    inc d
    ld b, $86
    add [hl]
    jp nz, $9614

    add [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, $26
    dec h
    nop
    sub h
    add h
    ld b, h
    ld b, [hl]
    ld b, $26
    inc h
    ldh [c], a
    ldh [$fff0], a
    ld hl, sp+$7c
    ld a, $1f
    rrca
    dec b
    dec d
    inc d
    inc b
    inc b
    nop
    nop
    ret nz

    inc d
    sub l
    sub h
    inc b
    ld b, h
    ld b, h
    inc b
    inc h
    dec e
    nop
    add b
    rst RST_38
    rst RST_30
    and $00
    nop
    ld a, a
    ld a, [hl]
    ld h, b
    nop
    rst RST_10
    rst RST_30
    rst RST_20
    nop
    ld a, [bc]
    ld bc, $00fe
    add hl, bc
    ld a, a
    ld a, $ff
    stop
    nop
    ld a, [hl]
    db $10
    ld l, [hl]
    ld a, [hl]
    nop
    rst RST_38
    adc h
    nop
    sbc $c0
    ld [bc], a
    inc e
    add $d8
    rst RST_38
    jr jr_02e_601b

jr_02e_601b:
    inc a
    ld b, d
    ld b, b
    ld a, $6a
    inc d
    rst RST_38
    nop
    nop
    adc $d0
    ld [bc], a
    inc e
    ret c

    add $ff
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [$0af2]
    cp a
    ld [de], a
    ld [$2ad2], a
    ld d, d
    xor d
    ld c, d
    ld bc, $7f12
    ld a, [hl+]
    ld [de], a
    ld [$0a12], a

Jump_02e_6043:
    ld [bc], a
    ld a, [$0542]
    rst RST_38
    ret nz

    sbc a
    nop
    db $10
    ld b, a
    db $10
    ld bc, $ff17

Jump_02e_6051:
    ret nz

    sub a

Call_02e_6053:
    rlca
    db $10
    ld c, b
    rra
    nop
    db $10
    rst RST_38
    inc bc
    ld sp, hl
    nop
    ld [$0bc3], sp
    ldh [$ffc8], a
    rst RST_18
    ld h, e
    db $eb
    ldh [$ff08], a
    inc de
    ld [hl], c

jr_02e_6069:
    nop
    rst RST_00
    sub a
    rst RST_38
    ld [$4f17], sp
    stop
    rra
    add e
    nop
    rst RST_38
    jr nc, @+$21

    rrca
    rrca
    nop
    nop
    jp $ffcb


    jr nc, jr_02e_6069

    di
    add hl, bc
    nop
    ld hl, sp-$07
    nop
    cp a
    nop
    db $fc
    ld sp, hl
    ld hl, sp+$02
    nop
    ld c, [hl]
    nop
    xor d
    rst RST_38
    nop
    xor d
    nop
    ld a, [hl+]
    add sp, $02
    ld [$fd02], sp
    ld a, [$000a]
    or a
    or a
    nop
    nop
    ld d, a
    ld d, a
    rst RST_28
    nop
    nop
    ld d, l
    ld d, l
    ld a, [bc]
    nop
    db $e3
    nop
    rra
    rst RST_38
    ld [hl], a
    ld [hl], a
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    ld bc, $00ff
    rrca
    nop
    ld a, h
    inc bc
    db $e3
    rra
    sbc a
    rst RST_38
    and b
    and b
    nop
    ld b, $00
    inc a
    ld [bc], a
    ldh [c], a
    ld a, a
    ld e, $9e
    ld a, b
    ld a, b
    db $e3
    pop hl
    db $10
    ld e, $00
    ei
    nop
    cp $0d
    nop
    ldh a, [c]
    nop
    nop
    jr nc, jr_02e_610d

    ld e, a
    sub $d6
    stop
    rst RST_38
    rst RST_28
    inc c
    cp $e2
    nop
    ld e, a
    ld hl, sp+$00
    db $fc
    nop
    ldh a, [$ff03]
    db $10
    ldh a, [rTAC]
    db $10
    sub a
    ldh [rP1], a
    add b
    rrca
    ld [de], a
    ret nz

    ld de, $0a10
    ld bc, $5f04
    ld a, d
    ld [$1000], sp
    ld l, [hl]
    ld e, $11
    nop
    inc hl
    db $10
    call Call_000_1f7e

jr_02e_610d:
    ld d, $00
    ld a, [hl]
    add hl, sp
    db $10
    ld a, [bc]
    nop
    sub e
    ld a, h
    rst RST_38
    ld a, c
    cp $63
    db $fc
    ld a, l
    cp $7e
    rst RST_38
    rst RST_08
    cp a
    ld a, a
    push bc
    ccf
    ld a, [bc]
    ld bc, $1039
    ld b, d
    ld a, [hl]
    db $dd
    ld h, h
    ld d, h
    db $10
    ld h, [hl]
    ld a, [hl]
    ld l, d
    dec sp
    ld de, $fefe
    rst RST_28
    cp $c2
    cp $80
    ld h, [hl]
    db $10
    call nc, $e8fe
    rst RST_38
    ld a, [hl]
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl-], a
    ld [hl], a
    ld h, d
    ld [hl], a
    rst RST_38
    ld c, d
    ld l, a
    ld d, h
    ld e, a
    dec d
    ccf
    rla
    ccf
    rst RST_38
    ld d, c
    ld a, [hl]
    ld [hl], d
    add b
    ld b, d
    or b
    ld [hl+], a
    call nz, $c2ff
    inc b
    adc [hl]
    inc b
    ld c, $84
    ld b, $0c
    rst RST_38
    ld b, $0c
    ld a, [hl]
    rst RST_38
    di
    adc h
    ret nz

    and b
    rst RST_30
    ret nz

    and b
    call nz, $1095
    jp nz, $cca0

    and b
    rst RST_38
    ld b, $06
    ld [hl], b
    ld [hl], b
    ld a, a
    ld e, a
    ld a, a
    ld b, h
    rst RST_38
    ld a, a
    nop
    ld a, a
    ld b, b
    ld a, a
    add hl, sp
    ld a, a
    ld d, [hl]
    rst RST_38
    cp $f4
    ld a, $3e
    ld b, $06
    ret nz

    ret nz

    rst RST_38
    xor $2e
    xor $6a
    xor $68
    xor $e8
    rst RST_38
    ld e, a
    ld a, [hl]
    ld b, d
    db $fc
    ld c, [hl]
    ld a, h
    ld d, h
    ret c

    rst RST_38
    ld l, b
    ldh a, [$ff08]
    ldh a, [rNR14]
    ldh [rNR50], a
    ld b, b
    db $ec
    adc h
    ld de, $19d0
    adc $a0
    ldh [rNR24], a
    ld c, [hl]
    and b
    ccf
    rst RST_38
    add hl, sp
    ld c, a
    ld c, a
    ld [hl], e
    inc sp
    ld a, h
    ld b, h
    ld a, [hl]
    db $fd
    ld d, d
    ld e, h
    db $10
    ld [hl], d
    ld a, [hl]
    ld a, [hl]
    xor $a8
    xor $ff
    ld h, b
    xor $a2
    ld l, [hl]
    ld l, h
    ld c, $0a
    add $ff
    add $f0
    sub b
    db $fc
    call nz, $c0ec
    call c, $88ff
    sub h
    ld [$18b4], sp
    ld [hl], h
    jr c, jr_02e_6212

    ld e, a
    ld a, b
    ld l, h
    ld a, b
    ld b, h
    ld a, b
    ld a, [bc]
    nop
    rst RST_38
    ld [bc], a
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, a
    nop
    ld d, a
    ld b, a
    sbc $01
    push af
    ld bc, $00e3
    rst RST_38
    inc hl
    jr nz, @+$48

    nop
    ld d, a
    ld [bc], a
    rst RST_38

jr_02e_6207:
    ld d, a
    ld de, $86fe
    cp $02
    ld a, [hl]
    ld b, [hl]
    rst RST_38
    cp $0a

jr_02e_6212:
    ld a, [hl]
    ld e, [hl]
    ld a, [hl]
    ld l, d
    ld a, $36
    rst RST_38
    sbc $de
    inc d
    ld a, b
    dec l
    ld a, b
    inc l
    ld a, c
    rst RST_38
    inc l
    ld a, c
    ld c, l
    ld a, b
    ld c, h
    ld a, b
    ld b, l
    ld a, b
    rst RST_38
    inc d
    add hl, sp
    ld b, $0c
    add [hl]
    inc c
    ld h, [hl]
    adc h
    rst RST_38
    ld h, [hl]
    db $ec
    add d
    ld l, h
    ld h, d
    inc c
    add d
    inc c
    ei
    ld h, d
    adc h
    ld a, [bc]
    nop
    rlca
    nop
    ccf
    nop
    db $fc
    sbc $cc
    ld bc, $7e7e
    ldh a, [$fff0]
    halt
    inc hl
    ld a, h
    ld a, h
    rst RST_38
    ldh [$ffe3], a
    add e
    add b
    ld d, e
    nop
    stop
    rst RST_38
    ld a, h
    ld a, h
    ret nz

    jp Jump_000_1310


    db $10
    ld d, e
    ccf
    db $10
    db $d3
    db $d3
    db $10
    db $d3
    db $10
    sbc l
    jr nz, jr_02e_6207

    ld hl, $a1fc
    ld [hl+], a
    sbc d
    inc hl
    rst RST_10
    nop
    ld de, $12c6
    push bc
    ld a, a

jr_02e_627a:
    ld [de], a
    push bc
    inc d
    db $d3
    rst RST_10

jr_02e_627f:
    db $10
    rst RST_10
    sbc l
    jr nz, jr_02e_62b6

    inc hl
    jr nz, @+$01

    ld [hl-], a
    jr nz, jr_02e_627a

    nop
    rst RST_38
    nop
    daa
    jr nz, jr_02e_627f

    nop
    ld h, e
    ld [$eff7], sp
    inc bc
    ldh a, [rSB]
    ld hl, $8021
    ld a, a
    ldh [c], a
    ld hl, $86b3
    ld a, c
    xor b
    db $10
    jr nz, jr_02e_62c7

    jr nz, @-$1f

    call nc, $d729
    rst RST_38
    db $10
    sub b
    ld d, a
    ld d, b
    sub a
    ld d, b
    sub a
    db $10
    db $fd
    rst RST_10
    cp d

jr_02e_62b6:
    inc hl
    ld d, a
    ld d, a
    rla
    inc de
    ld d, a
    inc de
    rst RST_38
    ld d, a
    ld de, $5357
    ld d, e
    ld d, c
    ld d, l
    ld d, h
    rst RST_38

jr_02e_62c7:
    ld d, [hl]
    ld d, [hl]
    db $ec
    xor h
    ldh [$ff80], a
    add sp, $48
    rst RST_38
    xor $ae
    rst RST_28
    dec hl
    rst RST_28
    ld c, b
    rst RST_28
    xor b
    rst RST_38
    rst RST_28
    call z, Call_000_2811
    ld de, $6108
    nop
    rst RST_38
    ld [hl], b
    nop
    inc a
    nop
    rst RST_18
    nop
    rst RST_28
    nop
    rst RST_38
    di
    nop
    ld [bc], a
    xor $02
    cp $02
    cp $ff
    add d
    cp $42
    ld a, [hl]
    ld [hl-], a
    ld a, $8e
    adc [hl]
    rst RST_38
    ldh [$ffe0], a
    jp Jump_000_13c0


    nop
    db $d3
    nop
    rlca
    jp $c310


    and b
    ld hl, $3053
    ld e, h
    inc [hl]
    sbc e
    jr nz, jr_02e_6368

    ld sp, $6cfc
    ccf
    halt
    dec [hl]
    ret nz

    db $10
    pop bc
    ld de, $13c0
    di
    pop bc
    inc de
    cp d
    ld hl, $23ba
    rst RST_10
    call nc, $903f
    di
    rlca
    cp $f0
    dec b
    dec c
    nop
    rrca
    ldh a, [$ff3f]
    ret nz

    ret


    ld a, a
    and b
    scf
    rst RST_28
    ld bc, $d97a
    ld [hl+], a
    jp c, Jump_000_3f23

    db $fc
    ld l, a

jr_02e_6342:
    inc bc
    rst RST_38
    rrca
    db $fc
    and b
    scf
    ldh a, [$ff1f]

jr_02e_634a:
    xor d
    jr nc, jr_02e_634a

    ld a, a
    sub b
    scf
    inc d
    rst RST_10
    ccf
    sub a
    ld e, $ff
    rst RST_08
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld [de], a
    ldh a, [$ff30]
    sbc l
    ld hl, $3d16
    rst RST_38
    sub l
    ld bc, $6ffd
    ld h, a
    xor a

jr_02e_6368:
    daa
    rst RST_08
    rst RST_38
    rlca
    rst RST_28
    daa
    scf
    inc de
    dec de
    dec bc
    dec c
    rst RST_18
    dec b
    and [hl]
    and d
    db $fd
    dec b
    ld b, l
    jr nc, jr_02e_6342

    cp $df
    jp nc, $eefe

    cp $fa
    ld h, d
    db $10
    cp $ff
    cp $20
    ld b, b
    ccf
    ccf
    rst RST_18
    rst RST_18
    rst RST_28
    rst RST_28
    di
    rra
    db $d3
    db $fd
    adc l
    cp $42
    ld e, h
    jr c, jr_02e_63ff

    ccf
    ld b, e
    ld b, [hl]
    rst RST_38
    jp nz, $c010

    ld de, $13d0
    ret nc

    inc bc
    rst RST_38
    ret nc

    inc bc
    ret nz

    ld d, $80
    inc b
    ld [$ff70], sp
    db $10
    ldh [rNR42], a
    ret nz

    inc de
    pop de
    jr nc, jr_02e_6368

    ld [hl], e
    ld [hl], b
    ld [hl], b
    jr nz, @+$43

    ld a, [bc]
    ld bc, $7fc0
    add b
    or [hl]
    inc sp
    ld [hl], d
    ld [hl], c
    ld b, h
    ld a, h
    or h
    dec [hl]
    ld [hl], c
    ld b, h
    rlca
    rst RST_38
    inc bc
    db $e3
    nop
    ld c, $7e
    ld b, a
    db $fc
    rra
    ldh a, [rKEY1]
    ld [de], a
    ld [hl], b
    ld b, l
    or e
    ld [hl], $71
    ld b, h
    push hl
    ld bc, $34b4
    db $fc
    ret nc

    ld b, b
    or a
    ld [hl-], a
    pop bc
    ccf
    ld hl, sp-$02
    ld a, [bc]
    ld bc, $f1f3
    ld a, l
    ld a, h
    ld e, $3e
    dec bc
    rst RST_38
    rra
    add l
    adc a
    jp z, $04cf

    rlca
    ld b, $ff

jr_02e_63ff:
    rlca
    ld a, [hl]
    ld a, $3e
    ld a, [de]
    sbc $44
    ld l, [hl]
    rst RST_38
    jr nz, @-$4c

    sub b
    ld c, b
    adc b
    inc [hl]
    call nz, Call_02e_7f0a
    ldh a, [c]
    rst RST_38
    add b
    rst RST_38
    ret nz

    rst RST_38
    ldh [rDIV], a
    ld d, b
    rst RST_08
    ldh a, [c]
    rst RST_38
    db $fd
    rst RST_38
    rra
    ld b, b
    ld b, h
    ld c, a
    db $d3
    db $10
    rst RST_30
    jp nc, $d100

    inc sp
    ld b, e
    inc de
    add c
    rla
    sub b
    rst RST_38
    ld b, $01
    ld b, h
    jp nz, $f6fa

    ld [hl], $ed
    rst RST_38
    inc c
    ret c

    ld [$08b8], sp
    ld a, b
    ld [$fde1], sp
    ldh [$ff86], a
    ld b, b
    rrca
    ld hl, sp+$3f
    cp $1f
    nop
    inc de
    nop
    rra
    ld c, c
    ld d, b
    or [hl]
    dec [hl]
    ld b, $c0
    ld hl, $21c0
    or a
    inc [hl]
    pop af
    ldh a, [$ff59]
    ld e, h
    ld [hl+], a
    ld hl, $555c
    rra
    ld hl, sp+$07
    cp $fd
    inc bc
    ld e, c
    ld e, b
    rst RST_38
    rlca
    cp $1f
    db $fc
    rst RST_38
    dec bc
    push bc
    push bc
    ld e, h
    ld d, l
    ret nz

    ldh a, [rP1]
    adc b
    ld d, l
    ld h, $21
    adc b
    ld d, b
    or $67
    ld d, [hl]
    add e
    add e
    ld [bc], a
    nop
    rst RST_38
    rra
    rst RST_38
    rrca
    cp $59
    ld d, h
    dec b
    ld sp, hl
    add d
    ld a, h
    ld b, c
    ld a, $20
    rst RST_38
    ccf
    or b
    cp a
    jr jr_02e_64b7

    sbc h
    sbc a
    rra
    rst RST_38
    rra
    ld a, a
    ccf
    cp a
    sbc a
    ld e, a
    ld c, [hl]
    xor a
    rst RST_38
    dec h
    ld d, a
    sub b
    dec bc
    add sp, $05
    db $f4
    ret nz

    db $ed
    ld hl, sp+$54
    ld b, c
    ret nc

    ld de, $415c
    ret nc

    inc bc

jr_02e_64b7:
    sub b
    rst RST_38
    inc bc
    ld d, b
    rla
    nop
    ld b, [hl]
    ld bc, $03fd
    rst RST_38
    ei
    rlca
    rst RST_30
    ld [$1be8], sp
    ret c

    scf
    rst RST_38
    or b
    ld [hl], a
    ld [hl], b
    ld sp, hl
    sbc b
    di
    ldh a, [$ffe7]
    and a
    ldh [$ffcf], a
    ret nz

    dec c
    nop
    xor c
    ld b, b
    ret nz

    cp a
    ld [hl], $f0
    or b
    ld [hl], e
    ld d, h
    or b
    dec sp
    ld l, $67
    jr z, jr_02e_654b

    ld bc, $39ff
    ld de, $7c7e
    ldh a, [rLCDC]
    ld [hl], d
    ld d, l
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld l, a
    xor a
    ld h, h
    ld h, b
    db $fc
    jp nz, $ef51

    ld bc, $9f9f
    ld c, a
    ld c, a
    and e
    and e
    di
    pop de
    pop de
    inc [hl]
    ld hl, $4098
    rst RST_38
    ldh a, [c]
    inc a
    ei
    rst RST_38
    adc h
    ld sp, hl
    adc $fc
    rst RST_20
    inc e
    rla
    sbc h
    ld a, a
    sbc a
    adc h
    adc a
    xor $ef
    nop
    add $02
    ld h, e
    rst RST_38
    rrca

Jump_02e_6524:
    rst RST_28
    rra
    rst RST_18
    ccf
    cp a
    ld a, a
    ld a, a
    ld a, a
    rst RST_28
    rst RST_20
    sbc $c7
    rst RST_18
    pop bc
    cp a
    ld a, [de]
    inc de
    adc [hl]
    or a
    inc [hl]
    add b
    rst RST_38
    ld hl, sp+$27
    jr nz, jr_02e_65ae

    ld b, h
    ldh a, [rSC]
    ld l, b
    add e
    ld h, a

Call_02e_6544:
    jr nc, @+$71

    ld b, l
    and b
    ld [hl], $ba
    ld l, c

jr_02e_654b:
    adc b
    ld d, e
    cp h
    ld h, l
    rrca
    rst RST_28
    rst RST_38
    rst RST_38
    db $fc
    rrca
    ld a, a
    ld b, h
    rrca
    cp $7f
    ld d, c
    ld hl, sp+$02
    ld d, b
    add $22
    ld [hl], $21
    add b
    nop
    ld d, b
    ldh a, [$ffc4]
    ld d, b
    ld a, c
    ldh a, [$ffb9]
    ld l, d
    sub $6d
    ldh a, [rIF]
    inc c
    inc e
    ld [hl], b
    ld b, e
    push hl
    inc bc
    ld c, l
    ld h, b
    ld bc, $54a7
    ld a, [hl]
    jr nz, jr_02e_657e

jr_02e_657e:
    rst RST_30
    rst RST_30
    ccf
    jp $f3c3


    di
    pop af
    pop af
    halt
    ld b, b
    rla
    ld h, b
    cp $7e
    ld b, e
    cp $fe
    db $fd
    db $fc
    ei
    ld hl, sp-$09
    rst RST_38
    ldh a, [$ffef]
    ldh [$ffdf], a
    ret nz

    cp a
    add b
    ld a, a
    call nc, $0eef
    ldh a, [$ff09]
    ld a, [hl-]
    sub b
    ld [hl], b
    inc a
    sub h
    ld [hl], b
    ld e, h
    ld e, h
    and c
    ld e, [hl]
    sbc d

jr_02e_65ae:
    ld [hl], d
    inc e
    ld b, c
    and b
    ld a, c
    add hl, sp
    ld de, $b4be
    ld [hl], b
    sbc $fa
    cp b
    ld [hl], b
    xor $bc
    ld [hl], b
    db $dd
    call c, $eeee
    rst RST_30
    ld l, $c4
    ld [hl], b
    ei
    ei
    db $fd
    jp z, $fe70

    inc sp
    ld hl, $7140
    rst RST_38
    rrca
    db $fc
    rra
    ldh [$ff3f], a
    ldh a, [$ff1f]
    ld hl, sp+$02
    adc l
    nop
    nop
    inc b
    ld [hl], h
    and c
    ld [hl], $f0
    ld a, [bc]
    dec e
    add b
    inc d
    rst RST_18
    nop
    nop
    rlca
    rst RST_38
    nop
    inc bc
    add hl, bc
    nop
    rst RST_38
    cp a
    add b
    ld a, a
    ldh a, [$ff1f]
    db $fc
    inc bc
    inc bc
    nop
    rlca
    rst RST_38
    rst RST_38
    rrca
    db $fc
    ld c, $00
    rst RST_38
    ld bc, $feff
    jr jr_02e_6608

    add b

jr_02e_6608:
    ld a, a
    rst RST_00
    ld hl, sp-$31
    db $fc
    rra
    db $fd
    nop
    stop
    ret nz

    rst RST_38
    ld hl, sp+$3f
    ldh [$ff7f], a
    cp l
    add b
    dec bc
    inc b
    ld a, h
    nop
    db $10
    adc a
    ld b, $09
    ld a, b
    rst RST_28
    ld hl, sp+$3f
    rst RST_38
    rrca
    dec de
    nop
    inc e
    db $fc
    rlca
    ld a, [hl]
    inc h
    nop
    rst RST_38
    rlca
    db $fc
    ccf
    rst RST_38
    rlca
    stop
    nop
    ld l, b
    ld [bc], a
    jr nc, @+$03

    ld de, $0f00
    ld bc, $0869
    ld c, $02
    ld l, c
    ld [$0002], sp
    cp [hl]
    ld h, a
    ld [$ff0f], sp
    rst RST_38
    ld hl, sp+$03
    ld h, a
    ld b, $7f
    ld b, a
    ld hl, sp-$01
    ldh [$ff03], a
    ld [bc], a
    ld l, c
    inc b
    ld e, e
    ld [bc], a
    ld bc, $07b6
    ld a, b
    inc b
    ld bc, $00b3
    ld h, a
    ld a, [bc]
    db $10
    sbc a
    sbc h
    sbc h
    ld l, b
    dec b
    push af
    inc bc
    inc h
    nop
    rra
    rrca
    nop
    cp $fe
    db $fc
    db $fc
    ld e, a
    ldh a, [$fff0]
    nop
    nop
    ld [hl], a
    nop
    inc d
    ld a, e
    ld [$9514], sp
    jp c, Jump_000_1010

    call c, $1214
    sbc $1a
    ld [de], a
    inc bc
    dec bc
    rst RST_38
    xor e
    nop
    rst RST_30
    jr nc, jr_02e_66a6

    ei
    inc [hl]
    db $10
    db $fd
    jr c, @+$12

    cp $00
    inc a
    db $10
    dec e
    nop
    add b
    ei
    rst RST_38
    db $e3

jr_02e_66a6:
    nop
    ld [$ffe1], sp
    jp $c0ff


    and e
    rst RST_38
    add b
    stop
    ld de, $1901
    inc bc
    nop
    jr nz, @+$0e

    ret


    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    inc de
    rst RST_38
    and c
    rst RST_38
    pop hl
    rst RST_38
    cp $1b
    cp $17
    rst RST_38
    push hl
    rst RST_38
    pop bc
    ldh [c], a
    ld b, b
    ld [bc], a
    add c
    ld b, [hl]
    ld b, $19
    dec b
    add hl, de
    dec b
    ld c, c
    rst RST_38
    ld [hl], c
    rst RST_38
    cp $13
    cp $1d
    cp $0d
    rst RST_38
    rlca
    cpl
    rst RST_38
    dec b
    rst RST_38
    inc bc
    ld b, [hl]
    nop
    ld bc, $0a72
    add hl, de
    dec b
    db $eb
    db $e3
    rst RST_38
    adc d
    nop
    nop
    ld hl, $3005
    rst RST_38
    db $fc
    xor $8a
    ld a, [bc]
    inc c
    rst RST_38
    ccf
    adc d
    ld a, [bc]
    ld h, b
    rst RST_38
    ldh a, [$ffd4]
    sbc b
    ld bc, $008e

jr_02e_6709:
    ld bc, $006e
    inc bc
    ld l, d
    nop
    rrca
    rst RST_38
    pop hl
    rra
    adc d
    ld bc, $02c2
    db $d3
    rrca
    db $db
    inc bc
    ld bc, $00ff
    push bc
    ccf
    ldh a, [rP1]
    rra
    db $f4
    rrca
    cp $06
    adc d
    nop
    pop af
    rst RST_38
    db $dd
    ld [hl], b
    or [hl]
    nop

jr_02e_672f:
    ld h, b
    rst RST_38
    ld b, b
    ld a, [de]
    ld [de], a
    db $fd
    rst RST_38
    ld d, a
    ld hl, sp-$01
    ld a, b
    inc d
    db $10
    jr nc, jr_02e_6766

    ld [de], a
    jr nz, jr_02e_6709

    nop
    ld d, h
    ld hl, $8a0b
    ld bc, $ca3f
    nop
    rra
    ret z

    nop
    rrca
    ld l, d
    nop
    db $f4
    ld c, a
    add hl, de
    push bc
    ld bc, $20aa
    nop
    xor d
    rst RST_38
    ld d, l
    rst RST_38
    ld e, a
    rst RST_38
    ld d, l
    ld d, l
    xor d
    xor d
    adc [hl]
    nop
    xor e
    ld l, d

jr_02e_6766:
    nop
    rst RST_30
    xor e

jr_02e_6769:
    rst RST_38
    ld d, a
    ld l, b
    ld [de], a
    xor e
    nop
    ld bc, $e3aa
    xor d
    ld d, l
    ld h, a
    db $10
    ld h, l
    ld de, $113f
    nop
    nop
    xor d
    rst RST_38
    xor d
    ld d, a
    ld d, b
    rst RST_38
    rst RST_30
    cp d
    rst RST_28
    ld [hl], l
    rst RST_38
    rst RST_18
    jr nz, jr_02e_6769

    rst RST_38
    rst RST_18
    nop
    jr nz, @-$14

    rst RST_38
    ld a, [bc]
    push de
    push de
    rst RST_38
    rst RST_38
    xor e
    cp $56
    ld a, a
    db $fd
    inc b
    ei
    rst RST_38
    rst RST_30
    nop
    ld [$1280], sp
    rst RST_30
    rst RST_00
    rst RST_28
    jr c, jr_02e_672f

    dec d
    nop
    nop
    ldh [$ffe0], a
    cp e
    ld a, a
    ld a, a
    ld [hl-], a
    nop
    sbc a
    rst RST_38
    ldh [$ffbc], a
    inc de
    add b
    ei
    add b
    rst RST_38
    ld [hl+], a
    db $10
    add a
    ld hl, sp-$08
    rlca
    add a
    rst RST_38
    add a
    nop
    nop
    dec bc
    dec bc
    ccf
    ccf
    rst RST_38
    ld l, a
    ld hl, sp+$7d
    jp $0ef7


    db $10
    rst RST_20
    rst RST_20
    adc [hl]
    nop
    ld a, d
    adc d
    ld [bc], a
    sbc a
    ld [hl-], a
    nop
    jr nc, @+$01

    call nz, $8ec4
    ld de, $82de
    ld de, $07fe
    ld d, a
    ld hl, sp-$46
    inc d
    add b
    nop
    rst RST_38
    db $fc
    ld bc, $05f8
    ldh a, [c]
    dec b
    ldh a, [c]
    adc l
    rst RST_18
    jp nz, Jump_02e_424d

    dec e
    ld b, d
    cp [hl]
    ld de, $fefe
    db $fc
    call z, $bd02
    ld [de], a
    nop
    stop
    ld [$1b1f], sp
    rst RST_38
    rst RST_38
    ei
    rst RST_38
    ld sp, hl
    rst RST_38
    db $fd
    nop
    ld bc, $3c1e
    jr nz, jr_02e_681b

    nop
    ld [bc], a
    rst RST_38
    dec h

jr_02e_681b:
    add hl, hl
    cp [hl]
    db $10
    ld b, d
    ld [de], a
    ldh [$ff9b], a
    ld de, $2031
    ld d, b
    inc h
    ld b, a
    ld a, [hl+]
    ld hl, $fc00
    nop
    rst RST_00
    ld e, h
    ld hl, $6d00
    daa
    ccf
    nop

jr_02e_6835:
    inc bc
    ld a, d
    jr z, jr_02e_6835

    ld hl, $ee04
    ld c, h
    inc h
    ldh a, [$fff2]
    db $fc
    sbc b
    nop
    db $fc
    rst RST_38
    db $ec
    ld a, a
    rst RST_38
    ld l, d
    ld a, a
    nop
    nop
    jr nz, jr_02e_686e

    call nz, $ce10
    jr nz, jr_02e_6853

jr_02e_6853:
    ldh [c], a
    ldh [c], a
    ld hl, sp+$09
    jr nz, @+$3e

    ld hl, $e1e0
    ld a, [hl]
    or [hl]
    ld hl, $1a1a
    ld a, b
    ld a, b
    inc b
    db $fc
    jr nz, @+$26

    rst RST_38
    ld a, a
    add c
    ld a, a
    ret nz

    ld a, a
    ld b, [hl]

jr_02e_686e:
    ld b, $72
    db $fd
    ld [hl-], a
    ld b, b
    ld hl, $0200
    db $fd
    db $fc
    rst RST_38
    cp $ff
    ld bc, $dbfe
    jp c, Jump_000_3031

    ld bc, $f301
    rlca
    rlca
    or h
    ld hl, $01cf
    jr nz, jr_02e_68cb

    adc b
    adc a
    db $e3
    add a
    add a
    ld h, $23
    sbc c

jr_02e_6894:
    ld bc, $153d
    rst RST_38
    rst RST_38
    cp a
    ld l, h
    xor b
    nop
    rst RST_00
    ld bc, $fb3b
    and d
    jr nz, jr_02e_6894

    ld hl, sp+$24
    jr nc, @+$01

    db $fc
    db $fc
    inc e
    db $fc
    sbc h
    db $fc
    call z, $f7fc
    ld h, d
    ld a, a
    ld h, [hl]
    ld sp, $6030
    ld a, a
    ld [hl], b
    ld a, a
    db $fd
    ld d, d
    add hl, sp
    jr nc, @+$58

    ld a, a
    and l
    ld a, [hl+]
    sub l
    ld a, [de]
    cp $42
    ld sp, $7af5
    sbc l
    ld a, [de]

jr_02e_68cb:
    adc l
    ld e, $8f
    rst RST_18

jr_02e_68cf:
    dec de
    pop bc
    pop bc
    nop
    nop
    cp h
    ld hl, $fafa
    rst RST_30
    add b
    add b
    db $fc
    sub l
    jr nz, jr_02e_68ff

    ccf
    ld h, b
    ld h, b
    rst RST_18
    rrca
    rrca
    nop
    rst RST_38
    ld b, b
    xor a
    jr nz, jr_02e_6906

    dec de
    ld a, [hl]
    ld e, [hl]
    jr nc, jr_02e_68cf

    sub b
    adc a
    rst RST_38
    ldh a, [$ff78]
    add hl, bc
    jr nz, @+$01

    and d
    and e
    nop
    nop
    ld e, $fe
    inc bc

jr_02e_68ff:
    db $fd
    cp a
    inc a
    jp Jump_000_01c1


    inc sp

jr_02e_6906:
    inc sp
    db $ed
    nop
    rst RST_38
    or e
    ld c, $0e
    xor $11
    ld sp, $9011
    sbc a
    sub b
    ld sp, $ae20
    ldh a, [rP1]
    rst RST_08
    rst RST_08
    rst RST_38
    ld l, d
    nop
    nop
    sbc b
    ld [bc], a
    rlca
    rst RST_38
    rst RST_38
    and e
    cp a
    rst RST_00
    rst RST_00
    set 1, a
    add a
    rst RST_28
    add a
    ld [hl], e
    di
    rra
    ld [de], a
    nop
    di
    di
    jp $c3ff


    inc a
    db $fc
    adc $ce
    jr jr_02e_6959

    ldh [rIE], a
    db $fc
    ret nz

    db $fc
    inc b
    db $fc
    db $f4
    db $f4
    add b
    rst RST_38
    add b
    ld b, b
    ld l, c
    nop
    ld l, b
    nop
    ld l, b
    ld b, $ff
    ld l, [hl]
    ld a, [de]
    ld a, [hl]
    ld a, [bc]
    ld l, a
    ld e, d
    ld a, a
    ld c, d

jr_02e_6959:
    rst RST_38
    ld a, a
    adc l
    dec de
    adc a
    rra
    adc l
    dec de
    rst RST_38
    rst RST_38
    ld a, e
    adc a
    ld e, d
    adc a
    ld e, e
    sub a
    ld e, [hl]
    sub l
    rst RST_20
    ld e, [hl]
    and d
    and d
    rst RST_08
    ld bc, $113f
    add c
    add c
    ldh a, [$ff7d]
    ldh a, [$ff8c]
    nop
    ld a, a
    jp nz, $01c2

    ld bc, $0121
    cp a
    ldh a, [$fff0]
    inc l
    inc l
    ldh a, [$fff0]
    sub h
    ld sp, $effe
    cp $31
    pop af
    nop
    stop
    ld a, a
    ld a, a
    ld bc, $01ff
    ld a, c
    ld sp, hl
    nop
    rst RST_38
    ld h, $27
    pop bc
    ei
    pop bc
    ld a, a
    jr nz, jr_02e_69a3

jr_02e_69a3:
    add b
    rst RST_38
    ld hl, sp-$08

jr_02e_69a7:
    jp $c3ff


    ccf
    rst RST_38
    ld [bc], a
    rst RST_38
    add a
    add a
    jp nz, $c2ff

    ld [hl], e
    di
    nop
    rst RST_38
    ld b, $07
    adc a
    rst RST_38
    adc a
    db $e3
    db $e3
    rlca
    rst RST_38
    ld h, c
    ld a, a
    rra
    rst RST_38
    rra
    add e
    add e
    push hl
    push hl
    inc bc
    rst RST_38
    add e
    cp $12

jr_02e_69ce:
    db $10
    ret nz

    ret nz

    ld a, b
    ld hl, sp+$01
    rst RST_38
    jr nc, jr_02e_69ce

    ccf
    add hl, de
    add hl, de
    ld a, [$0031]
    cp $c0
    cp $ff
    ld b, h
    ld b, [hl]
    ldh [c], a
    ldh [c], a
    ld [hl], b
    ldh a, [$ff0e]
    cp $ff
    ld [bc], a
    cp $4a
    ld a, a
    ld c, b
    ld a, a
    ld b, h
    ld [hl], a
    rst RST_38
    ld b, b
    ld [hl], e
    ld b, b
    ld [hl], e
    ld b, h
    ld [hl], a
    ld c, h
    ld a, a
    ei
    ld e, b
    ld a, a
    db $ec
    jr nc, jr_02e_6a60

    sbc l
    ld e, e
    sbc a
    ld e, e
    cp l
    sbc a
    db $ed
    jr nc, jr_02e_69a7

    ld e, e
    sub a
    ld e, d
    ld [de], a
    nop
    ld h, b
    adc [hl]
    sub [hl]
    nop
    inc c
    rst RST_38
    ld c, $38
    jr nz, jr_02e_6a46

    ld de, $0721
    add b
    cp $ca
    db $10
    ldh a, [rIE]
    ld e, c
    rst RST_38
    adc a
    rst RST_38
    call $ffbf
    inc e
    rst RST_38
    ld h, $ff
    jp nz, Jump_02e_404f

    inc e
    rst RST_28
    rst RST_38
    jr @+$01

    ld b, $4f
    ld b, b
    add e
    rst RST_38
    ld e, h
    xor d
    cp b
    nop
    adc b
    jr nz, jr_02e_6a47

    ret nz

    or [hl]
    nop
    jr @-$58

jr_02e_6a46:
    nop

jr_02e_6a47:
    inc bc
    ld l, a
    sub l
    ld c, d
    and l
    ld a, [hl+]
    ldh [c], a
    ld c, c
    ld c, e
    ld [hl], h
    ldh a, [rVBK]
    sbc $f6
    ld b, c
    ld c, b
    ld [hl], a
    cp a
    ld b, b
    ld hl, $7101
    add hl, bc
    ld e, b
    db $10

jr_02e_6a60:
    ld d, d
    dec b
    ld b, c
    adc [hl]
    ld [bc], a
    add $e6
    jr nz, jr_02e_6abb

    add $18
    ld d, l
    rst RST_38
    rst RST_38
    inc h
    rst RST_38
    ld l, [hl]
    rst RST_38

jr_02e_6a72:
    ld c, [hl]
    rst RST_38
    adc $a4
    jr z, jr_02e_6ace

    ld a, $12
    ret nz

    xor c
    ld bc, $543e
    inc bc
    sbc c
    nop
    ld hl, sp+$49
    rlca
    ld c, b
    ld d, a
    ld a, $11
    rrca
    db $fd
    jr nc, @-$75

    inc de
    ldh a, [rNR31]
    ld b, b
    rst RST_38
    cp a
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    rst RST_38
    ei
    inc bc
    ld hl, sp+$01
    ld h, h
    cp $f4
    cp $f5
    or $83
    ld d, b
    ld d, $6d
    ld b, b
    ldh [c], a
    cp $fa
    cp $ff
    ld [hl], b
    rst RST_38
    ld [hl], d
    rst RST_38
    ld h, d
    rst RST_38
    and $ff
    rst RST_30
    rst RST_28
    rst RST_38
    rst RST_08

jr_02e_6abb:
    ret z

    db $10
    sbc l
    rst RST_38
    ld hl, sp+$00
    ei
    ld sp, hl
    ld bc, $59a2
    ld a, [hl]
    cp $0e
    ld a, [hl]
    add b
    rst RST_38
    ld a, $c0

jr_02e_6ace:
    ld e, $ee
    ld c, $f6
    ld b, $f8
    cp a
    ld [bc], a
    db $fc
    nop
    add hl, de
    rst RST_38
    jr c, jr_02e_6a72

    nop
    ld h, h
    cp [hl]
    push bc
    ld d, b
    db $ec
    rst RST_38
    adc $ff
    sbc $c8
    db $10
    ccf
    cp a
    rst RST_38
    dec sp
    rst RST_38
    ld a, e
    rst RST_38
    ld [hl], c
    rst RST_10
    ld d, b
    db $e4
    ld d, h
    db $db
    ld d, b
    call z, $9e51
    db $d3
    ld d, b
    inc sp
    rst RST_10
    ld d, b
    ld [hl], l

Call_02e_6aff:
    push bc
    ld d, b
    ret nc

    and b
    ld e, l
    and d
    ld d, l
    ld a, d
    ld hl, $5110
    cp $10
    ld h, h
    nop
    cp $d3
    nop
    nop
    jr nz, jr_02e_6b65

    jp z, $ce51

    or d
    ld b, b
    rra
    rst RST_38
    add l
    dec de
    rst RST_20
    ld d, b
    ld sp, $550f
    ld sp, $2066
    ld d, h
    ld b, c
    ld h, [hl]
    ld h, b
    ld c, d
    db $db
    ld d, b
    call nz, Call_02e_6053
    adc [hl]
    ld d, a
    ld h, b
    ld b, a
    ld de, $5f39
    ld h, b
    db $dd
    ld sp, $00b6
    ld h, h
    rst RST_38
    xor $cd
    ld d, b
    rst RST_18
    rst RST_38
    db $fc
    rla

jr_02e_6b44:
    ld h, c
    ld [hl], b
    ld l, c
    inc bc
    inc bc
    rrca
    inc c
    rra
    inc e
    rst RST_38
    ccf
    jr c, jr_02e_6b90

    jr nc, jr_02e_6b92

    jr nz, @+$81

    ld [hl], b
    xor d
    adc d
    ld h, b
    ld b, b
    adc d
    ld h, b
    ld h, b
    dec [hl]
    jr nc, @+$42

    sbc b
    ld h, d
    ld h, b
    add sp, $20

jr_02e_6b65:
    ld a, [bc]
    push af
    ld hl, $0521
    inc bc
    jp z, Jump_02e_7803

    ld [hl], b
    ld [hl], b
    ld sp, hl
    ld [hl], c
    jp nz, Jump_000_3c61

    jr nz, jr_02e_6bf4

    nop
    ld h, c
    nop
    ld sp, $befe
    db $10
    rst RST_00
    jr c, @-$74

    ld l, l
    ld b, l
    ld a, l
    ld b, l
    rst RST_38
    ld a, l
    ld l, l
    jr c, jr_02e_6b44

    nop
    rst RST_00
    rlca
    rlca
    rst RST_38
    inc bc

jr_02e_6b90:
    dec de
    db $e3

jr_02e_6b92:
    dec hl
    or e
    inc de
    di
    inc de
    rst RST_38
    di
    or e
    db $e3
    db $eb
    inc bc
    dec de
    ld bc, $ff11
    nop
    ld bc, $7951
    ld bc, $0101
    ld de, $11bf
    add hl, sp
    ld de, $3131
    ld a, c
    ld hl, $fe02
    cp $76
    jr nz, @-$04

    nop
    or $00
    db $f4
    nop
    ld hl, sp-$01
    inc bc
    jp Jump_000_033b


    ld b, l
    ld bc, $0082
    ld e, [hl]
    ld d, $71
    ld b, l
    ld bc, $033b
    jp z, Jump_000_0160

    jp nz, $e263

    jp nz, Jump_02e_7562

    jr jr_02e_6c38

    adc l
    nop
    sbc b
    ld h, b
    ld h, a
    ccf
    jr nc, @+$01

    rra
    rra
    nop
    add b
    inc bc
    inc bc
    inc bc
    ei
    adc $41
    ld [hl], b
    dec bc
    db $fd
    db $fd
    ld l, l
    ld b, b
    add hl, de
    ld h, b
    ld [hl], b
    ld [hl], l

jr_02e_6bf4:
    xor $50
    ld [hl], d
    ld [hl], h
    ld [hl], c
    ld [hl], l
    ld e, b
    ld [hl], c
    ld a, c
    ld a, e
    nop
    db $fd
    ret nz

    ld hl, $0202
    ld sp, hl
    ei
    ld sp, hl
    ei
    db $fc
    rra
    db $fd
    db $fc
    db $fd
    inc bc
    sub e
    ld b, d
    ld [hl], b
    ld b, e
    ld [hl], b
    ld h, h
    dec h
    rst RST_38
    ld a, c
    ld a, e
    ld a, h
    ld a, l
    ld a, h
    ld a, l
    ld a, [hl]
    halt
    rst RST_38
    ld a, a
    ld [hl], a
    ld a, a
    ld h, e
    ld a, a
    ld h, c
    ld a, a
    ld h, b
    ld e, [hl]
    ld l, b
    ld [hl], c
    di
    ei
    rlca
    rst RST_20
    ld c, $12
    rst RST_38
    xor h
    ld h, d
    ld a, [hl-]
    ld h, $23
    cp $98

jr_02e_6c38:
    nop
    ld hl, sp-$01
    ldh [$ff9c], a
    ld h, c

jr_02e_6c3e:
    or d
    ld a, d
    ld [hl], d
    or c
    ld [hl], c
    ld [hl], b
    call nz, $8871
    ld h, b
    or b
    ccf
    cp b
    adc [hl]
    nop
    inc l
    ld c, l
    ld de, $0621
    ld a, a
    ld [hl], b
    cp b
    nop
    ldh [rNR41], a
    rlca
    xor e
    ld h, c
    cp $99
    db $10
    jr z, jr_02e_6c3e

    ld hl, $21de
    rst RST_18
    ld hl, $dc03
    ld [hl+], a
    dec e
    add b
    ld a, [de]
    rst RST_38
    nop
    db $fc
    ldh [$fff8], a
    add b
    ld [hl], b
    nop
    ldh [rIE], a
    nop
    ret nz

    nop
    add c
    add b
    add e
    pop bc
    push bc
    ld a, a
    nop
    rrca
    inc bc
    rra
    nop
    jr c, jr_02e_6c85

jr_02e_6c85:
    dec b
    inc bc
    rst RST_38
    add b
    ldh [$ffe0], a
    nop
    rst RST_38
    db $fc

jr_02e_6c8e:
    rst RST_38
    db $fc
    ld a, a
    rlca
    inc a
    rla
    sub h
    cpl
    or h
    ld l, a
    ld a, [hl+]
    nop
    rst RST_30
    rrca
    db $dd
    ld [hl+], a
    jr nc, jr_02e_6ca9

    rst RST_18
    jr nz, @-$3c

    ld a, [bc]
    rst RST_38
    add l
    inc d
    add a
    or l

jr_02e_6ca9:
    add a
    pop af
    add a

jr_02e_6cac:
    ldh a, [rIE]
    add e
    ld hl, sp-$7f
    ld hl, sp-$80
    cp $d0
    ld de, $f8ff
    rr b
    rst RST_28
    jr jr_02e_6cac

    jr z, jr_02e_6c8e

    ccf
    ldh a, [rTAC]
    ldh [$ff1f], a
    nop
    ccf
    ld a, [hl+]
    inc bc
    ld h, b
    rlca
    ei
    rst RST_18
    jr nz, jr_02e_6d3e

    ld bc, $00ff
    rst RST_38
    ld [$7fbf], sp
    ld b, b
    add b
    ld a, a
    rst RST_38
    nop
    add b
    rst RST_38
    add b

jr_02e_6cdd:
    nop
    rst RST_38
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    rst RST_38
    nop
    nop
    ld a, c
    rst RST_38
    adc d
    ld bc, $0190
    ld bc, $07fe
    ld hl, sp-$76
    inc bc
    rst RST_38
    sub h
    cpl
    db $f4
    rrca
    db $f4
    rrca
    db $fc
    rlca
    rst RST_38
    db $fc
    rla
    db $fc
    rlca
    inc b
    rst RST_38
    db $fc
    inc bc
    rst RST_38
    nop
    rst RST_38
    ld a, a
    rst RST_38
    ld e, a
    ldh [$ffdf], a
    ld l, b
    sbc $70
    ld bc, $21de
    rst RST_18
    ld hl, $008c
    rst RST_38
    di
    rst RST_38
    rrca
    rst RST_00
    jr c, jr_02e_6cdd

    ld h, b

jr_02e_6d1f:
    ld a, a
    ret nz

    cp a
    rst RST_30
    add b
    ld a, a
    add b
    ret nz

    ld bc, $f0ff
    ei
    inc e
    rst RST_38
    push af
    ld c, $fc
    inc bc
    rst RST_38
    ld bc, $03ff
    rst RST_38
    jr jr_02e_6d1f

    and $c7
    add $1b
    and [hl]
    inc hl

jr_02e_6d3e:
    rst RST_38
    ld h, [hl]
    dec hl
    add [hl]
    dec bc
    ld h, $0b
    cp $df
    ld a, e
    sbc $23
    ldh a, [$ff09]
    rst RST_18
    ld hl, $007f
    nop
    add hl, de
    rst RST_28
    ccf
    add b
    rst RST_38
    rlca
    db $10
    ld de, $03fa
    ld a, [$00ff]
    ld sp, hl
    inc b
    ld sp, hl
    ld [bc], a
    db $fc
    ld bc, $fffc
    push de
    cp $d1
    cp $d3
    and $cb
    or $ff
    db $d3
    halt
    db $db
    ld h, [hl]
    ld c, e
    ld h, $0b
    rst RST_18
    db $fd
    ld hl, $0972
    cp a
    nop
    sbc a
    ret nz

    rst RST_08
    ldh [$ffdf], a
    ldh [rSVBK], a
    rst RST_38
    ccf
    rst RST_38
    adc c
    inc b
    cp $00
    rst RST_38
    ldh [c], a
    inc bc
    dec c
    ld c, $fb
    db $fc
    rst RST_38
    ldh a, [$fffe]
    adc d
    inc bc
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
    cp $ff
    ld bc, $afff
    rst RST_38
    ld e, c
    rst RST_38
    ld h, $ff
    rst RST_30
    add hl, de
    rst RST_38
    ld [$1010], sp
    ld [bc], a
    rst RST_38
    ld bc, $df77
    ccf
    scf
    ld c, b
    ld [hl], a
    cp a
    add d
    db $10
    ccf
    rst RST_38
    ld a, e
    nop
    rst RST_28
    ld a, l
    nop
    xor e
    db $f4
    cp e
    ld b, h
    sub b
    inc de
    rlca
    rst RST_38
    nop
    ld [hl], a
    sbc c
    nop
    dec e
    nop
    ld e, d
    db $fd
    nop
    nop
    dec b
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    rst RST_38
    rla
    nop
    nop
    ld bc, $0a01
    ld a, [bc]
    dec d
    rst RST_38
    dec d
    ccf
    cp a
    rrca
    ld a, a
    inc bc
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    ld b, b
    ld b, b
    add c
    add b
    rst RST_38
    rst RST_38
    push de
    rst RST_38
    xor [hl]
    rst RST_38
    push af
    rst RST_38
    ld a, [$7eff]
    rra
    nop
    ld [$ff00], sp
    and d
    rst RST_38
    ld d, l
    jr z, jr_02e_6e11

jr_02e_6e11:
    rst RST_38
    ld [hl], l
    rst RST_38
    xor d
    rst RST_38
    rst RST_18
    rra
    nop
    ld a, a
    db $fd
    inc d
    inc [hl]
    add hl, bc
    ld [bc], a
    dec c
    ld [bc], a
    dec d
    ld [bc], a
    dec l
    rst RST_38
    ld b, $19
    ld b, $29
    ld c, $11
    ld a, [bc]
    dec [hl]
    rst RST_28
    ld [bc], a
    ld e, l
    ld [bc], a
    dec a
    ld e, [hl]

Call_02e_6e33:
    ld bc, $7906
    ld b, $ff
    cp c
    ld c, $71
    ld a, [bc]
    push af
    ld [bc], a
    ld a, l
    rst RST_38
    ei
    add b
    rst RST_38
    ld b, e
    ld a, [bc]
    ccf
    ccf
    rrca
    rrca
    inc bc
    rst RST_38
    add e
    nop
    ld h, b
    nop
    or b
    nop
    db $fc
    nop
    ccf
    inc a
    nop

jr_02e_6e56:
    ld a, h
    rst RST_38

jr_02e_6e58:
    db $eb
    rst RST_38
    sub d
    ld [bc], a
    add b
    ld [bc], a
    ld e, a
    inc bc
    nop
    nop
    rst RST_38
    ld d, a
    inc l
    nop
    ld [hl], a
    sub d
    inc bc
    sbc $92
    ld bc, $9060
    ld h, b
    sbc b
    or b
    nop
    sbc c
    jr nz, jr_02e_6ef2

    ret c

    or d
    nop

jr_02e_6e78:
    sub c
    jr nz, jr_02e_6e58

    ld [bc], a
    dec b
    ret nz

    nop
    rst RST_38
    dec c
    ld b, $11
    ld b, $19
    ld c, $01
    ld a, [bc]
    cp $53
    nop
    db $10
    rst RST_28
    jr c, jr_02e_6e56

    jr jr_02e_6e78

    jr @-$01

    rst RST_20
    jp nc, Jump_000_3801

    rst RST_00
    db $10
    rst RST_28
    db $10
    db $ec
    sbc $e0
    ld bc, $e418
    jr @-$18

    add sp, $00
    db $e4
    jr @+$01

    db $e4
    ld [$0817], sp
    scf
    inc e
    inc bc
    inc e
    rst RST_38
    inc bc
    inc c
    inc sp
    jr jr_02e_6edd

    ld [$0017], sp
    rst RST_38
    rrca
    ld a, h
    ld a, h
    rst RST_38
    db $d3
    rst RST_38
    call c, $fff3
    rst RST_18
    db $f4
    rst RST_18
    di
    db $db
    ld sp, hl
    rst RST_18
    ldh a, [c]
    rst RST_38
    jp c, Jump_02e_7e00

    nop
    cp $e0
    cp $f8
    rst RST_38
    cp $7e
    ld a, a
    cp a
    cp a
    ld a, a
    ld a, a
    ld e, a

jr_02e_6edd:
    rst RST_38
    ld e, a
    ldh a, [$ffde]
    ldh a, [$ffdf]
    di
    rst RST_18
    rst RST_30
    ld a, [$1025]
    or $25
    db $10
    db $f4
    rst RST_18
    and a
    and a
    ld l, a
    rst RST_28

jr_02e_6ef2:
    rst RST_38
    rst RST_20
    rst RST_38
    rst RST_30
    and h
    nop
    scf
    cp a
    ld [hl], a
    cp $a4
    nop
    db $f4
    db $dd
    ldh a, [c]
    rst RST_18
    rst RST_38
    rst RST_18
    ld sp, hl
    rst RST_28
    reti


    ld hl, sp-$24
    db $fd
    dec h
    db $10
    di
    rst RST_18
    rst RST_10
    rst RST_38
    rst RST_18
    daa
    rst RST_38
    ld [hl], a
    ld a, a
    rst RST_28
    rst RST_28
    rst RST_00
    rst RST_38
    rst RST_00
    rst RST_00
    rst RST_08
    rst RST_28
    rst RST_38
    ccf
    ld a, a
    ldh a, [c]
    rst RST_38
    sbc $f2
    sub $f0
    push de
    ld hl, sp-$21
    db $fc
    rst RST_38
    call c, $dff7
    ldh a, [$ffdf]
    cp $df
    rra
    rst RST_38
    rst RST_18
    rla
    sub a
    daa
    daa
    ld [hl], a
    ld [hl], a
    sbc a
    rst RST_18
    sbc a
    rla
    sub a
    rla
    rst RST_10
    sub d
    nop
    rst RST_18
    ld hl, sp-$01
    jp c, $dff8

    ld hl, sp-$21
    db $fd
    rst RST_18
    ld hl, sp-$41
    reti


    db $fd
    db $dd
    ei
    db $db
    rst RST_18
    ld a, a
    nop
    ld e, a
    rst RST_38
    rst RST_38
    xor a
    rst RST_28
    rra
    sbc a
    xor a
    rst RST_28
    rst RST_10
    rst RST_18
    rst RST_18
    cp a
    rst RST_38
    db $fd
    db $dd
    ld a, [hl]
    ld de, $fcff
    rst RST_38
    rst RST_38
    pop bc
    cp $ff
    ld h, b
    ld a, a
    nop
    rlca
    rst RST_38
    rst RST_18
    rst RST_38
    rst RST_38
    pop af
    cp $87
    ld hl, sp+$3f

jr_02e_6f7e:
    cp a
    ret nz

    ld hl, sp+$00
    ld hl, sp+$00
    and b
    add [hl]
    nop
    ld a, a
    rst RST_28
    nop
    cp a
    nop
    ccf
    call nz, Call_000_0f11
    rra
    ld a, a
    rst RST_30
    ld a, a
    ld a, [$bafa]
    db $10
    ld hl, sp+$00
    ldh a, [rNR34]
    db $db
    cp $7f
    sub d
    nop
    sbc a
    sbc a
    ld l, $00
    cp a
    inc bc
    rst RST_38
    ld a, a
    ccf
    ld a, a
    ld a, l
    rst RST_38
    ld a, d
    cp $73
    rst RST_38
    di
    ld h, a
    rst RST_28
    ld h, [hl]
    rst RST_28
    dec c
    dec c
    db $fd
    cp a
    push af
    sbc l
    push af
    ld e, l
    ld d, l
    sbc l
    di
    db $10
    db $dd
    cp $fb
    db $10
    push af
    db $fd
    jp nc, $c0d3

    rst RST_38
    rst RST_00
    cp a
    rst RST_38
    rst RST_08
    rst RST_38
    call $c8ff
    add hl, bc
    jr nz, jr_02e_7036

    xor a
    ld [hl], a
    rst RST_18
    rst RST_30
    rra
    inc de
    jr nz, jr_02e_6f7e

    rla
    inc h
    ld h, h
    rst RST_38
    ld a, a
    ld h, d
    ld a, [hl]
    ld h, l
    ld a, l
    ld h, h
    ld a, h
    ld l, h
    ei
    ld a, h
    ld [hl], a
    ld a, [hl+]
    jr nz, @+$6e

    ld a, a
    ld e, l
    ld [hl], l
    sbc l
    rst RST_18
    or l
    db $dd
    push af
    cp l
    or l
    ld hl, sp+$10
    or l
    dec a
    rst RST_38
    dec [hl]
    ld e, l
    ld d, l
    ret


    rst RST_38
    push bc
    rst RST_38
    set 7, a
    ei
    ret


    ld sp, hl
    reti


    ld sp, hl
    db $fd
    db $fd
    rst RST_28
    rst RST_30
    rst RST_28
    db $fd
    rst RST_38
    jr @+$23

    rst RST_18
    rst RST_30
    ld a, a
    ld [hl], a
    rst RST_28
    ccf
    or a
    sbc a
    rst RST_10
    ld c, a
    db $10
    rst RST_10
    ld a, a
    ld b, a
    rst RST_28
    ld a, a
    ld a, b
    rlca
    rlca
    nop
    ld b, $00
    rst RST_38
    push af
    rst RST_38
    db $fd
    push af
    rst RST_38
    sub l
    ld a, l
    ld a, l

jr_02e_7036:
    xor c
    ld bc, $5cff
    add d
    inc b
    ld hl, $d000

jr_02e_703f:
    rst RST_18
    rst RST_38
    rst RST_38
    db $db
    rst RST_38
    jp c, $febf

    rst RST_38
    rst RST_38
    di
    ei
    ld a, a
    ld a, [hl]
    sbc h
    ld bc, $f77f
    rst RST_38
    rst RST_30
    ccf
    db $fc
    sub e
    jr nz, @+$37

    db $10
    scf
    rst RST_38
    rst RST_10
    ld a, $3e
    ld [$37bd], sp
    and b
    ld hl, $2718
    jr @+$69

    xor b
    inc hl
    nop
    rst RST_38
    inc bc
    nop
    inc c
    nop
    ld [de], a
    nop
    ldh a, [c]
    nop
    rst RST_38
    adc $00
    ld h, l
    nop
    dec [hl]
    nop
    dec l
    nop

jr_02e_707c:
    rst RST_10
    dec de
    nop
    add hl, bc
    inc c
    nop
    inc b
    ld [$0200], sp
    nop
    rst RST_38
    ld bc, $0100
    ld [$08f7], sp
    ld [hl], a
    ld [$f7f5], sp
    xor b
    jr nz, jr_02e_707c

    xor b
    jr nz, jr_02e_703f

    jr @+$69

    ld [$b7f7], sp
    ld [$a457], sp
    jr nz, @+$49

    jr c, jr_02e_70ab

    jr @-$01

    ld b, a
    and [hl]
    jr nz, jr_02e_70b1

    pop de

jr_02e_70ab:
    dec l
    db $eb
    inc de

jr_02e_70ae:
    db $f4
    rst RST_38
    inc b

jr_02e_70b1:
    db $fc
    jr jr_02e_70ae

    ld h, b
    push af
    pop bc
    ld a, [$02ff]
    db $fd
    nop
    call c, $b884
    ld [$fe14], sp
    nop
    nop
    add b
    add b
    nop
    nop
    sub e
    sub e
    daa
    rst RST_38
    daa
    cp $00
    rst RST_38
    jr nz, @+$01

    ld b, b
    rst RST_38
    rst RST_38
    and b

jr_02e_70d6:
    rst RST_38
    inc b
    rst RST_38
    db $10
    rst RST_38
    jr z, @+$01

    rst RST_38
    ld bc, $03a3
    ld d, [hl]
    ld b, $bf
    inc e
    db $dd
    rst RST_18
    ld e, b
    cp $b0
    rst RST_38
    ld h, b
    sub d
    nop
    add b
    xor b
    rst RST_38
    xor b
    ld d, b
    ld d, b
    nop
    nop
    ld d, b
    nop
    xor d
    rla
    nop
    push af
    nop
    sub d
    nop

jr_02e_70ff:
    nop
    jr nc, jr_02e_7135

    ld b, $30
    dec [hl]
    jr nc, jr_02e_70ff

    inc a
    ld sp, $001e
    ld d, c
    dec [hl]
    cp $03
    ei
    rlca
    or $ff
    ld bc, $03fd
    ei
    ld b, $f4
    ld e, $d8
    ccf
    ld [hl], b
    ldh [$ffe3], a
    pop bc
    add d
    ld [bc], a
    ld l, l
    ld hl, $3150
    rst RST_38
    ld bc, $07fd
    or $0e
    db $ec
    jr jr_02e_70ff

    rst RST_38
    ld [hl], c
    ld h, c
    inc e
    ret c

    ld a, [hl-]

jr_02e_7135:
    or d
    ld h, h
    ld b, h
    rst RST_28
    ret nz

    add b
    inc b
    inc b
    nop
    ld bc, $0505
    inc bc
    rst RST_38
    inc bc
    ld b, $06
    inc c

jr_02e_7147:
    inc c
    rra
    rra
    jr c, jr_02e_7147

    jr c, jr_02e_71b2

    dec hl
    jr nc, jr_02e_70d6

    add l
    inc bc
    inc bc
    rlca
    rst RST_38
    ld b, $2f
    cpl
    ld e, b
    ld e, b
    or b
    or b
    ld h, b
    rst RST_30
    ld h, b
    pop de
    ret nz

    ld l, $00
    ld e, $00
    ld [hl], $00
    rst RST_38
    ld a, [de]
    nop
    inc d
    nop
    ld l, $00
    ld [hl], $c0
    rst RST_38
    cp $e0
    ld a, h

jr_02e_7175:
    ld h, h
    ld a, a
    ld h, [hl]
    ld a, a
    ld h, a
    rst RST_38
    ld a, a
    ld h, h
    ld a, h
    ld h, h
    ld a, l
    ld h, l
    ld a, a
    ld a, l
    rst RST_38
    ld a, l
    ld a, a
    ld a, a
    dec a
    dec [hl]
    dec e
    push de
    db $fd
    rst RST_38
    push af
    db $dd
    push de
    dec a
    or l
    ld e, l
    ld d, l
    dec a
    cp a
    ld [hl], l
    db $dd
    push de
    call nc, $dcf7
    rlca
    jr nz, @-$36

    cp $0b
    jr nz, jr_02e_7175

    rst RST_38
    jp nc, $d6fa

    cp $9f
    ld a, l
    rst RST_30
    sub b
    ld [hl+], a
    scf
    ld a, a
    rst RST_30
    cp a
    or a

jr_02e_71b2:
    ld hl, sp+$31
    rst RST_30
    add b
    cp [hl]
    add b
    ld [bc], a
    ld b, d
    adc a
    add b
    adc a
    add a
    rst RST_38
    adc a
    add h
    adc a
    add l
    nop
    xor [hl]
    nop
    ld d, l
    db $fc
    ld l, h
    ld [hl+], a
    dec sp
    ld [hl-], a
    rst RST_38
    rst RST_38
    ld bc, $01ff
    ld e, a
    rst RST_38
    ld bc, $012f
    rlca
    pop af
    dec b
    pop af
    db $e3
    rst RST_38
    pop af
    ld hl, $a3f1
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    add b
    ld b, b
    sbc a
    ld b, [hl]
    add c
    ld b, d
    dec [hl]
    ld b, b
    ei
    ld b, b
    add b
    dec e
    ld [bc], a
    nop
    adc b
    rlca
    ld [$eff0], sp
    jr nz, jr_02e_721a

    ld b, d
    add c
    ld c, a
    inc sp
    nop
    nop
    ld [de], a
    ld a, a
    pop hl
    add d
    ld a, h
    ld b, h
    add e
    dec b
    ld hl, sp+$4f
    inc sp
    rst RST_38
    ld bc, $2102
    adc d
    adc c
    ld [hl], d
    ld d, c
    adc d
    rst RST_38
    ld bc, $01f2
    ld [bc], a

jr_02e_721a:
    ld [hl], e
    cp e
    ld l, d
    xor d
    ld a, a
    ld [hl], e
    cp e
    ld h, d
    and d
    ld h, d
    and d
    ld b, b
    ld sp, $ff40
    ld h, b
    sbc a
    ld a, [hl-]
    cp d
    sub d
    sub d
    ld [de], a
    ld [de], a
    rst RST_28
    sub d
    sub e
    cp c
    cp c
    ld c, a
    ld sp, $ff00
    sub e
    rst RST_38
    cp e
    xor c
    xor c
    cp c
    cp c
    xor c
    xor c
    add hl, hl
    db $fd
    add hl, hl
    adc d
    ld b, e
    cp c
    cp d
    ld hl, $3122
    ld a, [hl-]
    rst RST_38
    ld hl, $3922
    ld a, [hl-]
    ld bc, $fd02
    ld [bc], a
    rst RST_38
    inc bc
    db $fc
    ld b, e
    sbc h
    ld c, b
    add a
    ld e, h
    add b
    ei
    ld b, d
    sbc h
    ld a, d
    ld b, e
    ld a, a
    add b
    ld [$1907], sp
    rst RST_18
    ldh [$ff82], a
    ld a, h
    db $10
    rrca
    adc d
    ld b, e
    rst RST_38
    nop
    db $db
    ld h, h
    add e
    ld c, b
    ld b, c
    inc hl
    ret nz

    ret z

    ld b, l
    add hl, de
    ldh [c], a
    cp a
    ld b, c
    ld a, [hl-]
    ld h, c
    add d
    ld de, $aae2
    ld b, c
    ld bc, $feff
    rst RST_38
    nop
    add hl, sp
    jp nz, $3ac1

    ld a, c
    rst RST_38
    add d
    add hl, bc
    jp nz, Jump_000_0281

    inc bc
    nop
    dec de
    rst RST_38
    ret c

    cp l
    inc a
    cp c
    inc a
    db $d3
    jr jr_02e_72a7

    cp l
    nop
    ld h, [hl]

jr_02e_72a7:
    ld b, l
    ld hl, $8f1a
    add l
    db $10
    ld e, e
    rst RST_38
    ld d, a
    db $fd
    rst RST_38
    add l
    ld [hl+], a
    ld d, h
    push de
    ld [hl+], a
    ld d, b
    db $fd
    or b
    ld b, e
    dec b
    ld b, b
    cp e
    ld b, d
    ld a, a
    ccf
    ld b, b
    ret nz

    ld b, e
    ld l, l
    ld hl, $3351
    ret nc

    ld b, e
    add h
    ld b, [hl]
    ld d, a
    ldh [rSCX], a
    ld bc, $42eb
    ld d, c
    ld [hl-], a
    ld b, d
    ld b, c
    dec sp
    jr nc, jr_02e_72e1

    cp e
    ld [$3b10], sp
    jr nc, jr_02e_731f

    ld b, b
    nop

jr_02e_72e1:
    cp h
    db $10
    db $fd
    rst RST_38
    db $fd
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    and c
    nop
    ld b, d
    ld a, h
    dec sp
    jr nc, @+$32

    inc sp
    ld [$b300], sp
    nop
    ld c, c
    ld l, a
    ld d, d
    rst RST_38
    dec e
    nop
    add b
    rst RST_38
    cp $01
    rst RST_38
    ld bc, $8779
    add hl, de
    rst RST_20
    rst RST_38
    ld l, c
    sbc a
    ld [hl], a
    adc a
    ld [hl], c
    adc a
    ld h, b
    sbc a
    rst RST_38
    and c
    ld a, a
    pop hl
    rst RST_38
    ld hl, $19ff
    rst RST_38
    rst RST_38
    dec b
    rst RST_38
    rlca
    rst RST_38
    inc b
    rst RST_38

jr_02e_731f:
    call nz, $ffff
    push af
    rst RST_08
    ld [hl], h
    rst RST_08
    ld h, h
    cp a
    ld l, h
    sbc a
    rst RST_38
    ld l, h
    sub a
    ld l, e
    sub a
    jp hl


    sub a
    ld c, c
    rst RST_30
    rst RST_38
    ld h, $f8
    or d
    db $ec
    ld [hl], b
    xor $74
    ld [$64ff], a
    jp c, $da64

    add sp, -$2a
    ld l, b
    sub $ff
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld a, b
    add a
    rst RST_38
    ld a, b
    add a
    ld c, $ff
    pop af
    rrca
    pop af
    rrca
    and a
    db $fd
    cp $27
    inc de
    nop
    ld d, h
    inc bc
    rst RST_38
    dec de
    nop
    or h
    rst RST_38
    ld c, a
    inc [hl]
    rst RST_08
    sbc $3f
    pop af
    rra

jr_02e_736b:
    ld [hl], c
    db $fd
    sbc a
    ld l, b
    ld bc, $ff9f
    ld l, b
    sub $6a
    call nc, Call_02e_6aff
    call nc, $f4ea
    jr nc, jr_02e_736b

    inc [hl]
    ld [$7afe], a
    ld bc, $1f64
    ld c, l
    scf
    ld c, $77
    ld l, $ff
    ld d, a
    ld h, $5b
    ld h, $5b
    rla
    ld l, e
    ld d, $df
    ld l, e
    db $10
    ld l, d
    ld d, b
    ld a, [hl+]
    sub d
    ld bc, $7208
    ei
    jr z, @+$54

    sbc d
    ld bc, $fc87
    add a
    rst RST_38
    add a
    rst RST_38
    db $fc
    sbc c
    cp $a1
    cp $e1
    cp $21
    rst RST_38
    cp $23
    rst RST_38
    ldh a, [$ff8f]
    ldh [$ff9f], a
    pop hl
    rst RST_38
    sbc a
    rst RST_20
    sbc a
    ld sp, hl
    sbc a
    pop hl
    rst RST_38
    pop hl
    rst RST_38
    sbc a
    pop hl
    rra
    rra
    cp a
    inc d
    xor a
    inc [hl]
    db $fd
    adc a
    call nz, $1f03

jr_02e_73cf:
    cp a
    db $10
    xor a
    pop bc
    ccf
    cp $d0
    dec b
    rst RST_38
    ld a, a
    ret nz

    cp a
    ldh [$ff9f], a
    rra
    rst RST_30
    rst RST_38
    ret nc

    cpl
    ldh [c], a
    ld bc, $ff1f
    ldh a, [c]

Call_02e_73e7:
    rrca
    cp $ea
    ld bc, $ff1f
    ret c

    daa
    call c, $df23
    rst RST_18
    jr nz, jr_02e_73f5

jr_02e_73f5:
    nop
    rst RST_38
    ld a, a
    ld a, [$0000]
    ld h, b
    rst RST_38
    sbc a
    jr nc, jr_02e_73cf

    ret nc

    ccf
    db $ec
    rra
    db $e3
    ei
    rra
    pop hl
    add hl, bc
    db $10
    pop af
    rrca
    inc [hl]
    rst RST_38
    inc l
    ei
    rst RST_38
    ld h, $53
    ld [bc], a
    pop hl
    rst RST_38
    ld sp, $0dff
    rst RST_38
    rst RST_38
    ld h, c
    rst RST_18
    ld a, l
    rst RST_08
    ld [hl], a
    rst RST_08
    db $e4
    rst RST_38
    rst RST_18
    ld b, h
    rst RST_38
    ld [hl], h
    sbc a
    ld a, h
    sbc a
    ld [hl], e
    rst RST_38
    sbc a
    ld a, [hl+]
    db $f4
    ld [hl-], a
    db $ec
    ld [hl-], a
    db $ec
    or h
    db $fd
    ld [$0136], a
    ld h, b
    sbc $68
    sub $f1
    rrca
    ld a, e
    ld sp, hl
    rlca
    ld b, d
    ld de, $ff1f
    ld [hl], b
    adc a
    ld c, d
    ld de, $0469
    dec de
    nop
    ld d, b
    ld de, $53ff
    inc b
    and h
    ld e, a
    ld h, b
    inc de
    db $db
    sbc a
    rst RST_38
    ld l, b
    inc bc
    ldh [$fffe], a
    ld [hl], d
    ld bc, $d46a
    ei
    ldh [$fffe], a
    ld a, d
    inc bc
    ld d, h
    cpl
    ld c, h
    scf
    ld c, h
    rst RST_38
    scf
    dec l
    ld d, a
    ld l, $57
    daa
    ld e, d
    inc b
    rst RST_18
    ld a, d
    db $10
    ld l, c
    nop
    ld a, d
    sub d
    inc bc
    nop
    ld a, d
    cp $9a
    inc bc
    dec l
    cp $35
    cp $64
    rst RST_38
    inc b
    rst RST_38
    ccf
    inc [hl]
    adc a
    scf
    adc a
    inc a
    adc a
    db $10
    rst RST_38
    cp a
    pop hl
    rra
    jp $cc3f


    ccf
    ldh a, [$ffdf]
    ccf
    ret nz

    rst RST_38
    ret nz

    cp a
    call c, $1001
    xor a
    ei
    ld de, $c2ae
    ld de, $bf1f
    inc [hl]
    adc a
    dec [hl]

jr_02e_74ae:
    rst RST_18
    adc [hl]
    dec [hl]
    adc [hl]
    ldh [$ff9f], a
    ret nc

    inc de
    rst RST_38
    rst RST_38
    cp $0a
    ld de, $1fe1
    ld a, b
    rst RST_38
    cp a
    ld h, b
    ld e, a
    rst RST_30
    and b
    rst RST_38
    nop
    ld hl, sp+$00
    sbc [hl]
    rst RST_38
    sbc $ff
    rst RST_18
    nop
    ld hl, sp-$01
    cpl
    ldh a, [$fff2]
    ld de, $fff8
    ei
    dec c
    ldh a, [c]
    ld a, [$3111]
    rst RST_08
    ld d, c
    cp a
    ld a, a
    db $ec
    dec bc
    nop
    ld b, h
    inc bc
    jr c, jr_02e_74ae

    ld a, [de]
    ld bc, $ff04
    add h
    rst RST_28
    rst RST_38
    ld [hl], h
    rst RST_38
    ld l, $53
    ld [bc], a
    ld sp, $f1df
    ld a, a
    rst RST_18
    sub c
    ld a, a

jr_02e_74fa:
    xor l
    ld e, a
    and a
    ld e, a
    ld h, b
    ld bc, $94ff
    ld a, a
    ld [$2ad4], a
    db $f4
    ld [hl+], a
    db $fc
    cp e
    jr nc, jr_02e_74fa

    ld [hl], $12
    ld a, [$de60]
    ld b, [hl]
    ld bc, $4379
    add a
    rra
    ld c, e
    ld [bc], a
    ld a, [bc]
    ld de, $0558
    ld d, b
    inc de
    rlca

jr_02e_7520:
    rra
    jr nz, jr_02e_7520

    sbc a
    ld e, a
    ld [de], a
    or h
    ld c, a
    or l
    ld c, a
    sbc a
    ld a, a
    ld a, e
    pop af
    rst RST_18
    ld [hl], b
    dec d
    ld h, b
    sbc $e4
    ld a, [$017a]
    or $92
    ld bc, $3a40
    sbc b
    inc bc
    jr nz, jr_02e_759a

    nop
    ld a, d
    or [hl]
    sub b

jr_02e_7544:
    rla
    jr nz, @+$5c

    sbc d
    ld bc, $af10
    and b
    ld hl, $ef11
    xor a
    ld e, $af
    inc d
    ret


    db $10
    inc [hl]
    adc a
    db $e3
    rst RST_28
    sbc a
    db $ed
    sbc a

jr_02e_755c:
    pop af
    cp e
    ld [bc], a
    pop hl

jr_02e_7560:
    rra
    pop bc

Jump_02e_7562:
    scf
    ccf
    jp $cc3f


    ld de, $bf1e
    jp nz, $c213

    ld de, $0a7e
    ld de, $9f61
    ccf
    rst RST_38
    ld b, b
    cp a

jr_02e_7577:
    ld b, b
    ld bc, $60c5
    rst RST_10
    db $10
    jr nz, jr_02e_7560

    jr nz, jr_02e_7577

    ld [bc], a
    ld [$0021], a
    ld sp, hl
    rst RST_18
    rst RST_38
    ld h, $f9
    ld h, $f9
    or $02
    db $fd
    rst RST_38
    cp a
    ld sp, hl
    rst RST_38
    nop
    call z, $f33f
    ld c, c
    inc h
    pop af

jr_02e_759a:
    rst RST_38
    rrca
    ld de, $7fef
    sbc a
    ld hl, $a1ff
    rst RST_28
    rst RST_38
    ld [hl], c
    rst RST_38
    rrca
    ld d, l

jr_02e_75a9:
    ld h, $fc
    rra
    di
    cp e
    rra
    pop af
    inc hl
    jr nc, jr_02e_7544

    rst RST_38
    cp c
    daa
    jr nz, jr_02e_755c

    ccf
    ld e, a
    ld l, b
    sub $ea
    call nc, $336a
    jr nz, jr_02e_763c

    ld bc, $f47d
    dec sp
    jr nz, jr_02e_75a9

    rra
    rst RST_38
    rra
    jr nz, @+$4b

    ld [de], a
    xor $46
    ld bc, $8778
    ld sp, hl
    ld d, e
    ld b, $27
    rst RST_38
    inc a
    or $1d
    nop
    ld sp, $68df
    ld bc, $9f7e
    sub h
    rst RST_38
    rst RST_38
    inc [hl]
    rst RST_08
    cp h
    ld b, a
    cp h
    ld b, [hl]
    inc [hl]
    ld [$22fb], a
    db $fc
    ld [hl-], a
    jr nc, @-$2a

    ld l, b
    call nc, $c262
    ld l, a
    ld c, $8e
    ld a, [hl]
    ld a, h
    sub b
    inc bc
    ld b, b
    ld a, [hl-]
    sbc d
    inc bc
    db $fc
    sbc d
    ld hl, $0392
    db $10
    ld a, [hl+]
    ld b, b
    ld a, [bc]
    ld [hl], b
    ld [hl-], a
    ei
    ld a, b
    ld a, [hl-]
    call z, $8f10
    ccf
    adc [hl]
    ld de, $cbbe
    ld de, $a0ae
    inc hl
    db $fc
    or a
    inc d
    cp d
    ld de, $bfc7
    rst RST_08
    ld sp, hl
    rst RST_38
    ccf
    sbc a
    call z, $cc11
    ld de, $ae15
    rst RST_38
    dec e
    cp [hl]
    ld [de], a
    xor a
    ld h, b
    sbc a
    jr c, @+$01

    reti


    rst RST_20
    add hl, bc
    ld [de], a
    cp b

jr_02e_763c:
    inc hl
    rst RST_38
    ldh [$ffb7], a
    stop
    cp a
    rst RST_38
    ld h, b
    pop hl
    rst RST_18
    dec a
    jp nz, $e21d

    inc e
    rst RST_38
    db $e3
    pop hl
    rst RST_38
    ld a, $e1
    ld l, $f1
    ld l, $df
    pop af
    pop hl
    rst RST_38
    ld e, $e3
    ld a, [$e731]
    rst RST_38

jr_02e_765f:
    rst RST_38
    jr c, @-$17

    inc a

jr_02e_7663:
    db $e3
    inc l

jr_02e_7665:
    di
    rst RST_20
    rst RST_38
    rst RST_38
    ld [de], a
    rst RST_28
    ld a, [bc]
    rst RST_30
    ld a, [bc]
    rst RST_30
    rst RST_20
    rst RST_38
    rst RST_38
    jr nc, jr_02e_7663

    jr nc, jr_02e_7665

    jr c, jr_02e_765f

    rst RST_28
    rst RST_38
    db $e3
    ld a, [de]
    rst RST_20
    ld a, [de]
    ld b, c
    nop
    ld b, c
    ld [hl+], a
    ld b, c
    di
    rst RST_38
    ld b, $ff
    ei
    ld b, $fb

jr_02e_768a:
    ld c, $f3

jr_02e_768c:
    ei
    rst RST_38
    inc l
    rst RST_38
    di
    jr z, jr_02e_768a

    jr z, jr_02e_768c

    rst RST_38
    rst RST_38
    ld [bc], a
    ld e, [hl]
    add hl, sp
    ld b, d
    di
    rst RST_38
    inc a
    db $e3
    ld b, d
    ld b, c
    di
    ld sp, hl
    ld [hl-], a
    ld l, $1e
    ld b, l
    inc a
    db $e3
    db $e3
    ld sp, hl
    inc [hl]
    di
    ld sp, $6240
    ld b, c
    cp [hl]
    ld c, e
    nop
    ldh a, [rIF]
    ldh a, [rNR31]
    and $f0
    dec de
    adc l
    rst RST_18
    ld [hl], d
    rst RST_38
    xor $31
    adc $82
    ld b, c

jr_02e_76c4:
    rst RST_38
    call z, $76ff
    adc c
    ld h, [hl]
    sbc c
    ld l, [hl]
    sub c
    ld hl, sp+$7f
    di
    xor a
    ld [hl], b
    sub d
    ld b, c
    ld hl, sp+$15
    sub c
    rst RST_38
    ld e, h
    and e
    rst RST_38
    jr jr_02e_76c4

    jr @-$17

    add a
    rst RST_38
    cp $03
    rst RST_38
    xor $13
    db $e4
    dec de
    dec e
    rst RST_38
    ldh [c], a
    dec a
    rst RST_38
    ldh [c], a
    dec a
    and $39
    ccf
    db $fd
    jp $ef3c


    ld b, e
    cp h
    ld b, d
    cp l
    ldh [rNR44], a
    jr nz, @+$01

    cp $ff
    rst RST_38
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    cp a
    rst RST_38
    db $fd
    ld h, d
    cp l
    ldh [c], a
    dec a
    db $e3
    inc a
    ld a, h
    ld a, a
    rst RST_38
    add e
    ld a, [hl]
    inc bc
    cp $02
    rst RST_38
    ldh a, [rNR24]
    db $e3
    adc l
    ld [hl], d
    ld a, [hl]
    ld b, b
    pop bc
    ld b, h
    jr c, jr_02e_7769

    ld a, a
    sbc a
    ld de, $effd
    jp c, $e013

    ld e, $f1
    add hl, bc
    rst RST_00
    rlca
    rst RST_38
    inc b
    rst RST_38
    dec b
    cp $04
    cp $01
    ld hl, sp-$11
    rlca
    add $3f
    ld a, $c7
    ld b, b
    db $fc
    or c
    ld b, c
    rst RST_38
    adc a
    ld b, a
    ccf
    inc hl
    rst RST_38
    ld [hl], b
    db $fc
    ld [hl], b
    rst RST_38
    di
    ret nz

    rst RST_08
    nop
    ccf
    nop
    db $fc
    ldh a, [$ff7a]
    ld a, [hl+]
    ld d, e
    rst RST_38
    scf
    ld d, h
    ccf
    rrca
    rst RST_38
    rst RST_00
    ld b, d
    ld d, b
    rst RST_18
    call nz, $80fc
    di
    nop
    inc l

jr_02e_7769:
    ld e, a
    rst RST_38
    nop
    ld a, a
    jr c, jr_02e_7779

    ret z

    ld [bc], a
    ldh a, [rSC]
    db $fc
    scf
    ld d, [hl]
    cp $c6
    inc h

jr_02e_7779:
    adc [hl]
    inc hl
    add b
    inc a
    sbc h
    ccf
    sbc [hl]
    ld a, a
    ccf
    sbc [hl]
    ld a, c
    rst RST_38
    ld b, a
    cp a
    ld b, b
    add e
    ld d, b
    ld a, $40
    nop
    rra
    sub b
    rrca
    ldh [$ff63], a
    jr c, jr_02e_77e9

    jr c, jr_02e_77e9

    ld a, e
    ld d, l
    xor d
    sub b
    ld e, c
    cp c
    ld b, [hl]
    ld d, h
    xor e
    sub d
    ld e, e
    db $db
    xor d
    ld d, l
    sub d
    ld e, e
    xor b
    ld d, a
    sub b
    ld d, a
    xor a
    ld d, b
    rst RST_38
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ccf
    inc c
    rst RST_08
    nop
    ei
    di
    nop
    ld h, [hl]
    ld d, e
    ld e, a
    and b
    xor d
    ld d, l
    db $fc
    ld a, l
    ld a, h
    ld a, [$3f02]
    ccf
    rrca
    rst RST_08
    inc bc
    db $e4
    ld d, e
    sbc [hl]
    cp h
    ld d, c
    ld d, b
    xor a
    xor d
    ld d, l
    db $e4
    ld de, $5138
    ld a, a
    rst RST_38
    add b
    xor e
    ld d, h
    dec b
    ld a, [$ff00]
    ld d, l
    rst RST_30
    xor d
    xor $11
    sub [hl]
    ld d, a
    ld a, [hl+]
    push de
    ld d, l
    xor d

jr_02e_77e9:
    ld a, e
    xor a
    ld d, b
    jr c, jr_02e_7841

    xor d
    ld d, l
    ld d, a
    xor b
    db $10
    ld h, c
    and $38
    ld d, l
    cp a
    ld b, b
    sub b
    ld e, e
    sub b
    ld e, c
    ld [$d515], a
    rst RST_30
    ld a, [hl+]
    ei

Jump_02e_7803:
    inc b
    sub b
    ld d, a
    xor d
    ld d, l
    ld b, b
    cp a
    rst RST_28
    xor d
    ld d, l
    db $dd
    ld [hl+], a
    jr c, jr_02e_7866

    add b
    ld a, a
    nop
    ld a, a
    rst RST_38
    and b
    ld e, a
    ld d, l
    xor d
    db $eb
    inc d
    jr c, jr_02e_7871

    ld b, $37
    ld d, e
    ld d, c
    xor [hl]
    cp [hl]
    ld d, l
    scf
    ld d, c
    jr z, jr_02e_788a

    jr c, jr_02e_7880

    scf

jr_02e_782c:
    ld d, c
    jp Jump_02e_7d82


    ld [hl], $61
    jr c, jr_02e_7887

    ld d, $61
    cp [hl]
    ld d, a
    xor d
    ld d, l
    rst RST_38
    inc bc
    db $fc
    ld d, l
    xor d
    xor e
    ld d, h

jr_02e_7841:
    rst RST_38
    nop
    cpl
    push af
    ld a, [bc]
    ld [$bc15], a
    ld d, b
    ld e, a
    jr z, jr_02e_78ae

    ld b, h
    ld h, c
    ld a, a
    xor d
    ld d, l
    ld d, l
    xor d
    ld [bc], a
    db $fd
    ld d, l
    jp $f660


    sbc [hl]
    ld d, l
    ld d, a
    xor b
    inc d
    ld h, c
    xor e
    ld d, h
    ld d, l
    xor d
    ld [hl], $c2

jr_02e_7866:
    ld h, b
    rst RST_38
    push de
    inc e
    ld d, c
    rst RST_38
    add b
    db $ed
    jr nz, jr_02e_782c

    ld d, c

jr_02e_7871:
    ld l, a
    dec b
    ld a, [$ff40]
    or a
    ld h, c
    dec d
    ld [$6340], a
    adc $dc
    ld d, c
    nop

jr_02e_7880:
    rst RST_38
    ld bc, $20d7
    jr c, jr_02e_78d7

    db $eb

jr_02e_7887:
    inc d
    bit 2, h

jr_02e_788a:
    xor e
    add b
    ld h, c
    ld d, h
    dec b
    ld [hl], b
    ld e, [hl]
    ld h, e
    and b
    ld e, a
    rst RST_38
    nop
    rst RST_38
    ld [bc], a
    db $fd
    dec d
    ld [$d02f], a
    rst RST_18
    ld d, l
    xor d
    and b
    ld e, a
    rlca
    db $fc
    ld bc, $a8ff
    rst RST_38
    ld d, a
    ld d, l
    xor d
    cp $01
    ld d, l

jr_02e_78ae:
    xor d
    ld a, [bc]
    ld a, c
    push af
    ld c, $70
    dec b
    ld [hl], b
    ld bc, $54ff
    xor e
    add sp, $61
    di
    xor d
    ld d, l
    jr jr_02e_7921

    ld e, e
    nop
    ld d, l
    rst RST_38
    ld a, [hl+]
    rst RST_38
    dec hl
    add b
    ld a, a
    ld [hl], b
    ld [hl], l
    cp $75
    ld [hl], b
    add b
    ld c, c
    ld [hl], b
    ld [hl], b
    ld [hl], e
    cp b
    inc a
    ld [hl], c

jr_02e_78d7:
    cp a
    ld d, c
    add sp, $61
    and b
    ld e, a
    ld a, [bc]
    ld [hl], l
    ld [hl], b
    xor d
    db $fc
    rla
    nop
    ld b, $61
    ld e, l
    and d
    ld a, [hl+]
    push de
    add l
    ld a, [$50e7]
    rst RST_38
    xor c
    jr c, @+$52

    ld l, h
    ld [hl], e
    add b
    ld a, a
    ld a, [hl+]
    ld e, [hl]
    dec sp
    ld [hl], b
    dec b
    ld a, [$f5aa]
    add d
    ld h, c
    dec d
    dec b
    ld [hl], b
    ld b, e
    ld b, c
    cp $28
    ld h, c
    add sp, $61
    inc b
    ld [hl], c
    ld [$7521], a
    dec b
    ld [hl], b
    ld [$749c], sp
    rlca
    ld [hl], b
    sbc b
    ld [hl], c
    add b
    add hl, de
    ld h, b
    xor [hl]
    ld [hl], c
    dec e
    add b
    inc h
    rst RST_38

jr_02e_7921:
    xor d
    ld d, l
    ld d, l
    xor d
    ld [$f515], a
    ld a, [bc]
    rst RST_38
    cp $01
    rst RST_38
    nop
    rst RST_38
    nop
    ld d, a
    xor b
    rst RST_38
    inc [hl]
    rst RST_38
    ld a, [bc]
    rst RST_38
    and h
    ld e, a
    ld d, b
    xor a
    rst RST_38
    xor d
    ld d, l
    push af
    ld a, [bc]
    ld a, [$ff05]
    nop
    rst RST_38
    rla
    add sp, -$55
    call nc, $fa05
    ld [bc], a
    db $fd
    rst RST_38
    jr z, @+$01

    dec d
    rst RST_38
    add d
    ld a, a
    ld b, c
    cp a
    or $0a
    ld bc, $a05f
    nop
    ld bc, $ff00
    xor d
    rst RST_38
    rst RST_28
    ld d, a
    rst RST_38
    push de
    ld a, [hl+]
    inc e
    ld bc, $00ff
    ld d, l
    rst RST_38
    xor d
    ld a, [hl+]
    push de
    nop
    rst RST_38
    ld b, c
    rst RST_38
    ld d, l
    rst RST_18
    xor d
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld a, [bc]
    ld bc, $55aa
    or a
    nop
    rst RST_38
    ld d, l
    ld c, a
    ld [bc], a
    ld d, l
    xor d
    ld d, [hl]
    dec b
    ld d, b
    ld e, $4f
    nop
    xor e
    ld d, h
    ld a, a
    add b
    ld d, [hl]
    dec b
    ld e, h
    nop
    inc bc
    nop
    or $0a
    ld bc, $807f
    nop
    ld bc, $fd02
    ld [hl], l
    adc d
    or $08
    inc bc
    push af
    ld a, [bc]
    nop
    ld bc, $55aa
    ld d, h
    xor e
    ei
    xor d
    ld d, l
    jr nc, jr_02e_79b4

    xor a
    ld d, b
    ld d, [hl]

jr_02e_79b4:
    xor c
    rst RST_38
    pop af
    nop
    ld a, [hl-]
    nop
    ld h, e
    inc b
    ld a, [bc]
    ld bc, $03fc
    ld a, [hl+]
    push de
    cp a
    dec b
    ld a, [$ffa0]
    ld bc, $00fe
    ld bc, $fdef
    db $10
    and h
    dec b
    ld e, a
    and b
    cp a
    ld b, b
    db $fd
    ld [bc], a
    rst RST_38
    ld [$0015], a
    rst RST_38
    xor b
    ld d, a
    push de
    ld a, [hl+]
    call c, $0104
    sbc [hl]
    ld bc, $7f80
    nop
    ld de, $1500
    rst RST_28
    db $db
    and d
    ld e, a
    ld h, b
    inc bc
    ld a, [bc]
    push af
    ld a, [hl-]
    ld bc, $ff55
    db $ed
    xor a
    ld e, l
    nop
    adc d
    ld a, a
    ld d, $01
    ld a, l
    add d
    xor d
    dec [hl]
    rst RST_38

jr_02e_7a03:
    ld de, $7f11
    rst RST_38
    ld [bc], a
    add b
    ld a, a
    ld d, b
    nop
    ld de, $bd12
    rst RST_38
    dec sp
    nop
    ld d, h
    rst RST_38
    ld a, [bc]
    push af
    ld e, $11
    db $fd
    rst RST_38
    rst RST_38
    ld [$d4ff], a
    rst RST_38
    add b
    rst RST_38
    dec d
    push af
    ld [$01a2], a
    xor b

jr_02e_7a27:
    ld e, l
    nop
    and b
    rst RST_38
    inc b
    ei
    ei
    ld a, [hl+]
    push de
    ld h, h
    ld bc, $02fd
    ld d, a
    xor b
    cpl
    rst RST_30
    ret nc

    ld [bc], a
    db $fd
    ld h, b
    inc bc
    xor b
    ld d, a
    ld d, b
    xor a
    rst RST_28

jr_02e_7a42:
    rst RST_38
    nop
    db $dd
    ld [hl+], a
    nop
    ld bc, $5fa0
    ld d, l
    ei
    xor a
    adc d
    db $ed
    nop
    xor d
    ld d, l
    ld d, b
    xor a
    and c
    cpl
    ld e, a
    rla
    rst RST_38
    ld l, $5d
    nop
    xor e
    ld a, [bc]
    ld bc, $04b7
    db $fc
    add [hl]
    rra
    or [hl]
    inc bc
    adc b
    rst RST_38
    or b
    rst RST_38
    ldh [rIE], a
    rst RST_38
    nop
    ld hl, sp+$00
    rst RST_00
    nop
    jr c, @+$08

    ret nz

    rst RST_38
    ld a, $00
    nop
    cp $00
    ld a, [$c200]
    ld a, a
    jr nz, jr_02e_7a03

    jr @-$5c

    jr jr_02e_7a27

    jr c, jr_02e_7a42

    rra
    cp $bf
    stop
    ld [bc], a
    cp h
    add d
    nop
    cp [hl]
    nop
    rst RST_30
    ld a, [hl]
    nop
    add d
    or [hl]
    ld de, $ba30
    ld [$fbca], sp
    nop
    ldh a, [c]
    or b
    db $10
    ld a, $c0
    ld c, $f0
    ld [bc], a
    db $fd
    db $fc
    sbc a
    ld a, [de]
    nop
    ret nz

    nop
    nop
    xor [hl]
    ld d, b
    rst RST_38
    sub $28
    adc d
    ld [hl], h
    ld b, $f8
    jp z, $ff74

    inc h
    ld a, [$fc42]
    inc h
    ld a, [$fc52]
    push hl
    ld h, h
    rrca
    ld [hl+], a
    ld [hl], d
    dec d
    cpl
    dec de
    ld [hl+], a
    inc c
    ld [hl], b
    ld [$70ff], sp
    nop
    nop
    ret nz

    ldh a, [$ff30]
    inc a
    call z, Call_000_0e03
    ldh a, [c]
    db $ed
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02e_7c00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02e_7c18:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02e_7d82:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02e_7e00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02e_7f0a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02e_7fff:
    nop
