; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
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
    ldh [$ff8c], a
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


    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld hl, $ff8c
    bit 7, [hl]
    call nz, $ff80
    bit 3, [hl]
    jp z, Jump_001_4079

    call Call_001_40bb
    jp Jump_001_4086


Jump_001_4079:
    bit 6, [hl]
    jr z, jr_001_4086

    res 6, [hl]
    ldh a, [$ff90]
    cp $00
    call nz, Call_001_40ed

Jump_001_4086:
jr_001_4086:
    bit 0, [hl]
    jr z, jr_001_408f

    res 0, [hl]
    call Call_001_4172

jr_001_408f:
    ldh a, [$ff8c]
    bit 4, a
    call nz, Call_001_4197
    ld a, [$c182]
    ldh [rSCX], a
    ld a, [$c184]
    ldh [rSCY], a
    ld a, [$c18c]
    inc a
    ld [$c18c], a
    ld hl, $ffab
    inc [hl]
    pop af
    ldh [rSVBK], a
    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_001_40b5:
    dec a
    jr nz, jr_001_40b5

    res 7, [hl]
    ret


Call_001_40bb:
    push hl
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    ldh a, [$ff99]
    and $01
    ldh [rVBK], a
    ldh a, [$ff98]
    ldh [rHDMA1], a
    ldh a, [$ff97]
    ldh [rHDMA2], a
    ldh a, [$ff9b]
    ldh [rHDMA3], a
    ldh a, [$ff9a]
    ldh [rHDMA4], a
    ld a, $3f
    ldh [rHDMA5], a
    ldh a, [$ff98]
    add $04
    ldh [$ff98], a
    xor a
    ldh [rVBK], a
    pop af
    ldh [rSVBK], a
    pop hl
    res 3, [hl]
    ret


Call_001_40ed:
    push hl
    ld de, $c0a0
    ld c, a

jr_001_40f2:
    ld a, [de]
    ld h, a
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    bit 6, b
    jr z, jr_001_4105

    res 6, b
    ld a, $01
    ldh [rVBK], a

jr_001_4105:
    bit 7, b
    jr nz, jr_001_411e

    ld a, c
    sub b
    sub $03
    ld c, a

jr_001_410e:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_001_410e

jr_001_4114:
    xor a
    ldh [rVBK], a
    cp c
    jr nz, jr_001_40f2

    ldh [$ff90], a
    pop hl
    ret


jr_001_411e:
    res 7, b
    ld a, c
    sub b
    sub $03
    ld c, a

jr_001_4125:
    ld a, [de]
    ld [hl], a
    inc de
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    and $fb
    ld h, a
    dec b
    jr nz, jr_001_4125

    jr jr_001_4114

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


Call_001_4172:
    call Call_001_4186
    call Call_001_4179
    ret


Call_001_4179:
    ld hl, $db40
    ld d, $40
    ld a, $80
    ldh [rBCPS], a
    ld c, $69
    jr jr_001_4191

Call_001_4186:
    ld hl, $db80
    ld d, $40
    ld a, $80
    ldh [rOCPS], a
    ld c, $6b

jr_001_4191:
    ld a, [hl+]
    ldh [c], a
    dec d
    jr nz, jr_001_4191

    ret


Call_001_4197:
    res 4, a
    ldh [$ff8c], a
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
    call Call_000_09f5
    ld a, $07
    call Call_001_41cb
    call Call_000_0420
    call Call_000_09df
    ld a, $04
    call Call_001_41cb
    call Call_000_0420
    xor a

Call_001_41cb:
    call Call_000_19e9
    ld a, $02
    call Call_000_19c4
    call Call_000_044b
    call Call_000_0416
    call Call_001_4933
    ld a, $78
    call Call_000_0753
    call Call_001_493b
    ret


    call Call_001_677f
    call Call_000_0420
    call Call_000_09d4
    ld a, $01
    call Call_000_19e9
    ld a, $02
    call Call_000_19c4
    call Call_000_044b
    call Call_000_0416
    call Call_001_4933
    call Call_001_420b
    call Call_001_493b
    call Call_001_678f
    ret


Call_001_420b:
jr_001_420b:
    call Call_000_0ba4
    call Call_000_0456
    ld a, [$c188]
    bit 0, a
    jr nz, jr_001_421e

    bit 3, a
    jr nz, jr_001_421e

    jr jr_001_420b

jr_001_421e:
    ld a, $19
    call Call_000_080e
    ret


Call_001_4224:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call Call_001_423a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_001_423a:
    call Call_001_4346

jr_001_423d:
    ld a, [$c85e]
    ld l, a
    ld a, [$c85f]
    ld h, a
    ld a, [hl+]
    cp $ff
    ret z

    bit 7, a
    jr nz, jr_001_4269

    call Call_001_427e
    ld a, [$c523]
    and $01
    jr nz, jr_001_4269

    ld a, [$c85e]
    ld l, a
    ld a, [$c85f]
    ld h, a
    ld a, [hl]
    call Call_001_4328
    ld hl, $435a
    call Call_000_01d8

jr_001_4269:
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
    jr jr_001_423d

Call_001_427e:
    call Call_000_1b57
    ld a, [hl+]
    bit 7, a
    ret z

Call_001_4285:
    and $7f
    ld [$c855], a
    ld e, a
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_001_4295:
    ld bc, $42cc
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c5c3], a
    cp e
    jr nz, jr_001_42c4

    ld d, a
    ldh a, [$ff9e]
    cp $04
    ld a, d
    jr nc, jr_001_42bf

    ld a, [$c5c3]
    call Call_000_1d31
    ld a, [$c523]
    and $01
    jp z, Jump_000_1b4e

    jp Jump_000_1b57


jr_001_42bf:
    ld a, e
    call Call_001_4300
    ret


jr_001_42c4:
    ldh a, [$ff9e]
    inc a
    inc a
    ldh [$ff9e], a
    jr jr_001_4295

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

Call_001_42e0:
    cp $24
    jr z, jr_001_4300

    cp $25
    jr z, jr_001_4300

    cp $26
    jr z, jr_001_4300

    cp $27
    jr z, jr_001_4300

    cp $29
    jr z, jr_001_4300

    cp $2a
    jr z, jr_001_4300

    cp $2b
    jr z, jr_001_4300

    cp $2c
    jr nz, jr_001_4324

Call_001_4300:
jr_001_4300:
    and $08
    jr nz, jr_001_4314

    ld a, $bb
    call Call_000_1c5c
    ld a, [$c523]
    and $01
    jr z, jr_001_4324

    call Call_000_1b4e
    ret


jr_001_4314:
    ld a, $bb
    call Call_000_1c5c
    ld a, [$c523]
    and $01
    jr nz, jr_001_4324

    call Call_000_1b4e
    ret


jr_001_4324:
    call Call_000_1b57
    ret


Call_001_4328:
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


Call_001_4341:
    ld a, [$c536]
    jr jr_001_4349

Call_001_4346:
    ld a, [$c521]

jr_001_4349:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $435d
    add hl, bc
    ld a, [hl+]
    ld [$c85e], a
    ld a, [hl]
    ld [$c85f], a
    ret


    ld bc, $7301
    ld sp, hl
    ld b, e
    db $fd
    ld b, e
    inc b
    ld b, h
    ld c, $44
    dec d
    ld b, h
    inc e
    ld b, h
    add hl, hl
    ld b, h
    jr nc, jr_001_43b1

    ld a, [hl-]
    ld b, h
    ld b, c
    ld b, h
    ld c, b
    ld b, h
    ld c, h
    ld b, h
    ld d, e
    ld b, h
    ld e, l
    ld b, h
    ld h, h
    ld b, h
    ld l, e
    ld b, h
    ld [hl], d
    ld b, h
    ld a, h
    ld b, h
    sub l
    ld b, h
    sbc h
    ld b, h
    and [hl]
    ld b, h
    or b
    ld b, h
    or a
    ld b, h
    pop bc
    ld b, h
    bit 0, h
    call z, $d944
    ld b, h
    and $44
    di
    ld b, h
    nop
    ld b, l
    rlca
    ld b, l
    ld [$0f45], sp
    ld b, l
    db $10
    ld b, l
    rla
    ld b, l
    ld e, $45
    dec h
    ld b, l
    add hl, hl
    ld b, l
    dec l
    ld b, l
    ld sp, $3545
    ld b, l
    inc a
    ld b, l

jr_001_43b1:
    ld b, b
    ld b, l
    ld b, h
    ld b, l
    ld c, b
    ld b, l
    ld d, d
    ld b, l
    ld e, c
    ld b, l
    ld e, l
    ld b, l
    ld h, h
    ld b, l
    ld l, e
    ld b, l
    ld [hl], d
    ld b, l
    ld a, a
    ld b, l
    add b
    ld b, l
    add h
    ld b, l
    adc [hl]
    ld b, l
    sub l
    ld b, l
    sbc h
    ld b, l
    and b
    ld b, l
    xor l
    ld b, l
    or a
    ld b, l
    cp [hl]
    ld b, l
    jp nz, $c945

    ld b, l
    jp z, $ce45

    ld b, l
    jp nc, $d645

    ld b, l
    jp c, $de45

    ld b, l
    ldh [c], a
    ld b, l
    and $45
    ld [$ee45], a
    ld b, l
    ldh a, [c]
    ld b, l
    or $45
    rst RST_30
    ld b, l
    ld hl, sp+$45
    ld sp, hl
    ld b, l
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
    jr nz, jr_001_4467

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
    jr nz, jr_001_447b

    ld [bc], a

jr_001_4467:
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
    jr nz, jr_001_4488

    inc b
    inc h
    inc de
    inc bc

jr_001_447b:
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

jr_001_4488:
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
    jr z, jr_001_44b5

    ld b, h
    rra

jr_001_44b5:
    nop
    rst RST_38
    inc sp
    ld [hl+], a
    inc bc
    jr nc, jr_001_44d2

    ld [bc], a
    nop
    inc de
    inc b
    rst RST_38
    jr nz, jr_001_44e3

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

jr_001_44d2:
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

jr_001_44e3:
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
    jr nz, jr_001_4529

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

jr_001_4529:
    inc h
    ld e, $05
    rst RST_38
    ld b, e
    inc hl
    nop
    rst RST_38
    ld b, e
    jr z, jr_001_4534

jr_001_4534:
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
    jr nc, jr_001_4548

    rst RST_38
    inc h
    ld sp, $ff05

jr_001_4548:
    ld de, $0435
    ld b, c
    scf
    ld [bc], a
    inc h
    inc sp
    dec b
    rst RST_38
    jr nz, jr_001_458a

    ld [bc], a
    inc h
    scf
    dec b
    rst RST_38
    inc h
    ld [hl], $05
    rst RST_38
    jr nz, jr_001_4597

    ld [bc], a
    inc h
    dec [hl]
    inc bc
    rst RST_38
    adc b
    ld a, [hl-]
    ld b, $24
    jr c, jr_001_456f

    rst RST_38
    inc h
    add hl, sp
    dec b
    adc b

jr_001_456f:
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
    jr nc, jr_001_45c4

    ld [bc], a
    ld bc, HeaderManufacturerCode

jr_001_458a:
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

jr_001_4597:
    nop
    inc h
    ccf
    dec b
    rst RST_38
    ld [hl+], a
    ld b, l
    ld [bc], a
    rst RST_38
    jr nz, jr_001_45e4

    inc b
    ld [bc], a
    ld b, e
    ld bc, $4442
    nop
    inc h
    ld b, [hl]
    inc bc
    rst RST_38
    jr nz, jr_001_45b9

    inc b
    ld b, h
    ld b, h
    nop
    inc b
    ld b, l
    ld bc, $00ff
    ld b, c

jr_001_45b9:
    inc b
    ld [hl+], a
    ld b, e
    ld [bc], a
    rst RST_38
    jr nz, @+$48

    inc b
    rst RST_38
    jr nz, jr_001_45e6

jr_001_45c4:
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
    jr nc, jr_001_45d7

    rst RST_38
    ld b, e

jr_001_45d7:
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

jr_001_45e4:
    nop
    rst RST_38

jr_001_45e6:
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

Call_001_45fa:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    ld d, $00
    ld hl, $4620

jr_001_4608:
    ld a, [hl+]
    push hl
    push de
    call Call_000_1d3b
    pop de
    pop hl
    inc d
    ld a, d
    cp $23
    jr c, jr_001_4608

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
    jr z, jr_001_465d

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

Call_001_4643:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    ld hl, $4665

jr_001_464f:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_465b

    push hl
    call Call_000_264e
    pop hl
    jr jr_001_464f

jr_001_465b:
    pop hl
    push af

jr_001_465d:
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
    ld a, [$c599]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $46af
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c522]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ldh [$ffa4], a
    ld a, [hl]
    ldh [$ffa5], a
    call Call_000_0a76
    ret


    ld a, [$c599]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $46af
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c522]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ldh [$ffa4], a
    ld a, $7f
    ldh [$ffa5], a
    call Call_000_0a76
    ret


    or e
    ld b, [hl]
    push hl
    ld b, a
    ld [bc], a
    pop bc
    ld [bc], a
    pop bc
    inc b
    jp nz, $c206

    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld a, [bc]
    jp nz, $c20a

    inc c
    jp nz, $c20c

    ld c, $00
    ld c, $00
    db $10
    jp nz, $c210

    db $10
    jp nz, $c210

    ld [de], a
    jp z, $ca12

    inc d
    nop
    inc d
    nop
    inc d
    nop
    inc d
    nop
    ld d, $00
    ld d, $00
    jr jr_001_46e9

