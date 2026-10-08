; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
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
    nop
    nop

Call_000_004c:
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


    nop
    nop

Call_000_005b:
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

Call_000_0063:
    nop

Jump_000_0064:
    nop
    nop

Jump_000_0066:
    nop
    nop

Jump_000_0068:
    nop
    nop

Jump_000_006a:
    nop
    nop

Jump_000_006c:
    nop

Call_000_006d:
    nop

Jump_000_006e:
    nop
    nop
    nop
    nop
    nop

Call_000_0073:
    nop
    nop
    nop
    nop
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
    db "ADTE"

HeaderCGBFlag::
    db $c0

HeaderNewLicenseeCode::
    db $35, $50

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $1b

HeaderROMSize::
    db $05

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $6f

HeaderGlobalChecksum::
    db $4d, $06

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

Jump_000_016c:
    ld a, d
    ldh [$ffa8], a
    cp $11
    jp nz, Jump_000_0183

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
    jp Jump_000_3707


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

jr_000_0274:
    pop de

Call_000_0275:
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

Call_000_0353:
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

Jump_000_0546:
    cp $88
    jr nc, jr_000_054d

Jump_000_054a:
    or $10
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

Jump_000_0658:
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
    ld c, a
    ld a, b
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

Call_000_0746:
    pop hl
    pop de
    pop bc

Jump_000_0749:
    pop af
    reti


Call_000_074b:
    push hl
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

Jump_000_075e:
    push af
    call Call_000_0456
    pop af
    cp [hl]
    jr nc, jr_000_075b

Jump_000_0766:
    ld [hl], $01
    ret


Call_000_0769:
    xor a

Jump_000_076a:
    ld [$3000], a
    ld [$4000], a
    ld a, $01
    ld [$2000], a

Jump_000_0775:
    ldh [$ff8e], a
    ld a, $fe
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
    call $6b87
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
    call $41e5
    call Call_000_078e
    xor a
    ld [$c163], a
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7ba6
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

    call Call_000_375c
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6ae4
    call Call_000_078e
    ld a, $bf
    call Call_000_1cd6

jr_000_08d4:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5ef2
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5a06
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
    call Call_000_375c

Jump_000_0931:
    ld a, $01
    ld [$c599], a
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7ba6
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

Call_000_095e:
    pop af
    call $40bc
    call Call_000_078e

jr_000_0965:
    push af

Jump_000_0966:
    ld a, $03
    call Call_000_0781
    pop af
    call $4000
    call Call_000_078e
    ld a, $bf
    call Call_000_1cd6

jr_000_0977:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5ef2
    call Call_000_078e
    push af
    ld a, $01

Call_000_0987:
    call Call_000_0781
    pop af
    call $5a06
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
    call Call_000_1a17
    ld a, $07
    call Call_000_1a17
    ld a, $00
    ldh [rVBK], a
    ret


Call_000_09d4:
    ld a, $02
    call Call_000_1a17
    ld a, $03
    call Call_000_1a17
    ret


Call_000_09df:
    ld a, $04
    call Call_000_1a17
    ld a, $05
    call Call_000_1a17
    ret


Call_000_09ea:
    ld a, $00

Call_000_09ec:
    call Call_000_1a17
    ld a, $01
    call Call_000_1a17
    ret


Call_000_09f5:
    ld a, $0a
    call Call_000_1a17
    ld a, $05
    call Call_000_1a17

Call_000_09ff:
    ret


Call_000_0a00:
Jump_000_0a00:
    ld a, $08

Call_000_0a02:
Jump_000_0a02:
    call Call_000_1a17
    ld a, $09

Call_000_0a07:
    call Call_000_1a17
    ret


Call_000_0a0b:
    call Call_000_0a36
    call Call_000_0a5b
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0a22

Call_000_0a18:
    ld a, $3f
    call Call_000_0781
    ld hl, $4000
    jr jr_000_0a2a

jr_000_0a22:
    ld a, $32
    call Call_000_0781
    ld hl, $4000

jr_000_0a2a:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, c
    ld h, b
    call Call_000_050c

Jump_000_0a33:
    jp Jump_000_078e


Call_000_0a36:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0a47

    ld a, $33
    call Call_000_0781
    ld hl, $4000
    jr jr_000_0a4f

jr_000_0a47:
    ld a, $2a
    call Call_000_0781
    ld hl, $4000

jr_000_0a4f:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, c
    ld h, b
    call Call_000_050c
    jp Jump_000_078e


Call_000_0a5b:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0a6c

    ld a, $33
    call Call_000_0781
    ld hl, $4002
    jr jr_000_0a2a

jr_000_0a6c:
    ld a, $2a
    call Call_000_0781
    ld hl, $4002
    jr jr_000_0a2a

Call_000_0a76:
    ldh a, [$ffa6]
    cp $ff
    jr z, jr_000_0a82

    ld b, a
    ldh a, [$ffa4]
    cp b
    jr z, jr_000_0a89

Jump_000_0a82:
jr_000_0a82:
    ldh a, [$ffa4]
    ldh [$ffa6], a
    call Call_000_0acc

jr_000_0a89:
    ldh a, [$ffa7]
    cp $ff
    jr z, jr_000_0a97

    ld b, a
    ldh a, [$ffa5]
    cp b
    ret z

    cp $7f
    ret z

jr_000_0a97:
    ldh a, [$ffa5]
    ldh [$ffa7], a
    call Call_000_0b32
    ret


Call_000_0a9f:
    ld hl, $ff8c
    set 3, [hl]
    jp Jump_000_01a9


Call_000_0aa7:
    ld e, a
    swap a
    and $0f
    ld d, a
    ld a, [$c599]

Call_000_0ab0:
    ld l, a
    ld h, $00
    ld bc, $0aca
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

Jump_000_0ac7:
    ld a, [de]
    ld h, a
    ret


    inc sp

Jump_000_0acb:
    ld a, [hl+]

Call_000_0acc:
    push bc

Call_000_0acd:
    push de

Call_000_0ace:
    ld d, a
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    ld a, d
    push af
    call Call_000_0aa7
    call Call_000_0b62
    call Call_000_078e
    pop af
    inc a
    call Call_000_0aa7
    call Call_000_0b62
    call Call_000_078e
    pop af
    ldh [rSVBK], a
    call Call_000_01a9

Jump_000_0af2:
    ld a, $01
    ldh [$ff99], a
    ld hl, $d000
    ld a, l
    ldh [$ff97], a
    ld a, h
    ldh [$ff98], a
    ld hl, $9000
    ld a, l
    ldh [$ff9a], a
    ld a, h
    ldh [$ff9b], a
    call Call_000_0a9f

Call_000_0b0b:
Jump_000_0b0b:
    ld hl, $9400
    ld a, l

Jump_000_0b0f:
    ldh [$ff9a], a
    ld a, h
    ldh [$ff9b], a
    call Call_000_0a9f
    ld hl, $8800
    ld a, l
    ldh [$ff9a], a
    ld a, h
    ldh [$ff9b], a
    call Call_000_0a9f
    ld hl, $8c00
    ld a, l
    ldh [$ff9a], a
    ld a, h
    ldh [$ff9b], a
    call Call_000_0a9f
    pop de
    pop bc
    ret


Call_000_0b32:
    call Call_000_0aa7
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    call Call_000_0b62
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

Jump_000_0b5c:
    ldh [$ff9b], a
    call Call_000_0a9f
    ret


Call_000_0b62:
    ld a, [hl]

Jump_000_0b63:
    cp $ff
    ret z

    and $ef
    cp $0c
    jr z, jr_000_0b74

    cp $0d
    jr z, jr_000_0b74

    and $ec
    jr nz, jr_000_0b7c

jr_000_0b74:
    push bc
    push de
    call Call_000_0b7e
    pop de
    pop bc
    ret


jr_000_0b7c:
    jr jr_000_0b7c

Call_000_0b7e:
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


Call_000_0ba4:
    push hl
    push bc
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7c3d
    call Call_000_078e
    pop bc
    pop hl
    ret


Call_000_0bb6:
    push bc
    push de
    push hl
    call Call_000_0416
    call Call_000_03fe
    ld a, $01
    ld [$c87d], a
    call Call_000_0d87
    call Call_000_0e5d
    call Call_000_0cb1
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $466e
    call Call_000_078e
    call Call_000_0c8e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4918
    call Call_000_078e
    call Call_000_03fe
    xor a
    ld [$c87d], a
    call Call_000_0d87
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


Call_000_0c08:
    push bc
    push de
    push hl
    call Call_000_0e5d
    call Call_000_0404

Jump_000_0c11:
    call Call_000_03fe
    call Call_000_0cb1
    push af
    ld a, $01

Jump_000_0c1a:
    call Call_000_0781
    pop af
    call $466e
    call Call_000_078e
    push af

Jump_000_0c25:
    ld a, $02
    call Call_000_0781
    pop af
    call $688c
    call Call_000_078e
    call Call_000_0e6e
    call Call_000_078e
    call Call_000_0c8e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4918

Call_000_0c44:
    call Call_000_078e

Call_000_0c47:
    call Call_000_01b7

Call_000_0c4a:
    pop hl

Call_000_0c4b:
    pop de

Call_000_0c4c:
    pop bc

Call_000_0c4d:
    ret


Call_000_0c4e:
    push bc

Call_000_0c4f:
    push de

Call_000_0c50:
    push hl

Call_000_0c51:
    call Call_000_0416

Call_000_0c54:
    call Call_000_03fe

Call_000_0c57:
    call Call_000_0cb1
    push af
    ld a, $01
    call Call_000_0781

Jump_000_0c60:
    pop af
    call $466e
    call Call_000_078e
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $688c
    call Call_000_078e
    call Call_000_0e6e
    call Call_000_078e
    call Call_000_0c8e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4918
    call Call_000_078e
    pop hl
    pop de
    pop bc
    ret


Call_000_0c8e:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0ca3

    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $486d
    call Call_000_078e
    ret


jr_000_0ca3:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $556f
    call Call_000_078e
    ret


Call_000_0cb1:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0cfa

    ld a, [$c522]
    ld [$c875], a
    cp $28
    jr nc, jr_000_0cc8

    ld a, $23
    call Call_000_0781
    ret


jr_000_0cc8:
    cp $50
    jr nc, jr_000_0cda

    ld a, $24
    call Call_000_0781
    ld a, [$c522]
    sub $28
    ld [$c875], a
    ret


jr_000_0cda:
    cp $78
    jr nc, jr_000_0cec

    ld a, $25
    call Call_000_0781
    ld a, [$c522]

Call_000_0ce6:
    sub $50
    ld [$c875], a
    ret


jr_000_0cec:
    ld a, $26
    call Call_000_0781
    ld a, [$c522]
    sub $78
    ld [$c875], a
    ret


jr_000_0cfa:
    ld a, [$c522]

Call_000_0cfd:
    ld [$c875], a

Call_000_0d00:
    cp $28

Jump_000_0d02:
    jr nc, jr_000_0d0a

    ld a, $27
    call Call_000_0781
    ret


jr_000_0d0a:
    ld a, $28

Call_000_0d0c:
    call Call_000_0781
    ld a, [$c522]
    sub $28
    ld [$c875], a
    ret


Call_000_0d18:
    push bc
    push hl
    ld a, [$c875]
    ld l, a
    ld h, $00
    add hl, hl

Call_000_0d21:
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
    call Call_000_0d37
    pop hl
    pop bc
    ret


Call_000_0d37:
    ld a, [$c855]
    ld c, a
    ld a, [$c856]
    ld b, a
    ld hl, $c902
    ld d, $c4
    ld e, $0e

jr_000_0d46:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_000_0d54

    push de
    ld de, $000e
    add hl, de
    pop de
    ld e, $0e

jr_000_0d54:
    dec d
    jr nz, jr_000_0d46

    ld hl, $c910
    ld d, $c4
    ld e, $0e

jr_000_0d5e:
    ld a, [bc]
    inc bc
    ld [hl+], a

Jump_000_0d61:
    dec e
    jr nz, jr_000_0d6c

    push de
    ld de, $000e
    add hl, de
    pop de
    ld e, $0e

jr_000_0d6c:
    dec d
    jr nz, jr_000_0d5e

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


Call_000_0d87:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0d92

    ld a, $27
    jr jr_000_0d94

jr_000_0d92:
    ld a, $1d

jr_000_0d94:
    call Call_000_080e
    call Call_000_0d18
    push bc
    push hl
    ld bc, $0df8
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

jr_000_0db0:
    xor a
    ld [$c877], a

jr_000_0db4:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4f96
    call Call_000_078e
    ld de, $0000

jr_000_0dc4:
    ld hl, $c884
    srl [hl]
    dec hl
    rr [hl]
    jr nc, jr_000_0dd3

Call_000_0dce:
    push de
    call $0dff
    pop de

jr_000_0dd3:
    inc e
    ld a, e
    cp $0e
    jr nz, jr_000_0dc4

    ld a, [$c877]
    inc a
    ld [$c877], a
    cp $0e
    jr nz, jr_000_0db4

    call Call_000_03d3
    call Call_000_01b7
    ld a, [$c878]
    inc a
    ld [$c878], a
    ld hl, $c5c3
    cp [hl]
    jr nz, jr_000_0db0

    ret


    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $3e
    ld bc, $9eea

Call_000_0e03:
    pop bc
    ld [$c19f], a

