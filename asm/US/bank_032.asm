; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

    jr nz, jr_032_4042

    ld [hl], e
    ld b, d
    sbc c
    ld b, l
    db $d3
    ld c, b
    cp e
    ld c, e
    ld e, h
    ld c, [hl]
    ld a, [hl+]
    ld d, d
    jr nc, jr_032_4065

    ret nc

    ld d, a
    cp l
    ld e, c
    ld d, l
    ld e, l
    ld d, c
    ld e, a
    ld c, c
    ld h, d
    ld c, d
    ld h, d
    ld c, e
    ld h, d
    ld c, h
    ld h, d
    db $10
    ld b, b
    rla
    ld b, b
    inc c
    ld [bc], a
    ld bc, $1f5d
    or a
    and [hl]
    ld b, [hl]
    rla
    nop
    dec b
    ld [hl-], a
    add b
    rla
    nop
    inc bc
    ld bc, $6311
    ld bc, $4000
    nop
    add b
    ret z

    ret nz

    ldh [$ffc0], a
    jr nc, jr_032_4052

jr_032_4042:
    jr jr_032_405f

    rrca
    dec bc
    ld [$1708], sp
    nop
    ld [bc], a
    ld c, $9f
    ld c, $04
    ld [bc], a
    inc e
    inc c

jr_032_4052:
    inc d
    inc c
    ld b, $06
    ld a, [bc]
    dec sp
    ld l, d
    ld h, c
    ld a, a
    ld l, d
    jr nc, jr_032_407e

    nop

jr_032_405f:
    nop
    db $fc
    cp $fc
    cp h
    rra

jr_032_4065:
    rlca
    nop
    nop
    dec c
    rla
    nop
    ld [bc], a
    ld h, b
    ldh a, [rNR41]
    rla
    nop
    add hl, bc
    ld bc, $180f
    rra
    scf
    cpl
    dec sp
    ccf
    rst RST_18
    ccf
    ldh a, [$ffc7]

jr_032_407e:
    cp h
    ldh a, [rIE]
    nop
    ldh [$fff8], a
    jr @-$16

    add [hl]
    ei
    sbc c
    rrca
    dec c
    inc c
    ld c, $0e
    rra
    rra
    dec d
    inc sp
    xor b
    or b
    rst RST_38
    rst RST_30
    ld l, [hl]
    ld [hl], a
    ld [hl], $fb
    ld a, e
    dec e
    db $fd
    ld [hl], a
    db $ed
    ld a, $a8
    ldh a, [$fff0]
    add sp, -$18
    ld hl, sp-$48
    ld hl, sp-$08
    dec d
    ld de, $3939
    dec l
    rla
    cpl
    ld [bc], a
    ld a, $60
    ld [hl], e
    dec hl
    xor a
    or [hl]
    sbc e
    push de
    ld h, l
    rst RST_28
    ld h, a
    sbc c
    cp $0e
    dec bc
    rst RST_38
    ld l, b
    ld a, b
    ldh a, [$ffd0]
    or b
    ldh [$ffa4], a
    inc l
    ld [hl], a
    ld [hl], e
    cp c
    cp l
    ld a, a
    ld b, a
    db $fc
    rlca
    ld [$fcf9], a
    sbc h
    cp h
    inc a
    ld a, b
    ldh [$ffef], a
    db $fd
    add hl, de
    ld l, c
    ld l, b
    add h
    db $d3
    ld d, c
    inc d
    add h
    db $fc
    jp hl


    xor a
    db $fc
    ldh [rNR22], a
    nop
    or b
    db $10
    jr z, jr_032_4126

    jr c, jr_032_412c

    ld a, [hl-]
    ld [hl], c
    cp d
    rst RST_38
    rst RST_38
    ld a, a
    ld a, [hl]
    ld a, $1d
    dec e
    rra
    add b
    rla
    ld b, b
    ld [bc], a
    add b
    add b
    rla
    nop
    inc b
    rla
    ld bc, $0002
    inc bc
    rla
    nop
    dec b
    ld bc, $001d
    rlca
    dec b
    rra
    dec de
    ld [hl], a
    ld e, a
    ld a, a
    rla
    ld bc, $0202
    ld bc, $f70a
    dec c
    rla
    ld [bc], a
    inc bc
    ld bc, $1e07
    db $eb
    ei

jr_032_4126:
    rst RST_30
    rst RST_28
    rst RST_18
    cp a
    ld a, a
    rst RST_38

jr_032_412c:
    rst RST_38
    ld bc, $0001
    inc bc
    inc bc
    ld b, $1d
    db $db
    rla
    nop
    inc bc
    ld bc, $0201
    dec c
    rla
    nop
    dec b
    inc bc
    ld [bc], a
    nop
    nop
    cp $fd
    rst RST_18
    and c
    cp $17
    nop
    jr jr_032_415c

    inc a
    ld a, [hl]
    ld [hl+], a
    ldh [rLCDC], a
    ld b, c
    ld bc, $0017
    dec b
    dec c
    ld a, a
    nop
    ld bc, $0703

jr_032_415c:
    ld c, $0a
    sub h
    ld a, [hl]
    nop
    add b
    ldh [rSVBK], a
    jr nc, @+$3a

    jr jr_032_4178

    ld c, $0f
    rlca
    inc b
    ld bc, $0704
    rlca
    or b
    ld e, l
    rst RST_38
    pop af
    ld h, d
    sub c
    ld a, [bc]
    ld e, l

jr_032_4178:
    ldh [$ff30], a
    xor b
    ldh a, [c]
    ld hl, sp+$38
    dec [hl]
    ld b, h
    ld bc, $001e
    dec d
    rrca
    ld a, [de]
    jr z, @+$04

    ld [hl], e
    ld sp, $4303
    ldh [$fff8], a
    ld e, a
    adc c
    ldh a, [c]
    rst RST_38
    rst RST_38
    ei
    sub l
    ld a, [bc]
    ret c

    inc [hl]
    add b
    ldh [$ffc0], a
    ld l, b
    ret nz

    jr nz, jr_032_41df

    sub b
    nop
    nop
    ld bc, $000f
    add hl, de
    ld d, $04
    nop
    ld sp, $1fc6
    ld a, b
    jp Jump_000_0e7f


    rla
    nop
    ld [bc], a
    ldh a, [rSVBK]
    ld hl, sp+$0e
    ld h, [hl]
    inc b
    ld b, $03
    inc bc
    ld bc, $0808
    ld a, [bc]
    rst RST_08
    ld e, b
    ld d, b
    rra
    jr @-$67

    sbc b
    call c, Call_032_7cfc
    ld e, $fe
    ld hl, sp+$76
    and c
    inc sp
    add b
    nop
    jr nc, jr_032_4204

    db $10
    ld d, b
    ld b, b
    ld b, b
    rrca
    rrca
    rra
    ld d, $16
    ld [de], a
    inc de

jr_032_41df:
    db $10
    rst RST_18
    sub e
    adc e
    rst RST_18
    ld e, a
    ld c, a
    ld h, a
    dec hl
    cp $fe
    cp [hl]
    cp $fc
    db $fc
    cp h
    ld hl, sp-$70
    sub b
    add b
    and b
    ld h, b
    ld b, b
    ret nz

    ret nz

    jr c, @+$0f

    rrca
    rlca
    ld h, $3c
    rlca
    nop
    sub l
    add [hl]
    inc bc
    ld h, c

jr_032_4204:
    ld h, b
    ldh a, [c]
    add $15
    ldh a, [rSC]
    and $f6
    rst RST_30
    ei
    db $fc
    ld d, h
    add sp, -$08
    jr nc, jr_032_4224

    ret nc

    ld b, b
    rla
    nop
    or d
    rla
    db $10
    inc bc
    inc d
    ld e, $5f
    ld e, a
    ld a, a
    ccf
    ccf
    rra

jr_032_4224:
    ld c, $0e
    nop
    nop
    rla
    add b
    ld [bc], a
    rla
    nop
    ld b, $17
    ld bc, $0203
    rla
    nop
    dec b
    ld bc, $031e
    dec b
    dec sp
    inc hl
    daa
    ld c, a
    cp a
    rst RST_38
    rla
    ld bc, $0302
    ld [bc], a
    dec c
    ld sp, hl
    di
    rla
    inc bc
    inc bc
    ld [bc], a
    inc b
    add hl, de
    rst RST_30
    rlca
    rrca
    rra
    ccf
    ld a, a
    rla
    rst RST_38
    ld [bc], a
    rla
    ld bc, $0202
    inc c
    add hl, bc
    inc de
    rst RST_20
    rla
    nop
    inc bc
    ld bc, $0301
    rrca
    rla
    nop
    dec b
    inc bc
    inc bc
    rla
    nop
    ld [bc], a
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    rla
    nop
    add hl, de
    inc e
    nop
    ld b, b
    rst RST_38
    ld bc, $0300
    ld bc, $0307
    dec bc
    inc b
    rst RST_38
    dec e
    inc bc
    inc sp
    rrca
    daa
    rra
    ld h, a
    rra
    rst RST_38
    add b
    nop
    ret nz

    add b
    ldh [$ffc0], a
    or b
    ld h, b
    rst RST_38
    ld hl, sp-$70
    call nc, $fce8
    ldh a, [$fffc]
    ld hl, sp-$21
    ld c, a
    ccf
    ld c, a
    ccf
    rst RST_08
    inc hl
    nop
    rst RST_18
    ccf
    rst RST_38
    rst RST_28
    rra
    db $e3
    rra
    xor a
    ld d, b
    cp $fc
    rst RST_38
    cp [hl]
    db $fc
    sbc c
    cp $c7
    ld a, [$f6cb]
    rst RST_38
    set 6, [hl]
    sbc e
    and $b3
    ld c, [hl]
    cp b
    ld b, a
    rst RST_38
    or b
    ld c, a
    or [hl]
    ld c, a
    and e
    ld e, a
    cp e
    ld e, a
    rst RST_38
    rst RST_30
    ld e, b
    rst RST_38
    ld b, a
    cp a
    ld e, a
    rst RST_30
    ld c, $ff
    dec [hl]
    adc $97
    xor $17
    xor $97
    xor $ff
    rst RST_18
    ld l, $f7
    adc $db
    and $cf
    jr nc, @+$01

    call c, Call_032_7123

jr_032_42e7:
    rrca
    ld sp, $290f
    rra
    db $fd
    dec l
    ld l, c
    ld [bc], a
    db $d3
    ld l, $79
    add [hl]
    ld e, $e0
    rst RST_38
    adc [hl]
    ldh a, [$ffc2]
    db $fc
    jp z, $eefc

    db $fc
    rst RST_38
    ld [$2cfc], a
    rra
    inc l
    rra
    inc h
    rra
    rst RST_38
    jr z, @+$21

    ld [hl+], a
    dec e
    ld [hl-], a
    dec c
    rra
    nop
    rst RST_10
    rlca
    nop
    ld a, [$007d]
    ldh a, [c]
    ld a, l
    nop
    jp nz, $fffc

    add $f8
    inc e
    ldh [$ffe0], a
    nop
    ld [$ff07], sp
    rra
    nop
    cpl
    ld e, $5f
    add hl, sp
    ld a, a
    ld l, $ff
    or l
    ld l, [hl]
    xor d
    ld [hl], l
    push de
    ld a, e
    nop
    nop
    rst RST_38
    nop
    ret nz

    ldh [rP1], a
    ldh [$ffb0], a
    and b
    ret nc

    rst RST_38
    or b
    ret nz

    or b
    ret nz

    ld [hl], b
    adc b
    ld [$ff5f], a
    rst RST_28
    ld e, [hl]
    and a
    ld e, a
    ld [hl], e
    rrca
    ld a, c
    rlca
    rst RST_38
    ld e, h
    inc hl
    ld e, h
    inc hl
    ld c, l
    inc sp
    ret nc

    jr z, @+$01

    ret c

    jr nz, jr_032_42e7

    ldh a, [$ff88]
    ldh a, [$ffd8]
    ldh [rIE], a
    ld a, b
    ldh [$ffd0], a
    add sp, -$70
    add sp, $5f
    inc hl
    rst RST_38
    ld c, a
    inc sp
    ld c, a
    inc sp
    ld c, l
    inc sp
    ld l, l
    inc de
    rst RST_38
    ld h, h
    dec de
    ld [hl], h
    dec bc
    halt
    dec bc
    or b
    ldh [$ff7f], a
    ld [hl], b
    ldh [$ff30], a
    ldh [$ffb0], a
    ldh [$fff0], a
    rst RST_30
    nop
    db $fc
    ldh a, [c]
    ld bc, $01e0
    ld h, a
    dec de
    ld e, a
    ld hl, $122d
    rst RST_20
    inc e
    inc bc
    inc bc
    or b
    nop
    or $01
    ret nc

    ldh [$ffb0], a
    cp a
    ret nz

    ldh a, [rNR41]
    ld h, b
    ret nz

    ret nz

    or b
    nop
    ld a, a
    rst RST_38
    nop
    rst RST_38
    ccf
    ccf
    rra
    cpl
    rra
    rst RST_28
    rst RST_38
    rra
    rst RST_20
    rra
    ldh [c], a
    rra
    ldh [$ff1f], a
    ret nz

    cp a
    nop
    jr nz, @-$3e

    and b
    ret nz

    ldh [$ff35], a
    db $10
    and b
    xor $39
    ld [de], a
    jp hl


    rra
    db $ed
    add hl, hl
    db $10
    db $ec
    rra
    add sp, -$01
    rra
    ld l, a
    rra
    ld sp, $1e0e
    nop
    and b
    db $e3
    ret nz

    jr nz, jr_032_442e

    ld [de], a
    ld d, b
    ld de, $111c
    nop
    ld b, $02
    rst RST_38
    ld b, $20
    ld h, $04
    ld b, $00
    ld b, $80
    sbc a
    add [hl]
    ld [hl+], a
    ld h, $00
    ld b, $5d
    ld de, $115d
    add b
    rst RST_38
    add b
    jr nz, @+$22

    nop
    nop
    and b
    and b
    inc d
    rst RST_18
    ld d, $41
    ld b, a
    ld a, [bc]
    ld c, $70
    dec d
    nop
    nop
    rst RST_38
    sbc $38
    or $18
    ld l, h

jr_032_4412:
    sub d
    db $ec
    sub d
    rst RST_38
    ld a, [hl-]
    add $7e
    add b
    cp $00
    or $08
    rst RST_38
    ldh a, [c]
    inc c
    or d
    ld c, [hl]
    ld a, [hl]
    add $fc
    add $3f
    db $fc
    add d
    ld a, h
    add d
    ld a, [hl]
    nop

jr_032_442e:
    add l
    jr jr_032_44a1

    ld [de], a
    ld e, l
    rst RST_38
    or b
    nop

jr_032_4436:
    ld [$1400], sp
    pop bc
    db $10
    inc e
    cp l
    db $10
    cpl
    add b
    ld a, a
    cp a
    ld b, b

