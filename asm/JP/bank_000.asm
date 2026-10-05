; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_0498


Call_000_0003:
    nop

Call_000_0004:
Jump_000_0004:
    nop
    nop
    nop
    nop

RST_08::
    nop
    nop

Jump_000_000a:
    nop

Call_000_000b:
    nop

Jump_000_000c:
    nop
    nop
    nop

Call_000_000f:
Jump_000_000f:
    nop

RST_10::
    nop

Call_000_0011:
Jump_000_0011:
    nop

Call_000_0012:
    nop

Call_000_0013:
    nop
    nop

Jump_000_0015:
    nop
    nop
    nop

RST_18::
    nop

Jump_000_0019:
    nop
    nop

Call_000_001b:
    nop

Jump_000_001c:
    nop
    nop
    nop

Call_000_001f:
    nop

RST_20::
    nop

Call_000_0021:
    nop

Call_000_0022:
Jump_000_0022:
    nop
    nop
    nop

Jump_000_0025:
    nop

Call_000_0026:
    nop

Jump_000_0027:
    nop

RST_28::
    nop

Call_000_0029:
    nop
    nop
    nop

Jump_000_002c:
    nop

Jump_000_002d:
    nop

Call_000_002e:
Jump_000_002e:
    nop

Call_000_002f:
    nop

RST_30::
    nop

Call_000_0031:
    nop

Jump_000_0032:
    nop
    nop
    nop
    nop
    nop
    nop

RST_38::
    nop

Call_000_0039:
    nop
    nop
    nop

Jump_000_003c:
    nop

Jump_000_003d:
    nop
    nop
    nop

VBlankInterrupt::
    jp Jump_000_018b


    nop
    nop
    nop
    nop

Call_000_0047:
    nop

LCDCInterrupt::
    reti


    nop

Jump_000_004a:
    nop
    nop
    nop
    nop

Jump_000_004e:
    nop
    nop

TimerOverflowInterrupt::
    jp Jump_000_073a


Jump_000_0053:
    nop

Jump_000_0054:
    nop
    nop
    nop
    nop

SerialTransferCompleteInterrupt::
    reti


Jump_000_0059:
    nop

Call_000_005a:
    nop
    nop
    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    reti


Jump_000_0061:
    nop

Jump_000_0062:
    nop
    nop

Jump_000_0064:
    nop
    nop

Jump_000_0066:
    nop
    nop

    nop
    nop
    nop

Call_000_006b:
Jump_000_006b:
    nop

Jump_000_006c:
    nop

Call_000_006d:
    nop

Call_000_006e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_0080:
    nop
    nop
    nop

Call_000_0083:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_008c:
Jump_000_008c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_0096:
    nop
    nop

Call_000_0098:
    nop
    nop

Jump_000_009a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00ab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00b7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00ca:
    nop
    nop

Call_000_00cc:
    nop
    nop
    nop

Call_000_00cf:
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00d5:
    nop
    nop
    nop

Call_000_00d8:
    nop
    nop
    nop
    nop

Jump_000_00dc:
    nop
    nop
    nop
    nop

Call_000_00e0:
Jump_000_00e0:
    nop

Jump_000_00e1:
    nop
    nop
    nop

Call_000_00e4:
    nop
    nop
    nop
    nop
    nop

Call_000_00e9:
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00ef:
    nop
    nop
    nop

Call_000_00f2:
    nop
    nop
    nop
    nop

Jump_000_00f6:
    nop

Jump_000_00f7:
    nop

Call_000_00f8:
    nop

Call_000_00f9:
    nop
    nop

Jump_000_00fb:
    nop

Call_000_00fc:
    nop

Jump_000_00fd:
    nop

Call_000_00fe:
    nop

Call_000_00ff:
Jump_000_00ff:
    nop

Boot::
    nop

Call_000_0101:
Jump_000_0101:
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "DEJAVU", $00, $00, $00, $00, $00

HeaderManufacturerCode::
    db "ADTJ"

HeaderCGBFlag::
    db $c0

HeaderNewLicenseeCode::
    db $32, $38

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $1b

HeaderROMSize::
    db $05

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $86

HeaderGlobalChecksum::
    db $8c, $ac

Jump_000_0150:
    ld d, a

Call_000_0151:
    ld sp, $fffe
    call Call_000_0420

Call_000_0157:
    ld hl, $c000
    ld bc, $2000
    call Call_000_0461

Call_000_0160:
Jump_000_0160:
    ld sp, $cfff
    ld hl, $ff80
    ld bc, $0080
    call Call_000_0461
    ld a, d
    ldh [$ffa8], a
    cp $11
    jp nz, Jump_000_0183

Call_000_0174:
    ld a, $c3
    ldh [$ffac], a
    call Call_000_0769
    jp $4000


Jump_000_017e:
    ldh a, [$ffa8]
    jp Jump_000_0150


Jump_000_0183:
    ld a, $09
    call Call_000_0781
    jp $4000


Jump_000_018b:
    push af

Call_000_018c:
    push bc
    push de
    push hl
    ld a, $01
    ld [$2000], a
    call $405f
    call Call_000_07ba
    ldh a, [$ff8e]
    ld [$2000], a
    ld hl, $c181
    res 4, [hl]
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_01a9:
Jump_000_01a9:
    push bc

jr_000_01aa:
    ldh a, [$ff8c]
    cp $00
    jr z, jr_000_01b5

    call Call_000_01b7
    jr jr_000_01aa

jr_000_01b5:
    pop bc
    ret


Call_000_01b7:
Jump_000_01b7:
    push hl
    ld hl, $c181
    set 4, [hl]
    halt
    nop

jr_000_01bf:
    bit 4, [hl]

Jump_000_01c1:
    jr nz, jr_000_01bf

Jump_000_01c3:
    pop hl
    ret


jr_000_01c5:
    ldh a, [$ff8c]
    cp $00
    jr z, jr_000_01d0

    call Call_000_01b7

Jump_000_01ce:
    jr jr_000_01c5

Jump_000_01d0:
jr_000_01d0:
    di
    ret


    ei
    ret


Call_000_01d4:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

Call_000_01d8:
Jump_000_01d8:
    push af
    push de
    ld a, [hl+]
    ldh [$ff92], a
    ld a, [hl+]
    ldh [$ff93], a

Jump_000_01e0:
jr_000_01e0:
    ldh a, [$ff90]
    add $a0
    ld e, a
    ld a, $00
    adc $c0
    ld d, a

jr_000_01ea:
    ldh a, [$ff92]
    ldh [$ff95], a

Jump_000_01ee:
    call Call_000_0211
    ldh a, [$ff93]
    dec a
    ldh [$ff93], a
    cp $00
    jr z, jr_000_0205

    ldh a, [$ff90]
    cp $80

Jump_000_01fe:
    jr c, jr_000_01ea

Call_000_0200:
Jump_000_0200:
    call Call_000_03d3

Jump_000_0203:
    jr jr_000_01e0

jr_000_0205:
    ldh a, [$ff90]

Call_000_0207:
    cp $80

Call_000_0209:
    jr c, jr_000_020e

    call Call_000_03d3

jr_000_020e:
    pop de
    pop af
    ret


Call_000_0211:
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    inc de

Call_000_0217:
    push bc
    ldh a, [$ff90]
    ld b, a
    ldh a, [$ff92]
    ld [de], a
    inc de
    add $03
    add b
    ldh [$ff90], a
    pop bc

jr_000_0225:
    ld a, [hl+]
    ld [de], a
    inc de
    ldh a, [$ff95]

Jump_000_022a:
    dec a
    ldh [$ff95], a
    cp $00
    jr nz, jr_000_0225

    ld a, $20
    add c
    ld c, a

Jump_000_0235:
    ld a, $00
    adc b
    ld b, a
    ret


Call_000_023a:
Jump_000_023a:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

Call_000_023e:
    push af

Jump_000_023f:
    push de

Jump_000_0240:
    ld a, [hl+]
    ldh [$ff92], a
    ld a, [hl+]
    ldh [$ff93], a

jr_000_0246:
    ldh a, [$ff90]
    add $a0

Call_000_024a:
    ld e, a

Call_000_024b:
    ld a, $00
    adc $c0
    ld d, a

jr_000_0250:
    ldh a, [$ff92]
    ldh [$ff95], a
    call Call_000_0277
    ldh a, [$ff93]
    dec a
    ldh [$ff93], a
    cp $00
    jr z, jr_000_026b

    ldh a, [$ff90]
    cp $80
    jr c, jr_000_0250

    call Call_000_03d3
    jr jr_000_0246

jr_000_026b:
    ldh a, [$ff90]
    cp $80
    jr c, jr_000_0274

    call Call_000_03d3

Jump_000_0274:
jr_000_0274:
    pop de
    pop af

Jump_000_0276:
    ret


Call_000_0277:
    ld a, b

Jump_000_0278:
    ld [de], a
    inc de

Jump_000_027a:
    ld a, c
    ld [de], a
    inc de
    push bc
    ldh a, [$ff90]
    ld b, a

Jump_000_0281:
    ldh a, [$ff92]
    ld [de], a
    inc de

Call_000_0285:
    add $03
    add b
    ldh [$ff90], a
    ld b, [hl]

jr_000_028b:
    ld a, b
    ld [de], a
    inc de
    ldh a, [$ff95]
    dec a
    ldh [$ff95], a
    cp $00
    jr nz, jr_000_028b

    pop bc
    ld a, $20
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ret


    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

Call_000_02a5:
    push af
    push de
    ld a, [hl+]
    ldh [$ff92], a
    ld a, [hl+]

Call_000_02ab:
    ldh [$ff93], a

jr_000_02ad:
    ldh a, [$ff90]
    add $a0
    ld e, a
    ld a, $00
    adc $c0
    ld d, a

jr_000_02b7:
    ldh a, [$ff92]

Jump_000_02b9:
    ldh [$ff95], a
    call Call_000_02df
    ldh a, [$ff93]

Call_000_02c0:
    sub $01

Jump_000_02c2:
    ldh [$ff93], a
    cp $00
    jr z, jr_000_02d3

    ldh a, [$ff90]
    cp $80
    jr c, jr_000_02b7

    call Call_000_03d3
    jr jr_000_02ad

jr_000_02d3:
    ldh a, [$ff90]
    cp $80
    jr c, jr_000_02dc

Jump_000_02d9:
    call Call_000_03d3

jr_000_02dc:
    pop de
    pop af

Jump_000_02de:
    ret


Call_000_02df:
    call Call_000_02fe
    call Call_000_0305
    call Call_000_0327
    ldh a, [$ff92]
    ldh [$ff95], a
    call Call_000_02fe
    call Call_000_0314
    call Call_000_0327
    ld a, $20
    add c
    ld c, a
    ld a, $00
    adc b

Call_000_02fc:
Jump_000_02fc:
    ld b, a

Jump_000_02fd:
    ret


Call_000_02fe:
    ld a, b

Call_000_02ff:
Jump_000_02ff:
    ld [de], a

Call_000_0300:
    inc de

Jump_000_0301:
    ld a, c
    ld [de], a

Jump_000_0303:
    inc de
    ret


Call_000_0305:
    push bc
    ldh a, [$ff90]
    ld b, a
    ldh a, [$ff92]
    ld [de], a
    inc de
    add $03
    add b

Call_000_0310:
    ldh [$ff90], a
    pop bc
    ret


Call_000_0314:
    push bc
    ldh a, [$ff90]
    ld b, a
    ldh a, [$ff92]
    set 6, a
    ld [de], a
    ldh a, [$ff92]

Call_000_031f:
    inc de

Jump_000_0320:
    add $03
    add b
    ldh [$ff90], a
    pop bc
    ret


Call_000_0327:
jr_000_0327:
    ld a, [hl+]
    ld [de], a
    inc de
    ldh a, [$ff95]
    sub $01
    ldh [$ff95], a

Jump_000_0330:
    cp $00
    jr nz, jr_000_0327

    ret


    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

Call_000_0339:
    push af
    push de

Jump_000_033b:
    ld a, [hl+]

Jump_000_033c:
    ldh [$ff92], a
    ld a, [hl+]
    ldh [$ff93], a
    ld a, [hl+]

Call_000_0342:
    ld [$c19c], a
    ld a, [hl+]
    ld [$c19d], a

jr_000_0349:
    ldh a, [$ff90]
    add $a0
    ld e, a
    ld a, $00
    adc $c0
    ld d, a

jr_000_0353:
    ldh a, [$ff92]
    ldh [$ff95], a
    call Call_000_037f
    ldh a, [$ff92]
    ldh [$ff95], a
    call Call_000_03a4
    ldh a, [$ff93]

Jump_000_0363:
    dec a
    ldh [$ff93], a
    cp $00
    jr z, jr_000_0375

    ldh a, [$ff90]
    cp $80
    jr c, jr_000_0353

    call Call_000_03d3
    jr jr_000_0349

jr_000_0375:
    ldh a, [$ff90]
    cp $80
    call nc, Call_000_03d3
    pop de
    pop af
    ret


Call_000_037f:
    push bc
    ld a, b
    ld [de], a
    inc de

Jump_000_0383:
    ld a, c
    ld [de], a
    inc de
    ldh a, [$ff90]
    ld b, a
    ldh a, [$ff92]
    ld [de], a
    inc de
    add $03
    add b
    ldh [$ff90], a
    ld a, [$c19c]
    ld b, a

jr_000_0396:
    ld a, b
    ld [de], a
    inc de
    ldh a, [$ff95]
    dec a
    ldh [$ff95], a
    cp $00
    jr nz, jr_000_0396

    pop bc
    ret


Call_000_03a4:
    push bc
    ld a, b
    ld [de], a
    inc de

Call_000_03a8:
    ld a, c
    ld [de], a
    inc de
    ldh a, [$ff92]
    ld b, a
    or $40
    ld [de], a
    inc de
    ldh a, [$ff90]
    add $03
    add b
    ldh [$ff90], a
    ld a, [$c19d]
    ld b, a

jr_000_03bd:
    ld a, b
    ld [de], a
    inc de
    ldh a, [$ff95]
    dec a
    ldh [$ff95], a
    cp $00
    jr nz, jr_000_03bd

    pop bc
    ld a, $20

Jump_000_03cc:
    add c

Call_000_03cd:
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ret


Call_000_03d3:
Jump_000_03d3:
    push hl
    ld hl, $ff8c
    set 6, [hl]
    pop hl
    call Call_000_01b7
    ret


    ldh a, [$ff8c]
    or $40
    ldh [$ff8c], a
    ret


    push hl

Jump_000_03e6:
    ld hl, $ff8c
    res 6, [hl]

Call_000_03eb:
    res 5, [hl]
    res 4, [hl]
    res 2, [hl]
    res 1, [hl]
    pop hl
    xor a
    ldh [$ff90], a
    ret


Call_000_03f8:
    ld hl, $ff8c

Call_000_03fb:
Jump_000_03fb:
    set 7, [hl]
    ret


Call_000_03fe:
    call Call_000_03f8
    call Call_000_01b7

Call_000_0404:
    push hl
    push bc
    ld hl, $c000

Call_000_0409:
    ld bc, $00a0
    call Call_000_0461

Jump_000_040f:
    ld a, $00

Call_000_0411:
    ldh [$ff94], a
    pop bc
    pop hl
    ret


Call_000_0416:
    call Call_000_0404
    call Call_000_03f8
    call Call_000_01b7
    ret


Call_000_0420:
    ldh a, [rIE]
    ld [$c180], a
    res 0, a
    ldh [rIE], a

jr_000_0429:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_0429

Call_000_042f:
    ldh a, [rLCDC]

Call_000_0431:
    and $7f
    ldh [rLCDC], a

Jump_000_0435:
    ld a, [$c180]
    ldh [rIE], a
    ret


Call_000_043b:
    push hl

Jump_000_043c:
    ld hl, $ff40
    set 5, [hl]
    pop hl
    ret


Call_000_0443:
    push hl
    ld hl, $ff40

Call_000_0447:
    res 5, [hl]

Call_000_0449:
    pop hl
    ret


Call_000_044b:
    ldh a, [$ff8c]
    or $01
    ldh [$ff8c], a
    ldh a, [$ffac]
    ldh [rLCDC], a
    ret


Call_000_0456:
    ld a, $01
    call Call_000_0781

Call_000_045b:
    call $4137
    jp Jump_000_078e


Call_000_0461:
jr_000_0461:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_0461

    ret


Call_000_0469:
Jump_000_0469:
    ld hl, $9fff
    ld bc, $0800
    ld d, $7f
    call Call_000_0487
    ld hl, $9fff
    ld bc, $0800
    ld d, $00
    ld a, $01

Jump_000_047e:
    ldh [rVBK], a
    call Call_000_0487
    xor a
    ldh [rVBK], a
    ret


Call_000_0487:
jr_000_0487:
    ld a, d
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_0487

    ret


jr_000_048f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c

Call_000_0495:
    jr nz, jr_000_048f

    ret


Jump_000_0498:
    add a
    pop hl
    push de
    ld e, a
    ld d, $00
    rl d

Call_000_04a0:
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    pop hl
    pop de
    jp hl


    ld a, $03

jr_000_04aa:
    push af
    call Call_000_01b7
    pop af
    dec a
    jr nz, jr_000_04aa

    ret


Jump_000_04b3:
    push bc
    push de

Jump_000_04b5:
    ldh a, [$ff94]
    cp $28
    jr z, jr_000_04ff

    ldh a, [$ff94]
    sla a
    sla a
    add $00

Jump_000_04c3:
    ld c, a

Call_000_04c4:
    ld a, $00
    adc $c0
    ld b, a
    ldh a, [$ff93]
    add $10
    ld e, a

Call_000_04ce:
    ldh a, [$ff92]
    add $08
    ld d, a
    ld a, [hl+]

jr_000_04d4:
    ldh [$ff91], a
    ld a, [hl+]
    add e
    ld [bc], a
    cp $a8
    jr nc, jr_000_0502

    inc bc
    ld a, [hl+]
    add d

Jump_000_04e0:
    ld [bc], a
    cp $b0
    jr nc, jr_000_0507

    ld a, [hl]
    cp $ff
    jr z, jr_000_0507

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
    jr z, jr_000_04ff

jr_000_04fa:
    ldh a, [$ff91]
    dec a
    jr nz, jr_000_04d4

Call_000_04ff:
jr_000_04ff:
    pop de

Call_000_0500:
    pop bc

Call_000_0501:
    ret


jr_000_0502:
    inc hl
    inc hl
    inc hl

Jump_000_0505:
    jr jr_000_04fa

Jump_000_0507:
jr_000_0507:
    inc hl
    inc hl
    dec bc
    jr jr_000_04fa

Call_000_050c:
    ld a, [hl]
    and $ef
    cp $0c
    jr z, jr_000_051b

    cp $0d
    jr z, jr_000_051b

    and $ec

Jump_000_0519:
    jr nz, jr_000_0523

jr_000_051b:
    push bc
    push de
    call Call_000_0532
    pop de
    pop bc
    ret


jr_000_0523:
    jr jr_000_0523

Call_000_0525:
    call Call_000_0528

Call_000_0528:
    call Call_000_052b

Call_000_052b:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ret


Call_000_0532:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f

Call_000_053e:
    or $80
    ld b, a
    bit 0, e
    jr z, jr_000_054d

    ld a, b
    cp $88
    jr nc, jr_000_054d

Jump_000_054a:
    or $10

Call_000_054c:
    ld b, a

jr_000_054d:
    ld a, e
    and $0f
    cp $0c