Jump_000_0e07:
    call Call_000_0e14
    call Call_000_0e4a
    ld hl, $c19e
    call Call_000_02a5
    ret


Call_000_0e14:
    ld a, [$c87d]
    cp $00
    jr z, jr_000_0e26

    ld a, $ff
    ld [$c1a0], a
    ld a, $07
    ld [$c1a1], a
    ret


jr_000_0e26:
    ld a, [$c877]
    add a
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


Call_000_0e4a:
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


Call_000_0e5d:
    ld hl, $db40
    ld d, $38
    xor a

jr_000_0e63:
    ld [hl+], a
    dec d
    jr nz, jr_000_0e63

    call Call_000_074b
    call Call_000_01b7
    ret


Call_000_0e6e:
    call Call_000_0d18
    ld a, $0e
    ld [$c900], a
    ld [$c901], a
    call Call_000_0e83
    call Call_000_03d3

Jump_000_0e7f:
    call Call_000_01a9
    ret


Call_000_0e83:
    ld bc, $9800
    ld hl, $c900
    call Call_000_02a5
    ret


Call_000_0e8d:
    push de
    push bc
    push hl
    ld de, $0000

jr_000_0e93:
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
    jr c, jr_000_0e93

    call Call_000_0eaf
    pop hl
    pop bc
    pop de
    ret


Call_000_0eaf:
    ld a, [$c523]
    and $7f
    ld [$c523], a
    ld hl, $c865
    ld a, [$c8ab]
    cp [hl]
    jr nc, jr_000_0ec1

    ret


jr_000_0ec1:
    inc hl
    cp [hl]
    jr c, jr_000_0ec8

Call_000_0ec5:
    jr z, jr_000_0ec8

    ret


jr_000_0ec8:
    inc hl
    ld a, [$c8ac]
    cp [hl]
    jr nc, jr_000_0ed0

    ret


jr_000_0ed0:
    inc hl
    cp [hl]
    jr c, jr_000_0ed7

    jr z, jr_000_0ed7

    ret


jr_000_0ed7:
    ld a, [$c523]
    or $80
    ld [$c523], a
    ret


Call_000_0ee0:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_0eee

    ld a, $05
    ld de, $4000
    jr jr_000_0ef3

jr_000_0eee:
    ld a, $05
    ld de, Case2RoomObjects

jr_000_0ef3:
    call Call_000_0781
    ld a, [$c521]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld a, [hl+]

Call_000_0eff:
    ld [$c8ad], a
    ld a, [hl]

Jump_000_0f03:
    ld [$c8ae], a
    ld hl, $c600
    ld a, l
    ld [$c867], a
    ld a, h
    ld [$c868], a

Call_000_0f11:
Jump_000_0f11:
jr_000_0f11:
    ld a, [$c8ad]
    ld l, a
    ld a, [$c8ae]
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_000_0f2c

    push af
    ld a, [$c867]
    ld l, a
    ld a, [$c868]
    ld h, a
    pop af
    ld [hl], a
    jp Jump_000_078e


jr_000_0f2c:
    ld bc, $0004
    add hl, bc

Jump_000_0f30:
    ld a, [hl]
    bit 7, a
    jr nz, jr_000_0f3a

    call Call_000_0f68
    jr jr_000_0f11

jr_000_0f3a:
    ld [$c5c3], a
    inc hl
    inc hl

Jump_000_0f3f:
    ld a, [hl]
    ld [$c8b8], a
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6bf4
    call Call_000_078e

Call_000_0f50:
Jump_000_0f50:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7267
    call Call_000_078e

jr_000_0f5d:
    call Call_000_0f68
    jr jr_000_0f11

Jump_000_0f62:
    call Call_000_078e
    pop af
    jr jr_000_0f5d

Call_000_0f68:
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


Call_000_0f7d:
    push af
    bit 7, a
    jr nz, jr_000_0fa2

    bit 6, a
    jr nz, jr_000_0f94

    ld a, [$c1a8]
    ld c, a
    ld a, [$c1a9]
    ld b, a

Call_000_0f8e:
    ld a, [$c1aa]
    jp Jump_000_1062


jr_000_0f94:
    ld a, [$c1ab]
    ld c, a
    ld a, [$c1ac]
    ld b, a
    ld a, [$c1ad]
    jp Jump_000_1062


jr_000_0fa2:
    bit 6, a
    jr nz, jr_000_0fb4

    ld a, [$c1ae]
    ld c, a
    ld a, [$c1af]
    ld b, a
    ld a, [$c1b0]
    jp Jump_000_1062


jr_000_0fb4:
    ld a, [$c1b1]
    ld c, a
    ld a, [$c1b2]
    ld b, a
    ld a, [$c1b3]
    jp Jump_000_1062


Call_000_0fc2:
    push af

Call_000_0fc3:
    bit 7, a

Call_000_0fc5:
    jr nz, jr_000_0fe6

    bit 6, a
    jr nz, jr_000_0fd9

    ld a, [$c1b4]
    ld c, a
    ld a, [$c1b5]
    ld b, a
    ld a, [$c1b6]
    jp Jump_000_1062


jr_000_0fd9:
    ld a, [$c1b7]
    ld c, a
    ld a, [$c1b8]
    ld b, a
    ld a, [$c1b9]
    jr jr_000_1062

jr_000_0fe6:
    bit 6, a
    jr nz, jr_000_0ff7

    ld a, [$c1ba]
    ld c, a
    ld a, [$c1bb]
    ld b, a
    ld a, [$c1bc]
    jr jr_000_1062

jr_000_0ff7:
    ld a, [$c1bd]
    ld c, a
    ld a, [$c1be]
    ld b, a

Call_000_0fff:
Jump_000_0fff:
    ld a, [$c1bf]
    jr jr_000_1062

Call_000_1004:
    push af
    bit 7, a
    jr nz, jr_000_1027

    bit 6, a
    jr nz, jr_000_101a

    ld a, [$c1c0]

Jump_000_1010:
    ld c, a
    ld a, [$c1c1]
    ld b, a
    ld a, [$c1c2]
    jr jr_000_1062

jr_000_101a:
    ld a, [$c1c3]
    ld c, a
    ld a, [$c1c4]

Call_000_1021:
    ld b, a
    ld a, [$c1c5]

Jump_000_1025:
    jr jr_000_1062

jr_000_1027:
    bit 6, a
    jr nz, jr_000_1038

    ld a, [$c1c6]
    ld c, a
    ld a, [$c1c7]
    ld b, a

Call_000_1033:
Jump_000_1033:
    ld a, [$c1c8]
    jr jr_000_1062

jr_000_1038:
    ld a, [$c1c9]
    ld c, a
    ld a, [$c1ca]
    ld b, a

Call_000_1040:
    ld a, [$c1cb]

Jump_000_1043:
    jr jr_000_1062

Call_000_1045:
    push af
    bit 6, a

Call_000_1048:
    jr nz, jr_000_1057

    ld a, [$c1cc]

Jump_000_104d:
    ld c, a
    ld a, [$c1cd]
    ld b, a
    ld a, [$c1ce]
    jr jr_000_1062

Call_000_1057:
jr_000_1057:
    ld a, [$c1cf]
    ld c, a
    ld a, [$c1d0]
    ld b, a
    ld a, [$c1d1]

Jump_000_1062:
jr_000_1062:
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

Jump_000_1075:
    call Call_000_1113
    call Call_000_078e
    ret


    push hl
    push de
    ld c, $00
    cp $9e
    jr nc, jr_000_10bf

    ld a, [$c1a7]
    call Call_000_0781
    ld a, [$c537]

Call_000_108d:
    ld l, a
    ld h, $00
    add hl, hl

Jump_000_1091:
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c1a5]
    ld e, a
    ld a, [$c1a6]
    ld d, a
    add hl, de
    ld a, [hl]
    call Call_000_078e
    cp $1f
    jr z, jr_000_10bf

    cp $0c
    jr z, jr_000_10bf

    inc c
    cp $05
    jr z, jr_000_10bf

    inc c
    cp $0d
    jr z, jr_000_10bf

    inc c
    cp $42
    jr z, jr_000_10bf

    inc c
    cp $47
    jr z, jr_000_10bf

    ld c, $00

jr_000_10bf:
    pop de
    pop hl
    ld a, c
    ret


Call_000_10c3:
Jump_000_10c3:
    ret


Call_000_10c4:
    ret


Call_000_10c5:
    ret


    ret


    nop
    ld [de], a
    inc h
    ld [hl], $48
    ld e, d
    ld l, h
    ld a, [hl]
    sub b

Call_000_10d0:
    ld a, $01
    call Call_000_0781
    call Call_000_10dc
    call Call_000_078e
    ret


Call_000_10dc:
    ld a, [$c8e6]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    ld a, [$c599]
    cp $00
    jr nz, jr_000_10fd

Jump_000_10f0:
    ld bc, $71fe
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl+]

Jump_000_10fb:
    jr jr_000_1108

jr_000_10fd:
    ld bc, $721e
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl+]

jr_000_1108:
    ld [$c19a], a
    ld a, [hl]
    ld [$c19b], a
    call Call_000_1117
    ret


Call_000_1113:
    call Call_000_111c
    ret


Call_000_1117:
    call Call_000_11df
    jr jr_000_1122

Call_000_111c:
    call Call_000_11e5
    call Call_000_1427

Call_000_1122:
jr_000_1122:
    call Call_000_1722
    ld [$c660], a
    cp $5f
    jr z, jr_000_118c

    cp $1f
    jr z, jr_000_11a3

    call Call_000_1135

Call_000_1133:
    jr jr_000_1122

Call_000_1135:
    cp $1b
    jp z, Jump_000_1315

    cp $1c
    jr z, jr_000_1178

    cp $1d
    jp z, Jump_000_132a

    cp $3c
    jp z, Jump_000_1209

    cp $3d
    jp z, Jump_000_1209

    cp $3e
    jp z, Jump_000_11eb

    cp $3f
    jp z, Jump_000_1256

    cp $54
    jp z, Jump_000_126f

    cp $50
    jp z, Jump_000_1397

    cp $51
    jp z, Jump_000_13c1

    cp $52
    jp z, Jump_000_1385

    cp $53
    jp z, Jump_000_138e

    cp $55
    jp z, Jump_000_1183

    jp Jump_000_1461


jr_000_1178:
    ld a, [$c88f]
    bit 1, a
    call z, Call_000_1315
    jp Jump_000_132d


Jump_000_1183:
    ld a, [$c88f]
    or $80
    ld [$c88f], a
    ret


jr_000_118c:
    call Call_000_03d3

jr_000_118f:
    call Call_000_03d3
    call Call_000_1875
    call Call_000_03fe
    call Call_000_0456
    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_118f

    ret


jr_000_11a3:
    ld a, [$c88f]
    bit 1, a
    call z, Call_000_1315

Call_000_11ab:
    ld a, [$c523]
    and $08
    jr z, jr_000_11ba

    ld a, [$c88f]
    and $02
    jr nz, jr_000_11bd

    ret


jr_000_11ba:
    call Call_000_11c1

jr_000_11bd:
    call Call_000_11e5
    ret


Call_000_11c1:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_11de

    ld a, $00
    ld [$c892], a
    call Call_000_1746
    call Call_000_1875
    call Call_000_03fe
    ld a, [$c523]
    and $f7
    ld [$c523], a

jr_000_11de:
    ret


Call_000_11df:
    ld a, $02
    ld [$c88f], a
    ret


Call_000_11e5:
    ld a, $01
    ld [$c88f], a
    ret


Jump_000_11eb:
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
    xor a
    ld [$c8eb], a
    ld a, [bc]
    ld [$c885], a
    jr jr_000_120f

Jump_000_1209:
    call Call_000_1722
    ld [$c885], a

jr_000_120f:
    ld a, [$c885]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    inc hl
    ld a, [$c1a5]
    ld c, a
    ld a, [$c1a6]
    ld b, a
    add hl, bc
    ld a, l
    ld [$c887], a

Jump_000_1227:
    ld a, h
    ld [$c888], a
    ld a, [$c1a7]
    call Call_000_0781
    call Call_000_1237
    jp Jump_000_078e


Call_000_1237:
jr_000_1237:
    ld a, [$c887]
    ld l, a
    ld a, [$c888]
    ld h, a

Call_000_123f:
    ld a, [hl+]
    cp $1f
    ret z

    ld [$c660], a
    ld a, l
    ld [$c887], a
    ld a, h
    ld [$c888], a
    ld a, [$c660]
    call Call_000_1461
    jr jr_000_1237

Jump_000_1256:
    call Call_000_1400

Jump_000_1259:
    call Call_000_135b
    ld a, [$c88b]

Call_000_125f:
    call Call_000_133d
    ld a, [$c88c]
    call Call_000_133d
    ld a, [$c88d]
    call Call_000_134d
    ret


Jump_000_126f:
    call $12e7
    call Call_000_1294
    ld a, [$c889]
    call Call_000_133d
    ld a, [$c88a]
    call Call_000_133d
    ld a, [$c88b]
    call Call_000_133d
    ld a, [$c88c]
    call Call_000_133d
    ld a, [$c88d]
    call Call_000_134d
    ret


Call_000_1294:
    ld de, $0000

jr_000_1297:
    ld c, e
    ld b, d
    sla c

