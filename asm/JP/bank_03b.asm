; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

    jr nz, jr_03b_4042

    ld h, c
    ld b, [hl]
    ld h, d
    ld b, [hl]
    ld c, d
    ld c, h
    cp b
    ld c, h
    ld e, b
    ld d, d
    ret c

    ld d, e
    adc h
    ld e, c
    add hl, hl
    ld e, [hl]
    ld d, d
    ld h, l
    ld h, e
    ld l, b
    or $6d
    sub d
    ld [hl], b
    and c
    halt
    and d
    halt
    sub e
    ld a, h
    dec e
    nop
    ld a, [hl]
    db $db
    nop
    rst RST_38
    nop
    dec bc
    ld b, b
    inc de
    db $10
    dec bc
    db $10
    ld b, [hl]
    cp $20
    dec bc
    nop
    cp $00
    ld hl, sp+$03
    ld hl, sp+$02
    cp $35
    ld b, $40
    inc de
    ret nz

    inc de
    nop
    inc de
    ld h, b

jr_03b_4042:
    rst RST_38
    inc bc
    or b
    ld b, e
    or b
    ld b, e
    ld h, b
    inc bc
    nop
    dec l
    inc bc
    inc [hl]
    ld bc, $f900
    nop
    rlca
    ret nz

    ld de, $000c
    ld b, $7f
    ldh a, [rIF]
    nop
    ldh a, [rP1]
    nop
    rrca
    db $10
    dec b
    sbc $42
    ld bc, $f300
    nop
    inc bc
    jr nz, jr_03b_406b

jr_03b_406b:
    ld b, b
    rra
    rst RST_38
    ld b, b
    db $10
    ld b, b
    nop
    ld c, [hl]
    nop
    ld [hl], b
    rrca
    or a
    rrca
    ld a, a
    ld a, a
    ld a, b
    nop
    rrca
    rst RST_38
    and h
    ld [$fdf0], sp
    ldh a, [$ffa4]
    add hl, bc
    rst RST_38
    rst RST_38
    nop
    rrca
    ldh a, [rP1]
    db $eb
    rrca
    nop
    ld a, e
    nop
    rrca
    or b
    dec c
    ld hl, sp-$08
    rst RST_00
    rst RST_30
    ret nz

    nop
    ccf
    and h
    ld bc, $fcfc
    db $e3
    ldh [$ffe1], a

jr_03b_40a1:
    rra
    nop
    dec b
    cp l
    ld bc, $0900
    and h
    ld [bc], a
    db $e4
    ldh [rIE], a
    ld a, a
    xor $df
    pop de
    rst RST_18
    rst RST_18
    cp a
    cp a
    and h
    rlca
    ld sp, hl
    ld a, a
    ld a, [de]
    db $10
    ld c, $17
    ldh [$ffe0], a
    ret c

    add $ae
    rst RST_38
    sub c
    add c
    and b
    cp $fe
    ld sp, hl
    ld hl, sp-$0c
    rst RST_38
    ldh a, [c]
    add sp, -$1c
    pop de
    ret z

    ld d, c

jr_03b_40d2:
    ld b, b
    ld hl, $14ff
    ld hl, $0184
    ld bc, $0cf0
    inc b
    rst RST_38
    inc bc
    sbc c
    ld b, b
    sbc h
    ld b, d
    sbc h
    ld b, d
    sbc c
    rst RST_30
    ld b, h
    sbc c
    ld b, h
    jr jr_03b_40fd

    rra
    rra
    ld c, [hl]
    adc [hl]
    ld a, a
    adc b
    ld c, c
    ld b, d
    inc h
    add h
    jr nz, jr_03b_40a1

    rst RST_38
    inc b
    rst RST_38
    rrca
    rrca

jr_03b_40fd:
    jp Jump_000_3123


    add hl, bc
    reti


    dec b
    cp a
    ret z

    inc b
    ld c, b
    jr nz, jr_03b_4151

    inc hl
    ld [hl], d
    ld de, $ff41
    daa
    ld b, e
    daa
    inc hl
    rlca
    inc hl
    rlca
    ldh [rIE], a
    nop
    nop
    jr jr_03b_4133

    rst RST_38
    ld a, a
    rst RST_38
    ccf
    rst RST_38
    rst RST_38
    sbc a
    rst RST_38
    rst RST_18
    rst RST_38
    cp $fe
    inc bc
    rst RST_28
    nop
    nop
    db $fc
    jr nc, jr_03b_40d2

    nop
    sbc l
    pop bc
    ld h, d
    rst RST_38

jr_03b_4133:
    sub h
    ld [bc], a
    add hl, bc
    add c
    ld e, h
    rst RST_38
    nop
    rra
    rst RST_38
    nop
    rlca
    ret nz

    pop bc
    ld hl, sp-$40
    cp $f8
    ld a, a
    rst RST_38
    ld a, h
    ld a, a
    cp h
    ccf
    sbc h
    ld [bc], a
    or b
    inc de
    rst RST_38
    inc e
    ld [bc], a

jr_03b_4151:
    inc e
    add d
    inc e
    jp nz, $e20c

    rst RST_38
    ld e, [hl]
    sub c
    cpl
    ret z

    db $dd
    ld a, [hl+]
    cp $01
    rst RST_38
    ccf
    call nz, $768f
    and l
    ld e, b
    ldh a, [c]
    adc [hl]
    rst RST_38
    rst RST_38
    nop
    ccf
    ret nz

    rrca
    ldh a, [$ffc3]
    inc a
    rst RST_38
    ld [hl], c
    adc [hl]
    jp hl


    ld d, $85
    ld a, d
    inc e
    db $e3
    rst RST_38
    nop
    ld e, a
    nop
    ld a, [hl]
    nop
    or a
    nop
    or e
    rst RST_38
    nop
    sbc e
    nop
    sbc d
    ld bc, $0798
    add b
    rst RST_38
    ld bc, $01fc
    cp b
    rlca
    jr nc, jr_03b_41a4

    jr nz, @+$01

    inc e
    nop
    ldh a, [$ff03]
    ret nz

    rrca
    nop
    ccf
    rst RST_38
    cp a
    cp a
    ld a, a
    ccf

jr_03b_41a4:
    ld a, a
    ld b, b
    ccf
    ccf
    rst RST_38
    ret nz

    ret nz

    push af
    pop af
    ldh [$ffe0], a
    pop de
    adc $ff
    cp a
    cp a
    rst RST_18
    sbc a
    rst RST_18
    ld e, a
    sbc a
    sbc a
    ei
    ld a, a
    ld a, a
    ld d, $13
    ld c, [hl]
    nop
    ld c, e
    ld [$ff46], sp
    ld b, $49
    ld bc, $0c4c
    ld b, e

jr_03b_41cb:
    inc bc
    ld c, [hl]
    rst RST_38
    nop
    ld e, a
    rrca
    db $ed
    inc b
    ld c, [hl]
    ld [bc], a
    add [hl]
    rst RST_38
    ld [bc], a
    cp d
    adc d
    ld l, l
    ld h, l
    sbc e
    sbc e
    ld l, l

jr_03b_41df:
    ld a, a
    ld h, l
    rst RST_38
    rst RST_38
    db $dd
    ld b, h
    db $db
    ld c, b
    ld b, d
    jr nz, @+$01

    ld c, c
    ld d, [hl]
    ld d, d
    ld [hl], h
    ld d, h
    ei
    ld e, e
    db $fd
    rst RST_38
    db $fc
    sub e
    nop
    jp nz, $b340

    add e
    ld l, l
    rst RST_38
    inc c
    or a
    jr nc, jr_03b_41df

    rst RST_00
    ld a, b
    jr c, jr_03b_41cb

    rst RST_38
    ret nz

    xor [hl]
    ld [hl+], a
    adc $c2

jr_03b_420a:
    ld l, [hl]
    ld [bc], a
    xor $ef
    ld [bc], a
    xor $e2
    ld c, $65
    ld hl, $0702
    rrca
    rst RST_28
    rlca
    rrca
    nop
    ld [$05f4], sp
    ld sp, hl
    nop
    ret nz

    rst RST_18
    ldh [rP1], a
    sbc [hl]
    nop
    ld a, a
    ret nz

    nop
    rlca
    ld hl, sp+$7f
    ld [bc], a
    db $fc
    nop
    rst RST_30
    nop
    nop
    halt
    adc h
    nop
    rst RST_38
    ld c, b
    db $10
    ld [hl], h
    ld [$0039], sp
    ld b, b
    ld bc, $63ff
    add e
    rlca
    cp h
    cp a
    nop
    ld bc, $fd00
    ld a, $00
    nop
    pop bc
    jr @+$3e

    ldh a, [$fffc]
    ldh [$ff97], a
    ld hl, sp+$0c
    ldh [c], a
    or b
    jr nz, jr_03b_429a

    cp d
    ld de, $20b8
    ld [bc], a
    rst RST_38
    inc c
    ld [bc], a
    ld a, [hl-]
    inc h
    sbc $10
    ld [hl], $d4
    rst RST_38
    sub [hl]
    db $e4
    jp c, $882a

    ld [hl], b
    xor b
    ld d, b
    rst RST_38
    ld [$fc10], a
    inc bc
    sbc $21
    ld c, [hl]
    ld sp, $6ebf
    ld de, $1864
    inc hl
    db $10
    db $fd
    stop
    rra
    inc e
    add b
    jr nc, jr_03b_420a

    ld b, b
    call c, $ea21
    dec b

jr_03b_428c:
    nop
    ld b, $ff
    ld a, [$f405]
    dec bc
    ld b, e
    cp a
    xor h
    sbc a
    rst RST_38
    xor h
    sbc a

jr_03b_429a:
    jr nz, jr_03b_42bb

    or c
    ld c, $cc
    nop
    or a
    pop af
    nop

jr_03b_42a3:
    cp $41
    db $10
    cp a
    ccf
    db $10
    ld sp, $ff3f
    ccf
    ld bc, $c101
    ld sp, $810d
    ld a, l
    rst RST_18
    ld bc, $004f
    ld b, b

jr_03b_42b9:
    nop
    ld [bc], a

jr_03b_42bb:
    jr nz, jr_03b_42bd

jr_03b_42bd:
    ld h, b
    rrca
    jr nz, jr_03b_4321

    jr nz, jr_03b_4332

    dec hl
    jr nc, jr_03b_42b9

    nop
    rst RST_28
    ld bc, $3031
    cp $f4
    inc b
    rra
    rra
    nop
    ret nz

    ret nz

    rst RST_38
    ccf
    push hl
    ccf
    ld sp, $c030
    db $ed
    inc bc
    ld sp, $ee3a
    ldh [c], a
    xor $ff
    ld [bc], a
    ld c, $02
    cp $e2
    cp $02
    ld e, $fe
    ld l, c
    jr nc, jr_03b_428c

    ld [bc], a
    inc c
    ldh a, [$ffe2]
    inc e
    or b
    rst RST_38
    rrca
    ld d, d
    adc l
    dec bc
    call nz, $43a4
    ld c, b
    cp a
    jr nc, jr_03b_42a3

    inc e
    ld sp, hl

jr_03b_4302:
    nop
    ld a, h
    db $dd
    jr nz, jr_03b_4356

    rst RST_38
    add b

jr_03b_4309:
    daa
    ret nz

    sbc b
    ld h, b
    rst RST_00
    jr c, jr_03b_4309

    ei
    ld b, $f8
    add h
    jr nz, @+$01

    nop
    add a
    nop
    ei
    rst RST_38
    nop
    ld c, a
    jr nc, jr_03b_4302

jr_03b_431f:
    inc e
    ld a, l

jr_03b_4321:
    add d
    ld h, b
    rst RST_38
    ld h, b
    inc bc
    inc bc
    rlca
    rst RST_20
    inc bc
    ei
    ld bc, $fdff
    ld bc, $00fc
    db $fc

jr_03b_4332:
    ld bc, $34fc
    rst RST_38
    ldh a, [c]
    ld hl, sp-$06
    ldh a, [$fffa]
    inc c
    ldh a, [$ff30]
    rst RST_38
    add $86
    jr jr_03b_4361

    ld h, b
    ld a, [hl]
    add b
    ld a, l
    rst RST_38
    add b
    ld a, e
    add b
    dec de
    ldh [$ffc7], a
    jr nc, jr_03b_431f

    db $fc
    and $27
    di
    ld a, [hl+]
    db $fc

jr_03b_4356:
    inc bc
    ld hl, sp+$07
    pop de
    cpl
    rst RST_18
    add c
    ld a, a
    dec bc
    rst RST_38
    cp a

jr_03b_4361:
    add l
    db $10
    rst RST_38
    rst RST_38
    sbc a
    sub l
    rst RST_38
    rlca
    rst RST_38
    cp e
    db $eb
    ld [hl-], a
    and h
    inc bc
    db $fc
    rst RST_38
    nop
    ldh a, [c]
    nop
    jp nz, $1a02

    ld [bc], a
    ld a, [de]
    ld a, a
    jp nz, $c21a

    ld a, [bc]
    jp nz, $f000

    ld h, $30

Jump_03b_4383:
    rst RST_38
    nop
    ld l, a
    inc c
    ld l, a
    ld [$086f], sp
    ld l, [hl]
    di
    nop
    ld l, a
    ld de, $5040
    inc [hl]
    ld c, $ff
    pop hl
    rst RST_30
    db $fc
    jp Boot


    ld bc, $fefe
    cp $00
    ld b, $02
    ld l, a
    or $e2
    or $02
    ld a, [hl-]
    ld b, c
    db $e3
    ld h, b
    rst RST_20
    dec h
    rst RST_38
    cp $00
    ldh [rSB], a
    nop
    inc de
    db $fd
    nop
    sbc $50
    ld b, c
    ld hl, sp+$00

jr_03b_43bb:
    ret nz

    inc bc
    and $23
    ld hl, sp+$07
    rst RST_38
    db $f4
    dec bc
    ld hl, sp+$07
    ldh [$ff1f], a
    and b
    ld e, a
    sbc a
    ld c, h
    cp a
    sub b
    ld a, a
    ld a, [hl+]
    rst RST_28
    ld h, $00
    ld b, b
    ld bc, $88ff
    rlca
    ld h, b
    ld e, a
    cp $00
    pop af
    ld bc, $ccff
    dec bc

jr_03b_43e1:
    ld hl, $c71e
    cp c
    ld e, $e6
    cp $ee
    ld hl, $cefe
    sbc a
    ld h, b
    ld [hl], b
    adc a
    db $e3
    rst RST_38
    ld h, h
    add a
    adc d
    ld a, [de]
    ld bc, $e516
    push hl
    rst RST_38

jr_03b_43fb:
    ldh [c], a
    ccf
    jr nc, jr_03b_43fb

    inc bc
    ldh [$ff1f], a
    add c
    rst RST_38
    ld a, [hl]
    inc c
    di
    ccf
    ret nz

    ld [hl], a
    adc b
    rst RST_28
    rst RST_38
    db $10
    rrca
    pop af
    dec sp
    set 6, e
    jr nc, jr_03b_43e1

    rst RST_38
    ld b, e
    di
    inc c
    ld a, a
    add e
    db $dd
    inc h
    dec sp
    rst RST_38
    ret z

    ld [hl], a
    ld c, b
    pop hl
    ld e, $1c
    db $e3
    rrca
    rst RST_38
    db $f4
    dec de
    db $eb
    sbc b
    ld l, b
    ret nc

    jr nz, jr_03b_43bb

    rst RST_38
    ld [hl], b
    and d
    ld b, c
    push hl
    ld [bc], a
    push hl
    ld [hl+], a
    call nz, $c3ff
    ld b, $05
    dec de
    nop
    ld l, l
    dec d
    and h
    ld a, a
    ld e, b
    nop
    nop
    ld [hl], h
    inc b
    ld [hl], h
    dec b
    db $e4
    ld b, e
    rst RST_38
    inc [hl]
    dec b
    nop
    pop bc
    add hl, sp
    ld [hl], $de
    reti


    daa
    rst RST_20
    ld h, [hl]
    ld hl, sp+$00
    ld b, $e0
    dec a
    ld l, [hl]
    dec d
    ld b, l
    add hl, de
    ld b, b
    ei
    ld h, b
    nop
    and d
    jr nz, jr_03b_4468

jr_03b_4468:
    cp $0c
    rst RST_38
    db $e3
    adc a
    db $f4
    nop
    nop
    inc bc
    and c

jr_03b_4472:
    db $10
    ld bc, $2600
    ld d, c
    ret nz

    db $fd
    adc a
    and $22
    ldh a, [rP1]
    add e
    nop
    rst RST_38
    and $ff
    ld bc, $03ec
    ret


    ld b, $c9
    ld b, $8f
    rst RST_38
    nop
    ld b, a
    nop
    call nz, $8f03
    nop
    pop bc
    rst RST_38
    ld a, $ff
    nop
    ldh [c], a
    ld bc, $609d
    and $ff
    jr jr_03b_4472

    inc c
    ld e, l
    add d
    ld l, $c1
    cp $b1
    nop
    xor c
    jr nc, @-$0e

    db $10
    ld d, b
    ld b, b
    ld bc, $00fe
    nop
    jp $fcff


    ld c, a
    rst RST_30
    ld h, [hl]
    ld a, [$ad73]
    add hl, sp

jr_03b_44bc:
    rst RST_38
    sub $94
    ld h, e
    jp z, Jump_03b_75b1

    ld c, b
    db $db
    rst RST_38
    and h
    call c, $dfbb
    xor h
    ld c, h
    ld [hl], h
    and a
    rst RST_38
    sbc e
    and e
    inc e
    or b
    cpl
    di
    db $ec
    rst RST_38
    ld a, a
    ld a, b
    ld a, [hl]

jr_03b_44da:
    add c
    nop
    rst RST_38
    call z, $f4b3
    nop
    rst RST_38
    ld bc, $fc03
    inc bc
    db $fd
    sbc h
    ld l, e
    add hl, sp
    rst RST_38
    sub $73
    xor h
    rst RST_30
    ld l, b
    dec hl
    dec [hl]
    dec hl
    rst RST_38
    dec d
    ld [hl], e
    ld c, l
    ld b, a
    add hl, sp
    ld a, a
    adc b
    db $db
    rst RST_38
    jr z, jr_03b_44da

    jr z, jr_03b_44bc

    ld c, b
    or l
    ld b, d
    sub h
    rst RST_38
    ld h, e
    sub h
    ld h, e
    cp d
    ld c, c
    db $e3
    inc e
    ld a, c
    rst RST_38
    add [hl]
    ccf
    ret nz

    adc a
    ld [hl], b
    db $fd
    ld [bc], a
    ld a, [hl]
    rst RST_38
    add c
    rlca
    ld hl, sp-$31
    inc [hl]
    ldh a, [c]
    inc c
    ld a, h
    rst RST_38
    add e
    adc c
    halt
    and $98
    db $d3
    ld c, l
    ld l, c
    rst RST_18
    add [hl]
    dec b
    ldh [c], a
    call nc, $0123
    rlca
    rst RST_30

jr_03b_4532:
    ld [$5aef], sp
    and l
    and a
    ld e, b
    ld bc, $bb07
    ld b, h
    ld d, l
    rst RST_38
    xor d
    ld h, a
    sbc b
    or [hl]
    xor d
    ld c, l
    or h
    ei
    db $fd
    ld c, b
    db $f4
    rlca
    add a
    ld a, d
    rst RST_30
    adc d
    rst RST_18
    ld d, d
    rst RST_30
    dec b
    inc b
    ld sp, hl
    ld l, e
    ld d, d
    rst RST_38
    nop

jr_03b_4558:
    ld a, [hl+]
    pop de
    rst RST_38
    dec e
    db $e4
    dec e
    db $e4
    ld c, $f0
    sub a
    ld l, c
    rst RST_38
    jp $b9bc


    and [hl]
    rst RST_00
    ld b, $79
    add d
    rst RST_38
    jr c, jr_03b_4532

    jr c, @-$3b

    sbc b
    ld h, d
    ld d, h
    ld [hl+], a
    rst RST_38
    and h
    sub d
    call c, $f042
    ld [hl], b
    or $01
    db $fd
    ldh a, [c]
    ld b, c
    ld h, b
    ld [hl], d
    add c
    ld [hl], d
    add c
    or d
    ld b, b
    db $fd
    or c
    db $e4
    jr nz, jr_03b_458e

    rst RST_38

jr_03b_458e:
    inc de
    rst RST_38
    dec c
    rst RST_38
    rra
    or a
    rst RST_38
    ld e, a
    rst RST_38
    cpl
    jp hl


    jr nc, jr_03b_4558

    ld bc, $422e
    rst RST_38
    ld bc, $04fb
    push af
    ld a, [bc]
    ld e, d
    and l
    and b
    rst RST_38
    ld e, a
    ei
    inc b
    sub $29

jr_03b_45ad:
    ld l, c
    sub [hl]
    and l
    rst RST_28
    ld e, d
    ld d, b
    xor a
    add b
    sub d
    ld sp, $d4ff
    dec hl
    rst RST_28
    xor d
    ld d, l
    jp c, Jump_000_0025

    rlca
    sbc d
    ld h, l
    ld h, l
    rst RST_30
    sbc d
    adc b
    ld [hl], a
    nop
    rlca
    xor d
    ld d, l
    jr nz, jr_03b_45ad

    db $fc
    nop
    dec c
    nop
    ld bc, $ff0a
    add c
    rst RST_38
    ld d, h
    rst RST_38
    rst RST_38
    xor l
    rst RST_38
    db $10
    rst RST_38
    ld b, l
    rst RST_38
    jr nz, @+$01

    ld a, a
    ld d, e
    rst RST_38
    dec e
    rst RST_38
    ld d, d
    rst RST_38
    and a
    ld d, a
    ld h, b
    rst RST_38
    ldh a, [rIF]
    inc b
    rst RST_38
    add hl, bc
    rst RST_38
    sub a
    rst RST_38
    dec h
    dec hl
    and h
    inc b
    sub a
    adc e
    db $10
    or h
    ld a, [bc]
    ei
    ldh a, [rOCPD]
    ld bc, $bf07
    rst RST_28
    db $10
    ld a, [hl-]
    push bc
    push de
    ld a, [hl+]
    ld bc, $ad07
    rst RST_18
    ld d, d
    jp c, $b425

    ld c, e
    or $47
    rst RST_38
    nop
    ld a, a
    rst RST_10
    jr z, jr_03b_461b

jr_03b_461b:
    rst RST_38
    inc bc
    jr jr_03b_4622

    inc sp
    nop
    ld a, [hl]

jr_03b_4622:
    ld [hl-], a
    ld [hl], e
    ld bc, $00f8
    cp $a0
    cpl
    ld b, b
    ld a, c
    ld hl, sp+$2b
    ld b, h
    or l
    ld l, a
    rst RST_00
    ld h, [hl]
    add d
    rst RST_38
    dec l
    rst RST_38
    sub e
    di
    rst RST_38
    ld b, a
    adc e
    db $10
    rrca
    inc de
    jp nz, Jump_000_25ff

    rst RST_38
    pop af
    jp z, Jump_03b_7479

    ld e, l
    ld h, [hl]
    ld bc, $7f03
    nop
    rlca
    ld hl, sp+$55
    nop
    ldh a, [$ff6c]
    dec sp
    ld bc, $0700
    push af
    jr c, @+$01

    ld c, h
    jr nc, jr_03b_465d

jr_03b_465d:
    or d
    inc c
    ld bc, $ff0b
    dec e
    nop
    add b
    ei
    and $c8
    nop
    add hl, bc
    adc $e0
    ld a, l
    cp $7f
    rst RST_38
    db $fc
    ld a, d
    db $fd
    ld h, l
    ei
    sbc e
    ld h, a
    rst RST_30
    rst RST_38
    rrca
    rst RST_28
    rra
    adc $3f
    sbc l
    ld a, [hl]
    ld a, l
    rst RST_38
    cp $fb
    db $fc
    db $fd
    cp $f6
    rst RST_38
    xor $ff
    rst RST_38
    sbc $ff
    sbc [hl]
    rst RST_38
    scf
    add a
    scf
    rst RST_30
    add a
    daa
    sub a
    inc [hl]
    inc bc
    scf
    add a
    or a
    rlca
    push af
    cp $40
    inc c
    rst RST_38
    ld d, b
    ld b, $00
    nop
    rra
    ld h, b
    ei
    ld b, b
    ccf
    ld d, b
    dec b
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$27
    rlca
    rlca
    ld hl, sp+$52
    rlca
    ld [hl], a
    ld bc, $7cff
    nop
    ld d, b
    ld bc, $c0ff
    ret nz

    ccf
    nop
    ret nz

    ccf
    ccf
    ret nz

    cp $7e
    dec b
    rrca
    rrca
    db $e3
    inc bc
    nop
    db $fc
    cp $fb
    nop
    cp $7c
    nop
    cp $fe
    db $fc
    db $fc
    ld sp, hl
    rst RST_38
    ei
    ld a, [$f1f9]
    or $f1
    rst RST_30
    db $e3
    rst RST_38
    rst RST_28
    rst RST_38
    rst RST_38
    rlca
    rlca
    ld h, e
    di
    ld l, c
    rst RST_38
    dec c
    db $fd
    ld sp, hl
    ld hl, sp+$06
    db $fc
    cp $fc
    db $ec
    ld d, b
    rlca
    ld d, b
    ld [bc], a
    ld a, a
    ld a, a
    ld d, b
    inc bc
    ldh a, [$fff0]
    nop
    rst RST_38
    rrca
    nop
    ldh a, [rIF]
    rrca
    ldh a, [$fff0]
    ldh [c], a
    db $ed
    ld [$09e0], a
    ld [bc], a
    ld a, [bc]
    ldh [$ff0b], a
    ldh [c], a
    ld [$fff3], a
    db $e4
    di
    db $e4
    rst RST_30
    ldh [$ffeb], a
    ldh a, [$fff9]
    rst RST_38
    ldh a, [c]
    push af
    ld hl, sp-$04
    ld sp, hl
    ld a, [$5dfc]
    rst RST_38
    ccf
    ld c, d
    ccf
    ld b, c
    ld a, $b3
    inc c
    cp [hl]
    rst RST_38
    ld bc, $01de
    rst RST_28
    nop
    ld [hl], e
    add b
    ld a, $ff
    rst RST_38
    cp [hl]
    ld a, a
    ld a, h
    rst RST_38
    ld [hl], l
    cp $e9
    rst RST_38
    cp $12
    db $fc
    ld b, [hl]
    cp b
    db $fd
    nop
    or a
    rst RST_38
    rlca
    add a
    cpl
    ld c, a
    cpl
    ld l, a
    rrca
    cpl
    ccf
    ld c, a
    rst RST_08
    rra
    ld e, a
    sbc a
    sbc a
    ld e, a
    ld b, $50
    inc bc
    ld a, a
    ldh [$ffe0], a
    ld l, a
    db $10
    ld l, a
    db $10
    ld l, [hl]
    ld d, e
    jr @+$01

    rst RST_38
    nop
    db $fc
    nop
    nop
    nop
    ld bc, $1f00
    ld d, [hl]
    nop
    ccf
    nop
    ld a, a

