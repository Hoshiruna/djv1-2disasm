; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ld b, $40
    rla
    ld b, b
    halt
    ld c, e
    ld a, [bc]
    ld b, b
    dec d
    ld b, b
    inc c
    ld b, b
    ld [bc], a
    nop
    nop
    rst RST_20
    ld b, $00
    ld [$06e8], sp
    rla
    ld b, b
    dec de
    ld b, b
    reti


    ld c, b
    daa
    ld b, c
    ld l, b
    ld b, c
    xor c
    ld b, c
    and $41
    di
    ld b, c
    db $10
    ld b, d
    dec d
    ld b, d
    ld a, [de]
    ld b, d
    inc hl
    ld b, d
    inc [hl]
    ld b, d
    ld b, l
    ld b, d
    ld l, [hl]
    ld b, d
    rst RST_00
    ld b, d
    inc b
    ld b, e
    dec a
    ld b, e
    ld a, d
    ld b, e
    xor a
    ld b, e
    ldh a, [rSCX]
    ld sp, $4a44
    ld b, h
    adc e
    ld b, h
    or h
    ld b, h
    pop de
    ld b, h
    ld d, $45
    ld d, a
    ld b, l
    ld [hl], b
    ld b, l
    adc c
    ld b, l
    adc [hl]
    ld b, l
    sub e
    ld b, l
    xor h
    ld b, l
    pop bc
    ld b, l
    add $45
    bit 0, l
    call c, $e945
    ld b, l
    xor $45
    di
    ld b, l
    db $fc
    ld b, l
    ld bc, $0646
    ld b, [hl]
    dec bc
    ld b, [hl]
    db $10
    ld b, [hl]
    dec d
    ld b, [hl]
    ld a, [de]
    ld b, [hl]
    rra
    ld b, [hl]
    inc h
    ld b, [hl]
    add hl, hl
    ld b, [hl]
    ld l, $46
    inc sp
    ld b, [hl]
    jr c, jr_002_40c5

    ld c, c
    ld b, [hl]
    ld e, d
    ld b, [hl]
    ld l, a
    ld b, [hl]
    adc b
    ld b, [hl]
    ld de, $4e47
    ld b, a
    ld l, e
    ld b, a
    and h
    ld b, a
    xor l
    ld b, a
    jp nz, $d747

    ld b, a
    db $f4
    ld b, a
    dec b
    ld c, b
    ld d, $48
    rra
    ld c, b
    jr z, jr_002_40e7

    add hl, sp
    ld c, b
    ld d, d
    ld c, b
    ld d, a
    ld c, b
    ld e, h
    ld c, b
    ld l, c
    ld c, b
    halt
    ld c, b
    add e
    ld c, b
    adc h
    ld c, b
    sub l
    ld c, b
    sbc d
    ld c, b
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c

jr_002_40c5:
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c

jr_002_40e7:
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    daa
    ld b, c
    sbc a
    ld c, b
    xor h
    ld c, b
    or c
    ld c, b
    cp [hl]
    ld c, b
    rst RST_08
    ld c, b
    call nc, $1048
    nop
    nop
    nop
    nop
    nop
    ld [$0001], sp
    nop
    db $10
    ld [bc], a
    nop
    ld [$1001], sp
    nop
    ld [$1109], sp
    nop
    ld [$1211], sp
    nop
    stop
    jr nz, jr_002_4144

jr_002_4144:
    db $10
    ld [$0021], sp
    db $10
    db $10
    ld [hl+], a
    nop
    db $10
    jr jr_002_4162

    nop
    jr @+$03

    jr nc, jr_002_4154

jr_002_4154:
    jr jr_002_415f

    ld sp, $1800
    ld de, $0032
    jr nz, jr_002_415f

    inc bc

jr_002_415f:
    nop
    jr nz, jr_002_416b

jr_002_4162:
    inc b
    nop
    jr nz, @+$13

    dec b
    nop
    stop
    nop

jr_002_416b:
    ld b, $00
    nop
    ld [$0007], sp
    nop
    db $10
    ld [$0800], sp
    ld bc, $0014
    ld [$1509], sp
    nop
    ld [$1611], sp
    nop
    stop
    rla
    nop
    db $10
    ld [$0018], sp
    db $10
    db $10
    inc hl
    nop
    db $10
    jr jr_002_41b4

    nop
    jr jr_002_4194

    dec h

jr_002_4194:
    nop
    jr @+$0b

    ld h, $00
    jr jr_002_41ac

    daa
    nop
    jr nz, jr_002_419f

jr_002_419f:
    jr z, jr_002_41a1

jr_002_41a1:
    jr nz, jr_002_41ab

    inc sp
    nop
    jr nz, @+$12

    inc [hl]
    nop
    rrca
    nop

jr_002_41ab:
    inc b

jr_002_41ac:
    add hl, bc
    nop
    nop
    inc c
    ld a, [bc]
    nop
    nop
    inc d

jr_002_41b4:
    dec bc
    nop
    ld [$0c20], sp
    nop
    ld [$1900], sp
    nop
    ld [$1a08], sp
    nop
    ld [$1b10], sp
    nop
    ld [$1c18], sp
    nop
    stop
    add hl, hl
    nop
    db $10
    ld [$002a], sp
    db $10
    db $10
    dec hl
    nop
    db $10
    jr @+$2e

    nop
    jr jr_002_41e4

    ld a, [hl-]
    nop
    db $10
    jr nz, jr_002_421a

    nop
    jr jr_002_41fc

jr_002_41e4:
    dec sp
    nop
    inc bc
    db $fc
    ld bc, $0001
    inc b
    nop
    ld [bc], a
    nop
    inc b
    ld [$0003], sp
    rlca
    db $fc
    nop
    ld [$0400], sp
    nop
    add hl, bc
    nop

jr_002_41fc:
    inc b
    ld [$0003], sp
    inc c
    nop
    inc b
    ld bc, $0014
    dec b
    ld bc, $001c
    ld b, $01
    inc h
    nop
    rlca
    ld bc, $0001
    nop
    rlca
    nop
    ld bc, $0000
    ld b, $00

jr_002_421a:
    ld [bc], a
    nop
    nop
    ld [$0801], sp
    nop
    add hl, bc
    ld [bc], a
    inc b
    jr jr_002_4226

jr_002_4226:
    inc c
    nop
    jr jr_002_4232

    dec c
    nop
    jr @+$12

    ld c, $00
    jr @+$1a

jr_002_4232:
    rrca
    nop
    inc b
    nop
    nop
    rra
    nop
    ld [$1e00], sp
    nop
    stop
    dec e
    nop
    jr jr_002_4243

jr_002_4243:
    inc e
    nop
    ld a, [bc]
    nop
    nop
    ld [$0000], sp
    ld [$0009], sp
    ld [$0a00], sp
    nop
    ld [$0b08], sp
    nop
    stop
    inc c
    nop
    db $10
    ld [$000d], sp
    jr jr_002_4260

jr_002_4260:
    ld c, $00
    jr jr_002_426c

    rrca
    nop
    jr nz, jr_002_4268

jr_002_4268:
    stop
    jr nz, jr_002_4274

jr_002_426c:
    ld de, $1600
    inc bc
    inc bc
    nop
    nop
    nop

jr_002_4274:
    dec bc
    ld bc, $0000
    inc de
    ld [bc], a
    nop
    ld [$030b], sp
    nop
    ld [$0413], sp
    nop
    db $10
    ld [bc], a
    dec b
    nop
    db $10
    ld a, [bc]
    ld b, $00
    db $10
    ld [de], a
    rlca
    nop
    db $10
    ld a, [de]
    ld [$1800], sp
    ld [bc], a
    add hl, bc
    nop
    jr jr_002_42a3

    ld a, [bc]
    nop
    jr jr_002_42af

    dec bc
    nop
    jr jr_002_42bb

    inc c
    nop

jr_002_42a3:
    jr jr_002_42c7

    dec c
    nop
    jr nz, jr_002_42a9

jr_002_42a9:
    ld c, $00
    jr nz, jr_002_42b5

    rrca
    nop

jr_002_42af:
    jr nz, jr_002_42c1

    stop
    jr nz, @+$1a

jr_002_42b5:
    ld de, $2800
    nop
    ld [de], a
    nop

jr_002_42bb:
    jr z, jr_002_42c5

    inc de
    nop
    jr z, jr_002_42d1

jr_002_42c1:
    inc d
    nop
    jr z, @+$1a

jr_002_42c5:
    dec d
    nop

jr_002_42c7:
    rrca
    inc b
    nop
    nop
    ld bc, $0800
    ld bc, $0001

jr_002_42d1:
    db $10
    ld [bc], a
    ld bc, $1800
    inc bc
    ld bc, $000c
    db $10
    ld bc, $0808
    ld de, $0801
    db $10
    ld [de], a
    ld bc, $1808
    inc de
    ld bc, $0810
    jr nz, jr_002_42ed

    db $10

jr_002_42ed:
    db $10
    ld hl, $1001
    jr jr_002_4315

    ld bc, $0818
    jr nc, @+$03

    jr jr_002_430a

    ld sp, $1801
    jr jr_002_4331

    ld bc, $2018
    inc sp
    ld bc, $000e
    nop
    inc b
    ld [bc], a
    nop

jr_002_430a:
    ld [$0205], sp
    nop
    db $10
    ld b, $02
    ld [$1400], sp
    ld [bc], a

jr_002_4315:
    ld [$1508], sp
    ld [bc], a
    ld [$1610], sp
    ld [bc], a
    stop
    inc h
    ld [bc], a
    db $10
    ld [$0225], sp
    db $10
    db $10
    ld h, $02
    ld c, $18
    daa
    ld [bc], a
    jr jr_002_432f

jr_002_432f:
    inc [hl]
    ld [bc], a

jr_002_4331:
    jr jr_002_433b

    dec [hl]
    ld [bc], a
    jr jr_002_4347

    ld [hl], $02
    ld d, $18

jr_002_433b:
    scf
    ld [bc], a
    rrca
    nop
    inc bc
    jr z, jr_002_4345

    nop
    dec bc
    add hl, hl

jr_002_4345:
    inc bc
    nop

jr_002_4347:
    inc de
    ld a, [hl+]
    inc bc
    ld [$0700], sp
    inc bc
    ld [$0808], sp
    inc bc
    ld [$0910], sp
    inc bc
    ld [$0a18], sp
    inc bc
    stop
    rla
    inc bc
    db $10
    ld [$0318], sp
    db $10
    db $10
    add hl, de
    inc bc
    db $10
    jr jr_002_4383

    inc bc
    jr jr_002_436c

jr_002_436c:
    jr c, jr_002_4371

    jr jr_002_4378

    add hl, sp

jr_002_4371:
    inc bc
    jr jr_002_4384

    ld a, [hl-]
    inc bc
    jr @+$1a

jr_002_4378:
    inc hl
    inc bc
    dec c
    nop
    nop
    dec bc
    inc b
    nop
    ld [$040c], sp

jr_002_4383:
    nop

jr_002_4384:
    db $10
    dec c
    inc b
    ld [$1b01], sp
    inc b
    ld [$1c09], sp
    inc b
    ld [$1d11], sp
    inc b
    db $10
    ld bc, $042b
    db $10
    add hl, bc
    inc l
    inc b
    db $10
    ld de, $042d
    jr jr_002_43a1

jr_002_43a1:
    dec sp
    inc b
    jr jr_002_43ad

    inc a
    inc b
    jr jr_002_43b9

    dec a
    inc b
    jr @+$1a

jr_002_43ad:
    ld a, $04
    stop
    nop
    nop
    ld bc, $0800
    ld bc, $0001

jr_002_43b9:
    db $10
    ld [bc], a
    ld bc, $1800
    inc bc
    ld bc, $0008
    inc b
    ld bc, $0808
    dec b
    nop
    ld [$0610], sp
    nop
    ld [$0718], sp
    ld bc, $0010
    ld [$1001], sp
    ld [$0009], sp
    db $10
    db $10
    ld a, [bc]
    nop
    db $10
    jr jr_002_43ea

    ld bc, $0018
    inc c
    ld bc, $0818
    dec c
    nop
    jr jr_002_43fa

jr_002_43ea:
    ld c, $00
    jr @+$1a

    rrca
    ld bc, $0010
    nop
    db $10
    ld [bc], a
    nop
    ld [$0211], sp
    nop

jr_002_43fa:
    db $10
    ld [de], a
    ld [bc], a
    nop
    jr @+$15

    ld [bc], a
    ld [$1400], sp
    ld [bc], a
    ld [$1508], sp
    ld [bc], a
    ld [$1718], sp
    ld [bc], a
    stop
    jr @+$05

    db $10
    ld [$0219], sp
    db $10
    jr jr_002_4433

    ld [bc], a
    jr jr_002_441b

jr_002_441b:
    inc e
    inc bc
    jr @+$0a

    dec e
    inc bc
    jr jr_002_4433

    ld e, $03
    ld [$1610], sp
    ld [bc], a
    db $10
    db $10
    ld a, [de]
    ld [bc], a
    jr @+$1a

    rra
    inc bc
    ld b, $00

jr_002_4433:
    nop
    ld c, $00
    nop
    ld [$000f], sp
    ld [$1e00], sp
    nop
    ld [$1f08], sp
    nop
    db $10
    inc bc
    ld l, $00
    jr @+$05

    cpl
    nop
    stop
    nop
    jr nz, jr_002_4454

    nop
    ld [$0521], sp
    nop

jr_002_4454:
    db $10
    ld [hl+], a
    dec b
    nop
    jr jr_002_447d

    dec b
    ld [$2400], sp
    inc b
    ld [$2508], sp
    inc b
    ld [$2610], sp
    inc b
    ld [$2718], sp
    inc b
    stop
    jr z, jr_002_4473

    db $10
    ld [$0429], sp

jr_002_4473:
    db $10
    db $10
    ld a, [hl+]
    inc b
    db $10
    jr @+$2d

    inc b
    jr jr_002_447d

jr_002_447d:
    inc l
    inc b
    jr jr_002_4489

    dec l
    inc b
    jr jr_002_4495

    ld l, $04
    jr @+$1a

jr_002_4489:
    cpl
    inc b
    ld a, [bc]
    ld [$2008], sp
    nop
    ld [$2110], sp
    nop
    db $10

jr_002_4495:
    ld [$0030], sp
    db $10
    db $10
    ld sp, $1800
    nop
    ld [hl+], a
    nop
    jr jr_002_44aa

    inc hl
    nop
    jr jr_002_44b6

    inc h
    nop
    jr nz, jr_002_44aa

jr_002_44aa:
    ld [hl-], a
    nop
    jr nz, jr_002_44b6

    inc sp
    nop
    jr nz, @+$12

    inc [hl]
    nop
    rlca
    nop

jr_002_44b6:
    nop
    rlca
    nop
    nop
    ld [$0008], sp
    nop
    db $10
    add hl, bc
    nop
    ld [$0a00], sp
    nop
    ld [$0b08], sp
    nop
    ld [$0c10], sp
    nop
    db $10
    rlca
    dec c
    nop
    ld de, $00fd
    ld [de], a
    nop
    db $fd
    db $10
    inc de
    nop
    dec b
    dec b
    inc d
    nop
    dec b
    dec c
    dec d
    nop
    dec b
    dec d
    ld d, $00
    dec c
    nop
    rla
    nop
    dec c
    ld [$0018], sp
    dec c
    db $10
    add hl, de
    nop
    dec c
    jr jr_002_450f

    nop
    dec d
    nop
    dec de
    nop
    dec d
    ld [$001c], sp
    dec d
    db $10
    dec e
    nop
    dec d
    jr jr_002_4525

    nop
    dec e
    nop
    ld hl, $1d00
    ld [$0022], sp
    dec e

jr_002_450f:
    db $10
    inc hl
    nop
    dec e
    jr @+$26

    nop
    stop
    ld a, [$0016]
    nop
    ld [bc], a
    rla
    nop
    nop
    ld a, [bc]
    jr jr_002_4523

jr_002_4523:
    nop
    ld [de], a

jr_002_4525:
    add hl, de
    nop
    ld [$1b02], sp
    nop
    db $10
    ld [bc], a
    rra
    nop
    nop
    ld a, [de]
    ld a, [de]
    nop
    ld [$1c0a], sp
    nop
    ld [$1d12], sp
    nop
    ld [$1e1a], sp
    nop
    db $10
    ld a, [bc]
    jr nz, jr_002_4543

jr_002_4543:
    db $10
    ld [de], a
    ld hl, $1000
    ld a, [de]
    ld [hl+], a
    nop
    jr jr_002_4557

    inc hl
    nop
    jr @+$14

    inc h
    nop
    jr jr_002_456f

    dec h
    nop

jr_002_4557:
    ld b, $00
    nop
    inc e
    ld bc, $0800
    dec e
    ld bc, $1000
    ld e, $00
    ld [$1f00], sp
    nop
    ld [$2110], sp
    nop
    ld [$2008], sp

jr_002_456f:
    nop
    ld b, $fe
    cp $0e
    ld bc, $06fe
    rrca
    nop
    cp $0e
    stop
    ld b, $fe
    ld de, $0600
    ld b, $12
    nop
    ld b, $0e
    inc de
    nop
    ld bc, $0000
    inc a
    ld bc, $0001
    nop
    dec c
    nop
    ld b, $fe
    rst RST_38
    ld a, [bc]
    nop
    cp $07
    dec bc
    nop
    ld b, $ff
    ld a, [de]
    nop
    ld b, $07
    dec de
    nop
    ld b, $0f
    rla
    nop
    ld c, $07
    jr jr_002_45ac

jr_002_45ac:
    dec b
    nop
    nop
    ld bc, $0000
    ld [$0002], sp
    nop
    db $10
    inc bc
    nop
    ld [$1100], sp
    nop
    ld [$1210], sp
    nop
    ld bc, $0000
    ld c, $02
    ld bc, $0000
    rrca
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0002
    ld [$0202], sp
    nop
    db $10
    inc bc
    nop
    ld [$0405], sp
    inc bc
    inc bc
    nop
    nop
    dec b
    ld bc, $0800
    ld b, $01
    nop
    db $10
    rlca
    ld bc, $0001
    nop
    inc de
    nop
    ld bc, $0000
    inc d
    ld bc, $0002
    nop
    dec d
    ld [bc], a
    nop
    ld [$0216], sp
    ld bc, $0000
    db $10
    inc bc
    ld bc, $0000
    ld de, $0105
    nop
    nop
    ld [de], a
    inc bc
    ld bc, $0000
    inc de
    ld bc, $0001
    nop
    inc d
    inc b
    ld bc, $0000
    dec d
    ld [bc], a
    ld bc, $0000
    ld d, $03
    ld bc, $0000
    rla
    dec b
    ld bc, $0000
    add hl, de
    inc b
    ld bc, $0000
    jr jr_002_4631

    ld bc, $0000

jr_002_4631:
    ld a, [de]
    inc bc
    ld bc, $0000
    dec de
    inc b
    inc b
    nop
    nop
    jr nz, jr_002_4641

    nop
    ld [$0421], sp

jr_002_4641:
    ld [$2200], sp
    inc b
    ld [$2308], sp
    inc b
    inc b
    nop
    nop
    inc h
    ld bc, $0800
    dec h
    ld bc, $0008
    ld h, $01
    ld [$2708], sp
    ld bc, $0005
    ld [bc], a
    jr z, jr_002_465f

jr_002_465f:
    ld [$3100], sp
    nop
    ld [$3208], sp
    nop
    stop
    add hl, hl
    nop
    db $10
    ld [$002a], sp
    ld b, $00
    nop
    dec hl
    ld [bc], a
    nop
    ld [$022c], sp
    ld [$2d00], sp
    ld [bc], a
    ld [$2e08], sp
    ld [bc], a
    stop
    cpl
    ld [bc], a
    db $10
    ld [$0230], sp
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    ld [$0001], sp
    nop
    db $10
    ld [bc], a
    nop
    ld [$1000], sp
    nop
    ld [$1108], sp
    nop
    ld [$1210], sp
    nop
    stop
    jr nz, jr_002_46a5

jr_002_46a5:
    db $10
    ld [$0021], sp
    db $10
    db $10
    ld [hl+], a
    nop
    db $10
    jr jr_002_46d3

    nop
    jr jr_002_46b3

jr_002_46b3:
    jr nc, jr_002_46b5

jr_002_46b5:
    jr jr_002_46bf

    ld sp, $1800
    db $10
    ld [hl-], a
    nop
    jr jr_002_46d7

jr_002_46bf:
    inc sp
    nop
    jr nz, jr_002_46c3

jr_002_46c3:
    inc b
    nop
    jr nz, jr_002_46cf

    dec b
    nop
    jr nz, jr_002_46db

    ld b, $00
    jr nz, jr_002_46e7

jr_002_46cf:
    rlca
    nop
    jr z, jr_002_46d3

jr_002_46d3:
    inc d
    nop
    jr z, jr_002_46df

jr_002_46d7:
    dec d
    nop
    jr z, jr_002_46eb

jr_002_46db:
    ld d, $00
    jr z, jr_002_46f7

jr_002_46df:
    rla
    nop
    jr nc, jr_002_46e3

jr_002_46e3:
    inc h
    nop
    jr nc, jr_002_46ef

jr_002_46e7:
    dec h
    nop
    jr nc, jr_002_46fb

jr_002_46eb:
    ld h, $00
    jr nc, jr_002_4707

jr_002_46ef:
    daa
    nop
    jr c, jr_002_46f3

jr_002_46f3:
    inc [hl]
    nop
    jr c, jr_002_46ff

jr_002_46f7:
    dec [hl]
    nop
    jr c, jr_002_470b

jr_002_46fb:
    ld [hl], $00
    jr c, jr_002_4717

jr_002_46ff:
    scf
    nop
    jr nz, jr_002_4703

jr_002_4703:
    dec sp
    nop
    jr nz, jr_002_470f

jr_002_4707:
    inc a
    nop
    jr nz, @+$12

jr_002_470b:
    dec a
    nop
    jr nz, @+$1a

jr_002_470f:
    ld a, $00
    rrca
    nop
    inc bc
    ld [$0801], sp

jr_002_4717:
    nop
    jr @+$03

    ld [$1908], sp
    ld bc, $0010
    jr z, jr_002_4723

    db $10