jr_001_46e9:
    jr jr_001_46eb

jr_001_46eb:
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    inc e
    pop bc
    inc e
    pop bc
    inc e
    pop bc
    inc e
    pop bc
    ld e, $00
    ld e, $00
    jr nz, jr_001_4701

jr_001_4701:
    jr nz, jr_001_4703

jr_001_4703:
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    inc h

jr_001_470c:
    nop
    inc h

jr_001_470e:
    nop
    ld h, $00
    ld h, $00
    jr z, jr_001_4715

jr_001_4715:
    ld a, [hl+]
    nop
    jr z, jr_001_4719

jr_001_4719:
    jr z, jr_001_471b

jr_001_471b:
    jr z, jr_001_471d

jr_001_471d:
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    jr z, jr_001_4725

jr_001_4725:
    jr z, jr_001_4727

jr_001_4727:
    jr z, jr_001_4729

jr_001_4729:
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    jr z, jr_001_4731

jr_001_4731:
    ld a, [hl+]
    nop
    inc l
    jp Jump_000_002e


    ld l, $00
    jr nc, jr_001_473b

jr_001_473b:
    ld [hl-], a
    jp $c334


    ld [hl], $c3
    jr c, jr_001_470c

    jr c, jr_001_470e

    ld a, [hl-]
    jp $c63c


    ld a, $00
    ld b, b
    jp $0042


    ld b, h
    nop
    ld b, [hl]
    nop
    ld c, b
    nop
    ld c, d
    nop
    ld c, d
    nop
    ld c, h
    jp z, Jump_000_004e

    ld d, b
    nop
    ld d, d
    jp Jump_000_0054


    ld d, [hl]
    jp $c356


    ld d, [hl]
    jp $c356


    ld e, b
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld e, d
    nop
    ld e, d
    nop
    ld e, h
    nop
    ld e, h
    nop
    ld e, h
    nop
    ld e, [hl]
    ret


    ld h, b

jr_001_4780:
    nop
    ld h, b
    nop
    ld h, d
    nop
    ld h, d
    nop
    ld h, h
    jp Jump_000_0066


    ld h, [hl]

jr_001_478c:
    nop
    ld l, b
    nop
    ld l, b
    nop
    and d
    nop
    ld l, d
    nop
    ld l, d
    nop
    ld l, h
    add $6e
    call nz, $c46e

jr_001_479d:
    ld [hl], b
    push bc
    ld [hl], b
    push bc
    ld [hl], d
    nop
    ld [hl], h
    nop

jr_001_47a5:
    halt
    nop
    ld a, b
    nop
    ld a, d
    nop
    ld a, d
    nop
    ld a, h
    push bc

jr_001_47af:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    add b
    push bc
    add b
    push bc
    add d
    push bc
    add d
    push bc
    add h
    nop
    add [hl]
    nop
    add [hl]
    nop
    add h
    nop
    adc b
    nop
    adc d
    nop
    adc d
    nop
    adc h
    nop
    adc [hl]
    nop
    sub b
    rst RST_00
    sub d
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc b
    nop
    sbc d
    nop
    sbc h
    nop
    sbc [hl]
    nop
    and b
    nop
    sub b
    ret z

    ld [bc], a
    add c
    inc b
    add d
    ld b, $82
    ld [$0a82], sp
    ld a, a
    inc c
    add d
    ld c, $7f
    db $10
    add d
    ld [de], a
    add d
    ld [de], a
    add d
    ld d, $83
    jr jr_001_4780

    ld a, [de]
    ld a, a
    inc e
    add e
    ld e, $89
    ld e, $89
    ld e, $89
    jr nz, jr_001_478c

    ld [hl+], a
    add e
    inc h
    add e
    ld h, $81
    ld h, $81
    jr z, jr_001_479d

    ld a, [hl+]
    ld a, a
    inc l
    adc d
    ld a, [hl+]
    ld a, a
    ld h, $81
    ld h, $81
    ld l, $84
    jr nc, jr_001_47a5

    ld [hl-], a
    adc b
    inc [hl]
    ld a, a
    ld [hl], $86
    jr c, jr_001_47af

    ld a, [hl-]
    ld a, a
    inc a
    ld a, a
    ld a, $7f
    ld b, b
    ld a, a
    ld b, d
    ld a, a
    ld b, h
    ld a, a
    ld b, [hl]
    ld a, a
    ld c, b
    add [hl]
    ld c, d
    ld a, a
    ld c, h
    ld a, a
    ld c, [hl]
    add h
    ld d, b
    add a
    ld d, d
    add a
    ld d, h
    add a
    ld d, [hl]
    ld a, a
    ld e, b
    adc b
    ld e, d
    adc b
    ld e, h
    ld a, a
    ld e, [hl]
    adc e
    ld h, b
    adc b
    ld h, d
    ld a, a
    ld h, h
    adc b
    ld h, [hl]
    adc b
    ld l, b
    add l
    ld l, d
    ld a, a
    ld l, h
    ld a, a
    ld l, [hl]
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], d
    ld a, a
    ld [hl], h
    ld a, a
    halt
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, d
    ld a, a

Call_001_486d:
    ld a, [$c522]
    ld e, a
    ld d, $00
    ld hl, $487f
    add hl, de
    ld a, [hl]
    ld [$c641], a
    call Call_000_18ef
    ret


    nop
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    rrca
    rrca
    db $10
    db $10
    db $10
    db $10
    ld de, $1211
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc d
    dec d
    dec d
    ld d, $17
    jr jr_001_48df

    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_001_4901

    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    dec hl
    inc l
    inc l

jr_001_48df:
    dec l
    dec l
    ld l, $2e
    ld l, $2f
    jr nc, jr_001_4917

    ld sp, $3231
    inc sp
    inc sp
    inc [hl]
    inc [hl]
    dec [hl]
    ld [hl], $36
    scf
    jr c, jr_001_492c

    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3e
    ccf
    ld b, b
    ld b, b
    ld b, c
    ld b, c

jr_001_4901:
    ld b, d
    ld b, d
    ld b, e
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_001_4917:
    ld d, l
    ld bc, $dbc0
    ld hl, $db40
    ld d, $80

jr_001_4920:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, jr_001_4920

    call Call_000_01a9
    call Call_000_074b

jr_001_492c:
    ret


    push hl
    push bc
    ld a, $02
    jr jr_001_493f

Call_001_4933:
    push hl
    push bc
    call Call_001_4ab7
    xor a
    jr jr_001_493f

Call_001_493b:
    push hl
    push bc
    ld a, $01

jr_001_493f:
    ld [$c194], a

jr_001_4942:
    call Call_001_4954
    jr nz, jr_001_494a

    pop bc
    pop hl
    ret


jr_001_494a:
    ld c, $04

jr_001_494c:
    call Call_000_01b7
    dec c
    jr nz, jr_001_494c

    jr jr_001_4942

Call_001_4954:
    ld a, [$c194]
    rst RST_00
    ld c, $4a
    ld e, [hl]
    ld c, c
    xor e
    ld c, c
    call Call_001_4a7a
    jr nz, jr_001_4964

    ret


jr_001_4964:
    push hl
    push bc
    push de
    ld hl, $db40
    call Call_001_497c
    ld hl, $db80
    call Call_001_497c
    call Call_000_074b
    pop de
    pop bc
    pop hl
    or $ff
    ret


Call_001_497c:
    ld d, $20

jr_001_497e:
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    call Call_001_4af0
    ld a, [$c18e]
    call Call_001_4ad4
    ld [$c18e], a
    ld a, [$c18f]
    call Call_001_4ad4
    ld [$c18f], a
    ld a, [$c190]
    call Call_001_4ad4
    ld [$c190], a
    call Call_001_4b09
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    dec d
    jr nz, jr_001_497e

    ret


    call Call_001_4a91
    jr nz, jr_001_49b1

    ret


jr_001_49b1:
    push hl
    push bc
    push de
    ld hl, $db40
    ld de, $dbc0
    call Call_001_49c6
    call Call_000_074b
    pop de
    pop bc
    pop hl
    or $ff
    ret


Call_001_49c6:
    ld b, $20

jr_001_49c8:
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    call Call_001_4af0
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    push de
    call Call_001_4b20
    ld a, [$c191]
    ld c, a
    ld a, [$c18e]
    call Call_001_4ace
    ld [$c18e], a
    ld a, [$c192]
    ld c, a
    ld a, [$c18f]
    call Call_001_4ace
    ld [$c18f], a
    ld a, [$c193]
    ld c, a
    ld a, [$c190]
    call Call_001_4ace
    ld [$c190], a
    call Call_001_4b09
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop de
    pop bc
    dec b
    jr nz, jr_001_49c8

    ret


    call Call_001_4a9e
    jr nz, jr_001_4a14

    ret


jr_001_4a14:
    push hl
    push bc
    push de
    ld hl, $db40
    ld de, $dbc0
    call Call_001_4a32
    ld hl, $db80
    ld de, $dc00
    call Call_001_4a32
    call Call_000_074b
    pop de
    pop bc
    pop hl
    or $ff
    ret


Call_001_4a32:
    ld b, $20

jr_001_4a34:
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    call Call_001_4af0
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    push de
    call Call_001_4b20
    ld a, [$c191]
    ld c, a
    ld a, [$c18e]
    call Call_001_4ae3
    ld [$c18e], a
    ld a, [$c192]
    ld c, a
    ld a, [$c18f]
    call Call_001_4ae3
    ld [$c18f], a
    ld a, [$c193]
    ld c, a
    ld a, [$c190]
    call Call_001_4ae3
    ld [$c190], a
    call Call_001_4b09
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop de
    pop bc
    dec b
    jr nz, jr_001_4a34

    ret


Call_001_4a7a:
    push de
    push hl
    ld hl, $db40
    ld d, $40

jr_001_4a81:
    ld a, [hl+]
    cp $ff
    jr nz, jr_001_4a8e

    ld a, [hl+]
    cp $7f
    jr nz, jr_001_4a8e

    dec d
    jr nz, jr_001_4a81

jr_001_4a8e:
    pop hl
    pop de
    ret


Call_001_4a91:
    push de
    push bc
    push hl
    ld hl, $db40
    ld bc, $dbc0
    ld d, $40
    jr jr_001_4aa9

Call_001_4a9e:
    push de
    push bc
    push hl
    ld hl, $db40
    ld bc, $dbc0
    ld d, $80

jr_001_4aa9:
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [hl+]
    cp e
    jr nz, jr_001_4ab3

    dec d
    jr nz, jr_001_4aa9

jr_001_4ab3:
    pop hl
    pop bc
    pop de
    ret


Call_001_4ab7:
    push de
    push hl
    push bc
    ld hl, $db40
    ld d, $40
    ld bc, $7fff
    xor a

jr_001_4ac3:
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    dec d
    jr nz, jr_001_4ac3

    pop bc
    pop hl
    pop de
    ret


Call_001_4ace:
    cp c
    ret z

    jr c, jr_001_4ad6

    jr jr_001_4ae3

Call_001_4ad4:
    ld c, $1f

jr_001_4ad6:
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


Call_001_4ae3:
jr_001_4ae3:
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


Call_001_4af0:
    ld a, c
    and $1f
    ld [$c18e], a
    call Call_001_4b50
    ld a, c
    and $1f
    ld [$c18f], a
    call Call_001_4b50
    ld a, c
    and $1f
    ld [$c190], a
    ret


Call_001_4b09:
    ld b, $00
    ld a, [$c190]
    ld c, a
    call Call_001_4b65
    ld a, [$c18f]
    or c
    ld c, a
    call Call_001_4b65
    ld a, [$c18e]
    or c
    ld c, a
    ret


Call_001_4b20:
    ld a, c
    and $1f
    ld [$c191], a
    call Call_001_4b50
    ld a, c
    and $1f
    ld [$c192], a
    call Call_001_4b50
    ld a, c
    and $1f
    ld [$c193], a
    ret


    ld b, $00
    ld a, [$c193]
    ld c, a
    call Call_001_4b65
    ld a, [$c192]
    or c
    ld c, a
    call Call_001_4b65
    ld a, [$c191]
    or c
    ld c, a
    ret


Call_001_4b50:
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


Call_001_4b65:
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
    ld hl, $4b84
    call Call_000_023e
    ret


    dec b
    dec b
    ld [hl], b

Call_001_4b87:
    ld hl, $4bae
    call Call_000_023a
    call Call_000_03d3
    ld hl, $4ba9
    call Call_000_023a
    call Call_000_03d3
    ld hl, $4bb3
    call Call_000_023a
    call Call_000_03d3
    call $4ec6
    call Call_001_4d6c
    ret


    and c
    sbc d
    rrca
    rlca
    ld a, a
    and b
    sbc d
    ld bc, $7107
    ld h, e
    sbc d
    inc c
    ld bc, $067f
    dec bc
    jr jr_001_4bbe

Jump_001_4bbc:
    ld b, $0c

jr_001_4bbe:
    push af
    ld a, b
    ld [$c5c0], a
    call Call_001_4bcb
    pop af
    ld [$c5c0], a
    ret