jr_03b_477a:
    ld l, e
    db $10
    ld e, c
    nop
    ld h, e
    db $10
    jp hl


    ld d, a
    ld a, c
    nop
    ld a, b
    inc de
    ret nz

    ld h, e
    db $10
    dec d
    nop
    xor a
    cp [hl]
    ld [hl], a
    ld d, $06
    nop
    ld b, $08
    and $93
    jr jr_03b_477a

    rst RST_38
    rst RST_28
    rst RST_00
    rst RST_18
    rst RST_00
    rst RST_18
    db $dd
    jp $ebe3


    ldh [$fffc], a
    cp [hl]
    ld [bc], a
    cp $af
    db $10
    rst RST_38
    rst RST_38
    ei
    rst RST_38
    db $fc
    db $fc
    nop
    inc bc
    inc bc
    xor a
    adc a
    adc a
    rst RST_38
    adc a
    ld a, a
    ld a, a
    ccf
    cp a
    ccf
    cp a
    cp a
    db $ed
    ccf
    adc $05
    rrca
    rrca
    ret nz

    inc c
    rst RST_38
    sbc a
    rst RST_38
    ld a, a
    cpl
    rst RST_38
    dec b
    rst RST_38
    ld [bc], a
    rst RST_38
    ld bc, $1278
    cpl
    rlca
    rlca
    rst RST_18
    rra
    ldh a, [c]
    add hl, de
    db $fd
    ld c, [hl]
    add hl, bc
    ld d, b
    nop
    rst RST_38
    inc a
    ld b, b
    adc a
    jr nc, @+$45

    adc h
    db $d3
    ldh [$fffd], a
    db $f4
    ld l, a
    inc b
    ldh a, [c]
    ld bc, $020d
    ld c, $f0
    ld l, a
    ld hl, sp+$01
    inc bc
    rlca
    ld d, b
    inc bc
    cp a
    ccf
    rst RST_00
    ld d, $fc
    ld d, b
    ld [bc], a
    ld b, b
    rlca
    ld a, $3e
    jp nz, $fc02

    nop
    ldh a, [rHDMA4]
    add hl, de
    ld d, h
    ld de, $116c
    ld l, h
    ld de, $0075
    ld a, b
    nop
    rst RST_28
    jr nz, jr_03b_481a

    ld b, e
    rlca
    ld a, b

jr_03b_481a:
    inc de
    ldh [rP1], a
    rlca
    rr a
    ccf
    push de
    nop
    res 1, l
    ld bc, $0079
    ld e, a
    nop
    rst RST_38
    nop
    add b
    sbc a

jr_03b_482e:
    rst RST_38
    ccf
    ld a, a
    ld a, $3f
    cp $94
    dec d
    ld b, $00
    add $f0
    sub d
    ldh a, [$ff72]
    cp l
    ldh a, [$ffa0]
    ld bc, $fcfd
    ld a, [$a6f9]
    ld hl, $ffc2
    pop bc
    dec a
    nop
    ld [hl], a
    rlca
    sbc e
    ld h, e
    ld c, l
    rst RST_38
    pop af
    push hl
    ld sp, hl
    add $f8
    ld c, $f0
    ld c, $e7
    ldh a, [$ff3d]
    ret nz

    ld d, b
    add hl, bc
    ld a, b
    ld de, $4e4e
    add e
    di
    inc bc
    db $fc
    ld [hl], a
    ld d, $59
    nop
    jr c, jr_03b_482e

    rst RST_00
    ld a, b
    rra
    ld a, b
    adc a
    rrca
    pop af
    ld bc, $009e
    ld a, c
    ld [bc], a
    ldh a, [$ff2b]
    ld a, a
    ld l, [hl]
    db $10
    ld l, b
    db $10
    ld l, c
    inc de
    ld l, e
    dec b
    jr nc, @+$01

    ld l, d
    ld [de], a
    ld l, b
    ld [de], a
    ld l, b
    db $10
    rlca
    rra
    rst RST_30
    inc de
    rst RST_38
    ld a, e
    and c
    nop
    adc [hl]
    adc [hl]
    rlca
    ld [hl], a
    rst RST_38
    daa
    rst RST_00
    ld b, e
    adc e
    add b
    add b
    ld b, b
    rrca
    rst RST_38
    nop
    inc e
    ld b, b
    dec e
    nop
    inc bc
    nop
    dec c
    rst RST_38
    ld hl, $030e
    add h
    ld e, l
    rra
    rrca
    rrca
    rst RST_38
    ld bc, $2801
    add b
    inc bc
    add b
    rrca
    ret nz

    rst RST_38
    sbc h
    ld b, b
    dec sp
    add b
    ldh a, [$fff0]
    ldh a, [$fff8]
    rst RST_38
    ldh a, [$fff8]
    jr c, @+$3a

    ret c

    jr jr_03b_48ce

jr_03b_48ce:
    nop
    cp l
    rst RST_28
    ld c, e
    jr nc, jr_03b_48e0

    db $e3
    rrca
    ldh [rHDMA2], a
    inc [hl]
    nop
    db $fd
    ldh a, [$ff9f]
    jr nz, jr_03b_495d

    add b

jr_03b_48e0:
    adc a
    ld [hl], b
    pop af
    ld c, $b9
    cp $ea
    inc de
    ret c

    nop
    ei
    nop
    rlca
    ld a, c
    nop
    ccf
    add [hl]
    add [hl]
    nop
    ei
    inc b
    ld a, d
    ld sp, $1378
    ld l, h
    ld [bc], a
    sbc l
    nop
    add b
    ld e, b
    reti


    dec h
    ld a, l
    ld bc, $1163
    cp $e0
    ld h, c
    ld de, $9cfe
    ld bc, $06ff
    nop
    ld d, $e0
    or $00
    ld l, a
    nop
    rst RST_08
    ld h, e
    nop
    ld l, b
    db $10
    ld b, $31
    ld b, $31
    dec hl
    inc de
    rst RST_38
    dec e
    dec e
    sbc e
    dec sp
    rr e
    ld h, e
    dec bc
    rst RST_38
    add e
    add e
    ldh [$ffe3], a
    ldh a, [$fff0]
    cp $fe
    rst RST_38
    ld b, $df
    ld l, c
    sbc a
    ld [de], a
    cp l
    inc d
    cp e
    rst RST_38
    add l
    ld a, [hl-]
    add [hl]
    jr c, jr_03b_4965

    add hl, de
    inc h
    add hl, de
    db $fd
    rst RST_18
    ld e, a
    nop
    cp $ff
    ld a, [de]
    and h
    rrca
    ld a, a
    rst RST_38
    cpl
    rst RST_18
    inc bc
    rst RST_38
    ld b, b
    cp a
    jp hl


    di
    rst RST_18
    ret nc

    rst RST_20
    ld [bc], a
    adc a
    sbc l

jr_03b_495d:
    rst RST_08
    nop
    or e
    rst RST_38
    rst RST_38
    rst RST_18
    rst RST_28
    rst RST_28

jr_03b_4965:
    rst RST_18
    ld h, [hl]
    ld d, $67
    rla
    rst RST_38
    ld [hl], e
    inc bc
    ld h, h
    jr jr_03b_49e9

    ld b, $7e
    ld bc, $6cfe
    ld de, $8d50
    inc b
    ld a, b
    add e
    add b
    sbc a
    rst RST_28
    add b
    ccf
    nop
    ld a, [hl]
    ld l, c
    db $10
    dec e
    nop
    or b
    rst RST_38
    inc bc
    jr jr_03b_498b

jr_03b_498b:
    pop hl
    rst RST_20
    rst RST_38
    rst RST_38
    db $fd
    rst RST_38
    cp $7f
    rst RST_38
    ld [hl], e
    rst RST_38
    ccf
    rst RST_28
    ld a, l
    rst RST_38
    ld a, e
    ld a, e
    rst RST_30
    rst RST_20
    rst RST_28
    ld l, l
    sbc [hl]
    ld a, a
    rst RST_38
    rst RST_38
    db $fd
    rst RST_38
    di
    rst RST_38
    rst RST_10
    rst RST_28
    rst RST_20
    rst RST_38
    rst RST_18
    xor a
    rst RST_18
    ld e, a
    cp a
    ld a, $ff
    dec a
    ld a, a
    cp $9f
    db $fc
    ld [hl+], a
    db $dd
    sbc h
    db $e3
    ld d, b

jr_03b_49bd:
    ld bc, $b7ff
    rst RST_08
    rst RST_18
    ccf
    cp [hl]
    ld a, a
    ld e, a
    cp $ff
    sbc l
    cp $3a
    db $fd
    ldh a, [$fff0]
    jp z, $bfc4

    db $e4
    sbc [hl]
    sbc $3f
    rst RST_38
    ld a, a
    ld c, a
    nop
    db $fd
    ei
    ld a, l
    ei
    ld a, d
    ld sp, $043b
    dec bc
    inc b
    pop bc
    rst RST_38
    ret nz

    or $f6
    ld sp, hl

jr_03b_49e9:
    ld sp, hl
    db $fc
    db $fc
    add b
    rst RST_30
    ccf
    sbc a
    jr nz, @-$7c

    ld b, e
    rra
    jr nz, jr_03b_49bd

    ret nz

    ld a, l
    ld hl, sp-$77
    jr nc, @+$01

    nop
    pop bc
    ld a, $c1
    db $db
    inc hl
    sbc a
    nop
    add c
    ld a, [hl]
    or $00
    and b
    ld b, l
    xor d
    inc sp
    jp Jump_000_00ff


    rst RST_38
    add b
    rst RST_38
    ret nz

    rst RST_38
    ldh a, [rIE]
    ccf
    db $fc
    cp a
    cp $5f
    rst RST_38
    rra
    sub a
    ld [hl-], a
    sub $26
    rst RST_38
    add b
    rst RST_38
    ldh [$ff81], a
    sbc l
    pop bc
    push bc
    ldh a, [$fff1]
    pop af
    xor d
    inc de
    inc l
    ld [hl+], a
    rst RST_18
    db $10
    ld a, a
    rst RST_38
    inc a
    cp $ff
    jr @+$3e

    add b
    sbc b
    jp nz, $fbc0

    ld hl, sp-$01
    ld l, $df
    ld e, l
    cp a
    dec de
    dec a
    dec c
    ld a, e
    rst RST_38
    add l
    ld a, e
    add h
    ld a, e
    ld b, h
    dec sp
    inc [hl]
    dec bc
    push bc
    dec bc
    push hl
    stop
    jp hl


    inc d
    ld [hl], a
    ld de, $41b6
    rst RST_38
    rst RST_38
    sbc a
    ld e, a
    rst RST_38
    xor a
    rst RST_38
    inc de
    push hl
    ld [de], a
    ld a, b
    inc d
    ret nz

    adc a
    rst RST_38
    ldh [rIE], a
    ld hl, sp-$4f
    ld de, $47d6
    ld d, b
    inc bc
    jp z, $0fff

    jr nz, jr_03b_4a87

    ret nc

    push bc
    ldh [$ffe1], a
    ld hl, sp+$7d
    ld sp, hl
    ld c, [hl]
    inc bc
    ld [hl], a
    ld [hl], a
    ld h, a
    rst RST_30
    db $e3

jr_03b_4a87:
    ld d, e
    ld d, b
    rst RST_38
    jp Jump_000_00f7


    inc bc
    call z, $f2c0
    ldh a, [rIE]
    cp e
    cp e
    or e
    or a
    or e
    or a
    add e
    or a
    rst RST_38
    nop
    rst RST_08
    nop
    ret z

    inc bc
    nop
    ld hl, sp+$00
    rst RST_38
    cp $ff
    db $fc
    cp $f0
    cp $00
    ldh [$ff7d], a
    rra
    ld [hl], e
    ld [hl+], a
    rra
    rra
    dec sp
    ld a, e
    add hl, sp
    add c
    ld d, b
    cp a
    jr c, jr_03b_4b36

    db $10
    jr c, @-$7d

    ld bc, $01ce
    add b
    rst RST_38
    ret nz

    jp Jump_000_1fe0


    add b
    ld a, b
    nop
    rlca
    sbc [hl]
    add hl, hl
    inc h
    ccf
    ld a, a
    add [hl]
    rrca
    ld a, h
    ld d, c
    ld d, b
    dec b
    ld c, $de
    ld h, e
    db $10
    ld d, [hl]
    ld b, b
    sub $c0
    or [hl]
    ld d, e
    and $e0
    ld [bc], a
    ld d, $51
    ld d, a
    rst RST_20
    db $10
    ld [bc], a
    ld d, c
    inc c
    ld d, d
    or l
    ld b, d
    inc d
    ld d, c
    db $e4
    ld de, $0ab9
    cp a
    ld b, a
    pop de
    ld d, h
    db $f4
    ldh a, [$fff6]
    pop af
    ld e, b
    ldh a, [c]
    dec b
    ldh a, [$fff0]
    add hl, hl
    ld bc, $10df
    push de
    daa
    add hl, hl
    inc hl
    ld [hl], a
    dec d
    pop de
    dec d
    push hl
    nop
    rst RST_38
    ld d, b
    rlca
    rst RST_18
    db $10
    ret c

    ld b, a
    ld e, a
    rst RST_38
    dec hl
    sbc [hl]
    rst RST_00
    ld d, [hl]
    nop
    rst RST_38
    db $fc
    ret nz

    ld a, [hl+]
    ld d, b
    rst RST_18
    db $10
    xor e
    inc hl
    rst RST_38
    dec d
    ld a, b
    ld [de], a
    ld a, b
    ld d, b
    and a
    ld d, h
    ld l, a
    ld e, c
    ld h, b
    sbc $50
    sbc h
    and a
    ld d, [hl]

jr_03b_4b36:
    ld d, b
    inc bc
    xor d
    rst RST_38
    ld d, l
    pop af
    ld a, [hl+]
    inc d
    ld d, c
    xor d
    sub d
    ld e, c
    ld h, b
    ld [bc], a
    adc c
    ld h, [hl]
    ld d, b
    ld bc, $9355
    ld h, d
    sbc h
    ld h, a
    rst RST_38
    ld a, [$5017]
    ld d, l
    ld d, a
    ld h, b
    inc d
    rst RST_38
    ld d, $f9
    dec c
    cp a
    di
    dec de
    rst RST_20
    xor a
    rst RST_18
    rst RST_18
    ld b, l
    ld b, b
    jp hl


    rst RST_38
    cp $f6
    ld sp, hl
    inc de
    ei
    di
    rst RST_30
    rst RST_20
    rst RST_38
    rst RST_30
    jp $cfef


    rst RST_28
    ld c, a
    sbc [hl]
    inc a
    rst RST_38
    dec a
    ld e, c
    db $fd
    adc $ff
    db $eb
    rst RST_30
    cp c
    rst RST_18
    di
    or h
    ld sp, hl
    sbc e
    ld a, h
    rst RST_08
    inc bc
    ccf
    ccf
    rst RST_38
    xor a
    rst RST_08
    db $eb
    pop af
    db $fc
    cp $bf
    ld a, a
    db $db
    dec bc
    sub a
    ld d, b
    ld bc, $001f
    xor b
    ld de, $1f1f
    db $ed
    db $e3
    ld c, a
    ld b, d
    rst RST_38
    rst RST_38
    and b
    ld b, c
    halt
    nop
    add [hl]
    ld a, b
    ccf
    jr nc, jr_03b_4bac

    inc l

jr_03b_4bac:
    rst RST_28
    ld h, b
    add a
    rst RST_00
    jp hl


jr_03b_4bb1:
    pop af
    ld d, b
    ld bc, $fdef
    cp $c6
    ld bc, $0150
    ld e, $ff
    ld hl, $1eff
    rst RST_28
    rst RST_38
    sbc e
    db $fd
    cp c
    ld a, l
    di
    rst RST_38
    ei
    db $eb
    di
    rst RST_10
    rst RST_20
    ld c, d
    add a
    db $10
    rst RST_38
    rrca
    jp nc, $b9fc

    sbc $9a
    db $dd
    sbc c
    rst RST_38
    db $dd
    ld d, a
    cp c
    ld d, b
    cp e
    ld bc, $80ba
    ld a, c
    jr nz, jr_03b_4bb1

    ld bc, $7762
    rst RST_38
    rst RST_38
    ret z

    jp z, Jump_03b_7f70

    jp c, $787c

    ret


    ld e, $7b
    rlca
    rst RST_00
    ld a, h
    ld a, b
    set 1, b
    di
    ret z

    ret


    adc a
    halt
    sbc h
    ld [hl], c
    rlca
    ld [hl], a
    add a
    sub a
    ei
    ei
    rst RST_30
    or b
    db $10
    rst RST_28
    cp e
    rst RST_18
    dec sp
    rst RST_18
    rst RST_38
    inc de
    cp e
    ld bc, $00bb
    ld a, a
    di
    ld sp, hl
    rst RST_38
    and [hl]
    ld sp, hl
    ld a, c
    cp $1e
    rst RST_38
    ld [hl], b
    rst RST_38
    rst RST_38
    ld a, c
    ld a, l
    ld l, l
    ld a, l
    ld [hl+], a
    ld a, e
    rst RST_28
    rst RST_38
    rst RST_38
    rst RST_20
    rst RST_38
    dec sp
    rst RST_30
    ld b, l
    dec de
    ld a, [$5ffd]
    call z, $44fe
    cp $41
    ld c, a
    nop
    ld l, a
    ld sp, hl
    jr nc, @+$01

    db $fc
    rst RST_18
    rst RST_18
    rst RST_28
    ld h, e
    db $ed
    ld bc, $03f6
    dec b
    ld [hl], d
    dec e
    add b
    ld a, [bc]
    rst RST_38
    ret nz

    add $c2
    rst RST_08
    jp nz, $c0cf

    add $ff
    ret nz

    ret nz

    ret z

    set 1, b
    jp z, $cac8

    ei
    ld b, a
    ld d, a
    db $10
    inc bc
    rlca
    rla
    rlca
    rst RST_10
    rlca
    ld a, a
    scf
    rst RST_00
    rst RST_00
    ld sp, $32c2
    pop bc
    jr nz, jr_03b_4c7c

    rst RST_28
    ld d, l
    xor d
    xor d
    ld d, l
    jr nc, @+$0b

    inc sp
    ret nz

jr_03b_4c7c:
    ld [hl-], a
    rst RST_10
    pop bc
    inc sp
    ret nz

    ld b, h
    ld bc, $4532
    ld [bc], a
    push de
    ld a, [hl+]
    cp a
    xor d
    ld d, l
    ld [hl], l
    adc d
    ld [$3015], a
    nop
    dec d
    ld c, a
    push af
    nop
    rst RST_38
    nop
    ld b, h
    inc bc
    ld h, b
    rlca
    rst RST_38
    ld e, l
    nop
    cp $70
    add hl, bc
    inc sp
    ld b, b
    add e
    add b
    db $fc
    db $fc
    rst RST_38
    db $fc
    add [hl]
    rlca
    ld e, l
    nop
    ld a, a
    nop
    adc a
    add b
    pop af
    ldh a, [$ff03]
    cp $fe
    adc l
    ld bc, $001d
    add b
    ei
    ret nz

    ld e, a
    nop
    ld bc, $5ec1
    jp $c35c


    ld a, a
    ld e, h
    rst RST_08
    ld d, b
    rst RST_08
    ld d, b
    ld a, a
    add b
    db $10
    rlca
    cp a
    rst RST_38
    nop
    rst RST_38
    nop
    rrca
    ldh a, [rNR41]
    ld bc, $b71f
    ldh [$ff1f], a
    ldh [rNR23], a
    inc bc
    ret c

    daa
    jr nc, jr_03b_4ce6

    ld hl, sp-$03
    rlca

jr_03b_4ce6:
    jr c, jr_03b_4ceb

    add c
    cp [hl]
    add l

jr_03b_4ceb:
    cp d
    add b
    cp a
    ccf
    add c
    cp [hl]
    add c
    cp [hl]
    add b
    cp a
    ld c, d
    ld bc, $011c
    ld d, d
    ld d, b
    ld a, [bc]
    ld bc, $0260
    ld e, e
    rlca
    ret nz

    ld [hl], b
    ld [bc], a
    ldh [rPCM12], a
    inc b
    ld sp, hl
    ld h, b
    ld h, $01
    add b
    inc bc
    sbc a
    ld h, b
    cp a
    ld b, b
    cp a
    daa
    ld b, b
    db $fc
    ld [bc], a
    sub b
    dec bc
    ld h, b
    ld [bc], a
    inc bc
    ld h, b
    inc b
    ld h, c
    ld bc, $40f1
    ld [hl], b
    inc b
    or e
    inc b
    ld a, [de]
    ld bc, $807f
    ccf
    ret nz

    sbc $80
    dec b
    call $fdca
    ld [hl], d
    ld d, b
    inc bc
    ei
    inc b
    rst RST_38
    di
    inc c
    di
    inc c
    rst RST_38
    ld sp, hl
    cp $f9
    cp a
    ld a, [hl]
    ld a, c
    ld c, $19
    inc bc
    nop
    jp hl


    ld bc, $ff10
    nop
    rst RST_28
    rst RST_30
    rst RST_08
    rst RST_38
    ld e, a
    ld a, [$ff0f]
    ldh a, [c]
    ld c, a
    ld hl, sp+$0f
    ld [hl-], a

jr_03b_4d58:
    rlca
    nop
    rrca
    reti


    add hl, bc
    inc c
    ld bc, $0108
    pop bc
    ld e, [hl]
    nop
    inc bc
    ei
    inc b
    ld l, a
    ei
    add h
    ld sp, hl
    add $14
    rla
    rst RST_38
    pop af
    jr nz, jr_03b_4d82

    push bc
    ld sp, hl
    inc h
    db $10
    ei
    jr z, jr_03b_4d8c

    jr c, jr_03b_4d80

    jr c, jr_03b_4d82

    add d
    cp l
    rst RST_38

jr_03b_4d80:
    adc [hl]
    or c

jr_03b_4d82:
    adc c
    or [hl]
    adc h
    or e
    adc l
    or d
    rst RST_38
    adc c
    or [hl]
    sbc b

jr_03b_4d8c:
    and a
    sbc b
    and a
    db $fc
    inc bc
    ld l, a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    jr c, jr_03b_4d99

    ld sp, hl

jr_03b_4d99:
    ld b, $5a
    ld de, $a45c
    nop
    ld h, c
    add hl, de
    ld bc, $60ff
    ld [hl], b
    db $10
    ld b, b
    or b
    rlca
    inc hl
    cp a
    ld b, b
    add $07
    ld h, $01
    sub b
    ld bc, $93fe
    jr jr_03b_4d58

    ld [bc], a
    and b
    ld h, c
    add hl, de
    or e
    dec b
    ld [hl], l
    ld de, $1071
    add h
    add hl, de
    ccf
    ld a, a
    db $10
    di
    db $fd
    ld [$1bd0], sp
    inc c
    nop
    ld [$9c00], sp
    nop
    db $dd
    adc h
    db $e3
    db $10
    sbc h
    nop
    cp h
    db $e3
    db $10
    inc bc
    rlca
    db $db
    ld bc, $e901
    ld [bc], a
    nop
    ret nz

    ld sp, hl
    ld [de], a
    rst RST_38
    ld [bc], a
    db $fc
    nop
    jr nz, @+$53

    inc bc
    inc b
    rst RST_38
    inc c
    rst RST_38
    inc c
    rst RST_18
    or c
    ld b, b
    db $10
    inc hl
    inc c
    ld bc, $010c
    cp $7d
    jr nz, jr_03b_4e28

    ld a, a
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    rst RST_38
    ld a, $ff
    ld e, $36
    dec h
    rst RST_38
    ccf
    and l
    ccf
    and c
    ccf
    and d
    ccf
    and a
    rst RST_38
    ccf
    adc e
    ccf
    add e
    ccf
    add a
    ccf
    adc d

jr_03b_4e1a:
    ld l, a
    push af
    ld a, [bc]
    db $e3
    inc e
    ld d, d
    dec h
    swap h
    sbc $00
    jr @-$57

    rlca

jr_03b_4e28:
    and l
    inc bc
    or e
    ld a, [bc]
    rst RST_38
    ld b, b
    call nz, $c017
    inc bc
    sub h
    add hl, de
    ldh [$ff9c], a
    inc d
    ld h, l
    add hl, bc
    ld l, a
    ld de, $0577
    ld a, e
    inc d
    cp a
    ld b, b
    sbc a
    db $e4
    ld a, a
    ld [$13d0], sp
    ei
    push de
    ld h, $36
    dec h
    cp a
    ld c, [hl]
    ccf
    cp l
    adc $ea
    jr nz, jr_03b_4e1a

    cp [hl]
    or b
    cp a
    pop af
    ld hl, $9eb8
    or $25
    jp $c75c


    ld e, b
    ld [bc], a
    inc sp
    ld [$c301], sp
    or a
    ld e, h
    ld sp, hl
    and $10
    add hl, sp
    di
    db $ec
    jr nz, @+$2a

    ld a, c
    ld c, $2a
    jr nc, jr_03b_4ef2

    ld a, a
    cp h
    jr nc, jr_03b_4ead

    ld sp, $3020
    ld hl, HeaderOldLicenseeCode
    cp $47
    nop
    add c
    cp b
    add a
    cp b
    add a
    or b
    adc a
    ei
    or c
    adc [hl]
    jp c, $fb01

    inc b
    ld sp, hl
    ld b, $79
    ld l, l
    add [hl]
    ld d, [hl]
    ld sp, $04fb
    ld d, b
    dec bc
    db $fc
    nop
    or b
    ld [$80df], sp
    db $fc
    ret nz

    pop bc
    pop bc
    ld d, b
    rlca
    ret nz

    nop
    rst RST_28
    ccf
    ccf
    rst RST_38

jr_03b_4ead:
    rst RST_38
    sub h
    inc de
    ld [$c202], a
    ld a, a
    ld [bc], a
    nop
    nop
    db $fc
    db $fc
    rst RST_38
    rst RST_38
    ld h, b
    inc bc
    rst RST_38
    cp a
    ld bc, $012b
    ld bc, $0014
    ld bc, $c0fd
    ld [hl], c
    nop
    cp $81
    ld a, [$f885]
    add a
    rst RST_38
    ld hl, sp-$39
    ld hl, sp-$39
    ld [hl], c
    ld c, [hl]
    ld e, c
    ld b, [hl]
    cp $c2
    dec de
    cp a
    ld b, b
    add $56
    add $56
    jp nz, $d386

    ld [hl-], a
    add $52
    jp c, $0831

    ld bc, $0300
    nop
    inc bc
    cp $ed

jr_03b_4ef2:
    db $fd
    inc h
    dec [hl]
    db $fc
    ei
    ld a, [$b831]
    add b
    cp c
    xor a
    and b
    cp b
    and b
    cp h
    dec b
    ld b, d
    cp d
    dec b
    ld b, b
    sub [hl]
    rst RST_38
    ldh [$ffeb], a
    ld h, h
    ld e, l
    add [hl]
    ld e, l
    adc d
    ld a, h
    rst RST_38
    ld a, e
    ld d, h
    ld e, e
    jr c, jr_03b_4f4d

    add hl, bc
    ld d, $f7
    rst RST_38
    ld [$8cf3], sp
    di
    call z, $ccf3
    rst RST_30
    db $fd
    ret z

    jr z, jr_03b_4f69

    rst RST_38
    sbc b
    rst RST_38
    ld hl, sp-$01
    ldh a, [$fffc]
    inc [hl]
    ld b, b
    inc sp
    ld b, e
    ldh a, [$ffb1]
    adc [hl]
    cp c
    add [hl]
    cp b
    rst RST_38
    add a
    xor c
    sub [hl]
    or b
    adc a
    cp h
    add e
    xor b
    rst RST_20
    sub a
    cp l
    add d
    jp nz, Jump_000_1a01

    inc bc
    ld a, e
    add b
    ld a, $ff
    ret nz

