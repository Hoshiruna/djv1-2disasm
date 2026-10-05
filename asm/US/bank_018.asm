; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    nop
    ld b, c
    rrca
    ld b, c
    ld [hl+], a
    ld b, c
    inc [hl]
    ld b, c
    ld b, a
    ld b, c
    ld l, d
    ld b, c
    inc c
    ld b, d
    ld l, [hl]
    ld b, d
    xor [hl]
    ld b, d
    call z, $ec42
    ld b, d
    ld [hl+], a
    ld b, e
    xor h
    ld b, e
    ld a, [hl-]
    ld b, h
    ld e, h
    ld b, h
    reti


    ld b, h
    rst RST_38
    ld b, h
    ld [hl], c
    ld b, l
    xor d
    ld b, l
    ret nz

    ld b, l
    pop hl
    ld b, l
    nop
    ld b, [hl]
    ld d, l
    ld b, [hl]
    halt
    ld b, [hl]
    sbc l
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    rst RST_08
    ld b, [hl]
    ldh [c], a
    ld b, [hl]
    push af
    ld b, [hl]
    rlca
    ld b, a
    ld e, d
    ld b, a
    ld a, a
    ld b, a
    sbc [hl]
    ld b, a
    cp a
    ld b, a
    ld [$f947], a
    ld b, a
    add hl, bc
    ld c, b
    add e
    ld c, b
    sbc [hl]
    ld c, b
    cp d
    ld c, b
    call nc, $ef48
    ld c, b
    ld e, b
    ld c, c
    call z, $e749
    ld c, c
    cp $49
    ld l, $4a
    ld l, e
    ld c, d
    and l
    ld c, d
    bit 1, d
    db $ed
    ld c, d
    ld a, [hl+]
    ld c, e
    cp a
    ld c, h
    inc b
    ld c, l
    ld h, a
    ld c, l
    cp a
    ld c, l
    ld h, $4e
    ld h, [hl]
    ld c, [hl]
    and d
    ld c, [hl]
    cp c
    ld c, [hl]
    ld b, d
    ld c, a
    ld a, e
    ld c, a
    rst RST_10
    ld c, a
    ld l, e
    ld d, b
    xor b
    ld d, b
    adc $50
    add hl, hl
    ld d, c
    ld d, d
    ld d, c
    add b
    ld d, c
    and e
    ld d, c
    cp h
    ld d, c
    rra
    ld d, d
    ld c, l
    ld d, d
    sub h
    ld d, d
    rst RST_08
    ld d, d
    rst RST_08
    ld d, d
    rst RST_08
    ld d, d
    rst RST_08
    ld d, d
    rst RST_08
    ld d, d
    jr z, @+$55

    ld e, [hl]
    ld d, e
    sub b
    ld d, e
    pop bc
    ld d, e
    ldh [rHDMA3], a
    ld a, [bc]
    ld d, h
    scf
    ld d, h
    ld l, d
    ld d, h
    sub e
    ld d, h
    call nz, $f054
    ld d, h
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    ldh a, [rHDMA4]
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    ld bc, $0e11
    ld a, [bc]
    inc b
    jr nz, jr_018_412e

    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    ld [$1a12], sp
    ld bc, $0e11
    ld a, [bc]
    inc b
    dec c
    jr nz, jr_018_4141

    jr jr_018_4132

    inc d
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b

jr_018_412e:
    dec e
    ld a, $37
    push bc

jr_018_4132:
    jr nz, jr_018_4153

    jr jr_018_4144

    inc d
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    ld a, [de]
    inc de
    rlca
    inc b

jr_018_4141:
    dec e
    ld a, $37

jr_018_4144:
    push bc
    jr nz, @+$21

    jr jr_018_4157

    inc d
    ld a, [de]
    rlca
    inc d
    ld de, $1a13
    ld [de], a
    ld c, $0c

jr_018_4153:
    inc b
    dec e
    rrca
    inc b

jr_018_4157:
    ld c, $0f
    dec bc
    inc b
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37
    push bc
    daa
    rra
    nop
    inc de
    ld a, [de]
    dec b
    ld [$1211], sp
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    ld [$1a12], sp
    ld [de], a
    inc de
    nop
    ld de, $0b13
    inc b
    inc bc
    dec h
    ld a, [de]
    ld bc, $1314
    dec e
    ld [de], a
    rlca
    inc b
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_018_41b3

    ld [de], a
    inc c
    ld [$040b], sp
    ld [de], a
    ld d, $07
    inc b
    dec c
    ld a, [de]
    ld [de], a
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37

jr_018_41b3:
    push bc
    ld a, [de]
    jr jr_018_41c5

    inc d
    dec e
    ld b, $00
    dec d
    inc b
    ld a, [de]
    rlca
    inc b
    ld de, $1c20
    ld h, $13

jr_018_41c5:
    rlca
    nop
    dec c
    ld a, [bc]
    ld a, [de]
    jr jr_018_41da

    inc d
    ld a, [de]
    dec b
    ld c, $11
    dec e
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $08
    dec b

jr_018_41da:
    inc de
    dec h
    dec e
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    ld [$021a], sp
    nop
    dec c
    ld a, [hl+]
    inc de
    dec e
    ld a, [de]
    nop
    ld [bc], a
    ld [bc], a
    inc b
    rrca
    inc de
    ld a, [de]
    ld [$2013], sp
    jr nz, jr_018_4217

    ld h, $1c
    ld [de], a
    rlca
    inc b
    ld a, [de]
    ld b, $08
    dec d
    inc b
    ld [de], a
    ld a, [de]
    ld [$1a13], sp
    ld bc, $0200
    ld a, [bc]
    jr nz, jr_018_422b

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

jr_018_4217:
    inc c
    ld [$040b], sp
    ld [de], a
    dec e
    inc bc
    ld [$0012], sp
    ld de, $080c
    dec c
    ld b, $0b
    jr jr_018_4243

    nop
    dec c

jr_018_422b:
    inc bc
    dec e
    ld b, $08
    dec d
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37
    push bc
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    jr nz, jr_018_425d

    ld h, $18

jr_018_4243:
    ld c, $14
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    dec e
    inc b
    rla
    ld [bc], a
    rlca
    nop
    dec c
    ld b, $04
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    dec b
    ld c, $11

jr_018_425d:
    dec e
    nop
    ld a, [de]
    ld [bc], a
    rlca
    ld [$250f], sp
    ld a, [de]
    ld [de], a
    ld c, $11
    ld de, $2018
    ld h, $1f
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld de, $140e
    dec c
    inc bc
    ld a, [de]
    ld b, $11
    inc b
    jr @+$1f

    ld bc, $1314
    inc de
    ld c, $0d
    jr nz, @+$1e

    jr jr_018_4298

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld b, $0e
    ld a, [de]
    inc de
    ld c, $1a
    ccf
    add a

jr_018_4298:
    push bc
    dec b
    dec e
    ld [$1a05], sp
    jr jr_018_42ae

    inc d
    ld a, [de]
    rrca
    ld de, $1204
    ld [de], a
    ld a, [de]
    inc de
    rlca
    ld [$2012], sp
    rra

jr_018_42ae:
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    ld [de], a
    nop
    jr jr_018_42cd

    dec e
    ld h, $0f
    dec bc
    nop
    inc de
    dec b
    ld c, $11
    inc c
    ld a, [de]
    ccf
    add a
    push bc
    jr nz, @+$28

    rra
    inc de

