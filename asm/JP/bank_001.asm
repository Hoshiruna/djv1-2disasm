; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    call Call_001_4034
    xor a
    ldh [rSVBK], a
    call Call_001_4051
    ld hl, $8000
    ld bc, $1800
    call Call_000_0461
    call Call_000_0469
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld a, $00
    ldh [hVideoFlags], a
    ld a, $01
    ldh [rIE], a
    ldh a, [$ffac]
    ldh [rLCDC], a
    ei
    call Call_000_07e1
    ld hl, $c181
    set 0, [hl]
    jp Jump_000_0862


Call_001_4034:
    ldh a, [rKEY1]
    and $80
    ret nz

    ldh a, [rIE]
    ld [$c180], a
    xor a
    ldh [rIE], a
    ld a, $30
    ldh [rP1], a
    ld a, $01
    ldh [rKEY1], a
    stop
    ld a, [$c180]
    ldh [rIE], a
    ret


Call_001_4051:
    ld c, $80
    ld b, $0c
    ld hl, $40af

jr_001_4058:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_001_4058

    ret
INCLUDE "video.asm"

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld c, a
    ld a, [$c187]
    xor c
    and c
    ld [$c188], a
    ld a, c
    ld [$c187], a
    and $0f
    cp $0f
    jp z, Jump_000_017e

    ld a, $30
    ldh [rP1], a
    ret
INCLUDE "video_pal.asm"


Call_001_4197:
    res 4, a
    ldh [hVideoFlags], a
    ld a, $80
    ldh [rTMA], a
    xor a
    ldh [rTAC], a
    ldh [rTIMA], a
    ld a, $04
    ldh [rTAC], a
    ldh a, [rIE]
    or $04
    and $fe
    ldh [rIE], a
    ret


    call Call_000_0420
    call Call_000_09df
    ld a, $04
    call Call_001_41c0
    call Call_000_0420
    xor a

Call_001_41c0:
    call Call_000_1b39
    ld a, $02
    call Call_000_1b14
    call Call_000_044b
    call Call_000_0416
    call Call_001_4928
    ld a, $78
    call Call_000_0753
    call Call_001_4930
    ret


    call Call_001_6806
    call Call_000_0420
    call Call_000_09d4
    ld a, $01
    call Call_000_1b39
    ld a, $02
    call Call_000_1b14
    call Call_000_044b
    call Call_000_0416
    call Call_001_4928
    call Call_001_4200
    call Call_001_4930
    call Call_001_6816
    ret


Call_001_4200:
jr_001_4200:
    call Call_000_0b99
    call Call_000_0456
    ld a, [$c188]
    bit 0, a
    jr nz, jr_001_4213

    bit 3, a
    jr nz, jr_001_4213

    jr jr_001_4200

jr_001_4213:
    ld a, $19
    call Call_000_080e
    ret


Call_001_4219:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call Call_001_422f
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_001_422f:
    call ReadC1Room

jr_001_4232:
    ld a, [$c85e]
    ld l, a
    ld a, [$c85f]
    ld h, a
    ld a, [hl+]
    cp $ff
    ret z

    bit 7, a
    jr nz, jr_001_425e

    call Call_001_4273
    ld a, [$c523]
    and $01
    jr nz, jr_001_425e

    ld a, [$c85e]
    ld l, a
    ld a, [$c85f]
    ld h, a
    ld a, [hl]
    call Call_001_431d
    ld hl, $434f
    call Call_000_01d8

jr_001_425e:
    ld a, [$c85e]
    ld c, a
    ld a, [$c85f]
    ld b, a
    inc bc
    inc bc
    inc bc
    ld a, c
    ld [$c85e], a
    ld a, b
    ld [$c85f], a
    jr jr_001_4232

Call_001_4273:
    call Call_000_1ca7
    ld a, [hl+]
    bit 7, a
    ret z

Call_001_427a:
    and $7f
    ld [$c855], a
    ld e, a
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_001_428a:
    ld bc, $42c1
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c5c3], a
    cp e
    jr nz, jr_001_42b9

    ld d, a
    ldh a, [$ff9e]
    cp $04
    ld a, d
    jr nc, jr_001_42b4

    ld a, [$c5c3]
    call ReadStateBit
    ld a, [$c523]
    and $01
    jp z, Jump_000_1c9e

    jp Jump_000_1ca7


jr_001_42b4:
    ld a, e
    call Call_001_42f5
    ret


jr_001_42b9:
    ldh a, [$ff9e]
    inc a
    inc a
    ldh [$ff9e], a
    jr jr_001_428a

    ld [$0d6f], sp
    cp e
    inc h
    rst RST_38
    add hl, hl
    rst RST_38
    dec h
    rst RST_38
    ld a, [hl+]
    rst RST_38
    ld h, $ff
    dec hl
    rst RST_38
    daa
    rst RST_38
    inc l
    rst RST_38

Call_001_42d5:
    cp $24
    jr z, jr_001_42f5

    cp $25
    jr z, jr_001_42f5

    cp $26
    jr z, jr_001_42f5

    cp $27
    jr z, jr_001_42f5

    cp $29
    jr z, jr_001_42f5

    cp $2a
    jr z, jr_001_42f5

    cp $2b
    jr z, jr_001_42f5

    cp $2c
    jr nz, jr_001_4319

Call_001_42f5:
jr_001_42f5:
    and $08
    jr nz, jr_001_4309

    ld a, $bb
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_001_4319

    call Call_000_1c9e
    ret


jr_001_4309:
    ld a, $bb
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_001_4319

    call Call_000_1c9e
    ret


jr_001_4319:
    call Call_000_1ca7
    ret


Call_001_431d:
    push hl
    push af
    and $07
    swap a
    ld l, a
    ld h, $00
    add hl, hl
    pop af
    swap a
    and $07
    or l
    ld l, a
    ld bc, $98cf
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ret


Call_001_4336:
    ld a, [$c536]
    jr jr_001_433e

; Resolve the current room to its three-byte state records.
ReadC1Room:
Call_001_433b:
    ld a, [wRoomId]

jr_001_433e:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $4352
    add hl, bc
    ld a, [hl+]
    ld [$c85e], a
    ld a, [hl]
    ld [$c85f], a
    ret


    ld bc, $7301
    xor $43
    ldh a, [c]
    ld b, e
    ld sp, hl
    ld b, e
    inc bc
    ld b, h
    ld a, [bc]
    ld b, h
    ld de, $1e44
    ld b, h
    dec h
    ld b, h
    cpl
    ld b, h
    ld [hl], $44
    dec a
    ld b, h
    ld b, c
    ld b, h
    ld c, b
    ld b, h
    ld d, d
    ld b, h
    ld e, c
    ld b, h
    ld h, b
    ld b, h
    ld h, a
    ld b, h
    ld [hl], c
    ld b, h
    adc d
    ld b, h
    sub c
    ld b, h
    sbc e
    ld b, h
    and l
    ld b, h
    xor h
    ld b, h
    or [hl]
    ld b, h
    ret nz

    ld b, h
    pop bc
    ld b, h
    adc $44
    db $db
    ld b, h
    add sp, $44
    push af
    ld b, h
    db $fc
    ld b, h
    db $fd
    ld b, h
    inc b
    ld b, l
    dec b
    ld b, l
    inc c
    ld b, l
    inc de
    ld b, l
    ld a, [de]
    ld b, l
    ld e, $45
    ld [hl+], a
    ld b, l
    ld h, $45
    ld a, [hl+]
    ld b, l
    ld sp, $3545
    ld b, l
    add hl, sp
    ld b, l
    dec a
    ld b, l
    ld b, a
    ld b, l
    ld c, [hl]
    ld b, l
    ld d, d
    ld b, l
    ld e, c
    ld b, l
    ld h, b
    ld b, l
    ld h, a
    ld b, l
    ld [hl], h
    ld b, l
    ld [hl], l
    ld b, l
    ld a, c
    ld b, l
    add e
    ld b, l
    adc d
    ld b, l
    sub c
    ld b, l
    sub l
    ld b, l
    and d
    ld b, l
    xor h
    ld b, l
    or e
    ld b, l
    or a
    ld b, l
    cp [hl]
    ld b, l
    cp a
    ld b, l
    jp $c745


    ld b, l
    bit 0, l
    rst RST_08
    ld b, l
    db $d3
    ld b, l
    rst RST_10
    ld b, l
    db $db
    ld b, l
    rst RST_18
    ld b, l
    db $e3
    ld b, l
    rst RST_20
    ld b, l
    db $eb
    ld b, l
    db $ec
    ld b, l
    db $ed
    ld b, l
    xor $45
    ld hl, $0200
    rst RST_38
    ld sp, $0001
    inc h
    nop
    dec b
    rst RST_38
    ld [bc], a
    ld [bc], a
    ld bc, $0340
    ld [bc], a
    inc h
    ld bc, $ff05
    ld b, c
    ld [bc], a
    nop
    inc bc
    inc b
    ld [bc], a
    rst RST_38
    adc b
    ld c, e
    ld b, $24
    inc b
    dec b
    rst RST_38
    nop
    dec b
    ld [bc], a
    ld b, b
    ld b, $02
    inc bc
    rlca
    inc b
    inc h
    inc bc
    dec b
    rst RST_38
    nop
    adc b
    ld [bc], a
    inc h
    dec b
    dec b
    rst RST_38
    ld b, d
    ld [$0200], sp
    add hl, bc
    ld bc, $0a24
    inc bc
    rst RST_38
    ld b, b
    add hl, bc
    ld [bc], a
    inc h
    dec bc
    dec b
    rst RST_38
    ld hl, $020c
    inc h
    dec bc
    dec b
    rst RST_38
    db $10
    inc c
    ld [bc], a
    rst RST_38
    nop
    rrca
    ld [bc], a
    ld b, c
    stop
    rst RST_38
    jr nz, jr_001_445c

    ld [bc], a
    adc b
    ld c, d
    ld b, $24
    inc d
    dec b
    rst RST_38
    ld [bc], a
    inc d
    ld bc, $1524
    dec b
    rst RST_38
    jr nz, jr_001_4470

    ld [bc], a

jr_001_445c:
    inc h
    rlca
    inc bc
    rst RST_38
    ld b, b
    stop
    inc h
    ld de, $ff03
    ld b, d
    ld [de], a
    nop
    jr nz, jr_001_447d

    inc b
    inc h
    inc de
    inc bc

jr_001_4470:
    rst RST_38
    db $10
    ld b, $02
    inc h
    jr @+$05

    adc b
    ld b, a
    ld b, $32
    dec de
    ld [bc], a

jr_001_447d:
    nop
    ld d, $02
    inc b
    rla
    ld bc, $1944
    nop
    ld [de], a
    ld a, [de]
    ld [bc], a
    rst RST_38
    ld b, h
    rla
    nop
    inc b
    inc e
    ld bc, $31ff
    ld e, $02
    ld b, h
    inc e
    nop
    inc b
    dec e
    ld bc, $22ff
    inc hl
    ld [bc], a
    ld b, h
    dec e
    nop
    inc b
    rra
    ld bc, $22ff
    jr z, jr_001_44aa

    ld b, h
    rra

jr_001_44aa:
    nop
    rst RST_38
    inc sp
    ld [hl+], a
    inc bc
    jr nc, jr_001_44c7

    ld [bc], a
    nop
    inc de
    inc b
    rst RST_38
    jr nz, jr_001_44d8

    ld [bc], a
    inc b
    add hl, de
    ld bc, $2144
    nop
    rst RST_38
    rst RST_38
    adc b
    dec c
    ld b, $21
    dec l
    ld [bc], a

jr_001_44c7:
    inc b
    and h
    ld [bc], a
    ld b, h
    xor c
    ld [bc], a
    rst RST_38
    adc b
    dec c
    ld b, $20
    ld sp, $0402
    and l
    ld [bc], a
    ld b, h

jr_001_44d8:
    xor d
    ld [bc], a
    rst RST_38
    adc b
    dec c
    ld b, $21
    inc sp
    ld [bc], a
    inc de
    and [hl]
    ld [bc], a
    ld b, h
    xor e
    ld [bc], a
    rst RST_38
    adc b
    dec c
    ld b, $20
    add hl, sp
    ld [bc], a
    inc b
    and a
    ld [bc], a
    inc b
    xor h
    ld [bc], a
    rst RST_38
    jr nz, @+$1a

    inc b
    inc h
    ld b, c
    inc bc
    rst RST_38
    rst RST_38
    ld b, h
    dec e
    ld b, $04
    dec e
    ld b, $ff
    rst RST_38
    jr nz, jr_001_451e

    ld b, $24
    add hl, de
    ld b, $ff
    adc b
    ld b, a
    ld b, $42
    ld a, [de]
    nop
    rst RST_38
    adc b
    ld c, b
    ld b, $42
    dec de
    nop
    rst RST_38
    adc b
    ld c, l
    ld b, $ff

jr_001_451e:
    inc h
    ld e, $05
    rst RST_38
    ld b, e
    inc hl
    nop
    rst RST_38
    ld b, e
    jr z, jr_001_4529