jr_03b_4f4d:
    ret nz

    db $10
    ld hl, sp+$00
    ldh [rP1], a
    pop hl
    rst RST_38
    ld bc, $07c7
    rst RST_00
    rra
    rst RST_08
    ccf
    cp a
    rst RST_38
    ld a, a
    cpl
    cp $13
    rra
    ld c, e
    ld a, a
    xor e
    rst RST_38
    db $fc
    db $eb

jr_03b_4f69:
    cp $af
    db $fd
    cp d
    db $fc
    or b
    rst RST_30
    ldh [$ffc0], a
    nop
    ld d, c

jr_03b_4f74:
    ld bc, $9f60
    rst RST_38
    ccf
    db $fd
    add b
    db $f4
    inc de
    nop
    ld bc, $0efe
    pop af
    ccf
    rst RST_08
    ret nz

    ld hl, sp-$11
    dec c
    sbc c
    jr nc, jr_03b_4f74

    ld bc, $f8e0
    rst RST_38
    or $be
    or $1f
    cp $bf
    halt
    rst RST_38
    rst RST_38
    ld d, $3f
    ld b, $0f
    nop
    inc bc
    inc d
    dec bc
    rst RST_38
    nop
    dec de
    nop
    add l
    pop hl
    ldh [c], a
    ld c, b
    ld hl, sp-$01
    ld l, h
    db $fc
    add $fe
    rst RST_08
    rst RST_38
    rst RST_18

jr_03b_4fb1:
    jr nz, jr_03b_4fb1

    ld d, b
    inc bc
    ccf
    add b
    ccf
    nop
    ccf
    nop
    rrca
    rst RST_10
    nop
    or b
    scf
    ret nc

    ld b, c
    sub b
    pop de
    ld b, d
    or b
    rla
    ld a, e
    inc [hl]
    sub e
    jr nc, jr_03b_4fe9

    db $d3
    ld d, e
    rst RST_18
    ld c, [hl]
    inc d
    add hl, hl
    ei
    inc bc
    db $fc
    ld h, c
    inc bc
    add c
    ld a, a
    ld bc, $c1ff
    rst RST_38
    ccf
    db $eb
    ld d, $f8
    rlca
    nop
    rst RST_38
    sub b
    rst RST_38
    rst RST_28
    ld hl, sp-$79

jr_03b_4fe9:
    or $89
    cp $81
    cp $87
    pop bc
    ld hl, sp-$39
    ret nc

    ld sp, $33da
    jp c, $1033

    dec b
    nop
    rst RST_30
    nop
    rla
    jr c, jr_03b_507f

    ld b, c
    cp l
    add d
    or a
    adc b
    rst RST_38
    cp c
    add [hl]
    cp c
    add [hl]
    cp [hl]
    add c
    or [hl]
    adc b
    rst RST_38
    cp h
    add d
    cp b
    add d
    add b
    ld l, c
    inc bc
    add e
    rst RST_38
    add e

jr_03b_5019:
    ld b, a
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    rst RST_38
    rra
    ccf
    ccf
    ld a, a
    xor a
    db $fc
    xor d
    db $fc
    rst RST_38
    and h
    ld hl, sp-$60
    ldh a, [$ffe0]
    ret nz

    add b
    ret nz

    adc a
    nop
    add b
    add b
    nop
    ld a, [bc]
    inc sp
    ld [hl], b
    ld d, a
    xor h
    ld b, b
    rlca
    rst RST_00
    nop
    inc bc
    nop

jr_03b_5042:
    di
    inc d
    sbc d
    jr nc, jr_03b_5042

    ld sp, $fce3
    ccf
    db $eb
    db $fc
    db $eb
    ld hl, sp-$01
    db $fd
    ldh a, [$ff30]
    jr nz, jr_03b_50a7

    ldh a, [c]
    db $d3
    jr nc, jr_03b_5019

    and a
    ld d, b
    ret c

    ld sp, $ff47
    rrca
    ccf
    xor a
    rrca
    rra
    rlca
    rrca
    ldh a, [rNR10]
    inc bc
    ldh a, [c]
    ld de, $ff1f
    add b
    rrca
    ret nz

    daa
    ldh [$ff37], a
    ldh a, [$ff7b]
    ld a, a
    ld hl, sp+$7d
    db $fc
    ld a, h
    db $fc
    ld a, [hl]
    cp $d6
    daa

jr_03b_507f:
    ld a, [hl]
    sub $23
    ld hl, sp-$10
    ldh [$ffe0], a
    ret nz

    ret nz

    ld l, l
    ld d, b
    ldh a, [c]
    jp hl


    ld [bc], a
    jr nz, @-$2f

    ld b, h
    ldh a, [rHDMA5]
    sub b
    scf
    ccf
    db $10
    rst RST_38
    rra
    ld [hl], b
    ld a, $f1
    cp $60
    db $fc
    ld h, d
    cp a
    db $fc
    ret nz

    ld hl, sp+$04
    ldh a, [$ff08]
    db $10

jr_03b_50a7:
    jr nc, @+$78

jr_03b_50a9:
    ld [$6012], a
    or $16
    ld h, h
    and $20
    dec b
    nop
    nop
    cp $cd
    ld a, $7f
    ld b, c
    add b
    scf
    jr nc, @+$63

    sub $40
    rla

jr_03b_50c0:
    jr nc, jr_03b_50c0

    add hl, sp
    ld h, b

Call_03b_50c4:
    or b
    scf
    cp b
    add b
    cp h
    add b
    cp b
    rst RST_38
    add b
    cp b
    add c
    or b
    add c
    cp b
    add e
    or b
    rst RST_38
    add e
    cp b
    add e
    ld a, a
    ld a, [hl]
    rst RST_38
    db $fc
    rst RST_38
    cp $fa

jr_03b_50df:
    jr nc, jr_03b_50df

    ld hl, sp-$0a
    ld hl, sp-$04
    ldh a, [$fffc]
    push hl
    ldh a, [$fff6]
    jr nz, @-$42

    ld h, d
    ld l, c
    add sp, $13
    cp h
    nop
    cp b
    xor e
    nop

jr_03b_50f5:
    ld hl, sp+$77
    ld h, b
    or c
    ld h, c
    ld b, b
    ldh a, [$ff81]
    ld h, b
    ld hl, sp-$24
    ld a, c
    ld h, b
    add h
    ld h, c
    ldh [rP1], a
    jr z, jr_03b_50f5

    nop
    jr z, jr_03b_510b

jr_03b_510b:
    rst RST_18
    inc d
    nop
    inc a
    nop
    jr jr_03b_50a9

    ld h, b
    inc e
    nop
    rst RST_38
    rrca
    ld [$080b], sp
    rrca
    inc c
    dec bc
    ld [$11ef], sp
    db $10
    dec bc
    ld a, [bc]
    xor c
    jr nc, @+$16

    ld hl, sp+$00
    rst RST_38
    db $fc
    inc b
    ldh a, [c]
    ld [bc], a
    db $ec
    inc b
    ld hl, sp+$78
    rst RST_38
    db $f4
    sub h
    adc h
    inc c
    sbc d
    ld a, [de]
    ld a, [hl]
    cp $ff
    ccf
    ld a, a
    daa
    ccf
    inc bc
    ld e, a
    ld bc, $ff3f
    jr c, jr_03b_5155

    inc a
    rrca
    inc e
    rlca
    ei
    ld [$7bfd], sp
    pop de
    ld h, b
    cp e
    adc b
    cp e
    adc b
    dec sp

jr_03b_5155:
    adc b
    rst RST_28
    dec de
    ret z

    dec de
    adc b
    rst RST_38
    db $10
    db $fd
    ld b, $f9
    rst RST_38
    ld c, $f1
    rlca
    ld hl, sp+$0f
    ldh a, [$ff0e]
    ld sp, hl
    rst RST_38
    ld a, [hl]
    pop af
    rrca
    rst RST_08
    rra
    srl h
    db $d3
    rst RST_38
    ld a, [hl]
    pop hl
    db $fc
    jp $42bc


    add sp, $14
    db $e3
    or b

jr_03b_517d:
    ld c, b
    jr jr_03b_51a5

    jr jr_03b_51a7

    inc d
    rla
    di
    call z, $87f1
    adc $f1
    adc $fa
    ld sp, $30f0
    dec h
    ld [hl], h
    sbc l
    jr nc, jr_03b_51a8

    ld [$7030], a
    inc e
    jr nc, @+$72

    jr jr_03b_51d4

    ld [hl], d
    sbc b
    or e
    add a
    cp [hl]
    ld b, b
    ld [hl], e
    and e
    adc a

jr_03b_51a5:
    and a
    adc a

jr_03b_51a7:
    or e

jr_03b_51a8:
    ld c, c
    ld [hl], b
    db $ec
    cp a
    ldh a, [$fff8]
    ldh [$fff8], a
    ldh [$ffda], a
    ld d, l
    ld [hl], b
    cp $3f
    ret nz

    call c, $fce0

jr_03b_51ba:
    ret nz

    inc bc
    add d
    ld d, b
    db $fc
    nop
    rst RST_38
    nop
    dec d
    ld [bc], a
    dec c
    ld [bc], a
    jr jr_03b_51cf

    jr nc, @+$01

    rrca
    inc bc
    nop
    dec b
    nop

jr_03b_51cf:
    add c
    nop
    jp Jump_000_00fb


jr_03b_51d4:
    add d
    add [hl]
    ld d, b
    dec b
    nop
    add a
    nop
    sbc b
    rst RST_38

jr_03b_51dd:
    ld h, b
    sbc b
    ld h, b

jr_03b_51e0:
    add hl, sp
    ret nz

    ld e, c
    and b
    add hl, de
    ei
    ldh [rNR10], a
    add b
    ld h, b
    ld [$dbf0], sp
    jr z, jr_03b_51ba

    ld a, a
    jr c, jr_03b_517d

    ld a, b
    sbc e
    ld l, b
    adc e
    ld a, b
    sub b
    ld [hl], c
    ld e, a
    db $eb
    jr jr_03b_51dd

    nop
    ld [hl], b
    add c
    ld h, d
    ld sp, hl
    ld h, c
    ld b, b
    rst RST_28
    or c
    ld b, b
    sbc b
    ld h, b
    sub $21
    ld a, e
    ld [$ffeb], sp
    jr @-$13

    jr jr_03b_527e

    jr jr_03b_51e0

    jr c, @-$03

    ld sp, hl
    ld [$50b5], sp
    or [hl]
    ld d, b
    ld l, $03
    cpl
    inc bc
    ld a, $ff
    inc bc
    ld a, [hl]
    ld bc, $017e
    dec bc
    ret nz

    adc e
    rst RST_38
    ldh [$ffcb], a
    ret nz

    db $db
    ldh [$ffeb], a
    ldh a, [$fff3]
    ei

jr_03b_5235:
    ldh a, [$ffe3]
    reti


    ld [hl], b
    db $fd
    inc bc
    or e
    ld c, [hl]
    rlca
    rst RST_38
    db $fd
    rra
    rst RST_20
    dec sp
    rst RST_00
    ld a, e
    add a
    rst RST_30
    ld d, a
    rrca
    rst RST_30
    rrca
    cp b
    jr nc, jr_03b_5235

    ldh a, [c]
    ld [hl], b
    rst RST_30
    dec [hl]
    ld b, c
    rrca
    ld a, [$fafd]
    db $fd
    ld de, $0480
    rra
    inc b
    rst RST_08
    ld [bc], a
    rst RST_00
    set 0, a
    jp $f1c3


    pop af
    di
    pop af
    pop af
    inc b
    ld sp, hl
    ld [bc], a
    inc b
    cp $02
    inc b
    rst RST_38
    inc b
    rra
    ccf
    inc b
    cp a
    dec b
    or b
    or b
    xor b
    xor b
    or h
    xor l
    or c

jr_03b_527e:
    or l
    inc a
    inc a
    jr c, jr_03b_52ff

    cp b
    jr c, jr_03b_52fe

    ld a, b
    inc b
    nop
    inc b
    inc [hl]
    inc a
    ld a, [hl]
    ei
    ld hl, sp-$01
    ei
    rst RST_38
    db $fc
    ld hl, sp-$04
    ld a, h
    sbc b
    inc b
    nop
    inc bc
    ld [bc], a
    dec b
    add b
    ld bc, $0100
    inc bc
    nop
    rlca
    inc bc
    inc b
    nop
    inc c
    ld bc, $0201
    ld a, [hl]
    ld a, $7e
    cp [hl]
    rst RST_38
    ld a, [hl]
    db $fd
    rst RST_38
    db $e3
    pop hl
    ldh [$ffe1], a
    ld h, b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ldh [rSVBK], a
    ld hl, sp+$7c
    ld a, $3f
    rra
    rrca
    inc b
    nop
    inc b
    add b
    ldh [$fff0], a
    inc b
    di
    inc bc
    inc b
    ld sp, hl
    dec bc
    inc b
    rst RST_38
    ld b, $fe
    inc b
    cp a
    ld b, $ff
    or [hl]
    cp h
    cp c
    cp c
    cp [hl]
    cp d
    cp b
    or c
    cp h
    inc a
    cp h
    sbc h
    inc e
    ld e, [hl]
    adc $26
    ld a, [hl]
    inc b
    ld a, a
    dec b
    ccf
    nop
    nop
    ret nz

    pop bc
    db $e3
    rst RST_20
    db $fd
    ld a, [$0004]
    ld [bc], a
    ldh [$fffc], a
    cp $7f
    dec sp
    inc b
    nop
    inc b

jr_03b_52fe:
    rlca

jr_03b_52ff:
    db $fd
    db $fc
    nop
    nop
    ld bc, $af07
    rst RST_38
    rst RST_38
    push af
    add hl, hl
    ld d, l
    db $eb
    inc b
    rst RST_38
    ld [bc], a
    cp $fc
    rst RST_38
    rst RST_38
    ei
    rst RST_38
    rst RST_38
    rst RST_30
    rst RST_38
    rst RST_28
    inc b
    ld h, b
    ld [bc], a
    ld h, c
    adc c
    adc c
    ret


    adc c
    inc b
    cp [hl]
    ld [bc], a
    cp h
    cp h
    cp [hl]
    cp b
    cp [hl]
    inc b
    ld d, b
    ld [bc], a
    ld e, b
    ld d, h
    ld e, b
    ld e, h
    ld e, h
    adc $ce
    call z, $cece
    add $c6
    and $fd
    rst RST_38
    inc b
    ld a, a
    dec b
    ld hl, sp-$28
    ld e, b
    ld c, b
    ld c, b
    inc b
    ld e, b
    ld [bc], a
    add a
    add e
    adc c
    adc c
    adc a
    adc [hl]
    add b
    add c
    inc b
    ret nz

    inc b
    nop
    ret nz

    ret nz

    inc b
    nop
    rlca
    or $df
    db $fd
    adc $35
    ld d, $c8
    inc c
    jp $fee7


    ld hl, sp-$40
    inc b
    nop
    ld [bc], a
    ld [hl], b
    add b
    inc b
    nop
    dec d
    inc b
    ld bc, $0904
    inc de
    dec de
    inc b
    ldh a, [rTAC]
    dec e
    sbc a
    rra
    add a
    jp $2041


    db $10
    db $fc
    ld hl, sp-$04
    db $fc
    ld hl, sp-$07
    ld h, l
    ld sp, $cc04
    inc bc
    inc b
    add $02
    and $e6
    halt
    halt
    inc b
    or $03
    and $04
    ld a, a
    ld b, $7d
    ld e, b
    ld e, b
    inc b
    ld e, h
    inc b
    inc a
    add a
    add [hl]
    add h
    add c
    add [hl]
    add d
    add c
    add c
    nop
    nop
    add b
    add b
    nop
    add b
    add b
    ld c, b
    inc b
    nop
    dec c
    ld [bc], a
    dec b
    inc b
    nop
    dec b
    add b
    call nz, Call_000_0004
    dec b
    ld [bc], a
    inc bc
    inc b
    nop
    ld b, $0a
    inc b
    nop
    rlca
    dec de
    dec sp
    scf
    daa
    ld [hl], a
    rst RST_38
    cpl
    rra
    inc b
    ldh [$ff03], a
    inc b
    ret z

    ld [bc], a
    adc b
    inc b
    and b
    inc bc
    inc b
    or b
    inc bc
    dec e
    nop
    add b
    cp e
    rst RST_38
    nop
    nop
    ld bc, $010e
    nop
    ld [$8002], sp
    rst RST_30
    nop
    ldh [$ff1f], a
    ld bc, $ff02
    db $fc
    inc bc
    rra
    pop af
    nop
    rlca
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $fffc

jr_03b_53fa:
    ld a, a
    jr c, jr_03b_53fa

    jr c, jr_03b_541f

    inc b
    ld hl, sp+$00
    ldh [rSB], a
    ld bc, $ffe3
    db $e3
    inc bc
    inc bc
    nop
    ldh [rNR10], a
    ldh [rTAC], a
    rst RST_38
    rlca
    ld e, $1e
    ld a, b
    ld a, b
    ldh [$ffe0], a
    add b
    cp $4c
    nop
    nop
    nop
    rrca
    rrca

jr_03b_541f:
    db $fc
    db $fc
    nop
    rst RST_38
    nop
    ld b, b
    ldh [rLCDC], a
    ldh [$ff5f], a
    ldh [rSCX], a
    ld [hl], c
    rst RST_28
    ld e, $02
    ld h, h
    inc b
    nop
    nop
    rst RST_38
    scf
    ld [$0170], sp
    rst RST_18
    rra
    nop
    rra
    nop
    rlca
    ld a, c
    ld [bc], a
    nop
    rrca
    rst RST_38
    ldh [$ffe0], a
    ccf
    ccf
    nop
    nop
    ld c, $04
    rst RST_38
    ld c, $04
    db $fc
    ld b, $0c
    and $0f
    ret nz

    rst RST_38
    inc bc
    nop
    pop bc
    ret nz

    ld a, b
    ld a, b
    ld e, $1e
    cp a
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rlca
    nop
    inc bc
    add b
    cp $51
    nop
    sbc a
    sbc a
    rst RST_00
    rst RST_00
    ret nz

    ret nz

    ret nz

    rst RST_30
    ccf
    cp $01
    nop
    nop
    rra
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_28
    cp $ff
    ld hl, sp+$7f
    rra
    nop
    ld bc, $fffe
    push af
    ld a, a
    cp b
    nop
    ldh a, [$ff33]
    inc bc
    ccf
    call c, $30ff
    ld a, a
    rst RST_38
    ld hl, sp-$01
    add b
    rst RST_38
    rrca
    ldh a, [$ff08]
    nop
    rst RST_28
    adc a
    rrca
    inc e
    ldh [$ffe0], a
    rlca
    sbc h
    ld h, b
    sbc h
    rst RST_38
    ld h, b
    jr jr_03b_54c6

    ld [$0c08], sp
    db $10
    ld c, $3f
    db $10
    dec bc

jr_03b_54b0:
    jr nc, @+$0b

    ld [hl], b
    ld [$00fb], sp
    call nz, $f200
    ld bc, $3f11
    or [hl]
    nop
    add hl, bc
    ld [de], a
    ldh [rP1], a
    ret z

    jr nc, jr_03b_54b0

    ret


jr_03b_54c6:
    inc sp
    inc d
    ld de, $19c8
    ld [de], a
    nop
    inc bc
    nop
    xor a
    nop
    ld [$f808], sp
    ld h, $10
    ld l, b
    add hl, hl
    ld [de], a
    ld [bc], a
    ld [hl], a
    add e
    ld b, e
    dec a
    ld a, l
    ld bc, $4040
    rra
    ld a, [hl-]
    ld [de], a
    rst RST_38
    ldh [$ffe0], a
    ld hl, sp-$08
    ccf
    ccf
    add a
    ld c, a
    db $dd
    ld [$0008], sp
    ret nz

    nop
    ldh a, [$ff57]
    nop
    rst RST_08
    ld [hl], b
    rst RST_38
    push de
    ld l, d
    jp nz, $d865

    ld a, b
    rst RST_00
    ld h, a
    ccf
    ret nz

    ld h, b
    ret nz

    ld h, b
    adc [hl]
    cp $60
    dec de
    rra
    ld bc, $56cf
    xor c
    adc b
    ld d, h
    rra
    nop
    ld h, e
    ld [bc], a
    inc c
    ld b, $ff
    call c, $ac26
    ld d, [hl]
    inc c
    ld b, $7e
    ld [hl], h
    rst RST_38
    adc $c4
    inc c
    ld b, $0c
    ld b, $0f
    rrca
    cp a
    ld a, $3e
    ld hl, sp-$08
    ldh [$ffe0], a
    ld [$0403], sp
    rst RST_38
    nop
    rst RST_18
    call c, $a0ff
    rst RST_38
    rrca
    ld hl, sp-$03
    ld a, b
    ld c, a
    nop
    nop
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    db $fc
    rst RST_00
    db $fc
    db $fd
    db $fd
    cp b
    nop
    or h
    ld d, $08
    nop
    ld [bc], a
    ld h, b
    rst RST_38
    ld [bc], a

Call_03b_5555:
    ldh [rSC], a
    ret nz

    ld b, $c8
    ld b, $c0
    rst RST_20
    ld c, $c0
    ld b, $00
    inc d
    pop de
    ld d, $bc
    ld b, b
    cp [hl]
    ld h, [hl]
    pop hl
    ld [de], a
    cp a
    ld b, b
    nop
    inc bc
    db $fc
    ld bc, $f008
    db $fc
    nop
    ld a, l
    pop af
    ld hl, sp+$10
    di
    ld [$ff73], sp
    rlca
    nop
    dec hl
    ld sp, hl
    ldh [rWX], a
    db $10
    ld [de], a
    add hl, hl
    ld c, b
    ld hl, sp+$48
    ld hl, sp+$4c
    ei
    db $fc
    inc c
    dec h
    inc h
    dec c
    db $fd
    rra
    rra
    dec e
    sbc $31
    ld [hl+], a
    inc a
    ccf
    db $fc
    rst RST_38
    ld a, [hl-]
    ld hl, $0010
    ldh [c], a
    ld b, b
    ld h, $20
    ld c, d
    ld hl, $0158
    ld d, b
    dec h
    ld e, a
    ldh [$ffc3], a
    ld a, a
    ld l, a
    db $fc
    inc bc
    jr c, @+$09

    db $10
    rrca
    ld h, h
    inc hl
    ld h, h
    ld l, h
    ld bc, $114a
    ld b, b
    ld [hl], e
    inc h
    ld l, h
    ld bc, $060c
    adc b
    ld bc, $8836
    ld bc, $060c
    adc h
    ld bc, $13e7
    sub b
    dec hl
    ld d, b
    dec l
    sbc e
    rst RST_08

jr_03b_55d3:
    jp nz, $21b0

    rst RST_18
    ret nc

    ret z

    nop
    cp c
    ld hl, $fb70
    ret nz

    ld b, $c0
    jr z, jr_03b_55f1

    ret nz

    ld c, $bf
    ld a, a
    cp $d0
    dec hl
    ccf
    add b
    ld e, [hl]
    pop bc
    rst RST_28
    ldh [$fff3], a

jr_03b_55f1:
    rst RST_38
    ldh a, [$ff79]
    ld a, c
    cp h
    inc a
    rst RST_38
    inc e
    ld l, a
    rst RST_18
    ld c, $b1
    ld c, [hl]
    ccf
    ret nz

    nop
    ld [bc], a
    add b
    rst RST_38
    ld a, a
    add sp, $7f
    scf
    cp a
    ld c, $fb
    rst RST_38
    nop
    ld sp, $b4b6
    rla
    adc b
    di
    db $10
    dec sp
    rrca
    ld [hl], a
    jr nz, jr_03b_5649

    rst RST_30
    rst RST_38
    rrca
    ld [hl], a
    ld c, $f7
    ld c, $f7
    inc c
    rst RST_30
    ld h, a
    inc c
    ld [hl], a
    ld hl, sp-$2c
    nop
    jr nc, @+$35

    ld sp, hl
    cp $b9
    ld hl, $4a06
    jr nz, jr_03b_55d3

    db $10
    ld b, c
    nop
    ld b, h
    dec [hl]
    ld e, h
    ld de, $115c
    ld d, b
    dec h
    rlca
    db $10
    rrca
    jr nc, jr_03b_56a4

    ld [hl], $64
    ld hl, $2574
    ld [hl], h

jr_03b_5649:
    dec h
    adc b
    ld hl, $801e
    daa
    ld c, $04
    inc b
    db $10
    sub b
    dec sp
    ld h, h
    dec h
    ld l, b
    dec h
    db $f4
    cp b
    inc h
    cp c
    ld hl, $3bf8
    ld hl, $0ec0
    ldh [$ff0e], a
    sub l
    ldh [$ffc1], a
    jr z, @+$09

    jr nz, jr_03b_567c

    inc bc
    dec de
    inc bc
    ld [$3302], sp
    ld a, a
    ld [bc], a
    dec e
    nop
    rlca
    add b
    ld bc, $4de0
    db $10

jr_03b_567c:
    db $fd
    ldh a, [$ff36]
    nop
    ld hl, sp-$05
    dec bc
    ld a, a
    add h
    ld a, a
    rst RST_38
    ld [bc], a
    push de
    ld l, $07
    ld [bc], a
    inc bc
    ld bc, $1f03
    ld b, $05
    rlca
    rst RST_38
    rrca
    nop
    ld b, h
    add hl, bc
    inc d
    db $10
    inc sp
    dec c
    ret z

    dec d
    ld b, b
    ret c

    db $e3
    ld a, [de]
    ld b, c
    inc bc

jr_03b_56a4:
    ld c, d
    or [hl]
    nop
    or c
    scf
    inc d
    cp c
    inc hl
    ld b, h
    dec [hl]
    inc d
    ld b, a
    ld b, b
    ld d, $4b
    ld b, b
    ld e, b
    ld bc, $36d7
    call c, RST_08
    ld h, h
    dec h
    jr nc, jr_03b_56ce

    ld [hl], b
    ld l, c
    ld b, d
    inc b
    inc b
    rst RST_38
    ld b, h
    ld b, h
    ld h, h
    ld h, h
    ld h, h
    inc h
    ld [hl], h
    inc [hl]
    sbc a