Call_001_4bcb:
    call Call_001_4c06
    ld a, [$c5c0]
    call Call_001_5d87
    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_4bff

    ld a, [$c859]
    ld [$c5c0], a

jr_001_4be1:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    call Call_001_5d6a
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    jr jr_001_4bff

    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_4be1

jr_001_4bff:
    ld a, [$c85a]
    ld [$c5c0], a
    ret


Call_001_4c06:
    ld a, [$c5c0]
    cp $0b
    jr z, jr_001_4c12

    cp $0c
    jr z, jr_001_4c2c

    ret


jr_001_4c12:
    call Call_001_4c3c
    ld a, [$c524]
    ld c, a
    ld a, [$c8c9]
    ld b, a
    ld a, c
    cp b
    jr z, jr_001_4c22

    ret


jr_001_4c22:
    ld a, [$c8ca]
    ld [$c8ea], a
    call Call_001_5d35
    ret


jr_001_4c2c:
    call Call_001_4cdd
    ld a, [$c524]
    ld c, a
    ld a, [$c8c9]
    ld b, a
    ld a, c
    cp b
    jr z, jr_001_4c22

    ret


Call_001_4c3c:
    ld a, [$c5c1]
    ld [$c859], a
    ld a, $0b
    ld [$c5c0], a
    ld [$c85a], a

jr_001_4c4a:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    call Call_001_5d6a
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    jr jr_001_4c68

    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_4c4a

jr_001_4c68:
    ld a, [$c524]
    ld c, a
    ld a, [$c525]
    ld b, a
    ld a, c
    cp b
    jr c, jr_001_4c75

    ret


jr_001_4c75:
    ld a, [$c524]
    cp $0c
    jr nc, jr_001_4ca8

    cp $02
    jr nc, jr_001_4c99

    cp $01
    jr z, jr_001_4c89

    ld a, $ff
    ld [$c528], a

jr_001_4c89:
    ld a, [$c529]
    cp $ff
    jr nz, jr_001_4ca9

    ld d, a
    ld a, [$c524]
    inc a
    ld [$c524], a
    ld a, d

jr_001_4c99:
    ld d, a
    ld a, [$c524]
    inc a
    ld [$c524], a
    ld a, d

jr_001_4ca2:
    call Call_001_4b87
    call Call_001_4d6c

jr_001_4ca8:
    ret


jr_001_4ca9:
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
    jr c, jr_001_4c99

    call Call_000_3190
    call Call_000_32d8
    ld a, $5b
    ld [$c867], a
    ld a, $c8
    ld [$c868], a
    call Call_000_3138
    call Call_000_31c9
    ld a, [$c524]
    cp $00
    jr z, jr_001_4c99

    jr jr_001_4ca2

Call_001_4cdd:
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
    call Call_001_5d6a
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
    jr nc, jr_001_4d25

    cp $01
    jr z, jr_001_4d15

    ld a, [$c529]
    inc a
    ld [$c528], a

jr_001_4d15:
    ld a, [$c529]
    cp $ff
    jr nz, jr_001_4d35

    ld d, a
    ld a, [$c524]
    dec a
    ld [$c524], a
    ld a, d

jr_001_4d25:
    ld d, a
    ld a, [$c524]
    dec a
    ld [$c524], a
    ld a, d

jr_001_4d2e:
    call Call_001_4b87
    call Call_001_4d6c
    ret


jr_001_4d35:
    ld d, a
    ld a, [$c528]
    dec a
    ld [$c528], a
    ld a, d
    ld a, [$c524]
    cp $02
    jr z, jr_001_4d4c

    ld a, [$c528]
    cp $ff
    jr z, jr_001_4d25

jr_001_4d4c:
    call Call_000_3190
    call Call_000_32d8
    ld bc, $c85b
    ld a, c
    ld [$c867], a
    ld a, b
    ld [$c868], a
    call Call_000_3138
    call Call_000_31c9
    ld a, [$c524]
    cp $02
    jr z, jr_001_4d25

    jr jr_001_4d2e

Call_001_4d6c:
    ld a, [$c524]
    cp $00
    jr z, jr_001_4dcc

    cp $01
    jr nz, jr_001_4dac

    ld a, [$c528]
    add a
    ld c, a
    ld b, $00
    ld hl, $c52a
    add hl, bc
    ld a, [hl+]
    cp $02
    jr nz, jr_001_4dac

    ld a, [hl]
    sla a
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, $c53b
    add hl, bc
    ld a, [$c599]
    cp $00
    jr z, jr_001_4d9d

    inc hl

jr_001_4d9d:
    ld bc, $c46f
    ld e, $00

jr_001_4da2:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, e
    inc a
    ld e, a
    cp $07
    jr c, jr_001_4da2

jr_001_4dac:
    xor a
    ld [$c526], a

jr_001_4db0:
    call Call_001_6496
    call Call_001_63b1
    ld a, [$c523]
    and $02
    jr nz, jr_001_4dcb

    call Call_001_4e07
    ld a, [$c526]
    inc a
    ld [$c526], a
    cp $07
    jr c, jr_001_4db0

jr_001_4dcb:
    ret


jr_001_4dcc:
    xor a
    ld [$c526], a

jr_001_4dd0:
    call Call_000_32aa
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_4dcb

    ld [$c8b6], a
    ld a, [$c599]
    cp $00
    jr z, jr_001_4df4

    ld a, [$c8b6]
    sub $20
    ld [$c8b6], a

jr_001_4df4:
    call Call_001_4e07
    ld d, a
    ld a, [$c526]
    inc a
    ld [$c526], a
    ld a, d
    ld a, [$c526]
    cp $07
    jr c, jr_001_4dd0

Call_001_4e07:
    ldh a, [$ff9e]
    push af
    ld a, $01
    ld [$c668], a
    ld a, [$c526]
    ld l, a
    ld h, $00
    ld bc, $4eba
    add hl, bc
    ld a, [hl+]
    ld [$c669], a
    ld a, [$c599]
    cp $00
    jr z, jr_001_4e43

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
    jr nc, jr_001_4ead

    ldh a, [$ff9e]
    ld l, a
    ld h, $00
    ld bc, $4ec1
    add hl, bc
    ld a, [hl]
    jr jr_001_4ead

jr_001_4e43:
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
    jr nz, jr_001_4e65

    ld a, [$c524]
    cp $01
    jr nz, jr_001_4e61

    ld a, $02
    jr jr_001_4ead

jr_001_4e61:
    ld a, $01
    jr jr_001_4ead

jr_001_4e65:
    ld d, a
    ldh a, [$ff9e]
    cp $08
    ld a, d
    jr nz, jr_001_4e98

    ld a, [$c524]
    cp $01
    jr z, jr_001_4e78

    ld a, $03
    jr jr_001_4ead

jr_001_4e78:
    ld a, [$c528]
    add a
    ld c, a
    ld b, $00
    ld hl, $c52b
    add hl, bc
    ld a, [hl]
    cp $02
    jr nz, jr_001_4e8c

    ld a, $04
    jr jr_001_4ead

jr_001_4e8c:
    cp $07
    jr nz, jr_001_4e94

    ld a, $08
    jr jr_001_4ead

jr_001_4e94:
    ld a, $09
    jr jr_001_4ead

jr_001_4e98:
    ld d, a
    ldh a, [$ff9e]
    cp $2d
    ld a, d
    jr nz, jr_001_4ead

    ld a, [$c524]
    cp $01
    jr nz, jr_001_4eab

    ld a, $0a
    jr jr_001_4ead

jr_001_4eab:
    ld a, $05

jr_001_4ead:
    ld [$c8e6], a
    call Call_000_10d0
    call Call_000_03d3
    pop af
    ldh [$ff9e], a
    ret


    dec d
    ld d, $17
    jr jr_001_4ed8

    ld a, [de]
    dec de
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $f0
    sbc [hl]
    push af
    ld a, [$c528]
    add a
    ldh [$ff9e], a
    ld bc, $c52a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a

jr_001_4ed8:
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
    call Call_001_4f1a
    xor a
    ld [$c8e6], a
    call Call_000_10d0
    call Call_000_03d3
    pop af
    ldh [$ff9e], a
    ret


Call_001_4f1a:
    ld a, [$c524]
    cp $02
    jr c, jr_001_4f23

    ld a, $02

jr_001_4f23:
    rst RST_00
    ld a, [hl+]
    ld c, a
    dec sp
    ld c, a
    add l
    ld c, a
    ld a, [$c599]
    cp $00
    jr nz, jr_001_4f35

    ld a, $be
    jr jr_001_4f37

jr_001_4f35:
    ld a, $c8

jr_001_4f37:
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
    ld a, [$c599]
    cp $00
    jr nz, jr_001_4f64

    ld bc, $64e4
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    jr jr_001_4f6f

jr_001_4f64:
    ld bc, $64ea
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]

jr_001_4f6f:
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


    ld a, [$c599]
    cp $00
    jr nz, jr_001_4f90

    ld a, $bd
    jr jr_001_4f92

jr_001_4f90:
    ld a, $c9

jr_001_4f92:
    ld [$c8b6], a
    ret


    ld a, [$c640]
    add a
    ld e, a
    ld d, $00
    ld hl, $4fcf
    add hl, de
    ld a, [hl+]
    ld [$c857], a
    ld a, [hl]
    ld [$c858], a

jr_001_4fa9:
    ld a, [$c878]
    add a
    add a
    ld b, a
    add a
    ld c, a
    add a
    add b
    add c
    ld c, a
    ld b, $00
    ld a, [$c857]
    ld l, a
    ld a, [$c858]
    ld h, a
    add hl, bc
    ld a, [$c877]
    add a
    ld c, a
    add hl, bc
    ld a, [hl+]

jr_001_4fc7:
    ld [$c883], a
    ld a, [hl]
    ld [$c884], a
    ret


    and c
    ld d, b
    db $dd
    ld c, a
    ld h, l
    ld d, c
    add hl, hl
    ld d, d
    db $ed
    ld d, d
    or c
    ld d, e
    ld [hl], l
    ld d, h
    ld b, b
    jr nz, jr_001_5000

    db $10
    db $10
    ld [$0408], sp

jr_001_4fe5:
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0081
    add c
    nop
    ld [bc], a
    ld bc, $0204
    ld [$1004], sp
    ld [$1020], sp
    ld b, b
    jr nz, jr_001_501a

    db $10
    db $10
    ld [$0408], sp
    inc b

jr_001_5000:
    ld [bc], a
    ld [bc], a
    ld bc, $0081
    ld b, b
    jr nz, jr_001_5048

    jr nz, @-$7d

    nop
    ld [bc], a
    ld bc, $0204
    ld [$1004], sp
    ld [$1020], sp
    db $10
    ld [$0408], sp
    inc b

jr_001_501a:
    ld [bc], a
    ld [bc], a
    ld bc, $0081
    ld b, b
    jr nz, @+$22

    db $10
    jr nz, jr_001_5035

    ld b, b
    jr nz, jr_001_4fa9

    nop
    ld [bc], a
    ld bc, $0204
    ld [$1004], sp
    ld [$0408], sp
    inc b
    ld [bc], a

jr_001_5035:
    ld [bc], a
    ld bc, $0081
    ld b, b
    jr nz, @+$22

    db $10
    db $10
    ld [$0810], sp
    jr nz, jr_001_5053

    ld b, b
    jr nz, jr_001_4fc7

    nop
    ld [bc], a

jr_001_5048:
    ld bc, $0204

jr_001_504b:
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    ld bc, $0081

jr_001_5053:
    ld b, b
    jr nz, jr_001_5076

    db $10
    db $10
    ld [$0408], sp
    ld [$1004], sp
    ld [$1020], sp
    ld b, b
    jr nz, jr_001_4fe5

    nop

jr_001_5065:
    ld [bc], a
    ld bc, $0204
    ld [bc], a
    ld bc, $0081
    ld b, b
    jr nz, jr_001_5090

    db $10
    db $10
    ld [$0408], sp
    inc b

jr_001_5076:
    ld [bc], a
    inc b
    ld [bc], a
    ld [$1004], sp
    ld [$1020], sp

jr_001_507f:
    ld b, b
    jr nz, @-$7d

    nop
    ld [bc], a
    ld bc, $0081
    ld b, b
    jr nz, jr_001_50aa

    db $10
    db $10
    ld [$0408], sp
    inc b

jr_001_5090:
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    inc b
    ld [bc], a
    ld [$1004], sp
    ld [$1020], sp
    ld b, b
    jr nz, @-$7d

    nop
    add c
    nop
    ld [bc], a
    ld bc, $0204
    ld [$1004], sp

jr_001_50aa:
    ld [$1020], sp
    ld b, b
    jr nz, jr_001_50f0

    jr nz, jr_001_50d2

    db $10

jr_001_50b3:
    db $10
    ld [$0408], sp
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0081
    ld [bc], a
    ld bc, $0204
    ld [$1004], sp
    ld [$1020], sp
    ld b, b
    jr nz, jr_001_504b

    nop
    add c
    nop

jr_001_50cd:
    ld b, b
    jr nz, jr_001_50f0

    db $10
    db $10

jr_001_50d2:
    ld [$0408], sp
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0204
    ld [$1004], sp
    ld [$1020], sp
    ld b, b
    jr nz, jr_001_5065

    nop
    ld [bc], a