jr_000_129b:
    ld a, [$c885]
    ld [$c887], a
    ld hl, $12dd
    add hl, bc
    sub [hl]
    ld [$c885], a
    ld a, [$c886]
    ld [$c888], a
    inc hl
    sbc [hl]
    ld [$c886], a
    jr c, jr_000_12c0

    ld hl, $c889
    add hl, de
    ld a, [hl]
    add $01
    ld [hl], a
    jr jr_000_129b

jr_000_12c0:
    ld a, [$c887]
    ld [$c885], a
    ld a, [$c888]
    ld [$c886], a
    inc de
    ld a, $04
    cp e
    jr nz, jr_000_1297

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

Call_000_12f7:
    call Call_000_13e8
    ld a, [$c887]
    ld l, a
    ld a, [$c888]
    ld h, a
    ld a, [hl+]

Call_000_1303:
    ld [$c885], a
    ld a, [hl]
    ld [$c886], a
    ld hl, $c889
    xor a
    ld c, $05

Jump_000_1310:
jr_000_1310:
    ld [hl+], a
    dec c
    jr nz, jr_000_1310

    ret


Call_000_1315:
Jump_000_1315:
    ld a, [$c890]
    cp $00
    jr z, jr_000_131f

    call Call_000_03d3

jr_000_131f:
    xor a
    ld [$c890], a
    ld [$c891], a
    call Call_000_16cb
    ret


Jump_000_132a:
    jp Jump_000_15c7


Jump_000_132d:
    ld a, [$c88f]
    and $02
    ret nz

    xor a

Call_000_1334:
    ld [$c5d4], a
    ld [$c5d5], a
    jp Jump_000_1427


Call_000_133d:
    ld [$c660], a
    cp $00
    jr nz, jr_000_134a

    ld a, [$c88e]
    cp $00
    ret z

jr_000_134a:
    ld a, [$c660]

Call_000_134d:
    or $30
    ld [$c660], a
    ld a, $ff
    ld [$c88e], a
    call Call_000_1461
    ret


Call_000_135b:
    ld a, [$c885]
    ld e, a
    ld b, $64
    call Call_000_1379
    ld [$c88b], a
    ld b, $0a
    call Call_000_1379
    ld [$c88c], a
    ld a, e
    ld [$c88d], a
    ld a, $00
    ld [$c88e], a
    ret


Call_000_1379:
    ld d, $00

jr_000_137b:
    ld a, e
    sub b
    jr c, jr_000_1383

    inc d
    ld e, a

Call_000_1381:
    jr jr_000_137b

jr_000_1383:
    ld a, d
    ret


Jump_000_1385:
    ld a, [$c88f]
    and $fe
    ld [$c88f], a
    ret


Jump_000_138e:
    ld a, [$c88f]
    or $01
    ld [$c88f], a
    ret


Jump_000_1397:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_13ae

    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c662], a
    call Call_000_13ef
    ret


jr_000_13ae:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c668], a
    ld [$c893], a
    call Call_000_13ef

Call_000_13c0:
Jump_000_13c0:
    ret


Jump_000_13c1:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_13d8

    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c663], a
    call Call_000_13ef
    ret


jr_000_13d8:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c669], a
    call Call_000_13ef
    ret


Call_000_13e8:
    ld a, [$c19a]
    add $02
    jr jr_000_13f4

Call_000_13ef:
    ld a, [$c19a]
    add $01

jr_000_13f4:
    ld [$c19a], a
    ld a, [$c19b]
    adc $00

Jump_000_13fc:
    ld [$c19b], a
    ret


Call_000_1400:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]

Call_000_1409:
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, l
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

jr_000_1422:
    ld [hl+], a
    dec d
    jr nz, jr_000_1422

    ret


Call_000_1427:
Jump_000_1427:
    ld a, $ff
    ld [$c1a2], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5091
    call Call_000_078e
    call Call_000_1875
    call Call_000_03fe
    ld a, $12
    ld [$c66c], a
    ld a, $08
    ld [$c66d], a
    xor a
    ld [$c65e], a
    ld [$c65f], a
    call Call_000_1647
    xor a
    ld [$c890], a
    ld [$c893], a
    ld [$c894], a
    call Call_000_173a
    ret


Call_000_1461:
Jump_000_1461:
    ld a, [$c660]
    cp $d0
    jr nc, jr_000_1470

    ld e, a
    ld d, $00
    ld hl, $14a5
    add hl, de
    ld a, [hl]

jr_000_1470:
    ld [$c666], a
    ld a, [$c88f]
    and $02
    jp z, Jump_000_1514

    ld a, [$c668]
    ld [$c195], a
    ld a, [$c669]
    ld [$c196], a
    call Call_000_1620
    ld a, $01
    ld [$c664], a
    ld [$c665], a
    ld hl, $c664
    call Call_000_14f5
    ld a, [$c668]
    inc a
    ld [$c668], a
    and $e0
    ret z

    jp Jump_000_15c7


    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e

Call_000_14b0:
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
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
    ld a, a

Call_000_14f5:
    ld a, [$c88f]
    bit 6, a
    jr nz, jr_000_1500

    call Call_000_01d8
    ret


jr_000_1500:
    ld a, [$c88f]
    bit 7, a
    jr z, jr_000_150b

    ld a, $06
    jr jr_000_150d

jr_000_150b:
    ld a, $07

jr_000_150d:
    ld [$c667], a
    call Call_000_02a5
    ret


Jump_000_1514:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_153a

    call Call_000_0456
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_153a

    ld a, $ff
    ld [$c890], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5091
    call Call_000_078e
    call Call_000_16ff

jr_000_153a:
    ld a, [$c65e]
    inc a

Jump_000_153e:
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
    call Call_000_1620
    ld a, $01
    ld [$c664], a

Jump_000_155a:
    ld [$c665], a
    ld hl, $c664
    call Call_000_14f5
    ld a, [$c5df]
    cp $ff
    jr z, jr_000_1571

    ld a, [$c890]
    cp $00
    jr nz, jr_000_158e

jr_000_1571:
    call Call_000_03d3
    ld a, $03

jr_000_1576:
    push af
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5091
    call Call_000_078e
    call Call_000_1875
    call Call_000_03fe
    pop af
    dec a
    jr nz, jr_000_1576

jr_000_158e:
    ld a, [$c663]
    ld e, a
    ld d, $00
    ld hl, $10c7
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
    jr nz, jr_000_15c1

    call Call_000_15c7
    ret


jr_000_15c1:
    ld a, $11
    ld [$c662], a
    ret


Call_000_15c7:
Jump_000_15c7:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_15eb

    ld a, [$c663]
    inc a
    ld [$c663], a
    ld b, a
    ld a, [$c66d]
    cp b
    jr nz, jr_000_15e6

    call Call_000_1603
    ld a, [$c663]
    dec a
    ld [$c663], a

jr_000_15e6:
    xor a
    ld [$c662], a
    ret


jr_000_15eb:
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


Call_000_1603:
Jump_000_1603:
    ld hl, $c66e
    ld bc, $c680
    ld d, $7e

jr_000_160b:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, jr_000_160b

Call_000_1611:
    ld d, $12
    ld a, $7f

jr_000_1615:
    ld [hl+], a
    dec d
    jr nz, jr_000_1615

    call Call_000_1674
    call Call_000_03d3
    ret


Call_000_1620:
Jump_000_1620:
    push hl
    ld a, [$c88f]
    bit 0, a
    jr nz, jr_000_162d

    ld bc, $9800
    jr jr_000_1630

jr_000_162d:
    ld bc, $9c00

jr_000_1630:
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


Call_000_1647:
    ld a, [$c88f]
    and $02
    ret nz

    ld a, [$c892]
    cp $00

Call_000_1652:
    jr nz, jr_000_165c

    call Call_000_1681
    ld a, $ff
    ld [$c892], a

jr_000_165c:
    xor a
    ld [$c662], a
    ld [$c663], a
    ld hl, $c66e
    ld bc, $0090
    ld d, $7f

jr_000_166b:
    ld a, d
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_166b

    jr jr_000_1674

Call_000_1674:
jr_000_1674:
    ld bc, $9c21
    ld hl, $c66c
    call Call_000_01d8
    call Call_000_03d3
    ret


Call_000_1681:
    ld hl, $1697
    ld bc, $9c00
    call Call_000_0339
    ld hl, $169b
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

jr_000_16a4:
    call Call_000_01b7
    dec d
    jr nz, jr_000_16a4

    ld a, [$c188]
    push af
    ld d, $1e

jr_000_16b0:
    push de
    call Call_000_01b7
    call Call_000_0456
    pop de
    dec d
    jr z, jr_000_16c6

    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_16b0

    bit 1, a
    jr nz, jr_000_16b0

jr_000_16c6:
    pop af
    ld [$c188], a
    ret


Call_000_16cb:
    call Call_000_03d3

jr_000_16ce:
    call Call_000_1706
    call Call_000_0456
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_16ce

    ld a, [$c599]
    cp $00
    jr nz, jr_000_16e6

    ld a, $31
    jr jr_000_16e8

jr_000_16e6:
    ld a, $18

jr_000_16e8:
    call Call_000_080e

jr_000_16eb:
    call Call_000_1706
    call Call_000_0456
    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_16eb

    xor a
    ld [$c5d4], a
    ld [$c5d5], a

Call_000_16ff:
jr_000_16ff:
    call Call_000_1875
    call Call_000_03fe
    ret


Call_000_1706:
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

Call_000_1720:
    jr jr_000_16ff

Call_000_1722:
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


Call_000_173a:
    ld a, $07
    ldh [rWX], a
    ld a, $48
    ldh [rWY], a
    call Call_000_043b
    ret


Call_000_1746:
    xor a
    ld [$c1a2], a
    call Call_000_0443
    ret


    ld a, [$c599]
    ld l, a
    ld h, $00
    ld bc, $1853
    add hl, bc
    ld a, [hl]
    call Call_000_0781
    call Call_000_177d
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6311
    call Call_000_078e
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7469
    call Call_000_078e
    ret


Call_000_177d:
    ld a, [$c599]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $1855
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c521]

Jump_000_178e:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld [$c8ad], a
    ld a, [hl]
    ld [$c8ae], a

Jump_000_179b:
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
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_000_17ef

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
    jr nz, jr_000_17df

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


jr_000_17df:
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
    ret


jr_000_17ef:
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
    call $6c2b
    call Call_000_078e
    ld a, [$c523]

Jump_000_1818:
    and $01
    jr z, jr_000_1843

    call Call_000_0e8d
    ld a, [$c523]
    bit 7, a
    jr z, jr_000_1843

    ld a, [$c599]
    cp $00
    jr nz, jr_000_1838

    ld a, $01
    call Call_000_0781
    call $6c0c
    jp Jump_000_078e


jr_000_1838:
    ld a, $03
    call Call_000_0781
    call $6154
    jp Jump_000_078e


jr_000_1843:
    call Call_000_0f68
    jp Jump_000_179b


Jump_000_1849:
    call Call_000_078e
    pop bc
    call Call_000_0f68

Jump_000_1850:
    jp Jump_000_179b


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
    call $6008
    call Call_000_078e
    pop de
    pop bc
    pop hl
    ret


Call_000_1875:
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


Call_000_1889:
    push hl
    push bc
    push de

Call_000_188c:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6008
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


Call_000_18aa:
    cp $ff
    ret z

    push hl
    push bc
    push de
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $5f3f
    call Call_000_078e
    pop de
    pop bc

Jump_000_18bf:
    pop hl
    ret


Call_000_18c1:
Jump_000_18c1:
    cp $ff

Jump_000_18c3:
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


Call_000_18d8:
    cp $ff
    ret z

    push hl

Call_000_18dc:
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


Call_000_18ef:
    push af
    call Call_000_18f8
    pop af
    call Call_000_1933
    ret


Call_000_18f8:
    push hl
    push bc
    push de
    push af
    ld a, [$c599]

Call_000_18ff:
Jump_000_18ff:
    ld l, a

Jump_000_1900:
    ld h, $00
    ld bc, $1a0b
    add hl, bc
    ld a, [hl]
    call Call_000_0781
    ld a, [$c599]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $1a0d
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

jr_000_1926:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1926

    call Call_000_078e
    pop de
    pop bc
    pop hl
    ret


Call_000_1933:
    push hl
    push bc
    push de
    push af
    ld a, [$c599]
    ld l, a
    ld h, $00
    ld bc, $1a11
    add hl, bc
    ld a, [hl]
    call Call_000_0781
    ld a, [$c599]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $1a13
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

jr_000_1961:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1961

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

jr_000_1988:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1988

    call Call_000_078e
    call Call_000_074b
    pop de
    ret


Call_000_1996:
    push de
    push af
    ld hl, $4210
    ld a, $0a
    jr jr_000_19a6

    push de
    push af
    ld hl, $4000
    ld a, $0a

jr_000_19a6:
    call Call_000_0781
    pop af
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld d, $40
    ld hl, $dbc0

jr_000_19b9:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_19b9

    call Call_000_078e
    pop de
    ret


Call_000_19c4:
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
    ld hl, $dc00

jr_000_19de:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_19de

    call Call_000_078e
    pop de
    ret


Call_000_19e9:
    push af
    call Call_000_1996
    ld a, $09
    call Call_000_0781
    ld hl, $4000
    pop af
    sla a
    ld c, a
    xor a
    ld b, a
    add hl, bc
    ld c, l
    ld b, h
    ld a, [bc]

Call_000_19ff:
Jump_000_19ff:
    ld l, a

