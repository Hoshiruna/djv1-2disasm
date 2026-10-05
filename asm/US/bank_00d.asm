; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    nop
    ld b, c
    dec [hl]
    ld b, c
    ldh [c], a
    ld b, c
    rlca
    ld b, d
    inc a
    ld b, d
    sub $42
    ld hl, $7043
    ld b, e
    xor h
    ld b, e
    push bc
    ld b, e
    ldh [rSCX], a
    rst RST_30
    ld b, e
    cpl
    ld b, h
    ld b, c
    ld b, h
    adc e
    ld b, h
    ld d, c
    ld b, l
    xor d
    ld b, l
    daa
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    ld a, d
    ld b, [hl]
    xor h
    ld b, [hl]
    ret


    ld b, [hl]
    db $ec
    ld b, [hl]
    ld e, c
    ld b, a
    xor b
    ld b, a
    db $d3
    ld b, a
    cpl
    ld c, b
    ld h, e
    ld c, b
    ret z

    ld c, b
    jp c, $ff48

    ld c, b
    pop de
    ld c, c
    inc bc
    ld c, d
    dec sp
    ld c, d
    ld c, d
    ld c, d
    ld e, d
    ld c, d
    cp e
    ld c, d
    rst RST_28
    ld c, d
    rra
    ld c, e
    add h
    ld c, e
    dec hl
    ld c, h
    add hl, bc
    ld c, l
    ld c, b
    ld c, l
    ld l, h
    ld c, l
    jp nc, $fb4d

    ld c, l
    dec de
    ld c, [hl]
    ld a, b
    ld c, [hl]
    bit 1, [hl]
    jp c, Jump_000_374e

    ld c, a
    ld h, c
    ld c, a
    add e
    ld c, a
    and e
    ld c, a
    jp Jump_00d_534f


    ld d, b
    db $d3
    ld d, b
    add sp, $50
    ld hl, $4251
    ld d, c
    ld l, d
    ld d, c
    sbc l
    ld d, c
    ld [$5252], sp
    ld d, d
    adc b
    ld d, d
    cp [hl]
    ld d, d
    db $eb
    ld d, d
    ld a, [de]
    ld d, e
    ld [hl], h
    ld d, e
    and l
    ld d, e
    jp hl


    ld d, h
    sub h
    ld d, l
    push hl
    ld d, l
    jr nc, jr_00d_40ea

    ld d, d
    ld d, [hl]
    sbc b
    ld d, [hl]
    db $dd
    ld d, [hl]
    rst RST_38
    ld d, [hl]
    rra
    ld d, a
    ld a, [hl-]
    ld d, a
    ld l, b
    ld d, a
    and d
    ld d, a
    cp d
    ld d, a
    inc b
    ld e, b
    ld b, c
    ld e, b
    ld h, c
    ld e, b
    sub h
    ld e, b
    jp Jump_000_2558


    ld e, c
    ld d, b
    ld e, c
    add l
    ld e, c
    dec l
    ld e, d
    inc l
    ld e, e
    xor l
    ld e, e
    ld a, [hl-]
    ld e, l
    ld h, c
    ld e, l
    ld h, d
    ld e, [hl]
    or a
    ld e, [hl]
    add sp, $5e
    scf
    ld e, a
    jp c, $ad5f

    ld h, b
    dec e
    ld h, d
    add e
    ld h, d
    db $f4
    ld h, d
    add d
    ld h, e
    cp c
    ld h, e
    db $f4
    ld h, e
    ld [hl], c
    ld h, h
    add h
    ld h, h
    sbc a
    ld h, h
    bit 4, h
    ld c, h
    ld h, l
    ld h, d
    ld h, l
    and b
    ld h, l
    jp $e765


    ld h, l

jr_00d_40ea:
    or h
    ld h, [hl]
    db $d3
    ld h, [hl]
    pop af
    ld h, [hl]
    ld de, $e767
    ld h, a
    ld b, h
    ld l, b
    add [hl]
    ld l, b
    cp l
    ld l, b
    pop af
    ld l, b
    ld [hl], b
    ld l, c
    halt
    ld l, c
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    rrca
    ld [de], a
    inc d
    dec bc
    inc b
    ld [de], a
    ld a, [de]
    nop
    ld de, $1d04
    inc b
    inc c
    rrca
    inc de
    jr jr_00d_4137

    inc e
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    dec c
    ld c, $1d
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    inc c
    jr nz, jr_00d_4154

    jr jr_00d_4145

jr_00d_4137:
    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    dec c
    dec e
    ld c, $05
    dec b

jr_00d_4145:
    ld [$0402], sp
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec bc
    inc b
    dec e

jr_00d_4154:
    nop
    ld [$1a11], sp
    dec b
    ld [$0b0b], sp
    inc b
    inc bc
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    inc b
    dec c
    ld [bc], a
    rlca
    ld a, [de]
    ld c, $05
    dec e
    inc bc
    inc b
    nop
    inc de
    rlca
    jr nz, @+$1e

    dec bc
    nop
    add hl, de
    ld [$180b], sp
    ld a, [de]
    ld [de], a
    dec bc
    inc d
    inc c
    rrca
    inc b
    inc bc
    dec e
    ld c, $15
    inc b
    ld de, $001a
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    ld a, [de]
    ld [$1a12], sp
    nop
    dec e
    ld bc, $030e
    jr jr_00d_41b8

    ld de, $0308
    inc bc
    dec bc
    inc b
    inc bc
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    jr nz, jr_00d_41d0

    inc de
    rlca
    inc b
    ld a, [de]

jr_00d_41b8:
    ld [bc], a
    ld c, $11
    rrca
    ld [de], a
    inc b
    ld a, [de]
    ld b, $11
    ld [$120f], sp
    dec e
    nop
    ld a, [de]
    inc de
    inc b
    dec bc
    inc b
    rrca
    rlca
    ld c, $0d
    inc b

jr_00d_41d0:
    ld a, [de]
    ld [$1a0d], sp
    ld [$1213], sp
    dec bc
    inc b
    dec b
    inc de
    ld a, [de]
    rlca
    nop
    dec c
    inc bc
    jr nz, @+$21

    jr jr_00d_41f2

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    dec e
    nop
    ld a, [de]

jr_00d_41f2:
    inc b
    inc d
    ld de, $0f0e
    inc b
    nop
    dec c
    ld a, [de]
    dec bc
    inc d
    rla
    inc d
    ld de, $1d18
    ld [bc], a
    nop
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    rlca
    ld c, $0d
    inc b
    dec e
    ld de, $0204
    inc b
    ld [$0415], sp
    ld de, $1c20
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $11
    inc bc
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    ld bc, $0404
    dec c
    dec e
    rrca
    inc d
    dec bc
    dec bc
    inc b
    inc bc
    ld a, [de]
    ld c, $14
    inc de
    jr nz, jr_00d_425b

    nop
    ld a, [de]
    rrca
    ld c, $0e
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld bc, $0e0b
    ld c, $03
    dec e
    dec bc
    ld [$1204], sp
    ld a, [de]
    inc bc
    ld de, $0818
    dec c
    ld b, $1a
    ld c, $0d
    ld a, [de]

jr_00d_425b:
    inc de
    rlca
    inc b
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    ld a, [de]
    inc de
    ld c, $0f
    jr nz, jr_00d_4284

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld de, $1600
    inc b
    ld de, $0e1a
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld c, $13
    rlca
    inc b
    ld de, $121a
    ld [$0403], sp

jr_00d_4284:
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    ld a, [de]
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    nop
    add hl, bc
    nop
    ld de, $1820
    ld c, $14
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    ld c, $0b
    inc bc
    dec e
    ld [de], a
    ld [bc], a
    ld de, $1300
    ld [bc], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    ld [$1a05], sp
    ld [$1613], sp
    nop
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld [bc], a
    inc b
    ld a, [de]
    add hl, bc
    ld [$0c0c], sp
    ld [$0304], sp
    dec e
    ld c, $0f
    inc b
    dec c
    jr nz, jr_00d_42f5

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld d, $00
    dec bc
    dec bc
    ld a, [de]
    ld [de], a
    nop
    dec b
    inc b
    jr nz, jr_00d_4305

    inc de
    ld c, $0e
    ld a, [de]
    ld bc, $0300
    ld a, [de]
    jr jr_00d_4300

    inc d
    ld a, [de]
    dec c

jr_00d_42f5:
    inc b
    dec d
    inc b
    ld de, $121d
    rlca
    ld c, $16
    inc b
    inc bc

jr_00d_4300:
    ld a, [de]
    inc c
    inc d
    ld [bc], a
    rlca

jr_00d_4305:
    dec e
    nop
    rrca
    inc de
    ld [$1413], sp
    inc bc
    inc b
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    ld [de], a
    nop
    dec b
    inc b
    dec e
    ld de, $010e
    ld bc, $0d08
    ld b, $20
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    dec e
    ld c, $0b
    inc bc
    ld hl, $0005
    ld [de], a
    rlca
    ld [$0d0e], sp
    inc b
    inc bc
    dec e
    inc de
    inc b
    dec bc
    inc b
    rrca
    rlca
    ld c, $0d
    inc b
    jr nz, jr_00d_435e

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $11
    inc bc
    ld a, [de]
    rlca
    nop
    dec c
    ld b, $12
    dec e
    dec bc
    ld [$0f0c], sp
    dec bc
    jr jr_00d_4372

    dec b
    ld de, $0c0e
    ld a, [de]
    inc de

jr_00d_435e:
    rlca
    inc b
    dec e
    inc d
    ld [de], a
    inc b
    dec bc
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    inc de
    rlca
    ld [$060d], sp
    jr nz, jr_00d_438f

    inc de
    rlca

jr_00d_4372:
    ld de, $140e
    ld b, $07
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    jr jr_00d_4392

    inc d
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    inc b
    nop

jr_00d_438f:
    ld [de], a
    jr jr_00d_43af

jr_00d_4392:
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld [$0411], sp
    inc b
    ld [de], a
    ld [bc], a
    nop
    rrca
    inc b
    jr nz, jr_00d_43cb

    ld [$2a13], sp

jr_00d_43af:
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc c
    ld c, $0d
    ld a, [de]
    ld b, b
    ld [hl-], a
    dec e
    rrca
    inc b
    dec c
    ld [bc], a
    ld [$200b], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop

jr_00d_43cb:
    ld a, [de]
    ld a, [bc]
    inc b
    jr jr_00d_43ea

    inc c
    nop
    ld de, $040a
    inc bc
    dec e
    ld h, $05
    ld de, $0d0e
    inc de
    jr nz, jr_00d_4405

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc d
    dec c

jr_00d_43ea:
    dec bc
    nop
    ld bc, $0b04
    inc b
    inc bc
    dec e
    ld a, [bc]
    inc b
    jr jr_00d_4416

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    nop
    inc bc
    inc b
    inc bc
    ld a, [de]
    jr jr_00d_4407

    dec bc
    dec bc

jr_00d_4405:
    ld c, $16

jr_00d_4407:
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    ld [$000b], sp
    dec e

jr_00d_4416:
    dec b
    ld c, $0b
    inc bc
    inc b
    ld de, $021a
    nop
    inc de
    ld [bc], a
    rlca
    inc b
    ld [de], a
    dec e
    jr jr_00d_4435

    inc d
    ld de, $041a
    jr @+$06

    jr nz, jr_00d_444e

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop

jr_00d_4435:
    ld a, [de]
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    ld a, [de]
    ld bc, $170e
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld [$140e], sp
    jr nz, jr_00d_446a

jr_00d_444e:
    ld [de], a
    ld [bc], a
    ld de, $1600
    dec bc
    inc b
    inc bc
    ld a, [de]
    nop
    ld [bc], a
    ld de, $120e
    ld [de], a
    ld a, [de]
    ld [$0813], sp
    ld [de], a
    inc h
    ld a, [de]
    ld h, $00
    ld [bc], a
    inc b
    ld a, [de]
    rlca