jr_001_4529:
    rst RST_38
    ld hl, $022f
    inc h
    dec l
    dec b
    rst RST_38
    ld [hl+], a
    cpl
    ld [bc], a
    rst RST_38
    inc h
    jr nc, jr_001_453d

    rst RST_38
    inc h
    ld sp, $ff05

jr_001_453d:
    ld de, $0435
    ld b, c
    scf
    ld [bc], a
    inc h
    inc sp
    dec b
    rst RST_38
    jr nz, jr_001_457f

    ld [bc], a
    inc h
    scf
    dec b
    rst RST_38
    inc h
    ld [hl], $05
    rst RST_38
    jr nz, jr_001_458c

    ld [bc], a
    inc h
    dec [hl]
    inc bc
    rst RST_38
    adc b
    ld a, [hl-]
    ld b, $24
    jr c, jr_001_4564

    rst RST_38
    inc h
    add hl, sp
    dec b
    adc b

jr_001_4564:
    ld c, c
    ld [bc], a
    rst RST_38
    adc b
    dec sp
    ld b, $31
    inc a
    ld [bc], a
    ld de, $043d
    inc h
    ld c, c
    dec b
    rst RST_38
    rst RST_38
    inc h
    inc a
    dec b
    rst RST_38
    jr nc, jr_001_45b9

    ld [bc], a
    ld bc, HeaderManufacturerCode

jr_001_457f:
    inc h
    dec a
    inc bc
    rst RST_38
    ld bc, $0140
    inc h
    ld a, $05
    rst RST_38
    ld b, c
    ld b, b

jr_001_458c:
    nop
    inc h
    ccf
    dec b
    rst RST_38
    ld [hl+], a
    ld b, l
    ld [bc], a
    rst RST_38
    jr nz, jr_001_45d9

    inc b
    ld [bc], a
    ld b, e
    ld bc, $4442
    nop
    inc h
    ld b, [hl]
    inc bc
    rst RST_38
    jr nz, jr_001_45ae

    inc b
    ld b, h
    ld b, h
    nop
    inc b
    ld b, l
    ld bc, $00ff
    ld b, c

jr_001_45ae:
    inc b
    ld [hl+], a
    ld b, e
    ld [bc], a
    rst RST_38
    jr nz, @+$48

    inc b
    rst RST_38
    jr nz, jr_001_45db

jr_001_45b9:
    inc b
    inc h
    ld b, d
    inc bc
    rst RST_38
    rst RST_38
    db $10
    ld c, $02
    rst RST_38
    db $10
    rrca
    ld [bc], a
    rst RST_38
    ld [hl+], a
    jr nc, jr_001_45cc

    rst RST_38
    ld b, e

jr_001_45cc:
    inc h
    nop
    rst RST_38
    ld b, e
    add hl, hl
    nop
    rst RST_38
    ld b, e
    dec h
    nop
    rst RST_38
    ld b, e
    ld a, [hl+]

jr_001_45d9:
    nop
    rst RST_38

jr_001_45db:
    ld b, e
    ld h, $00
    rst RST_38
    ld b, e
    dec hl
    nop
    rst RST_38
    ld b, e
    daa
    nop
    rst RST_38
    ld b, e
    inc l
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38

Call_001_45ef:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    ld d, $00
    ld hl, $4615

jr_001_45fd:
    ld a, [hl+]
    push hl
    push de
    call Call_000_1e8b
    pop de
    pop hl
    inc d
    ld a, d
    cp $23
    jr c, jr_001_45fd

    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    ret


    rlca
    ld a, [bc]
    dec bc
    ld de, $1613
    rla
    add hl, de
    ld a, [de]
    inc e
    dec e
    rra
    ld hl, $2423
    dec h
    ld h, $27
    jr z, jr_001_4652

    ld a, [hl+]
    dec hl
    inc l
    dec [hl]
    scf
    add hl, sp
    dec a
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld c, c
    ld c, h

Call_001_4638:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    ld hl, $465a

jr_001_4644:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_4650

    push hl
    call Call_000_279e
    pop hl
    jr jr_001_4644

jr_001_4650:
    pop hl
    push af

jr_001_4652:
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    ret


    nop
    ld bc, $0902
    inc d
    dec d
    jr @+$1b

    rst RST_38
INCLUDE "scene_res.asm"


    push hl
    push bc
    ld a, $02
    jr jr_001_4934

Call_001_4928:
    push hl
    push bc
    call Call_001_4aac
    xor a
    jr jr_001_4934

Call_001_4930:
    push hl
    push bc
    ld a, $01

jr_001_4934:
    ld [$c194], a

jr_001_4937:
    call Call_001_4949
    jr nz, jr_001_493f

    pop bc
    pop hl
    ret


jr_001_493f:
    ld c, $04

jr_001_4941:
    call Call_000_01b7
    dec c
    jr nz, jr_001_4941

    jr jr_001_4937

Call_001_4949:
    ld a, [$c194]
    rst RST_00
    inc bc
    ld c, d
    ld d, e
    ld c, c
    and b
    ld c, c
    call Call_001_4a6f
    jr nz, jr_001_4959

    ret


jr_001_4959:
    push hl
    push bc
    push de
    ld hl, wBgPal
    call Call_001_4971
    ld hl, wObjPal
    call Call_001_4971
    call Call_000_074b
    pop de
    pop bc
    pop hl
    or $ff
    ret


Call_001_4971:
    ld d, $20

jr_001_4973:
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    call Call_001_4ae5
    ld a, [$c18e]
    call Call_001_4ac9
    ld [$c18e], a
    ld a, [$c18f]
    call Call_001_4ac9
    ld [$c18f], a
    ld a, [$c190]
    call Call_001_4ac9
    ld [$c190], a
    call Call_001_4afe
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    dec d
    jr nz, jr_001_4973

    ret


    call Call_001_4a86
    jr nz, jr_001_49a6

    ret


jr_001_49a6:
    push hl
    push bc
    push de
    ld hl, wBgPal
    ld de, wBgPalNext
    call Call_001_49bb
    call Call_000_074b
    pop de
    pop bc
    pop hl
    or $ff
    ret


Call_001_49bb:
    ld b, $20

jr_001_49bd:
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    call Call_001_4ae5
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    push de
    call Call_001_4b15
    ld a, [$c191]
    ld c, a
    ld a, [$c18e]
    call Call_001_4ac3
    ld [$c18e], a
    ld a, [$c192]
    ld c, a
    ld a, [$c18f]
    call Call_001_4ac3
    ld [$c18f], a
    ld a, [$c193]
    ld c, a
    ld a, [$c190]
    call Call_001_4ac3
    ld [$c190], a
    call Call_001_4afe
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop de
    pop bc
    dec b
    jr nz, jr_001_49bd

    ret


    call Call_001_4a93
    jr nz, jr_001_4a09

    ret


jr_001_4a09:
    push hl
    push bc
    push de
    ld hl, wBgPal
    ld de, wBgPalNext
    call Call_001_4a27
    ld hl, wObjPal
    ld de, wObjPalNext
    call Call_001_4a27
    call Call_000_074b
    pop de
    pop bc
    pop hl
    or $ff
    ret


Call_001_4a27:
    ld b, $20

jr_001_4a29:
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    call Call_001_4ae5
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    push de
    call Call_001_4b15
    ld a, [$c191]
    ld c, a
    ld a, [$c18e]
    call Call_001_4ad8
    ld [$c18e], a
    ld a, [$c192]
    ld c, a
    ld a, [$c18f]
    call Call_001_4ad8
    ld [$c18f], a
    ld a, [$c193]
    ld c, a
    ld a, [$c190]
    call Call_001_4ad8
    ld [$c190], a
    call Call_001_4afe
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop de
    pop bc
    dec b
    jr nz, jr_001_4a29

    ret


Call_001_4a6f:
    push de
    push hl
    ld hl, wBgPal
    ld d, $40

jr_001_4a76:
    ld a, [hl+]
    cp $ff
    jr nz, jr_001_4a83

    ld a, [hl+]
    cp $7f
    jr nz, jr_001_4a83

    dec d
    jr nz, jr_001_4a76

jr_001_4a83:
    pop hl
    pop de
    ret


Call_001_4a86:
    push de
    push bc
    push hl
    ld hl, wBgPal
    ld bc, wBgPalNext
    ld d, $40
    jr jr_001_4a9e

Call_001_4a93:
    push de
    push bc
    push hl
    ld hl, wBgPal
    ld bc, wBgPalNext
    ld d, $80

jr_001_4a9e:
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [hl+]
    cp e
    jr nz, jr_001_4aa8

    dec d
    jr nz, jr_001_4a9e

jr_001_4aa8:
    pop hl
    pop bc
    pop de
    ret


Call_001_4aac:
    push de
    push hl
    push bc
    ld hl, wBgPal
    ld d, $40
    ld bc, $7fff
    xor a

jr_001_4ab8:
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    dec d
    jr nz, jr_001_4ab8

    pop bc
    pop hl
    pop de
    ret


Call_001_4ac3:
    cp c
    ret z

    jr c, jr_001_4acb

    jr jr_001_4ad8

Call_001_4ac9:
    ld c, $1f

jr_001_4acb:
    cp c
    ret z

    inc a
    cp c
    ret z

    inc a
    cp c
    ret z

    inc a
    cp c
    ret z

    inc a
    ret


Call_001_4ad8:
jr_001_4ad8:
    cp c
    ret z

    dec a
    cp c
    ret z

    dec a
    cp c
    ret z

    dec a
    cp c
    ret z

    dec a
    ret


Call_001_4ae5:
    ld a, c
    and $1f
    ld [$c18e], a
    call Call_001_4b45
    ld a, c
    and $1f
    ld [$c18f], a
    call Call_001_4b45
    ld a, c
    and $1f
    ld [$c190], a
    ret


Call_001_4afe:
    ld b, $00
    ld a, [$c190]
    ld c, a
    call Call_001_4b5a
    ld a, [$c18f]
    or c
    ld c, a
    call Call_001_4b5a
    ld a, [$c18e]
    or c
    ld c, a
    ret


Call_001_4b15:
    ld a, c
    and $1f
    ld [$c191], a
    call Call_001_4b45
    ld a, c
    and $1f
    ld [$c192], a
    call Call_001_4b45
    ld a, c
    and $1f
    ld [$c193], a
    ret


    ld b, $00
    ld a, [$c193]
    ld c, a
    call Call_001_4b5a
    ld a, [$c192]
    or c
    ld c, a
    call Call_001_4b5a
    ld a, [$c191]
    or c
    ld c, a
    ret


Call_001_4b45:
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    ret


Call_001_4b5a:
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    ret


    ld bc, $98cf
    ld hl, $4b79
    call Call_000_023e
    ret


    dec b
    dec b
    ld [hl], b

Call_001_4b7c:
    ld hl, $4b95
    call Call_000_01d4
    call SubmitMapQueue
    ld hl, $4c31
    call Call_000_023a
    call SubmitMapQueue
    call $4f4d
    call Call_001_4dea
    ret


    and b
    sbc d
    inc de
    ld [$7f7f], sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld b, e
    sbc d
    ld [$7f02], sp

Jump_001_4c36:
    ld b, $0b
    jr jr_001_4c3c

Jump_001_4c3a:
    ld b, $0c

jr_001_4c3c:
    push af
    ld a, b
    ld [$c5c0], a
    call Call_001_4c49
    pop af
    ld [$c5c0], a
    ret


Call_001_4c49:
    call Call_001_4c84
    ld a, [$c5c0]
    call Call_001_5e0e
    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_4c7d

    ld a, [$c859]
    ld [$c5c0], a

jr_001_4c5f:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    call Call_001_5df1
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    jr jr_001_4c7d

    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_4c5f

jr_001_4c7d:
    ld a, [$c85a]
    ld [$c5c0], a
    ret


Call_001_4c84:
    ld a, [$c5c0]
    cp $0b
    jr z, jr_001_4c90

    cp $0c
    jr z, jr_001_4caa

    ret


jr_001_4c90:
    call Call_001_4cba
    ld a, [$c524]
    ld c, a
    ld a, [$c8c9]
    ld b, a
    ld a, c
    cp b
    jr z, jr_001_4ca0

    ret


jr_001_4ca0:
    ld a, [$c8ca]
    ld [$c8ea], a
    call Call_001_5dbc
    ret


jr_001_4caa:
    call Call_001_4d5b
    ld a, [$c524]
    ld c, a
    ld a, [$c8c9]
    ld b, a
    ld a, c
    cp b
    jr z, jr_001_4ca0

    ret


Call_001_4cba:
    ld a, [$c5c1]
    ld [$c859], a
    ld a, $0b
    ld [$c5c0], a
    ld [$c85a], a

jr_001_4cc8:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    call Call_001_5df1
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    jr jr_001_4ce6

    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_4cc8

jr_001_4ce6:
    ld a, [$c524]
    ld c, a
    ld a, [$c525]
    ld b, a
    ld a, c
    cp b
    jr c, jr_001_4cf3

    ret


jr_001_4cf3:
    ld a, [$c524]
    cp $0b
    jr nc, jr_001_4d26

    cp $02
    jr nc, jr_001_4d17

    cp $01
    jr z, jr_001_4d07

    ld a, $ff
    ld [$c528], a

jr_001_4d07:
    ld a, [$c529]
    cp $ff
    jr nz, jr_001_4d27

    ld d, a
    ld a, [$c524]
    inc a
    ld [$c524], a
    ld a, d