Jump_000_0552:
    jr z, jr_000_0568

    cp $0d
    jr z, jr_000_0568

    bit 1, e
    jr z, jr_000_0588

    ld a, [hl+]
    ld d, a

Jump_000_055e:
jr_000_055e:
    call Call_000_0525
    call Call_000_0525
    dec d
    jr nz, jr_000_055e

    ret


Jump_000_0568:
jr_000_0568:
    ld a, [hl+]
    ld e, a
    xor a
    sla e
    rla
    sla e
    rla
    sla e
    rla
    sla e
    rla
    ld d, a
    jp Jump_000_0680


Call_000_057b:
    call Call_000_057e

Call_000_057e:
    call Call_000_0581

Call_000_0581:
    call Call_000_05b0
    ld [bc], a
    inc bc
    inc bc
    ret


Jump_000_0588:
jr_000_0588:
    ld a, [hl+]
    ldh [$ffe3], a
    ld a, [hl+]
    ld d, a
    xor a
    ldh [$ffe0], a
    push bc
    push de
    call Call_000_0598
    pop de
    pop bc
    inc bc

Call_000_0598:
jr_000_0598:
    push de
    ldh a, [$ffe0]
    ld d, a
    ldh a, [$ffe1]
    ld e, a
    call Call_000_057b

Jump_000_05a2:
    call Call_000_057b
    ld a, d
    ldh [$ffe0], a
    ld a, e
    ldh [$ffe1], a
    pop de

Call_000_05ac:
    dec d
    jr nz, jr_000_0598

Call_000_05af:
    ret


Call_000_05b0:
    bit 0, d
    jr z, jr_000_05bd

    xor a
    cp e
    jr z, jr_000_05bc

    dec e
    ldh a, [$ffe2]
    ret


jr_000_05bc:
    ld d, a

jr_000_05bd:
    ldh a, [$ffe3]
    cp [hl]
    jr z, jr_000_05c4

    ld a, [hl+]

Jump_000_05c3:
    ret


jr_000_05c4:
    inc hl
    ld a, [hl+]
    ldh [$ffe2], a
    ld a, [hl+]
    ld e, a
    ldh a, [$ffe2]
    inc d

Jump_000_05cd:
    ret


Call_000_05ce:
    ld bc, $9800
    ld a, [hl+]
    cp $20
    jp z, Jump_000_0651

    cp $21
    jr z, jr_000_060c

    cp $17
    jr z, jr_000_062d

    cp $18
    jr z, jr_000_05ed

    cp $07
    jr z, jr_000_0651

    cp $08
    jr z, jr_000_060c

jr_000_05eb:
    jr jr_000_05eb

jr_000_05ed:
    ld a, [hl+]
    ldh [$ffe4], a

Call_000_05f0:
    push af
    ld a, [hl+]
    ldh [$ffe5], a
    push af
    call Call_000_0612
    pop af
    ldh [$ffe5], a
    pop af
    ldh [$ffe4], a
    ld bc, $9800

Jump_000_0601:
    ld a, $01
    ldh [rVBK], a
    call Call_000_0612
    xor a
    ldh [rVBK], a
    ret


jr_000_060c:
    ld a, [hl+]
    ldh [$ffe4], a
    ld a, [hl+]
    ldh [$ffe5], a

Call_000_0612:
jr_000_0612:
    push bc
    ldh a, [$ffe4]
    ld e, a

jr_000_0616:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_000_0616

    pop bc
    ld a, $20

Jump_000_061f:
    add c

Call_000_0620:
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ldh a, [$ffe5]
    dec a
    ldh [$ffe5], a
    jr nz, jr_000_0612

    ret


jr_000_062d:
    ld a, [hl+]
    ldh [$ffe4], a

Call_000_0630:
    push af
    ld a, [hl+]
    ldh [$ffe5], a
    push af
    ld a, [hl+]
    ldh [$ffe3], a
    xor a
    ld d, a
    call Call_000_065c
    pop af
    ldh [$ffe5], a

Call_000_0640:
    pop af
    ldh [$ffe4], a
    ld bc, $9800
    ld a, $01
    ldh [rVBK], a

Call_000_064a:
    call Call_000_065c
    xor a
    ldh [rVBK], a
    ret


Jump_000_0651:
jr_000_0651:
    ld a, [hl+]
    ldh [$ffe4], a
    ld a, [hl+]
    ldh [$ffe5], a
    ld a, [hl+]
    ldh [$ffe3], a
    xor a
    ld d, a

Call_000_065c:
jr_000_065c:
    push bc
    ldh a, [$ffe4]
    push af

jr_000_0660:
    call Call_000_05b0
    ld [bc], a
    inc bc
    ldh a, [$ffe4]
    dec a
    ldh [$ffe4], a
    jr nz, jr_000_0660

    pop af
    ldh [$ffe4], a
    pop bc
    ld a, c
    add $20

Call_000_0673:
    ld c, a
    ld a, b

Call_000_0675:
Jump_000_0675:
    adc $00
    ld b, a
    ldh a, [$ffe5]
    dec a
    ldh [$ffe5], a
    jr nz, jr_000_065c

Call_000_067f:
    ret


Jump_000_0680:
    ld a, c
    ldh [$ffe0], a
    ld a, b
    ldh [$ffe1], a
    ld a, e
    ldh [$ffe2], a
    ld a, d
    ldh [$ffe3], a
    ld de, $0000

Call_000_068f:
    xor a
    ldh [$ffe6], a
    ldh [$ffe7], a

Jump_000_0694:
jr_000_0694:
    ldh a, [$ffe6]
    ld c, a
    ldh a, [$ffe7]
    ld b, a
    srl b
    rr c
    ld a, c
    ldh [$ffe6], a
    ld a, b
    ldh [$ffe7], a
    bit 0, b
    jr nz, jr_000_06b0

    ld a, [hl+]
    ldh [$ffe6], a
    ld c, a
    ld a, $ff
    ldh [$ffe7], a

jr_000_06b0:
    bit 0, c
    jr z, jr_000_06bb

    ld a, [hl+]
    call Call_000_070c
    jr nz, jr_000_0694

    ret


jr_000_06bb:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    push af
    ld a, l
    ldh [$ffe4], a

Jump_000_06c2:
    ld a, h
    ldh [$ffe5], a
    ld l, c
    pop af
    ld c, a
    swap a
    and $0f
    ld h, a
    ld a, d
    and $f8
    or h
    ld h, a
    ld a, d
    cp h
    jr z, jr_000_06da

    jr nc, jr_000_06e6

    jr jr_000_06e0

jr_000_06da:
    ld a, e
    cp l
    jr z, jr_000_06da

    jr nc, jr_000_06e6

jr_000_06e0:
    push bc
    ld bc, $fc00
    add hl, bc
    pop bc

jr_000_06e6:
    push bc
    ldh a, [$ffe0]
    ld c, a
    ldh a, [$ffe1]
    ld b, a
    add hl, bc
    pop bc
    ld a, c
    and $0f
    inc a
    inc a
    inc a
    ld c, a
    ld b, $00

jr_000_06f8:
    ld a, [hl+]
    call Call_000_070c

Jump_000_06fc:
    ret z

    inc b
    ld a, c
    cp b

Jump_000_0700:
    jr nz, jr_000_06f8

    ldh a, [$ffe4]
    ld l, a
    ldh a, [$ffe5]
    ld h, a
    jp Jump_000_0694


    ret


Call_000_070c:
    push hl
    push af
    ldh a, [$ffe0]
    ld l, a
    ldh a, [$ffe1]
    ld h, a

Jump_000_0714:
    add hl, de
    pop af
    ld [hl], a

Jump_000_0717:
    inc de
    ldh a, [$ffe3]
    cp d

Jump_000_071b:
    jr nz, jr_000_0720

    ldh a, [$ffe2]
    cp e

Call_000_0720:
jr_000_0720:
    pop hl
    ret


Call_000_0722:
    ld hl, $ff8c
    set 4, [hl]
    jp Jump_000_01b7


Call_000_072a:
    ldh a, [rIE]
    or $01
    and $fb
    ldh [rIE], a
    ldh a, [rTIMA]

Call_000_0734:
    push af
    xor a
    ldh [rTAC], a
    pop af
    ret


Jump_000_073a:
    push af
    push bc

Jump_000_073c:
    push de
    push hl
    call Call_000_07ba
    ldh a, [$ff8e]

Jump_000_0743:
    ld [$2000], a
    pop hl
    pop de
    pop bc

Jump_000_0749:
    pop af
    reti


Call_000_074b:
    push hl

Jump_000_074c:
    ld hl, $ff8c
    set 0, [hl]
    pop hl
    ret


Call_000_0753:
Jump_000_0753:
    push af
    ld hl, $ffab
    ld a, $01
    ld [hl], a
    pop af

jr_000_075b:
    call Call_000_01b7

Call_000_075e:
    push af
    call Call_000_0456
    pop af
    cp [hl]
    jr nc, jr_000_075b

Call_000_0766:
    ld [hl], $01
    ret


Call_000_0769:
    xor a

Call_000_076a:
    ld [$3000], a
    ld [$4000], a
    ld a, $01
    ld [$2000], a

Jump_000_0775:
    ldh [$ff8e], a
    ld a, $fe

Jump_000_0779:
    ldh [$ff8f], a
    ld a, $04
    ld [$c164], a
    ret


Call_000_0781:
    push af

Jump_000_0782:
    ldh a, [$ff8e]
    call Call_000_0799
    pop af
    ldh [$ff8e], a
    ld [$2000], a
    ret


Call_000_078e:
Jump_000_078e:
    push af
    call Call_000_07a5
    ldh [$ff8e], a
    ld [$2000], a
    pop af
    ret


Call_000_0799:
    push bc
    push af
    ldh a, [$ff8f]
    ld c, a
    dec a
    ldh [$ff8f], a
    pop af
    ldh [c], a
    pop bc

Jump_000_07a4:
    ret


Call_000_07a5:
    push bc
    ldh a, [$ff8f]
    inc a
    ldh [$ff8f], a
    ld c, a
    ldh a, [c]
    pop bc
    ret


Call_000_07af:
    ld a, $0a
    ld [$0000], a
    ret


Call_000_07b5:
    xor a
    ld [$0000], a
    ret


Call_000_07ba:
    ld hl, $c181
    ld a, [hl]
    bit 0, a
    ret z

    bit 5, a

Jump_000_07c3:
    jr z, jr_000_07c8

    set 7, [hl]
    ret


jr_000_07c8:
    ld a, [$c164]
    ld [$2000], a
    ldh a, [rSVBK]
    push af
    ld a, $07
    ldh [rSVBK], a
    call $41e7
    pop af
    ldh [rSVBK], a
    ld hl, $c181
    set 0, [hl]

Jump_000_07e0:
    ret


Call_000_07e1:
    ld a, [$c164]
    ld [$2000], a
    ldh a, [rSVBK]
    push af
    ld a, $07
    ldh [rSVBK], a
    call $4000
    pop af
    ldh [rSVBK], a
    ldh a, [$ff8e]
    ld [$2000], a
    ret


    push bc
    ldh a, [rSVBK]
    push af
    ld a, $07

Call_000_0800:
Jump_000_0800:
    ldh [rSVBK], a
    ld a, [$c161]
    ld b, a
    pop af
    ldh [rSVBK], a
    ld a, b
    pop bc
    cp $00
    ret


Call_000_080e:
Jump_000_080e:
    push bc
    push hl
    push de
    ld b, a
    ld a, [$c181]
    or $20
    ld [$c181], a
    call Call_000_083f
    pop de
    pop hl

Jump_000_081f:
    pop bc
    call Call_000_01b7
    ret


    push bc
    push hl
    push de
    ld b, a
    ld a, [$c181]
    or $20
    ld [$c181], a
    ld a, [$c161]
    push af
    call Call_000_083f
    pop af
    ld [$c161], a
    pop de

Jump_000_083c:
    pop hl

Jump_000_083d:
    pop bc
    ret


Call_000_083f:
Jump_000_083f:
    ldh a, [rSVBK]
    push af
    ld a, $07

Jump_000_0844:
    ldh [rSVBK], a
    ld a, b
    ld [$d210], a
    ld a, [$c164]
    call Call_000_0781

Jump_000_0850:
    call $4032
    call Call_000_078e
    ld a, [$c181]
    and $df
    ld [$c181], a
    pop af
    ldh [rSVBK], a
    ret


Jump_000_0862:
    xor a
    ld [$c599], a
    call Call_000_080e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6c0e
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $41b1
    call Call_000_078e
    ld a, $01
    call Call_000_080e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $41da
    call Call_000_078e
    xor a
    ld [$c163], a
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7b7b
    call Call_000_078e
    push af
    ld a, $02
    call Call_000_0781
    pop af

Call_000_08ad:
    call $74bc
    call Call_000_078e
    ld a, $06
    ld [$c640], a
    ld a, [$c599]
    cp $01
    jr z, jr_000_092e

    call Call_000_388b
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6b6b
    call Call_000_078e
    ld a, $bf
    call Call_000_1e26

jr_000_08d4:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5f79
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5a8d
    call Call_000_078e
    ld a, [$c5df]
    cp $ff
    jr z, @+$32

    ld a, [$c523]
    and $40
    jr z, jr_000_08d4

    xor a

Jump_000_08fd:
    ld [$c197], a
    ld [$c184], a

Call_000_0903:
    push af

Call_000_0904:
Jump_000_0904:
    ld a, $02
    call Call_000_0781
    pop af
    call $785e
    call Call_000_078e
    ld a, [$c523]
    and $bf
    ld [$c523], a
    ld a, $ff
    ld [$c8e8], a
    ld a, [$c875]
    rst RST_00
    jp nz, $7e08

    ld bc, $0021
    call nz, $0001
    dec bc
    call Call_000_0461

jr_000_092e:
    call Call_000_388b

Jump_000_0931:
    ld a, $01
    ld [$c599], a
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7b7b
    call Call_000_078e
    ld a, [$c8e8]
    cp $ff
    jr z, jr_000_0965

    ld hl, $c420
    ld bc, $0180
    call Call_000_0461
    ld a, $01
    ld [$c599], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $40bc
    call Call_000_078e

jr_000_0965:
    push af

Call_000_0966:
    ld a, $03
    call Call_000_0781
    pop af
    call $4000
    call Call_000_078e
    ld a, $bf
    call Call_000_1e26

jr_000_0977:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5f79
    call Call_000_078e
    push af
    ld a, $01

Call_000_0987:
    call Call_000_0781
    pop af
    call $5a8d
    call Call_000_078e
    ld a, [$c523]
    and $40
    jr z, jr_000_0977

    xor a
    ld [$c197], a
    ld [$c184], a
    push af
    ld a, $02

Jump_000_09a2:
    call Call_000_0781
    pop af
    call $785e
    call Call_000_078e
    ld a, [$c523]
    and $bf
    ld [$c523], a
    ld a, $ff
    ld [$c8e8], a
    ld a, [$c875]
    rst RST_00
    ld h, l
    add hl, bc
    ld a, [hl]

Call_000_09c0:
Jump_000_09c0:
    ld bc, $013e

Call_000_09c3:
    ldh [rVBK], a
    ld a, $06
    call Call_000_1b67
    ld a, $07
    call Call_000_1b67
    ld a, $00
    ldh [rVBK], a
    ret


Call_000_09d4:
    ld a, $02
    call Call_000_1b67
    ld a, $03
    call Call_000_1b67
    ret


Call_000_09df:
    ld a, $04
    call Call_000_1b67
    ld a, $05
    call Call_000_1b67
    ret


Call_000_09ea:
    ld a, $00

Call_000_09ec:
    call Call_000_1b67
    ld a, $01
    call Call_000_1b67
    ret


Call_000_09f5:
    ld a, $08
    call Call_000_1b67
    ld a, $09
    call Call_000_1b67

Call_000_09ff:
    ret


Call_000_0a00:
Jump_000_0a00:
    call Call_000_0a2b
    call Call_000_0a50
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0a17

    ld a, $3f
    call Call_000_0781
    ld hl, $4000
    jr jr_000_0a1f

jr_000_0a17:
    ld a, $32
    call Call_000_0781
    ld hl, $4000

jr_000_0a1f:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, c
    ld h, b
    call Call_000_050c
    jp Jump_000_078e


Call_000_0a2b:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0a3c

    ld a, $33
    call Call_000_0781
    ld hl, $4000
    jr jr_000_0a44

jr_000_0a3c:
    ld a, $2a
    call Call_000_0781
    ld hl, $4000

Jump_000_0a44:
jr_000_0a44:
    ld a, [hl+]

Jump_000_0a45:
    ld c, a

Jump_000_0a46:
    ld a, [hl+]

Jump_000_0a47:
    ld b, a

Jump_000_0a48:
    ld l, c

Jump_000_0a49:
    ld h, b

Jump_000_0a4a:
    call Call_000_050c

Jump_000_0a4d:
    jp Jump_000_078e


Call_000_0a50:
Jump_000_0a50:
    ld a, [$c599]

Jump_000_0a53:
    cp $00

Jump_000_0a55:
    jr nz, jr_000_0a61

Jump_000_0a57:
    ld a, $33
    call Call_000_0781
    ld hl, $4002
    jr jr_000_0a1f

jr_000_0a61:
    ld a, $2a
    call Call_000_0781

Call_000_0a66:
    ld hl, $4002
    jr jr_000_0a1f

Call_000_0a6b:
    ldh a, [$ffa6]
    cp $ff
    jr z, jr_000_0a77

    ld b, a
    ldh a, [$ffa4]
    cp b
    jr z, jr_000_0a7e

jr_000_0a77:
    ldh a, [$ffa4]
    ldh [$ffa6], a
    call Call_000_0ac1

jr_000_0a7e:
    ldh a, [$ffa7]
    cp $ff

Jump_000_0a82:
    jr z, jr_000_0a8c

    ld b, a
    ldh a, [$ffa5]
    cp b
    ret z

    cp $7f
    ret z

jr_000_0a8c:
    ldh a, [$ffa5]
    ldh [$ffa7], a
    call Call_000_0b27
    ret


Call_000_0a94:
    ld hl, $ff8c
    set 3, [hl]
    jp Jump_000_01a9


Call_000_0a9c:
    ld e, a
    swap a
    and $0f
    ld d, a
    ld a, [$c599]
    ld l, a
    ld h, $00
    ld bc, $0abf
    add hl, bc
    ld a, [hl]
    add d
    call Call_000_0781
    ld a, e
    and $0f
    add a
    ld e, a
    ld a, $40
    ld d, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ret


    inc sp
    ld a, [hl+]

Call_000_0ac1:
    push bc

Jump_000_0ac2:
    push de
    ld d, a
    ldh a, [rSVBK]
    push af

Jump_000_0ac7:
    ld a, $02
    ldh [rSVBK], a

Jump_000_0acb:
    ld a, d
    push af

Call_000_0acd:
    call Call_000_0a9c
    call Call_000_0b57
    call Call_000_078e
    pop af
    inc a
    call Call_000_0a9c
    call Call_000_0b57
    call Call_000_078e
    pop af
    ldh [rSVBK], a

Call_000_0ae4:
    call Call_000_01a9
    ld a, $01
    ldh [$ff99], a
    ld hl, $d000
    ld a, l
    ldh [$ff97], a

Call_000_0af1:
    ld a, h

Jump_000_0af2:
    ldh [$ff98], a
    ld hl, $9000
    ld a, l

Jump_000_0af8:
    ldh [$ff9a], a
    ld a, h
    ldh [$ff9b], a
    call Call_000_0a94
    ld hl, $9400
    ld a, l
    ldh [$ff9a], a
    ld a, h
    ldh [$ff9b], a
    call Call_000_0a94
    ld hl, $8800