Jump_000_1a00:
    inc bc

Jump_000_1a01:
    ld a, [bc]

Jump_000_1a02:
    ld h, a
    inc bc
    call Call_000_05ce
    call Call_000_078e
    ret


    ld a, [bc]
    dec bc
    jr nz, @+$46

    nop
    ld b, b
    ld a, [bc]
    dec bc
    ld c, h
    ld e, d
    sbc b
    ld d, e

Call_000_1a17:
    push de
    push bc

Jump_000_1a19:
    push af
    ld bc, $46bc
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


Call_000_1a37:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6c6d
    call Call_000_078e
    ld a, [$c8b3]
    cp $ff
    jr nz, jr_000_1a59

    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6cd5
    call Call_000_078e
    ret


jr_000_1a59:
    ld a, $06
    call Call_000_0781
    jp $400c


Jump_000_1a61:
    call Call_000_11c1
    jp Jump_000_078e


Jump_000_1a67:
    call Call_000_078e
    pop bc
    call Call_000_11c1
    jp Jump_000_078e


Call_000_1a71:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_1a80

    ld a, $06
    call Call_000_0781
    jp $4038


jr_000_1a80:
    ld a, [$c8c5]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $39cf
    add hl, bc
    ld a, [hl-]
    call Call_000_0781
    jp Jump_000_39bb


Call_000_1a94:
    ld a, [$c8a5]
    ld l, a
    ld a, [$c8a6]
    ld h, a
    ld a, [hl+]
    ld [$c8a7], a

jr_000_1aa0:
    ld a, l
    ld [$c8a5], a
    ld a, h
    ld [$c8a6], a
    ld a, [$c8a7]
    ret


Call_000_1aac:
    ld a, [$c8a5]
    ld l, a
    ld a, [$c8a6]
    ld h, a
    ld a, [hl+]
    ld [$c8a7], a
    ld a, [hl+]
    ld [$c8a8], a
    jr jr_000_1aa0

Call_000_1abe:
    ld a, [$c8a5]
    ld l, a
    ld a, [$c8a6]

Jump_000_1ac5:
    ld h, a
    ld a, [hl+]
    ld [$c8a7], a

Jump_000_1aca:
    ld a, [hl+]
    ld [$c8a8], a
    ld a, [hl+]
    ld [$c8a9], a
    jr jr_000_1aa0

Call_000_1ad4:
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
    jr jr_000_1aa0

    ret


    ld a, $3c
    call Call_000_0753
    ret


Jump_000_1af5:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $63e6
    call Call_000_078e
    call Call_000_37f4
    ret


    call Call_000_1a94

Call_000_1b09:
Jump_000_1b09:
    call Call_000_10c3
    call Call_000_0f7d
    ret


    call Call_000_1a94

Call_000_1b13:
    call Call_000_10c4
    call Call_000_0fc2
    ret


    call Call_000_1a94

Call_000_1b1d:
    call Call_000_10c5
    call Call_000_1004
    ret


    call Call_000_1a94

Call_000_1b27:
Jump_000_1b27:
    call Call_000_1045
    ret


Jump_000_1b2b:
    call Call_000_1aac
    ld a, [$c523]
    and $01
    jr nz, jr_000_1b41

    ret


Jump_000_1b36:
    call Call_000_1aac
    ld a, [$c523]

Jump_000_1b3c:
    and $01
    jr z, jr_000_1b41

    ret


Jump_000_1b41:
jr_000_1b41:
    ld a, [$c8a7]
    ld [$c8a5], a
    ld a, [$c8a8]
    ld [$c8a6], a
    ret


Call_000_1b4e:
Jump_000_1b4e:
    ld a, [$c523]
    set 0, a
    ld [$c523], a
    ret


Call_000_1b57:
Jump_000_1b57:
    ld a, [$c523]
    res 0, a
    ld [$c523], a
    ret


Call_000_1b60:
    xor a
    ldh [$ffa0], a
    ldh [$ffa1], a
    ret


Call_000_1b66:
    ld a, $10
    ldh [$ffa0], a

Call_000_1b6a:
    xor a
    ldh [$ffa1], a
    ret


    call Call_000_1aac
    ld a, [$c8a5]
    call Call_000_0799
    ld a, [$c8a6]
    call Call_000_0799
    xor a
    ld [$c598], a
    jp Jump_000_1b41


    call Call_000_1abe
    ld a, [$c8a5]
    call Call_000_0799
    ld a, [$c8a6]
    call Call_000_0799
    ld a, [$c8a9]
    ld [$c598], a
    call Call_000_0781
    jp Jump_000_1b41


    ld a, [$c598]
    cp $00
    jr z, jr_000_1ba9

    call Call_000_078e

jr_000_1ba9:
    call Call_000_07a5
    ld [$c8a6], a
    call Call_000_07a5
    ld [$c8a5], a
    ret


    call Call_000_1aac
    jp Jump_000_1b41


    call Call_000_1abe
    ld a, [$c8a9]
    ldh [$ff8e], a
    ld [$2000], a
    jp Jump_000_1b41


Call_000_1bca:
Jump_000_1bca:
    call Call_000_1b57
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
    call Call_000_1c2c
    ld bc, $1859
    add hl, bc

Call_000_1be9:
    ld a, [hl]
    and d
    jr z, jr_000_1bf0

    call Call_000_1b4e

Jump_000_1bf0:
jr_000_1bf0:
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

Jump_000_1bfe:
    ld a, h
    ldh [$ffa1], a
    pop af
    pop bc

Jump_000_1c03:
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
    jr jr_000_1c26

    call Call_000_1a94
    call Call_000_1c5c
    jp Jump_000_1b2b


    call Call_000_1a94

jr_000_1c26:
    call Call_000_1c5c
    jp Jump_000_1b36


Call_000_1c2c:
    push bc
    ld a, [$c8a7]
    push af
    srl a

Call_000_1c33:
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

Call_000_1c58:
    ret


    call Call_000_1a94

Call_000_1c5c:
    call Call_000_1d1f
    jp Jump_000_1bca


    push af
    ld a, $03
    call Call_000_0781

Jump_000_1c68:
    pop af
    call $4d83
    call Call_000_078e
    jr jr_000_1c8a

    call Call_000_1a94
    push af
    ld a, [$c599]
    cp $00
    jr nz, jr_000_1c89

    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $60e4

Jump_000_1c86:
    call Call_000_078e

jr_000_1c89:
    pop af

Call_000_1c8a:
Jump_000_1c8a:
jr_000_1c8a:
    call Call_000_1d1f
    ld bc, $1859

Jump_000_1c90:
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
    call Call_000_1c2c
    add hl, bc
    ld a, [hl]
    or d
    ld d, a
    ld a, [$c861]
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


    call Call_000_1a94

Call_000_1cd6:
Jump_000_1cd6:
    call Call_000_1d1f
    ld bc, $36ff

Jump_000_1cdc:
jr_000_1cdc:
    push hl
    push de
    push bc
    push af
    ldh a, [$ffa0]
    ld l, a

Jump_000_1ce3:
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

Call_000_1cf0:
    push hl
    call Call_000_1c2c
    add hl, bc
    ld a, [hl]
    and d
    ld d, a

Jump_000_1cf8:
    ld a, [$c861]
    ld c, a

Jump_000_1cfc:
    ld a, [$c862]
    ld b, a
    ldh a, [$ff9e]

Jump_000_1d02:
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

Jump_000_1d18:
    ldh [$ffa1], a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_000_1d1f:
    ld [$c8a7], a
    ld bc, $c450
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a
    ret


    call Call_000_1a94

Call_000_1d31:
    call Call_000_1d4f
    call Call_000_1bca
    ret


    call Call_000_1a94

Call_000_1d3b:
    call Call_000_1d4f
    ld bc, $1859
    jp Jump_000_1c90


    call Call_000_1a94

Call_000_1d47:
    call Call_000_1d4f
    ld bc, $36ff
    jr jr_000_1cdc

Call_000_1d4f:
    ld [$c8a7], a
    ld bc, $c4c1
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a
    ret


    call Call_000_1a94
    jr jr_000_1d66

    ld a, [$c8c6]

Call_000_1d66:
jr_000_1d66:
    call Call_000_1d8d
    call Call_000_1bca
    ret


Call_000_1d6d:
    call Call_000_1a94
    jr jr_000_1d75

    ld a, [$c8c6]

Call_000_1d75:
jr_000_1d75:
    call Call_000_1d8d
    ld bc, $1859
    jp Jump_000_1c90


    call Call_000_1a94
    ld a, [$c8c6]

Call_000_1d84:
    call Call_000_1d8d
    ld bc, $36ff
    jp Jump_000_1cdc


Call_000_1d8d:
    ld [$c8a7], a
    ld bc, $c4e9
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a
    ret


    ld a, [$c8c6]
    jr jr_000_1da4

    call Call_000_1a94

Call_000_1da4:
jr_000_1da4:
    call Call_000_1dd2
    call Call_000_1bca
    ret


    call Call_000_1a94
    jr jr_000_1db8

    ld a, [$c8c6]
    jr jr_000_1db8

    call Call_000_1a94

Call_000_1db8:
jr_000_1db8:
    call Call_000_1dd2
    ld bc, $1859
    jp Jump_000_1c90


    ld a, [$c8c6]
    jr jr_000_1dc9

    call Call_000_1a94

Call_000_1dc9:
jr_000_1dc9:
    call Call_000_1dd2
    ld bc, $36ff
    jp Jump_000_1cdc


Call_000_1dd2:
    ld [$c8a7], a
    ld bc, $c4f9
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a
    ret


    call Call_000_1dfa
    jp Jump_000_1b2b


    call Call_000_1dfa
    jp Jump_000_1b36


    call Call_000_1a94
    ld l, a
    ld h, $00
    ld bc, $c509
    add hl, bc
    ld a, [hl]
    jr jr_000_1e08

Call_000_1dfa:
    call Call_000_1b57
    ld bc, $c8c7

Call_000_1e00:
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]

jr_000_1e08:
    bit 0, a
    ret z

    jp Jump_000_1b4e


Call_000_1e0e:
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


Call_000_1e1d:
    ldh a, [$ffa0]
    cp $00
    jr z, jr_000_1e31

    ld a, [$c8d5]
    cp $03
    jr nz, jr_000_1e31

    ld a, [$c8d6]
    cp $01
    jr z, jr_000_1e3a

jr_000_1e31:
    ld a, [$c8c7]
    and $fe
    ld [$c8c7], a
    ret


jr_000_1e3a:
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


Call_000_1e49:
    call Call_000_1b57
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $02
    ret z

    call Call_000_1b4e
    ret


Call_000_1e5e:
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a

Call_000_1e67:
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


    call Call_000_1e88
    jp Jump_000_1b2b


    call Call_000_1e88
    jp Jump_000_1b36


Call_000_1e88:
    call Call_000_1b57
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $04
    ret z

    call Call_000_1b4e
    ret


Call_000_1e9d:
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $04
    ld [hl], a
    ret


Call_000_1eac:
    ld bc, $c8c7
    ldh a, [$ffa0]
    ld l, a
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
    call Call_000_1d31
    ld a, [$c523]
    and $01
    jr nz, jr_000_1eed

    ld a, [$c599]
    cp $00
    jr nz, jr_000_1ee0

    ld a, $63
    call Call_000_1b1d
    pop bc
    jp Jump_000_1a61


jr_000_1ee0:
    ld a, $d1
    call Call_000_1b09
    pop bc
    jp Jump_000_1a61


    call Call_000_375c
    ret


jr_000_1eed:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_1f4a

    push af
    ld a, $02

Call_000_1ef7:
    call Call_000_0781
    pop af
    call $6118
    call Call_000_078e
    ld bc, $c8c6

Jump_000_1f04:
    ldh a, [$ffa0]
    ld l, a

Jump_000_1f07:
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $23
    jr nz, jr_000_1f17

    ld a, $bb

Jump_000_1f12:
    call Call_000_1cd6
    jr jr_000_1f20

jr_000_1f17:
    cp $28
    jr nz, jr_000_1f20

    ld a, $bb

Call_000_1f1d:
    call Call_000_1c8a

Jump_000_1f20:
jr_000_1f20:
    ld a, $a9
    call Call_000_1c5c
    ld a, [$c523]
    and $01
    jr z, jr_000_1f45

    ld a, [$c521]
    cp $26
    jr z, jr_000_1f39

    cp $27
    jr z, jr_000_1f40

    jr jr_000_1f45

jr_000_1f39:
    ld a, $81
    call Call_000_1c8a
    jr jr_000_1f45

Call_000_1f40:
jr_000_1f40:
    ld a, $a0
    call Call_000_1c8a

jr_000_1f45:
    ld a, $a9
    call Call_000_1cd6

jr_000_1f4a:
    call Call_000_375c
    push af
    ld a, $02
    call Call_000_0781

Call_000_1f53:
    pop af
    call $6571
    call Call_000_078e
    ld a, [$c524]
    cp $01
    jr nz, jr_000_1f69

    ld a, $02
    ld [$c524], a
    call Call_000_37f4

jr_000_1f69:
    ld a, [$c521]
    ld [$c536], a
    ld a, [$c599]
    cp $00
    jr nz, jr_000_1f7b

    call Call_000_1a94
    jr jr_000_1f7e

jr_000_1f7b:
    call Call_000_1aac