jr_032_4443:
    or h
    ld a, [de]
    rst RST_38
    cp [hl]
    ld de, $17b6
    ld e, l
    inc b
    db $dd
    ld [de], a
    stop
    jr z, jr_032_4443

    db $10
    jr c, jr_032_4412

    db $10
    rst RST_38
    cp e
    cp $ff
    ld [bc], a
    rst RST_38
    ld b, b
    rst RST_38
    ld c, a
    rst RST_38
    cp $47
    or $4f
    or $4f
    and $5f
    rst RST_38
    sub $6f
    ldh [$ff5f], a
    ld a, [$7805]
    rst RST_38
    sub a
    ld h, h
    rst RST_38
    ld h, l
    dec d
    jr nz, jr_032_44f1

    dec d
    jr nz, @-$41

    db $10
    rst RST_38
    rst RST_38
    ld b, e
    rst RST_38
    and $ff
    or [hl]
    rst RST_38
    ld [hl], $ff
    rst RST_30
    or $ff
    inc sp
    dec e
    ld [hl+], a
    sbc c
    rst RST_38
    ld e, d
    rst RST_38
    sbc a
    ld e, h
    rst RST_38
    ld a, [de]
    rst RST_38
    ld e, c
    ld sp, $1e20
    ld hl, $ab03
    rst RST_38
    inc b
    dec e
    jr nz, jr_032_44a2

jr_032_44a1:
    ld b, c

jr_032_44a2:
    jr nz, jr_032_44ab

    dec e
    jr nz, @+$09

    rst RST_28
    ld a, [$fa87]

jr_032_44ab:
    rst RST_00
    ld d, e
    jr nz, jr_032_4436

    ld a, [$5607]
    ld d, e
    jr nz, jr_032_44bc

    ld a, [$2340]
    ld bc, $201d
    inc b

jr_032_44bc:
    ld b, c
    jr nz, jr_032_452f

    ld c, [hl]
    dec h
    ld d, d
    daa
    ld e, $21
    ld c, b
    ld hl, $ff05
    rrca
    ld h, l
    ld [hl+], a
    ld [$2150], sp
    sub d
    inc hl
    ld a, d
    dec h
    inc bc
    cp $10
    ld c, h
    ld hl, $256a
    ld e, h
    ld hl, $762e
    add hl, hl
    inc bc
    rst RST_38
    ld b, $4b
    jr nz, jr_032_44eb

    jp Jump_032_6c20


    dec h
    ld [hl+], a
    ld d, b

jr_032_44eb:
    ld hl, $d747
    jr nz, jr_032_456c

    inc hl

jr_032_44f1:
    ld c, h
    ld hl, $4701
    ld [hl+], a
    xor h
    dec h
    ld [bc], a
    sub d
    ld hl, $f707
    inc h
    ret nz

    inc hl
    add [hl]
    ld hl, $276a
    jp c, $b821

    add hl, hl
    ld b, c
    inc b
    ld l, c
    inc h
    ld l, h
    daa
    inc [hl]
    inc sp
    ld e, b
    ld hl, $2000
    ld a, a
    sbc $1b
    ld sp, hl
    rst RST_38
    db $dd
    ld a, [de]

jr_032_451b:
    ld [hl], b
    inc de
    rrca
    nop
    ccf
    rrca
    ld a, a
    rst RST_18
    ccf
    ld a, a
    cpl
    rst RST_38
    ld b, a
    ld [hl], b
    dec d
    adc a
    nop
    ccf
    rst RST_38
    adc a

jr_032_452f:
    ldh a, [$ff9f]
    ldh [$ffdf], a
    ld [hl], b
    ld d, $11
    nop
    or $52
    ld de, $57ff
    sub b
    jr nc, jr_032_4586

    ld a, a
    cpl
    ld a, a
    rst RST_28
    ccf
    ccf
    rrca
    rra
    or b
    nop
    ldh [$ffdf], a
    push af
    ld a, a
    jp z, $c5fa

    rst RST_38
    add b
    rst RST_08
    add b
    dec e
    ld hl, $40ff
    nop
    jr c, jr_032_451b

    ld h, h
    add b
    ldh [c], a
    nop
    rst RST_18
    jp nz, $ec00

    nop
    ldh a, [$ff86]
    ld d, $7f
    nop
    cp a

jr_032_456a:
    ld d, l
    ccf

jr_032_456c:
    ld l, d
    rra
    ld [hl], l
    rra
    ret z

    jr nc, @+$11

    sbc $ba
    inc de
    ld d, l
    rst RST_38
    xor d
    rst RST_38
    sub $33
    ld a, [hl-]
    rrca
    rst RST_18
    ccf
    nop
    jr c, jr_032_458a

    jr jr_032_456a

    ld [hl-], a

jr_032_4586:
    ld [$e707], sp
    rrca

jr_032_458a:
    nop
    xor d
    db $dd
    ld de, $2041
    ld b, a
    cp c
    ld bc, $fe1f
    db $10
    rst RST_28
    rst RST_38
    nop
    inc e
    nop
    ld b, b
    rst RST_38
    ld [$1807], sp
    daa
    add hl, de
    daa
    dec sp
    ld h, a
    rst RST_38
    ld e, [hl]
    inc hl
    ld a, h
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst RST_38
    nop
    nop
    nop
    ret nz

    ld b, b
    add b
    ld h, b
    add b
    rst RST_18
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rNR31]
    nop
    rst RST_38
    nop
    rst RST_38
    rst RST_18
    jr nc, @-$3f

    ld [hl], b
    ccf
    ldh [rNR34], a
    ld h, c
    rst RST_38
    ld e, $61
    ld a, $41
    inc a
    inc bc
    ldh a, [rP1]
    rst RST_38
    sub b
    ld [hl], b
    ldh a, [$ff30]
    ldh [rNR10], a
    ldh [rP1], a
    db $fd
    ld h, b
    dec d
    nop
    ret nz

    ret nz

    or $0f
    inc [hl]
    inc c
    db $fc
    stop
    ld b, h
    ld b, $38
    nop
    ld a, h
    jr c, @-$20

    ld h, h
    ld a, a
    ld [$ba5c], a
    ld a, h
    ld b, h
    jr c, jr_032_4631

    ld c, l
    ld [bc], a
    rst RST_38
    ldh [$ff58], a
    and b
    ld a, b
    ldh [$ff38], a
    or b
    ld e, b
    ei
    adc b
    ld [hl], b
    ld l, d
    ld bc, $70c8
    adc b
    ldh a, [$ff90]
    rst RST_38
    ld l, b
    sub b
    ld l, b
    ret nc

    ld l, b
    ret c

    ld l, b
    ret nc

    di
    ld a, b
    and b
    ld a, l
    ld b, $44
    rlca
    ret nz

    ld h, b
    ret z

    ld [hl], b
    ld a, l
    ret nc

    ld [hl], a
    nop
    and b
    ld e, b
    xor b
    ld e, b
    or b
    ld h, e
    nop
    db $fd
    add b
    and c
    nop

jr_032_4631:
    ret nz

    ld a, b
    ld b, b
    ld hl, sp-$60
    ld hl, sp-$2d
    or b
    ret c

    xor h
    nop

jr_032_463c:
    sbc l
    nop
    xor b
    or e
    inc b
    and b
    ld e, b
    rst RST_20
    ld h, b
    jr jr_032_465f

    ld b, h
    add hl, bc
    stop
    inc bc
    nop
    ld c, $bf
    inc bc
    ld a, b
    rrca
    rst RST_38
    ld a, a
    ld a, a
    ld b, h
    inc b
    ldh [$ffbf], a
    nop
    jr c, jr_032_463c

    ldh a, [$ffc0]
    ret nz

jr_032_465f:
    ld b, h
    ld b, $0e
    rst RST_38
    nop
    ccf
    ld c, $72
    ccf
    call $b97f
    rst RST_38
    ld e, a
    ld [hl], a
    add hl, de
    ld l, [hl]
    inc sp
    ld a, e
    nop
    ld h, b
    rst RST_38
    nop
    ldh a, [$ff60]
    ld a, b
    ldh [$ff34], a
    ld hl, sp+$5a
    rst RST_38
    db $fc
    ld e, d
    db $e4
    call nc, $b020
    nop
    ccf
    cp a
    nop
    jr nz, jr_032_46a9

    inc h
    rra
    ld h, $15
    db $10
    inc hl
    rst RST_38
    rra
    inc de
    rrca
    ld de, $f00f
    nop
    db $10
    ld a, [$0036]
    ld d, b
    dec h
    db $10
    ret nc

    ldh [$ffe0], a
    ret nz

    and b
    rst RST_38
    ret nz

    add c
    ld a, [hl]
    ld b, d

jr_032_46a9:
    inc a
    cp a
    ld b, d
    adc a
    ei
    ld a, [hl]
    ld a, [hl]
    ld b, h
    inc b
    ld a, [hl]
    nop
    db $db
    ld a, [hl]
    and l
    rst RST_30
    ld a, [hl]
    jp $383c


    dec d
    ccf
    nop
    rst RST_08
    inc a
    rst RST_38
    cp a
    ld b, b
    ld c, a
    ccf
    dec sp
    inc b
    ld [hl-], a
    rrca
    rst RST_38
    ld [hl], e
    rrca
    ld h, a
    rra
    ldh a, [rP1]
    db $ec
    db $10
    rst RST_28
    db $f4
    ld [$f088], sp
    inc e
    ld bc, $c038
    sbc b
    rst RST_30
    ldh [$ffcf], a
    ccf
    ld [hl], b
    ld de, $1f67
    ld [hl], b
    rrca
    or a
    ccf
    nop
    rrca
    stop
    call z, $80f0
    ld de, $5f98
    ldh [$ff38], a
    ret nz

    ldh a, [rP1]
    and $03
    ld h, b
    sub d
    inc d
    sbc h
    ld b, h
    inc bc
    nop
    ld de, $60d0
    sub b
    and l
    db $10
    sbc c
    inc de
    add b
    or $b0
    ld [de], a
    and b
    and b
    push hl
    dec b
    ld h, b
    ld h, b
    sub b
    sub b
    rst RST_38
    jr nz, jr_032_4738

    ld d, b
    ld d, b
    ld h, b
    ld h, b
    add b
    add b
    sbc $bc
    dec d
    jr nc, @+$32

    db $10
    db $10
    sbc b
    dec d
    jr nz, jr_032_4749

    rst RST_38
    ld h, b
    ld h, b
    and b
    and b
    or b
    or b
    ldh [$ffe0], a
    cp e
    and b
    and b
    ld b, h
    rlca
    add b

jr_032_4738:
    nop
    ld b, b
    rst RST_30
    db $10
    add b
    cp $f5
    db $10
    ld bc, $0006
    rlca
    add c
    ld a, a
    jp nz, Jump_000_3fff

jr_032_4749:
    add $3b
    and $1b
    rst RST_30
    add hl, bc
    rst RST_38
    ei
    ld bc, $1980
    nop
    sbc h
    ldh [$ff3a], a
    call c, $bf07
    ld hl, sp+$0e
    ldh a, [rNR10]
    ldh [$ff60], a
    rl d
    nop
    rst RST_38
    nop
    jr nc, jr_032_4768

jr_032_4768:
    ret z

    nop
    dec c
    nop
    ld e, $ff
    nop
    ld a, h
    nop
    ld a, [hl]
    ld bc, $013e
    rrca
    db $e3
    nop
    ld bc, $0644
    jr jr_032_477d

jr_032_477d:
    rla
    nop
    ldh a, [rP1]
    inc c
    ld e, h
    rst RST_08
    nop
    ld [hl+], a
    inc hl
    nop
    nop
    rlca
    dec hl
    jr nz, jr_032_4799

    dec de
    nop
    cp $5b
    dec l
    ld [bc], a
    inc bc
    ld e, $1f
    ld e, h
    ccf
    cp b

jr_032_4799:
    rst RST_38
    ld a, h
    cp h
    ld a, [hl]
    cp [hl]
    ld a, a
    rst RST_08
    ccf

jr_032_47a1:
    ld [hl], b
    ei
    rrca
    rra
    stop
    ld [$180c], sp
    inc e
    ld [hl], b
    or d
    and a
    nop
    add b
    and $00
    rra
    inc hl
    ld b, b
    inc bc
    rst RST_08
    nop
    inc bc
    rst RST_38
    ld c, [hl]
    ccf
    ld c, [hl]
    inc sp
    ld e, [hl]
    dec h
    ld a, h
    dec bc
    ld a, [$2024]
    ret nz

    ld [hl+], a
    ld de, $f008
    ld [$28f0], sp
    rst RST_38
    ldh a, [$ff34]
    ld hl, sp+$7c
    inc de
    ld a, b
    rla
    ld a, b
    ccf
    rlca
    jr c, @+$09

    dec sp
    inc b
    ccf
    dec hl
    jr nz, jr_032_4836

    jr nz, @+$01

    ld hl, sp+$04
    ld hl, sp+$06
    db $fc
    cp $00
    cp $ee
    rst RST_28
    nop
    ld b, $00
    ld [bc], a
    add hl, de
    nop
    ld h, b
    nop
    ld hl, $00ef
    jr nz, jr_032_47f9

jr_032_47f9:
    db $10
    rst RST_10
    jr nz, jr_032_480f

    nop
    ld a, [bc]
    cp $d7
    jr nz, jr_032_480b

    nop
    adc b
    nop
    add h
    nop
    ld b, d
    cp a
    nop

jr_032_480b:
    ld [hl-], a
    nop
    ld a, $00

jr_032_480f:
    inc e
    db $db
    jr nz, jr_032_481e

    xor a
    nop
    add hl, bc
    nop
    inc b
    ld c, c
    inc h
    nop
    ld b, a
    jr nz, jr_032_47a1

jr_032_481e:
    di
    nop
    pop hl
    ccf
    db $10
    and $05
    jr c, jr_032_4863

    inc a
    ld a, [hl]
    rst RST_38
    ld a, $7f
    or a
    ld a, a
    ld [hl], e
    rst RST_38
    or c
    ld [hl], e
    rst RST_08
    cp c
    ld a, e
    inc a

jr_032_4836:
    ld a, l
    db $ed
    rla
    or b
    db $10
    ret nz

    jr nz, @+$01

    ret nz

    ld a, $7e
    ld b, [hl]
    ld l, $27
    rrca
    ld sp, $078f
    db $10
    ld bc, $ef18
    nop
    sbc [hl]
    ld de, $028e
    ret nz

    rst RST_30
    ld h, b
    ldh a, [rNR23]
    sbc c
    ld [de], a
    rra
    nop
    inc a
    rra
    rst RST_38
    ld c, e
    ccf
    sbc [hl]
    ld a, a
    pop af
    ld a, a

jr_032_4863:
    sbc h
    ld a, a
    ld l, a
    xor b
    ld a, a
    rst RST_28
    ld a, a
    or $10
    add b
    ld h, b

jr_032_486e:
    dec l
    jr nc, jr_032_486e

    ld d, b
    ld [hl], $00
    ret nc

    ldh [$ff90], a
    ldh [$ff84], a
    ld a, a
    inc sp
    ld a, b
    rra
    ld a, h
    ld hl, $0544

jr_032_4881:
    or b
    ret nz

    ret


    inc d
    ret


    ld b, $ff
    rra
    inc bc

jr_032_488a:
    ccf
    rra
    ld a, a
    ccf
    ld e, a
    ccf
    rst RST_38
    sbc a
    ld a, a
    adc a
    ld a, a
    ld h, b
    rra
    rst RST_38
    nop
    push af
    rst RST_38
    and d
    ld [hl], $fe
    and b
    jr nc, jr_032_4881

    nop
    ret nc

    ldh [$ffaf], a
    add sp, -$10
    add sp, -$10
    ld l, h
    ld sp, $e520
    nop
    rrca
    rst RST_38
    nop
    ld sp, $520f
    ccf
    ld [hl], d