jr_00d_446a:
    nop
    ld de, $0803
    dec c
    ld b, $1d
    ld c, $16
    inc b
    ld [de], a
    ld a, [de]
    add hl, bc
    ld c, $04
    jr jr_00d_4495

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    dec e
    ld b, c
    ld sp, $3025
    jr nc, jr_00d_44b8

    jr nz, jr_00d_44b0

    rra
    jr jr_00d_449b

    inc d
    ld a, [de]
    dec b
    ld [$0303], sp
    dec bc
    inc b

jr_00d_4495:
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e

jr_00d_449b:
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld [$0b00], sp
    dec h
    dec e
    dec bc
    ld [$1312], sp
    inc b
    dec c
    ld [$060d], sp
    ld a, [de]
    rlca

jr_00d_44b0:
    nop
    ld de, $1a03
    dec b
    ld c, $11
    inc de

jr_00d_44b8:
    rlca
    inc b
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc
    inc de
    nop
    dec bc
    inc b
    dec e
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    inc d
    inc c
    ld bc, $040b
    ld de, $0212
    dec bc
    ld [$0a02], sp
    ld [$060d], sp
    ld a, [de]
    ld [$130d], sp
    ld c, $1d
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, jr_00d_450b

    jr nz, jr_00d_4509

    nop
    dec b
    inc de
    inc b
    ld de, $001a
    ld a, [de]
    ld d, $07
    ld [$040b], sp
    dec e
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    ld a, [de]
    rlca
    nop
    rrca
    rrca
    inc b
    dec c

jr_00d_4509:
    ld [de], a
    dec e

jr_00d_450b:
    nop
    dec c
    inc bc
    ld a, [de]
    jr jr_00d_451f

    inc d
    ld a, [de]
    ld de, $0004
    dec bc
    ld [$0419], sp
    dec e
    jr jr_00d_452b

    inc d
    ld a, [de]

jr_00d_451f:
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld bc, $1d04
    ld c, $0f
    inc b

jr_00d_452b:
    dec c
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    nop
    dec b
    inc b
    dec e
    ld d, $08
    inc de
    rlca
    ld c, $14
    inc de
    ld a, [de]
    nop
    dec e
    ld [bc], a
    ld c, $0c
    ld bc, $0d08
    nop
    inc de
    ld [$0d0e], sp
    jr nz, jr_00d_4570

    ld [bc], a
    dec bc
    ld [$0a02], sp
    daa
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    inc d
    inc c
    ld bc, $040b
    ld de, $1a12
    dec b
    nop
    dec bc
    dec bc
    dec e
    ld [$130d], sp
    ld c, $1a
    rrca

jr_00d_4570:
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, jr_00d_4590

    nop
    dec e
    db $10
    inc d
    ld [$0a02], sp
    ld a, [de]
    inc de
    inc d
    ld b, $1a
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rlca
    nop
    dec c
    inc bc
    dec bc
    inc b
    ld a, [de]

jr_00d_4590:
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld c, $0e
    ld de, $121a
    ld d, $08
    dec c
    ld b, $12
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    daa
    rra
    nop
    dec b
    inc de
    inc b
    ld de, $131a
    ld de, $0818
    dec c
    ld b, $1a
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $0c
    ld bc, $0d08
    nop
    inc de
    ld [$0d0e], sp
    dec h
    ld a, [de]
    jr jr_00d_45d8

    inc d
    dec e
    inc de
    inc d
    ld b, $1a
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rlca

jr_00d_45d8:
    nop
    dec c
    inc bc
    dec bc
    inc b
    jr nz, @+$1e

    jr jr_00d_45ef

    inc d
    ld a, [de]
    ld de, $0004
    dec bc
    ld [$0419], sp
    ld a, [de]
    jr @+$10

    inc d
    dec e

jr_00d_45ef:
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $11
    ld c, $0d
    ld b, $1d
    ld [bc], a
    ld c, $0c
    ld bc, $0d08
    nop
    inc de
    ld [$0d0e], sp
    ld a, [de]
    ld d, $07
    inc b
    dec c
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $051a
    nop
    ld [$120b], sp
    ld a, [de]
    inc de
    ld c, $1d
    ld c, $0f
    inc b
    dec c
    jr nz, jr_00d_4646

    ld [bc], a
    dec bc
    ld [$0a02], sp
    daa
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    inc de
    ld d, $08
    ld [de], a
    inc de
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, [bc]
    inc b
    jr jr_00d_465e

    inc d
    dec c

jr_00d_4646:
    dec bc
    ld c, $02
    ld a, [bc]
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld c, $0e
    ld de, $1f27
    inc de
    jr jr_00d_4668

    ld [$0002], sp
    dec bc
    dec bc

jr_00d_465e:
    jr jr_00d_4685

    ld a, [de]
    jr jr_00d_4671

    inc d
    ld a, [hl+]
    inc bc
    dec e
    dec b

jr_00d_4668:
    ld [$030d], sp
    ld a, [de]
    dec b
    ld [$040b], sp
    ld [de], a

jr_00d_4671:
    ld a, [de]
    ld [$120d], sp
    ld [$0403], sp
    jr nz, jr_00d_4699

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc

jr_00d_4685:
    inc b
    nop
    inc bc
    dec e
    ld bc, $030e
    jr @+$1c

    dec bc
    jr jr_00d_4699

    dec c
    ld b, $1a
    add hl, bc
    inc d
    ld [de], a
    inc de
    dec e

jr_00d_4699:
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld de, $1300
    rlca
    inc b
    ld de, $0d1a
    inc b
    ld d, $1d
    ld d, $00
    dec bc
    dec bc
    ld a, [de]
    ld [de], a
    nop
    dec b
    inc b
    jr nz, jr_00d_46e8

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld a, [bc]
    inc b
    jr @+$1c

    inc de
    ld c, $1d
    nop
    ld a, [de]
    dec b
    nop
    dec c
    ld [bc], a
    jr @+$1c

    dec b
    ld c, $11
    inc b
    ld [$0d06], sp
    dec e
    ld [bc], a

jr_00d_46e8:
    nop
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $030e
    jr jr_00d_4717

    ld c, $05
    ld a, [de]
    add hl, bc
    ld c, $04
    jr jr_00d_471c

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    jr nz, jr_00d_4726

    jr jr_00d_471a

    inc d
    ld de, $121a
    inc de
    ld c, $0c
    nop
    ld [bc], a
    rlca
    ld a, [de]

jr_00d_4717:
    inc bc
    ld c, $04

jr_00d_471a:
    ld [de], a
    dec e

jr_00d_471c:
    nop
    ld a, [de]
    dec bc
    inc d
    ld de, $0702
    ld a, [de]
    nop
    ld [de], a

jr_00d_4726:
    ld a, [de]
    jr @+$10

    inc d
    dec e
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de
    dec e
    rlca
    ld c, $0b
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld de, $0308
    inc bc
    dec bc
    inc b
    dec e
    rlca
    ld [$1a12], sp
    ld bc, $030e
    jr @+$22

    rra
    jr jr_00d_4769

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc b

jr_00d_4769:
    ld [bc], a
    ld de, $1304
    nop
    ld de, $2a18
    ld [de], a
    dec e
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $03
    ld c, $11
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [bc], a
    rlca
    inc b
    nop
    rrca
    dec e
    rrca
    inc b
    ld de, $1405
    inc c
    inc b
    ld a, [de]
    dec bc
    ld [$060d], sp
    inc b
    ld de, $1a12
    ld [$130d], sp
    rlca
    inc b
    ld a, [de]
    nop
    ld [$2011], sp
    rra
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    jr jr_00d_47ca

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    dec e

jr_00d_47ca:
    inc d
    dec c
    inc d
    ld [de], a
    inc d
    nop
    dec bc
    jr nz, jr_00d_47f2

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $0318
    nop
    jr jr_00d_4809

    dec e
    ld de, $0d14
    ld hl, $050e
    ld hl, $0713
    inc b
    ld hl, $080c

jr_00d_47f2:
    dec bc
    dec bc
    dec e
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld de, $1600
    inc b
    ld de, $001a
    rrca
    rrca

jr_00d_4809:
    inc b
    nop
    ld de, $1312
    ld c, $1a
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    ld bc, $0404
    dec c
    dec e
    ld de, $0204
    inc b
    dec c
    inc de
    dec bc
    jr jr_00d_483d

    rrca
    ld de, $0408
    inc bc
    dec e
    ld c, $0f
    inc b
    dec c
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    ld a, [de]
    inc bc

jr_00d_483d:
    inc b
    ld [de], a
    ld a, [bc]
    dec e
    dec bc
    nop
    inc c
    rrca
    jr nz, jr_00d_4861

    dec b
    inc d
    dec c
    ld [bc], a
    inc de
    ld [$0d0e], sp
    nop
    dec bc
    dec h
    dec e
    dec c
    ld c, $13
    ld a, [de]
    inc bc
    inc b
    ld [bc], a
    ld c, $11
    nop
    inc de
    ld [$0415], sp

jr_00d_4861:
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc de
    jr @+$11

    inc b
    ld d, $11
    ld [$0413], sp
    ld de, $0520
    ld c, $11
    ld a, [de]
    inc de
    rlca
    ld c, $12
    inc b
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    inc bc
    inc b
    rla
    inc de
    inc b
    ld de, $1308
    jr jr_00d_48b6

    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    dec e
    rrca
    ld de, $1304
    inc de
    jr @+$1c

    rlca
    nop
    dec c
    inc bc
    jr jr_00d_48c4

    jr nz, @+$22

    inc e
    jr @+$10

    inc d
    dec h
    ld a, [de]
    rlca
    ld c, $16
    inc b
    dec d
    inc b
    ld de, $1d25
    rrca

jr_00d_48b6:
    ld de, $0504
    inc b
    ld de, $131a
    rlca
    inc b
    ld a, [de]
    rrca
    inc b
    dec c
    ld [bc], a

jr_00d_48c4:
    ld [$270b], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc de
    inc b
    dec bc
    inc b
    rrca
    rlca
    ld c, $0d
    inc b
    jr nz, jr_00d_48f9

    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    nop
    ld a, [de]
    dec bc
    inc b
    ld b, $00
    dec bc
    ld hl, $0812
    add hl, de
    inc b
    dec e
    inc b
    dec c
    dec d
    inc b

jr_00d_48f9:
    dec bc
    ld c, $0f
    inc b
    jr nz, jr_00d_491e

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0b08
    dec bc
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    nop
    ld a, [de]
    rrca
    rlca
    nop
    ld de, $000c
    ld [bc], a
    jr jr_00d_493b

    ld a, [de]
    inc de
    rlca

jr_00d_491e:
    inc b
    dec e
    nop
    inc bc
    inc bc
    ld de, $1204
    ld [de], a
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    inc h
    dec e
    inc bc
    ld de, $1a20
    ld bc, $0e11
    inc bc
    jr @+$2c

    ld [de], a
    dec h

jr_00d_493b:
    dec e
    add hl, sp
    inc sp
    inc [hl]
    ld a, [de]
    ld [de], a
    rlca
    inc b
    ld de, $000c
    dec c
    ld a, [de]
    ld [de], a
    inc de
    jr nz, jr_00d_4969

    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    dec h
    ld a, [de]
    ld [$200b], sp
    inc e
    ld h, $21
    ld [$150d], sp
    ld c, $08
    ld [bc], a
    inc b
    ld hl, $311d
    jr nz, jr_00d_4981

    ld [bc], a
    nop

jr_00d_4969:
    rrca
    ld [de], a
    inc d
    dec bc
    inc b
    ld [de], a
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $1d30
    ld [hl-], a
    jr nz, @+$1c

    ld [de], a
    ld c, $03
    ld [$0c14], sp
    dec e
    ld a, [de]
    ld a, [de]

jr_00d_4981:
    ld a, [de]
    rrca
    inc b
    dec c
    inc de
    ld c, $13
    rlca
    nop
    dec bc
    ld a, [de]
    ld b, c
    dec [hl]
    ld [hl], $1d
    inc sp
    jr nz, jr_00d_49ad

    inc c
    inc b
    inc bc
    ld de, $1904
    ld [$040d], sp
    ld a, [de]
    ld b, c
    ld [hl-], a
    ld [hl], $1d
    inc [hl]
    jr nz, @+$1c

    inc bc
    ld [$1304], sp
    rlca
    nop
    dec c
    ld c, $0b