jr_018_42cd:
    rlca
    ld [$1a12], sp
    ld b, $0e
    inc b
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld c, $0d
    inc de
    ld c, $0f
    dec bc
    nop
    inc de
    dec b
    ld c, $11
    inc c
    ld a, [de]
    ccf
    add a
    push bc
    jr nz, jr_018_430b

    nop
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    ld de, $0004
    inc bc
    ld [$060d], sp
    dec e
    ld h, $0f
    dec bc
    nop
    inc de
    dec b
    ld c, $11
    inc c
    ld a, [de]
    ccf
    add a
    push bc
    ld h, $1d
    rlca

jr_018_430b:
    nop
    dec c
    ld b, $12
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    inc b
    ld [$080b], sp
    dec c
    ld b, $20
    rra
    ld h, $13
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    inc de
    ld [$000d], sp
    inc de
    ld [$0d0e], sp
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld [$1d12], sp
    ld a, $37
    push bc
    jr nz, jr_018_4365

    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    ld bc, $1a04
    ccf
    add a
    push bc
    dec e
    inc bc
    ld c, $0b
    dec bc
    nop
    ld de, $1a12
    dec b
    ld c, $11

jr_018_4365:
    ld a, [de]
    nop
    ld a, [de]
    ld c, $0d
    inc b
    dec e
    ld d, $00
    jr jr_018_438a

    dec b
    nop
    ld de, $2504
    ld a, [de]
    rrca
    dec bc
    inc b
    nop
    ld [de], a
    inc b
    jr nz, jr_018_439a

    jr jr_018_438e

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1814
    ld a, [de]

jr_018_438a:
    inc de
    rlca
    inc b
    dec e

jr_018_438e:
    dec b
    nop
    ld de, $1a04
    dec b
    ld de, $0c0e
    ld a, [de]
    inc c
    inc b

jr_018_439a:
    dec h
    ld a, [de]
    ld [$1d05], sp
    jr jr_018_43af

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    dec bc
    ld [$040a], sp
    jr nz, jr_018_43d1

    rra
    nop
    ld [de], a
    ld a, [de]

jr_018_43af:
    ld [de], a
    ld c, $0e
    dec c
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    jr jr_018_43c7

    inc d
    ld a, [de]
    inc de
    ld de, $1318
    ld c, $1a
    nop
    inc de
    inc de
    nop
    ld [bc], a
    ld a, [bc]

jr_018_43c7:
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $0d
    inc bc
    inc d

jr_018_43d1:
    ld [bc], a
    inc de
    ld c, $11
    dec h
    ld a, [de]
    rlca
    inc b
    dec e
    inc de
    nop
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37
    push bc
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    jr jr_018_43fd

    inc d
    ld de, $071a
    nop
    dec c
    inc bc
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    ld [de], a

jr_018_43fd:
    inc d
    ld de, $110f
    ld [$0812], sp
    dec c
    ld b, $1a
    dec b
    ld c, $11
    ld [bc], a
    inc b
    daa
    inc e
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    ld [$0a02], sp
    ld [de], a
    ld a, [de]
    jr jr_018_442c

    inc d
    dec e
    ld c, $05
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800

jr_018_442c:
    dec c
    ld a, [de]
    nop
    ld [de], a
    dec e
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    jr jr_018_444a

    dec h
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    nop
    ld de, $0811
    dec d
    inc b

jr_018_444a:
    inc bc
    dec e
    nop
    inc de
    ld a, [de]
    ld a, $37
    push bc
    dec e
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, @+$21

    jr @+$10

    inc d
    ld a, [de]
    ld d, $00
    ld [de], a
    inc de
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37
    push bc
    jr nz, @+$1e

    nop
    ld a, [de]
    ld d, $00
    dec d
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld b, $14
    ld [$130b], sp
    dec e
    ld c, $15
    inc b
    ld de, $0716
    inc b
    dec bc
    inc c
    ld [de], a
    ld a, [de]
    jr jr_018_449b

    inc d
    jr nz, jr_018_44b0

    jr nz, jr_018_44ae

    nop
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    ld [$1a0d], sp

jr_018_449b:
    jr @+$10

    inc d
    ld de, $0b1a
    ld [$040d], sp
    ld c, $05
    ld a, [de]
    ld d, $0e
    ld de, $1a0a
    ld [de], a
    rlca

jr_018_44ae:
    ld c, $14

jr_018_44b0:
    dec bc
    inc bc
    dec c
    ld a, [hl+]
    inc de
    dec e
    ld b, $0e
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc
    ld a, [de]
    ld a, [bc]
    ld [$0b0b], sp
    ld [$060d], sp
    dec e
    ld [$0d0d], sp
    ld c, $02
    inc b
    dec c
    inc de
    ld a, [de]
    rrca
    inc b
    ld c, $0f
    dec bc
    inc b
    daa
    rra
    jr jr_018_44e9

    inc d
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37

jr_018_44e9:
    push bc
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    ld a, [de]
    inc bc
    ld de, $1600
    inc b
    ld de, $1f20
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    ld [$1a0d], sp
    ld c, $0d
    inc b
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    ld a, [de]
    inc c
    ld c, $15
    ld [$1204], sp
    dec h
    dec e
    jr @+$10

    inc d
    ld a, [de]
    dec b
    dec bc
    nop
    ld [de], a
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec bc
    ld [$0706], sp
    inc de
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld a, $37
    push bc
    ld a, [hl+]
    ld [de], a
    dec e
    dec b
    nop
    ld [bc], a
    inc b
    jr nz, @+$1e

    ld bc, $1314
    ld a, [de]
    inc d
    dec c
    dec bc
    ld [$040a], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc c
    ld c, $15
    ld [$1204], sp
    dec h
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld [bc], a
    ld c, $0d
    dec b
    inc b
    ld [de], a
    ld [de], a
    jr nz, jr_018_4590

    ld [$1a0d], sp
    ld c, $11
    inc bc
    inc b
    ld de, $131a
    ld c, $1a
    rrca
    inc d
    inc de
    ld a, [de]
    ld c, $0d
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec h
    dec e
    jr jr_018_459c

    inc d
    ld a, [de]

jr_018_4590:
    dec c
    inc b
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1d
    inc de
    nop
    ld a, [bc]
    inc b

jr_018_459c:
    ld a, [de]
    ld c, $05
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $38
    push bc
    jr nz, jr_018_45c9

    jr jr_018_45ba

    inc d
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld c, $05
    dec b
    dec e
    inc de
    rlca
    inc b

jr_018_45ba:
    ld a, [de]
    ld a, $37
    push bc
    jr nz, jr_018_45df

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec b
    nop

jr_018_45c9:
    inc d
    ld [bc], a
    inc b
    inc de
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    ld a, $37
    push bc
    dec e
    inc de
    ld de, $0c08
    inc c
    ld [$060d], sp

jr_018_45df:
    jr nz, jr_018_4600

    jr jr_018_45f1

    inc d
    ld a, [de]
    ld [bc], a
    inc d
    inc de
    ld a, [de]
    jr jr_018_45f9

    inc d
    ld de, $0412
    dec bc
    dec b

jr_018_45f1:
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca

jr_018_45f9:
    inc b
    dec e
    ld a, $37
    push bc
    jr nz, jr_018_461f