Jump_000_0b0f:
    ld a, l
    ldh [$ff9a], a
    ld a, h
    ldh [$ff9b], a
    call Call_000_0a94

Call_000_0b18:
    ld hl, $8c00
    ld a, l
    ldh [$ff9a], a
    ld a, h
    ldh [$ff9b], a
    call Call_000_0a94
    pop de
    pop bc
    ret


Call_000_0b27:
    call Call_000_0a9c
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    call Call_000_0b57

Call_000_0b34:
    pop af
    ldh [rSVBK], a
    call Call_000_078e
    call Call_000_01a9
    ld a, $00
    ldh [$ff99], a
    ld hl, $d000
    ld a, l
    ldh [$ff97], a
    ld a, h
    ldh [$ff98], a
    ld hl, $8000
    ld a, l
    ldh [$ff9a], a
    ld a, h
    ldh [$ff9b], a
    call Call_000_0a94
    ret


Call_000_0b57:
    ld a, [hl]
    cp $ff
    ret z

    and $ef
    cp $0c
    jr z, jr_000_0b69

    cp $0d

Jump_000_0b63:
    jr z, jr_000_0b69

    and $ec
    jr nz, jr_000_0b71

jr_000_0b69:
    push bc
    push de
    call Call_000_0b73
    pop de
    pop bc
    ret


jr_000_0b71:
    jr jr_000_0b71

Call_000_0b73:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    or $d0
    ld b, a
    ld a, e
    and $0f
    cp $0c
    jp z, Jump_000_0568

    cp $0d
    jp z, Jump_000_0568

    bit 1, e
    jp z, Jump_000_0588

    ld a, [hl+]
    ld d, a
    jp Jump_000_055e


Call_000_0b99:
    push hl
    push bc
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7bed
    call Call_000_078e
    pop bc
    pop hl
    ret


Call_000_0bab:
    push bc
    push de
    push hl
    call Call_000_0416
    call Call_000_03fe
    ld a, $01
    ld [$c87d], a
    call Call_000_0d7c
    call Call_000_0e52
    call Call_000_0ca6
    push af

Jump_000_0bc3:
    ld a, $01
    call Call_000_0781
    pop af
    call $4663
    call Call_000_078e
    call Call_000_0c83
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $490d
    call Call_000_078e
    call Call_000_03fe
    xor a
    ld [$c87d], a
    call Call_000_0d7c
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $688c
    call Call_000_078e
    call Call_000_078e
    pop hl
    pop de
    pop bc
    ret


Call_000_0bfd:
    push bc
    push de

Jump_000_0bff:
    push hl

Call_000_0c00:
Jump_000_0c00:
    call Call_000_0e52

Call_000_0c03:
Jump_000_0c03:
    call Call_000_0404
    call Call_000_03fe
    call Call_000_0ca6

Call_000_0c0c:
    push af
    ld a, $01

Call_000_0c0f:
Jump_000_0c0f:
    call Call_000_0781
    pop af

Call_000_0c13:
    call $4663
    call Call_000_078e
    push af

Jump_000_0c1a:
    ld a, $02

Call_000_0c1c:
    call Call_000_0781
    pop af

Jump_000_0c20:
    call $688c
    call Call_000_078e
    call Call_000_0e63
    call Call_000_078e
    call Call_000_0c83
    push af

Call_000_0c30:
    ld a, $01
    call Call_000_0781
    pop af
    call $490d
    call Call_000_078e
    call Call_000_01b7
    pop hl
    pop de
    pop bc
    ret


Call_000_0c43:
    push bc
    push de
    push hl
    call Call_000_0416
    call Call_000_03fe
    call Call_000_0ca6

Jump_000_0c4f:
    push af
    ld a, $01

Jump_000_0c52:
    call Call_000_0781
    pop af
    call $4663
    call Call_000_078e
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $688c
    call Call_000_078e
    call Call_000_0e63
    call Call_000_078e
    call Call_000_0c83
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $490d
    call Call_000_078e

Call_000_0c7f:
    pop hl
    pop de
    pop bc
    ret


Call_000_0c83:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0c98

    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4862
    call Call_000_078e
    ret


jr_000_0c98:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $556f
    call Call_000_078e
    ret


Call_000_0ca6:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0cef

    ld a, [$c522]
    ld [$c875], a
    cp $28
    jr nc, jr_000_0cbd

    ld a, $23
    call Call_000_0781
    ret


jr_000_0cbd:
    cp $50
    jr nc, jr_000_0ccf

    ld a, $24
    call Call_000_0781
    ld a, [$c522]
    sub $28
    ld [$c875], a
    ret


Jump_000_0ccf:
jr_000_0ccf:
    cp $78
    jr nc, jr_000_0ce1

Jump_000_0cd3:
    ld a, $25

Jump_000_0cd5:
    call Call_000_0781
    ld a, [$c522]
    sub $50
    ld [$c875], a
    ret


jr_000_0ce1:
    ld a, $26
    call Call_000_0781

Call_000_0ce6:
    ld a, [$c522]
    sub $78
    ld [$c875], a
    ret


jr_000_0cef:
    ld a, [$c522]
    ld [$c875], a
    cp $28

Call_000_0cf7:
    jr nc, jr_000_0cff

    ld a, $27
    call Call_000_0781
    ret


Call_000_0cff:
Jump_000_0cff:
jr_000_0cff:
    ld a, $28
    call Call_000_0781
    ld a, [$c522]
    sub $28
    ld [$c875], a

Call_000_0d0c:
    ret


Call_000_0d0d:
Jump_000_0d0d:
    push bc
    push hl
    ld a, [$c875]
    ld l, a
    ld h, $00
    add hl, hl

Call_000_0d16:
    ld bc, $4000
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, c
    ld [$c855], a
    ld a, b
    ld [$c856], a
    call Call_000_0d2c
    pop hl
    pop bc
    ret


Call_000_0d2c:
    ld a, [$c855]
    ld c, a

Jump_000_0d30:
    ld a, [$c856]
    ld b, a
    ld hl, $c902
    ld d, $c4

Jump_000_0d39:
    ld e, $0e

jr_000_0d3b:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_000_0d49

    push de
    ld de, $000e
    add hl, de
    pop de
    ld e, $0e

jr_000_0d49:
    dec d
    jr nz, jr_000_0d3b

    ld hl, $c910
    ld d, $c4
    ld e, $0e

jr_000_0d53:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_000_0d61

    push de
    ld de, $000e
    add hl, de
    pop de
    ld e, $0e

Jump_000_0d61:
jr_000_0d61:
    dec d
    jr nz, jr_000_0d53

    push af
    ld a, $29
    call Call_000_0781
    pop af
    call $668b
    call Call_000_078e
    ld a, $02
    ld [$c855], a
    ld a, $c9
    ld [$c856], a
    ret


Call_000_0d7c:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0d87

    ld a, $27
    jr jr_000_0d89

jr_000_0d87:
    ld a, $1d

jr_000_0d89:
    call Call_000_080e
    call Call_000_0d0d
    push bc
    push hl
    ld bc, $0ded
    ld a, [$c640]
    ld l, a
    ld h, $00
    add hl, bc
    ld a, [hl]
    ld [$c5c3], a
    pop hl
    pop bc
    xor a
    ld [$c878], a

jr_000_0da5:
    xor a
    ld [$c877], a

jr_000_0da9:
    push af
    ld a, $01
    call Call_000_0781
    pop af

Call_000_0db0:
Jump_000_0db0:
    call $501d
    call Call_000_078e
    ld de, $0000

jr_000_0db9:
    ld hl, $c884
    srl [hl]
    dec hl
    rr [hl]
    jr nc, jr_000_0dc8

    push de
    call $0df4
    pop de

jr_000_0dc8:
    inc e
    ld a, e
    cp $0e
    jr nz, jr_000_0db9

Call_000_0dce:
    ld a, [$c877]
    inc a
    ld [$c877], a
    cp $0e
    jr nz, jr_000_0da9

    call Call_000_03d3
    call Call_000_01b7
    ld a, [$c878]
    inc a
    ld [$c878], a
    ld hl, $c5c3

Call_000_0de9:
Jump_000_0de9:
    cp [hl]

Call_000_0dea:
    jr nz, jr_000_0da5

    ret


    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $3e
    ld bc, $9eea
    pop bc
    ld [$c19f], a
    call Call_000_0e09
    call Call_000_0e3f
    ld hl, $c19e
    call Call_000_02a5
    ret


Call_000_0e09:
    ld a, [$c87d]
    cp $00
    jr z, jr_000_0e1b

    ld a, $ff
    ld [$c1a0], a
    ld a, $07
    ld [$c1a1], a
    ret


jr_000_0e1b:
    ld a, [$c877]
    add a

Jump_000_0e1f:
    ld l, a
    add a
    add a
    add a
    sub l
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld a, [$c855]
    ld c, a
    ld a, [$c856]
    ld b, a
    add hl, bc
    ld a, [hl]
    ld [$c1a0], a
    ld bc, $000e
    add hl, bc
    ld a, [hl]
    ld [$c1a1], a
    ret


Call_000_0e3f:
    ld a, [$c877]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld bc, $9800
    add hl, bc
    ld c, l
    ld b, h
    ret


Call_000_0e52:
    ld hl, $db40
    ld d, $38
    xor a

jr_000_0e58:
    ld [hl+], a
    dec d
    jr nz, jr_000_0e58

    call Call_000_074b
    call Call_000_01b7
    ret


Call_000_0e63:
    call Call_000_0d0d
    ld a, $0e
    ld [$c900], a
    ld [$c901], a
    call Call_000_0e78
    call Call_000_03d3
    call Call_000_01a9
    ret


Call_000_0e78:
    ld bc, $9800
    ld hl, $c900
    call Call_000_02a5
    ret


Call_000_0e82:
    push de
    push bc
    push hl
    ld de, $0000

jr_000_0e88:
    ld a, [$c8ad]
    ld l, a
    ld a, [$c8ae]
    ld h, a
    add hl, de
    ld a, [hl]
    ld hl, $c865
    add hl, de
    ld [hl], a
    inc e
    ld a, e
    cp $04
    jr c, jr_000_0e88

    call Call_000_0ea4
    pop hl
    pop bc
    pop de
    ret


Call_000_0ea4:
    ld a, [$c523]
    and $7f
    ld [$c523], a
    ld hl, $c865
    ld a, [$c8ab]
    cp [hl]
    jr nc, jr_000_0eb6

    ret


jr_000_0eb6:
    inc hl
    cp [hl]
    jr c, jr_000_0ebd

    jr z, jr_000_0ebd

    ret


jr_000_0ebd:
    inc hl
    ld a, [$c8ac]
    cp [hl]
    jr nc, jr_000_0ec5

Call_000_0ec4:
Jump_000_0ec4:
    ret


Call_000_0ec5:
jr_000_0ec5:
    inc hl
    cp [hl]
    jr c, jr_000_0ecc

    jr z, jr_000_0ecc

    ret


jr_000_0ecc:
    ld a, [$c523]
    or $80
    ld [$c523], a
    ret


Call_000_0ed5:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0ee3

    ld a, $05
    ld de, $4000

Jump_000_0ee1:
    jr jr_000_0ee8

jr_000_0ee3:
    ld a, $05
    ld de, $48d1

jr_000_0ee8:
    call Call_000_0781
    ld a, [$c521]
    ld l, a

Call_000_0eef:
    ld h, $00
    add hl, hl
    add hl, de
    ld a, [hl+]

Jump_000_0ef4:
    ld [$c8ad], a

Jump_000_0ef7:
    ld a, [hl]
    ld [$c8ae], a
    ld hl, $c600
    ld a, l

Call_000_0eff:
    ld [$c867], a
    ld a, h

Jump_000_0f03:
    ld [$c868], a

jr_000_0f06:
    ld a, [$c8ad]
    ld l, a
    ld a, [$c8ae]
    ld h, a
    ld a, [hl]

Jump_000_0f0f:
    cp $ff

Call_000_0f11:
Jump_000_0f11:
    jr nz, jr_000_0f21

    push af
    ld a, [$c867]
    ld l, a
    ld a, [$c868]
    ld h, a
    pop af
    ld [hl], a
    jp Jump_000_078e


jr_000_0f21:
    ld bc, $0004
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr nz, jr_000_0f2f

    call Call_000_0f5d
    jr jr_000_0f06

jr_000_0f2f:
    ld [$c5c3], a
    inc hl
    inc hl
    ld a, [hl]
    ld [$c8b8], a
    push af
    ld a, $02
    call Call_000_0781
    pop af

Jump_000_0f3f:
    call $6bf4
    call Call_000_078e
    push af

Jump_000_0f46:
    ld a, $02
    call Call_000_0781
    pop af
    call $7267
    call Call_000_078e

jr_000_0f52:
    call Call_000_0f5d

Call_000_0f55:
    jr jr_000_0f06

Jump_000_0f57:
    call Call_000_078e
    pop af
    jr jr_000_0f52

Call_000_0f5d:
    ld a, [$c8ad]
    ld l, a
    ld a, [$c8ae]
    ld h, a
    ld bc, $0007
    add hl, bc
    ld a, l
    ld [$c8ad], a
    ld a, h
    ld [$c8ae], a
    ret


Call_000_0f72:
    push af
    bit 7, a
    jr nz, jr_000_0f97

    bit 6, a
    jr nz, jr_000_0f89

    ld a, [$c1a8]
    ld c, a
    ld a, [$c1a9]
    ld b, a
    ld a, [$c1aa]
    jp Jump_000_1057


jr_000_0f89:
    ld a, [$c1ab]
    ld c, a
    ld a, [$c1ac]
    ld b, a
    ld a, [$c1ad]
    jp Jump_000_1057


jr_000_0f97:
    bit 6, a
    jr nz, jr_000_0fa9

    ld a, [$c1ae]
    ld c, a
    ld a, [$c1af]
    ld b, a
    ld a, [$c1b0]
    jp Jump_000_1057


jr_000_0fa9:
    ld a, [$c1b1]
    ld c, a
    ld a, [$c1b2]
    ld b, a
    ld a, [$c1b3]
    jp Jump_000_1057


Call_000_0fb7:
    push af
    bit 7, a
    jr nz, jr_000_0fdb

    bit 6, a
    jr nz, jr_000_0fce

    ld a, [$c1b4]

Call_000_0fc3:
    ld c, a
    ld a, [$c1b5]
    ld b, a
    ld a, [$c1b6]
    jp Jump_000_1057


jr_000_0fce:
    ld a, [$c1b7]
    ld c, a
    ld a, [$c1b8]
    ld b, a
    ld a, [$c1b9]
    jr jr_000_1057

jr_000_0fdb:
    bit 6, a
    jr nz, jr_000_0fec

    ld a, [$c1ba]
    ld c, a
    ld a, [$c1bb]
    ld b, a
    ld a, [$c1bc]
    jr jr_000_1057

jr_000_0fec:
    ld a, [$c1bd]
    ld c, a

Jump_000_0ff0:
    ld a, [$c1be]
    ld b, a
    ld a, [$c1bf]
    jr jr_000_1057

Call_000_0ff9:
    push af
    bit 7, a
    jr nz, jr_000_101c

    bit 6, a

Jump_000_1000:
    jr nz, jr_000_100f

    ld a, [$c1c0]
    ld c, a
    ld a, [$c1c1]
    ld b, a
    ld a, [$c1c2]
    jr jr_000_1057

jr_000_100f:
    ld a, [$c1c3]
    ld c, a
    ld a, [$c1c4]
    ld b, a
    ld a, [$c1c5]
    jr jr_000_1057

jr_000_101c:
    bit 6, a
    jr nz, jr_000_102d

    ld a, [$c1c6]

Jump_000_1023:
    ld c, a
    ld a, [$c1c7]
    ld b, a
    ld a, [$c1c8]
    jr jr_000_1057

jr_000_102d:
    ld a, [$c1c9]
    ld c, a
    ld a, [$c1ca]
    ld b, a
    ld a, [$c1cb]
    jr jr_000_1057

Call_000_103a:
    push af
    bit 6, a
    jr nz, jr_000_104c

    ld a, [$c1cc]
    ld c, a

Jump_000_1043:
    ld a, [$c1cd]
    ld b, a
    ld a, [$c1ce]
    jr jr_000_1057

jr_000_104c:
    ld a, [$c1cf]
    ld c, a

Jump_000_1050:
    ld a, [$c1d0]
    ld b, a

Call_000_1054:
    ld a, [$c1d1]

Call_000_1057:
Jump_000_1057:
jr_000_1057:
    call Call_000_0781
    pop af
    and $3f
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld [$c19a], a
    ld a, [hl]
    ld [$c19b], a
    call Call_000_10a9
    call Call_000_078e
    ret


Call_000_1071:
    ret


Call_000_1072:
    ret


Call_000_1073:
    ret


    ret


Jump_000_1075:
    nop
    inc h
    ld c, b
    ld l, h
    sub b

Call_000_107a:
    ld a, $01
    call Call_000_0781
    call Call_000_1086
    call Call_000_078e
    ret


Call_000_1086:
    ld a, [$c8e6]
    ld l, a
    ld h, $00
    add hl, hl

Call_000_108d:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_1099

    ld bc, $71aa
    jr jr_000_109c

jr_000_1099:
    ld bc, $71ca

jr_000_109c:
    add hl, bc
    ld a, [hl+]
    ld [$c19a], a
    ld a, [hl]
    ld [$c19b], a
    call Call_000_10ad
    ret


Call_000_10a9:
    call Call_000_10b2
    ret


Call_000_10ad:
    call Call_000_1184
    jr jr_000_10b8

Call_000_10b2:
    call Call_000_118a
    call Call_000_13da

Call_000_10b8:
Jump_000_10b8:
jr_000_10b8:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld [$c660], a
    ld a, l
    ld [$c19a], a
    ld a, h
    ld [$c19b], a
    ld a, [hl]
    ld [$c661], a
    ld a, [$c660]
    cp $ff
    jr z, jr_000_10fb

    cp $0f
    jr z, jr_000_10e4

    cp $30
    jr c, jr_000_1137

    call Call_000_1414
    jr jr_000_10b8

Jump_000_10e4:
jr_000_10e4:
    call Call_000_03d3

jr_000_10e7:
    call Call_000_03d3
    call Call_000_19c5
    call Call_000_03fe

Jump_000_10f0:
    call Call_000_0456
    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_10e7

    ret


Jump_000_10fb:
jr_000_10fb:
    ld a, [$c88f]
    bit 1, a
    call z, Call_000_1354

Call_000_1103:
    ld a, [$c523]
    and $08
    jr z, jr_000_1112

    ld a, [$c88f]
    and $02
    jr nz, jr_000_1115

    ret


jr_000_1112:
    call Call_000_1119

jr_000_1115:
    call Call_000_118a
    ret


Call_000_1119:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_1136

    ld a, $00
    ld [$c892], a
    call Call_000_16b9
    call Call_000_19c5
    call Call_000_03fe
    ld a, [$c523]

Call_000_1131:
    and $f7

Call_000_1133:
    ld [$c523], a

jr_000_1136:
    ret


jr_000_1137:
    call Call_000_113d
    jp Jump_000_10b8