Call_000_1f7e:
jr_000_1f7e:
    ld a, [$c521]
    ld d, a
    ld a, [$c8a7]
    cp d
    jr nz, jr_000_1f8b

    ld a, [$c8a8]

Call_000_1f8b:
Jump_000_1f8b:
jr_000_1f8b:
    ld [$c521], a
    call Call_000_3899
    ld a, [$c599]
    cp $00
    jr nz, jr_000_1fce

    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $64f1
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6532
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4b7a
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4224
    call Call_000_078e
    jr jr_000_2002

jr_000_1fce:
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
    call $4b7a
    call Call_000_078e
    push af
    ld a, $03

Jump_000_1ff8:
    call Call_000_0781

Call_000_1ffb:
    pop af

Jump_000_1ffc:
    call $453b

Jump_000_1fff:
    call Call_000_078e

Jump_000_2002:
jr_000_2002:
    call Call_000_0bb6
    call Call_000_0ee0
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $6d60
    call Call_000_078e
    ld a, [$c521]
    cp $62
    jr c, jr_000_2022

    ld a, [$c5e4]
    inc a
    jr jr_000_2023

jr_000_2022:
    xor a

Call_000_2023:
jr_000_2023:
    ld [$c5e4], a
    push af

Call_000_2027:
    ld a, $03
    call Call_000_0781
    pop af
    call $5827
    call Call_000_078e

Jump_000_2033:
    ret


    push af
    ld a, $00
    call Call_000_0781
    pop af
    call Call_000_2051
    call Call_000_078e

Jump_000_2041:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d68

Call_000_204b:
    call Call_000_078e
    jp Jump_000_1f8b


Call_000_2051:
    call Call_000_375c
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6571
    call Call_000_078e
    ld a, [$c524]
    cp $01
    jr nz, jr_000_2070

    ld a, $02
    ld [$c524], a

Jump_000_206d:
    call Call_000_37f4

jr_000_2070:
    ld a, [$c521]

Call_000_2073:
    ld [$c536], a
    ret


    call Call_000_1a94

Call_000_207a:
Jump_000_207a:
    ld [$c521], a
    call Call_000_3899
    ld a, [$c599]

Jump_000_2083:
    cp $00
    jr nz, jr_000_20b0

Jump_000_2087:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6532
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4b7a

Jump_000_209e:
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4224
    call Call_000_078e
    jr jr_000_20d7

jr_000_20b0:
    push af
    ld a, $03
    call Call_000_0781

Call_000_20b6:
    pop af
    call $41ee
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4b7a
    call Call_000_078e
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $453b
    call Call_000_078e

jr_000_20d7:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4224
    call Call_000_078e
    call Call_000_0bb6
    call Call_000_0ee0
    ret


    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1d3b
    call Call_000_1e9d
    ld bc, $c8c6

Call_000_20ff:
Jump_000_20ff:
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_36ee
    jp Jump_000_211c


    call Call_000_1a94
    call Call_000_1d3b

Jump_000_2113:
    call Call_000_1e9d
    ld a, [$c8a7]
    call Call_000_36ee

Call_000_211c:
Jump_000_211c:
jr_000_211c:
    call Call_000_3899
    ld a, [$c599]
    cp $00
    jr nz, jr_000_2141

    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6532
    call Call_000_078e
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6991
    call Call_000_078e
    ret


Call_000_2141:
jr_000_2141:
    push af
    ld a, $03
    call Call_000_0781
    pop af

Jump_000_2148:
    call $41ee
    call Call_000_078e
    call Call_000_0c08
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d56
    call Call_000_078e
    jr jr_000_2164

Call_000_2161:
    call Call_000_1a94

Call_000_2164:
jr_000_2164:
    call Call_000_1d3b
    ld a, [$c8a7]
    jr jr_000_211c

Call_000_216c:
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1d47
    call Call_000_1eac
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a

Call_000_2183:
    ldh a, [$ffa1]
    ld h, a
    add hl, bc

Call_000_2187:
    ld a, [hl]
    call Call_000_36ee
    jp Jump_000_211c


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d56
    call Call_000_078e
    jp Jump_000_21c1


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d71

Call_000_21a8:
    call Call_000_078e
    call Call_000_21c1
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d7a
    call Call_000_078e
    jp Jump_000_21c1


    call Call_000_1a94

Call_000_21c1:
Jump_000_21c1:
    call Call_000_1d47
    call Call_000_36ee
    jp Jump_000_211c


    call Call_000_21d6
    jp Jump_000_1b2b


    call Call_000_21d6

Jump_000_21d3:
    jp Jump_000_1b36


Call_000_21d6:
    call Call_000_1b57
    call Call_000_1a94
    ld a, [$c8a7]
    ld b, a
    ld a, [$c521]
    cp b
    ret nz

    call Call_000_1b4e
    ret


    call Call_000_1a94
    ld [$c521], a
    ret


    push af
    ld a, $01
    call Call_000_0781

Jump_000_21f6:
    pop af
    call $57ac
    call Call_000_078e
    call Call_000_1aac

Jump_000_2200:
    ld a, [$c8a7]
    ld [$c8c5], a
    ld a, [$c8a8]
    ld [$c8c6], a
    push af
    ld a, $01

Call_000_220f:
    call Call_000_0781
    pop af
    call $55df
    call Call_000_078e
    xor a
    ldh [$ffa0], a
    ret


    ldh a, [$ffa0]
    push af
    push af
    ld a, $01

Call_000_2223:
    call Call_000_0781

Jump_000_2226:
    pop af
    call $57ac
    call Call_000_078e
    call Call_000_1aac
    ld a, [$c8a7]
    ld [$c8d5], a
    ld a, [$c8a8]
    ld [$c8d6], a
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $55df
    call Call_000_078e
    pop af
    ldh [$ffa0], a
    ret


    push af

Jump_000_224e:
    ld a, $01
    call Call_000_0781
    pop af
    call $57ac
    call Call_000_078e
    ld e, $10
    ld hl, $c8d4
    ld bc, $c8e4

jr_000_2262:
    ld a, [hl]

Jump_000_2263:
    ld d, a
    ld a, [bc]

Jump_000_2265:
    ld [hl-], a

Jump_000_2266:
    ld a, d
    ld [bc], a
    dec bc
    dec e
    jr nz, jr_000_2262

    ret


Call_000_226d:
    push af
    ld a, $01
    call Call_000_0781

Call_000_2273:
    pop af
    call $4b7a
    call Call_000_078e
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $453b
    call Call_000_078e
    call Call_000_03d3
    ret


Call_000_228b:
    call Call_000_228f
    ret


Call_000_228f:
    ld a, [$c8b0]
    cp $02
    jr nz, jr_000_22bf

    ld a, [$c524]
    cp $01

Jump_000_229b:
    jr nz, jr_000_22bf

    ld bc, $c8c9
    ldh a, [$ffa0]

Jump_000_22a2:
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

Jump_000_22b9:
    call Call_000_332d
    call Call_000_236a

jr_000_22bf:
    call Call_000_1e0e
    ld a, [$c599]
    cp $00
    jr z, jr_000_22d3

    call Call_000_310d
    ld a, [$c523]
    and $01
    jr nz, jr_000_230a

jr_000_22d3:
    call Call_000_32c1
    ld bc, $c8d2
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a

Jump_000_22e2:
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c468
    add hl, bc
    ld [hl], a
    call Call_000_2a6b
    call Call_000_3289
    ld a, [$c525]
    ld [$c865], a
    call Call_000_3239
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $697b
    call Call_000_078e

jr_000_230a:
    ld a, [$c8b0]
    cp $02
    jr z, jr_000_2322

    ld a, [$c5c2]
    call Call_000_2619

Jump_000_2317:
    call Call_000_2666
    ld a, [$c529]
    inc a
    ld [$c528], a
    ret


jr_000_2322:
    ld a, [$c5e5]
    cp $01
    ret z

    ld a, $3c
    call Call_000_0753
    ld a, $01
    ld [$c524], a
    call Call_000_37f4
    ret


Call_000_2336:
Jump_000_2336:
    call Call_000_1d75
    jr jr_000_233e

    call Call_000_1d6d

jr_000_233e:
    call Call_000_32c1
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
    call Call_000_3239
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $697b
    call Call_000_078e
    jp Jump_000_2317


Call_000_236a:
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
    jr nz, jr_000_239d

    ld bc, $c53b
    add hl, bc
    ld bc, $c46f
    ld e, $00

jr_000_2393:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $07
    jr c, jr_000_2393

    ret


jr_000_239d:
    ld bc, $c53c
    add hl, bc
    ld bc, $c46f
    ld e, $00

jr_000_23a6:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $06
    jr c, jr_000_23a6

    ret


    ld a, [$c599]
    cp $00
    jr nz, jr_000_23d5

    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_000_23d5

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr z, jr_000_23f9

jr_000_23d5:
    ld a, [$c529]
    cp $ff
    jr z, jr_000_23f9

    cp $03
    jr c, jr_000_23f9

    ld a, [$c599]
    cp $00
    jr nz, jr_000_23f0

    ld a, $71
    call Call_000_1b1d
    call Call_000_1eac
    ret


jr_000_23f0:
    ld a, $9d
    call Call_000_1b13
    call Call_000_1eac
    ret


jr_000_23f9:
    push af
    ld a, $02
    call Call_000_0781
    pop af

Call_000_2400:
Jump_000_2400:
    call $653c

Call_000_2403:
    call Call_000_078e
    call Call_000_1e9d
    ld a, [$c529]
    inc a
    ld [$c529], a
    ld [$c528], a
    call Call_000_3147
    call Call_000_3138
    call Call_000_31a4

Call_000_241c:
    ld a, $01
    ld [$c865], a
    call Call_000_3239
    ret


    call Call_000_1aac

Call_000_2428:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $504e
    call Call_000_078e
    ret


Call_000_2436:
    push af
    ld a, $02

Jump_000_2439:
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

jr_000_2454:
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
    jr nz, jr_000_2488

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

Call_000_2486:
    jr z, jr_000_2498

jr_000_2488:
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
    jr jr_000_2454

jr_000_2498:
    ldh a, [$ff9e]
    ld [$c5c3], a

jr_000_249d:
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
    ld a, b
    ld bc, $c52a
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
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c52b
    add hl, bc
    ld [hl], a

Call_000_24cd:
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
    jr c, jr_000_249d

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

Jump_000_24f5:
    jr nc, jr_000_2542

    cp $00
    jr z, jr_000_2542

Call_000_24fb:
    ld a, [$c529]
    cp $ff

Call_000_2500:
    jr z, jr_000_256a

    ld a, [$c8b0]
    cp $02
    jr z, jr_000_2542

    ld a, [$c528]
    ld c, a
    ld a, [$c5c3]
    srl a
    dec a
    cp $ff
    jr z, jr_000_2519

    cp c
    ret nc

jr_000_2519:
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
    jr nz, jr_000_255d

    ld a, [$c528]
    dec a
    ld [$c528], a
    call Call_000_3190
    call Call_000_32d8
    call Call_000_25e4
    call Call_000_37f4
    ret


jr_000_2542:
    ld a, [$c528]
    ld c, a
    ld a, [$c5c3]
    cp $00
    jr z, jr_000_2552

    srl a
    dec a
    cp c
    ret nc

jr_000_2552:
    ld a, [$c528]

Jump_000_2555:
    cp $ff
    ret z

Jump_000_2558:
    dec a
    ld [$c528], a
    ret


jr_000_255d:
    call Call_000_3190
    call Call_000_32d8
    call Call_000_25e4
    call Call_000_37f4
    ret


jr_000_256a:
    ld a, $ff
    ld [$c528], a
    ld a, $02
    ld [$c524], a
    call Call_000_37f4
    ret


    call Call_000_257f
    call Call_000_24fb
    ret


Call_000_257f:
    call Call_000_1aac
    ld a, [$c529]
    dec a
    ld [$c529], a
    ld hl, $c52a

jr_000_258c:
    ld a, [$c8a7]
    cp [hl]
    jr nz, jr_000_259c

    ld a, [$c8a8]
    inc hl
    cp [hl]
    jr z, jr_000_25a0

    inc hl
    jr jr_000_258c

jr_000_259c:
    inc hl
    inc hl
    jr jr_000_258c

jr_000_25a0:
    dec hl
    ld c, l
    ld b, h
    inc hl
    inc hl

jr_000_25a5:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, l
    cp $32
    jr nz, jr_000_25a5

    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ret


    ld hl, $c52a

jr_000_25bc:
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
    jr nz, jr_000_25e0

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
    jr z, jr_000_25a0

    inc hl
    jr jr_000_25bc

jr_000_25e0:
    inc hl
    inc hl
    jr jr_000_25bc

Call_000_25e4:
    ld hl, $c46f
    ld a, [$c85b]
    ld [hl+], a
    ld a, [$c85c]
    ld [hl+], a
    ld a, [$c85d]
    ld [hl+], a
    ld a, [$c85e]
    ld [hl+], a
    ld a, [$c85f]
    ld [hl+], a
    ld a, [$c860]
    ld [hl+], a

Jump_000_25ff:
    ret


    call Call_000_1a94

Call_000_2603:
Jump_000_2603:
    call Call_000_2622
    call Call_000_1bca
    ret


    call Call_000_1a94

Call_000_260d:
    call Call_000_2622
    ld bc, $1859
    jp Jump_000_1c90


    call Call_000_1a94