jr_032_48b6:
    ccf
    ret


    rst RST_10
    ld a, a
    sbc [hl]
    ld h, e
    ret c

    ld bc, $7fc0
    jr nc, jr_032_488a

    ldh a, [$ff1f]
    jr c, jr_032_48b6

    add h
    ld hl, sp-$28
    dec c
    db $10
    ld c, [hl]
    ld de, $0bc1
    ld bc, $5bff
    inc l
    inc e
    nop
    ld b, b
    rst RST_38
    nop
    nop
    ld b, $7f
    dec c
    ld a, a
    ld a, [de]
    ld a, a
    rst RST_38
    inc [hl]
    ld a, a
    ld l, b
    ld a, a
    ld d, b
    ld a, a
    jr nz, jr_032_4967

    rst RST_18
    nop
    nop
    add e
    db $fd
    inc bc
    inc de
    ld [$0000], sp
    rst RST_38
    ret nz

    cp a
    ret nz

    cp a
    pop bc
    cp a
    jp $ffbf


    add $bf
    call z, $d9bf
    cp a
    nop
    nop
    rst RST_38
    ld h, [hl]
    cp $ce
    cp $9e
    cp $3e
    cp $ff
    ld a, [hl]
    cp $fe
    cp $fc
    cp $7f
    nop
    rst RST_38
    ld a, d
    ld a, d
    ld [hl], b
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld h, b
    cp [hl]
    ld c, b
    nop

jr_032_4922:
    ld b, b
    nop
    ld b, b
    ld d, b
    nop
    ld d, c
    dec bc
    ld d, a
    rst RST_30
    nop
    dec b
    dec b
    ld d, c
    add hl, bc
    cp $00
    cp $fe
    cp a
    ld a, $3e
    ld e, $00
    nop
    ld c, $78
    nop
    ld b, $f3
    nop
    ld e, $48
    inc b
    ld d, c
    ld [$0007], sp
    rrca
    rlca
    db $fd
    rlca
    ld d, c
    ld b, $f0
    nop
    cp $e0
    rst RST_38
    cp $f7
    ld e, $e0
    ld hl, sp+$51
    inc b
    ld a, h
    nop
    add h
    ld a, b
    ld e, a
    ld hl, sp+$00
    db $fc
    ld a, b
    ld a, h
    ld d, c
    ld b, $01
    pop bc

jr_032_4967:
    nop
    rst RST_38
    inc bc
    ld bc, $0103
    ld b, $03
    rlca
    ld [bc], a
    rst RST_38
    rlca
    inc bc
    add b
    nop
    call z, $dc80
    adc b
    rst RST_38
    ld e, h
    adc b
    cp b
    db $10
    cp b
    db $10
    ldh a, [rNR41]
    ei
    ldh a, [$ffa0]
    add $01
    ld e, $03
    ld l, a
    ld a, [de]
    cp l
    rst RST_38
    halt
    cp a
    ld [hl], b
    rst RST_18
    ccf
    ld a, a
    nop
    ldh [$fffb], a
    nop
    add b
    rst RST_28
    nop
    ret c

    jr nz, jr_032_4922

    ld a, b
    inc [hl]
    rst RST_38
    ld hl, sp-$14
    ldh a, [$fff8]
    nop
    rrca
    nop
    ld a, a
    cp a
    ld c, $ff
    ld a, a
    ld [hl], c
    ld c, $0f
    ld d, c
    ld b, $c0
    rst RST_20
    nop
    ret nz

    ret nz

    ld [de], a
    db $10
    ld d, c
    inc b
    ld a, b
    nop
    ld [$45c2], sp
    nop
    ld hl, sp-$03
    nop
    cp d
    rlca
    cp d
    rlca
    adc $05
    inc a
    ld [$3cf7], sp
    db $10
    ld hl, sp-$25
    ld [bc], a
    nop
    nop
    ld [hl], h
    jr @+$01

    ld a, h
    ld [$007c], sp
    inc a
    ld h, h
    ld a, b
    ld c, h
    cp $aa
    inc b
    ld b, h
    ld a, b
    inc c
    ld a, h
    nop
    ld a, h
    jr nz, jr_032_4a65

    jr c, jr_032_4a58

    ld d, c
    inc bc
    inc a
    ld h, h
    ld a, h
    ld b, b
    ld h, [hl]
    db $10
    ld a, e
    inc e
    ld [hl], b
    ld e, e
    inc d
    ld l, h
    jr nc, @+$7e

    db $10
    ld d, [hl]
    db $10
    di
    ld l, b
    ld [hl], h
    ld e, e
    inc d
    ld d, d
    db $10
    ld c, b
    inc e
    ld h, b
    inc a
    db $f4
    ld h, e
    db $10
    adc h
    inc d
    inc e
    ld d, h
    ld de, $407c
    inc e
    ld h, b

jr_032_4a16:
    sbc $51
    dec bc
    ld bc, $0200
    ld bc, $0796
    db $fc
    nop
    rst RST_38
    cp $f8
    ld e, $fc
    cp $00
    jr nc, jr_032_4a2a

jr_032_4a2a:
    ld a, a
    ld a, b
    jr nc, jr_032_4a16

    ld [hl], b

jr_032_4a2f:
    ld d, b
    jr nz, @+$22

    ld d, c
    inc b
    rst RST_38

jr_032_4a35:
    ld e, a
    jr c, jr_032_4a2f

    ld a, b
    rst RST_20
    jr jr_032_4a9b

    jr nz, jr_032_4a35

    dec a
    nop
    ld [hl], b
    jp hl


    db $10
    ld h, b
    nop
    or b
    ld l, b
    rst RST_38
    ld b, b
    inc a
    jr nz, jr_032_4a6a

    db $10
    rrca
    ld [$fd06], sp
    ld b, $51
    ld [bc], a
    inc bc
    nop
    ld c, $01

jr_032_4a58:
    ld e, $0d
    rst RST_38
    ccf
    ld e, $7e
    ld [hl], $bc
    ld l, h
    sbc b
    ld l, b
    rst RST_30
    ld c, b

jr_032_4a65:
    inc a
    nop
    pop af
    nop
    ret nz

jr_032_4a6a:
    nop
    jr nz, @-$3e

    cp a
    jr nc, jr_032_4ab0

    jr jr_032_4a92

    jr @+$1a

    ld d, c
    rlca
    ld hl, $01ff
    ld a, a
    ld h, e
    rst RST_30

jr_032_4a7c:
    cp a
    db $fd
    ccf
    nop
    rst RST_38
    nop
    jr nz, jr_032_4aa4

    ld a, b
    ldh a, [$ff3c]
    ret c

    cp $ff
    db $ec
    cp $ec
    dec de
    xor $b3
    adc $c9

jr_032_4a92:
    rst RST_38
    ld a, a

jr_032_4a94:
    ld d, c
    ld a, $e1
    ld e, $f3
    inc c
    rrca

jr_032_4a9b:
    db $fd
    nop
    ld h, e
    inc bc
    rst RST_08
    ld a, $cb
    ld a, $83

jr_032_4aa4:
    ld a, [hl]
    rst RST_30
    add a
    ld a, [hl]
    push bc
    ld b, e
    jr nz, jr_032_4acb

    nop
    ld [$ff00], sp

jr_032_4ab0:
    ld a, $1e
    ld a, a
    ccf
    di
    ld l, a
    add sp, $77
    rst RST_38
    db $ec
    ld [hl], e
    or $79
    push af
    ld a, b
    add sp, $70
    rst RST_38
    ld b, b
    ld b, b
    ldh a, [$ffbc]
    ld a, [$fffe]
    rst RST_38
    rst RST_18

jr_032_4acb:
    ld a, [hl]
    rst RST_38
    add b
    ld a, a
    ld h, c
    halt
    nop
    jr nz, jr_032_4a94

    xor $80
    ld hl, $8040
    add b
    ld l, c
    rlca
    ld a, h
    adc d
    ld a, h
    rst RST_10
    cp $7c
    xor d
    sub l
    jr nz, jr_032_4a7c

    cp b
    nop
    inc c
    nop
    rst RST_38
    ld a, [hl-]
    inc b
    ld a, l
    ld [hl+], a
    cp a
    ld e, b
    ldh a, [c]
    dec a
    ccf
    rst RST_08
    ld [hl-], a
    rst RST_18
    ld l, $df
    ld l, $51
    inc bc
    ld [de], a
    ld hl, $c0ff
    add b
    ldh [$ffc0], a
    ldh [$ffc0], a
    rst RST_10
    ld l, $fa
    ret nz

    ld hl, $c557
    jr nz, jr_032_4b45

    ld c, $19
    ld b, $07
    jp hl


    nop
    cp h
    ld hl, $23d0
    and b
    add l
    ld [hl+], a
    ld a, a
    nop
    pop hl
    rst RST_38
    ld e, [hl]
    cp b
    ld h, a
    ld e, a
    jr nc, jr_032_4b94

    jr jr_032_4b5e

    rst RST_38
    rrca
    inc e
    inc bc
    rlca
    nop
    sbc a
    ld h, [hl]
    rst RST_08
    rst RST_38
    ld [hl], $6d
    sub [hl]
    dec sp
    call nz, Call_000_00fe
    db $ec
    rst RST_28
    ldh a, [rNR23]

jr_032_4b3c:
    ldh [$fff0], a
    sbc a
    nop
    add sp, $10
    or h
    ld a, a
    ld c, b

jr_032_4b45:
    cp [hl]
    ld b, h
    sbc [hl]
    ld h, h
    sbc a
    ld h, [hl]
    ld a, [bc]
    ld sp, $7afa
    ld [bc], a
    ld c, $51
    inc c
    nop
    inc b
    jr nz, @+$1e

    nop
    rst RST_30
    scf
    ld d, b
    inc bc
    ld a, h
    nop

jr_032_4b5e:
    nop
    nop
    ld [$ff98], sp
    ldh a, [$ff50]
    ld b, b
    nop

jr_032_4b67:
    ld h, h
    jr nz, @-$36

    ld b, b
    rst RST_38
    ld [hl], h
    add b
    ld [hl], b
    db $10
    inc b
    ld [bc], a
    ld c, $01
    rst RST_38
    dec de
    jr z, jr_032_4b7e

    ld b, d
    ld b, $02
    inc c
    inc b
    db $fd

jr_032_4b7e:
    ld [$0051], sp
    jr c, jr_032_4bcb

    ld l, [hl]
    add d
    ldh [c], a
    jr nz, jr_032_4b67

    ld h, b
    jr nz, jr_032_4bc3

    ld [$5110], sp
    inc bc
    add c
    nop
    ld e, a
    ld b, d
    nop

jr_032_4b94:
    inc h
    nop
    jr jr_032_4bfe

    jr nc, jr_032_4bbe

    ld h, d
    jr nc, jr_032_4b9e

    add c

jr_032_4b9e:
    ld h, b
    ccf
    ld [hl], d
    ccf
    add h
    ccf
    sub [hl]
    ccf
    xor b
    ccf
    cp d
    ccf
    call z, $be3f
    sbc $32
    ld b, e
    nop
    dec h
    nop
    add hl, de
    or $30
    dec h
    ld [bc], a
    ldh a, [c]
    jr nc, jr_032_4b3c

    inc e
    nop
    ld b, b

jr_032_4bbe:
    rst RST_38
    inc c
    nop
    ld d, $0c

jr_032_4bc3:
    dec hl
    ld e, $51
    ccf
    rst RST_38
    and b
    ld a, a
    pop hl

jr_032_4bcb:
    ld a, a
    ld d, e
    ccf
    ld l, $1f
    db $fd
    nop
    db $10
    ld [bc], a
    add b
    nop
    ret nz

    add b
    ldh [$ffc0], a
    rst RST_38
    ld [hl], b
    ldh [$ffb8], a
    ldh a, [rNR33]
    rrca
    ld a, [bc]
    rlca
    rst RST_18
    dec b
    inc bc
    ld [bc], a
    ld bc, $1001
    inc bc
    nop
    ld e, h
    rst RST_38
    ld hl, sp-$4c
    ld hl, sp+$68
    ldh a, [$ffd0]
    ldh [$ffa0], a
    ei
    ret nz

    ret nz

    db $10
    ld [bc], a
    inc bc
    nop
    rlca

jr_032_4bfe:
    nop
    rrca
    cp a
    rlca
    inc e
    inc c
    jr @+$0a

    ld [$0210], sp
    inc e
    rst RST_38
    inc bc
    ccf
    jr @+$80

    add hl, sp
    ld a, a
    inc a
    rst RST_38
    rst RST_30
    ld [hl], h
    cp $75
    ld e, d
    nop
    ld h, l
    ld [hl], b
    add b
    ld hl, sp-$01
    jr nc, @+$3e

    ret c

    inc a
    ret c

    cp [hl]
    ld d, h
    ld a, $ff
    call nc, $947e
    ld a, [hl]
    sub h
    cp $65
    cp $ff
    ld [hl], l
    ld a, [hl]
    add hl, sp
    ld a, [hl]
    dec a
    jr c, jr_032_4c4f

    jr c, @+$01

    ld [$0038], sp
    jr c, jr_032_4c56

    cp $14
    cp $f9
    inc d
    ld l, b
    ld bc, $0086
    ld d, h
    ld a, $14
    jr nc, @+$12

    rst RST_38
    ld a, $00

jr_032_4c4f:
    rra
    ld [$0e1f], sp
    rra
    inc c
    db $f4

jr_032_4c56:
    sub h
    nop
    sbc c
    rlca
    ld [$0096], sp
    ld [bc], a
    inc hl
    inc e
    cpl
    rst RST_38
    db $10
    ccf
    nop
    ld hl, sp+$40
    ld a, b
    jr nz, jr_032_4ce6

    sub $b3
    nop
    inc a
    db $10
    cp b
    ld [bc], a
    ld [$01be], sp
    ld a, $04
    and $c4
    ld bc, $023f
    jp z, $1001

    inc bc
    ld c, $00
    ld de, $0eeb
    dec de
    reti


    nop
    ld c, $d1
    inc bc
    inc b
    dec c
    ld b, $e7
    add hl, bc
    ld b, $0f
    jr z, jr_032_4c98

    ld de, $9c04
    nop
    inc d

jr_032_4c98:
    rst RST_38
    ld [$0018], sp
    inc sp
    nop
    ld a, a
    inc sp
    rst RST_08
    rst RST_38
    ld a, [hl]
    xor [hl]
    ld e, a
    rst RST_30
    add hl, bc
    ccf
    rrca
    ld l, a
    ei
    inc e
    cp $28
    nop
    add b
    nop
    ld a, [hl]
    add b
    rst RST_08
    rst RST_38
    ld a, $3f
    rst RST_38
    pop af
    ld a, a
    ld h, a
    ld sp, hl
    rst RST_08
    db $fd
    rst RST_30
    db $10
    ld bc, $0004
    adc $04
    xor [hl]
    call nz, $daff
    db $ec
    db $e4
    ld hl, sp-$08
    ret nz

    cp [hl]
    ld b, e
    rst RST_18
    sub c
    ld l, [hl]
    ld e, a
    jr nz, jr_032_4d06

    db $ec
    ld b, $4b
    or a
    rst RST_08
    rst RST_38
    ld bc, $1f2c
    rrca
    inc b
    stop
    sub b
    ldh [$ffdf], a