Call_000_113d:
    ld a, [$c660]
    cp $20
    ret nc

    rst RST_00
    ld l, $12
    inc d
    inc d
    inc d
    inc d
    inc bc
    ld de, $128f
    xor b
    ld [de], a
    xor e
    ld de, $11d5
    inc bc
    ld de, $1103
    ld c, [hl]
    inc de
    ld d, h
    inc de
    ld d, a
    inc de
    ld c, [hl]
    dec d
    inc bc
    ld de, $1103
    inc bc
    ld de, $1103
    inc d
    ld [de], a
    inc bc
    ld de, $1199
    and d
    ld de, $1414
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d

Jump_000_1182:
    inc d
    inc d

Call_000_1184:
    ld a, $02
    ld [$c88f], a
    ret


Call_000_118a:
    ld a, $01
    ld [$c88f], a
    ret


    ld a, [$c88f]
    or $80
    ld [$c88f], a
    ret


Jump_000_1199:
    ld a, [$c88f]
    and $fe
    ld [$c88f], a
    ret


Jump_000_11a2:
    ld a, [$c88f]
    or $01
    ld [$c88f], a
    ret


Jump_000_11ab:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_11c2

    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c662], a
    call Call_000_1203
    ret


jr_000_11c2:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c668], a
    ld [$c893], a
    call Call_000_1203
    ret


Jump_000_11d5:
    ld a, [$c88f]

Call_000_11d8:
    and $02
    jr nz, jr_000_11ec

    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c663], a
    call Call_000_1203
    ret


jr_000_11ec:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c669], a
    call Call_000_1203
    ret


Call_000_11fc:
    ld a, [$c19a]
    add $02
    jr jr_000_1208

Call_000_1203:
    ld a, [$c19a]
    add $01

jr_000_1208:
    ld [$c19a], a
    ld a, [$c19b]
    adc $00
    ld [$c19b], a
    ret


Call_000_1214:
Jump_000_1214:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [$c19a], a
    ld a, h
    ld [$c19b], a
    ld a, [bc]
    ld [$c885], a
    jr jr_000_1242

    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld [$c885], a
    ld a, l
    ld [$c19a], a
    ld a, h

Call_000_123f:
    ld [$c19b], a

Jump_000_1242:
jr_000_1242:
    ld a, [$c885]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c1a5]
    ld c, a
    ld a, [$c1a6]
    ld b, a
    add hl, bc
    ld a, l

Jump_000_1255:
    ld [$c887], a
    ld a, h

Jump_000_1259:
    ld [$c888], a
    ld a, [$c1a7]

Call_000_125f:
    call Call_000_0781
    call Call_000_1269
    jp Jump_000_078e


    ret


Call_000_1269:
    ld d, $08

jr_000_126b:
    ld a, [$c887]
    ld l, a
    ld a, [$c888]
    ld h, a
    ld a, [hl+]
    cp $ff
    ret z

    ld [$c660], a
    ld a, l
    ld [$c887], a
    ld a, h
    ld [$c888], a
    ld a, [hl+]

Jump_000_1283:
    ld [$c661], a
    push de
    call Call_000_1414
    pop de

Call_000_128b:
    dec d
    jr nz, jr_000_126b

    ret


    call Call_000_13b3
    call Call_000_1389
    ld a, [$c88b]
    call Call_000_136b
    ld a, [$c88c]
    call Call_000_136b
    ld a, [$c88d]
    call Call_000_137b
    ret


    call $1320
    call Call_000_12cd
    ld a, [$c889]
    call Call_000_136b
    ld a, [$c88a]
    call Call_000_136b
    ld a, [$c88b]
    call Call_000_136b
    ld a, [$c88c]
    call Call_000_136b
    ld a, [$c88d]
    call Call_000_137b
    ret


Call_000_12cd:
    ld de, $0000

jr_000_12d0:
    ld c, e
    ld b, d
    sla c

jr_000_12d4:
    ld a, [$c885]

Jump_000_12d7:
    ld [$c887], a
    ld hl, $1316
    add hl, bc
    sub [hl]
    ld [$c885], a
    ld a, [$c886]
    ld [$c888], a
    inc hl
    sbc [hl]
    ld [$c886], a
    jr c, jr_000_12f9

    ld hl, $c889
    add hl, de
    ld a, [hl]
    add $01
    ld [hl], a

Call_000_12f7:
    jr jr_000_12d4

jr_000_12f9:
    ld a, [$c887]

Jump_000_12fc:
    ld [$c885], a

Call_000_12ff:
    ld a, [$c888]
    ld [$c886], a
    inc de
    ld a, $04
    cp e
    jr nz, jr_000_12d0

    ld a, [$c885]
    ld [$c88d], a
    xor a
    ld [$c88e], a
    ret


    db $10
    daa
    add sp, $03
    ld h, h
    nop
    ld a, [bc]
    nop
    ld bc, $fa00
    sbc d
    pop bc
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld [$c887], a
    ld a, [hl]
    ld [$c888], a
    call Call_000_11fc
    ld a, [$c887]
    ld l, a
    ld a, [$c888]
    ld h, a
    ld a, [hl+]
    ld [$c885], a
    ld a, [hl]
    ld [$c886], a
    ld hl, $c889
    xor a
    ld c, $05

jr_000_1349:
    ld [hl+], a
    dec c
    jr nz, jr_000_1349

    ret


    call Call_000_1656
    jp Jump_000_154e


Call_000_1354:
    jp Jump_000_1656


    ld a, [$c88f]
    and $02
    ret nz

    call Call_000_1656
    call Call_000_13da
    xor a
    ld [$c5d4], a
    ld [$c5d5], a
    ret


Call_000_136b:
    ld [$c660], a
    cp $00
    jr nz, jr_000_1378

    ld a, [$c88e]
    cp $00
    ret z

jr_000_1378:
    ld a, [$c660]

Call_000_137b:
    or $80
    ld [$c660], a
    ld a, $ff
    ld [$c88e], a
    call Call_000_1414
    ret


Call_000_1389:
    ld a, [$c885]
    ld e, a
    ld b, $64
    call Call_000_13a7
    ld [$c88b], a
    ld b, $0a
    call Call_000_13a7
    ld [$c88c], a
    ld a, e
    ld [$c88d], a
    ld a, $00
    ld [$c88e], a
    ret


Call_000_13a7:
    ld d, $00

jr_000_13a9:
    ld a, e
    sub b
    jr c, jr_000_13b1

    inc d
    ld e, a
    jr jr_000_13a9

jr_000_13b1:
    ld a, d
    ret


Call_000_13b3:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

Jump_000_13bf:
    ld a, l

Call_000_13c0:
Jump_000_13c0:
    ld [$c19a], a
    ld a, h
    ld [$c19b], a
    xor a
    ld [$c8eb], a
    ld a, [bc]
    ld [$c885], a
    ld hl, $c889
    ld d, $05
    xor a

jr_000_13d5:
    ld [hl+], a
    dec d
    jr nz, jr_000_13d5

    ret


Call_000_13da:
    ld a, $ff
    ld [$c1a2], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5091
    call Call_000_078e
    call Call_000_19c5
    call Call_000_03fe
    ld a, $12
    ld [$c66c], a
    ld a, $08
    ld [$c66d], a

Jump_000_13fc:
    xor a
    ld [$c65e], a
    ld [$c65f], a
    call Call_000_15d2

Call_000_1406:
    xor a
    ld [$c890], a
    ld [$c893], a
    ld [$c894], a
    call Call_000_16ad
    ret


Call_000_1414:
    ld a, $7f
    ld [$c666], a
    ld a, [$c660]
    ld [$c667], a
    cp $7f
    jr z, jr_000_1441

    bit 7, a
    jr nz, jr_000_1461

    cp $10
    jr c, jr_000_1461

    swap a
    and $07
    rst RST_00
    ld b, b
    inc d
    ld c, b
    inc d
    ld b, b
    inc d
    ld c, b
    inc d
    ld c, b
    inc d
    ld d, h
    inc d
    ld c, b
    inc d
    ld d, h
    inc d
    ret


jr_000_1441:
    ld a, $7f
    ld [$c667], a
    jr jr_000_1461

    ld a, [$c667]
    add $80
    ld [$c667], a
    ld a, $90
    jr jr_000_145e

    ld a, [$c667]
    add $70
    ld [$c667], a
    ld a, $a0

jr_000_145e:
    ld [$c666], a

jr_000_1461:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_146b

    jp Jump_000_1498


jr_000_146b:
    ld a, [$c668]
    ld [$c195], a
    ld a, [$c669]
    dec a
    ld [$c196], a
    call Call_000_15ab
    ld a, $01
    ld [$c664], a
    ld a, $02
    ld [$c665], a
    ld hl, $c664
    call Call_000_01d8
    ld a, [$c668]
    inc a
    ld [$c668], a
    and $e0
    ret z

    jp Jump_000_154e


Jump_000_1498:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_14be

    call Call_000_0456
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_14be

    ld a, $ff
    ld [$c890], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5091
    call Call_000_078e
    call Call_000_168a

jr_000_14be:
    ld a, [$c65e]
    inc a
    ld b, a
    ld a, [$c662]
    add b
    ld [$c195], a
    ld a, [$c65f]
    inc a
    ld b, a

Jump_000_14cf:
    ld a, [$c663]
    add a
    add b
    ld [$c196], a
    call Call_000_15ab
    ld a, $01
    ld [$c664], a
    ld a, $02
    ld [$c665], a
    ld hl, $c664
    call Call_000_01d8
    ld a, [$c5df]
    cp $ff
    jr z, jr_000_14f8

    ld a, [$c890]
    cp $00
    jr nz, jr_000_1515

jr_000_14f8:
    call Call_000_03d3
    ld a, $03

jr_000_14fd:
    push af
    push af
    ld a, $03
    call Call_000_0781

Jump_000_1504:
    pop af
    call $5091
    call Call_000_078e
    call Call_000_19c5
    call Call_000_03fe
    pop af
    dec a
    jr nz, jr_000_14fd

jr_000_1515:
    ld a, [$c663]
    ld e, a
    ld d, $00
    ld hl, $1075
    add hl, de
    ld a, [hl]
    ld b, a
    ld a, [$c662]
    add b
    ld e, a
    ld d, $00
    ld a, [$c666]
    ld hl, $c66e
    add hl, de
    ld [hl], a
    ld a, [$c662]
    inc a
    ld [$c662], a
    ld b, a
    ld a, [$c66c]
    cp b
    ret nz

    ld a, [$c894]
    cp $00
    jr nz, jr_000_1548

    call Call_000_154e
    ret


jr_000_1548:
    ld a, $11
    ld [$c662], a
    ret


Call_000_154e:
Jump_000_154e:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_1573

    ld a, [$c663]
    inc a
    ld [$c663], a
    add a
    ld b, a
    ld a, [$c66d]
    cp b
    jr nz, jr_000_156e

    call Call_000_158b
    ld a, [$c663]
    dec a
    ld [$c663], a

jr_000_156e:
    xor a
    ld [$c662], a
    ret


Jump_000_1573:
jr_000_1573:
    ld a, [$c893]
    ld [$c668], a
    ld a, [$c669]
    inc a
    ld [$c669], a
    ld a, [$c669]
    cp $20
    ret nz

    xor a
    ld [$c669], a
    ret


Call_000_158b:
    call Call_000_158e

Call_000_158e:
    ld hl, $c66e
    ld bc, $c680
    ld d, $7e

jr_000_1596:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, jr_000_1596

    ld d, $12
    ld a, $7f

jr_000_15a0:
    ld [hl+], a
    dec d
    jr nz, jr_000_15a0

    call Call_000_15ff
    call Call_000_03d3
    ret


Call_000_15ab:
    push hl
    ld a, [$c88f]
    bit 0, a
    jr nz, jr_000_15b8

    ld bc, $9800
    jr jr_000_15bb

jr_000_15b8:
    ld bc, $9c00

jr_000_15bb:
    ld a, [$c196]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    ld a, [$c195]
    ld c, a
    ld b, $00
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ret


Call_000_15d2:
    ld a, [$c88f]
    and $02
    ret nz

    ld a, [$c892]
    cp $00
    jr nz, jr_000_15e7

    call Call_000_160c
    ld a, $ff
    ld [$c892], a

jr_000_15e7:
    xor a
    ld [$c662], a
    ld [$c663], a
    ld hl, $c66e
    ld bc, $0120
    ld d, $7f

jr_000_15f6:
    ld a, d
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_15f6

    jr jr_000_15ff

Call_000_15ff:
jr_000_15ff:
    ld bc, $9c21
    ld hl, $c66c
    call Call_000_01d8

Jump_000_1608:
    call Call_000_03d3
    ret


Call_000_160c:
    ld hl, $1622
    ld bc, $9c00
    call Call_000_0339
    ld hl, $1626
    ld bc, $9c20
    call Call_000_0339
    call Call_000_03d3
    ret


    inc d
    ld bc, $0777
    inc d
    add hl, bc
    ld a, a
    rlca
    call Call_000_03d3
    ld d, $14

jr_000_162f:
    call Call_000_01b7
    dec d
    jr nz, jr_000_162f

    ld a, [$c188]
    push af
    ld d, $1e

jr_000_163b:
    push de
    call Call_000_01b7
    call Call_000_0456
    pop de
    dec d
    jr z, jr_000_1651

    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_163b

    bit 1, a
    jr nz, jr_000_163b

jr_000_1651:
    pop af

Call_000_1652:
    ld [$c188], a
    ret


Call_000_1656:
Jump_000_1656:
    call Call_000_03d3

jr_000_1659:
    call Call_000_1691
    call Call_000_0456

Call_000_165f:
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_1659

    ld a, [$c599]
    cp $00
    jr nz, jr_000_1671

    ld a, $31
    jr jr_000_1673

jr_000_1671:
    ld a, $18

Jump_000_1673:
jr_000_1673:
    call Call_000_080e

jr_000_1676:
    call Call_000_1691
    call Call_000_0456
    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_1676

    xor a
    ld [$c5d4], a
    ld [$c5d5], a

Call_000_168a:
jr_000_168a:
    call Call_000_19c5
    call Call_000_03fe
    ret


Call_000_1691:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5091
    call Call_000_078e
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $5fe0
    call Call_000_078e
    jr jr_000_168a

Call_000_16ad:
    ld a, $07
    ldh [rWX], a
    ld a, $47
    ldh [rWY], a
    call Call_000_043b

Call_000_16b8:
    ret


Call_000_16b9:
    xor a
    ld [$c1a2], a

Jump_000_16bd:
    call Call_000_0443
    ret


Call_000_16c1:
jr_000_16c1:
    call Call_000_1886
    ld [$c660], a
    cp $5f
    jp z, Jump_000_10e4

    call Call_000_16d1
    jr jr_000_16c1

Call_000_16d1:
    cp $1d

Jump_000_16d3:
    jp z, Jump_000_1861

    cp $50
    jp z, Jump_000_11ab

    cp $51
    jp z, Jump_000_11d5

    cp $52
    jp z, Jump_000_1199

    cp $53
    jp z, Jump_000_11a2

    cp $55
    jp z, Jump_000_16f2

    jp Jump_000_16fb


Jump_000_16f2:
    ld a, [$c88f]
    or $80
    ld [$c88f], a
    ret


Jump_000_16fb:
    ld a, [$c660]
    cp $d0

Jump_000_1700:
    jr nc, jr_000_170a

    ld e, a
    ld d, $00
    ld hl, $173f
    add hl, de
    ld a, [hl]

jr_000_170a:
    ld [$c666], a
    ld a, [$c88f]
    and $02
    jp z, Jump_000_17ae

    ld a, [$c668]
    ld [$c195], a
    ld a, [$c669]
    ld [$c196], a
    call Call_000_15ab
    ld a, $01
    ld [$c664], a
    ld [$c665], a
    ld hl, $c664
    call Call_000_178f
    ld a, [$c668]
    inc a
    ld [$c668], a
    and $e0
    ret z

    jp Jump_000_1861


    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c

Jump_000_1748:
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc

Jump_000_1750:
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $7f7f

    ld a, a
    ld a, a
    ld a, a
    ld a, a
    and c
    and h
    and l
    set 1, h
    call $8ad5
    adc e
    adc $cf
    ld a, a
    cp $a3
    ld a, a

Call_000_176e:
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    pop de
    db $d3
    call nc, $d0d6
    jp nc, $d9d8

    jp c, $7fd7

    ld a, a
    ld a, a
    ld a, a
    ld a, a

Jump_000_178e:
    ld a, a

Call_000_178f:
    ld a, [$c88f]
    bit 6, a
    jr nz, jr_000_179a

    call Call_000_01d8
    ret


jr_000_179a:
    ld a, [$c88f]
    bit 7, a
    jr z, jr_000_17a5

    ld a, $06
    jr jr_000_17a7

jr_000_17a5:
    ld a, $07

jr_000_17a7:
    ld [$c667], a
    call Call_000_02a5
    ret


Jump_000_17ae:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_17d4

    call Call_000_0456
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_17d4

    ld a, $ff
    ld [$c890], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5091

Call_000_17ce:
    call Call_000_078e
    call Call_000_168a

jr_000_17d4:
    ld a, [$c65e]
    inc a
    ld b, a
    ld a, [$c662]
    add b
    ld [$c195], a
    ld a, [$c65f]
    inc a
    ld b, a
    ld a, [$c663]
    add b
    ld [$c196], a
    call Call_000_15ab
    ld a, $01
    ld [$c664], a
    ld [$c665], a
    ld hl, $c664
    call Call_000_178f
    ld a, [$c5df]
    cp $ff
    jr z, jr_000_180b

Call_000_1804:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_1828

jr_000_180b:
    call Call_000_03d3
    ld a, $03

jr_000_1810:
    push af
    push af
    ld a, $03
    call Call_000_0781
    pop af

Jump_000_1818:
    call $5091
    call Call_000_078e
    call Call_000_19c5
    call Call_000_03fe
    pop af
    dec a
    jr nz, jr_000_1810

jr_000_1828:
    ld a, [$c663]
    ld e, a
    ld d, $00
    ld hl, $1075
    add hl, de
    ld a, [hl]
    ld b, a
    ld a, [$c662]
    add b
    ld e, a
    ld d, $00

Call_000_183b:
    ld a, [$c666]
    ld hl, $c66e
    add hl, de
    ld [hl], a
    ld a, [$c662]
    inc a
    ld [$c662], a
    ld b, a
    ld a, [$c66c]
    cp b
    ret nz

Jump_000_1850:
    ld a, [$c894]
    cp $00
    jr nz, jr_000_185b

    call Call_000_1861
    ret


jr_000_185b:
    ld a, $11
    ld [$c662], a
    ret


Call_000_1861:
Jump_000_1861:
    ld a, [$c88f]
    and $02
    jp nz, Jump_000_1573

    ld a, [$c663]
    inc a
    ld [$c663], a
    ld b, a
    ld a, [$c66d]
    cp b
    jr nz, jr_000_1881

    call Call_000_158e
    ld a, [$c663]
    dec a
    ld [$c663], a

Jump_000_1881:
jr_000_1881:
    xor a
    ld [$c662], a
    ret


Call_000_1886:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld [$c8ec], a
    ld a, l
    ld [$c19a], a
    ld a, h
    ld [$c19b], a
    ld a, [$c8ec]
    ret


Jump_000_189e:
    ld a, [$c599]
    ld l, a
    ld h, $00

Jump_000_18a4:
    ld bc, $19a3
    add hl, bc
    ld a, [hl]
    call Call_000_0781
    call Call_000_18cd
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6398
    call Call_000_078e

Jump_000_18bf:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7469
    call Call_000_078e
    ret


Call_000_18cd:
    ld a, [$c599]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $19a5
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c521]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc

Call_000_18e3:
    ld a, [hl+]
    ld [$c8ad], a

Call_000_18e7:
    ld a, [hl]
    ld [$c8ae], a