jr_001_4d17:
    ld d, a
    ld a, [$c524]
    inc a
    ld [$c524], a
    ld a, d

jr_001_4d20:
    call Call_001_4b7c
    call Call_001_4dea

jr_001_4d26:
    ret


jr_001_4d27:
    ld d, a
    ld a, [$c528]
    inc a
    ld [$c528], a
    ld a, d
    ld a, [$c529]
    ld c, a
    ld a, [$c528]
    ld b, a
    ld a, c
    cp b
    jr c, jr_001_4d17

    call Call_000_32e0
    call Call_000_3424
    ld a, $5b
    ld [$c867], a
    ld a, $c8
    ld [$c868], a
    call Call_000_3288
    call Call_000_3319
    ld a, [$c524]
    cp $00
    jr z, jr_001_4d17

    jr jr_001_4d20

Call_001_4d5b:
    ld a, [$c5c1]
    ld [$c859], a
    ld a, $0c
    ld [$c5c0], a
    ld [$c85a], a
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    call Call_001_5df1
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    ld a, [$c524]
    cp $00
    ret z

    cp $03
    jr nc, jr_001_4da3

    cp $01
    jr z, jr_001_4d93

    ld a, [$c529]
    inc a
    ld [$c528], a

jr_001_4d93:
    ld a, [$c529]
    cp $ff
    jr nz, jr_001_4db3

    ld d, a
    ld a, [$c524]
    dec a
    ld [$c524], a
    ld a, d

jr_001_4da3:
    ld d, a
    ld a, [$c524]
    dec a
    ld [$c524], a
    ld a, d

jr_001_4dac:
    call Call_001_4b7c
    call Call_001_4dea
    ret


jr_001_4db3:
    ld d, a
    ld a, [$c528]
    dec a
    ld [$c528], a
    ld a, d
    ld a, [$c524]
    cp $02
    jr z, jr_001_4dca

    ld a, [$c528]
    cp $ff
    jr z, jr_001_4da3

jr_001_4dca:
    call Call_000_32e0
    call Call_000_3424
    ld bc, $c85b
    ld a, c
    ld [$c867], a
    ld a, b
    ld [$c868], a
    call Call_000_3288
    call Call_000_3319
    ld a, [$c524]
    cp $02
    jr z, jr_001_4da3

    jr jr_001_4dac

Call_001_4dea:
    ld a, [$c524]
    cp $00
    jr z, jr_001_4e4a

    cp $01
    jr nz, jr_001_4e2a

    ld a, [$c528]
    add a
    ld c, a
    ld b, $00
    ld hl, $c52a
    add hl, bc
    ld a, [hl+]
    cp $02
    jr nz, jr_001_4e2a

    ld a, [hl]
    sla a
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, $c53b
    add hl, bc
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_4e1b

    inc hl

jr_001_4e1b:
    ld bc, $c470
    ld e, $00

jr_001_4e20:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, e
    inc a
    ld e, a
    cp $07
    jr c, jr_001_4e20

jr_001_4e2a:
    xor a
    ld [$c526], a

jr_001_4e2e:
    call Call_001_651d
    call Call_001_6438
    ld a, [$c523]
    and $02
    jr nz, jr_001_4e49

    call Call_001_4e85
    ld a, [$c526]
    inc a
    ld [$c526], a
    cp $08
    jr c, jr_001_4e2e

jr_001_4e49:
    ret


jr_001_4e4a:
    xor a
    ld [$c526], a

jr_001_4e4e:
    call Call_000_33fa
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_4e49

    ld [$c8b6], a
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_4e72

    ld a, [$c8b6]
    sub $20
    ld [$c8b6], a

jr_001_4e72:
    call Call_001_4e85
    ld d, a
    ld a, [$c526]
    inc a
    ld [$c526], a
    ld a, d
    ld a, [$c526]
    cp $08
    jr c, jr_001_4e4e

Call_001_4e85:
    ldh a, [$ff9e]
    push af
    ld a, [$c526]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $4f38
    add hl, bc
    ld a, [hl+]
    ld [$c669], a
    ld a, [hl]
    ld [$c668], a
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_4ec1

    xor a
    ld d, a
    ld a, [$c8b6]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    ld d, a
    ldh a, [$ff9e]
    cp $05
    ld a, d
    jr nc, jr_001_4f2b

    ldh a, [$ff9e]
    ld l, a
    ld h, $00
    ld bc, $4f48
    add hl, bc
    ld a, [hl]
    jr jr_001_4f2b

jr_001_4ec1:
    xor a
    ld d, a
    ld a, [$c8b6]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    ld d, a
    ldh a, [$ff9e]
    cp $00
    ld a, d
    jr nz, jr_001_4ee3

    ld a, [$c524]
    cp $01
    jr nz, jr_001_4edf

    ld a, $02
    jr jr_001_4f2b

jr_001_4edf:
    ld a, $01
    jr jr_001_4f2b

jr_001_4ee3:
    ld d, a
    ldh a, [$ff9e]
    cp $08
    ld a, d
    jr nz, jr_001_4f16

    ld a, [$c524]
    cp $01
    jr z, jr_001_4ef6

    ld a, $03
    jr jr_001_4f2b

jr_001_4ef6:
    ld a, [$c528]
    add a
    ld c, a
    ld b, $00
    ld hl, $c52b
    add hl, bc
    ld a, [hl]
    cp $02
    jr nz, jr_001_4f0a

    ld a, $04
    jr jr_001_4f2b

jr_001_4f0a:
    cp $07
    jr nz, jr_001_4f12

    ld a, $08
    jr jr_001_4f2b

jr_001_4f12:
    ld a, $09
    jr jr_001_4f2b

jr_001_4f16:
    ld d, a
    ldh a, [$ff9e]
    cp $2d
    ld a, d
    jr nz, jr_001_4f2b

    ld a, [$c524]
    cp $01
    jr nz, jr_001_4f29

    ld a, $0a
    jr jr_001_4f2b

jr_001_4f29:
    ld a, $05

jr_001_4f2b:
    ld [$c8e6], a
    call Call_000_107a
    call SubmitMapQueue
    pop af
    ldh [$ff9e], a
    ret


    ld d, $01
    jr jr_001_4f3d

    ld a, [de]

jr_001_4f3d:
    ld bc, $011c
    ld d, $0b
    jr jr_001_4f4f

    ld a, [de]
    dec bc
    inc e
    dec bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $f0
    sbc [hl]

jr_001_4f4f:
    push af
    ld a, [$c528]
    add a
    ldh [$ff9e], a
    ld bc, $c52a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d3
    add hl, bc
    ld [hl], a
    ld bc, $c52b
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d4
    add hl, bc
    ld [hl], a
    ld a, $03
    ld [$c668], a
    ld a, $13
    ld [$c669], a
    call Call_001_4fa1
    xor a
    ld [$c8e6], a
    call Call_000_107a
    call SubmitMapQueue
    pop af
    ldh [$ff9e], a
    ret


Call_001_4fa1:
    ld a, [$c524]
    cp $02
    jr c, jr_001_4faa

    ld a, $02

jr_001_4faa:
    rst RST_00
    or c
    ld c, a
    jp nz, Jump_000_0c4f

    ld d, b
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_4fbc

    ld a, $be
    jr jr_001_4fbe

jr_001_4fbc:
    ld a, $c8

jr_001_4fbe:
    ld [$c8b6], a
    ret


    ldh a, [$ff9e]
    push af
    ld d, a
    ld bc, $c8d3
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_4feb

    ld bc, $656b
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    jr jr_001_4ff6

jr_001_4feb:
    ld bc, $6571
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]

jr_001_4ff6:
    push af
    ld bc, $c8d4
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    add b
    ld [$c8b6], a
    pop af
    ldh [$ff9e], a
    ret


    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_5017

    ld a, $bd
    jr jr_001_5019

jr_001_5017:
    ld a, $c9

jr_001_5019:
    ld [$c8b6], a
    ret
INCLUDE "scene_mask.asm"
    ldh a, [$ff9e]

jr_001_55a6:
    push af
    call Call_001_55ae
    pop af
    ldh [$ff9e], a
    ret


Call_001_55ae:
    call ReadC1Room
    ld a, [$c8ac]
    sub $30
    srl a
    srl a
    srl a
    ld [$c860], a
    ld a, [$c8ab]
    sub $78
    add a
    and $f0
    push af
    ld a, [$c860]
    ld b, a
    pop af
    or b
    ld [$c860], a
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

Jump_001_55db:
    ld a, [$c85e]
    ld c, a
    ld a, [$c85f]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    inc hl
    ld a, [hl]
    and $7f
    call Call_001_42d5
    ld a, [$c523]
    and $01
    jr nz, jr_001_565c

    ld a, [$c85e]
    ld c, a
    ld a, [$c85f]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld c, a
    ld a, [$c860]
    ld b, a
    ld a, c
    cp b
    jr nz, jr_001_565c

    ld d, a
    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    ld a, d
    ld a, [$c85e]
    ld c, a
    ld a, [$c85f]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr z, jr_001_563c

    call Call_001_427a
    ld a, [$c523]
    and $01
    ret nz

    ld a, [$c855]

jr_001_563c:
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c6
    add hl, bc
    ld [hl], a
    ld a, $05
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c5
    add hl, bc
    ld [hl], a
    call Call_000_38c1
    ret


jr_001_565c:
    ldh a, [$ff9e]
    inc a
    inc a
    inc a
    ldh [$ff9e], a
    jp Jump_001_55db


Call_001_5666:
    call Call_001_5673
    call Call_001_63f4
    call Call_001_56a1
    call Call_001_5976
    ret


Call_001_5673:
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_569a

    ld a, [$c8c5]
    ld d, a
    ld a, [$c8c6]
    ld e, a
    ld hl, $59f6

jr_001_5685:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_569a

    cp d
    jr nz, jr_001_5696

    ld a, [hl+]
    cp e
    jr nz, jr_001_5697

    ld a, [hl]
    ld [$c8b1], a
    ret


jr_001_5696:
    inc hl

jr_001_5697:
    inc hl
    jr jr_001_5685

jr_001_569a:
    ld a, [$c8c5]
    ld [$c8b1], a
    ret


Call_001_56a1:
    xor a
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c7
    add hl, bc
    ld [hl], a
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    rst RST_00
    di
    ld d, [hl]
    ret


    ld d, [hl]
    db $f4
    ld d, [hl]
    dec d
    ld d, a
    or a
    ld d, a
    ldh [c], a
    ld d, a
    di
    ld d, [hl]
    ld d, a
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    ld bc, $c4d9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c7
    add hl, bc
    ld [hl], a
    ret


    ld a, [wCaseId]
    cp $00
    ret z

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    inc hl
    ld e, l
    ld d, h
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c53b
    add hl, bc
    ld a, [hl]
    ld [de], a
    ret


    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    push af
    srl a
    srl a
    srl a
    ld [$c865], a
    ldh [$ff9e], a
    pop af
    and $07
    ld [wSceneVariant], a
    ld bc, $c4e9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [wSceneVariant]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    push af
    ld bc, $19a9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr z, jr_001_5767

    ld a, $01
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c7
    add hl, bc
    ld [hl], a

jr_001_5767:
    ld d, a
    ld a, [$c865]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    ld bc, $c4f9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [wSceneVariant]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    push af
    ld bc, $19a9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr nz, jr_001_5798

    ret


jr_001_5798:
    ld a, $02
    push af
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    or b
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c7
    add hl, bc
    ld [hl], a
    ret


    ld d, a
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c7
    add hl, bc
    ld [hl], a
    ret


    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    push af
    srl a
    srl a
    srl a
    ldh [$ff9e], a
    pop af
    and $07
    ld [wSceneVariant], a
    ld bc, $c4c1
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [wSceneVariant]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    push af
    ld bc, $19a9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr nz, jr_001_5823

    ret


jr_001_5823:
    ld a, $04
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c7
    add hl, bc
    ld [hl], a
    ret


Call_001_5833:
    ld d, a
    ld a, $10
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    call Call_001_584e
    ld d, a
    ld a, $00
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    call Call_001_584e
    ret


Call_001_584e:
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    rst RST_00
    di
    ld d, [hl]
    ld l, e
    ld e, b
    pop bc
    ld e, b
    ldh [c], a
    ld e, b
    sub [hl]
    ld e, b
    ld b, l
    ld e, c
    di
    ld d, [hl]
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c4d9
    add hl, bc
    ld [hl], a
    ret


    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c509
    add hl, bc
    ld [hl], a
    ret


    ld a, [wCaseId]
    cp $00
    ret z

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    inc hl
    ld e, l
    ld d, h
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c53b
    add hl, bc
    ld a, [de]
    ld [hl], a
    ret


    call Call_001_58e9
    call Call_001_5916
    ret


Call_001_58e9:
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $01
    jr nz, jr_001_5907

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1ed4
    ret


jr_001_5907:
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1ec5
    ret


Call_001_5916:
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    srl a
    and $01
    jr nz, jr_001_5936

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1f19
    ret


jr_001_5936:
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1f08
    ret


    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    srl a
    srl a
    and $01
    jr nz, jr_001_5967

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1e97
    ret