jr_002_4723:
    ld [$0129], sp
    jr jr_002_4728

jr_002_4728:
    jr c, @+$03

    jr jr_002_4734

    add hl, sp
    ld bc, $0020
    add hl, bc
    ld bc, $0820

jr_002_4734:
    ld a, [bc]
    ld bc, $0028
    dec bc
    ld bc, $0828
    inc c
    ld bc, $ff10
    inc bc
    ld [bc], a
    jr jr_002_4744

jr_002_4744:
    inc de
    ld [bc], a
    jr jr_002_4750

    ld a, [hl+]
    ld [bc], a
    db $10
    rlca
    ld a, [de]
    inc bc
    rlca
    nop

jr_002_4750:
    nop
    ld a, [hl+]
    nop
    nop
    ld [$002b], sp
    ld [$3a00], sp
    nop
    ld [$3b08], sp
    nop
    ld [bc], a
    db $10
    inc l
    nop
    db $10
    ld [$002d], sp
    ld a, [bc]
    db $10
    inc a
    nop
    ld c, $00
    rla
    nop
    nop
    ld [$010f], sp
    nop
    ld [$0217], sp
    nop
    db $10
    rlca
    inc bc
    nop
    db $10
    rrca
    inc b
    ld bc, $1710
    dec b
    nop
    jr @+$01

    ld b, $01
    jr jr_002_4791

    rlca
    ld bc, $0f18
    ld [$1801], sp

jr_002_4791:
    rla
    add hl, bc
    nop
    jr nz, @+$01

    ld a, [bc]
    ld bc, $0720
    dec bc
    ld bc, $0f20
    inc c
    ld bc, $1720
    dec c
    nop
    ld [bc], a
    nop
    nop
    inc d
    inc bc
    ld [$1500], sp
    inc bc
    dec b
    ei
    nop
    ld d, $04
    inc bc
    nop
    rla
    inc b
    inc bc
    ld [$0418], sp
    dec bc
    nop
    add hl, de
    inc b
    dec bc
    ld [$041a], sp
    dec b
    ei
    nop
    dec de
    dec b
    inc bc
    nop
    inc e
    dec b
    inc bc
    ld [$051d], sp
    dec bc
    nop
    ld e, $05
    dec bc
    ld [$051f], sp
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [$0001], sp
    nop
    db $10
    ld [bc], a
    nop
    nop
    jr @+$05

    nop
    ld [$0401], sp
    nop
    ld [$0509], sp
    nop
    ld [$0611], sp
    nop
    inc b
    ld [$2d00], sp
    nop
    ld [$2e08], sp
    nop
    stop
    dec a
    nop
    db $10
    ld [$003e], sp
    inc b
    nop
    nop
    dec c
    nop
    nop
    ld [$000e], sp
    ld [$1d00], sp
    nop
    ld [$1e08], sp
    nop
    ld [bc], a
    ld [$2b00], sp
    nop
    ld [$2c08], sp
    nop
    ld [bc], a
    nop
    nop
    dec l
    nop
    nop
    ld [$002e], sp
    inc b
    nop
    nop
    ld c, $00
    nop
    ld [$000f], sp
    ld [$1e00], sp
    nop
    ld [$1f08], sp
    nop
    ld b, $00
    nop
    ld bc, $0000
    ld [$0002], sp
    nop
    db $10
    inc bc
    nop
    ld [$1208], sp
    nop
    ld [$1310], sp
    nop
    ld [$1418], sp
    nop
    ld bc, $0000
    ld a, a
    ld b, $01
    nop
    ld [$000c], sp
    inc bc
    nop
    ld [$000d], sp
    nop
    db $10
    ld c, $00
    nop
    jr jr_002_4877

    nop
    inc bc
    ld [$1c10], sp
    nop
    ld [$1d18], sp
    nop
    ld [$1e20], sp
    nop
    inc bc

jr_002_4877:
    ld [$2010], sp
    nop
    ld [$2118], sp
    nop
    ld [$2220], sp
    nop
    ld [bc], a
    ld [$2318], sp
    nop
    ld [$2420], sp
    nop
    ld [bc], a
    ld [$3018], sp
    nop
    ld [$3120], sp
    nop
    ld bc, $2010
    ld [hl-], a
    nop
    ld bc, $2010
    inc sp
    nop
    inc bc
    nop
    ld [bc], a
    ld [hl], b
    rlca
    ld [$7102], sp
    rlca
    rlca
    ld a, [bc]
    ld [hl], d
    rlca
    ld bc, $0808
    ld a, c
    ld b, $03
    ld [$7400], sp
    ld b, $08
    ld [$0675], sp
    nop
    ld [$0673], sp
    inc b
    ld [$7700], sp
    ld b, $08
    ld [$0678], sp
    nop
    ld [$0676], sp
    nop
    nop
    ld a, e
    ld b, $01
    ld [$7a08], sp
    ld b, $01
    nop
    nop
    ld a, a
    nop
    db $dd
    ld c, c
    ldh [c], a
    ld c, c
    rst RST_20
    ld c, c
    db $ec
    ld c, c
    rst RST_28
    ld c, c
    db $f4
    ld c, c
    ld sp, hl
    ld c, c
    cp $49
    inc bc
    ld c, d
    ld [$0d4a], sp
    ld c, d
    ld [de], a
    ld c, d
    rla
    ld c, d
    inc e
    ld c, d
    ld hl, $264a
    ld c, d
    dec hl
    ld c, d
    jr nc, jr_002_4947

    dec [hl]
    ld c, d
    ld a, [hl-]
    ld c, d
    ccf
    ld c, d
    ld b, h
    ld c, d
    ld c, c
    ld c, d
    ld c, [hl]
    ld c, d
    ld d, e
    ld c, d
    ld e, b
    ld c, d
    ld e, l
    ld c, d
    ld h, d
    ld c, d
    ld h, a
    ld c, d
    ld l, h
    ld c, d
    ld [hl], c
    ld c, d
    halt
    ld c, d
    ld a, e
    ld c, d
    add b
    ld c, d
    add l
    ld c, d
    adc d
    ld c, d
    adc a
    ld c, d
    sub h
    ld c, d
    sbc c
    ld c, d
    sbc [hl]
    ld c, d
    and e
    ld c, d
    xor b
    ld c, d
    xor l
    ld c, d
    or d
    ld c, d
    or a
    ld c, d
    cp h
    ld c, d
    pop bc
    ld c, d
    add $4a
    bit 1, d
    ret nc

    ld c, d
    push de
    ld c, d
    jp c, $df4a

    ld c, d
    db $e4
    ld c, d
    jp hl


    ld c, d

jr_002_4947:
    xor $4a
    di
    ld c, d
    ld hl, sp+$4a
    ei
    ld c, d
    nop
    ld c, e
    dec b
    ld c, e
    ld a, [bc]
    ld c, e
    rrca
    ld c, e
    inc d
    ld c, e
    add hl, de
    ld c, e
    ld e, $4b
    inc hl
    ld c, e
    jr z, jr_002_49ac

    dec l
    ld c, e
    ld [hl-], a
    ld c, e
    scf
    ld c, e
    inc a
    ld c, e
    ld b, c
    ld c, e
    ld b, [hl]
    ld c, e
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd

jr_002_49ac:
    ld c, c
    ld c, e
    ld c, e
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    ld h, b
    ld c, e
    ld h, l
    ld c, e
    cp $00
    rst RST_38
    rst RST_38
    nop
    cp $01
    rst RST_38
    rst RST_38
    nop
    cp $02
    rst RST_38
    rst RST_38
    nop
    cp $03
    nop
    cp $04
    rst RST_38
    rst RST_38
    nop
    cp $05
    rst RST_38
    rst RST_38
    nop
    cp $06
    rst RST_38
    rst RST_38
    nop
    cp $07
    rst RST_38
    rst RST_38
    nop
    cp $08
    rst RST_38
    rst RST_38
    nop
    cp $0a
    rst RST_38
    rst RST_38
    nop
    cp $0b
    rst RST_38
    rst RST_38
    nop
    cp $0c
    rst RST_38
    rst RST_38
    nop
    cp $0d
    rst RST_38
    rst RST_38
    nop
    cp $0e
    rst RST_38
    rst RST_38
    nop
    cp $0f
    rst RST_38
    rst RST_38
    nop
    cp $10
    rst RST_38
    rst RST_38
    nop
    cp $11
    rst RST_38
    rst RST_38
    nop
    cp $12
    rst RST_38
    rst RST_38
    nop
    cp $13
    rst RST_38
    rst RST_38
    nop
    cp $14
    rst RST_38
    rst RST_38
    nop
    cp $15
    rst RST_38
    rst RST_38
    nop
    cp $16
    rst RST_38
    rst RST_38
    nop
    cp $17
    rst RST_38
    rst RST_38
    nop
    cp $09
    rst RST_38
    rst RST_38
    nop
    cp $18
    rst RST_38
    rst RST_38
    nop
    cp $19
    rst RST_38
    rst RST_38
    nop
    cp $1a
    rst RST_38
    rst RST_38
    nop
    cp $1b
    rst RST_38
    rst RST_38
    nop
    cp $1b
    rst RST_38
    rst RST_38
    nop
    cp $1b
    rst RST_38
    rst RST_38
    nop
    cp $1c
    rst RST_38
    rst RST_38
    nop
    cp $1d
    rst RST_38
    rst RST_38
    nop
    cp $1e
    rst RST_38
    rst RST_38
    nop
    cp $1e
    rst RST_38
    rst RST_38
    nop
    cp $1e
    rst RST_38
    rst RST_38
    nop
    cp $1e
    rst RST_38
    rst RST_38
    nop
    cp $1e
    rst RST_38
    rst RST_38
    nop
    cp $1e
    rst RST_38
    rst RST_38
    nop
    cp $1f
    rst RST_38
    rst RST_38
    nop
    cp $1f
    rst RST_38
    rst RST_38
    nop
    cp $1f
    rst RST_38
    rst RST_38
    nop
    cp $1f
    rst RST_38
    rst RST_38
    nop
    cp $1f
    rst RST_38
    rst RST_38
    nop
    cp $1f
    rst RST_38
    rst RST_38
    nop
    cp $20
    rst RST_38
    rst RST_38
    nop
    cp $21
    rst RST_38
    rst RST_38
    nop
    cp $22
    rst RST_38
    rst RST_38
    nop
    cp $23
    rst RST_38
    rst RST_38
    nop
    cp $24
    rst RST_38
    rst RST_38
    nop
    cp $25
    rst RST_38
    rst RST_38
    nop
    cp $26
    rst RST_38
    rst RST_38
    nop
    cp $27
    rst RST_38
    rst RST_38
    nop
    cp $28
    rst RST_38
    rst RST_38
    nop
    cp $29
    rst RST_38
    rst RST_38
    nop
    cp $2a
    rst RST_38
    rst RST_38
    nop
    cp $2b
    rst RST_38
    rst RST_38
    nop
    cp $2c
    rst RST_38
    rst RST_38
    nop

jr_002_4af8:
    cp $2d
    nop
    cp $2f
    rst RST_38
    rst RST_38
    nop
    cp $2e
    rst RST_38
    rst RST_38
    nop
    cp $30
    rst RST_38
    rst RST_38
    nop
    cp $31
    rst RST_38
    rst RST_38
    nop
    cp $32
    rst RST_38
    rst RST_38
    nop
    cp $33
    rst RST_38
    rst RST_38
    nop
    cp $34
    rst RST_38
    rst RST_38
    nop
    cp $35
    rst RST_38
    rst RST_38
    nop
    cp $36
    rst RST_38
    rst RST_38
    nop
    cp $37
    rst RST_38
    rst RST_38
    nop
    cp $38
    rst RST_38
    rst RST_38
    nop
    cp $39
    rst RST_38
    rst RST_38
    nop
    cp $3a
    rst RST_38
    rst RST_38
    nop
    cp $3b
    rst RST_38
    rst RST_38
    nop
    cp $3c
    rst RST_38
    rst RST_38
    nop
    cp $09
    rst RST_38
    rst RST_38
    nop
    ld b, $43
    ld b, $43
    ld b, $44
    ld b, $45
    ld b, $46
    ld b, $47
    ld b, $48
    ld b, $49
    ld b, $4a
    ld b, $4b
    nop
    cp $80
    rst RST_38
    rst RST_38
    nop
    inc b
    add h
    dec b
    add c
    ld b, $82
    inc h
    add e
    inc bc
    add c
    ld [bc], a
    add h
    jr nz, jr_002_4af8

    rst RST_38
    rst RST_38
    nop
    ld a, d
    ld c, e
    ret


    ld e, e
Case2SpriteDefinitions:
    dw Case2BathroomSprite00
    dw Case2BathroomSprite01
    dw Case2BathroomSprite02
    dw Case2BathroomSprite03
    dw Case2BathroomSprite04
    ld sp, hl
    ld c, h
    ld c, $4d
    inc de
    ld c, l
    jr nc, jr_002_4bd9

    add hl, sp
    ld c, l
    ld c, [hl]
    ld c, l
    ld h, e
    ld c, l
    ld l, b
    ld c, l
    ld a, c
    ld c, l
    and d
    ld c, l
    db $d3
    ld c, l
    ret c

    ld c, l
    db $dd
    ld c, l
    ldh [c], a
    ld c, l
    rst RST_20
    ld c, l
    db $ec
    ld c, l
    pop af
    ld c, l
    ld c, $4e
    inc hl
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld e, c
    ld c, [hl]
    ld l, d
    ld c, [hl]
    add e
    ld c, [hl]
    cp h
    ld c, [hl]
    pop bc
    ld c, [hl]
    jp nc, $df4e

    ld c, [hl]
    ld hl, sp+$4e
    ld b, c
    ld c, a
    adc d
    ld c, a
    db $d3
    ld c, a
    inc e
    ld d, b
    ld h, l
    ld d, b
    xor [hl]
    ld d, b
    rst RST_30
    ld d, b
    ld b, b
    ld d, c
    ld d, c
    ld d, c
    add [hl]
    ld d, c
    sbc a
    ld d, c
    cp b
    ld d, c
    pop de
    ld d, c
    ld a, [$0351]

jr_002_4bd9:
    ld d, d
    inc e
    ld d, d
    dec h
    ld d, d
    ld l, $52
    ld c, e
    ld d, d
    ld d, h
    ld d, d
    ld h, c
    ld d, d
    ld l, [hl]
    ld d, d
    adc a
    ld d, d
    ret nz

    ld d, d
    pop af
    ld d, d
    cp $52
    rla
    ld d, e
    inc h
    ld d, e
    ld sp, $6e53
    ld d, e
    ld a, a
    ld d, e
    sub h
    ld d, e
    xor c
    ld d, e
    jp nz, $cf53

    ld d, e
    ldh [rHDMA3], a
    ld sp, hl
    ld d, e
    ld c, $54
    inc de
    ld d, h
    inc l
    ld d, h
    dec a
    ld d, h
    ld c, d
    ld d, h
    ld c, a
    ld d, h
    add b
    ld d, h
    add l
    ld d, h
    cp d
    ld d, h
    rst RST_30
    ld d, h
    inc l
    ld d, l
    ld h, l
    ld d, l
    sbc [hl]
    ld d, l
    db $db
    ld d, l
    inc c
    ld d, [hl]
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    add a
    ld d, [hl]
    xor b
    ld d, [hl]
    cp c
    ld d, [hl]
    adc $56
    db $d3
    ld d, [hl]
    ldh [rRP], a
    add hl, bc
    ld d, a
    ld e, d
    ld d, a
    rst RST_00
    ld d, a
    ld b, b
    ld e, b
    cp c
    ld e, b
    ld [hl-], a
    ld e, c
    xor e
    ld e, c
    inc h
    ld e, d
    dec [hl]
    ld e, d
    ld a, [hl-]
    ld e, d
    ccf
    ld e, d
    ld c, h
    ld e, d
    ld e, c
    ld e, d
    ld h, [hl]
    ld e, d
    ld l, a
    ld e, d
    ld a, b
    ld e, d
    ld a, l
    ld e, d
    adc b
    ld c, h
    adc b
    ld c, h
    add d
    ld e, d
    sbc e
    ld e, d
    or h
    ld e, d
    call $e65a
    ld e, d
    rst RST_38
    ld e, d
    jr @+$5d

    ld sp, $4a5b
    ld e, e
    ld e, e
    ld e, e
    ld [hl], b
    ld e, e
    ld a, l
    ld e, e
    adc b
    ld c, h
    adc b
    ld c, h
    adc b
    ld c, h
    adc b
    ld c, h
    adc d
    ld e, e
    sub a
    ld e, e
    sbc h
    ld e, e
    xor c
    ld e, e
    cp d
    ld e, e
    cp a
    ld e, e
    db $c4, $5b
Case2BathroomSprite00:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.sprites", $0, $11
Case2BathroomSprite01:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.sprites", $11, $29
Case2BathroomSprite02:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.sprites", $3a, $1b
jr_002_4cdd:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.sprites", $55, $6
Case2BathroomSprite03:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.sprites", $5b, $9
Case2BathroomSprite04:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.sprites", $64, $d
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [$0001], sp
    ld [$0200], sp
    nop
    ld [$0308], sp
    nop
    db $10
    ld [bc], a
    inc b
    nop
    ld bc, $0000
    dec b
    ld bc, $0007
    nop
    ld b, $02
    ld [$0700], sp
    ld [bc], a
    stop
    ld [$1802], sp
    nop
    add hl, bc
    ld [bc], a
    jr nz, jr_002_4d26

jr_002_4d26:
    ld a, [bc]
    ld [bc], a
    jr z, jr_002_4d2a

jr_002_4d2a:
    dec bc
    ld [bc], a
    jr nc, jr_002_4d2e

jr_002_4d2e:
    inc c
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec c
    inc bc
    nop
    ld [$030e], sp
    dec b
    nop
    nop
    add hl, sp
    inc b
    nop
    ld [$043a], sp
    nop
    db $10
    dec sp
    inc b
    ld [$3e00], sp
    inc b
    ld [$3f08], sp
    inc b
    dec b
    nop
    nop
    rrca
    nop
    nop
    ld [$0010], sp
    inc bc
    nop
    ld de, $0301
    ld [$0112], sp
    dec bc
    inc bc
    inc de
    ld bc, $0001
    nop
    inc d
    ld bc, $0004
    nop
    dec d
    nop
    nop
    ld [$0016], sp
    ld [$1700], sp
    nop
    ld [$1808], sp
    nop
    ld a, [bc]
    nop
    nop
    jr nz, jr_002_4d7e

jr_002_4d7e:
    nop
    ld [$0021], sp
    nop
    db $10
    ld [hl+], a
    nop
    ld [$2300], sp
    nop
    ld [$2408], sp
    nop
    ld [$2510], sp
    nop
    ld [bc], a
    jr jr_002_4db4

    nop
    ld b, $0b
    daa
    ld bc, $1306
    jr z, @+$03

    cp $0c
    ld h, $01
    inc c
    rst RST_38
    rst RST_38
    add hl, hl
    nop
    rst RST_38
    rlca
    ld a, [hl+]
    nop
    rlca
    rst RST_38
    dec hl
    nop
    rlca
    rlca
    inc l
    nop
    rrca

jr_002_4db4:
    inc bc
    dec l
    nop
    rla
    inc b
    cpl
    nop
    rrca
    dec bc
    ld l, $00
    rla
    inc c
    jr nc, jr_002_4dc3

jr_002_4dc3:
    inc c
    ld b, $31
    ld bc, $0614
    inc sp
    ld bc, $0e14
    inc [hl]
    ld bc, $0e0c
    ld [hl-], a
    ld bc, $0001
    nop
    ld a, [de]
    nop
    ld bc, $0000
    add hl, de
    ld bc, $0001
    nop
    dec de
    ld [bc], a
    ld bc, $0000
    inc e
    ld [bc], a
    ld bc, $0000
    dec e
    ld [bc], a
    ld bc, $0000
    ld e, $02
    rlca
    nop
    nop
    dec [hl]
    nop
    nop
    ld [$0036], sp
    ld [$3700], sp
    nop
    ld [$3808], sp
    nop
    rlca
    rst RST_38
    ld de, $0701
    rlca
    ld [de], a
    ld bc, $020f
    inc de
    ld bc, $0005
    ld [$003d], sp
    nop
    nop
    inc a
    nop
    inc bc
    nop
    ld de, $0301
    ld [$0112], sp
    dec bc
    inc bc
    inc de
    ld bc, $000a
    nop
    nop
    nop
    nop
    ld [$0001], sp
    nop
    db $10
    ld [bc], a
    nop
    nop
    jr @+$05

    nop
    ld [$0400], sp
    nop
    ld [$0508], sp
    nop
    ld [$0610], sp
    nop
    stop
    ld [$0800], sp
    jr jr_002_4e4e

    nop
    db $10
    jr jr_002_4e7c

    nop
    inc bc
    nop

jr_002_4e4e:
    db $fc
    add hl, bc
    nop
    nop
    inc b
    ld a, [bc]
    nop
    nop
    inc c
    dec bc
    ld bc, $0004
    nop
    inc c
    ld [bc], a
    nop
    ld [$020d], sp
    ld [$0e00], sp
    ld [bc], a
    ld [$0f08], sp
    ld [bc], a
    ld b, $00
    ld bc, $0010
    nop
    add hl, bc
    ld de, $0000
    dec c
    ld [de], a
    ld bc, $0008
    ld c, $02
    nop