jr_00d_49ad:
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    inc de
    ld de, $0c08
    inc b
    dec c
    inc b
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld b, c
    inc [hl]
    jr nc, jr_00d_49dc

    inc de
    ld c, $13
    nop
    dec bc
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $3233
    ld h, $1f
    ld [$1a13], sp
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    dec d

jr_00d_49dc:
    nop
    ld b, $14
    inc b
    dec bc
    jr @+$1f

    dec b
    nop
    inc c
    ld [$080b], sp
    nop
    ld de, $011a
    inc d
    inc de
    ld a, [de]
    jr @+$10

    inc d
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld bc, $1a04
    ld [de], a
    inc d
    ld de, $2004
    rra
    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld de, $0c00
    rrca
    inc b
    inc bc
    ld a, [de]
    db $10
    inc d
    nop
    ld de, $0413
    ld de, $1d12
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    nop
    ld de, $2a18
    ld [de], a
    dec e
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, jr_00d_4a5a

    ld [$1a13], sp
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    jr nz, @+$21

    ld [$1a13], sp
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    jr nz, jr_00d_4a79

jr_00d_4a5a:
    jr jr_00d_4a6a

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    dec e
    inc bc
    ld [$060d], sp

jr_00d_4a6a:
    jr jr_00d_4a86

    inc d
    rrca
    ld [de], a
    inc de
    nop
    ld [$1211], sp
    dec e
    rlca
    nop
    dec bc
    dec bc

jr_00d_4a79:
    jr nz, @+$1e

    jr jr_00d_4a8b

    inc d
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]

jr_00d_4a86:
    ld [de], a
    ld c, $0c
    inc b
    dec e

jr_00d_4a8b:
    dec b
    nop
    inc bc
    inc b
    inc bc
    ld a, [de]
    rrca
    ld c, $12
    inc de
    inc b
    ld de, $1d12
    ld c, $05
    ld a, [de]
    ld c, $0b
    inc bc
    ld a, [de]
    ld bc, $170e
    inc b
    ld de, $1d12
    ld [bc], a
    ld c, $15
    inc b
    ld de, $0d08
    ld b, $1a
    inc de
    rlca
    inc b
    dec e
    ld d, $00
    dec bc
    dec bc
    ld [de], a
    jr nz, jr_00d_4ada

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld c, $12
    inc de
    inc b
    ld de, $0e1a
    dec b
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    ld bc, $170e
    inc b
    ld de, $0d1a
    nop
    inc c

jr_00d_4ada:
    inc b
    inc bc
    dec e
    ld h, $03
    ld c, $06
    rlca
    ld c, $14
    ld [de], a
    inc b
    ld h, $1a
    ld de, $0b08
    inc b
    jr @+$22

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld c, $12
    inc de
    inc b
    ld de, $0e1a
    dec b
    ld a, [de]
    nop
    ld bc, $170e
    inc b
    ld de, $0d1a
    nop
    inc c
    inc b
    inc bc
    dec e
    ld h, $0f
    inc d
    dec b
    dec b
    ld h, $1a
    inc c
    nop
    ld [bc], a
    inc c
    inc d
    dec b
    dec b
    inc b
    dec c
    jr nz, jr_00d_4b3e

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld c, $12
    inc de
    inc b
    ld de, $0e1a
    dec b
    dec e
    nop
    ld a, [de]
    ld bc, $170e
    inc b
    ld de, $1a25
    inc de
    rlca
    inc b
    ld a, [de]
    dec b

jr_00d_4b3e:
    nop
    ld [bc], a
    inc b
    dec e
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    ld [de], a
    dec bc
    ld [$0706], sp
    inc de
    dec bc
    jr jr_00d_4b6e

    dec b
    nop
    inc c
    ld [$080b], sp
    nop
    ld de, $1c20
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    nop
    inc c
    inc b
    dec e
    inc d
    dec c
    inc bc
    inc b
    ld de, $040d
    nop
    inc de
    rlca

jr_00d_4b6e:
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    dec e
    ld h, $00
    ld [bc], a
    inc b
    ld a, [de]
    rlca
    nop
    ld de, $0803
    dec c
    ld b, $20
    ld h, $1f
    jr jr_00d_4b94

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [de], a
    rlca
    nop
    ld a, [bc]
    inc b
    dec e

jr_00d_4b94:
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    jr jr_00d_4bb5

    inc d
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    dec e

jr_00d_4bb5:
    inc de
    rlca
    ld [$1a12], sp
    ld b, $14
    jr jr_00d_4bde

    jr nz, @+$22

    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    nop
    inc c
    inc b
    ld a, [de]
    ld [$1d12], sp
    nop
    ld [bc], a
    inc b
    ld a, [de]
    rlca
    nop
    ld de, $0803
    dec c
    ld b, $20
    jr nz, jr_00d_4bfb

    inc e
    nop
    ld [bc], a

jr_00d_4bde:
    inc b
    jr nz, @+$22

    jr nz, @+$1c

    ld [$1a13], sp
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    nop
    ld [de], a
    ld [$1a05], sp
    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    nop
    dec bc

jr_00d_4bfb:
    inc c
    ld c, $12
    inc de
    dec e
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec b
    inc b
    inc b
    dec bc
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    dec bc
    ld [$120f], sp
    ld a, [de]
    nop
    ld d, $00
    jr jr_00d_4c25

jr_00d_4c25:
    ld b, $00
    ld [$200d], sp
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc b
    inc c
    ld c, $11
    ld [$1204], sp
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    inc bc
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    jr jr_00d_4c55

    inc d
    dec e
    ld de, $0204
    ld c, $06
    dec c
    ld [$0419], sp
    ld a, [de]
    inc de
    rlca

jr_00d_4c55:
    inc b
    dec e
    rrca
    ld c, $12
    inc de
    inc b
    ld de, $0e1a
    dec b
    ld a, [de]
    jr jr_00d_4c71

    inc d
    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    rlca
    nop
    ld de, $0803
    dec c
    ld b, $25

jr_00d_4c71:
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    dec c
    dec e
    inc bc
    inc d
    ld de, $0d08
    ld b, $1a
    jr jr_00d_4c8f

    inc d
    ld de, $0e1a
    dec bc
    inc bc
    dec e
    ld bc, $170e
    ld [$060d], sp
    ld a, [de]

jr_00d_4c8f:
    inc bc
    nop
    jr jr_00d_4ca5

    daa
    inc e
    jr jr_00d_4ca5

    inc d
    ld de, $111a
    inc b
    ld [bc], a
    nop
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de

jr_00d_4ca5:
    dec e
    jr jr_00d_4cb6

    inc d
    ld de, $0c1a
    nop
    dec c
    nop
    ld b, $04
    ld de, $161a
    nop
    ld [de], a

jr_00d_4cb6:
    ld a, [de]
    nop
    ld b, $14
    jr jr_00d_4cd6

    dec c
    nop
    inc c
    inc b
    inc bc
    ld a, [de]
    add hl, bc
    ld c, $04
    jr jr_00d_4ce4

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    jr nz, jr_00d_4ceb

    ld bc, $1314
    ld a, [de]
    inc de
    rlca
    nop

jr_00d_4cd6:
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e
    nop
    dec bc
    dec bc
    ld a, [de]

jr_00d_4ce4:
    jr jr_00d_4cf4

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c

jr_00d_4ceb:
    dec e
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104

jr_00d_4cf4:
    ld a, [de]
    dec c
    ld [$0402], sp
    dec e
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    jr jr_00d_4d2f

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    dec bc
    dec bc
    ld a, [de]
    ld [de], a
    dec bc
    ld [$0403], sp
    ld [de], a
    dec e
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    dec h
    dec e
    ld [de], a
    ld [$040b], sp
    dec c

jr_00d_4d2f:
    inc de
    dec bc
    jr @+$1c

    rlca
    ld [$0803], sp
    dec c
    ld b, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec bc
    inc b
    dec d
    nop
    inc de
    ld c, $11
    jr nz, jr_00d_4d67

    jr jr_00d_4d58

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc b

jr_00d_4d58:
    ld [bc], a
    ld c, $0d
    inc bc
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $071d
    nop
    dec bc
    dec bc

jr_00d_4d67:
    ld d, $00
    jr jr_00d_4d8b

    rra
    jr jr_00d_4d7c

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [$060d], sp
    dec e

jr_00d_4d7c:
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld [$0311], sp
    ld a, [de]
    dec b
    dec bc

jr_00d_4d8b:
    ld c, $0e
    ld de, $0805
    ld de, $1a04
    inc b
    ld [de], a
    ld [bc], a
    nop
    rrca
    inc b
    jr nz, jr_00d_4db7

    nop
    ld a, [de]
    ld bc, $140e
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    rrca
    nop
    dec c
    ld [$1d02], sp
    rlca
    ld [$1213], sp
    ld a, [de]
    jr jr_00d_4dc0

    inc d
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]

jr_00d_4db7:
    jr jr_00d_4dc7

    inc d
    dec e
    ld [de], a
    inc de
    ld de, $0614

jr_00d_4dc0:
    ld b, $0b
    inc b
    ld a, [de]
    ld d, $08
    inc de

jr_00d_4dc7:
    rlca
    dec e
    dec d
    inc b
    ld de, $0813
    ld b, $0e
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    dec e
    dec bc
    inc b
    nop
    inc bc
    ld [$060d], sp
    ld a, [de]
    ld [$130d], sp
    ld c, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    jr nz, jr_00d_4e1a

    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld [$0411], sp
    ld a, [de]
    inc b
    ld [de], a
    ld [bc], a
    nop
    rrca
    inc b
    ld a, [de]
    ld [$0f12], sp
    ld de, $1304
    inc de
    jr jr_00d_4e2e

    ld de, $1214
    inc de
    jr jr_00d_4e3a

jr_00d_4e1a:
    rra
    jr jr_00d_4e2b

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld c, $0d
    ld a, [de]
    nop
    ld a, [de]
    dec b
    ld [$0411], sp

jr_00d_4e2b:
    dec e
    inc b
    ld [de], a

jr_00d_4e2e:
    ld [bc], a
    nop
    rrca
    inc b
    jr nz, jr_00d_4e50

    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca

jr_00d_4e3a:
    inc b
    ld c, $11
    jr @+$1c

    ld [$1a12], sp
    inc de
    rlca
    nop
    inc de
    ld [$1a05], sp
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a

jr_00d_4e50:
    ld a, [de]
    nop
    ld a, [de]
    dec b
    ld [$0411], sp
    dec h
    jr jr_00d_4e68

    inc d
    ld a, [de]
    inc d
    ld [de], a
    inc b
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]
    ld c, $05
    dec e
    inc de

jr_00d_4e68:
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    inc b
    ld [de], a
    ld [bc], a
    nop
    rrca
    inc b
    jr nz, jr_00d_4e97

    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    inc bc
    inc bc
    inc b
    ld de, $041a
    dec c
    inc bc
    ld [de], a
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    dec c
    ld [$040d], sp
    ld a, [de]
    dec b
    inc b
    inc b
    inc de
    dec e

jr_00d_4e97:
    nop
    ld bc, $150e
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $11
    ld c, $14
    dec c
    inc bc
    jr nz, jr_00d_4ec5

    jr jr_00d_4eb9

    inc d
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    add hl, bc
    inc d
    inc c
    rrca
    dec e
    inc bc

jr_00d_4eb9:
    ld c, $16
    dec c
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    nop

jr_00d_4ec5:
    dec bc
    dec bc
    inc b
    jr jr_00d_4eea

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    jr nz, @+$21

    jr jr_00d_4eea

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de

jr_00d_4eea:
    ld de, $0404
    inc de
    ld a, [de]
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, jr_00d_4f23

    nop
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    ld a, [de]
    ld b, $0b
    nop
    dec c
    ld [bc], a
    inc b
    dec e
    inc de
    inc b
    dec bc
    dec bc
    ld [de], a
    ld a, [de]
    jr jr_00d_4f2c

    inc d
    ld a, [de]
    dec c
    ld c, $1a

jr_00d_4f23:
    ld c, $0d
    inc b
    dec e
    inc b
    dec bc
    ld [de], a
    inc b
    ld a, [de]