jr_001_5967:
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1e8b
    ret


Call_001_5976:
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c85f], a
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c860], a
    call Call_000_3424
    ld a, [$c85b]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8cc
    add hl, bc
    ld [hl], a
    ld a, [$c85c]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8cd
    add hl, bc
    ld [hl], a
    ld a, [$c85d]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8ce
    add hl, bc
    ld [hl], a
    ld a, [$c85e]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8cf
    add hl, bc
    ld [hl], a
    ld a, [$c85f]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d0
    add hl, bc
    ld [hl], a
    ld a, [$c860]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d1
    add hl, bc
    ld [hl], a
    ret


    nop
    ld bc, $0001
    ld [bc], a
    ld bc, $0700
    ld bc, $4000
    ld bc, $4e00
    ld bc, $5000
    ld b, $00
    ld e, d
    ld bc, $5b00
    ld bc, $5f00
    ld bc, $6600
    ld bc, $6300
    ld b, $00
    ld l, e
    ld bc, $7000
    ld b, $00
    ld [hl], e
    ld bc, $8000
    ld bc, $8100
    ld bc, $9200
    ld bc, $9400
    ld bc, $9e00
    ld bc, $9f00
    ld bc, $a400
    ld bc, $8800
    ld bc, $8900
    ld bc, $0901
    ld b, $03
    ld de, $0304
    rla
    ld b, $03
    ld a, [de]
    inc b
    inc bc
    ld e, $06
    inc bc
    inc h
    inc b
    inc bc
    cpl
    inc b
    inc bc
    dec sp
    inc b
    inc bc
    ld b, h
    inc b
    inc bc
    ld b, [hl]
    ld b, $03
    ld c, e
    inc b
    inc bc
    ld c, a
    inc b
    inc bc
    ld d, b
    inc b
    inc b
    ld a, [bc]
    inc bc
    dec b
    ld b, $06
    dec b
    dec d
    ld b, $05
    add hl, de
    ld b, $05
    add hl, sp
    ld b, $05
    ld b, [hl]
    ld b, $05
    ld c, b
    ld b, $05
    ld c, c
    ld b, $05
    ld c, d
    ld b, $05
    ld c, e
    ld b, $05
    ld c, h
    ld b, $05
    ld d, e
    ld b, $05
    ld h, l
    ld b, $05
    ld l, b
    ld b, $ff
    ld a, [$c875]
    cp $00
    jr nz, jr_001_5aa1

Call_001_5a94:
    ld a, [$c876]
    ld [$c8ab], a
    ld a, [$c877]
    ld [$c8ac], a
    ret


jr_001_5aa1:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    ld d, a
    ld a, $00
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    call Call_001_5b8b
    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_5b15

    ld a, [$c8c5]
    cp $ff
    jr z, jr_001_5b15

    call Call_001_5666
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_5ad4

    call Call_000_1b87
    jr jr_001_5ad7

jr_001_5ad4:
    call Call_000_3a79

jr_001_5ad7:
    ld a, [$c8ca]
    ld [$c8ea], a
    call Call_001_5dec
    ld a, [$c8da]
    ld [$c8ea], a
    call Call_001_5dec
    call Call_001_5b76
    call Call_001_5833
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_5af9

    call Call_000_3974

jr_001_5af9:
    call Call_001_5be7
    call Call_001_5bf9
    ld a, $bf
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_001_5b15

    ld a, $ff
    ld [$c8b2], a
    ld a, $bf
    call Call_000_1e26

jr_001_5b15:
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    ret


    ld a, [$c523]
    or $04
    ld [$c523], a
    ld a, [$c875]
    cp $00
    jr nz, jr_001_5b32

    call Call_001_5a94
    ret


jr_001_5b32:
    ld d, a
    ld a, $10
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    call Call_001_5b8b
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_5b75

    call Call_001_5666
    call Call_000_1bc1
    call Call_000_01b7
    ld a, [$c8da]
    ld [$c8ea], a
    call Call_001_5dec
    call Call_001_5b76
    ld d, a
    ld a, $00
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    ld a, [$c523]
    and $fb
    ld [$c523], a

jr_001_5b75:
    ret


Call_001_5b76:
    ld a, [$5e7f]
    ld c, a
    ld a, [$5e80]
    ld b, a
    ld hl, $5f6a
    call Call_000_01d8
    call SubmitMapQueue
    call Call_000_01b7
    ret


Call_001_5b8b:
    ld a, [$c8ab]
    ld [$c876], a
    ld a, [$c8ac]
    ld [$c877], a
    ld a, [$c875]
    rst RST_00
    rlca
    ld e, h
    ld [$a55c], sp
    ld e, e
    dec b
    ld e, h
    ld b, $5c
    ldh a, [$ffa0]
    cp $10
    jr nz, jr_001_5bd6

    ld a, [$c8ca]
    ld [$c8ea], a
    call Call_001_5dec
    call Call_001_5bf9
    ld a, [$c523]
    and $fb
    ld [$c523], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_5bca

    ld a, $7f
    jr jr_001_5bcc

jr_001_5bca:
    ld a, $8f

jr_001_5bcc:
    call Call_000_1dda
    ld a, [$c5c1]
    ld [$c5c0], a
    ret


jr_001_5bd6:
    call Call_001_5be2
    call Call_001_5e0e
    ld a, $ff
    ld [$c5c0], a
    ret


Call_001_5be2:
    ld a, $ff
    ld [$c8b2], a

Call_001_5be7:
    ld a, $ff
    ld [$c8b1], a
    ld [$c8b3], a
    ld hl, $c8c5
    ld d, $10

jr_001_5bf4:
    ld [hl+], a
    dec d
    jr nz, jr_001_5bf4

    ret


Call_001_5bf9:
    ld hl, $c8d5
    ld a, $ff
    ld d, $10

jr_001_5c00:
    ld [hl+], a
    dec d
    jr nz, jr_001_5c00

    ret


    ret


    ret


    ret


    ld hl, $c8af
    ld a, [hl]
    ld hl, $5c61
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld hl, $c8b0
    ld [hl], a
    cp $03
    ret nc

    ld a, [$c8af]
    cp $16
    jr z, jr_001_5c57

    cp $15
    jr z, jr_001_5c57

    ld [$c5c0], a
    cp $0a
    jr z, jr_001_5c50

    cp $09
    jr nc, jr_001_5c57

    ld hl, $c523
    ld a, [hl]
    and $04
    jr nz, jr_001_5c57

jr_001_5c39:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    call Call_001_5df1
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    jr jr_001_5c57

jr_001_5c50:
    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_5c39

jr_001_5c57:
    ld a, [$c8b0]
    rst RST_00
    sbc [hl]
    jr jr_001_5cd9

    ld e, h
    ld a, [hl-]
    ld e, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0404
    ld a, [$c5c0]
    cp $09
    jr nc, jr_001_5c92

    ld hl, $c523
    ld a, [hl]
    and $04
    jr z, jr_001_5c8b

    ret


jr_001_5c8b:
    ld a, [$c5c0]
    ld [$c8b2], a
    ret


jr_001_5c92:
    sub $09
    rst RST_00
    push af
    ld e, h
    or h
    ld e, h
    ld c, c
    ld c, h
    ld c, c
    ld c, h
    or e
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    ccf
    add hl, sp
    ret


    ld a, [$c523]
    and $04
    ret nz

    call Call_000_3907
    ldh a, [$ffa0]
    cp $10
    jr nz, jr_001_5ce4

    call Call_001_5bf9
    ld a, [$c523]
    and $fb
    ld [$c523], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_5cd9

    ld a, $7f
    jr jr_001_5cdb

jr_001_5cd9:
    ld a, $8f

jr_001_5cdb:
    call Call_000_1dda
    ld a, [$c5c1]
    ld [$c5c0], a

jr_001_5ce4:
    call Call_001_5be2
    call Call_001_5e0e
    ld a, $ff
    ld [$c5c0], a
    ld a, $ff
    ld [$c8b2], a
    ret


    ld a, [$c8b2]
    cp $ff
    jr nz, jr_001_5cfd

    ret


jr_001_5cfd:
    ld hl, $5f25
    ld a, [$5e7f]
    ld c, a
    ld a, [$5e80]
    ld b, a
    call Call_000_01d8
    call SubmitMapQueue
    call Call_000_01b7
    xor a
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c5
    add hl, bc
    ld [hl], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_5d2a

    ld a, $73
    jr jr_001_5d2c

jr_001_5d2a:
    ld a, $a6

jr_001_5d2c:
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c6
    add hl, bc
    ld [hl], a
    ret


    ld a, [$c8b2]
    cp $ff
    ret z

    ld a, [$c524]
    cp $00
    ret z

    ld hl, $c5c0
    ld a, [hl]
    sub $0d
    ld [$c526], a
    call Call_001_6544
    ld a, [$c523]
    and $02
    jr z, jr_001_5d5a

    ret


jr_001_5d5a:
    ld bc, $c8d3
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl+]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c5
    add hl, bc
    ld [hl], a
    ld bc, $c8d4
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c6
    add hl, bc
    ld [hl], a
    ld a, [$c526]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8ca
    add hl, bc
    ld [hl], a
    ld a, [$c524]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c9
    add hl, bc
    ld [hl], a
    ld bc, $c8ca
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c8ea], a
    call Call_001_5dbc
    ret


Call_001_5dbc:
    ld hl, $5f31

jr_001_5dbf:
    ld a, [$c8ea]
    cp $ff
    ret z

    push hl
    add a
    ld e, a
    ld d, $00
    ld hl, $5ddc
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    pop hl
    call Call_000_01d8
    call SubmitMapQueue
    call Call_000_01b7
    ret


    ret nz

    sbc d
    nop
    sbc e
    ld b, b
    sbc e
    add b
    sbc e
    jp z, $0a9a

    sbc e
    ld c, d
    sbc e
    adc d
    sbc e

Call_001_5dec:
    ld hl, $5f76
    jr jr_001_5dbf

Call_001_5df1:
    call Call_001_5e0e
    ld d, a
    ld a, $00
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    ld a, [$c5c0]
    ld [$c5c1], a
    call Call_001_5e51
    ld a, [$c5c1]
    call Call_001_5e37
    ret


Call_001_5e0e:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    ld d, a
    ld a, $02
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    ld a, [$c5c1]
    call Call_001_5e51
    ld a, [$c5c1]
    call Call_001_5e37
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    ret


Call_001_5e37:
    cp $ff
    ret z

    push hl
    add a
    ld e, a
    ld d, $00
    ld hl, $5e6d
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    pop hl
    call Call_000_01d8
    call SubmitMapQueue
    call Call_000_01a9
    ret


Call_001_5e51:
    cp $ff
    ret z

    push af
    ld bc, $5e97
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl+]
    ld d, a
    ld h, [hl]
    ld l, d
    pop af
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    pop hl
    sbc c
    add sp, -$67
    db $e3
    sbc c
    pop af
    sbc c
    push hl
    sbc c
    ld [$ef99], a
    sbc c
    db $ed
    sbc c
    ld [hl], c
    sbc c
    ld c, a
    sbc b
    ld d, d
    sbc b
    ld l, l
    sbc d
    ld h, b
    sbc d
    ret nz

    sbc d
    jp z, Jump_000_009a

    sbc e
    ld a, [bc]
    sbc e
    ld b, b
    sbc e
    ld c, d
    sbc e
    add b
    sbc e
    adc d
    sbc e
    sbc e
    ld e, [hl]
    push bc
    ld e, [hl]
    rst RST_28
    ld e, [hl]
    push af
    ld e, [hl]
    ei
    ld e, [hl]
    ld bc, $075f
    ld e, a
    dec c
    ld e, a
    inc de
    ld e, a
    add hl, de
    ld e, a
    rra
    ld e, a
    dec h
    ld e, a
    dec hl
    ld e, a
    ld sp, $315f
    ld e, a
    ld sp, $315f
    ld e, a
    ld sp, $315f
    ld e, a
    ld sp, $315f
    ld e, a
    ld sp, $315f
    ld e, a
    inc [hl]
    ld e, a
    ld a, [hl-]
    ld e, a
    ld b, b
    ld e, a
    ld b, [hl]
    ld e, a
    ld c, h
    ld e, a
    ld d, d
    ld e, a
    ld e, b
    ld e, a
    ld e, [hl]
    ld e, a
    ld h, h
    ld e, a
    ld l, d
    ld e, a
    ld [hl], b
    ld e, a
    halt
    ld e, a
    halt
    ld e, a
    halt
    ld e, a
    halt
    ld e, a
    halt
    ld e, a
    halt
    ld e, a
    halt
    ld e, a
    halt
    ld e, a
    halt
    ld e, a
    halt
    ld e, a
    ld [bc], a
    ld [bc], a
    ld a, [de]
    dec de
    ld a, [hl+]
    dec hl
    ld [bc], a
    ld [bc], a
    jr nc, jr_001_5f2a

    ld b, b
    ld b, c
    ld [bc], a
    ld [bc], a
    inc e
    dec e
    inc l
    dec l
    ld [bc], a
    ld [bc], a
    jr c, jr_001_5f3e

    ld c, b
    ld c, c
    ld [bc], a
    ld [bc], a
    ld e, $1f
    ld l, $2f
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    ld b, [hl]
    ld b, a
    ld [bc], a
    ld [bc], a
    inc [hl]
    dec [hl]
    ld b, h
    ld b, l
    ld [bc], a
    ld [bc], a
    jr jr_001_5f3c

    jr z, jr_001_5f4e

    ld [bc], a
    ld [bc], a
    inc d
    dec d
    inc h