jr_002_4e7c:
    ld [$0214], sp
    ld [$0f08], sp
    ld [bc], a
    ld c, $fc
    ld b, $1b
    inc b
    db $fc
    ld c, $1c
    inc b
    dec b
    ld [$0321], sp
    dec b
    nop
    jr nz, @+$05

    rlca
    ld [$0122], sp
    add hl, bc
    dec b
    dec e
    nop
    rrca
    ld de, $0125
    inc b
    inc c
    ld e, $00
    inc de
    ld b, $26
    ld [bc], a
    dec c
    ld [bc], a
    rra
    inc bc
    rlca
    db $10
    inc hl
    ld bc, $090f
    inc h
    ld bc, $0e14
    daa
    ld [bc], a
    ld d, $16
    jr z, @+$04

    ld bc, $0000
    add hl, hl
    nop
    inc b
    nop
    nop
    ld a, [hl+]
    ld bc, $0800
    dec hl
    ld bc, $0008
    inc l
    ld bc, $0808
    dec l
    ld bc, $0003
    ld [$0130], sp
    ld [$2e00], sp
    ld bc, $0808
    cpl
    ld bc, $0006
    nop
    dec d
    nop
    ld [$1700], sp
    nop
    nop
    ld [$0016], sp
    ld [$1808], sp
    nop
    stop
    add hl, de
    nop
    db $10
    ld [$001a], sp
    ld [de], a
    rst RST_38
    nop
    inc e
    ld bc, $10ff
    dec e
    ld bc, $20ff
    ld e, $01
    rst RST_38
    ld [$011d], sp
    rst RST_38
    jr z, jr_002_4f2b

    ld bc, $0007
    jr nz, jr_002_4f11

jr_002_4f11:
    rst RST_38
    jr jr_002_4f31

    ld bc, $2007
    inc l
    nop
    rlca
    jr z, jr_002_4f49

    nop
    rrca
    nop
    inc [hl]
    nop
    rrca
    ld [$0035], sp
    rlca
    ld [$0021], sp
    rlca
    db $10

jr_002_4f2b:
    ld [hl+], a
    nop
    rlca
    jr jr_002_4f53

    nop

jr_002_4f31:
    rrca
    db $10
    dec [hl]
    nop
    rrca
    jr @+$37

    nop
    rrca
    jr z, @+$36

    jr nz, @+$11

    jr nz, jr_002_4f75

    nop
    ld [de], a
    rst RST_38
    nop
    inc e
    ld bc, $10ff
    dec e

jr_002_4f49:
    ld bc, $20ff
    ld e, $01
    rst RST_38
    ld [$011d], sp
    rst RST_38

jr_002_4f53:
    jr z, jr_002_4f74

    ld bc, $0007
    jr nz, jr_002_4f5a

jr_002_4f5a:
    rst RST_38
    jr jr_002_4f7a

    ld bc, $2007
    ld l, $00
    rlca
    jr z, @+$31

    nop
    rrca
    nop
    inc [hl]
    nop
    rrca
    ld [$0035], sp
    rlca
    ld [$0021], sp
    rlca
    db $10

jr_002_4f74:
    ld [hl+], a

jr_002_4f75:
    nop
    rlca
    jr jr_002_4f9c

    nop

jr_002_4f7a:
    rrca
    db $10
    dec [hl]
    nop
    rrca
    jr @+$37

    nop
    rrca
    jr z, @+$36

    jr nz, @+$11

    jr nz, jr_002_4fbe

    nop
    ld [de], a
    rst RST_38
    nop
    inc e
    ld bc, $10ff
    dec e
    ld bc, $20ff
    ld e, $01
    rst RST_38
    ld [$011d], sp
    rst RST_38

jr_002_4f9c:
    jr z, jr_002_4fbd

    ld bc, $0007
    jr nz, jr_002_4fa3

jr_002_4fa3:
    rst RST_38
    jr jr_002_4fc3

    ld bc, $2007
    jr nc, jr_002_4fab

jr_002_4fab:
    rlca
    jr z, @+$33

    nop
    rrca
    nop
    inc [hl]
    nop
    rrca
    ld [$0035], sp
    rlca
    ld [$0021], sp
    rlca
    db $10

jr_002_4fbd:
    ld [hl+], a

jr_002_4fbe:
    nop
    rlca
    jr jr_002_4fe5

    nop

jr_002_4fc3:
    rrca
    db $10
    dec [hl]
    nop
    rrca
    jr @+$37

    nop
    rrca
    jr z, @+$36

    jr nz, @+$11

    jr nz, jr_002_5007

    nop
    ld [de], a
    rst RST_38
    nop
    inc e
    ld bc, $10ff
    dec e
    ld bc, $20ff
    ld e, $01
    rst RST_38
    ld [$011d], sp
    rst RST_38

jr_002_4fe5:
    jr z, jr_002_5006

    ld bc, $0007
    jr nz, jr_002_4fec

jr_002_4fec:
    rst RST_38
    jr jr_002_500c

    ld bc, $2007
    ld [hl-], a
    nop
    rlca
    jr z, jr_002_502a

    nop
    rrca
    nop
    inc [hl]
    nop
    rrca
    ld [$0035], sp
    rlca
    ld [$0021], sp
    rlca
    db $10

jr_002_5006:
    ld [hl+], a

jr_002_5007:
    nop
    rlca
    jr jr_002_502e

    nop

jr_002_500c:
    rrca
    db $10
    dec [hl]
    nop
    rrca
    jr @+$37

    nop
    rrca
    jr z, @+$36

    jr nz, @+$11

    jr nz, jr_002_5050

    nop
    ld [de], a
    rst RST_38
    nop
    inc e
    ld bc, $10ff
    dec e
    ld bc, $20ff
    ld e, $01
    rst RST_38

jr_002_502a:
    ld [$011d], sp
    rst RST_38

jr_002_502e:
    jr z, jr_002_504f

    ld bc, $0007
    jr nz, jr_002_5035

jr_002_5035:
    rst RST_38
    jr jr_002_5055

    ld bc, $2007
    inc h
    nop
    rlca
    jr z, jr_002_5065

    nop
    rrca
    nop
    inc [hl]
    nop
    rrca
    ld [$0035], sp
    rlca
    ld [$0021], sp
    rlca
    db $10

jr_002_504f:
    ld [hl+], a

jr_002_5050:
    nop
    rlca
    jr jr_002_5077

    nop

jr_002_5055:
    rrca
    db $10
    dec [hl]
    nop
    rrca
    jr @+$37

    nop
    rrca
    jr z, @+$36

    jr nz, @+$11

    jr nz, jr_002_5099

    nop

jr_002_5065:
    ld [de], a
    rst RST_38
    nop
    inc e
    ld bc, $10ff
    dec e
    ld bc, $20ff
    ld e, $01
    rst RST_38
    ld [$011d], sp
    rst RST_38

jr_002_5077:
    jr z, jr_002_5098

    ld bc, $0007
    jr nz, jr_002_507e

jr_002_507e:
    rst RST_38
    jr jr_002_509e

    ld bc, $2007
    ld h, $00
    rlca
    jr z, jr_002_50b0

    nop
    rrca
    nop
    inc [hl]
    nop
    rrca
    ld [$0035], sp
    rlca
    ld [$0021], sp
    rlca
    db $10

jr_002_5098:
    ld [hl+], a

jr_002_5099:
    nop
    rlca
    jr jr_002_50c0

    nop

jr_002_509e:
    rrca
    db $10
    dec [hl]
    nop
    rrca
    jr @+$37

    nop
    rrca
    jr z, @+$36

    jr nz, @+$11

    jr nz, jr_002_50e2

    nop
    ld [de], a
    rst RST_38

jr_002_50b0:
    nop
    inc e
    ld bc, $10ff
    dec e
    ld bc, $20ff
    ld e, $01
    rst RST_38
    ld [$011d], sp
    rst RST_38

jr_002_50c0:
    jr z, jr_002_50e1

    ld bc, $0007
    jr nz, jr_002_50c7

jr_002_50c7:
    rst RST_38
    jr jr_002_50e7

    ld bc, $2007
    jr z, jr_002_50cf

jr_002_50cf:
    rlca
    jr z, jr_002_50fb

    nop
    rrca
    nop
    inc [hl]
    nop
    rrca
    ld [$0035], sp
    rlca
    ld [$0021], sp
    rlca
    db $10

jr_002_50e1:
    ld [hl+], a

jr_002_50e2:
    nop
    rlca
    jr jr_002_5109

    nop

jr_002_50e7:
    rrca
    db $10
    dec [hl]
    nop
    rrca
    jr @+$37

    nop
    rrca
    jr z, @+$36

    jr nz, @+$11

    jr nz, jr_002_512b

    nop
    ld [de], a
    rst RST_38
    nop
    inc e

jr_002_50fb:
    ld bc, $10ff
    dec e
    ld bc, $20ff
    ld e, $01
    rst RST_38
    ld [$011d], sp
    rst RST_38

jr_002_5109:
    jr z, jr_002_512a

    ld bc, $0007
    jr nz, jr_002_5110

jr_002_5110:
    rst RST_38
    jr jr_002_5130

    ld bc, $2007
    ld a, [hl+]
    nop
    rlca
    jr z, jr_002_5146

    nop
    rrca
    nop
    inc [hl]
    nop
    rrca
    ld [$0035], sp
    rlca
    ld [$0021], sp
    rlca
    db $10

jr_002_512a:
    ld [hl+], a

jr_002_512b:
    nop
    rlca
    jr jr_002_5152

    nop

jr_002_5130:
    rrca
    db $10
    dec [hl]
    nop
    rrca
    jr jr_002_516c

    nop
    rrca
    jr z, jr_002_516f

    jr nz, jr_002_514c

    jr nz, @+$37

    nop
    inc b
    nop
    nop
    nop
    nop
    nop

jr_002_5146:
    ld [$0001], sp
    ld [$0200], sp

jr_002_514c:
    nop
    ld [$0308], sp
    nop
    dec c

jr_002_5152:
    nop
    nop
    inc b
    ld bc, $0700
    inc b
    ld hl, $0200
    dec c
    inc bc
    ld [$0500], sp
    ld bc, $0808
    ld b, $01
    stop
    rlca
    ld bc, $0018

jr_002_516c:
    add hl, bc
    ld [bc], a
    db $10

jr_002_516f:
    ld [$0108], sp
    ld [de], a
    ld bc, $030e
    jr nz, jr_002_5178

jr_002_5178:
    ld a, [bc]
    ld [bc], a
    jr jr_002_5183

    dec bc
    nop
    jr nz, @+$09

    inc c
    nop
    ld [de], a

jr_002_5183:
    add hl, bc
    rrca
    inc bc
    ld b, $00
    nop
    db $10
    inc b
    nop
    ld [$0411], sp
    nop
    db $10
    ld [de], a
    inc b
    ld [$1300], sp
    inc b
    ld [$1408], sp
    inc b
    ld [$1510], sp
    inc b
    ld b, $03
    ld [$0000], sp
    inc bc
    db $10
    ld bc, $0b00
    ld [$0010], sp
    dec bc
    db $10
    ld de, $1300
    dec bc
    jr nz, jr_002_51b4

jr_002_51b4:
    dec de
    dec bc
    ld hl, $0600
    nop
    nop
    ld d, $00
    nop
    ld c, $17
    nop
    ld [$1800], sp
    jr nz, jr_002_51ce

    ld c, $19
    jr nz, jr_002_51de

    nop
    ld a, [de]
    nop
    inc d

jr_002_51ce:
    ld c, $1b
    nop
    ld a, [bc]
    nop
    nop
    ld [$0000], sp
    ld [$0009], sp
    ld [$0a00], sp
    nop

jr_002_51de:
    ld [$0b08], sp
    nop
    stop
    inc c
    nop
    jr jr_002_51e8

jr_002_51e8:
    ld c, $00
    db $10
    ld [$000d], sp
    jr jr_002_51f8

    rrca
    nop
    jr nz, jr_002_51f4

jr_002_51f4:
    stop
    jr nz, @+$0a

jr_002_51f8:
    ld de, $0200
    nop
    nop
    ld [de], a
    ld bc, $0800
    inc de
    ld bc, $0006
    nop
    inc d
    ld [bc], a
    ld [$1808], sp
    ld [bc], a
    nop
    ld [$0215], sp
    ld [$1700], sp
    ld [bc], a
    ld [$1910], sp
    ld [bc], a
    nop
    db $10
    ld d, $02
    ld [bc], a
    nop
    nop
    ld a, [de]
    inc bc
    nop
    ld [$031b], sp
    ld [bc], a
    nop
    ld [$031d], sp
    nop
    nop
    inc e
    inc bc
    rlca
    ld [bc], a
    ld [$031f], sp
    nop
    nop
    ld e, $03
    ld bc, $2108
    inc b
    ld bc, $2210
    inc b
    ld [$2000], sp
    inc bc
    add hl, bc
    ld [$0423], sp
    add hl, bc
    db $10
    inc h
    inc b
    ld [bc], a
    nop
    nop
    ld b, $00
    ld [$0700], sp
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    ld [$0400], sp
    nop
    stop
    dec b
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld [$0100], sp
    nop
    stop
    ld [bc], a
    nop
    ld [$0000], sp
    ld [hl-], a
    nop
    nop
    ld [$0033], sp
    ld [$3400], sp
    nop
    ld [$3508], sp
    nop
    nop
    nop
    ld [hl], $01
    nop
    ld [$0137], sp
    ld [$3800], sp
    ld bc, $0808
    add hl, sp
    ld bc, $fe0c
    ld bc, $0026
    cp $09
    daa
    inc b
    ld b, $01
    jr z, jr_002_529c

jr_002_529c:
    ld b, $09
    add hl, hl
    nop
    ld c, $00
    ld a, [hl+]
    nop
    ld c, $08
    dec hl
    nop
    ei
    ld bc, $012c
    inc bc
    ld bc, $012e
    inc bc
    add hl, bc
    cpl
    ld bc, $09fb
    dec l
    ld bc, $010b
    jr nc, jr_002_52bd

    dec bc

jr_002_52bd:
    add hl, bc
    ld sp, $0c01
    nop
    nop
    inc e
    ld bc, $0800
    dec e
    ld bc, $1000
    ld e, $01
    nop
    jr @+$21

    ld bc, $0008
    jr nz, @+$03

    ld [$2108], sp
    ld bc, $1008
    ld [hl+], a
    ld bc, $1808
    inc hl
    ld bc, $0010
    inc h
    ld bc, $0810
    dec h
    ld bc, $1010
    ld h, $01
    db $10
    jr jr_002_5317

    ld bc, $0403
    nop
    jr nc, jr_002_52f6

jr_002_52f6:
    nop
    ld bc, $022e
    nop
    add hl, bc
    cpl
    ld [bc], a
    ld b, $00
    nop
    ld b, $00
    ld [$0800], sp
    nop
    nop
    ld [$0007], sp
    ld [$0908], sp
    nop
    stop
    ld a, [bc]
    nop
    db $10
    ld [$000b], sp

jr_002_5317:
    inc bc
    nop
    nop
    inc bc
    nop
    ld [$0400], sp
    nop
    stop
    dec b
    nop
    inc bc
    ld [$0100], sp
    nop
    stop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rlca
    stop
    inc bc
    ld b, $12
    ld bc, $0e03
    inc de
    ld bc, $fe03
    inc d
    ld [bc], a
    nop
    rrca
    ld de, $0300
    ld b, $15
    ld [bc], a
    dec bc
    cp $16
    ld [bc], a
    dec bc
    ld b, $17
    ld [bc], a
    dec bc
    ld c, $18
    ld [bc], a
    dec bc
    ld b, $19
    inc bc
    dec bc
    ld c, $1a
    inc bc
    inc de
    rst RST_38
    dec de
    inc bc
    inc de
    rlca
    inc e
    inc bc
    inc de
    rrca
    dec e
    inc bc
    inc de
    rla
    ld e, $03
    inc b
    nop
    nop
    inc c
    inc b
    jr jr_002_5375

jr_002_5375:
    rrca
    inc b
    ld [$0d00], sp
    inc b
    stop
    ld c, $04
    dec b
    nop
    nop
    jr nz, jr_002_5384

jr_002_5384:
    nop
    ld [$0021], sp
    ld [$2200], sp
    nop
    stop
    inc hl
    nop
    jr jr_002_5392

jr_002_5392:
    rra
    nop
    dec b
    nop
    nop
    ld a, [hl+]
    ld [bc], a
    nop
    ld [$022b], sp
    nop
    db $10
    inc l
    ld [bc], a
    ld [$2d03], sp
    ld [bc], a
    ld [$2e0b], sp
    ld [bc], a
    ld b, $00
    nop
    inc h
    nop
    nop
    ld [$0025], sp
    nop
    db $10
    ld h, $00
    ld [$2700], sp
    nop
    ld [$2808], sp
    nop
    ld [$2910], sp
    nop
    inc bc
    cp $03
    inc sp
    nop
    ld b, $fc
    inc [hl]
    nop
    ld b, $04
    dec [hl]
    inc bc
    inc b
    nop
    nop
    cpl
    ld bc, $0800
    jr nc, @+$03

    ld [$3100], sp
    ld bc, $0808
    ld [hl-], a
    ld bc, $0006
    nop
    stop
    nop
    ld [$0011], sp
    nop
    db $10
    ld [de], a
    nop
    ld [$1300], sp
    nop
    ld [$1408], sp
    nop
    ld [$1510], sp
    nop
    dec b
    nop
    nop
    ld d, $00
    nop
    ld [$0017], sp
    ld [bc], a
    db $10
    jr jr_002_5406

jr_002_5406:
    ld [$1900], sp
    nop
    ld [$1a08], sp
    nop
    ld bc, $0000
    dec de
    nop
    ld b, $00
    nop
    jr z, jr_002_5418

jr_002_5418:
    nop
    ld [$0029], sp
    ld [$2a00], sp
    nop
    ld [$2b08], sp
    nop
    stop
    inc l
    nop
    db $10
    ld [$002d], sp
    inc b
    nop
    nop
    inc e
    nop
    nop
    ld [$001d], sp
    ld [$1e00], sp
    nop
    ld [$1f08], sp
    nop
    inc bc
    nop
    nop
    inc c
    nop
    nop
    ld [$000d], sp
    ld [$0e00], sp
    nop
    ld bc, $0000
    rrca
    ld bc, $fe0c
    nop
    ld bc, $fe00
    ld [$0202], sp
    cp $10
    inc bc
    ld [bc], a
    cp $18
    inc b
    ld [bc], a
    cp $20
    dec b
    ld [bc], a
    cp $28
    ld b, $00
    ld b, $00
    rlca
    nop
    ld b, $08
    ld [$0602], sp
    db $10
    add hl, bc
    ld [bc], a
    ld b, $18
    add hl, bc
    ld [bc], a
    ld b, $20
    ld a, [bc]
    ld [bc], a
    ld b, $28
    dec bc
    nop
    ld bc, $0000
    nop
    ld bc, $000d
    dec b
    inc c
    ld [bc], a
    nop
    dec c
    dec c
    ld [bc], a
    nop
    dec d
    ld c, $02
    ld [$1c05], sp
    ld [bc], a
    ld [$1d0d], sp
    ld [bc], a
    ld [$1e15], sp
    ld [bc], a
    db $10
    inc b
    inc l
    ld [bc], a
    db $10
    inc c
    dec l
    ld [bc], a
    db $10
    inc d
    ld l, $02
    jr jr_002_54b0

    inc a
    ld bc, $0c18

jr_002_54b0:
    dec a
    ld [bc], a
    jr @+$16

    ld a, $02
    jr jr_002_54d4

    ccf
    ld bc, $000f
    inc b
    dec b
    ld [bc], a
    nop
    inc c
    ld b, $02
    nop
    inc d
    rlca
    ld bc, $0408
    dec d
    ld [bc], a
    ld [$160c], sp
    ld [bc], a
    ld [$1714], sp
    ld [bc], a
    db $10

jr_002_54d4:
    inc b
    dec h
    ld bc, $0c10
    ld h, $02
    db $10
    inc d
    daa
    ld [bc], a
    ld b, $1c
    ld [$1002], sp
    inc e
    jr z, @+$03

    jr jr_002_54ed

    dec [hl]
    ld bc, $0c18

jr_002_54ed:
    ld [hl], $01
    jr @+$16

    scf
    ld [bc], a
    jr jr_002_5511

    jr c, jr_002_54f8

    dec c

jr_002_54f8:
    nop
    rlca
    add hl, bc
    ld [bc], a
    nop
    rrca
    ld a, [bc]
    ld [bc], a
    nop
    rla
    dec bc
    ld [bc], a
    ld [$2907], sp
    ld [bc], a
    ld [$2a0f], sp
    ld [bc], a
    ld [$2b17], sp
    ld [bc], a
    db $10

jr_002_5511:
    rlca
    add hl, sp
    ld [bc], a
    db $10
    rrca
    ld a, [hl-]
    ld [bc], a
    db $10
    rla
    dec sp
    ld [bc], a
    jr jr_002_5522

    jr @+$03

    jr jr_002_552e

jr_002_5522:
    add hl, de
    ld [bc], a
    jr @+$16

    ld a, [de]
    ld [bc], a
    jr jr_002_5546

    dec de
    ld bc, $000e

jr_002_552e:
    dec b
    ld [bc], a
    ld bc, $0d00
    inc bc
    ld bc, $1500
    inc b
    ld bc, $0308
    jr nc, @+$03

    ld [$310b], sp
    ld [bc], a
    ld [$3213], sp
    ld [bc], a
    db $10

jr_002_5546:
    inc b
    ld [de], a
    ld [bc], a
    db $10
    inc c
    inc de
    ld [bc], a
    db $10
    inc d
    inc d
    ld [bc], a
    jr jr_002_5557

    ld [hl+], a
    ld [bc], a
    jr @+$0e

jr_002_5557:
    inc hl
    ld [bc], a
    jr jr_002_556f

    inc h
    ld [bc], a
    jr @+$1e

    inc [hl]
    ld [bc], a
    ld [$331b], sp
    ld [bc], a
    ld c, $05
    ld bc, $0340
    nop
    ld [$0341], sp
    nop

jr_002_556f:
    db $10
    ld b, d
    inc bc
    nop
    jr @+$45

    inc bc
    ld [$4403], sp
    inc bc
    ld [$450b], sp
    inc bc
    ld [$4613], sp
    inc bc
    db $10
    ld [$030f], sp
    db $10
    db $10
    rra
    inc bc
    db $10
    jr jr_002_55bc

    inc bc
    jr jr_002_5598

    ld b, a
    inc bc
    jr jr_002_55a4

    ld c, b
    inc bc
    jr @+$1a

jr_002_5598:
    ld c, c
    inc bc
    jr jr_002_55bc

    ld c, d
    inc bc
    rrca
    nop
    rlca
    ld c, e
    dec b
    nop