jr_00d_4f2c:
    ld [$1a12], sp
    nop
    ld de, $140e
    dec c
    inc bc
    jr nz, jr_00d_4f56

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $0b1d
    inc b
    nop
    inc bc
    ld [$060d], sp
    ld a, [de]
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    inc de
    rlca

jr_00d_4f56:
    inc b
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    jr nz, jr_00d_4f80

    jr jr_00d_4f71

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1d04
    ld d, $00

jr_00d_4f71:
    ld [de], a
    inc de
    ld [$060d], sp
    ld a, [de]
    jr jr_00d_4f87

    inc d
    ld de, $0c1d
    ld c, $0d
    inc b

jr_00d_4f80:
    jr @+$22

    rra
    ld [$2a13], sp
    ld [de], a

jr_00d_4f87:
    ld a, [de]
    nop
    ld a, [de]
    dec d
    inc b
    ld de, $1d18
    inc b
    dec bc
    inc b
    ld b, $00
    dec c
    inc de
    ld a, [de]
    dec bc
    inc d
    rla
    inc d
    ld de, $1d18
    ld [bc], a
    nop
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld de, $0d0e
    inc de
    dec e
    inc bc
    ld c, $0e
    ld de, $131a
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    nop
    ld de, $1f20
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_00d_4ff1

    ld a, [de]
    nop
    ld a, [de]
    rrca
    nop
    ld [$1d0d], sp
    ld [de], a
    rlca
    ld c, $0e
    inc de
    ld [de], a
    ld a, [de]
    inc de
    rlca
    ld de, $140e
    ld b, $07
    dec e
    jr @+$10

    inc d
    ld de, $071a
    inc b
    nop
    inc bc
    ld a, [de]
    ld [bc], a
    nop
    inc d
    ld [de], a

jr_00d_4ff1:
    ld [$060d], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    ld de, $030b
    ld a, [de]
    inc de
    ld c, $1d
    inc c
    ld c, $0c
    inc b
    dec c
    inc de
    nop
    ld de, $0b08
    jr jr_00d_502b

    ld [de], a
    rrca
    ld [$200d], sp
    jr nz, jr_00d_5035

    ld a, [de]
    inc e
    jr @+$10

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    dec e
    ld d, $07
    nop
    inc de
    ld a, [de]

jr_00d_502b:
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld d, $00
    ld [de], a
    dec h
    ld a, [de]

jr_00d_5035:
    ld bc, $1314
    jr jr_00d_5048

    inc d
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    ld [$1a13], sp
    ld [bc], a
    nop
    dec c
    ld a, [hl+]

jr_00d_5048:
    inc de
    dec e
    ld bc, $1a04
    ld b, $0e
    ld c, $03
    daa
    rra
    nop
    ld a, [de]
    rlca
    ld c, $13
    ld a, [de]
    dec b
    dec bc
    nop
    ld [de], a
    rlca
    ld a, [de]
    rrca
    nop
    ld [de], a
    ld [de], a
    inc b
    ld [de], a
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    jr jr_00d_507d

    inc d
    daa
    inc e
    ld [de], a
    ld c, $0c
    inc b
    rlca
    ld c, $16
    ld a, [de]
    inc de
    rlca
    inc b

jr_00d_507d:
    ld a, [de]
    rrca
    nop
    ld [$1d0d], sp
    ld [de], a
    dec bc
    ld c, $16
    dec bc
    jr @+$1c

    inc b
    ld bc, $1201
    jr nz, jr_00d_50ac

    jr jr_00d_50a0

    inc d
    ld a, [de]
    ld bc, $0604
    ld [$1a0d], sp
    inc de
    ld c, $1a
    dec b
    inc b
    inc b

jr_00d_50a0:
    dec bc
    dec e
    ld bc, $1304
    inc de
    inc b
    ld de, $1a25
    nop
    dec bc

jr_00d_50ac:
    inc c
    ld c, $12
    inc de
    dec e
    dec bc
    ld [$040a], sp
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    ld c, $0e
    dec bc
    inc bc
    ld de, $0d08
    ld a, [bc]
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld d, $00
    inc de
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec c
    nop
    ld de, $0e11
    ld d, $1d
    nop
    dec bc
    dec bc
    inc b
    jr @+$22

    rra
    jr jr_00d_50f8

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [$060d], sp
    ld a, [de]

jr_00d_50f8:
    ld c, $0d
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld a, [de]
    ld [$1d0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld de, $1204
    inc de
    nop
    inc d
    ld de, $0d00
    inc de
    jr nz, jr_00d_5140

    ld [bc], a
    dec bc
    ld [$0a02], sp
    daa
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $081a
    ld [de], a
    ld a, [de]
    dec c
    ld c, $16
    dec e
    inc d
    dec c
    dec bc
    ld c, $02
    ld a, [bc]
    inc b
    inc bc

jr_00d_5140:
    jr nz, jr_00d_5161

    jr jr_00d_5152

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc b

jr_00d_5152:
    ld d, $04
    ld de, $1a12
    inc d
    dec c
    inc bc
    inc b
    ld de, $131a
    rlca
    inc b
    dec e

jr_00d_5161:
    inc c
    nop
    dec c
    rlca
    ld c, $0b
    inc b
    jr nz, jr_00d_5189

    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    rlca
    ld c, $0b
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $15
    inc b
    ld de, $121d
    ld [$1213], sp
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc c

jr_00d_5189:
    ld [$0303], sp
    dec bc
    inc b
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    jr nz, jr_00d_51bc

    jr jr_00d_51ad

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]

jr_00d_51ad:
    ld c, $05
    nop
    ld a, [de]
    dec c
    inc b
    ld d, $12
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    jr nz, jr_00d_51d8

jr_00d_51bc:
    jr jr_00d_51cc

    inc d
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc de
    rlca

jr_00d_51cc:
    ld [$0c12], sp
    ld [$0706], sp
    inc de
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]

jr_00d_51d8:
    ld bc, $1d04
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1204
    inc de
    ld a, [de]
    inc de
    ld [$040c], sp
    ld a, [de]
    inc de
    ld c, $1d
    ld bc, $1411
    ld [de], a
    rlca
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    ld c, $0d
    dec e
    ld [bc], a
    inc d
    ld de, $0411
    dec c
    inc de
    ld a, [de]
    inc b
    dec d
    inc b
    dec c
    inc de
    ld [de], a
    jr nz, jr_00d_5227

    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    ld d, $12
    rrca
    nop
    rrca
    inc b
    ld de, $1a12
    nop
    ld de, $0504
    ld c, $11
    ld a, [de]
    ld [de], a
    nop
    dec bc
    inc b
    jr nz, jr_00d_5240

    jr jr_00d_5234

    inc d

jr_00d_5227:
    ld a, [hl+]
    inc bc
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    ld a, [de]
    ld b, $14
    ld [$130b], sp

jr_00d_5234:
    jr jr_00d_5253

    ld de, $0004
    inc bc
    ld [$060d], sp
    ld a, [de]
    ld c, $0d

jr_00d_5240:
    inc b
    dec e
    ld d, $08
    inc de
    rlca
    ld c, $14
    inc de
    ld a, [de]
    rrca
    nop
    jr jr_00d_5256

    dec c
    ld b, $20
    rra
    inc de

jr_00d_5253:
    rlca
    inc b
    ld a, [de]

jr_00d_5256:
    rlca
    inc b
    nop
    inc bc
    dec bc
    ld [$040d], sp
    dec e
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    ld a, [de]
    ld h, $13
    rlca
    inc b
    dec e
    add hl, bc
    nop
    rrca
    nop
    dec c
    inc b
    ld [de], a
    inc b
    ld a, [de]
    ld bc, $0c0e
    ld bc, $0f1d
    inc b
    nop
    ld de, $1a0b
    rlca
    nop
    ld de, $0e01
    ld de, $2627
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    ld d, $12
    ld bc, $180e
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    nop
    inc de
    ld a, [de]
    jr jr_00d_52ad

    inc d
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca
    ld c, $14
    ld b, $07
    dec e
    rlca
    inc b

jr_00d_52ad:
    ld a, [de]
    ld de, $0204
    ld c, $06
    dec c
    ld [$0419], sp
    ld [de], a
    ld a, [de]
    jr jr_00d_52c9

    inc d
    jr nz, jr_00d_52dd

    inc de
    rlca
    ld [$1a12], sp
    dec c
    inc b
    ld d, $12
    ld [de], a
    inc de

jr_00d_52c9:
    nop
    dec c
    inc bc
    ld a, [de]
    ld [$1d12], sp
    inc c
    nop
    inc bc
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b

jr_00d_52dd:
    ld [$040d], sp
    ld [de], a
    inc de
    rrca
    dec bc
    jr @+$18

    ld c, $0e
    inc bc
    jr nz, @+$21

    jr jr_00d_52fb

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de

jr_00d_52fb:
    ld de, $0404
    inc de
    ld a, [de]
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    ld d, $12
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    jr nz, jr_00d_5339

    ld h, $08
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc de
    ld d, $04
    dec c
    inc de
    jr jr_00d_5348

    dec b
    ld [$0415], sp
    dec e
    ld [bc], a
    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    ld c, $0f
    jr @+$27

jr_00d_5339:
    ld a, [de]
    inc c
    nop
    ld [bc], a
    daa
    inc e
    ld [$1a05], sp
    jr jr_00d_5344

jr_00d_5344:
    ld a, [de]
    ld d, $00
    dec c

jr_00d_5348:
    inc de
    dec h
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b

Jump_00d_534f:
    dec e
    inc bc
    nop
    ld a, [de]
    dec b
    nop
    ld de, $111a
    ld [$0706], sp
    inc de
    ld a, [de]
    ld c, $0d
    inc b
    dec h
    ld h, $12
    nop
    jr jr_00d_5378

    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    ld d, $12
    ld bc, $180e
    jr nz, @+$21

    jr @+$10

    inc d
    ld a, [de]

jr_00d_5378:
    rlca
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec c
    inc b
    ld d, $12
    ld bc, $180e
    ld a, [de]
    nop
    ld a, [de]
    db $10
    inc d
    nop
    ld de, $0413
    ld de, $001d
    dec c
    inc bc
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    nop
    ld a, [de]
    rrca
    nop
    rrca
    inc b
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    ld d, $12
    ld bc, $180e
    ld a, [de]
    ld [de], a
    nop
    jr @+$14

    dec h
    dec e
    ld h, $03
    nop
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e
    ld bc, $0404
    dec c
    ld a, [de]
    ld de, $000e
    inc c
    ld [$060d], sp
    dec e
    ld a, [hl+]
    ld de, $140e
    dec c
    inc bc
    ld a, [de]
    rlca
    inc b
    ld de, $1d04
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    dec b
    ld c, $11
    dec e
    nop
    dec c
    jr jr_00d_53fc

    dec c
    inc b
    ld a, [de]
    ld [de], a
    inc d
    ld [de], a
    rrca
    ld [$0802], sp
    ld c, $14
    ld [de], a
    dec e

jr_00d_53fc:
    dec bc
    ld [$040a], sp
    jr nz, jr_00d_541e

    ld a, [hl+]
    inc bc
    inc b
    jr jr_00d_5421

    ld b, $0e
    inc de
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    nop
    dec bc
    dec bc
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    inc bc
    nop

jr_00d_541e:
    inc c
    inc b
    dec e

jr_00d_5421:
    ld d, $07
    ld c, $1a
    dec bc
    ld [$0415], sp
    ld [de], a
    ld a, [de]
    nop
    ld [bc], a
    ld de, $120e
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    jr nz, jr_00d_5465

    ld [de], a
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    ld [$1a03], sp
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [de], a
    rlca
    inc b
    dec e
    ld [de], a
    nop
    ld d, $1a
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    dec b

jr_00d_5465:
    inc d
    dec c
    dec c
    jr jr_00d_5487

    ld b, $0e
    ld [$060d], sp
    ld [de], a
    ld hl, $0d0e
    ld a, [de]
    ld a, [hl+]
    ld de, $140e
    dec c
    inc bc
    dec e
    inc de
    rlca
    inc b
    ld de, $2504
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a