jr_018_4600:
    nop
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld a, [de]
    ld de, $0208
    ld c, $02
    rlca
    inc b
    inc de
    ld [de], a
    ld c, $05
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37
    push bc
    jr nz, jr_018_463b

jr_018_461f:
    ld d, $0e
    nop
    rlca
    daa
    ld a, [de]
    ld [$1a05], sp
    jr jr_018_4638

    inc d
    dec e
    rlca
    nop
    inc bc
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc bc
    inc d

jr_018_4638:
    ld [bc], a
    ld a, [bc]
    inc b

jr_018_463b:
    inc bc
    dec h
    dec e
    ld [$1a13], sp
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    rlca
    ld [$1d13], sp
    jr jr_018_4660

    inc d
    daa
    rra
    jr jr_018_4665

    inc d
    ld a, [de]
    rrca
    inc d
    inc de
    ld a, [de]
    inc de
    rlca
    inc b

jr_018_4660:
    dec e
    ld a, $37
    push bc
    ld a, [de]

jr_018_4665:
    ld [$130d], sp
    ld c, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    ld [de], a
    rlca
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld [bc], a
    ld de, $0414
    dec bc
    ld a, [de]
    inc de
    ld c, $1d
    inc de
    rlca
    ld de, $160e
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    nop
    ld de, $1a13
    nop
    inc de
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    dec bc
    nop
    inc de
    inc b
    ld a, [de]
    ld bc, $0004
    ld de, $1d12
    nop
    ld a, [de]
    dec c
    inc d
    inc c
    ld bc, $1104
    dec h
    ld a, [de]
    ld h, $3f
    add a
    push bc
    jr nz, jr_018_46e3

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    ld [$1a12], sp
    ld c, $0f
    inc b
    dec c
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    ld [$1a12], sp
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    inc bc
    jr nz, jr_018_4701

    inc de

jr_018_46e3:
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    ld [$1a12], sp
    ld bc, $0e11
    ld a, [bc]
    inc b
    dec c
    jr nz, jr_018_4714

    jr jr_018_4705

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

jr_018_4701:
    dec e
    ld a, $37
    push bc

jr_018_4705:
    jr nz, jr_018_4726

    ld [de], a
    ld d, $08
    ld [de], a
    rlca
    daa
    inc e
    jr jr_018_471e

    inc d
    ld de, $111a

jr_018_4714:
    inc b
    nop
    ld [bc], a
    rlca
    ld a, [de]
    ld [$0d12], sp
    ld a, [hl+]
    inc de

jr_018_471e:
    dec e
    dec bc
    ld c, $0d
    ld b, $1a
    inc b
    dec c

jr_018_4726:
    ld c, $14
    ld b, $07
    ld a, [de]
    inc de
    ld c, $1a
    rlca
    ld [$1313], sp
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec h
    dec e
    ld bc, $1314
    ld a, [de]
    jr jr_018_474e

    inc d
    ld a, [de]
    ld [de], a
    inc d
    ld de, $1a04
    inc bc
    ld [$1d03], sp
    inc d
    rrca
    ld [de], a

jr_018_474e:
    inc b
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37
    push bc
    jr nz, jr_018_4779

    ld a, $37
    push bc
    dec e
    ld [bc], a
    nop
    dec bc
    dec bc
    inc b
    inc bc
    ld a, [de]
    dec bc
    ld c, $14
    inc bc
    dec bc
    jr @+$1c

    dec b
    ld c, $11
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $030e
    jr jr_018_477f

jr_018_4779:
    inc d
    nop
    ld de, $2003
    rra

jr_018_477f:
    jr @+$10

    inc d
    ld a, [de]
    rrca
    ld de, $1204
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $1314
    inc de
    ld c, $0d
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    ccf
    add a
    push bc
    dec b
    jr nz, jr_018_47bd

    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    add hl, bc
    ld c, $0b
    inc de
    dec h
    ld a, [de]
    jr jr_018_47bb

    inc d
    dec e
    nop
    ld de, $0811
    dec d
    inc b
    ld a, [de]
    nop
    inc de
    ld a, [de]
    ccf
    add a

jr_018_47bb:
    push bc
    dec b

jr_018_47bd:
    jr nz, jr_018_47de

    jr jr_018_47cf

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    inc bc
    ld c, $1a
    inc de
    rlca
    nop

jr_018_47cf:
    inc de
    dec e
    inc d
    dec c
    dec bc
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    jr jr_018_47e8

    inc d
    ld a, [de]
    ld c, $0f

jr_018_47de:
    inc b
    dec c
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc

jr_018_47e8:
    jr nz, jr_018_4809

    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    ld c, $0f
    inc b
    dec c
    ld [de], a
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    ld [de], a
    jr nz, jr_018_4828

jr_018_4809:
    jr @+$10

    inc d
    ld a, [de]
    inc de
    ld de, $1a18
    inc de
    ld c, $1a
    ld [de], a
    inc de
    nop
    ld bc, $131d
    rlca
    inc b
    ld a, [de]
    inc bc
    ld de, $1508
    inc b
    ld de, $161a
    ld [$0713], sp

jr_018_4828:
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    jr nz, jr_018_484e

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld hl, $110f
    ld c, $0e
    dec b
    dec e
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    ld a, [de]
    ld [de], a
    inc de
    ld c, $0f
    ld [de], a

jr_018_484e:
    ld a, [de]
    jr jr_018_485f

    inc d
    ld de, $001d
    inc de
    inc de
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    nop
    dec c
    inc bc
    dec e

jr_018_485f:
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    ld a, [de]
    ld bc, $0411
    nop
    ld a, [bc]
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $000b
    inc bc
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37
    push bc
    jr nz, jr_018_48a2

    jr jr_018_4893

    inc d
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37
    push bc

jr_018_4893:
    ld a, [hl+]
    ld [de], a
    dec e
    rrca
    ld c, $02
    ld a, [bc]
    inc b
    inc de
    jr nz, jr_018_48bd

    jr jr_018_48ae

    inc d
    ld a, [de]

jr_018_48a2:
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37

jr_018_48ae:
    push bc
    ld a, [hl+]
    ld [de], a
    dec e
    rrca
    ld c, $02
    ld a, [bc]
    inc b
    inc de
    jr nz, @+$21

    inc de
    rlca
    inc b

jr_018_48bd:
    ld a, [de]
    ld a, $37
    push bc
    ld a, [hl+]
    ld [de], a
    dec e
    rrca
    ld c, $02
    ld a, [bc]
    inc b
    inc de
    ld a, [de]
    ld [$1a12], sp
    ld c, $0f
    inc b
    dec c
    jr nz, jr_018_48f3

    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    ld a, [hl+]
    ld [de], a
    rrca
    ld c, $02
    ld a, [bc]
    inc b
    inc de
    ld a, [de]
    ld [$1a12], sp
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    inc bc
    jr nz, jr_018_490e

    inc de
    rlca
    inc b
    ld a, [de]

jr_018_48f3:
    ld a, $37
    push bc
    dec e
    ld [$1a12], sp
    ld [de], a
    inc d
    ld de, $110f
    ld [$0412], sp
    inc bc
    ld a, [de]
    nop
    ld [de], a
    dec e
    jr jr_018_4917

    inc d
    ld a, [de]
    ld bc, $0604

jr_018_490e:
    ld [$1a0d], sp
    inc de
    nop
    ld a, [bc]
    ld [$060d], sp