jr_001_5f2a:
    dec h
    ld [bc], a
    ld [bc], a
    ld d, $17
    ld h, $27
    ld bc, $7201
    ld [bc], a
    ld [bc], a
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld [bc], a
    ld [bc], a

jr_001_5f3c:
    ld d, [hl]
    ld d, a

jr_001_5f3e:
    ld h, [hl]
    ld h, a
    ld [bc], a
    ld [bc], a
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    ld [bc], a
    ld [bc], a
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld [bc], a
    ld [bc], a

jr_001_5f4e:
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    ld [bc], a
    ld [bc], a
    ld e, b
    ld e, c
    ld l, b
    ld l, c
    ld [bc], a
    ld [bc], a
    ld e, h
    ld e, l
    ld l, h
    ld l, l
    ld [bc], a
    ld [bc], a
    ld e, d
    ld e, e
    ld l, d
    ld l, e
    ld [bc], a
    ld [bc], a
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld [bc], a
    ld [bc], a
    ld a, [hl-]
    dec sp
    ld c, d
    ld c, e
    ld [bc], a
    ld [bc], a
    inc a
    dec a
    ld c, h
    ld c, l
    ld bc, $7101
    xor a
    ld [$c875], a
    ld a, [$c8ab]
    ld [$c876], a
    ld a, [$c8ac]
    ld [$c877], a
    call Call_001_5f9c
    ret


jr_001_5f8d:
    ld a, [$c8af]
    cp $08
    jr c, jr_001_5f98

    ld d, $07
    jr jr_001_5fb4

jr_001_5f98:
    ld d, $12
    jr jr_001_5fb4

Call_001_5f9c:
    ld a, [$c8af]
    cp $17
    jr z, jr_001_5f8d

    cp $15
    jr nc, jr_001_5fc9

    ld a, [$c187]
    bit 6, a
    jr nz, jr_001_5f8d

    bit 7, a
    jr nz, jr_001_5f8d

    ld d, $0c

jr_001_5fb4:
    call Call_000_0456
    ld a, [$c187]
    cp $00
    jr z, jr_001_5fc9

    push de
    call Call_000_19d9
    call Call_000_03fe
    pop de
    dec d
    jr nz, jr_001_5fb4

jr_001_5fc9:
    call Call_000_19d9
    call Call_000_03fe
    call Call_000_0456
    ld a, [$c187]
    cp $00
    jr z, jr_001_5fc9

    and $f0
    jp nz, Jump_001_60b7

    ld a, [$c188]
    cp $00
    jr z, jr_001_5fc9

    bit 0, a
    jr nz, jr_001_6002

    bit 1, a
    jr nz, jr_001_6012

    bit 3, a
    jr nz, jr_001_5ff3

    jr jr_001_5fc9

jr_001_5ff3:
    ld a, $16
    ld [$c8af], a
    ld a, $38
    ld [$c876], a
    ld [$c877], a
    ret


    ret


jr_001_6002:
    ld a, $19
    call Call_000_080e
    ld a, $05
    call Call_000_0753
    ld a, $01
    ld [$c875], a
    ret


jr_001_6012:
    ld a, $02
    ld [$c875], a
    ret


Call_001_6018:
    ld a, [$c187]
    bit 4, a
    jr nz, jr_001_603f

    bit 5, a
    jr nz, jr_001_6046

    bit 7, a
    jr nz, jr_001_6038

    bit 6, a
    ret z

    ld a, [$c8ac]
    cp $00
    ret z

    dec a
    jr z, jr_001_6034

    dec a

jr_001_6034:
    ld [$c877], a
    ret


jr_001_6038:
    ld a, [$c8ac]
    inc a
    inc a
    jr jr_001_6034

jr_001_603f:
    ld a, [$c8ab]
    inc a
    inc a
    jr jr_001_6050

jr_001_6046:
    ld a, [$c8ab]
    cp $00
    ret z

    dec a
    jr z, jr_001_6050

    dec a

jr_001_6050:
    ld [$c876], a
    ret


Call_001_6054:
    ld a, [$c187]
    bit 4, a
    jr nz, jr_001_6068

    bit 5, a
    jr nz, jr_001_6074

    bit 7, a
    jr nz, jr_001_6086

    bit 6, a
    jr nz, jr_001_607d

    ret


jr_001_6068:
    ld a, [$c8ab]
    add $08
    cp $a0
    ret nc

    ld [$c876], a
    ret


jr_001_6074:
    ld a, [$c8ab]
    sub $08
    ld [$c876], a
    ret


jr_001_607d:
    ld a, [$c8ac]
    sub $08
    ld [$c877], a
    ret


jr_001_6086:
    ld a, [$c8ac]
    add $08
    ld [$c877], a
    ret


Call_001_608f:
    call Call_001_61ba

Call_001_6092:
    ld a, [$c8ab]
    sub $05
    ldh [$ff92], a
    push bc
    ld a, [$c197]
    ld b, a
    ld a, [$c8ac]
    sub b
    ldh [$ff93], a
    pop bc
    ld a, $80
    jp Jump_000_1a11


Call_001_60aa:
    ld a, [$c876]
    ld [$c8ab], a
    ld a, [$c877]
    ld [$c8ac], a
    ret


Jump_001_60b7:
    ld a, [$c8af]
    cp $17
    jr z, jr_001_60fa

    cp $15
    jr nc, jr_001_6129

    ld a, [$c187]
    swap a
    and $0f
    ld e, a
    ld d, $00
    ld hl, $619b
    add hl, de
    ld a, [hl]
    cp $04
    ret z

    ld [$c855], a
    ld e, a
    ld a, [$c8af]
    add a
    add a
    or e
    ld e, a
    ld d, $00
    ld hl, $62d8
    add hl, de
    ld a, [hl]
    cp $18
    jp z, Jump_001_4c36

    cp $19
    jp z, Jump_001_4c3a

    cp $ff
    ret z

    ld [$c8af], a
    call $6187
    ret


jr_001_60fa:
    call Call_001_6054
    ld a, [$c876]
    cp $78
    jr c, jr_001_6121

    ld a, [$c877]
    cp $30
    jr c, jr_001_6112

    cp $58
    ret c

    ld a, $08
    jr jr_001_6123

jr_001_6112:
    ld a, [$c876]
    cp $90
    jr c, jr_001_611d

    ld a, $0a
    jr jr_001_6123

jr_001_611d:
    ld a, $09
    jr jr_001_6123

jr_001_6121:
    ld a, $15

jr_001_6123:
    ld [$c8af], a
    jp $6187


jr_001_6129:
    call Call_001_6018
    ld a, [$c876]
    cp $70
    jr nc, jr_001_615f

    ld a, [$c877]
    cp $70
    ret c

    ld a, [$c876]
    srl a
    srl a
    srl a
    ld e, a
    ld d, $00
    ld hl, $6150
    add hl, de
    ld a, [hl]
    ld [$c8af], a
    jp $6187


    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    dec b
    dec b
    dec b
    rlca
    rlca

jr_001_615f:
    ld a, [$c877]
    srl a
    srl a
    srl a
    ld e, a
    ld d, $00
    ld hl, $6177
    add hl, de
    ld a, [hl]
    ld [$c8af], a
    call $6187
    ret


    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rla
    rla
    rla
    rla
    rla
    rla
    ld [$0808], sp
    ld [$fa08], sp
    xor a
    ret z

    add a
    ld e, a
    ld d, $00
    ld hl, $62a8
    add hl, de
    ld a, [hl+]
    ld [$c876], a
    ld a, [hl]
    ld [$c877], a
    ret


    inc b
    nop
    ld bc, $0304
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_001_61ab:
    ld [$c197], a
    ld [$c184], a
    call Call_001_6092
    call Call_000_19c5
    call Call_000_03fe

Call_001_61ba:
    ld a, [$c8af]
    cp $15
    jr c, jr_001_61c4

    xor a
    jr jr_001_61cc

Call_001_61c4:
jr_001_61c4:
    ld e, a
    ld d, $00
    ld hl, $6380
    add hl, de
    ld a, [hl]

jr_001_61cc:
    cp $ff
    ret z

    cp $00
    jr z, jr_001_61de

    cp $60
    jr z, jr_001_61de

    ld [$c197], a
    ld [$c184], a
    ret


jr_001_61de:
    ld b, a
    ld a, [$c197]
    cp b
    ret z

    jr c, jr_001_61ea

    sub $08
    jr jr_001_61ab

jr_001_61ea:
    add $08
    jr jr_001_61ab

    push af
    push bc
    push de
    push hl
    call Call_001_61fa
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_001_61fa:
jr_001_61fa:
    ld a, [$c197]
    cp $00
    ret z

    sub $08
    ld [$c197], a
    ld [$c184], a
    call Call_000_19c5
    call Call_000_03fe
    jr jr_001_61fa

    ld a, [$c468]
    cp $ff
    jr z, jr_001_6238

    ld a, $0d
    ld [$c8af], a

jr_001_621c:
    call Call_001_626f
    call Call_001_60aa
    call Call_001_608f
    call Call_000_19c5
    call Call_000_03fe
    ld a, [$c188]

jr_001_622e:
    bit 0, a
    jr nz, jr_001_6241

jr_001_6232:
    bit 1, a
    jr nz, jr_001_623d

    jr jr_001_621c

jr_001_6238:
    ld a, $69
    call Call_000_1c6d

jr_001_623d:
    ld a, $ff
    jr jr_001_6259

jr_001_6241:
    ld a, $19
    call Call_000_080e
    ld a, [$c8af]
    sub $0d
    ld [$c8ea], a
    call Call_001_5dbc
    ld a, $10
    call Call_000_0753
    ld a, [$c8af]

jr_001_6259:
    ld [$c884], a
    ld a, $10
    ld [$c8ab], a
    ld a, $80
    ld [$c8ac], a
    ld a, $00
    ld [$c8af], a
    call Call_001_61c4
    ret


Call_001_626f:
jr_001_626f:
    call Call_000_0456
    ld a, [$c188]
    bit 0, a
    ret nz

    bit 1, a
    ret nz

    ld a, [$c188]
    swap a
    and $0f
    ld e, a
    ld d, $00
    ld hl, $619b
    add hl, de
    ld a, [hl]
    cp $04
    jr z, jr_001_626f

    ld e, a
    ld a, [$c8af]
    add a
    add a
    or e
    ld e, a
    ld d, $00
    ld hl, $632c
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_001_626f

    ld [$c8af], a
    call $6187
    ret


    db $10
    add b
    ld c, b
    add b
    jr nz, jr_001_622e

    sub b
    add b
    jr nc, jr_001_6232

    ld e, b
    add b
    add b
    add b
    ld [hl], b
    add b
    sub b
    ld h, b
    add b
    jr @-$66

    jr jr_001_632b

    sbc h
    inc b
    sbc h
    inc b
    or h
    inc b
    call nz, $d404
    inc b
    db $e4
    ld d, h
    or h
    ld d, h
    call nz, $d454
    ld d, h
    db $e4
    ld h, h
    inc [hl]
    jr c, jr_001_6330

    adc h
    ld b, h
    ld [bc], a
    inc bc
    inc c
    ld d, $05
    inc b
    dec bc
    ld d, $04
    nop
    inc c
    ld d, $00
    ld b, $0b
    ld [$0201], sp
    inc c
    ld d, $07
    ld bc, $160b
    inc bc
    rlca
    dec bc
    ld [$0506], sp
    dec bc
    ld [$15ff], sp
    inc bc
    rla
    ld a, [bc]
    dec d
    rla
    rst RST_38
    rst RST_38
    add hl, bc
    rla
    rst RST_38
    jr jr_001_6312

    ld de, $0b07
    add hl, de
    dec c
    nop
    ld de, $0e19
    inc c
    ld [de], a
    add hl, de

jr_001_6312:
    rrca
    dec c
    inc de
    add hl, de
    db $10
    ld c, $14
    add hl, de
    rst RST_38
    rrca
    jr jr_001_632b

    ld [de], a
    dec bc
    jr jr_001_6330

    inc de
    ld de, $0f18
    inc d
    ld [de], a
    jr jr_001_633a

    rst RST_38

jr_001_632b:
    inc de
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38

jr_001_6330:
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

jr_001_633a:
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
    ld de, $0eff
    rst RST_38
    ld [de], a
    rst RST_38
    rrca
    dec c
    inc de
    rst RST_38
    db $10
    ld c, $14
    rst RST_38
    rst RST_38
    rrca
    rst RST_38
    dec c
    ld [de], a
    rst RST_38
    rst RST_38
    ld c, $13
    ld de, $0fff
    inc d
    ld [de], a
    rst RST_38
    db $10
    rst RST_38
    inc de
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    call Call_001_63ac
    ld a, [$c8b7]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d2
    add hl, bc
    ld [hl], a
    ret


Call_001_63ac:
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_63c6

    ld bc, $63e7
    jr jr_001_63c9