jr_002_55a4:
    rrca
    ld c, h
    dec b
    nop
    rla
    ld c, l
    dec b
    ld [$4e04], sp
    dec b
    ld [$4f0c], sp
    inc b
    ld [$5014], sp
    inc b
    ld [$511c], sp
    dec b
    db $10

jr_002_55bc:
    inc b
    ld d, d
    dec b
    db $10
    inc c
    ld d, e
    inc b
    db $10
    inc d
    ld d, h
    inc b
    db $10
    inc e
    ld d, l
    dec b
    jr jr_002_55d1

    ld d, [hl]
    dec b
    jr jr_002_55dd

jr_002_55d1:
    ld d, a
    dec b
    jr jr_002_55e9

    ld e, b
    inc b
    jr jr_002_55f5

    ld e, c
    dec b
    inc c
    nop

jr_002_55dd:
    nop
    rlca
    nop
    nop
    db $10
    ld a, [bc]
    jr nz, @+$0a

    nop
    ld [$0800], sp

jr_002_55e9:
    ld [$0000], sp
    ld [$0b10], sp
    jr nz, @+$12

    nop
    add hl, bc
    nop
    db $10

jr_002_55f5:
    ld [$0005], sp
    db $10
    db $10
    ld b, $00
    jr jr_002_5606

    ld [bc], a
    nop
    jr nz, jr_002_560a

    ld bc, $2800
    inc b

jr_002_5606:
    inc bc
    nop
    jr z, @+$0e

jr_002_560a:
    inc b
    nop
    ld c, $00
    ld [$0000], sp
    nop
    db $10
    ld a, [bc]
    nop
    ld [$0108], sp
    nop
    stop
    rlca
    nop
    ld [$0b10], sp
    nop
    db $10
    ld [$0002], sp
    jr jr_002_5627

jr_002_5627:
    ld [$1800], sp
    ld [$0001], sp
    db $10
    db $10
    inc c
    nop
    jr nz, jr_002_5633

jr_002_5633:
    add hl, bc
    nop
    jr jr_002_5647

    dec c
    nop
    jr nz, jr_002_5643

    ld c, $00
    jr z, jr_002_5643

    inc bc
    nop
    jr z, @+$0e

jr_002_5643:
    inc b
    nop
    inc b
    nop

jr_002_5647:
    nop
    rrca
    ld bc, $0800
    db $10
    ld bc, $0008
    ld de, $0801
    ld [$0112], sp
    inc c
    nop
    nop
    inc de
    nop
    nop
    ld [$0014], sp
    nop
    db $10
    dec d
    nop
    ld [$1600], sp
    nop
    ld [$1708], sp
    nop
    ld [$1810], sp
    nop
    db $10
    ld [$0019], sp
    db $10
    db $10
    ld a, [de]
    nop
    jr jr_002_567e

    dec de
    nop
    jr jr_002_568a

    inc e

jr_002_567e:
    nop
    jr nz, @+$07

    dec e
    nop
    jr nz, @+$0f

    ld e, $00
    ld [$0500], sp

jr_002_568a:
    rra
    nop
    ld [$2000], sp
    nop
    ld [$2108], sp
    nop
    stop
    ld [hl+], a
    nop
    db $10
    ld [$0023], sp
    jr jr_002_569e

jr_002_569e:
    inc h
    nop
    jr jr_002_56aa

    dec h
    nop
    jr nz, @+$09

    ld h, $20
    inc b
    nop

jr_002_56aa:
    nop
    daa
    ld bc, $0800
    jr z, @+$03

    ld [$2900], sp
    ld bc, $0808
    ld a, [hl+]
    ld bc, $0005
    nop
    dec hl
    ld [bc], a
    nop
    ld [$022c], sp
    nop
    db $10
    dec l
    ld [bc], a
    ld [$2e00], sp
    ld [bc], a
    ld [$2f08], sp
    ld [bc], a
    ld bc, $0000
    dec h
    dec b
    inc bc
    ld d, $05
    nop
    nop
    add hl, de
    dec c
    ld bc, $1e00
    dec b
    ld [bc], a
    nop
    ld a, [bc]
    dec c
    nop
    inc bc
    nop
    dec c
    ld [$0004], sp
    dec d
    nop
    dec b
    nop
    dec d
    ld [$0006], sp
    dec e
    nop
    rlca
    nop
    dec e
    ld [$0008], sp
    dec h
    inc b
    add hl, bc
    nop
    ld d, $34
    nop
    nop
    ld e, $34
    ld [bc], a
    nop
    add hl, de
    inc a
    ld bc, $1400
    inc bc
    nop
    ld a, [bc]
    nop
    inc bc
    ld [$000b], sp
    dec bc
    nop
    inc c
    nop
    dec bc
    ld [$000d], sp
    inc de
    nop
    ld c, $00
    inc de
    ld [$000f], sp
    dec de
    nop
    stop
    dec de
    ld [$0011], sp
    inc hl
    nop
    ld [de], a
    nop
    inc hl
    ld [$0013], sp
    ld d, $1c
    nop
    nop
    ld e, $1c
    ld [bc], a
    nop
    add hl, de
    inc h
    ld bc, $0d00
    cpl
    inc bc
    nop
    dec c
    scf
    inc b
    nop
    dec d
    cpl
    dec b
    nop
    dec d
    scf
    ld b, $00
    dec e
    cpl
    rlca
    nop
    dec e
    scf
    ld [$2500], sp
    inc sp
    add hl, bc
    nop
    dec de
    nop
    nop
    inc d
    nop
    nop
    ld [$0015], sp
    ld [$1600], sp
    nop
    ld [$1708], sp
    nop
    stop
    jr jr_002_576f

jr_002_576f:
    db $10
    ld [$0019], sp
    jr jr_002_5775

jr_002_5775:
    ld a, [de]
    nop
    jr jr_002_5781

    dec de
    nop
    jr nz, jr_002_577d

jr_002_577d:
    inc e
    nop
    jr nz, jr_002_5789

jr_002_5781:
    dec e
    nop
    dec c
    rla
    inc bc
    nop
    dec c
    rra

jr_002_5789:
    inc b
    nop
    dec d
    rla
    dec b
    nop
    dec d
    rra
    ld b, $00
    dec e
    rla
    rlca
    nop
    dec e
    rra
    ld [$2500], sp
    dec de
    add hl, bc
    nop
    inc bc
    jr nc, jr_002_57ac

    nop
    inc bc
    jr c, @+$0d

    nop
    dec bc
    jr nc, jr_002_57b6

    nop
    dec bc

jr_002_57ac:
    jr c, jr_002_57bb

    nop
    inc de
    jr nc, jr_002_57c0

    nop
    inc de
    jr c, @+$11

jr_002_57b6:
    nop
    dec de
    jr nc, jr_002_57ca

    nop

jr_002_57bb:
    dec de
    jr c, @+$13

    nop
    inc hl

jr_002_57c0:
    jr nc, jr_002_57d4

    nop
    inc hl
    jr c, @+$15

    nop
    ld e, $00
    nop

jr_002_57ca:
    jr z, jr_002_57cc

jr_002_57cc:
    nop
    ld [$0029], sp
    ld [$2a00], sp
    nop

jr_002_57d4:
    ld [$2b08], sp
    nop
    stop
    inc l
    nop
    db $10
    ld [$002d], sp
    jr jr_002_57e2

jr_002_57e2:
    ld l, $00
    jr jr_002_57ee

    cpl
    nop
    jr nz, jr_002_57ea

jr_002_57ea:
    jr nc, jr_002_57ec

jr_002_57ec:
    jr nz, @+$0a

jr_002_57ee:
    ld sp, $0300
    jr jr_002_57fd

    nop
    inc bc
    jr nz, @+$0d

    nop
    dec bc
    jr jr_002_5807

    nop
    dec bc

jr_002_57fd:
    jr nz, jr_002_580c

    nop
    inc de
    jr jr_002_5811

    nop
    inc de
    jr nz, @+$11

jr_002_5807:
    nop
    dec de
    jr jr_002_581b

    nop

jr_002_580c:
    dec de
    jr nz, jr_002_5820

    nop
    inc hl

jr_002_5811:
    jr @+$14

    nop
    inc hl
    jr nz, @+$15

    nop
    nop
    jr nc, jr_002_582f

jr_002_581b:
    nop
    nop
    jr c, jr_002_5834

    nop

jr_002_5820:
    ld [$1630], sp
    nop
    ld [$1738], sp
    nop
    db $10
    jr nc, jr_002_5843

    nop
    db $10
    jr c, @+$1b

jr_002_582f:
    nop
    jr @+$32

    ld a, [de]
    nop

jr_002_5834:
    jr jr_002_586e

    dec de
    nop
    jr nz, jr_002_586a

    inc e
    nop
    jr nz, @+$3a

    dec e
    nop
    ld e, $00
    nop

jr_002_5843:
    jr z, jr_002_5845

jr_002_5845:
    nop
    ld [$0029], sp
    ld [$2a00], sp
    nop
    ld [$2b08], sp
    nop
    stop
    inc l
    nop
    db $10
    ld [$002d], sp
    jr jr_002_585b

jr_002_585b:
    ld l, $00
    jr jr_002_5867

    cpl
    nop
    jr nz, jr_002_5863

jr_002_5863:
    jr nc, jr_002_5865

jr_002_5865:
    jr nz, @+$0a

jr_002_5867:
    ld sp, $0000

jr_002_586a:
    jr jr_002_5880

    nop
    nop

jr_002_586e:
    jr nz, jr_002_5885

    nop
    ld [$1618], sp
    nop
    ld [$1720], sp
    nop
    db $10
    jr jr_002_5894

    nop
    db $10
    jr nz, jr_002_5899

jr_002_5880:
    nop
    jr @+$1a

    ld a, [de]
    nop

jr_002_5885:
    jr @+$22

    dec de
    nop
    jr nz, @+$1a

    inc e
    nop
    jr nz, jr_002_58af

    dec e
    nop
    nop
    jr nc, @+$20

jr_002_5894:
    nop
    nop
    jr c, jr_002_58b7

    nop

jr_002_5899:
    ld [$2030], sp
    nop
    ld [$2138], sp
    nop
    db $10
    jr nc, jr_002_58c6

    nop
    db $10
    jr c, @+$25

    nop
    jr @+$32

    inc h
    nop
    jr jr_002_58e7

jr_002_58af:
    dec h
    nop
    jr nz, jr_002_58e3

    ld h, $00
    jr nz, @+$3a

jr_002_58b7:
    daa
    nop
    ld e, $00
    nop
    ld [hl-], a
    nop
    nop
    ld [$0033], sp
    ld [$3400], sp
    nop

jr_002_58c6:
    ld [$3508], sp
    nop
    stop
    ld [hl], $00
    db $10
    ld [$0037], sp
    jr jr_002_58d4

jr_002_58d4:
    jr c, jr_002_58d6

jr_002_58d6:
    jr jr_002_58e0

    add hl, sp
    nop
    jr nz, jr_002_58dc

jr_002_58dc:
    ld a, [hl-]
    nop
    jr nz, @+$0a

jr_002_58e0:
    dec sp
    nop
    nop

jr_002_58e3:
    jr @+$20

    nop
    nop

jr_002_58e7:
    jr nz, jr_002_5908

    nop
    ld [$2018], sp
    nop
    ld [$2120], sp
    nop
    db $10
    jr @+$24

    nop
    db $10
    jr nz, @+$25

    nop
    jr @+$1a

    inc h
    nop
    jr @+$22

    dec h
    nop
    jr nz, @+$1a

    ld h, $00
    jr nz, jr_002_5928

jr_002_5908:
    daa
    nop
    nop
    jr nc, jr_002_5935

    nop
    nop
    jr c, @+$2b

    nop
    ld [$2a30], sp
    nop
    ld [$2b38], sp
    nop
    db $10
    jr nc, @+$2e

    nop
    db $10
    jr c, jr_002_594e

    nop
    jr @+$32

    ld l, $00
    jr jr_002_5960

jr_002_5928:
    cpl
    nop
    jr nz, jr_002_595c

    jr nc, jr_002_592e

jr_002_592e:
    jr nz, @+$3a

    ld sp, $1e00
    nop
    nop

jr_002_5935:
    inc d
    nop
    nop
    ld [$0015], sp
    ld [$1600], sp
    nop
    ld [$1708], sp
    nop
    stop
    jr jr_002_5947

jr_002_5947:
    db $10
    ld [$0019], sp
    jr jr_002_594d

jr_002_594d:
    ld a, [de]

jr_002_594e:
    nop
    jr jr_002_5959

    dec de
    nop
    jr nz, jr_002_5955

jr_002_5955:
    inc e
    nop
    jr nz, @+$0a

jr_002_5959:
    dec e
    nop
    nop

jr_002_595c:
    jr jr_002_5986

    nop
    nop

jr_002_5960:
    jr nz, jr_002_598b

    nop
    ld [$2a18], sp
    nop
    ld [$2b20], sp
    nop
    db $10
    jr jr_002_599a

    nop
    db $10
    jr nz, jr_002_599f

    nop
    jr @+$1a

    ld l, $00
    jr @+$22

    cpl
    nop
    jr nz, @+$1a

    jr nc, jr_002_597f

jr_002_597f:
    jr nz, jr_002_59a1

    ld sp, $0000
    jr nc, jr_002_59b8

jr_002_5986:
    nop
    nop
    jr c, @+$35

    nop

jr_002_598b:
    ld [$3430], sp
    nop
    ld [$3538], sp
    nop
    db $10
    jr nc, jr_002_59cc

    nop
    db $10
    jr c, @+$39

jr_002_599a:
    nop
    jr @+$32

    jr c, jr_002_599f

jr_002_599f:
    jr jr_002_59d9

jr_002_59a1:
    add hl, sp
    nop
    jr nz, jr_002_59d5

    ld a, [hl-]
    nop
    jr nz, @+$3a

    dec sp
    nop
    ld e, $00
    nop
    ld e, $00
    nop
    ld [$001f], sp
    ld [$2000], sp
    nop

jr_002_59b8:
    ld [$2108], sp
    nop
    stop
    ld [hl+], a
    nop
    db $10
    ld [$0023], sp
    jr jr_002_59c6

jr_002_59c6:
    inc h
    nop
    jr jr_002_59d2

    dec h
    nop

jr_002_59cc:
    jr nz, jr_002_59ce

jr_002_59ce:
    ld h, $00
    jr nz, @+$0a

jr_002_59d2:
    daa
    nop
    nop

jr_002_59d5:
    jr @+$34

    nop
    nop

jr_002_59d9:
    jr nz, @+$35

    nop
    ld [$3418], sp
    nop
    ld [$3520], sp
    nop
    db $10
    jr @+$38

    nop
    db $10
    jr nz, jr_002_5a22

    nop
    jr @+$1a

    jr c, jr_002_59f0

jr_002_59f0:
    jr @+$22

    add hl, sp
    nop
    jr nz, @+$1a

    ld a, [hl-]
    nop
    jr nz, jr_002_5a1a

    dec sp
    nop
    nop
    jr nc, jr_002_5a13

    nop
    nop
    jr c, jr_002_5a18

    nop
    ld [$1630], sp
    nop
    ld [$1738], sp
    nop
    db $10
    jr nc, jr_002_5a27

    nop
    db $10
    jr c, @+$1b

jr_002_5a13:
    nop
    jr jr_002_5a46

    ld a, [de]
    nop

jr_002_5a18:
    jr @+$3a

jr_002_5a1a:
    dec de
    nop
    jr nz, @+$32

    inc e
    nop
    jr nz, jr_002_5a5a

jr_002_5a22:
    dec e
    nop
    inc b
    nop
    nop

jr_002_5a27:
    ld [hl-], a
    nop
    nop
    ld [$0033], sp
    ld [$3400], sp
    nop
    ld [$3508], sp
    nop
    ld bc, $0000
    ld a, a
    ld b, $01
    nop
    ld [$0020], sp
    inc bc
    nop
    ld [$0021], sp
    nop
    db $10

jr_002_5a46:
    ld [hl+], a
    nop
    nop
    jr jr_002_5a6e

    nop
    inc bc
    ld [$2410], sp
    nop
    ld [$2518], sp
    nop
    ld [$2620], sp
    nop
    inc bc

jr_002_5a5a:
    ld [$2710], sp
    nop
    ld [$2818], sp
    nop
    ld [$2920], sp
    nop
    ld [bc], a
    ld [$2a18], sp
    nop
    ld [$2b20], sp

jr_002_5a6e:
    nop
    ld [bc], a
    ld [$2c18], sp
    nop
    ld [$2d20], sp
    nop
    ld bc, $2010
    ld l, $00
    ld bc, $2010
    cpl
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld [$0001], sp
    ld [$0200], sp
    nop
    ld [$0308], sp
    nop
    dec c
    nop
    db $10
    ld bc, $080d
    ld de, $0601
    nop
    nop
    inc b
    nop
    nop
    ld [$0005], sp
    ld [$0600], sp
    nop
    ld [$0708], sp
    nop
    dec c
    nop
    ld [de], a
    ld bc, $080d
    inc de
    ld bc, $0006
    nop
    ld [$0000], sp
    ld [$0009], sp
    ld [$0a00], sp
    nop
    ld [$0b08], sp
    nop
    dec c
    nop
    inc d
    ld bc, $080d
    dec d
    ld bc, $0006
    nop
    inc c
    nop
    nop
    ld [$000d], sp
    ld [$0e00], sp
    nop
    ld [$0f08], sp
    nop
    dec c
    nop
    ld d, $01
    dec c
    ld [$0117], sp
    ld b, $01
    nop
    jr jr_002_5aeb

jr_002_5aeb:
    ld bc, $1908
    nop
    add hl, bc
    nop
    ld a, [de]
    nop
    add hl, bc
    ld [$001b], sp
    inc c
    nop
    jr z, jr_002_5afc

    inc c

jr_002_5afc:
    ld [$0129], sp
    ld b, $01
    nop
    inc e
    nop
    ld bc, $1d08
    nop
    add hl, bc
    nop
    ld e, $00
    add hl, bc
    ld [$001f], sp
    inc c
    nop
    ld a, [hl+]
    ld bc, $080c
    dec hl
    ld bc, $0106
    nop
    jr nz, jr_002_5b1d

jr_002_5b1d:
    ld bc, $2108
    nop
    add hl, bc
    nop
    ld [hl+], a
    nop
    add hl, bc
    ld [$0023], sp
    inc c
    nop
    inc l
    ld bc, $080c
    dec l
    ld bc, $0106
    nop
    inc h
    nop
    ld bc, $2508
    nop
    add hl, bc
    nop
    ld h, $00
    add hl, bc
    ld [$0027], sp
    inc c
    nop
    ld l, $01
    inc c
    ld [$012f], sp
    inc b
    inc bc
    nop
    jr nc, @+$05

    rst RST_38
    ld [$0331], sp
    rlca
    ld [$0332], sp
    ld [$3310], sp
    inc bc
    dec b
    db $fd
    nop
    inc [hl]
    inc bc
    rst RST_38
    ld [$0335], sp
    dec b
    nop
    ld [hl], $03
    rlca
    ld [$0337], sp
    ld [$3810], sp
    inc bc
    inc bc
    nop
    ld b, $3a
    inc b
    ld [bc], a
    cp $39
    inc b
    ld [$3b06], sp
    inc b
    inc bc
    nop
    nop
    inc a
    inc b
    ld [$3d00], sp
    inc b
    ld b, $08
    ld a, $04
    inc bc
    nop
    ld [bc], a
    ld [hl], b
    rlca
    ld [$7102], sp
    rlca
    rlca
    ld a, [bc]
    ld [hl], d
    rlca
    ld bc, $0808
    ld a, c
    ld b, $03
    nop
    ld [$0673], sp
    ld [$7400], sp
    ld b, $08
    ld [$0675], sp
    inc b
    nop
    nop
    ld a, e
    ld b, $00
    ld [$0676], sp
    ld [$7700], sp
    ld b, $08
    ld [$0678], sp
    ld bc, $0808
    ld a, d
    ld b, $01
    nop
    nop
    ld a, a
    ld b, $01
    nop
    nop
    ld a, h
    rlca
Case2ObjectAnimations:
    dw Case2BathroomAnimation00
    dw Case2BathroomAnimation01
    dw Case2BathroomAnimation02
    dw Case2BathroomAnimation03
    dw Case2BathroomAnimation04
    add sp, $5c
    db $ed
    ld e, h
    ldh a, [c]
    ld e, h
    rst RST_30
    ld e, h
    db $fc
    ld e, h
    ld bc, $065d
    ld e, l
    dec bc
    ld e, l
    db $10
    ld e, l
    dec d
    ld e, l
    ld a, [de]
    ld e, l
    rra
    ld e, l
    inc h
    ld e, l
    add hl, hl
    ld e, l
    ld l, $5d
    inc sp
    ld e, l
    jr c, @+$5f

    dec a
    ld e, l
    ld b, d
    ld e, l
    ld b, a
    ld e, l
    ld c, h
    ld e, l
    ld d, c
    ld e, l
    ld d, [hl]
    ld e, l
    ld e, e
    ld e, l
    ld h, b
    ld e, l
    ld h, l
    ld e, l
    ld l, d
    ld e, l
    ld l, a
    ld e, l
    ld [hl], h
    ld e, l
    ld a, c
    ld e, l
    ld a, [hl]
    ld e, l
    add e
    ld e, l
    adc b
    ld e, l
    adc l
    ld e, l
    sub d
    ld e, l
    sub a
    ld e, l
    sbc h
    ld e, l
    and c
    ld e, l
    and [hl]
    ld e, l
    xor e
    ld e, l
    or b
    ld e, l
    or l
    ld e, l
    cp d
    ld e, l
    cp a
    ld e, l
    call nz, $c95d
    ld e, l
    adc $5d
    db $d3
    ld e, l
    ret c

    ld e, l
    db $dd
    ld e, l
    ldh [c], a
    ld e, l
    rst RST_20
    ld e, l
    db $ec
    ld e, l
    rst RST_28
    ld e, l
    db $f4
    ld e, l
    ld sp, hl
    ld e, l
    cp $5d
    inc bc
    ld e, [hl]
    ld [$0d5e], sp
    ld e, [hl]
    ld [de], a
    ld e, [hl]
    rla
    ld e, [hl]
    inc e
    ld e, [hl]
    ld hl, $265e
    ld e, [hl]
    dec hl
    ld e, [hl]
    jr nc, jr_002_5cb7

    dec [hl]
    ld e, [hl]
    ld a, [hl-]
    ld e, [hl]
    ccf
    ld e, [hl]
    ld b, h
    ld e, [hl]
    ld c, c
    ld e, [hl]
    ld c, [hl]
    ld e, [hl]
    ld d, e
    ld e, [hl]
    ld e, b
    ld e, [hl]
    ld e, l
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld h, a
    ld e, [hl]
    ld l, h
    ld e, [hl]
    ld [hl], c
    ld e, [hl]
    halt
    ld e, [hl]
    ld a, e
    ld e, [hl]
    add b
    ld e, [hl]
    add l
    ld e, [hl]
    adc d
    ld e, [hl]
    adc a
    ld e, [hl]
    sub h
    ld e, [hl]
    sbc c
    ld e, [hl]
    sbc [hl]
    ld e, [hl]
    and e
    ld e, [hl]
    xor b
    ld e, [hl]
    xor l
    ld e, [hl]
    or d
    ld e, [hl]
    or a
    ld e, [hl]
    cp h
    ld e, [hl]
    pop bc
    ld e, [hl]
    add $5e
    bit 3, [hl]
    ret nc

    ld e, [hl]
    db $db
    ld e, [hl]
    and $5e
    db $eb
    ld e, [hl]
    nop
    ld e, a
    rlca
    ld e, a
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    ld c, $5f
    add hl, de
    ld e, a
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h