jr_03b_56ce:
    ld [hl], h
    inc d
    db $e4
    add h
    inc [hl]
    add e
    ld [hl+], a
    ld d, h
    ld b, a
    ld b, b
    ld [hl], a
    nop
    ld a, a
    cp $90
    ld c, e
    ld b, b
    nop
    ld h, b
    and c
    ld b, [hl]
    ret nc

    xor h
    ld [hl-], a
    ld a, [hl-]
    inc hl
    or c
    ld b, [hl]
    ret nz

    ld [hl+], a
    ld [bc], a
    call nz, $9f47
    ld a, a
    sbc $d0
    ld c, e
    ld sp, hl
    ld b, $e3
    inc e
    add hl, hl
    nop
    nop
    ld sp, hl
    rst RST_38
    ld bc, $07f7
    rst RST_08
    ld c, a
    cp [hl]
    xor a
    cp h
    rst RST_38
    db $10
    jr nc, @+$3a

    ld h, b
    ld [hl], b
    ldh [$fff0], a
    ret nz

    rst RST_30
    ldh [$ff80], a
    ret nz

    dec c
    nop
    nop
    rst RST_08
    rrca
    rst RST_08
    or a
    rrca
    rst RST_18
    rra
    inc b
    ld d, a
    ld sp, hl
    ld [bc], a
    db $10
    ld d, c
    ld a, [$ece4]
    ld sp, $104d
    ldh [rNR33], a
    ld d, b
    xor b
    ld de, $0202
    rrca
    rst RST_38
    ld c, $1f
    inc e
    ld a, $3d
    ld a, h
    ld a, d
    ld a, [bc]
    ld l, a
    jr nz, jr_03b_577b

    ccf
    ld a, a
    push bc
    ld bc, $4040
    xor b
    ld de, $00ff
    add d
    nop
    ldh [$ffc0], a
    add sp, -$20
    ld hl, sp-$01
    ld a, [$7ffe]
    ccf
    ld e, a
    rlca
    rra
    inc bc
    db $eb
    dec b
    inc a
    ld d, b
    ld d, b
    inc e
    ld d, h
    ld d, b
    inc c
    inc c
    inc c
    ld a, a
    adc h
    add h
    call nz, $e0c0
    inc a
    inc bc
    ld h, b
    ld e, e
    rst RST_18
    ld [hl], h
    inc b
    ld [hl], h
    inc b
    inc [hl]
    ld [hl], c
    ld d, b
    ld [hl], h
    inc b
    rst RST_30
    inc h
    inc b
    inc a
    ld a, e
    ld d, b

jr_03b_577b:
    jp nz, $c202

    ld [bc], a
    push af
    ret nz

    dec e
    ld d, c
    add b
    adc b
    ld d, d
    ret nz

    call nz, $c410
    rst RST_38
    ld de, $1741
    rlca
    rrca
    rrca
    rra
    dec de
    ld a, a
    dec sp
    inc de
    ld d, b
    inc [hl]
    or b
    rlca
    ld a, b
    push bc
    ld bc, $b8f6
    nop
    ret nz

    ret nz

    ld [$c003], sp
    ldh [$fff0], a
    ld hl, sp-$05
    db $fc
    cp $b8
    nop
    ld a, a
    rra
    rra
    rrca
    rrca
    rst RST_28
    rlca
    jr nz, jr_03b_57b8

    nop
    pop bc

jr_03b_57b8:
    ld d, e
    add b
    add b
    ret nz

    rst RST_28
    ret nz

    ldh [$ffe0], a
    ldh a, [$ff80]
    dec l
    reti


    ld e, d
    rst RST_20
    rst RST_38
    ld a, h
    db $db
    ld hl, sp+$2b
    ldh a, [c]
    cp a
    db $fc
    ld h, e
    ld a, a
    ld a, [$fc5d]
    dec l
    db $fd
    rst RST_38
    ldh a, [c]
    cp b
    ld hl, $fbfb
    db $f4
    or $51
    di
    db $ec
    db $e3
    db $fc
    rst RST_18
    rst RST_30
    ld e, $df
    inc e
    ld [bc], a
    ld h, h
    jr @+$01

    jr c, @+$01

    db $fd
    jr nc, jr_03b_5800

    ld hl, $0ccc
    adc h
    ld c, $90
    jr @+$01

    db $10
    ld de, $3121
    ld hl, $7c21
    ld a, b

jr_03b_5800:
    ld a, a
    ld hl, sp-$10
    ld [hl], b
    ldh [$ff60], a
    ret nz

    ret nz

    ld c, h
    inc bc
    rst RST_28
    nop
    sbc a
    ld a, a
    rrca
    ld sp, $8f64
    rst RST_38
    rlca
    rst RST_20
    ld [hl], a
    rlca
    ld [hl], a
    jp nz, Jump_000_0850

    inc bc
    inc c
    nop
    ld e, $ff
    ld de, $4b06
    jr nz, @-$3e

    ret nc

    ld h, b
    ld [hl], b
    rst RST_38
    jr nc, jr_03b_5863

    ld [hl], b
    ld a, b
    ld a, b
    inc a
    jr c, @+$1e

    xor a
    ld e, $1c
    sbc h
    ld c, [hl]
    ld h, b
    ld d, l
    inc e
    ld h, a
    ld h, b
    inc c
    sub $6b
    ld h, b
    ld a, h
    inc b
    ld [hl], b
    ld h, a
    ld c, h
    ld a, e
    ld h, b
    ret nz

    pop bc
    rst RST_38
    ret nz

    ret nz

    pop bc
    jp $c3c1


    jp $ffc7


    ld b, e
    ld b, a
    rlca
    rrca
    ld c, $07
    ld hl, sp+$70
    cp $f7
    ld b, c
    add b
    add b
    pop bc
    add b
    ld [bc], a
    add b

jr_03b_5863:
    dec d
    ei
    nop
    dec hl
    ld h, h
    inc b
    jr z, jr_03b_586b

jr_03b_586b:
    ld d, h
    nop
    xor d
    ld e, a
    nop
    ld a, a
    nop
    cp $01
    sbc e
    nop
    ld bc, $0207
    ld sp, hl
    jr nc, jr_03b_5899

    ld d, b
    inc e
    ld d, b
    ldh [$fff0], a
    ldh a, [$fff8]
    ld hl, sp-$01
    db $fc
    db $fc
    ld a, h
    ld a, h
    ld a, $7c
    ld a, $3e
    ld a, a
    ld e, $3e
    rra
    sbc a
    ld a, a
    rra
    ccf
    jp nc, $ce60

    ld a, [hl-]

jr_03b_5899:
    db $10
    rst RST_08
    rst RST_08
    ld h, a
    call c, Call_03b_6060
    ld e, l
    db $e3
    db $fc
    db $fd
    jp Jump_03b_6af1


    rst RST_38
    add hl, sp
    cp $3e
    cp $3e
    rst RST_38
    db $fc
    inc a
    db $fc
    dec a
    db $fc
    dec a
    ld sp, hl
    jr c, @+$01

    pop af
    jr nc, jr_03b_591d

    ld h, d
    ld b, d
    ld h, d
    ld c, [hl]
    ld b, [hl]
    rst RST_28
    adc $cc
    call c, $188c
    ld [hl], b
    ret z

    db $fc
    ret z

    add sp, -$17
    ld sp, $531c
    ld h, $73
    ld [bc], a
    dec de
    nop
    db $10
    inc bc
    jr z, @+$01

    inc bc
    add h
    ld sp, $3847
    pop af
    inc c
    or c
    rst RST_38
    ld c, $84
    dec sp
    ld b, d
    dec e
    or d
    dec c
    ld [hl], e
    rst RST_38
    adc h
    add hl, sp
    add $18
    rst RST_20
    sbc h
    ld h, e
    adc b
    rst RST_38
    ld [hl], a
    ld e, $ce
    rrca
    add $0e
    add $07
    rst RST_38
    rst RST_20
    add a
    ld [hl], e
    rlca
    db $e3
    rlca
    db $e3
    inc bc
    cp c
    or e
    ld l, h
    ld h, c
    ld h, b
    halt
    add e
    adc h
    add e
    jr nc, jr_03b_5943

    ld a, [$01fe]
    ld [hl-], a
    ei
    rst RST_38
    rra
    ld c, $1c
    ld c, $0d
    rst RST_38
    ld e, $1f
    inc e

jr_03b_591d:
    dec de
    inc a
    dec sp
    inc a
    ccf
    rst RST_28
    jr c, jr_03b_595b

    ld a, b
    ld a, a
    xor e
    ld h, b
    rst RST_38
    nop
    ei
    cp a
    inc b
    ldh a, [rIF]
    pop hl
    ld e, $c3
    ld h, b
    ld d, b
    db $fc
    rst RST_30
    inc bc
    ld hl, sp+$07
    and d
    ld [hl], c
    ldh a, [rIF]
    ldh [$ff1f], a
    rst RST_38
    db $e3
    inc e

jr_03b_5943:
    db $e3
    inc e
    inc c
    ldh [$ff38], a
    ret nz

    ld e, a
    ld a, d
    add b
    cp $00
    db $fd
    ld bc, $fe00
    ld bc, $f300
    ld e, $0f
    cp h
    ld d, b
    cp l
    ld d, b

jr_03b_595b:
    rrca
    rlca
    rlca
    rlca
    rst RST_38
    add a
    inc bc
    rlca
    inc bc
    ld b, b
    nop
    jr nz, jr_03b_5988

    rst RST_38
    ldh a, [$ffb0]
    or b
    or b
    ldh a, [$ffb0]
    ld hl, sp-$28
    ld a, [hl]
    db $db
    ld [hl], b
    ld hl, sp+$7c
    inc bc
    ld a, h
    inc bc
    db $fc
    db $e3
    ld a, b
    ei
    ld e, b
    jr @-$0e

    ld [hl], c
    ld e, h
    inc e
    ld e, h
    inc e
    ld d, h
    rra
    inc d

jr_03b_5988:
    ld d, b
    db $10
    ld d, b
    db $10
    ld de, $0a80
    ld d, a
    pop af
    or c
    di
    di
    ldh a, [c]
    ldh [c], a
    ldh [c], a
    ldh a, [c]
    cp b
    cp b
    jr nc, @+$2a

    jr z, jr_03b_59b6

    jr c, jr_03b_5a18

    ld bc, $0100
    nop
    ld bc, $0102
    nop
    add hl, sp
    sbc c
    sbc c
    xor l
    pop hl
    ldh [$ffea], a
    ld b, [hl]
    sbc b
    ret nz

    ret nz

    ld a, [bc]
    ld b, b
    ld [bc], a

jr_03b_59b6:
    ld d, h
    ld b, h
    ld a, [bc]
    inc bc
    inc bc
    ld a, [bc]
    ld bc, $0a03
    adc h
    inc b
    ld a, [bc]
    call z, $0a02
    ei
    inc bc
    dec de
    ld a, [bc]
    inc bc
    ld [bc], a
    ld [hl], b

jr_03b_59cc:
    ld [hl], b
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh [$ffe4], a
    rlca
    rlca
    ld a, [bc]
    rrca
    ld [bc], a
    ld a, [bc]
    rra
    ld [bc], a
    jp Jump_000_0ac7


    rst RST_08
    ld [bc], a
    adc a
    rst RST_28
    rst RST_38
    cp $f7
    db $e3
    adc h
    inc c
    inc e
    jr @+$1a

    add a
    jp Jump_03b_4383


    add e
    ld b, e
    add e
    jp $f8f8


    ret nz

    ret nz

    ret


    jp hl


    adc l
    dec c
    ld [hl], c
    ld [hl], c
    jr nc, jr_03b_5a6f

    ld [hl], b
    jr nz, @+$3a

    jr c, jr_03b_59cc

    db $e4
    rst RST_38
    rst RST_38
    rst RST_30
    ld d, e
    dec de
    rrca
    ldh a, [c]
    ld a, [bc]
    ldh [c], a
    inc b
    db $e3
    di
    ld a, b
    ld hl, sp-$20
    ldh [$ffc8], a
    adc b
    adc b

jr_03b_5a18:
    ld [$0b01], sp
    rlca
    rrca
    rlca
    rra
    cpl
    rrca
    rlca
    rrca
    ld b, c
    ret nz

    ld hl, sp-$04
    cp $fa
    db $e4
    push bc
    push af
    rst RST_20
    sub $c7
    jp Jump_000_0ac2


    pop bc
    inc bc
    pop hl
    ldh [$ff80], a
    ld b, b
    ld a, [bc]
    call z, $0a07
    ld bc, $0a04
    inc bc
    ld [bc], a
    ld a, [bc]
    db $e4
    ld [bc], a
    xor $e2
    xor $e6
    ld b, [hl]
    sbc a
    sbc a
    ld a, a
    db $fd
    sbc c
    db $10
    halt
    ld a, [hl]
    rst RST_38
    cp $fa
    di
    di
    rst RST_20
    rst RST_30
    rst RST_30
    db $10
    ld b, c
    add c
    pop bc
    pop bc
    db $e3
    inc sp
    dec de
    add d
    jp nz, $c382

    add e
    jp $83c3


    dec c
    adc l
    db $ec
    db $e4
    push hl
    ld a, [bc]

jr_03b_5a6f:
    pop hl
    ld [bc], a
    ld a, [bc]
    ld a, b
    dec b
    ld c, b
    ld c, b
    rlca
    add c
    and l
    and h
    and [hl]
    and l
    and h
    and l
    ld a, [bc]

jr_03b_5a7f:
    di
    inc b
    ld a, [bc]
    ld hl, sp+$02
    ld [$7818], sp
    ld a, b
    ld [hl], h
    inc [hl]
    db $10
    inc [hl]
    cpl
    rrca
    rlca
    rra
    rlca
    dec bc
    inc bc
    inc c
    ldh [$ffc8], a
    add b
    ldh [$ffe1], a
    pop af
    ei
    di
    nop
    jr nz, jr_03b_5a7f

    ldh [$fff1], a
    pop hl
    pop hl
    db $e3
    sub $f6
    and $e2
    db $e4
    push bc
    push bc
    adc l
    call z, $dcdc
    ld a, [bc]
    sbc h
    inc b
    ld a, [bc]
    inc bc
    ld [bc], a
    inc de
    inc de
    rla
    rla
    ld e, a
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ccf
    ld [hl], $16
    ld b, d
    ld e, a
    ld a, $3f
    ld h, a
    ld a, [$395b]
    add hl, sp
    ccf
    ld a, [bc]
    rst RST_38
    inc bc
    ld h, a
    ld a, [bc]
    rst RST_38
    ld [bc], a
    ld e, e
    ld a, d
    ld hl, sp-$27
    add hl, de
    ld a, [bc]
    pop af
    ld [bc], a
    jp Jump_000_0383


    ld b, b
    ld b, $c7
    add a
    rst RST_00
    pop bc
    pop bc
    pop hl
    pop hl
    pop af
    pop de
    pop bc
    adc c
    ccf
    sbc a
    rra
    ld a, [bc]
    rst RST_38
    ld b, $fe
    db $fd
    pop af
    db $e3
    rst RST_00
    adc a
    ld hl, sp+$0a
    db $fc
    ld [bc], a
    call c, $9cdc
    inc e
    inc [hl]
    ld a, [hl-]
    jr c, @+$1d

    dec e
    inc c
    ld b, $06
    inc bc
    rlca
    inc bc
    inc bc
    inc b
    add d
    pop af
    ld a, a
    rst RST_30
    add a
    rrca
    rrca
    ld a, $fc
    db $fc
    sub b
    db $db
    sbc e
    cp [hl]
    ccf
    cpl
    rra
    ld e, $34
    dec e
    ld [hl], c
    jp $e6e7


    and [hl]
    inc c
    ld a, [bc]
    inc e
    ld b, $3c
    inc a
    ld a, [bc]
    rst RST_18
    ld b, $ff
    ld a, e
    ld b, e
    ld a, a
    ld a, h
    ld a, h
    ld a, a
    ld [$1f39], a
    sbc a
    adc a
    jp $61c1


    dec [hl]
    add hl, de
    ld a, [bc]
    rst RST_38
    ld [bc], a
    ld a, a
    rrca
    and c
    db $fd
    ld a, a
    pop af
    pop af
    jp hl


    call z, $ccd8
    ret z

    ret nz

    rst RST_00
    ld a, [bc]
    adc a
    ld [bc], a
    rra
    rra
    ld a, $7c
    sbc e
    sbc e
    or e
    inc sp
    ld [hl], e
    ld h, e
    jp $eac3


    ld sp, hl
    ld a, h
    sub a
    or h
    ld l, e
    ld d, b
    push hl
    ld a, $f8
    ld h, b
    ld a, [bc]
    nop
    ld [bc], a
    add b
    nop
    db $fd
    ei
    di
    db $e3
    ldh [$ffc0], a
    add b
    nop
    pop bc
    add c
    ld a, [bc]
    ld bc, $0a02
    inc bc
    ld [bc], a
    nop
    nop
    ld h, b
    ld b, b
    ldh [$ffe0], a
    ld h, b
    ld h, b
    ld a, [bc]
    inc bc
    ld [bc], a
    inc de
    inc de
    rla
    rla
    ld e, a
    ld h, a
    ld b, a
    ld b, a
    rlca
    rlca
    ld a, [bc]
    rrca
    ld [bc], a
    ld a, [bc]
    rra
    rlca
    ld a, [bc]
    cp $05
    rst RST_38
    rst RST_38
    ld a, [bc]
    rra
    inc bc
    ld e, a
    ld e, a
    ld a, a
    ld a, a
    cp $f6
    halt
    halt
    ld a, [bc]
    ld h, [hl]
    ld [bc], a
    ld h, a
    rra
    rra
    ld a, [bc]
    sbc a
    inc bc
    rst RST_18
    rst RST_18
    ld a, [bc]
    rra
    rlca
    ld a, [bc]
    ld a, a
    rlca
    inc b
    ld b, h
    ld h, h
    ld h, h
    ld [hl], h
    ld [hl], h
    db $e4
    inc [hl]
    ld a, [bc]
    ld b, h
    inc b
    ld a, [bc]
    inc b
    ld [bc], a
    ld b, e
    ld b, e
    ld b, a
    ld b, a
    rlca
    rlca
    daa
    daa
    ld a, [bc]
    rst RST_38
    ld [bc], a
    pop af
    pop af
    ld a, [bc]
    ldh a, [rSC]
    ld a, [bc]
    db $fc
    ld [bc], a
    ld a, [bc]
    cp $03
    db $fc
    ld a, [bc]
    rra
    dec b
    ld a, [bc]
    ccf
    add hl, bc
    ld a, [bc]
    rra
    rlca
    ld a, [bc]
    cp $07
    db $fc
    db $fc
    cp $fc
    ld a, [bc]
    cp $03
    adc a
    adc a
    adc [hl]
    adc [hl]
    ld a, [bc]
    sbc a
    ld [bc], a
    cp a

jr_03b_5bf9:
    ld [hl-], a
    ld [hl], d
    jr nc, jr_03b_5c2d

    ld sp, $2121
    ld sp, $9898
    jr nc, @+$62

    jr nz, jr_03b_5c17

    jr nc, jr_03b_5bf9

    ld a, [bc]
    nop
    rlca
    add $66
    ld h, [hl]
    ld d, d
    sbc [hl]
    rra
    dec d
    add hl, de
    ld h, a
    ccf
    ccf

jr_03b_5c17:
    cp a
    cp a
    cp l
    xor l
    cp h
    sub c
    sub c
    sbc c
    reti


    reti


    ret


    ret z

    ret z

    ld a, [bc]
    add e
    inc b
    ld a, [bc]
    jp $0a02


    ld hl, sp+$02

jr_03b_5c2d:
    db $fc
    inc e
    inc b
    inc c
    inc c
    jr c, @+$3a

    ld a, [bc]
    jr nc, jr_03b_5c39

    ld a, [bc]
    ld [hl], b

jr_03b_5c39:
    ld [bc], a
    ld a, b
    ld a, b
    ld a, [bc]
    ld [hl], b
    ld [bc], a
    ld h, b
    ld h, b
    jr nz, @+$3e

    jr c, jr_03b_5c4f

    jr nc, @+$04

    ld [hl], b
    stop
    nop
    ld [$721c], sp
    di

jr_03b_5c4f:
    ld a, [bc]
    db $e3
    ld [bc], a
    ld a, [bc]
    inc bc
    ld [bc], a
    ld a, [bc]
    ld bc, $0a04
    ret nc

    ld [bc], a
    ret nz

    ldh [$ffe8], a
    db $fc
    db $e4
    inc bc
    inc bc
    nop
    ld bc, $000a
    inc bc
    scf
    sbc e
    ret nz

    ld [hl], b
    ldh a, [$ff50]
    dec sp
    rra
    ld sp, $210a
    inc b
    jr nz, jr_03b_5ca5

    ld a, [bc]
    ldh a, [$ff03]
    ret nc

    ld a, [bc]
    add b
    ld [bc], a
    ld a, [bc]
    nop
    ld b, $10
    jr c, jr_03b_5cf2

    cp [hl]
    ccf
    rlca
    inc bc
    ld bc, $1c05
    inc a
    inc c
    ld a, [de]
    ld l, $39
    inc a
    ld de, $080a
    ld [bc], a
    add hl, bc
    add hl, bc
    ld [$be7e], sp
    jp $83c3


    add e
    ld a, [bc]
    inc bc
    inc bc
    ld c, $1e
    ld e, $3e
    ld a, $1c

jr_03b_5ca5:
    inc a
    inc a
    ld a, [bc]
    ld [hl], b
    dec b
    ld a, c
    ld e, c
    jr nz, jr_03b_5cce

    nop
    ld [bc], a
    ld b, $0f
    adc a
    adc a
    nop
    ld bc, $0c05
    inc c
    jr @+$0a

    inc c
    db $e3
    add d
    ld b, [hl]
    add [hl]
    add a
    inc b
    call nz, Call_000_0ae4
    ld bc, $0a02
    nop
    inc b
    db $e4
    ld h, b
    ld a, [bc]
    nop

jr_03b_5cce:
    dec c
    jr @+$18

    ld de, $1210
    inc de
    ld [de], a
    rla
    jr nc, jr_03b_5d09

    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld hl, $2021
    add b
    sub b
    ldh a, [$fff0]
    ld hl, sp-$10
    db $f4
    ldh a, [rNR10]
    nop
    ld [$0000], sp
    inc b
    inc b
    inc bc
    rra
    scf
    ld a, [hl]

jr_03b_5cf2:
    inc e
    inc e
    inc c
    inc b
    inc c
    ld b, a
    ld b, [hl]
    inc c
    ld c, $0e
    ld e, $1e
    inc e
    jr z, jr_03b_5d09

    jr jr_03b_5d1f

    jr jr_03b_5d3d

    jr c, jr_03b_5d77

    ld a, [bc]
    inc bc

jr_03b_5d09:
    rlca
    ld a, h
    inc a
    inc a
    inc l
    inc l
    jr z, jr_03b_5d39

    jr nz, @+$7a

    jr c, jr_03b_5d4d

    ld a, e
    ld a, e
    add hl, sp
    ld h, l
    ld a, b
    ld c, a
    cpl
    ld h, a
    rst RST_20
    rst RST_20

jr_03b_5d1f:
    rst RST_00
    rst RST_00
    jp $9c0c


    inc c
    inc b
    sbc [hl]
    sub d
    sbc e
    ret


    db $e4
    db $e4
    and $66
    and $6e
    ld a, [hl]
    ld a, $0a
    nop
    ld b, $02
    ld a, [bc]
    nop
    inc b

jr_03b_5d39:
    ret nz

    ret nz

    nop
    ret nz

jr_03b_5d3d:
    ld h, b
    ldh [$ff0a], a
    nop
    ld [bc], a
    dec b
    dec hl
    ld a, [bc]
    nop
    inc b
    ldh [rLCDC], a
    ret nz

    ld a, [bc]
    nop
    inc bc

jr_03b_5d4d:
    jr nz, jr_03b_5d6f

    ld h, b
    ldh [$fff0], a
    ld hl, sp+$7a
    ld a, b
    ld a, h
    inc a
    ld a, $1e
    ld a, [bc]
    nop
    inc bc
    ld bc, $0001
    add b
    ld [$f078], sp
    ldh a, [$ffc1]
    inc bc
    inc bc
    ld l, a
    inc h
    ld h, h
    ld b, c
    jp $e0d0


    pop hl

jr_03b_5d6f:
    set 4, b
    add b
    ld b, b
    ldh [$fff0], a
    ldh [$ffc0], a

jr_03b_5d77:
    add b
    ld a, [bc]
    inc bc
    rlca
    ld a, [bc]
    rst RST_38
    rlca
    ld e, h
    ld d, b
    ld l, h
    daa
    dec [hl]
    ld d, $8e
    rrca
    db $e3
    ld h, c
    ld [hl], c
    inc a
    ld a, $9e
    jp z, $cc66

    db $fc
    db $fc
    cp $fe
    ld e, [hl]
    ld [bc], a
    add b
    ld c, $0e
    ld d, $32
    inc h
    jr nc, jr_03b_5dd1

    jr nc, @+$08

    rlca
    rlca
    ld a, [bc]
    rrca
    ld [bc], a
    ld e, $3c
    nop
    add b
    add b
    add h
    inc b
    inc b
    inc c
    inc c
    ld a, [hl+]
    ld a, c
    db $fc
    ld sp, hl
    or h
    ld a, e
    ld [hl], b
    db $fd
    add c
    add h
    db $10
    ret nz

    ld b, b
    and d
    add [hl]
    and [hl]
    ld a, h
    ld a, h
    jr c, jr_03b_5df2

    ld [hl], b
    ldh [$ffc0], a
    add b
    ld c, $1e
    ld e, $3e
    ld a, $1c
    inc a
    inc a
    ld a, [bc]
    nop
    inc b

jr_03b_5dd1:
    ld [bc], a
    ld [bc], a
    ld b, $7c
    inc a
    inc a
    inc l
    inc l
    jr z, jr_03b_5e03

    jr nz, jr_03b_5dfc

    ccf
    ccf
    ld a, a
    ld a, a
    ld a, [bc]
    ld [hl], a
    ld [bc], a
    ld a, [bc]
    rst RST_38
    rlca
    ld a, [bc]
    rrca
    rlca
    ld a, [bc]
    db $fc
    rlca
    ld a, [bc]
    rra
    rlca
    ld a, [bc]
    rst RST_38

jr_03b_5df2:
    rlca
    ld a, [bc]
    ld hl, sp+$03
    ld a, [bc]
    db $fc
    dec bc
    inc b
    ld b, h
    ld h, h

jr_03b_5dfc:
    inc h
    inc [hl]
    inc d
    add h
    inc b
    ld a, [bc]
    db $10

jr_03b_5e03:
    rlca
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    jr c, jr_03b_5e42

    jr jr_03b_5e24

    ld a, [bc]
    ld e, $02
    ld a, [bc]
    nop
    inc b
    ld a, [bc]
    rlca
    ld [bc], a
    dec b
    rlca
    rlca
    rrca
    rrca
    ld a, [bc]
    rst RST_38
    rrca
    ld a, [bc]
    ld hl, sp+$07
    ld a, [bc]
    rra
    rlca
    ld a, [bc]

jr_03b_5e24:
    rrca
    rlca
    ld a, [bc]
    cp $07
    dec e
    nop
    add b
    set 7, a
    nop
    nop
    add hl, bc
    inc bc
    ld bc, $000a
    ld bc, $0037
    rst RST_30
    add b
    nop
    ret nz

    ld bc, $fb08
    nop
    dec b
    nop