jr_018_4917:
    dec e
    ld c, $05
    dec b
    ld a, [de]
    jr jr_018_492c

    inc d
    ld de, $021a
    dec bc
    ld c, $13
    rlca
    inc b
    ld [de], a
    jr nz, jr_018_4946

    ld d, $08

jr_018_492c:
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    dec c
    inc b
    ld de, $0e15
    inc d
    ld [de], a
    dec e
    ld [de], a
    rlca
    ld c, $14
    inc de
    dec h
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37

jr_018_4946:
    push bc
    dec e
    ld [bc], a
    nop
    dec bc
    dec bc
    ld [de], a
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    rlca
    inc b
    dec bc
    rrca
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
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
    ld [de], a
    rlca
    ld c, $02
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    ld bc, $0204
    nop
    inc d
    ld [de], a
    inc b
    dec e
    jr @+$10

    inc d
    ld a, [de]
    nop
    ld de, $0d04
    ld a, [hl+]
    inc de
    ld a, [de]
    ld d, $04
    nop
    ld de, $0d08
    ld b, $00
    dec c
    jr jr_018_49a7

    rlca
    ld [$060d], sp
    jr nz, jr_018_49b6

    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    dec c
    inc b
    ld de, $0e15
    inc d

jr_018_49a7:
    ld [de], a
    dec e
    ld [bc], a
    ld de, $2518
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e

jr_018_49b6:
    ld [bc], a
    nop
    dec bc
    dec bc
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    dec b
    ld c, $11
    dec e
    rlca
    inc b
    dec bc
    rrca
    jr nz, jr_018_49ea

    jr nz, jr_018_49eb

    ld [$1a13], sp
    ld [bc], a
    ld c, $0d
    inc de
    ld [$140d], sp
    inc b
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    ccf
    add a
    push bc
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $1f20
    jr jr_018_49f7

    inc d

jr_018_49ea:
    ld a, [de]

jr_018_49eb:
    inc de
    rlca
    ld de, $160e
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    inc de
    rlca

jr_018_49f7:
    inc b
    dec e
    ld a, $37
    push bc
    jr nz, @+$21

    jr jr_018_4a0e

    inc d
    ld a, [de]
    inc de
    rlca
    ld de, $160e
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    inc de
    rlca

jr_018_4a0e:
    inc b
    dec e
    ld a, $37
    push bc
    dec e
    ld bc, $0204
    nop
    inc d
    ld [de], a
    inc b
    ld a, [de]
    ld [$1a13], sp
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    dec e
    inc d
    ld [de], a
    inc b
    dec bc
    inc b
    ld [de], a
    ld [de], a
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0d
    inc de
    inc b
    dec c
    inc de
    ld [de], a
    dec e
    inc bc
    ld [$0505], sp
    inc b
    ld de, $121a
    dec bc
    ld [$0706], sp
    inc de
    dec bc
    jr jr_018_4a68

    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    inc b
    inc bc
    ld b, $04
    ld de, $051d
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    nop
    inc de
    ld a, [de]
    add hl, bc
    ld c, $04
    ld a, [hl+]

jr_018_4a68:
    ld [de], a
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    jr @+$0e

    inc b
    dec c
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    ld [bc], a
    ld c, $14
    ld de, $0408
    ld de, $401a
    jr nc, jr_018_4a9f

    ld [$1a12], sp
    dec c
    ld c, $13
    dec e
    ld de, $0204
    ld c, $11
    inc bc
    inc b
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    ld [$1d12], sp
    dec bc
    inc b

jr_018_4a9f:
    inc bc
    ld b, $04
    ld de, $1f20
    ld bc, $1314
    ld a, [de]
    ld [bc], a
    ld c, $0c
    rrca
    nop
    ld de, $0304
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $13
    rlca
    inc b
    ld de, $0b1d
    inc b
    inc bc
    ld b, $04
    ld de, $2020
    jr nz, jr_018_4aea

    inc de
    rlca
    inc b
    ld de, $1a04
    ld [$1a12], sp
    nop
    ld a, [de]
    ld b, b
    jr nc, jr_018_4af6

    inc b
    dec c
    inc de
    ld de, $1a18
    ld [$1a0d], sp
    inc de
    rlca
    ld [$1d12], sp
    ld bc, $0e0e

jr_018_4aea:
    ld a, [bc]
    jr nz, jr_018_4b0c

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0d
    inc de
    inc b

jr_018_4af6:
    dec c
    inc de
    ld [de], a
    ld a, [de]
    nop
    ld de, $1d04
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    inc c
    inc b
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca

jr_018_4b0c:
    inc b
    dec e
    dec bc
    inc b
    inc bc
    ld b, $04
    ld de, $081a
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld c, $13
    rlca
    inc b
    ld de, $0e1a
    dec b
    dec b
    ld [$0402], sp
    jr nz, jr_018_4b49

    ld h, $08
    ld a, [de]
    dec b
    ld [$000d], sp
    dec bc
    dec bc
    jr jr_018_4b4f

    dec b
    ld c, $14
    dec c
    inc bc
    dec e
    jr jr_018_4b4b

    inc d
    daa
    inc e
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [de]
    dec bc

jr_018_4b49:
    inc b
    dec b

jr_018_4b4b:
    inc de
    ld a, [de]
    nop
    dec e

jr_018_4b4f:
    ld [bc], a
    ld [$0006], sp
    ld de, $161a
    ld de, $0f00
    rrca
    inc b
    ld de, $081a
    dec c
    dec e
    inc bc
    nop
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp
    dec e
    inc de
    nop
    ld a, [de]
    inc de
    ld de, $1a18
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld de, $1a13
    nop
    inc c
    ld c, $01
    ld a, [de]
    ld d, $00
    ld de, $2020
    jr nz, jr_018_4baa

    inc bc
    nop
    ld a, [de]
    ld bc, $120e
    ld [de], a
    ld a, [de]
    dec b
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    ld [$2513], sp
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    inc b
    dec bc
    ld [$080c], sp
    dec c

jr_018_4baa:
    nop
    inc de
    inc b
    inc bc
    dec e
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    inc de
    ld c, $06
    ld [$1d04], sp
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    inc bc
    inc b
    jr jr_018_4be6

    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    dec e
    ld de, $0004
    ld [bc], a
    inc de
    jr nz, @+$1e

    ld de, $0608
    rlca
    inc de
    ld a, [de]
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]

jr_018_4be6:
    rlca
    inc b
    dec e
    ld [bc], a
    ld de, $000e
    ld a, [bc]
    inc b
    inc bc
    dec h
    ld a, [de]
    ld [de], a
    inc de
    ld c, $06
    ld [$1d04], sp
    inc de
    nop
    dec bc
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    nop
    ld [$1d03], sp
    rlca
    inc b
    ld a, [hl+]
    inc bc
    ld a, [de]
    dec c
    inc b
    dec d
    inc b
    ld de, $011a
    inc b
    inc b
    dec c
    ld a, [de]
    ld [$130d], sp
    rlca
    nop
    inc de
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, jr_018_4c48

    jr nz, jr_018_4c44

    ld [de], a
    ld c, $1d
    ld [$1a13], sp
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld bc, $0404
    dec c
    dec e
    jr @+$10

    inc d
    daa
    inc e
    ld d, $04

jr_018_4c44:
    ld a, [hl+]
    ld de, $1a04