jr_002_5cb7:
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    rst RST_08
    ld e, h
    inc h
    ld e, a
    add hl, hl
    ld e, a
    ld a, [hl-]
    ld e, a
Case2BathroomAnimation00:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.animations", $0, $5
Case2BathroomAnimation01:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.animations", $5, $5
Case2BathroomAnimation02:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.animations", $a, $5
Case2BathroomAnimation03:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.animations", $f, $5
Case2BathroomAnimation04:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.animations", $14, $5
    cp $05
    rst RST_38
    rst RST_38
    nop
    cp $06
    rst RST_38
    rst RST_38
    nop
    cp $07
    rst RST_38
    rst RST_38
    nop
    cp $08
    rst RST_38
    rst RST_38
    nop
    cp $09
    rst RST_38
    rst RST_38
    nop
    cp $0a
    rst RST_38
    rst RST_38
    nop
    cp $0b
    rst RST_38
    rst RST_38
    nop
    cp $0c
    rst RST_38
    rst RST_38
    nop
    cp $0d
    rst RST_38
    rst RST_38
    nop
    cp $0e
    rst RST_38
    rst RST_38
    nop
    cp $0f
    rst RST_38
    rst RST_38
    nop
    cp $10
    rst RST_38
    rst RST_38
    nop
    cp $11
    rst RST_38
    rst RST_38
    nop
    cp $12
    rst RST_38
    rst RST_38
    nop
    cp $13
    rst RST_38
    rst RST_38
    nop
    cp $14
    rst RST_38
    rst RST_38
    nop
    cp $15
    rst RST_38
    rst RST_38
    nop
    cp $16
    rst RST_38
    rst RST_38
    nop
    cp $17
    rst RST_38
    rst RST_38
    nop
    cp $18
    rst RST_38
    rst RST_38
    nop
    cp $19
    rst RST_38
    rst RST_38
    nop
    cp $1a
    rst RST_38
    rst RST_38
    nop
    cp $1b
    rst RST_38
    rst RST_38
    nop
    cp $1c
    rst RST_38
    rst RST_38
    nop
    cp $1d
    rst RST_38
    rst RST_38
    nop
    cp $10
    rst RST_38
    rst RST_38
    nop
    cp $10
    rst RST_38
    rst RST_38
    nop
    cp $10
    rst RST_38
    rst RST_38
    nop
    cp $1e
    rst RST_38
    rst RST_38
    nop
    cp $1f
    rst RST_38
    rst RST_38
    nop
    cp $1f
    rst RST_38
    rst RST_38
    nop
    cp $20
    rst RST_38
    rst RST_38
    nop
    cp $21
    rst RST_38
    rst RST_38
    nop
    cp $22
    rst RST_38
    rst RST_38
    nop
    cp $23
    rst RST_38
    rst RST_38
    nop
    cp $24
    rst RST_38
    rst RST_38
    nop
    cp $25
    rst RST_38
    rst RST_38
    nop
    cp $26
    rst RST_38
    rst RST_38
    nop
    cp $27
    rst RST_38
    rst RST_38
    nop
    cp $28
    rst RST_38
    rst RST_38
    nop
    cp $28
    rst RST_38
    rst RST_38
    nop
    cp $29
    rst RST_38
    rst RST_38
    nop
    cp $2a
    rst RST_38
    rst RST_38
    nop
    cp $2b
    rst RST_38
    rst RST_38
    nop
    cp $2b
    rst RST_38
    rst RST_38
    nop
    cp $2c
    rst RST_38
    rst RST_38
    nop
    cp $2d
    rst RST_38
    rst RST_38
    nop
    cp $2e
    rst RST_38
    rst RST_38
    nop
    cp $2f
    rst RST_38
    rst RST_38
    nop
    cp $30
    rst RST_38
    rst RST_38
    nop
    cp $31
    rst RST_38
    rst RST_38
    nop
    cp $32
    rst RST_38
    rst RST_38
    nop
    cp $33
    nop
    cp $34
    rst RST_38
    rst RST_38
    nop
    cp $35
    rst RST_38
    rst RST_38
    nop
    cp $36
    rst RST_38
    rst RST_38
    nop
    cp $37
    rst RST_38
    rst RST_38
    nop
    cp $38
    rst RST_38
    rst RST_38
    nop
    cp $39
    rst RST_38
    rst RST_38
    nop
    cp $3a
    rst RST_38
    rst RST_38
    nop
    cp $3a
    rst RST_38
    rst RST_38
    nop
    cp $3b
    rst RST_38
    rst RST_38
    nop
    cp $3c
    rst RST_38
    rst RST_38
    nop
    cp $3d
    rst RST_38
    rst RST_38
    nop
    cp $3e
    rst RST_38
    rst RST_38
    nop
    cp $3f
    rst RST_38
    rst RST_38
    nop
    cp $40
    rst RST_38
    rst RST_38
    nop
    cp $41
    rst RST_38
    rst RST_38
    nop
    cp $42
    rst RST_38
    rst RST_38
    nop
    cp $43
    rst RST_38
    rst RST_38
    nop
    cp $44
    rst RST_38
    rst RST_38
    nop
    cp $45
    rst RST_38
    rst RST_38
    nop
    cp $46
    rst RST_38
    rst RST_38
    nop
    cp $46
    rst RST_38
    rst RST_38
    nop
    cp $47
    rst RST_38
    rst RST_38
    nop
    cp $48
    rst RST_38
    rst RST_38
    nop
    cp $49
    rst RST_38
    rst RST_38
    nop
    cp $4a
    rst RST_38
    rst RST_38
    nop
    cp $4b
    rst RST_38
    rst RST_38
    nop
    cp $4c
    rst RST_38
    rst RST_38
    nop
    cp $4d
    rst RST_38
    rst RST_38
    nop
    cp $4e
    rst RST_38
    rst RST_38
    nop
    cp $4f
    rst RST_38
    rst RST_38
    nop
    cp $50
    rst RST_38
    rst RST_38
    nop
    cp $51
    rst RST_38
    rst RST_38
    nop
    cp $52
    rst RST_38
    rst RST_38
    nop
    cp $4a
    rst RST_38
    rst RST_38
    nop
    cp $53
    rst RST_38
    rst RST_38
    nop
    cp $54
    rst RST_38
    rst RST_38
    nop
    cp $55
    rst RST_38
    rst RST_38
    nop
    cp $55
    rst RST_38
    rst RST_38
    nop
    cp $56
    rst RST_38
    rst RST_38
    nop
    cp $57
    rst RST_38
    rst RST_38
    nop
    cp $58
    rst RST_38
    rst RST_38
    nop

jr_002_5ebc:
    cp $58
    rst RST_38
    rst RST_38
    nop
    cp $59
    rst RST_38
    rst RST_38
    nop
    cp $5a
    rst RST_38
    rst RST_38
    nop
    cp $4c
    rst RST_38
    rst RST_38
    nop
    inc c
    ld e, e
    inc c
    ld e, h
    inc c
    ld e, l
    inc c
    ld e, [hl]
    inc c
    ld e, a
    nop
    ld a, [bc]
    ld h, b
    ld a, [bc]
    ld h, c
    ld a, [bc]
    ld h, d
    ld a, [bc]
    ld h, e
    rst RST_38
    rst RST_38
    nop
    cp $64
    rst RST_38
    rst RST_38
    nop
    ld b, $65
    ld b, $65
    ld b, $66
    ld b, $67
    ld b, $68
    ld b, $69
    ld b, $6a
    ld b, $6b
    ld b, $6c
    ld b, $6d
    nop
    ld [$0878], sp
    ld a, c
    rst RST_38
    rst RST_38
    nop
    dec bc
    ld a, d
    dec bc
    ld a, e
    rst RST_38
    rst RST_38
    nop
    ld a, [bc]
    ld [hl], b
    ld a, [bc]
    ld [hl], c
    ld a, [bc]
    ld [hl], d
    ld a, [bc]
    ld [hl], e
    rst RST_38
    rst RST_38
    nop
    ld a, [bc]
    ld [hl], h
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    halt
    ld a, [bc]
    ld [hl], a
    rst RST_38
    rst RST_38
    nop
    cp $80
    rst RST_38
    rst RST_38
    nop
    inc b
    add h
    dec b
    add c
    ld b, $82
    inc h
    add e
    inc bc
    add c
    ld [bc], a
    add h
    jr nz, jr_002_5ebc

    rst RST_38
    rst RST_38
    nop
    cp $86
    rst RST_38
    rst RST_38
    nop
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $400a
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    jp Jump_000_04b3


    ld l, a
    ld h, $00
    add hl, hl
    ld a, [$c599]
    cp $00
    jr nz, jr_002_5f5f

    ld bc, $401b
    jr jr_002_5f62

jr_002_5f5f:
    ld bc, Case2SpriteDefinitions

jr_002_5f62:
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_000_04b3


    call Call_002_60c7
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [$c599]
    cp $00
    jr nz, jr_002_5f7c

    ld bc, $401b
    jr jr_002_5f7f

jr_002_5f7c:
    ld bc, Case2SpriteDefinitions

jr_002_5f7f:
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff94]
    cp $28
    ret z

    ldh a, [$ff94]
    add a
    add a
    add $00
    ld c, a
    ld a, $00
    adc $c0
    ld b, a
    ldh a, [$ff93]
    add $10
    ld e, a
    ldh a, [$ff92]
    add $08
    ld d, a
    ld a, [hl+]

jr_002_5f9f:
    ldh [$ff91], a
    ld a, [hl+]
    add e
    ld [bc], a
    cp $a8
    jr nc, jr_002_5fd6

    ld a, [$c1a2]
    cp $00
    jr z, jr_002_5fb4

    ld a, [bc]
    cp $54
    jr nc, jr_002_5fd6

jr_002_5fb4:
    inc bc
    ld a, [hl+]
    add d
    ld [bc], a
    cp $b0
    jr nc, jr_002_5fdb

    ld a, [hl]
    cp $ff
    jr z, jr_002_5fdb

    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ldh a, [$ff94]
    inc a
    ldh [$ff94], a
    cp $28
    ret z

jr_002_5fd0:
    ldh a, [$ff91]
    dec a
    jr nz, jr_002_5f9f

    ret


jr_002_5fd6:
    inc hl
    inc hl
    inc hl
    jr jr_002_5fd0

jr_002_5fdb:
    inc hl
    inc hl
    dec bc
    jr jr_002_5fd0

    ld a, $90
    ldh [$ff92], a
    ld a, $80
    ldh [$ff93], a
    ld a, [$c5d4]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [$c599]
    cp $00
    jr nz, jr_002_5ffb

    ld bc, $4b65
    jr jr_002_5ffe

jr_002_5ffb:
    ld bc, $5f29

jr_002_5ffe:
    add hl, bc
    ld a, [hl]
    ld c, a
    ld a, [$c5d5]
    cp c
    jr c, jr_002_6033

    inc hl
    inc hl
    ld a, [hl]
    cp $ff
    jr nz, jr_002_6026

    xor a
    ld [$c5d4], a
    ld [$c5d5], a
    ld a, [$c599]
    cp $00
    jr nz, jr_002_6021

    ld hl, $4b65
    jr jr_002_6037

jr_002_6021:
    ld hl, $5f29
    jr jr_002_6037

jr_002_6026:
    ld a, [$c5d4]
    inc a
    ld [$c5d4], a
    xor a
    ld [$c5d5], a
    jr jr_002_6037

jr_002_6033:
    inc a
    ld [$c5d5], a

jr_002_6037:
    inc hl
    ld a, [hl]
    call Call_000_1a11
    ret


    ld l, a
    ld h, $00
    add hl, hl
    ld a, [$c599]
    cp $00
    jr nz, jr_002_604d

    ld bc, $48d9
    jr jr_002_6050

jr_002_604d:
    ld bc, Case2ObjectAnimations

jr_002_6050:
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_002_6054:
    ld a, [hl+]
    ld [$c5d6], a
    cp $ff
    ret z

    cp $00
    ret z

jr_002_605e:
    ld a, [hl]
    push hl
    call Call_000_1a11
    call Call_000_19c5
    call Call_000_03fe
    pop hl
    ld a, [$c5d6]
    dec a
    ld [$c5d6], a
    jr nz, jr_002_605e

    inc hl
    jr jr_002_6054

    ld l, a
    ld h, $00
    add hl, hl
    ld bc, Case2ObjectAnimations
    add hl, bc
    ld a, [hl+]
    ld [$c5c3], a
    ld c, a
    ld a, [hl]
    ld [$c5c4], a
    ld b, a
    ld a, [$c5d7]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl]
    ld c, a
    ld a, [$c5d8]
    cp c
    jr c, jr_002_60bd

    inc hl
    inc hl
    ld a, [hl]
    cp $ff
    jr nz, jr_002_60b0

    xor a
    ld [$c5d7], a
    ld [$c5d8], a
    ld a, [$c5c3]
    ld l, a
    ld a, [$c5c4]
    ld h, a
    jr jr_002_60c1

jr_002_60b0:
    ld a, [$c5d7]
    inc a
    ld [$c5d7], a
    xor a
    ld [$c5d8], a
    jr jr_002_60c1

jr_002_60bd:
    inc a
    ld [$c5d8], a

jr_002_60c1:
    inc hl
    ld a, [hl]
    call Call_000_1a11
    ret


Call_002_60c7:
    push af
    ld a, [$c599]
    cp $00
    jr nz, jr_002_60d4

    ld bc, $48d9
    jr jr_002_60d7

jr_002_60d4:
    ld bc, Case2ObjectAnimations

jr_002_60d7:
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    inc bc
    ld a, [bc]
    ret


    ld a, [$c8a7]
    cp $00
    jr nz, jr_002_60ef

    call Call_000_2788
    ret


jr_002_60ef:
    cp $01
    jr nz, jr_002_60f7

    call Call_000_2788
    ret


jr_002_60f7:
    cp $02
    jr nz, jr_002_60ff

    call Call_000_2788
    ret


jr_002_60ff:
    cp $09
    jr nz, jr_002_6107

    call Call_000_2788
    ret


jr_002_6107:
    cp $14
    jr nz, jr_002_610f

    call Call_000_2788
    ret


jr_002_610f:
    cp $15
    jr nz, jr_002_6117

    call Call_000_2788
    ret


jr_002_6117:
    ret


    ld a, [$c563]
    cp $00
    jr nz, jr_002_613d

    ld c, $00
    ld hl, $617d

jr_002_6124:
    ld a, [hl+]
    push bc
    call Call_000_1ed4
    pop bc
    ld a, c
    add $26
    push bc
    push af
    call Call_000_2788
    pop af
    call Call_000_275d
    pop bc
    inc c
    ld a, $06
    cp c
    jr nz, jr_002_6124

jr_002_613d:
    ld a, [$c564]
    cp $00
    jr nz, jr_002_6162

    ld c, $00
    ld hl, $6177

jr_002_6149:
    ld a, [hl+]
    push bc
    call Call_000_1ed4
    pop bc
    ld a, c
    add $20
    push bc
    push af
    call Call_000_2788
    pop af
    call Call_000_275d
    pop bc
    inc c
    ld a, $06
    cp c
    jr nz, jr_002_6149

jr_002_6162:
    ret


    ld a, [$c8c6]
    ld bc, $0000
    ld hl, $6177

jr_002_616c:
    cp [hl]
    jr z, jr_002_6173

    inc hl
    inc bc
    jr jr_002_616c

jr_002_6173:
    ld a, c
    add $20
    ret


    ld c, d
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

Call_002_6183:
    ld a, $11
    call Call_000_080e
    ld a, $3c
    call Call_000_0753
    call Call_000_0416
    call Call_002_61d3
    ld a, $12
    call Call_000_080e
    call Call_002_622f
    call Call_002_6250
    ld a, [$c884]
    cp $00
    jr z, jr_002_61c8

    ld [$c538], a
    ld [$c8a7], a
    ld a, $14
    call Call_000_080e
    ld a, $78
    call Call_000_0753
    ld a, $15
    call Call_000_080e
    ld a, $02
    call Call_000_0753
    call Call_000_302f
    ld a, $18
    call Call_000_1c6d
    ret


jr_002_61c8:
    ld a, $16
    call Call_000_080e
    ld a, $75
    call Call_000_1c6d
    ret


Call_002_61d3:
    ld a, [$c53a]
    cp $00
    jr z, jr_002_61e9

    cp $46
    jr nc, jr_002_6206

    call Call_000_0b99
    ldh a, [$ffa2]
    and $07
    cp $06
    jr c, jr_002_6206

jr_002_61e9:
    call Call_000_0b99
    ldh a, [$ffa2]
    and $07
    ld c, a
    ld b, $00
    ld hl, $63de
    add hl, bc
    ld a, [hl]
    ld [$c884], a
    ld a, c
    ld [$c855], a
    ld [$c856], a
    ld [$c857], a
    ret


jr_002_6206:
    xor a
    ld [$c884], a

jr_002_620a:
    ld bc, $0000

jr_002_620d:
    call Call_000_0b99
    ldh a, [$ffa2]
    and $07
    ld hl, $c855
    add hl, bc
    ld [hl], a
    inc c
    ld a, $03
    cp c
    jr nz, jr_002_620d

    ld a, [$c856]
    ld hl, $c855
    cp [hl]
    jr nz, jr_002_622e

    ld a, [$c857]
    cp [hl]
    jr z, jr_002_620a

jr_002_622e:
    ret


Call_002_622f:
    xor a
    ld [$c864], a

jr_002_6233:
    call Call_002_62cf
    call Call_002_62e3
    call Call_002_62f7
    call SubmitMapQueue
    ld a, $05
    call Call_000_0753
    ld a, [$c864]
    inc a
    ld [$c864], a
    cp $1d
    jr nz, jr_002_6233

    ret


Call_002_6250:
    ld a, $13
    call Call_000_080e
    ld a, [$c855]
    ld [$c858], a
    xor a
    ld [$c864], a

jr_002_625f:
    ld e, $00
    call Call_002_630b
    call Call_002_62e3
    call Call_002_62f7
    call SubmitMapQueue
    ld a, $05
    call Call_000_0753
    ld a, [$c864]
    inc a
    ld [$c864], a
    cp $0a
    jr nz, jr_002_625f

    ld a, $13
    call Call_000_080e
    ld a, [$c856]
    ld [$c859], a
    xor a
    ld [$c864], a

jr_002_628c:
    ld e, $00
    call Call_002_630b
    ld e, $01
    call Call_002_630b
    call Call_002_62f7
    call SubmitMapQueue
    ld a, $05
    call Call_000_0753
    ld a, [$c864]
    inc a
    ld [$c864], a
    cp $0a
    jr nz, jr_002_628c

    ld a, $13
    call Call_000_080e
    ld a, [$c857]
    ld [$c85a], a
    ld e, $00
    call Call_002_630b
    ld e, $01
    call Call_002_630b
    ld e, $02
    call Call_002_630b
    call SubmitMapQueue
    ld a, $05
    call Call_000_0753
    ret


Call_002_62cf:
jr_002_62cf:
    call Call_000_0b99
    ldh a, [$ffa2]
    and $07
    ld hl, $c858
    cp [hl]
    jr z, jr_002_62cf

    ld [hl], a
    ld e, $00
    call Call_002_630b
    ret


Call_002_62e3:
jr_002_62e3:
    call Call_000_0b99
    ldh a, [$ffa2]
    and $07
    ld hl, $c859
    cp [hl]
    jr z, jr_002_62e3

    ld [hl], a
    ld e, $01
    call Call_002_630b
    ret


Call_002_62f7:
jr_002_62f7:
    call Call_000_0b99
    ldh a, [$ffa2]
    and $07
    ld hl, $c85a
    cp [hl]
    jr z, jr_002_62f7

    ld [hl], a
    ld e, $02
    call Call_002_630b
    ret


Call_002_630b:
    ld d, $00
    ld hl, $c858
    add hl, de
    ld a, [hl]
    sla e
    ld hl, $6328
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    add a
    ld e, a
    ld hl, $632e
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call QueueMapRect
    ret


    ld h, c
    sbc b
    ld h, l
    sbc b
    ld l, c
    sbc b
    ld a, $63
    ld d, d
    ld h, e
    ld h, [hl]
    ld h, e
    ld a, d
    ld h, e
    adc [hl]
    ld h, e
    and d
    ld h, e
    or [hl]
    ld h, e
    jp z, Jump_000_0363

    inc bc
    jr nc, jr_002_6373

    ld [hl-], a
    dec c
    dec c
    dec c
    inc sp
    inc [hl]
    dec [hl]
    dec c
    dec c
    dec c
    ld [hl], $37
    jr c, @+$0f

    dec c
    dec c
    inc bc
    inc bc
    add hl, sp
    ld a, [hl-]
    dec sp
    dec c
    dec c
    dec c
    inc a
    dec a
    ld a, $0d
    dec c
    dec c
    ccf
    ld b, b
    ld b, c
    dec c
    dec c
    dec c
    inc bc
    inc bc
    ld b, d
    ld b, e
    ld b, h
    dec c
    dec c
    dec c
    ld b, l
    ld b, [hl]
    ld b, a
    dec c
    dec c