Jump_000_18eb:
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d
    ld a, [$c8ad]
    ld c, a
    ld a, [$c8ae]
    ld b, a
    ldh a, [$ff9e]

Call_000_18ff:
Jump_000_18ff:
    ld l, a

Jump_000_1900:
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_000_193f

    ld a, $00
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
    jr nz, jr_000_192f

    ld a, $6f
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


jr_000_192f:
    ld a, $a7
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c6
    add hl, bc
    ld [hl], a

Call_000_193e:
    ret


jr_000_193f:
    ld hl, $c8ad
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld [$c5c4], a
    ld a, [hl+]
    ld [$c5c5], a
    ld a, [hl]
    ld [$c5c6], a
    ld [$c5c2], a
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6cb2
    call Call_000_078e
    ld a, [$c523]
    and $01
    jr z, jr_000_1993

    call Call_000_0e82
    ld a, [$c523]
    bit 7, a
    jr z, jr_000_1993

    ld a, [$c599]
    cp $00
    jr nz, jr_000_1988

    ld a, $01
    call Call_000_0781
    call $6c93
    jp Jump_000_078e


jr_000_1988:
    ld a, $03
    call Call_000_0781
    call $6159
    jp Jump_000_078e


jr_000_1993:
    call Call_000_0f5d
    jp Jump_000_18eb


Jump_000_1999:
    call Call_000_078e
    pop bc
    call Call_000_0f5d
    jp Jump_000_18eb


    dec b
    dec b
    nop
    ld b, b
    pop de
    ld c, b
    ld bc, $0402
    ld [$2010], sp
    ld b, b
    add b
    push hl
    push bc
    push de
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $608f
    call Call_000_078e
    pop de
    pop bc
    pop hl
    ret


Call_000_19c5:
    push hl
    push bc
    push de
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7446
    call Call_000_078e
    pop de
    pop bc
    pop hl
    ret


Call_000_19d9:
    push hl
    push bc
    push de
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $608f

Jump_000_19e6:
    call Call_000_078e
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7446
    call Call_000_078e
    pop de
    pop bc
    pop hl
    ret


Call_000_19fa:
    cp $ff
    ret z

    push hl
    push bc

Call_000_19ff:
Jump_000_19ff:
    push de

Jump_000_1a00:
    push af

Jump_000_1a01:
    ld a, $02
    call Call_000_0781
    pop af
    call $5f3f
    call Call_000_078e
    pop de
    pop bc
    pop hl
    ret


Call_000_1a11:
Jump_000_1a11:
    cp $ff
    ret z

    push hl
    push bc
    push de
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $5f4f
    call Call_000_078e
    pop de
    pop bc
    pop hl
    ret


Call_000_1a28:
    cp $ff
    ret z

    push hl
    push bc
    push de
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $5f69
    call Call_000_078e
    pop de
    pop bc
    pop hl
    ret


Call_000_1a3f:
    push af
    call Call_000_1a48
    pop af
    call Call_000_1a83
    ret


Call_000_1a48:
    push hl
    push bc
    push de
    push af
    ld a, [$c599]
    ld l, a
    ld h, $00
    ld bc, $1b5b
    add hl, bc
    ld a, [hl]
    call Call_000_0781
    ld a, [$c599]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $1b5d
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld d, $40
    ld hl, $dbc0

jr_000_1a76:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1a76

    call Call_000_078e
    pop de
    pop bc
    pop hl
    ret


Call_000_1a83:
    push hl
    push bc
    push de
    push af
    ld a, [$c599]
    ld l, a
    ld h, $00
    ld bc, $1b61
    add hl, bc
    ld a, [hl]
    call Call_000_0781
    ld a, [$c599]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $1b63
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld d, $40
    ld hl, $dc00

jr_000_1ab1:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1ab1

    call Call_000_078e
    pop de
    pop bc
    pop hl
    ret


    push de
    push af
    ld a, $0a
    call Call_000_0781
    pop af
    sla a
    ld c, a
    ld b, $00
    ld hl, $4000
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld d, $40
    ld hl, $db40

jr_000_1ad8:
    ld a, [bc]

Call_000_1ad9:
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1ad8

    call Call_000_078e
    call Call_000_074b
    pop de
    ret


Call_000_1ae6:
    push de
    push af
    ld hl, $4210
    ld a, $0a
    jr jr_000_1af6

    push de
    push af
    ld hl, $4000
    ld a, $0a

jr_000_1af6:
    call Call_000_0781
    pop af
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]

Call_000_1b03:
    ld b, a
    ld d, $40
    ld hl, $dbc0

jr_000_1b09:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1b09

    call Call_000_078e
    pop de
    ret


Call_000_1b14:
    push de
    push af
    ld a, $0a
    call Call_000_0781
    pop af
    sla a

Jump_000_1b1e:
    ld c, a
    ld b, $00
    ld hl, $4000
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld d, $40
    ld hl, $dc00

jr_000_1b2e:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1b2e

    call Call_000_078e
    pop de
    ret


Call_000_1b39:
    push af
    call Call_000_1ae6
    ld a, $09
    call Call_000_0781
    ld hl, $401d
    pop af
    sla a
    ld c, a
    xor a
    ld b, a
    add hl, bc
    ld c, l
    ld b, h
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    call Call_000_05ce
    call Call_000_078e
    ret


    ld a, [bc]
    dec bc
    sbc $43
    nop
    ld b, b
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld e, d
    sbc b
    ld d, e

Call_000_1b67:
    push de
    push bc
    push af

Call_000_1b6a:
    ld bc, $4613
    ld a, $09
    call Call_000_0781
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, c
    ld h, b
    call Call_000_050c
    call Call_000_078e
    pop bc
    pop de
    ret


Call_000_1b87:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6c6d
    call Call_000_078e
    ld a, [$c8b3]
    cp $ff
    jr nz, jr_000_1ba9

    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6cd5
    call Call_000_078e
    ret


jr_000_1ba9:
    ld a, $06
    call Call_000_0781
    jp $400c


Jump_000_1bb1:
    call Call_000_1119
    jp Jump_000_078e


Jump_000_1bb7:
    call Call_000_078e
    pop bc
    call Call_000_1119
    jp Jump_000_078e


Call_000_1bc1:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_1bd0

    ld a, $06
    call Call_000_0781
    jp $4038


jr_000_1bd0:
    ld a, [$c8c5]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $3afe
    add hl, bc
    ld a, [hl-]
    call Call_000_0781
    jp Jump_000_3aea


Call_000_1be4:
    ld a, [$c8a5]
    ld l, a
    ld a, [$c8a6]
    ld h, a
    ld a, [hl+]
    ld [$c8a7], a

Jump_000_1bf0:
jr_000_1bf0:
    ld a, l
    ld [$c8a5], a
    ld a, h
    ld [$c8a6], a
    ld a, [$c8a7]
    ret


Call_000_1bfc:
    ld a, [$c8a5]
    ld l, a

Call_000_1c00:
    ld a, [$c8a6]

Jump_000_1c03:
    ld h, a
    ld a, [hl+]
    ld [$c8a7], a
    ld a, [hl+]
    ld [$c8a8], a
    jr jr_000_1bf0

Call_000_1c0e:
    ld a, [$c8a5]
    ld l, a
    ld a, [$c8a6]
    ld h, a
    ld a, [hl+]
    ld [$c8a7], a
    ld a, [hl+]
    ld [$c8a8], a

Jump_000_1c1e:
    ld a, [hl+]
    ld [$c8a9], a
    jr jr_000_1bf0

Call_000_1c24:
    ld a, [$c8a5]
    ld l, a
    ld a, [$c8a6]
    ld h, a
    ld a, [hl+]
    ld [$c8a7], a
    ld a, [hl+]
    ld [$c8a8], a
    ld a, [hl+]
    ld [$c8a9], a
    ld a, [hl+]
    ld [$c8aa], a
    jr jr_000_1bf0

    ret


    ld a, $3c
    call Call_000_0753
    ret


Jump_000_1c45:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $63e6
    call Call_000_078e
    call Call_000_3923
    ret


Jump_000_1c56:
    call Call_000_1be4

Call_000_1c59:
Jump_000_1c59:
    call Call_000_1071
    call Call_000_0f72
    ret


    call Call_000_1be4

Call_000_1c63:
    call Call_000_1072
    call Call_000_0fb7
    ret


    call Call_000_1be4

Call_000_1c6d:
    call Call_000_1073
    call Call_000_0ff9
    ret


    call Call_000_1be4

Call_000_1c77:
Jump_000_1c77:
    call Call_000_103a
    ret


Jump_000_1c7b:
    call Call_000_1bfc
    ld a, [$c523]
    and $01
    jr nz, jr_000_1c91

    ret


Jump_000_1c86:
    call Call_000_1bfc
    ld a, [$c523]
    and $01
    jr z, jr_000_1c91

    ret


Jump_000_1c91:
jr_000_1c91:
    ld a, [$c8a7]
    ld [$c8a5], a
    ld a, [$c8a8]
    ld [$c8a6], a
    ret


Call_000_1c9e:
Jump_000_1c9e:
    ld a, [$c523]
    set 0, a
    ld [$c523], a
    ret


Call_000_1ca7:
Jump_000_1ca7:
    ld a, [$c523]
    res 0, a
    ld [$c523], a
    ret


Call_000_1cb0:
    xor a
    ldh [$ffa0], a
    ldh [$ffa1], a
    ret


Call_000_1cb6:
    ld a, $10
    ldh [$ffa0], a
    xor a
    ldh [$ffa1], a
    ret


    call Call_000_1bfc
    ld a, [$c8a5]
    call Call_000_0799
    ld a, [$c8a6]
    call Call_000_0799
    xor a
    ld [$c598], a
    jp Jump_000_1c91


    call Call_000_1c0e
    ld a, [$c8a5]
    call Call_000_0799
    ld a, [$c8a6]
    call Call_000_0799

Jump_000_1ce3:
    ld a, [$c8a9]
    ld [$c598], a
    call Call_000_0781
    jp Jump_000_1c91


    ld a, [$c598]
    cp $00
    jr z, jr_000_1cf9

    call Call_000_078e

jr_000_1cf9:
    call Call_000_07a5

Jump_000_1cfc:
    ld [$c8a6], a
    call Call_000_07a5

Jump_000_1d02:
    ld [$c8a5], a
    ret


    call Call_000_1bfc
    jp Jump_000_1c91


    call Call_000_1c0e
    ld a, [$c8a9]
    ldh [$ff8e], a
    ld [$2000], a
    jp Jump_000_1c91


Call_000_1d1a:
Jump_000_1d1a:
    call Call_000_1ca7
    push hl
    push de

Call_000_1d1f:
    push bc
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call Call_000_1d7c
    ld bc, $19a9
    add hl, bc
    ld a, [hl]
    and d
    jr z, jr_000_1d40

    call Call_000_1c9e

jr_000_1d40:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    pop bc
    pop de
    pop hl
    ld a, [$c523]
    and $01
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d83
    call Call_000_078e
    jr jr_000_1d76

    call Call_000_1be4
    call Call_000_1dac
    jp Jump_000_1c7b


Call_000_1d73:
    call Call_000_1be4

jr_000_1d76:
    call Call_000_1dac
    jp Jump_000_1c86


Call_000_1d7c:
    push bc
    ld a, [$c8a7]
    push af
    srl a
    srl a
    srl a
    ld c, a
    ld b, $00
    ld a, c
    ldh [$ff9e], a
    ld a, b
    ldh [$ff9f], a
    ld a, [$c861]
    ld l, a
    ld a, [$c862]
    ld h, a
    add hl, bc
    ld d, [hl]
    pop af
    and $07
    ld l, a
    ld h, $00
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    ld a, d
    pop bc
    ret


    call Call_000_1be4

Call_000_1dac:
    call Call_000_1e6f
    jp Jump_000_1d1a


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d83
    call Call_000_078e
    jr jr_000_1dda

    call Call_000_1be4
    push af
    ld a, [$c599]
    cp $00
    jr nz, jr_000_1dd9

    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $60e4
    call Call_000_078e

jr_000_1dd9:
    pop af

Call_000_1dda:
Jump_000_1dda:
jr_000_1dda:
    call Call_000_1e6f
    ld bc, $19a9

Jump_000_1de0:
    push hl
    push de
    push bc
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call Call_000_1d7c
    add hl, bc
    ld a, [hl]
    or d
    ld d, a
    ld a, [$c861]

Call_000_1dff:
Jump_000_1dff:
    ld c, a

Call_000_1e00:
    ld a, [$c862]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, d
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    pop bc
    pop de
    pop hl
    ret


    call Call_000_1be4

Call_000_1e26:
Jump_000_1e26:
    call Call_000_1e6f
    ld bc, $384b

Jump_000_1e2c:
jr_000_1e2c:
    push hl
    push de
    push bc
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call Call_000_1d7c
    add hl, bc
    ld a, [hl]
    and d
    ld d, a
    ld a, [$c861]

Call_000_1e4b:
    ld c, a
    ld a, [$c862]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, d
    ld [hl], a
    pop hl
    push af

Call_000_1e5b:
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_000_1e6f:
    ld [$c8a7], a
    ld bc, $c450
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a

Jump_000_1e7d:
    ret


    call Call_000_1be4

Call_000_1e81:
    call Call_000_1e9f
    call Call_000_1d1a
    ret


    call Call_000_1be4

Call_000_1e8b:
    call Call_000_1e9f
    ld bc, $19a9
    jp Jump_000_1de0


    call Call_000_1be4

Call_000_1e97:
    call Call_000_1e9f
    ld bc, $384b
    jr jr_000_1e2c

Call_000_1e9f:
    ld [$c8a7], a
    ld bc, $c4c1
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a
    ret


    call Call_000_1be4
    jr jr_000_1eb6

    ld a, [$c8c6]

Call_000_1eb6:
jr_000_1eb6:
    call Call_000_1edd
    call Call_000_1d1a
    ret


Call_000_1ebd:
    call Call_000_1be4
    jr jr_000_1ec5

    ld a, [$c8c6]

Call_000_1ec5:
jr_000_1ec5:
    call Call_000_1edd
    ld bc, $19a9
    jp Jump_000_1de0


    call Call_000_1be4
    ld a, [$c8c6]

Call_000_1ed4:
    call Call_000_1edd
    ld bc, $384b
    jp Jump_000_1e2c


Call_000_1edd:
    ld [$c8a7], a
    ld bc, $c4e9
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a
    ret


    ld a, [$c8c6]
    jr jr_000_1ef4

    call Call_000_1be4

Call_000_1ef4:
jr_000_1ef4:
    call Call_000_1f22

Call_000_1ef7:
    call Call_000_1d1a
    ret


    call Call_000_1be4
    jr jr_000_1f08

Call_000_1f00:
    ld a, [$c8c6]

Call_000_1f03:
Jump_000_1f03:
    jr jr_000_1f08

Jump_000_1f05:
    call Call_000_1be4

Call_000_1f08:
jr_000_1f08:
    call Call_000_1f22
    ld bc, $19a9
    jp Jump_000_1de0


    ld a, [$c8c6]
    jr jr_000_1f19

    call Call_000_1be4

Call_000_1f19:
jr_000_1f19:
    call Call_000_1f22
    ld bc, $384b

Call_000_1f1f:
    jp Jump_000_1e2c


Call_000_1f22:
    ld [$c8a7], a
    ld bc, $c4f9
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a

Call_000_1f30:
    ret


    call Call_000_1f4a
    jp Jump_000_1c7b


    call Call_000_1f4a
    jp Jump_000_1c86


    call Call_000_1be4

Call_000_1f40:
    ld l, a
    ld h, $00
    ld bc, $c509
    add hl, bc
    ld a, [hl]
    jr jr_000_1f58

Call_000_1f4a:
    call Call_000_1ca7
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]

jr_000_1f58:
    bit 0, a
    ret z

    jp Jump_000_1c9e


Call_000_1f5e:
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $01
    ld [hl], a
    ret


Call_000_1f6d:
    ldh a, [$ffa0]
    cp $00
    jr z, jr_000_1f81

    ld a, [$c8d5]
    cp $03
    jr nz, jr_000_1f81

    ld a, [$c8d6]
    cp $01
    jr z, jr_000_1f8a

jr_000_1f81:
    ld a, [$c8c7]
    and $fe
    ld [$c8c7], a
    ret


jr_000_1f8a:
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fe
    ld [hl], a
    ret


    call Call_000_1ca7
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $02
    ret z

    call Call_000_1c9e
    ret


Call_000_1fae:
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $02
    ld [hl], a
    ret


    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fd
    ld [hl], a
    ret


    call Call_000_1fd8
    jp Jump_000_1c7b


    call Call_000_1fd8
    jp Jump_000_1c86


Call_000_1fd8:
    call Call_000_1ca7
    ld bc, $c8c7
    ldh a, [$ffa0]

Jump_000_1fe0:
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $04
    ret z

    call Call_000_1c9e
    ret


Call_000_1fed:
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]

Jump_000_1ff8:
    or $04
    ld [hl], a

Call_000_1ffb:
    ret


Call_000_1ffc:
Jump_000_1ffc:
    ld bc, $c8c7

Jump_000_1fff:
    ldh a, [$ffa0]
    ld l, a

Jump_000_2002:
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fb
    ld [hl], a
    ret


    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1e81
    ld a, [$c523]
    and $01
    jr nz, jr_000_203d

    ld a, [$c599]

Call_000_2023:
    cp $00
    jr nz, jr_000_2030

    ld a, $63
    call Call_000_1c6d
    pop bc
    jp Jump_000_1bb1


jr_000_2030:
    ld a, $d1
    call Call_000_1c59
    pop bc
    jp Jump_000_1bb1


    call Call_000_388b
    ret


Jump_000_203d:
jr_000_203d:
    ld a, [$c599]

Call_000_2040:
    cp $00
    jr nz, jr_000_209a

    push af
    ld a, $02
    call Call_000_0781

Call_000_204a:
    pop af

Call_000_204b:
    call $6118
    call Call_000_078e

Call_000_2051:
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $23
    jr nz, jr_000_2067

    ld a, $bb
    call Call_000_1e26
    jr jr_000_2070

jr_000_2067:
    cp $28
    jr nz, jr_000_2070

    ld a, $bb

Jump_000_206d:
    call Call_000_1dda

jr_000_2070:
    ld a, $a9
    call Call_000_1dac

Jump_000_2075:
    ld a, [$c523]
    and $01

Jump_000_207a:
    jr z, jr_000_2095

    ld a, [$c521]
    cp $26
    jr z, jr_000_2089

Jump_000_2083:
    cp $27
    jr z, jr_000_2090

Jump_000_2087:
    jr jr_000_2095

jr_000_2089:
    ld a, $81
    call Call_000_1dda
    jr jr_000_2095

jr_000_2090:
    ld a, $a0
    call Call_000_1dda

jr_000_2095:
    ld a, $a9
    call Call_000_1e26

jr_000_209a:
    call Call_000_388b
    push af

Jump_000_209e:
    ld a, $02
    call Call_000_0781
    pop af
    call $6571
    call Call_000_078e
    ld a, [$c524]
    cp $01
    jr nz, jr_000_20b9

    ld a, $02
    ld [$c524], a

Call_000_20b6:
    call Call_000_3923

jr_000_20b9:
    ld a, [$c521]
    ld [$c536], a
    ld a, [$c599]
    cp $00
    jr nz, jr_000_20cb

    call Call_000_1be4
    jr jr_000_20ce

jr_000_20cb:
    call Call_000_1bfc