jr_001_50e6:
    ld bc, $0102
    add c
    nop
    ld b, b
    jr nz, jr_001_510e

    db $10
    db $10

jr_001_50f0:
    ld [$0408], sp
    inc b
    ld [bc], a
    ld [$1004], sp
    ld [$1020], sp
    ld b, b
    jr nz, jr_001_507f

    nop
    ld [bc], a
    ld bc, $0204
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0081
    ld b, b
    jr nz, jr_001_512c

    db $10
    db $10

jr_001_510e:
    ld [$0408], sp
    db $10
    ld [$1020], sp
    ld b, b
    jr nz, @-$7d

    nop
    ld [bc], a
    ld bc, $0204
    ld [$0804], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0081
    ld b, b
    jr nz, jr_001_514a

    db $10
    db $10

jr_001_512c:
    ld [$1020], sp
    ld b, b
    jr nz, jr_001_50b3

    nop
    ld [bc], a
    ld bc, $0204
    ld [$1004], sp
    ld [$0810], sp
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    ld bc, $0081
    ld b, b
    jr nz, jr_001_5168

    db $10
    ld b, b

jr_001_514a:
    jr nz, jr_001_50cd

    nop
    ld [bc], a
    ld bc, $0204
    ld [$1004], sp
    ld [$1020], sp
    jr nz, jr_001_5169

    db $10
    ld [$0408], sp
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0081
    ld b, b
    jr nz, jr_001_50e6

    nop
    add b

jr_001_5168:
    nop

jr_001_5169:
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst RST_38
    rst RST_38

jr_001_5175:
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $010f
    ld a, a
    ld bc, $0000
    ld b, b
    rst RST_38
    ld b, b
    ldh a, [rLCDC]
    nop
    ld h, b
    nop
    ld h, b
    nop

jr_001_519b:
    ld h, b
    nop
    nop
    inc a
    nop
    inc e
    ld bc, $030c
    inc b
    rrca
    ld b, $10
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_51bd

    jr nc, @-$0e

    jr jr_001_5175

    inc e
    add b
    ld e, $00
    ld bc, $03c0
    ld h, b

jr_001_51bd:
    ld b, $30
    ld c, $38
    stop
    jr nz, jr_001_51c5

jr_001_51c5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [$040c], sp
    jr c, @+$04

    ld [hl], b
    ld bc, $0ee0
    nop
    inc c
    add b
    jr jr_001_519b

    db $10
    ldh a, [rNR41]
    ld a, b
    ld b, b
    inc c
    nop
    ld [bc], a
    nop
    nop
    jr nz, jr_001_51e7

jr_001_51e7:
    jr @+$03

    ld b, $02
    inc bc
    inc b
    ld bc, $000c
    jr @+$72

    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld b, b
    add b
    nop
    ldh a, [rP1]
    db $fc
    nop
    nop
    rra
    nop
    rlca
    nop
    ld bc, $0001
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    jr nz, jr_001_5236

    ret nz

jr_001_5236:
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    jr nz, jr_001_5244

    ret nz

jr_001_5244:
    nop
    ret nz

    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    jr nz, jr_001_5254

    ret nz

jr_001_5254:
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    jr nz, @+$03

    jr nz, jr_001_5264

    ret nz

jr_001_5264:
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    jr nz, jr_001_5272

    ret nz

jr_001_5272:
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    jr nz, jr_001_5282

    ret nz

jr_001_5282:
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    jr nz, jr_001_5290

    ret nz

jr_001_5290:
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    ld [$1004], sp
    ld [bc], a
    jr nz, jr_001_52a0

    ret nz

jr_001_52a0:
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    jr nz, jr_001_52ae

    ret nz

jr_001_52ae:
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0804], sp
    ld [$1004], sp
    ld [bc], a
    jr nz, jr_001_52be

    ret nz

jr_001_52be:
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    jr nz, jr_001_52cc

    ret nz

jr_001_52cc:
    nop
    ld bc, $0220
    db $10
    ld [bc], a
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    jr nz, jr_001_52dc

    ret nz

jr_001_52dc:
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    jr nz, jr_001_52ea

    ret nz

jr_001_52ea:
    nop
    ld bc, $c020
    nop
    jr nz, jr_001_52f2

    db $10

jr_001_52f2:
    ld [bc], a
    ld [$0404], sp
    ld [$1002], sp
    ld bc, $c020
    nop
    jr nz, jr_001_5300

    db $10

jr_001_5300:
    ld [bc], a
    ld [$0404], sp
    ld [$1002], sp
    ld bc, $2020
    ld bc, $0210
    ld [$0404], sp
    ld [$1002], sp
    ld bc, $c020
    nop
    jr nz, jr_001_531a

    db $10

jr_001_531a:
    ld [bc], a
    ld [$0404], sp
    ld [$1002], sp
    ld bc, $c020
    nop
    db $10
    ld [bc], a
    ld [$0404], sp
    ld [$1002], sp
    ld bc, $c020
    nop
    jr nz, jr_001_5334

    db $10

jr_001_5334:
    ld [bc], a
    ld [$0404], sp
    ld [$1002], sp
    ld bc, $c020
    nop
    jr nz, @+$03

    ld [$0404], sp
    ld [$1002], sp
    ld bc, $c020
    nop
    jr nz, jr_001_534e

    db $10

jr_001_534e:
    ld [bc], a
    ld [$0404], sp
    ld [$1002], sp
    ld bc, $c020
    nop
    jr nz, jr_001_535c

    db $10

jr_001_535c:
    ld [bc], a
    inc b
    ld [$1002], sp
    ld bc, $c020
    nop
    jr nz, jr_001_5368

    db $10

jr_001_5368:
    ld [bc], a
    ld [$0404], sp
    ld [$1002], sp
    ld bc, $c020
    nop
    jr nz, jr_001_5376

    db $10

jr_001_5376:
    ld [bc], a
    ld [$0204], sp
    db $10
    ld bc, $c020
    nop
    jr nz, jr_001_5382

    db $10

jr_001_5382:
    ld [bc], a
    ld [$0404], sp
    ld [$1002], sp
    ld bc, $c020
    nop
    jr nz, jr_001_5390

    db $10

jr_001_5390:
    ld [bc], a
    ld [$0404], sp
    ld [$2001], sp
    ret nz

    nop
    jr nz, jr_001_539c

    db $10

jr_001_539c:
    ld [bc], a
    ld [$0404], sp
    ld [$1002], sp
    ld bc, $c020
    nop
    jr nz, jr_001_53aa

    db $10

jr_001_53aa:
    ld [bc], a
    ld [$0404], sp
    ld [$1002], sp
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0120
    jr nz, jr_001_53c2

jr_001_53c2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rSB], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0320
    jr nc, @+$05

    jr nc, @+$03

    jr nz, jr_001_53e0

jr_001_53e0:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rSB], a
    db $10
    ld [bc], a
    jr nz, jr_001_53ee

    ret nz

jr_001_53ee:
    nop
    nop
    nop
    ld bc, $0220
    db $10
    inc b
    ld [$0804], sp
    ld [bc], a
    db $10
    ld bc, $0020
    nop
    ret nz

    nop
    jr nz, jr_001_5404

    db $10

jr_001_5404:
    ld [bc], a
    ld [$1004], sp
    ld [bc], a
    jr nz, jr_001_540c

    pop bc

jr_001_540c:
    jr nz, jr_001_5410

    db $10
    inc b

jr_001_5410:
    ld [$0408], sp
    ld [$0404], sp
    ld [$1002], sp
    pop bc
    jr nz, jr_001_543c

    ld bc, $0210
    ld [$0404], sp
    ld [$0408], sp
    ld de, $2222
    ld de, $08c4
    ld [$1004], sp
    ld [bc], a
    db $10
    ld [bc], a
    ld [$c404], sp
    ld [$1122], sp
    ld de, $0822
    inc b
    inc b

jr_001_543c:
    ld [$1002], sp
    dec b
    jr z, @+$0c

    inc d
    inc d
    ld a, [bc]
    jr z, @+$07

    ret nc

    ld [bc], a
    jr nz, @+$03

    jr nz, jr_001_544e

    ret nc

jr_001_544e:
    ld [bc], a
    jr z, jr_001_5456

    inc d
    ld a, [bc]
    ld a, [bc]
    inc d
    dec b

jr_001_5456:
    jr z, @+$04

    db $10
    ld bc, $0220
    db $10
    inc b
    ld [$0408], sp
    db $10
    ld [bc], a
    jr nz, jr_001_5466

    ret nz

jr_001_5466:
    nop
    ret nz

    nop
    jr nz, jr_001_546c

    db $10

jr_001_546c:
    ld [bc], a
    ld [$0404], sp
    ld [$1002], sp
    ld bc, $0420
    ld bc, $2082
    ld b, c
    db $10
    jr nz, jr_001_5485

    db $10
    inc b
    ld [$0402], sp
    ld bc, $2082

jr_001_5485:
    ld b, c
    db $10
    jr nz, jr_001_5491

    db $10
    inc b
    ld [$0402], sp
    ld bc, $2082

jr_001_5491:
    add d
    jr nz, jr_001_54d5

    db $10
    jr nz, jr_001_549f

    db $10
    inc b
    ld [$0402], sp
    ld bc, $2082

jr_001_549f:
    ld b, c
    db $10
    jr nz, jr_001_54ab

    db $10
    inc b
    ld [$0402], sp
    ld bc, $2082

jr_001_54ab:
    ld b, c
    db $10
    ld b, c
    db $10
    jr nz, jr_001_54b9

    db $10
    inc b
    ld [$0402], sp
    ld bc, $2082

jr_001_54b9:
    ld b, c
    db $10
    jr nz, jr_001_54c5

    db $10
    inc b
    ld [$0402], sp
    ld bc, $2082

jr_001_54c5:
    ld b, c
    db $10
    jr nz, @+$0a

    jr nz, jr_001_54d3

    db $10
    inc b
    ld [$0402], sp
    ld bc, $2082

jr_001_54d3:
    ld b, c
    db $10

jr_001_54d5:
    jr nz, jr_001_54df

    db $10
    inc b
    ld [$0402], sp
    ld bc, $2082

jr_001_54df:
    ld b, c
    db $10
    jr nz, @+$0a

    db $10
    inc b
    db $10
    inc b
    ld [$0402], sp
    ld bc, $2082
    ld b, c
    db $10
    jr nz, jr_001_54f9

    db $10
    inc b
    ld [$0402], sp
    ld bc, $2082

jr_001_54f9:
    ld b, c
    db $10
    jr nz, @+$0a

    db $10
    inc b
    ld [$0802], sp
    ld [bc], a
    inc b
    ld bc, $2082
    ld b, c
    db $10
    jr nz, jr_001_5513

    db $10
    inc b
    ld [$0402], sp
    ld bc, $2082

jr_001_5513:
    ld b, c
    db $10
    jr nz, jr_001_551f

    db $10
    inc b
    ld [$0402], sp
    ld bc, $9ef0

jr_001_551f:
    push af
    call Call_001_5527
    pop af
    ldh [$ff9e], a
    ret


Call_001_5527:
    call Call_001_4346
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

Jump_001_5554:
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
    call Call_001_42e0
    ld a, [$c523]
    and $01
    jr nz, jr_001_55d5

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
    jr nz, jr_001_55d5

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
    jr z, jr_001_55b5

    call Call_001_4285
    ld a, [$c523]
    and $01
    ret nz

    ld a, [$c855]

jr_001_55b5:
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
    call Call_000_3792
    ret


jr_001_55d5:
    ldh a, [$ff9e]
    inc a
    inc a
    inc a
    ldh [$ff9e], a
    jp Jump_001_5554


Call_001_55df:
    call Call_001_55ec
    call Call_001_636d
    call Call_001_561a
    call Call_001_58ef
    ret


Call_001_55ec:
    ld a, [$c599]
    cp $00
    jr z, jr_001_5613

    ld a, [$c8c5]
    ld d, a
    ld a, [$c8c6]
    ld e, a
    ld hl, $596f

jr_001_55fe:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_5613

    cp d
    jr nz, jr_001_560f

    ld a, [hl+]
    cp e
    jr nz, jr_001_5610

    ld a, [hl]
    ld [$c8b1], a
    ret


jr_001_560f:
    inc hl

jr_001_5610:
    inc hl
    jr jr_001_55fe

jr_001_5613:
    ld a, [$c8c5]
    ld [$c8b1], a
    ret


Call_001_561a:
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
    ld l, h
    ld d, [hl]
    ld b, d
    ld d, [hl]
    ld l, l
    ld d, [hl]
    adc [hl]
    ld d, [hl]
    jr nc, @+$59

    ld e, e
    ld d, a
    ld l, h
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


    ld a, [$c599]
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
    ld [$c866], a
    ld bc, $c4e9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [$c866]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    push af
    ld bc, $1859
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr z, jr_001_56e0

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

jr_001_56e0:
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
    ld a, [$c866]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    push af
    ld bc, $1859
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr nz, jr_001_5711

    ret


jr_001_5711:
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
    ld [$c866], a
    ld bc, $c4c1
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [$c866]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld a, d
    push af
    ld bc, $1859
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr nz, jr_001_579c

    ret


jr_001_579c:
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