jr_002_6373:
    dec c
    ld c, b
    ld c, c
    ld c, d
    dec c
    dec c
    dec c
    inc bc
    inc bc
    ld c, e
    ld c, h
    ld c, l
    ld c, $0e
    ld c, $4e
    ld c, a
    ld d, b
    ld c, $0e
    ld c, $51
    ld d, d
    ld d, e
    ld c, $0e
    ld c, $03
    inc bc
    ld d, h
    ld d, l
    ld d, [hl]
    ld c, $0e
    ld c, $57
    ld e, b
    ld e, c
    ld c, $0e
    ld c, $5a
    ld e, e
    ld e, h
    ld c, $0e
    ld c, $03
    inc bc
    ld e, l
    ld e, [hl]
    ld e, a
    dec c
    dec c
    dec c
    ld h, b
    ld h, c
    ld h, d
    dec c
    dec c
    dec c
    ld h, e
    ld h, h
    ld h, l
    dec c
    dec c
    dec c
    inc bc
    inc bc
    ld h, [hl]
    ld h, a
    ld l, b
    ld c, $0e
    ld c, $69
    ld l, d
    ld l, e
    ld c, $0e
    ld c, $6c
    ld l, l
    ld l, [hl]
    ld c, $0e
    ld c, $03
    inc bc
    ld l, a
    ld [hl], b
    ld [hl], c
    ld c, $0e
    ld c, $72
    ld [hl], e
    ld [hl], h
    ld c, $0e
    ld c, $75
    halt
    ld [hl], a
    ld c, $0e
    ld c, $1e
    ld d, $14
    ld [de], a
    db $10
    ld c, $0c
    ld a, [bc]
    call Call_000_0722
    call Call_000_0420
    call Call_000_09f5
    ld a, $06
    call Call_000_1b39
    ld a, $02
    call Call_000_1b14
    call Call_000_072a
    call Call_000_044b
    call Call_000_0416
    call Call_000_38cf
    xor a
    ld [$c5c3], a

jr_002_6409:
    ld c, $00
    ld a, [$c5c3]
    inc a

jr_002_640f:
    cp $0a
    jr c, jr_002_6418

    sub $0a
    inc c
    jr jr_002_640f

jr_002_6418:
    ld [$c5c5], a
    ld a, c
    ld [$c5c6], a
    ld hl, $64a3
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c5c6]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $64a7
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call QueueMapRect
    ld hl, $64a5
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c5c5]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $64a7
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call QueueMapRect
    call SubmitMapQueue
    ld a, $10
    call Call_000_0753

jr_002_6455:
    call Call_000_0456
    ld a, [$c188]
    bit 6, a
    jr z, jr_002_646c

    ld a, [$c5c3]
    cp $00
    jr z, jr_002_6455

    dec a
    ld [$c5c3], a
    jr jr_002_6409

jr_002_646c:
    bit 7, a
    jr z, jr_002_647d

    ld a, [$c5c3]
    cp $11
    jr z, jr_002_6455

    inc a
    ld [$c5c3], a
    jr jr_002_6409

jr_002_647d:
    bit 0, a
    jr z, jr_002_649b

    ld a, [$c5c3]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $64e3
    add hl, de
    ld a, [hl+]
    ld [$c599], a
    ld a, [hl]

jr_002_6491:
    call Call_000_080e
    ld a, $10
    call Call_000_0753
    jr jr_002_6455

jr_002_649b:
    bit 1, a
    jr z, jr_002_6455

    xor a
    jr jr_002_6491

    ret


    add hl, bc
    sbc c
    ld a, [bc]
    sbc c
    cp e
    ld h, h
    cp a
    ld h, h
    jp $c764


    ld h, h
    bit 4, h
    rst RST_08
    ld h, h
    db $d3
    ld h, h
    rst RST_10
    ld h, h
    db $db
    ld h, h
    rst RST_18
    ld h, h
    ld bc, $8001
    ld b, $01
    ld bc, $0681
    ld bc, $8201
    ld b, $01
    ld bc, $0683
    ld bc, $8401
    ld b, $01
    ld bc, $0685
    ld bc, $8601
    ld b, $01
    ld bc, $0687
    ld bc, $8801
    ld b, $01
    ld bc, $0689
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    inc b
    nop
    dec bc
    nop
    inc c
    nop
    ld c, $01
    ld bc, $0201
    ld bc, $0103
    inc b
    ld bc, $0105
    ld b, $01
    rlca
    ld bc, $0108
    add hl, bc
    ld bc, $010a
    inc c
    ld a, [$c599]
    cp $00
    ret nz

    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_002_653b

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr nz, jr_002_6532

    ld a, $18
    call Call_000_279e
    jr jr_002_653b

jr_002_6532:
    cp $08
    jr nz, jr_002_653b

    ld a, $19
    call Call_000_279e

jr_002_653b:
    ret


    ld a, [$c599]
    cp $00
    ret nz

    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_002_6570

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr nz, jr_002_6567

    ld a, $18
    call Call_000_2788
    jr jr_002_6570

jr_002_6567:
    cp $08
    jr nz, jr_002_6570

    ld a, $19
    call Call_000_2788

jr_002_6570:
    ret


    ld a, [$c599]
    cp $00
    jr nz, jr_002_6582

    ld a, $18
    call Call_000_279e
    ld a, $19
    call Call_000_279e

jr_002_6582:
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_002_658c:
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld bc, $c52a
    add hl, bc
    ld a, [$c599]
    cp $00
    jr nz, jr_002_65af

    ld a, [hl]
    cp $ff
    jr z, jr_002_65c1

    call Call_002_65cd
    ldh a, [$ff9e]
    inc a
    inc a
    ldh [$ff9e], a
    cp $08
    jr c, jr_002_658c

jr_002_65af:
    ld a, [hl]
    cp $ff
    jr z, jr_002_65c1

    call Call_000_316e
    ldh a, [$ff9e]
    inc a
    inc a
    ldh [$ff9e], a
    cp $08
    jr c, jr_002_658c

jr_002_65c1:
    ld c, $0a
    ld hl, $c528
    ld a, $ff

jr_002_65c8:
    ld [hl+], a
    dec c
    jr nz, jr_002_65c8

    ret


Call_002_65cd:
    rst RST_00
    rst RST_30
    ld h, l
    jp c, $f865

    ld h, l
    rst RST_30
    ld h, l
    add hl, bc
    ld h, [hl]
    rst RST_30
    ld h, l
    ld bc, $c52b
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_35c9
    ld a, $48
    call Call_000_1e97
    ld a, $4a
    call Call_000_1e97
    ld a, $4b
    call Call_000_1e97
    ret


    ld bc, $c52b
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    add $20
    call Call_000_1e26
    ret


    ld bc, $c52b
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_366c
    ret


    ld a, [$c8c6]
    call ReadStateBit
    ld a, [$c523]
    and $01
    jr nz, jr_002_662e

    ld a, $63
    call Call_000_1c6d
    pop bc
    jp Jump_000_1bb7


jr_002_662e:
    call Call_000_388b
    call Call_000_38b5
    ld a, [$c8a7]
    ld [$c8aa], a
    call Call_002_6647
    ld a, [$c523]
    and $01
    ret z

    pop bc
    jp Jump_000_1bb7


Call_002_6647:
    ld c, $00
    ld a, [$c8aa]
    ld b, a
    ld hl, $6883

jr_002_6650:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr z, jr_002_665a

    inc c
    jr jr_002_6650

jr_002_665a:
    ld a, $06
    ld [$c640], a
    ld a, c
    rst RST_00
    ld [hl], c
    ld h, [hl]
    cp e
    ld h, [hl]
    rst RST_20
    ld h, [hl]
    dec h
    ld h, a
    ld e, e
    ld h, a
    sub a
    ld h, a
    db $e3
    ld h, a
    dec l
    ld l, b
    ld a, $07
    call Call_000_1eb6
    ld a, [$c523]
    and $01
    jr nz, jr_002_6688

    ld a, $54
    call Call_000_1eb6
    ld a, [$c523]
    and $01
    ret z

jr_002_6688:
    call Call_000_1ca7
    ld a, [$c53a]
    cp $00
    ret z

    ld a, $93
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_002_66a1

    call Call_000_1ca7
    ret


jr_002_66a1:
    call Call_000_1ca7
    call Call_000_0b99
    ldh a, [$ffa2]
    and $03
    ret nz

    ld a, [$c8aa]
    call Call_000_21ca
    ld a, $e0
    call Call_000_1c63
    call Call_000_1c9e
    ret


    ld a, $92
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_002_66cb

    call Call_000_1ca7
    ret


jr_002_66cb:
    call Call_000_0b99
    ldh a, [$ffa2]
    and $01
    jr nz, jr_002_66d8

    call Call_000_1ca7
    ret


jr_002_66d8:
    ld a, [$c8aa]
    call Call_000_21ca
    ld a, $e5
    call Call_000_1c6d
    call Call_000_1c9e
    ret


    ld a, $02
    call Call_000_374a
    ld a, [$c523]
    and $01
    jr nz, jr_002_66fe

    ld a, $07
    call Call_000_374a
    ld a, [$c523]
    and $01
    ret z

jr_002_66fe:
    ld a, [$c565]
    inc a
    ld [$c565], a
    call Call_000_1ca7
    ld a, [$c565]
    cp $03
    ret c

    call Call_000_0b99
    ldh a, [$ffa2]
    and $01
    ret z

    ld a, [$c8aa]
    call Call_000_21ca
    ld a, $33
    call Call_000_1c63
    call Call_000_1c9e
    ret


    call Call_000_0b99
    ldh a, [$ffa2]
    and $01
    jr z, jr_002_6732

    call Call_000_1ca7
    ret


jr_002_6732:
    ld a, $a8
    call Call_000_1dda
    ld a, [$c8aa]
    call Call_000_21ca
    ld a, $91
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_002_6752

    ld a, $db
    call Call_000_1c6d
    call Call_000_1c9e
    ret


jr_002_6752:
    ld a, $de
    call Call_000_1c6d
    call Call_000_1c9e
    ret


    ld a, $05
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_002_676b

    call Call_000_1ca7
    ret


jr_002_676b:
    ld a, $2a
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_002_677b

    call Call_000_1ca7
    ret


jr_002_677b:
    call Call_000_1ca7
    call Call_000_0b99
    ldh a, [$ffa2]
    and $18
    jr z, jr_002_6788

    ret


jr_002_6788:
    ld a, [$c8aa]
    call Call_000_21ca
    ld a, $eb
    call Call_000_1c63
    call Call_000_1c9e
    ret


    ld a, $06
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_002_67a7

    call Call_000_1ca7
    ret


jr_002_67a7:
    ld a, $2a
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_002_67b7

    call Call_000_1ca7
    ret


jr_002_67b7:
    ld a, $05
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_002_67c7

    call Call_000_1ca7
    ret


jr_002_67c7:
    call Call_000_1ca7
    call Call_000_0b99
    ldh a, [$ffa2]
    and $18
    jr z, jr_002_67d4

    ret


jr_002_67d4:
    ld a, [$c8aa]
    call Call_000_21ca
    ld a, $f1
    call Call_000_1c63
    call Call_000_1c9e
    ret


    ld a, $07
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_002_67f3

    call Call_000_1ca7
    ret


jr_002_67f3:
    ld a, $2a
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_002_6803

    call Call_000_1ca7
    ret


jr_002_6803:
    ld a, $06
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_002_6813

    call Call_000_1ca7
    ret


jr_002_6813:
    call Call_000_1ca7
    call Call_000_0b99
    ldh a, [$ffa2]
    and $18
    ret nz

    ld a, [$c8aa]
    call Call_000_21ca
    ld a, $f4
    call Call_000_1c63
    call Call_000_1c9e
    ret


    ld a, $2a
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_002_683d

    call Call_000_1ca7
    ret


jr_002_683d:
    ld a, $07
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_002_684d

    call Call_000_1ca7
    ret


jr_002_684d:
    ld a, $07
    call Call_000_1eb6
    ld a, [$c523]
    and $01
    jr nz, jr_002_6869

    ld a, $54
    call Call_000_1eb6
    ld a, [$c523]
    and $01
    jr nz, jr_002_6869

    call Call_000_1ca7
    ret


jr_002_6869:
    call Call_000_1ca7
    call Call_000_0b99
    ldh a, [$ffa2]
    and $1c
    ret nz

    ld a, [$c8aa]
    call Call_000_21ca
    ld a, $f6
    call Call_000_1c63
    call Call_000_1c9e
    ret


    ld e, $20
    inc h
    rra
    ld c, d
    ld c, l
    ld c, e
    ld c, h
    rst RST_38
    ld a, [$c599]
    cp $00
    jr nz, jr_002_68a7

    ld a, [$c521]
    cp $33
    ret z

    ld c, a
    ld b, $00
    ld hl, $68c7
    add hl, bc
    ld a, [hl]
    and $0f
    call Call_000_080e
    ret


jr_002_68a7:
    ld a, [$c5c9]
    cp $00
    ret nz

    ld a, [$c521]
    cp $64
    jr c, jr_002_68ba

    ld a, $03
    call Call_000_080e
    ret


jr_002_68ba:
    ld l, a
    ld h, $00
    ld bc, $6917
    add hl, bc
    ld a, [hl]
    ret z

    call Call_000_080e
    ret


    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc l
    inc bc
    inc bc
    inc bc
    inc bc
    ld [de], a
    inc l
    dec l
    inc l
    inc l
    ld [de], a
    ld [de], a
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc bc
    inc l
    inc l
    inc l
    inc l
    inc l
    ld [de], a
    inc bc
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc l
    inc l
    inc l
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc l
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc l
    inc l
    inc l
    inc l
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    inc bc
    inc bc
    ld a, [$c527]
    inc a
    ld [$c527], a
    cp $08
    ret c

    xor a
    ld [$c527], a
    ld a, [$c525]
    inc a
    ld [$c525], a
    ret


    ld a, [$c522]
    cp $8e
    jr z, jr_002_69a3

    cp $13
    jr nz, jr_002_69ad

    ld a, [$c8c6]
    cp $06
    jr nz, jr_002_69ad

jr_002_69a3:
    ld a, $06
    ld [$c640], a
    call Call_000_0bab
    jr jr_002_69b0

jr_002_69ad:
    call Call_000_0bfd

jr_002_69b0:
    call SubmitMapQueue
    ld a, [$c522]
    cp $00
    jr nz, jr_002_69cc

    ld a, $41
    call Call_000_2788
    call Call_000_27b6
    ld a, $42
    call Call_000_2788
    call Call_000_27b6
    jr jr_002_6a44

jr_002_69cc:
    cp $01
    jr nz, jr_002_69e2

    ld a, $41
    call Call_000_279e
    call Call_000_27b6
    ld a, $42
    call Call_000_279e
    call Call_000_27b6
    jr jr_002_6a44

jr_002_69e2:
    cp $12
    jr nz, jr_002_69f7

    ld bc, $98cf
    ld hl, $6c6a
    call Call_000_01d8
    call SubmitMapQueue
    call Call_000_27b6
    jr jr_002_6a44

jr_002_69f7:
    cp $13
    jr nz, jr_002_6a0c

    ld bc, $98cf
    ld hl, $6c67
    call Call_000_01d8
    call SubmitMapQueue
    call Call_000_27b6
    jr jr_002_6a44

jr_002_6a0c:
    cp $43
    jr nz, jr_002_6a1a

    ld a, $1f
    call Call_000_279e
    call Call_000_27b6
    jr jr_002_6a44

jr_002_6a1a:
    cp $44
    jr nz, jr_002_6a28

    ld a, $1f
    call Call_000_2788
    call Call_000_27b6
    jr jr_002_6a44

jr_002_6a28:
    cp $73
    jr nz, jr_002_6a36

    ld a, $16
    call Call_000_2788
    call Call_000_27b6
    jr jr_002_6a44

jr_002_6a36:
    cp $74
    jr nz, jr_002_6a44

    ld a, $16
    call Call_000_279e
    call Call_000_27b6
    jr jr_002_6a44

jr_002_6a44:
    ret


    ld a, [$c8c5]
    cp $03
    jr nz, jr_002_6a8a

    ld a, [$c8c6]
    cp $00
    jr nz, jr_002_6a66

    ld a, [$c53a]
    cp $00
    jr nz, jr_002_6a7e

jr_002_6a5a:
    ld a, $29
    call Call_000_1c6d
    ld a, $80
    call Call_000_1e26
    jr jr_002_6aae

jr_002_6a66:
    cp $08
    jr nz, jr_002_6a73

    ld a, [$c563]
    cp $00
    jr nz, jr_002_6a7e

    jr jr_002_6a5a

jr_002_6a73:
    cp $2d
    jr nz, jr_002_6a8a

    ld a, [$c564]
    cp $00
    jr z, jr_002_6a5a

jr_002_6a7e:
    ld a, $80
    call Call_000_1e26
    ld a, $7d
    call Call_000_1c6d
    jr jr_002_6aae

jr_002_6a8a:
    ldh a, [$ff9e]
    push af
    ldh a, [$ffa0]
    push af
    ld a, [$c523]
    and $ef
    ld [$c523], a
    call Call_002_6aba
    ld a, $80
    call Call_000_1e26
    pop af
    ldh [$ffa0], a
    pop af
    ldh [$ff9e], a
    ld a, [$c523]
    and $10
    jr nz, jr_002_6aae

    ret


jr_002_6aae:
    ld a, [$c523]
    and $ef
    ld [$c523], a
    pop bc
    jp Jump_000_1bb7


Call_002_6aba:
    call Call_000_1ca7
    ld a, [$c8d5]
    rst RST_00
    call $cd6a
    ld l, d
    db $d3
    ld l, d
    ld [hl], c
    ld l, e
    cp b
    ld l, e
    call Call_000_3e6a
    inc de
    call Call_000_1c59
    ret


    ld a, [$c8d6]
    cp $04
    jr nz, jr_002_6ade

    call Call_000_1c9e
    ret


jr_002_6ade:
    add a
    add a
    add a
    ldh [$ff9e], a
    ld e, $00

jr_002_6ae5:
    ld bc, $c53b
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, Jump_000_29d1

    ld d, a
    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    ld a, d
    ld a, e
    inc a
    ld e, a
    cp $07
    jr c, jr_002_6ae5

    ld a, $76
    call Call_000_1c6d
    ld a, [$c523]
    or $10
    ld [$c523], a
    ret


    ld a, [$c8c5]
    cp $03
    jr nz, jr_002_6b30

    ld a, [$c8c6]
    call Call_000_1ed4
    ld a, [$c8c7]
    and $fe
    or $02
    ld [$c8c7], a
    ld a, [$c8c6]
    call Call_000_1f08
    jr jr_002_6b46

jr_002_6b30:
    ld a, [$c8c6]
    call Call_000_37b5
    ld a, [$c8c7]
    and $fe
    or $02
    ld [$c8c7], a
    ld a, [$c8c6]
    call Call_000_36da

jr_002_6b46:
    ld a, [$c8c9]
    ld [$c524], a
    ld a, [$c8ca]
    ld [$c526], a
    ld a, [$c529]
    inc a
    ld [$c528], a
    call Call_000_3444
    call Call_000_3923
    call Call_000_33c2
    ld a, [$c8cb]
    ld [$c537], a
    ld a, $05
    call Call_000_1c6d
    call Call_000_1ca7
    ret


    ld a, [$c8c9]
    ld [$c524], a
    ld a, [$c8ca]
    ld [$c526], a
    ld a, [$c529]
    inc a
    ld [$c528], a
    call Call_000_3444
    call Call_000_3923
    call Call_000_33c2
    ld a, [$c8c6]
    call Call_000_1ed4
    ld a, [$c8c7]
    and $fe
    ld [$c8c7], a
    ld a, [$c5c2]
    call Call_000_275d
    call Call_000_27b6
    ld a, $58
    call Call_000_1c6d
    call Call_000_1ca7
    ld a, [$c8c6]
    cp $2c
    ret nz

    ld a, $87
    call Call_000_1e26
    ret


    ld a, [$c8c9]
    ld [$c524], a
    ld a, [$c8ca]
    ld [$c526], a
    ld a, [$c529]
    inc a
    ld [$c528], a
    call Call_000_3444
    call Call_000_3923
    call Call_000_33c2
    ld a, [$c8c6]
    call Call_000_37b5
    ld a, [$c8c7]
    and $fe
    ld [$c8c7], a
    ld a, [$c5c2]
    call Call_000_275d
    call Call_000_27b6
    ld a, $58
    call Call_000_1c6d
    call Call_000_1ca7
    ret


    ld a, [$c599]
    cp $00
    ret nz

    ld a, [$c5c3]
    and $07
    rst RST_00
    ld c, $6c
    ld d, a
    ld l, h
    ld [hl-], a
    ld l, h
    ld e, b
    ld l, h
    ld h, [hl]
    ld l, h

jr_002_6c0a:
    jp Jump_000_0f57


    ret


    ld a, [$c521]
    cp $06
    jr nz, jr_002_6c27

    ld a, $04
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_002_6c26

    ld a, $04
    ld [$c8b8], a

jr_002_6c26:
    ret


jr_002_6c27:
    call Call_002_6c33
    ld a, [$c523]
    and $01
    ret z

    jr jr_002_6c0a

    ret


Call_002_6c33:
    call Call_000_1ca7
    ld a, [$c8b8]
    cp $16
    ret nz

    ld a, [$c522]
    cp $73
    ret nz

    ld a, $16
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_002_6c53

    ld a, $0a
    ld [$c8b8], a