jr_03b_5e42:
    rst RST_38
    nop
    nop
    db $fc
    nop
    rst RST_38
    sub d
    rst RST_38
    ld a, [de]
    rst RST_38
    rst RST_38
    push de
    rst RST_38
    dec hl
    ld a, a
    nop
    db $fd
    nop
    db $fd
    ld [bc], a
    inc sp
    nop
    ld hl, sp+$00
    rst RST_38
    ret nz

    rst RST_38
    ldh a, [$ffef]
    rst RST_38
    cp $ff
    inc bc
    ld l, $05
    rst RST_08
    nop
    rst RST_28
    cp $5b
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    ccf
    rst RST_38
    nop
    cp $8b
    nop
    ld bc, $0023
    rst RST_30
    ld l, e
    nop
    ld h, b
    nop
    ld [hl], b
    ld bc, $cf7f
    ld a, a
    rrca
    rrca
    inc bc
    inc [hl]
    ld [bc], a
    add b
    ld [$7f7f], sp
    db $dd
    inc bc
    ld d, c
    nop
    rst RST_38
    nop
    db $fc
    ld c, $00
    ld [hl], b
    rst RST_38
    rst RST_18
    ld hl, sp-$01
    ld e, a
    rst RST_38
    rrca
    add b
    ld b, $9f
    rst RST_38
    rst RST_38
    ld b, a
    rst RST_38
    db $e3
    rst RST_38
    ldh a, [$ff1f]
    ld hl, sp-$40
    ei
    ld hl, sp-$20
    or d
    ld [bc], a
    ldh a, [$ff7c]
    ldh [$fffc], a
    ret nz

    rst RST_38
    ld a, $c0
    rra
    ldh [$ffc3], a
    db $fc
    ld sp, hl
    cp $ff
    db $fc
    rst RST_38
    inc a
    rst RST_38
    db $db
    daa
    ld c, h
    inc bc
    rst RST_38
    daa
    nop
    and a
    ld e, a
    rst RST_20
    rra
    db $eb
    rla
    rst RST_38
    db $fc
    inc bc
    cpl
    ret nc

    jr nz, @+$01

    and $f7
    rst RST_38
    ld [bc], a
    rst RST_38
    ldh a, [$ff0e]
    ld [$f81f], a
    inc b
    cp a
    ld a, $01
    ld bc, $0401
    ld b, $33
    nop
    nop
    rst RST_38
    ld [hl+], a
    dec a
    adc a
    add hl, sp
    ld l, e
    inc e
    rst RST_38
    nop
    rst RST_18
    sub a
    ld [$019e], sp
    rrca
    inc sp
    ld [bc], a
    inc bc
    db $fc
    rst RST_38
    add b
    ld a, a
    ldh [$ff1f], a
    ld a, [$ff05]
    nop
    sbc l
    inc de
    ld b, a
    nop
    rra
    nop
    ldh [rSB], a
    db $10
    ld bc, $e103
    ei
    ld e, $1f
    add hl, bc
    inc b
    db $fc
    nop
    rrca
    ldh a, [rP1]
    rst RST_38
    rst RST_38
    db $fc
    inc bc
    ldh a, [rIF]
    rst RST_38
    daa
    rst RST_38
    rst RST_38
    ld b, $ff
    inc bc
    rra
    nop
    pop hl
    nop
    rra
    rst RST_10
    ldh [rTMA], a
    ld sp, hl
    ld a, a
    ld [$1307], sp
    ld de, $fa04
    rst RST_38
    rst RST_28
    ldh [$ffe3], a
    ldh [$ffe7], a
    pop hl
    ei
    pop af
    rst RST_38
    or $e0
    ld c, $c0
    inc c
    nop
    db $10
    and b
    rst RST_38
    push af
    dec b
    push af
    dec h
    db $e4
    inc b
    ldh [c], a
    jp nz, Jump_000_0cff

    ld [$7c3e], sp
    ld e, $3e
    ld bc, $ff1e
    rst RST_38
    nop
    db $f4
    db $e4
    jr nz, jr_03b_5f83

    rst RST_00
    ld b, a
    rst RST_38
    rst RST_30
    rst RST_30
    db $f4
    db $e4
    pop hl
    ret nz

    rlca
    rlca
    db $fd
    ldh a, [$ff0b]
    db $10
    ld [$cc08], sp
    add h
    ld bc, $fb01
    ccf
    rra
    ld [hl], b
    ld bc, $1f1f
    add b
    nop
    ld a, [bc]
    rst RST_18

jr_03b_5f83:
    nop
    ccf
    nop
    rst RST_38
    rla
    ld [hl], b
    inc bc
    db $dd
    xor d
    rst RST_28
    ld a, [hl]
    ld b, l
    inc bc
    ld [bc], a
    ld c, b
    nop
    nop
    rst RST_38
    and a
    cp $70
    ld [bc], a
    inc a
    rst RST_38
    inc e
    rst RST_38
    xor d
    rra
    db $10
    rst RST_38
    ldh [rP1], a
    rst RST_38
    add b
    rst RST_38
    ldh a, [c]
    rst RST_38
    cp $fe
    ld hl, $0301
    ldh [$ffa7], a
    ld b, b
    cpl
    ld [bc], a
    db $fd
    rst RST_38
    inc bc
    rst RST_20
    dec e
    jp $5f3d


    inc bc
    ld a, [$0fff]
    db $eb
    ccf
    and [hl]
    cp $49
    db $fc
    ldh a, [$ff5f]
    cp b
    di
    ld c, b
    cp a
    ld d, b
    add hl, hl
    db $10
    ldh a, [rSVBK]
    inc b
    jp hl


    rrca
    jr z, jr_03b_5fe4

    db $fc
    ld bc, $e000
    rla
    ld a, a
    adc a
    rst RST_38
    ld [de], a
    xor $10
    ld bc, $01ec
    inc sp
    nop

jr_03b_5fe4:
    ret nz

    ld h, l
    nop
    cp b
    db $10
    ld bc, $7900
    ld a, a
    rrca
    db $10
    inc b
    inc hl
    db $e4
    ccf
    inc bc
    inc bc
    and [hl]
    ld [de], a

jr_03b_5ff7:
    db $fc
    dec d
    jr nz, jr_03b_5ff7

    ld bc, $fc47
    db $fc
    cp l

jr_03b_6000:
    jr jr_03b_601d

    db $fd
    db $e4
    ld bc, $7f04
    nop
    cp $16
    cp $de
    ld e, a
    ld a, l
    ld a, h
    cp $fc
    nop
    and l
    db $10
    db $fc
    ld b, a
    nop
    rst RST_38
    nop
    ccf
    rra
    rra
    ld c, a

jr_03b_601d:
    ld c, a
    or $f7
    rst RST_38
    ld a, [$fbfa]
    ld a, e
    ld sp, hl
    add hl, de
    sbc h
    nop
    rst RST_38
    inc bc
    inc bc
    db $fc
    db $fc
    rst RST_38
    inc bc
    ccf
    nop
    rst RST_38
    ld e, a
    ld b, b
    cp a
    nop
    rst RST_38
    inc bc
    ld sp, hl
    rst RST_10
    cp a
    rst RST_38
    ldh [$ff1f], a
    rra
    ldh [$ffe0], a
    ld h, d
    nop
    dec b
    cp a
    rst RST_38
    ld [bc], a
    rst RST_38
    add b
    inc bc
    cp $e8
    ld de, $39ff
    ld bc, $1124
    nop
    nop
    ld e, b
    rst RST_38
    inc c
    ld [hl], b
    inc b
    rrca
    ld de, $e1af
    db $f4
    ei

Call_03b_6060:
    ret nz

    add b
    ld b, $82
    nop
    nop
    db $10
    db $eb
    rst RST_38
    ld l, c
    ld h, b
    nop
    db $fc
    ld c, h
    nop
    ld h, b
    rst RST_38
    ld bc, $fffb
    ld c, e
    ld a, b
    jr nz, jr_03b_6098

    rst RST_38
    push de
    cp $8c
    xor [hl]
    xor e
    jr nz, jr_03b_6000

    rst RST_38
    call nc, RST_00
    and [hl]
    nop
    nop
    ccf
    adc $bf
    nop
    rrca
    ld a, [$9d1f]
    nop
    sub $21
    rlca
    rst RST_38
    rst RST_38
    ldh a, [rP1]
    di

jr_03b_6098:
    nop
    rst RST_30
    ret nz

    rst RST_38
    add h
    rst RST_38
    rst RST_38
    and e
    rst RST_38
    rlca
    cp $aa
    db $fc
    ld e, h
    ld a, [$11ec]
    add b

jr_03b_60aa:
    ld de, $fc10
    nop
    add b
    add b
    ld a, d
    ccf
    jr nz, jr_03b_60aa

    ldh a, [c]
    ld bc, $f8fe
    ld c, [hl]
    nop
    ld [hl], b
    ld bc, $03ef
    rst RST_38
    and b
    rra
    ld l, b
    ld bc, $8070
    ld a, $6f
    ret nz

    jp $f8fc


    sub h
    ld hl, $bfff
    dec b
    inc h
    db $fd
    ld hl, sp+$27
    db $10
    rst RST_38
    cp $3f
    rst RST_38
    ret nz

    ccf
    ld hl, sp+$7b
    nop
    dec b
    inc h
    add hl, hl
    db $10
    add b
    ccf
    ret nz

    db $fc
    nop
    cp c
    inc c
    ld sp, $f236
    ld de, $00be
    sbc [hl]
    ld d, c
    jr nc, jr_03b_60f7

    sbc $31
    ld [hl], $fe

jr_03b_60f7:
    ld a, a
    rst RST_38
    ld a, a
    ld h, d
    nop
    rrca
    ccf
    ld a, [$2403]
    inc b
    push hl
    inc d
    rst RST_38
    inc b
    rst RST_38
    nop
    call z, Call_000_00ff
    stop
    ccf
    rst RST_38
    jp $fdff


    sbc $7f
    ld hl, $fff9
    nop
    ld b, $ee
    db $10
    pop de
    xor $fd
    rst RST_00
    ld c, b
    nop
    call c, Call_03b_7f23
    pop bc
    cp $c1
    rst RST_38
    cp a
    and c
    jp $0602


    rst RST_38
    sbc [hl]
    ld l, l
    rst RST_38
    ld c, h
    cp a
    dec d
    rst RST_38
    jp c, $f7a5

    ld a, [de]
    rst RST_38
    ld d, d
    xor l
    scf
    ret z

    inc de
    rst RST_38
    dec h
    rst RST_38
    rst RST_38
    adc h
    rst RST_38
    xor d
    rst RST_38
    dec l
    cp $33
    rst RST_38
    ld [hl], a
    ld l, l
    sbc e
    ld [$006e], sp
    adc d
    ld a, a
    ld b, $3a
    nop
    rst RST_38
    sub [hl]
    ld sp, hl
    or e
    call z, $b24f
    or d
    ld l, l
    rst RST_38
    add e
    rst RST_38
    ld de, $40ff
    db $fd
    jr nz, @-$02

    rst RST_38
    ld b, c
    cp $29
    sub $f1
    ld c, $fc
    inc bc
    rst RST_38

jr_03b_6172:
    di
    ldh a, [c]
    rlca
    inc bc
    rst RST_38
    rst RST_08
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, $3e
    pop bc
    nop
    rst RST_30
    db $e3
    rst RST_28
    rst RST_28
    rst RST_38
    or $f6
    xor $e6
    add sp, -$18
    add $c6
    rst RST_38
    dec e
    inc c
    sbc l
    adc l
    db $db
    reti


    db $db
    db $db
    ld [hl], l
    nop
    ld hl, $4400
    ld bc, $fd00
    ld [bc], a
    ccf
    inc h
    nop
    rst RST_18
    db $fc
    rst RST_38
    ld b, $00
    inc e
    sub c
    ld [bc], a
    jr c, jr_03b_6172

    ret c

    ld l, $30
    ld h, d
    ld sp, $0033
    sbc b
    ld h, c
    ld e, a
    inc bc
    rst RST_38
    rst RST_38
    rst RST_38
    and $f9
    sbc a
    ld l, h
    sbc a
    ld h, a
    rra
    ldh [$ffea], a
    ld [hl], b

Jump_03b_61c3:
    ld bc, $00fe
    nop
    ld [hl], b
    rst RST_38
    db $10
    rst RST_38
    add b
    add a
    rst RST_38
    jr @-$0d

    adc $f8
    rst RST_30
    ld [hl], l
    rst RST_28
    rlca
    rst RST_28
    rst RST_38
    or c
    adc $80
    ld bc, $e100
    ld e, $f8
    xor a
    rlca
    ld c, [hl]
    pop af
    di
    jp $ff00


    inc sp
    nop
    jp Jump_000_01ee


    ld [bc], a
    ld l, e
    sbc a
    ld [hl], $89

jr_03b_61f2:
    jr nc, jr_03b_61f2

    ld bc, $ff06
    nop
    ld b, d
    nop
    pop hl
    ld [bc], a
    rst RST_38
    nop
    cp e
    ld a, a
    db $fc
    dec b
    cp $c2
    rst RST_38
    inc hl
    db $e3
    ldh a, [c]
    ld de, $f77f
    ld a, b
    rst RST_28
    rra
    db $fc
    inc bc
    db $fc
    ld d, c
    nop
    rst RST_38
    ccf
    ret nz

    ld [hl-], a
    dec c
    rst RST_18
    dec l
    ldh [c], a
    rra
    rst RST_38
    xor e
    call nc, $f7da
    ld a, h
    rst RST_38
    sub c
    ld a, [hl]
    rst RST_38
    swap h
    nop
    ret nz

    ldh a, [$ffbf]
    rst RST_28
    ld e, [hl]
    rst RST_38
    ld a, a
    ld a, [$cbbc]
    db $e3
    ld a, $ff
    rlca
    rst RST_38
    ld a, $c7
    ld h, a
    ld h, a
    ld hl, $a6a1
    or $ff
    cp $d0
    rst RST_08
    ld [hl], l
    add a
    rst RST_38
    ld sp, hl
    sub $ff
    ld a, a
    ei
    ld l, [hl]
    sub a
    ld d, l
    xor e
    rst RST_00
    jr c, @+$01

    add l
    ld h, d
    add [hl]
    pop bc
    ld l, c
    add [hl]
    sub b
    ld l, [hl]
    rst RST_38
    ld a, [hl+]
    push de
    ld sp, hl
    and [hl]
    ld a, [hl]
    ld a, l
    ret nz

    ld [bc], a
    rst RST_28
    cp $03
    ld a, l

jr_03b_6268:
    ld [bc], a
    db $fc
    ld bc, $f0e0
    ld a, [$01ff]
    ld a, e
    nop
    pop af
    nop
    ld a, c
    nop
    cp b
    rst RST_28
    nop
    xor h
    add b
    add a
    ld b, e
    nop
    dec c
    rst RST_38
    adc h
    rst RST_38
    ld a, a
    rst RST_00
    ld a, $f2
    rrca
    ld sp, hl
    ld b, $7c
    ld [$2065], a
    adc a
    ld l, a
    ld [bc], a
    ldh a, [rWY]
    nop
    adc b
    rst RST_38
    ld [hl], e
    cp a
    rst RST_38
    rst RST_38
    ldh [rIE], a
    add b
    ld sp, hl
    db $dd
    jr nz, jr_03b_62ad

    rst RST_38
    cp $1b
    db $fc
    cp $f1
    call $fff3
    cp $e1
    jr nz, @+$41

jr_03b_62ad:
    ret nz

    cp $01
    ldh a, [rIF]
    adc [hl]
    rst RST_18
    ld a, a
    ld [hl], e
    db $fc
    rst RST_00
    ld hl, sp+$2e
    nop
    rlca
    push af
    rst RST_18
    rra
    ld a, a
    cp $9f
    ldh [$ff64], a
    nop
    inc b
    cp $7f

jr_03b_62c8:
    inc c
    sbc l
    ld a, b
    ei

jr_03b_62cc:
    ldh a, [$fff7]
    adc $6c
    ld b, c
    ld [hl], a
    rst RST_20
    rra
    ccf
    adc e
    jr nc, jr_03b_62c8

    nop
    add e
    ld bc, $9d02
    ld bc, $0060
    jp Jump_000_083f


    rrca
    db $10
    inc d
    jr nz, jr_03b_6268

    ld e, a
    adc a
    ld [hl], b
    ldh a, [rIE]
    rst RST_28
    ld h, b
    nop

jr_03b_62f0:
    ld c, [hl]
    ld h, e
    nop
    rst RST_28
    ld h, [hl]
    nop
    and b
    ld b, b
    ld e, [hl]
    ld d, c
    rra
    ldh [$fff0], a
    cp $62
    jr nc, jr_03b_62f0

    rra
    xor [hl]
    ld de, $757f
    rlca
    di
    inc bc
    ei
    inc d
    db $10
    ld bc, $fc30
    ccf
    rst RST_38
    rst RST_18
    cp a
    ccf
    ldh a, [c]
    dec c
    rst RST_30
    adc c
    cp $99
    jr nc, jr_03b_639b

    rst RST_30
    ld h, b
    ccf
    jr nc, jr_03b_62cc

    jr nz, jr_03b_6323

jr_03b_6323:
    cp a
    rst RST_08
    cp d
    rst RST_38
    rst RST_28
    ld d, $ff
    ld e, $ff
    ld l, $ff
    sbc a
    rst RST_38
    ld a, a
    sbc a
    ld a, a
    adc $3f
    and e
    call c, Call_03b_7f8f
    ld a, a
    dec d
    rst RST_38
    ld l, a
    cp $7f
    db $ec
    or c
    jr nz, @-$21

    cp $4e
    nop
    rst RST_20
    rst RST_38
    db $e4

jr_03b_6349:
    ld c, d
    nop
    adc h
    rst RST_38
    db $dd
    ld d, e
    ld h, d
    jr nc, jr_03b_6399

    rst RST_38
    ld l, a
    ld c, d
    nop
    ld bc, $37fe
    rra
    cp $3f
    inc b
    ld d, c
    nop
    rst RST_38
    ld [hl], c
    ld d, b
    inc sp
    scf
    jr z, jr_03b_6349

    ld [de], a
    inc b
    dec h
    ldh a, [$ff15]
    rst RST_28
    inc hl
    nop
    add b
    ld e, c
    nop
    nop
    ld bc, $9d5f
    ld h, e
    ld a, a
    rst RST_38
    add a
    inc sp
    nop
    dec bc
    ld bc, $ff00
    rst RST_20
    rra

jr_03b_6381:
    cp a
    ld a, a
    rst RST_30
    ld hl, sp-$7e
    add b
    rst RST_38
    rrca
    ccf
    ldh [$ff60], a
    ret nz

    nop
    db $e4
    inc bc
    rst RST_38
    rst RST_10
    rst RST_28
    push af
    ei
    rst RST_38
    inc bc
    rst RST_30
    rrca

jr_03b_6399:
    db $fd
    ld a, a

jr_03b_639b:
    dec d
    jr nz, jr_03b_6381

    rra
    ld a, a
    rst RST_38
    ei

jr_03b_63a2:
    db $fc
    ld e, a
    xor $f1
    ldh [$ffdf], a
    cp a
    jp c, $c350

    ld a, [hl+]
    ld b, b
    rst RST_38
    ld sp, hl
    cp $fe
    ld bc, $fe01
    ld [bc], a
    db $fc
    ld sp, hl
    ld h, b
    ld b, c
    ld h, b
    ld b, [hl]
    ld h, b
    pop bc
    ret nz

    ccf
    jr jr_03b_63a2

    rst RST_38
    ret nz

    nop
    add c
    rlca
    ccf
    ld a, a
    push bc
    ld hl, sp-$01
    rst RST_18
    ccf
    ccf
    rst RST_08
    inc bc
    db $fc
    ld a, b
    rlca
    di
    inc bc
    nop
    ld e, h
    ld b, b
    rra
    ld b, b
    rrca
    ldh a, [$fff5]
    ld hl, sp-$01
    cp $fe
    rst RST_08
    ccf
    ei
    rlca
    db $fd
    nop
    rst RST_20
    sub c
    ldh [$ffef], a
    ld l, a
    db $10
    adc h
    ld b, b
    nop
    rst RST_18
    add b
    ld c, a
    pop bc
    ldh [$fffe], a
    cp $62
    ld bc, $0297
    ld a, h
    and l
    ld d, b
    rst RST_38
    rra
    ld a, a
    rlca
    ccf
    inc bc
    adc $3f
    and $bf
    rra
    and $1f
    rst RST_30
    rrca
    di
    and a
    ld h, d
    pop af
    rst RST_38
    rrca
    rst RST_28
    ld [hl], b
    ld e, a
    and b
    xor [hl]
    ld [hl], b
    xor h
    rst RST_38
    ret nc

    sbc a
    ld hl, sp-$21
    and b
    rst RST_28
    ret c

    db $eb
    adc a
    call c, Call_000_0080
    dec de
    sub l
    db $10
    call nz, $3061
    ld h, b
    ld bc, $9df2
    nop
    ld a, $a7
    ld d, b
    ld bc, $e302
    dec e
    add a
    rst RST_38
    ld a, c
    ccf
    ld a, a
    ld [hl+], a
    db $ec
    ld de, $0070
    cp $f9
    ld c, [hl]
    nop
    ld a, h
    ld h, [hl]
    ld d, c
    rst RST_20
    ld d, $e0
    nop
    ld e, $e1
    cp $37
    ld h, b
    rst RST_30
    rst RST_08
    ret nz

    ccf
    jp c, $0051

    pop af
    ld c, $e4
    ei
    rra
    dec sp
    rlca
    ld b, b
    add e
    ld a, h
    and $19
    db $ed
    rst RST_38
    inc de
    cp a
    ld b, a
    ld a, a
    adc a
    rrca
    rst RST_38
    xor $ff
    rra
    rst RST_18
    ld a, $fd
    ld a, [hl]
    ld a, d
    db $fc
    push af
    rst RST_38
    ld hl, sp-$11
    ldh a, [$fffe]
    pop hl
    db $db
    rst RST_20
    rst RST_18
    rst RST_38
    jr nz, @-$58

    ld b, b
    rst RST_18
    nop
    xor [hl]
    ld bc, $ff77
    rrca
    cp h
    ld a, a
    ld h, l
    di
    ld l, $1c
    rrca
    cp $0f
    db $10
    ld a, a
    ld e, $f9
    cp $00
    cp $03
    ld a, a
    rst RST_38
    sbc a
    cp $7f
    add b
    xor $1f
    nop
    ld bc, $1fbf
    rst RST_38
    ld bc, $f823
    db $fd
    sbc l
    nop
    nop
    rst RST_30
    ld [hl], c
    add c
    cp $01
    nop
    ld a, c
    add [hl]
    xor $f1
    rst RST_38
    ld [hl], a
    ld hl, sp+$3d
    cp $ff
    ld [hl], e

jr_03b_64c4:
    ld a, [$ffe0]
    ld a, [hl]
    ld [hl], b
    inc e
    ld e, $ee
    rrca
    db $eb
    rlca
    rst RST_38
    db $fd
    inc bc
    rst RST_08
    ld bc, $814f
    rst RST_38
    rra
    rst RST_38
    ccf
    rrca
    ccf
    rlca
    cp a
    inc bc
    dec a
    inc bc
    rst RST_38
    xor a
    ld bc, $8106
    add $81
    ccf
    ld bc, $1dff
    nop
    dec e
    nop
    sbc c
    add b
    pop bc
    ret nz

    rst RST_38
    add h
    add b
    ret nz

    ret nz

    ret nz

    pop bc
    ld sp, hl
    add a
    cp $a0
    ld [hl], c
    ld a, d
    dec b
    ld a, [hl]
    ld bc, $433c
    rra
    rst RST_38
    ldh [rVBK], a
    ldh a, [$ffcf]
    ld hl, sp-$02
    jp hl


    ld sp, hl
    cp $37
    ld b, d
    rst RST_38
    cp $f5
    ld a, [hl]
    push af
    cp $31
    rst RST_38
    rst RST_38
    adc [hl]
    pop af
    ld a, a
    add b
    db $fc
    nop
    db $fd
    ld a, a
    ld bc, $00f0
    ld hl, sp+$18
    ld hl, sp+$18
    or c
    jr nz, @+$01

    ret nz

    pop hl
    ld b, b
    ret c

    jr jr_03b_64c4

    sub b
    add d
    rst RST_38
    add b
    scf
    ld [$107f], sp
    rst RST_28
    rst RST_10
    rst RST_38
    push af
    ld h, a
    ld h, d
    jr nc, jr_03b_65c2

    add b
    dec b
    sub d
    db $ed
    or $ff
    ccf
    rst RST_38
    or $ff
    db $fd
    rst RST_38
    rst RST_30
    sub c
    inc hl
    ld de, $0280
    scf
    ld hl, sp-$20
    jp Jump_000_0f03


    ld a, $3a
    ld a, [hl]
    db $fc
    ei
    db $eb
    sub [hl]
    ld h, $3d
    ld a, $ed
    ldh a, [$ffd4]
    ld [hl], b
    jp hl


    jp $c5e5


    cp $5c
    cpl
    cp $df
    cp a
    ld sp, hl
    sbc $f8
    db $fc
    nop
    nop
    sbc a
    rst RST_08
    rst RST_38
    ld a, a
    ccf
    dec de
    ld bc, $c000
    ldh a, [$ffe8]
    ldh a, [c]
    db $e4
    ld h, e
    ld sp, hl
    jr c, jr_03b_6598

    rlca
    inc bc
    ld bc, $8f00
    rrca
    dec h
    inc l
    dec b
    rlca
    rst RST_20
    sub a
    add $4a

jr_03b_6598:
    db $e3
    db $eb
    db $e3
    pop bc
    add b
    sub b
    ld sp, hl
    add sp, -$10
    add sp, -$10
    ret nc

    ret nz

    db $d3
    ld l, a
    ld l, l
    ld a, b
    ldh [$ffc9], a
    reti


    pop de
    sub e
    ld [hl], l
    di
    rst RST_30
    ld h, a
    rst RST_28
    xor $c8
    reti


    pop de
    add c
    inc hl
    ld l, e
    rrca
    inc a
    ld [hl], c
    rst RST_28
    cp a
    rst RST_38
    rst RST_38
    rst RST_08

jr_03b_65c2:
    ccf
    ld [bc], a
    rst RST_38
    ld [bc], a
    or $f7
    cp a
    db $db
    rst RST_28
    ld a, a
    rst RST_38
    rst RST_38
    nop
    add b
    db $fc
    rst RST_38
    rst RST_08
    rst RST_38
    db $fc
    rst RST_38
    db $f4
    push hl
    adc c
    inc bc
    daa
    ld e, $7b
    or $db
    ei
    rst RST_30
    push bc
    ld h, e
    cp l
    sub a
    add $7f
    ld a, d
    reti


    rst RST_10
    and $e1
    di
    ldh a, [$fff0]
    or b
    ld [hl], e
    di
    ld [hl], e
    ei
    cp c
    sbc a
    ld a, e
    rst RST_30
    call c, $cccf
    ld l, h
    db $ec
    db $ec
    ldh a, [c]
    sbc b
    or $c4
    ld [de], a
    db $10
    ld [bc], a
    nop
    add hl, bc
    rst RST_08
    or [hl]
    call c, $946f
    ld c, b
    nop
    ld bc, $310a
    add c
    ld bc, $2721
    ccf
    rst RST_38
    ld l, a
    rrca
    ld a, $7c
    ret c

    ld a, b
    pop hl
    add e
    ld h, e
    ld b, a
    rrca
    rra
    ld c, e
    or d