Call_001_57ac:
    ld d, a
    ld a, $10
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    call Call_001_57c7
    ld d, a
    ld a, $00
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    call Call_001_57c7
    ret


Call_001_57c7:
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
    ld l, h
    ld d, [hl]
    db $e4
    ld d, a
    ld a, [hl-]
    ld e, b
    ld e, e
    ld e, b
    rrca
    ld e, b
    cp [hl]
    ld e, b
    ld l, h
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


    ld a, [$c599]
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


    call Call_001_5862
    call Call_001_588f
    ret


Call_001_5862:
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $01
    jr nz, jr_001_5880

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1d84
    ret


jr_001_5880:
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1d75
    ret


Call_001_588f:
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    srl a
    and $01
    jr nz, jr_001_58af

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1dc9
    ret


jr_001_58af:
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1db8
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
    jr nz, jr_001_58e0

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1d47
    ret


jr_001_58e0:
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1d3b
    ret


Call_001_58ef:
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
    call Call_000_32d8
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
    jr nz, jr_001_5a1a

Call_001_5a0d:
    ld a, [$c876]
    ld [$c8ab], a
    ld a, [$c877]
    ld [$c8ac], a
    ret


jr_001_5a1a:
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
    call Call_001_5b04
    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_5a8e

    ld a, [$c8c5]
    cp $ff
    jr z, jr_001_5a8e

    call Call_001_55df
    ld a, [$c599]
    cp $00
    jr nz, jr_001_5a4d

    call Call_000_1a37
    jr jr_001_5a50

jr_001_5a4d:
    call Call_000_394a

jr_001_5a50:
    ld a, [$c8ca]
    ld [$c8ea], a
    call Call_001_5d65
    ld a, [$c8da]
    ld [$c8ea], a
    call Call_001_5d65
    call Call_001_5aef
    call Call_001_57ac
    ld a, [$c599]
    cp $00
    jr z, jr_001_5a72

    call Call_000_3845

jr_001_5a72:
    call Call_001_5b60
    call Call_001_5b72
    ld a, $bf
    call Call_000_1c5c
    ld a, [$c523]
    and $01
    jr z, jr_001_5a8e

    ld a, $ff
    ld [$c8b2], a
    ld a, $bf
    call Call_000_1cd6

jr_001_5a8e:
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
    jr nz, jr_001_5aab

    call Call_001_5a0d
    ret


jr_001_5aab:
    ld d, a
    ld a, $10
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    call Call_001_5b04
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_5aee

    call Call_001_55df
    call Call_000_1a71
    call Call_000_01b7
    ld a, [$c8da]
    ld [$c8ea], a
    call Call_001_5d65
    call Call_001_5aef
    ld d, a
    ld a, $00
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    ld a, [$c523]
    and $fb
    ld [$c523], a

jr_001_5aee:
    ret


Call_001_5aef:
    ld a, [$5df8]
    ld c, a
    ld a, [$5df9]
    ld b, a
    ld hl, $5ee3
    call Call_000_01d8
    call Call_000_03d3
    call Call_000_01b7
    ret


Call_001_5b04:
    ld a, [$c8ab]
    ld [$c876], a
    ld a, [$c8ac]
    ld [$c877], a
    ld a, [$c875]
    rst RST_00
    add b
    ld e, e
    add c
    ld e, e
    ld e, $5b
    ld a, [hl]
    ld e, e
    ld a, a
    ld e, e
    ldh a, [$ffa0]
    cp $10
    jr nz, jr_001_5b4f

    ld a, [$c8ca]
    ld [$c8ea], a
    call Call_001_5d65
    call Call_001_5b72
    ld a, [$c523]
    and $fb
    ld [$c523], a
    ld a, [$c599]
    cp $00
    jr nz, jr_001_5b43

    ld a, $7f
    jr jr_001_5b45

jr_001_5b43:
    ld a, $8f

jr_001_5b45:
    call Call_000_1c8a
    ld a, [$c5c1]
    ld [$c5c0], a
    ret


jr_001_5b4f:
    call Call_001_5b5b
    call Call_001_5d87
    ld a, $ff
    ld [$c5c0], a
    ret


Call_001_5b5b:
    ld a, $ff
    ld [$c8b2], a

Call_001_5b60:
    ld a, $ff
    ld [$c8b1], a
    ld [$c8b3], a
    ld hl, $c8c5
    ld d, $10

jr_001_5b6d:
    ld [hl+], a
    dec d
    jr nz, jr_001_5b6d

    ret


Call_001_5b72:
    ld hl, $c8d5
    ld a, $ff
    ld d, $10

jr_001_5b79:
    ld [hl+], a
    dec d
    jr nz, jr_001_5b79

    ret


    ret


    ret


    ret


    ld hl, $c8af
    ld a, [hl]
    ld hl, $5bda
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
    jr z, jr_001_5bd0

    cp $15
    jr z, jr_001_5bd0

    ld [$c5c0], a
    cp $0a
    jr z, jr_001_5bc9

    cp $09
    jr nc, jr_001_5bd0

    ld hl, $c523
    ld a, [hl]
    and $04
    jr nz, jr_001_5bd0

jr_001_5bb2:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    call Call_001_5d6a
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    jr jr_001_5bd0

jr_001_5bc9:
    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_5bb2

jr_001_5bd0:
    ld a, [$c8b0]
    rst RST_00
    ld c, [hl]
    rla
    db $f4
    ld e, e
    or e
    ld e, h
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
    jr nc, jr_001_5c0b

    ld hl, $c523
    ld a, [hl]
    and $04
    jr z, jr_001_5c04

    ret


jr_001_5c04:
    ld a, [$c5c0]
    ld [$c8b2], a
    ret


jr_001_5c0b:
    sub $09
    rst RST_00
    ld l, [hl]
    ld e, h
    dec l
    ld e, h
    bit 1, e
    bit 1, e
    inc l
    ld e, h
    inc l
    ld e, h
    inc l
    ld e, h
    inc l
    ld e, h
    inc l
    ld e, h
    inc l
    ld e, h
    inc l
    ld e, h
    inc l
    ld e, h
    inc l
    ld e, h
    inc l
    ld e, h
    db $10
    jr c, @-$35

    ld a, [$c523]
    and $04
    ret nz

    call Call_000_37d8
    ldh a, [$ffa0]
    cp $10
    jr nz, jr_001_5c5d

    call Call_001_5b72
    ld a, [$c523]
    and $fb
    ld [$c523], a
    ld a, [$c599]
    cp $00
    jr nz, jr_001_5c52

    ld a, $7f
    jr jr_001_5c54

jr_001_5c52:
    ld a, $8f

jr_001_5c54:
    call Call_000_1c8a
    ld a, [$c5c1]
    ld [$c5c0], a

jr_001_5c5d:
    call Call_001_5b5b
    call Call_001_5d87
    ld a, $ff
    ld [$c5c0], a
    ld a, $ff
    ld [$c8b2], a
    ret


    ld a, [$c8b2]
    cp $ff
    jr nz, jr_001_5c76

    ret


jr_001_5c76:
    ld hl, $5e9e
    ld a, [$5df8]
    ld c, a
    ld a, [$5df9]
    ld b, a
    call Call_000_01d8
    call Call_000_03d3
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
    ld a, [$c599]
    cp $00
    jr nz, jr_001_5ca3

    ld a, $73
    jr jr_001_5ca5

jr_001_5ca3:
    ld a, $a6

jr_001_5ca5:
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
    call Call_001_64bd
    ld a, [$c523]
    and $02
    jr z, jr_001_5cd3

    ret


jr_001_5cd3:
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

jr_001_5cfa:
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
    call Call_001_5d35
    ret


Call_001_5d35:
    ld hl, $5eaa

jr_001_5d38:
    ld a, [$c8ea]
    cp $ff
    ret z

    push hl
    add a
    ld e, a
    ld d, $00
    ld hl, $5d55
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    pop hl
    call Call_000_01d8
    call Call_000_03d3
    call Call_000_01b7
    ret


    and b
    sbc d
    ret nz

    sbc d
    ldh [$ff9a], a
    nop
    sbc e
    jr nz, jr_001_5cfa

    ld b, b
    sbc e
    ld h, b
    sbc e
    add b
    sbc e

Call_001_5d65:
    ld hl, $5eef
    jr jr_001_5d38

Call_001_5d6a:
    call Call_001_5d87
    ld d, a
    ld a, $00
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    ld a, [$c5c0]
    ld [$c5c1], a
    call Call_001_5dca
    ld a, [$c5c1]
    call Call_001_5db0
    ret


Call_001_5d87:
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
    call Call_001_5dca
    ld a, [$c5c1]
    call Call_001_5db0
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    ret


Call_001_5db0:
    cp $ff
    ret z

    push hl
    add a
    ld e, a
    ld d, $00
    ld hl, $5de6
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    pop hl
    call Call_000_01d8
    call Call_000_03d3
    call Call_000_01a9
    ret


Call_001_5dca:
    cp $ff
    ret z

    push af
    ld bc, $5e10
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
    ld [hl], c
    sbc d
    ld h, b
    sbc d
    and b
    sbc d
    ret nz

    sbc d
    ldh [$ff9a], a
    nop
    sbc e
    jr nz, @-$63

    ld b, b
    sbc e
    ld h, b
    sbc e
    add b
    sbc e
    inc d
    ld e, [hl]
    ld a, $5e
    ld l, b
    ld e, [hl]
    ld l, [hl]
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld a, d
    ld e, [hl]
    add b
    ld e, [hl]
    add [hl]
    ld e, [hl]
    adc h
    ld e, [hl]
    sub d
    ld e, [hl]
    sbc b
    ld e, [hl]
    sbc [hl]
    ld e, [hl]
    and h
    ld e, [hl]
    xor d
    ld e, [hl]
    xor d
    ld e, [hl]
    xor d
    ld e, [hl]
    xor d
    ld e, [hl]
    xor d
    ld e, [hl]
    xor d
    ld e, [hl]
    xor d
    ld e, [hl]
    xor d
    ld e, [hl]
    xor d
    ld e, [hl]
    xor d
    ld e, [hl]
    xor l
    ld e, [hl]
    or e
    ld e, [hl]
    cp c
    ld e, [hl]
    cp a
    ld e, [hl]
    push bc
    ld e, [hl]
    bit 3, [hl]
    pop de
    ld e, [hl]
    rst RST_10
    ld e, [hl]
    db $dd
    ld e, [hl]
    db $e3
    ld e, [hl]
    jp hl


    ld e, [hl]
    rst RST_28
    ld e, [hl]
    rst RST_28
    ld e, [hl]
    rst RST_28
    ld e, [hl]
    rst RST_28
    ld e, [hl]
    rst RST_28
    ld e, [hl]
    rst RST_28
    ld e, [hl]
    rst RST_28
    ld e, [hl]
    rst RST_28
    ld e, [hl]
    rst RST_28
    ld e, [hl]
    rst RST_28
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    ld a, [de]
    dec de
    ld a, [hl+]
    dec hl
    ld [bc], a
    ld [bc], a
    jr nc, jr_001_5ea3

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
    jr c, jr_001_5eb7

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
    jr jr_001_5eb5

    jr z, jr_001_5ec7

    ld [bc], a
    ld [bc], a
    inc d
    dec d
    inc h

jr_001_5ea3:
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

jr_001_5eb5:
    ld d, [hl]
    ld d, a

jr_001_5eb7:
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

jr_001_5ec7:
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
    call Call_001_5f15
    ret


jr_001_5f06:
    ld a, [$c8af]
    cp $08
    jr c, jr_001_5f11

    ld d, $07
    jr jr_001_5f2d

jr_001_5f11:
    ld d, $12
    jr jr_001_5f2d

Call_001_5f15:
    ld a, [$c8af]
    cp $17
    jr z, jr_001_5f06

    cp $15
    jr nc, jr_001_5f42

    ld a, [$c187]
    bit 6, a
    jr nz, jr_001_5f06

    bit 7, a
    jr nz, jr_001_5f06

    ld d, $0c

jr_001_5f2d:
    call Call_000_0456
    ld a, [$c187]
    cp $00
    jr z, jr_001_5f42

    push de
    call Call_000_1889
    call Call_000_03fe
    pop de
    dec d
    jr nz, jr_001_5f2d

jr_001_5f42:
    call Call_000_1889
    call Call_000_03fe
    call Call_000_0456
    ld a, [$c187]
    cp $00
    jr z, jr_001_5f42

    and $f0
    jp nz, Jump_001_6030

    ld a, [$c188]
    cp $00
    jr z, jr_001_5f42

    bit 0, a
    jr nz, jr_001_5f7b

    bit 1, a
    jr nz, jr_001_5f8b

    bit 3, a
    jr nz, jr_001_5f6c

    jr jr_001_5f42

jr_001_5f6c:
    ld a, $16
    ld [$c8af], a
    ld a, $38
    ld [$c876], a
    ld [$c877], a
    ret


    ret


jr_001_5f7b:
    ld a, $19
    call Call_000_080e
    ld a, $05
    call Call_000_0753
    ld a, $01
    ld [$c875], a
    ret


jr_001_5f8b:
    ld a, $02
    ld [$c875], a
    ret