jr_002_6c53:
    call Call_000_1ca7
    ret


    ret


    ld a, [$c8b8]
    cp $1f
    ret nz

    ld a, [$c522]
    cp $44
    ret z

    jr jr_002_6c0a

    ret


    ld bc, $7301
    ld bc, $7001
    ld a, [$c8b1]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $6c87
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [$c8b2]
    ld l, a
    ld h, $00
    add hl, bc
    ld a, [hl]
    ld [$c8b3], a
    ret


    sub e
    ld l, h
    sbc [hl]
    ld l, h
    xor c
    ld l, h
    or h
    ld l, h
    cp a
    ld l, h
    jp z, Jump_000_006c

    rst RST_38
    inc bc
    rst RST_38
    rst RST_38
    rst RST_38
    ld [bc], a
    ld bc, $ffff
    rst RST_38
    nop
    ld bc, $ff03
    rst RST_38
    ld [bc], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $ff03
    rst RST_38
    ld [bc], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    inc bc
    ld [bc], a
    ld bc, $ffff
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0405
    inc bc
    ld [bc], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $ffff
    rst RST_38
    ld [bc], a
    rst RST_38
    rst RST_38
    inc bc
    rst RST_38
    rst RST_38
    call Call_002_6d28
    ld a, [$c523]
    and $01
    ret nz

    call Call_002_6df9
    ld a, [$c523]
    and $01
    ret nz

    call Call_002_6e74
    ld a, [$c523]
    and $01
    ret nz

    ld a, [$c8b1]
    add a
    ld c, a
    ld b, $00
    ld hl, $6ea5
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, [$c8b2]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    inc hl
    ld a, [hl-]
    cp $ff
    jr nz, jr_002_6d0e

    ret


jr_002_6d0e:
    push hl
    rst RST_00
    ld d, $6d
    inc e
    ld l, l
    ld [hl+], a
    ld l, l
    pop hl
    ld a, [hl]
    call Call_000_1c59
    ret


    pop hl
    ld a, [hl]
    call Call_000_1c63
    ret


    pop hl
    ld a, [hl]
    call Call_000_1c6d
    ret


Call_002_6d28:
    ld a, [$c521]
    cp $1e
    jr z, jr_002_6d4d

    cp $20
    jr z, jr_002_6d76

    cp $24
    jr z, jr_002_6da4

    cp $4a
    jp z, Jump_002_6dc2

    cp $4b
    jp z, Jump_002_6dc2

    cp $4c
    jr z, jr_002_6dc2

    cp $4d
    jr z, jr_002_6dc2

    call Call_000_1ca7
    ret


jr_002_6d4d:
    ld a, $06
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $e4
    call Call_000_1c63
    call Call_000_303f
    ld a, [$c523]
    or $08
    ld [$c523], a
    ld a, $e5
    call Call_000_1c63
    ld a, $e7
    call Call_000_1c63
    call Call_000_2bbb
    call Call_000_1c9e
    ret


jr_002_6d76:
    ld a, $07
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $16
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $e6
    call Call_000_1c6d
    ld a, $15
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $62
    call Call_000_1c6d
    ld a, [$c523]
    or $40
    ld [$c523], a
    call Call_000_1c9e
    ret


jr_002_6da4:
    ld a, $37
    call Call_000_1c63
    ld a, $15
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $62
    call Call_000_1c6d
    ld a, [$c523]
    or $40
    ld [$c523], a
    call Call_000_1c9e
    ret


Jump_002_6dc2:
jr_002_6dc2:
    ld a, $07
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $f0
    call Call_000_1c63
    ld a, $15
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $62
    call Call_000_1c6d
    ld a, [$c523]
    or $40
    ld [$c523], a
    ld a, $07
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_002_6df5

    ld a, $95
    call Call_000_1dda

jr_002_6df5:
    call Call_000_1c9e
    ret


Call_002_6df9:
    call Call_000_1ca7
    ld a, [$c8c5]
    cp $00
    ret nz

    ld a, [$c8c6]
    cp $12
    ret nz

    ld a, [$c8b2]
    cp $01
    jr z, jr_002_6e14

    cp $05
    jr z, jr_002_6e44

    ret


jr_002_6e14:
    ld a, $04
    call Call_000_1dac
    ld a, $6a
    ld [$c537], a
    ld a, [$c523]
    and $01
    jr z, jr_002_6e2e

    ld a, $01
    call Call_000_1c6d
    call Call_000_1c9e
    ret


jr_002_6e2e:
    ld a, $00
    call Call_000_1c6d
    ld a, $03
    call Call_000_1e26
    ld a, $04
    call Call_000_1dda
    call Call_000_27b6
    call Call_000_1c9e
    ret


jr_002_6e44:
    ld a, $03
    call Call_000_1dac
    ld a, $6a
    ld [$c537], a
    ld a, [$c523]
    and $01
    jr z, jr_002_6e5e

    ld a, $03
    call Call_000_1c6d
    call Call_000_1c9e
    ret


jr_002_6e5e:
    ld a, $02
    call Call_000_1c6d
    ld a, $04
    call Call_000_1e26
    ld a, $03
    call Call_000_1dda
    call Call_000_27b6
    call Call_000_1c9e
    ret


Call_002_6e74:
    call Call_000_1ca7
    ld a, [$c8c5]
    cp $00
    ret nz

    ld a, [$c8c6]
    cp $3f
    ret nz

    ld a, [$c522]
    cp $44
    ret nz

    ld a, [$c8b2]
    cp $05
    ret nz

    ld a, $05
    ld [$c8c5], a
    ld a, $47
    ld [$c8c6], a
    call Call_000_22bc
    ld a, $5d
    call Call_000_1e26
    call Call_000_1c9e
    ret


    or c
    ld l, [hl]
    rst RST_00
    ld l, [hl]
    db $dd
    ld l, [hl]
    di
    ld l, [hl]
    add hl, bc
    ld l, a
    rra
    ld l, a
    rst RST_38
    rst RST_38
    inc de
    nop
    rst RST_38
    rst RST_38
    inc de
    nop
    ld d, $00
    scf
    ld [bc], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc d
    nop
    inc de
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc de
    nop
    ld d, $00
    rst RST_38
    rst RST_38
    ld a, l
    nop
    dec de
    nop
    inc de
    nop
    inc de
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc de
    nop
    ld d, $00
    rst RST_38
    rst RST_38
    ld a, l
    nop
    dec de
    nop
    inc de
    nop
    inc de
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc d
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc de
    nop
    ld a, [de]
    nop
    inc de
    nop
    inc de
    nop
    inc d
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, [de]
    nop
    dec de
    nop
    inc de
    nop
    inc de
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc de
    nop
    ld d, $00
    rst RST_38
    rst RST_38
    ld a, [de]
    nop
    inc de
    nop
    rst RST_38
    rst RST_38
    inc de
    nop
    rst RST_38
    rst RST_38
    push af
    ldh a, [$ffa0]
    push af
    ldh a, [$ff9e]
    push af
    ld a, [$c160]
    push af
    call Call_000_16b9
    call $715e
    call Call_002_6f73
    call Call_002_71eb
    pop af
    call Call_000_080e
    pop af
    ldh [$ff9e], a
    pop af
    ldh [$ffa0], a
    pop af
    ret


    sub a
    adc a
    adc a
    adc a
    sbc b
    adc a
    sub h
    sub l
    sub [hl]
    sbc b
    adc a
    sbc b
    ld d, h
    ld d, l
    adc l
    ld d, e
    ld b, b
    ld b, [hl]
    ld c, c
    ld c, h
    sub d
    sub e
    ld d, a
    sub b
    adc a
    adc a
    adc a

Call_002_6f73:
    ld a, [$c8e9]
    rst RST_00
    xor l
    ld l, a
    or l
    ld l, a
    or l
    ld l, a
    or l
    ld l, a
    or l
    ld l, a
    or l
    ld l, a
    adc $6f
    ldh [c], a
    ld l, a
    or $6f
    ld a, [bc]
    ld [hl], b
    ld d, e
    ld [hl], b
    ld d, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld l, h
    ld [hl], b
    or l
    ld l, a
    or l
    ld l, a
    or l
    ld l, a
    xor a
    call Call_000_080e
    call Call_002_6183
    ret


    ld a, $0b
    call Call_000_080e
    call Call_002_70a2
    ld a, $78
    call Call_000_0753
    call Call_002_7101
    ld a, $3c
    call Call_000_0753
    call Call_002_70d2
    ret


Jump_002_6fce:
    xor a
    call Call_000_080e
    ld a, $10
    call Call_000_0753
    ld a, $20
    call Call_000_080e
    ld a, $5a
    call Call_000_0753
    ret


Jump_002_6fe2:
    xor a
    call Call_000_080e
    ld a, $10
    call Call_000_0753
    ld a, $1a
    call Call_000_080e
    ld a, $5a
    call Call_000_0753
    ret


Jump_002_6ff6:
    xor a
    call Call_000_080e
    ld a, $10
    call Call_000_0753
    ld a, $1f
    call Call_000_080e
    ld a, $b4
    call Call_000_0753
    ret


    ld a, $0b
    call Call_000_080e
    call Call_002_70a2
    ld a, $78
    call Call_000_0753
    ld a, $78
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_002_7048

    ld a, $b2
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_002_703d

    ld a, $0a
    call Call_000_0fb7
    call Call_002_70d2
    ld a, $3c
    call Call_000_0753
    ret


jr_002_703d:
    ld a, $32
    call Call_000_0ff9
    ld a, $3c
    call Call_000_0753
    ret


jr_002_7048:
    ld a, $fc
    call Call_000_0ff9
    ld a, $3c
    call Call_000_0753
    ret


    ld a, $0b
    call Call_000_080e
    call Call_002_70a2
    ld a, $78
    call Call_000_0753
    call Call_002_7101
    ld a, $3c
    call Call_000_0753
    call Call_002_70d2
    ret


Call_002_706c:
    call Call_002_70a2
    ld a, $78
    call Call_000_0753
    call Call_002_7101
    ld a, $3c
    call Call_000_0753
    call Call_002_70d2
    ld a, $91
    ld [$c522], a
    ld a, $06
    ld [$c640], a
    call Call_000_0bab
    call Call_002_70a2
    ld a, $78
    call Call_000_0753
    ld a, $dd
    call Call_000_0ff9
    ld a, $78
    call Call_000_0753
    call Call_000_3a0e
    ret


Call_002_70a2:
    ld a, [$c8e9]
    ld c, a
    ld b, $00
    ld hl, $70e6
    add hl, bc
    ld a, [hl]
    ld [$c5c3], a
    ld [$c602], a
    ld a, [$c5c3]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $72c4
    add hl, bc
    ld a, [hl+]
    ld [$c600], a
    ld a, [hl]
    ld [$c601], a
    ld a, $ff
    ld [$c603], a
    call Call_000_19c5
    call Call_000_03fe
    ret


Call_002_70d2:
    ld a, [$c8e9]
    ld c, a
    ld b, $00
    ld hl, $70e6
    add hl, bc
    ld a, [hl]
    ld a, $ff
    ld [$c600], a
    call Call_000_19c5
    ret


    rst RST_38
    dec bc
    dec c
    ld c, $0f
    ld de, $ffff
    rst RST_38
    db $10
    inc c
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld de, $1111

Call_002_7101:
    ld a, [$c8e9]
    sla a
    ld c, a
    ld b, $00
    ld hl, $7129
    add hl, bc
    ld a, [hl-]
    push hl
    rst RST_00
    ld d, $71
    inc e
    ld [hl], c
    ld [hl+], a
    ld [hl], c
    pop hl
    ld a, [hl]
    call Call_000_1c59
    ret


    pop hl
    ld a, [hl]
    call Call_000_1c63
    ret


    pop hl
    ld a, [hl]
    call Call_000_1c6d
    ret


    nop
    nop
    sub l
    ld bc, $0183
    cp e
    ld bc, $0196
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
    and a
    ld [bc], a
    xor b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld bc, $0115
    inc e
    nop
    cpl
    ld bc, $22fa
    push bc
    ld [$c539], a
    ld a, [$c8e9]
    cp $06
    jr z, jr_002_71ba

    cp $07
    jr z, jr_002_71ba

    cp $08
    jr z, jr_002_71ba

    ld e, a
    ld d, $00
    ld hl, $6f58
    add hl, de
    ld a, [hl]
    ld [$c522], a
    ld a, $06
    ld [$c640], a
    call Call_000_0bab
    ld a, $ff
    ld [$c600], a
    ret


Call_002_718c:
    ld a, [$c522]
    ld [$c539], a
    ld a, [$c8e9]
    cp $06
    jr z, jr_002_71ba

    cp $07
    jr z, jr_002_71ba

    cp $08
    jr z, jr_002_71ba

    ld e, a
    ld d, $00
    ld hl, $6f58
    add hl, de
    ld a, [hl]
    ld [$c522], a
    ld a, $06
    ld [$c640], a
    call Call_000_0bab
    ld a, $ff
    ld [$c600], a
    ret


jr_002_71ba:
    ld e, a
    ld d, $00
    ld hl, $6f58
    add hl, de
    ld a, [hl]
    ld [$c522], a
    call Call_000_0bfd
    ld a, $ff
    ld [$c600], a
    ret


Call_002_71ce:
    push af
    ldh a, [$ffa0]
    push af
    ldh a, [$ff9e]
    push af
    call Call_000_16b9
    call Call_002_718c
    call Call_002_71fd
    ld a, $3c
    call Call_000_0753
    pop af
    ldh [$ff9e], a
    pop af
    ldh [$ffa0], a
    pop af
    ret


Call_002_71eb:
    ld a, [$c539]
    ld [$c522], a
    ld a, $06
    ld [$c640], a
    call Call_000_0bab
    call Call_000_27b6
    ret


Call_002_71fd:
    ld a, [$c8e9]
    rst RST_00
    scf
    ld [hl], d
    scf
    ld [hl], d
    scf
    ld [hl], d
    scf
    ld [hl], d
    scf
    ld [hl], d
    scf
    ld [hl], d
    jr c, @+$74

    dec sp
    ld [hl], d
    ld a, $72
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, d
    ld [hl], d
    ld e, l
    ld [hl], d
    ld b, c
    ld [hl], d
    ld h, e
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ret


    jp Jump_002_6fce


    jp Jump_002_6fe2


    jp Jump_002_6ff6


    ret


    xor a
    call Call_000_080e
    ld a, $28
    call Call_000_080e
    ld a, $78
    call Call_000_0753
    xor a
    call Call_000_080e
    call Call_000_01b7
    ld a, $04
    call Call_000_080e
    ret


    ld a, $04
    call Call_000_080e
    ret


    call Call_002_706c
    ret


    push hl
    push bc
    push de
    call Call_002_7271
    pop de
    pop bc
    pop hl
    ret


Call_002_7271:
    ld a, [$c8b8]
    call Call_000_2781
    ld a, [$c523]
    and $01
    ret z

    ld a, [$c8b8]
    call Call_000_2753
    ld a, [$c523]
    and $01
    ret z

Call_002_7289:
    ld a, [$c8b8]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [$c599]
    cp $00
    jr nz, jr_002_729c

    ld bc, $72c4
    jr jr_002_729f

jr_002_729c:
    ld bc, Case2ObjectPositions

jr_002_729f:
    add hl, bc
    ld a, l
    ld [$c863], a
    ld a, h
    ld [$c864], a
    ld a, [$c867]
    ld c, a
    ld a, [$c868]
    ld b, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [$c8b8]
    ld [bc], a
    inc bc
    ld a, c
    ld [$c867], a
    ld a, b
    ld [$c868], a
    ret


    inc de
    inc e
    inc de
    inc e
    inc hl
    dec bc
    ld d, d
    ld c, b
    ld d, d
    ld c, b
    ld b, b
    jr z, jr_002_7301

    jr z, jr_002_730b

    jr nc, jr_002_732d

    ld h, b
    ld e, h
    rlca

jr_002_72d8:
    ld h, $18

jr_002_72da:
    inc c
    jr nc, jr_002_72e9

    jr nc, jr_002_72eb

    jr nc, @+$10

    jr nc, @+$0e

    jr nc, @+$0e

    jr nc, jr_002_72fb

    inc sp
    inc c

jr_002_72e9:
    jr nc, jr_002_7343

jr_002_72eb:
    ld h, b
    rrca
    nop
    jr nz, jr_002_7323

    ld h, $18
    ld e, b
    ld h, b
    ld b, h
    ld [hl-], a
    dec b
    ld [hl-], a
    ld h, b
    ld c, b
    ld d, h

jr_002_72fb:
    ld h, b
    ld e, l
    ld h, d
    ld h, [hl]
    ld h, [hl]
    ld c, b

jr_002_7301:
    ld b, b
    ld h, $22
    ld a, [de]
    ld [hl], $22
    ld [hl], $1a
    ld b, [hl]
    ld [hl+], a

jr_002_730b:
    ld b, [hl]
    ld a, [de]
    ld d, [hl]
    ld [hl+], a
    ld d, [hl]
    ld d, d
    ld [hl], $5a
    ld [hl], $52
    ld b, [hl]
    ld e, d
    ld b, [hl]
    ld d, d
    ld d, [hl]
    ld e, d
    ld d, [hl]
    ld hl, $4d50
    jr nc, jr_002_7325

    jr c, jr_002_732f

jr_002_7323:
    jr c, jr_002_7339

jr_002_7325:
    jr c, jr_002_7336

    inc d
    inc e
    ld d, $2b
    rla
    dec [hl]

jr_002_732d:
    jr jr_002_733d

jr_002_732f:
    inc hl
    ld a, [de]
    inc h
    ld a, [hl+]
    inc h
    inc sp
    dec h

jr_002_7336:
    ld [$1343], sp

jr_002_7339:
    ld b, d
    ld [hl+], a
    ld b, c
    inc l

jr_002_733d:
    ld b, b
    jr nc, jr_002_737a

    ld b, b
    ld d, $30

jr_002_7343:
    nop
    ld d, e
    inc d
    inc l
    jr nc, jr_002_7379

    jr nc, jr_002_734b

jr_002_734b:
    ld c, b
    ld a, [hl+]
    inc [hl]
    ld c, b
    inc [hl]
    ld [de], a
    inc e
    jr nz, jr_002_7370

    jr nz, jr_002_737e

    jr nz, jr_002_72d8

    jr nz, jr_002_72da

    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    ld a, b
    ld h, b
    ld a, b
    db $10
    add b
    db $10
    add b
Case2ObjectPositions:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.positions", $0, $a

jr_002_7370:
    ld c, d
    dec bc
    ld d, l
    ld e, a
    ld l, c
    ld b, $4a
    ld h, $0f

jr_002_7379:
    inc l

jr_002_737a:
    nop
    ld b, b
    dec hl
    ld b, [hl]

jr_002_737e:
    ld e, c
    inc sp
    ld hl, $2132
    ld [hl-], a
    jr c, jr_002_73c3

    jr c, jr_002_73dd

    ld c, e
    dec c
    ld d, b
    ld a, [bc]
    ld d, [hl]
    rlca
    ld e, l
    inc bc
    ld bc, $623d
    ld b, c
    jr z, jr_002_739e

    ld b, e
    ld c, l
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, [de]
    inc a

jr_002_739e:
    ld d, a
    jr nc, jr_002_73e2

    ld c, c
    jr c, jr_002_73f1

    jr c, jr_002_73eb

    jr c, jr_002_73e5

    ld a, $49
    ld h, b
    jr z, jr_002_73ad

jr_002_73ad:
    jr z, @+$22

    nop
    jr nz, jr_002_73b2

jr_002_73b2:
    jr nz, jr_002_73b4

jr_002_73b4:
    jr nz, jr_002_73b6

jr_002_73b6:
    jr nz, jr_002_73b8

jr_002_73b8:
    jr nz, jr_002_73ba

jr_002_73ba:
    jr nz, jr_002_73bc

jr_002_73bc:
    jr nz, jr_002_73be

jr_002_73be:
    ld h, c
    add hl, de
    ld h, c
    add hl, sp
    ld d, b

jr_002_73c3:
    jr nz, @+$55

    ld c, l
    inc c
    jr nc, jr_002_73c9

jr_002_73c9:
    nop
    dec l
    inc hl
    nop
    ld a, [bc]
    jr z, @+$6c

    ld e, c
    ld e, d
    jr c, @+$53

    jr c, jr_002_7427

    ld e, b
    ld c, e
    ld d, a
    jr jr_002_7433

    jr @+$62

jr_002_73dd:
    jr @+$62

    ld c, $45
    ld a, [hl-]

jr_002_73e2:
    ld sp, $524a

jr_002_73e5:
    ld e, h
    dec h
    ld e, $3f
    ld e, $09

jr_002_73eb:
    ld hl, $2163
    ld d, l
    ld a, [bc]
    inc bc

jr_002_73f1:
    dec c
    dec sp
    ccf
    inc sp
    scf
    ld c, d
    jr nc, jr_002_73f9

jr_002_73f9:
    ld b, d
    ld e, l
    ld d, l
    jr z, @+$3e

    add hl, hl
    dec a
    ld [bc], a
    scf
    ld a, [hl+]
    ld [hl], $1d
    jr nc, @+$3d

    ld [bc], a
    ld b, [hl]
    cpl
    ld [de], a
    ld de, $4a10
    inc h
    ld c, d
    inc c
    jr nc, @+$0e

    jr nc, jr_002_7421

    jr nc, jr_002_7423

    jr nc, @+$0e

    jr nc, jr_002_7427

    jr nc, jr_002_7447

    ld de, $2858
    db $10

jr_002_7421:
    jr nz, jr_002_745b

jr_002_7423:
    ld c, b
    jr nz, jr_002_747e

    ld c, b

jr_002_7427:
    jr c, jr_002_7439

    jr nc, jr_002_748b

    ld b, b
    nop
    ld h, b
    ld c, b
    ld d, b
    ld b, c
    ld l, c
    inc h

jr_002_7433:
    ld c, d
    ld a, $00
    ld [$c867], a

jr_002_7439:
    ld a, $c6
    ld [$c868], a
    call Call_002_7289
    ld a, $ff
    ld [$c603], a
    push hl

jr_002_7447:
    push de
    push bc
    ld hl, $c600

jr_002_744c:
    ld a, [hl+]
    cp $ff
    jr z, jr_002_7465

    ldh [$ff92], a
    ld a, [hl+]
    push bc
    ld b, a
    ld a, [$c197]
    ld c, a
    ld a, b

jr_002_745b:
    sub c
    pop bc
    ldh [$ff93], a
    ld a, [hl+]
    call Call_000_1a28
    jr jr_002_744c