Jump_03b_6625:
    ld l, [hl]
    ret c

    or e
    ld h, e
    rst RST_00
    call z, Call_000_3018
    inc hl
    ld a, a
    rst RST_08
    cp a
    ld a, a
    inc e
    di
    ld a, a
    db $fc
    add b
    ld [bc], a
    rst RST_38
    ld [bc], a
    call nz, $ff73
    rlca
    nop
    rst RST_38
    ccf
    inc bc
    ld [bc], a
    nop
    inc b
    ld [bc], a
    rst RST_38
    ld [bc], a
    rra
    ld [bc], a
    nop
    ld b, $02
    rst RST_38
    ld [bc], a
    ld hl, sp-$1f
    inc bc
    rrca
    ld a, a
    db $fc
    rst RST_38
    pop bc
    rra
    add b
    db $fc
    ldh a, [$ff80]
    ld bc, $fed7
    ld sp, hl
    daa
    rlca
    rrca
    ccf
    rst RST_30
    call c, $c2f0
    call z, $e1b9
    jp nz, Jump_000_3085

    ld c, l
    ld sp, $6052
    ld b, $3f
    rst RST_38
    adc a
    cp a
    ld a, [hl]
    ret z

    ccf
    rst RST_30
    ld c, h
    rra
    rst RST_38
    add $00
    ccf
    rst RST_38
    rst RST_38
    cp a
    cp $ea
    nop
    rlca
    ld [bc], a
    rst RST_38
    ld [bc], a
    rrca
    nop
    ld h, b

jr_03b_668e:
    ld c, a
    or e
    ld [bc], a
    rst RST_38
    inc b
    rrca
    nop
    ldh a, [$ff5b]
    rst RST_38
    inc bc
    ld [bc], a
    nop
    dec b
    rst RST_38
    rst RST_38
    ccf
    ld [bc], a
    nop
    inc b
    ld [bc], a
    rst RST_38
    ld [bc], a
    rrca
    ld [bc], a
    nop
    inc bc
    ret nz

    rst RST_08
    rst RST_30
    db $fc
    ld a, a
    inc bc
    nop
    nop
    ld d, b
    dec h
    ld d, e
    sbc [hl]
    ret nc

    cp $f7
    rst RST_38
    rrca
    nop
    add b
    ld [hl], c
    jr z, jr_03b_668e

    ld [bc], a
    rst RST_38
    ld [bc], a
    add a
    rst RST_38
    cp $02
    nop
    inc bc
    ld a, a
    rst RST_38
    pop hl
    rlca
    nop
    nop
    rst RST_38
    rra
    ld [bc], a
    rst RST_38
    ld [bc], a
    call nz, $0331
    ld hl, sp-$01
    scf
    add sp, -$1f
    add h
    ccf
    rst RST_00
    ld a, [hl-]
    rst RST_38
    sbc l
    cp h
    pop af
    rst RST_00
    ld sp, hl
    db $fc
    ld [hl], e
    add a
    add e
    ccf
    ld [bc], a
    rst RST_38
    ld [bc], a
    ld a, a
    sbc a
    pop bc
    ld [bc], a
    rst RST_38
    ld [bc], a
    ldh [$ff80], a
    ld a, [$fffe]
    ld a, a
    ld [bc], a
    rst RST_38
    inc b
    db $fd
    cp $fc
    db $fc
    ldh a, [$ffe1]
    pop bc
    add e
    ld bc, $0c1e
    jr c, @-$06

    pop af
    pop af
    sub e
    inc sp
    ld sp, $7038
    ldh [$ffe0], a
    ret nz

    add a
    cp a
    cp h
    ld [bc], a
    nop
    inc bc
    inc a
    db $fd
    rst RST_38

jr_03b_671c:
    ld a, a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    add b
    ld [bc], a
    ld b, b
    ld bc, $0002
    ld b, $c1
    pop hl
    ld h, e
    ld [hl], e
    ld [hl], d
    ld a, b
    jr jr_03b_6798

    add c
    add c
    ld [bc], a
    nop
    inc bc
    ld bc, $0201
    ldh [rSC], a
    ret nz

    ret nz

    pop bc
    pop bc
    ret nz

    ldh a, [$fff2]
    rst RST_20
    rst RST_38
    or $e7
    rst RST_28
    rst RST_38
    cp $fc
    ld hl, sp-$08
    ldh a, [rSVBK]
    ldh a, [$ffe0]
    ld de, $2400
    ld c, b
    db $10
    inc bc
    rrca
    ld e, $c0
    nop
    nop
    ccf
    rst RST_38
    ld hl, sp-$80
    nop
    ld [bc], a
    ld a, b
    ld [bc], a
    inc a
    rra
    add b
    ld [bc], a
    nop
    dec b
    add b
    ld [hl], b
    inc bc
    ld bc, $fcfe
    db $fc
    or h
    nop
    ld bc, $0f07
    inc a
    inc b
    ld [$9c3b], sp
    sbc $ee
    rst RST_38
    jr c, jr_03b_67bb

    ccf
    ccf
    rra
    rra
    rrca
    rlca
    cp c
    rst RST_30
    or l
    scf
    or e
    cp e
    ei
    db $fd
    ld h, a
    db $e3
    ld [bc], a
    ldh [$ff03], a
    ld h, b
    ld [hl], b
    nop
    add b
    ld [bc], a
    nop
    dec c

jr_03b_6798:
    jr nc, jr_03b_67da

    jr nz, jr_03b_671c

    ld [bc], a
    nop
    inc bc
    ld bc, $0206
    nop
    inc bc
    ld bc, $4307
    inc bc
    rlca
    rrca
    rra
    ccf
    ld [bc], a
    rst RST_38
    dec b
    cp $fc
    ldh a, [$ffe0]
    ret nz

    add b
    nop
    inc bc
    rlca
    rrca
    inc e
    nop

jr_03b_67bb:
    jr c, jr_03b_6820

    rst RST_08
    rst RST_38
    db $fc
    add b
    inc bc
    ld a, a
    nop
    ld a, a
    rst RST_38
    rst RST_38
    adc h
    nop
    ld hl, sp-$01
    ld [bc], a
    nop
    dec d
    add a
    rst RST_38
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    nop
    ld a, $ff
    rst RST_38
    rrca
    ccf

jr_03b_67da:
    ld a, a
    rst RST_38
    ccf
    rst RST_18
    cp $d8
    rst RST_38
    rst RST_38
    db $fc
    ld hl, sp-$20
    nop
    ld bc, $c003
    nop
    ld bc, $0f03
    inc a
    ld sp, hl
    di
    rra
    cp $fe
    db $fc
    ld a, a
    ld a, a
    ld [bc], a
    rst RST_38
    ld [bc], a
    ldh [$ff80], a
    rst RST_20
    ld [bc], a
    rst RST_38
    ld [bc], a
    ret nz

    rst RST_38
    rra
    cp a
    ld [bc], a
    rst RST_38
    ld [bc], a
    ld hl, sp+$00
    rst RST_38
    rrca
    ldh a, [rIF]
    add b
    add b
    inc a
    ld [bc], a
    rst RST_38
    inc bc
    rrca
    ldh a, [rIF]
    nop
    rst RST_20
    ld [bc], a
    nop
    rla
    ccf
    ccf
    rrca
    inc bc
    ld [bc], a
    nop

jr_03b_6820:
    inc bc
    and b
    jp c, $e1ac

    ccf
    or a
    db $fd
    rst RST_38
    ldh a, [rIF]
    nop
    add b
    rst RST_10
    ld [bc], a
    rst RST_38
    inc bc
    ld a, b
    ld [bc], a
    nop
    dec b
    add b
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    ccf
    ld [bc], a
    nop
    inc bc
    inc bc
    ccf
    rst RST_38
    rst RST_38
    rlca
    nop
    rrca
    rra
    ld [bc], a
    rst RST_38
    inc bc
    push bc
    nop
    rst RST_20
    rst RST_38
    cp $f8
    cp $ff
    db $fc
    ld a, b
    db $fc
    ret nz

    ld [bc], a
    nop
    ld [bc], a
    add b
    ld h, b
    ld a, $02
    nop
    ld [bc], a
    rra
    ld a, a
    dec b
    ld bc, $1d00
    nop
    add b
    rst RST_38
    rst RST_38
    inc bc
    rst RST_38
    ld b, $fd
    dec c
    db $fc
    inc c
    rst RST_38
    cp $1a
    db $fc
    inc e
    cp $3a
    db $fc
    inc e
    rst RST_38
    ret c

    nop
    add b
    ld bc, $0300
    nop
    rlca
    dec hl
    nop
    rrca
    jr jr_03b_6886

jr_03b_6886:
    rra
    inc e
    nop
    rst RST_38
    jr nz, jr_03b_6898

    jr nc, jr_03b_688e

jr_03b_688e:
    rst RST_38
    inc bc
    inc bc
    rlca
    rlca
    ld e, $1e
    ld a, b
    ld a, b
    rst RST_38

jr_03b_6898:
    ldh [$ffe0], a
    add b
    add b
    ld [hl], b
    ld [hl], b
    pop hl
    pop hl
    rst RST_38
    jp $87c3


    add a
    ld c, $0e
    inc a
    inc a
    rst RST_38
    ld h, b
    ld h, b
    ldh [$ffe0], a
    ret nc

    ret nc

    ret nz

    ret nz

    cp c
    add b
    ld d, h
    nop
    inc de
    ld bc, $0027
    ld c, a
    jr nc, jr_03b_68bd

jr_03b_68bd:
    ld a, a
    rst RST_38
    add b
    ld a, a
    add b
    cpl
    ret nc

    ld e, a
    and b
    ld l, d
    cp l
    sub l
    jr nz, jr_03b_68cb

jr_03b_68cb:
    add b
    nop
    nop
    db $fc
    ld [hl], c
    inc b
    call c, Call_000_20ff
    inc b
    ld hl, sp+$00
    nop
    ld bc, $c001
    rst RST_38
    nop
    ld d, b
    db $10
    inc e
    inc c
    add h
    nop
    rst RST_08
    rst RST_38
    nop
    push hl
    nop
    pop af
    nop
    ldh [$ffe0], a
    ld a, h
    rst RST_18
    ld a, h
    rra
    rra
    add a
    add a
    add b
    nop
    ret nz

    ldh [rIE], a
    jr nz, @-$26

    nop
    ld a, a
    ld a, h
    rrca
    rrca
    nop
    rst RST_38
    nop
    ret nz

    ret nz

    rst RST_38
    rst RST_38
    rra
    rra
    ld [bc], a
    rst RST_38
    ld [bc], a
    nop
    nop
    ldh a, [rP1]
    rst RST_38
    ld hl, sp-$01
    ld [$022f], a
    ld hl, sp-$4d
    ld [bc], a
    rra
    jr jr_03b_691b

jr_03b_691b:
    rlca
    nop
    inc bc
    db $fd
    add b
    add c
    nop
    ldh [rNR10], a
    ldh [rP1], a
    nop
    ld [bc], a
    rst RST_30
    ld [bc], a
    inc bc
    inc bc
    ld l, a
    nop
    nop
    ld b, b
    nop
    and b
    ld a, a
    nop
    ret nz

    nop
    ret nc

    nop
    rst RST_38
    rst RST_18
    ldh [rP1], a
    db $fd
    sbc $e4
    ld b, $9e
    rst RST_28
    rlca
    rst RST_28
    rlca
    rst RST_08
    db $fc
    di
    ld [bc], a
    ldh a, [rSB]
    rst RST_28
    rlca
    ld hl, sp+$38
    ld hl, sp-$68
    cp $02
    db $10
    ret c

    ld hl, sp-$28
    db $fc
    ld l, b
    ld a, h
    inc a
    rst RST_18
    rst RST_38
    ld a, $00
    rra
    jr nz, jr_03b_6973

    db $10
    db $10
    rrca
    rst RST_38
    db $10
    rrca
    ld [$0c07], sp
    inc bc
    ld c, $01
    push de
    inc c
    jr nz, @+$16

    inc e

jr_03b_6973:
    jr z, jr_03b_6985

    jr c, jr_03b_69a3

    db $10
    dec a
    dec a
    rst RST_38
    jr c, jr_03b_69b5

    ld sp, $3831
    jr c, jr_03b_69a3

    ld hl, $28ff

jr_03b_6985:
    jr z, jr_03b_69ff

    ld a, b
    ld [hl], b
    ld [hl], b
    ld hl, sp+$08
    rst RST_20
    jr jr_03b_69a7

    ld hl, sp-$33
    nop
    jr nc, @+$03

    ld bc, $0701
    ld a, a
    rlca
    rra
    xor $1f
    xor $0f
    cp $54
    inc de
    xor $52

jr_03b_69a3:
    ld de, $8000
    ld a, h

jr_03b_69a7:
    ld h, c
    ld [de], a
    inc a
    ret nz

    ld a, h
    or c
    add b
    ld [hl], c
    nop
    call nc, Call_03b_7001
    jr @+$01

jr_03b_69b5:
    ret nz

    and h
    nop
    nop
    cp a
    db $fc
    db $fc
    rst RST_38
    rst RST_38
    ld bc, $ae01
    nop
    ldh a, [$ff28]
    halt
    ld d, $96
    db $10
    ld b, [hl]
    inc de
    ldh [$ffdd], a
    nop
    ret nz

    reti


    ld [bc], a
    ld [hl], b
    rla
    rst RST_18
    inc bc
    inc bc
    rst RST_38
    rst RST_38
    ret nz

    ld a, a
    db $10
    ccf
    ccf
    db $fc
    or [hl]
    ld [bc], a
    xor a
    nop
    ldh a, [rP1]
    db $ec
    nop
    ret z

    nop
    rst RST_38
    db $10
    add b
    ld [hl], b
    nop
    or b
    nop
    ld [$ef00], a
    db $f4
    nop
    rst RST_38
    inc b
    ld hl, $0702
    rst RST_38
    inc a
    set 7, a
    sbc [hl]
    ldh [rNR14], a

jr_03b_69ff:
    cp [hl]
    add sp, $13
    ldh a, [rSB]
    rst RST_18
    inc bc
    push af
    rst RST_08
    push af
    ld [de], a
    rst RST_18
    ei
    db $10
    ld e, a
    rra
    rst RST_38
    rrca
    rst RST_38
    rla
    rlca
    rra
    inc bc
    add l
    ld bc, $01cb
    db $fd
    pop hl
    adc l
    nop
    add a
    nop
    jp $e180


    ret nz

    rst RST_38
    ldh a, [$ffe0]
    db $fc
    ldh a, [$fffe]
    db $fc
    rst RST_38
    cp $fe
    or h
    nop
    rst RST_38
    add b
    ld a, a
    ldh [$ff1f], a
    ldh a, [rIF]
    rla
    jr c, @+$09

    rra
    ld d, $00
    add c
    ld a, h
    db $10
    jr nz, jr_03b_6a49

    inc h
    jr nz, @+$01

    ld bc, $303f
    ld [hl], a

jr_03b_6a49:
    ld h, b
    jr nc, @+$32

    rra
    ld a, l
    rra
    jr nc, jr_03b_6a52

    add b

jr_03b_6a52:
    add b
    ldh a, [rSVBK]
    db $fc
    jr nz, @+$12

    db $d3
    jr jr_03b_6a73

    adc h
    rla
    or d
    inc de
    add b
    ld l, a
    nop
    rrca
    rrca
    sbc $b4
    ld bc, $3e3e
    ldh a, [$fff0]
    ld d, [hl]
    nop
    ld bc, $e70f
    rrca
    db $fc
    db $fc

jr_03b_6a73:
    ld h, [hl]
    ld hl, $104e
    rra
    ld a, h
    ld a, h
    add a
    ldh a, [$fff0]
    add c
    ld l, $20
    ld [hl-], a
    nop
    adc a
    nop
    adc $00
    nop
    ld a, a
    inc c
    nop
    ld sp, $6300
    nop
    rst RST_00
    ld e, l
    ld [$5ebf], sp
    and b
    ld [hl], c
    add b
    ld c, a
    add b
    cp l
    ld de, $bff9
    nop
    rst RST_30
    nop
    sbc a
    nop
    ld a, h
    pop bc
    db $10
    ldh [$ffbe], a
    ld a, a
    nop
    ldh [rP1], a
    pop bc
    ld bc, $3583
    nop
    rrca
    rst RST_18
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    sub [hl]
    db $10
    ld hl, sp-$02
    rst RST_38
    db $fc
    cp $f0
    db $f4
    ldh [$fff1], a
    ret nz

    db $e3
    rst RST_38
    add b
    rst RST_20
    add b
    rst RST_08
    nop
    rst RST_38
    pop hl
    rst RST_38
    rst RST_30

jr_03b_6acd:
    db $e3
    rst RST_38
    ldh [$ffe4], a
    inc h
    ldh a, [$fffe]
    ldh a, [$fff0]
    ld e, l
    rst RST_38
    ldh a, [rNR42]
    ldh [rIE], a
    add b
    ld hl, $f904
    ld [hl], c
    nop
    push af
    cp $20
    inc bc
    ld b, b
    ld a, [bc]
    jr nc, jr_03b_6b4a

    ld a, a
    ccf
    rst RST_38
    ld a, a
    ccf
    ld e, a
    rra

Jump_03b_6af1:
    rra
    rrca
    add l
    ld bc, $038a
    di
    ld hl, sp-$20
    ld a, [de]
    jr nz, jr_03b_6b21

    dec [hl]
    ccf
    rst RST_18
    rlca
    ccf
    sbc [hl]
    jr jr_03b_6b05

jr_03b_6b05:
    add b
    nop
    ldh a, [$ffc0]
    add h
    ld de, $1196
    ld bc, $c170
    db $10
    sbc c
    inc de
    rst RST_28
    jr nz, @-$68

    db $10
    rlca
    ld hl, sp+$0f
    xor a
    ld bc, $0009
    adc c
    db $10
    add e

jr_03b_6b21:
    ld [de], a
    nop
    or a
    jr nz, @+$31

    inc hl
    sub d
    inc de
    cpl
    ld hl, $64e2
    dec sp
    ld hl, sp+$16
    nop
    ld l, l
    ld [bc], a
    cp e
    db $10
    rst RST_38
    rst RST_38
    inc bc
    cp e
    nop
    ccf
    add l
    jr c, @+$01

    rst RST_38
    db $fc
    xor a
    nop
    add c
    add a
    ld bc, $0303
    sbc d
    inc sp
    ld c, [hl]

jr_03b_6b4a:
    jr nc, jr_03b_6acd

    jr nz, @+$26

    ld [hl], $fe

jr_03b_6b50:
    sbc d
    db $ec
    jr nz, jr_03b_6b50

    jp nc, $f820

    db $fc
    rst RST_10
    ld [hl+], a
    sbc h
    ld hl, $ff9f
    nop
    ccf
    ld bc, $0f7f
    rst RST_38
    rrca
    rst RST_38
    ei
    rra
    rst RST_38
    ld de, $ff30
    ccf
    db $fc
    ldh [$fffc], a
    ei
    ldh [$fff8], a
    db $e3
    ld sp, $e0e8
    pop bc
    ldh [$ffc1], a
    rst RST_08
    ret nz

    pop hl
    nop
    ld a, a
    ldh a, [$ff30]
    ld hl, $ff08
    ld h, b
    sbc $00
    ld c, b
    ld [hl], b
    rst RST_38
    ld [hl], b
    ld hl, sp-$3f
    db $10
    db $fc
    db $10

jr_03b_6b90:
    rst RST_38
    ld hl, sp+$30
    db $fc
    jr c, jr_03b_6b90

    ld [hl], b
    db $fc
    ld [hl], b
    ld [hl], a
    ld hl, sp+$70
    ld a, a
    ld b, [hl]
    ld [de], a
    rra
    nop
    cp a
    ldh a, [c]
    ld sp, $083f

jr_03b_6ba6:
    ld a, a
    inc a
    rst RST_18
    nop
    ld l, [hl]
    ld h, e
    inc [hl]
    ld hl, $9c05
    xor b
    ld de, $0721
    rra
    ldh [$ff3e], a
    ld a, d
    ld [de], a
    jr nz, jr_03b_6bbd

    ldh a, [$ffcf]

jr_03b_6bbd:
    nop
    adc a
    db $e3
    inc e
    ld e, b
    ld sp, $052a
    jr nz, jr_03b_6ba6

    rst RST_30
    rst RST_38
    nop
    push af
    ld h, e
    ld c, b
    nop
    rst RST_38
    cp a
    ld b, b
    db $fc
    ld a, c
    inc de
    jr nz, jr_03b_6bd8

    rlca
    nop

jr_03b_6bd8:
    ld sp, hl
    rst RST_38
    nop
    rst RST_18
    cp $33
    ld b, a
    inc c
    rst RST_38
    inc a

jr_03b_6be2:
    rst RST_18
    jr @+$41

    jr nc, jr_03b_6be2

    rst RST_38
    ret nz

    dec h
    inc c
    nop
    nop
    add sp, $00
    ld a, [$03fc]
    jr nc, @-$43

    ld b, b
    sbc a
    ld b, $1f
    ld b, $3f
    rlca
    rst RST_38
    rra
    rlca
    ccf
    rlca
    ccf
    rrca
    ccf
    rrca
    cp h
    call nc, $db30
    ld [hl-], a
    rst RST_38
    xor a
    rst RST_38
    adc a
    ret c

    ld b, d
    rlca
    ld l, a

jr_03b_6c11:
    rlca
    db $fd
    rrca
    db $fc
    ldh [c], a
    ld b, e
    rra
    ld hl, sp-$16
    ld b, b
    cp $8d
    db $10
    inc bc
    inc bc
    ld bc, $0601
    ld b, $0e
    ld a, a
    ld c, $0c
    inc c
    ld e, $1e
    inc e
    inc e
    inc c
    ld b, c
    xor h
    nop
    ld d, d
    ldh a, [rNR44]

jr_03b_6c34:
    ldh a, [$fffc]
    rrca
    ld d, h
    cp $0f
    ld d, c
    ld hl, sp-$01
    cp $f0
    rst RST_38
    ld a, h
    ld a, a
    ld a, [hl-]
    rst RST_38
    ld a, b
    sub d
    inc h
    ld d, d
    ld a, h
    inc h
    ld d, d
    jr nz, jr_03b_6c59

    db $fc
    pop bc
    db $10
    ld b, d
    ld d, [hl]
    db $10
    inc bc
    db $fc
    db $10
    ld a, [hl]
    jr nz, jr_03b_6c34

jr_03b_6c59:
    ld de, $31d5
    ld d, a
    ld d, d
    xor [hl]
    ld [bc], a
    ld h, h
    ld e, b
    ld e, h
    sub d
    dec d
    inc h
    ld [hl], $f3
    rst RST_38
    ld a, $24
    ld d, b
    ld [$30bb], a
    rst RST_38
    jr c, @+$01

    ld a, d
    ld a, [$3fe0]
    inc a
    rra
    rst RST_30
    inc e
    rra
    jr jr_03b_6c11

    ld d, h
    inc e
    ccf
    inc a
    rst RST_38
    sbc c
    inc e
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, c
    rlca
    rst RST_38
    inc bc
    ld [hl-], a
    inc b
    ld [hl-], a
    add b
    rst RST_28
    rst RST_38
    add b
    cp $80
    call z, Call_000_1f40
    ccf
    rra
    ld a, [hl]
    jp z, Jump_000_3f41

    inc bc
    ld a, a
    inc bc
    ccf
    ld bc, $10dc
    rst RST_30
    add a
    rst RST_38
    add e
    jp nc, $8154

    rst RST_38
    pop hl
    rra
    rst RST_38
    db $fc
    rra
    ld sp, hl
    rra
    db $fc
    rrca
    ld hl, sp+$07
    rst RST_38
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $80fe
    ld [hl], a
    rst RST_38
    ret nz

    rst RST_18
    ld [hl], h
    ld e, d
    ldh a, [rIE]
    ld sp, hl
    ld [bc], a
    ld l, c
    ld a, [hl+]
    db $10
    ld d, c
    ld sp, hl
    rrca
    ld d, b
    db $fd
    inc de
    ld h, b
    db $fd
    rrca
    ld d, b
    inc h
    ld d, b
    daa
    ld hl, sp-$01
    pop af
    inc h
    ld h, b
    inc bc
    ld h, e
    di
    cp b
    ld d, e
    rst RST_30
    jr nz, jr_03b_6d64

    ret nz

    jr c, @+$66

    db $10
    rst RST_38
    jr nc, @+$01

    ld [hl], h
    ld b, h
    ld h, d
    push de
    db $f4
    ld c, d
    ld h, b
    db $fc
    ld d, [hl]
    ld d, h
    rra
    ld d, [hl]
    ld h, l
    ld b, e
    inc bc
    rst RST_38
    pop af
    ld bc, $0010
    jr jr_03b_6d04

jr_03b_6d04:
    add h
    nop
    ei
    jp z, Jump_000_0c00

    ld hl, $c6c7
    jp Jump_03b_61c3


    rst RST_38
    ld h, c
    ld [hl], b
    ld [hl], b
    jr c, @+$3a

    inc c
    inc c
    rlca
    ld a, a
    rlca
    add e
    add e
    ldh [rP1], a
    ldh a, [$ff80]
    ld [hl], $30
    rst RST_38
    ldh [$ff3e], a
    jr c, @+$21

    inc e
    rlca
    ld b, $c1
    ld c, c
    pop bc
    ld c, [hl]
    ld h, b
    sub c
    ld h, a
    ld hl, sp+$02
    ld h, b
    and a
    ld d, e
    rra
    and h
    ld h, d
    ld d, c
    rla
    ret c

    jr nc, jr_03b_6d72

    ld h, e
    dec [hl]
    ld h, [hl]
    ccf
    sub c
    jr nc, jr_03b_6d85

    ldh a, [$ff32]
    ld e, $c0
    ld h, e
    cp $c2
    cp $82
    ret nc

    ld h, b
    push de
    ld h, c

jr_03b_6d53:
    db $d3
    ld h, d
    jr c, jr_03b_6d53

    ld [hl-], a
    ld h, h
    ld e, b
    cp d
    ld hl, $00d0
    ld h, b
    ld l, [hl]
    ld d, $02
    ld l, e
    inc [hl]

jr_03b_6d64:
    ld [bc], a
    ld h, b
    jr nz, jr_03b_6d6e

    inc bc
    ld [hl], b
    nop
    ld bc, $80fe

jr_03b_6d6e:
    ld d, b
    ld hl, $5573

jr_03b_6d72:
    ei
    inc h
    inc [hl]
    pop bc
    jr nc, jr_03b_6df4

    cp $4e
    ld h, b
    db $fd
    ld b, h
    ld [hl], d
    ld c, c
    ei
    jr z, jr_03b_6df4

    ld d, a
    ld h, e
    sbc a

jr_03b_6d85:
    ld d, [hl]
    ld [hl], l
    jr nc, jr_03b_6d8a

    inc b

jr_03b_6d8a:
    inc d
    inc bc
    dec sp
    inc bc
    inc e
    rla
    stop
    cp $01
    jr nz, jr_03b_6d96