jr_000_20ce:
    ld a, [$c521]
    ld d, a
    ld a, [$c8a7]
    cp d
    jr nz, jr_000_20db

    ld a, [$c8a8]

Call_000_20db:
Jump_000_20db:
jr_000_20db:
    ld [$c521], a
    call Call_000_39c8
    ld a, [$c599]
    cp $00
    jr nz, jr_000_211e

    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6578
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $65b9

Call_000_20ff:
Jump_000_20ff:
    call Call_000_078e
    push af

Call_000_2103:
    ld a, $01
    call Call_000_0781

Jump_000_2108:
    pop af

Jump_000_2109:
    call $4b6f
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4219
    call Call_000_078e
    jr jr_000_2152

jr_000_211e:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4c6c
    call Call_000_078e
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $41ee
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4b6f
    call Call_000_078e
    push af

Jump_000_2146:
    ld a, $03

Jump_000_2148:
    call Call_000_0781
    pop af
    call $453b
    call Call_000_078e

jr_000_2152:
    call Call_000_0bab
    call Call_000_0ed5
    push af
    ld a, $03
    call Call_000_0781

Call_000_215e:
    pop af
    call $6d65
    call Call_000_078e
    ld a, [$c521]
    cp $62
    jr c, jr_000_2172

    ld a, [$c5e4]
    inc a
    jr jr_000_2173

jr_000_2172:
    xor a

jr_000_2173:
    ld [$c5e4], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5827
    call Call_000_078e

Call_000_2183:
    ret


    push af
    ld a, $00

Call_000_2187:
    call Call_000_0781
    pop af
    call Call_000_21a1
    call Call_000_078e
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d68
    call Call_000_078e
    jp Jump_000_20db


Call_000_21a1:
    call Call_000_388b
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6571
    call Call_000_078e
    ld a, [$c524]
    cp $01
    jr nz, jr_000_21c0

    ld a, $02
    ld [$c524], a
    call Call_000_3923

jr_000_21c0:
    ld a, [$c521]
    ld [$c536], a
    ret


    call Call_000_1be4

Call_000_21ca:
    ld [$c521], a
    call Call_000_39c8
    ld a, [$c599]

Jump_000_21d3:
    cp $00
    jr nz, jr_000_2200

    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $65b9
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4b6f
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4219
    call Call_000_078e
    jr jr_000_2227

Jump_000_2200:
jr_000_2200:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $41ee
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4b6f
    call Call_000_078e
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $453b
    call Call_000_078e

jr_000_2227:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4219
    call Call_000_078e
    call Call_000_0bab
    call Call_000_0ed5
    ret


    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1e8b
    call Call_000_1fed
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_383a
    jp Jump_000_226c


    call Call_000_1be4
    call Call_000_1e8b

Jump_000_2263:
    call Call_000_1fed

Call_000_2266:
Jump_000_2266:
    ld a, [$c8a7]
    call Call_000_383a

Call_000_226c:
Jump_000_226c:
jr_000_226c:
    call Call_000_39c8
    ld a, [$c599]
    cp $00
    jr nz, jr_000_2291

    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $65b9
    call Call_000_078e
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6991
    call Call_000_078e
    ret


jr_000_2291:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $41ee

Jump_000_229b:
    call Call_000_078e
    call Call_000_0bfd
    ret


Jump_000_22a2:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d56
    call Call_000_078e
    jr jr_000_22b4

    call Call_000_1be4

Call_000_22b4:
jr_000_22b4:
    call Call_000_1e8b
    ld a, [$c8a7]
    jr jr_000_226c

Call_000_22bc:
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1e97
    call Call_000_1ffc
    ld bc, $c8c6
    ldh a, [$ffa0]

Jump_000_22d2:
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc

Call_000_22d7:
    ld a, [hl]
    call Call_000_383a
    jp Jump_000_226c


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d56
    call Call_000_078e
    jp Jump_000_2311


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d71
    call Call_000_078e
    call Call_000_2311
    push af

Jump_000_22ff:
    ld a, $03
    call Call_000_0781
    pop af
    call $4d7a
    call Call_000_078e
    jp Jump_000_2311


    call Call_000_1be4

Call_000_2311:
Jump_000_2311:
    call Call_000_1e97
    call Call_000_383a
    jp Jump_000_226c


    call Call_000_2326
    jp Jump_000_1c7b


    call Call_000_2326
    jp Jump_000_1c86


Call_000_2326:
    call Call_000_1ca7
    call Call_000_1be4
    ld a, [$c8a7]
    ld b, a

Call_000_2330:
    ld a, [$c521]
    cp b
    ret nz

    call Call_000_1c9e
    ret


    call Call_000_1be4
    ld [$c521], a
    ret


    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5833
    call Call_000_078e
    call Call_000_1bfc
    ld a, [$c8a7]
    ld [$c8c5], a
    ld a, [$c8a8]
    ld [$c8c6], a
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5666

Jump_000_2366:
    call Call_000_078e
    xor a
    ldh [$ffa0], a
    ret


    ldh a, [$ffa0]
    push af
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5833
    call Call_000_078e

Call_000_237d:
    call Call_000_1bfc
    ld a, [$c8a7]
    ld [$c8d5], a
    ld a, [$c8a8]
    ld [$c8d6], a
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5666
    call Call_000_078e
    pop af
    ldh [$ffa0], a
    ret


    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5833
    call Call_000_078e
    ld e, $10
    ld hl, $c8d4
    ld bc, $c8e4

jr_000_23b2:
    ld a, [hl]
    ld d, a
    ld a, [bc]
    ld [hl-], a
    ld a, d
    ld [bc], a
    dec bc
    dec e
    jr nz, jr_000_23b2

    ret


Call_000_23bd:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4b6f
    call Call_000_078e
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $453b
    call Call_000_078e
    call Call_000_03d3
    ret


Call_000_23db:
    call Call_000_23df
    ret


Call_000_23df:
    ld a, [$c8b0]
    cp $02
    jr nz, jr_000_240f

    ld a, [$c524]
    cp $01
    jr nz, jr_000_240f

    ld bc, $c8c9
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c524], a
    ld bc, $c8ca
    ldh a, [$ffa0]

Call_000_2400:
    ld l, a
    ldh a, [$ffa1]

Call_000_2403:
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c526], a
    call Call_000_3479
    call Call_000_24ba

jr_000_240f:
    call Call_000_1f5e
    ld a, [$c599]
    cp $00
    jr z, jr_000_2423

    call Call_000_325d
    ld a, [$c523]
    and $01
    jr nz, jr_000_245a

Jump_000_2423:
jr_000_2423:
    call Call_000_340f
    ld bc, $c8d2
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b

Jump_000_2439:
    ld bc, $c468
    add hl, bc
    ld [hl], a
    call Call_000_2bbb
    call Call_000_33d9
    ld a, [$c525]
    ld [$c865], a

Jump_000_244a:
    call Call_000_3389
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $697b
    call Call_000_078e

jr_000_245a:
    ld a, [$c8b0]
    cp $02
    jr z, jr_000_2472

    ld a, [$c5c2]
    call Call_000_2769

Jump_000_2467:
    call Call_000_27b6
    ld a, [$c529]
    inc a
    ld [$c528], a
    ret


jr_000_2472:
    ld a, [$c5e5]
    cp $01
    ret z

    ld a, $3c
    call Call_000_0753
    ld a, $01
    ld [$c524], a
    call Call_000_3923
    ret


Call_000_2486:
    call Call_000_1ec5
    jr jr_000_248e

    call Call_000_1ebd

jr_000_248e:
    call Call_000_340f
    ld a, [$c8a7]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c468
    add hl, bc
    ld [hl], a
    ld a, [$c525]
    ld [$c865], a
    call Call_000_3389

Jump_000_24aa:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $697b
    call Call_000_078e
    jp Jump_000_2467


Call_000_24ba:
    ld a, [$c528]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $c52a
    add hl, bc
    ld a, [hl+]
    cp $02
    ret nz

    ld a, [hl]
    sla a
    sla a
    sla a
    ld l, a
    ld h, $00
    ld a, [$c599]
    cp $00
    jr nz, jr_000_24ed

    ld bc, $c53b
    add hl, bc
    ld bc, $c470
    ld e, $00

jr_000_24e3:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $07
    jr c, jr_000_24e3

    ret


jr_000_24ed:
    ld bc, $c53c
    add hl, bc
    ld bc, $c470
    ld e, $00

jr_000_24f6:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $06
    jr c, jr_000_24f6

Jump_000_24ff:
    ret


Call_000_2500:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_2525

    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_000_2525

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr z, jr_000_2549

jr_000_2525:
    ld a, [$c529]
    cp $ff
    jr z, jr_000_2549

    cp $03
    jr c, jr_000_2549

    ld a, [$c599]
    cp $00
    jr nz, jr_000_2540

    ld a, $71
    call Call_000_1c6d
    call Call_000_1ffc
    ret


jr_000_2540:
    ld a, $9d
    call Call_000_1c63
    call Call_000_1ffc
    ret


jr_000_2549:
    push af

Call_000_254a:
    ld a, $02
    call Call_000_0781
    pop af
    call $653c
    call Call_000_078e
    call Call_000_1fed
    ld a, [$c529]
    inc a
    ld [$c529], a
    ld [$c528], a
    call Call_000_3297
    call Call_000_3288
    call Call_000_32f4

Call_000_256c:
    ld a, $01
    ld [$c865], a
    call Call_000_3389
    ret


    call Call_000_1bfc

Call_000_2578:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $504e
    call Call_000_078e
    ret


Call_000_2586:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6507
    call Call_000_078e
    ld a, [$c529]
    dec a
    ld [$c529], a
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_000_25a4:
    ld bc, $c52a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_000_25d8

    ld bc, $c52b
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
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
    cp d
    jr z, jr_000_25e8

jr_000_25d8:
    ldh a, [$ff9e]
    ld c, a
    ldh a, [$ff9f]
    ld b, a
    inc bc
    inc bc
    ld a, c
    ldh [$ff9e], a
    ld a, b
    ldh [$ff9f], a
    jr jr_000_25a4

jr_000_25e8:
    ldh a, [$ff9e]
    ld [$c5c3], a

jr_000_25ed:
    ld bc, $c52c
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a

Jump_000_25ff:
    ld a, b
    ld bc, $c52a

Jump_000_2603:
    add hl, bc
    ld [hl], a
    ld bc, $c52d
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a

Jump_000_2611:
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c52b
    add hl, bc
    ld [hl], a
    ldh a, [$ff9e]
    ld c, a
    ldh a, [$ff9f]
    ld b, a
    inc bc
    inc bc
    ld a, c
    ldh [$ff9e], a
    ld a, b
    ldh [$ff9f], a
    ld a, c
    cp $0a
    jr c, jr_000_25ed

    ld a, $ff
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c528
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ld a, [$c524]
    cp $02
    jr nc, jr_000_2692

    cp $00
    jr z, jr_000_2692

Call_000_264b:
    ld a, [$c529]
    cp $ff
    jr z, jr_000_26ba

    ld a, [$c8b0]
    cp $02
    jr z, jr_000_2692

    ld a, [$c528]
    ld c, a
    ld a, [$c5c3]
    srl a
    dec a
    cp $ff
    jr z, jr_000_2669

    cp c
    ret nc

jr_000_2669:
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
    cp $ff
    jr nz, jr_000_26ad

    ld a, [$c528]
    dec a
    ld [$c528], a
    call Call_000_32e0
    call Call_000_3424
    call Call_000_2734
    call Call_000_3923
    ret


jr_000_2692:
    ld a, [$c528]
    ld c, a
    ld a, [$c5c3]
    cp $00
    jr z, jr_000_26a2

    srl a
    dec a
    cp c
    ret nc

jr_000_26a2:
    ld a, [$c528]
    cp $ff
    ret z

    dec a
    ld [$c528], a
    ret


jr_000_26ad:
    call Call_000_32e0
    call Call_000_3424

Call_000_26b3:
    call Call_000_2734
    call Call_000_3923
    ret


jr_000_26ba:
    ld a, $ff
    ld [$c528], a
    ld a, $02
    ld [$c524], a
    call Call_000_3923
    ret


    call Call_000_26cf
    call Call_000_264b
    ret


Call_000_26cf:
    call Call_000_1bfc
    ld a, [$c529]
    dec a
    ld [$c529], a
    ld hl, $c52a

jr_000_26dc:
    ld a, [$c8a7]
    cp [hl]
    jr nz, jr_000_26ec

    ld a, [$c8a8]
    inc hl
    cp [hl]
    jr z, jr_000_26f0

    inc hl
    jr jr_000_26dc

jr_000_26ec:
    inc hl
    inc hl
    jr jr_000_26dc

jr_000_26f0:
    dec hl
    ld c, l
    ld b, h
    inc hl
    inc hl

jr_000_26f5:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, l
    cp $32
    jr nz, jr_000_26f5

    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $ff
    ld [hl+], a

Jump_000_2707:
    ld [hl], a
    ret


    ld hl, $c52a

jr_000_270c:
    push hl
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    pop hl
    cp [hl]
    jr nz, jr_000_2730

    push hl
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    pop hl
    inc hl
    cp [hl]
    jr z, jr_000_26f0

    inc hl
    jr jr_000_270c

jr_000_2730:
    inc hl
    inc hl
    jr jr_000_270c

Call_000_2734:
    ld hl, $c470
    ld a, [$c85b]
    ld [hl+], a
    ld a, [$c85c]
    ld [hl+], a

Call_000_273f:
    ld a, [$c85d]
    ld [hl+], a
    ld a, [$c85e]
    ld [hl+], a
    ld a, [$c85f]
    ld [hl+], a
    ld a, [$c860]
    ld [hl+], a
    ret


Call_000_2750:
    call Call_000_1be4

Call_000_2753:
    call Call_000_2772
    call Call_000_1d1a
    ret


    call Call_000_1be4

Call_000_275d:
    call Call_000_2772
    ld bc, $19a9
    jp Jump_000_1de0


    call Call_000_1be4

Call_000_2769:
    call Call_000_2772
    ld bc, $384b
    jp Jump_000_1e2c


Call_000_2772:
    ld [$c8a7], a
    ld bc, $c438
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a
    ret


Call_000_2781:
    call Call_000_27a7
    call Call_000_1d1a
    ret


Call_000_2788:
    call Call_000_27a7
    ld bc, $19a9
    jp Jump_000_1de0


    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6163
    call Call_000_078e

Call_000_279e:
    call Call_000_27a7
    ld bc, $384b
    jp Jump_000_1e2c


Call_000_27a7:
    ld [$c8a7], a
    ld bc, $c420
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a
    ret


Call_000_27b6:
    call Call_000_39c8
    call Call_000_0ed5
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7446
    call Call_000_078e
    call Call_000_03fe
    ret


    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call Call_000_1be4
    call Call_000_27e6
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_27e6:
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_000_27f0:
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_000_2809

    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    cp $05
    jr c, jr_000_27f0

    ret


jr_000_2809:
    ld a, [$c8a7]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a

Jump_000_2813:
    ld a, b
    ld bc, $c468
    add hl, bc
    ld [hl], a
    ld a, [$c524]
    cp $00
    jr z, jr_000_283b

    push af
    call Call_000_2bbb
    xor a
    ld [$c865], a
    call Call_000_3389
    call Call_000_34e8
    ld a, $3c
    call Call_000_0753
    pop af
    ld [$c524], a
    call Call_000_3923
    ret


jr_000_283b:
    xor a
    ld [$c865], a
    call Call_000_3389
    ret


    ld a, [$c599]
    cp $00
    jr nz, jr_000_28b7

    ld a, $80
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_000_2876

    ld a, [$c8c5]
    cp $03
    jr nz, jr_000_2868

    ld a, [$c8c6]
    cp $08
    jr z, jr_000_2876

    cp $2d
    jr z, jr_000_2876

jr_000_2868:
    call Call_000_1f4a
    ld a, [$c523]
    and $01
    jr nz, jr_000_2876

    pop bc
    jp Jump_000_1bb1


jr_000_2876:
    ld a, $80
    call Call_000_1e26

jr_000_287b:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5f79
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5b1f
    call Call_000_078e
    ld a, $7f
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_000_28ad

    ld a, [$c523]
    and $04
    jr nz, jr_000_287b

    pop bc
    call Call_000_078e
    ret


jr_000_28ad:
    ld a, $7f
    call Call_000_1e26
    pop bc
    call Call_000_078e
    ret


jr_000_28b7:
    ld a, $88
    call Call_000_1dac
    jr nz, jr_000_28e1

    call Call_000_1f4a
    ld a, [$c523]
    and $01
    jr nz, jr_000_28e1

    ld a, [$c8b2]
    cp $02
    jr z, jr_000_28d8

    ld a, $e5
    call Call_000_1c59
    pop bc
    jp Jump_000_1bb1


jr_000_28d8:
    ld a, $9e
    call Call_000_1c63
    pop bc
    jp Jump_000_1bb1


jr_000_28e1:
    ld a, $88
    call Call_000_1e26
    ld a, [$c8b2]
    cp $02
    jr z, jr_000_28f4

    ld a, $a7
    call Call_000_1c63
    jr jr_000_28f9

jr_000_28f4:
    ld a, $15
    call Call_000_1c63

jr_000_28f9:
    push af
    ld a, $01
    call Call_000_0781

Call_000_28ff:
    pop af
    call $5f79
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5b1f
    call Call_000_078e
    ld a, $8f
    call Call_000_1dac
    jr nz, jr_000_2926

    ld a, [$c523]
    and $04
    jr nz, jr_000_28f9

    pop bc

Jump_000_2922:
    call Call_000_078e
    ret


jr_000_2926:
    ld a, $8f
    call Call_000_1e26
    pop bc
    call Call_000_078e
    ret


    ld a, [$c8d5]
    cp $02
    jr nz, jr_000_293b

    call Call_000_1c9e
    ret


jr_000_293b:
    ld a, $05
    call Call_000_0781
    ld a, [$c521]
    ld l, a

Call_000_2944:
    ld h, $00
    add hl, hl
    ld bc, $4000
    add hl, bc

Jump_000_294b:
    ld a, [hl+]
    ld [$c8ad], a
    ld a, [hl]
    ld [$c8ae], a

Jump_000_2953:
    ld a, [$c8ad]

Jump_000_2956:
    ld l, a

Call_000_2957:
    ld a, [$c8ae]
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_000_2996

    ld bc, $0004
    add hl, bc
    ld a, [hl+]
    and $7f
    ld c, a
    ld a, [$c8c5]
    cp c
    jr nz, jr_000_29a2

    ld a, [hl-]

Call_000_2970:
    ld c, a
    ld a, [$c8c6]

Call_000_2974:
    cp c
    jr nz, jr_000_29a2

    call Call_000_0e82
    ld a, [$c523]
    and $80
    jr z, jr_000_29a2

    ld a, [hl+]

Jump_000_2982:
    and $7f
    ld [$c8d5], a
    ld a, [hl+]
    ld [$c8d6], a
    ld a, [hl]
    ld [$c5c2], a
    call Call_000_078e
    call Call_000_1c9e
    ret


Jump_000_2996:
    ld a, $80
    call Call_000_1e26
    call Call_000_078e
    call Call_000_1ca7
    ret


jr_000_29a2:
    call Call_000_0f5d
    jp Jump_000_2953


    ld a, [$c599]
    cp $00
    jr nz, jr_000_29bd

    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6a45
    call Call_000_078e
    ret


jr_000_29bd:
    call Call_000_1be4
    ld [$c5c8], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $50b0
    call Call_000_078e
    ret