jr_001_63c6:
    ld bc, $63ed

jr_001_63c9:
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_63e6

    add a
    add a
    add a
    add a
    add a
    push af
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    or b
    ld [$c8b7], a

jr_001_63e6:
    ret


    rst RST_38
    inc b
    dec b
    nop
    inc bc
    rst RST_38
    rst RST_38
    dec b
    ld b, $00
    inc b
    rst RST_38
    rlca

Call_001_63f4:
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d3
    add hl, bc
    ld [hl], a
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d4
    add hl, bc
    ld [hl], a
    call Call_001_6438
    ld a, [$c8b6]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8cb
    add hl, bc
    ld [hl], a
    ret


Call_001_6438:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_646c

    ld bc, $c8d3
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld bc, $656b
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_6465

    push af
    ld bc, $c8d4
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    add b

jr_001_6465:
    ld [$c8b6], a
    call Call_001_6496
    ret


jr_001_646c:
    ld bc, $c8d3
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld bc, $6571
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_6492

    push af
    ld bc, $c8d4
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    add b

jr_001_6492:
    ld [$c8b6], a
    ret


Call_001_6496:
    ldh a, [$ffa0]
    ld c, a
    ld b, $00
    ld hl, $c8d3
    add hl, bc
    ld a, [hl]
    cp $03
    ret nz

    ld c, $00
    ld a, [$c8b6]
    cp $3d
    jr z, jr_001_650b

    cp $3e
    jr z, jr_001_650b

    cp $3f
    jr z, jr_001_650b

    cp $40
    jr z, jr_001_650b

    cp $41
    jr z, jr_001_650b

    cp $42
    jr z, jr_001_650b

    cp $43
    jr z, jr_001_650b

    cp $49
    jr z, jr_001_650b

    inc c
    cp $4a
    jr z, jr_001_650b

    cp $4f
    jr z, jr_001_650b

    cp $50
    jr z, jr_001_650b

    cp $51
    jr z, jr_001_650b

    cp $52
    jr z, jr_001_650b

    cp $53
    jr z, jr_001_650b

    inc c
    cp $54
    jr z, jr_001_650b

    inc c
    cp $55
    jr z, jr_001_650b

    cp $56
    jr z, jr_001_650b

    cp $57
    jr z, jr_001_650b

    inc c
    cp $58
    jr z, jr_001_650b

    cp $59
    jr z, jr_001_650b

    inc c
    cp $5a
    jr z, jr_001_650b

    inc c
    cp $5b
    jr z, jr_001_650b

    cp $5c
    jr z, jr_001_650b

    ret


jr_001_650b:
    ld b, $00
    ld hl, $6516
    add hl, bc
    ld a, [hl]
    ld [$c8b6], a
    ret


    ld [$072d], sp
    jr z, jr_001_6544

    inc sp
    dec [hl]

Call_001_651d:
    ld a, [$c523]
    and $fd
    ld [$c523], a
    call Call_000_33fa
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_001_6540

    ld a, [$c523]
    or $02
    ld [$c523], a
    ret


jr_001_6540:
    call Call_000_382c
    ret


Call_001_6544:
jr_001_6544:
    ld a, [$c523]
    and $fd
    ld [$c523], a
    call Call_000_33fa
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_001_6567

    ld a, [$c523]
    or $02
    ld [$c523], a
    ret


jr_001_6567:
    call Call_000_3811
    ret


    rst RST_38
    ret nc

    ldh [rP1], a
    ld b, b
    rst RST_38
    rst RST_38
    sub b
    and b
    nop
    ld [hl], b
    rst RST_38
    ret nz

    call Call_001_4336
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a

jr_001_6587:
    ld a, [$c85e]
    ld l, a
    ld a, [$c85f]
    ld h, a
    ld a, [hl+]
    cp $ff
    ret z

    ld a, [hl+]
    and $7f
    cp d
    jr z, jr_001_659e

    call NextC1State
    jr jr_001_6587

jr_001_659e:
    ld a, [hl]
    ld [$c640], a
    ret


; Advance the room record pointer by three bytes.
NextC1State:
Call_001_65a3:
    push hl
    ld a, [$c85e]
    ld l, a
    ld a, [$c85f]
    ld h, a
    inc hl
    inc hl
    inc hl
    ld a, l
    ld [$c85e], a
    ld a, h
    ld [$c85f], a
    pop hl
    ret
INCLUDE "c1_scene.asm"


    call $d066
    ld h, [hl]
    db $d3
    ld h, [hl]
    ret c

    ld h, [hl]
    db $dd
    ld h, [hl]
    ldh [$ff66], a
    push hl
    ld h, [hl]
    add sp, $66
    db $ed
    ld h, [hl]
    ldh a, [$ff66]
    di
    ld h, [hl]
    or $66
    ei
    ld h, [hl]
    nop
    ld h, a
    inc bc
    ld h, a
    ld b, $67
    add hl, bc
    ld h, a
    inc c
    ld h, a
    dec e
    ld h, a
    rra
    ld h, a
    ld [hl+], a
    ld h, a
    inc h
    ld h, a
    ld h, $67
    add hl, hl
    ld h, a
    inc l
    ld h, a
    ld l, $67
    inc sp
    ld h, a
    jr c, @+$69

    dec a
    ld h, a
    ld b, b
    ld h, a
    ld b, e
    ld h, a
    ld b, l
    ld h, a
    ld b, a
    ld h, a
    ld c, c
    ld h, a
    ld c, e
    ld h, a
    ld c, [hl]
    ld h, a
    ld d, c
    ld h, a
    ld d, h
    ld h, a
    ld d, [hl]
    ld h, a
    ld e, b
    ld h, a
    ld e, d
    ld h, a
    ld e, l
    ld h, a
    ld h, b
    ld h, a
    ld h, d
    ld h, a
    ld h, h
    ld h, a
    ld h, [hl]
    ld h, a
    ld l, c
    ld h, a
    ld l, e
    ld h, a
    ld l, [hl]
    ld h, a
    ld [hl], c
    ld h, a
    ld [hl], e
    ld h, a
    ld a, b
    ld h, a
    ld a, e
    ld h, a
    ld a, l
    ld h, a
    add d
    ld h, a
    add l
    ld h, a
    adc b
    ld h, a
    adc d
    ld h, a
    adc h
    ld h, a
    adc [hl]
    ld h, a
    sub b
    ld h, a
    sub d
    ld h, a
    sub l
    ld h, a
    sub a
    ld h, a
    sbc d
    ld h, a
    sbc l
    ld h, a
    and b
    ld h, a
    and d
    ld h, a
    and h
    ld h, a
    and [hl]
    ld h, a
    xor b
    ld h, a
    xor d
    ld h, a
    xor h
    ld h, a
    xor [hl]
    ld h, a
    or b
    ld h, a
    or d
    ld h, a
    or h
    ld h, a
    or [hl]
    ld h, a
    nop
    ld bc, $02ff
    inc bc
    rst RST_38
    inc b
    ld b, $05
    rlca
    rst RST_38
    ld [$090a], sp
    dec bc
    rst RST_38
    inc c
    dec c
    rst RST_38
    ld c, $0f
    db $10
    ld de, $12ff
    inc de
    rst RST_38
    ld d, $14
    rla
    dec d
    rst RST_38
    add hl, de
    jr @+$01

    ld a, [de]
    dec de
    rst RST_38
    dec e
    inc e
    rst RST_38
    jr nz, jr_001_6719

    ld [hl+], a
    inc hl
    rst RST_38
    jr z, jr_001_6726

    ld a, [hl+]
    dec hl
    rst RST_38
    inc l
    dec l
    rst RST_38
    ld l, $2f
    rst RST_38
    inc h
    dec h
    rst RST_38
    ld h, $27
    rst RST_38
    jr nc, jr_001_6741

    inc [hl]
    ld a, [hl-]
    ld [hl-], a
    jr c, jr_001_674c

    ld a, $31
    ld [hl], $37
    dec a
    dec [hl]

jr_001_6719:
    dec sp
    inc a
    ccf
    rst RST_38
    ld b, l
    rst RST_38
    ld b, a
    ld c, b
    rst RST_38
    ld c, e
    rst RST_38
    ld c, l
    rst RST_38

jr_001_6726:
    ld d, c
    ld d, d
    rst RST_38
    ld c, [hl]
    ld c, a
    rst RST_38
    ld d, b
    rst RST_38
    ld e, h
    ld e, [hl]
    ld e, l
    ld e, a
    rst RST_38
    ld h, [hl]
    ld l, b
    ld h, a
    ld l, c
    rst RST_38
    ld l, e
    ld l, l
    ld l, h
    ld l, [hl]
    rst RST_38
    ld [hl], a
    ld a, b
    rst RST_38
    adc e

jr_001_6741:
    adc h
    rst RST_38
    ld d, h
    rst RST_38
    ld d, e
    rst RST_38
    ld d, l
    rst RST_38
    ld d, [hl]
    rst RST_38
    ld b, e

jr_001_674c:
    ld b, h
    rst RST_38
    ld b, c
    ld b, d
    rst RST_38
    adc l
    adc [hl]
    rst RST_38
    ld c, d
    rst RST_38
    ld e, b
    rst RST_38
    ld e, d
    rst RST_38
    ld h, b
    ld h, c
    rst RST_38
    ld h, d
    ld h, e
    rst RST_38
    ld h, l
    rst RST_38
    ld l, d
    rst RST_38
    ld l, a
    rst RST_38
    ld [hl], b
    ld [hl], c
    rst RST_38
    ld [hl], d
    rst RST_38
    ld [hl], e
    ld [hl], h
    rst RST_38
    ld [hl], l
    halt
    rst RST_38
    ld a, c
    rst RST_38
    ld a, e
    ld a, d
    ld a, h
    ld a, e
    rst RST_38
    adc a
    sbc b
    rst RST_38
    ld a, l
    rst RST_38
    ld a, [hl]
    ld a, a
    add b
    add c
    rst RST_38
    add d
    add e
    rst RST_38
    add h
    add l
    rst RST_38
    add [hl]
    rst RST_38
    add a
    rst RST_38
    adc b
    rst RST_38
    adc c
    rst RST_38
    adc d
    rst RST_38
    adc e
    adc h
    rst RST_38
    ld d, a
    rst RST_38
    dec e
    rra
    rst RST_38
    dec e
    ld e, $ff
    ld h, d
    ld h, h
    rst RST_38
    ld e, b
    rst RST_38
    ld e, d
    rst RST_38
    ld e, b
    rst RST_38
    ld e, d
    rst RST_38
    ld e, b
    rst RST_38
    ld e, d
    rst RST_38
    ld e, b
    rst RST_38
    ld e, d
    rst RST_38
    ld b, b
    rst RST_38
    ld b, [hl]
    rst RST_38
    ld c, c
    rst RST_38
    ld c, h
    rst RST_38
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$0200], sp
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc b
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
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

Call_001_6806:
    push hl
    push bc
    push de
    call Call_000_07af
    call Call_001_6826
    call Call_000_07b5
    pop de
    pop bc
    pop hl
    ret


Call_001_6816:
    push hl
    push bc
    push de
    call Call_000_07af
    call Call_001_6841
    call Call_000_07b5
    pop de
    pop bc
    pop hl
    ret


Call_001_6826:
    ld hl, $6862
    ld bc, $a000
    ld d, $08

jr_001_682e:
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [hl+]
    cp e
    jr nz, jr_001_684b

    dec d
    jr nz, jr_001_682e

    ld a, [bc]
    cp $05
    jr nc, jr_001_684b

    ld [$c163], a
    ret


Call_001_6841:
    ld d, $08
    call Call_001_6855
    ld a, [$c163]
    ld [bc], a
    ret


jr_001_684b:
    ld d, $09
    call Call_001_6855
    xor a
    ld [$c163], a
    ret


Call_001_6855:
    ld hl, $6862
    ld bc, $a000

jr_001_685b:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_001_685b

    ret


    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    ld e, d
    ld e, c
    ld e, d
    nop

Call_001_686b:
    push hl
    push bc
    push de
    call Call_000_07af
    call Call_001_6917
    xor a
    ld [$c864], a
    call Call_001_69d3
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    ld bc, $c420
    ld de, $017a

jr_001_6889:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6889

    call Call_000_07b5
    pop de
    pop bc
    pop hl
    ret


    push hl
    push bc
    push de
    call Call_000_07af
    call Call_001_68aa
    call Call_000_07b5
    pop de
    pop bc
    pop hl
    ret


Call_001_68aa:
    push hl
    push bc
    push de
    xor a
    ld [$c864], a

jr_001_68b1:
    call Call_001_69d3
    call Call_001_6a32
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    ld bc, $c420
    ld de, $017a

jr_001_68c5:
    ld a, [bc]
    inc bc
    ld [hl+], a
    call Call_001_6a3a
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_68c5

    call Call_001_6a4d
    call Call_001_6aa4
    ld a, [$c864]
    inc a
    ld [$c864], a
    cp $04
    jr nz, jr_001_68b1

    pop de
    pop bc
    pop hl
    ret


    call Call_000_07af
    call Call_001_6a09
    call Call_000_07b5
    ret


    ldh a, [$ffad]
    push af
    call Call_000_07af
    xor a
    ldh [$ffad], a
    ld [$c875], a
    call Call_001_6917
    ldh a, [$ffad]
    inc a
    ldh [$ffad], a
    call Call_001_6917
    ldh a, [$ffad]
    inc a
    ldh [$ffad], a
    call Call_001_6917
    call Call_000_07b5
    pop af
    ldh [$ffad], a
    ret