jr_03b_6d96:
    ret nz

    ld h, c
    cp a
    ld hl, sp+$00
    ld h, b
    rlca
    ld h, b
    rra
    dec de
    ld bc, $0c0f
    adc c
    nop
    ld hl, $fe00
    ld bc, $31fd
    ld b, l
    ld [hl], c
    sub c
    ld h, c
    ld b, l
    ld [hl], e
    ld [hl], l
    db $fc
    xor h
    ld h, b
    rla
    ld d, h
    ld h, h

jr_03b_6db8:
    rst RST_18
    rst RST_38
    ld c, a
    ret c

    jr nc, jr_03b_6db8

    add hl, sp
    ld h, l
    ret nz

    db $e4
    inc hl
    db $10
    rlca
    jr z, jr_03b_6dc7

jr_03b_6dc7:
    add hl, de
    xor $30
    nop
    stop
    ld [$006e], sp
    add b
    nop
    cp $d7
    ldh [c], a
    cp $a2
    jp nc, $e260

    call nc, $e262
    cp $ff
    ldh [c], a
    ld [hl], b
    ld [hl], b
    pop bc
    pop bc
    ld b, e
    ld b, d
    rlca
    rst RST_38
    inc b
    rlca
    inc b
    ld c, $08
    ld c, $08
    ld e, $01
    jr jr_03b_6dfc

    ld d, h

jr_03b_6df4:
    pop af
    halt
    dec e
    add b
    ld b, b
    rst RST_28
    rst RST_38
    pop af

jr_03b_6dfc:
    rst RST_38
    di
    ld [bc], a
    ld b, $e3
    rst RST_38
    db $e3
    rst RST_38
    di
    pop hl
    di
    pop hl
    ei
    ldh [$fff9], a
    ldh [rPCM34], a
    ei
    ldh [$fff3], a
    rla
    nop
    ei
    ldh [rIE], a
    jr nz, jr_03b_6e1a

    rst RST_18
    db $fd
    rst RST_38

jr_03b_6e1a:
    ld a, b
    rst RST_38
    nop
    ld a, [hl+]
    nop
    ld bc, $5dff
    add e
    jr nc, jr_03b_6e25

jr_03b_6e25:
    inc bc
    rst RST_38
    rlca
    ld [hl], $04
    and a
    jr nz, jr_03b_6e2d

jr_03b_6e2d:
    xor a
    cp $fc
    db $fc
    ld hl, sp+$46
    ld bc, $4af0
    ld bc, $efe0
    add b
    rst RST_38
    rra
    nop
    ld d, h
    nop
    rst RST_38
    ld a, a
    rst RST_38
    ret


    ccf
    ld e, d
    ld bc, $0056
    rst RST_38
    ld d, h
    ld [bc], a
    jr nz, jr_03b_6e51

    inc e
    jr @-$07

    inc e

jr_03b_6e51:
    jr jr_03b_6e71

    ld [hl], e
    nop
    rra
    inc e
    rra
    inc e
    rst RST_38
    rrca
    inc c
    rrca
    ld c, $0f
    rlca
    rst RST_38
    ld hl, sp-$02
    ld h, h
    add hl, bc
    rst RST_38
    cp $ff
    cp $3f
    ld e, $1f
    rst RST_18
    ld c, $1f
    inc b
    rra

jr_03b_6e71:
    nop
    sbc d
    ld bc, $0fff
    xor e
    rst RST_38
    ld e, a
    and d
    ld [bc], a
    ld a, a
    xor b
    inc b
    ldh a, [$ffb0]
    ld [bc], a
    ld hl, sp-$54
    or h
    ld [bc], a
    or a
    nop
    ccf
    nop
    ret nz

    inc bc
    ld e, a
    rst RST_00
    inc b
    db $fc
    push af
    ret nz

    ret nc

    nop
    add b
    call nc, $a000
    db $fc
    ldh [$fffc], a
    rst RST_08
    db $e4
    db $fc
    ldh [rSB], a
    and b
    nop
    db $e3

jr_03b_6ea2:
    rlca
    db $fc
    rst RST_38
    push de
    ldh [$ffef], a
    ld [bc], a
    ret nz

    push af
    nop
    add b
    ld a, [hl+]
    ld [bc], a
    rst RST_38
    rst RST_20
    ldh a, [c]
    nop
    dec de
    ld sp, hl
    dec d
    nop
    ld d, $01
    ei
    ret nz

    ei
    ret nz

    rst RST_08
    rst RST_30
    ret nz

    rst RST_30
    add b
    inc [hl]
    nop
    ld hl, $4313
    rst RST_38
    push af
    ld b, a
    ld a, [hl+]
    ld [de], a
    and a
    ld a, $00
    daa
    rst RST_38
    or a
    rst RST_38
    add c
    rst RST_30
    add sp, $04
    cp e
    ld bc, $1541
    or c
    ld bc, $05a9
    ld e, c
    inc b
    jr nc, jr_03b_6ea2

    rra
    ld a, a
    rrca
    ccf
    nop
    rlca
    ld d, h
    nop
    add b
    ld a, a
    nop
    ldh [rP1], a
    cp $00
    inc bc
    cp $ed
    nop
    adc a
    nop
    db $fc
    nop
    db $10
    ld l, e
    db $10
    ld d, h
    ld [bc], a
    ld a, a
    ld [de], a
    rra
    ld a, [$1065]
    ld b, $7b
    ld [de], a
    ccf
    jr nz, @+$01

    ldh [c], a
    rst RST_38
    db $fd
    and $ef
    inc b
    pop af
    rst RST_38
    pop af
    ld a, a
    nop
    add b
    pop bc
    add b
    ld e, b
    nop
    ld a, a
    inc d
    ld sp, hl
    nop
    ld c, c
    inc de
    cp e
    nop
    cp $f0
    adc a
    cp $f8
    rst RST_38
    db $f4
    sbc d
    inc bc
    ret nz

    rla
    call c, $fc01
    ld e, l
    ldh a, [$ffd4]
    db $10
    ldh [$fffc], a
    add sp, -$26
    db $10
    db $fc
    sbc e
    nop
    ld a, c
    sbc a
    ldh [c], a
    add hl, de
    sub d
    nop
    cp $0f
    cp $07
    inc [hl]
    nop
    db $dd
    ld bc, $002e
    nop
    rst RST_38
    inc e
    nop
    inc h
    ld e, $1e
    rst RST_38
    ld c, $0e
    rlca
    rlca
    add e
    inc bc
    di
    ld bc, $105e
    jr nz, jr_03b_6f64

    rst RST_30
    inc bc
    rst RST_20

jr_03b_6f64:
    rla

jr_03b_6f65:
    jr nz, @-$07

    dec d
    jr nz, jr_03b_6f65

    rst RST_38
    jp Jump_000_000c


    jp $81ff


    rst RST_38
    pop bc
    rst RST_38

jr_03b_6f74:
    rst RST_38
    and c
    rst RST_38
    pop hl
    rst RST_38
    pop hl
    jr jr_03b_6f74

    ld de, $4678
    ld [bc], a
    inc sp
    dec h
    or [hl]
    nop
    ld a, [$0190]
    db $ed
    nop
    ld c, c
    ld hl, $fdfd
    ld e, d
    inc bc
    ld hl, sp+$7f
    ldh [$ff7f], a
    add b
    ld a, a
    ldh a, [$fffc]
    ld [bc], a
    jr nz, jr_03b_6f9a

jr_03b_6f9a:
    and a
    dec d
    dec hl
    ld bc, $00cf
    ld c, a
    nop
    rst RST_38
    rrca
    ld bc, $030f
    cpl
    rlca
    ccf
    rra
    jp z, Jump_000_207a

    cp a
    jr nz, jr_03b_6fb4

    rra
    inc [hl]
    nop

jr_03b_6fb4:
    ld a, a
    inc de
    rst RST_38
    ld sp, hl
    db $fc
    sub b
    ld [hl+], a
    ld c, c
    jr nz, jr_03b_703d

    db $fc
    rra
    ld hl, sp+$07
    ld hl, sp-$04
    adc b
    ld b, $a9
    inc b
    cp $fc
    cp $f4
    cp $fc
    ld e, a
    rst RST_38
    db $f4
    cp $f4
    rst RST_38
    cp c
    ld hl, $68fc

jr_03b_6fd8:
    db $10
    rst RST_38
    add b
    ret nz

    ret nz

    add b
    add b
    ldh [$ffe0], a
    ldh a, [$ff63]
    ldh a, [$ff78]
    call z, Call_000_3320
    ld a, [hl+]
    ld b, [hl]
    nop
    nop
    cp a
    ldh [c], a
    db $10
    cp $c0
    jr jr_03b_6ffb

    ld [$0606], sp
    jp nz, $e1c2

    cp a
    pop hl

jr_03b_6ffb:
    ld h, b
    ld h, b

jr_03b_6ffd:
    jr nc, jr_03b_702f

    jr jr_03b_6ffd

Call_03b_7001:
    jr nz, @+$01

    push hl
    rst RST_08
    nop
    inc [hl]
    rst RST_18
    ld [$1a33], sp
    inc hl
    rst RST_30
    rlca
    rst RST_28
    ld d, e
    rlca
    rst RST_20
    add hl, de
    ld [hl-], a
    inc l
    jr nz, jr_03b_6fd8

    ld [hl+], a
    ld [hl], $c3
    jr nz, jr_03b_703c

    cp d
    db $e3
    ld [$b6fe], sp

jr_03b_7021:
    nop
    ei
    db $fc
    di
    jp nc, $f801

    ld l, l
    nop
    ld b, a
    inc sp
    db $fc
    ccf
    rst RST_28

jr_03b_702f:
    nop
    di
    di
    ld a, l
    ld d, $c0
    ld h, c
    ld [hl+], a
    ld h, d
    ld [bc], a
    and [hl]
    inc d
    and b

jr_03b_703c:
    ld [de], a

jr_03b_703d:
    ld h, e
    ld [bc], a
    halt
    inc sp
    ldh [rP1], a
    rst RST_28
    ldh [$ffe0], a
    add b
    add b
    halt
    dec [hl]
    ld [$0308], sp
    rst RST_18
    db $fc
    add c
    cp $80
    cp a
    pop bc
    inc de
    sub b
    rra
    db $fd
    jr nc, @+$5d

    ld [bc], a
    rst RST_38
    ccf
    ccf
    ccf
    rra
    rra
    ccf
    rrca
    rra
    rlca
    rra

jr_03b_7066:
    inc bc
    rra
    ld c, b
    inc h
    or c
    dec [hl]
    ccf
    cp $9f
    nop
    rst RST_18
    nop
    adc a
    jp $3138


    jr nz, jr_03b_7066

    pop de
    add hl, sp
    ld hl, sp+$0f
    ld [$30c4], sp
    inc c
    adc a
    nop
    db $fd
    rrca
    jp Jump_000_0931


    adc a
    add hl, bc
    inc c
    inc c
    inc bc
    rlca
    inc bc
    ld bc, $7601
    scf
    ld de, $3a00
    ld [hl], b
    ld a, [hl-]
    rst RST_38
    rlca
    ld a, [hl-]
    db $fc
    dec b
    ld hl, sp-$08
    nop
    jr nz, jr_03b_7021

    nop
    db $10
    sub b
    add b
    sub b
    ld a, [hl-]
    nop
    rlca
    inc c
    nop
    jr jr_03b_70e5

    nop
    nop
    ld bc, $3005
    ld b, b
    ld [$9388], sp
    ld b, e
    ld b, a
    add a
    ccf
    ccf
    cp a
    rst RST_38
    rst RST_38
    cp $fe
    db $fc
    sub b
    add sp, -$22
    rst RST_18
    ccf
    ccf
    ld a, a
    ld a, [hl-]
    rst RST_38
    ld [$f2fb], sp
    ldh [c], a
    db $ec
    db $ec
    add b
    or b
    or b
    inc bc
    inc bc
    inc b
    ld b, $15
    inc d
    nop
    ld de, $1801
    dec bc
    nop
    jr nc, jr_03b_70e5

    ld a, [bc]
    ld h, d
    ld l, $26

jr_03b_70e5:
    inc b
    sbc c
    or c
    inc b
    ld [hl], $cf
    sbc d
    or d
    jr z, @+$6a

    ld c, b
    ret nz

    and b
    and b
    ld a, [hl-]
    nop
    inc b
    ld b, b
    add b
    add d
    ld b, a
    rrca
    rlca
    rlca
    inc bc
    ld a, [hl-]
    nop
    ld [bc], a
    db $fc
    ldh a, [$ffc0]
    add b
    ld a, [hl-]
    nop
    inc b
    ld e, c
    inc b
    ld b, $02
    ld [bc], a
    nop
    nop
    ret z

    and b
    jr z, jr_03b_7178

    add b
    ld l, b
    sub c
    ld [hl-], a
    nop
    nop
    jr nz, @+$42

    nop
    nop
    rrca
    add b
    ld [bc], a
    ld [bc], a
    inc b
    nop

jr_03b_7123:
    jr nz, jr_03b_7175

    ld h, b
    ld l, d
    dec bc
    rlca
    rst RST_08
    rst RST_28
    rst RST_38
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld hl, sp-$08
    pop af
    pop hl
    db $e3
    jp $8fc7


    ld a, [hl-]
    rst RST_38
    add hl, bc
    ld a, [hl-]
    cp $02
    ld a, [hl-]
    db $fc
    ld [bc], a
    nop
    ld h, b
    ld h, b
    ld bc, $4064
    ld hl, $1900
    jr jr_03b_7123

    ld b, e
    jr nz, jr_03b_717f

    or c
    sub b
    ld b, $14
    ld [$5928], sp
    ld [de], a
    jr nz, jr_03b_717e

    dec b
    pop de
    jp c, $2555

    ret z

    sub h
    inc [hl]
    nop
    ld b, b
    ld b, b

jr_03b_7163:
    ld bc, $0305
    inc bc
    rlca
    add b
    add b
    ld d, b
    add b
    adc b
    ret nz

    add d
    pop hl
    ld a, [hl-]
    nop
    ld b, $01
    ld a, [hl-]

jr_03b_7175:
    nop
    ld b, $11

jr_03b_7178:
    ld a, [hl-]
    nop
    inc b
    ld a, b
    ld hl, sp-$08

jr_03b_717e:
    db $e4

jr_03b_717f:
    and l
    dec h
    sub $b2
    pop de
    or c
    jp nc, $1a1c

    ld d, h
    ld b, b
    or b
    db $e4
    add hl, bc
    ld bc, $f872
    ld a, a
    sub h
    nop
    nop
    ld d, b
    ld d, [hl]
    cp $7f
    ld a, a
    cp l
    cp b
    ld e, d
    sbc [hl]
    ld l, b
    sbc a
    rra
    rst RST_08
    or a
    ld c, e
    add hl, hl
    ld [bc], a
    add hl, hl
    ld a, [hl-]
    rst RST_38
    ld b, $7f
    ld a, [hl-]
    rst RST_38
    inc b
    db $fc
    ret c

    add b
    rst RST_38
    rst RST_38

jr_03b_71b2:
    ld hl, sp-$10
    db $e4
    jp nz, $a0da

    rst RST_38
    rst RST_38
    ld a, a
    ld e, $0e
    add b
    ld b, $36
    db $fd
    ld a, [$34ca]
    sbc b
    ret nz

    ret nz

    nop
    ld l, b
    ret nz

    nop
    nop
    ld [bc], a
    ld [$0218], sp
    ld a, [bc]
    ld b, d
    sub c
    ld [bc], a
    xor b
    ld hl, $8d82
    ld a, [hl-]
    nop
    inc bc
    jr nz, jr_03b_7163

    ld [bc], a
    nop
    ld e, a
    rst RST_18
    ld a, [hl-]
    cp a
    inc b
    ld a, a
    ld h, a
    rst RST_20
    ld a, [hl-]
    rst RST_38
    dec b
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fc
    cp $ff
    sub d
    add b
    ld b, b
    jr nz, jr_03b_7257

    jr nc, @+$1a

    ld a, [hl+]
    db $10
    inc hl
    adc b
    ld de, $4525
    sub h
    db $10
    ld bc, $01fe
    call c, Call_03b_5555
    nop
    nop
    ld h, b
    ldh [$ff60], a
    and b
    ld h, b
    ld h, b
    jr nz, jr_03b_71b2

    ld b, b
    ld bc, $0105
    add hl, bc
    inc b
    nop
    nop
    cp a
    rra
    cpl
    ld b, a
    ld b, e
    inc hl
    ld b, c
    ld b, c
    ld a, [hl-]
    rst RST_38
    rlca
    add c
    ld bc, $1806
    ld [$e260], sp
    ld [bc], a
    add [hl]
    jr jr_03b_7248

    ld de, $c0c0
    add [hl]
    ld [bc], a
    nop
    ld b, $09
    add d
    jr nz, @+$4b

    dec bc
    pop bc
    ld [hl], d
    ld [$5128], sp
    inc de
    ld b, [hl]
    ld c, h
    inc e
    add hl, de
    inc [hl]
    ld h, h

jr_03b_7248:
    ret nc

    jr nz, @-$5e

    add b
    nop
    rrca
    inc bc
    ld [bc], a
    sub $2d
    adc c
    dec sp
    ld d, e
    ld a, a
    ld a, a

jr_03b_7257:
    ld a, [hl-]
    rst RST_38
    dec d
    nop
    sub b
    dec b
    adc d
    adc b
    add b
    call nz, Call_03b_50c4
    ld b, b
    nop
    add b
    ld a, [bc]
    ld d, l
    xor d
    ld a, a
    ld a, [hl-]
    nop
    inc bc
    jr z, jr_03b_72c3

    cp d
    ccf
    add b
    ld [bc], a
    ld a, [hl-]
    rlca
    inc bc
    ld b, a
    rrca
    ld a, [hl-]
    nop
    ld [bc], a
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp+$3a
    nop
    dec b
    ld bc, $c001
    ldh [$ffe0], a
    ld a, [hl-]
    ldh a, [rDIV]
    dec c
    ld b, $06
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $ff3a
    ld [bc], a
    ld a, a
    ld a, a
    ld a, [hl-]
    cp a
    ld [bc], a
    nop
    nop
    ld bc, $c000
    ld hl, sp-$01
    rst RST_38
    ld [hl], c
    ld b, e
    rrca
    ccf

jr_03b_72a7:
    ld a, a
    ccf
    ld a, [hl-]
    rst RST_38
    add hl, bc
    jr nz, jr_03b_72a7

    ld sp, hl
    ld a, [hl-]
    db $fd
    ld [bc], a
    rst RST_38
    rst RST_38
    ld h, $7f
    ei
    ld a, [hl-]
    rst RST_38
    inc c
    ret nz

    jp nz, $e0e2

    pop hl
    ldh a, [$fff8]
    ld hl, sp-$01

jr_03b_72c3:
    ld a, a
    ld a, a
    ccf
    cp a
    rra
    ld e, a
    ld l, a
    ccf
    cp a
    sbc a
    sbc a
    ld a, [hl-]
    rst RST_08
    ld [bc], a
    rst RST_28
    ld c, a
    rrca
    rrca
    ld e, a
    rra
    ld e, a
    ld e, a
    rra
    ldh a, [$fff0]
    ldh [$ffe0], a
    ldh a, [$fff4]
    rst RST_38
    ldh [c], a
    inc bc
    inc bc
    rlca
    inc bc
    rrca
    daa
    rst RST_18
    rla
    ld a, [hl-]
    rst RST_38
    rlca
    ldh a, [$fff0]
    ldh [$ffe0], a
    add b
    nop
    ld bc, $0501
    add hl, de
    ld hl, $1040
    ld [hl], c
    add h
    adc b
    rst RST_18
    rst RST_18
    ld a, [hl-]
    ld e, a
    dec b
    ldh [$fff0], a
    ld hl, sp-$04
    db $fc
    ld a, [hl-]
    rst RST_38
    ld [bc], a
    ld a, [hl+]
    ld l, b
    nop
    nop
    ld bc, $ffc7
    rst RST_38
    ccf
    dec sp
    ld a, a
    ld a, [hl-]
    rst RST_38
    inc e
    ld a, [hl-]
    db $fc
    ld [bc], a
    cp $3a
    rst RST_38
    inc bc
    rrca
    rla
    dec de
    ld bc, $0402
    nop
    ld bc, $e7e7
    rst RST_30
    rst RST_30
    rst RST_38
    ld a, [hl]
    sbc h
    add b
    ld e, a
    rra
    ld e, a
    rra
    sbc e
    rra
    sbc [hl]
    dec e
    rst RST_38
    ei
    xor h
    push hl
    or b
    adc $f4
    ld a, [hl-]
    rst RST_38
    ld [bc], a
    ld a, a
    rst RST_38
    add e
    ld a, a
    rst RST_38
    add c
    ld a, [hl-]
    rst RST_38
    rlca
    add b
    ret nz

    ld hl, sp+$3a
    rst RST_38
    inc b
    rrca
    rlca
    inc bc
    inc bc
    pop bc
    ldh [$fff8], a
    db $fc
    ld a, [hl-]
    rst RST_38
    rrca
    ccf
    ld a, a
    ccf
    rra
    rla
    rst RST_20
    ld [hl], e
    xor e
    ld a, [hl-]
    nop
    rlca
    ld a, [hl-]
    rst RST_38
    rrca
    ld b, [hl]
    nop
    ld [$3003], sp
    inc bc
    ld [$0020], sp
    adc c
    db $10
    ld b, l
    jr nz, jr_03b_7378

    ld [hl], d

jr_03b_7378:
    nop
    inc c
    ld de, $0605
    add hl, bc
    ld bc, $0605
    ld c, $8e
    add a
    ld [$cd9d], sp
    jr z, jr_03b_73b8

    db $10
    and c
    pop hl
    inc bc
    ld b, e
    or $04
    ret z

    rst RST_30
    rst RST_00
    adc a
    xor [hl]
    cp a
    ld a, e
    ld a, a
    rst RST_30
    rst RST_38
    ld a, a
    ld a, [hl-]
    rst RST_38
    ld [bc], a

jr_03b_739e:
    cp $fe
    db $fc
    sub b
    ldh [$ffd0], a
    ldh [rNR41], a
    nop
    ld b, b
    add b
    ld [hl], b
    ld a, [hl-]
    nop
    ld [bc], a
    ld b, b
    jp nz, $e0a2

    inc bc
    inc bc
    ld [bc], a
    dec c
    inc c
    ld [bc], a
    dec sp

jr_03b_73b8:
    inc a
    inc de
    jp Jump_03b_6625


    ld b, $87
    ld [bc], a
    ld d, $82
    ret nz

    ldh a, [rTMA]
    add b
    ldh a, [rSC]
    ld [bc], a
    and b
    jr c, jr_03b_73cc

jr_03b_73cc:
    and c
    pop bc
    add l
    rst RST_00
    ld c, $e2
    jp $8fcb


    adc a
    rrca
    cpl
    dec a
    ei
    rst RST_38
    ld sp, hl
    db $e3
    adc h
    jp nz, $9691

    ld b, b
    ld de, $d0c0
    and b
    ret nc

    jr jr_03b_739e

    jr nc, jr_03b_742e

    ld c, b
    and e
    jr z, jr_03b_7441

    ld d, h
    ld a, [hl+]
    ld a, [hl-]
    nop
    ld [bc], a
    ld h, b
    adc b
    inc [hl]
    adc b
    inc h
    ld bc, $1006
    jr jr_03b_743d

    ld d, $28

jr_03b_7400:
    ld c, b
    sub h
    rlca
    ld d, $17
    ld a, [$8030]
    ld b, b
    ld c, c
    reti


    ld a, e
    ld b, a
    inc de
    ld hl, $0a08
    rst RST_38
    rst RST_08
    ld a, [hl-]
    rst RST_38
    inc bc
    cp $fe
    ld hl, sp-$08
    ldh a, [$ffe0]
    ldh [$ffc0], a
    ret nz

    add b
    add b
    inc d
    nop
    ld b, b
    db $10
    ld b, $60
    ld a, [hl-]
    nop
    ld [bc], a

jr_03b_742a:
    jr jr_03b_742c

jr_03b_742c:
    inc b
    ld h, c

jr_03b_742e:
    nop
    ld bc, $6b01
    ld a, h
    ld de, $7465
    ld hl, $9e05
    inc e
    ld e, $8c
    xor b

jr_03b_743d:
    inc a
    ld [hl], $18
    rst RST_20

jr_03b_7441:
    rlca
    adc c
    adc d
    ld e, $14
    jr nc, jr_03b_7400

    ld b, $16
    inc e
    add hl, de
    add hl, sp
    pop af
    rst RST_20
    rst RST_00
    ccf
    ld a, a
    ld a, a
    ld a, e
    ld a, [hl-]
    rst RST_38
    ld [bc], a
    rst RST_18
    adc h
    add h
    ld d, c
    adc l
    adc d
    ret nz

    add d
    pop hl
    sub [hl]
    ld a, [hl+]
    and c
    ld [bc], a
    ld c, d
    ld c, h
    rlca
    ld [hl-], a
    jr z, jr_03b_742a

    or b
    inc h
    ld c, b
    ret nc

    or [hl]
    xor b
    call nz, RST_28
    stop
    db $10
    ld b, b

jr_03b_7477:
    db $10
    inc c

Jump_03b_7479:
    dec c
    ld c, l
    ld a, [bc]
    ld c, l
    ld c, $4e
    dec c
    ld b, e
    ld b, h
    dec bc
    sub h
    inc bc
    jr jr_03b_7477

    ldh [c], a
    add d
    ld a, [hl-]
    nop
    ld [bc], a
    ei
    ld b, $01
    xor b
    ld a, [hl-]
    nop
    ld b, $80
    add b
    nop
    ret nz

    or b
    ld c, b
    jr z, @+$44

    add hl, hl
    nop
    ld h, b
    ld a, [hl-]
    nop
    ld a, [bc]
    ld bc, $0426
    ld a, [hl-]
    nop
    ld [bc], a
    ld bc, $020c
    ld e, $34
    ld a, [hl-]
    nop
    inc bc
    and b
    add b
    ld b, $36
    nop
    ld [bc], a
    ld [bc], a
    inc [hl]
    sbc a
    ret c

    ld a, [$6d07]
    pop bc
    add sp, $1c
    ld b, e
    add sp, $10
    add d
    nop
    ld d, b
    pop hl
    add e
    cpl
    ld l, $bc
    pop af
    scf
    ld l, a
    rst RST_28
    rst RST_18
    sbc a
    ccf
    ld a, e
    ld a, a
    ret nz

    ret nz

    ld a, [hl-]
    add b
    inc b
    nop
    sbc b
    dec hl
    ld a, [hl]
    jr nc, jr_03b_74ed

    ld b, [hl]
    jr nc, jr_03b_74e7

    call nz, Call_000_04a0
    jp nc, Jump_000_2982

jr_03b_74e7:
    ret nz

    adc b
    ld l, l
    ccf

jr_03b_74eb:
    ld a, [hl-]
    rra