jr_032_4ce6:
    db $10
    ldh [$ff60], a
    add b
    add b
    db $ec
    ld b, $9f
    ldh [rIE], a
    rst RST_18
    ld h, b
    rst RST_38
    ld hl, $03fe
    db $fc
    rlca
    cp $10
    inc bc
    db $fc
    inc bc
    rst RST_38
    rlca
    rst RST_38
    ld b, h
    rst RST_38
    di
    ret nz

    ld a, a
    ld a, [hl-]

jr_032_4d06:
    inc bc
    db $10
    ld [bc], a
    ccf
    ldh [$ff7f], a
    ret nz

    ld e, a
    rst RST_38
    add d

jr_032_4d10:
    db $fd
    ld b, $fd
    ld l, c
    inc d
    ld a, a
    ld [hl], a
    db $10
    rst RST_18
    rst RST_38
    add b
    rst RST_38
    ld c, $f9
    ld l, c
    db $10
    ccf
    ldh [$ffaf], a
    rst RST_38
    ret nz

    rst RST_38
    ld bc, $1066
    rrca
    ld l, d
    dec d
    cp $7f
    rlca
    rst RST_38
    inc h
    rst RST_38
    ld h, b
    sbc a
    ldh [$ffec], a
    dec b
    rst RST_38
    rlca
    nop
    ld a, a
    rlca
    cp b
    ld a, a
    ld hl, sp+$47
    rst RST_38
    cp a
    ld a, b
    sbc a
    ld a, a
    sbc a
    ld a, a
    ccf
    nop
    rst RST_18
    rst RST_38
    ccf
    pop bc
    rst RST_38
    ld bc, $12d5
    ldh [$ff1f], a
    rst RST_18
    db $fc
    db $e3
    ldh [rP1], a
    db $fc
    call c, Call_000_0310
    rst RST_38
    cp l
    nop
    rst RST_20
    db $10
    ld bc, $1ffe
    pop hl
    db $10
    ld bc, $ffc0
    nop
    ld hl, sp-$40
    inc [hl]
    ld hl, sp+$1c
    add sp, -$04
    ccf
    jr jr_032_4d10

    ld hl, sp-$61
    ld a, a
    cp a
    ld bc, $cc20
    ld de, $8fff
    ld a, a
    rst RST_00
    ccf
    inc sp
    rrca
    sbc a
    db $fc
    ld e, a
    add [hl]
    rst RST_38

jr_032_4d88:
    ldh [c], a
    rst RST_38
    ldh a, [c]
    dec d
    jr nz, jr_032_4d88

    add hl, de
    ld [hl+], a
    sbc a
    rst RST_28
    rra
    ccf
    rst RST_38
    ld a, a
    inc hl
    ld [hl+], a
    add hl, hl
    inc hl
    call c, $f8bf
    call c, $f4f8
    ld hl, sp-$1c
    dec [hl]
    inc h
    call nz, $f8ef
    inc c
    inc bc
    inc bc
    db $ec
    add hl, bc
    nop
    ldh a, [c]
    rst RST_38
    cp a
    ld [bc], a
    rst RST_38
    jp nz, $303f

    rrca
    ld b, b
    dec h
    rst RST_38
    cp e
    rst RST_38
    ld a, [hl]
    and h
    db $10
    ld c, $f0
    ld [hl], b

jr_032_4dc1:
    ld d, l
    inc d
    add h
    di
    ld hl, sp+$38
    add hl, sp
    inc b
    ld a, [hl]
    inc d
    nop
    ld a, a
    ccf
    rst RST_38
    rst RST_38
    ld c, $fe
    ld a, a
    rst RST_38
    nop
    ld d, l
    ld a, [hl+]
    ld a, a
    cp $8b
    jr nz, @-$3e

    nop
    jr nz, @-$3e

    ldh a, [rP1]
    db $10
    rst RST_18
    ldh [$fff0], a
    nop
    ld h, b
    add b
    sbc d
    ld hl, $297e
    ld a, a
    ld a, a
    add hl, hl
    ld a, a
    jr z, jr_032_4e6f

    ld a, [hl+]
    ld a, l
    adc e
    ld [hl+], a
    rst RST_38
    ld a, a
    ld a, [hl+]
    and b
    ld b, b
    ldh [$ffc0], a
    ldh [rP1], a
    ld a, l
    ldh [$ff99], a
    inc h
    ld h, b
    add b
    ld d, l
    ld a, [hl+]
    ccf
    ld b, e
    ld a, [hl+]
    di
    ld h, b
    add b
    ld [hl], h
    add hl, hl
    ret nz

    ld de, $071f
    ld a, a
    rra
    ld a, a
    cp $3f
    jr jr_032_4e39

    ld bc, $060e
    ld c, c
    ld [bc], a
    rst RST_08
    add b
    nop
    ld b, b
    add b
    db $f4
    ld hl, $1356
    sub b
    ld h, b
    db $eb
    add sp, $70
    or b
    ld bc, $ec38
    dec b
    add c
    nop
    ld b, d
    xor a
    nop
    inc h
    nop

jr_032_4e39:
    jr jr_032_4e51

    jr nc, jr_032_4e61

    ld [de], a
    jr nc, jr_032_4dc1

    nop
    db $10
    ccf
    ld [hl+], a
    ccf
    inc [hl]
    ccf
    ld b, [hl]
    ccf

jr_032_4e49:
    ld e, b
    ccf
    ld l, d
    ccf
    ld a, h
    ccf
    adc [hl]
    ccf

jr_032_4e51:
    nop
    and b
    ccf
    or d
    ccf
    call nz, $d63f
    ccf
    add sp, $35
    stop
    dec bc
    ld b, b
    inc bc

jr_032_4e61:
    rra
    ccf
    ld a, h
    ld hl, sp-$08
    ld [hl], b
    jr nz, jr_032_4e49

    ld hl, sp-$02
    ld a, [hl]
    ccf
    ccf
    ld a, [hl]

jr_032_4e6f:
    ld a, h
    nop
    inc bc
    dec c
    scf
    ld l, [hl]
    rst RST_28
    jp c, Jump_032_7fb7

    cp h
    cp l
    ldh [$ffdf], a
    cp h
    ld a, e
    pop hl
    nop
    ret nz

    ldh a, [rBCPS]
    sub h
    call z, Call_032_5fae
    dec bc
    nop
    dec b
    rlca
    ld a, c
    rra
    ld a, a
    db $e3
    ld hl, sp-$11
    rst RST_20
    di
    rst RST_38
    ld hl, sp-$02
    ldh a, [c]
    daa
    dec c
    db $dd
    ei
    cp $c0
    or b
    ret c

    ldh a, [$ff60]
    ret nz

    add b
    add b
    inc bc
    rrca
    rra
    ccf
    ld a, a
    ld a, [hl]
    db $fd
    db $fd
    dec bc
    rst RST_38
    inc b
    ld h, e
    rst RST_38
    call z, $c000
    ld hl, sp+$0b
    db $fc
    ld [bc], a
    ld l, h
    inc a
    ld bc, $0f07
    rra
    ld e, $1d
    ld a, $3e
    dec bc
    rst RST_38
    ld [bc], a
    ld h, a
    add e
    add c
    ld b, d
    jr nc, jr_032_4ecc

jr_032_4ecc:
    ldh [$fff8], a
    call z, Call_000_3ab6
    dec sp
    ld c, e
    cp h
    db $f4
    cp b
    sub b
    ret c

    rst RST_38
    push de
    ld a, a
    nop
    nop
    inc bc
    rrca
    rrca
    rra
    rra
    rrca
    db $fc
    ld hl, sp-$20
    ret nz

    add b
    add b
    db $fc
    ldh a, [rPCM34]
    ld a, d
    ccf
    ccf
    inc de
    ld a, [de]
    ld a, [de]
    dec e
    rst RST_20
    db $fd
    ld a, [hl-]
    ld d, a
    cpl
    xor l
    db $eb
    ld l, a
    ld a, l
    push de
    pop af
    ld l, e
    cp d
    ld a, [$1af2]
    jp Jump_032_7e9f


    rra
    rlca
    nop
    nop
    inc bc
    rst RST_38
    rst RST_38
    ld a, a
    add b
    ldh [$fff0], a
    rst RST_38
    rst RST_38
    pop hl
    add c
    cp $00
    ld bc, $ff03
    cp a
    cp a
    ld e, h
    cp d
    ld e, l
    cp h
    ld d, [hl]
    ld a, [hl+]
    dec d
    db $ed
    db $d3
    scf
    rrca
    add e
    ld b, a
    dec hl
    sub c
    db $fd
    ld a, [$f1ec]
    pop bc
    ldh [c], a
    jp nc, Jump_000_008c

    ret nz

    ld hl, sp-$06
    db $fd
    xor d
    ld d, h
    xor b
    ld a, $3d
    ld e, $2f
    ld [hl-], a
    ccf
    add hl, sp
    scf
    ld [$f107], sp
    ld a, $63
    ld e, b
    dec a
    ld bc, $9b8b
    ld h, [hl]
    cp $64
    ld a, h
    cp b
    and h
    ld [bc], a
    rla
    dec e
    ld a, [hl-]
    rst RST_18
    cp $7c
    ld a, [$183e]
    nop
    ld [$3e3e], sp
    ld a, a
    ld a, $3e
    ld [$000b], sp
    dec b
    ld [hl], $43
    ret nz

    jr nc, jr_032_4f79

    ld [bc], a
    ld bc, $4a00
    inc a
    call Call_000_1c33
    inc bc
    ld bc, $f683

jr_032_4f79:
    ld [hl], $ee
    db $fd
    ret c

    db $10
    pop af
    ld a, [de]
    rrca
    dec e
    scf
    dec hl
    ld a, a
    ld c, a
    ld h, a
    sub a
    rst RST_20
    di
    jp nz, $d7c5

    ld [$f1e9], a
    ld c, [hl]
    adc d
    inc l
    ld a, [$f5d8]
    ld a, l
    ld [hl], e
    ret nz

    ldh [$ffb0], a
    sbc b
    xor b
    call c, $dcd4
    cp $7e
    ld d, l
    cp [hl]
    cp $f3
    rst RST_30
    and h
    db $e4
    add $77
    ei
    dec l
    ld a, [$658d]
    ld a, h
    or $f4
    cp $aa
    call z, Call_032_5aa8
    inc c
    rrca
    rlca
    ld b, $07
    dec b
    dec b
    ld c, $dc
    ld h, d
    inc a
    adc [hl]
    ld d, e
    ld d, $9e
    pop de
    jp nz, $10de

    jp c, Jump_032_7a66

    inc c
    db $ec
    ldh [$ffa0], a
    ld [hl], b
    or b
    ld c, b
    jr jr_032_5013

    ld e, $7b
    ld [hl], e
    ld c, a
    ld e, c
    ld [hl], a
    ld e, a
    ld a, [hl-]
    ld a, $b7
    ld b, c
    ld a, $43
    cp a
    rst RST_38
    sbc l
    sub d
    db $fd
    pop af
    sbc [hl]
    ld sp, $dd3e
    ld e, e
    ld e, [hl]
    ld b, b
    ld b, b
    ret nz

    dec bc
    add b
    ld [bc], a
    nop
    add b
    dec bc
    nop
    inc bc
    add b
    add b
    nop
    nop
    rst RST_18
    xor a
    rst RST_28
    ccf
    rra
    ld a, [de]
    dec [hl]
    ld e, d
    jp c, $f3ee

    db $ec
    db $e3
    or c
    ld e, e
    xor l
    sub a
    ld h, a
    rst RST_38
    rst RST_38

jr_032_5013:
    rst RST_20
    push af
    ld [$fce5], a
    db $fc
    db $ec
    call z, Call_032_70dc
    or b
    ld e, b
    ld l, d
    ld e, b
    ld [hl-], a
    dec d
    dec de
    ld h, $29
    inc [hl]
    cpl
    ld c, e
    rst RST_08
    add b
    cp a
    rst RST_30
    ld c, a
    pop de
    or [hl]
    ld [hl], $4c
    inc e
    xor b
    add sp, $48
    ret c

    dec de
    ld a, l
    cp h
    ld e, [hl]
    xor a
    ld d, l
    ld a, [hl+]
    dec d
    ld h, [hl]
    ld [hl], $9b
    ld l, [hl]
    ld sp, $a78c
    ld b, e
    ld d, $17
    rst RST_28
    scf
    rst RST_30
    ld l, d
    ld h, l
    jp z, RST_00

    ret nz

    add sp, -$0b
    xor d
    ld d, h
    xor b
    inc c
    jr nz, jr_032_509a

    add d
    inc b
    inc b
    adc b
    ld d, b
    db $10
    inc b
    nop
    ld bc, $4040
    ld bc, $0082
    nop
    inc bc
    rrca
    ld sp, $3f5f
    ld c, h
    nop
    ld a, a
    jp $ffff


    jp Jump_000_1ffc


    nop
    nop
    ret nz

    ldh a, [$fff8]
    ld hl, sp+$70
    and d
    dec bc
    nop
    ld b, $06
    nop
    nop
    inc e
    rlca
    db $10
    jr @+$0e

    dec bc
    nop
    ld [bc], a
    inc c
    ret c

    ldh a, [c]
    ld [hl+], a
    inc b
    ld bc, $4000
    jr nz, jr_032_5097

jr_032_5097:
    add b
    dec bc
    nop

jr_032_509a:
    rlca
    ld bc, $0303
    dec bc
    nop
    inc b
    db $fc
    rst RST_38
    db $fc
    dec bc
    nop
    dec b
    ld [hl], b
    ld hl, sp+$0b
    nop
    inc bc
    ld bc, $0203
    ld [bc], a
    dec bc
    nop
    ld [bc], a
    ld hl, sp-$7c
    add d
    ld b, e
    jr nc, jr_032_50c4

    nop
    ld [bc], a
    jr nc, jr_032_5135

    cp h
    inc a
    ld c, h
    ld b, d
    ld [de], a
    ld b, h
    ld l, h

jr_032_50c4:
    daa
    nop
    jr nz, jr_032_50c8

jr_032_50c8:
    nop
    ld bc, $0004
    stop
    nop
    db $10
    ld [bc], a
    inc b
    db $10
    dec bc
    nop
    inc bc
    ld [$0d19], sp
    inc c
    ld bc, $0d0b
    ld [bc], a
    ld b, $ff
    rst RST_38
    db $fd
    ld a, [hl]
    ccf
    cp [hl]
    db $fd
    rst RST_38
    ld c, [hl]
    xor $ce
    sbc h
    db $fc
    inc e
    db $ec
    db $f4
    inc a
    ld h, b
    ld bc, $000b
    ld b, $80
    ld a, a
    rra
    rrca
    nop
    nop
    ld e, $7e
    ld bc, $feff
    db $fc
    nop
    ld h, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    ld l, b
    ccf
    dec d
    ld [hl], e
    inc a
    rrca
    dec bc
    nop
    inc b
    ldh a, [c]
    inc c
    ldh a, [$ff0b]
    nop
    rlca
    ld b, $03
    ld d, [hl]
    db $fc
    xor b
    ld [bc], a
    inc bc
    ld bc, $1d1c
    dec d
    rla
    dec de
    jr jr_032_5145

    rst RST_38
    pop bc
    sbc h
    and a
    ld b, e
    ccf
    adc h
    sbc h
    ld hl, sp+$00
    sbc b
    add b
    call nz, $fdde