Call_000_2619:
    call Call_000_2622
    ld bc, $36ff
    jp Jump_000_1cdc


Call_000_2622:
    ld [$c8a7], a
    ld bc, $c438
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a
    ret


Call_000_2631:
    call Call_000_2657
    call Call_000_1bca
    ret


Call_000_2638:
    call Call_000_2657
    ld bc, $1859
    jp Jump_000_1c90


    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6163
    call Call_000_078e

Call_000_264e:
    call Call_000_2657

Jump_000_2651:
    ld bc, $36ff
    jp Jump_000_1cdc


Call_000_2657:
    ld [$c8a7], a
    ld bc, $c420
    ld a, c
    ld [$c861], a
    ld a, b
    ld [$c862], a
    ret


Call_000_2666:
    call Call_000_3899
    call Call_000_0ee0
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
    call Call_000_1a94
    call Call_000_2696
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_2696:
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_000_26a0:
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_000_26b9

    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    cp $05
    jr c, jr_000_26a0

    ret


jr_000_26b9:
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
    ld a, [$c524]
    cp $00
    jr z, jr_000_26eb

    push af
    call Call_000_2a6b
    xor a
    ld [$c865], a
    call Call_000_3239
    call Call_000_339c
    ld a, $3c
    call Call_000_0753
    pop af
    ld [$c524], a
    call Call_000_37f4
    ret


jr_000_26eb:
    xor a
    ld [$c865], a
    call Call_000_3239
    ret


    ld a, [$c599]
    cp $00
    jr nz, jr_000_2767

    ld a, $80
    call Call_000_1c5c

Jump_000_26ff:
    ld a, [$c523]
    and $01
    jr nz, jr_000_2726

    ld a, [$c8c5]
    cp $03
    jr nz, jr_000_2718

    ld a, [$c8c6]
    cp $08
    jr z, jr_000_2726

    cp $2d
    jr z, jr_000_2726

jr_000_2718:
    call Call_000_1dfa
    ld a, [$c523]
    and $01
    jr nz, jr_000_2726

    pop bc
    jp Jump_000_1a61


jr_000_2726:
    ld a, $80
    call Call_000_1cd6

jr_000_272b:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5ef2
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af

Call_000_273f:
    call $5a98
    call Call_000_078e
    ld a, $7f
    call Call_000_1c5c
    ld a, [$c523]
    and $01
    jr nz, jr_000_275d

    ld a, [$c523]
    and $04
    jr nz, jr_000_272b

    pop bc
    call Call_000_078e
    ret


jr_000_275d:
    ld a, $7f
    call Call_000_1cd6
    pop bc
    call Call_000_078e
    ret


jr_000_2767:
    ld a, $88
    call Call_000_1c5c
    jr nz, jr_000_2791

    call Call_000_1dfa
    ld a, [$c523]
    and $01
    jr nz, jr_000_2791

    ld a, [$c8b2]
    cp $02
    jr z, jr_000_2788

    ld a, $e5
    call Call_000_1b09
    pop bc
    jp Jump_000_1a61


jr_000_2788:
    ld a, $9e
    call Call_000_1b13
    pop bc
    jp Jump_000_1a61


jr_000_2791:
    ld a, $88
    call Call_000_1cd6
    ld a, [$c8b2]
    cp $02
    jr z, jr_000_27a4

    ld a, $a7
    call Call_000_1b13
    jr jr_000_27a9

jr_000_27a4:
    ld a, $15
    call Call_000_1b13

jr_000_27a9:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5ef2
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5a98
    call Call_000_078e
    ld a, $8f
    call Call_000_1c5c
    jr nz, jr_000_27d6

    ld a, [$c523]
    and $04
    jr nz, jr_000_27a9

    pop bc
    call Call_000_078e
    ret


jr_000_27d6:
    ld a, $8f
    call Call_000_1cd6
    pop bc
    call Call_000_078e
    ret


    ld a, [$c8d5]
    cp $02
    jr nz, jr_000_27eb

    call Call_000_1b4e
    ret


jr_000_27eb:
    ld a, $05
    call Call_000_0781
    ld a, [$c521]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $4000
    add hl, bc
    ld a, [hl+]
    ld [$c8ad], a
    ld a, [hl]

Call_000_2800:
Jump_000_2800:
    ld [$c8ae], a

Jump_000_2803:
    ld a, [$c8ad]
    ld l, a
    ld a, [$c8ae]
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_000_2846

Call_000_2811:
    ld bc, $0004
    add hl, bc
    ld a, [hl+]
    and $7f
    ld c, a
    ld a, [$c8c5]
    cp c
    jr nz, jr_000_2852

    ld a, [hl-]
    ld c, a
    ld a, [$c8c6]
    cp c
    jr nz, jr_000_2852

    call Call_000_0e8d
    ld a, [$c523]
    and $80
    jr z, jr_000_2852

    ld a, [hl+]
    and $7f
    ld [$c8d5], a
    ld a, [hl+]
    ld [$c8d6], a
    ld a, [hl]
    ld [$c5c2], a
    call Call_000_078e
    call Call_000_1b4e
    ret


Jump_000_2846:
    ld a, $80
    call Call_000_1cd6
    call Call_000_078e
    call Call_000_1b57
    ret


jr_000_2852:
    call Call_000_0f68
    jp Jump_000_2803


    ld a, [$c599]
    cp $00
    jr nz, jr_000_286d

    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6a45
    call Call_000_078e
    ret


jr_000_286d:
    call Call_000_1a94
    ld [$c5c8], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $50b0
    call Call_000_078e
    ret


Jump_000_2881:
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
    call $6311
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
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6b11
    call Call_000_078e
    ret


    call Call_000_1a94

Call_000_28b9:
    ld a, [$c53a]
    ld e, a
    ld a, [$c8a7]
    add e
    ld [$c53a], a
    xor a
    ld [$c8b6], a
    ret


    call Call_000_1b57
    ld a, [$c53a]
    cp $00
    jr z, jr_000_28f3

    dec a
    ld [$c53a], a
    xor a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    ld a, [$c8d2]
    push af
    call Call_000_3239
    pop af
    ld [$c8d2], a
    call Call_000_1b4e
    ret


jr_000_28f3:
    ld a, $72
    call Call_000_1b1d
    ret


    call Call_000_1a94
    ld a, [$c53a]

Call_000_28ff:
    ld hl, $c8a7

Jump_000_2902:
    sub [hl]
    jr c, jr_000_2942

    ld [$c53a], a
    ld a, [$c521]
    cp $27
    jr z, jr_000_291d

    ld a, $81
    call Call_000_1c5c
    ld a, [$c523]
    and $01
    jr nz, jr_000_292e

    jr jr_000_2929

jr_000_291d:
    ld a, $a0
    call Call_000_1c5c

Jump_000_2922:
    ld a, [$c523]
    and $01
    jr nz, jr_000_292e

jr_000_2929:
    ld a, $82
    call Call_000_1c8a

jr_000_292e:
    xor a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3239
    call Call_000_1b4e
    ret


jr_000_2942:
    ld a, [$c521]
    cp $26
    jr z, jr_000_2951

    cp $27

Jump_000_294b:
    jr z, jr_000_295a

    call Call_000_1b57
    ret


jr_000_2951:
    ld a, $81
    call Call_000_1c8a

Jump_000_2956:
    call Call_000_1b57
    ret


jr_000_295a:
    ld a, $a0
    call Call_000_1c8a
    call Call_000_1b57
    ret


    call Call_000_1b57
    xor a
    ld [$c526], a
    ld a, [$c524]
    cp $00
    jr z, jr_000_297b

    ld [$c534], a

Call_000_2974:
    xor a
    ld [$c524], a
    call Call_000_37f4

jr_000_297b:
    call Call_000_2a6b
    ld a, $04
    ld [$c8ab], a
    ld a, $ac
    ld [$c8ac], a
    ld a, $0d
    ld [$c8af], a
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $613d
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6189
    call Call_000_078e
    ld a, [$c884]
    cp $ff
    jr nz, jr_000_29b5

jr_000_29ae:
    call Call_000_2a5e
    call Call_000_1b4e
    ret


jr_000_29b5:
    sub $0d
    ld c, a
    ld b, $00
    ld hl, $c468
    add hl, bc
    ld a, [$c599]
    cp $00
    jr nz, jr_000_29f7

    ld a, [hl]
    cp $ff
    jr z, jr_000_29ae

    ld c, $00
    cp $a3
    jr z, jr_000_29e0

    inc c
    cp $a0
    jr z, jr_000_29e0

    inc c
    cp $a1
    jr z, jr_000_29e0

    inc c
    cp $a2
    jr z, jr_000_29e0

    inc c

jr_000_29e0:
    ld hl, $29f2
    add hl, bc
    ld c, [hl]
    ld a, [$c521]
    and $01
    jr z, jr_000_29ed

    inc c

jr_000_29ed:
    ld a, c
    ld [$c8aa], a
    ret


    ld h, $42
    ld b, h
    ld b, [hl]
    ld c, b

jr_000_29f7:
    push af

Jump_000_29f8:
    ld a, $03
    call Call_000_0781
    pop af
    call $4cb5
    call Call_000_078e
    ret


    call Call_000_1a94
    ld c, a
    ld bc, $c8cb
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp c
    jr z, jr_000_2a1b

Call_000_2a17:
    call Call_000_1b57
    ret


jr_000_2a1b:
    call Call_000_1b4e
    ret


    call Call_000_1b57
    ld a, [$c521]
    ld hl, $c8aa
    cp [hl]
    jr nz, jr_000_2a2f

    call Call_000_1b4e
    ret


jr_000_2a2f:
    ld a, [$c8aa]
    ld [$c521], a
    ld a, $83
    call Call_000_1c8a
    ret


    call Call_000_3899
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d2e
    call Call_000_078e
    ret


Call_000_2a4c:
    ld a, [$c523]
    or $08
    ld [$c523], a
    ld a, [$c599]
    cp $00
    ret nz

    call Call_000_1a94
    ret


Call_000_2a5e:
    ld a, [$c534]
    cp $00

Jump_000_2a63:
    jr z, jr_000_2a6b

    ld [$c524], a
    call Call_000_37f4

Call_000_2a6b:
Jump_000_2a6b:
jr_000_2a6b:
    ld a, [$c523]
    and $f7
    ld [$c523], a
    call Call_000_11ab
    ret


Call_000_2a77:
Jump_000_2a77:
    ld a, [$c523]
    and $f7
    ld [$c523], a
    ret


    call Call_000_1a94
    ld [$c537], a
    ret


    call Call_000_1a94
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


    ld bc, $c8cb
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c538], a
    ret


    call Call_000_2abf
    jp Jump_000_1b2b


    call Call_000_2abf
    jp Jump_000_1b36


Call_000_2abf:
    call Call_000_1b4e
    call Call_000_1a94
    ld hl, $c8d2
    cp [hl]
    ret z

    call Call_000_1b57
    ret


    call Call_000_1a94
    call Call_000_2ad5
    ret


Call_000_2ad5:
jr_000_2ad5:
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
    jr nz, jr_000_2ad5

    ret


    call Call_000_1a94
    ld [$c587], a
    ret


    call Call_000_1aac
    ld [$c587], a
    ld a, [$c8a8]
    ld [$c588], a
    ret


Call_000_2b02:
    call Call_000_0ee0
    ret


jr_000_2b06:
    call Call_000_1ad4
    ld a, [$c8a7]
    cp $fe
    jr z, jr_000_2b31

    ld d, a
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_000_2b06

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
    jr nz, jr_000_2b06

jr_000_2b31:
    ld a, [$c8a9]
    ld [$c8a5], a

Call_000_2b37:
    ld a, [$c8aa]
    ld [$c8a6], a
    ret


    ld a, [$c53a]

Jump_000_2b41:
    dec a
    ld [$c53a], a
    call Call_000_37f4
    ret


    ld a, [$c53a]
    cp $00
    jr z, jr_000_2b54

    call Call_000_1b4e
    ret


jr_000_2b54:
    call Call_000_1b57
    ret


    call Call_000_1b57
    call Call_000_1a94
    ld a, [$c8a7]
    ld c, a
    ld a, [$c53a]
    cp c
    jr z, jr_000_2b6a

    jr nc, jr_000_2b6d

jr_000_2b6a:
    call Call_000_1b4e

jr_000_2b6d:
    ret


    call Call_000_1b57
    call Call_000_1a94
    ld hl, $c55b
    cp [hl]
    jr nz, jr_000_2b7d

    call Call_000_1b4e

jr_000_2b7d:
    ret


    call Call_000_1b57
    ld a, [$c55b]
    cp $00
    jr nz, jr_000_2b91

Jump_000_2b88:
    ld a, [$c8c6]
    ld [$c55b], a
    call Call_000_1b4e

jr_000_2b91:
    ret


    call Call_000_1b57
    ld a, [$c55b]
    cp $00
    jr z, jr_000_2ba3

    xor a
    ld [$c55b], a
    call Call_000_1b4e

jr_000_2ba3:
    ret


    call Call_000_1b57
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
    call $55df
    call Call_000_078e
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6311
    call Call_000_078e
    call Call_000_1dc9
    call Call_000_228b
    xor a
    ld [$c5e5], a
    ld a, [$c535]
    ld [$c526], a
    xor a
    ld [$c55b], a
    call Call_000_1b4e
    ret