jr_00d_5487:
    rlca
    inc b
    dec e
    ld b, $00
    dec d
    inc b
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    ld [bc], a
    ld de, $0f08
    inc de
    ld [$0d0e], sp
    ld c, $05
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    nop
    ld d, $05
    inc d
    dec bc
    ld a, [de]
    dec bc
    ld c, $13
    dec bc
    ld [$040a], sp
    ld a, [de]
    jr jr_00d_54d3

    inc d
    daa
    inc e
    jr jr_00d_54ca

jr_00d_54ca:
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $161a

jr_00d_54d3:
    nop
    inc de
    ld [bc], a
    rlca
    dec e
    jr @+$10

    inc d
    ld de, $121a
    inc de
    inc b
    rrca
    dec h
    ld a, [de]
    ld bc, $0114
    daa
    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    ld d, $12
    ld bc, $180e
    dec e
    ld [de], a
    rrca
    dec bc
    nop
    inc de
    inc de
    inc b
    ld de, $1a12
    nop
    dec bc
    dec bc
    ld a, [de]
    ld c, $15
    inc b
    ld de, $0713
    inc b
    ld a, [de]
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    rrca
    nop
    ld b, $04
    dec h
    dec e
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_00d_5546

    rlca
    inc b
    nop
    inc bc
    dec bc
    ld [$040d], sp
    ld a, [de]
    rlca
    inc b
    ld a, [hl+]
    dec bc
    dec bc
    dec e
    inc b
    dec d
    inc b
    ld de, $0c1a
    nop
    ld a, [bc]
    inc b
    jr nz, jr_00d_555f

    inc d
    dec c
    dec b

jr_00d_5546:
    ld c, $11
    inc de
    inc d
    dec c
    nop
    inc de
    inc b
    dec bc
    jr jr_00d_5576

    dec e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    rrca
    ld de, $010e
    nop
    ld bc, $180b

jr_00d_555f:
    dec e
    ld b, $0e
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1a04
    inc de
    rlca
    inc b
    dec e
    dec bc
    nop
    ld [de], a
    inc de
    ld a, [de]
    rlca

jr_00d_5576:
    inc b
    nop
    inc bc
    dec bc
    ld [$040d], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    jr jr_00d_5592

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $0c1a
    nop
    ld a, [bc]
    inc b

jr_00d_5592:
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    ld d, $12
    ld bc, $180e
    ld a, [de]
    ld [de], a
    nop
    jr @+$14

    dec e
    ld [$1a0d], sp
    nop
    ld a, [de]
    dec bc
    ld c, $16
    ld a, [de]
    dec d
    ld c, $08
    ld [bc], a
    inc b
    dec h
    dec e
    ld h, $00
    ld de, $1a04
    jr jr_00d_55bc

jr_00d_55bc:
    ld a, [de]
    ld [de], a
    inc de
    ld [$0b0b], sp
    dec e
    rlca
    inc b
    ld de, $2804
    inc e
    jr jr_00d_55d9

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $011a
    inc b
    nop

jr_00d_55d9:
    inc de
    dec e
    ld [$2513], sp
    ld a, [de]
    ld bc, $0114
    daa
    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1801
    ld a, [de]
    dec bc
    nop
    inc d
    ld b, $07
    ld [de], a
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    nop
    jr @+$14

    dec h
    ld a, [de]
    ld h, $18
    nop
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    ld bc, $1a04
    dec c
    inc b
    ld d, $1a
    ld [$1a0d], sp
    inc de
    ld c, $16
    dec c
    ld a, [de]
    jr nz, jr_00d_5639

    jr nz, @+$18

    inc b
    ld a, [hl+]
    ld de, $1a04
    nop
    dec bc
    ld de, $0004
    inc bc
    jr jr_00d_5645

    inc de
    rlca
    inc b
    ld de, $2704
    ld h, $1f
    jr jr_00d_5640

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de

jr_00d_5639:
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e
    nop

jr_00d_5640:
    dec c
    jr jr_00d_565d

    ld [de], a
    inc de

jr_00d_5645:
    ld de, $0d04
    ld b, $13
    rlca
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    jr @+$1c

    ld b, $08
    dec d

jr_00d_565d:
    inc b
    ld [de], a
    ld a, [de]
    jr jr_00d_5670

    inc d
    dec e
    nop
    ld a, [de]
    dec c
    nop
    ld [de], a
    inc de
    jr jr_00d_5686

    dec bc
    ld c, $0e
    ld a, [bc]

jr_00d_5670:
    ld hl, $181a
    ld c, $14
    dec e
    inc bc
    inc b
    ld [bc], a
    ld [$0403], sp
    ld a, [de]
    nop
    ld b, $00
    ld [$120d], sp
    inc de
    dec e
    inc d

jr_00d_5686:
    ld [de], a
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    rrca
    ld [de], a
    inc d
    dec bc
    inc b
    jr nz, @+$21

    jr jr_00d_56a8

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [$060d], sp
    ld a, [de]

jr_00d_56a8:
    ld c, $0d
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld a, [de]
    ld [$1d0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    rrca
    inc b
    inc de
    inc b
    ld a, [hl+]
    ld [de], a
    dec e
    nop
    dec bc
    dec bc
    ld a, [de]
    dec c
    ld [$0413], sp
    ld a, [de]
    ld b, $14
    dec c
    dec e
    rrca
    nop
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    dec e
    ld h, $06
    inc d
    dec c
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    inc c
    inc c
    ld c, $20
    ld h, $1f
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec c
    inc de
    ld de, $0d00
    ld [bc], a
    inc b
    dec e
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld c, $11
    inc b
    jr nz, jr_00d_573e

    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    nop
    ld a, [de]
    inc de
    ld de, $1200
    rlca
    ld a, [de]
    ld [bc], a
    nop
    dec c
    jr nz, @+$21

    jr jr_00d_574a

    inc d
    ld a, [hl+]

jr_00d_573e:
    ld de, $1a04
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de

jr_00d_574a:
    ld de, $0404
    inc de
    ld a, [de]
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    dec c
    ld a, [de]
    ld [de], a
    rlca
    ld c, $0f
    jr nz, jr_00d_5787

    jr jr_00d_5778

    inc d
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    inc c
    ld c, $0d
    ld b, $12

jr_00d_5778:
    inc de
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0c00
    ld [de], a
    rlca
    nop
    ld [bc], a
    ld a, [bc]
    dec bc

jr_00d_5787:
    inc b
    dec e
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    dec e
    rrca
    inc b
    ld c, $11
    ld [$1a00], sp
    ld [de], a
    inc de
    jr nz, @+$21

    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    inc bc
    nop
    ld de, $1d0a
    nop
    dec bc
    dec bc
    inc b
    jr @+$22

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1801
    dec e
    ld [bc], a
    rlca
    inc d
    ld [bc], a
    ld a, [bc]
    dec bc
    inc b
    ld [de], a
    dec h
    ld a, [de]
    ld h, $07
    inc b
    jr jr_00d_57f0

    inc c
    ld [$1312], sp
    inc b
    ld de, $1a25
    ld d, $07
    nop
    inc de
    ld a, [de]
    inc bc
    ld c, $1d
    jr jr_00d_57e5

jr_00d_57e5:
    ld a, [de]
    inc c
    inc b
    nop
    dec c
    jr z, jr_00d_5806

    inc e
    ld d, $04
    ld a, [de]

jr_00d_57f0:
    nop
    ld de, $1a04
    nop
    dec bc
    ld de, $0004
    inc bc
    jr jr_00d_5819

    inc de
    rlca
    inc b
    ld de, $2704
    ld h, $1f
    inc de
    rlca

jr_00d_5806:
    inc b
    ld a, [de]
    dec b
    ld [$0411], sp
    ld a, [de]
    inc b
    ld [de], a
    ld [bc], a
    nop
    rrca
    inc b
    ld a, [de]
    ld [$1312], sp
    ld c, $0e

jr_00d_5819:
    ld a, [de]
    rlca
    ld [$0706], sp
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    jr @+$10

    inc d
    dec e
    inc de
    ld c, $1a
    ld de, $0004
    ld [bc], a
    rlca
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    jr nz, jr_00d_5860

    jr jr_00d_5851

    inc d
    ld a, [hl+]
    ld de, $1a04
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec c

jr_00d_5851:
    inc bc
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    dec bc
    dec bc
    inc b
    jr @+$22

jr_00d_5860:
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    inc b
    jr jr_00d_5883

    rlca
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc c
    nop
    ld de, $1a0a
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    dec b
    ld c, $11
    inc b
    ld [$0d06], sp
    dec e

jr_00d_5883:
    ld [bc], a
    nop
    ld de, $0c1a
    nop
    ld a, [bc]
    inc b
    ld de, $0e1a
    dec c
    ld a, [de]
    ld [$2013], sp
    rra
    jr jr_00d_58a4

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [$060d], sp
    ld a, [de]

jr_00d_58a4:
    ld [$050d], sp
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    ld c, $0b
    ld [$0402], sp
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    inc c
    rrca
    ld a, [de]
    rrca
    ld c, $12
    inc de
    ld a, [de]
    rlca
    nop
    ld [de], a
    dec e
    inc de
    rlca
    ld de, $0404
    ld a, [de]
    dec d
    inc b
    ld de, $1a18
    ld bc, $0811
    ld b, $07
    inc de
    dec e
    dec bc
    ld [$0706], sp
    inc de
    ld [de], a
    jr nz, jr_00d_590b

    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    inc d
    rrca
    rrca
    ld c, $12
    inc b
    ld a, [de]
    ld [$1d13], sp
    ld de, $0304
    inc d
    ld [bc], a
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a

jr_00d_590b:
    ld de, $0c08
    inc b
    ld a, [de]
    ld de, $1300
    inc b
    ld a, [de]
    ld c, $0d
    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld [bc], a
    ld c, $11
    dec c
    inc b
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld c, $0b
    ld [$0402], sp
    dec e
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    ld a, [hl+]
    ld [de], a
    dec e
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $081a
    ld [de], a
    dec e
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    inc bc
    jr nz, @+$21

    jr jr_00d_5966

    ld [bc], a
    ld a, [bc]
    daa
    ld a, [de]
    inc b
    nop
    inc de
    ld [$060d], sp
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [hl+]
    ld [de], a

jr_00d_5966:
    dec e
    dec bc
    inc b
    dec b
    inc de
    ld c, $15
    inc b
    ld de, $1a12
    inc de
    inc d
    ld de, $120d
    dec e
    jr jr_00d_5987

    inc d
    ld de, $121a
    inc de
    ld c, $0c
    nop
    ld [bc], a
    rlca
    jr nz, @+$21

    ld d, $07

jr_00d_5987:
    ld c, $0e
    rrca
    ld [de], a
    daa
    ld a, [de]
    jr jr_00d_599d

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    dec e
    ld d, $00
    inc de
    ld [bc], a
    rlca
    ld a, [de]

jr_00d_599d:
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    dec b
    ld [$1211], sp
    inc de
    dec e
    ld [de], a
    inc de
    inc b
    rrca
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    rrca
    dec bc
    inc d
    dec c
    ld b, $04
    dec e
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    rlca
    inc b
    nop
    inc bc
    ld a, [de]
    ld c, $15
    inc b
    ld de, $071d
    inc b
    inc b
    dec bc
    ld [de], a
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    nop
    ld a, [de]
    inc bc
    inc b
    inc b
    rrca
    dec e
    ld [bc], a
    ld c, $0d
    ld [de], a
    inc de
    ld de, $0214
    inc de
    ld [$0d0e], sp
    ld a, [de]
    rrca
    ld [$2013], sp
    inc e
    jr jr_00d_59fb

    inc d
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e

jr_00d_59fb:
    rrca
    nop
    ld [$1a03], sp
    nop
    inc de
    inc de
    inc b
    dec c
    inc de
    ld [$0d0e], sp
    ld a, [de]
    inc de
    ld c, $1d
    ld d, $07
    nop
    inc de
    ld a, [de]
    ld d, $00
    ld [de], a
    ld a, [de]
    ld [bc], a
    ld c, $0c
    ld [$060d], sp
    dec e
    ld de, $140e
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0d04
    inc bc
    daa
    rra
    jr @+$10

    inc d
    ld a, [de]
    ld de, $0d14
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    nop
    ld a, [de]
    ld bc, $0c14
    ld d, $07
    ld c, $1a
    ld bc, $0e0b
    ld [bc], a
    ld a, [bc]
    ld [de], a
    ld a, [de]
    jr jr_00d_5a5a

    inc d
    ld de, $161d
    nop
    jr jr_00d_5a73

    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de

jr_00d_5a5a:
    inc b
    dec c
    ld [bc], a
    rlca
    ld a, [de]
    ld c, $05
    rlca
    ld [$1a0c], sp
    ld [$1a12], sp
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    ld a, [de]
    inc de
    ld c, $0e
    dec e

jr_00d_5a73:
    inc c
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $0004
    ld de, $1c27
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    ld [de], a
    ld c, $1a
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr @+$10

    inc d
    ld de, $041a
    jr jr_00d_5aa4

    ld [de], a
    dec e
    ld d, $00

jr_00d_5aa4:
    inc de
    inc b
    ld de, $1c20
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld c, $0b
    dec bc
    ld c, $16
    ld [$060d], sp
    dec e
    ld d, $0e
    ld de, $1203
    ld a, [de]
    inc bc
    ld de, $0108
    ld bc, $040b
    ld a, [de]
    ld c, $14
    inc de
    dec e
    ld c, $05
    ld a, [de]
    rlca
    ld [$1a12], sp
    inc c
    ld c, $14
    inc de
    rlca
    dec h
    ld a, [de]
    ld h, $08
    dec e
    ld b, $0e
    inc de
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    ld [bc], a
    ld c, $0e
    rrca
    jr nz, jr_00d_5b03

    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$2a0d], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    dec bc
    dec bc
    dec e
    ld [de], a
    nop
    dec d
    inc b
    ld a, [de]
    jr @+$06

    ld de, $0b1a