jr_032_5135:
    jr z, jr_032_5159

    ld b, l
    jr nz, jr_032_513b

    ld h, e

jr_032_513b:
    push af
    ld b, c
    inc h
    nop
    inc d
    nop
    ld b, c
    nop
    ld b, c
    nop

jr_032_5145:
    inc d
    dec bc
    nop
    dec b
    inc bc
    dec bc
    nop
    ld b, $b3
    add $33
    inc c
    inc bc
    dec bc
    nop
    ld [bc], a
    ld [$f038], sp
    nop

jr_032_5159:
    ldh [$ffe0], a
    dec bc
    nop
    ld [bc], a
    ld [bc], a
    inc c
    inc e
    jr jr_032_518b

    jr z, jr_032_51bd

    jr jr_032_517a

    inc sp
    ld a, $3d
    rra
    inc e
    dec c
    pop de
    rst RST_10
    or a
    add a
    rst RST_20
    ld c, $fe
    adc h
    nop
    nop
    ld b, b
    ld h, b
    ld [hl], b

jr_032_517a:
    jr nc, @+$3a

    jr c, @+$03

    ld bc, $7bbb
    ld c, a
    ld l, a
    ld c, e
    ld e, d
    db $fd
    rst RST_08
    adc a
    ld b, $82
    rst RST_20

jr_032_518b:
    push af
    ld a, l
    ld hl, sp-$08
    adc d
    ld [bc], a
    ld b, [hl]
    ld a, $6e
    call c, Call_000_0207
    nop
    ld bc, $0200
    ld [bc], a
    ld bc, $e1df
    ei
    ld [hl], a
    xor h
    pop hl
    ld a, a
    ccf
    di
    rst RST_38
    xor $34
    sbc b
    ld c, h
    ld a, [$00f8]
    ld d, b
    add b
    ld c, b
    or h
    db $e4
    jp nz, $0ee1

    inc e
    jr nc, jr_032_51df

    ld c, $2a
    dec c
    add hl, bc

jr_032_51bd:
    ld a, b
    jp $bcc3


    ret nz

    add sp, -$6e
    sub c
    ld [bc], a
    ldh a, [c]
    or c
    ld c, $c1
    ld [$6766], a
    add b
    add b
    dec bc
    nop
    dec c
    ld d, b
    jr nc, jr_032_51e5

    nop
    nop
    dec b
    ld a, [bc]
    ld a, [hl-]
    daa
    ld de, $030c
    nop

jr_032_51df:
    ld b, b
    and b
    or b
    sbc b
    ld hl, sp+$0b

jr_032_51e5:
    nop
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    dec bc
    jr jr_032_51ef

    jr nc, jr_032_520f

jr_032_51ef:
    add b
    ldh [$ff50], a
    dec a
    ccf
    rrca
    dec c
    rlca
    add hl, de
    ld e, $0f
    ccf
    rst RST_30
    ld [hl], b
    rst RST_38
    ldh [$ffcf], a
    ldh a, [$ff30]
    ld hl, sp-$08
    ldh a, [rNR41]
    ld [hl], b
    jr nc, @-$0e

    ld h, b
    nop
    nop
    ret nz

    ld h, b
    ret nc

jr_032_520f:
    ld l, d
    ccf
    dec d
    sbc a
    adc $67
    ld de, $030e
    ret nz

    ld d, b
    ld hl, sp+$18
    ldh a, [$ffc0]
    nop
    add l
    adc a
    ld a, [bc]
    dec bc
    nop
    ld [bc], a
    db $10
    dec c
    ld d, [hl]
    db $fc
    xor b
    inc e
    nop
    ld b, b
    rst RST_38
    nop
    nop
    ld b, b
    ld b, b
    dec l
    ld a, a
    ld a, [hl]
    ld b, c
    ld l, a
    ld a, a
    ld b, c
    ld [hl], e
    ld e, l
    ld a, [bc]
    dec bc
    ld a, e
    ld d, l
    ld a, [de]
    inc bc
    rst RST_38
    ld h, e
    ld a, l
    add hl, de
    rra
    rlca
    rlca
    ld bc, $fd01
    nop
    ld a, [hl+]
    ld [bc], a
    db $10
    db $10
    dec b

jr_032_5251:
    rra
    ld e, $11
    rst RST_28
    rra
    ld de, $1719
    jr c, jr_032_5264

    dec e
    inc de
    dec e
    sbc a
    inc de
    add hl, de
    rla
    add hl, bc
    rrca

jr_032_5264:
    ld h, $07
    ld d, d
    dec b
    and b
    ld a, a
    ldh [rLCDC], a
    and b
    ld h, b
    and b
    jr nz, jr_032_5251

    ld h, [hl]
    dec b
    ld a, c
    ld h, b
    ld h, e
    nop
    ld h, h
    ld bc, $e0e0
    jr nz, jr_032_529d

    ld a, [hl+]
    ld bc, $1cff
    nop
    dec sp
    inc e
    ld a, h
    inc hl
    xor a
    ld e, h
    sbc a
    rst RST_08
    ld a, $71
    rst RST_38
    db $e3
    adc e
    nop
    ld a, [hl+]
    ld bc, $ff80
    nop
    ret nz

    add b
    ldh [rLCDC], a
    ldh [$ff80], a
    sub b
    rst RST_38

jr_032_529d:
    ldh [$ffe8], a
    sub b
    dec e
    rst RST_38
    inc e
    rst RST_38
    dec e
    rst RST_38
    cp $e3
    db $fc
    db $e3
    db $fc
    rst RST_38
    nop
    sbc a
    rst RST_38
    ldh [$ff7f], a
    ld hl, sp-$08
    nop
    db $fc
    nop
    db $e4
    rst RST_38
    sbc b
    ldh [c], a
    cp h
    ldh [c], a
    ld a, h
    sbc $3c
    db $dd
    rst RST_38
    ld a, $dd
    ld a, $7d
    ldh a, [c]
    ld a, c
    or $8f
    cp $c3
    ld [bc], a
    ld a, c
    and $73
    db $ec
    ld [hl], e
    db $ec
    db $e3
    jp hl


    ld a, $d0
    ld bc, $01bc

jr_032_52d9:
    db $dd
    pop de
    ld [bc], a
    cp a
    call z, $ffaf
    call c, $dcaf
    ld [hl], e
    sbc h
    ld [hl], e
    cp h
    ld [hl], e
    rst RST_18
    cp h
    rst RST_08
    inc a
    adc a
    ld a, h
    call nc, $f307
    ld l, $ff
    ei
    ld h, $dd
    ld h, $8f
    ld a, h
    di
    ld a, h
    rst RST_38
    ld [hl], e
    db $fd
    ld [hl], c
    rst RST_38
    adc a
    db $fc
    sbc a
    ldh [rIE], a
    cp $03
    ccf
    nop
    db $dd
    ld [hl+], a
    rst RST_38
    add b
    rst RST_38
    call nz, $c4f8
    ld hl, sp-$04
    ld [$00fc], sp
    rst RST_38
    jr c, jr_032_52d9

    ret nz

    nop
    ld bc, $7e00
    ld bc, $ffdf
    ld a, [hl]
    add b
    ld a, a
    ld a, a
    ld d, d
    inc b
    cp [hl]
    nop
    rst RST_38
    ld a, c
    adc [hl]
    ei
    ld e, $7b
    sbc [hl]
    pop af
    ld c, $fd
    ld a, $2a
    ld [bc], a
    rst RST_38
    nop
    rst RST_38
    ld a, a
    rst RST_38
    jr nz, @+$01

    ldh a, [$ff2f]
    ldh a, [$ff2f]
    rst RST_38
    db $10
    ld a, a
    rra
    push bc
    ld a, a
    ccf
    ld de, $8fff
    nop
    ld d, b
    ld de, $1251
    db $fc
    nop
    rst RST_38
    cp $fc
    cp $04
    ld c, $f2
    ld a, [bc]
    db $f4
    rst RST_38
    cp $00
    cp $fe
    cp $00
    ld [hl], b
    rrca
    db $dd
    jr nc, jr_032_53d8

    ld [de], a
    db $10
    rrca
    rra
    ld a, [hl+]
    inc bc
    rst RST_38
    ld b, $9f
    rst RST_38
    rrca
    di
    inc bc
    db $fc
    ld e, b
    ld de, $022a
    cp $3f

jr_032_537b:
    jr jr_032_537b

    ldh a, [$fffe]
    ldh [rNR34], a
    ld l, e
    db $10
    ld a, [hl+]
    ld [bc], a
    rst RST_38
    ccf
    nop
    ld a, a
    ccf
    cp a
    ld a, a
    add b
    ld a, a
    rst RST_18
    sbc a
    ld h, b
    ld e, a
    jr nz, jr_032_53d3

    ld a, [hl+]
    nop
    ret nz

    nop
    rst RST_38
    ldh [$ffc0], a
    rst RST_38
    ldh [rTIMA], a
    ld a, [$c03f]
    db $fd
    jr nz, jr_032_53c1

    stop
    nop
    ld a, $00
    ld a, a
    inc a
    rst RST_38
    cp a
    ld a, d
    sbc [hl]
    ld [hl], h
    sbc a
    ld [hl], h
    ld e, a

jr_032_53b3:
    jr nc, jr_032_53b3

    xor h
    ld de, $0000
    ld h, b
    nop
    ldh a, [rNR41]
    ld hl, sp-$41
    ld h, b
    adc a

jr_032_53c1:
    ld hl, sp+$19
    and $e7
    ld a, [hl+]
    nop
    rrca
    rst RST_38
    nop
    ccf
    rrca
    ld e, a
    daa
    ld d, a
    dec hl
    sub a
    rst RST_38
    ld l, e

jr_032_53d3:
    cp a
    ld b, e
    rst RST_10
    ld l, e
    rst RST_30

jr_032_53d8:
    ld l, e
    add b
    jp c, Jump_000_10f0

    ret nz

    db $f4
    ld [de], a
    add b
    ret nz

    sub e
    nop
    add b
    ld a, a
    rst RST_08
    daa
    ld a, h
    daa
    jr nc, @+$7b

    dec d
    ld a, [hl+]
    nop
    adc a
    nop
    rst RST_38
    ld a, a
    rrca
    ld a, a
    rra
    jr nc, jr_032_5417

    jr nz, jr_032_5419

    rst RST_18
    jr nc, @+$11

    jr c, jr_032_5406

    ld a, a
    sub e
    inc bc
    ret nz

    ld h, b
    cp $b9

jr_032_5406:
    db $10
    ld h, b
    add b
    ld hl, sp+$00
    call c, Call_032_6f00
    rst RST_08
    nop
    ld hl, sp+$00
    ld b, e
    cp a
    db $10
    ld d, d
    dec b

jr_032_5417:
    sbc d
    nop

jr_032_5419:
    rst RST_30
    inc c
    nop
    ldh a, [rHDMA2]
    ld [$0038], sp

jr_032_5421:
    ld a, h
    jr c, @+$01

    sbc $64
    ld [$ba5c], a
    ld a, h
    ld b, h

jr_032_542b:
    jr c, @-$40

    ld d, d
    dec b
    inc bc
    nop
    dec b
    nop
    inc b
    ld b, c
    jr nz, @+$0a

    ld e, h
    ld l, e
    jr nz, @+$2c

    ld bc, $00e0
    ld e, $1f
    db $10
    dec b
    rra
    db $10
    ld d, a
    ld bc, $1000
    ld a, a
    jr nz, jr_032_546b

    add e
    jr nz, jr_032_548e

    add a
    jr nz, @-$2a

    ei
    ld de, $217c
    ld [bc], a
    sub e
    jr z, jr_032_5421

    db $fc
    ld de, $7800
    xor e
    nop
    rlca
    ld d, d
    inc b
    add d
    sub e
    jr nz, jr_032_5478

    sub e
    jr nz, jr_032_542b

    sub e
    nop

jr_032_546b:
    ld a, h
    ld d, d
    dec bc
    ld a, [hl+]
    ld bc, $6302
    jr nz, jr_032_54c6

    add hl, bc
    ldh [$fffe], a
    dec bc

jr_032_5478:
    db $10
    inc bc
    nop
    rlca
    inc bc
    rlca
    ld c, $0f
    rst RST_38
    ld [$030f], sp
    rra
    rlca
    rra
    rrca
    ccf
    rst RST_38
    sbc b
    ld a, [$fc0e]

jr_032_548e:
    and $fc
    ld [hl-], a
    db $fc
    rst RST_38
    ld [de], a
    db $fc
    sub h
    ld hl, sp-$64
    ld hl, sp-$24
    ld hl, sp-$01
    ld a, $3f
    jr c, jr_032_54df

    jr nz, @+$81

    ld b, $6e
    rst RST_28
    dec c
    rst RST_38
    db $10
    rst RST_38
    rst RST_18
    stop
    ld c, h
    ld hl, sp-$01
    ld l, h
    ld hl, sp+$2c
    ldh a, [$ffb8]
    ldh a, [$ff98]
    ldh a, [$ff3f]
    ret c

    ret nc

    ret c

    ldh [$ff38], a
    ld b, b
    jr nz, @+$12

    sub e
    ld bc, $a114
    ld [hl+], a
    and d

jr_032_54c6:
    ld hl, $93fe
    jr nz, @+$0c

    sub e
    inc h
    or h
    ld hl, $11fb
    ret z

    and [hl]
    daa
    sla c
    inc [hl]
    ld sp, $2182
    jr nc, jr_032_552e

    ld b, $01
    inc e

jr_032_54df:
    rst RST_38
    ld a, a
    add hl, sp
    ccf
    ld h, e
    ld a, a
    inc sp
    ld a, a
    ld e, h
    ei
    ld a, a
    ld h, a
    jr z, jr_032_54fd

    ld h, h
    db $fc
    call nz, $bcf4
    rst RST_38
    db $fc
    inc a
    db $fc
    adc h
    db $fc
    ldh [$ffec], a
    jr nc, @-$1f

jr_032_54fc:
    db $fc

jr_032_54fd:
    ld sp, $7e1f
    ld bc, $3746
    nop
    nop
    rst RST_18
    sbc h
    db $fc
    ldh [$fff4], a
    db $fc
    cp c
    add hl, hl
    add c
    nop
    ld e, a
    ld b, d
    nop
    inc h
    nop
    jr @-$58

    jr nc, @+$26

    and d
    jr nc, jr_032_54fc

    rst RST_38
    and b
    ccf
    or d
    ccf
    call nz, $d63f
    ld a, [hl-]
    ld b, e
    nop
    dec h
    dec hl
    nop
    add hl, de
    or $30
    dec h
    inc sp

jr_032_552e:
    jr nz, @+$01

    inc e
    nop
    ld b, b
    ld a, a
    ldh a, [$ffc0]
    ldh a, [$ff80]
    ldh a, [rNR10]
    nop
    ld b, $02
    xor $02
    nop
    add b
    ldh a, [rNR41]
    ld b, $04
    ret nz

jr_032_5546:
    ldh a, [rLCDC]
    call nz, $0604
    ld bc, $3001
    ld b, $04
    inc hl
    ld [bc], a