Call_001_5f91:
    ld a, [$c187]
    bit 4, a
    jr nz, jr_001_5fb8

    bit 5, a
    jr nz, jr_001_5fbf

    bit 7, a
    jr nz, jr_001_5fb1

    bit 6, a
    ret z

    ld a, [$c8ac]
    cp $00
    ret z

    dec a
    jr z, jr_001_5fad

    dec a

jr_001_5fad:
    ld [$c877], a
    ret


jr_001_5fb1:
    ld a, [$c8ac]
    inc a
    inc a
    jr jr_001_5fad

jr_001_5fb8:
    ld a, [$c8ab]
    inc a
    inc a
    jr jr_001_5fc9

jr_001_5fbf:
    ld a, [$c8ab]
    cp $00
    ret z

    dec a
    jr z, jr_001_5fc9

    dec a

jr_001_5fc9:
    ld [$c876], a
    ret


Call_001_5fcd:
    ld a, [$c187]
    bit 4, a
    jr nz, jr_001_5fe1

    bit 5, a
    jr nz, jr_001_5fed

    bit 7, a
    jr nz, jr_001_5fff

    bit 6, a
    jr nz, jr_001_5ff6

    ret


jr_001_5fe1:
    ld a, [$c8ab]
    add $08
    cp $a0
    ret nc

    ld [$c876], a
    ret


jr_001_5fed:
    ld a, [$c8ab]
    sub $08
    ld [$c876], a
    ret


jr_001_5ff6:
    ld a, [$c8ac]
    sub $08
    ld [$c877], a
    ret


jr_001_5fff:
    ld a, [$c8ac]
    add $08
    ld [$c877], a
    ret


Call_001_6008:
    call Call_001_6133

Call_001_600b:
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
    jp Jump_000_18c1


Call_001_6023:
    ld a, [$c876]
    ld [$c8ab], a
    ld a, [$c877]
    ld [$c8ac], a
    ret


Jump_001_6030:
    ld a, [$c8af]
    cp $17
    jr z, jr_001_6073

    cp $15
    jr nc, jr_001_60a2

    ld a, [$c187]
    swap a
    and $0f
    ld e, a
    ld d, $00
    ld hl, $6114
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
    ld hl, $6251
    add hl, de
    ld a, [hl]
    cp $18
    jp z, $4bb8

    cp $19
    jp z, Jump_001_4bbc

    cp $ff
    ret z

    ld [$c8af], a
    call $6100
    ret


jr_001_6073:
    call Call_001_5fcd
    ld a, [$c876]
    cp $78
    jr c, jr_001_609a

    ld a, [$c877]
    cp $30
    jr c, jr_001_608b

    cp $58
    ret c

    ld a, $08
    jr jr_001_609c

jr_001_608b:
    ld a, [$c876]
    cp $90
    jr c, jr_001_6096

    ld a, $0a
    jr jr_001_609c

jr_001_6096:
    ld a, $09
    jr jr_001_609c

jr_001_609a:
    ld a, $15

jr_001_609c:
    ld [$c8af], a
    jp $6100


jr_001_60a2:
    call Call_001_5f91
    ld a, [$c876]
    cp $70
    jr nc, jr_001_60d8

    ld a, [$c877]
    cp $70
    ret c

    ld a, [$c876]
    srl a
    srl a
    srl a
    ld e, a
    ld d, $00
    ld hl, $60c9
    add hl, de
    ld a, [hl]
    ld [$c8af], a
    jp $6100


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

jr_001_60d8:
    ld a, [$c877]
    srl a
    srl a
    srl a
    ld e, a
    ld d, $00
    ld hl, $60f0
    add hl, de
    ld a, [hl]
    ld [$c8af], a
    call $6100
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
    ld hl, $6221
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

jr_001_6124:
    ld [$c197], a
    ld [$c184], a
    call Call_001_600b
    call Call_000_1875
    call Call_000_03fe

Call_001_6133:
    ld a, [$c8af]
    cp $15
    jr c, jr_001_613d

    xor a
    jr jr_001_6145

Call_001_613d:
jr_001_613d:
    ld e, a
    ld d, $00
    ld hl, $62f9
    add hl, de
    ld a, [hl]

jr_001_6145:
    cp $ff
    ret z

    cp $00
    jr z, jr_001_6157

    cp $58
    jr z, jr_001_6157

    ld [$c197], a
    ld [$c184], a
    ret


jr_001_6157:
    ld b, a
    ld a, [$c197]
    cp b
    ret z

    jr c, jr_001_6163

    sub $08
    jr jr_001_6124

jr_001_6163:
    add $08
    jr jr_001_6124

    push af
    push bc
    push de
    push hl
    call Call_001_6173
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_001_6173:
jr_001_6173:
    ld a, [$c197]
    cp $00
    ret z

    sub $08
    ld [$c197], a
    ld [$c184], a
    call Call_000_1875
    call Call_000_03fe
    jr jr_001_6173

    ld a, [$c468]
    cp $ff
    jr z, jr_001_61b1

    ld a, $0d
    ld [$c8af], a

jr_001_6195:
    call Call_001_61e8
    call Call_001_6023
    call Call_001_6008
    call Call_000_1875
    call Call_000_03fe
    ld a, [$c188]

jr_001_61a7:
    bit 0, a
    jr nz, jr_001_61ba

jr_001_61ab:
    bit 1, a
    jr nz, jr_001_61b6

    jr jr_001_6195

jr_001_61b1:
    ld a, $69
    call Call_000_1b1d

jr_001_61b6:
    ld a, $ff
    jr jr_001_61d2

jr_001_61ba:
    ld a, $19
    call Call_000_080e
    ld a, [$c8af]
    sub $0d

jr_001_61c4:
    ld [$c8ea], a
    call Call_001_5d35
    ld a, $10
    call Call_000_0753
    ld a, [$c8af]

jr_001_61d2:
    ld [$c884], a
    ld a, $10
    ld [$c8ab], a
    ld a, $80
    ld [$c8ac], a
    ld a, $00
    ld [$c8af], a
    call Call_001_613d
    ret


Call_001_61e8:
jr_001_61e8:
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
    ld hl, $6114
    add hl, de
    ld a, [hl]
    cp $04
    jr z, jr_001_61e8

    ld e, a
    ld a, [$c8af]
    add a
    add a
    or e
    ld e, a
    ld d, $00
    ld hl, $62a5
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_001_61e8

    ld [$c8af], a
    call $6100
    ret


    db $10
    add b
    ld c, b
    add b
    jr nz, jr_001_61a7

    sub b
    add b
    jr nc, jr_001_61ab

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

    jr jr_001_61c4

    sbc h
    inc b
    sbc h
    inc b
    xor h
    inc b
    or h
    inc b
    cp h
    inc b
    call nz, $cc04
    inc b
    call nc, $dc04
    inc b
    call c, Call_000_3464
    jr c, jr_001_62a9

    adc h
    ld b, h
    ld [bc], a
    inc bc
    inc c
    ld d, $05
    inc b
    inc c
    ld d, $04
    nop
    inc c
    ld d, $00
    ld b, $0b
    ld [$0201], sp
    inc c
    ld d, $07
    ld bc, $160c
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
    jr jr_001_628b

    dec c
    rlca
    dec bc
    add hl, de
    dec c
    nop
    jr jr_001_62a0

    ld c, $0c
    jr jr_001_62a4

jr_001_628b:
    rrca
    dec c
    jr jr_001_62a8

    db $10
    ld c, $18
    add hl, de
    ld de, $180f
    add hl, de
    ld [de], a
    db $10
    jr jr_001_62b4

    inc de
    ld de, $1918
    rst RST_38

jr_001_62a0:
    ld [de], a
    jr jr_001_62bc

    rst RST_38

jr_001_62a4:
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38

jr_001_62a8:
    rst RST_38

jr_001_62a9:
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

jr_001_62b4:
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38

jr_001_62bc:
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
    ld c, $ff
    rst RST_38
    rst RST_38
    rrca
    dec c
    rst RST_38
    rst RST_38
    db $10
    ld c, $ff
    rst RST_38
    ld de, $ff0f
    rst RST_38
    ld [de], a
    db $10
    rst RST_38
    rst RST_38
    inc de
    ld de, $ffff
    rst RST_38
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    ld [de], a
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
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    nop
    nop
    nop
    call Call_001_6325
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


Call_001_6325:
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld a, [$c599]
    cp $00
    jr nz, jr_001_633f

    ld bc, $6360
    jr jr_001_6342

jr_001_633f:
    ld bc, $6366

jr_001_6342:
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_635f

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

jr_001_635f:
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

Call_001_636d:
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
    call Call_001_63b1
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


Call_001_63b1:
    ld a, [$c599]
    cp $00
    jr nz, jr_001_63e5

    ld bc, $c8d3
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld bc, $64e4
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_63de

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

jr_001_63de:
    ld [$c8b6], a
    call Call_001_640f
    ret


jr_001_63e5:
    ld bc, $c8d3
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld bc, $64ea
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_640b

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

jr_001_640b:
    ld [$c8b6], a
    ret


Call_001_640f:
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
    jr z, jr_001_6484

    cp $3e
    jr z, jr_001_6484

    cp $3f
    jr z, jr_001_6484

    cp $40
    jr z, jr_001_6484

    cp $41
    jr z, jr_001_6484

    cp $42
    jr z, jr_001_6484

    cp $43
    jr z, jr_001_6484

    cp $49
    jr z, jr_001_6484

    inc c
    cp $4a
    jr z, jr_001_6484

    cp $4f
    jr z, jr_001_6484

    cp $50
    jr z, jr_001_6484

    cp $51
    jr z, jr_001_6484

    cp $52
    jr z, jr_001_6484

    cp $53
    jr z, jr_001_6484

    inc c
    cp $54
    jr z, jr_001_6484

    inc c
    cp $55
    jr z, jr_001_6484

    cp $56
    jr z, jr_001_6484

    cp $57
    jr z, jr_001_6484

    inc c
    cp $58
    jr z, jr_001_6484

    cp $59
    jr z, jr_001_6484

    inc c
    cp $5a
    jr z, jr_001_6484

    inc c
    cp $5b
    jr z, jr_001_6484

    cp $5c
    jr z, jr_001_6484

    ret


jr_001_6484:
    ld b, $00
    ld hl, $648f
    add hl, bc
    ld a, [hl]
    ld [$c8b6], a
    ret


    ld [$072d], sp
    jr z, jr_001_64bd

    inc sp
    dec [hl]

Call_001_6496:
    ld a, [$c523]
    and $fd
    ld [$c523], a
    call Call_000_32aa
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_001_64b9

    ld a, [$c523]
    or $02
    ld [$c523], a
    ret


jr_001_64b9:
    call Call_000_36e0
    ret


Call_001_64bd:
jr_001_64bd:
    ld a, [$c523]
    and $fd
    ld [$c523], a
    call Call_000_32aa
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_001_64e0

    ld a, [$c523]
    or $02
    ld [$c523], a
    ret


jr_001_64e0:
    call Call_000_36c5
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

    call Call_001_4341
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a

jr_001_6500:
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
    jr z, jr_001_6517

    call Call_001_651c
    jr jr_001_6500

jr_001_6517:
    ld a, [hl]
    ld [$c640], a
    ret


Call_001_651c:
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


    call Call_001_655c
    ld a, [$c521]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $65aa
    add hl, de
    ld a, [hl+]
    ld [$c85e], a
    ld a, [hl]
    ld [$c85f], a
    ld a, [$c866]
    ld e, a
    ld d, $00
    ld a, [$c85e]
    ld l, a
    ld a, [$c85f]
    ld h, a
    add hl, de
    ld a, [hl]
    ld [$c522], a
    ret


Call_001_655c:
    call Call_001_4346
    xor a
    ld [$c866], a
    ld d, a
    ld a, [$c521]
    ld e, a
    ld hl, $6731
    add hl, de
    ld a, [hl]
    srl a
    ld [$c867], a
    cp $00
    ret z

    ld bc, $0000

jr_001_6578:
    ld a, [$c85e]
    ld l, a
    ld a, [$c85f]
    ld h, a
    inc hl
    ld a, [hl]
    and $7f
    push bc
    call Call_000_1d31
    pop bc
    ld a, [$c523]
    and $01
    jr z, jr_001_659d

    ld a, [$c866]
    ld d, a
    ld hl, $1859
    add hl, bc
    ld a, [hl]
    or d
    ld [$c866], a