jr_018_4c48:
    dec c
    ld c, $13
    ld a, [de]
    ld b, $0e
    dec c
    dec c
    nop
    dec e
    ld a, [bc]
    ld [$0b0b], sp
    ld a, [de]
    jr @+$10

    inc d
    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    jr nz, jr_018_4c7e

    dec c
    nop
    ld d, $25
    ld a, [de]
    ld [$120d], sp
    inc de
    inc b
    nop
    inc bc
    ld a, [de]
    ld d, $04
    ld a, [hl+]
    dec bc
    dec bc
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    dec b
    ld de, $0c00
    inc b
    ld a, [de]

jr_018_4c7e:
    jr jr_018_4c8e

    inc d
    ld a, [de]
    dec b
    ld c, $11
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]

jr_018_4c8e:
    inc c
    inc d
    ld de, $0403
    ld de, $1c20
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop
    ld a, [de]
    ld b, $0e
    ld c, $03
    ld a, [de]
    inc de
    ld [$040c], sp
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    dec bc
    nop
    inc c
    inc c
    inc b
    ld de, $1d25
    ld [bc], a
    rlca
    inc d
    inc c
    rrca
    daa
    ld h, $1f
    ld [$130d], sp
    inc b
    ld de, $1204
    inc de
    ld [$060d], sp
    jr nz, jr_018_4cec

    jr nz, jr_018_4cea

    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    dec bc
    inc b
    inc bc
    ld b, $04
    ld de, $0c1a
    inc d
    ld [de], a
    inc de
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e
    ld bc, $0404

jr_018_4cea:
    dec c
    ld a, [de]

jr_018_4cec:
    ld a, [bc]
    inc b
    rrca
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    inc bc
    inc b
    ld [bc], a
    inc b
    ld [$0415], sp
    ld a, [de]
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    jr nz, @+$21

    ld h, $00
    ld a, [de]
    ld [bc], a
    rlca
    ld [$1a0f], sp
    ld [$1a12], sp
    ld b, c
    dec [hl]
    jr nz, jr_018_4d30

    rlca
    ld c, $16
    ld a, [de]
    inc c
    nop
    dec c
    jr jr_018_4d36

    ld [bc], a
    rlca
    ld [$120f], sp
    dec e
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    jr jr_018_4d38

    inc d
    ld a, [de]
    dec bc
    ld [$040a], sp

jr_018_4d30:
    dec h
    dec e
    ld [de], a
    ld [$2811], sp

jr_018_4d36:
    ld h, $1d

jr_018_4d38:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld [bc], a
    rlca
    ld [$120f], sp
    inc h
    ccf
    jp $1dc5


    dec e
    inc d
    ld [de], a
    inc b
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    inc l
    ld de, $0608
    rlca
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    ld [de], a
    inc b
    dec bc
    inc b
    ld [bc], a
    inc de
    ld a, [de]
    nop
    inc c
    ld c, $14
    dec c
    inc de
    jr nz, @+$61

    ld h, $07
    ld c, $16
    ld a, [de]
    inc c
    nop
    dec c
    jr @+$1c

    inc bc
    ld c, $1a
    jr jr_018_4d84

    inc d
    dec e
    ld d, $00
    dec c
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    ld [bc], a
    nop
    ld [de], a
    rlca

jr_018_4d84:
    ld a, [de]
    ld [$250d], sp
    dec e
    ld [de], a
    ld [$2811], sp
    ld h, $1d
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld [bc], a
    rlca
    ld [$120f], sp
    inc h
    ccf
    jp $1dc5


    dec e
    inc d
    ld [de], a
    inc b
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    inc l
    ld de, $0608
    rlca
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    ld [de], a
    inc b
    dec bc
    inc b
    ld [bc], a
    inc de
    ld a, [de]
    nop
    inc c
    ld c, $14
    dec c
    inc de
    jr nz, jr_018_4e1e

    ld h, $13
    rlca
    nop
    inc de
    ld a, [de]
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    ld bc, $1a04
    nop
    dec e
    inc de
    ld c, $13
    nop
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    ccf
    and a
    ret z

    dec e
    inc bc
    ld c, $0b
    dec bc
    nop
    ld de, $2012
    inc e
    inc de
    rlca
    nop
    dec c
    ld a, [bc]
    ld a, [de]
    jr jr_018_4dfb

    inc d
    ld a, [de]
    dec d
    inc b
    ld de, $1d18
    inc c
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    nop
    dec c

jr_018_4dfb:
    inc bc
    ld a, [de]
    ld b, $0e
    ld c, $03
    dec e
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    dec h
    ld h, $1a
    ld [de], a
    rlca
    inc b
    dec e
    dec b
    ld [$080d], sp
    ld [de], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    rlca
    nop
    dec bc
    dec b
    dec e
    rlca
    inc b
    nop

jr_018_4e1e:
    ld de, $0413
    inc bc
    dec bc
    jr jr_018_4e45

    rra
    ld h, $16
    rlca
    nop
    inc de
    ld a, [de]
    inc bc
    ld c, $1a
    jr jr_018_4e3f

    inc d
    dec e
    ld d, $00
    dec c
    inc de
    jr z, jr_018_4e5f

    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

jr_018_4e3f:
    ld a, [de]
    ld bc, $1300
    inc de
    inc b

jr_018_4e45:
    ld de, $0408
    ld [de], a
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec c

jr_018_4e5f:
    ld c, $13
    rlca
    ld [$060d], sp
    ld e, a
    ld h, $13
    rlca
    nop
    dec c
    ld a, [bc]
    ld a, [de]
    jr jr_018_4e7d

    inc d
    daa
    inc e
    inc bc
    ld c, $1a
    jr @+$10

    inc d
    ld a, [de]
    ld d, $00
    dec c
    inc de

jr_018_4e7d:
    dec e
    nop
    dec c
    jr jr_018_4e95

    rlca
    ld [$060d], sp
    ld a, [de]
    inc b
    dec bc
    ld [de], a
    inc b
    jr z, jr_018_4eb3

    dec e
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

jr_018_4e95:
    jr jr_018_4e9b

    ld [de], a
    dec e
    ld a, [de]
    ld a, [de]

jr_018_4e9b:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec c
    ld c, $5f
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    inc bc
    ld c, $04
    ld [de], a
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]

jr_018_4eb3:
    ld c, $0f
    inc b
    dec c
    jr nz, jr_018_4ed8

    ld d, $07
    inc d
    inc c
    rrca
    daa
    inc e
    jr jr_018_4ed0

    inc d
    ld a, [de]
    dec b
    nop
    dec bc
    dec bc
    ld a, [de]
    rlca
    nop
    ld de, $1a03
    nop
    dec c

jr_018_4ed0:
    inc bc
    dec e
    rlca
    ld [$1a13], sp
    jr jr_018_4ee6

jr_018_4ed8:
    inc d
    ld de, $071a
    inc b
    nop
    inc bc
    dec e
    nop
    ld b, $00
    ld [$120d], sp

jr_018_4ee6:
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $1c20
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc b
    nop
    inc de
    jr @+$1c

    inc de
    rlca
    inc d
    inc bc
    ld a, [de]
    ld c, $05
    dec e
    jr jr_018_4f15

    inc d
    ld de, $071a
    inc b
    nop
    inc bc
    dec e
    ld [de], a
    rrca
    dec bc
    ld [$1313], sp