jr_032_5552:
    ld b, $04
    jr nc, jr_032_5546

    cp e
    db $10

jr_032_5558:
    ldh a, [rTMA]
    inc bc
    nop
    ldh a, [$ff90]
    ld [hl-], a
    ld [$da20], sp
    ld [bc], a
    nop
    ret nz

    ld b, $03
    rst RST_38
    ldh [$ff60], a
    nop

jr_032_556b:
    ldh a, [rIE]
    rst RST_38

jr_032_556e:
    ld hl, sp-$19
    ld hl, sp-$61
    ldh [$ff7f], a
    add b

jr_032_5575:
    rst RST_38

jr_032_5576:
    rst RST_30
    nop
    ld hl, sp+$08
    ld [hl], b
    nop
    jr jr_032_5576

    jr c, jr_032_5558

    rst RST_38
    jr c, jr_032_556b

    jr jr_032_5575

    ld [$00f8], sp
    rst RST_38
    cp $7f
    inc b
    rst RST_18
    jr nz, jr_032_556e

jr_032_558f:
    ld h, b
    rst RST_08

jr_032_5591:
    ldh a, [$ffef]
    or a
    ldh a, [$fff8]
    nop
    sub b
    ld a, [bc]
    jr nz, @-$0f

    adc l
    nop
    rst RST_30
    ld sp, hl
    ld hl, sp+$41
    inc b
    ld b, $00
    ret c

    jr nc, jr_032_558f

    jr jr_032_5591

    db $fd
    jr jr_032_5552

    rlca
    inc bc
    inc b
    db $e3
    inc a
    rst RST_30
    jr @+$01

    rst RST_38
    adc b
    rst RST_38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst RST_38
    ccf
    ldh [$ff3f], a
    pop bc
    ld a, a
    add c
    cp $03
    cp a
    db $fc
    inc bc
    cp $01
    cp $81
    call z, $c002
    db $fc
    ld l, h
    ld bc, $0480
    ld [bc], a
    cp $43
    cp $43
    cp h
    rst RST_28
    ret nz

    or b
    ret nz

    nop
    ld e, c
    inc b
    nop
    nop
    rlca
    rst RST_38
    nop
    ld c, $01
    ld a, h
    inc bc
    rst RST_00
    jr c, jr_032_5668

    ei
    rlca
    rlca
    ld b, $02
    add b
    nop
    ld h, b
    add b
    ld h, b
    ld l, a
    ret nz

    ldh [$ffc0], a
    ldh [rNR22], a
    ld bc, $7820
    dec b
    ld [bc], a
    ccf
    inc e
    nop
    dec e
    ld [bc], a
    nop
    inc bc
    and [hl]
    rlca
    dec c
    ld de, $40cf
    ret nz

    ret z

    nop
    inc d
    db $10
    ld a, [hl+]
    jr jr_032_5618

    nop

jr_032_5618:
    rst RST_30
    inc bc
    ld bc, $2907
    ld d, $7c
    nop
    rst RST_38
    ld a, h
    rst RST_38
    rst RST_18
    cp $97
    rst RST_38
    rlca
    inc bc
    rrca
    rlca
    rst RST_38
    dec c

jr_032_562d:
    rlca
    inc e
    rrca
    ld e, $0f
    add hl, sp
    rra
    rst RST_38
    inc a
    inc bc
    ccf
    nop
    inc hl
    rst RST_18
    scf
    rst RST_08
    rst RST_38
    sbc l
    db $e3
    ld e, $e1
    ld e, [hl]
    and c
    ld a, $c1
    rst RST_30
    ei
    nop
    pop hl
    ld d, e
    nop
    ld hl, sp-$50
    db $f4
    adc b
    rst RST_38
    db $fc
    or b
    ld [hl], h
    ret z

    add sp, $10
    ld hl, sp+$00
    call c, $193e
    ld b, $00
    inc b
    jr jr_032_567f

    adc a
    dec de
    inc c
    db $10
    rst RST_38
    ld a, b
    rlca

jr_032_5668:
    ld h, c
    rra

jr_032_566a:
    ld c, b
    scf
    ld a, b
    rlca
    rst RST_18
    ld a, a
    nop
    ccf
    nop
    rra
    ld b, $00
    db $fc
    ld a, a
    ld a, a
    jp $17fc


    add sp, $7c
    add b

jr_032_567f:
    ld hl, sp+$2f
    nop
    cp $59
    ld bc, $f81e
    adc $3c
    rst RST_20
    ld e, $61
    ld a, a
    rra
    dec sp
    ld b, $1e
    ld bc, $030c
    ld a, [bc]
    inc de
    adc d
    ld c, $11
    ret nz

    rla
    nop
    jr c, jr_032_562d

    nop
    dec [hl]
    inc b
    and [hl]
    ld b, $46
    xor e
    nop
    add $01
    jr nz, jr_032_566a

    ld bc, $c422
    dec bc
    jr nz, jr_032_56e0

    ld c, $0f
    ld [hl+], a
    nop
    nop
    jr nz, jr_032_56ce

    jr nz, @+$08

    ld bc, $210c
    jr nz, jr_032_56e5

    ld hl, sp-$0b
    ld bc, $292e
    dec [hl]
    ld bc, $0007
    add hl, sp
    rlca
    ld e, a
    rst RST_30
    ccf
    cp a
    ld a, a

jr_032_56ce:
    ld c, b
    ld hl, $7f9f
    db $fc
    nop
    ccf
    ld a, [hl-]
    db $fc
    db $fd
    cp $fe
    rst RST_38
    ld d, a
    dec h
    ldh [$ff15], a
    rst RST_38

jr_032_56e0:
    ld b, b
    add b
    and b
    ret nz

    ret nc

jr_032_56e5:
    ldh [$ffd0], a
    ldh [rIE], a
    ld e, a
    ccf
    ld c, a
    ccf
    daa
    rra
    inc de
    rrca
    rst RST_38
    add hl, bc
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    rst RST_30
    rst RST_38
    rst RST_38
    cp $64
    nop
    ret nz

    rst RST_38
    add b
    rst RST_38
    rst RST_38
    ld bc, $1efe
    ldh [$ffe0], a
    nop
    add sp, -$10
    dec a
    ld [$2091], sp
    db $10
    ldh [$ff60], a
    add b
    dec [hl]
    inc bc
    ld a, [hl]
    jr nz, @+$01

    ld bc, $0f3c
    rrca
    rlca
    ld b, $03
    inc bc
    db $fd
    ld bc, $21aa
    cp $00
    rst RST_00
    db $fc
    add hl, sp
    rst RST_38
    rst RST_38
    rst RST_00
    rst RST_38
    add hl, sp
    rst RST_38
    rst RST_08
    rst RST_38
    jr c, @+$01

    jp hl


    ld hl, sp+$5f
    ld [hl+], a
    and $10
    add b
    add $23
    ldh [$ffc0], a
    rra
    cp e
    rrca
    dec c
    ld h, e
    db $10
    rrca
    ld b, $0e
    ld b, c
    inc b
    daa

jr_032_574c:
    rst RST_08
    cp $3f
    cp $ff
    adc l
    jr nz, jr_032_574c

    rlca
    ld a, $03
    rst RST_38
    ld a, a
    rra
    ld a, a
    ld hl, $4ff7
    xor e
    ld e, a
    cpl
    xor h
    ld e, e
    ld h, a
    inc e
    ld h, [hl]
    ld hl, $69e0
    jr nz, jr_032_5781

jr_032_576b:
    ld de, $207d
    rla
    db $10
    ld h, $1b
    inc sp
    inc c
    rrca
    ld a, [hl+]
    jr jr_032_576b

    ld b, b
    add b
    inc a
    inc hl
    and d
    ld a, [de]
    nop
    ld [de], a
    inc c

jr_032_5781:
    ld a, [de]
    rst RST_38
    inc b
    ld a, [hl]
    nop
    db $ed
    ld e, $ad
    ld e, $03
    ld a, e
    nop
    ld [bc], a
    ld b, c
    ld sp, $0604
    ld [$060c], sp
    ld [bc], a
    rst RST_38
    ld e, d
    inc a
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    sbc c
    ld a, [hl]
    rst RST_20
    jp Jump_032_7e3c


    pop af
    inc e
    ld b, c
    inc b
    add c
    nop
    ld b, d
    xor a
    nop
    inc h
    nop
    jr jr_032_5826

    jr nc, jr_032_57d6

    ld [hl], d
    jr nc, @+$01

    add b
    ld [hl], b

jr_032_57b7:
    ccf
    add d
    ccf
    sub h
    ccf
    and [hl]
    ccf
    cp b
    ccf
    jp z, $dc3f

    inc [hl]
    ld b, e
    xor a
    nop
    dec h
    nop
    add hl, de
    or $30
    dec h
    ldh a, [c]
    jr nc, @+$01

    inc e
    nop
    ld b, b
    rst RST_38
    jr c, jr_032_57d6

jr_032_57d6:
    ld a, h
    jr c, jr_032_57b7

    ld h, h
    ld [$bf5c], a
    cp d
    ld a, h
    ld b, h
    jr c, jr_032_581a

    nop
    dec c
    inc bc
    rlca
    rst RST_38
    nop

jr_032_57e8:
    inc b
    inc bc
    ld [$0907], sp
    rlca
    ld de, $0ff7
    db $10
    rrca
    dec c
    ld bc, $00c0
    rst RST_38
    add b
    rst RST_38
    ret nz

    cp a
    add d
    ld a, a
    sub l
    ld a, a
    xor a
    ld a, a
    sbc d
    dec c
    inc bc
    rst RST_38
    inc [hl]
    nop
    cp a
    rst RST_38
    dec sp
    ld bc, $0730
    push af
    ei
    rst RST_38
    cp $3d
    inc b
    inc bc
    nop
    rst RST_38
    ld bc, $7f03

jr_032_581a:
    db $fd
    ld bc, $a9fe
    cp $f5
    cp $0d
    ld bc, $e0ff
    nop

jr_032_5826:
    jr nz, jr_032_57e8

    db $10
    ldh [rNR10], a
    ldh [rIE], a
    adc b
    ldh a, [$ff88]
    ldh a, [$ff31]
    ld e, $23
    ld e, $bf
    ld h, e
    ld a, $43
    inc a
    cp $7d
    ccf
    inc bc
    ld e, a
    rra
    rst RST_38
    cpl
    rst RST_38
    ccf
    rst RST_38
    add b
    ld bc, $033f
    dec sp
    ld [bc], a
    db $f4
    sub b
    inc bc
    dec c
    ld [bc], a
    ld hl, sp+$4b
    nop
    db $fc
    rst RST_38
    ld a, [$fdff]
    db $f4
    ld a, $04
    adc h

jr_032_585c:
    ld a, b
    call nz, $c678
    ld a, h
    rst RST_28
    jp nz, Jump_032_7f3c

    cp [hl]
    ccf
    inc bc
    rra
    nop
    ld e, $ff
    rrca
    jr nc, jr_032_588e

    ld l, $11
    ld l, a
    inc [hl]
    ld c, e
    rst RST_38
    inc [hl]
    add a
    ld a, d
    db $fd
    ld [bc], a
    ret nz

    nop
    ld b, b
    adc a
    add b
    add b
    nop
    add b
    dec c
    inc b
    ld [de], a
    ld bc, $0be1
    jr nz, @+$01

    nop
    ld h, b
    nop
    ld [hl], b

jr_032_588e:
    jr nz, jr_032_585c

    ld [hl], b
    sbc b
    ei
    ld h, b
    ldh [$ff31], a
    inc b
    rst RST_38
    ccf
    cp a
    ld e, a
    sbc a
    rst RST_38
    ld l, a
    ld c, a
    scf
    ld h, a
    jr jr_032_58fa

    dec hl
    cpl
    rra
    inc de
    cp $00
    db $fd
    cp $4c
    ld bc, $013d
    inc a
    dec b
    rst RST_38
    ret nz

    nop
    and b
    ret nz

    ret nc

    ldh [$fff8], a
    nop
    rst RST_38
    ld hl, sp-$10
    ld hl, sp-$10
    cpl
    db $10
    rra
    rlca
    ldh a, [$ff1f]
    ld [bc], a
    dec c
    inc b
    ld a, [de]
    ld [de], a
    pop hl
    ld [$00f0], sp
    ldh [$ffc0], a
    db $fc
    ld a, [$3003]
    dec b
    ldh [$ff1f], a
    ldh a, [rVBK]
    ld hl, sp+$67
    rst RST_38
    rst RST_38
    ld [hl], b
    rst RST_38
    ld [hl], a
    ld a, a
    scf
    ccf
    rla
    rst RST_38
    db $fc
    nop
    ld b, $f8
    dec b
    ld a, [$fb04]
    ld l, $1a
    inc de
    rst RST_38
    rst RST_38
    add b
    inc hl

jr_032_58f4:
    nop
    ldh [rHDMA1], a
    ld de, $1387

jr_032_58fa:
    pop af
    nop
    ld [hl-], a
    dec de
    adc [hl]
    ld [bc], a
    pop hl
    ld a, [bc]
    ld c, $00
    ld a, [de]
    inc c
    rst RST_38
    ld a, [hl-]
    inc e
    ld [hl], h
    jr c, jr_032_58f4

    ld [hl], b

jr_032_590d:
    ld d, b
    jr nz, jr_032_590d

    jr nz, jr_032_5945

    ld [bc], a
    add b
    ld a, a
    add c
    ld a, a
    add a
    ld a, a
    rst RST_38
    sbc a
    ld a, [hl]
    cp $79
    ld hl, sp+$67
    ld sp, hl
    rla
    ldh a, [c]
    ret nc

    ld bc, $d3c0
    ld de, $13d1
    nop
    rst RST_38
    ld a, [hl-]
    rst RST_38
    ld a, a
    ld a, l
    rst RST_38
    ld a, [hl-]
    cp e
    ld d, l
    sub a
    ld l, d
    ccf
    inc bc
    ld a, b
    sub $11
    sub $14
    pop hl
    ld a, [bc]
    ld [$070f], sp
    ld [$0ce1], sp

jr_032_5945:
    sbc a
    nop
    ld bc, $0001
    ld bc, $1c93
    pop hl
    dec bc
    db $fc
    ccf
    db $fc
    nop
    db $10
    rra
    rrca
    db $10
    jr nz, jr_032_5988

    ld b, l
    add hl, de
    ld de, $0cf0
    dec l
    dec de
    cpl
    dec l
    dec l
    cp $5f
    ld [bc], a
    ei
    rra
    ld a, c
    cpl
    ldh [$ff67], a
    cpl
    xor l
    inc l
    ld b, b
    ld l, $c9
    cpl
    db $eb
    inc de
    nop
    ld [hl], b
    nop
    rst RST_30
    dec e
    ld bc, $7706
    inc l
    nop
    nop
    ret nc

    rra
    add a
    ld h, b
    db $10
    inc e
    inc de
    nop

jr_032_5988:
    ld [hl], a
    dec h
    ld [$7735], sp
    ld h, $81
    cp a
    nop
    ld b, d
    nop
    inc h
    nop
    jr jr_032_59dd

    jr nc, jr_032_59bd

    ld [bc], a
    ld b, d
    jr nc, @+$01

    ld b, b
    ccf
    ld d, d
    ccf
    ld h, h
    ccf
    halt
    ccf
    adc b
    ccf
    sbc d
    ccf
    ld hl, sp-$54
    ccf
    cp [hl]
    ccf
    ret nc

    ccf
    nop
    ld b, e
    nop
    dec h
    nop
    dec d
    add hl, de
    or $30
    dec h
    ldh a, [c]
    jr nc, @+$01