jr_03b_74ed:
    ld [bc], a
    rrca
    rlca
    and b
    rst RST_08
    sbc h
    ld [hl], b
    pop hl
    push bc
    add l
    inc d
    db $10
    cp $01
    nop
    call c, Call_03b_5555
    nop
    nop
    ld bc, $8000
    ld b, b
    nop
    ld bc, $8008
    ld d, h
    sub c
    dec h
    add e
    ld c, c
    ld b, h
    ld hl, $8094
    nop
    jr nz, jr_03b_7555

    ld c, b
    and b
    ld b, h
    ld b, h
    ld a, [hl-]
    nop
    rlca
    ld de, $2621
    ld e, d
    ld [$f260], sp
    ld c, d
    add [hl]
    sbc e
    jr jr_03b_7544

    rst RST_08
    ldh a, [$fff0]
    db $fc
    ret nc

    ldh a, [$ff35]
    inc bc
    sub b
    xor d
    inc c
    nop
    ld h, d
    dec bc
    ld l, a
    sub [hl]
    inc e
    ld e, b
    ld [hl], b
    ld h, b
    pop hl
    push bc
    add a
    rla
    ccf
    cp a
    cp a
    rst RST_38

jr_03b_7544:
    rst RST_38
    di
    cp $de
    db $ec
    db $fc
    ld a, b
    ret nc

    ld d, b
    ld bc, $0074
    and h
    nop
    ld b, b
    nop
    cpl

jr_03b_7555:
    nop
    ld b, b
    ld [de], a
    nop
    ld hl, $000c
    inc e
    jr nz, jr_03b_74eb

    ld [bc], a
    jr @+$66

    nop
    ld [$5000], sp
    ld b, l
    ld a, [hl+]
    jr z, jr_03b_758a

    inc h
    inc d
    ld d, b
    ld b, b
    nop
    add b
    ld a, [hl-]
    nop
    dec bc
    sub h
    db $10
    jr nz, jr_03b_7577

jr_03b_7577:
    db $10
    db $10
    ld b, b
    nop
    ld c, c
    inc b
    ld de, $0004
    nop
    jr nz, jr_03b_75b5

    ld [de], a
    xor b
    ld d, h
    ld b, $48
    xor e
    add b

jr_03b_758a:
    ld d, [hl]
    scf
    ld a, [bc]
    ld de, $0805
    dec h
    add hl, bc
    ld [$962c], sp
    ld c, $4b
    add a
    ld c, e
    sub e
    ld c, e
    ld a, [hl-]
    nop
    inc b
    ld a, [hl-]
    add b
    ld [bc], a
    ld b, [hl]
    stop
    ld bc, $7880
    sbc a
    daa
    add c
    sub e
    jp $0e07


    ld a, $f9
    add [hl]

Jump_03b_75b1:
    ret


    jp $b0a0


jr_03b_75b5:
    rst RST_28
    ld h, b
    add sp, -$20
    sbc a
    ld b, a
    rlca
    ld a, $02
    ld [bc], a
    nop
    nop
    ld sp, hl
    cp $dc
    nop
    jr nc, @+$3c

    nop
    ld [bc], a
    inc b
    ld d, b
    inc b
    ld bc, $0044
    ld [de], a
    nop
    db $10
    ld a, [bc]
    ld a, [bc]
    ld [$0605], sp
    ld [bc], a
    inc bc
    ld a, [hl-]
    nop
    inc bc
    add b
    nop
    ld b, b
    ld h, b
    ld a, [hl-]
    nop
    rlca
    ld b, b
    nop
    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    nop
    ld b, d
    ld h, b
    ld l, b
    jp nz, $3b25

    ld a, b
    ld a, l
    add b
    ld d, h
    ld [$7198], sp
    reti


    inc hl
    db $e3
    inc a
    ld a, h
    xor d
    ld b, h
    sub d
    call z, Call_000_3bb2
    ld [bc], a
    ld a, [bc]
    add hl, de
    inc b
    ld b, c
    or b
    ld b, a
    ld d, c
    rlca
    sbc e
    daa
    ld c, d
    dec d
    ld [hl], a
    sbc l
    xor e
    ld a, [hl-]
    ret nz

    rlca
    inc l
    rlca
    dec bc
    ld a, [hl-]
    nop
    inc b
    ld a, [hl+]
    ld l, d
    add b
    cp $1c
    ld a, [hl-]
    nop
    ld [bc], a
    add b
    ld a, [hl-]
    nop
    add hl, bc
    jr jr_03b_762a

jr_03b_762a:
    nop
    ld h, [hl]
    ld a, [hl-]
    nop
    inc bc
    jr jr_03b_766b

jr_03b_7631:
    nop
    inc b
    ld b, d
    stop
    jr nz, jr_03b_7640

    ld b, b
    nop
    ld bc, $3a0c
    nop
    ld [bc], a
    ld [bc], a

jr_03b_7640:
    ld a, [hl-]
    nop
    ld [bc], a
    sub b
    ret c

    ld h, b
    ld h, d
    inc [hl]
    jr c, @+$1f

    ld a, [hl-]
    nop
    dec b
    add b
    add b
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    ld [hl], $0f
    inc sp
    rrca
    ccf
    db $fd
    adc e
    ei
    db $ec
    nop
    sbc a
    ld hl, sp+$7d
    rst RST_38
    db $fc
    cp $cb
    adc b
    inc l
    di

jr_03b_766b:
    ldh a, [$ff74]
    ret nc

    db $10
    add hl, sp
    ld b, a
    nop
    ld l, c
    nop
    inc bc
    ld b, b
    dec b
    ld h, b
    or b
    ret c

    jr c, jr_03b_7690

    ld b, $32
    nop
    sub [hl]
    ld b, c
    ld hl, sp+$0e
    ld bc, $3f00
    nop
    ld c, $f0
    nop
    ld a, $df
    ldh [$ff8e], a
    jr nc, jr_03b_76b2

jr_03b_7690:
    db $fd
    adc l
    adc [hl]
    add e
    inc de
    add c
    ld b, e
    ld a, [hl-]
    nop
    ld c, $70
    ld a, [hl-]
    nop
    inc b
    jr c, jr_03b_76a0

jr_03b_76a0:
    nop
    rst RST_38
    ld de, $1a00
    ld [hl], b
    ld a, [de]
    rst RST_38
    rlca
    ld a, [de]
    db $fc
    dec b
    ld hl, sp-$08
    nop
    jr nz, jr_03b_7631

    nop

jr_03b_76b2:
    db $10
    sub b
    add b
    sub b
    ld a, [de]
    nop
    rlca
    inc c
    nop
    jr jr_03b_76f5

    nop
    nop
    ld bc, $3005
    ld b, b
    ld [$9388], sp
    ld b, e
    ld b, a
    add a
    ccf
    ccf
    cp a
    rst RST_38
    rst RST_38
    cp $fe
    db $fc
    sub b
    add sp, -$22
    rst RST_18
    ccf
    ccf
    ld a, a
    ld a, [de]
    rst RST_38
    ld [$f2fb], sp
    ldh [c], a
    db $ec
    db $ec
    add b
    or b
    or b
    inc bc
    inc bc
    inc b
    ld b, $15
    inc d
    nop
    ld de, $1801
    dec bc
    nop
    jr nc, jr_03b_76f5

    ld a, [bc]
    ld h, d
    ld l, $26

jr_03b_76f5:
    inc b
    sbc c
    or c
    inc b
    ld [hl], $cf
    sbc d
    or d
    jr z, jr_03b_7767

    ld c, b
    ret nz

    and b
    and b
    ld a, [de]
    nop
    inc b
    ld b, b
    add b
    add d
    ld b, a
    rrca
    rlca
    rlca
    inc bc
    ld a, [de]
    nop
    ld [bc], a
    db $fc
    ldh a, [$ffc0]
    add b
    ld a, [de]
    nop
    inc b
    ld e, c
    inc b
    ld b, $02

jr_03b_771c:
    ld [bc], a
    ld a, [de]
    nop
    add hl, de
    dec bc
    rlca
    rst RST_08
    rst RST_28
    rst RST_38
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld hl, sp-$08
    pop af
    pop hl
    db $e3
    jp $8fc7


    ld a, [de]
    rst RST_38
    add hl, bc
    ld a, [de]
    cp $02
    ld a, [de]
    db $fc
    ld [bc], a
    nop
    ld h, b
    ld h, b
    ld bc, $4064
    ld hl, $1900

jr_03b_7742:
    jr jr_03b_771c

    ld b, e
    jr nz, jr_03b_7778

    or c
    sub b
    ld b, $14
    ld [$5928], sp
    ld [de], a
    jr nz, jr_03b_7777

    dec b
    pop de
    jp c, $2555

    ret z

    sub h
    inc [hl]
    nop
    ld b, b
    ld b, b
    ld bc, $0305
    inc bc
    rlca
    add b
    add b
    ld d, b
    add b
    adc b
    ret nz

jr_03b_7767:
    add d
    pop hl
    ld a, [de]
    nop
    ld b, $01
    ld a, [de]
    nop
    ld b, $11
    ld a, [de]
    nop
    inc b
    ld a, b
    ld hl, sp-$08

jr_03b_7777:
    ld a, [de]

jr_03b_7778:
    nop
    inc c
    ld bc, $fe1f
    ld a, [de]
    nop
    inc bc
    jr nz, jr_03b_7742

    add b
    nop
    ld b, $0f
    rrca
    dec c
    ld a, [hl-]
    ld a, [hl-]
    ld a, [$9f68]
    rra
    rst RST_08
    or a
    ld c, e
    add hl, hl
    ld [bc], a
    add hl, hl
    ld a, [de]
    rst RST_38
    ld b, $7f
    ld a, [de]
    rst RST_38
    inc b
    db $fc
    ret c

    add b
    rst RST_38
    rst RST_38
    ld hl, sp-$10
    db $e4
    jp nz, $a0da

    rst RST_38
    rst RST_38
    ld a, a
    ld e, $0e
    add b
    ld b, $36
    db $fd
    ld a, [$34ca]
    sbc b
    ret nz

    ret nz

    nop
    ld l, b
    ret nz

    nop
    nop
    ld [bc], a
    ld [$0218], sp
    ld a, [bc]
    ld b, d
    sub c
    ld [bc], a
    xor b
    ld hl, $8d82
    nop
    ld [$5020], sp
    and c
    add c
    inc bc
    rlca
    ld e, a
    rst RST_18
    ld a, [de]
    cp a
    inc b
    ld a, a
    ld h, a
    rst RST_20
    ld a, [de]
    rst RST_38
    dec b
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fc
    cp $ff
    inc bc
    ld a, [de]
    nop
    ld [bc], a
    inc bc
    rlca
    ld bc, $f000
    ldh [$ffc0], a
    ret nc

    ret nc

    ld c, b
    dec a
    dec de
    nop
    ld [$000c], sp
    jr nz, jr_03b_7867

    ret nz

    ld b, b
    ld l, b
    xor b
    ret nz

    ret nz

    add b
    nop
    nop
    ld h, b
    ld b, b
    ld bc, $0105
    add hl, bc
    inc b
    nop
    nop
    cp a
    rra
    cpl
    ld b, a
    ld b, e
    inc hl
    ld b, c
    ld b, c
    ld a, [de]
    rst RST_38
    rlca
    add c
    ld bc, $1806
    ld [$e260], sp
    ld [bc], a
    add [hl]
    jr jr_03b_7837

    ld de, $c0c0
    add [hl]
    ld [bc], a
    nop
    ld b, $09
    add d
    jr nz, @+$4b

    dec bc
    pop bc
    ld [hl], d
    ld [$5128], sp
    inc de
    ld b, [hl]
    ld c, h
    inc e
    add hl, de
    inc [hl]
    ld h, h

jr_03b_7837:
    ret nc

    jr nz, @-$5e

    add b
    nop
    rrca
    inc bc
    ld [bc], a
    sub $2d
    adc c
    dec sp
    ld d, e
    ld a, a
    ld a, a
    ld a, [de]
    rst RST_38
    dec d
    nop
    add b
    nop
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    jr jr_03b_789b

    ld c, b
    ld b, b
    nop
    nop
    db $10
    db $10
    ld a, b
    ld b, d
    ld b, e
    ld h, b
    jr nc, @+$12

    db $10
    ld a, [de]
    nop
    ld [bc], a
    dec b
    ld a, [de]
    rlca
    inc b

jr_03b_7867:
    ld a, [de]
    nop
    ld [bc], a
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp+$1a
    nop
    dec b
    ld bc, $c001
    ldh [$ffe0], a
    ld a, [de]
    ldh a, [rDIV]
    dec c
    ld b, $06
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $ff1a
    ld [bc], a
    ld a, a
    ld a, a
    ld a, [de]
    cp a
    ld [bc], a
    nop
    nop
    ld bc, $c000
    ld hl, sp-$01
    rst RST_38
    ld [hl], c
    ld b, e
    rrca
    ccf

jr_03b_7896:
    ld a, a
    ccf
    ld a, [de]
    rst RST_38
    add hl, bc

jr_03b_789b:
    jr nz, jr_03b_7896

    ld sp, hl
    ld a, [de]
    db $fd
    ld [bc], a
    rst RST_38
    rst RST_38
    ld h, $7f
    ei
    ld a, [de]
    rst RST_38
    inc c
    add sp, -$04
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    rst RST_38
    nop
    db $10
    jr jr_03b_78bd

    db $10
    stop
    nop
    inc b
    ld b, $80
    add b

jr_03b_78bd:
    ld a, [de]
    nop
    inc bc
    dec b
    ld bc, $0307
    dec bc
    rlca
    rrca
    rlca
    ldh a, [$fff0]
    ldh [$ffe0], a
    ldh a, [$fff4]
    rst RST_38
    ldh [c], a
    inc bc
    inc bc
    rlca
    inc bc
    rrca
    daa
    rst RST_18
    rla
    ld a, [de]
    rst RST_38
    rlca
    ldh a, [$fff0]
    ldh [$ffe0], a
    add b
    nop
    ld bc, $0501
    add hl, de
    ld hl, $1040
    ld [hl], c
    add h
    adc b
    rst RST_18
    rst RST_18
    ld a, [de]
    ld e, a
    dec b
    ld hl, sp-$08
    cp $ff
    push bc
    ld a, [de]
    rst RST_38
    ld [bc], a
    ld a, [de]
    nop
    ld [bc], a
    ld bc, $f83f
    rst RST_38
    rst RST_38
    ld a, h
    ld sp, hl
    rst RST_38
    rst RST_38
    add c
    ld a, a
    ld a, [de]
    rst RST_38
    ld hl, $001a
    ld [bc], a
    add b
    add b
    ldh [$ffe0], a
    ld hl, sp+$1a
    nop
    rlca
    ld a, [de]
    rra
    inc bc
    ld a, [de]
    ccf
    ld [bc], a
    ld a, l
    rst RST_38
    ei
    xor h
    push hl
    or b
    adc $f4
    ld a, [de]
    rst RST_38
    ld [bc], a
    ld a, a
    rst RST_38
    add e
    ld a, a
    rst RST_38
    add c
    ld a, [de]
    rst RST_38
    rlca
    add b
    ret nz

    ld hl, sp+$1a
    rst RST_38
    inc b
    rrca
    rlca
    inc bc
    inc bc
    pop bc
    ldh [$fff8], a
    db $fc
    ld a, [de]
    rst RST_38
    rrca
    ccf
    ld a, a
    ccf
    rra
    rla
    rst RST_20
    ld [hl], e
    xor e
    ld a, [de]
    nop
    rlca
    ld a, [de]
    rst RST_38
    rrca
    ld b, [hl]
    nop
    ld [$3003], sp
    inc bc
    ld [$0020], sp
    adc c
    db $10
    ld b, l
    jr nz, jr_03b_795c

    ld [hl], d

jr_03b_795c:
    nop
    inc c
    ld de, $0605
    add hl, bc
    ld bc, $0605
    ld c, $8e
    add a
    ld [$cd9d], sp
    jr z, jr_03b_799c

    db $10
    and c
    pop hl
    inc bc
    ld b, e
    or $04
    ret z

    rst RST_30
    rst RST_00
    adc a
    xor [hl]
    cp a
    ld a, e
    ld a, a
    rst RST_30
    rst RST_38
    ld a, a
    ld a, [de]
    rst RST_38
    ld [bc], a

jr_03b_7982:
    cp $fe
    db $fc
    sub b
    ldh [$ffd0], a
    ldh [rNR41], a
    nop
    ld b, b
    add b
    ld [hl], b
    ld a, [de]
    nop
    ld [bc], a
    ld b, b
    jp nz, $e0a2

    inc bc
    inc bc
    ld [bc], a
    dec c
    inc c
    ld [bc], a
    dec sp

jr_03b_799c:
    inc a
    inc de
    jp Jump_03b_6625


    ld b, $87
    ld [bc], a
    ld d, $82
    ret nz

    ldh a, [rTMA]
    add b
    ldh a, [rSC]
    ld [bc], a
    and b
    jr c, jr_03b_79b0

jr_03b_79b0:
    and c
    pop bc
    add l
    rst RST_00
    ld c, $e2
    jp $8fcb


    adc a
    rrca
    cpl
    dec a
    ei
    rst RST_38
    ld sp, hl
    db $e3
    adc h
    jp nz, $9691

    ld b, b
    ld de, $d0c0
    and b
    ret nc

    jr jr_03b_7982

    jr nc, jr_03b_7a12

    ld c, b
    and e
    jr z, jr_03b_7a25

    ld d, h
    ld a, [hl+]
    ld a, [de]
    nop
    ld [bc], a
    ld h, b
    adc b
    inc [hl]
    adc b
    inc h
    ret


    and [hl]
    nop
    ld [bc], a
    push de
    dec e
    db $e3

jr_03b_79e4:
    ld e, h
    sub h
    rla
    dec e
    ld c, b
    ld a, a
    db $e4
    ld hl, sp+$3d
    ld c, e
    db $db
    rst RST_30
    ld [hl], a
    and a

jr_03b_79f2:
    rrca
    rst RST_08
    db $ec
    rst RST_38
    rst RST_08
    ld a, [de]
    rst RST_38
    inc bc
    cp $fe
    ld hl, sp-$08
    ldh a, [$ffe0]
    ldh [$ffc0], a
    ret nz

    add b
    add b
    inc d
    nop
    ld b, b
    db $10
    ld b, $60
    ld a, [de]
    nop
    ld [bc], a

jr_03b_7a0e:
    jr jr_03b_7a10

jr_03b_7a10:
    inc b
    ld h, c

jr_03b_7a12:
    nop
    ld bc, $6b01
    ld a, h
    ld de, $7465
    ld hl, $9e05
    inc e
    ld e, $8c
    xor b
    inc a
    ld [hl], $18
    rst RST_20

jr_03b_7a25:
    rlca
    adc c
    adc d
    ld e, $14
    jr nc, jr_03b_79e4

    ld b, $16
    inc e
    add hl, de
    add hl, sp
    pop af
    rst RST_20
    rst RST_00
    ccf
    ld a, a
    ld a, a
    ld a, e
    ld a, [de]
    rst RST_38
    ld [bc], a
    rst RST_18
    adc h
    add h
    ld d, c
    adc l
    adc d
    ret nz

    add d
    pop hl
    sub [hl]
    ld a, [hl+]
    and c
    ld [bc], a
    ld c, d
    ld c, h
    rlca
    ld [hl-], a
    jr z, jr_03b_7a0e

    or b
    inc h
    ld c, b
    ret nc

    or [hl]
    xor b
    call nz, RST_28
    stop
    db $10
    ld b, b
    db $10
    cp c
    cp c
    ld d, b
    or b
    ld d, b
    cp c
    ld e, a
    nop
    jr z, jr_03b_79f2

    sub [hl]
    ret c

    call nc, Call_000_0080
    nop
    ld sp, hl
    ld h, e
    inc hl
    jp nz, Jump_000_1608

    dec bc
    ld [hl], $98
    ld a, [de]
    db $10
    ld [bc], a
    ld a, [de]
    nop
    inc bc
    add b
    nop
    ret nz

    or b
    ld c, b
    jr z, @+$44

    add hl, hl
    nop
    ld h, b
    ld a, [de]
    nop
    ld a, [bc]
    ld bc, $0426
    ld a, [de]
    nop
    ld [bc], a
    ld bc, $020c
    ld e, $34
    ld a, [de]
    nop
    inc bc
    and b
    add b
    ld b, $36
    nop
    ld [bc], a
    ld [bc], a
    inc [hl]
    sbc a
    ret c

    ld a, [$6d07]
    pop bc
    add sp, $1c
    ld b, e
    add sp, $10
    add d
    nop
    ld d, b
    pop hl
    add e
    cpl
    ld l, $bc
    pop af
    scf
    ld h, a
    rst RST_08
    adc a
    ld e, $3e
    ld a, h
    ld a, b
    ret nz

    ret nz

    ld a, [de]
    add b
    inc b
    nop
    sbc b
    dec hl
    ld a, [hl]
    jr nc, jr_03b_7ad4

    ld b, [hl]
    jr nc, jr_03b_7ace

    call nz, Call_000_04a0
    jp nc, Jump_000_2982

jr_03b_7ace:
    ret nz

    adc b
    db $10

jr_03b_7ad1:
    jr nz, @+$08

    inc c

jr_03b_7ad4:
    jr jr_03b_7ae6

    db $10
    and h
    ld b, $0d
    ld c, $07
    ld a, [de]
    nop
    ld [bc], a
    ret nz

    ld b, c
    jr nz, jr_03b_7b43

    pop bc
    adc [hl]
    nop

jr_03b_7ae6:
    inc c
    ld [bc], a
    ld bc, $001a
    inc bc
    ld bc, $0000
    ld d, h
    sub c
    dec h
    add e
    ld c, c
    ld b, h
    ld hl, $8094
    nop
    jr nz, jr_03b_7b3b

    ld c, b
    and b
    ld b, h
    ld b, h
    ld a, [de]
    nop
    rlca
    ld de, $2621
    ld e, d
    ld [$f260], sp
    ld c, d
    add [hl]
    sbc e
    jr jr_03b_7b2a

    rst RST_08
    ldh a, [$fff0]
    db $fc
    ret nc

    ldh a, [$ff35]
    inc bc
    sub b
    xor d
    inc c
    nop
    ld h, d
    dec bc
    ld l, a
    sub [hl]
    inc e
    ld e, b
    ld [hl], b
    ld h, b
    pop hl
    push bc
    add a
    rla
    ccf
    cp a
    cp a
    rst RST_38

jr_03b_7b2a:
    rst RST_38
    di
    cp $de
    db $ec
    db $fc
    ld a, b
    ret nc

    ld d, b
    ld bc, $0074
    and h
    nop
    ld b, b
    nop
    cpl

jr_03b_7b3b:
    nop
    ld b, b
    ld [de], a
    nop
    ld hl, $000c
    inc e

jr_03b_7b43:
    jr nz, jr_03b_7ad1

    ld [bc], a
    jr @+$66

    nop
    ld [$1979], sp
    add hl, bc
    inc bc
    dec hl
    ld b, $0b
    inc d
    add b
    add c
    inc [hl]
    dec [hl]
    and l
    ld l, c
    ld c, e
    rst RST_08
    ld bc, $0c14
    rlca
    add [hl]
    inc bc
    ld b, a
    inc bc
    ld h, b
    jr nc, jr_03b_7b65

jr_03b_7b65:
    db $10
    add b
    ld b, b
    add b
    jr nz, jr_03b_7bb4

    inc b
    ld de, $0004
    nop
    jr nz, jr_03b_7ba4

    ld [de], a
    xor b
    ld d, h
    ld b, $48
    xor e
    add b
    ld d, [hl]
    scf
    ld a, [bc]
    ld de, $0805
    dec h
    add hl, bc
    ld [$962c], sp
    ld c, $4b
    add a
    ld c, e
    sub e
    ld c, e
    ld a, [de]
    nop
    inc b
    ld a, [de]
    add b
    ld [bc], a
    ld b, [hl]
    stop
    ld bc, $7880
    sbc a
    daa
    add c
    sub e
    jp $0e07


    ld a, $f9
    add [hl]
    ret


    jp $b0a0


jr_03b_7ba4:
    rst RST_28
    ld h, b
    add sp, -$20
    sbc a
    ld b, a
    rlca
    ld a, $02
    ld [bc], a
    nop
    nop
    ld sp, hl
    cp $dc
    nop

jr_03b_7bb4:
    jr nc, jr_03b_7bd0

    nop
    ld [bc], a
    inc b
    ld d, b
    inc b
    ld bc, $0044
    ld [de], a
    nop
    inc de
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    jp z, $e7c2

    ld h, [hl]
    and d
    ld l, [hl]
    ld c, b
    add hl, sp

jr_03b_7bd0:
    and d
    ld [hl], c
    ld a, h
    ld a, a
    cp $ff
    cp $ff
    add b
    ld b, b
    jr nz, jr_03b_7c1c

    nop
    nop
    add b
    ld b, b
    ld b, d
    ld h, b
    ld l, b
    jp nz, $3b25

    ld a, b
    ld a, l
    add b
    ld d, h
    ld [$7198], sp
    reti


    inc hl
    db $e3
    inc a
    ld a, h
    xor d
    ld b, h
    sub d
    call z, Call_000_3bb2
    ld [bc], a
    ld a, [bc]
    add hl, de
    inc b
    ld b, c
    or b
    ld b, a
    ld d, c
    rlca
    sbc e
    daa
    ld c, d
    dec d
    ld [hl], a
    sbc l
    xor e
    ld a, [de]
    ret nz

    rlca
    nop
    ld [bc], a
    ld bc, $001a
    inc b
    cp $ec
    nop
    ld hl, sp+$1a
    nop
    inc bc
    inc bc
    ld [bc], a
    ld a, [de]
    nop

jr_03b_7c1c:
    ld [$0018], sp
    nop
    ld h, [hl]
    ld a, [de]
    nop
    inc bc
    jr jr_03b_7c40

    nop
    inc b
    ld b, d
    stop
    jr nz, jr_03b_7c35

    ld b, b
    ld a, [de]
    nop
    ld [$0341], sp
    nop
    inc c

jr_03b_7c35:
    ld d, a
    ld a, [bc]
    ld [de], a
    ld bc, $bf7e
    cp [hl]
    sbc a
    sbc $7c
    ld a, h

jr_03b_7c40:
    dec a
    add b
    ld b, b
    add b
    ld b, b
    add b
    nop
    add b
    nop
    ld [hl], $0f
    inc sp
    rrca
    ccf
    db $fd
    adc e
    ei
    db $ec
    nop
    sbc a
    ld hl, sp+$7d
    rst RST_38
    db $fc
    cp $cb
    adc b
    inc l
    di
    ldh a, [$ff74]
    ret nc

    db $10
    add hl, sp
    ld b, a
    nop
    ld l, c
    nop
    inc bc
    ld b, b
    dec b
    ld h, b
    or b
    ret c

    jr c, jr_03b_7c82

    ld b, $32
    nop
    sub [hl]
    ld b, c
    ld hl, sp+$0e
    ld bc, $3f00
    nop
    ld c, $f0
    nop
    ld a, $df
    ldh [$ff8e], a
    jr nc, jr_03b_7ca4

jr_03b_7c82:
    db $fd
    adc l
    adc [hl]
    add e
    inc de
    add c
    ld b, e
    ld a, [de]
    nop
    ld c, $70
    ld a, [de]
    nop
    inc b
    jr c, jr_03b_7c92

jr_03b_7c92:
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

jr_03b_7ca4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03b_7f23:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03b_7f70:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03b_7f8f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