jr_00d_5b03:
    ld [$0405], sp
    dec h
    dec e
    ld [$1a05], sp
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld d, $0e
    ld de, $0713
    dec e
    dec b
    ld [$1305], sp
    jr jr_00d_5b36

    ld [bc], a
    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    jr jr_00d_5b27

jr_00d_5b27:
    jr nz, jr_00d_5b49

    jr nz, jr_00d_5b51

    rra
    rlca
    inc b
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec d

jr_00d_5b36:
    inc b
    ld de, $1a18
    ld d, $04
    nop
    ld a, [bc]
    nop
    dec c
    inc bc
    ld a, [de]
    inc bc
    inc b
    dec b
    inc b
    dec c
    ld [de], a
    inc b

jr_00d_5b49:
    dec bc
    inc b
    ld [de], a
    ld [de], a
    jr nz, jr_00d_5b6b

    inc de
    rlca

jr_00d_5b51:
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    inc b
    rla
    inc de
    ld de, $0c04
    inc b
    dec bc
    jr jr_00d_5b81

    inc bc
    nop
    add hl, de
    inc b

jr_00d_5b6b:
    inc bc
    dec h
    dec e
    inc de
    ld c, $0e
    daa
    inc e
    jr @+$10

    inc d
    ld a, [de]
    rlca
    inc b
    ld [de], a
    ld [$0013], sp
    inc de
    inc b
    ld a, [de]
    nop

jr_00d_5b81:
    ld bc, $140e
    inc de
    ld b, $04
    inc de
    inc de
    ld [$060d], sp
    ld a, [de]
    inc c
    ld [$0417], sp
    inc bc
    ld a, [de]
    inc d
    rrca
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld [de], a
    ld a, [de]
    ld c, $05
    dec e
    rlca
    ld [$200c], sp
    rra
    ld bc, $0204
    nop
    inc d
    ld [de], a
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    jr @+$10

    inc d
    ld de, $041d
    rla
    ld [bc], a
    inc b
    dec bc
    dec bc
    inc b
    dec c
    inc de
    dec e
    ld [$150d], sp
    inc b
    ld [de], a
    inc de
    ld [$0006], sp
    inc de
    ld [$0415], sp
    dec e
    ld [de], a
    ld a, [bc]
    ld [$0b0b], sp
    ld [de], a
    dec h
    ld a, [de]
    jr jr_00d_5bed

    inc d
    ld a, [hl+]
    dec d
    inc b
    dec e
    dec bc
    nop
    ld [$1a03], sp
    inc de
    rlca
    inc b
    ld a, [de]

jr_00d_5bed:
    ld [bc], a
    nop
    ld [de], a
    inc b
    ld a, [de]
    inc de
    ld c, $1d
    ld de, $1204
    inc de
    jr nz, @+$1e

    ld [bc], a
    ld c, $0d
    ld b, $11
    nop
    inc de
    inc d
    dec bc
    nop
    inc de
    ld [$0d0e], sp
    ld [de], a
    dec h
    dec e
    nop
    ld [bc], a
    inc b
    dec h
    ld a, [de]
    jr jr_00d_5c21

    inc d
    ld a, [de]
    nop
    ld de, $1d04
    ld [bc], a
    dec bc
    inc b
    nop
    ld de, $0304
    ld a, [de]

jr_00d_5c21:
    ld c, $05
    ld a, [de]
    nop
    dec c
    jr jr_00d_5c45

    ld d, $11
    ld c, $0d
    ld b, $03
    ld c, $08
    dec c
    ld b, $1a
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    ld de, $0e04
    dec b
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    ld c, $0e

jr_00d_5c45:
    ld a, [bc]
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    inc b
    ld a, [de]
    inc c
    nop
    inc bc
    inc b
    ld a, [de]
    ld [$1d13], sp
    ld c, $0d
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $08
    ld de, $1a04
    nop
    dec c
    inc bc
    dec e
    ld bc, $0204
    nop
    inc c
    inc b
    ld a, [de]
    nop
    ld a, [de]
    dec c
    nop
    inc de
    ld [$0d0e], sp
    nop
    dec bc
    dec e
    ld [de], a
    inc de
    ld c, $11
    jr jr_00d_5ca8

    ld a, [de]
    jr jr_00d_5c94

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    dec e
    jr jr_00d_5c9c

    inc d
    ld de, $0d1a
    nop
    inc c

jr_00d_5c94:
    inc b
    ld a, [de]
    ld [de], a
    rrca
    dec bc
    nop
    ld [de], a
    rlca

jr_00d_5c9c:
    inc b
    inc bc
    nop
    ld [bc], a
    ld de, $120e
    ld [de], a
    ld a, [de]
    inc b
    dec d
    inc b

jr_00d_5ca8:
    ld de, $1a18
    rrca
    nop
    rrca
    inc b
    ld de, $0d08
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec c
    inc de
    ld de, $2018
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0204
    ld c, $06
    dec c
    ld [$0813], sp
    ld c, $0d
    ld a, [de]
    ld [$0c12], sp
    ld c, $11
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    ld a, [de]
    nop
    dec c
    jr jr_00d_5cee

    dec c
    inc b
    dec e
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]

jr_00d_5cee:
    nop
    ld [de], a
    ld a, [bc]
    inc b
    inc bc
    dec e
    dec b
    ld c, $11
    daa
    ld a, [de]
    inc b
    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    dec bc
    jr @+$1f

    dec b
    ld c, $11
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [de]
    ld d, $07
    ld c, $1d
    ld d, $00
    ld [de], a
    ld a, [de]
    rlca
    nop
    dec d
    ld [$060d], sp
    dec e
    inc de
    ld de, $140e
    ld bc, $040b
    ld [de], a
    ld a, [de]
    rrca
    nop
    jr @+$0a

    dec c
    ld b, $1d
    rlca
    ld [$1a12], sp
    ld bc, $0b08
    dec bc
    ld [de], a
    daa
    rra
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop
    dec e
    dec d
    nop
    ld b, $11
    nop
    dec c
    inc de
    ld a, [de]
    ld [bc], a
    ld de, $120e
    ld [de], a
    ld [$060d], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    jr nz, jr_00d_5d80

    ld [de], a
    ld c, $02
    ld a, [bc]
    ld c, $27
    inc e
    jr @+$10

    inc d
    ld a, [de]
    ld bc, $0b04
    inc de
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0c14
    rlca
    nop
    ld de, $2503
    ld a, [de]

jr_00d_5d80:
    ld bc, $1314
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    rlca
    ld c, $16
    dec e
    jr jr_00d_5d9c

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]

jr_00d_5d9c:
    rlca
    inc b
    dec c
    ld c, $13
    ld [$0402], sp
    inc bc
    ld hl, $121a
    inc b
    inc b
    ld [$060d], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0d
    inc bc
    ld [$0813], sp
    ld c, $0d
    ld a, [de]
    rlca
    inc b
    dec e
    ld [$1a12], sp
    ld [$270d], sp
    inc e
    inc d
    dec c
    dec b
    ld c, $11
    inc de
    inc d
    dec c
    nop
    inc de
    inc b
    dec bc
    jr jr_00d_5df9

    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [de]
    inc b
    dec bc
    ld [de], a
    inc b
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    inc bc
    jr nz, jr_00d_5e15

    jr nz, @+$1f

    inc de
    rlca

jr_00d_5df9:
    inc b
    ld a, [de]
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    ld c, $05
    dec e
    rrca
    ld c, $0b
    ld [$0402], sp
    ld a, [de]
    ld [de], a
    ld [$0411], sp
    dec c
    ld [de], a
    dec e
    ld bc, $0604

jr_00d_5e15:
    ld [$1a0d], sp
    inc de
    ld c, $1a
    dec b
    ld [$0b0b], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    nop
    ld [$2711], sp
    inc e
    jr @+$10

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
    dec c
    ld c, $16
    dec e
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1a04
    nop
    ld a, [de]
    ld b, $0e
    ld c, $03
    dec e
    inc de
    ld [$040c], sp
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $0004
    inc de
    ld a, [de]
    nop
    dec e
    db $10
    inc d
    ld [$0a02], sp
    ld a, [de]
    inc b
    rla
    ld [$2713], sp
    rra
    ld h, $07
    inc b
    rlca
    dec h
    ld a, [de]
    rlca
    inc b
    rlca
    dec h
    ld a, [de]
    rlca
    inc b
    rlca
    jr nz, jr_00d_5e92

    jr nz, jr_00d_5e91

    dec b
    ld [$1305], sp
    jr jr_00d_5e94

    ld [bc], a
    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    ld [$1a12], sp
    nop
    dec e
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    ld a, [de]
    rrca
    ld de, $0208
    inc b
    ld a, [de]

jr_00d_5e91:
    inc de

jr_00d_5e92:
    nop
    dec e

jr_00d_5e94:
    rrca
    nop
    jr jr_00d_5eb2

    dec b
    ld c, $11
    ld a, [de]
    jr @+$06

    ld de, $0b1a
    ld [$0405], sp
    dec h
    ld h, $01
    inc b
    dec bc
    ld [bc], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]

jr_00d_5eb2:
    ld bc, $0c14
    jr nz, jr_00d_5ed6

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0c14
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    inc de
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld d, $04
    dec c
    inc de
    jr jr_00d_5eed

    nop
    dec c
    inc bc

jr_00d_5ed6:
    dec e
    ld [de], a
    inc de
    nop
    ld de, $1213
    ld a, [de]
    inc bc
    ld de, $0e0e
    dec bc
    ld [$060d], sp
    jr nz, jr_00d_5f07

    inc de
    rlca
    inc b
    ld a, [de]
    dec d

jr_00d_5eed:
    nop
    ld b, $11
    nop
    dec c
    inc de
    ld a, [de]
    ld [$1d12], sp
    ld [de], a
    inc de
    nop
    ld b, $06
    inc b
    ld de, $0d08
    ld b, $1a
    nop
    ld de, $140e
    dec c

jr_00d_5f07:
    inc bc
    dec e
    ld [de], a
    ld c, $1a
    inc c
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_00d_5f26

    inc d
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld b, $08
    dec d
    inc b
    ld a, [de]
    rlca

jr_00d_5f26:
    ld [$1d0c], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    jr nz, jr_00d_5f56

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0c14
    ld a, [de]
    ld b, $0b
    nop
    inc bc
    dec bc
    jr jr_00d_5f63

    inc de
    nop
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld c, $0d
    inc b
    jr jr_00d_5f7b

jr_00d_5f56:
    dec e
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc

jr_00d_5f63:
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    dec bc
    inc d
    ld de, $2512
    inc e
    ld h, $09
    ld c, $04
    jr jr_00d_5f9f

    ld [de], a
    ld a, [de]
    rlca
    ld [$1a13], sp

jr_00d_5f7b:
    inc c
    nop
    dec c
    dec e
    rlca
    nop
    ld [de], a
    ld a, [de]
    ld bc, $0404
    dec c
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [$2a0d], sp
    dec e
    dec b
    ld c, $11
    ld a, [de]
    jr jr_00d_5f96

jr_00d_5f96:
    jr nz, @+$1e

    ld [$061a], sp
    ld c, $13
    ld a, [de]
    inc bc

jr_00d_5f9f:
    nop
    ld a, [de]
    ld d, $0e
    ld de, $1d03
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld d, $00
    ld [$0813], sp
    dec c
    ld b, $1d
    ld [$1a0d], sp
    jr jr_00d_5fc1

    ld de, $0e1a
    dec b

jr_00d_5fc1:
    dec b
    ld [$0402], sp
    jr nz, jr_00d_5fe4

    ld bc, $1304
    inc de
    inc b
    ld de, $161a
    nop
    inc de
    ld [bc], a
    rlca
    ld a, [de]
    ld c, $14
    inc de
    jr nz, jr_00d_5fff

    rra
    jr jr_00d_5fea

    inc d
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    nop

jr_00d_5fe4:
    ld a, [de]
    ld [de], a
    rlca
    ld c, $13
    ld a, [de]

jr_00d_5fea:
    nop
    inc de
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0c14
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $001d
    ld a, [de]

jr_00d_5fff:
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [de]
    ld bc, $0604
    ld [$1a0d], sp
    inc de
    ld c, $1d
    ld [de], a
    ld [bc], a
    ld de, $0004
    inc c
    jr nz, jr_00d_6032

    ld [$0c0c], sp
    inc b
    inc bc
    ld [$1300], sp
    inc b
    dec bc
    jr @+$1c

    inc de
    rlca
    inc b
    dec e
    db $10
    inc d
    ld [$1304], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b

jr_00d_6032:
    dec e
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld a, [de]
    ld [$1d12], sp
    ld [de], a
    rlca
    nop
    inc de
    inc de
    inc b
    ld de, $0304
    ld a, [de]
    ld bc, $1a18
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    ld [$0411], sp
    dec c
    ld [de], a
    daa
    inc e
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    jr jr_00d_6076

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    dec e
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    nop
    ld a, [de]
    db $10

jr_00d_6076:
    inc d
    ld [$0a02], sp
    dec e
    ld b, $04
    inc de
    nop
    ld d, $00
    jr jr_00d_60a8

    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld [de], a
    dec e
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    ld [$1a0d], sp
    dec b
    ld c, $11
    ld [bc], a
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    rlca
    nop
    inc d
    dec bc
    ld a, [de]
    jr jr_00d_60b4

    inc d
    ld a, [de]

jr_00d_60a8:
    ld c, $05
    dec b
    jr nz, jr_00d_60cc

    nop
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c

jr_00d_60b4:
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    dec e
    ld c, $05
    ld a, [de]
    dec c
    ld c, $16
    rlca
    inc b
    ld de, $1a04
    nop
    dec c

jr_00d_60cc:
    inc bc
    dec e
    ld [de], a
    nop
    jr @+$14

    dec h
    ld a, [de]
    ld h, $08
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld bc, $0404
    dec c
    ld a, [de]
    nop
    ld d, $07
    ld [$040b], sp
    dec h
    ld a, [de]
    ld [de], a
    inc d
    ld b, $00
    ld de, $1a20
    ld [$091d], sp
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    dec e
    rrca
    ld de, $1208
    ld c, $0d
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    rlca
    nop
    inc bc
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    ld bc, $1214
    ld [$040d], sp
    ld [de], a
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld de, $1a04
    ld c, $05
    daa
    inc e
    dec b
    ld [$1211], sp
    inc de
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    ld c, $14
    ld de, $0e1a
    dec bc
    inc bc
    dec b
    ld de, $0408
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    jr nz, jr_00d_6169

    ld bc, $1314
    nop
    dec bc
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [$051a], sp
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    rlca
    ld [$1a12], sp
    ld [bc], a

jr_00d_6169:
    nop
    ld de, $0e1a
    inc d
    inc de
    ld a, [de]
    dec b
    ld de, $0d0e
    inc de
    jr nz, @+$14

    ld c, $1a
    ld [$0f1a], sp
    ld de, $0f04
    nop
    ld de, $0304
    ld a, [de]
    nop
    dec e
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    ld a, [de]
    ld [de], a
    inc d
    ld de, $110f
    ld [$0412], sp
    dec e
    dec b
    ld c, $11
    ld a, [de]
    rlca
    ld [$270c], sp
    inc e
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $1a
    inc b
    dec d
    inc b
    dec c
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [bc], a
    ld c, $11
    inc b
    ld a, [de]
    jr jr_00d_61cb

    inc d
    dec e
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld [de], a
    nop
    jr jr_00d_61f0

    inc e
    nop

jr_00d_61cb:
    dec c
    inc bc
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    jr jr_00d_61e5

    inc d
    dec e
    ld [de], a
    inc d
    ld b, $00
    ld de, $1a25
    ld [$061a], sp
    ld c, $13

jr_00d_61e5:
    ld a, [de]
    nop
    dec e
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    ld a, [de]
    ld [de], a

jr_00d_61f0:
    inc d
    ld de, $110f
    ld [$0412], sp
    dec e
    dec b
    ld c, $11
    ld a, [de]
    jr jr_00d_620c

    inc d
    ld a, [de]
    inc de
    ld c, $0e
    jr nz, @+$1c

    ld de, $0608
    rlca
    inc de
    rlca
    inc b

jr_00d_620c:
    ld de, $1a04
    ld [$1a0d], sp
    inc c
    jr jr_00d_622f

    rrca
    inc d
    ld de, $0412
    daa
    ld h, $1f
    ld bc, $000b
    inc c
    daa
    dec e
    jr jr_00d_6233

    inc d
    ld de, $111a
    inc b
    dec b
    dec bc
    inc b
    rla
    inc b

jr_00d_622f:
    ld [de], a
    dec e
    ld d, $08

jr_00d_6233:
    inc de
    rlca
    ld a, [de]
    jr jr_00d_6246

    inc d
    ld de, $061a
    inc d
    dec c
    ld a, [de]
    nop
    ld de, $1d04
    inc de
    ld c, $0e

jr_00d_6246:
    ld a, [de]
    ld [de], a
    dec bc
    ld c, $16
    dec h
    ld a, [de]
    ld [de], a
    rlca
    inc b
    dec e
    ld bc, $0004
    inc de
    ld [de], a
    ld a, [de]
    jr jr_00d_6267

    inc d
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld de, $1600
    ld a, [de]

jr_00d_6267:
    nop
    dec c
    inc bc
    ld a, [de]
    rrca
    dec bc
    inc d
    ld b, $12
    ld a, [de]
    jr jr_00d_6281

    inc d
    dec b
    inc d
    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    rlca
    ld c, $0b
    inc b
    ld [de], a

jr_00d_6281:
    daa
    rra
    ld [de], a
    ld c, $02
    ld a, [bc]
    ld c, $27
    inc e
    nop
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    ld a, [de]
    add hl, bc
    nop
    ld bc, $0e1a
    inc d
    inc de
    ld a, [de]
    ld c, $05
    dec c
    ld c, $16
    rlca
    inc b
    ld de, $1a04
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    dec e
    ld c, $14
    inc de
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld [$0706], sp
    inc de
    daa
    dec e
    rlca
    inc b
    ld de, $0f1a
    inc d
    ld de, $0412
    ld a, [de]
    inc bc
    ld de, $0f0e
    ld [de], a
    ld a, [de]
    inc de
    ld c, $13
    rlca
    inc b
    ld a, [de]
    ld b, $11
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    ld [de], a
    rlca
    inc b
    dec e
    dec b
    nop
    dec bc
    dec bc
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $0b
    inc bc
    daa
    rra
    jr jr_00d_6304

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [$060d], sp

jr_00d_6304:
    dec e
    ld c, $15
    inc b
    ld de, $131a
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    inc bc
    jr @+$1c

    jr @+$10

    inc d
    dec e
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld [de], a
    inc d
    ld [bc], a
    ld a, [bc]
    inc b
    ld de, $0f1d
    inc d
    dec c
    ld [bc], a
    rlca
    inc b
    inc bc
    jr nz, jr_00d_6348

    jr @+$10

    inc d
    ld a, [de]
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    dec e
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc

jr_00d_6348:
    dec e
    rlca
    inc b
    ld de, $1a04
    inc c
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    dec bc
    ld c, $0d
    ld b, $04
    ld de, $1d25
    rrca
    inc b
    ld c, $0f
    dec bc
    inc b
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld b, $04
    inc de
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $11
    ld c, $0d
    ld b, $1d
    ld [$0f0c], sp
    ld de, $1204
    ld [de], a
    ld [$0d0e], sp
    daa
    rra
    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    jr jr_00d_63a0

    inc d
    dec e
    rlca
    ld [$1a13], sp
    rlca
    inc b
    ld de, $0f1a
    ld de, $1304

jr_00d_63a0:
    inc de
    jr jr_00d_63c0

    rlca
    nop
    ld de, $2103
    ld a, [de]
    ld [de], a
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    dec e
    ld [bc], a
    ld c, $0b
    inc bc
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]

jr_00d_63c0:
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    dec e
    rlca
    nop
    dec c
    inc bc
    ld bc, $0600
    jr nz, @+$1c

    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    ld bc, $0608
    ld a, [de]
    inc b
    dec c
    ld c, $14
    ld b, $07
    ld a, [de]
    inc de
    ld c, $1d
    ld [bc], a
    rlca
    ld c, $0a
    inc b
    ld a, [de]
    nop
    ld a, [de]
    inc c
    inc d
    dec bc
    inc b
    daa
    rra
    inc de
    rlca
    ld [$1a12], sp
    ld b, $14
    dec c
    ld a, [de]
    ld [$1a12], sp
    ld c, $0d
    inc b
    ld a, [de]
    ld c, $05
    inc de
    rlca
    ld c, $12
    inc b
    ld a, [de]
    ld h, $12
    nop
    inc de
    inc d
    ld de, $0003
    jr @+$1f

    dec c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    ld [de], a
    jr nz, jr_00d_644c

    inc e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc b
    nop
    ld [de], a
    jr jr_00d_644b

    inc de
    ld c, $1a
    ld [bc], a
    ld c, $0c
    inc b
    dec e
    ld bc, $1a18
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld [de], a
    daa

jr_00d_644b:
    nop

jr_00d_644c:
    dec c
    inc bc
    ld a, [de]
    ld [$1a12], sp
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    nop
    ld [de], a
    dec e
    inc bc
    inc b
    nop
    inc bc
    dec bc
    jr jr_00d_647b

    nop
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    ld de, $1406
    dec c
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc c
    nop
    ld a, [bc]

jr_00d_647b:
    inc b
    inc d
    rrca
    ld a, [de]
    ld a, [bc]
    ld [$2013], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc de
    ld d, $04
    dec c
    inc de
    jr @+$1f

    inc bc
    ld c, $0b
    dec bc
    nop
    ld de, $011a
    ld [$0b0b], sp
    jr nz, jr_00d_64be

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld b, $14
    dec c
    jr nz, @+$1e

    inc de
    rlca
    ld [$1a12], sp
    ld b, $00
    dec bc
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    ld b, $0e
    ld [$060d], sp
    ld a, [de]

jr_00d_64be:
    inc de
    ld c, $1a
    ld a, [bc]
    ld [$0b0b], sp
    ld a, [de]
    jr @+$10

    inc d
    daa
    rra
    ld b, $0e
    ld [$060d], sp
    ld a, [de]
    nop
    ld b, $00
    ld [$120d], sp
    inc de
    dec e
    ld [bc], a
    ld c, $0c
    inc c
    ld c, $0d
    ld a, [de]
    ld [de], a
    inc b
    dec c
    ld [de], a
    inc b
    dec h
    ld a, [de]
    jr jr_00d_64f7

    inc d
    dec e
    inc bc
    inc b
    ld [bc], a
    ld [$0403], sp
    ld a, [de]
    inc de
    ld c, $1a
    ld [de], a
    rlca