jr_018_4f15:
    ld [$060d], sp
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    ld [$1d12], sp
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    ld [de], a
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$060d], sp
    dec e
    jr @+$10

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $071a
    inc b
    nop
    ld de, $1f20
    jr jr_018_4f52

    inc d
    ld a, [de]
    nop
    ld [de], a
    ld a, [bc]
    ld a, [de]
    ld a, $37
    push bc
    dec e
    inc de
    ld c, $1a
    dec bc

jr_018_4f52:
    inc b
    inc de
    ld a, [de]
    jr jr_018_4f65

    inc d
    ld a, [de]
    rrca
    dec bc
    nop
    jr jr_018_4f7b

    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop

jr_018_4f65:
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    dec b
    ld c, $11
    dec e
    dec b
    ld de, $0404
    jr nz, @+$1e

    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    jr jr_018_4f8b

    dec h
    rra

jr_018_4f7b:
    ld h, $08
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    inc bc
    ld c, $1a
    inc de
    rlca
    nop
    inc de

jr_018_4f8b:
    daa
    dec e
    ld bc, $1314
    ld a, [de]
    ld [$0e1a], sp
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $1d03
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    ld d, $07
    ld c, $1a
    ld b, $0e
    inc de
    dec e
    ld de, $0208
    rlca
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc c
    ld c, $0d
    inc b
    jr jr_018_4fd9

    rlca
    inc b
    dec b
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    inc bc
    inc b
    ld [de], a
    inc b
    ld de, $2013
    ld h, $1f
    ld h, $08

jr_018_4fd9:
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $120e
    ld [de], a
    dec e
    inc bc
    ld [$0212], sp
    ld c, $15
    inc b
    ld de, $1a12
    ld d, $07
    nop
    inc de
    ld a, [de]
    ld [$0c2a], sp
    inc bc
    ld c, $08
    dec c
    ld b, $25
    ld a, [de]
    ld [$0c2a], sp
    ld a, [de]
    inc de
    ld c, $00
    ld [de], a
    inc de
    daa
    inc e
    ld d, $07
    jr jr_018_5026

    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    jr jr_018_5022

    inc d
    ld a, [de]
    ld b, $0e
    dec e
    ld c, $14
    inc de
    ld a, [de]
    ld [$130d], sp
    ld c, $1a

jr_018_5022:
    inc de
    rlca
    inc b
    dec e

jr_018_5026:
    inc bc
    inc b
    ld [de], a
    inc b
    ld de, $2813
    inc e
    ld [$071a], sp
    inc b
    nop
    ld de, $131a
    rlca
    nop
    inc de
    dec e
    ld [de], a
    ld c, $0c
    inc b
    inc de
    ld [$040c], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc c
    nop
    dec c
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [de]
    dec b
    ld [$030d], sp
    ld a, [de]
    rlca
    ld [$1d12], sp
    dec b
    ld c, $11
    inc de
    inc d
    dec c
    inc b
    ld a, [de]
    ld c, $14
    inc de
    dec e
    inc de
    rlca
    inc b
    ld de, $2004
    ld h, $1f
    jr @+$10

    inc d
    ld a, [de]
    dec b
    ld [$030d], sp
    ld a, [de]
    nop
    ld a, [de]
    ld b, c
    ld sp, $1d30
    ld bc, $0b08
    dec bc
    ld a, [de]
    rrca
    dec bc
    nop
    jr jr_018_5089

    inc d
    dec bc
    dec bc
    jr jr_018_50a6

jr_018_5089:
    ld bc, $0804
    dec c
    ld b, $1a
    ld bc, $0e0b
    ld d, $0d
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e
    ld bc, $1a18
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $08
    dec c
    inc bc

jr_018_50a6:
    jr nz, @+$21

    ld [$1a13], sp
    ld [de], a
    nop
    jr jr_018_50c1

    dec e
    ld h, $13
    rlca
    ld [$1a12], sp
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld [$1d12], sp
    ld b, $0e

jr_018_50c1:
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $1d
    ld a, $37
    push bc
    jr nz, jr_018_50f3

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1d0a
    inc b
    rla
    ld [bc], a
    dec bc
    nop
    ld [$120c], sp
    dec h
    ld a, [de]
    ld h, $13
    rlca
    inc b
    ld [de], a
    inc b
    dec e
    ld bc, $0b04
    ld c, $0d
    ld b, $1a
    inc de
    ld c, $1a

jr_018_50f3:
    inc de
    rlca
    inc b
    dec e
    inc bc
    inc b
    ld [bc], a
    inc b
    nop
    ld [de], a
    inc b
    inc bc
    daa
    inc e
    dec c
    ld c, $1a
    ld c, $0d
    inc b
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    ld c, $0b
    ld [$0402], sp
    ld a, [de]
    inc c
    nop
    jr jr_018_5135

    inc b
    rla
    nop
    inc c
    ld [$040d], sp
    inc de
    rlca
    inc b
    inc c
    daa
    ld h, $1f
    inc c
    nop
    jr jr_018_512e

    inc b

jr_018_512e:
    ld a, [de]
    jr @+$10

    inc d
    dec e
    ld [de], a
    rlca

jr_018_5135:
    ld c, $14
    dec bc
    inc bc
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    inc bc
    ld c, $0d
    inc b
    dec e
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    inc b
    dec bc
    ld [de], a
    inc b
    daa
    rra
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
    jr jr_018_5185

    ld a, [de]
    jr jr_018_5171

    inc d
    inc bc
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    ld a, [de]
    ld de, $0d14
    ld a, [de]
    dec b
    nop

jr_018_5171:
    ld de, $041d
    dec c
    ld c, $14
    ld b, $07
    ld a, [de]
    nop
    ld d, $00
    jr @+$22

    rra
    jr @+$10

    inc d
    ld a, [de]
    nop

jr_018_5185:
    ld de, $0d04
    ld a, [hl+]
    inc de
    ld a, [de]
    ld d, $04
    nop
    ld de, $0d08
    ld b, $00
    dec c
    jr @+$15

    rlca
    ld [$060d], sp
    ld a, [de]
    ld c, $0d
    dec e
    ld a, $37
    push bc
    jr nz, jr_018_51c2

    jr jr_018_51b3

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    ld d, $04
    nop
    ld de, $0d08
    ld b, $1d

jr_018_51b3:
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    jr nz, jr_018_51db

    ld h, $16
    rlca
    inc b
    dec c
    ld a, [de]

jr_018_51c2:
    jr jr_018_51d2

    inc d
    ld a, [de]
    ld d, $00
    dec c
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    inc de
    ld de, $1a18

jr_018_51d2:
    jr @+$10

    inc d
    ld de, $0b1a
    inc d
    ld [bc], a
    ld a, [bc]

jr_018_51db:
    dec h
    dec e
    jr jr_018_51ed

    inc d
    ld a, [de]
    ld b, $0e
    inc de
    inc de
    nop
    ld a, [de]
    inc d
    ld [de], a
    inc b
    dec e
    ld [bc], a
    rlca

jr_018_51ed:
    ld [$120f], sp
    daa
    inc e
    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1814
    ld a, [de]
    ld [bc], a
    rlca
    ld [$120f], sp
    dec e
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    rlca
    ld [$1104], sp
    dec e
    dec c
    inc b
    rla
    inc de
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $2620
    rra
    rlca
    inc c
    dec h
    ld a, [de]
    inc c
    nop
    jr jr_018_5228

    inc b