jr_001_659d:
    call Call_001_651c
    inc c
    ld a, [$c867]
    ld l, a
    ld a, c
    cp l
    jr c, jr_001_6578

    ret


    ld b, [hl]
    ld h, [hl]
    ld c, c
    ld h, [hl]
    ld c, h
    ld h, [hl]
    ld d, c
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld e, c
    ld h, [hl]
    ld e, [hl]
    ld h, [hl]
    ld h, c
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, [hl]
    ld l, h
    ld h, [hl]
    ld l, a
    ld h, [hl]
    ld [hl], h
    ld h, [hl]
    ld a, c
    ld h, [hl]
    ld a, h
    ld h, [hl]
    ld a, a
    ld h, [hl]
    add d
    ld h, [hl]
    add l
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    sbc b
    ld h, [hl]
    sbc e
    ld h, [hl]
    sbc l
    ld h, [hl]
    sbc a
    ld h, [hl]
    and d
    ld h, [hl]
    and l
    ld h, [hl]
    and a
    ld h, [hl]
    xor h
    ld h, [hl]
    or c
    ld h, [hl]
    or [hl]
    ld h, [hl]
    cp c
    ld h, [hl]
    cp h
    ld h, [hl]
    cp [hl]
    ld h, [hl]
    ret nz

    ld h, [hl]
    jp nz, $c466

    ld h, [hl]
    rst RST_00
    ld h, [hl]
    jp z, $cd66

    ld h, [hl]
    rst RST_08
    ld h, [hl]
    pop de
    ld h, [hl]
    db $d3
    ld h, [hl]
    sub $66
    reti


    ld h, [hl]
    db $db
    ld h, [hl]
    db $dd
    ld h, [hl]
    rst RST_18
    ld h, [hl]
    ldh [c], a
    ld h, [hl]
    db $e4
    ld h, [hl]
    rst RST_20
    ld h, [hl]
    ld [$ec66], a
    ld h, [hl]
    pop af
    ld h, [hl]
    db $f4
    ld h, [hl]
    or $66
    ei
    ld h, [hl]
    cp $66
    ld bc, $0367
    ld h, a
    dec b
    ld h, a
    rlca
    ld h, a
    add hl, bc
    ld h, a
    dec bc
    ld h, a
    ld c, $67
    db $10
    ld h, a
    inc de
    ld h, a
    ld d, $67
    add hl, de
    ld h, a
    dec de
    ld h, a
    dec e
    ld h, a
    rra
    ld h, a
    ld hl, $2367
    ld h, a
    dec h
    ld h, a
    daa
    ld h, a
    add hl, hl
    ld h, a
    dec hl
    ld h, a
    dec l
    ld h, a
    cpl
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
    jr nz, jr_001_6692

    ld [hl+], a
    inc hl
    rst RST_38
    jr z, jr_001_669f

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
    jr nc, jr_001_66ba

    inc [hl]
    ld a, [hl-]
    ld [hl-], a
    jr c, jr_001_66c5

    ld a, $31
    ld [hl], $37
    dec a
    dec [hl]

jr_001_6692:
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

jr_001_669f:
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

jr_001_66ba:
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

jr_001_66c5:
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

Call_001_677f:
    push hl
    push bc
    push de
    call Call_000_07af
    call Call_001_679f
    call Call_000_07b5
    pop de
    pop bc
    pop hl
    ret


Call_001_678f:
    push hl
    push bc
    push de
    call Call_000_07af
    call Call_001_67ba
    call Call_000_07b5
    pop de
    pop bc
    pop hl
    ret


Call_001_679f:
    ld hl, $67db
    ld bc, $a000
    ld d, $08

jr_001_67a7:
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [hl+]
    cp e
    jr nz, jr_001_67c4

    dec d
    jr nz, jr_001_67a7

    ld a, [bc]
    cp $05
    jr nc, jr_001_67c4

    ld [$c163], a
    ret


Call_001_67ba:
    ld d, $08
    call Call_001_67ce
    ld a, [$c163]
    ld [bc], a
    ret


jr_001_67c4:
    ld d, $09
    call Call_001_67ce
    xor a
    ld [$c163], a
    ret


Call_001_67ce:
    ld hl, $67db
    ld bc, $a000

jr_001_67d4:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_001_67d4

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

Call_001_67e4:
    push hl
    push bc
    push de
    call Call_000_07af
    call Call_001_6890
    xor a
    ld [$c864], a
    call Call_001_694c
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    ld bc, $c420
    ld de, $017a

jr_001_6802:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6802

    call Call_000_07b5
    pop de
    pop bc
    pop hl
    ret


    push hl
    push bc
    push de
    call Call_000_07af
    call Call_001_6823
    call Call_000_07b5
    pop de
    pop bc
    pop hl
    ret


Call_001_6823:
    push hl
    push bc
    push de
    xor a
    ld [$c864], a

jr_001_682a:
    call Call_001_694c
    call Call_001_69ab
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    ld bc, $c420
    ld de, $017a

jr_001_683e:
    ld a, [bc]
    inc bc
    ld [hl+], a
    call Call_001_69b3
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_683e

    call Call_001_69c6
    call Call_001_6a1d
    ld a, [$c864]
    inc a
    ld [$c864], a
    cp $04
    jr nz, jr_001_682a

    pop de
    pop bc
    pop hl
    ret


    call Call_000_07af
    call Call_001_6982
    call Call_000_07b5
    ret


    ldh a, [$ffad]
    push af
    call Call_000_07af
    xor a
    ldh [$ffad], a
    ld [$c875], a
    call Call_001_6890
    ldh a, [$ffad]
    inc a
    ldh [$ffad], a
    call Call_001_6890
    ldh a, [$ffad]
    inc a
    ldh [$ffad], a
    call Call_001_6890
    call Call_000_07b5
    pop af
    ldh [$ffad], a
    ret


Call_001_6890:
    xor a
    ld [$c864], a

jr_001_6894:
    call Call_001_69ab
    call Call_001_694c
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    ld de, $017a

jr_001_68a5:
    ld a, [hl+]
    call Call_001_69b3
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_68a5

    call Call_001_69fa
    jr nz, jr_001_68ba

    call Call_001_69d9
    jr z, jr_001_68c9

jr_001_68ba:
    ld a, [$c864]
    inc a
    ld [$c864], a
    cp $04
    jr nz, jr_001_6894

    call Call_001_6982
    ret


jr_001_68c9:
    call Call_001_68fb
    ld hl, $68f8
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

Call_001_68fb:
    push hl
    push de
    ld a, [$c864]
    cp $00
    jr z, jr_001_6949

    call Call_001_694c
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    ld bc, $be00
    ld de, $0180

jr_001_6915:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6915

    xor a
    ld [$c864], a

jr_001_6923:
    call Call_001_694c
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    ld bc, $be00
    ld de, $0180

jr_001_6934:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6934

    ld a, [$c864]
    inc a
    ld [$c864], a
    cp $04
    jr nz, jr_001_6923

jr_001_6949:
    pop de
    pop hl
    ret


Call_001_694c:
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


Call_001_6982:
    xor a
    ld [$c864], a

jr_001_6986:
    call Call_001_6995
    ld a, [$c864]
    inc a
    ld [$c864], a
    cp $04
    jr nz, jr_001_6986

    ret


Call_001_6995:
    push hl
    push de
    call Call_001_694c
    ld a, [$c855]
    ld l, a
    ld a, [$c856]
    ld h, a
    xor a
    ld d, a

jr_001_69a4:
    ld [hl+], a
    inc d
    jr nz, jr_001_69a4

    pop de
    pop hl
    ret


Call_001_69ab:
    xor a
    ld [$c865], a
    ld [$c866], a
    ret


Call_001_69b3:
    push bc
    ld b, a
    ld a, [$c865]
    add b
    ld [$c865], a
    ld a, [$c866]
    adc $00
    ld [$c866], a
    pop bc
    ret


Call_001_69c6:
    push hl
    ld a, [$c859]
    ld l, a
    ld a, [$c85a]
    ld h, a
    ld a, [$c865]
    ld [hl+], a
    ld a, [$c866]
    ld [hl+], a
    pop hl
    ret


Call_001_69d9:
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
    jr nz, jr_001_69f5

    ld a, [hl+]
    ld b, a
    ld a, [$c866]
    jr nz, jr_001_69f5

    xor a
    jr jr_001_69f7

jr_001_69f5:
    or $ff

jr_001_69f7:
    pop bc
    pop hl
    ret


Call_001_69fa:
    push hl
    push bc
    push de
    ld a, [$c857]
    ld l, a
    ld a, [$c858]
    ld h, a
    ld bc, $6ade
    ld d, $04

jr_001_6a0a:
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc bc
    cp e
    jr nz, jr_001_6a17

    dec d
    jr nz, jr_001_6a0a

    xor a
    jr jr_001_6a19

jr_001_6a17:
    or $ff

jr_001_6a19:
    pop de
    pop bc
    pop hl
    ret


Call_001_6a1d:
    push hl
    push bc
    push de
    ld a, [$c857]
    ld l, a
    ld a, [$c858]
    ld h, a
    ld bc, $6ade
    ld d, $04

jr_001_6a2d:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, jr_001_6a2d

    pop de
    pop bc
    pop hl
    ret


    push hl
    push de
    ld hl, $c420
    ld de, $017a
    xor a
    call Call_001_6a49
    call Call_001_6b87
    pop de
    pop hl
    ret


Call_001_6a49:
jr_001_6a49:
    ld [hl+], a
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6a49

    ret


    push hl
    push bc
    push de
    ld a, [$c599]
    cp $00
    jr nz, jr_001_6a6a

    ld a, $b0
    call Call_000_1c5c
    jr z, jr_001_6a71

    ld a, $b0
    call Call_000_1cd6
    jr jr_001_6a9c

jr_001_6a6a:
    ld a, [$c521]
    cp $62
    jr nc, jr_001_6a9c

jr_001_6a71:
    call Call_000_07af
    call Call_001_69ab
    ld de, $017a
    ld hl, $c420
    ld bc, $be00

jr_001_6a80:
    ld a, [hl+]
    ld [bc], a
    inc bc
    call Call_001_69b3
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6a80

    ld a, [$c865]
    ld [$bf7e], a
    ld a, [$c866]
    ld [$bf7f], a
    call Call_000_07b5

jr_001_6a9c:
    pop de
    pop bc
    pop hl
    ret


    push hl
    push bc
    push de
    call Call_000_07af
    call Call_001_69ab
    ld de, $017a
    ld hl, $c420
    ld bc, $be00

jr_001_6ab2:
    ld a, [bc]
    inc bc
    ld [hl+], a
    call Call_001_69b3
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6ab2

    ld a, [$bf7e]
    ld b, a
    ld a, [$c865]
    cp b
    jr nz, jr_001_6ad7

    ld a, [$bf7f]
    ld b, a
    ld a, [$c866]
    cp b
    jr nz, jr_001_6ad7

    pop de
    pop bc
    pop hl
    ret


jr_001_6ad7:
    call Call_001_67e4
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
    ldh [$ffa6], a
    ldh [$ffa7], a
    xor a
    ld [$c197], a
    ld [$c184], a
    ld a, $10
    ld [$c8ab], a
    ld a, $80
    ld [$c8ac], a
    call Call_001_493b
    call Call_000_0722
    call Call_000_0420
    ld a, $03
    call Call_000_19e9
    call Call_000_0a0b
    call Call_000_072a
    call Call_000_044b
    call Call_000_0416
    call Call_001_4224
    call Call_001_4b87
    call Call_001_45fa
    ld a, [$c8e8]
    cp $00
    jr nz, jr_001_6b2f

    call Call_000_0416
    ld a, $8f
    ld [$c522], a
    jr jr_001_6b3b

jr_001_6b2f:
    call Call_001_486d
    call Call_000_1889
    call Call_000_03fe
    call Call_000_0ee0

jr_001_6b3b:
    call Call_000_0c4e
    call Call_001_4933
    ld hl, $c8ad
    ld a, $ff
    ld d, $18
    call Call_001_6c07
    ld a, $ff
    ld hl, $c5c0
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c8af], a
    ld a, $be
    call Call_000_1c5c
    ld a, [$c523]
    and $01
    ret nz

    ld a, $5a
    call Call_000_0753
    xor a
    ld [$c522], a
    ld a, $06
    ld [$c640], a
    call Call_000_0bb6
    ld a, $be
    call Call_000_1c8a
    ld a, $fe
    ld [$c8e8], a
    call Call_000_0ee0
    call Call_000_375c
    xor a
    call Call_000_1b09
    ret


Call_001_6b87:
    ld a, $ff
    ld d, $20
    ld hl, $c8a5
    call Call_001_6c07
    xor a
    ld [$c8af], a
    xor a
    ld [$c521], a
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
    call Call_001_6c07
    ld hl, $c420
    ld d, $18
    call Call_001_6c07
    ld hl, $c438
    ld d, $18
    call Call_001_6c07
    ld hl, $c468
    ld d, $59
    call Call_001_6c07
    ld hl, $c528
    ld d, $0c
    call Call_001_6c07
    ld hl, $c53b
    ld d, $20
    call Call_001_6c07
    ld a, $0a
    ld [$c53b], a
    xor a
    ld [$c55b], a
    call Call_001_4643
    ret


Call_001_6c07:
jr_001_6c07:
    ld [hl+], a
    dec d
    jr nz, jr_001_6c07

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
    ld b, e
    ld l, h
    adc h
    ld l, h
    adc h
    ld l, h
    sbc l
    ld l, h
    jp hl


    ld l, h
    daa
    ld l, l
    call Call_000_1b57
    ld a, [$c5c6]
    cp $ff
    jr z, jr_001_6c3f

    call Call_000_2603
    ld a, [$c523]
    and $01
    jr z, jr_001_6c42

jr_001_6c3f:
    call Call_000_1b4e

jr_001_6c42:
    ret


    ld a, [$c5c5]
    cp $6b
    jr nz, jr_001_6c54

    ld a, [$c522]
    cp $73
    jr z, jr_001_6c54

    jp Jump_000_1849


jr_001_6c54:
    ld a, [$c5c5]
    cp $5f
    jr nz, jr_001_6c65

    ld a, [$c522]
    cp $7a
    jr z, jr_001_6c7b

    jp Jump_000_1849