Call_001_6917:
    xor a
    ld [$c864], a

jr_001_691b:
    call Call_001_6a32
    call Call_001_69d3
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    ld de, $017a

jr_001_692c:
    ld a, [hl+]
    call Call_001_6a3a
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_692c

    call Call_001_6a81
    jr nz, jr_001_6941

    call Call_001_6a60
    jr z, jr_001_6950

jr_001_6941:
    ld a, [$c864]
    inc a
    ld [$c864], a
    cp $04
    jr nz, jr_001_691b

    call Call_001_6a09
    ret


jr_001_6950:
    call Call_001_6982
    ld hl, $697f
    ldh a, [$ffad]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld b, a
    ld a, [$c875]
    or b
    ld [$c875], a
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    ld bc, $0179
    add hl, bc
    ld a, [hl]
    push af
    ldh a, [$ffad]
    ld l, a
    ld h, $00
    ld bc, $c5dc
    add hl, bc
    pop af
    ld [hl], a
    ret


    ld bc, $0402

Call_001_6982:
    push hl
    push de
    ld a, [$c864]
    cp $00
    jr z, jr_001_69d0

    call Call_001_69d3
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    ld bc, $be00
    ld de, $0180

jr_001_699c:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_699c

    xor a
    ld [$c864], a

jr_001_69aa:
    call Call_001_69d3
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    ld bc, $be00
    ld de, $0180

jr_001_69bb:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_69bb

    ld a, [$c864]
    inc a
    ld [$c864], a
    cp $04
    jr nz, jr_001_69aa

jr_001_69d0:
    pop de
    pop hl
    ret


Call_001_69d3:
    push bc
    ldh a, [$ffad]
    add a
    add a
    add a
    add $a0
    ld b, a
    ld a, $10
    ld c, a
    ld a, [$c864]
    add a
    ld h, a
    ld l, $00
    add hl, bc
    ld a, l
    ld [$c855], a
    ld a, h
    ld [$c856], a
    ld bc, $017a
    add hl, bc
    ld a, l
    ld [$c857], a
    ld a, h
    ld [$c858], a
    ld bc, $0004
    add hl, bc
    ld a, l
    ld [$c859], a
    ld a, h
    ld [$c85a], a
    pop bc
    ret


Call_001_6a09:
    xor a
    ld [$c864], a

jr_001_6a0d:
    call Call_001_6a1c
    ld a, [$c864]
    inc a
    ld [$c864], a
    cp $04
    jr nz, jr_001_6a0d

    ret


Call_001_6a1c:
    push hl
    push de
    call Call_001_69d3
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    xor a
    ld d, a

jr_001_6a2b:
    ld [hl+], a
    inc d
    jr nz, jr_001_6a2b

    pop de
    pop hl
    ret


Call_001_6a32:
    xor a
    ld [$c865], a
    ld [wSceneVariant], a
    ret


Call_001_6a3a:
    push bc
    ld b, a
    ld a, [$c865]
    add b
    ld [$c865], a
    ld a, [wSceneVariant]
    adc $00
    ld [wSceneVariant], a
    pop bc
    ret


Call_001_6a4d:
    push hl
    ld a, [$c859]
    ld l, a
    ld a, [$c85a]
    ld h, a
    ld a, [$c865]
    ld [hl+], a
    ld a, [wSceneVariant]
    ld [hl+], a
    pop hl
    ret


Call_001_6a60:
    push hl
    push bc
    ld a, [$c859]
    ld l, a
    ld a, [$c85a]
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, [$c865]
    cp b
    jr nz, jr_001_6a7c

    ld a, [hl+]
    ld b, a
    ld a, [wSceneVariant]
    jr nz, jr_001_6a7c

    xor a
    jr jr_001_6a7e

jr_001_6a7c:
    or $ff

jr_001_6a7e:
    pop bc
    pop hl
    ret


Call_001_6a81:
    push hl
    push bc
    push de
    ld a, [$c857]
    ld l, a
    ld a, [$c858]
    ld h, a
    ld bc, $6b65
    ld d, $04

jr_001_6a91:
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc bc
    cp e
    jr nz, jr_001_6a9e

    dec d
    jr nz, jr_001_6a91

    xor a
    jr jr_001_6aa0

jr_001_6a9e:
    or $ff

jr_001_6aa0:
    pop de
    pop bc
    pop hl
    ret


Call_001_6aa4:
    push hl
    push bc
    push de
    ld a, [$c857]
    ld l, a
    ld a, [$c858]
    ld h, a
    ld bc, $6b65
    ld d, $04

jr_001_6ab4:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, jr_001_6ab4

    pop de
    pop bc
    pop hl
    ret


    push hl
    push de
    ld hl, $c420
    ld de, $017a
    xor a
    call Call_001_6ad0
    call Call_001_6c0e
    pop de
    pop hl
    ret


Call_001_6ad0:
jr_001_6ad0:
    ld [hl+], a
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6ad0

    ret


    push hl
    push bc
    push de
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_6af1

    ld a, $b0
    call Call_000_1dac
    jr z, jr_001_6af8

    ld a, $b0
    call Call_000_1e26
    jr jr_001_6b23

jr_001_6af1:
    ld a, [wRoomId]
    cp $62
    jr nc, jr_001_6b23

jr_001_6af8:
    call Call_000_07af
    call Call_001_6a32
    ld de, $017a
    ld hl, $c420
    ld bc, $be00

jr_001_6b07:
    ld a, [hl+]
    ld [bc], a
    inc bc
    call Call_001_6a3a
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6b07

    ld a, [$c865]
    ld [$bf7e], a
    ld a, [wSceneVariant]
    ld [$bf7f], a
    call Call_000_07b5

jr_001_6b23:
    pop de
    pop bc
    pop hl
    ret


    push hl
    push bc
    push de
    call Call_000_07af
    call Call_001_6a32
    ld de, $017a
    ld hl, $c420
    ld bc, $be00

jr_001_6b39:
    ld a, [bc]
    inc bc
    ld [hl+], a
    call Call_001_6a3a
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6b39

    ld a, [$bf7e]
    ld b, a
    ld a, [$c865]
    cp b
    jr nz, jr_001_6b5e

    ld a, [$bf7f]
    ld b, a
    ld a, [wSceneVariant]
    cp b
    jr nz, jr_001_6b5e

    pop de
    pop bc
    pop hl
    ret


jr_001_6b5e:
    call Call_001_686b
    pop de
    pop bc
    pop hl
    ret


    ld h, h
    ld h, l
    ld l, d
    ld h, c
    halt
    ld [hl], l
    ld a, $ff
    ldh [hBgLoaded], a
    ldh [hObjLoaded], a
    xor a
    ld [$c197], a
    ld [$c184], a
    ld a, $10
    ld [$c8ab], a
    ld a, $80
    ld [$c8ac], a
    call Call_001_4930
    call Call_000_0722
    call Call_000_0420
    ld a, $03
    call Call_000_1b39
    call Call_000_0a00
    call Call_000_072a
    call Call_000_044b
    call Call_000_0416
    call Call_001_4219
    call Call_001_4b7c
    call Call_001_45ef
    ld a, [$c8e8]
    cp $00
    jr nz, jr_001_6bb6

    call Call_000_0416
    ld a, $8f
    ld [wSceneId], a
    jr jr_001_6bc2

jr_001_6bb6:
    call LoadC1Pal
    call Call_000_19d9
    call Call_000_03fe
    call Call_000_0ed5

jr_001_6bc2:
    call RedrawScene
    call Call_001_4928
    ld hl, $c8ad
    ld a, $ff
    ld d, $18
    call Call_001_6c8e
    ld a, $ff
    ld hl, $c5c0
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c8af], a
    ld a, $be
    call Call_000_1dac
    ld a, [$c523]
    and $01
    ret nz

    ld a, $5a
    call Call_000_0753
    xor a
    ld [wSceneId], a
    ld a, $06
    ld [$c640], a
    call ShowScene
    ld a, $be
    call Call_000_1dda
    ld a, $fe
    ld [$c8e8], a
    call Call_000_0ed5
    call Call_000_388b
    xor a
    call Call_000_1c59
    ret


Call_001_6c0e:
    ld a, $ff
    ld d, $20
    ld hl, $c8a5
    call Call_001_6c8e
    xor a
    ld [$c8af], a
    xor a
    ld [wRoomId], a
    ld a, $03
    ld [$c55c], a
    ld a, $06
    ld [$c55d], a
    xor a
    ld [$c55e], a
    ld [$c563], a
    ld [$c564], a
    ld a, $07
    ld [$c55f], a
    ld a, $06
    ld [$c560], a
    ld a, $02
    ld [$c524], a
    ld [$c525], a
    ld a, $ff
    ld [$c8b1], a
    ld [$c8b2], a
    ld [$c8b3], a
    ld hl, $c8c5
    ld d, $20
    call Call_001_6c8e
    ld hl, $c420
    ld d, $18
    call Call_001_6c8e
    ld hl, $c438
    ld d, $18
    call Call_001_6c8e
    ld hl, $c468
    ld d, $59
    call Call_001_6c8e
    ld hl, $c528
    ld d, $0c
    call Call_001_6c8e
    ld hl, $c53b
    ld d, $20
    call Call_001_6c8e
    ld a, $0a
    ld [$c53b], a
    xor a
    ld [$c55b], a
    call Call_001_4638
    ret


Call_001_6c8e:
jr_001_6c8e:
    ld [hl+], a
    dec d
    jr nz, jr_001_6c8e

    ret


    ld a, [$c5c4]
    and $7f
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c5
    add hl, bc
    ld [hl], a
    rst RST_00
    jp z, $136c

    ld l, l
    inc de
    ld l, l
    inc h
    ld l, l
    ld [hl], b
    ld l, l
    xor [hl]
    ld l, l
    call Call_000_1ca7
    ld a, [$c5c6]
    cp $ff
    jr z, jr_001_6cc6

    call Call_000_2753
    ld a, [$c523]
    and $01
    jr z, jr_001_6cc9

jr_001_6cc6:
    call Call_000_1c9e

jr_001_6cc9:
    ret


    ld a, [$c5c5]
    cp $6b
    jr nz, jr_001_6cdb

    ld a, [wSceneId]
    cp $73
    jr z, jr_001_6cdb

    jp Jump_000_1999


jr_001_6cdb:
    ld a, [$c5c5]
    cp $5f
    jr nz, jr_001_6cec

    ld a, [wSceneId]
    cp $7a
    jr z, jr_001_6d02

    jp Jump_000_1999


jr_001_6cec:
    ld a, [$c5c5]
    cp $13
    jr nz, jr_001_6d02

    ld a, $08
    call ReadStateBit
    ld a, [$c523]
    and $01
    jr z, jr_001_6d02

    jp Jump_000_1999


jr_001_6d02:
    ld a, [$c5c5]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c6
    add hl, bc
    ld [hl], a
    ret


    ld a, [$c5c5]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c6
    add hl, bc
    ld [hl], a
    ret


    ld a, [$c5c5]
    push af
    srl a
    srl a
    srl a
    ldh [$ff9e], a
    pop af
    and $07
    ld [$c869], a
    ld bc, $c4e9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [$c869]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    push af
    ld bc, $19a9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr z, jr_001_6d5f

    jp Jump_000_1999


jr_001_6d5f:
    ld a, [$c5c5]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c6
    add hl, bc
    ld [hl], a
    ret


    ld a, [$c5c5]
    cp $00
    jr z, jr_001_6d7b

    cp $02
    jr nz, jr_001_6d85

jr_001_6d7b:
    ld a, [wSceneId]
    cp $00
    jr z, jr_001_6d85

    jp Jump_000_1999


jr_001_6d85:
    ld a, [$c5c5]
    ldh [$ff9e], a
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $01
    jr z, jr_001_6d9c

    jp Jump_000_1999


jr_001_6d9c:
    ld d, a
    ldh a, [$ff9e]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c6
    add hl, bc
    ld [hl], a
    ld a, d
    ret


    ld a, [$c5c5]
    cp $47
    jr z, jr_001_6df3

    cp $24
    jr z, jr_001_6dd5

    cp $25
    jr z, jr_001_6dd5

    cp $26
    jr z, jr_001_6dd5

    cp $27
    jr z, jr_001_6dd5

    cp $29
    jr z, jr_001_6dd5

    cp $2a
    jr z, jr_001_6dd5

    cp $2b
    jr z, jr_001_6dd5

    cp $2c
    jr nz, jr_001_6de2

jr_001_6dd5:
    call Call_001_42f5
    ld a, [$c523]
    and $01
    jr z, jr_001_6de2

    jp Jump_000_1999


jr_001_6de2:
    ld a, [$c5c5]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c6
    add hl, bc
    ld [hl], a
    ret