Call_000_2bef:
    call Call_000_1a94
    ld hl, $c563
    add [hl]
    ld [hl], a
    ld a, $08
    ld [$c8b6], a
    ld [$c8d2], a

Call_000_2bff:
    ret


    call Call_000_2bef

Jump_000_2c03:
    ld a, $08
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3239
    ld a, [$c5c2]
    call Call_000_2619
    call Call_000_2666
    call Call_000_1b4e
    ret


Call_000_2c24:
    ld a, [$c564]
    inc a
    ld [$c564], a
    ld a, $2d
    ld [$c8b6], a
    ld [$c8d2], a
    ret


    call Call_000_2c24
    ld a, $2d
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a

Jump_000_2c48:
    call Call_000_3239
    ld a, [$c5c2]
    call Call_000_2619
    call Call_000_2666
    call Call_000_1b4e
    ret


    ld a, [$c563]
    cp $00
    jr z, jr_000_2c7e

Jump_000_2c5f:
    dec a
    ld [$c563], a
    ld a, $08
    ld [$c8b6], a
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3239
    call Call_000_1b4e
    ret


jr_000_2c7e:
    ld a, $80
    call Call_000_1cd6
    ld a, $77
    call Call_000_1b1d
    call Call_000_1b57
    ret


    ld a, [$c564]
    cp $00
    jr z, jr_000_2cb2

    dec a
    ld [$c564], a
    ld a, $2d
    ld [$c8b6], a
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3239
    call Call_000_1b4e
    ret


jr_000_2cb2:
    ld a, $80
    call Call_000_1cd6
    ld a, $78
    call Call_000_1b1d
    call Call_000_1b57
    ret


    ld a, [$c55c]
    cp $06
    jr nc, jr_000_2cd9

    ld a, [$c563]
    cp $00
    jr z, jr_000_2cd5

    ld a, [$c55c]
    inc a
    ld [$c55c], a

jr_000_2cd5:
    call Call_000_1b4e
    ret


jr_000_2cd9:
    ld a, $80
    call Call_000_1cd6
    call Call_000_1b57
    ret


    ld a, [$c55c]
    cp $00
    jr z, jr_000_2cf1

    dec a
    ld [$c55c], a
    call Call_000_1b4e
    ret


jr_000_2cf1:
    call Call_000_1b57
    ret


    ld a, [$c55e]
    cp $06
    jr nc, jr_000_2d28

    ld a, [$c564]
    cp $00
    jr z, jr_000_2d1b

    ld a, [$c55e]
    inc a
    ld [$c55e], a
    ld a, $b1
    call Call_000_1c5c

Jump_000_2d0f:
    ld a, [$c523]
    and $01
    jr nz, jr_000_2d1f

    ld a, $4b
    call Call_000_1d84

jr_000_2d1b:
    call Call_000_1b4e
    ret


jr_000_2d1f:
    ld a, $b1
    call Call_000_1c8a
    call Call_000_1b4e
    ret


jr_000_2d28:
    ld a, $80
    call Call_000_1cd6
    call Call_000_1b57
    ret


    call Call_000_1b57
    ld a, [$c55e]
    cp $00
    jr z, jr_000_2d47

    ld d, a
    ld a, [$c55e]
    dec a
    ld [$c55e], a
    ld a, d
    call Call_000_1b4e

jr_000_2d47:
    ret


    ld a, [$c55d]
    cp $06
    jr nc, jr_000_2d61

    ld a, [$c563]
    cp $00
    jr z, jr_000_2d5d

    ld a, [$c55d]
    inc a
    ld [$c55d], a

jr_000_2d5d:
    call Call_000_1b4e
    ret


jr_000_2d61:
    ld a, $80
    call Call_000_1cd6
    call Call_000_1b57
    ret


    call Call_000_1b57
    ld a, [$c55d]
    cp $00
    jr z, jr_000_2d80

    ld d, a
    ld a, [$c55d]
    dec a
    ld [$c55d], a
    ld a, d
    call Call_000_1b4e

jr_000_2d80:
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


Call_000_2dab:
    ret


    call Call_000_1a94
    ld c, a
    ld b, $00
    ld hl, $c57b
    add hl, bc
    xor a
    ld [hl], a
    ret


    call Call_000_1b57
    call Call_000_0ba4
    ldh a, [$ffa2]
    and $03
    ret nz

    call Call_000_1b4e
    ret


Call_000_2dc8:
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

jr_000_2de4:
    call Call_000_32f8
    call Call_000_37f4
    call Call_000_3272
    ret


    call Call_000_1a94

Call_000_2df1:
    ld [$c882], a
    call Call_000_3334

Call_000_2df7:
    ld a, [$c534]
    ld [$c524], a
    ld a, [$c535]
    ld [$c526], a

Jump_000_2e03:
    jr jr_000_2de4

Call_000_2e05:
Jump_000_2e05:
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
    call Call_000_1b13

Call_000_2e2e:
    call Call_000_2a6b
    ld a, $3c
    call Call_000_0753
    ret


    call Call_000_3899
    ld a, $01
    call Call_000_0753
    call Call_000_2e05
    pop bc
    jp Jump_000_1a61


    call Call_000_3899

Jump_000_2e49:
    ld a, $01
    call Call_000_0753
    ld a, [$c523]
    or $40
    ld [$c523], a
    pop bc
    jp Jump_000_1a61


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d5f
    call Call_000_078e
    jr jr_000_2e6f

    call Call_000_3899
    call Call_000_1a94

jr_000_2e6f:
    ld [$c8e9], a
    ld a, [$c599]
    cp $00
    jr nz, jr_000_2e87

    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6f35
    call Call_000_078e
    ret


jr_000_2e87:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $526c
    call Call_000_078e
    ret


    call Call_000_1a94
    ld [$c8e9], a
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $527b
    call Call_000_078e
    ret


    ld a, [$c599]
    cp $00
    jr nz, jr_000_2ec7

    call Call_000_3899
    call Call_000_1a94
    ld [$c8e9], a
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $71ce
    call Call_000_078e
    ret


jr_000_2ec7:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $52ce
    call Call_000_078e
    ret


    call Call_000_1a94
    call Call_000_080e
    ret


    call Call_000_1a94

Call_000_2edf:
    call Call_000_28b9
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    call Call_000_37f4
    ret


Call_000_2eef:
    ld a, $07
    call Call_000_1d66
    ld a, [$c523]
    and $01
    jr z, jr_000_2f0a

    ld a, $07
    call Call_000_2df1
    ld a, $07
    call Call_000_1d84
    ld a, $07
    call Call_000_1db8

jr_000_2f0a:
    ld a, $54
    call Call_000_1d66

Jump_000_2f0f:
    ld a, [$c523]
    and $01
    jr z, jr_000_2f25

    ld a, $54
    call Call_000_2df1
    ld a, $54
    call Call_000_1d84
    ld a, $54
    call Call_000_1db8

jr_000_2f25:
    call Call_000_2a6b
    xor a
    ld [$c53a], a
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3239
    ld a, $06
    ld [$c640], a
    ld a, $16
    call Call_000_207a
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
    jr nc, jr_000_2f62

    call Call_000_1b57
    ret


jr_000_2f62:
    ld a, $fe
    ld [$c8a7], a
    call Call_000_2edf
    call Call_000_1b4e
    ret


    push af
    ld a, $29
    call Call_000_0781
    pop af
    call $693b
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $627a
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $6256
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $6820
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
    jr jr_000_2fc1

    ld a, $01
    ld [$c8a7], a

jr_000_2fc1:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4fca

Jump_000_2fcb:
    call Call_000_078e
    ld a, [$c523]
    and $01

Jump_000_2fd3:
    ret z

    call Call_000_37f4
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4d8c
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4e54
    call Call_000_078e
    ret


    push af

Jump_000_2ff5:
    ld a, $03
    call Call_000_0781
    pop af
    call $5313
    call Call_000_078e
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $53d0
    call Call_000_078e
    ret


Call_000_3010:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5004
    call Call_000_078e
    ret


Call_000_301e:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5027
    call Call_000_078e
    ret


    ld a, [$c58d]
    cp $00

Jump_000_3031:
    jr z, jr_000_303e

    dec a
    ld [$c58d], a
    call Call_000_37f4
    call Call_000_1b4e

Jump_000_303d:
    ret


jr_000_303e:
    call Call_000_1b57
    ret


    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $556f
    call Call_000_078e
    push af

Call_000_3050:
    ld a, $03
    call Call_000_0781
    pop af
    call $41ee
    call Call_000_078e
    call Call_000_0c08
    ret


Call_000_3060:
    push af

Call_000_3061:
    ld a, $29
    call Call_000_0781
    pop af
    call $68f8
    call Call_000_078e
    ret


    push af
    ld a, $29
    call Call_000_0781
    pop af
    call $6886
    call Call_000_078e
    ret


Call_000_307c:
    ld e, $18

jr_000_307e:
    ld a, $10
    call Call_000_080e
    ld a, $06

Jump_000_3085:
    call Call_000_0753
    dec e
    jr nz, jr_000_307e

    ret


    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $55df
    call Call_000_078e
    call Call_000_37f4
    ret


    call Call_000_30a3
    jp Jump_000_1b36


Call_000_30a3:
    ld a, [$c58c]
    cp $00
    jr nz, jr_000_30ba

    ld a, [$c58a]

Jump_000_30ad:
    sub $05
    ld a, [$c58b]
    sbc $00
    jr nc, jr_000_30ba

    call Call_000_1b57
    ret


Jump_000_30ba:
jr_000_30ba:
    call Call_000_1b4e
    ret


    ld a, $10
    call Call_000_0753
    call Call_000_30c6

Call_000_30c6:
    ld a, $0d
    call Call_000_2619
    call Call_000_0ee0
    ld a, $0e
    ld [$c8b8], a
    call Call_000_260d
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7267
    call Call_000_078e
    call Call_000_3899
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7446
    call Call_000_078e

Call_000_30f3:
    call Call_000_03fe
    ld a, $30
    call Call_000_0753
    ld a, $0e
    call Call_000_2619
    ld a, $0d
    call Call_000_260d
    call Call_000_2666
    ld a, $30
    jp Jump_000_0753


Call_000_310d:
    push af
    ld a, $03

Call_000_3110:
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


Call_000_3138:
Jump_000_3138:
    ld hl, $c46f
    ld d, $00

Jump_000_313d:
jr_000_313d:
    ld a, $ff
    ld [hl+], a
    inc d
    ld a, d
    cp $07
    jr c, jr_000_313d

    ret


Call_000_3147:
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

Jump_000_3173:
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
    ret


Call_000_3190:
    ld a, [$c528]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $c52a

Jump_000_319a:
    add hl, bc
    ld a, [hl+]
    ld [$c85f], a
    ld a, [hl]
    ld [$c860], a
    ret


Call_000_31a4:
    ld bc, $c8cc
    ld a, c
    ld [$c867], a
    ld a, b
    ld [$c868], a
    ldh a, [$ffa0]
    cp $00
    jr z, jr_000_31c9

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

Call_000_31c9:
jr_000_31c9:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
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
    ldh [$ff9f], a
    ld a, d

Call_000_31ef:
jr_000_31ef:
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

Jump_000_3201:
    jr z, jr_000_3217

    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c46f
    add hl, bc

Call_000_320f:
    ld [hl], a
    ld d, a
    ldh a, [$ffa0]
    inc a
    ldh [$ffa0], a
    ld a, d

jr_000_3217:
    ld d, a
    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    ld a, d
    ld d, a
    ldh a, [$ff9e]
    cp $06
    ld a, d
    jr c, jr_000_31ef

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


Call_000_3239:
    ld a, $0c
    ld [$c8af], a
    ld a, $04
    ld [$c8ab], a
    ld a, $9c
    ld [$c8ac], a
    ld a, [$c865]

Jump_000_324b:
    ld d, a
    ld a, [$c524]
    ld [$c866], a
    cp d
    jr z, jr_000_325b

    ld a, [$c865]
    ld [$c524], a

jr_000_325b:
    call Call_000_37f4
    ret


    call Call_000_1b57
    ld a, [$c525]
    cp $0c
    jr c, jr_000_3271

    ld a, $73
    call Call_000_1b1d
    call Call_000_1b4e

jr_000_3271:
    ret


Call_000_3272:
    ld a, [$c527]
    dec a
    ld [$c527], a
    cp $ff
    ret nz

Jump_000_327c:
    ld a, $06
    ld [$c527], a
    ld a, [$c525]
    dec a
    ld [$c525], a
    ret


Call_000_3289:
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
    ld h, a
    ld a, b
    ld bc, $c8ca
    add hl, bc
    ld [hl], a
    ret


Call_000_32aa:
    ld a, [$c524]
    ld c, a
    add a
    add a
    add a
    sub c
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


Call_000_32c1:
    ld a, [$c525]
    ld c, a
    add a
    add a
    add a
    sub c
    ld c, a
    ld a, [$c527]

Jump_000_32cd:
    add c
    ld c, a
    ld b, $00
    ld a, c
    ldh [$ff9e], a
    ld a, b
    ldh [$ff9f], a
    ret


Call_000_32d8:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a

Jump_000_32df:
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

Call_000_32f1:
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_32f8:
    ld a, $54
    ld [$c87f], a

jr_000_32fd:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call Call_000_32aa
    ldh a, [$ff9e]
    ld c, a
    inc c
    ld b, $00
    ld hl, $c468
    add hl, bc