jr_00d_64f7:
    ld c, $0e
    inc de
    dec e
    rlca
    inc b
    ld de, $1c20
    nop
    ld a, [de]
    rrca
    nop
    ld [de], a
    ld [de], a
    ld [$060d], sp
    ld a, [de]
    ld [bc], a
    ld c, $0f
    dec e
    rlca
    inc b
    nop
    ld de, $1a12
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    rlca
    ld c, $13
    ld a, [de]
    nop
    dec c
    inc bc
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_00d_6542

    ld [de], a
    rlca
    ld c, $16
    ld [de], a
    ld a, [de]
    inc d
    rrca
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    jr jr_00d_654b

    inc d
    ld a, [de]
    ld [$130d], sp

jr_00d_6542:
    ld c, $02
    inc d
    ld [de], a
    inc de
    ld c, $03
    jr jr_00d_656b

jr_00d_654b:
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    dec e
    rlca
    nop
    dec c
    inc bc
    ld bc, $0600
    jr nz, jr_00d_6581

    jr jr_00d_6572

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [de], a
    inc de

jr_00d_656b:
    nop
    dec c
    inc bc
    ld [$060d], sp
    dec e

jr_00d_6572:
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0004
    ld de, $0e1a
    dec b
    ld a, [de]

jr_00d_6581:
    inc de
    rlca
    inc b
    ld [bc], a
    nop
    ld de, $1a25
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    dec e
    ld [$1213], sp
    ld a, [de]
    inc de
    ld de, $0d14
    ld a, [bc]
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc de
    ld de, $0d14
    ld a, [bc]
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    nop
    dec c
    jr jr_00d_65d0

    ld c, $13
    rlca
    inc b
    ld de, $131a
    ld de, $0d14
    ld a, [bc]
    jr nz, jr_00d_65e2

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $000b
    ld [bc], a

jr_00d_65d0:
    ld a, [bc]
    dec e
    inc b
    inc d
    ld de, $0f0e
    inc b
    nop
    dec c
    ld a, [de]
    dec bc
    inc d
    rla
    inc d
    ld de, $1d18

jr_00d_65e2:
    ld [bc], a
    nop
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0608
    ld b, $04
    ld [de], a
    inc de
    dec e
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [de]
    jr jr_00d_660e

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $121d
    inc b
    inc b
    dec c

jr_00d_660e:
    ld a, [de]
    ld [$1a0d], sp
    jr jr_00d_6622

    inc d
    ld de, $0b1a
    ld [$0405], sp
    daa
    jr jr_00d_662c

    inc d
    ld a, [de]
    ld d, $0e

jr_00d_6622:
    dec c
    inc bc
    inc b
    ld de, $071a
    ld c, $16
    ld a, [de]
    ld [de], a

jr_00d_662c:
    rlca
    inc b
    inc b
    dec d
    inc b
    ld de, $0c1a
    nop
    dec c
    nop
    ld b, $04
    inc bc
    ld a, [de]
    inc de
    ld c, $1d
    ld b, $04
    inc de
    ld a, [de]
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld de, $0d14
    ld a, [bc]
    daa
    inc e
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    jr jr_00d_6669

    inc d
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    dec e
    ld [de], a
    rlca
    inc b
    ld a, [de]
    nop

jr_00d_6669:
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    inc de
    ld c, $1a
    ld bc, $1d04
    inc d
    dec c
    ld [bc], a
    ld c, $0d
    ld [de], a
    ld [bc], a
    ld [$140e], sp
    ld [de], a
    jr nz, @+$1e

    jr jr_00d_6693

    inc d
    ld a, [de]
    nop
    dec bc
    ld [de], a
    ld c, $1a
    ld [de], a
    inc b
    inc b
    ld a, [de]
    inc de
    rlca
    nop

jr_00d_6693:
    inc de
    dec e
    ld [de], a
    rlca
    inc b
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    ld bc, $0404
    dec c
    dec e
    ld b, $00
    ld b, $06
    inc b
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld bc, $140e
    dec c
    inc bc
    jr nz, jr_00d_66d3

    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $00
    ld b, $1a
    ld [$1a12], sp
    inc c
    nop
    inc bc
    inc b
    ld a, [de]
    ld c, $05
    ld d, $07
    ld [$0413], sp
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $13
    rlca
    jr nz, @+$21

jr_00d_66d3:
    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1a04
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld de, $1f20
    jr @+$10

    inc d
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0d14
    ld a, [bc]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    inc b
    jr jr_00d_6730

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld c, $03
    ld [$0c14], sp
    dec e
    rrca
    inc b
    dec c
    inc de
    nop
    inc de
    rlca
    ld c, $0b
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld [de], a
    dec e
    inc b
    dec b
    dec b
    inc b

jr_00d_6730:
    ld [bc], a
    inc de
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld de, $1213
    dec e
    ld bc, $0100
    ld bc, $080b
    dec c
    ld b, $25
    dec e
    ld h, $13
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc c
    inc b
    ld a, [de]
    rlca
    ld c, $0c
    inc b
    dec h
    dec e
    rrca
    dec bc
    inc b
    nop
    ld [de], a
    inc b
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc c
    inc b
    dec e
    rlca
    ld c, $0c
    inc b
    jr nz, @+$22

    jr nz, jr_00d_6791

    ld [hl], $32
    ld [hl], $1a
    nop
    inc d
    ld bc, $1114
    dec c
    ld a, [de]
    ld de, $000e
    inc bc
    dec h
    dec e
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc c
    inc b
    ld a, [de]
    inc de
    rlca
    inc b

jr_00d_6791:
    ld de, $2004
    jr nz, jr_00d_67b6

    ld h, $1c
    rlca
    inc b
    ld de, $151a
    ld c, $08
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec bc
    ld [de], a
    dec e
    ld c, $05
    dec b
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    ld [de], a
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de

jr_00d_67b6:
    ld c, $0f
    ld [de], a
    dec e
    inc de
    nop
    dec bc
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    dec bc
    nop
    rrca
    ld [de], a
    inc b
    ld [de], a
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld [$130d], sp
    ld c, $1d
    inc d
    dec c
    ld [bc], a
    ld c, $0d
    ld [de], a
    ld [bc], a
    ld [$140e], sp
    ld [de], a
    dec c
    inc b
    ld [de], a
    ld [de], a
    jr nz, jr_00d_6806

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [de]
    ld [$1d12], sp
    inc de
    ld de, $0818
    dec c
    ld b, $1a
    inc de
    ld c, $1a
    ld [de], a
    nop
    jr jr_00d_681f

    ld [de], a
    ld c, $0c
    inc b

jr_00d_6806:
    inc de
    rlca
    ld [$060d], sp
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    rlca
    inc b
    ld de, $0006
    ld b, $1a
    rrca
    ld de, $1504
    inc b
    dec c
    inc de

jr_00d_681f:
    ld [de], a
    ld a, [de]
    jr jr_00d_6831

    inc d
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    inc d
    dec c
    inc bc
    inc b
    ld de, $1312

jr_00d_6831:
    nop
    dec c
    inc bc
    ld [$060d], sp
    rlca
    inc b
    ld de, $021a
    dec bc
    inc b
    nop
    ld de, $180b
    jr nz, jr_00d_6863

    ld d, $07
    inc b
    dec c
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld b, $00
    ld b, $1a
    ld c, $14
    inc de
    dec h
    ld a, [de]
    ld [de], a
    rlca
    inc b
    dec e

jr_00d_6863:
    ld [de], a
    inc de
    nop
    ld de, $1213
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $0411
    nop
    inc de
    rlca
    inc b
    dec e
    nop
    ld a, [de]
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    ld a, [de]
    inc b
    nop
    ld [de], a
    ld [$1104], sp
    jr nz, @+$21

    ld [de], a
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [de], a
    nop
    jr jr_00d_68b1

    nop
    dec c
    jr jr_00d_68ab

    rlca
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $1a
    jr jr_00d_68b0

    inc d
    dec e
    ld d, $07
    ld [$040b], sp
    ld a, [de]
    ld [de], a

jr_00d_68ab:
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    dec e

jr_00d_68b0:
    inc d

jr_00d_68b1:
    dec c
    ld [bc], a
    ld c, $0d
    ld [de], a
    ld [bc], a
    ld [$140e], sp
    ld [de], a
    jr nz, jr_00d_68dc

    ld c, $0d
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    ld c, $0d
    inc bc
    ld a, [de]
    inc de
    rlca
    ld c, $14
    ld b, $07
    inc de
    dec h
    jr jr_00d_68df

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld [de], a
    inc b
    inc b
    dec c
    ld a, [de]
    rrca

jr_00d_68dc:
    dec bc
    inc b
    dec c

jr_00d_68df:
    inc de
    jr @+$06

    dec c
    ld c, $14
    ld b, $07
    ld a, [de]
    nop
    dec bc
    ld de, $0004
    inc bc
    jr @+$22

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    dec e
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    inc de
    ld c, $1a
    ld bc, $1d04
    rlca
    nop
    dec d
    ld [$060d], sp
    ld a, [de]
    nop
    dec c
    ld a, [de]
    nop
    inc bc
    dec d
    inc b
    ld de, $0412
    dec e
    inc b
    dec b
    dec b
    inc b
    ld [bc], a
    inc de
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld d, $0e
    inc c
    nop
    dec c
    jr nz, jr_00d_694f

    jr jr_00d_6943

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $081a
    dec b
    dec e
    ld [de], a
    rlca

jr_00d_6943:
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [de], a
    inc de
    ld [$0b0b], sp
    ld a, [de]
    nop
    dec bc

jr_00d_694f:
    ld [$0415], sp
    jr nz, jr_00d_6970

    jr jr_00d_695a

    ld [de], a
    dec h
    ld a, [de]
    ld [de], a

jr_00d_695a:
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [de], a
    inc de
    ld [$0b0b], sp
    dec e
    ld bc, $0411
    nop
    inc de
    rlca
    ld [$060d], sp
    jr nz, jr_00d_698f

jr_00d_6970:
    inc b
    ld de, $0e11
    ld de, $131f
    rlca
    inc b
    ld a, [de]
    dec b
    ld c, $11
    ld [bc], a
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    jr jr_00d_6993

    inc d
    ld de, $011d
    dec bc
    ld c, $16
    ld a, [de]
    ld [de], a
    inc b

jr_00d_698f:
    dec c
    inc bc
    ld [de], a
    ld a, [de]

jr_00d_6993:
    ld [de], a
    rlca
    ld c, $02
    ld a, [bc]
    dec e
    ld d, $00
    dec d
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld de, $0f08
    rrca
    dec bc
    inc b
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    rlca
    inc b
    ld de, $051d
    nop
    inc de
    jr nz, jr_00d_69db

    ld [$1a13], sp
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    inc de
    rlca
    nop
    inc de
    dec e
    nop
    dec c
    jr jr_00d_69e6

    rlca
    ld [$060d], sp
    ld a, [de]
    ld d, $08
    inc de

jr_00d_69db:
    rlca
    ld a, [de]
    dec bc
    inc b
    ld [de], a
    ld [de], a
    inc de
    rlca
    nop
    dec c
    ld a, [de]

jr_00d_69e6:
    nop
    ld a, [de]
    inc de
    ld d, $0e
    ld hl, $0e13
    dec c
    dec e
    rrca
    nop
    jr @+$0d

    ld c, $00
    inc bc
    ld a, [de]
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    dec c
    ld c, $13
    dec e
    inc b
    dec b
    dec b
    inc b
    ld [bc], a
    inc de
    ld a, [de]
    rlca
    inc b
    ld de, $1c20
    ld [$1a0d], sp
    ld c, $13
    rlca
    inc b
    ld de, $161a
    ld c, $11
    inc bc
    ld [de], a
    dec h
    dec e
    ld [de], a
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    ld a, [de]
    nop
    inc de
    rlca
    ld [$060d], sp
    jr nz, jr_00d_6a55

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_6a55:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