jr_001_6df3:
    ld a, [wSceneId]
    cp $43
    jr z, jr_001_6de2

    jp Jump_000_1999


    call Call_001_4930
    xor a
    call Call_000_080e
    call Call_001_6e94
    call Call_001_4928
    ld a, $ff
    ld [$c5df], a
    ld a, $3c
    call Call_000_0753
    ld a, $00
    ld [$c662], a
    ld a, $02
    ld [$c663], a
    xor a
    ld [$c890], a
    ld [$c893], a
    ld a, $06
    call Call_001_6eae
    ld a, $f0
    call Call_000_0753
    call Call_001_6ed7
    ld a, $00
    ld [$c662], a
    ld a, $02
    ld [$c663], a
    ld a, $07
    call Call_001_6eae
    ld a, $f0
    call Call_000_0753
    call Call_001_6ed7
    ld a, $00
    ld [$c662], a
    ld a, $02
    ld [$c663], a
    ld a, $0b
    call Call_001_6eae
    ld a, $f0
    call Call_000_0753
    call Call_001_6ed7
    ld a, $00
    ld [$c662], a
    ld a, $02
    ld [$c663], a
    ld a, $0c
    call Call_001_6eae
    ld a, $f0
    call Call_000_0753
    call Call_001_6ed7
    ld a, $00
    ld [$c662], a
    ld a, $02
    ld [$c663], a
    ld a, $0d
    call Call_001_6eae
    ld a, $f0
    call Call_000_0753
    ld a, $f0
    call Call_000_0753
    call Call_001_4930
    ret


Call_001_6e94:
    call Call_000_0722
    call Call_000_0420
    ld a, $06
    call Call_000_1b39
    ld a, $06
    call Call_000_1b14
    call Call_000_072a
    call Call_000_044b
    call Call_000_0416
    ret


Call_001_6eae:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $71aa
    add hl, bc
    ld a, [hl+]
    ld [$c19a], a
    ld a, [hl]
    ld [$c19b], a
    xor a
    ld [$c65e], a
    ld [$c65f], a
    ld a, $10
    ld [$c66d], a
    call Call_000_118a
    call Call_000_19c5
    call Call_000_03fe
    call Call_000_10b8
    ret


Call_001_6ed7:
    ld a, $01
    ld [$c5c3], a
    ld [$c5c4], a

jr_001_6edf:
    ld a, [$c5c4]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9800
    add hl, de
    ld a, [$c5c3]
    ld e, a
    ld d, $00
    add hl, de
    ld c, l
    ld b, h
    ld hl, $6f19
    call Call_000_01d8
    call SubmitMapQueue
    ld a, [$c5c3]
    inc a
    cp $13
    jr nz, jr_001_6f14

    ld a, [$c5c4]
    inc a
    inc a
    cp $11
    ret z

    ld [$c5c4], a
    xor a

jr_001_6f14:
    ld [$c5c3], a
    jr jr_001_6edf

    ld bc, $7f02
    ld a, a
    ld [de], a
    or [hl]
    ret z

    rst RST_38
    ld [de], a
    or [hl]
    ret z

    ld a, a
    inc b
    ld a, [hl-]
    push bc
    rst RST_28
    sub d
    ld a, a
    rst RST_38
    ld [de], a
    or [hl]
    ret z

    ld a, a
    inc b
    ld e, a
    push bc
    rst RST_28
    sub d
    ld a, a
    rst RST_38
    ld [de], a
    or [hl]
    ret z

    ld a, a
    inc b
    ld h, e
    push bc
    cp d
    ld a, a
    rst RST_38
    ld [de], a
    or [hl]
    ret z

    ld a, a
    inc b
    ld e, h
    push bc
    cp d
    ld a, a
    rst RST_38
    ld [de], a
    or [hl]
    ret z

    ld a, a
    inc b
    ld h, h
    push bc
    cp d
    ld a, a
    rst RST_38
    ld [de], a
    or [hl]
    ret z

    ld a, a
    inc b
    ld e, l
    push bc
    cp d
    ld a, a
    rst RST_38
    ld [de], a
    or [hl]
    ret z

    ld a, a
    inc b
    ld h, b
    push bc
    cp d
    ld a, a
    rst RST_38
    ld [de], a
    or [hl]
    ret z

    ld a, a
    inc b
    ld e, [hl]
    push bc
    cp d
    ld a, a
    rst RST_38
    inc d
    cp h
    or [hl]
    ld a, [hl-]
    and l
    and l
    and l
    ld a, [de]
    ld e, $fd
    ld a, a
    add d
    inc e
    and c
    dec c
    dec c
    sbc [hl]
    sub d
    inc e
    adc h
    sbc b
    ld d, $7f
    sub c
    ldh [$fff8], a
    or b
    dec c
    sbc h
    ld [$9c92], a
    db $e3
    sub d
    ld sp, hl
    and c
    dec d
    rrca
    inc d
    db $e4
    ldh [c], a
    ld e, $fd
    jp hl


    ld a, a
    ld [hl], $c1
    xor h
    db $dd
    db $e4
    sub d
    sub e
    ld a, a
    sub l
    db $e4
    ld d, $0d
    sbc a
    sub e
    pop hl
    adc [hl]
    sub e
    jp hl


    ld a, a
    sbc h
    dec e
    sbc c
    sbc e
    or b
    dec c
    db $eb
    sub a
    sbc e
    sub d
    ldh [hObjGfx], a
    and l
    and l
    dec d
    rrca
    inc d
    ldh [c], a
    ld h, d
    sub d
    db $e3
    ld a, a
    sub a
    ld hl, sp-$65
    sbc b
    or $93
    push hl
    dec c
    sbc e
    sbc c
    ld l, e
    ld a, [de]
    sub h
    and $7f
    ldh [c], a
    ldh [c], a
    rst RST_28
    ld a, [$a5e0]
    and l
    and l
    dec d
    rrca
    inc d
    and l
    and l
    and l
    db $f4
    ld d, $e3
    ld a, a
    push hl
    and $1a
    db $e4
    di
    dec c
    push hl
    sub [hl]
    adc a
    ldh [$ff96], a
    jp hl


    or $93
    and $7f
    sub c
    ldh [$fff8], a
    ld [$9c0d], a
    dec e
    sbc c
    sbc e
    or b
    ld a, a
    db $e4

jr_001_7006:
    ld hl, sp-$0d
    ld h, h
    sbc h
    ldh [hObjGfx], a
    and l
    and l
    dec d
    rrca
    inc d
    and $e6
    db $fd
    jr jr_001_7006

    jp hl


    ld a, a
    pop bc
    db $dd
    ld e, e
    rst RST_10
    and $f6
    adc a
    db $e3
    dec c
    sub c
    ld sp, hl
    sub l
    db $e4
    sbc d
    ld d, $7f
    cp b
    reti


    rst RST_08
    jp hl


    ld a, a
    call nz, $ddd7
    cp b
    db $ed
    dec c
    sub l
    sbc h
    sbc d
    ldh a, [c]
    rst RST_30
    ld a, [$7fe0]
    sbc d
    db $e4
    push hl
    ld h, h
    dec c
    ld h, b
    ld a, [$7ff3]
    sub a
    ld h, d
    sub d
    db $e3
    ld [$e592], a
    sub d
    and l
    and l
    and l
    dec d
    rrca
    ld [de], a
    or [hl]
    ret z

    rst RST_38
    ld [de], a
    or [hl]
    ret z

    rst RST_38
    dec b
    adc d
    push bc
    ld [de], a
    or [hl]
    ret z

    rst RST_38
    ld [de], a
    or [hl]
    ret z

    inc b
    ld a, [hl-]
    push bc
    rst RST_28
    sub d
    rst RST_38
    ld [de], a
    or [hl]
    ret z

    inc b
    sub b
    push bc
    cp d
    rst RST_38
    ld [de], a
    or [hl]
    ret z

    inc b
    adc l
    push bc
    cp d
    rst RST_38
    ld [de], a
    or [hl]
    ret z

    inc b
    adc h
    push bc
    rst RST_28
    sub d
    ld a, a
    rst RST_38
    dec d
    ld b, $01
    rlca
    ld [bc], a
    nop
    ld [$0606], a
    nop
    db $eb
    ld b, $0e
    nop
    db $ec
    inc d
    rst RST_38
    dec d
    ld b, $02
    ld [de], a
    ld e, [hl]
    ret z

    ld b, $01
    inc b
    ld e, l
    ret z

    ld b, $0b
    ld [de], a
    ld e, a
    ret z

    inc d
    rst RST_38
    inc b
    ld [hl], l
    ret z

    ld a, a
    rst RST_38
    dec d
    ld b, $0b
    rlca
    ld [$c304], sp
    push bc
    ld a, a
    rst RST_28
    sub d
    ld a, a
    inc d
    rst RST_38
    sub d
    sbc b
    rst RST_30
    ld a, a
    sub [hl]
    sbc c
    rst RST_28
    sbc l
    sub [hl]
    adc e
    rst RST_38
    ld a, a
    sub [hl]
    sbc c
    ldh [$ffa1], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst RST_38
    di
    sub e
    add c
    rst RST_28
    sub d
    ld a, a
    db $eb
    sub a
    rst RST_28
    sbc l
    sub [hl]
    adc e
    ld a, a
    ld [$a592], a
    sub d
    sub d
    sub h
    rst RST_38
    di
    sub e
    add c
    sub [hl]
    sub d
    ld a, a
    sbc l
    ld sp, hl
    sub [hl]
    sub d
    adc e
    ld a, a
    ld a, a
    ld [$a592], a
    sub d
    sub d
    sub h
    rst RST_38
    rst RST_28
    ldh [$ff7f], a
    sub a
    db $e3
    sbc b
    ld a, [$e5f6]
    and c
    rst RST_38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst RST_38
    ld c, h
    rst RST_10
    xor a
    cp b
    inc a
    xor h
    xor a
    cp b
    adc d
    rst RST_38
    ld c, h
    rst RST_10
    xor a
    cp b
    inc a
    xor h
    xor a
    cp b
    adc d
    rst RST_38
    or l
    and h
    ld c, d
    and h
    and l
    and l
    and l
    rst RST_38
    or l
    and h
    ld c, d
    and h
    and l
    and l
    and l
    rst RST_38
    db $eb
    sub a
    db $fc
    sbc c
    ld a, a
    ld h, e
    sbc l
    add sp, -$5b
    and l
    and l
    rst RST_38
    ld b, e
    xor b
    and h
    rst RST_10
    and h
    ld d, $7f
    sub [hl]
    pop hl
    rst RST_28
    sbc h
    ldh [$ffa1], a
    rst RST_38
    sub c
    push hl
    ldh [$ffe9], a
    ld a, a
    sub [hl]
    pop hl
    ld h, e
    sbc l
    and c
    rst RST_38
    or [hl]
    and h
    ld b, h
    ld d, $7f
    jp hl


    sbc d
    ld hl, sp-$63
    sbc b
    push hl
    sub d
    jp hl


    ld h, e
    rst RST_38
    cp h
    xor h
    xor a
    call z, $9cd9
    rst RST_28
    sbc l
    and c
    rst RST_38
    pop bc
    xor a
    ld e, h
    jp hl


    ld a, a
    push hl
    sub d
    db $f4
    ldh [c], a
    ld [$967f], a
    sub h
    db $fd
    push hl
    adc d
    rst RST_38
    ld b, e
    xor b
    and h
    rst RST_10
    and h
    rst RST_38
    sub c
    push hl
    ldh [rIE], a
    jp hl


    sbc d
    ld hl, sp-$11
    sub d
    sbc l
    sub e
    rst RST_38
    inc b
    adc h
    push bc
    rst RST_28
    sub d
    ld a, a
    rst RST_38
    rst RST_38
    pop bc
    xor a
    ld e, h
    rst RST_38
    dec e
    ld l, a
    ld hl, $2c6f
    ld l, a
    scf
    ld l, a
    ld b, c
    ld l, a
    ld c, e
    ld l, a
    ld [hl], e
    ld l, a
    sbc c
    ld l, a
    ld d, l
    ld l, a
    ld e, a
    ld l, a
    ld l, c
    ld l, a
    jp $e26f


    ld l, a
    db $10
    ld [hl], b
    ld d, c
    ld [hl], b
    ld d, c
    ld [hl], b
    ld d, c
    ld [hl], b
    ld d, l
    ld [hl], b
    ld e, c
    ld [hl], b
    ld h, b
    ld [hl], b
    ld l, c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld a, c
    ld [hl], b
    add e
    ld [hl], b
    sub h
    ld [hl], b
    and [hl]
    ld [hl], b
    xor e
    ld [hl], b
    cp c
    ld [hl], b
    cp c
    ld [hl], b
    call nz, $d170
    ld [hl], b
    push hl
    ld [hl], b
    ld sp, hl
    ld [hl], b
    inc b
    ld [hl], c
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], c
    dec l
    ld [hl], c
    dec [hl]
    ld [hl], c
    dec a
    ld [hl], c
    ld c, c
    ld [hl], c
    ld d, a
    ld [hl], c
    ld h, d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, e
    ld [hl], c
    adc h
    ld [hl], c
    sub d
    ld [hl], c
    sub [hl]
    ld [hl], c
    sbc [hl]
    ld [hl], c
    and l
    ld [hl], c
    and [hl]
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