jr_000_3313:
    ld a, [$c87f]
    cp c
    jr z, jr_000_331f

    ld a, [hl-]
    ld [hl+], a
    inc hl
    inc c
    jr jr_000_3313

jr_000_331f:
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


Call_000_332d:
    ld a, $0e
    ld [$c87f], a
    jr jr_000_32fd

Call_000_3334:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af

Call_000_333c:
    push hl
    call Call_000_334a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_334a:
    ld a, $02
    ld [$c534], a
    xor a

Jump_000_3350:
    ld [$c535], a
    ld d, a
    ld a, $0e
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_000_335d:
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a

Call_000_3369:
    ld a, [$c882]
    cp d
    jr z, jr_000_3398

    ld a, [$c535]
    inc a
    ld [$c535], a
    cp $07
    jr nz, jr_000_3385

    xor a
    ld [$c535], a
    ld a, [$c534]
    inc a
    ld [$c534], a

jr_000_3385:
    ld d, a
    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    ld a, d
    ld d, a
    ldh a, [$ff9e]
    cp $54
    ld a, d
    jr c, jr_000_335d

    call Call_000_1b57
    ret


jr_000_3398:
    call Call_000_1b4e
    ret


Call_000_339c:
    ld a, $04
    ld [$c8ab], a
    ld a, $9c
    ld [$c8ac], a
    ld a, $0c
    ld [$c8af], a
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $613d
    call Call_000_078e
    ret


    call Call_000_1a94

Call_000_33bc:
    ld [$c882], a

Call_000_33bf:
    call Call_000_33d4
    ld a, $01
    ld [$c524], a
    ld a, [$c535]
    ld [$c526], a
    call Call_000_332d
    call Call_000_37f4
    ret


Call_000_33d4:
    call Call_000_33d8
    ret


Call_000_33d8:
    xor a
    ld [$c535], a
    ld c, $07
    ld hl, $c46f

jr_000_33e1:
    ld a, [$c882]
    cp [hl]
    jr z, jr_000_33f5

    ld a, [$c535]
    inc a
    ld [$c535], a
    inc hl
    inc c
    ld a, $0e

Call_000_33f2:
    cp c
    jr c, jr_000_33e1

jr_000_33f5:
    ret


    call Call_000_1a94
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
    call Call_000_1b57
    ld bc, $c4d9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $04
    jr z, jr_000_3422

    call Call_000_1b4e

jr_000_3422:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


    call Call_000_1a94

Call_000_342f:
    ld [$c8a7], a
    push af
    ldh a, [$ff9e]

Call_000_3435:
    ld l, a
    ldh a, [$ff9f]

Call_000_3438:
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

Call_000_3450:
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
    jr nz, jr_000_3470

Call_000_3464:
    ld a, [$c8a7]
    cp $06
    jr nz, jr_000_3470

    ld a, $18
    call Call_000_2638

jr_000_3470:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


    call Call_000_1a94

Call_000_347d:
    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]

Call_000_348c:
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
    call Call_000_1b57
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $04
    jr z, jr_000_34de

    call Call_000_1b4e

jr_000_34de:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_34e8:
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

Jump_000_34ff:
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


Call_000_3520:
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


Call_000_3558:
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
    call Call_000_1b57
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $02
    jr z, jr_000_3581

    call Call_000_1b4e

jr_000_3581:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


    call Call_000_1a94

Call_000_358e:
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
    or $02
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

Call_000_35df:
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

Jump_000_35f9:
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_35fe:
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
    call Call_000_1b57
    ld bc, $c509
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $01
    jr z, jr_000_3627

    call Call_000_1b4e

jr_000_3627:
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

Jump_000_3635:
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


Call_000_3669:
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


Call_000_36a1:
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


Call_000_36b3:
    ld [$c8a7], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c53b
    add hl, bc
    ld a, [hl]
    and $11
    ld [hl], a
    ret


Call_000_36c5:
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


Call_000_36e0:
    push af
    ld a, $05
    call Call_000_0781
    pop af
    call $59a7
    call Call_000_078e
    ret


Call_000_36ee:
    ld a, [$c599]
    cp $00
    jr nz, jr_000_36f9

    ld a, $23
    jr jr_000_36fb

jr_000_36f9:
    ld a, $12

jr_000_36fb:
    call Call_000_080e
    ret


Call_000_36ff:
Jump_000_36ff:
    cp $fd
    ei
    rst RST_30
    rst RST_28
    rst RST_18
    cp a
    ld a, a

Jump_000_3707:
    ld hl, $7b32
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_050c
    ld hl, $7a8f

Jump_000_3713:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_05ce
    ld a, $e4
    ldh [rBGP], a
    ld a, $c1
    ldh [rLCDC], a

Jump_000_3721:
    jp Jump_000_3721


Call_000_3724:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $67e4
    call Call_000_078e
    ret


Call_000_3732:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6813
    call Call_000_078e
    ret


Call_000_3740:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6860
    call Call_000_078e
    ret


Call_000_374e:
Jump_000_374e:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $686a
    call Call_000_078e
    ret


Call_000_375c:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6a52
    call Call_000_078e
    ret


Call_000_376a:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6aa0
    call Call_000_078e
    ret


    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6d28
    call Call_000_078e
    ret


Call_000_3786:
    ld a, $06
    call Call_000_0781
    call Call_000_1a94
    call Call_000_078e
    ret


Call_000_3792:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7469
    call Call_000_078e
    ret


Call_000_37a0:
Jump_000_37a0:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4933
    call Call_000_078e
    ret


Call_000_37ae:
Jump_000_37ae:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $493b
    call Call_000_078e
    ret


Call_000_37bc:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6ae4
    call Call_000_078e
    ret


Call_000_37ca:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $4000
    call Call_000_078e
    ret


Call_000_37d8:
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
    call $4224
    call Call_000_078e
    ret


Call_000_37f4:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $4b87
    call Call_000_078e

Jump_000_3801:
    ret


Call_000_3802:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7434
    call Call_000_078e
    ret


    ld a, [$c599]
    cp $00
    jr nz, jr_000_381b

    call $551d
    ret


jr_000_381b:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $60a2
    call Call_000_078e
    ret


Call_000_3829:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $7446
    call Call_000_078e
    ret


Call_000_3837:
Jump_000_3837:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $688c
    call Call_000_078e
    ret


Call_000_3845:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $55ba
    call Call_000_078e
    ret


Call_000_3853:
    push af
    ld a, $29
    call Call_000_0781
    pop af
    call $6886
    call Call_000_078e
    ret


Call_000_3861:
    push af
    ld a, $29
    call Call_000_0781
    pop af
    call $689d
    call Call_000_078e
    ret


Call_000_386f:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $55df
    call Call_000_078e
    ret


Call_000_387d:
    push af
    ld a, $29
    call Call_000_0781
    pop af
    call $68e9
    call Call_000_078e

Jump_000_388a:
    ret


    push af
    ld a, $00
    call Call_000_0781
    pop af
    call Call_000_3060
    call Call_000_078e
    ret


Call_000_3899:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6167
    call Call_000_078e
    ret


Call_000_38a7:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $603d
    call Call_000_078e
    ret


Call_000_38b5:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6076
    call Call_000_078e
    ret


Jump_000_38c3:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $466e
    call Call_000_078e
    ret


Call_000_38d1:
    push af
    ld a, $01
    call Call_000_0781

Call_000_38d7:
    pop af
    call $6008
    call Call_000_078e
    ret


Call_000_38df:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $6d76
    call Call_000_078e
    ret


Call_000_38ed:
    call Call_000_0404
    call Call_000_03fe
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $468e

Call_000_38fd:
    call Call_000_078e
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


Call_000_392e:
    push af
    ld a, $01
    call Call_000_0781
    pop af
    call $5d65
    call Call_000_078e
    ret


Call_000_393c:
    push af
    ld a, $02
    call Call_000_0781
    pop af
    call $6571
    call Call_000_078e
    ret


Call_000_394a:
    ld a, [$c599]
    cp $00
    jr z, jr_000_3965

    ld a, [$c8b2]
    cp $04
    jr nz, jr_000_3965

    ld a, [$c525]
    cp $0c
    jr c, jr_000_3965

    ld a, $93
    call Call_000_1b13
    ret


jr_000_3965:
    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5f4f
    call Call_000_078e
    ld a, [$c8b3]
    cp $ff
    jr nz, jr_000_3987

    push af
    ld a, $03
    call Call_000_0781
    pop af
    call $5fc4
    call Call_000_078e
    ret


jr_000_3987:
    ld a, [$c8c5]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $39cf
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

Jump_000_39bb:
jr_000_39bb:
    call Call_000_1a94
    cp $ff
    jr nz, jr_000_39c8

    call Call_000_11c1
    jp Jump_000_078e


jr_000_39c8:
    call $39df
    jr jr_000_39bb

    nop
    ld b, b
    rlca
    ld [hl-], a
    ld d, e
    rlca
    ld hl, $0755
    sub c
    ld d, l
    rlca
    ld de, $0767
    nop
    ld b, b
    ld [$06c7], sp
    dec de
    db $10
    dec de
    ld a, [de]
    dec de
    dec hl
    dec de
    ld [hl], $1b
    ld l, [hl]
    dec de
    sbc a
    dec de
    or [hl]
    dec de
    ld a, [de]
    inc e
    ld [hl], c
    inc e
    db $d3
    inc e
    ld sp, $3b1d
    dec e
    ld b, a
    dec e
    ld l, $1d
    jr c, jr_000_3a1d

Jump_000_3a00:
    ld b, h
    dec e
    ld e, [hl]
    dec e
    ld l, l
    dec e
    ld a, [hl]
    dec e
    and c
    dec e
    or l
    dec e
    add $1d
    pop hl
    dec e
    ld c, $1e
    dec e
    ld e, $49
    ld e, $5e
    ld e, $6d

jr_000_3a19:
    ld e, $7c
    ld e, $9d

jr_000_3a1d:
    ld e, $ac
    ld e, $bb

Jump_000_3a21:
    ld e, $eb
    jr nz, jr_000_3a86

    ld hl, $216c
    cp [hl]
    ld hl, $21ca
    adc e
    ld [hl+], a
    or b

Call_000_3a2f:
    inc hl
    nop

Jump_000_3a31:
    ld h, $0a
    ld h, $16
    ld h, $66
    ld h, $24
    dec de
    di
    ld h, $4c
    ld a, [hl+]
    ld l, e
    ld a, [hl+]
    add b

jr_000_3a41:
    ld a, [hl+]

jr_000_3a42:
    add a
    ld a, [hl+]
    ld b, $2b
    ret z

    dec l
    xor $2d
    ld h, b
    dec de
    ld h, [hl]
    dec de
    scf
    ld l, $36
    inc h
    ld l, c
    ld l, $a9
    ld l, $ed
    ld e, $6d
    ld [hl+], a
    cp c
    inc sp
    push de

jr_000_3a5d:
    ld l, $78
    dec h
    sbc l
    dec l
    xor e
    dec l
    xor h
    dec l
    cp c
    dec l
    ld a, l
    ld h, $8e
    ld a, [hl+]
    or e
    ld a, [hl+]
    adc $2a

jr_000_3a70:
    sub l
    ld a, [hl+]
    xor $2a
    push af
    ld a, [hl+]
    ld [bc], a
    dec hl
    dec sp
    inc hl
    dec b
    ld a, [hl+]
    cp c
    dec h
    ld c, l
    rra
    jp hl


    ld hl, $2aa4
    add c
    dec l

jr_000_3a86:
    adc a
    dec l
    inc hl
    inc e
    ret nc

    ld hl, $2ab9
    ld l, [hl]
    cpl
    ld a, h
    cpl
    adc d

jr_000_3a93:
    cpl
    scf
    jr c, jr_000_3a19

    ld e, $49
    dec hl

Jump_000_3a9a:
    ld a, $2b
    sbc b
    cpl
    dec bc
    inc e
    inc [hl]
    jr nz, jr_000_3a41

    ld hl, $2152
    ld e, d
    ld l, $62
    inc e
    ld e, b
    jr z, jr_000_3a42

    ld l, $bc
    cpl
    or h
    cpl
    ret c

    cpl
    and $2f

Call_000_3ab6:
    xor $1a
    db $f4
    cpl
    ld [bc], a
    jr nc, @-$17

    dec e
    adc [hl]
    ld hl, $2425
    and [hl]
    cpl
    inc l
    jr nc, jr_000_3b09

    jr nc, jr_000_3b2c

    add hl, hl
    ld h, b
    jr nc, jr_000_3b3b

    jr nc, jr_000_3b4b

    jr nc, jr_000_3a5d

    jr nc, jr_000_3a70

    jr nc, jr_000_3a93

    jr nc, jr_000_3af2

    ld sp, $1b84
    cp h
    dec de
    rst RST_28
    ld a, [de]
    add hl, hl
    ld sp, $1ee9
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3af2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3b03:
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3b09:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3b13:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3b21:
    nop
    nop
    nop
    nop

Jump_000_3b25:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3b2c:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3b32:
    nop

Jump_000_3b33:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3b3b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3b4b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3b80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3b9a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3ba1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3bb2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3bbf:
    nop
    nop
    nop
    nop
    nop

Jump_000_3bc4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3bd2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3c00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Jump_000_3fb2:
    nop
    nop
    nop
    nop
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