Jump_000_29d1:
    ld d, a
    ld a, $00
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6398
    call Call_000_078e
    ld a, [$c8b7]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c53b
    add hl, bc
    ld [hl], a

Jump_000_29f8:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6b11
    call Call_000_078e
    ret


    call Call_000_1be4

Call_000_2a09:
    ld a, [$c53a]
    ld e, a
    ld a, [$c8a7]
    add e
    ld [$c53a], a
    xor a
    ld [$c8b6], a
    ret


    call Call_000_1ca7
    ld a, [$c53a]
    cp $00
    jr z, jr_000_2a43

    dec a
    ld [$c53a], a
    xor a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]

Jump_000_2a31:
    ld [$c865], a
    ld a, [$c8d2]
    push af
    call Call_000_3389
    pop af
    ld [$c8d2], a
    call Call_000_1c9e
    ret


jr_000_2a43:
    ld a, $72
    call Call_000_1c6d
    ret


    call Call_000_1be4
    ld a, [$c53a]
    ld hl, $c8a7
    sub [hl]
    jr c, jr_000_2a92

    ld [$c53a], a
    ld a, [$c521]
    cp $27
    jr z, jr_000_2a6d

    ld a, $81
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_000_2a7e

    jr jr_000_2a79

jr_000_2a6d:
    ld a, $a0
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr nz, jr_000_2a7e

jr_000_2a79:
    ld a, $82
    call Call_000_1dda

jr_000_2a7e:
    xor a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    call Call_000_1c9e
    ret


jr_000_2a92:
    ld a, [$c521]
    cp $26
    jr z, jr_000_2aa1

    cp $27
    jr z, jr_000_2aaa

    call Call_000_1ca7
    ret


jr_000_2aa1:
    ld a, $81
    call Call_000_1dda
    call Call_000_1ca7
    ret


jr_000_2aaa:
    ld a, $a0
    call Call_000_1dda
    call Call_000_1ca7
    ret


    call Call_000_1ca7
    xor a
    ld [$c526], a
    ld a, [$c524]
    cp $00
    jr z, jr_000_2acb

    ld [$c534], a
    xor a
    ld [$c524], a
    call Call_000_3923

jr_000_2acb:
    call Call_000_2bbb
    ld a, $04
    ld [$c8ab], a
    ld a, $b4
    ld [$c8ac], a
    ld a, $0d
    ld [$c8af], a
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $61c4
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6210
    call Call_000_078e
    ld a, [$c884]
    cp $ff
    jr nz, jr_000_2b05

jr_000_2afe:
    call Call_000_2bae
    call Call_000_1c9e
    ret


jr_000_2b05:
    sub $0d
    ld c, a
    ld b, $00
    ld hl, $c468
    add hl, bc
    ld a, [$c599]
    cp $00
    jr nz, jr_000_2b47

    ld a, [hl]
    cp $ff
    jr z, jr_000_2afe

    ld c, $00
    cp $a3
    jr z, jr_000_2b30

    inc c
    cp $a0
    jr z, jr_000_2b30

    inc c
    cp $a1
    jr z, jr_000_2b30

Call_000_2b2a:
    inc c
    cp $a2
    jr z, jr_000_2b30

    inc c

jr_000_2b30:
    ld hl, $2b42
    add hl, bc
    ld c, [hl]
    ld a, [$c521]
    and $01
    jr z, jr_000_2b3d

    inc c

jr_000_2b3d:
    ld a, c
    ld [$c8aa], a
    ret


    ld h, $42

Jump_000_2b44:
    ld b, h
    ld b, [hl]
    ld c, b

jr_000_2b47:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4cb5
    call Call_000_078e
    ret


    call Call_000_1be4
    ld c, a
    ld bc, $c8cb
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp c
    jr z, jr_000_2b6b

    call Call_000_1ca7
    ret


jr_000_2b6b:
    call Call_000_1c9e
    ret


    call Call_000_1ca7
    ld a, [$c521]
    ld hl, $c8aa
    cp [hl]
    jr nz, jr_000_2b7f

    call Call_000_1c9e
    ret


jr_000_2b7f:
    ld a, [$c8aa]
    ld [$c521], a
    ld a, $83
    call Call_000_1dda
    ret


    call Call_000_39c8
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d2e
    call Call_000_078e
    ret


Call_000_2b9c:
    ld a, [$c523]
    or $08
    ld [$c523], a
    ld a, [$c599]
    cp $00
    ret nz

    call Call_000_1be4
    ret


Call_000_2bae:
    ld a, [$c534]
    cp $00
    jr z, jr_000_2bbb

    ld [$c524], a
    call Call_000_3923

Call_000_2bbb:
Jump_000_2bbb:
jr_000_2bbb:
    ld a, [$c523]
    and $f7
    ld [$c523], a
    call Call_000_1103
    ret


Call_000_2bc7:
Jump_000_2bc7:
    ld a, [$c523]
    and $f7

Call_000_2bcc:
    ld [$c523], a
    ret


    call Call_000_1be4
    ld [$c537], a
    ret


    call Call_000_1be4
    ld [$c538], a
    ret


    ld a, [$c8cb]
    ld [$c537], a
    ret


    ld bc, $c8cb
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c537], a
    ret


Jump_000_2bf4:
    ld bc, $c8cb
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]

Call_000_2bff:
    ld [$c538], a
    ret


Jump_000_2c03:
    call Call_000_2c0f

Jump_000_2c06:
    jp Jump_000_1c7b


    call Call_000_2c0f
    jp Jump_000_1c86


Call_000_2c0f:
    call Call_000_1c9e
    call Call_000_1be4
    ld hl, $c8d2
    cp [hl]
    ret z

    call Call_000_1ca7
    ret


    call Call_000_1be4
    call Call_000_2c25
    ret


Call_000_2c25:
jr_000_2c25:
    push af
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7446
    call Call_000_078e
    call Call_000_03fe
    call Call_000_01b7
    pop af
    dec a
    jr nz, jr_000_2c25

    ret


Call_000_2c3e:
    call Call_000_1be4
    ld [$c587], a
    ret


    call Call_000_1bfc

Jump_000_2c48:
    ld [$c587], a
    ld a, [$c8a8]
    ld [$c588], a
    ret


    call Call_000_0ed5
    ret


jr_000_2c56:
    call Call_000_1c24
    ld a, [$c8a7]
    cp $fe
    jr z, jr_000_2c81

    ld d, a
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_000_2c56

    ld a, [$c8a8]
    ld d, a
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_000_2c56

jr_000_2c81:
    ld a, [$c8a9]
    ld [$c8a5], a
    ld a, [$c8aa]
    ld [$c8a6], a
    ret


    ld a, [$c53a]
    dec a
    ld [$c53a], a
    call Call_000_3923
    ret


    ld a, [$c53a]
    cp $00
    jr z, jr_000_2ca4

    call Call_000_1c9e
    ret


jr_000_2ca4:
    call Call_000_1ca7
    ret


    call Call_000_1ca7
    call Call_000_1be4
    ld a, [$c8a7]
    ld c, a
    ld a, [$c53a]
    cp c
    jr z, jr_000_2cba

    jr nc, jr_000_2cbd

jr_000_2cba:
    call Call_000_1c9e

jr_000_2cbd:
    ret


    call Call_000_1ca7
    call Call_000_1be4
    ld hl, $c55b
    cp [hl]
    jr nz, jr_000_2ccd

    call Call_000_1c9e

jr_000_2ccd:
    ret


    call Call_000_1ca7
    ld a, [$c55b]
    cp $00
    jr nz, jr_000_2ce1

    ld a, [$c8c6]
    ld [$c55b], a
    call Call_000_1c9e

jr_000_2ce1:
    ret


    call Call_000_1ca7
    ld a, [$c55b]
    cp $00
    jr z, jr_000_2cf3

    xor a
    ld [$c55b], a
    call Call_000_1c9e

jr_000_2cf3:
    ret


    call Call_000_1ca7
    ld a, [$c55b]
    cp $00
    ret z

    ld a, $01
    ld [$c5e5], a
    ld a, $03
    ld [$c8c5], a
    ld a, [$c55b]
    ld [$c8c6], a
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5666
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6398
    call Call_000_078e
    call Call_000_1f19
    call Call_000_23db
    xor a
    ld [$c5e5], a
    ld a, [$c535]
    ld [$c526], a
    xor a
    ld [$c55b], a
    call Call_000_1c9e
    ret


Call_000_2d3f:
    call Call_000_1be4
    ld hl, $c563
    add [hl]
    ld [hl], a
    ld a, $08
    ld [$c8b6], a
    ld [$c8d2], a
    ret


    call Call_000_2d3f
    ld a, $08
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    ld a, [$c5c2]
    call Call_000_2769
    call Call_000_27b6
    call Call_000_1c9e
    ret


Call_000_2d74:
    ld a, [$c564]
    inc a
    ld [$c564], a
    ld a, $2d
    ld [$c8b6], a
    ld [$c8d2], a
    ret


    call Call_000_2d74
    ld a, $2d
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    ld a, [$c5c2]
    call Call_000_2769
    call Call_000_27b6
    call Call_000_1c9e
    ret


    ld a, [$c563]
    cp $00
    jr z, jr_000_2dce

    dec a
    ld [$c563], a
    ld a, $08
    ld [$c8b6], a
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    call Call_000_1c9e
    ret


jr_000_2dce:
    ld a, $80
    call Call_000_1e26
    ld a, $77
    call Call_000_1c6d
    call Call_000_1ca7
    ret


    ld a, [$c564]
    cp $00
    jr z, jr_000_2e02

    dec a
    ld [$c564], a
    ld a, $2d
    ld [$c8b6], a
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    call Call_000_1c9e
    ret


jr_000_2e02:
    ld a, $80
    call Call_000_1e26
    ld a, $78
    call Call_000_1c6d
    call Call_000_1ca7
    ret


    ld a, [$c55c]
    cp $06
    jr nc, jr_000_2e29

    ld a, [$c563]
    cp $00
    jr z, jr_000_2e25

    ld a, [$c55c]
    inc a
    ld [$c55c], a

jr_000_2e25:
    call Call_000_1c9e
    ret


jr_000_2e29:
    ld a, $80
    call Call_000_1e26

Call_000_2e2e:
    call Call_000_1ca7
    ret


    ld a, [$c55c]
    cp $00
    jr z, jr_000_2e41

    dec a
    ld [$c55c], a
    call Call_000_1c9e
    ret


jr_000_2e41:
    call Call_000_1ca7
    ret


    ld a, [$c55e]
    cp $06
    jr nc, jr_000_2e78

    ld a, [$c564]
    cp $00
    jr z, jr_000_2e6b

    ld a, [$c55e]
    inc a
    ld [$c55e], a
    ld a, $b1
    call Call_000_1dac

Jump_000_2e5f:
    ld a, [$c523]
    and $01
    jr nz, jr_000_2e6f

Jump_000_2e66:
    ld a, $4b
    call Call_000_1ed4

jr_000_2e6b:
    call Call_000_1c9e

Call_000_2e6e:
    ret


jr_000_2e6f:
    ld a, $b1
    call Call_000_1dda
    call Call_000_1c9e
    ret


jr_000_2e78:
    ld a, $80
    call Call_000_1e26
    call Call_000_1ca7
    ret


    call Call_000_1ca7
    ld a, [$c55e]
    cp $00
    jr z, jr_000_2e97

    ld d, a
    ld a, [$c55e]
    dec a
    ld [$c55e], a
    ld a, d
    call Call_000_1c9e

jr_000_2e97:
    ret


    ld a, [$c55d]
    cp $06
    jr nc, jr_000_2eb1

    ld a, [$c563]
    cp $00
    jr z, jr_000_2ead

    ld a, [$c55d]
    inc a
    ld [$c55d], a

jr_000_2ead:
    call Call_000_1c9e
    ret


jr_000_2eb1:
    ld a, $80
    call Call_000_1e26
    call Call_000_1ca7
    ret


    call Call_000_1ca7
    ld a, [$c55d]
    cp $00
    jr z, jr_000_2ed0

    ld d, a
    ld a, [$c55d]
    dec a
    ld [$c55d], a

Call_000_2ecc:
    ld a, d
    call Call_000_1c9e

jr_000_2ed0:
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4f34
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4f80
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4fab
    call Call_000_078e
    ret


Call_000_2efb:
    ret


    call Call_000_1be4
    ld c, a
    ld b, $00
    ld hl, $c57b
    add hl, bc
    xor a
    ld [hl], a
    ret


    call Call_000_1ca7
    call Call_000_0b99

Jump_000_2f0f:
    ldh a, [$ffa2]
    and $03
    ret nz

    call Call_000_1c9e
    ret


Call_000_2f18:
    ld bc, $c8c9
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c524], a
    ld bc, $c8ca
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c526], a

jr_000_2f34:
    call Call_000_3444
    call Call_000_3923
    call Call_000_33c2
    ret


    call Call_000_1be4

Call_000_2f41:
    ld [$c882], a
    call Call_000_3480

Call_000_2f47:
    ld a, [$c534]
    ld [$c524], a
    ld a, [$c535]
    ld [$c526], a
    jr jr_000_2f34

Call_000_2f55:
Jump_000_2f55:
    ld a, [$c523]
    or $40
    ld [$c523], a
    ld a, $0a
    ld [$c8e9], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $526c
    call Call_000_078e
    ld a, $07
    call Call_000_080e
    ld a, $78
    call Call_000_0753
    ld a, $4e
    call Call_000_1c63
    call Call_000_2bbb
    ld a, $3c
    call Call_000_0753
    ret


    call Call_000_39c8
    ld a, $01
    call Call_000_0753
    call Call_000_2f55
    pop bc
    jp Jump_000_1bb1


    call Call_000_39c8
    ld a, $01
    call Call_000_0753
    ld a, [$c523]
    or $40
    ld [$c523], a
    pop bc
    jp Jump_000_1bb1


    push af

Call_000_2fab:
    ld a, $03
    call Call_000_0781
    pop af
    call $4d5f
    call Call_000_078e
    jr jr_000_2fbf

    call Call_000_39c8
    call Call_000_1be4

jr_000_2fbf:
    ld [$c8e9], a
    ld a, [$c599]
    cp $00
    jr nz, jr_000_2fd7

    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6f35

Jump_000_2fd3:
    call Call_000_078e
    ret


jr_000_2fd7:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $526c
    call Call_000_078e
    ret


    call Call_000_1be4
    ld [$c8e9], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $527b

Jump_000_2ff5:
    call Call_000_078e
    ret


Jump_000_2ff9:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_3017

Jump_000_3000:
    call Call_000_39c8
    call Call_000_1be4
    ld [$c8e9], a
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $71ce
    call Call_000_078e
    ret


jr_000_3017:
    push af

Call_000_3018:
    ld a, $03
    call Call_000_0781
    pop af

Call_000_301e:
    call $52ce
    call Call_000_078e
    ret


    call Call_000_1be4
    call Call_000_080e
    ret


    call Call_000_1be4

Call_000_302f:
    call Call_000_2a09

Call_000_3032:
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3480
    call Call_000_3923
    ret


Call_000_303f:
Jump_000_303f:
    ld a, $07
    call Call_000_1eb6
    ld a, [$c523]

Jump_000_3047:
    and $01
    jr z, jr_000_305a

Jump_000_304b:
    ld a, $07
    call Call_000_2f41

Call_000_3050:
    ld a, $07
    call Call_000_1ed4
    ld a, $07
    call Call_000_1f08

jr_000_305a:
    ld a, $54
    call Call_000_1eb6
    ld a, [$c523]
    and $01
    jr z, jr_000_3075

    ld a, $54
    call Call_000_2f41
    ld a, $54
    call Call_000_1ed4
    ld a, $54
    call Call_000_1f08

jr_000_3075:
    call Call_000_2bbb
    xor a
    ld [$c53a], a
    ld [$c8a7], a

Jump_000_307f:
    ld [$c882], a
    call Call_000_3480

Jump_000_3085:
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    ld a, $06
    ld [$c640], a
    ld a, $16
    call Call_000_21ca
    ret


    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6618
    call Call_000_078e
    ret


    ld a, [$c53a]
    cp $02
    jr nc, jr_000_30b2

    call Call_000_1ca7
    ret


jr_000_30b2:
    ld a, $fe
    ld [$c8a7], a
    call Call_000_302f

Jump_000_30ba:
    call Call_000_1c9e
    ret


    push af
    ld a, $29
    call Call_000_0781
    pop af
    call $693b
    call Call_000_078e
    ret


Call_000_30cc:
Jump_000_30cc:
    push af
    ld a, $03

Call_000_30cf:
    call Call_000_0781
    pop af
    call $627f
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $625b
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af

Jump_000_30ef:
    call $6825
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4ff2
    call Call_000_078e
    ret


    ld a, [$c58e]
    ld [$c8a7], a
    jr jr_000_3111

    ld a, $01
    ld [$c8a7], a

jr_000_3111:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4fca
    call Call_000_078e
    ld a, [$c523]
    and $01

Jump_000_3123:
    ret z

    call Call_000_3923
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d8c
    call Call_000_078e

Call_000_3135:
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af

Jump_000_313d:
    call $4e54
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5313
    call Call_000_078e

Jump_000_3151:
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $53d0
    call Call_000_078e
    ret


Call_000_3160:
    push af
    ld a, $03
    call Call_000_0781

Jump_000_3166:
    pop af
    call $5004
    call Call_000_078e
    ret


Call_000_316e:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5027
    call Call_000_078e
    ret


    ld a, [$c58d]
    cp $00
    jr z, jr_000_318e

    dec a
    ld [$c58d], a
    call Call_000_3923
    call Call_000_1c9e
    ret


jr_000_318e:
    call Call_000_1ca7
    ret


    push af
    ld a, $03

Call_000_3195:
    call Call_000_0781

Call_000_3198:
    pop af
    call $556f
    call Call_000_078e
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $41ee
    call Call_000_078e
    call Call_000_0bfd
    ret


Call_000_31b0:
    push af
    ld a, $29
    call Call_000_0781
    pop af
    call $68f8
    call Call_000_078e
    ret


    push af
    ld a, $29
    call Call_000_0781

Jump_000_31c4:
    pop af
    call $6886
    call Call_000_078e
    ret


Call_000_31cc:
    ld e, $18

jr_000_31ce:
    ld a, $10
    call Call_000_080e
    ld a, $06
    call Call_000_0753
    dec e
    jr nz, jr_000_31ce

    ret


    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5666
    call Call_000_078e
    call Call_000_3923
    ret


    call Call_000_31f3
    jp Jump_000_1c86


Call_000_31f3:
    ld a, [$c58c]
    cp $00
    jr nz, jr_000_320a

    ld a, [$c58a]
    sub $05
    ld a, [$c58b]
    sbc $00
    jr nc, jr_000_320a

    call Call_000_1ca7
    ret


jr_000_320a:
    call Call_000_1c9e
    ret


    ld a, $10
    call Call_000_0753
    call Call_000_3216

Call_000_3216:
    ld a, $0d
    call Call_000_2769
    call Call_000_0ed5
    ld a, $0e
    ld [$c8b8], a
    call Call_000_275d
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7267
    call Call_000_078e
    call Call_000_39c8
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7446
    call Call_000_078e
    call Call_000_03fe
    ld a, $30
    call Call_000_0753

Jump_000_324b:
    ld a, $0e
    call Call_000_2769
    ld a, $0d
    call Call_000_275d
    call Call_000_27b6
    ld a, $30
    jp Jump_000_0753