jr_001_6c65:
    ld a, [$c5c5]
    cp $13
    jr nz, jr_001_6c7b

    ld a, $08
    call Call_000_1d31
    ld a, [$c523]
    and $01
    jr z, jr_001_6c7b

    jp Jump_000_1849


jr_001_6c7b:
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
    ld bc, $1859
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr z, jr_001_6cd8

    jp Jump_000_1849


jr_001_6cd8:
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
    jr z, jr_001_6cf4

    cp $02
    jr nz, jr_001_6cfe

jr_001_6cf4:
    ld a, [$c522]
    cp $00
    jr z, jr_001_6cfe

    jp Jump_000_1849


jr_001_6cfe:
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
    jr z, jr_001_6d15

    jp Jump_000_1849


jr_001_6d15:
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
    jr z, jr_001_6d6c

    cp $24
    jr z, jr_001_6d4e

    cp $25
    jr z, jr_001_6d4e

    cp $26
    jr z, jr_001_6d4e

    cp $27
    jr z, jr_001_6d4e

    cp $29
    jr z, jr_001_6d4e

    cp $2a
    jr z, jr_001_6d4e

    cp $2b
    jr z, jr_001_6d4e

    cp $2c
    jr nz, jr_001_6d5b

jr_001_6d4e:
    call Call_001_4300
    ld a, [$c523]
    and $01
    jr z, jr_001_6d5b

    jp Jump_000_1849


jr_001_6d5b:
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


jr_001_6d6c:
    ld a, [$c522]
    cp $43
    jr z, jr_001_6d5b

    jp Jump_000_1849


    call Call_001_493b
    xor a
    call Call_000_080e
    call Call_001_6ddf
    call Call_001_4933
    ld a, $ff
    ld [$c5df], a
    ld a, $3c
    call Call_000_0753
    ld a, $00
    ld [$c662], a
    ld a, $04
    ld [$c663], a
    xor a
    ld [$c890], a
    ld [$c893], a
    ld a, $06
    call Call_001_6df9
    ld a, $f0
    call Call_000_0753
    call Call_001_6e22
    ld a, $00
    ld [$c662], a
    ld a, $04
    ld [$c663], a
    ld a, $07
    call Call_001_6df9
    ld a, $f0
    call Call_000_0753
    call Call_001_6e22
    ld a, $00
    ld [$c662], a
    ld a, $04
    ld [$c663], a
    ld a, $0b
    call Call_001_6df9
    ld a, $f0
    call Call_000_0753
    ld a, $f0
    call Call_000_0753
    call Call_001_493b
    ret


Call_001_6ddf:
    call Call_000_0722
    call Call_000_0420
    ld a, $06
    call Call_000_19e9
    ld a, $06
    call Call_000_19c4
    call Call_000_072a
    call Call_000_044b
    call Call_000_0416
    ret


Call_001_6df9:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $71fe
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
    call Call_000_11e5
    call Call_000_1875
    call Call_000_03fe
    call Call_000_1122
    ret


Call_001_6e22:
    ld a, $01
    ld [$c5c3], a
    ld [$c5c4], a

jr_001_6e2a:
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
    ld hl, $6e63
    call Call_000_01d8
    call Call_000_03d3
    ld a, [$c5c3]
    inc a
    cp $13
    jr nz, jr_001_6e5e

    ld a, [$c5c4]
    inc a
    cp $11
    ret z

    ld [$c5c4], a
    xor a

jr_001_6e5e:
    ld [$c5c3], a
    jr jr_001_6e2a

    ld bc, $7f01
    ld a, $b6
    ret z

    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld a, [hl-]
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld e, a
    push bc
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld h, e
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld e, h
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld h, h
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld e, l
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld h, b
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld e, [hl]
    push bc
    ld a, [de]
    rra
    ld d, d
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    ld hl, $321a
    ld a, [de]
    nop
    inc c
    jr nz, jr_001_6ede

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$040b], sp
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    ld [$1a12], sp
    ld [de], a
    ld c, $1d
    inc de
    rlca
    ld [$0a02], sp
    ld a, [de]
    jr jr_001_6ee9

    inc d
    ld a, [de]
    ld [bc], a

jr_001_6ede:
    nop
    dec c
    dec e
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    ld a, [de]
    inc de

jr_001_6ee9:
    ld c, $14
    ld [bc], a
    rlca
    ld a, [de]
    ld [$2013], sp
    ld d, e
    ld e, a
    ld d, d
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_001_6f17

    nop
    ld a, [de]
    ld [bc], a
    ld de, $1200
    rlca
    dec e
    ld [de], a
    rlca
    nop
    inc de
    inc de
    inc b
    ld de, $1a12
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    nop
    ld de, $180b

jr_001_6f17:
    inc c
    ld c, $11
    dec c
    ld [$060d], sp
    ld a, [de]
    rlca
    ld c, $14
    ld de, $1d27
    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    dec b
    ld c, $0b
    dec bc
    ld c, $16
    inc b
    inc bc
    dec e
    ld bc, $1a18
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    inc c
    inc d
    dec b
    dec b
    dec bc
    inc b
    inc bc
    dec e
    jr jr_001_6f4c

    dec bc
    dec bc
    ld [de], a
    ld a, [de]

jr_001_6f4c:
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    nop
    ld de, $1d04
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_001_6f77

    ld [bc], a
    inc d
    inc de
    ld a, [de]
    ld c, $05
    dec b
    jr nz, jr_001_6fb9

    ld e, a
    ld d, d
    ld [de], a
    ld [$040b], sp
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    ld de, $1304
    inc d
    ld de, $120d

jr_001_6f77:
    ld a, [de]
    inc de
    ld c, $13
    rlca
    inc b
    ld a, [de]
    ld de, $0d14
    inc bc
    ld c, $16
    dec c
    dec e
    dec c
    inc b
    ld [$0706], sp
    ld bc, $110e
    rlca
    ld c, $0e
    inc bc
    jr nz, jr_001_6fb1

    dec c
    ld c, $1a
    ld c, $0d
    inc b
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    ld [de], a
    dec e
    nop
    ld [de], a
    ld a, [de]
    inc de
    ld d, $0e
    ld a, [de]
    ld b, $0e
    ld c, $0d
    ld [de], a
    dec e
    ld [bc], a

jr_001_6fb1:
    nop
    ld de, $0b04
    inc b
    ld [de], a
    ld [de], a
    dec bc

jr_001_6fb9:
    jr @+$1f

    inc bc
    inc d
    inc c
    rrca
    ld a, [de]
    nop
    ld a, [de]
    inc de
    rlca
    ld [$0311], sp
    ld a, [de]
    inc c
    nop
    dec c
    dec e
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0d14
    ld a, [bc]
    ld a, [de]
    ld c, $05
    dec e
    nop
    ld a, [de]
    dec c
    inc b
    nop
    ld de, $1801
    ld a, [de]
    ld [bc], a
    nop
    ld de, $2020
    jr nz, jr_001_7041

    ld e, a
    ld a, $b6
    ret z

    rra
    ld a, $b6
    ret z

    rra
    ld b, c
    ld d, h
    adc d
    push bc
    rra
    ld a, $b6
    ret z

    ld [de], a
    inc h
    ccf
    ld a, [hl-]
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    ld [de], a
    inc h
    ccf
    sub b
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    ld [de], a
    inc h
    ccf
    adc l
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    ld [de], a
    inc h
    ccf
    adc h
    push bc
    ld a, [de]
    rra
    ld d, e
    ld d, b
    ld bc, $0151
    inc a
    ld [$0550], a
    inc a
    db $eb
    ld d, b
    ld a, [bc]
    inc a
    db $ec
    ld d, d
    rra
    ld d, e
    ld d, b
    ld [bc], a
    ccf
    ld e, l
    ret z

    ld d, b
    dec b
    ld a, $5e
    ret z

    ld d, b

jr_001_7041:
    ld a, [bc]
    ld a, $5f
    ret z

    ld d, d
    rra
    ccf
    ld [hl], l
    ret z

    ld a, [de]
    rra
    ld d, e
    ld d, b
    ld a, [bc]
    ld d, c
    dec b
    ccf
    jp Jump_000_1ac5


    ld d, d
    rra
    ccf
    adc h
    push bc
    jr nz, @+$1c

    rra
    rlca
    ld c, $16
    ld a, [de]
    inc c
    nop
    dec c
    jr @+$1c

    ld [bc], a
    rlca
    ld [$120f], sp
    dec e
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    jr jr_001_7081

    inc d
    ld a, [de]
    ld bc, $1304
    jr z, @+$21

    jr @+$10

    inc d
    ld a, [de]
    ld bc, $1304

jr_001_7081:
    ld a, [de]
    ccf
    adc h
    push bc
    ld a, [de]
    ld [bc], a
    rlca
    ld [$120f], sp
    jr nz, jr_001_70ac

    inc bc
    ld de, $1600
    ld a, [de]
    nop
    dec c
    ld c, $13
    rlca
    inc b
    ld de, $021a
    nop
    ld de, $2803
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    jr jr_001_70ab

    ld [de], a
    ld a, [de]
    inc l
    ld a, [de]

jr_001_70ab:
    dec c

jr_001_70ac:
    ld c, $1f
    inc de
    ld de, $1a18
    ld c, $0d
    ld [bc], a
    inc b
    ld a, [de]
    inc c
    ld c, $11
    inc b
    jr z, jr_001_70da

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    jr jr_001_70c8

    ld [de], a
    ld a, [de]
    inc l
    ld a, [de]

jr_001_70c8:
    dec c
    ld c, $1f
    rrca
    dec bc
    inc b
    nop
    ld [de], a
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    nop
    ld b, $00

jr_001_70da:
    ld [$200d], sp
    rra
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    rra
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    daa
    rra
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    daa
    rra
    ld bc, $1214
    inc de
    jr nz, jr_001_712e

    jr nz, @+$21

    ld bc, $1214
    inc de
    jr nz, @+$22

    jr nz, jr_001_7137

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld de, $1600
    jr nz, jr_001_7145

    jr nz, jr_001_7146

    ld [$161a], sp
    ld [$200d], sp
    rra

jr_001_712e:
    jr jr_001_713e

    inc d
    ld a, [de]
    ld d, $08
    dec c
    jr nz, jr_001_7156

jr_001_7137:
    ld [$0b2a], sp
    dec bc
    ld a, [de]
    ld [de], a
    rlca

jr_001_713e:
    inc d
    dec b
    dec b
    dec bc
    inc b
    ld a, [de]
    inc de

jr_001_7145:
    rlca

jr_001_7146:
    inc b
    dec e
    ld [bc], a
    nop
    ld de, $1203
    jr nz, jr_001_716e

    ld b, $04
    inc de
    ld a, [de]
    dec bc
    ld c, $12

jr_001_7156:
    inc de
    daa
    dec e
    jr jr_001_7169

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop

jr_001_7169:
    dec c
    jr jr_001_7189

    ld [bc], a
    rlca

jr_001_716e:
    ld [$120f], sp
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    daa
    rra
    inc bc
    inc b
    nop
    dec bc
    inc b
    ld de, $181f
    ld c, $14
    rra
    ld [bc], a
    rlca
    ld [$120f], sp
    ld a, [de]

jr_001_7189:
    dec bc
    inc b
    dec b
    inc de
    rra
    ccf
    adc h
    push bc
    ld a, [de]
    rra
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    rra
    ld [bc], a
    rlca
    ld [$120f], sp
    inc h
    rra
    ld h, [hl]
    ld l, [hl]
    ld l, d
    ld l, [hl]
    ld [hl], e
    ld l, [hl]
    ld a, e
    ld l, [hl]
    add h
    ld l, [hl]
    adc l
    ld l, [hl]
    or c
    ld l, [hl]
    di
    ld l, [hl]
    sub [hl]
    ld l, [hl]
    sbc a
    ld l, [hl]
    xor b
    ld l, [hl]
    ld h, a
    ld l, a
    rst RST_28
    ld l, a
    rst RST_28
    ld l, a
    rst RST_28
    ld l, a
    rst RST_28
    ld l, a
    rst RST_28
    ld l, a
    di
    ld l, a
    rst RST_30
    ld l, a
    db $fc
    ld l, a
    ld b, $70
    db $10
    ld [hl], b
    ld a, [de]
    ld [hl], b
    inc h
    ld [hl], b
    dec [hl]
    ld [hl], b
    ld b, a
    ld [hl], b
    ld c, h
    ld [hl], b
    ld d, a
    ld [hl], b
    ld e, l
    ld [hl], b
    ld a, d
    ld [hl], b
    adc l
    ld [hl], b
    xor [hl]
    ld [hl], b
    bit 6, b
    sbc $70
    ldh a, [c]
    ld [hl], b
    db $fd
    ld [hl], b
    ld [$1071], sp
    ld [hl], c
    jr jr_001_72bd

    daa
    ld [hl], c
    ld l, $71
    scf
    ld [hl], c
    ld c, a
    ld [hl], c
    ld c, a
    ld [hl], c
    ld a, b
    ld [hl], c
    ld a, a
    ld [hl], c
    add e
    ld [hl], c
    adc [hl]
    ld [hl], c
    sub e
    ld [hl], c
    rst RST_30
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

jr_001_72bd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