jr_032_59bd:
    stop
    ld de, $3c40
    ld b, [hl]
    adc e
    xor e
    xor c
    ld de, $02ab
    sbc a
    sbc l
    push de
    push de
    db $d3
    ld de, $0393
    sub l
    and l
    sub l
    sub l
    sub a
    sub a
    sub e
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec c
    dec de

jr_032_59dd:
    ld d, $00
    nop
    db $10
    ld d, b
    ld d, b
    ld e, b
    nop
    sub b
    ld b, b
    nop
    xor e
    sub b
    push de
    sub a
    ld d, $d4
    ld [hl], l
    sub l
    and h
    ld c, h
    sub h
    ld e, b
    xor b
    ldh a, [$ff60]
    add b
    nop
    jr c, jr_032_5a47

    ld d, h
    ld e, h
    ld [hl], h
    ld [hl], h
    ld a, h
    ld a, h
    ld e, h
    ld e, h
    ld d, h
    ld a, h
    ld de, $0354
    ld l, d
    ld c, l
    ld [hl], $3f
    ld a, [de]
    dec c
    inc bc

jr_032_5a0f:
    ld de, $0200
    inc e
    ld [hl+], a
    ld a, [hl+]
    ld a, [hl-]
    ld de, $0332
    ld de, $022a
    ld de, $0232
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl+]
    ld [hl-], a
    ld c, d
    ld d, d
    ld d, d
    call nc, Call_032_74ac
    xor b
    jr jr_032_5a9c

    ret nz

    add b
    sub e
    sub l
    push hl

jr_032_5a31:
    ld d, l
    push de
    rst RST_10
    ld d, a
    sub e
    inc e
    ld a, $79
    ld h, e
    ld c, a
    ld e, h
    dec sp
    scf
    nop
    ld hl, sp+$74
    jr c, jr_032_5a0f

    inc [hl]
    adc h
    add h
    ld l, a

jr_032_5a47:
    ld c, d
    ld [hl], h
    cp a
    sbc l
    ret z

    ld b, h
    nop
    ld [de], a
    ld [hl], c
    jp hl


    ld d, d
    add b
    db $10
    ld b, b
    nop
    nop
    inc bc
    ld [bc], a
    dec b
    inc bc
    ld e, $22
    ld e, l
    ret nz

    jr nz, jr_032_5a31

    ld l, b
    ret nc

    and b
    jr nz, jr_032_5aa6

    ld de, $0200
    ld [$2e34], sp
    ld d, [hl]
    ld c, h
    or [hl]
    xor a
    sbc d
    ld e, a
    ld b, [hl]
    ld [hl], c
    ld c, $00
    add b
    ld b, b
    ldh [rHDMA4], a
    cp h
    sbc h
    rst RST_00
    dec a
    jr c, jr_032_5adc

    cp [hl]
    xor $d6
    xor d
    add h
    ld e, d
    ld a, [bc]
    dec bc
    dec d
    daa
    ld l, e
    daa
    ld d, $13
    and b
    ldh [rSVBK], a
    ret nc

    ld d, b
    sub b
    or b
    jr nz, @+$03

    ld b, $02
    dec d
    dec l
    ld c, d

jr_032_5a9c:
    adc l
    ld e, d
    add $38
    and b
    ld h, b
    ldh [$ffbe], a
    ld h, e
    sbc l

jr_032_5aa6:
    ccf
    ld h, l

Call_032_5aa8:
    dec de
    rrca
    ld bc, $0011
    ld [bc], a
    xor e
    push af
    ld d, c
    ld a, d
    inc [hl]
    ld hl, sp+$11
    nop
    ld [bc], a
    jr c, @-$2a

    ld l, [hl]
    sbc d
    or [hl]
    jp z, Jump_000_0743

    ld bc, $0201
    ld b, $22
    ld [hl], d
    adc a
    jr jr_032_5b3c

    xor h
    db $f4
    ld d, h
    add sp, $50
    xor [hl]
    sbc e
    ld e, h
    cp [hl]
    ld d, e
    ld l, [hl]
    inc de
    ld a, b
    add a
    ld [hl], l
    reti


    xor l
    ld a, d
    ld l, d
    ld d, h

jr_032_5adc:
    db $fc
    jp nc, $adb3

    cp l
    ld l, e
    dec [hl]
    inc sp
    cpl
    ld [bc], a
    cp h
    ld l, d
    ld e, $a3
    call nc, $32a1
    ld l, [hl]
    ei
    xor d
    ld [hl], h
    ld de, $0400
    inc bc
    add hl, de
    rla
    ld l, [hl]
    ld d, a
    reti


    sbc c
    rst RST_28
    ldh a, [$ffcc]
    ldh [c], a
    cp l
    ei
    jp hl


    jp hl


    add sp, -$7d
    daa
    inc l
    ld [$0011], sp
    inc bc
    or e
    rlca
    ld a, [bc]
    ld a, [hl-]
    ld de, $0300
    add b
    db $e3
    cp h
    ld e, e
    ld a, [hl-]
    rrca
    rla
    rra
    ldh a, [$ff0e]
    ld hl, $e97c
    rst RST_18
    cp l
    db $fd
    ld bc, $f907
    ldh a, [c]
    sbc h
    ldh a, [$ff80]
    add b
    dec hl
    scf
    ld b, [hl]
    rst RST_20
    rst RST_38
    call Call_000_3c6b
    ld sp, hl
    inc sp

jr_032_5b34:
    add $8c
    ld [hl], b
    ret nz

    nop
    nop
    jr c, jr_032_5b80

jr_032_5b3c:
    rst RST_20
    ld b, e
    jr jr_032_5b34

    db $db
    ld h, b
    ld de, $0400
    ret nz

    and b
    xor $ff
    add hl, de
    nop
    rst RST_30
    db $10
    ld a, [bc]
    dec b
    ld bc, $e080
    add sp, $1c
    inc bc
    ld bc, $0011
    ld [$113f], sp
    nop
    dec b
    add b
    ldh [rBGP], a
    xor $41
    ld a, [de]
    rrca
    rlca
    add hl, bc
    ld c, $98
    ld h, a
    sbc d
    push bc
    dec a
    or e
    sub b
    ld h, b
    nop
    ld de, $0280
    jp nc, RST_30

    nop
    inc bc
    ld b, $16
    rlca
    rlca
    rla
    cpl
    nop
    inc a

jr_032_5b80:
    cp [hl]
    adc b
    db $e4
    jr nz, jr_032_5bc5

    ld b, b
    ldh a, [$fff8]
    ld [hl], b
    ld de, $0b00
    ld e, a
    or b
    add hl, de
    inc l
    ld c, d
    rrca
    ld d, d
    add hl, hl
    nop
    nop
    ret nz

    ldh a, [$ffd0]
    ldh [$ffc0], a
    ldh a, [$ffc0]
    ldh [rNR11], a
    nop
    ld [$7c38], sp
    ld a, h
    ld a, [hl]
    ld de, $037c
    ld de, $027e
    ld de, $047c
    ld de, $037e
    ld de, $027c
    ld de, $0307
    dec c
    add hl, bc
    ld [bc], a
    nop
    ld de, $03e0
    ld hl, sp+$60
    and b
    nop
    ld a, h
    ld a, a
    ccf

jr_032_5bc5:
    ld de, $02ff
    cp $7e
    ld a, b
    ldh a, [$ffe8]
    ldh [$ffd0], a
    nop
    add b
    ld de, $0200
    jr nc, jr_032_5be7

    jr c, @+$0f

    inc e
    ld a, $1f
    dec bc
    dec b
    ld [bc], a
    ld de, $0400
    ld de, $101c
    ld de, $023c

jr_032_5be7:
    jr c, jr_032_5c61

    add sp, -$30
    ldh [$ff80], a
    nop
    nop
    ld a, h
    ld a, [hl]
    ld a, [hl]
    cp $fe
    db $fc
    db $fc
    ld a, h
    nop
    inc e
    ld a, $3c
    jr nc, jr_032_5c20

    rlca
    rrca
    nop
    nop
    ld hl, sp-$02
    ccf
    adc $f0
    ld hl, sp+$1f
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ld a, [de]
    nop
    db $fc
    cp $fe
    db $fc
    ld hl, sp-$20
    add b
    nop
    nop
    ld [bc], a
    dec b
    rrca
    dec b
    ld sp, $3e1d
    nop

jr_032_5c20:
    ret nz

    ldh a, [$fff0]
    ldh [$ffc0], a
    ret nz

    add b
    ld de, $0200
    ld [$1c68], sp
    inc a
    jr c, @+$13

    ld a, a
    ld [bc], a
    ccf
    ccf
    ld c, [hl]
    ld b, b
    nop
    nop
    add b
    sub c
    and h
    halt
    ld a, d
    cp b
    inc bc
    nop
    ld [hl], $f8
    ld de, $027c
    ld a, b
    and d
    rlca
    rlca
    rrca
    ld a, a
    ld e, $1b
    rrca
    rrca
    ret nz

    ld b, b
    ret nc

    ldh [$fff8], a
    ldh [$ffd0], a
    ret nc

    nop
    dec b
    dec b
    inc sp
    inc de
    dec a
    cp $bf
    jr c, @+$13

jr_032_5c61:
    ret nz

    ld [bc], a
    call nc, $9ed4
    ld a, a
    rra
    ld e, a
    ld b, [hl]
    ld de, $0400
    ld a, [hl]
    ld a, [hl]
    cp $fc
    ld a, [$1150]
    nop
    inc bc
    cp b
    cp d
    ld a, h
    ld a, h
    cp h
    cp h
    ld de, $0200
    ld bc, $3505
    ld hl, $e071
    ld de, $02f8
    db $fc
    db $f4
    ldh [rLCDC], a
    ld a, [hl]
    rst RST_38
    ld a, a
    ccf
    ld e, a
    ld l, a
    daa
    ld a, b
    adc [hl]
    ld a, $7e
    db $fc
    cp h
    cp b
    nop
    inc a
    ld a, h
    ld a, [hl]
    cp $9e
    ld e, $2c
    db $10
    inc bc
    ld a, [hl]
    db $fc
    ldh [$ff5d], a
    ccf
    ld a, [hl]
    db $fc
    db $fc
    ld a, l
    ld a, h
    jr c, jr_032_5cc1

    nop
    dec b
    rlca
    cpl
    rra
    add hl, sp
    scf
    ld a, a
    rra
    nop
    ldh a, [$fffc]
    cp $fc
    cp $f6
    rst RST_30

jr_032_5cc1:
    ld a, a
    jr @+$15

    rlca
    ld de, $0300
    call z, $f4f8
    call nz, Call_000_0011
    dec b
    ld h, e
    ccf
    rlca
    rlca
    rrca
    rrca
    ld [$fef1], sp
    rst RST_38
    rst RST_38
    cp $e6
    add $00
    nop
    ld b, $fc
    ldh [rNR11], a
    nop
    ld [bc], a
    rra
    rra
    ccf
    add hl, de
    inc bc
    ld [hl], $3c
    nop
    adc $fc
    ld hl, sp-$10
    add b
    ld de, $0300
    jr c, jr_032_5d53

    ccf
    rlca
    dec de
    ld h, b
    ld de, $0600
    ld b, b
    nop
    ret nz

    cp $ff
    ld [$040c], sp
    ld [bc], a
    ld b, $00
    ldh a, [rNR32]
    ld [bc], a
    ld bc, $0011
    ld [de], a
    jr c, jr_032_5d71

    ccf
    dec b
    ld [bc], a
    ld bc, $0006
    ldh [$fff8], a
    ld a, l
    ld a, $c3
    ld b, b
    ld h, b
    ld de, $0300
    jp Jump_000_083c


    nop
    nop
    inc b
    add hl, bc
    add hl, bc
    ld [$1800], sp
    jr nc, jr_032_5d56

    nop
    ld a, b
    ld [hl], b
    ld hl, sp-$40
    add b
    add b
    inc c
    rlca
    add b
    ld de, $0a00
    rrca
    ld a, a
    rst RST_08

jr_032_5d3f:
    add [hl]
    inc de
    ld [hl], c
    ld [hl], b
    ld hl, $0011
    ld [bc], a
    jr nz, jr_032_5d55

    inc c
    ld de, $0400
    add c
    ld b, e
    dec h
    add hl, de
    add hl, de
    dec h

jr_032_5d53:
    ld b, e
    rst RST_38

jr_032_5d55:
    inc e

jr_032_5d56:
    nop
    ld b, b
    push af
    nop
    nop
    ld [bc], a
    rst RST_38
    dec b
    nop
    ccf
    ret nz

    ld a, [hl]
    add c
    db $ed
    rst RST_38
    nop
    inc bc
    nop
    ld hl, sp+$15
    nop
    or b
    ld a, b
    ld hl, sp-$01
    ld hl, sp-$50

jr_032_5d71:
    ld a, b
    rst RST_20
    ld a, b

jr_032_5d74:
    rst RST_38
    rst RST_38
    pop af
    rst RST_30
    cp $8f
    ld [hl], b
    ld c, $07
    jr c, jr_032_5d3f

    ldh a, [$ff08]
    ldh a, [c]
    ld d, $01
    jr c, jr_032_5d95

    inc b
    ld [bc], a
    dec b
    ei
    rlca
    rst RST_28
    rra
    ei
    ei
    rlca
    db $10
    rlca
    jr jr_032_5d74

    cp b

jr_032_5d95:
    ret nz

jr_032_5d96:
    ld a, b
    ld a, a
    add b
    ld a, a
    add b
    di
    db $fc
    rra
    ldh [rTMA], a
    ld bc, $03fd
    nop
    ld [bc], a
    ldh a, [$ff38]

jr_032_5da7:
    ld hl, sp+$78
    ld a, b
    ld hl, sp-$21
    ret nz

    jr c, jr_032_5da7

    nop
    add b
    dec sp
    inc c
    ret c

    ccf
    rst RST_08
    ld a, l
    cp $db
    inc a
    db $10
    rlca
    sub [hl]
    inc bc
    rst RST_38
    ld bc, $9fff
    db $e3
    ei
    rlca
    cp $01
    rst RST_38
    nop
    db $fd
    inc e
    nop
    ld [bc], a
    sbc b
    ldh [$fff8], a
    ld hl, sp-$40
    ld hl, sp-$19
    jr c, jr_032_5d96

    ld hl, sp+$3b
    ld [$0304], sp
    rst RST_00
    ld hl, sp-$11
    rst RST_30
    ldh a, [$ffdf]
    ldh [rNR10], a
    rlca
    ldh a, [$ff08]
    ret c

    jr c, @+$01

    ldh a, [$ff08]
    db $fc
    rrca
    rst RST_38
    rra
    sbc $3f
    rst RST_28
    pop af
    ld c, $ff
    nop
    rst RST_08
    inc bc
    ld hl, sp+$00
    ldh [$fff8], a
    or l
    ld [bc], a
    cp b
    dec b
    add sp, $00
    rra
    ld [$6095], a
    sbc a
    cp $04
    ld de, $90e0
    nop
    nop
    ret nz

    nop
    ld a, b
    ld a, a
    add b
    ld hl, sp+$18
    ld [hl], b
    sbc b
    ld hl, sp+$18
    ld a, c
    inc bc
    rst RST_38
    db $fc
    nop
    rlca
    ld hl, sp-$51
    ld d, c
    rlca
    ld sp, hl
    cp [hl]
    inc h
    ld de, $50a0
    nop
    nop
    ld a, b
    reti


    nop
    ldh a, [$ff5f]
    ret z

    jr nc, @-$36

    ldh a, [$ffc8]
    ld a, c
    inc bc
    db $e3
    add hl, bc
    nop
    cpl
    ld a, a
    adc [hl]
    add hl, sp
    adc $44
    ld de, $7a70
    nop
    ld a, b
    nop
    rst RST_20
    ld a, b
    xor b
    ld d, b
    ld d, d
    ld [de], a
    nop
    ld [bc], a
    rra
    nop
    db $fc
    rst RST_18
    inc bc
    db $fd
    ld [hl], d
    call z, Call_032_6473
    ld de, $70f8
    sbc [hl]
    inc d
    ld bc, $f008