jr_018_5228:
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    dec b
    dec bc
    nop
    ld [de], a
    rlca
    dec bc
    ld [$0706], sp
    inc de
    ld a, [de]
    ld d, $08
    dec bc
    dec bc
    dec e
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    ld [$1a0d], sp
    rlca
    nop
    dec c
    inc bc
    jr jr_018_5273

    rra
    ld a, $37
    push bc
    ld a, [de]
    nop
    ld [de], a
    ld a, [bc]
    ld [de], a
    dec h
    inc e
    ld h, $03
    ld c, $1a
    jr @+$10

    inc d
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, [de]
    ld de, $0b14
    inc b
    ld [de], a
    ld a, [de]
    ld c, $05
    dec e
    ld a, [de]

jr_018_5273:
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    jr z, @+$28

    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    jr jr_018_528c

    ld [de], a
    dec e
    ld a, [de]
    ld a, [de]

jr_018_528c:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec c
    ld c, $5f
    nop
    ld a, [de]
    ld [de], a
    inc b
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    ld [$0411], sp
    dec e
    inc de
    ld de, $0200
    ld a, [bc]
    ld [de], a
    ld a, [de]
    ld b, $0e
    inc b
    ld [de], a
    dec e
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    rrca
    nop
    ld de, $1d13
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    inc b
    ld de, $2013
    rra
    ld de, $0314
    jr jr_018_52ee

    ld b, $0b
    nop
    dec c
    ld [bc], a
    inc b
    ld [de], a
    dec e
    dec c
    inc b
    ld de, $0e15
    inc d
    ld [de], a
    dec bc
    jr jr_018_5300

    nop
    ld de, $140e
    dec c
    inc bc
    dec e
    nop

jr_018_52ee:
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    nop
    jr @+$14

    dec h
    ld a, [de]
    ld h, $08
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [bc]

jr_018_5300:
    inc b
    inc b
    rrca
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    inc d
    rrca
    ld a, [de]
    nop
    ld [bc], a
    inc b
    dec h
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $120e
    ld [de], a
    ld a, [de]
    ld [$1d12], sp
    ld d, $00
    inc de
    ld [bc], a
    rlca
    ld [$060d], sp
    daa
    ld h, $1f
    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld b, $04
    inc de
    dec e
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    ld bc, $0204
    nop
    inc d
    ld [de], a
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld d, $08
    dec c
    inc bc
    ld c, $16
    ld a, [de]
    ld [$1a12], sp
    ld bc, $000e
    ld de, $0403
    inc bc
    dec e
    inc d
    rrca
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0d
    inc de
    inc b
    dec c
    inc de
    ld [de], a
    dec e
    inc bc
    ld [$0505], sp
    inc b
    ld de, $121a
    dec bc
    ld [$0706], sp
    inc de
    dec bc
    jr jr_018_5398

    dec b
    ld de, $0c0e
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    dec e
    inc bc
    ld [$1100], sp
    jr jr_018_53af

    rra
    ld [bc], a
    ld c, $0c
    rrca
    nop
    ld de, $0304

jr_018_5398:
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec bc
    inc b
    inc bc
    ld b, $04
    ld de, $081a
    dec c
    ld a, [de]
    inc de
    rlca
    inc b

jr_018_53af:
    dec e
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, @+$22

    jr nz, jr_018_53e0

    inc de
    rlca
    inc b
    ld de, $1a04
    ld [$1a12], sp
    dec c
    ld c, $1a
    ld b, b
    jr nc, jr_018_53ea

    ld [$1d0d], sp
    inc de
    rlca
    ld [$1a12], sp
    dec bc
    inc b
    inc bc
    ld b, $04
    ld de, $1f20

jr_018_53e0:
    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04

jr_018_53ea:
    ld h, $0d
    ld c, $20
    jr nc, jr_018_5416

    dec e
    rrca
    nop
    jr @+$0e

    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    ld [$1d12], sp
    dec bc
    inc b
    inc bc
    ld b, $04
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0d
    inc de
    inc b
    dec c
    inc de
    ld [de], a

jr_018_5416:
    ld a, [de]
    nop
    ld de, $1d04
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    inc c
    inc b
    ld a, [de]
    nop
    ld [de], a
    dec e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc bc
    ld [$1100], sp
    jr jr_018_5456

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    jr @+$0e

    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    dec b
    ld c, $11
    dec e
    ld h, $0d
    ld c, $20
    jr nc, jr_018_5474

    ld a, [de]
    nop
    ld de, $1d04
    ld de, $0204

jr_018_5456:
    ld c, $11
    inc bc
    inc b
    inc bc
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld [$1100], sp
    jr jr_018_5489

    rra
    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    inc de
    rlca

jr_018_5474:
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de

jr_018_5489:
    rlca
    inc b
    dec e
    rlca
    ld c, $13
    inc b
    dec bc
    jr nz, jr_018_54b2

    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de

jr_018_54b2:
    rlca
    inc b
    dec e
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, jr_018_54e3

    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de

jr_018_54e3:
    rlca
    inc b
    dec e
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $2012
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld c, $08
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    inc b
    dec bc
    dec bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    rlca
    ld [$1f0f], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld c, $16
    inc b
    dec bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    jr jr_018_556f

    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    inc b
    ld d, $12
    ld [bc], a
    dec bc
    ld [$320f], sp
    rra
    rra
    rra
    rra
    rra

jr_018_556f:
    rra
    rra
    ld [hl-], a
    dec [hl]
    ld a, [de]
    ld [bc], a
    inc b
    dec c
    inc de
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld sp, $1a30
    inc bc
    ld c, $0b
    dec bc
    nop
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    ld sp, $031a
    ld c, $0b
    dec bc
    nop
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    ld sp, $031a
    ld c, $0b
    dec bc
    nop
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    ld [$0402], sp
    dec c
    ld [de], a
    inc b
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, $14
    inc c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld [$0006], sp
    ld de, $111a
    ld [$060d], sp
    ld sp, $1f1f
    rra
    rra
    rra
    rrca
    ld [$0b0b], sp
    ld c, $16
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    nop
    rrca
    inc b
    ld de, $1f31
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld [$040c], sp
    inc de
    nop
    ld bc, $040b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    dec bc
    nop
    dec c
    inc de
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    ld c, $13
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld [$0712], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    dec bc
    nop
    dec c
    inc de
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    dec bc
    nop
    dec c
    inc de
    inc sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $1314
    inc de
    ld c, $0d
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rlca
    ld c, $13
    ld c, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $1f31
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    nop
    inc c
    rrca
    rlca
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    inc b
    ld d, $12
    ld [bc], a
    dec bc
    ld [$330f], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    inc b
    ld d, $12
    ld [bc], a
    dec bc
    ld [$340f], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $1f32
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $130e
    inc de
    dec bc
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    ld [$0706], sp
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld sp, $1a30
    inc bc
    ld c, $0b
    dec bc
    nop
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    ld [hl-], a
    dec [hl]
    ld a, [de]
    ld [bc], a
    inc b
    dec c
    inc de
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [hl-], a
    dec [hl]
    ld a, [de]
    ld [bc], a
    inc b
    dec c
    inc de
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    inc b
    dec bc
    dec bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    dec c
    ld [$0405], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    jr jr_018_5777

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de