Call_000_325d:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4ea0
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5539
    call Call_000_078e
    ret


    ld a, $ff
    ld [$c8c5], a
    ld [$c8c6], a
    ld [$c8d5], a
    ld [$c8d6], a
    ret


Call_000_3288:
    ld hl, $c470
    ld d, $00

jr_000_328d:
    ld a, $ff
    ld [hl+], a
    inc d
    ld a, d
    cp $08
    jr c, jr_000_328d

    ret


Call_000_3297:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c529]
    add a
    ldh [$ff9e], a
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c52a
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
    ldh a, [$ff9e]
    ld l, a

Jump_000_32cd:
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c52b
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af

Jump_000_32df:
    ret


Call_000_32e0:
    ld a, [$c528]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $c52a
    add hl, bc
    ld a, [hl+]
    ld [$c85f], a
    ld a, [hl]
    ld [$c860], a
    ret


Call_000_32f4:
    ld bc, $c8cc
    ld a, c
    ld [$c867], a
    ld a, b
    ld [$c868], a

Call_000_32ff:
Jump_000_32ff:
    ldh a, [$ffa0]
    cp $00
    jr z, jr_000_3319

    ld a, [$c867]
    ld c, a
    ld a, [$c868]
    ld b, a
    ld hl, $0010
    add hl, bc
    ld a, l
    ld [$c867], a
    ld a, h
    ld [$c868], a

Call_000_3319:
jr_000_3319:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a

Call_000_3320:
    pop af
    push hl
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
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00

Call_000_333c:
    ldh [$ff9f], a
    ld a, d

jr_000_333f:
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, [$c867]
    ld c, a
    ld a, [$c868]
    ld b, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_000_3367

    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c470
    add hl, bc
    ld [hl], a
    ld d, a
    ldh a, [$ffa0]
    inc a
    ldh [$ffa0], a
    ld a, d

jr_000_3367:
    ld d, a
    ldh a, [$ff9e]

Call_000_336a:
    inc a
    ldh [$ff9e], a
    ld a, d
    ld d, a
    ldh a, [$ff9e]
    cp $06
    ld a, d
    jr c, jr_000_333f

    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_3389:
    ld a, $0c
    ld [$c8af], a
    ld a, $04
    ld [$c8ab], a
    ld a, $9c
    ld [$c8ac], a
    ld a, [$c865]
    ld d, a
    ld a, [$c524]
    ld [$c866], a
    cp d
    jr z, jr_000_33ab

    ld a, [$c865]
    ld [$c524], a

jr_000_33ab:
    call Call_000_3923
    ret


    call Call_000_1ca7
    ld a, [$c525]
    cp $0b
    jr c, jr_000_33c1

    ld a, $73
    call Call_000_1c6d
    call Call_000_1c9e

jr_000_33c1:
    ret


Call_000_33c2:
    ld a, [$c527]
    dec a
    ld [$c527], a
    cp $ff
    ret nz

Call_000_33cc:
    ld a, $07
    ld [$c527], a
    ld a, [$c525]
    dec a
    ld [$c525], a
    ret


Call_000_33d9:
    ld a, [$c525]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c9
    add hl, bc
    ld [hl], a
    ld a, [$c527]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]

Call_000_33f2:
    ld h, a
    ld a, b
    ld bc, $c8ca

Call_000_33f7:
    add hl, bc
    ld [hl], a
    ret


Call_000_33fa:
Jump_000_33fa:
    ld a, [$c524]
    add a
    add a
    add a
    ld c, a
    ld a, [$c526]
    add c
    ld c, a
    ld b, $00
    ld a, c
    ldh [$ff9e], a
    ld a, b
    ldh [$ff9f], a
    ret


Call_000_340f:
    ld a, [$c525]
    add a
    add a
    add a
    ld c, a
    ld a, [$c527]
    add c
    ld c, a
    ld b, $00
    ld a, c
    ldh [$ff9e], a
    ld a, b
    ldh [$ff9f], a
    ret


Call_000_3424:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    push af
    ld a, $05
    call Call_000_0781
    pop af
    call $5a17
    call Call_000_078e
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_3444:
    ld a, $58
    ld [$c87f], a

jr_000_3449:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a

Call_000_3450:
    pop af
    push hl
    call Call_000_33fa
    ldh a, [$ff9e]
    ld c, a
    inc c
    ld b, $00
    ld hl, $c468
    add hl, bc

jr_000_345f:
    ld a, [$c87f]
    cp c
    jr z, jr_000_346b

    ld a, [hl-]
    ld [hl+], a
    inc hl
    inc c
    jr jr_000_345f

jr_000_346b:
    ld a, $ff
    dec hl
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_3479:
    ld a, $10
    ld [$c87f], a
    jr jr_000_3449

Call_000_3480:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call Call_000_3496

Call_000_348c:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af

Call_000_3495:
    ret


Call_000_3496:
    ld a, $02
    ld [$c534], a
    xor a
    ld [$c535], a
    ld d, a
    ld a, $10
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_000_34a9:
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [$c882]
    cp d
    jr z, jr_000_34e4

    ld a, [$c535]
    inc a
    ld [$c535], a
    cp $08
    jr nz, jr_000_34d1

    xor a
    ld [$c535], a
    ld a, [$c534]

Call_000_34cd:
    inc a
    ld [$c534], a

jr_000_34d1:
    ld d, a
    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    ld a, d
    ld d, a
    ldh a, [$ff9e]
    cp $58
    ld a, d
    jr c, jr_000_34a9

    call Call_000_1ca7
    ret


jr_000_34e4:
    call Call_000_1c9e
    ret


Call_000_34e8:
    ld a, $04
    ld [$c8ab], a
    ld a, $9c
    ld [$c8ac], a
    ld a, $0c
    ld [$c8af], a
    push af
    ld a, $01
    call Call_000_0781

Call_000_34fd:
    pop af
    call $61c4
    call Call_000_078e
    ret


    call Call_000_1be4

Call_000_3508:
    ld [$c882], a
    call Call_000_3520
    ld a, $01
    ld [$c524], a
    ld a, [$c535]
    ld [$c526], a
    call Call_000_3479
    call Call_000_3923
    ret


Call_000_3520:
    call Call_000_3524
    ret


Call_000_3524:
    xor a
    ld [$c535], a
    ld c, $08
    ld hl, $c470

jr_000_352d:
    ld a, [$c882]
    cp [hl]
    jr z, jr_000_3541

    ld a, [$c535]
    inc a
    ld [$c535], a
    inc hl
    inc c
    ld a, $10
    cp c
    jr c, jr_000_352d

jr_000_3541:
    ret


    call Call_000_1be4
    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    call Call_000_1ca7
    ld bc, $c4d9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $04
    jr z, jr_000_356e

    call Call_000_1c9e

jr_000_356e:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


    call Call_000_1be4

Call_000_357b:
    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld bc, $c4d9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $04
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c4d9
    add hl, bc
    ld [hl], a
    ld a, [$c599]
    cp $00
    jr nz, jr_000_35bc

    ld a, [$c8a7]
    cp $06
    jr nz, jr_000_35bc

    ld a, $18
    call Call_000_2788

jr_000_35bc:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


    call Call_000_1be4

Call_000_35c9:
    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld bc, $c4d9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fb
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c4d9
    add hl, bc
    ld [hl], a
    pop hl
    push af

Jump_000_35f9:
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a

Jump_000_35ff:
    pop af
    ret


    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    call Call_000_1ca7
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $04
    jr z, jr_000_362a

    call Call_000_1c9e

jr_000_362a:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_3634:
    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a

Call_000_363e:
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc

Call_000_3652:
    ld a, [hl]
    or $04
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c509
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_366c:
    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fb
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c509
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_36a4:
    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    call Call_000_1ca7
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $02
    jr z, jr_000_36cd

    call Call_000_1c9e

jr_000_36cd:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


    call Call_000_1be4

Call_000_36da:
    ld [$c8a7], a

Jump_000_36dd:
    push af

Call_000_36de:
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $02
    ld b, a
    ldh a, [$ff9e]
    ld l, a

Call_000_36ff:
Jump_000_36ff:
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c509
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fd
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c509
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_374a:
    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    call Call_000_1ca7

Call_000_3761:
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $01
    jr z, jr_000_3773

    call Call_000_1c9e

jr_000_3773:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $01
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c509
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_37b5:
    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a

Call_000_37c7:
    ldh [$ff9f], a
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fe
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c509
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_37ed:
    ld [$c8a7], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c53b
    add hl, bc
    ld a, [hl]
    or $00
    ld [hl], a
    ret


Call_000_37ff:
    ld [$c8a7], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl

Call_000_3807:
    add hl, hl
    ld bc, $c53b
    add hl, bc
    ld a, [hl]
    and $11
    ld [hl], a
    ret


Call_000_3811:
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d2
    add hl, bc
    ld [hl], a
    push af
    ld a, $05
    call Call_000_0781
    pop af
    call $59a7
    call Call_000_078e
    ret


Call_000_382c:
    push af
    ld a, $05
    call Call_000_0781
    pop af
    call $59a7
    call Call_000_078e
    ret


Call_000_383a:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_3845

    ld a, $23
    jr jr_000_3847

jr_000_3845:
    ld a, $12

jr_000_3847:
    call Call_000_080e
    ret


    cp $fd
    ei
    rst RST_30
    rst RST_28
    rst RST_18
    cp a
    ld a, a

Call_000_3853:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $686b
    call Call_000_078e
    ret


Call_000_3861:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $689a
    call Call_000_078e
    ret


Call_000_386f:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $68e7
    call Call_000_078e
    ret


Call_000_387d:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $68f1
    call Call_000_078e

Jump_000_388a:
    ret


Call_000_388b:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6ad9
    call Call_000_078e
    ret


Call_000_3899:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6b27
    call Call_000_078e
    ret


    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6d28
    call Call_000_078e
    ret


Call_000_38b5:
    ld a, $06
    call Call_000_0781
    call Call_000_1be4
    call Call_000_078e

Call_000_38c0:
    ret


Call_000_38c1:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7469
    call Call_000_078e
    ret


Call_000_38cf:
Jump_000_38cf:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4928
    call Call_000_078e
    ret


Call_000_38dd:
Jump_000_38dd:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4930
    call Call_000_078e
    ret


Call_000_38eb:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6b6b
    call Call_000_078e

Jump_000_38f8:
    ret


Call_000_38f9:
    push af
    ld a, $03
    call Call_000_0781

Jump_000_38ff:
    pop af
    call $4000
    call Call_000_078e
    ret


Call_000_3907:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $78f5
    call Call_000_078e
    ret


    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4219
    call Call_000_078e
    ret


Call_000_3923:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4b7c
    call Call_000_078e
    ret


Call_000_3931:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7434
    call Call_000_078e
    ret


    ld a, [$c599]
    cp $00
    jr nz, jr_000_394a

    call $55a4
    ret


jr_000_394a:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $60a7
    call Call_000_078e
    ret


Call_000_3958:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7446
    call Call_000_078e
    ret


Call_000_3966:
Jump_000_3966:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $688c
    call Call_000_078e
    ret


Call_000_3974:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $55ba
    call Call_000_078e
    ret


Call_000_3982:
    push af
    ld a, $29
    call Call_000_0781
    pop af
    call $6886
    call Call_000_078e
    ret


Call_000_3990:
    push af
    ld a, $29
    call Call_000_0781
    pop af
    call $689d
    call Call_000_078e
    ret


Call_000_399e:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5666
    call Call_000_078e
    ret


Call_000_39ac:
    push af
    ld a, $29
    call Call_000_0781
    pop af
    call $68e9
    call Call_000_078e
    ret


    push af
    ld a, $00
    call Call_000_0781
    pop af
    call Call_000_31b0
    call Call_000_078e
    ret


Call_000_39c8:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $61ee
    call Call_000_078e
    ret


Call_000_39d6:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $603d
    call Call_000_078e
    ret


Call_000_39e4:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6076
    call Call_000_078e
    ret


    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4663
    call Call_000_078e
    ret


Call_000_3a00:
Jump_000_3a00:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $608f
    call Call_000_078e
    ret


Call_000_3a0e:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6dfd
    call Call_000_078e
    ret


Call_000_3a1c:
    call Call_000_0404
    call Call_000_03fe
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4683
    call Call_000_078e

Call_000_3a2f:
    call Call_000_0722
    call Call_000_0420
    ld a, [$c5e0]
    push af
    ld a, $3e
    call Call_000_0781
    pop af
    call $4000
    call Call_000_078e
    call Call_000_072a
    call Call_000_044b
    call Call_000_0416
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5188
    call Call_000_078e
    ret


Call_000_3a5d:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5dec
    call Call_000_078e
    ret


Call_000_3a6b:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6571
    call Call_000_078e
    ret


Call_000_3a79:
    ld a, [$c599]
    cp $00
    jr z, jr_000_3a94

    ld a, [$c8b2]
    cp $04
    jr nz, jr_000_3a94

    ld a, [$c525]
    cp $0b
    jr c, jr_000_3a94

    ld a, $93
    call Call_000_1c63
    ret


jr_000_3a94:
    push af
    ld a, $03
    call Call_000_0781

Jump_000_3a9a:
    pop af
    call $5f54
    call Call_000_078e
    ld a, [$c8b3]
    cp $ff
    jr nz, jr_000_3ab6

    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5fc9
    call Call_000_078e
    ret


Call_000_3ab6:
jr_000_3ab6:
    ld a, [$c8c5]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $3afe
    add hl, bc
    ld a, [hl-]
    push hl
    call Call_000_0781
    pop hl
    ld b, [hl]
    dec hl
    ld c, [hl]
    ld a, [$c8c6]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [$c8b3]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, c
    ld [$c8a5], a
    ld a, b
    ld [$c8a6], a

Jump_000_3aea:
jr_000_3aea:
    call Call_000_1be4
    cp $ff
    jr nz, jr_000_3af7

    call Call_000_1119
    jp Jump_000_078e


jr_000_3af7:
    call $3b0e
    jr jr_000_3aea

    nop
    ld b, b
    rlca
    inc [hl]
    ld d, e
    rlca
    inc hl

Call_000_3b03:
    ld d, l
    rlca
    sub e
    ld d, l
    rlca

jr_000_3b08:
    inc de
    ld h, a
    rlca
    nop
    ld b, b
    ld [$56c7], sp
    inc e
    ld h, b
    inc e

Jump_000_3b13:
    ld l, d
    inc e
    ld a, e
    inc e
    add [hl]
    inc e
    cp [hl]
    inc e
    rst RST_28
    inc e
    ld b, $1d
    ld l, d
    dec e

Jump_000_3b21:
    pop bc
    dec e
    inc hl
    ld e, $81
    ld e, $8b
    ld e, $97
    ld e, $7e
    ld e, $88
    ld e, $94
    ld e, $ae

Jump_000_3b32:
    ld e, $bd
    ld e, $ce
    ld e, $f1
    ld e, $05
    rra
    ld d, $1f
    ld sp, $5e1f
    rra
    ld l, l
    rra
    sbc c
    rra

jr_000_3b45:
    xor [hl]
    rra
    cp l
    rra
    call z, $ed1f
    rra
    db $fc
    rra
    dec bc
    jr nz, @+$3d

    ld [hl+], a
    or c
    ld [hl+], a
    cp h

jr_000_3b56:
    ld [hl+], a
    ld c, $23
    ld a, [de]
    inc hl
    db $db
    inc hl
    nop
    dec h
    ld d, b
    daa
    ld e, d
    daa
    ld h, [hl]
    daa
    or [hl]

Jump_000_3b66:
    daa
    ld [hl], h
    inc e
    ld b, e
    jr z, jr_000_3b08

    dec hl
    cp e
    dec hl
    ret nc

    dec hl
    rst RST_10
    dec hl
    ld d, [hl]
    inc l
    jr jr_000_3ba6

    ld a, $2f
    or b
    inc e
    or [hl]
    inc e
    add a
    cpl
    add [hl]

Call_000_3b80:
    dec h
    cp c
    cpl
    ld sp, hl
    cpl
    dec a
    jr nz, jr_000_3b45

    inc hl
    dec b
    dec [hl]
    dec h

jr_000_3b8c:
    jr nc, jr_000_3b56

    ld h, $ed
    ld l, $fb
    ld l, $fc
    ld l, $09
    cpl
    call $de27

Call_000_3b9a:
    dec hl
    inc bc

jr_000_3b9c:
    inc l
    ld e, $2c
    push hl
    dec hl

Jump_000_3ba1:
    ld a, $2c
    ld b, l
    inc l
    ld d, d

jr_000_3ba6:
    inc l
    adc e
    inc h
    ld d, l
    dec hl
    add hl, bc
    daa
    sbc l
    jr nz, @+$3b

    inc hl
    db $f4

Call_000_3bb2:
    dec hl
    pop de
    ld l, $df
    ld l, $73
    dec e
    jr nz, jr_000_3bde

    add hl, bc
    inc l
    cp [hl]
    jr nc, jr_000_3b8c

    jr nc, jr_000_3b9c

    jr nc, jr_000_3c2a

Jump_000_3bc4:
    add hl, sp
    jp nc, $991f

    inc l
    adc [hl]
    inc l
    add sp, $30
    ld e, e
    dec e
    add h
    ld hl, $22ee
    and d
    ld [hl+], a
    xor d
    cpl
    or d
    dec e
    xor b
    add hl, hl
    push hl
    cpl
    inc c

jr_000_3bde:
    ld sp, $3104
    jr z, jr_000_3c14

    ld [hl], $31
    ld a, $1c
    ld b, h
    ld sp, $3152
    scf
    rra
    sbc $22
    ld [hl], l
    dec h
    or $30
    ld a, h
    ld sp, $3192
    or e
    ld a, [hl+]
    or b
    ld sp, $31be
    call z, $dc31

Jump_000_3c00:
    ld sp, $31ed
    ld c, $32
    ld l, e
    ld [hl-], a
    call nc, Call_000_0c1c
    dec e
    ccf
    inc e
    ld a, c
    ld [hl-], a
    add hl, sp
    jr nz, jr_000_3c12

jr_000_3c12:
    nop
    nop

jr_000_3c14:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3c20:
    nop
    nop
    nop
    nop

Call_000_3c24:
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3c2a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3c60:
    nop

Jump_000_3c61:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3c67:
    nop
    nop
    nop
    nop

Call_000_3c6b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3c99:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3ca4:
Jump_000_3ca4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3cbc:
    nop
    nop
    nop
    nop

Call_000_3cc0:
Jump_000_3cc0:
    nop
    nop
    nop

Jump_000_3cc3:
    nop
    nop
    nop
    nop

Jump_000_3cc7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3cda:
    nop

Jump_000_3cdb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3cf1:
Jump_000_3cf1:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3cf7:
    nop
    nop
    nop
    nop
    nop

Jump_000_3cfc:
    nop

Jump_000_3cfd:
    nop
    nop

Jump_000_3cff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3d18:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3d66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3def:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3dff:
Jump_000_3dff:
    nop

Jump_000_3e00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3e37:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3e6a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3eff:
    nop
    nop
    nop
    nop

Call_000_3f03:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3f0f:
    nop
    nop
    nop
    nop
    nop

Call_000_3f14:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3f21:
    nop
    nop

Jump_000_3f23:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3f30:
    nop
    nop
    nop
    nop
    nop

Jump_000_3f35:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3f40:
    nop

Call_000_3f41:
Jump_000_3f41:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3f47:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3f4f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3f74:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3fbf:
    nop

Call_000_3fc0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3fc7:
    nop
    nop
    nop
    nop

Jump_000_3fcb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3fef:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3fff:
Jump_000_3fff:
    nop