jr_032_5e60:
    ld e, b
    and b
    ld [hl], d
    ld de, $0779
    inc bc
    rra
    nop
    inc bc
    ld bc, $0303

jr_032_5e6d:
    add h
    db $10
    ld l, c
    inc b
    ld [$4f01], sp
    db $e3
    db $fc
    rst RST_30
    ld hl, sp+$66
    inc bc
    and b
    rla
    ld bc, $0403
    ld [hl], b
    or b
    inc de
    ldh a, [rP1]
    rrca
    db $10
    add b
    inc d
    nop
    ld bc, $8a02
    add hl, de

jr_032_5e8d:
    ccf
    rst RST_20
    jr c, jr_032_5e8d

    ld a, a
    cp $1f
    sbc h
    dec de
    nop
    rlca
    cp [hl]

jr_032_5e99:
    or b
    inc de
    ld a, a
    nop
    inc a
    nop
    jr jr_032_5e60

    ld d, $00
    di
    inc bc
    ld [bc], a
    adc c
    ld [de], a
    ld [bc], a
    inc bc
    ld sp, hl
    ld c, $7f
    sbc a
    di
    rst RST_38
    rlca
    sbc h
    dec e
    db $ec
    dec de
    rra
    nop
    rrca
    nop
    push bc
    ld b, $7f
    inc d
    nop
    adc b
    db $10
    adc b
    inc de
    ld [bc], a
    inc b
    ld bc, $e38f
    di
    rst RST_18
    ld h, l
    inc b
    ld h, b
    dec hl
    or b
    rla
    db $e3
    nop
    add c
    jp z, $063b

    ld [bc], a
    ld [$0122], sp
    xor h
    ld de, $0000
    rlca
    nop
    rst RST_38
    rra
    rlca
    inc a
    rra
    ldh a, [$ff3f]
    ldh [$ffbf], a
    ldh [$ff3b], a
    jr nz, jr_032_5e6d

    inc de
    add hl, bc
    jr nz, jr_032_5e99

    inc d
    nop
    nop
    add b
    nop
    jp $80ff


    ld h, a
    jp $e77e


    inc a
    rst RST_30
    ld [$9ff8], sp
    ld [hl+], a
    and d
    ld h, $8d
    inc h
    ldh [rP1], a
    ldh a, [$ffe0]
    sbc c
    ccf
    ldh a, [$ff1f]
    ld sp, hl
    rrca
    db $fd
    ld [bc], a
    cp a
    inc h
    add b
    inc de
    db $fc
    adc l
    inc h
    xor c
    nop
    ld a, [hl]
    inc e
    di
    ld a, [hl]
    jp Jump_032_7eff


    dec c
    nop
    rrca
    add c
    nop
    ld b, d
    nop
    inc h
    db $fd
    db $10
    dec b
    jr jr_032_5f32

    jr nc, @+$44

    ld a, e

jr_032_5f32:
    jr nz, jr_032_5f34

jr_032_5f34:
    ccf
    ld [de], a
    ccf
    inc h
    ccf
    ld [hl], $3f
    nop
    ld c, b
    ccf
    ld e, d
    ccf
    ld l, h
    ccf
    ld a, [hl]
    ccf
    sub b
    ccf
    and d
    ccf
    or h
    ccf
    add $3f
    nop
    ret c

    ccf
    ld [$1c33], a
    nop
    ld b, b
    rst RST_38
    ld c, $00
    ld [hl-], a
    inc c
    ld e, l
    ld a, $59
    ld a, $ff
    ld b, [hl]
    ccf
    sbc c
    ld a, [hl]
    cp e
    ld a, h
    cp d
    ld a, a
    rst RST_10
    nop
    nop
    ret nz

    ld de, $8002
    rla
    ld [bc], a
    nop
    nop
    rst RST_38
    call nc, Call_032_673f
    ld e, $41
    ld a, $2d
    ld e, $ff
    add hl, hl
    ld e, $56
    jr z, @+$5e

    jr nz, jr_032_5fba

    nop
    rst RST_38
    ld bc, $0300
    ld bc, $030d
    db $10
    rrca
    rst RST_38
    jr nz, jr_032_5fae

    ccf
    rrca
    ld e, a
    ccf
    ld e, a
    ccf
    rst RST_38
    ret nz

    nop
    ld hl, sp-$40
    adc h
    ldh a, [$ffee]
    db $fc
    rst RST_38
    ld h, a
    cp $71
    cp $fb
    db $fc
    cp $9c
    rst RST_38
    ld c, a
    ccf
    ld b, [hl]
    ccf
    ld b, b
    ccf

Call_032_5fae:
jr_032_5fae:
    jr nc, jr_032_5fbf

    rst RST_38
    ld [$1007], sp
    rrca
    ld d, $0f
    rla
    rrca
    rst RST_38

jr_032_5fba:
    add d
    ld a, h
    or d
    db $fc
    di

jr_032_5fbf:
    db $fc
    pop af
    cp $ff
    ld sp, hl
    cp $3d
    cp $11
    xor $c1
    cp [hl]
    rst RST_38
    nop
    rrca
    jr jr_032_5fd7

    inc e
    dec bc
    add hl, de
    rrca
    rst RST_38
    inc de
    rrca

jr_032_5fd7:
    add hl, bc
    rlca
    ld b, $01
    ld b, $01
    rst RST_38
    dec a
    cp $39
    cp $13
    db $fc
    add $f8
    rst RST_38
    ldh [c], a
    db $fc
    and $fc
    adc [hl]
    ldh a, [$ff3c]
    ret nz

    ld sp, hl
    rra
    dec e
    nop
    sub c
    add hl, bc
    rra
    nop
    scf
    rrca
    ld l, $ef
    rra
    ld e, b
    ccf
    ld e, h
    dec a
    nop
    daa
    rra
    jr c, @+$01

    rlca
    nop
    nop
    add h
    ld c, b
    cp $84
    add d
    rst RST_38
    ld a, h
    ld a, [$fffd]
    db $fc
    rst RST_20
    ld hl, sp-$07
    rst RST_38
    cp $65
    dec de
    reti


    ccf
    ret c

    ccf
    or e
    rst RST_38
    ld a, h
    or h
    ld a, e
    ld d, a
    dec sp
    daa
    rra
    scf
    rst RST_28
    rra
    db $fd
    cp $fd
    ld h, a
    nop
    add d
    ld a, h
    db $f4
    rst RST_38
    ld hl, sp-$04
    ld hl, sp-$3a
    ld hl, sp+$1d
    cp $54
    rst RST_38
    dec sp
    bit 6, a
    ei
    ld [hl], a
    jp hl


    ld [hl], a
    ld d, h
    rst RST_38
    dec sp
    ld a, e
    inc e
    ld l, h
    ccf
    ld l, a
    ccf
    cp a
    cp $d1
    nop
    pop hl
    cp $8f
    cp $3f
    sbc $ff
    cp a
    ld a, $79
    cp $03
    db $fc
    ld h, e
    xor l
    nop
    inc c
    rst RST_18
    inc bc
    rrca
    ld b, $1f
    rrca
    ld [$0710], sp
    add hl, bc
    rst RST_38
    rlca
    ld [bc], a
    db $fc
    add [hl]
    db $fc
    rlca
    cp $9f
    rst RST_38
    ld a, h
    cp [hl]
    ld a, b
    halt
    ld hl, sp+$66
    ld hl, sp-$1c
    cp a
    ld hl, sp+$04
    inc bc
    ld b, $01
    inc bc
    sub c
    ld [$efcc], sp
    ldh a, [$ff38]
    ret nz

    ldh [$ff91], a
    ld [$3f40], sp
    ld a, [hl]
    rst RST_38
    rra
    cp a
    ld a, a
    cp a
    ld a, a
    cp $7f
    pop af
    rst RST_38
    ld a, a
    db $e3
    ld a, a
    rst RST_20
    ld a, a
    adc $fc
    ldh [c], a
    rst RST_38
    db $fc
    or $f8
    ld a, h
    add b
    inc e
    ldh [$ff64], a
    ei
    ld hl, sp-$0a
    add a
    nop
    ld h, a
    ccf
    ld h, e
    dec a
    ld c, a
    rst RST_38
    inc sp
    ld a, a
    rrca
    ld e, h
    ccf
    or b
    ld a, a
    cp c
    cp $45
    db $10
    jp nz, $bafc

    call nz, $f8fc
    ld a, [hl]
    rst RST_38
    db $fc
    ld a, $fc
    inc b
    ld hl, sp-$0c
    ld hl, sp-$02
    rst RST_38
    ld hl, sp+$4f
    ccf
    ld [hl], c
    rrca
    ld c, e
    scf
    or e
    rst RST_38
    ld a, a
    or c
    ld a, a
    rst RST_20
    ld a, b
    jp hl


    ld [hl], a
    xor a
    cp a
    ld [hl], a
    adc $f0
    ldh a, [c]
    db $fc
    ld a, [$1093]
    ldh a, [c]
    cp $79
    db $10
    add sp, -$10
    ld hl, sp-$10
    ld c, a
    ccf
    ld l, [hl]
    rst RST_38
    ccf
    xor c
    ld [hl], a
    sub a
    ld l, a
    rst RST_20
    ld a, a
    jp Jump_032_7fff


    and b
    ld a, a
    di
    inc a
    adc h
    ldh a, [$ff3a]
    ei
    db $fc
    ld a, [hl]
    sub e

jr_032_610e:
    db $10
    jp nz, $1efc

    db $fc
    ld a, [hl]
    cp a
    cp h
    db $fc
    ld a, b
    ld e, b
    ccf
    ld e, [hl]
    ld d, c
    nop
    jr nz, jr_032_610e

    rra
    db $10
    cpl
    rrca
    sub c
    ld [bc], a
    db $f4
    ld hl, sp+$04
    ld e, [hl]
    pop de
    stop
    ld hl, sp+$18
    ldh [$ff34], a
    inc de
    ld h, e
    ld h, c
    inc e
    ld a, l
    add d
    ld [hl], c
    ld e, $73
    rrca
    ld c, a
    scf
    or a
    add a
    rra
    cp $99
    ld a, [de]
    sbc a
    ld l, a
    rst RST_28
    ld a, a
    ld b, a
    ccf
    ld h, b
    rst RST_30
    ccf
    ld [hl], c
    ld a, $b0
    dec e
    ret c

    ld a, a
    sbc $7f
    rst RST_38
    add $3f
    ld [hl], b
    rrca
    ld e, b
    daa
    add a
    ld a, h
    ld a, a
    sbc a
    ld a, [hl]
    ld c, $7f
    ldh a, [c]
    db $fc
    and $d1
    db $10
    rst RST_38
    inc c
    ld hl, sp+$3e
    db $fc
    ld a, $f8
    ld a, h
    ldh a, [$ff7f]
    db $ec
    ldh a, [rLCDC]
    ccf
    ld b, $3f
    ccf
    add hl, bc
    db $10
    di
    ld [$af07], sp
    nop
    dec e
    nop
    ret z

    ldh a, [$ffe0]
    ld hl, sp+$7f
    ld hl, sp-$10
    db $10
    ldh [rNR41], a
    ret nz

    ret nz

    sub c
    ld [bc], a
    ld e, b
    add b
    rra
    ld [de], a
    cpl
    and h
    ld de, $6fff
    ld a, [hl+]
    ld hl, $af73
    ld d, $ff
    ldh [c], a
    db $fc
    inc e
    ld hl, sp+$7c
    cp b
    cp $78
    xor e
    ret c

    ccf
    ld b, d
    add hl, hl
    adc [hl]
    ld c, a
    jr nz, jr_032_61b4

    ld d, l
    jr nz, jr_032_61cd

    jp nc, Jump_000_1075

jr_032_61b4:
    cp $5b
    inc h
    ld b, d
    dec d
    ld sp, hl
    ld c, c
    db $10
    ld h, e
    ccf
    ld a, [$1750]
    ld h, d
    ld d, c

jr_032_61c3:
    db $10
    ldh [c], a
    db $fc
    ld h, e
    ccf
    ld h, c
    cp a
    ccf
    ld b, e
    ccf

jr_032_61cd:
    rrca
    ccf
    inc d
    ret


    inc d
    add h
    dec sp
    ld hl, sp-$7c
    reti


    nop
    ld [hl], b
    ld hl, sp+$38
    reti


    inc d
    and b
    inc de
    cp a
    rst RST_10
    cpl
    rst RST_38
    ld l, a
    rst RST_00
    ld a, a
    xor h
    dec hl
    ld e, $4b
    db $fc
    ld a, h
    cp l
    db $10
    ld hl, sp+$41
    ld a, [hl+]
    adc $21
    ld h, [hl]
    ld d, e
    ld [hl+], a
    cp c
    ld c, $59
    ld h, $42
    inc de
    rst RST_38
    ld a, a
    db $fd
    jp hl


    jr nz, jr_032_6275

jr_032_6202:
    xor $ef
    jr z, jr_032_626a

    ld hl, sp-$1a
    add a
    nop
    db $e3
    ld a, a
    and e
    rst RST_10
    ld a, l
    adc a
    ld [hl], e
    ld h, [hl]
    dec d
    ccf
    rst RST_28
    db $10
    db $fc
    ret nz

    ld a, [$1774]
    db $fc
    ld a, a
    db $10
    ld h, c
    rra
    inc sp
    rrca
    inc sp
    rst RST_10
    rrca
    db $10
    rrca
    ld l, d
    inc hl
    call nz, Call_000_2073
    ld hl, sp-$20
    rst RST_30
    ldh a, [$ffe0]
    ld h, b
    ld a, c
    inc h
    add c
    nop
    ld b, d
    nop
    ld d, a
    inc h
    nop
    jr jr_032_6202

    jr nc, jr_032_6263

    pop bc
    jr nc, jr_032_61c3

    cp a
    ccf
    nop
    pop de
    ccf
    db $e3
    ld a, [hl-]
    rst RST_38
    rst RST_38
    rst RST_38
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

jr_032_6263:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_032_626a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_032_6275:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_032_6473:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_032_673f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_032_6c20:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_032_6f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_032_70dc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_032_7123:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_032_74ac:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_032_7a66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_032_7cfc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_032_7e3c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_032_7e9f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_032_7eff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_032_7f3c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_032_7fb7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_032_7fff:
    nop