jr_002_7465:
    pop bc
    pop de
    pop hl
    ret


    ld d, a
    ldh a, [$ffa0]
    cp $00
    ld a, d
    ret nz

    ld a, [$c8b2]
    cp $ff
    ret nz

    ld a, $bf
    call Call_000_1dda
    ld a, [$c8c5]

jr_002_747e:
    rst RST_00
    adc e
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    ld [hl], h
    sub c
    ld [hl], h

jr_002_748b:
    ld a, $00
    ld [$c8b2], a
    ret


    ld a, [$c599]
    cp $00
    jr nz, jr_002_74a3

    ld a, [$c8c6]
    cp $23
    jr c, jr_002_74a3

    cp $2c
    jr c, jr_002_74b6

jr_002_74a3:
    ld a, [$c8c6]
    call ReadStateBit
    ld a, [$c523]
    and $01
    jr nz, jr_002_74b6

    ld a, $01
    ld [$c8b2], a
    ret


jr_002_74b6:
    ld a, $08
    ld [$c8b2], a
    ret


    call Call_002_776c

jr_002_74bf:
    xor a
    ld [$c5db], a

Jump_002_74c3:
jr_002_74c3:
    call Call_002_7845
    call Call_000_03fe
    call Call_000_0456
    ld a, [$c188]
    bit 0, a
    jp nz, Jump_002_7584

    bit 3, a
    jp nz, Jump_002_7584

    bit 2, a
    jp nz, Jump_002_755d

    bit 7, a
    jp nz, Jump_002_7572

    bit 6, a
    jr nz, jr_002_754b

    ld a, [$c5db]
    rst RST_00
    di
    ld [hl], h
    dec b
    ld [hl], l
    ld e, $75
    scf
    ld [hl], l
    ld a, [$c187]
    and $12
    cp $12
    jr nz, jr_002_74c3

    ld a, [$c5db]
    inc a
    ld [$c5db], a
    jr jr_002_74c3

    ld a, [$c187]
    and $cd
    jr nz, jr_002_74bf

    ld a, [$c187]
    and $22
    cp $22
    jr nz, jr_002_74c3

    ld a, [$c5db]
    inc a
    ld [$c5db], a
    jr jr_002_74c3

    ld a, [$c187]
    and $5d
    jr nz, jr_002_74bf

    ld a, [$c187]
    and $82
    cp $82
    jr nz, jr_002_74c3

    ld a, [$c5db]
    inc a
    ld [$c5db], a
    jr jr_002_74c3

    ld a, [$c187]
    and $3d
    jr nz, jr_002_74bf

    ld a, [$c187]
    and $42
    cp $42
    jp z, Jump_000_1c45

    jp Jump_002_74c3


jr_002_754b:
    ld a, $19
    call Call_000_080e
    ldh a, [$ffad]
    cp $00
    jp z, Jump_002_74c3

    dec a
    ldh [$ffad], a
    jp Jump_002_74c3


Jump_002_755d:
    ld a, $19
    call Call_000_080e
    ldh a, [$ffad]
    inc a
    ldh [$ffad], a
    cp $03
    jp nz, Jump_002_74c3

    xor a
    ldh [$ffad], a
    jp Jump_002_74c3


Jump_002_7572:
    ld a, $19
    call Call_000_080e
    ldh a, [$ffad]
    cp $02
    jp z, Jump_002_74c3

    inc a
    ldh [$ffad], a
    jp Jump_002_74c3


Jump_002_7584:
    ld a, $19
    call Call_000_080e
    ldh a, [$ffad]
    ld c, a
    ld b, $00
    ld hl, $75e1
    add hl, bc
    ld d, [hl]
    ld a, [$c875]
    and d
    jr z, jr_002_75f3

    xor a
    ld [$c884], a
    call Call_002_76ad

jr_002_75a0:
    call Call_002_7830
    call Call_000_03fe
    call Call_000_0456
    ld a, [$c188]
    bit 0, a
    jr nz, jr_002_75e4

    bit 1, a
    jp nz, Jump_002_7690

    bit 7, a
    jr nz, jr_002_75cf

    bit 6, a
    jr z, jr_002_75a0

    ld a, $19
    call Call_000_080e
    ld a, [$c884]
    cp $00
    jr z, jr_002_75a0

    dec a
    ld [$c884], a
    jr jr_002_75a0

jr_002_75cf:
    ld a, $19
    call Call_000_080e
    ld a, [$c884]
    cp $02
    jr z, jr_002_75a0

    inc a
    ld [$c884], a
    jr jr_002_75a0

    ld bc, $0402

jr_002_75e4:
    ld a, $19
    call Call_000_080e
    ld a, [$c884]
    rst RST_00
    add b
    halt
    sub l
    halt
    sbc e
    halt

jr_002_75f3:
    call Call_002_781a
    ldh a, [$ffad]
    add a
    ld e, a
    ld d, $00
    call Call_002_780f
    ld l, c
    ld h, b
    ld bc, $9965
    call Call_000_01d8
    xor a
    ld [$c599], a
    ld hl, $7a01
    ld bc, $99a6
    call Call_000_01d8
    ld hl, $7a0e
    ld bc, $99e6
    call Call_000_01d8
    call SubmitMapQueue
    xor a
    ld [$c884], a

jr_002_7624:
    call Call_002_7830
    call Call_000_03fe
    call Call_000_0456
    ld a, [$c188]
    bit 0, a
    jr nz, jr_002_7670

    bit 1, a
    jr nz, jr_002_7665

    bit 7, a
    jr nz, jr_002_7652

    bit 6, a
    jr z, jr_002_7624

    ld a, $19
    call Call_000_080e
    ld a, [$c884]
    cp $00
    jr z, jr_002_7624

    xor a
    ld [$c884], a
    jr jr_002_7624

jr_002_7652:
    ld a, $19
    call Call_000_080e
    ld a, [$c884]
    cp $02
    jr z, jr_002_7624

    ld a, $02
    ld [$c884], a
    jr jr_002_7624

jr_002_7665:
    ld a, $2f
    call Call_000_080e
    call Call_002_7799
    jp Jump_002_74c3


jr_002_7670:
    ld a, $19
    call Call_000_080e
    ld a, [$c884]
    srl a
    ld [$c599], a
    xor a
    jr jr_002_768a

    ld a, $19
    call Call_000_080e
    call Call_000_3853
    ld a, $ff

jr_002_768a:
    ld [$c8e8], a
    jp Jump_000_38dd


Jump_002_7690:
    ld a, $2f
    call Call_000_080e

jr_002_7695:
    call Call_002_7799
    jp Jump_002_74c3


    call Call_002_76df
    ld a, [$c875]
    cp $00
    jr nz, jr_002_76a8

    call Call_000_386f

jr_002_76a8:
    call Call_000_387d
    jr jr_002_7695

Call_002_76ad:
    call Call_002_781a
    ldh a, [$ffad]
    add a
    ld e, a
    ld d, $00
    call Call_002_780f
    ld l, c
    ld h, b
    ld bc, $9965
    call Call_000_01d8
    ld hl, $7a25
    call Call_002_796e
    call Call_000_01d4
    ld hl, $7a52
    call Call_002_796e
    call Call_000_01d4
    ld hl, $7a72
    call Call_002_796e
    call Call_000_01d4
    jp SubmitMapQueue


Call_002_76df:
    xor a
    ld [$c884], a
    ld [$c875], a
    ld hl, $7a20
    call Call_000_023a
    ld hl, $7aa2
    call Call_002_796e
    call Call_000_01d4
    call SubmitMapQueue
    jp Jump_002_7724


Call_002_76fb:
    push bc
    push hl
    ld a, [$c884]
    add a
    add a
    ld c, a
    ld a, [$c875]
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $7718
    add hl, bc
    ld a, [hl+]
    ldh [$ff92], a
    ld a, [hl]
    ldh [$ff93], a
    jp Jump_002_7857


    inc [hl]
    ld l, b
    inc [hl]
    ld [hl], b
    jr nz, @+$62

    jr nz, jr_002_7790

    inc [hl]
    add b
    inc [hl]
    adc b

Call_002_7724:
Jump_002_7724:
    xor a
    ld [$c875], a

jr_002_7728:
    call Call_002_76fb
    call Call_000_03fe
    call Call_000_0456
    ld a, [$c188]
    bit 0, a
    jr nz, jr_002_7766

    bit 1, a
    jr nz, jr_002_775b

    bit 7, a
    jr nz, jr_002_774f

    bit 6, a
    jr z, jr_002_7728

    ld a, $19
    call Call_000_080e
    xor a
    ld [$c875], a
    jr jr_002_7728

jr_002_774f:
    ld a, $19
    call Call_000_080e
    ld a, $01
    ld [$c875], a
    jr jr_002_7728

jr_002_775b:
    ld a, $2f
    call Call_000_080e
    ld a, $01
    ld [$c875], a
    ret


jr_002_7766:
    ld a, $19
    call Call_000_080e
    ret


Call_002_776c:
    xor a
    ld hl, $c5dc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    call Call_000_387d
    call Call_000_0722
    call Call_000_0420
    call Call_000_09ea
    ld a, $02
    call Call_000_1b39
    call Call_000_072a
    call Call_000_044b
    call Call_002_7799
    xor a
    ldh [$ffad], a

jr_002_7790:
    call Call_002_7845
    call Call_000_03fe
    jp Jump_000_38cf


Call_002_7799:
    ld a, [$c875]
    ld [$c876], a
    call Call_002_781a
    ld de, $0000
    call Call_002_77b1
    call Call_002_77b1
    call Call_002_77b1
    jp SubmitMapQueue


Call_002_77b1:
    call Call_002_77ba
    call Call_002_77c8
    inc e
    inc e
    ret


Call_002_77ba:
    call Call_002_780f
    push bc
    ld hl, $7983
    call Call_002_7815
    pop hl
    jp Jump_000_01d8


Call_002_77c8:
    ld a, [$c876]
    sra a
    ld [$c876], a
    jr c, jr_002_77e7

    ld hl, $7983
    call Call_002_7815
    ld hl, $780a
    call Call_002_7820
    ld hl, $79d4
    call Call_002_796e
    jp Jump_000_01d8


jr_002_77e7:
    ld hl, $79fb
    call Call_002_7815
    ld a, e
    srl a
    ld l, a
    ld h, $00
    push bc
    ld bc, $c5dc
    add hl, bc
    pop bc
    ld a, [hl]
    cp $00
    jr nz, jr_002_7804

    ld hl, $79eb
    jp Jump_000_01d8


jr_002_7804:
    ld hl, $79f3
    jp Jump_000_01d8


    ld b, $24
    ld b, $25
    inc h

Call_002_780f:
    ld hl, $7989
    call Call_002_796e

Call_002_7815:
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ret


Call_002_781a:
    ld hl, $7a1b
    jp Jump_000_023a


Call_002_7820:
    push de
    ld d, $00
    ld a, [$c163]
    ld e, a
    add hl, de
    ld l, [hl]
    ld h, $00
    add hl, bc
    ld c, l
    ld b, h
    pop de
    ret


Call_002_7830:
    push bc
    push hl
    ld a, [$c884]
    ld c, a
    ld b, $00
    ld hl, $797d
    add hl, bc
    ld a, [hl]
    ldh [$ff93], a
    ld a, $1c
    ldh [$ff92], a
    jr jr_002_7857

Call_002_7845:
    push bc
    push hl
    ldh a, [$ffad]
    ld c, a
    ld b, $00
    ld hl, $7980
    add hl, bc
    ld a, [hl]
    ldh [$ff93], a
    ld a, $14
    ldh [$ff92], a

Jump_002_7857:
jr_002_7857:
    xor a
    call Call_000_19fa
    pop hl
    pop bc
    ret


    call Call_000_38dd
    call Call_000_16b9
    call Call_002_7951
    call Call_002_781a
    ld hl, $7b18
    call Call_002_796e
    call Call_000_01d4
    call SubmitMapQueue
    ld a, $01
    ld [$c884], a
    call Call_000_38cf
    call Call_002_7724
    ld a, [$c875]
    cp $00
    jr nz, jr_002_788e

    call Call_000_3899
    call Call_002_7892

jr_002_788e:
    call Call_000_38dd
    ret


Call_002_7892:
    ld a, [$c599]
    cp $00
    ret z

    call Call_000_2bc7
    ld a, [$c523]
    and $fb
    ld [$c523], a
    ld de, $0000
    ld a, [$c5d2]
    ld c, $08

jr_002_78ab:
    srl a
    jr nc, jr_002_78b8

    push de
    push bc
    push af
    call Call_002_78bd
    pop af
    pop bc
    pop de

jr_002_78b8:
    inc de
    dec c
    jr nz, jr_002_78ab

    ret


Call_002_78bd:
    ld a, $07
    cp e
    jr z, jr_002_78dc

    ld hl, $78ef
    add hl, de
    ld a, [hl]
    ld c, a
    ld b, $00
    ld hl, $c57b
    add hl, bc
    xor a
    ld [hl], a

Call_002_78d0:
    ld a, [$c5d2]
    ld hl, $384b
    add hl, de
    and [hl]
    ld [$c5d2], a
    ret


jr_002_78dc:
    call Call_002_78d0
    ld a, $4e
    call Call_000_1e26
    ld a, $a8
    call Call_000_1e26
    ld a, $3a
    ld [$c521], a
    ret


    inc bc
    inc b
    dec b
    rlca
    ld [$cd0b], sp
    db $dd
    jr c, @-$4f

    ld [$c184], a
    call Call_000_16b9
    call Call_002_7951
    call Call_002_781a
    ld hl, $7aee
    call Call_002_796e
    call Call_000_01d4
    ld hl, $7ac8
    call Call_002_796e
    call Call_000_01d4
    call SubmitMapQueue
    ld a, $02
    call Call_000_1b14
    call Call_000_38cf
    xor a
    ld [$c884], a
    call Call_002_7724
    ld a, [$c875]
    cp $00
    jr nz, jr_002_7933

    call Call_000_3861

jr_002_7933:
    call Call_000_38dd
    ld a, [$c197]
    ld [$c184], a
    ld a, $ff
    ldh [$ffa6], a
    ldh [$ffa7], a
    ld a, [$c599]
    cp $00
    jr nz, jr_002_794d

    call Call_000_38eb
    ret


jr_002_794d:
    call Call_000_38f9
    ret


Call_002_7951:
    call Call_000_0416
    call Call_000_0722
    call Call_000_0420
    call Call_000_09ea
    ld a, $02
    call Call_000_1b39
    ld a, $02
    call Call_000_1b14
    call Call_000_072a
    call Call_000_044b
    ret


Call_002_796e:
    push bc
    ld a, [$c163]
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    ld l, c
    pop bc
    ret


    ld l, b
    ld [hl], b
    ld a, b
    ld e, b
    ld l, b
    ld a, b
    ld h, l
    sbc c
    and l
    sbc c
    push hl
    sbc c
    adc a
    ld a, c
    xor l
    ld a, c
    adc a
    ld a, c
    sub l
    ld a, c
    sbc l
    ld a, c
    and l
    ld a, c
    ld b, $01
    push bc
    ret z

    set 0, h
    ld a, a
    jp c, $0106

    push bc
    ret z

    set 0, h
    ld a, a
    db $db
    ld b, $01
    push bc
    ret z

    set 0, h
    ld a, a
    call c, Call_002_79b3
    cp [hl]
    ld a, c
    ret


    ld a, c

Call_002_79b3:
    add hl, bc
    ld bc, $c8c5
    jp nz, $c8c7

    call nz, Call_002_7fd1
    jp c, $0109

    push bc
    ret z

    jp nz, $c8c7

    call nz, Call_002_7fd1
    db $db
    add hl, bc
    ld bc, $c8c5
    jp nz, $c8c7

    call nz, Call_002_7fd1
    call c, Call_002_79da
    rst RST_18
    ld a, c
    and $79

Call_002_79da:
    inc bc
    ld bc, $e4e3
    push hl
    dec b
    ld bc, $eae9
    db $eb
    db $ec
    db $ed
    inc bc
    ld bc, $f1f0
    ldh a, [c]
    ld b, $01
    and b
    and c
    and d
    and e
    and h
    and l
    ld b, $01
    and b
    and c
    and d
    and e
    and h
    and [hl]
    ld l, e
    sbc c
    xor e
    sbc c
    db $eb
    sbc c
    dec bc
    ld bc, $c0c2
    jp nc, $ffc4

    pop bc
    adc $ce
    jp z, $daff

    dec bc
    ld bc, $c0c2
    jp nc, $ffc4

    pop bc
    adc $ce
    jp z, $dbff

    ld h, l
    sbc c
    inc c
    ld b, $7f
    and l
    sbc c
    inc c
    inc bc
    ld a, a
    dec hl
    ld a, d
    scf
    ld a, d
    ld b, h
    ld a, d
    and [hl]
    sbc c
    ld [$c201], sp
    adc $cd
    db $d3
    ret z

    call $c4d4
    and [hl]
    sbc c
    add hl, bc
    ld bc, $cec2
    call $c8d3
    call $c4d4
    pop de
    and [hl]
    sbc c
    ld a, [bc]
    ld bc, $cec5
    pop de
    db $d3
    jp nc, $d3c4

    reti


    call nz, $58cd
    ld a, d
    ld h, b
    ld a, d
    ld l, d
    ld a, d
    add $99
    inc b
    ld bc, $d7c4
    ret z

    db $d3
    add $99
    ld b, $01
    jp nc, $d1ce

    db $d3
    ret z

    call nz, $99c6
    inc b
    ld bc, $cdc4
    jp $78c4


    ld a, d
    add h
    ld a, d
    sub e
    ld a, d
    and $99
    ld [$cd01], sp
    call nz, Call_002_7fd6
    add $c0
    call z, $e6c4
    sbc c
    dec bc
    ld bc, $cecd
    call nc, $c4d5
    ret nz

    call nc, $c97f
    call nz, $e6d4
    sbc c
    dec bc
    ld bc, $c4cd
    call nc, $d2c4
    ld a, a
    jp nc, $c8cf

    call nz, $a8cb
    ld a, d
    or d
    ld a, d
    cp h
    ld a, d
    xor c
    sbc c
    inc bc
    ld [bc], a
    ret c

    call nz, $cdd2
    adc $7f
    xor c
    sbc c
    inc bc
    ld [bc], a
    adc $d4
    ret z

    call $cdce
    xor c
    sbc c
    inc b
    ld [bc], a
    ret


    ret nz

    ld a, a
    ld a, a
    call $c8c4
    call Call_002_7ace
    ret c

    ld a, d
    ldh [c], a
    ld a, d

Call_002_7ace:
    xor c
    sbc c
    inc bc
    ld [bc], a
    ret c

    call nz, $cdd2
    adc $7f
    xor c
    sbc c
    inc bc
    ld [bc], a
    adc $d4
    ret z

    call $cdce
    xor c
    sbc c
    inc b
    ld [bc], a
    ret


    ret nz

    ld a, a
    ld a, a
    call $c8c4
    call Call_002_7af4
    cp $7a
    add hl, bc
    ld a, e

Call_002_7af4:
    ld h, a
    sbc c
    ld b, $01
    jp nc, $d5c0

    call nz, $e67f
    ld h, a
    sbc c
    rlca
    ld bc, $c0c6
    pop de
    jp Jump_002_7fc4


    and $67
    sbc c
    dec bc
    ld bc, $cfd2
    call nz, $c2c8
    rst RST_00
    call nz, $cdd1
    ld a, a
    and $1e
    ld a, e
    ld a, [hl-]
    ld a, e
    ld e, c
    ld a, e
    add a
    sbc c
    ld [$c203], sp
    adc $cd
    db $d3
    ret z

    call $c4d4
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    call nz, $c3cd
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add a
    sbc c
    add hl, bc
    inc bc
    jp nz, $cdce

    db $d3
    ret z

    call $c4d4
    pop de
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    push bc
    ret z

    call Call_002_7f7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add a
    sbc c
    ld a, [bc]
    inc bc
    push bc
    adc $d1
    db $d3
    jp nc, $d3c4

    reti


    call nz, Call_002_7fcd
    ld a, a
    ld a, a
    ld a, a

jr_002_7b6b:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    call nz, $c3cd
    call nz, Call_002_7f7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, [$c599]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $7b95
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $c1a5
    ld d, $2d

jr_002_7b8e:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_002_7b8e

    ret


    sbc c
    ld a, e
    ret nz

    ld a, e
    jr jr_002_7beb

    stop
    ld b, b
    inc c
    add b
    ld b, b
    inc c
    nop
    ld b, b
    dec c
    add b
    ld b, b
    dec c
    nop
    ld b, b
    ld c, $80
    ld b, b
    ld c, $00
    ld b, b
    rrca
    add b
    ld b, b

jr_002_7bb3:
    rrca
    nop
    ld b, b
    db $10
    add b
    ld b, b
    stop
    ld b, b
    dec c
    add b
    ld b, b
    dec c
    inc bc
    ld c, l
    jr jr_002_7bc4

jr_002_7bc4:
    ld b, b
    ld [de], a
    add b
    ld b, b
    ld [de], a
    nop
    ld b, b
    inc de
    add b
    ld b, b
    inc de
    nop
    ld b, b
    inc d
    add b
    ld b, b
    inc d
    nop
    ld b, b
    dec d
    add b
    ld b, b
    dec d
    nop
    ld b, b
    ld d, $80
    ld b, b
    ld d, $00
    ld b, b
    rla
    add b
    ld b, b
    rla
    nop
    ld b, b
    jr jr_002_7b6b

jr_002_7beb:
    ld b, b
    jr jr_002_7bb3

    ldh a, [$ffa3]
    add $01
    ldh [$ffa2], a
    ld c, a
    add a
    add a
    add c
    ldh [$ffa3], a
    ldh a, [$ffa2]
    swap a
    and $0f
    ldh [$ffa2], a
    ld c, a
    ldh a, [$ffa3]
    swap a
    and $f0
    or c
    ldh [$ffa2], a
    pop bc
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_002_7f7f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_002_7fc4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_002_7fcd:
    nop
    nop
    nop
    nop

Call_002_7fd1:
    nop
    nop
    nop
    nop
    nop

Call_002_7fd6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