jr_018_5777:
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc b
    inc c
    rrca
    inc de
    jr jr_018_57d1

    ld [bc], a
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    jr jr_018_57f8

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra

jr_018_57d1:
    inc bc
    inc d
    ld [bc], a
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld [$1100], sp
    jr @+$21

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    nop
    ld de, $1f03
    rra
    rra

jr_018_57f8:
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    inc b
    dec c
    ld [bc], a
    ld [$1f0b], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    jr jr_018_5849

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld [$1212], sp
    inc d
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    ld [$0b0b], sp
    ld c, $16
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    inc b
    ld de, $1405
    inc c
    inc b
    rra

jr_018_5849:
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    inc b
    ld d, $12
    ld [bc], a
    dec bc
    ld [$350f], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld de, $1204
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    nop
    inc d
    dec c
    inc bc
    ld de, $3118
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $1f33
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc d
    dec c
    ld [$0e05], sp
    ld de, $1f0c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0d00
    ld a, [bc]
    ld a, [de]
    ld [de], a
    dec bc
    ld [$120f], sp
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    jr @+$37

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld sp, $1a30
    inc bc
    ld c, $0b
    dec bc
    nop
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    dec bc
    ld [$0402], sp
    dec c
    ld [de], a
    inc b
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    dec bc
    nop
    ld [$1a0c], sp
    inc de
    ld [$0a02], sp
    inc b
    inc de
    rra
    rra
    rra
    rra
    inc bc
    inc b
    inc de
    inc b
    ld de, $0406
    dec c
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    jr jr_018_593b

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $1314
    inc de
    ld c, $0d
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld de, $0204
    ld c, $11
    inc bc
    ld sp, $1f1f
    rra

jr_018_593b:
    rra
    rra
    rra
    rra
    rra
    rra
    rlca
    nop
    inc de
    ld a, [de]
    ld de, $0200
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $04
    ld [$0706], sp
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    nop
    ld de, $1f13
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld c, $0f
    inc b
    dec c
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    nop
    dec c
    inc bc
    ld d, $08
    ld [bc], a
    rlca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    ld a, [de]
    inc c
    nop
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rlca
    ld c, $13
    ld c, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $1f31
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    nop
    rrca
    inc b
    ld de, $1f32
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0d00
    nop
    dec c
    nop
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld de, $0204
    ld c, $11
    inc bc
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    nop
    inc c
    inc b
    inc de
    nop
    ld b, $31
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    nop
    inc c
    inc b
    inc de
    nop
    ld b, $32
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    inc b
    inc b
    dec bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld c, $08
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld [$0006], sp
    ld de, $111a
    ld [$060d], sp
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    rlca
    ld [$1f12], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rlca
    ld c, $13
    inc b
    dec bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld de, $0d04
    ld [bc], a
    rlca
    ld a, [de]
    ld [bc], a
    ld c, $00
    inc de
    rra
    rra
    rra
    rra
    rra
    rrca
    nop
    dec c
    inc de
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $00
    dec bc
    dec bc
    inc b
    inc de
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    inc b
    ld d, $12
    ld [bc], a
    dec bc
    ld [$310f], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc d
    ld [$0213], sp
    nop
    ld [de], a
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    nop
    inc d
    dec c
    inc bc
    ld de, $3218
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc b
    dec c
    dec d
    inc b
    dec bc
    ld c, $0f
    inc b
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    inc b
    dec c
    dec d
    inc b
    dec bc
    ld c, $0f
    inc b
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld c, $00
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, $14
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    dec bc
    nop
    ld [de], a
    rlca
    dec bc
    ld [$0706], sp
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld de, $1600
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $170e
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    inc d
    dec c
    ld [bc], a
    rlca
    ld a, [de]
    ld bc, $170e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $170e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $170e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec d
    nop
    ld [bc], a
    inc d
    inc d
    inc c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0600
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc b
    dec c
    dec d
    inc b
    dec bc
    ld c, $0f
    inc b
    inc sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $170e
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $00
    dec bc
    dec bc
    inc b
    inc de
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    ld c, $00
    rrca
    ld a, [de]
    ld bc, $170e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $170e
    inc sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    nop
    rrca
    inc b
    ld de, $0001
    ld b, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    rlca
    inc b
    ld [de], a
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    nop
    ld bc, $040b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    nop
    ld [$1a0b], sp
    ld bc, $170e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    dec bc
    ld c, $13
    ld a, [de]
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    dec bc
    ld c, $13
    ld a, [de]
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    nop
    dec b
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    inc b
    dec bc
    inc b
    rrca
    rlca
    ld c, $0d
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    nop
    ld bc, $040b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    rlca
    inc b
    ld [de], a
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $00
    ld [de], a
    rlca
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld de, $1200
    rlca
    ld a, [de]
    ld [bc], a
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld de, $1200
    rlca
    ld a, [de]
    ld [bc], a
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    nop
    ld [de], a
    ld a, [de]
    dec d
    inc b
    ld b, $00
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    inc b
    ld d, $1a
    jr @+$10

    ld de, $1f0a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    jr nz, jr_018_5fa4

jr_018_5fa4:
    jr nz, jr_018_5fc5

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc de
    jr nz, jr_018_5fc0

    ld c, $14
    ld [$1f12], sp
    rra
    rra
    rra
    rra
    rra
    rra

jr_018_5fc0:
    rra
    ld b, $0b
    nop
    ld [de], a

jr_018_5fc5:
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    ld [$1111], sp
    ld c, $11
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    ld c, $02
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld c, $0e
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld de, $0304
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $140b
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rlca
    ld c, $01
    ld c, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $0e
    ld de, $040a
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $0e
    inc c
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld c, $0b
    inc bc
    ld a, [de]
    inc c
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld c, $06
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    ld [$1f03], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    rlca
    nop
    inc bc
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    nop
    dec bc
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld de, $0314
    jr @+$21

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, $00
    inc de
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    nop
    inc bc
    ld [$0e12], sp
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    inc b
    ld c, $11
    ld [$1f00], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld c, $13
    inc de
    nop
    ld b, $04
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    ld c, $11
    ld b, $14
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    nop
    inc bc
    inc bc
    ld de, $1204
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, $0e
    ld c, $03
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    rlca
    inc b
    dec bc
    dec d
    inc b
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld c, $0b
    inc bc
    ld a, [de]
    inc de
    nop
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rlca
    ld c, $13
    ld a, [de]
    inc de
    nop
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    inc d
    ld de, $0013
    ld [$1f0d], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    nop
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    rlca
    nop
    inc de
    inc de
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $00
    ld [de], a
    rlca
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $130e
    inc de
    dec bc
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld c, $0d
    inc bc
    inc d
    ld [bc], a
    inc de
    ld c, $11
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld de, $1508
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld c, $0f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $130e
    inc de
    ld c, $0c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    dec d
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    rlca
    ld b, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    jr jr_018_6333

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    nop
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc de

jr_018_6333:
    dec bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [$010d], sp
    ld c, $14
    dec c
    inc bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    nop
    ld de, $0811
    dec d
    inc b
    inc bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $000e
    ld de, $0803
    dec c
    ld b, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    rrca
    nop
    ld de, $0813
    dec c
    ld b, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    ld c, $14
    inc de
    ld bc, $140e
    dec c
    inc bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld de, $1f0a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld [$1813], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc de
    nop
    inc de
    inc d
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
