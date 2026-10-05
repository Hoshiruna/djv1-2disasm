; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

Jump_004_4000:
    push hl
    push bc
    ld hl, $d040
    ld bc, $0140
    call Call_000_0461
    xor a
    ld [$c160], a
    ld [$c161], a
    ld a, $ff
    ld [$d059], a
    ld [$d079], a
    ld [$d099], a
    ld [$d0b9], a
    ld [$d0d9], a
    ld [$d0f9], a
    ld [$d119], a
    ld [$d139], a
    ld [$d159], a
    pop bc
    pop hl
    ret


    ld a, [$d210]
    cp $00
    jp z, Jump_004_4000

    ld a, [$c599]
    cp $00
    jr nz, jr_004_4066

    ld a, [$d210]
    cp $01
    jr z, jr_004_4075

    cp $02
    jr z, jr_004_4075

    cp $03
    jr z, jr_004_4075

    cp $04
    jr z, jr_004_4075

    cp $0b
    jr z, jr_004_4075

    cp $0c
    jr z, jr_004_4075

    cp $0d
    jr z, jr_004_4075

    cp $0e
    jr z, jr_004_4075

    jr jr_004_4081

jr_004_4066:
    ld a, [$d210]
    cp $0e
    jr c, jr_004_4075

    cp $14
    jr z, jr_004_4075

    cp $1a
    jr nz, jr_004_4081

jr_004_4075:
    ld a, [$c161]
    ld b, a
    ld a, [$d210]
    ld [$c161], a
    cp b
    ret z

Call_004_4081:
jr_004_4081:
    ld a, [$d210]
    dec a
    sla a
    ld c, a
    ld b, $00
    ld a, [$c599]
    and $01
    jr nz, jr_004_4096

    ld hl, $4a2d
    jr jr_004_4099

jr_004_4096:
    ld hl, $636a

jr_004_4099:
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    cp $00
    jp z, Jump_004_4000

    ld a, [de]
    inc de
    rst RST_00
    xor [hl]
    ld b, b
    jr nz, @+$43

    inc l
    ld b, c
    add b
    ld b, c
    ld a, [$c161]
    ld [$c160], a

Call_004_40b4:
    ld a, [de]
    ld [$d047], a
    ld [$d067], a
    ld [$d087], a
    ld [$d0a7], a
    inc de
    ld bc, $d040
    call Call_004_41c2
    call Call_004_41c2
    call Call_004_41c2
    call Call_004_41c2
    ld a, [de]
    inc de
    ld [$d05e], a
    ld [$d07e], a
    ld [$d09e], a
    ld a, [de]
    inc de
    ld [$d05f], a
    ld [$d07f], a
    ld [$d09f], a
    ld a, [de]
    inc de
    ld [$d0be], a
    ld a, [de]
    ld [$d0bf], a
    ld a, $03
    ld [$d05a], a
    ld [$d07a], a
    ld [$d09a], a
    ld [$d0ba], a
    xor a
    ld [$d055], a
    ld [$d075], a
    ld [$d095], a
    ld [$d0b5], a
    ld a, $00
    ld [$d04f], a
    ld a, $10
    ld [$d06f], a
    ld a, $20
    ld [$d08f], a
    ld a, $30
    ld [$d0af], a
    ret


    call Call_004_40b4
    ld a, [$c161]
    or $80
    ld [$c160], a
    ret


    ld a, [de]
    ld [$d0c7], a
    ld [$d0e7], a
    ld [$d107], a
    inc de
    ld bc, $d0c0
    call Call_004_41c2
    call Call_004_41c2
    call Call_004_41c2
    inc de
    inc de
    ld a, [de]
    inc de
    ld [$d0de], a
    ld [$d0fe], a
    ld [$d11e], a
    ld a, [de]
    inc de
    ld [$d0df], a
    ld [$d0ff], a
    ld [$d11f], a
    ld a, $03
    ld [$d0da], a
    ld [$d0fa], a
    ld [$d11a], a
    xor a
    ld [$d0d5], a
    ld [$d0f5], a
    ld [$d115], a
    ld a, $40
    ld [$d0cf], a
    ld a, $50
    ld [$d0ef], a
    ld a, $60
    ld [$d10f], a
    ret


    ld a, [de]
    ld [$d127], a
    ld [$d147], a
    inc de
    inc de
    inc de
    ld bc, $d120
    call Call_004_41c2
    inc de
    inc de
    call Call_004_41c2
    ld a, [de]
    inc de
    ld [$d13e], a
    ld a, [de]
    inc de
    ld [$d13f], a
    ld a, [de]
    ld [$d15e], a
    inc de
    ld a, [de]
    ld [$d15f], a
    ld a, $03
    ld [$d13a], a
    ld [$d15a], a
    xor a
    ld [$d135], a
    ld [$d155], a
    ld a, $70
    ld [$d12f], a
    ld a, $80
    ld [$d14f], a
    ret


Call_004_41c2:
    push bc
    ld h, b
    ld l, c
    ld a, $80
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld b, a
    ld a, [de]
    ld [hl+], a
    inc de
    or b
    jr nz, jr_004_41db

    pop bc
    ld [bc], a

jr_004_41d4:
    ld hl, $0020
    add hl, bc
    ld b, h
    ld c, l
    ret


jr_004_41db:
    inc hl
    inc hl
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld [hl+], a
    pop bc
    jr jr_004_41d4

    bit 7, [hl]
    jr z, jr_004_41f0

    res 7, [hl]
    call Call_004_41f0

Call_004_41f0:
jr_004_41f0:
    xor a
    ld [$c186], a
    ld bc, $d040
    ld a, [bc]
    sla a
    jr nc, jr_004_4208

    call Call_004_42b0
    call Call_004_431d
    call Call_004_4390
    call Call_004_42c4

jr_004_4208:
    ld bc, $d060
    ld a, [bc]
    sla a
    jr nc, jr_004_421c

    call Call_004_42b0
    call Call_004_431d
    call Call_004_4390
    call Call_004_42c4

jr_004_421c:
    ld bc, $d080
    ld a, [bc]
    sla a
    jr nc, jr_004_4230

    call Call_004_42b0
    call Call_004_43cc
    call Call_004_443f
    call Call_004_42c4

jr_004_4230:
    ld bc, $d0a0
    ld a, [bc]
    sla a
    jr nc, jr_004_4241

    call Call_004_42b0
    call Call_004_444e
    call Call_004_42c4

jr_004_4241:
    ld bc, $d0c0
    ld a, [bc]
    sla a
    jr nc, jr_004_4255

    call Call_004_42b0
    call Call_004_431d
    call Call_004_4390
    call Call_004_42c4

jr_004_4255:
    ld bc, $d0e0
    ld a, [bc]
    sla a
    jr nc, jr_004_4269

    call Call_004_42b0
    call Call_004_431d
    call Call_004_4390
    call Call_004_42c4

jr_004_4269:
    ld bc, $d100
    ld a, [bc]
    sla a
    jr nc, jr_004_427d

    call Call_004_42b0
    call Call_004_43cc
    call Call_004_443f
    call Call_004_42c4

jr_004_427d:
    ld bc, $d120
    ld a, [bc]
    sla a
    jr nc, jr_004_4291

    call Call_004_42b0
    call Call_004_431d
    call Call_004_42c4
    call Call_004_4390

jr_004_4291:
    ld bc, $d140
    ld a, [bc]
    sla a
    jr nc, jr_004_42a2

    call Call_004_42b0
    call Call_004_444e
    call Call_004_42c4

jr_004_42a2:
    call Call_004_4738
    ld a, [$c186]
    cp $00
    jr z, jr_004_42af

    call Call_004_42d8

jr_004_42af:
    ret


Call_004_42b0:
    ld a, c
    ld [$d016], a
    ld a, b
    ld [$d017], a
    ld hl, $d160
    ld d, $20

jr_004_42bd:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_004_42bd

    ret


Call_004_42c4:
    ld a, [$d016]
    ld l, a
    ld a, [$d017]
    ld h, a
    ld bc, $d160
    ld d, $20

jr_004_42d1:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_004_42d1

    ret


Call_004_42d8:
    ld a, [$d040]
    ld b, a
    ld a, [$d060]
    or b
    ld b, a
    ld a, [$d080]
    or b
    ld b, a
    ld a, [$d0a0]
    or b
    rla
    ret c

    ld a, [$c160]
    bit 7, a
    jp z, Jump_004_42ff

    and $7f
    ld [$d210], a
    ld [$c161], a
    jp Jump_004_4313


Jump_004_42ff:
    xor a
    ld [$d040], a
    ld [$d060], a
    ld [$d080], a
    ld [$d0a0], a
    ld [$c160], a
    ld [$c161], a
    ret


Jump_004_4313:
    push hl
    push bc
    push de
    call Call_004_4081
    pop de
    pop bc
    pop hl
    ret


Call_004_431d:
    ld a, [$d160]
    and $f7
    ld [$d160], a
    call Call_004_44d2
    jp nc, Jump_004_4361

    call Call_004_4500
    jr nc, jr_004_438a

    cp $7f
    jr z, jr_004_4362

    call Call_004_44b2
    ld a, c
    ld [$d172], a
    ld a, [$d173]
    and $f8
    or b
    ld [$d173], a
    ld a, [$d160]
    and $08
    jr nz, jr_004_4361

    ld a, [$d169]
    sla a
    jr nc, jr_004_436f

    ld a, $00
    ld [$d16c], a
    ld a, [$d160]
    or $40
    and $d7
    ld [$d160], a

Jump_004_4361:
jr_004_4361:
    ret


jr_004_4362:
    xor a
    ld [$d16c], a
    ld a, [$d160]
    or $20
    ld [$d160], a
    ret


jr_004_436f:
    ld a, $ff
    ld [$d179], a
    xor a
    ld [$d16d], a
    ld [$d16e], a
    inc a
    ld [$d16c], a
    ld a, [$d160]
    or $40
    and $d7
    ld [$d160], a
    ret


jr_004_438a:
    ld a, $ff
    ld [$c186], a
    ret


Call_004_4390:
    ld a, [$d16c]
    cp $00
    jr z, jr_004_43cb

    ld a, [$d16d]
    ld d, a
    ld a, [$d16a]
    swap a
    and $f0
    ld c, a
    ld b, $00
    ld hl, $7b68
    add hl, bc
    ld b, $00

jr_004_43ab:
    ld a, [hl+]
    cp d
    jr z, jr_004_43b8

    inc hl
    inc b
    ld a, b
    cp $08
    jr nz, jr_004_43ab

    jr jr_004_43bc

jr_004_43b8:
    ld a, [hl+]
    ld [$d179], a

jr_004_43bc:
    ld a, [$d170]
    or $20
    ld [$d170], a
    ld a, [$d16d]
    inc a
    ld [$d16d], a

jr_004_43cb:
    ret


Call_004_43cc:
    ld a, [$d160]
    and $f7
    ld [$d160], a
    call Call_004_44d2
    jp nc, Jump_004_4410

    call Call_004_4500
    jr nc, jr_004_4439

    cp $7f
    jr z, jr_004_4411

    call Call_004_44b2
    ld a, c
    ld [$d172], a
    ld a, [$d173]
    and $f8
    or b
    ld [$d173], a
    ld a, [$d160]
    and $08
    jr nz, jr_004_4410

    ld a, [$d169]
    sla a
    jr nc, jr_004_441e

    ld a, $00
    ld [$d16c], a
    ld a, [$d160]
    or $40
    and $d7
    ld [$d160], a

Jump_004_4410:
jr_004_4410:
    ret


jr_004_4411:
    xor a
    ld [$d16c], a
    ld a, [$d160]
    or $20
    ld [$d160], a
    ret


jr_004_441e:
    ld a, $ff
    ld [$d179], a
    xor a
    ld [$d16d], a
    ld [$d16e], a
    inc a
    ld [$d16c], a
    ld a, [$d160]
    or $40
    and $d7
    ld [$d160], a
    ret


jr_004_4439:
    ld a, $ff
    ld [$c186], a
    ret


Call_004_443f:
    ld a, [$d16a]
    ld c, a
    ld b, $00
    ld hl, $7c68
    add hl, bc
    ld a, [hl]
    ld [$d179], a
    ret


Call_004_444e:
    ld a, [$d160]
    and $f7
    ld [$d160], a
    call Call_004_44d2
    jp nc, Jump_004_44b1

    call Call_004_4500
    jr nc, jr_004_44a3

    cp $7f
    jr z, jr_004_44a9

    push bc
    ld b, a
    ld a, [$d160]
    and $08
    ld a, b
    pop bc
    jr nz, jr_004_44b1

    sub $04

jr_004_4472:
    sub $0c
    jr nc, jr_004_4472

    add $0c
    sla a
    sla a
    ld c, a
    ld b, $00
    ld a, [$d17e]
    ld l, a
    ld a, [$d17f]
    ld h, a
    add hl, bc
    ld a, [hl+]
    ld [$d170], a
    ld a, [hl+]
    ld [$d171], a
    ld a, [hl+]
    ld [$d172], a
    ld a, [hl+]
    ld [$d173], a
    ld a, [$d160]
    or $40
    and $d7
    ld [$d160], a
    ret


jr_004_44a3:
    ld a, $ff
    ld [$c186], a
    ret


jr_004_44a9:
    ld a, [$d160]
    or $20
    ld [$d160], a

Jump_004_44b1:
jr_004_44b1:
    ret


Call_004_44b2:
    ld d, h
    ld e, l
    ld b, a
    ld a, [$d175]
    add b
    sub $10
    sla a
    ld l, a
    ld h, $00
    ld bc, $7cb2
    add hl, bc
    ld a, [$d17b]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ld h, d
    ld l, e
    ret


Call_004_44d2:
    ld a, [$d167]
    ld b, a
    ld a, [$d165]
    sub b
    ld [$d165], a
    ld a, [$d168]
    ld b, a
    ld a, [$d166]
    sbc b
    ld [$d166], a
    ret


Call_004_44e9:
    ld a, [$d163]
    ld b, a
    ld a, [$d165]
    add b
    ld [$d165], a
    ld a, [$d164]
    ld b, a
    ld a, [$d166]
    adc b
    ld [$d166], a
    ret


Call_004_4500:
    ld a, [$d161]
    ld l, a
    ld a, [$d162]
    ld h, a

Jump_004_4508:
    ld a, [hl+]
    ld [$d216], a
    cp $ff
    jp z, Jump_004_4586

    cp $7e
    jr z, jr_004_4563

    cp $08
    jr z, jr_004_4534

    cp $02
    jr z, jr_004_453b

    cp $03
    jr z, jr_004_4543

    cp $04
    jr z, jr_004_454b

    cp $80
    jr c, jr_004_4553

    cp $c0
    jr c, jr_004_456e

    cp $e0
    jr nc, jr_004_4593

    jp Jump_004_461f


jr_004_4534:
    ld a, [hl+]
    ld [$d175], a
    jp Jump_004_4508


jr_004_453b:
    ld a, $01
    ld [$d17a], a
    jp Jump_004_4508


jr_004_4543:
    ld a, $03
    ld [$d17a], a
    jp Jump_004_4508


jr_004_454b:
    ld a, $02
    ld [$d17a], a
    jp Jump_004_4508


jr_004_4553:
    call Call_004_44e9
    ld a, l
    ld [$d161], a
    ld a, h
    ld [$d162], a
    ld a, [$d216]
    scf
    ret


jr_004_4563:
    ld a, [$d160]
    or $08
    ld [$d160], a
    jp Jump_004_4508


jr_004_456e:
    push hl
    and $1f
    sla a
    ld c, a
    ld b, $00
    ld hl, $7c8a
    add hl, bc
    ld a, [hl+]
    ld [$d163], a
    ld a, [hl+]
    ld [$d164], a
    pop hl
    jp Jump_004_4508


Jump_004_4586:
    xor a
    ld [$d160], a
    ld [$d162], a
    call Call_004_46c8
    scf
    ccf
    ret


jr_004_4593:
    ld a, [hl+]
    ld c, a
    ld a, [$d216]
    cp $e0
    jp z, Jump_004_45a8

    cp $e1
    jr z, jr_004_45a8

    cp $e2
    jr z, jr_004_45d4

    jp Jump_004_4508


Jump_004_45a8:
jr_004_45a8:
    ld a, c
    sla a
    ld b, a
    ld a, [$d17e]
    add b
    ld e, a
    ld a, [$d17f]
    ld b, $00
    adc b
    ld d, a
    ld a, [de]
    inc de
    ld [$d170], a
    ld a, [de]
    ld [$d16a], a
    xor a
    ld [$d16b], a
    ld [$d171], a
    ld [$d173], a
    ld [$d178], a
    ld [$d169], a
    jp Jump_004_4508


jr_004_45d4:
    ld a, c
    sla a
    ld b, a
    ld a, [$d17e]
    add b
    ld e, a
    ld a, [$d17f]
    ld b, $00
    adc b
    ld d, a
    ld a, $00
    ldh [rNR30], a
    ld a, [de]
    ld [$d174], a
    inc de
    push hl
    sla a
    sla a
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, $7c6a
    add hl, bc
    ld c, $30
    ld b, $10

jr_004_4601:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_004_4601

    pop hl
    ld a, [de]
    ld [$d16a], a
    xor a
    ld [$d16b], a
    ld [$d171], a
    ld [$d173], a
    ld [$d178], a
    ld [$d169], a
    jp Jump_004_4508


Jump_004_461f:
    cp $cf
    jr z, jr_004_4657

    jr nc, jr_004_4684

    and $0f
    ld [$d214], a
    ld bc, $d180
    ld a, [$d16f]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    xor a
    ld [bc], a
    inc bc
    ld a, [$d214]
    ld [bc], a
    inc bc
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ld a, [$d16f]
    and $f0
    ld b, a
    ld a, [$d16f]
    add $04
    and $0f
    or b
    ld [$d16f], a
    jp Jump_004_4508


jr_004_4657:
    ld a, [$d16f]
    call Call_004_46a5
    jr nc, jr_004_4679

    ld a, [bc]
    inc a
    ld [bc], a
    ld d, a
    inc bc
    ld a, [bc]
    cp d
    jr z, jr_004_4671

    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    jp Jump_004_4508


jr_004_4671:
    ld a, [$d16f]
    sub $04
    ld [$d16f], a

jr_004_4679:
    ld a, [hl+]
    and $f0
    cp $d0
    jr z, jr_004_4679

    dec hl
    jp Jump_004_4508


jr_004_4684:
    and $0f
    dec a
    ld d, a
    ld a, [$d16f]
    call Call_004_46a5
    ld a, [bc]
    cp d
    jr z, jr_004_4679

jr_004_4692:
    ld a, [hl+]
    ld [$d214], a
    cp $cf
    jr z, jr_004_4657

    and $f0
    cp $d0
    jr nz, jr_004_4692

    ld a, [$d214]
    jr jr_004_4684

Call_004_46a5:
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    jr z, jr_004_46bc

    sub $04
    or c
    ld bc, $d180
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    scf
    ret


jr_004_46bc:
    ld a, $d1
    add c
    ld c, a
    ld a, $80
    adc $00
    ld b, a
    scf
    ccf
    ret


Call_004_46c8:
    ld a, [$d16f]
    and $f0
    cp $40
    jr z, jr_004_46e2

    cp $50
    jr z, jr_004_46f3

    cp $60
    jr z, jr_004_46fc

    cp $70
    jr z, jr_004_46eb

    cp $80
    jr z, jr_004_472f

    ret


jr_004_46e2:
    ld a, [$d040]
    or $40
    ld [$d040], a
    ret


jr_004_46eb:
    ld a, [$d0e0]
    or $40
    ld [$d0e0], a

jr_004_46f3:
    ld a, [$d060]
    or $40
    ld [$d060], a
    ret


jr_004_46fc:
    ld a, [$d080]
    or $40
    ld [$d080], a
    ld a, $00
    ldh [rNR30], a
    ld a, [$d094]
    ld b, a
    ld a, [$d174]
    xor b
    jr z, jr_004_472e

    ld a, [$d094]
    sla a
    sla a
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, $7c6a
    add hl, bc
    ld c, $30
    ld b, $10

jr_004_4728:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_004_4728

jr_004_472e:
    ret


jr_004_472f:
    ld a, [$d0a0]
    or $40
    ld [$d0a0], a
    ret


Call_004_4738:
    ld hl, $d21f
    xor a
    ld [hl], a
    ld bc, $d0c0
    call Call_004_49d6
    jr c, jr_004_474d

    ld bc, $d040
    call Call_004_49d6
    jr nc, jr_004_475b

jr_004_474d:
    sla a
    sla a
    jr c, jr_004_475b

    set 1, [hl]
    ld de, $d020
    call Call_004_49da

jr_004_475b:
    ld bc, $d120
    call Call_004_49d6
    jr c, jr_004_4773

    ld bc, $d0e0
    call Call_004_49d6
    jr c, jr_004_4773

    ld bc, $d060
    call Call_004_49d6
    jr nc, jr_004_4781

jr_004_4773:
    sla a
    sla a
    jr c, jr_004_4781

    set 0, [hl]
    ld de, $d018
    call Call_004_49da

jr_004_4781:
    ld bc, $d100
    call Call_004_49d6
    jr c, jr_004_4791

    ld bc, $d080
    call Call_004_49d6
    jr nc, jr_004_479f

jr_004_4791:
    sla a
    sla a
    jr c, jr_004_479f

    set 2, [hl]
    ld de, $d028
    call Call_004_49da

jr_004_479f:
    ld bc, $d140
    call Call_004_49d6
    jr c, jr_004_47af

    ld bc, $d0a0
    call Call_004_49d6
    jr nc, jr_004_47bd

jr_004_47af:
    sla a
    sla a
    jr c, jr_004_47bd

    set 3, [hl]
    ld de, $d030
    call Call_004_49da

jr_004_47bd:
    ld a, [hl]
    and $0f
    jr nz, jr_004_47c6

    xor a
    ldh [rNR52], a
    ret


jr_004_47c6:
    ld a, $80
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    call Call_004_49fd
    ldh [rNR51], a
    srl [hl]
    jr nc, jr_004_47dc

    call Call_004_482c
    jr jr_004_47ea

jr_004_47dc:
    ldh a, [rNR12]
    cp $08
    jr z, jr_004_47ea

    ld a, $08
    ldh [rNR12], a
    ld a, $80
    ldh [rNR14], a

jr_004_47ea:
    srl [hl]
    jr nc, jr_004_47f3

    call Call_004_48ee
    jr jr_004_4801

jr_004_47f3:
    ldh a, [rNR22]
    cp $08
    jr z, jr_004_4801

    ld a, $08
    ldh [rNR22], a
    ld a, $80
    ldh [rNR24], a

jr_004_4801:
    srl [hl]
    jr nc, jr_004_480a

    call Call_004_497c
    jr jr_004_4814

jr_004_480a:
    ldh a, [rNR32]
    and $60
    jr z, jr_004_4814

    ld a, $00
    ldh [rNR32], a

jr_004_4814:
    srl [hl]
    jr nc, jr_004_481d

    call Call_004_49a3
    jr jr_004_482b

jr_004_481d:
    ldh a, [rNR42]
    cp $08
    jr z, jr_004_482b

    ld a, $08
    ldh [rNR42], a
    ld a, $80
    ldh [rNR44], a

jr_004_482b:
    ret


Call_004_482c:
    ld a, [$d01d]
    cp $ff
    jr nz, jr_004_4839

    ld a, [$d019]
    call Call_004_49c0

jr_004_4839:
    ld [$d002], a
    ld a, [$d018]
    and $40
    jr z, jr_004_4870

    ld a, [$d01a]
    ld b, a
    sla a
    jr nc, jr_004_4852

    ld a, b
    add $10
    and $7f
    jr jr_004_4854

jr_004_4852:
    ld a, $08

jr_004_4854:
    ld [$d000], a
    ld a, [$d019]
    and $c0
    ld b, a
    ld a, [$d01c]
    srl a
    srl a
    srl a
    or b
    ld [$d001], a
    ld a, [$d01b]
    ld [$d003], a

jr_004_4870:
    ld a, [$d01c]
    ld b, a
    ld a, [$d019]
    call Call_004_48e0
    ld [$d004], a
    ld a, [$d018]
    and $40
    jr nz, jr_004_48b7

    ld a, [$d000]
    ld b, a
    ld a, [$d00a]
    cp b
    jr nz, jr_004_48b7

    ld a, [$d001]
    ld b, a
    ld a, [$d00b]
    cp b
    jr nz, jr_004_48bf

    ld a, [$d003]
    ld b, a
    ld a, [$d00d]
    cp b
    jr nz, jr_004_48c7

    ld a, [$d002]
    ld b, a
    ld a, [$d00c]
    cp b
    jr nz, jr_004_48cf

    ld a, [$d004]
    ld b, a
    ld a, [$d00e]
    cp b
    jr nz, jr_004_48d7

    ret


jr_004_48b7:
    ld a, [$d000]
    ldh [rNR10], a
    ld [$d00a], a

jr_004_48bf:
    ld a, [$d001]
    ldh [rNR11], a
    ld [$d00b], a

jr_004_48c7:
    ld a, [$d003]
    ldh [rNR13], a
    ld [$d00d], a

jr_004_48cf:
    ld a, [$d002]
    ldh [rNR12], a
    ld [$d00c], a

jr_004_48d7:
    ld a, [$d004]
    ldh [rNR14], a
    ld [$d00e], a
    ret


Call_004_48e0:
    and $20
    xor $20
    sla a
    or $80
    ld c, a
    ld a, b
    and $07
    or c
    ret


Call_004_48ee:
    ld a, [$d025]
    cp $ff
    jr nz, jr_004_48fb

    ld a, [$d021]
    call Call_004_49c0

jr_004_48fb:
    ld [$d007], a
    ld a, [$d020]
    and $40
    jr z, jr_004_491e

    ld a, [$d021]
    and $c0
    ld b, a
    ld a, [$d024]
    srl a
    srl a
    srl a
    or b
    ld [$d006], a
    ld a, [$d023]
    ld [$d008], a

jr_004_491e:
    ld a, [$d024]
    ld b, a
    ld a, [$d021]
    call Call_004_48e0
    ld [$d009], a
    ld a, [$d020]
    and $40
    jr nz, jr_004_495b

    ld a, [$d006]
    ld b, a
    ld a, [$d010]
    cp b
    jr nz, jr_004_495b

    ld a, [$d008]
    ld b, a
    ld a, [$d012]
    cp b
    jr nz, jr_004_4963

    ld a, [$d007]
    ld b, a
    ld a, [$d011]
    cp b
    jr nz, jr_004_496b

    ld a, [$d009]
    ld b, a
    ld a, [$d013]
    cp b
    jr nz, jr_004_4973

    ret


jr_004_495b:
    ld a, [$d006]
    ldh [rNR21], a
    ld [$d010], a

jr_004_4963:
    ld a, [$d008]
    ldh [rNR23], a
    ld [$d012], a

jr_004_496b:
    ld a, [$d007]
    ldh [rNR22], a
    ld [$d011], a

jr_004_4973:
    ld a, [$d009]
    ldh [rNR24], a
    ld [$d013], a
    ret


Call_004_497c:
    ld a, [$d028]
    and $40
    jr nz, jr_004_4984

    ret


jr_004_4984:
    xor a
    ldh [rNR30], a
    ldh [rNR31], a
    ld a, [$d02d]
    and $60
    ldh [rNR32], a
    ld a, [$d02b]
    ldh [rNR33], a
    ld a, $80
    ldh [rNR30], a
    ld a, [$d02c]
    and $07
    or $80
    ldh [rNR34], a
    ret


Call_004_49a3:
    ld a, [$d030]
    and $40
    jr nz, jr_004_49ab

    ret


jr_004_49ab:
    ld a, [$d031]
    ldh [rNR41], a
    ld a, [$d032]
    ldh [rNR42], a
    ld a, [$d033]
    ldh [rNR43], a
    ld a, [$d034]
    ldh [rNR44], a
    ret


Call_004_49c0:
    ld b, a
    and $10
    jr nz, jr_004_49d0

    ld a, b
    srl a
    srl a
    and $03
    inc a
    or $f0
    ret


jr_004_49d0:
    ld a, b
    swap a
    and $f0
    ret


Call_004_49d6:
    ld a, [bc]
    sla a
    ret


Call_004_49da:
    ld a, [bc]
    ld [de], a
    inc de
    and $bf
    ld [bc], a
    push hl
    ld hl, $0010
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $0005
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    ret


Call_004_49fd:
    ld b, $00
    ld c, $00
    ld a, [$d036]
    srl a
    rl b
    srl a
    rl c
    scf
    rl b
    scf
    rl c
    ld a, [$d026]
    srl a
    rl b
    srl a
    rl c
    ld a, [$d01e]
    srl a
    rl b
    srl a
    rl c
    ld a, c
    swap a
    or b
    ret


    sub e
    ld c, d
    add a
    ld c, h
    cp $4e
    inc a
    ld d, c
    db $d3
    ld d, d
    dec bc
    ld d, e
    ld d, c
    ld d, e
    adc l
    ld d, e
    and e
    ld d, e
    jp nc, Jump_000_0753

    ld d, h
    inc a
    ld d, h
    ret z

    ld e, b
    inc e
    ld e, d
    jr z, jr_004_4aa8

    ld a, $5d
    ld d, h
    ld e, l
    ld a, b
    ld e, l
    or $5d
    rla
    ld e, [hl]
    ld d, l
    ld e, [hl]
    ld a, e
    ld e, [hl]
    sbc l
    ld e, [hl]
    ld l, c
    ld e, a
    ldh a, [$ff5f]
    add hl, bc
    ld h, b
    ld a, [hl+]
    ld h, b
    ld c, b
    ld h, b
    ld h, d
    ld h, b
    ld a, e
    ld h, b
    ld h, d
    ld h, b
    ld a, [hl+]
    ld h, b
    db $eb
    ld h, b
    rlca
    ld h, c
    ld c, a
    ld a, b
    jr nz, jr_004_4ad6

    ld d, l
    ld h, c
    ld [hl], h
    ld h, c
    sub l
    ld h, c
    ret


    ld h, c
    and $61
    rst RST_38
    ld h, c
    ld d, $62
    dec [hl]
    ld h, d
    ld d, h
    ld h, d
    halt
    ld h, d
    sbc d
    ld h, d
    cp c
    ld h, d
    call c, $0362
    ld h, e
    inc e
    ld h, e
    ld bc, $a115
    ld c, d
    ld c, d
    ld c, e
    db $f4
    ld c, e
    ccf
    ld c, h
    ld [hl], l
    ld c, h
    ld a, e
    ld c, h
    ldh [rP1], a
    inc bc
    jp z, $ca80

    add b

jr_004_4aa8:
    sub b
    ld a, a
    ld a, a
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    inc [hl]
    ld a, a
    ld a, a
    inc sp
    ld a, [hl]
    adc b
    inc sp
    ld a, [hl]
    add c
    inc sp
    ld a, [hl]
    sub b
    inc sp
    ld a, a
    inc [hl]
    ld a, a
    ld sp, $802f
    ld sp, $837e
    ld sp, $907f
    ld a, a
    ld a, a
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l

jr_004_4ad6:
    inc [hl]
    ld a, a
    ld a, a
    inc sp
    ld a, [hl]
    adc b
    inc sp
    ld a, [hl]
    add c
    inc sp
    ld a, [hl]
    sub b
    inc sp
    ld a, a
    inc [hl]
    ld a, a
    ld sp, $802f
    ld sp, $837e
    ld sp, $907f
    ld a, a
    ld a, a
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld sp, $7f7f
    cpl
    ld a, [hl]
    adc b
    cpl
    ld a, [hl]
    add d
    cpl
    sub b
    ld a, a
    ld a, a
    sub c
    ld sp, $902f
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    add d
    dec l
    sub b
    ld a, a
    ld a, a
    ld a, [hl+]
    ld a, [hl]
    adc b
    ld a, [hl+]
    ld a, [hl]
    add d
    ld a, [hl+]
    sub b
    ld a, a
    ld a, a
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld sp, $7f7f
    cpl
    ld a, [hl]
    adc b
    cpl
    ld a, [hl]
    add d
    cpl
    sub b
    ld a, a
    ld a, a
    sub c
    ld sp, $902f
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    add d
    dec l
    sub b
    ld a, a
    ld a, a
    ld a, [hl+]
    ld a, [hl]
    adc b
    ld a, [hl+]
    ld a, [hl]
    add d
    ld a, a
    rst RST_08
    rst RST_08
    ld a, a
    rst RST_38
    pop hl
    ld bc, $8203
    ld a, a
    jp z, $ca82

    add d
    sub b
    ld a, a
    ld a, a
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    inc [hl]
    ld a, a
    ld a, a
    inc sp
    ld a, [hl]
    adc b
    inc sp
    ld a, [hl]
    add c
    inc sp
    ld a, [hl]
    sub b
    inc sp
    ld a, a
    inc [hl]
    ld a, a
    ld sp, $802f
    ld sp, $837e
    ld sp, $907f
    ld a, a
    ld a, a
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    inc [hl]
    ld a, a
    ld a, a
    inc sp
    ld a, [hl]
    adc b
    inc sp
    ld a, [hl]
    add c
    inc sp
    ld a, [hl]
    sub b
    inc sp
    ld a, a
    inc [hl]
    ld a, a
    ld sp, $802f
    ld sp, $837e
    ld sp, $907f
    ld a, a
    ld a, a
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld sp, $7f7f
    cpl
    ld a, [hl]
    adc b
    cpl
    ld a, [hl]
    add d
    cpl
    sub b
    ld a, a
    ld a, a
    sub c
    ld sp, $902f
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    add d
    dec l
    sub b
    ld a, a
    ld a, a
    ld a, [hl+]
    ld a, [hl]
    adc b
    ld a, [hl+]
    ld a, [hl]
    add d
    ld a, [hl+]
    sub b
    ld a, a
    ld a, a
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    dec l
    ld a, [hl]
    dec l
    ld sp, $7f7f
    cpl
    ld a, [hl]
    adc b
    cpl
    ld a, [hl]
    add d
    cpl
    sub b
    ld a, a
    ld a, a
    sub c
    ld sp, $902f
    dec l
    ld a, [hl]
    dec l
    ld a, [hl+]
    add d
    dec l
    sub b
    ld a, a
    ld a, a
    ld a, [hl+]
    ld a, [hl]
    adc b
    ld a, [hl+]
    ld a, [hl]
    add d
    ld a, a
    rst RST_08
    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    jp z, $ca82

    add d
    adc b
    ld a, a
    add d
    ld a, [hl+]
    ld sp, $3738
    ld [hl], $31
    inc [hl]
    dec [hl]
    ld [hl], $31
    ld a, [hl+]
    inc l
    dec l
    dec h
    jr z, jr_004_4c37

    ld a, [hl+]
    inc l
    dec h
    inc l
    ld a, [hl+]
    dec h
    jr z, jr_004_4c3f

    ld a, [hl+]
    inc l
    dec l
    ld a, [hl+]
    dec h
    add hl, hl
    ld a, [hl+]

jr_004_4c1d:
    inc h
    inc hl
    ld h, $2a
    cpl
    cpl
    inc l
    dec h
    add hl, hl
    ld a, [hl+]
    inc l
    dec h
    inc l
    ld a, [hl+]
    daa
    jr z, @+$2c

    inc hl
    inc hl
    ld a, [hl+]
    inc hl
    dec h
    dec h
    inc l
    dec hl
    ld a, [hl+]

jr_004_4c37:
    daa
    jr z, jr_004_4c63

    ld a, [hl+]
    rst RST_08
    rst RST_08
    ld a, a
    rst RST_38

jr_004_4c3f:
    inc bc
    jp z, $ca80

    add b
    add d
    inc [hl]
    inc [hl]
    inc [hl]
    rst RST_00
    add d
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    rst RST_08

jr_004_4c63:
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    add d
    ld [hl], $cf
    rst RST_08
    ld a, a
    rst RST_38
    ld b, b
    ld [bc], a
    add b
    ld bc, $0000
    jr c, jr_004_4c1d

    nop
    ret nz

    jr nc, @-$7e

    nop
    ret nz

    nop
    or d
    nop
    add b
    ld bc, $950e
    ld c, h
    ld d, c
    ld c, l
    dec bc
    ld c, [hl]
    xor b
    ld c, [hl]
    ldh a, [$ff4e]
    or $4e
    ldh [rP1], a
    inc bc
    jp z, $ca83

    add e
    add h
    inc [hl]
    ld a, a
    add e
    cpl
    inc [hl]
    scf
    dec sp
    scf
    jp nz, $8883

    add hl, sp
    add e
    ld a, a
    cpl
    inc [hl]
    scf
    dec sp
    scf
    adc b
    add hl, sp
    add e
    ld a, a
    cpl
    inc [hl]
    scf
    dec sp
    scf
    adc d
    add hl, sp
    add h
    ld a, a
    add e
    add hl, sp
    scf
    inc [hl]
    scf
    adc d
    add hl, sp
    add h
    ld a, a
    add e
    add hl, sp
    scf
    inc [hl]
    sub c
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    sub d
    scf
    add hl, sp
    add e
    ld a, [hl-]
    add hl, sp
    add d
    scf
    add e
    inc [hl]
    ld [hl-], a
    pop de
    add e
    add e
    ld a, a
    cpl
    inc [hl]
    scf
    dec sp
    scf
    jp nc, $8283

    inc [hl]
    add e
    ld a, a
    inc [hl]
    scf
    inc [hl]
    rst RST_08
    adc b
    ld a, $7e
    add e
    ld a, $7f
    add d
    ld b, b
    add e
    ld a, $3c
    adc b
    dec sp
    ld a, [hl]
    add d
    ld a, [hl-]
    add e
    ld a, a
    inc [hl]
    scf
    inc [hl]
    adc b
    ld a, $7e
    add e
    ld a, $7f
    add d
    ld b, b
    add e
    ld a, $3c
    add c
    dec sp
    ld a, [hl]
    add e
    dec sp
    add hl, sp
    add h
    dec sp
    ld a, a
    add e
    cpl
    inc [hl]
    scf
    dec sp
    scf
    adc b
    add hl, sp
    add e
    ld a, a
    cpl
    inc [hl]
    scf
    dec sp
    scf
    adc b
    add hl, sp
    add e
    ld a, a
    cpl
    inc [hl]
    scf
    dec sp
    scf
    adc d
    add hl, sp
    add h
    ld a, a
    add e
    add hl, sp
    scf
    inc [hl]
    scf
    adc d
    add hl, sp
    add h
    ld a, a
    add e
    add hl, sp
    scf
    inc [hl]
    add h
    scf
    ld a, a
    add e
    ld a, [hl-]
    add hl, sp
    add d
    scf
    add e
    inc [hl]
    ld [hl-], a
    rst RST_08
    rst RST_08
    sub b
    ld a, a
    sub c
    ld a, a
    rst RST_38
    pop hl
    ld bc, $9003
    ld a, a
    sub c
    ld a, a
    jp z, $ca83

    add e
    add h
    inc [hl]
    ld a, a
    add e
    cpl
    inc [hl]
    scf
    dec sp
    scf
    jp nz, $8883

    add hl, sp
    add e
    ld a, a
    cpl
    inc [hl]
    scf
    dec sp
    scf
    adc b
    add hl, sp
    add e
    ld a, a
    cpl
    inc [hl]
    scf
    dec sp
    scf
    adc d
    add hl, sp
    add h
    ld a, a
    add e
    add hl, sp
    scf
    inc [hl]
    scf
    adc d
    add hl, sp
    add h
    ld a, a
    add e
    add hl, sp
    scf
    inc [hl]
    sub c
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    scf
    add e
    ld a, [hl-]
    add hl, sp
    add d
    scf
    add e
    inc [hl]
    ld [hl-], a
    pop de
    add e
    add e
    ld a, a
    cpl
    inc [hl]
    scf
    dec sp
    scf
    jp nc, $8283

    inc [hl]
    add e
    ld a, a
    inc [hl]
    scf
    inc [hl]
    rst RST_08
    adc b
    ld a, $7e
    add e
    ld a, $7f

jr_004_4db1:
    add d
    ld b, b
    add e
    ld a, $3c
    adc b
    dec sp
    ld a, [hl]
    add d
    ld a, [hl-]
    add e
    ld a, a
    inc [hl]
    scf
    inc [hl]
    adc b
    ld a, $7e
    add e
    ld a, $7f
    add d
    ld b, b
    add e
    ld a, $3c
    add c
    dec sp
    ld a, [hl]
    add e
    dec sp
    add hl, sp
    add h
    dec sp
    ld a, a
    add e
    cpl
    inc [hl]
    scf
    dec sp
    scf
    adc b
    add hl, sp
    add e
    ld a, a
    cpl
    inc [hl]
    scf
    dec sp
    scf
    adc b
    add hl, sp
    add e
    ld a, a
    cpl
    inc [hl]
    scf
    dec sp
    scf
    adc d
    add hl, sp
    add h
    ld a, a
    add e
    add hl, sp
    scf
    inc [hl]
    scf
    adc d
    add hl, sp
    add h
    ld a, a
    add e
    add hl, sp
    scf
    inc [hl]
    add h
    scf
    ld a, a
    add e
    ld a, [hl-]
    add hl, sp
    add d
    scf
    add e
    inc [hl]
    ld [hl-], a
    rst RST_08
    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    jp z, $ca83

    add e
    add e

jr_004_4e13:
    jr z, jr_004_4e94

    add c
    ld a, a
    jp nz, $8383

    inc [hl]
    add c
    ld a, a
    add e
    inc [hl]
    inc sp
    ld a, a
    add c
    ld a, a
    add e
    ld [hl-], a
    add c
    ld a, a
    add e
    ld [hl-], a
    ld sp, $817f
    ld a, a
    add e
    jr nc, jr_004_4db1

    ld a, a
    add e
    jr nc, jr_004_4e61

    ld a, a
    add c
    ld a, a
    pop de
    add e
    add e
    ld a, [hl+]
    add c
    ld a, a
    add e
    ld a, [hl+]
    cpl
    ld a, a
    add c
    ld a, a
    jp nc, $8383

    ld a, [hl+]
    add d
    ld a, a
    add e
    cpl
    add d
    ld a, a
    add e
    jr z, jr_004_4ecf

    add c
    ld a, a
    rst RST_08
    add e
    dec l
    add c
    ld a, a
    add e
    dec l
    ld [hl-], a
    ld a, a
    add c
    ld a, a
    add e
    dec hl
    add c
    ld a, a

jr_004_4e61:
    add e
    dec hl
    jr z, jr_004_4ee4

    add c
    ld a, a
    add e
    dec l
    add c
    ld a, a
    add e
    dec l
    ld [hl-], a
    ld a, a
    add c
    ld a, a
    add e
    ld a, [hl+]
    add c
    ld a, a
    add e
    ld a, [hl+]
    cpl
    ld a, a
    add c

jr_004_4e7a:
    ld a, a
    add e
    inc [hl]
    add c
    ld a, a
    add e
    inc [hl]
    inc sp
    ld a, a
    add c
    ld a, a
    add e
    ld [hl-], a
    add c
    ld a, a
    add e
    ld [hl-], a
    ld sp, $817f
    ld a, a
    add e
    jr nc, jr_004_4e13

    ld a, a
    add e

jr_004_4e94:
    jr nc, jr_004_4ec3

    ld a, a
    add c
    ld a, a
    add e
    ld a, [hl+]
    add d
    ld a, a
    add e
    cpl
    add d
    ld a, a
    rst RST_08
    rst RST_08
    sub b
    ld a, a
    sub c
    ld a, a
    rst RST_38
    inc bc
    jp z, $ca83

    add e
    call nz, $8383
    dec [hl]
    inc [hl]
    add d
    inc [hl]
    add e
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    add d
    inc [hl]
    add e
    inc [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    add d
    inc [hl]
    add e

jr_004_4ec3:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    add d
    inc [hl]
    add e
    inc [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    add d

jr_004_4ecf:
    inc [hl]
    add e
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    add d
    inc [hl]
    add e
    inc [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    add d
    inc [hl]
    add e
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    add d

jr_004_4ee4:
    inc [hl]
    add e
    inc [hl]
    inc [hl]
    rst RST_08
    rst RST_08
    rst RST_08
    sub b
    ld a, a
    sub c
    ld a, a
    rst RST_38
    ld b, b
    inc bc
    ld a, a
    inc b
    nop
    nop
    nop
    sub d
    jr nz, jr_004_4e7a

    inc [hl]
    add c
    ld b, b
    ret nz

    ld bc, $0c11
    ld c, a
    sbc c
    ld c, a
    ld h, $50
    db $f4
    ld d, b
    ld a, [hl+]
    ld d, c
    jr nc, @+$53

    ldh [rP1], a
    inc bc
    adc b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    jp z, $ca84

    add h
    add h
    scf
    ld [hl-], a
    add e
    ld sp, $817e
    ld sp, $7f88
    add h
    scf
    ld sp, $2f83
    ld a, [hl]
    add c
    cpl
    adc b
    ld a, a
    add h
    scf
    ld [hl-], a
    add e
    ld sp, $817e
    ld sp, $7f88
    add h
    scf
    ld sp, $2f83
    ld a, [hl]
    add c
    cpl
    adc b
    ld a, a
    add h
    inc a
    scf
    add e
    ld [hl], $7e
    add c
    ld [hl], $88
    ld a, a
    add h
    inc a
    ld [hl], $83
    inc [hl]
    ld a, [hl]
    add c
    inc [hl]
    adc b
    ld a, a
    add h
    scf
    ld [hl-], a
    add e
    ld sp, $817e
    ld sp, $7f88
    add h
    scf
    ld sp, $2f83
    ld a, [hl]
    add c
    cpl
    adc b
    ld a, a
    add h
    ld a, $37
    add e
    ld [hl], $7e
    add c
    ld [hl], $88
    ld a, a
    add h
    inc a
    ld [hl], $83
    inc [hl]
    ld a, [hl]
    add c
    inc [hl]
    adc b
    ld a, a
    add h
    scf
    ld [hl-], a
    add e
    ld sp, $817e
    ld sp, $7f88
    add h
    scf
    ld sp, $2f83
    ld a, [hl]
    add c
    cpl
    adc b
    ld a, a
    rst RST_08
    rst RST_08
    adc d
    ld a, a
    rst RST_38
    pop hl
    ld bc, $8a03
    ld a, a
    adc b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    jp z, $ca84

    add h
    add h
    scf
    ld [hl-], a
    add e
    ld sp, $817e
    ld sp, $7f88
    add h
    scf
    ld sp, $2f83
    ld a, [hl]
    add c
    cpl
    adc b
    ld a, a
    add h
    scf
    ld [hl-], a
    add e
    ld sp, $817e
    ld sp, $7f88
    add h
    scf
    ld sp, $2f83
    ld a, [hl]
    add c
    cpl
    adc b
    ld a, a
    add h
    inc a
    scf
    add e
    ld [hl], $7e
    add c
    ld [hl], $88
    ld a, a
    add h
    inc a
    ld [hl], $83
    inc [hl]
    ld a, [hl]
    add c
    inc [hl]
    adc b
    ld a, a
    add h
    scf
    ld [hl-], a
    add e
    ld sp, $817e
    ld sp, $7f88
    add h
    scf
    ld sp, $2f83
    ld a, [hl]
    add c
    cpl
    adc b
    ld a, a
    add h
    ld a, $37
    add e
    ld [hl], $7e
    add c
    ld [hl], $88
    ld a, a
    add h
    inc a
    ld [hl], $83
    inc [hl]
    ld a, [hl]
    add c
    inc [hl]
    adc b
    ld a, a
    add h
    scf
    ld [hl-], a
    add e
    ld sp, $817e
    ld sp, $7f88
    add h
    scf
    ld sp, $2f83
    ld a, [hl]
    add c
    cpl
    adc b
    ld a, a
    rst RST_08
    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    add e
    jr z, @+$81

    ld a, a
    jr z, jr_004_50ae

    ld h, $28
    ld a, a
    ld a, a
    ld a, a
    ld h, $27
    jr z, @+$81

    ld a, a
    jr z, jr_004_50ba

    ld h, $28
    ld a, a
    ld a, a
    inc hl
    ld h, $27
    jr z, jr_004_50c3

    ld a, a
    jr z, jr_004_50c6

    ld h, $28
    ld a, a
    ld a, a
    ld a, a
    ld h, $27
    jr z, jr_004_50cf

    ld a, a
    jr z, jr_004_50d2

    ld h, $28
    ld a, a
    ld a, a
    inc hl
    ld h, $27
    jp z, $ca83

    add e
    add e
    jr z, jr_004_50e0

    ld a, a
    jr z, jr_004_50e3

    ld h, $28
    ld a, a
    ld a, a
    ld a, a
    ld h, $27
    jr z, jr_004_50ec

    ld a, a
    jr z, jr_004_50ef

    ld h, $28
    ld a, a
    ld a, a
    inc hl
    ld h, $27
    jr z, jr_004_50f8

    ld a, a
    jr z, @+$81

    ld h, $28
    ld a, a
    ld a, a
    ld a, a
    ld h, $27
    jr z, jr_004_5104

    ld a, a
    jr z, @+$81

    ld h, $28
    ld a, a
    ld a, a
    jr z, @+$2d

    inc l
    dec l
    ld a, a
    ld a, a
    dec l
    ld a, a
    dec hl
    dec l
    ld a, a
    ld a, a
    ld a, a
    dec hl
    inc l
    dec l
    ld a, a
    ld a, a
    dec l
    ld a, a
    dec hl
    dec l
    ld a, a
    ld a, a
    inc hl
    ld h, $27
    jr z, jr_004_5128

    ld a, a
    jr z, jr_004_512b

    ld h, $28

jr_004_50ae:
    ld a, a
    ld a, a
    ld a, a
    ld h, $27
    jr z, jr_004_5134

    ld a, a

jr_004_50b6:
    jr z, jr_004_5137

    ld h, $28

jr_004_50ba:
    ld a, a
    ld a, a
    dec hl
    dec l
    ld l, $2f
    ld a, a
    ld a, a
    cpl

jr_004_50c3:
    ld a, a
    dec l
    cpl

jr_004_50c6:
    ld a, a
    ld a, a
    ld a, a
    dec hl
    inc l
    dec l
    ld a, a
    ld a, a
    dec l

jr_004_50cf:
    ld a, a
    dec hl
    dec l

jr_004_50d2:
    ld a, a
    ld a, a
    inc hl
    ld h, $27
    jr z, jr_004_5158

    ld a, a
    jr z, jr_004_515b

    ld h, $28
    ld a, a
    ld a, a

jr_004_50e0:
    ld a, a

jr_004_50e1:
    ld h, $27

jr_004_50e3:
    jr z, jr_004_5164

    ld a, a
    jr z, @+$81

    ld h, $28
    ld a, a
    ld a, a

jr_004_50ec:
    inc hl
    ld h, $27

jr_004_50ef:
    rst RST_08
    rst RST_08
    adc d
    ld a, a
    rst RST_38
    inc bc
    call nz, $8383

jr_004_50f8:
    inc [hl]
    add d
    ld [hl], $7f
    add e
    dec [hl]
    inc [hl]
    add d
    ld [hl], $7f
    add e
    dec [hl]

jr_004_5104:
    rst RST_08
    jp z, $ca83

    add e
    add $83
    add e
    inc [hl]
    add d
    ld [hl], $7f
    add e
    dec [hl]
    inc [hl]
    add d
    ld [hl], $7f
    add e
    dec [hl]
    inc [hl]
    add d
    ld [hl], $7f
    add e
    dec [hl]
    inc [hl]
    add d
    ld [hl], $7f
    add e
    dec [hl]
    rst RST_08
    rst RST_08
    rst RST_08
    adc d

jr_004_5128:
    ld a, a
    rst RST_38
    ld b, b

jr_004_512b:
    nop
    add b
    dec b
    nop
    nop
    jr c, jr_004_50d2

    nop
    ret nz

jr_004_5134:
    jr nz, jr_004_50b6

    db $10

jr_004_5137:
    ret nz

    nop
    ld h, b
    db $10
    add b
    ld bc, $4a0d
    ld d, c
    rst RST_18
    ld d, c
    adc h
    ld d, d
    call nz, $c552
    ld d, d
    db $d3
    ld d, d
    ldh [rP1], a
    inc bc
    jp z, $ca84

    add h
    add h
    dec a
    jr c, @+$36

    jr c, jr_004_5188

    inc l

jr_004_5158:
    jr z, @+$2e

    dec h

jr_004_515b:
    jr nz, jr_004_5179

    jr nz, jr_004_50e1

    dec h
    add h
    dec a
    add hl, sp
    inc [hl]

jr_004_5164:
    add hl, sp
    ld sp, $282d
    dec l
    dec h
    ld hl, $211c
    add d
    ld hl, $3c84
    jr c, jr_004_51a6

    jr c, jr_004_51a5

    inc l
    daa
    inc l
    inc h

jr_004_5179:
    jr nz, jr_004_51a2

    inc h
    add d
    inc h
    add h
    dec a
    jr c, jr_004_51b6

    jr c, jr_004_51b5

    inc l
    jr z, jr_004_51b3

    dec h

jr_004_5188:
    jr nz, jr_004_51a6

    jr nz, @-$7b

    dec h
    add h
    ld a, a
    ldh [rSB], a
    inc l
    ld sp, $332c
    inc l
    inc [hl]
    inc l

jr_004_5198:
    ld [hl], $2c
    inc [hl]
    inc l
    inc sp
    inc l
    ld sp, $302c
    inc l

jr_004_51a2:
    ld sp, $2f2c

jr_004_51a5:
    inc l

jr_004_51a6:
    add c
    dec l
    adc d
    ld a, a

jr_004_51aa:
    add h
    inc [hl]
    add hl, sp
    inc [hl]

jr_004_51ae:
    dec sp
    inc [hl]
    dec a
    inc [hl]
    dec sp

jr_004_51b3:
    inc [hl]
    add hl, sp

jr_004_51b5:
    inc [hl]

jr_004_51b6:
    jr c, jr_004_51ec

    ld [hl], $2f
    ld [hl], $2f
    adc b
    dec sp
    add d
    ld a, a
    add h
    inc h

jr_004_51c2:
    daa
    ld a, [hl+]
    inc l
    jr nc, jr_004_51f1

    inc l
    jr nc, jr_004_51fd

jr_004_51ca:
    inc l
    jr nc, jr_004_5200

    ld [hl], $38

jr_004_51cf:
    inc a
    ccf
    ldh [rSC], a
    add c
    ld [hl], $82
    inc [hl]
    inc sp
    adc b
    inc [hl]
    add d
    ld a, a
    rst RST_08
    rst RST_08
    rst RST_38
    pop hl
    inc bc
    inc bc

jr_004_51e2:
    jp z, $ca84

    add h
    add h
    jr c, jr_004_521d

    ld sp, $2c34

jr_004_51ec:
    jr z, @+$27

    jr z, @+$2a

    dec h

jr_004_51f1:
    jr nz, @+$27

    add d
    jr z, @-$7a

    add hl, sp
    inc [hl]
    ld sp, $2d34
    jr z, @+$27

jr_004_51fd:
    jr z, jr_004_5227

    dec h

jr_004_5200:
    ld hl, $8225
    jr z, @-$7a

    jr c, jr_004_523a

    jr nc, @+$35

    inc l
    daa
    inc h
    daa
    daa
    inc h
    inc l
    daa
    add d
    jr nz, jr_004_5198

    jr c, jr_004_524a

    ld sp, $2c34
    jr z, jr_004_5240

    jr z, jr_004_523d

jr_004_521d:
    inc e
    add hl, de
    inc e
    add d
    jr nz, jr_004_51ae

    jr z, jr_004_51aa

    ld a, a
    adc e

jr_004_5227:
    ld a, [hl+]
    add l
    ld a, a
    adc e
    inc l
    add l
    ld a, a
    adc e
    dec l
    add l
    ld a, a
    adc e
    inc l
    add l
    ld a, a
    adc e
    ld a, [hl+]
    add l
    ld a, a

jr_004_523a:
    adc e
    jr z, jr_004_51c2

jr_004_523d:
    ld a, a
    adc e
    daa

jr_004_5240:
    add l
    ld a, a
    adc e
    jr z, jr_004_51ca

    ld a, a
    adc e
    add hl, hl
    add l
    ld a, a

jr_004_524a:
    add c
    jr z, jr_004_51cf

    ld a, a
    adc e
    ld sp, $7f85
    adc e
    inc [hl]
    add l
    ld a, a
    adc e
    add hl, sp
    add l
    ld a, a
    adc e
    jr c, jr_004_51e2

    ld a, a
    adc e
    ld [hl], $85
    ld a, a
    adc e
    inc [hl]
    add l
    ld a, a
    adc e
    inc sp
    add l
    ld a, a
    adc e
    ld sp, $7f85
    adc b
    inc sp
    add d
    ld a, a
    add h
    jr nz, jr_004_5299

    daa
    ld a, [hl+]
    inc l
    daa
    ld a, [hl+]
    inc l
    jr nc, jr_004_52a7

    inc l
    jr nc, jr_004_52b3

    ld [hl], $38
    inc a
    pop hl
    inc b
    add b
    dec a
    ld a, [hl]
    dec a
    rst RST_08
    rst RST_08
    rst RST_38
    ldh [c], a
    dec b
    inc bc
    jp z, $ca8a

    adc d
    add b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_004_5299:
    add d
    ld a, a
    adc d
    ld hl, $7f84
    add c
    ld a, a
    adc d
    dec h
    add h
    ld a, a
    adc b
    ld a, a

jr_004_52a7:
    adc d
    daa
    add h
    ld a, a
    adc b
    ld a, a
    adc d
    inc h
    add h
    ld a, a
    adc b
    ld a, a

jr_004_52b3:
    adc d
    dec h
    add h
    ld a, a
    ldh [c], a
    ld b, $82
    ld b, l
    ld b, h
    ld b, d
    adc b
    ld b, h
    add d
    ld a, a
    rst RST_08
    rst RST_08
    rst RST_38
    rst RST_38
    ld b, b
    rlca
    nop
    rlca
    nop
    ld [$0600], sp
    add b
    add hl, bc
    nop
    nop
    nop
    ld bc, $1803
    pop hl
    ld d, d
    db $f4
    ld d, d
    rlca
    ld d, e
    ld [$0953], sp
    ld d, e
    dec bc
    ld d, e
    ldh [rP1], a
    inc bc
    add e
    ld [hl-], a
    ld sp, $3132
    ld [hl-], a
    ld sp, $3132
    ld [hl-], a
    ld sp, $3132
    adc b
    ld [hl-], a
    rst RST_38
    pop hl
    nop
    inc bc
    add e
    jr nc, @+$31

    jr nc, @+$31

    jr nc, jr_004_532d

    jr nc, @+$31

    jr nc, jr_004_5331

    jr nc, jr_004_5333

    adc b
    jr nc, @+$01

    rst RST_38
    rst RST_38
    ld b, b
    nop
    inc bc
    ld d, $19
    ld d, e
    jr nc, jr_004_5364

    ld c, l
    ld d, e
    ld c, [hl]
    ld d, e
    ld c, a
    ld d, e
    ld d, c
    ld d, e
    ldh [rP1], a
    inc bc
    add e
    ld a, [hl-]
    jr nc, @+$42

    ld [hl], $32
    ld a, $2a
    inc sp
    ld a, [hl-]
    jr nc, jr_004_5368

    ld [hl], $32
    ld a, $2a
    inc sp

jr_004_532d:
    add b
    ld a, $ff
    pop hl

jr_004_5331:
    nop
    inc bc

jr_004_5333:
    add h
    ld a, a
    add e
    inc l
    ld [hl], $2f
    jr z, jr_004_5371

    cpl
    ld a, [hl+]
    add h
    inc sp
    ld a, a
    add e
    inc l
    ld [hl], $2f
    jr z, jr_004_537c

    cpl
    ld a, [hl+]
    add h
    inc sp
    add b
    dec a
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    inc bc
    ld [de], a
    ld e, a
    ld d, e
    ld [hl], h
    ld d, e
    adc c
    ld d, e
    adc d
    ld d, e
    adc e
    ld d, e
    adc l
    ld d, e
    ldh [rP1], a
    inc bc
    add e
    ld c, h

jr_004_5364:
    ld c, d
    ld c, b
    ld b, [hl]
    ld b, h

jr_004_5368:
    ld b, d
    ld b, b
    ld a, $3c
    ld a, [hl-]
    jr c, jr_004_53a5

    inc [hl]
    ld a, a

jr_004_5371:
    add d
    ld a, a
    rst RST_38
    pop hl
    nop
    inc bc
    add e
    inc e
    ld e, $20
    ld [hl+], a

jr_004_537c:
    inc h
    ld h, $28
    ld a, [hl+]
    inc l
    ld l, $30
    ld [hl-], a
    inc [hl]
    ld a, a
    add d
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    nop
    inc bc
    db $10
    sbc e
    ld d, e
    sbc h
    ld d, e
    sbc a
    ld d, e
    and b
    ld d, e
    and c
    ld d, e
    and e
    ld d, e
    rst RST_38
    add h
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    inc bc
    db $10

jr_004_53a5:
    or c
    ld d, e
    cp [hl]
    ld d, e
    adc $53
    rst RST_08
    ld d, e
    ret nc

    ld d, e
    jp nc, $e053

    nop
    inc bc
    jp nz, $8282

    jr c, jr_004_53ea

    inc l
    inc l
    inc sp
    rst RST_08
    rst RST_38
    pop hl
    nop
    inc bc
    jp nz, $8382

    ld a, a
    add d
    inc l
    inc sp
    jr c, jr_004_53fb

    add e
    inc l
    rst RST_08
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    inc bc
    inc bc
    db $10
    ldh [rHDMA3], a
    db $ec
    ld d, e
    ei
    ld d, e
    inc b
    ld d, h
    dec b
    ld d, h
    rlca
    ld d, h
    ldh [rP1], a
    inc bc
    jp nz, $8282

    ld l, $2e
    jr nc, @+$32

jr_004_53ea:
    rst RST_08
    rst RST_38
    pop hl
    nop
    inc bc
    jp nz, $8382

    ld a, a
    add d
    dec l
    dec l
    cpl
    add e
    cpl
    rst RST_08
    rst RST_38

jr_004_53fb:
    ldh [c], a
    nop
    inc bc
    jp nz, $8080

    ld [hl+], a

jr_004_5402:
    rst RST_08
    rst RST_38
    rst RST_38
    nop
    nop
    ld bc, $1512
    ld d, h
    inc h
    ld d, h
    jr nc, jr_004_5463

    add hl, sp
    ld d, h
    ld a, [hl-]
    ld d, h
    inc a
    ld d, h
    ldh [rP1], a
    inc bc
    jp nz, $8382

    ld a, a
    add d
    scf
    scf
    scf
    add e
    scf
    rst RST_08
    rst RST_38
    pop hl

jr_004_5425:
    nop
    inc bc
    jp nz, $8282

    jr nc, jr_004_546a

    jr nc, jr_004_546c

    rst RST_08
    rst RST_38
    ldh [c], a
    nop
    inc bc
    jp nz, $8080

    ld h, $cf
    rst RST_38
    rst RST_38
    nop
    inc bc
    ld bc, $4a0e
    ld d, h
    ld b, $56
    jp nz, Jump_004_5e57

    ld e, b
    or [hl]
    ld e, b

jr_004_5448:
    cp h
    ld e, b
    ldh [rP1], a
    inc bc
    add b
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    inc l
    jp z, $ca83

    add e
    sub b
    ld sp, $317e
    inc l
    inc sp
    ld a, [hl]
    inc sp
    inc l
    inc [hl]

jr_004_5463:
    ld a, [hl]
    inc [hl]
    inc l
    ld [hl], $7e
    ld [hl], $2c

jr_004_546a:
    add l
    scf

jr_004_546c:
    adc d
    jr c, jr_004_54ed

    add l
    jr c, jr_004_5402

    inc [hl]
    ld a, [hl]
    inc [hl]
    ld sp, $827e
    ld sp, $7f90
    ld a, a
    cpl
    ld sp, $317e
    cpl
    inc sp
    ld a, [hl]
    inc sp
    cpl
    inc [hl]
    ld a, [hl]
    inc [hl]
    cpl
    ld [hl], $7e
    ld [hl], $2f
    add l
    scf
    adc d
    jr c, jr_004_5510

    add l
    jr c, jr_004_5425

    inc [hl]
    ld a, [hl]
    inc [hl]
    ld sp, $827e
    ld sp, $907f
    ld a, a
    ld a, a
    cpl
    dec [hl]
    ld a, [hl]
    dec [hl]
    jr c, @-$7b

    dec [hl]
    ld [hl], $3a
    dec a
    ld b, c
    ld b, h
    ld b, d
    ld b, c

jr_004_54ae:
    sub b
    ld a, a
    ld a, a
    dec a
    ld a, a

jr_004_54b3:
    ld a, a
    add hl, sp
    add d
    jr c, jr_004_5448

    add hl, sp
    ld a, [hl]
    add hl, sp
    jr c, jr_004_553b

    adc c
    jr c, @-$7b

    ld a, a
    adc b
    ld a, a
    add l
    scf
    ld [hl], $8a
    inc [hl]
    sub b
    ld [hl], $7e
    ld [hl], $31
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $7e
    adc c
    ld [hl], $83
    ld a, a
    adc b
    ld a, a
    add l
    scf
    ld [hl], $8a
    inc [hl]
    sub b
    ld [hl], $7e
    ld [hl], $31
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $37
    ld a, [hl]
    scf
    ld [hl], $34
    ld a, [hl]
    inc [hl]

jr_004_54ed:
    ld sp, $897e
    ld sp, $907f
    ld a, a
    ld a, a
    sub c
    inc a
    dec a
    sub b
    ld a, a
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, a
    ld [hl], $82
    inc [hl]
    sub b
    dec [hl]
    ld a, [hl]
    dec [hl]
    inc sp
    ld a, [hl]
    add d
    inc sp
    ld a, a
    sub b
    ld a, a
    ld a, a
    sub c
    inc a
    dec a

jr_004_5510:
    sub b
    ld a, a
    ld a, a
    sub c
    ccf
    ld b, b
    sub b
    ld a, a
    ld a, a
    sub c
    inc a
    dec a
    sub b
    ld a, a
    ld a, a
    add hl, sp
    add d
    jr c, jr_004_54b3

    add hl, sp
    ld a, [hl]
    add hl, sp
    jr c, jr_004_55a6

    adc c
    jr c, jr_004_54ae

    ld a, a
    add c
    ld a, a
    add d
    dec a
    add l
    ccf
    adc d
    ld b, b
    ld a, [hl]
    add l
    ld b, b
    ld a, [hl]
    adc c
    ld b, b
    add e

jr_004_553b:
    ld a, a
    add c
    ld a, a
    sub b
    ld a, a
    ld a, a
    sub c
    ccf
    dec a
    sub b
    dec sp
    ld a, [hl]

jr_004_5547:
    dec sp
    jr c, @+$3f

    ld a, [hl]
    dec a
    dec sp
    jr c, jr_004_55cd

    jr c, jr_004_5585

    ld a, [hl-]
    ld a, [hl]
    ld a, [hl-]
    jr c, jr_004_558a

    ld a, [hl]
    inc [hl]
    ld sp, $2f82
    sub b
    ld sp, $317e
    ld l, $7e
    add d
    ld l, $7f
    add e
    jr c, jr_004_559c

    sub b
    ld a, a
    ld [hl], $3a
    add e
    dec a
    ld b, c
    ld b, h
    ld b, d
    ld b, c
    ld b, h
    ld b, d
    ld b, c

jr_004_5574:
    dec a
    ld a, [hl-]
    jr c, @+$3b

    add d
    dec sp
    sub b
    dec a
    ld a, [hl]
    dec a
    dec sp
    add d
    ld a, a
    sub b
    ld a, a
    ld a, a
    dec a

jr_004_5585:
    add d
    ld a, $90
    ccf
    ld a, [hl]

jr_004_558a:
    ccf
    ld a, $82
    ld a, a
    sub b
    ld a, a
    ld a, a
    ccf
    ld b, b
    ld a, [hl]
    ld b, b
    dec a
    ld b, b
    ld a, [hl]
    ld b, b
    dec a
    ld a, [hl]
    add c

jr_004_559c:
    dec a
    ld a, a
    sub b
    ld a, a
    ld a, a
    ld b, b
    dec a
    ld a, [hl]
    dec a
    ld b, b

jr_004_55a6:
    add d
    dec a
    sub b
    dec sp
    ld a, [hl]
    dec sp
    dec a
    add d
    dec sp
    sub b
    jr c, jr_004_5630

    jr c, jr_004_55ef

    add d
    jr c, jr_004_5547

    ld [hl], $7e
    ld [hl], $38
    add l
    inc sp
    adc d
    inc [hl]
    ld a, [hl]

jr_004_55c0:
    add l
    inc [hl]
    add d
    ld a, a
    dec a
    sub b
    ld a, [hl-]
    ld a, [hl]
    ld a, [hl-]
    dec a
    add d
    ld a, [hl-]
    sub b

jr_004_55cd:
    ld [hl], $7e
    ld [hl], $3a
    add d
    ld [hl], $90
    inc sp
    ld a, [hl]
    inc sp
    ld [hl], $85
    ld [hl-], a
    adc d
    inc sp
    ld a, [hl]
    add l
    inc sp
    add d
    ld a, a
    sub b
    dec sp

jr_004_55e3:
    ld a, [hl]
    dec sp
    add hl, sp
    dec sp

jr_004_55e7:
    ld a, [hl]
    dec sp
    add hl, sp
    ld a, a
    ld a, a
    inc [hl]
    ld a, [hl]
    inc [hl]

jr_004_55ef:
    ld a, a
    jr nc, jr_004_5574

    cpl
    sub b
    jr nc, jr_004_5674

    jr nc, @+$31

    ld a, [hl]
    add e
    cpl
    sub c
    jr nc, jr_004_562d

    dec l
    add d
    inc l

jr_004_5601:
    rst RST_08
    rst RST_08
    adc e
    ld a, a
    rst RST_38

jr_004_5606:
    pop hl
    ld bc, $8b03
    ld a, a
    add b
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    inc l
    jp z, $ca83

    add e
    sub b
    ld sp, $317e
    inc l
    inc sp
    ld a, [hl]
    inc sp
    inc l
    inc [hl]
    ld a, [hl]
    inc [hl]
    inc l
    ld [hl], $7e
    ld [hl], $2c
    add l
    scf
    adc d
    jr c, jr_004_56ab

jr_004_562d:
    add l
    jr c, jr_004_55c0

jr_004_5630:
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld sp, $827e
    ld sp, $7f90
    ld a, a
    cpl
    ld sp, $317e
    cpl
    inc sp
    ld a, [hl]
    inc sp
    cpl
    inc [hl]
    ld a, [hl]
    inc [hl]
    cpl
    ld [hl], $7e
    ld [hl], $2f
    add l
    scf
    adc d
    jr c, jr_004_56ce

    add l
    jr c, jr_004_55e3

    inc [hl]
    ld a, [hl]
    inc [hl]
    ld sp, $827e
    ld sp, $907f
    ld a, a
    ld a, a
    cpl
    dec [hl]
    ld a, [hl]
    dec [hl]
    jr c, jr_004_55e7

    dec [hl]
    ld [hl], $3a
    dec a
    ld b, c
    ld b, h
    ld b, d
    ld b, c

jr_004_566c:
    sub b
    ld a, a
    ld a, a
    dec a
    ld a, a

jr_004_5671:
    ld a, a
    add hl, sp
    add d

jr_004_5674:
    jr c, jr_004_5606

    add hl, sp
    ld a, [hl]
    add hl, sp
    jr c, jr_004_56f9

    adc c
    jr c, jr_004_5601

    ld a, a
    adc b
    ld a, a
    add l
    scf
    ld [hl], $8a
    inc [hl]
    sub b
    ld [hl], $7e
    ld [hl], $31
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $7e
    adc c
    ld [hl], $83
    ld a, a
    adc b
    ld a, a
    add l
    scf
    ld [hl], $8a
    inc [hl]
    sub b
    ld [hl], $7e
    ld [hl], $31
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $37
    ld a, [hl]
    scf
    ld [hl], $34
    ld a, [hl]
    inc [hl]

jr_004_56ab:
    ld sp, $897e
    ld sp, $907f
    ld a, a
    ld a, a
    sub c
    inc a
    dec a
    sub b
    ld a, a
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, a
    ld [hl], $82
    inc [hl]
    sub b
    dec [hl]
    ld a, [hl]
    dec [hl]
    inc sp
    ld a, [hl]
    add d
    inc sp
    ld a, a
    sub b
    ld a, a
    ld a, a
    sub c
    inc a
    dec a

jr_004_56ce:
    sub b
    ld a, a
    ld a, a
    sub c
    ccf
    ld b, b
    sub b
    ld a, a
    ld a, a
    sub c
    inc a
    dec a
    sub b
    ld a, a
    ld a, a
    add hl, sp
    add d
    jr c, jr_004_5671

    add hl, sp
    ld a, [hl]
    add hl, sp
    jr c, jr_004_5764

    adc c
    jr c, jr_004_566c

    ld a, a
    add c
    ld a, a
    add d
    dec a
    add l
    ccf
    adc d
    ld b, b
    ld a, [hl]
    add l
    ld b, b
    ld a, [hl]
    adc c
    ld b, b
    add e

jr_004_56f9:
    ld a, a
    add c
    ld a, a
    sub b
    ld a, a
    ld a, a
    sub c
    ccf
    dec a
    sub b
    dec sp
    ld a, [hl]

jr_004_5705:
    dec sp
    jr c, @+$3f

    ld a, [hl]
    dec a
    dec sp
    jr c, jr_004_578b

    jr c, jr_004_5743

    ld a, [hl-]
    ld a, [hl]
    ld a, [hl-]
    jr c, jr_004_5748

    ld a, [hl]
    inc [hl]
    ld sp, $2f82
    sub b
    ld sp, $317e
    ld l, $7e
    add d
    ld l, $7f
    add e
    jr c, jr_004_575a

    sub b
    ld a, a
    ld [hl], $3a
    add e
    dec a
    ld b, c
    ld b, h
    ld b, d
    ld b, c
    ld b, h
    ld b, d
    ld b, c

jr_004_5732:
    dec a
    ld a, [hl-]
    jr c, @+$3b

    add d
    dec sp
    sub b
    dec a
    ld a, [hl]
    dec a
    dec sp
    add d
    ld a, a
    sub b
    ld a, a
    ld a, a
    dec a

jr_004_5743:
    add d
    ld a, $90
    ccf
    ld a, [hl]

jr_004_5748:
    ccf
    ld a, $82
    ld a, a
    sub b
    ld a, a
    ld a, a
    ccf
    ld b, b
    ld a, [hl]
    ld b, b
    dec a
    ld b, b
    ld a, [hl]
    ld b, b
    dec a
    ld a, [hl]
    add c

jr_004_575a:
    dec a
    ld a, a
    sub b
    ld a, a
    ld a, a
    ld b, b
    dec a
    ld a, [hl]
    dec a
    ld b, b

jr_004_5764:
    add d
    dec a
    sub b
    dec sp
    ld a, [hl]
    dec sp
    dec a
    add d
    dec sp
    sub b
    jr c, jr_004_57ee

    jr c, jr_004_57ad

    add d
    jr c, jr_004_5705

    ld [hl], $7e
    ld [hl], $38
    add l
    inc sp

jr_004_577b:
    adc d
    inc [hl]
    ld a, [hl]
    add l
    inc [hl]
    add d
    ld a, a
    dec a
    sub b
    ld a, [hl-]
    ld a, [hl]
    ld a, [hl-]
    dec a
    add d
    ld a, [hl-]
    sub b

jr_004_578b:
    ld [hl], $7e
    ld [hl], $3a
    add d
    ld [hl], $90
    inc sp
    ld a, [hl]
    inc sp
    ld [hl], $85
    ld [hl-], a
    adc d
    inc sp
    ld a, [hl]
    add l
    inc sp
    add d
    ld a, a
    sub b
    dec sp
    ld a, [hl]
    dec sp
    add hl, sp
    dec sp
    ld a, [hl]
    dec sp
    add hl, sp
    ld a, a
    ld a, a
    inc [hl]
    ld a, [hl]
    inc [hl]

jr_004_57ad:
    ld a, a
    jr nc, jr_004_5732

    cpl
    sub b
    jr nc, jr_004_5832

    jr nc, jr_004_57e5

    ld a, [hl]
    add e
    cpl
    sub c
    jr nc, jr_004_57eb

    dec l
    add d
    inc l
    rst RST_08
    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    add b
    ld a, a
    ld a, a
    jp z, $ca8a

    adc d
    adc d
    dec h
    add h
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d
    ld a, [hl+]
    add h
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d
    daa
    add h
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d

jr_004_57e5:
    inc l
    add h
    ld a, a
    adc b
    ld a, a
    add b

jr_004_57eb:
    ld a, a
    adc d
    dec h

jr_004_57ee:
    add h
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d
    jr z, jr_004_577b

    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d
    daa
    add h
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d
    inc l
    add h
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d
    dec h
    add h
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d
    ld a, [hl+]
    add h
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d
    daa
    add h
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d
    inc l
    add h
    ld a, a
    adc b

jr_004_5829:
    ld a, a
    add b
    ld a, a
    adc d
    dec h
    add h
    ld a, a
    adc b
    ld a, a

jr_004_5832:
    add b
    ld a, a
    adc d
    jr z, @-$7a

    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d
    daa
    add h
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    adc d
    inc l
    add h
    ld a, a
    adc b
    ld a, a
    adc d
    inc l
    add h
    ld a, a
    add d
    ld a, a
    sub b
    ld a, a
    ld a, a
    ld a, [hl+]
    ld a, [hl]
    ld a, [hl+]
    ld a, [hl]
    ld a, [hl+]
    jr z, jr_004_5829

    rst RST_08
    adc e
    ld a, a
    rst RST_38
    inc bc
    adc b
    ld [hl], $90
    dec [hl]
    ld a, a
    inc [hl]
    add c
    ld [hl], $90
    ld a, a
    ld a, a
    dec [hl]
    inc [hl]
    ld a, a
    inc [hl]
    jp z, $ca82

    add d
    call nz, $8882
    ld [hl], $90
    dec [hl]
    ld a, a
    inc [hl]
    add c
    ld [hl], $90
    ld a, a
    ld a, a
    dec [hl]

jr_004_5880:
    inc [hl]
    ld a, a
    inc [hl]
    adc b

jr_004_5884:
    ld [hl], $90
    dec [hl]
    ld a, a
    inc [hl]
    add c
    ld [hl], $90
    ld a, a
    ld a, a
    dec [hl]
    inc [hl]
    ld a, a
    inc [hl]
    adc b
    ld [hl], $90
    dec [hl]
    ld a, a
    inc [hl]
    add c
    ld [hl], $90
    ld a, a
    ld a, a
    dec [hl]
    inc [hl]
    ld a, a
    inc [hl]
    adc b
    ld [hl], $90
    dec [hl]
    ld a, a
    inc [hl]
    add c
    ld [hl], $90
    ld a, a
    ld a, a
    dec [hl]
    inc [hl]
    ld a, a
    inc [hl]
    rst RST_08
    rst RST_08
    rst RST_08
    adc e
    ld a, a
    rst RST_38
    add b
    nop
    add b
    dec b
    nop
    nop
    inc sp
    ld [hl], b
    jr nz, jr_004_5880

    inc a
    ld h, b
    jr nz, jr_004_5884

    nop
    and [hl]
    db $10
    add b
    ld bc, $d60e
    ld e, b
    ld [hl+], a
    ld e, c
    ld l, [hl]
    ld e, c
    ret nz

    ld e, c
    ld a, [bc]
    ld e, d
    db $10
    ld e, d
    ldh [rP1], a
    inc bc
    jp z, $ca83

    add e
    jp $8383


    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    rst RST_08
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]
    jp $8383


    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    rst RST_08
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    inc [hl]

jr_004_58fc:
    inc sp
    jp $8383


    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a

jr_004_5904:
    ld [hl-], a
    ld [hl-], a
    rst RST_08
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jp $8383


    jr c, @+$3a

    jr c, jr_004_594c

    jr c, jr_004_594e

    rst RST_08
    jr c, jr_004_5950

    ld [hl], $35
    inc [hl]
    inc sp
    rst RST_08
    rst RST_08
    add h

jr_004_5920:
    ld a, a
    rst RST_38
    pop hl
    ld bc, $8403
    ld a, a
    jp z, $ca83

    add e
    jp $8383


    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    rst RST_08
    cpl
    cpl
    cpl
    cpl
    jr nc, jr_004_596c

    jp $8383


    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    rst RST_08
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld sp, $c330

jr_004_594c:
    add e
    add e

jr_004_594e:
    cpl
    cpl

jr_004_5950:
    cpl
    cpl
    cpl
    cpl
    rst RST_08
    cpl
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    jp $8383


    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    rst RST_08
    dec [hl]
    inc [hl]
    inc sp
    ld [hl-], a
    ld sp, $cf30

jr_004_596c:
    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    jp z, $ca83

    add e
    jp $8383


    jr z, jr_004_58fc

    ld a, a
    add e
    jr z, jr_004_59a4

    daa
    rst RST_08
    jr z, jr_004_5904

    ld a, a
    add e
    jr z, jr_004_59af

    ld a, [hl+]
    jp $8383


    dec hl
    add d
    ld a, a
    add e
    dec hl
    add hl, hl
    ld a, [hl+]
    rst RST_08
    dec hl
    add d
    ld a, a
    add e
    dec hl
    ld a, [hl+]
    add hl, hl
    jp $8383


    jr z, jr_004_5920

    ld a, a
    add e
    jr z, jr_004_59c8

    daa
    rst RST_08

jr_004_59a4:
    jr z, jr_004_59cf

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jp $8383


    ld l, $82

jr_004_59af:
    ld a, a
    add e
    ld l, $2c
    dec l
    rst RST_08
    ld l, $2d
    inc l
    dec hl
    ld a, [hl+]
    add hl, hl
    rst RST_08
    rst RST_08
    add h
    ld a, a
    rst RST_38
    inc bc
    jp z, $ca82

    add d
    jp $8282


jr_004_59c8:
    inc [hl]
    dec [hl]
    ld [hl], $34
    dec [hl]
    ld [hl], $cf

jr_004_59cf:
    inc [hl]
    dec [hl]
    ld [hl], $34
    ld [hl], $36
    jp $8282


jr_004_59d8:
    inc [hl]
    dec [hl]
    ld [hl], $34
    dec [hl]
    ld [hl], $cf
    inc [hl]
    dec [hl]
    ld [hl], $34
    ld [hl], $36
    jp $8282


    inc [hl]
    dec [hl]
    ld [hl], $34
    dec [hl]
    ld [hl], $cf
    inc [hl]
    dec [hl]
    ld [hl], $34
    ld [hl], $36
    jp $8282


    inc [hl]
    dec [hl]
    ld [hl], $34
    dec [hl]
    ld [hl], $cf
    inc [hl]
    dec [hl]
    ld [hl], $34
    ld [hl], $36
    rst RST_08
    rst RST_08
    add h
    ld a, a
    rst RST_38
    ld b, b
    ld [bc], a
    add b
    ld [bc], a
    nop
    nop
    ld l, $70
    jr nz, @-$3e

    jr c, jr_004_5a76

    jr nz, jr_004_59d8

    nop
    and e
    db $10
    add b
    ld bc, $2a13
    ld e, d
    dec l
    ld e, e
    jr nc, @+$5e

    and l
    ld e, h
    ld d, $5d
    inc e
    ld e, l
    ldh [rP1], a
    inc bc
    jp z, $ca83

    add e
    add d
    ld a, [hl+]
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    ld a, [hl+]
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    inc l
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    inc l
    add e
    cpl
    cpl
    ld l, $2f
    ld a, a
    cpl

jr_004_5a52:
    add d
    ld a, [hl+]
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    ld a, [hl+]
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    inc l
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    inc l
    add e
    cpl
    cpl
    ld l, $2f
    ld a, a
    cpl
    add d
    ld a, a
    add e

jr_004_5a76:
    ld a, [hl+]
    ld a, [hl+]
    cpl
    add d
    inc sp
    add e
    ld [hl], $7e
    add d
    ld [hl], $83
    inc sp
    inc sp
    ld sp, $3382
    add e
    cpl
    ld a, [hl]
    add b
    cpl
    ld a, [hl]
    add d
    cpl
    adc b
    ld a, a
    add d
    ld a, a
    add e
    ld a, [hl+]
    ld a, [hl+]
    cpl
    add d
    inc sp
    add e
    ld [hl], $7e
    add d
    ld [hl], $83
    inc sp
    inc sp
    ld sp, $3382
    add e
    cpl
    ld a, [hl]
    add b
    cpl
    ld a, [hl]
    add d
    cpl
    adc c
    ld a, a
    add e
    cpl
    ld l, $2f
    add d
    ld sp, $3383
    ld sp, $2e31
    ld a, [hl+]
    inc sp
    ld a, [hl]
    add c
    inc sp
    add e
    ld a, a
    inc sp
    ld sp, $8233
    inc [hl]
    add e
    ld [hl], $82
    inc [hl]
    add e
    ld sp, $382c
    ld a, [hl]
    adc b
    jr c, jr_004_5a52

    ld a, a
    ld a, a
    add e
    ld a, [hl+]
    ld a, [hl+]
    cpl
    add d
    inc sp
    add e
    ld [hl], $7e
    add d
    ld [hl], $83
    inc sp
    inc sp
    ld sp, $3382
    add e
    cpl
    ld a, [hl]
    add b
    cpl
    ld a, [hl]
    add c
    cpl
    ld a, a
    add d
    ld a, a
    add e
    dec l
    dec l
    ld [hl-], a
    add d
    ld [hl], $83
    add hl, sp
    ld a, [hl]
    add d
    add hl, sp
    add e
    ld [hl], $36
    inc [hl]
    add d
    ld [hl], $83
    ld [hl-], a
    ld a, [hl]
    add b
    ld [hl-], a
    ld a, [hl]
    add d
    ld [hl-], a
    adc b
    ld a, a
    add d
    ld a, a
    add e
    dec l
    dec l
    ld [hl-], a
    add d
    ld [hl], $83
    add hl, sp
    ld a, [hl]
    add d
    add hl, sp
    add e
    ld [hl], $36
    inc [hl]
    add d
    ld [hl], $83
    ld [hl-], a
    ld a, [hl]
    add b
    ld [hl-], a
    ld a, [hl]
    add d
    ld [hl-], a
    adc b
    ld a, a
    rst RST_08
    rst RST_08
    add e
    ld a, a
    add [hl]
    ld a, a
    rst RST_38
    pop hl
    ld bc, $8303
    ld a, a
    add [hl]
    ld a, a
    jp z, $ca83

    add e
    add d
    ld a, [hl+]
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    ld a, [hl+]
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    inc l
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    inc l
    add e
    cpl
    cpl
    ld l, $2f
    ld a, a
    cpl

jr_004_5b59:
    add d
    ld a, [hl+]
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    ld a, [hl+]
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    inc l
    add e
    cpl
    add d
    ld l, $89
    cpl
    add d
    inc l
    add e
    cpl
    cpl
    ld l, $2f
    ld a, a
    cpl
    add d
    ld a, a
    add e
    ld a, [hl+]
    ld a, [hl+]
    cpl
    add d
    inc sp
    add e
    ld [hl], $7e
    add d
    ld [hl], $83
    inc sp
    inc sp
    ld sp, $3382
    add e
    cpl
    ld a, [hl]
    add b
    cpl
    ld a, [hl]
    add d
    cpl
    adc b
    ld a, a
    add d
    ld a, a
    add e
    ld a, [hl+]
    ld a, [hl+]
    cpl
    add d
    inc sp
    add e
    ld [hl], $7e
    add d
    ld [hl], $83
    inc sp
    inc sp
    ld sp, $3382
    add e
    cpl
    ld a, [hl]
    add b
    cpl
    ld a, [hl]
    add d
    cpl
    adc c
    ld a, a
    add e
    cpl
    ld l, $2f
    add d
    ld sp, $3383
    ld sp, $2e31
    ld a, [hl+]
    inc sp
    ld a, [hl]
    add c
    inc sp
    add e
    ld a, a
    inc sp
    ld sp, $8233

jr_004_5bca:
    inc [hl]
    add e
    ld [hl], $82
    inc [hl]
    add e
    ld sp, $382c
    ld a, [hl]
    adc b
    jr c, jr_004_5b59

    ld a, a
    ld a, a
    add e
    ld a, [hl+]
    ld a, [hl+]
    cpl
    add d
    inc sp
    add e
    ld [hl], $7e

jr_004_5be2:
    add d
    ld [hl], $83
    inc sp
    inc sp
    ld sp, $3382
    add e
    cpl
    ld a, [hl]
    add b
    cpl
    ld a, [hl]
    add c
    cpl
    ld a, a
    add d
    ld a, a
    add e
    dec l
    dec l
    ld [hl-], a
    add d
    ld [hl], $83
    add hl, sp
    ld a, [hl]
    add d
    add hl, sp
    add e
    ld [hl], $36
    inc [hl]
    add d
    ld [hl], $83
    ld [hl-], a
    ld a, [hl]
    add b
    ld [hl-], a
    ld a, [hl]
    add d
    ld [hl-], a
    adc b
    ld a, a
    add d
    ld a, a
    add e
    dec l
    dec l
    ld [hl-], a
    add d
    ld [hl], $83
    add hl, sp
    ld a, [hl]
    add d
    add hl, sp
    add e
    ld [hl], $36
    inc [hl]
    add d
    ld [hl], $83
    ld [hl-], a
    ld a, [hl]
    add b
    ld [hl-], a
    ld a, [hl]
    add d
    ld [hl-], a
    adc b
    ld a, a
    rst RST_08
    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    jp z, $ca80

    add b
    adc d
    inc hl
    add h
    ld a, a
    adc b
    ld a, a
    adc d
    daa
    add h
    ld a, a
    adc b
    ld a, a
    adc d
    jr z, jr_004_5bca

    ld a, a
    adc b
    ld a, a
    adc d
    ld a, [hl+]
    add h
    ld a, a
    adc b
    ld a, a
    adc d
    inc hl
    add h
    ld a, a
    adc b
    ld a, a
    adc d
    daa
    add h
    ld a, a
    adc b
    ld a, a
    adc d
    jr z, jr_004_5be2

    ld a, a
    adc b
    ld a, a
    adc d
    ld a, [hl+]
    add h
    ld a, a
    adc b
    ld a, a
    add b
    inc hl
    daa
    jr z, jr_004_5c96

    inc hl
    daa
    jr z, jr_004_5c9a

    adc d
    daa
    ld a, a
    add e
    daa
    add d
    daa
    ld a, a
    adc d
    inc l
    ld a, a
    add e
    inc l
    add d
    inc l
    ld a, a
    adc d
    dec h
    ld a, a
    add e
    dec h
    add d
    dec h
    ld a, a
    add e
    ld a, [hl+]
    ld a, [hl+]
    ld a, a
    inc l
    ld a, a
    dec l
    ld a, a
    ld l, $80
    inc hl
    daa
    jr z, jr_004_5cc0

jr_004_5c96:
    ld h, $2a
    dec hl
    dec l

jr_004_5c9a:
    ld h, $2a
    dec hl
    dec l
    rst RST_08
    rst RST_08
    add e
    ld a, a

jr_004_5ca2:
    add [hl]
    ld a, a
    rst RST_38
    inc bc
    jp z, $ca83

    add e
    add b
    ld [hl], $7f
    ld a, a
    ld a, a
    ld [hl], $7f
    ld a, a
    ld a, a
    rst RST_00
    add e
    add e
    dec [hl]
    ld a, a
    inc [hl]
    ld a, a
    dec [hl]
    ld a, a
    inc [hl]
    ld a, a

jr_004_5cbe:
    rst RST_08
    dec [hl]

jr_004_5cc0:
    ld a, a
    inc [hl]
    ld a, a
    dec [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    add d
    ld [hl], $83
    dec [hl]
    inc [hl]
    add d
    ld [hl], $83
    inc [hl]
    inc [hl]
    add d
    ld [hl], $83
    dec [hl]
    inc [hl]
    add d
    ld [hl], $35
    ld [hl], $83
    dec [hl]
    inc [hl]
    add d
    ld [hl], $83
    inc [hl]
    inc [hl]
    add d
    ld [hl], $83
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    push bc
    add e
    add d
    ld [hl], $83
    inc [hl]
    dec [hl]
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    rst RST_08
    add d
    ld [hl], $83
    inc [hl]
    dec [hl]
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    dec [hl]
    dec [hl]
    rst RST_08
    rst RST_08
    ld a, a
    add [hl]
    ld a, a
    rst RST_38
    nop
    add hl, bc
    ld b, b
    ld a, [bc]
    nop
    nop
    jr c, jr_004_5cbe

    nop
    ret nz

    jr nc, jr_004_5ca2

    nop
    ret nz

    nop
    or d
    nop
    add b
    inc bc
    db $10
    ld [hl], $5d
    scf
    ld e, l
    ld a, [hl-]
    ld e, l
    dec sp
    ld e, l
    inc a
    ld e, l
    ld a, $5d
    rst RST_38
    add h
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    inc bc
    db $10
    ld c, h
    ld e, l
    ld c, l
    ld e, l
    ld d, b
    ld e, l
    ld d, c
    ld e, l
    ld d, d
    ld e, l
    ld d, h
    ld e, l
    rst RST_38
    add h
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    inc bc
    db $10
    ld h, d
    ld e, l
    ld l, e
    ld e, l
    ld [hl], h
    ld e, l
    ld [hl], l
    ld e, l
    halt
    ld e, l
    ld a, b
    ld e, l
    ldh [rP1], a
    inc bc
    add h
    ccf
    inc [hl]
    dec sp
    jr c, @+$01

    pop hl
    nop
    inc bc
    add h
    dec sp
    inc l
    inc [hl]
    cpl
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    nop
    inc bc
    db $10
    add [hl]
    ld e, l
    add a
    ld e, l
    ldh a, [c]
    ld e, l
    di
    ld e, l
    db $f4
    ld e, l
    or $5d
    rst RST_38
    pop hl
    nop
    inc bc
    jp z, $ca86

    add [hl]
    add [hl]
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    ccf
    dec sp

jr_004_5dbb:
    ccf
    inc a
    ccf

jr_004_5dbe:
    dec sp
    ccf
    dec sp
    ccf

jr_004_5dc2:
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf

jr_004_5dce:
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a

jr_004_5ddb:
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    rst RST_08
    rst RST_08
    rst RST_38
    rst RST_38
    rst RST_38
    add b
    dec bc
    inc bc
    db $10
    inc b
    ld e, [hl]
    dec b
    ld e, [hl]
    ld b, $5e
    rlca
    ld e, [hl]
    rrca
    ld e, [hl]
    rrca
    ld e, [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add h
    inc [hl]
    add [hl]
    ld a, a
    add e
    dec [hl]
    rst RST_38
    ld e, $d0
    ld [hl-], a
    ret nz

    nop
    jp nc, $8011

    inc bc
    db $10
    dec h
    ld e, [hl]
    dec sp
    ld e, [hl]
    ld d, c
    ld e, [hl]
    ld d, d
    ld e, [hl]
    ld d, e
    ld e, [hl]
    ld d, l
    ld e, [hl]
    ldh [rP1], a
    inc bc
    add d
    jr c, jr_004_5dbb

    jr c, jr_004_5dbe

    jr c, jr_004_5e67

    inc [hl]
    jr c, jr_004_5dc2

    dec sp
    sub c
    dec sp
    add d

jr_004_5e36:
    inc [hl]
    ld a, [hl]
    add e
    inc [hl]
    rst RST_38
    pop hl
    nop
    inc bc
    add d
    inc [hl]
    sub b
    inc [hl]
    sub c
    inc [hl]
    inc [hl]
    cpl
    inc [hl]
    sub b
    jr c, jr_004_5ddb

    jr c, jr_004_5dce

    dec sp
    ld a, [hl]
    add e
    dec sp
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    inc bc
    inc bc
    db $10

Jump_004_5e57:
    ld h, e
    ld e, [hl]
    ld h, h
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld a, b
    ld e, [hl]
    ld a, c
    ld e, [hl]
    ld a, e
    ld e, [hl]

jr_004_5e63:
    rst RST_38
    pop hl
    nop

jr_004_5e66:
    inc bc

jr_004_5e67:
    add l
    dec a
    ld c, c

jr_004_5e6a:
    dec a
    ld c, c
    dec a
    ld c, c
    dec a
    ld c, c
    dec a
    ld c, c
    dec a
    ld c, c
    dec a
    ld c, c
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    nop
    inc bc
    ld de, $5e89
    adc d
    ld e, [hl]
    sbc c
    ld e, [hl]
    sbc d
    ld e, [hl]
    sbc e
    ld e, [hl]
    sbc l
    ld e, [hl]
    rst RST_38
    pop hl
    nop
    inc bc
    adc d
    cpl
    add h
    dec l
    add e
    inc l
    ld a, [hl+]
    jr z, jr_004_5eca

    add d
    jr z, @+$01

    rst RST_38
    rst RST_38
    ret nz

    nop
    ld [bc], a
    db $10
    xor e
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    ld sp, $325f
    ld e, a
    ld d, a
    ld e, a

jr_004_5ea9:
    ld e, l
    ld e, a
    ldh [rP1], a
    inc bc
    add h
    ccf

jr_004_5eb0:
    inc [hl]
    dec sp
    jr c, jr_004_5e36

    ld a, a
    add e
    ld a, a
    add l
    ld a, a
    ldh [rSB], a
    call nz, $ca86
    add [hl]
    add [hl]
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    rst RST_08
    rst RST_08
    add l
    dec a

jr_004_5eca:
    ld b, l
    jr c, jr_004_5f0e

    add d
    ld a, a
    ldh [rP1], a
    jr c, jr_004_5e63

    jr c, jr_004_5e66

    jr c, jr_004_5f0f

    inc [hl]
    jr c, jr_004_5e6a

    dec sp
    sub c
    dec sp
    adc d
    ld b, b
    ld a, [hl]
    adc e
    ld b, b
    add c
    ld a, a
    call nz, $8585
    ld c, c
    ld d, l

jr_004_5ee9:
    ld c, c
    ld d, l
    ld c, c
    ld d, l
    ld c, c
    ld d, l
    ld c, c
    ld d, l
    ld c, c
    ld d, l
    ld c, c
    ld d, l
    rst RST_08
    add [hl]
    ld a, a
    rst RST_38
    pop hl
    nop
    inc bc
    add h
    dec sp
    cpl
    jr c, jr_004_5f35

    add d

jr_004_5f02:
    ld a, a
    pop hl
    ld [bc], a
    add l
    inc d
    inc hl
    adc e
    ld a, a
    call nz, $ca84
    add h

jr_004_5f0e:
    adc e

jr_004_5f0f:
    ld a, a
    rst RST_08
    rst RST_08
    adc c
    ld a, a
    pop hl
    nop
    add d
    jr z, jr_004_5ea9

    jr z, @-$6d

    jr z, jr_004_5f45

    inc hl
    jr z, jr_004_5eb0

    inc l
    sub c
    inc l
    adc d
    cpl
    ld a, [hl]
    adc e
    cpl
    add c
    ld a, a
    add d
    ld a, a
    adc d
    ld a, a
    add [hl]
    ld a, a
    rst RST_38
    rst RST_38
    inc bc
    add c
    ld a, a

jr_004_5f35:
    add l
    inc [hl]
    dec [hl]
    adc e
    ld a, a
    call nz, $ca82
    add d
    adc e
    ld a, a
    rst RST_08
    rst RST_08
    adc c
    ld a, a
    sub b

jr_004_5f45:
    ld a, a
    ld a, a
    sub c
    ld a, a
    ld a, a
    add e
    ld a, a
    add l
    ld a, a
    add b
    ld a, a
    add d
    ld a, a
    adc d
    ld a, a
    add [hl]
    ld a, a
    rst RST_38
    ret nz

    nop
    add b
    dec bc
    ret nz

    inc c
    inc a
    or b
    ld b, d
    ret nz

    ld a, [hl-]
    or c
    ld de, $0080
    or d
    jr jr_004_5ee9

    ld [bc], a
    db $10
    ld [hl], a
    ld e, a
    and d
    ld e, a
    call nz, $c55f
    ld e, a
    sbc $5f
    db $e4
    ld e, a
    ldh [rP1], a
    inc bc
    add h
    ccf
    inc [hl]
    dec sp
    jr c, jr_004_5f02

    ld a, a
    add e
    ld a, a
    add l
    ld a, a
    ldh [rSB], a
    call nz, $ca86
    add [hl]
    add [hl]
    ccf
    dec sp
    ccf
    inc a
    ccf
    dec sp
    rst RST_08
    rst RST_08
    add e
    ld a, a
    sub c
    cpl
    add h
    dec l
    add e
    ld a, a
    ld a, [hl+]
    jr z, jr_004_5fd3

    add d
    jr z, @+$01

    pop hl
    nop
    inc bc
    add h
    dec sp
    cpl
    jr c, jr_004_5fde

    add d
    ld a, a
    pop hl
    ld [bc], a
    add l
    inc d
    inc hl
    adc e
    ld a, a
    call nz, $ca84
    add h
    adc e
    ld a, a
    rst RST_08
    rst RST_08
    add e
    ld a, a
    sub c
    ld a, a
    add h
    ld a, a
    adc b
    ld a, a
    rst RST_38
    rst RST_38
    inc bc
    add c
    ld a, a
    add l
    inc [hl]
    dec [hl]
    adc e
    ld a, a
    call nz, $ca84
    add h
    adc e
    ld a, a

jr_004_5fd3:
    rst RST_08
    rst RST_08
    add e
    ld a, a
    sub c
    ld a, a
    add h
    ld a, a
    adc e
    ld a, a
    rst RST_38

jr_004_5fde:
    ret nz

    nop
    add b
    dec bc
    nop
    nop
    inc a
    or b
    ld b, d
    ret nz

    ld a, [hl-]
    or c
    ld de, $0080
    sub c
    add hl, bc
    add b
    inc bc

jr_004_5ff1:
    jr nz, jr_004_5ff1

    ld e, a
    rst RST_38
    ld e, a
    dec b
    ld h, b
    ld b, $60
    rlca
    ld h, b
    add hl, bc
    ld h, b
    rst RST_38
    pop hl
    nop
    inc bc
    add h
    dec a
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    ld [bc], a
    inc bc
    db $10
    rla
    ld h, b
    jr jr_004_606f

    add hl, de
    ld h, b
    ld a, [de]
    ld h, b
    ld [hl+], a
    ld h, b
    ld [hl+], a
    ld h, b
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [rP1], a
    inc bc
    add l
    ld b, b
    adc d
    ld b, c
    rst RST_38
    nop
    pop de
    ld b, e
    add b
    nop
    ldh [c], a
    nop
    add b
    inc bc
    ld [de], a
    jr c, jr_004_608e

    add hl, sp
    ld h, b
    ld a, [hl-]
    ld h, b
    dec sp
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add e
    ld b, c
    ld b, b
    rst RST_38
    nop
    jp nc, $8034

    nop
    jp nc, $8054

    inc bc
    ld de, $6056
    ld d, a
    ld h, b
    ld e, b
    ld h, b
    ld e, c
    ld h, b
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld h, b
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add d
    ld b, b
    ld b, b
    rst RST_38
    nop
    ret nc

    ld d, b
    add b
    inc bc
    db $10
    ld [hl], b
    ld h, b
    ld [hl], c
    ld h, b
    ld [hl], d
    ld h, b
    ld [hl], e
    ld h, b
    ld [hl], a
    ld h, b
    ld [hl], a

jr_004_606f:
    ld h, b
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add b
    inc [hl]
    rst RST_38
    nop
    jp nc, $8080

    inc bc
    ld d, $89
    ld h, b
    adc d
    ld h, b
    sbc d
    ld h, b
    sbc e
    ld h, b
    sbc h
    ld h, b
    sbc [hl]
    ld h, b
    rst RST_38
    inc bc
    add l
    ld c, c
    ld c, d

jr_004_608e:
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
    ld d, l
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    inc bc
    db $10
    xor h
    ld h, b
    xor l
    ld h, b
    xor [hl]
    ld h, b
    xor a
    ld h, b
    call nz, $c460
    ld h, b
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    add d

jr_004_60c2:
    dec [hl]
    rst RST_38
    nop
    jp nz, $8012

    nop
    jp nz, $8022

    inc bc
    db $10
    jp c, $db60

    ld h, b
    call c, $dd60
    ld h, b
    db $e3
    ld h, b
    db $e3
    ld h, b
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add l
    inc [hl]
    add d
    dec [hl]
    rst RST_38
    nop
    jp nz, $8032

jr_004_60e7:
    nop
    jp nz, $8082

    inc bc
    jr nz, jr_004_60e7

    ld h, b
    ld a, [$0360]
    ld h, c
    inc b
    ld h, c
    dec b
    ld h, c
    rlca
    ld h, c
    rst RST_38
    pop hl
    nop
    inc bc
    add l
    ld c, c
    ld b, l
    ld b, d
    ld c, e
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    nop
    inc bc
    db $10
    dec d
    ld h, c
    ld d, $61
    inc e
    ld h, c
    dec e
    ld h, c
    ld e, $61
    jr nz, jr_004_6176

    rst RST_38
    pop hl
    nop
    inc bc
    add h
    ld sp, $ffff
    rst RST_38
    add b
    dec bc
    inc bc
    jr nz, jr_004_6151

    ld h, c
    cpl
    ld h, c
    jr nc, @+$63

    ld sp, $4161
    ld h, c
    ld b, c
    ld h, c
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    adc h
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_004_60c2

    ld a, a
    adc h
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$01

    nop
    rst RST_10
    ld h, d
    add b
    nop
    pop de
    ld [hl], d
    add b
    nop
    pop de
    ld hl, $0080
    pop de
    halt
    add b

jr_004_6151:
    nop
    db $d3
    ld d, $80
    inc bc
    dec d
    ld h, e
    ld h, c
    ld h, h
    ld h, c
    ld h, l
    ld h, c
    ld h, [hl]
    ld h, c
    ld [hl], b
    ld h, c
    ld [hl], b
    ld h, c
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    jp z, $8383

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    rst RST_08
    rst RST_38
    nop
    rst RST_10
    ld h, h
    add b
    inc bc
    inc c

jr_004_6176:
    add d
    ld h, c
    add e
    ld h, c
    sub c
    ld h, c
    sub d
    ld h, c
    sub e
    ld h, c
    sub l
    ld h, c
    rst RST_38
    inc bc
    jp z, $8282

    ld sp, $317f
    ld a, a
    ld sp, $317f
    ld a, a
    rst RST_08
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    nop
    inc bc
    ld e, $a3
    ld h, c
    and h
    ld h, c
    push bc
    ld h, c
    add $61
    rst RST_00
    ld h, c
    ret


    ld h, c
    rst RST_38
    inc bc
    add l
    ld [hl], $3b
    ld b, b
    scf
    inc a
    ld b, c
    jr c, jr_004_61eb

    ld b, d
    add hl, sp
    ld a, $43
    ld a, [hl-]
    ccf
    ld b, h
    dec sp
    ld b, b
    ld b, l
    inc a
    ld b, c
    ld b, [hl]
    dec a
    ld b, d
    ld b, a
    ld a, $43
    ld c, b
    ccf
    ld b, h
    ld c, c
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    nop
    inc bc
    db $10
    rst RST_10
    ld h, c
    ret c

    ld h, c
    ldh [c], a
    ld h, c
    db $e3
    ld h, c
    db $e4
    ld h, c
    and $61
    rst RST_38
    inc bc
    jp z, $8282

    dec sp
    dec sp
    dec sp
    dec sp
    rst RST_08
    rst RST_38
    rst RST_38
    rst RST_38
    ld b, b
    dec bc
    inc bc
    db $10
    db $f4
    ld h, c
    push af

jr_004_61eb:
    ld h, c
    ei
    ld h, c
    db $fc
    ld h, c
    db $fd
    ld h, c
    rst RST_38
    ld h, c
    rst RST_38
    pop hl
    nop
    inc bc
    adc d
    inc e
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    inc bc
    inc bc
    jr nz, jr_004_620f

    ld h, d
    ld c, $62
    ld [de], a
    ld h, d
    inc de
    ld h, d
    inc d
    ld h, d
    ld d, $62
    rst RST_38
    pop hl

jr_004_620f:
    nop
    inc bc
    rst RST_38
    rst RST_38
    rst RST_38
    add b
    dec bc
    inc bc
    db $10
    inc h
    ld h, d
    dec h
    ld h, d
    ld h, $62
    daa
    ld h, d
    dec l
    ld h, d
    dec l
    ld h, d
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add h
    inc [hl]
    add d
    dec [hl]
    rst RST_38
    nop
    jp nc, $8082

    nop
    db $d3
    ld h, h
    add b
    inc bc
    db $10
    ld b, e
    ld h, d
    ld b, h
    ld h, d
    ld b, l
    ld h, d
    ld b, [hl]
    ld h, d
    ld c, h
    ld h, d
    ld c, h
    ld h, d
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add h
    inc [hl]
    add c
    dec [hl]
    rst RST_38
    nop
    jp nc, $8082

    nop
    sub $64
    add b
    inc bc
    inc d
    ld h, d
    ld h, d
    ld h, e
    ld h, d
    ld [hl], d
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], h
    ld h, d
    halt
    ld h, d
    rst RST_38
    pop hl
    nop
    inc bc
    add [hl]
    inc hl
    jr z, jr_004_6299

    dec [hl]
    dec sp
    dec a
    jr c, jr_004_62a2

    ld l, $28
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    nop
    inc bc
    db $10
    add h
    ld h, d
    add l
    ld h, d
    sub [hl]
    ld h, d
    sub a
    ld h, d
    sbc b
    ld h, d
    sbc d
    ld h, d
    rst RST_38
    pop hl
    nop
    inc bc
    add [hl]
    ld b, a
    ld c, h
    ld b, a
    ld c, h
    add h
    ld a, a
    ret z

    add [hl]
    add [hl]
    ld b, a
    ld c, h
    rst RST_08
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

jr_004_6299:
    nop
    inc bc
    db $10
    xor b
    ld h, d
    xor c
    ld h, d
    or l
    ld h, d

jr_004_62a2:
    or [hl]
    ld h, d
    or a
    ld h, d
    cp c
    ld h, d
    rst RST_38
    pop hl
    nop
    inc bc
    add [hl]
    add hl, sp
    inc a
    ccf
    ld b, d
    ld b, l
    ld c, b
    ld c, e
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    nop
    inc bc
    db $10
    rst RST_00
    ld h, d
    ret z

    ld h, d
    ret


    ld h, d
    jp z, $d062

    ld h, d
    ret nc

    ld h, d
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add [hl]
    inc [hl]
    dec [hl]
    ld [hl], $ff
    nop
    jp nc, $8010

    nop
    rst RST_10

jr_004_62d6:
    ld d, h
    add b
    nop
    jp nz, $8064

    inc bc
    dec d
    ld [$eb62], a
    ld h, d
    db $ec
    ld h, d
    db $ed
    ld h, d
    ld sp, hl
    ld h, d
    ei
    ld h, d
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add h
    inc [hl]
    ld a, [hl]
    add l
    inc [hl]
    ld a, a
    adc h
    dec [hl]
    add e
    ld a, a
    rst RST_38
    add b
    ld [de], a
    nop
    db $ec
    nop
    add b
    ld e, $d0
    jr nc, @-$3e

    inc bc
    db $10
    ld de, $1263
    ld h, e
    jr jr_004_636e

    add hl, de
    ld h, e
    ld a, [de]
    ld h, e
    inc e
    ld h, e
    rst RST_38
    pop hl
    nop
    inc bc
    add b
    jr z, @+$01

    rst RST_38
    rst RST_38
    nop
    dec bc
    inc bc
    db $10
    ld a, [hl+]
    ld h, e
    dec hl
    ld h, e
    ccf
    ld h, e
    ld b, b
    ld h, e
    ld d, h
    ld h, e
    ld d, [hl]
    ld h, e
    rst RST_38
    pop hl
    nop
    inc bc
    adc c
    ld a, a
    adc d
    ld a, a
    add l
    inc d
    add [hl]
    ld a, a
    add l
    inc d
    add [hl]
    ld a, a
    add l
    inc d
    add e
    ld a, a
    rst RST_38
    rst RST_38
    inc bc
    adc c
    ld a, a
    adc e
    ld [hl], $84
    scf
    add l
    jr c, jr_004_62d6

    ld a, a
    add l
    inc [hl]
    add [hl]
    ld a, a
    add l
    dec [hl]
    add e
    ld a, a
    rst RST_38
    add b
    ld bc, $e000
    jr nc, @-$7e

    nop
    ret nz

    ld b, b
    add b
    nop
    ld l, a
    daa
    add b
    nop
    sub b
    dec h
    add b
    nop
    ldh a, [rNR44]
    add b
    ret nc

    ld h, e
    inc e
    ld h, [hl]

jr_004_636e:
    sub $68
    sub l
    ld l, h
    jr z, jr_004_63e4

    cp h
    ld [hl], d
    sub e
    ld [hl], h
    ld [hl], c
    ld [hl], l
    ld [hl], h
    halt
    ld a, [hl+]
    ld [hl], a
    add a
    ld c, h
    and a
    ld [hl], a
    inc a
    ld d, h
    pop hl
    ld [hl], a
    db $f4
    ld [hl], a
    rlca
    ld a, b
    daa
    ld a, b
    ld c, a
    ld a, b
    ld l, [hl]
    ld a, b
    and c
    ld a, b
    rst RST_10
    ld a, b
    inc b
    ld a, c
    ld a, [hl+]
    ld h, b
    call c, $f062
    ld e, a
    inc hl
    ld a, c
    ld b, d
    ld a, c
    ld e, l
    ld a, c
    sub l
    ld h, c
    pop hl
    ld [hl], a
    db $f4
    ld [hl], a
    ld a, b
    ld a, c
    and d
    ld a, c
    jp c, $1479

    ld a, d
    ld a, $7a
    ld a, [hl]
    ld a, d
    sbc a
    ld a, d
    jp c, Jump_000_027a

    ld a, e
    pop hl
    ld [hl], a
    pop hl
    ld [hl], a
    pop hl
    ld [hl], a
    pop hl
    ld [hl], a
    pop hl
    ld [hl], a
    pop hl
    ld [hl], a
    sbc d
    ld h, d
    pop hl
    ld [hl], a
    pop hl
    ld [hl], a
    pop hl
    ld [hl], a
    inc e
    ld h, e
    ld bc, $de14
    ld h, e
    xor d
    ld h, h
    ld l, $65
    ret nc

    ld h, l
    ld [$1066], sp
    ld h, [hl]
    ldh [rP1], a
    inc bc
    add c
    ld a, a
    sub b

jr_004_63e4:
    ld a, a
    ld a, a
    dec l
    ld [hl-], a
    ld a, [hl]
    ld [hl-], a
    ld a, a
    add c
    dec [hl]
    ld [hl-], a
    sub b
    dec [hl]
    ld a, [hl]
    dec [hl]
    ld [hl-], a
    add d
    ld a, a
    sub b
    ld a, a
    ld a, a
    dec l
    ld [hl-], a
    ld a, [hl]
    ld [hl-], a
    inc [hl]
    adc d
    dec [hl]
    add h
    ld a, a
    adc d
    dec [hl]
    add h
    ld a, a
    adc d
    ld [hl-], a
    add h
    ld a, a
    adc d
    ld [hl-], a
    add h
    ld a, a
    sub b
    dec [hl]
    ld a, [hl]
    dec [hl]
    ld [hl-], a
    add d
    ld a, a
    sub b
    ld a, a
    ld a, a
    dec l
    adc d
    ld [hl-], a
    add h
    ld a, a
    add c
    inc [hl]
    add d
    ld [hl-], a
    adc d
    ld sp, $7f84
    sub b
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld sp, $7f82
    sub b
    ld a, a
    ld a, a
    ld sp, $7e32
    ld [hl-], a
    inc [hl]
    adc d
    dec [hl]
    add h
    ld a, a
    adc d
    dec [hl]
    add h
    ld a, a
    adc d
    ld [hl-], a
    add h
    ld a, a
    adc d
    ld [hl-], a
    add h
    ld a, a
    sub b
    dec [hl]
    ld a, [hl]
    dec [hl]
    ld [hl-], a
    add d
    ld a, a
    sub b
    ld a, a
    ld a, a
    add hl, sp
    adc d
    ld a, $84
    ld a, a
    add c
    dec a
    ld a, [hl]
    add e
    dec a
    ld a, a
    adc d
    dec a
    add h
    ld a, a
    adc d
    dec a
    add h
    ld a, a
    adc d
    ld a, [hl-]
    add h
    ld a, a
    adc d
    add hl, sp
    add h
    ld a, a
    add d
    scf
    dec [hl]
    scf
    add hl, sp
    sub b
    ld a, $7e
    ld a, $39
    ld a, [hl]
    add c
    add hl, sp
    sub b
    ld a, a
    ld a, a
    add hl, sp
    adc d
    ld a, $84
    ld a, a
    adc c
    dec a
    ld a, [hl]
    add h
    dec a
    ld a, a
    add d
    dec a
    ld a, $83
    ld b, b
    ld a, a
    add d
    add hl, sp
    adc d
    dec sp
    add h
    ld a, a
    sub b
    dec a
    ld a, [hl]
    dec a
    ld a, $7f
    ld a, a
    ld a, $83
    inc a
    ld a, a

jr_004_649a:
    ld a, [hl-]
    ld a, a
    add hl, sp
    ld a, a
    add d
    jr c, jr_004_651f

    sub b
    jr c, jr_004_6522

    jr c, jr_004_64df

    ld a, [hl]
    add c
    add hl, sp
    rst RST_38
    pop hl
    nop
    inc bc
    add b
    ld a, a
    pop hl
    nop
    add c
    dec l
    dec l
    sub b
    ld [hl-], a
    ld a, [hl]
    ld [hl-], a
    dec l
    adc b
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    sub b
    ld [hl-], a
    ld a, [hl]
    ld [hl-], a
    dec l
    adc b
    ld a, a
    pop hl
    ld [bc], a
    add d
    dec hl
    dec l
    ld l, $2d
    dec hl
    dec l
    ld l, $2b
    dec l
    ld [hl-], a

jr_004_64df:
    dec l

jr_004_64e0:
    inc l
    dec l
    dec l
    sub b

jr_004_64e4:
    dec hl
    ld a, [hl]
    dec hl
    pop hl
    nop
    ld [hl-], a
    add d
    dec [hl]
    scf
    add hl, sp
    ld a, [hl-]
    add hl, sp
    add hl, sp
    scf
    dec [hl]
    inc [hl]
    ld [hl-], a
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    ld [hl-], a
    dec [hl]
    inc [hl]
    dec [hl]
    scf
    jr c, jr_004_6538

    dec [hl]
    adc d
    ld [hl], $84
    ld a, a
    sub b
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl-], a
    pop hl
    ld bc, $7f91
    sub b
    ld a, a
    ld a, a
    ld [hl-], a
    adc d
    jr nc, jr_004_649a

    ld a, a
    adc d

jr_004_6518:
    ld l, $84
    ld a, a
    adc d
    dec l
    add h
    ld a, a

jr_004_651f:
    add d
    inc l
    ld a, [hl]

jr_004_6522:
    sub b
    inc l
    ld a, [hl]
    inc l
    dec l
    ld a, [hl]
    add d
    dec l
    ld a, [hl]
    adc d
    dec l
    rst RST_38
    ldh [c], a
    inc bc
    inc bc
    sub b
    ld [hl-], a
    ld a, [hl]
    ld [hl-], a
    ld [hl-], a
    adc d
    dec l

jr_004_6538:
    add h
    ld a, a
    add d
    inc l
    dec l
    ld [hl-], a
    ld a, a
    ld sp, $307f
    ld a, a
    cpl
    ld a, a
    ld l, $7f
    dec l
    ld a, a
    inc l
    ld a, a
    dec l
    ld a, a
    ld sp, $2d7f
    ld a, a
    ld sp, $2d7f
    ld a, a
    ld [hl-], a
    ld a, a
    ld sp, $8a7f
    jr nc, jr_004_64e0

    ld a, a
    adc d
    jr nc, jr_004_64e4

    ld a, a
    adc d
    cpl
    add h
    ld a, a
    adc d
    ld l, $84
    ld a, a
    sub b
    dec l
    ld a, a
    dec l
    adc d
    dec l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    ld [hl-], a
    add h
    ld a, a
    adc d
    ld sp, $7f84
    adc d
    jr nc, jr_004_6518

    ld a, a
    adc d
    cpl
    add h
    ld a, a
    adc d
    cpl
    add h
    ld a, a
    adc d
    cpl
    add h
    ld a, a
    adc d
    inc l
    add h
    ld a, a
    adc d
    inc l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d

jr_004_65b6:
    dec l
    add h
    ld a, a
    adc d
    add hl, sp
    add h
    ld a, a
    adc d
    scf
    add h
    ld a, a
    add c

jr_004_65c2:
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    sub b
    ld a, a
    ld a, a
    add hl, sp
    add h
    dec l
    adc d
    ld a, a
    rst RST_38
    inc bc
    sub b
    inc [hl]
    ld a, a
    inc [hl]

jr_004_65d5:
    inc [hl]

jr_004_65d6:
    ld a, a
    inc [hl]
    inc [hl]
    ld a, a

jr_004_65da:
    inc [hl]
    inc [hl]
    ld a, a

jr_004_65dd:
    inc [hl]
    rst RST_00
    add b
    add c

jr_004_65e1:
    ld [hl], $82
    ld [hl], $90
    inc [hl]
    ld a, a
    inc [hl]
    rst RST_08
    add d
    ld [hl], $36
    ld [hl], $36
    add $8a
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    rst RST_08
    add b
    ld [hl], $82
    dec [hl]
    dec [hl]
    dec [hl]
    sub b
    dec [hl]
    ld a, a
    inc [hl]
    rst RST_38
    ld b, b
    nop
    ld b, b
    ld b, $40
    dec bc
    nop
    nop
    jr c, jr_004_65c2

    nop
    ret nz

    jr nc, jr_004_65b6

    nop
    ret nz

    nop
    call nz, $8000
    ld bc, $2a0c
    ld h, [hl]

jr_004_6620:
    cp $66
    push hl

jr_004_6623:
    ld h, a
    sub h
    ld l, b
    jp nz, $ca68

    ld l, b
    ldh [rP1], a
    inc bc
    jp z, $8384

jr_004_6630:
    jr nc, jr_004_6664

    add d
    inc [hl]
    add e
    inc [hl]
    add d
    inc [hl]
    add e
    inc [hl]
    add d
    inc [hl]
    add e
    add hl, sp
    add d
    inc [hl]
    add e
    inc [hl]
    add d
    inc [hl]
    add e
    inc [hl]
    add d
    inc [hl]
    add h
    ld [hl-], a
    jr nc, jr_004_65d5

    ld [hl-], a
    add d
    dec l
    add e

jr_004_6650:
    cpl
    adc c
    jr nc, jr_004_65d6

    jr nc, jr_004_65da

    dec l
    cpl
    adc c
    jr nc, jr_004_65dd

    jr nc, jr_004_65e1

    dec hl
    jr nc, @-$7c

    cpl
    add e
    cpl
    add d

jr_004_6664:
    inc sp
    add e
    inc sp
    adc c
    inc [hl]
    add e
    ld a, a
    jr nc, jr_004_669f

    add d

jr_004_666e:
    inc [hl]
    add e
    inc [hl]
    add h
    inc [hl]
    dec [hl]
    inc [hl]
    inc sp
    add e
    inc [hl]
    ld a, a
    sub c
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]

jr_004_667e:
    inc [hl]
    dec [hl]
    add e
    inc [hl]
    add hl, sp
    inc [hl]
    ld a, [hl]
    add h
    inc [hl]
    add e
    ld a, a
    add h
    inc [hl]
    add hl, sp
    dec sp
    add e
    inc a
    dec sp
    add hl, sp
    adc c
    ld a, $82
    add hl, sp
    add e
    dec sp
    adc c
    inc a
    add d
    jr nc, jr_004_6620

    dec l
    cpl
    adc c

jr_004_669f:
    jr nc, jr_004_6623

    jr nc, @-$7a

    dec hl
    jr nc, jr_004_6630

    cpl
    add h
    ld l, $2d
    ld a, [hl+]

jr_004_66ab:
    adc d

jr_004_66ac:
    inc sp
    add h
    ld [hl-], a
    ld sp, $8833
    inc [hl]

jr_004_66b3:
    adc c
    ld a, a
    add e
    ld a, a

jr_004_66b7:
    adc d

jr_004_66b8:
    dec l
    add h
    cpl
    add l
    ld a, a
    add [hl]
    ld a, a
    add d
    dec l
    add h
    cpl
    add l
    ld a, a
    add e
    jr nc, jr_004_6746

    add h
    jr nc, jr_004_6650

    ld a, a
    add h
    ld [hl-], a
    ld a, a
    inc [hl]
    add e
    ld [hl-], a
    jr nc, @-$73

    dec l
    add d
    add hl, sp
    ld a, [hl]
    add l
    add hl, sp
    add e
    dec l
    ld a, [hl]
    add l
    dec l
    add e
    ld [hl-], a
    jr nc, jr_004_666e

    dec l
    adc c
    add hl, sp
    ld a, [hl]
    add l
    add hl, sp
    add e
    ld [hl-], a
    sub c
    inc sp
    ld [hl-], a
    jr nc, jr_004_671d

    ld a, [hl]
    dec l
    ld a, [hl]
    dec l
    add d
    add hl, sp
    add h
    jr c, jr_004_667e

    ld a, a
    add c
    ld a, a

jr_004_66fc:
    rst RST_08
    rst RST_38
    pop hl

jr_004_66ff:
    ld bc, $8b03
    ld a, a

jr_004_6703:
    jp z, $8384

    jr nc, jr_004_673a

    add d
    inc [hl]
    add e
    inc [hl]

jr_004_670c:
    add d
    inc [hl]
    add e
    inc [hl]
    add d
    inc [hl]
    add e
    add hl, sp
    add d
    inc [hl]
    add e
    inc [hl]
    add d
    inc [hl]
    add e
    inc [hl]
    add d

jr_004_671d:
    inc [hl]
    add h
    ld [hl-], a
    jr nc, jr_004_66ab

    ld [hl-], a
    add d
    dec l
    add e
    cpl
    adc c
    jr nc, jr_004_66ac

    jr nc, @-$7a

    dec l
    cpl
    adc c
    jr nc, jr_004_66b3

    jr nc, jr_004_66b7

    dec hl
    jr nc, jr_004_66b8

    cpl

jr_004_6737:
    add e
    cpl
    add d

jr_004_673a:
    inc sp
    add l
    inc sp
    pop hl
    nop
    add d
    inc l
    add e
    dec l
    adc c
    inc l
    adc e

jr_004_6746:
    ld a, a
    pop hl
    ld bc, $3482
    add e
    inc [hl]
    add h
    inc [hl]
    dec [hl]
    inc [hl]
    inc sp
    add e
    inc [hl]
    ld a, a

jr_004_6755:
    sub c
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    add e
    inc [hl]
    add hl, sp
    inc [hl]
    ld a, [hl]
    add h
    inc [hl]
    add e
    ld a, a

jr_004_6765:
    add h
    inc [hl]
    add hl, sp
    dec sp
    add e
    inc a
    dec sp
    add hl, sp
    adc c
    ld a, $82
    add hl, sp
    add e
    dec sp
    adc c
    inc a
    add d
    jr nc, jr_004_66fc

    dec l
    cpl
    adc c
    jr nc, jr_004_66ff

    jr nc, jr_004_6703

    dec hl
    jr nc, jr_004_670c

    cpl
    add h
    ld l, $2d
    ld a, [hl+]
    adc d
    inc sp
    add h
    ld [hl-], a
    ld sp, $8333
    inc [hl]
    ld a, [hl]

jr_004_6790:
    add l
    inc [hl]
    pop hl
    nop
    add e
    ld a, [hl+]
    add d

jr_004_6797:
    dec l
    add e
    ld a, [hl+]
    add c
    inc l
    add d
    ld a, a
    adc e
    ld a, a
    add l
    ld a, a
    add [hl]
    ld a, a
    pop hl
    ld bc, $2d82
    add h
    cpl
    add l
    ld a, a
    add e
    jr nc, jr_004_682d

    add h
    jr nc, jr_004_6737

    ld a, a
    add h
    ld [hl-], a
    ld a, a
    inc [hl]
    add e
    ld [hl-], a
    jr nc, jr_004_6746

    dec l
    add d
    add hl, sp
    ld a, [hl]
    add l
    add hl, sp
    add e
    dec l
    ld a, [hl]
    add l
    dec l
    add e
    ld [hl-], a

jr_004_67c8:
    jr nc, jr_004_6755

    dec l
    adc c
    add hl, sp
    ld a, [hl]
    add l

jr_004_67cf:
    add hl, sp
    add e
    ld [hl-], a
    sub c
    inc sp
    ld [hl-], a
    jr nc, jr_004_6804

    ld a, [hl]
    dec l
    ld a, [hl]
    dec l
    add d
    add hl, sp
    add h
    jr c, jr_004_6765

    ld a, a

jr_004_67e1:
    add c
    ld a, a
    rst RST_08
    rst RST_38
    ldh [c], a
    inc bc
    inc bc
    jp z, $8283

    ld a, a
    add e
    dec l
    ld a, a
    jr nc, jr_004_6825

    add d
    ld a, a
    add e
    inc l
    ld a, a
    jr nc, jr_004_682c

    add d
    ld a, a
    add e
    dec hl
    ld a, a
    jr nc, jr_004_6833

    add d
    ld a, a
    add e
    ld a, [hl+]
    ld a, a

jr_004_6804:
    dec l
    ld [hl-], a
    add d
    ld a, a
    add e
    add hl, hl
    ld a, a
    dec l
    jr nc, jr_004_6790

    ld a, a
    add e
    jr z, jr_004_6891

    dec hl
    jr nc, jr_004_6797

    ld a, a
    add e
    inc hl
    ld a, a
    ld a, [hl+]
    dec l
    add d
    ld a, a
    add e
    jr z, jr_004_689f

    ld [hl-], a
    inc [hl]
    add d
    ld a, a
    add e

jr_004_6825:
    dec l
    ld a, a
    jr nc, @+$36

    add d
    ld a, a
    add e

jr_004_682c:
    inc l

jr_004_682d:
    ld a, a
    jr nc, jr_004_6864

    add d
    ld a, a
    add e

jr_004_6833:
    dec hl
    ld a, a
    jr nc, jr_004_686b

    add d
    ld a, a
    add e
    ld a, [hl+]
    ld a, a
    dec l
    ld [hl-], a
    add d
    ld a, a
    add e
    add hl, hl
    ld a, a
    dec l
    jr nc, jr_004_67c8

    ld a, a
    add e
    jr z, jr_004_68c9

    dec hl
    jr nc, jr_004_67cf

    ld a, a
    add e
    inc hl

jr_004_6850:
    ld a, a
    ld a, [hl+]
    dec l
    add d
    ld a, a
    add e
    jr z, @+$81

    jr nc, jr_004_688c

    add d
    ld a, a
    jr z, jr_004_67e1

    ld a, a
    adc c
    ld a, a
    add l
    ld a, a
    add [hl]

jr_004_6864:
    ld a, a
    add h
    dec l
    ld a, a
    jr nc, @+$81

    inc [hl]

jr_004_686b:
    ld a, a
    dec hl
    ld a, a
    jr nc, jr_004_68ef

    inc [hl]
    ld a, a
    ld a, [hl+]
    ld a, a
    dec l
    ld a, a
    ld [hl-], a
    ld a, a
    ld a, [hl+]
    ld a, a
    dec l
    ld a, a
    ld [hl-], a
    ld a, a
    add hl, hl
    ld a, a
    dec l
    ld a, a
    jr nc, @+$81

    add hl, hl
    ld a, a
    dec l
    ld a, a
    ld l, $7f
    jr z, jr_004_690b

jr_004_688c:
    add d
    ld a, a
    adc c
    ld a, a
    add c

jr_004_6891:
    ld a, a
    rst RST_08
    rst RST_38
    inc bc
    jp z, $8383

    inc [hl]
    inc [hl]
    call nz, $c483
    add e
    add e

jr_004_689f:
    dec [hl]
    inc [hl]
    inc [hl]
    add d
    ld [hl], $83
    inc [hl]
    rst RST_08
    rst RST_08
    dec [hl]
    inc [hl]
    inc [hl]
    adc c
    ld [hl], $85
    ld a, a
    add [hl]
    ld a, a
    call nz, $8383
    inc [hl]
    inc [hl]
    dec [hl]
    add d
    ld [hl], $83
    dec [hl]
    rst RST_08
    inc [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    rst RST_08
    rst RST_38
    ld b, b
    inc bc
    ld b, b
    ld b, $40
    dec bc
    nop

jr_004_68c9:
    nop
    jr c, jr_004_692c

    nop
    ret nz

    jr nc, jr_004_6850

    nop
    ret nz

    nop
    and l
    nop
    add b
    ld bc, $e413
    ld l, b
    jp c, $0e69

    ld l, e
    ldh a, [rOCPD]
    ld a, l
    ld l, h
    add l
    ld l, h
    ldh [rP1], a
    inc bc
    jp z, $9082

    ld a, a
    ld a, a
    ld a, [hl+]
    cpl
    ld a, [hl]

jr_004_68ef:
    cpl
    ld [hl-], a
    ld [hl], $7e
    ld [hl], $37
    ld a, [hl]
    ld a, a
    ld a, a
    ld [hl], $7e
    add b
    ld [hl], $90
    ld a, a
    ld a, a
    ld a, [hl+]
    ld l, $7e
    ld l, $31
    inc [hl]
    ld a, [hl]
    inc [hl]
    scf
    ld a, [hl]
    ld a, a
    ld a, a

jr_004_690b:
    ld [hl], $88
    ld [hl-], a
    add d
    ld a, a
    sub b
    ld a, a
    ld a, a
    ld a, [hl+]
    cpl
    ld a, [hl]
    cpl
    ld [hl-], a
    ld [hl], $7e
    ld [hl], $37
    ld a, a
    ld a, a
    ld [hl], $7e
    add b
    ld [hl], $90
    ld a, a
    ld a, a
    ld a, [hl+]
    ld l, $7e
    ld l, $31
    inc [hl]
    ld a, [hl]

jr_004_692c:
    inc [hl]
    scf
    ld a, [hl]
    ld a, a
    ld a, a
    ld [hl], $7e
    add d
    ld [hl], $90
    dec [hl]
    inc [hl]
    ld [hl-], a
    cpl
    ld a, [hl]
    cpl
    dec sp
    add d
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    cpl
    add d
    ld sp, $7e2e
    sub b
    ld l, $7f
    ld l, $2f
    ld a, [hl]
    cpl
    ld sp, $827e
    ld sp, $3637
    ld sp, $3234
    ld a, [hl]
    sub b
    ld [hl-], a
    ld a, a
    ld [hl-], a
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $7e
    add c
    ld [hl], $90
    ld a, a
    ld a, a
    ld [hl], $7e
    add d
    ld [hl], $35
    ld a, [hl]
    sub b
    dec [hl]
    ld a, a
    ld [hl], $38
    ld a, [hl]
    jr c, jr_004_69a7

    ld a, a
    ld a, a
    dec sp
    ld a, [hl]
    adc d
    dec sp
    add h
    ld a, a
    adc d
    dec sp
    add h
    ld a, a
    adc d
    dec sp
    add h
    ld a, a
    sub b
    dec a
    ld a, [hl]
    dec a
    ld a, [hl-]
    ld a, [hl]
    add b
    ld a, [hl-]
    add d
    ld a, a
    ld [hl], $38
    adc d
    ld a, [hl-]
    add h
    ld a, a
    add d
    dec sp
    sub b
    ld [hl], $7f
    dec sp
    add d
    ld a, [hl-]
    sub b
    ld [hl], $7f
    ld a, [hl-]
    add d
    add hl, sp
    sub b
    ld [hl], $7f

jr_004_69a7:
    add hl, sp
    jr c, jr_004_6a28

    jr c, @+$38

    ld a, [hl]
    add d
    ld [hl], $83
    inc [hl]
    ld a, a
    sub b
    dec [hl]
    inc [hl]
    inc sp
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl-], a
    ld a, a
    ld a, a
    cpl
    ld l, $7e
    ld l, $37
    ld a, a
    ld a, a
    ld [hl], $7e
    ld [hl], $7f
    ld [hl], $38
    ld a, [hl]
    jr c, jr_004_6a06

    ld a, a
    ld a, a
    dec a
    add d
    ld a, a
    dec a
    sub b
    ld a, a
    ld a, a
    dec a
    add b
    ld a, a
    rst RST_08
    rst RST_38
    pop hl
    ld bc, $9003
    ld a, a
    ld a, a
    jp z, $9082

    ld a, a
    ld a, a
    ld a, [hl+]
    cpl
    ld a, [hl]
    cpl
    ld [hl-], a
    ld [hl], $7e
    ld [hl], $37
    ld a, a
    ld a, a
    ld [hl], $7e
    add d
    ld [hl], $7e
    sub b
    ld [hl], $e1
    ld [bc], a
    add d
    cpl
    ld a, [hl]
    sub b
    cpl
    ld a, [hl]
    cpl
    ld l, $e1
    ld bc, $7f7f
    ld a, a

jr_004_6a06:
    ld a, a
    ld a, [hl+]
    ld l, $7e
    ld l, $31
    inc [hl]
    ld a, [hl]
    inc [hl]
    scf
    ld a, [hl]
    ld a, a
    ld a, a
    ld [hl], $e1
    ld [bc], a
    ld a, [hl+]
    add d
    ld a, a
    dec hl
    ld a, [hl]
    sub b
    dec hl
    ld a, [hl]
    dec hl
    ld a, [hl+]
    pop hl
    ld bc, $7f7f
    ld a, a
    ld a, a
    ld a, [hl+]
    cpl

jr_004_6a28:
    ld a, [hl]
    cpl
    ld [hl-], a
    ld [hl], $7e
    ld [hl], $37
    ld a, a
    ld a, a
    ld [hl], $7e
    add d
    ld [hl], $7e
    sub b
    ld [hl], $e1
    ld [bc], a
    add d
    cpl
    ld a, [hl]
    sub b
    cpl
    ld a, [hl]
    cpl
    ld l, $e1
    ld bc, $7f7f
    ld a, a
    ld a, a
    ld a, [hl+]
    ld l, $7e
    ld l, $31
    inc [hl]
    ld a, [hl]
    inc [hl]
    scf
    ld a, [hl]
    ld a, a
    ld a, a
    ld [hl], $7e
    add d
    ld [hl], $90
    dec [hl]
    inc [hl]
    ld [hl-], a
    cpl
    ld a, [hl]
    cpl
    dec sp
    add d
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    cpl
    add d
    ld sp, $7e2e
    sub b
    ld l, $7f
    ld l, $2f
    ld a, [hl]
    cpl
    ld sp, $827e
    ld sp, $3637
    ld sp, $3234
    ld a, [hl]
    sub b
    ld [hl-], a
    ld a, a
    ld [hl-], a
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $7e
    add c
    ld [hl], $90
    ld a, a
    ld a, a
    ld [hl], $7e
    add d
    ld [hl], $35
    ld a, [hl]
    sub b
    dec [hl]
    ld a, a
    ld [hl], $38
    ld a, [hl]
    jr c, jr_004_6aca

    ld a, a
    ld a, a
    dec sp
    ld a, [hl]
    adc d
    dec sp
    add h
    ld a, a
    adc d
    dec sp
    add h
    ld a, a
    adc d
    dec sp
    add h
    ld a, a
    sub b
    dec a
    ld a, [hl]
    dec a
    ld a, [hl-]
    ld a, [hl]
    add hl, sp
    pop hl
    ld [bc], a
    add d
    scf
    ld [hl], $34
    ld sp, $3431
    inc [hl]
    adc d
    ld [hl-], a
    add h
    ld a, a
    sub b
    ld [hl-], a
    ld a, a
    ld [hl-], a
    adc d
    ld [hl-], a
    add h
    ld a, a
    sub b
    ld [hl-], a
    ld a, a
    ld [hl-], a

jr_004_6aca:
    adc d
    ld [hl-], a
    add h
    ld a, a
    sub b
    ld [hl-], a
    ld a, a
    ld [hl-], a
    cpl
    ld a, [hl]
    cpl
    ld [hl-], a
    ld a, [hl]
    add d
    ld [hl-], a
    pop hl
    ld bc, $7f90
    ld a, a
    add e
    inc [hl]
    ld a, a
    sub b
    dec [hl]
    inc [hl]
    inc sp
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl-], a
    ld a, a
    ld a, a
    cpl
    ld l, $7e
    ld l, $37
    ld a, a
    ld a, a
    ld [hl], $7e
    ld [hl], $7f
    ld [hl], $38
    ld a, [hl]
    jr c, jr_004_6b35

    pop hl
    ld [bc], a
    ld [hl-], a
    add d
    ld a, a
    ld [hl-], a
    sub b
    ld a, a
    ld a, a
    ld [hl-], a
    add b
    ld a, a
    pop hl
    ld bc, $7f90
    ld a, a
    rst RST_08
    rst RST_38
    ldh [c], a
    inc bc
    inc bc
    jp z, $8a8a

    inc hl
    add h
    ld a, a
    adc b
    ld a, a
    add c
    ld a, a
    add d
    inc [hl]
    ld a, [hl]
    sub b
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld sp, $7f80
    sub b
    ld a, a
    ld a, a
    cpl
    add d
    ld a, a
    cpl
    ld a, [hl]
    sub b
    cpl
    ld a, a
    cpl
    add b
    ld a, a
    add c
    ld a, a

jr_004_6b35:
    add d
    inc [hl]
    ld a, [hl]
    sub b
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld sp, $7f80
    add d
    cpl
    adc b
    ld a, a
    sub b
    ld a, [hl+]
    add hl, hl
    jr z, @+$28

    ld a, [hl]
    ld h, $23
    add c
    ld a, a
    add d
    ld a, [hl+]
    adc d
    ld l, $84
    ld a, a
    adc d
    ld sp, $7f84
    adc d
    inc [hl]
    add h
    ld a, a
    adc d
    scf
    add h
    ld a, a
    adc d
    ld [hl], $84
    ld a, a
    adc d
    ld sp, $7f84
    adc d

jr_004_6b68:
    ld l, $84
    ld a, a
    add d
    ld sp, $2e8a
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    inc l
    add h
    ld a, a
    adc d
    dec hl
    add h
    ld a, a
    sub b
    ld a, [hl+]
    ld a, a
    ld a, [hl+]
    adc d
    add hl, hl
    add h
    ld a, a
    adc d
    ld a, [hl+]
    add h
    ld a, a
    add d
    dec h
    adc d
    daa
    add h
    ld a, a
    adc d
    add hl, hl
    add h
    ld a, a
    adc d
    ld a, [hl+]
    add h
    ld a, a
    adc d
    dec hl
    add h
    ld a, a
    adc d
    inc l
    add h
    ld a, a
    adc d
    dec l
    add h
    ld a, a
    adc d
    ld l, $84
    ld a, a
    adc d
    ld a, [hl+]
    add h
    ld a, a
    adc d
    ld a, [hl+]
    add h
    ld a, a
    adc d
    ld a, [hl+]
    add h
    ld a, a
    adc d
    ld a, [hl+]
    add h
    ld a, a
    adc d
    ld a, [hl+]
    add h
    ld a, a
    add d
    ld a, [hl+]
    add c
    ld a, a
    add d
    cpl
    sub b
    cpl
    ld a, a
    cpl
    add d
    ld l, $90
    ld l, $7f
    ld l, $82
    dec l
    sub b
    dec l
    ld a, a
    dec l
    adc d
    inc l
    add h
    ld a, a
    adc d
    inc l
    add h
    ld a, a
    add d
    dec hl
    adc b
    ld a, a
    add d
    jr z, jr_004_6b68

    ld a, a
    sub b
    ld a, a
    ld a, a
    cpl
    add d
    ld a, a
    cpl
    sub b
    ld a, a
    ld a, a
    cpl
    add b
    ld a, a
    rst RST_08
    rst RST_38
    inc bc
    jp z, $8082

    scf
    sub b
    ld a, a
    ld a, a
    inc [hl]
    add d
    ld a, a
    inc [hl]
    sub b
    ld a, a
    ld a, a
    inc [hl]
    add b
    ld [hl], $90
    ld a, a
    ld a, a
    inc [hl]
    add d
    ld a, a
    inc [hl]
    sub b
    ld a, a

jr_004_6c0b:
    ld a, a
    inc [hl]
    add b
    ld [hl], $90
    ld a, a
    ld a, a
    inc [hl]
    add d
    ld a, a
    inc [hl]
    inc [hl]
    add b
    scf
    add d
    ld a, a
    adc b
    ld [hl], $81
    ld a, a
    sub b
    ld a, a
    ld a, a
    dec [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    jp $8282


    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    rst RST_08
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    add d
    ld [hl], $90
    ld a, a
    inc [hl]
    inc [hl]
    jp $8282


    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    rst RST_08
    add d
    ld [hl], $90
    dec [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jp nz, $8282

    scf
    scf
    scf
    scf
    rst RST_08
    add b
    ld [hl], $88
    ld [hl], $90
    dec [hl]
    inc [hl]
    dec [hl]
    ld a, a
    ld a, a
    ld [hl], $82
    ld a, a
    ld [hl], $90
    ld a, a
    ld a, a
    ld [hl], $82
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    rst RST_08
    rst RST_38
    ld b, b
    inc bc
    ld b, b
    ld b, $80
    inc c
    nop
    nop
    jr c, jr_004_6cf7

    nop
    ret nz

    jr nc, jr_004_6c0b

    nop
    ret nz

    nop
    and h
    nop
    add b
    nop
    and [hl]
    nop
    add b
    ld bc, $a314
    ld l, h
    inc h
    ld l, [hl]
    and l
    ld l, a
    db $fd
    ld l, a
    ld d, $70
    inc e
    ld [hl], b
    ldh [rP1], a
    inc bc
    jp z, $8582

    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    cpl
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $37
    ld a, [hl]
    scf
    add hl, sp
    add d
    ld a, [hl-]
    sub b
    add hl, sp
    ld a, [hl]
    add hl, sp

jr_004_6cc8:
    ld a, [hl-]
    add d
    add hl, sp
    sub b
    scf
    ld a, [hl]
    scf
    add hl, sp
    add d
    scf
    sub b
    cpl
    ld a, [hl]
    cpl
    ld [hl-], a
    add l
    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    cpl
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $37
    ld a, [hl]
    scf
    add hl, sp
    add d
    ld a, [hl-]
    sub b
    add hl, sp
    ld a, [hl]
    add hl, sp

jr_004_6cf7:
    ld a, [hl-]
    add d
    add hl, sp
    sub b
    scf
    ld a, [hl]
    scf
    add hl, sp
    add d
    scf
    sub b
    cpl
    ld a, [hl]
    cpl
    ld [hl-], a
    add l
    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    inc [hl]
    add hl, sp
    ld a, [hl]
    add hl, sp
    dec sp
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    ccf
    sub b
    ld a, $7e
    ld a, $3f
    add d
    ld a, $90
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    inc a
    sub b
    inc [hl]
    ld a, [hl]
    inc [hl]
    scf
    add l
    jr c, jr_004_6cc8

    add hl, sp
    ld a, a
    add hl, sp
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    add b
    ld a, a
    sub b
    ld a, $7e
    ld a, $43
    ld b, b
    ld a, [hl]
    ld b, b
    dec sp
    add hl, sp
    ld a, [hl]
    add hl, sp
    ld a, $3b
    ld a, [hl]
    dec sp
    scf
    inc [hl]
    ld a, [hl]
    inc [hl]
    add hl, sp
    ld [hl], $7e
    ld [hl], $32
    cpl
    ld a, [hl]
    cpl
    inc [hl]
    dec l
    ld a, [hl]
    dec l
    ld [hl-], a
    add l
    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    cpl
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $37
    ld a, [hl]
    scf
    add hl, sp
    add d
    ld a, [hl-]
    sub b
    add hl, sp
    ld a, [hl]
    add hl, sp

jr_004_6d84:
    ld a, [hl-]
    add d
    add hl, sp
    sub b
    scf
    ld a, [hl]
    scf
    add hl, sp
    add d
    scf
    sub b
    cpl
    ld a, [hl]
    cpl
    ld [hl-], a
    add l
    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    add b
    ld a, a
    sub b
    ld a, $7e
    ld a, $43
    ld b, b
    ld a, [hl]
    ld b, b
    dec sp
    add hl, sp
    ld a, [hl]
    add hl, sp
    ld a, $3b
    ld a, [hl]
    dec sp
    scf
    inc [hl]
    ld a, [hl]
    inc [hl]
    add hl, sp
    ld [hl], $7e
    ld [hl], $32
    cpl
    ld a, [hl]
    cpl
    inc [hl]
    dec l
    ld a, [hl]
    dec l
    ld [hl-], a
    add l
    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    inc [hl]
    add hl, sp
    ld a, [hl]
    add hl, sp
    dec sp
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    ccf
    sub b
    ld a, $7e
    ld a, $3f
    add d
    ld a, $90
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    inc a
    sub b
    inc [hl]
    ld a, [hl]
    inc [hl]
    scf
    add l
    jr c, jr_004_6d84

    add hl, sp
    ld a, a
    add hl, sp
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    inc [hl]
    add hl, sp
    ld a, [hl]
    add hl, sp
    dec sp
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    ccf
    sub b
    ld a, $7e
    ld a, $3f
    add d
    ld a, $90
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    inc a
    sub b
    cpl
    ld a, [hl]
    cpl
    ld [hl-], a
    rst RST_08
    add e
    ld a, a
    rst RST_38
    pop hl
    ld bc, $8303
    ld a, a
    jp z, $8582

    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    cpl
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $37
    ld a, [hl]
    scf
    add hl, sp
    add d
    ld a, [hl-]
    sub b
    add hl, sp
    ld a, [hl]
    add hl, sp

jr_004_6e4b:
    ld a, [hl-]
    add d
    add hl, sp
    sub b
    scf
    ld a, [hl]
    scf
    add hl, sp
    add d
    scf
    sub b
    cpl
    ld a, [hl]
    cpl
    ld [hl-], a
    add l
    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    cpl
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $37
    ld a, [hl]
    scf
    add hl, sp
    add d
    ld a, [hl-]
    sub b
    add hl, sp
    ld a, [hl]
    add hl, sp
    ld a, [hl-]
    add d
    add hl, sp
    sub b
    scf
    ld a, [hl]
    scf
    add hl, sp
    add d
    scf
    sub b
    cpl
    ld a, [hl]
    cpl
    ld [hl-], a
    add l
    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    inc [hl]
    add hl, sp
    ld a, [hl]
    add hl, sp
    dec sp
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    ccf
    sub b
    ld a, $7e
    ld a, $3f
    add d
    ld a, $90
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    inc a
    sub b
    inc [hl]
    ld a, [hl]
    inc [hl]
    scf
    add l
    jr c, jr_004_6e4b

    add hl, sp
    ld a, a
    add hl, sp
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    add b
    ld a, a
    sub b
    ld a, $7e
    ld a, $43
    ld b, b
    ld a, [hl]
    ld b, b
    dec sp
    add hl, sp
    ld a, [hl]
    add hl, sp
    ld a, $3b
    ld a, [hl]
    dec sp
    scf
    inc [hl]
    ld a, [hl]
    inc [hl]
    add hl, sp
    ld [hl], $7e
    ld [hl], $32
    cpl
    ld a, [hl]
    cpl
    inc [hl]
    dec l
    ld a, [hl]
    dec l
    ld [hl-], a
    add l
    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    cpl
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $37
    ld a, [hl]
    scf
    add hl, sp
    add d
    ld a, [hl-]
    sub b
    add hl, sp
    ld a, [hl]
    add hl, sp

jr_004_6f07:
    ld a, [hl-]
    add d
    add hl, sp
    sub b
    scf
    ld a, [hl]
    scf
    add hl, sp
    add d
    scf
    sub b
    cpl
    ld a, [hl]
    cpl
    ld [hl-], a
    add l
    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    add b
    ld a, a
    sub b
    ld a, $7e
    ld a, $43
    ld b, b
    ld a, [hl]
    ld b, b
    dec sp
    add hl, sp
    ld a, [hl]
    add hl, sp
    ld a, $3b
    ld a, [hl]

jr_004_6f33:
    dec sp
    scf
    inc [hl]
    ld a, [hl]
    inc [hl]
    add hl, sp
    ld [hl], $7e
    ld [hl], $32
    cpl
    ld a, [hl]
    cpl
    inc [hl]
    dec l
    ld a, [hl]
    dec l
    ld [hl-], a
    add l
    inc sp
    sub b
    inc [hl]
    ld a, a
    inc [hl]
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    inc [hl]
    add hl, sp
    ld a, [hl]
    add hl, sp
    dec sp
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    ccf
    sub b
    ld a, $7e
    ld a, $3f
    add d
    ld a, $90
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    inc a
    sub b
    inc [hl]
    ld a, [hl]
    inc [hl]
    scf
    add l
    jr c, jr_004_6f07

    add hl, sp
    ld a, a
    add hl, sp
    add c
    ld a, a
    add e
    ld a, a
    adc e
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    ld a, a
    inc [hl]
    add hl, sp
    ld a, [hl]
    add hl, sp
    dec sp
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    ccf
    sub b
    ld a, $7e
    ld a, $3f
    add d
    ld a, $90
    inc a
    ld a, [hl]
    inc a
    ld a, $82
    inc a
    sub b

jr_004_6f9f:
    cpl
    ld a, [hl]
    cpl
    ld [hl-], a
    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    jp z, $c282

    add d
    sub b
    jr z, jr_004_702e

    jr z, jr_004_6f33

    ld h, $25
    inc h
    inc hl
    inc h
    dec h
    ld h, $28
    ld a, [hl+]
    ld hl, $282a
    add hl, hl
    ld a, [hl+]
    add hl, hl
    sub b
    jr z, jr_004_7042

    inc [hl]
    add d
    ld [hl-], a
    ld sp, $2f30
    ld sp, $312a
    cpl
    jr nc, @+$33

    jr nc, @+$31

    dec l
    dec hl
    cpl
    dec l
    dec l
    dec hl
    dec hl
    ld a, [hl+]
    ld a, [hl+]
    jr z, jr_004_7004

    dec l
    cpl
    jr z, jr_004_700f

    dec l
    ld l, $2f
    ld l, $90
    dec l
    ld a, a
    inc [hl]
    add d
    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc [hl]
    jr z, jr_004_7019

    ld a, [hl+]
    ld [hl-], a
    ld [hl], $30
    cpl
    inc hl
    inc h
    ld h, $cf
    rst RST_08
    add e
    ld a, a
    rst RST_38
    inc bc
    jp z, $c482

    add d
    ret z

    add d

jr_004_7004:
    add d
    ld [hl], $90
    inc [hl]
    ld a, a
    dec [hl]
    add d
    ld [hl], $90
    inc [hl]
    ld a, a

jr_004_700f:
    dec [hl]
    rst RST_08
    rst RST_08
    rst RST_08
    add e
    ld a, a
    rst RST_38
    ld b, b
    inc bc
    ld b, b

jr_004_7019:
    ld b, $00
    nop
    jr c, jr_004_6f9f

    nop
    ret nz

    jr nc, @-$6e

    nop
    ret nz

    nop
    sub h
    nop
    add b
    ld bc, $3620
    ld [hl], b
    ld a, [bc]
    ld [hl], c

jr_004_702e:
    pop hl
    ld [hl], c
    sub [hl]
    ld [hl], d
    xor [hl]
    ld [hl], d
    or h
    ld [hl], d
    ldh [rP1], a
    inc bc
    jp z, $8283

    ld [hl-], a
    add e
    ld a, a
    ld [hl-], a
    add a
    ld a, a

jr_004_7042:
    add d
    ld [hl-], a
    add e
    ld a, a
    ld [hl-], a
    add b
    ld a, a
    add e
    ld [hl-], a
    inc sp
    inc [hl]
    ld [hl-], a
    inc sp
    ld a, a
    ld [hl-], a
    ld a, a
    add a
    cpl
    add b
    ld a, a
    ld a, a
    add d
    ld [hl-], a
    add e
    ld a, a
    ld [hl-], a
    add a
    ld a, a
    add d
    ld [hl-], a
    add e
    ld a, a
    ld [hl-], a
    add b
    ld a, a
    add e
    ld [hl-], a
    inc sp
    inc [hl]
    ld [hl-], a
    inc sp
    ld a, a
    ld [hl-], a
    ld a, a
    add a
    cpl
    add b
    ld a, a
    add e
    ld a, a
    ld [hl-], a
    ld a, a
    ld [hl-], a
    ld a, a
    inc sp
    ld a, a
    inc [hl]
    add d
    dec [hl]
    add e
    ld a, a
    dec [hl]
    add a
    ld a, a
    add d
    dec [hl]
    add e
    ld a, a
    dec [hl]
    add b
    ld a, a
    add e
    dec [hl]
    ld [hl], $37
    dec [hl]
    ld [hl], $7f
    dec [hl]
    ld a, a
    add a
    ld [hl-], a
    add b
    ld a, a
    add e
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    ld a, a
    inc [hl]
    ld a, a
    inc sp
    add d
    ld [hl-], a
    add e
    ld a, a
    ld [hl-], a
    add a
    ld a, a
    add d
    ld [hl-], a
    add e
    ld a, a
    ld [hl-], a
    add b
    ld a, a
    add e
    ld [hl-], a
    inc sp
    inc [hl]
    ld [hl-], a
    inc sp
    ld a, a
    ld [hl-], a
    ld a, a
    add a
    cpl
    add c
    ld a, a
    add d
    ld a, a
    add e
    ld a, a
    ld [hl-], a
    ld a, a
    ld [hl-], a
    ld a, a
    ld [hl-], a
    ld a, a
    ld sp, $307f
    add d
    cpl
    add e
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    ld l, $7f
    dec l
    add d
    inc l
    add e
    ld a, a
    inc l
    ld a, a
    inc l
    ld a, a
    inc l
    ld a, a
    inc l
    ld a, a
    inc l
    ld a, a
    dec l
    ld a, a
    ld l, $82
    cpl
    add e
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    ld l, $7f
    dec l
    add b
    dec hl
    ld a, [hl]
    add c
    dec hl
    sub b
    dec hl
    dec l
    ld l, $2f
    jr nc, jr_004_7137

    rst RST_08
    adc d
    ld a, a
    rst RST_38
    pop hl
    ld bc, $8203
    ld a, a
    jp z, $8283

    ld [hl-], a
    add e
    ld a, a
    ld [hl-], a
    add a
    ld a, a
    add d
    ld [hl-], a
    add e
    ld a, a
    ld [hl-], a
    add b
    ld a, a
    add e
    ld [hl-], a

jr_004_7121:
    inc sp
    inc [hl]
    ld [hl-], a
    inc sp
    ld a, a
    ld [hl-], a
    ld a, a
    add a
    cpl
    add b
    ld a, a
    ld a, a
    add d
    ld [hl-], a
    add e
    ld a, a
    ld [hl-], a
    add a
    ld a, a
    add d
    ld [hl-], a
    add e

jr_004_7137:
    ld a, a
    ld [hl-], a
    add b
    ld a, a
    add e
    ld [hl-], a
    inc sp
    inc [hl]
    ld [hl-], a
    inc sp
    ld a, a
    ld [hl-], a
    ld a, a
    add a
    cpl
    add b
    ld a, a
    add e
    ld a, a
    ld [hl-], a
    ld a, a
    ld [hl-], a
    ld a, a
    inc sp
    ld a, a
    inc [hl]
    add d
    dec [hl]
    add e
    ld a, a
    dec [hl]
    add a
    ld a, a
    add d
    dec [hl]
    add e
    ld a, a
    dec [hl]
    add b
    ld a, a
    add e
    dec [hl]
    ld [hl], $37
    dec [hl]
    ld [hl], $7f
    dec [hl]
    ld a, a
    add a
    ld [hl-], a
    add b
    ld a, a
    add e
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    ld a, a
    inc [hl]
    ld a, a
    inc sp
    add d
    ld [hl-], a
    add e
    ld a, a
    ld [hl-], a
    add a
    ld a, a
    add d
    ld [hl-], a
    add e
    ld a, a
    ld [hl-], a
    add b
    ld a, a
    add e
    ld [hl-], a
    inc sp
    inc [hl]
    ld [hl-], a
    inc sp
    ld a, a
    ld [hl-], a
    ld a, a
    add a
    cpl
    add c
    ld a, a
    add d
    ld a, a
    add e
    ld a, a
    ld [hl-], a
    ld a, a
    ld [hl-], a
    ld a, a
    ld [hl-], a
    ld a, a
    ld sp, $847f
    jr nc, jr_004_7121

    cpl
    add e
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    ld l, $7f
    dec l
    add d
    inc l
    add e
    ld a, a
    inc l
    ld a, a
    inc l
    ld a, a
    inc l
    ld a, a
    inc l
    ld a, a
    inc l
    ld a, a
    dec l
    ld a, a
    ld l, $82
    cpl
    add e
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    ld l, $7f
    dec l
    add b
    dec hl
    ld a, [hl]
    add c
    dec hl
    sub b
    dec hl
    dec l
    ld l, $2f
    jr nc, jr_004_720e

    add h
    ld a, a
    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    jp z, $c783

    add e
    add e
    jr z, jr_004_726a

    jr z, jr_004_726c

    jr z, jr_004_726e

    jr z, jr_004_7270

    jr z, jr_004_7272

    jr z, jr_004_7274

    jr z, jr_004_721a

    ld h, $27
    rst RST_08
    jr z, jr_004_727b

    jr z, jr_004_727d

    jr z, jr_004_727f

    jr z, jr_004_7281

    jr z, jr_004_7283

    jr z, jr_004_7285

    add hl, hl
    ld a, a
    ld a, [hl+]
    ld a, a
    jp $8383


    dec hl

jr_004_720e:
    ld a, a
    dec hl
    ld a, a
    dec hl
    ld a, a
    dec hl
    ld a, a
    dec hl
    ld a, a
    dec hl
    ld a, a
    dec hl

jr_004_721a:
    ld h, $29
    ld a, [hl+]
    rst RST_08
    dec hl
    ld a, a
    dec hl
    ld a, a
    dec hl
    ld a, a
    dec hl
    ld a, a
    dec hl
    ld a, a
    dec hl
    ld a, a
    ld a, [hl+]
    ld a, a
    add hl, hl
    ld a, a
    jp $8383


    jr z, @+$81

    jr z, jr_004_72b4

    jr z, jr_004_72b6

jr_004_7237:
    jr z, jr_004_72b8

    jr z, jr_004_72ba

    jr z, jr_004_72bc

    jr z, jr_004_7262

    ld h, $27
    rst RST_08
    jr z, jr_004_72c3

    jr z, jr_004_72c5

    jr z, jr_004_72c7

    jr z, jr_004_72c9

    jr z, @+$81

    jr z, jr_004_72cd

    daa
    ld a, a
    ld h, $7f
    dec h
    ld a, a
    dec h
    ld a, a
    dec h
    ld a, a
    dec h
    ld a, a
    dec h
    ld a, a
    dec h
    ld a, a
    inc h
    ld a, a
    inc hl
    ld a, a

jr_004_7262:
    ld [hl+], a
    ld a, a
    ld [hl+], a
    ld a, a
    ld [hl+], a
    ld a, a
    ld [hl+], a
    ld a, a

jr_004_726a:
    ld [hl+], a
    ld a, a

jr_004_726c:
    ld [hl+], a
    ld a, a

jr_004_726e:
    inc hl
    ld a, a

jr_004_7270:
    inc h
    ld a, a

jr_004_7272:
    dec h
    ld a, a

jr_004_7274:
    dec h
    ld a, a
    dec h
    ld a, a
    dec h
    ld a, a
    dec h

jr_004_727b:
    ld a, a
    dec h

jr_004_727d:
    ld a, a
    inc h

jr_004_727f:
    ld a, a
    inc hl

jr_004_7281:
    ld a, a
    ld [hl+], a

jr_004_7283:
    ld a, a
    ld [hl+], a

jr_004_7285:
    ld a, a
    ld [hl+], a
    ld a, a
    ld [hl+], a
    ld a, a
    ld [hl+], a
    ld a, a
    ld [hl+], a
    ld a, a
    ld [hl+], a
    ld a, a
    ld [hl+], a
    ld a, a
    rst RST_08
    adc d
    ld a, a
    rst RST_38
    inc bc
    jp z, $c382

    add d
    ret z

    add d
    add d
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    add e
    inc [hl]
    inc [hl]
    rst RST_08
    rst RST_08
    rst RST_08
    adc d
    ld a, a
    rst RST_38
    ld b, b
    inc bc
    ld b, b
    ld b, $00
    nop

jr_004_72b4:
    jr c, jr_004_7237

jr_004_72b6:
    nop
    ret nz

jr_004_72b8:
    nop
    sub h

jr_004_72ba:
    nop
    add b

jr_004_72bc:
    ld bc, $ca0d
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [bc], a

jr_004_72c3:
    ld [hl], h
    ld l, l

jr_004_72c5:
    ld [hl], h
    adc c

jr_004_72c7:
    ld [hl], h
    adc a

jr_004_72c9:
    ld [hl], h
    ldh [rP1], a
    inc bc

jr_004_72cd:
    jp z, $ca80

    add b
    sub c
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ld a, $3a
    ld [hl], $3d
    add hl, sp
    dec [hl]
    ld a, $3a
    ld [hl], $3f
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ld b, b
    ld a, [hl-]
    jr c, jr_004_733c

    dec sp
    scf
    ld a, $3a
    ld [hl], $3f
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ld a, $3a
    ld [hl], $3d
    add hl, sp
    dec [hl]
    ld a, $3a
    ld [hl], $3f
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ld a, $3a
    ld [hl], $3f
    dec sp
    scf
    ld b, b
    ld a, [hl-]
    jr c, jr_004_7374

    inc a
    jr c, jr_004_7377

    inc a
    jr c, jr_004_737a

    inc a
    jr c, jr_004_737d

jr_004_733c:
    inc a
    jr c, jr_004_7380

    inc a
    jr c, jr_004_7382

    dec sp
    scf
    ccf
    ld a, [hl-]
    ld [hl], $40
    dec sp
    scf
    ld b, c
    inc a
    jr c, jr_004_738f

    inc a
    jr c, jr_004_7392

    inc a
    jr c, jr_004_7395

    inc a
    jr c, jr_004_7398

    inc a
    jr c, jr_004_739c

    dec a
    add hl, sp
    ld b, c
    inc a
    jr c, jr_004_73a0

    inc a
    jr c, @-$2f

    rst RST_08
    rst RST_38
    pop hl
    ld bc, $8a03
    ld a, a
    jp z, $ca83

    add e
    sub c
    ccf
    dec sp
    scf
    ccf
    dec sp

jr_004_7374:
    scf
    ccf
    dec sp

jr_004_7377:
    scf
    ccf
    dec sp

jr_004_737a:
    scf
    ccf
    dec sp

jr_004_737d:
    scf
    ld a, $3a

jr_004_7380:
    ld [hl], $3d

jr_004_7382:
    add hl, sp
    dec [hl]
    ld a, $3a
    ld [hl], $3f
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp

jr_004_738f:
    scf
    ccf
    dec sp

jr_004_7392:
    scf
    ccf
    dec sp

jr_004_7395:
    scf
    ld b, b
    ld a, [hl-]

jr_004_7398:
    jr c, jr_004_73d9

    dec sp
    scf

jr_004_739c:
    ld a, $3a
    ld [hl], $3f

jr_004_73a0:
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ld a, $3a
    ld [hl], $3d
    add hl, sp
    dec [hl]
    ld a, $3a
    ld [hl], $3f
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ccf
    dec sp
    scf
    ld a, $3a
    ld [hl], $3f
    dec sp
    scf
    ld b, b
    ld a, [hl-]
    jr c, jr_004_7411

    inc a
    jr c, @+$43

    inc a
    jr c, jr_004_7417

    inc a
    jr c, jr_004_741a

jr_004_73d9:
    inc a
    jr c, jr_004_741d

    inc a
    jr c, @+$42

    dec sp
    scf
    ccf
    ld a, [hl-]
    ld [hl], $40
    dec sp
    scf
    ld b, c
    inc a
    jr c, @+$43

    inc a
    jr c, @+$43

    inc a
    jr c, jr_004_7432

    inc a
    jr c, jr_004_7435

    inc a
    jr c, @+$44

    dec a
    add hl, sp
    ld b, c
    inc a
    jr c, jr_004_743d

    inc a
    jr c, @-$2f

    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    jp z, $ca84

    add h
    add h
    ld sp, $317f
    ld a, a
    ld sp, $317f

jr_004_7411:
    ld a, a
    ld sp, $307f
    ld a, a
    cpl

jr_004_7417:
    ld a, a
    jr nc, jr_004_7499

jr_004_741a:
    ld sp, $317f

jr_004_741d:
    ld a, a
    ld sp, $317f
    ld a, a
    ld sp, $327f
    ld a, a
    ld sp, $307f
    ld a, a
    ld sp, $317f
    ld a, a
    ld sp, $317f
    ld a, a

jr_004_7432:
    ld sp, $307f

jr_004_7435:
    ld a, a
    cpl
    ld a, a
    jr nc, jr_004_74b9

    ld sp, $317f

jr_004_743d:
    ld a, a
    ld sp, $317f
    ld a, a
    ld sp, $307f
    ld a, a
    ld sp, $327f
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    ld [hl-], a
    ld a, a
    ld sp, $327f
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc [hl]
    ld a, a
    inc sp
    ld a, a
    ld [hl-], a
    ld a, a
    rst RST_08
    rst RST_08
    rst RST_38
    inc bc
    jp z, $ca83

    add e
    jp $8383


    inc [hl]
    ld a, a
    inc [hl]
    ld a, a
    inc [hl]
    ld a, a
    inc [hl]
    inc [hl]
    inc [hl]
    ld a, a
    inc [hl]
    ld a, a
    inc [hl]
    ld a, a
    inc [hl]
    inc [hl]
    rst RST_08
    rst RST_08
    rst RST_08
    rst RST_38
    ld b, b
    inc bc
    ld b, b
    ld b, $00
    nop
    nop
    sub h
    nop
    add b
    ld bc, $a10c
    ld [hl], h
    jp hl


    ld [hl], h

jr_004_7499:
    inc [hl]
    ld [hl], l
    ld l, d
    ld [hl], l
    ld l, e
    ld [hl], l
    ld [hl], c
    ld [hl], l
    ldh [rP1], a
    inc bc
    jp z, $8383

    ld a, [hl+]
    inc l
    cpl
    inc sp
    ld [hl], $2d
    dec l
    dec h
    ld a, [hl+]
    inc l
    cpl
    ld [hl-], a
    ld [hl], $2d
    dec l
    ld h, $2a
    inc l

jr_004_74b9:
    cpl
    ld [hl-], a
    ld [hl], $2f
    cpl
    ld h, $25
    daa
    ld a, [hl+]
    dec l
    ld sp, $2529
    ld a, a
    ld a, [hl+]
    inc l
    ld a, [hl+]
    inc l
    inc l
    add hl, hl
    add hl, hl
    jr nz, jr_004_74fa

    inc l
    ld a, [hl+]
    inc l
    cpl
    daa
    daa
    ld e, $2c
    dec l
    inc l
    dec l
    inc l
    cpl
    inc l
    cpl
    dec l
    cpl
    ld a, [hl+]
    inc l

jr_004_74e3:
    inc l
    dec l
    dec h
    ld a, [hl+]
    rst RST_08
    rst RST_38
    pop hl
    ld bc, $ca03
    add e
    adc d
    ld a, a
    add e
    dec l
    ld sp, $3135
    ld sp, $212a
    ld a, a
    dec l

jr_004_74fa:
    ld sp, $3234
    ld [hl-], a
    ld a, [hl+]
    ld hl, $2d7f
    ld sp, $3234
    ld [hl-], a
    ld a, [hl+]
    inc hl
    ld a, a
    add hl, hl
    inc l
    cpl
    inc l
    inc l
    add d
    ld a, a
    add e
    dec l
    dec l
    dec l
    dec l
    ld a, [hl+]
    ld a, [hl+]
    dec h
    dec e
    dec l
    dec l
    dec l
    dec l
    ld a, [hl+]
    ld a, [hl+]
    inc hl
    daa
    cpl
    cpl
    cpl
    cpl
    ld sp, $3131
    ld sp, $3131
    dec l
    ld a, [hl+]
    cpl
    cpl
    inc l
    add h
    add hl, hl
    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    jp z, $8383

    ld a, [hl+]
    ld a, a
    adc b
    ld a, a
    add e
    ld h, $7f
    adc b
    ld a, a
    add e
    inc hl
    ld a, a
    adc b
    ld a, a
    add e
    dec h
    ld a, a
    adc b
    ld a, a
    add e
    ld a, [hl+]
    ld a, a
    adc b
    ld a, a
    add e
    ld a, [hl+]
    ld a, a
    adc b
    ld a, a
    add e
    jr z, jr_004_74e3

    ld a, a
    add e
    add hl, hl
    adc c
    ld a, a
    add e
    ld a, [hl+]
    ld a, a
    ld h, $7f
    inc hl
    ld a, a
    dec h
    ld a, a
    rst RST_08
    rst RST_38
    rst RST_38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld bc, $7f11
    ld [hl], l
    jp Jump_000_0775


    halt
    dec a
    halt
    ld h, [hl]
    halt
    ld l, h
    halt
    ldh [rP1], a
    inc bc
    jp z, $8383

    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    dec [hl]
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    add hl, sp
    dec [hl]
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    dec [hl]
    add hl, sp
    dec [hl]
    ld a, a
    inc sp
    ld a, a
    inc sp
    inc sp
    dec [hl]

jr_004_75a5:
    scf
    ld a, a
    scf
    ld a, a
    scf
    ld a, a
    scf

jr_004_75ac:
    add hl, sp
    scf
    ld a, a
    scf
    ld a, a
    scf
    ld a, a
    scf
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, [hl-]
    dec sp
    dec a
    ld a, a
    adc b
    ld a, a
    rst RST_08
    rst RST_38
    pop hl
    ld bc, $ca03
    add e
    add e
    dec l
    ld a, a
    dec l
    ld a, a
    dec l
    ld a, a
    dec l
    dec l
    dec l
    ld a, a
    dec l
    ld a, a
    dec l
    ld a, a
    dec l
    dec l
    dec l
    dec l
    ld a, a
    dec l
    ld a, a
    dec l
    ld a, a
    dec l
    dec l
    dec l
    ld a, a
    dec l
    ld a, a
    dec l
    dec l
    dec l
    ld sp, $317f
    ld a, a
    ld sp, $317f
    ld sp, $7f31
    ld sp, $317f
    ld a, a
    ld sp, $3434
    ld a, a
    inc [hl]
    ld a, a
    inc [hl]

jr_004_75fe:
    ld a, a
    inc [hl]
    inc [hl]
    inc [hl]
    ld a, a
    adc b
    ld a, a
    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    jp z, $8183

    ld a, a
    add e
    ld a, a
    inc h
    add d
    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    inc h
    add d
    ld a, a
    add b
    ld a, a
    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    jr z, jr_004_75a5

    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    jr z, jr_004_75ac

    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    dec hl
    add d
    ld a, a
    add e
    dec hl
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rst RST_08
    rst RST_38
    inc bc
    jp z, $c283

    add e
    add e
    dec [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    rst RST_08
    rst RST_08
    rst RST_38
    ld b, b
    nop
    ld b, b
    ld b, $00
    nop
    jr nc, jr_004_75fe

    nop
    ret nz

    nop
    sub h
    nop
    add b
    ld bc, $820d
    halt
    xor c
    halt
    ret nc

    halt
    inc c
    ld [hl], a
    ld e, $77
    ld [hl+], a
    ld [hl], a
    ldh [rP1], a
    inc bc
    add h
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $8031
    ld [hl-], a
    rst RST_38
    pop hl
    nop
    inc bc
    add h
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add b
    dec hl
    rst RST_38
    ldh [c], a
    ld bc, $9103
    ld sp, $2f30
    ld l, $2f
    jr nc, jr_004_770c

    jr nc, jr_004_770c

    ld l, $2f
    jr nc, jr_004_7712

    jr nc, jr_004_7712

    ld l, $2f
    jr nc, jr_004_7718

    jr nc, jr_004_7718

    ld l, $2f
    jr nc, jr_004_771e

    jr nc, jr_004_771e

    ld l, $2f
    jr nc, jr_004_7724

    jr nc, jr_004_7724

    ld l, $2f
    jr nc, jr_004_772a

    jr nc, jr_004_772a

    ld l, $2f
    jr nc, jr_004_7730

    jr nc, jr_004_7730

    ld l, $2f
    ld a, [hl]
    cpl
    add h
    cpl
    adc d
    ld a, a
    adc b
    ld a, a
    rst RST_38

jr_004_770c:
    inc bc
    ret z

    add d
    sub c
    dec [hl]
    dec [hl]

jr_004_7712:
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    rst RST_08
    add d

jr_004_7718:
    dec [hl]
    add c
    ld a, a
    add d
    inc [hl]
    rst RST_38

jr_004_771e:
    ld b, b
    inc bc
    nop

jr_004_7721:
    nop
    scf
    and b

jr_004_7724:
    db $10
    ret nz

    nop
    add c
    nop
    add b

jr_004_772a:
    ld bc, $3810
    ld [hl], a
    ld e, l
    ld [hl], a

jr_004_7730:
    add d
    ld [hl], a
    and b
    ld [hl], a
    and c
    ld [hl], a
    and a
    ld [hl], a
    ldh [rP1], a
    inc bc
    jp z, $ca83

    add e
    add e
    dec sp
    add hl, sp
    inc [hl]
    dec sp
    add hl, sp
    inc [hl]
    dec sp
    add hl, sp
    inc [hl]
    dec sp
    add hl, sp
    inc [hl]
    dec sp
    add hl, sp
    inc [hl]

jr_004_774f:
    dec sp
    add hl, sp
    inc [hl]
    dec sp
    add hl, sp
    inc [hl]
    dec sp
    add hl, sp
    inc [hl]
    rst RST_08
    rst RST_08
    adc d
    ld a, a
    rst RST_38

jr_004_775d:
    pop hl
    ld bc, $8a03
    ld a, a
    jp z, $ca83

    add e
    add e
    cpl
    dec l
    jr z, jr_004_779a

    dec l
    jr z, jr_004_779d

    dec l
    jr z, jr_004_77a0

    dec l
    jr z, jr_004_77a3

    dec l
    jr z, jr_004_77a6

    dec l
    jr z, @+$31

    dec l
    jr z, jr_004_77ac

    dec l
    jr z, jr_004_774f

    rst RST_08
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    jp z, $ca83

    add e
    add e
    cpl
    adc c
    ld a, a
    add c
    ld a, a
    add e
    dec l
    adc c
    ld a, a
    add c
    ld a, a
    add e
    jr z, jr_004_7721

    ld a, a
    add c

jr_004_779a:
    ld a, a
    rst RST_08
    rst RST_08

jr_004_779d:
    adc d
    ld a, a
    rst RST_38

jr_004_77a0:
    rst RST_38
    ld b, b
    rlca

jr_004_77a3:
    ld b, b
    ld b, $00

jr_004_77a6:
    nop
    ld bc, $b510
    ld [hl], a
    cp [hl]

jr_004_77ac:
    ld [hl], a
    bit 6, a
    jp nc, $d377

    ld [hl], a
    reti


    ld [hl], a
    ldh [rP1], a
    inc bc
    add d
    ld l, $2e
    jr nc, jr_004_77ed

    rst RST_38
    pop hl
    ld bc, $8303
    ld a, a
    add d
    dec l
    dec l
    cpl
    ld a, [hl]
    add e
    cpl
    rst RST_38
    ldh [c], a
    ld [bc], a
    inc bc
    add c
    ld [hl+], a
    ld a, a
    rst RST_38
    rst RST_38
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    sub d
    jr nz, jr_004_775d

    inc [hl]
    add c
    ld b, b
    ret nz

    nop
    db $10
    rst RST_28
    ld [hl], a
    pop af
    ld [hl], a
    ldh a, [c]
    ld [hl], a
    di
    ld [hl], a
    db $f4
    ld [hl], a

jr_004_77ed:
    db $f4
    ld [hl], a
    inc bc
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    db $10
    ld [bc], a
    ld a, b
    inc b
    ld a, b
    dec b
    ld a, b
    ld b, $78
    rlca
    ld a, b
    rlca
    ld a, b
    inc bc
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    jr jr_004_781f

    ld a, b

jr_004_780b:
    ld d, $78
    inc e
    ld a, b
    dec e
    ld a, b
    ld hl, $2378
    ld a, b
    rst RST_38
    pop hl
    ld bc, $8103
    inc [hl]
    rst RST_38
    rst RST_38
    inc bc
    add c

jr_004_781f:
    inc [hl]
    rst RST_38
    add b
    dec bc
    nop
    db $d3
    ld h, b
    add b
    inc bc
    db $10
    dec [hl]
    ld a, b
    ld [hl], $78
    ld a, $78
    ccf
    ld a, b
    ld b, l
    ld a, b
    ld b, a
    ld a, b
    rst RST_38
    pop hl
    nop
    inc bc
    adc h
    ld a, a
    add e

jr_004_783c:
    ld c, e
    rst RST_38
    rst RST_38
    inc bc
    add h
    inc [hl]
    adc d
    dec [hl]
    rst RST_38
    nop
    dec bc
    dec l
    ret nc

    jr nc, jr_004_780b

    nop
    pop bc
    ld d, b
    add b
    inc bc
    db $10
    ld e, l
    ld a, b
    ld e, [hl]
    ld a, b
    ld e, a
    ld a, b
    ld h, b
    ld a, b
    ld h, [hl]
    ld a, b

jr_004_785b:
    ld h, [hl]
    ld a, b
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    adc h
    inc [hl]
    adc d
    dec [hl]
    rst RST_38
    inc sp
    ret nc

    ld d, e
    ret nz

    jr nc, jr_004_783c

    dec [hl]
    ret nz

    inc bc
    inc de
    ld a, h
    ld a, b
    ld a, l
    ld a, b
    adc d
    ld a, b
    adc e
    ld a, b
    sub e
    ld a, b
    sub l
    ld a, b
    rst RST_38
    pop hl
    nop
    inc bc
    add l
    ld b, [hl]
    ld b, a
    ld d, b
    ld d, c
    ld c, d
    ld c, e
    ld d, h
    ld d, l
    rst RST_38
    rst RST_38
    inc bc
    add h
    inc [hl]
    add l
    dec [hl]
    add d
    ld [hl], $ff
    nop
    ld a, [bc]
    nop
    pop de
    ld d, c
    add b

jr_004_7899:
    jr nc, jr_004_785b

    ld h, h
    add b
    nop
    call nc, $8020

jr_004_78a1:
    inc bc
    ld a, [de]
    xor a
    ld a, b
    or b
    ld a, b
    or c
    ld a, b
    or d
    ld a, b
    rst RST_00
    ld a, b
    rst RST_00
    ld a, b
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    jp z, $8383

    inc [hl]
    adc h
    ld a, a
    adc e
    dec [hl]
    add l
    ld a, a
    add e
    ld [hl], $8c
    ld a, a
    adc e
    scf
    add l
    ld a, a
    rst RST_08
    rst RST_38
    jr z, jr_004_7899

    ld [hl+], a
    ret nz

    inc l
    ret nz

    inc h
    ret nz

    jr z, jr_004_78a1

    inc hl
    ret nz

    ld a, [hl+]
    ret nz

    dec h
    ret nz

    inc bc
    dec d
    push hl
    ld a, b
    and $78
    rst RST_28
    ld a, b
    ldh a, [$ff78]
    ld a, [$fc78]
    ld a, b
    rst RST_38
    pop hl
    nop
    inc bc
    add l
    ld b, [hl]
    ld a, a
    ld b, b
    ld a, a
    rst RST_38
    rst RST_38
    inc bc
    add h
    inc [hl]
    add l
    ld a, a
    add h
    dec [hl]
    add l
    ld a, a
    rst RST_38
    nop
    ld a, [bc]
    ld [hl-], a
    ret nz

    ld [hl+], a
    ret nz

    scf
    pop bc
    ld de, $03c0
    jr jr_004_7919

    ld a, c
    inc de
    ld a, c
    inc d
    ld a, c
    dec d
    ld a, c
    rra
    ld a, c
    rra
    ld a, c
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add e
    inc [hl]
    add h

jr_004_7919:
    ld a, a
    add e
    inc [hl]
    add h
    ld a, a
    rst RST_38
    ld b, [hl]
    pop bc
    ld [hl-], a
    add b
    inc bc
    inc de
    ld sp, $3279
    ld a, c
    ld a, $79
    ccf
    ld a, c
    ld b, b
    ld a, c
    ld b, d
    ld a, c
    rst RST_38
    pop hl
    ld bc, $c403
    add b
    ret z

    add b
    add d
    dec a
    rst RST_08
    rst RST_08
    rst RST_38
    rst RST_38
    rst RST_38
    add b
    ld [bc], a
    inc bc
    dec c
    ld d, b
    ld a, c
    ld d, c
    ld a, c
    ld e, c
    ld a, c
    ld e, d
    ld a, c
    ld e, e
    ld a, c
    ld e, l
    ld a, c
    rst RST_38
    pop hl
    ld bc, $8203
    daa
    add b
    daa
    rst RST_38
    rst RST_38
    rst RST_38
    add b
    inc b
    inc bc
    dec c
    ld l, e
    ld a, c
    ld l, h
    ld a, c
    ld [hl], h
    ld a, c
    ld [hl], l
    ld a, c
    halt
    ld a, c
    ld a, b
    ld a, c
    rst RST_38
    pop hl
    ld bc, $8203
    daa
    add b
    daa
    rst RST_38
    rst RST_38
    rst RST_38
    add b
    dec b
    ld [bc], a
    inc d
    add [hl]
    ld a, c
    sub b
    ld a, c
    sbc h
    ld a, c
    sbc l
    ld a, c
    sbc [hl]
    ld a, c
    and d
    ld a, c
    ldh [rP1], a
    inc bc
    add h
    add hl, sp
    dec sp
    ld b, b
    ld b, l
    ld b, h
    rst RST_38
    pop hl
    ld bc, $8b03
    ld a, a
    add h
    add hl, sp
    dec sp
    ld b, b
    ld b, l
    ld b, h
    rst RST_38
    rst RST_38
    rst RST_38
    add b
    ld [$0b80], sp
    ld [bc], a
    dec e
    or b
    ld a, c
    jp $d479


    ld a, c
    push de
    ld a, c
    sub $79
    jp c, $e079

    nop
    inc bc
    add e
    inc [hl]
    add hl, sp
    dec sp
    inc [hl]
    add hl, sp
    dec sp
    add c
    ld b, b
    ld a, [hl]
    adc d
    ld b, b
    ld a, [hl]
    add l
    ld b, b
    rst RST_38
    pop hl
    ld bc, $8a03
    ld a, a
    add l
    ld a, a
    add e
    inc [hl]
    add hl, sp
    dec sp
    inc [hl]
    add hl, sp
    dec sp
    add c
    ld b, b
    rst RST_38
    rst RST_38
    rst RST_38
    add b
    ld [$0880], sp
    ld [bc], a
    jr nz, @-$16

    ld a, c
    ei
    ld a, c
    ld c, $7a
    rrca
    ld a, d
    db $10
    ld a, d
    inc d
    ld a, d
    ldh [rP1], a
    inc bc
    call nz, $c884
    add h
    add h
    dec a
    dec sp
    ld [hl], $38
    rst RST_08
    rst RST_08
    adc e
    ld a, a
    add h

jr_004_79f9:
    ld a, a
    rst RST_38
    pop hl
    ld bc, $8b03
    ld a, a
    add h
    ld a, a
    call nz, $c884
    add h
    add h
    dec a
    dec sp
    ld [hl], $38
    rst RST_08
    rst RST_08
    rst RST_38
    rst RST_38
    rst RST_38
    add b
    ld [$0b80], sp
    ld [bc], a
    jr jr_004_7a39

    ld a, d
    inc l
    ld a, d
    jr c, jr_004_7a96

    add hl, sp
    ld a, d
    ld a, [hl-]
    ld a, d
    ld a, $7a
    ldh [rP1], a
    inc bc
    add h
    inc [hl]
    add hl, sp
    jr c, jr_004_7a67

    ld b, b
    rst RST_38
    pop hl
    ld bc, $8b03
    ld a, a
    add h
    inc [hl]
    add hl, sp
    jr c, jr_004_7a73

    ld b, b
    rst RST_38
    rst RST_38

jr_004_7a39:
    rst RST_38
    add b
    ld [$0b80], sp
    ld [bc], a
    rrca
    ld c, h
    ld a, d
    ld l, d
    ld a, d
    ld a, b
    ld a, d
    ld a, c
    ld a, d
    ld a, d
    ld a, d
    ld a, [hl]
    ld a, d
    ldh [rP1], a
    inc bc
    adc h
    ld a, $86
    ld a, a
    adc h
    ld a, [hl-]
    add [hl]
    ld a, a
    adc h
    scf
    add [hl]
    ld a, a
    adc h
    dec [hl]
    add [hl]
    ld a, a
    adc h
    ld [hl-], a
    add [hl]
    ld a, a
    adc h
    jr nc, @-$78

    ld a, a

jr_004_7a67:
    adc d
    ld l, $ff
    pop hl
    ld bc, $8403
    ld a, a
    ld a, $3a
    scf
    dec [hl]

jr_004_7a73:
    ld [hl-], a
    jr nc, jr_004_79f9

    ld l, $ff
    rst RST_38
    rst RST_38
    add b
    dec bc
    add b
    dec bc
    inc bc
    db $10
    adc h
    ld a, d
    adc l
    ld a, d
    adc [hl]
    ld a, d
    adc a
    ld a, d
    sub a
    ld a, d
    sub a
    ld a, d
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add [hl]
    dec [hl]
    add h
    inc [hl]
    adc e
    ld a, a

jr_004_7a96:
    rst RST_38
    ld d, b
    push hl
    ld bc, $50c0
    ldh a, [rDIV]
    ret nz

    ld [bc], a
    dec d
    xor l
    ld a, d
    cp a
    ld a, d
    call nc, $d57a
    ld a, d
    sub $7a
    jp c, $e07a

    nop
    inc bc
    add h
    jr z, jr_004_7add

    dec l
    cpl
    inc [hl]
    ld [hl], $39

jr_004_7ab8:
    dec sp
    adc c
    jr c, jr_004_7b3a

    add h

jr_004_7abd:
    jr c, @+$01

    pop hl
    ld bc, $8c03
    ld a, a
    add h

jr_004_7ac5:
    ld a, a
    jr z, jr_004_7af2

    dec l
    cpl
    inc [hl]
    ld [hl], $39

jr_004_7acd:
    dec sp
    add d
    jr c, jr_004_7b4f

    add h
    jr c, @+$01

    rst RST_38
    rst RST_38
    ld b, b
    ld [$0840], sp
    inc bc
    jr nz, jr_004_7ac5

jr_004_7add:
    ld a, d
    jp hl


    ld a, d
    ld [$eb7a], a
    ld a, d
    cp $7a
    cp $7a
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    add h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_004_7af2:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    rst RST_38
    ld d, b
    pop de
    nop
    add b
    nop
    dec d
    db $10
    ld a, e
    ld de, $2d7b
    ld a, e
    ld l, $7b
    ld c, [hl]
    ld a, e
    ld d, b
    ld a, e
    rst RST_38
    pop hl
    nop
    inc bc
    add e
    inc [hl]
    ld a, a
    dec l
    dec l
    add h
    ld sp, $3183
    ld sp, $3131
    inc [hl]
    inc [hl]
    add h
    inc l
    inc l
    add e
    cpl
    add h
    cpl
    add e
    cpl
    cpl
    rst RST_38
    rst RST_38
    inc bc
    add e
    scf
    inc [hl]
    add h
    jr c, jr_004_7ab8

    inc [hl]
    dec [hl]
    add h
    jr c, jr_004_7abd

jr_004_7b3a:
    scf
    inc [hl]
    add h
    scf
    add hl, sp
    add e
    ld [hl], $84
    inc [hl]
    scf
    add hl, sp
    add e
    jr c, jr_004_7b7c

    add h
    dec [hl]
    jr c, jr_004_7acd

    scf
    rst RST_38
    add b

jr_004_7b4f:
    dec bc
    nop
    db $d3
    ld h, b
    add b
    nop
    jp nc, $8030

    nop
    pop de
    ld d, b
    add b
    nop
    jp nc, $8090

    nop
    jp nc, $8050

    nop
    call nc, $8060
    nop
    db $f4
    db $10
    or l
    add hl, hl
    ld [hl], b
    rst RST_38
    ld [hl], b
    rst RST_38
    ld [hl], b
    rst RST_38
    ld [hl], b
    rst RST_38
    ld [hl], b
    rst RST_38
    ld [hl], b
    nop
    halt
    ld [de], a
    ld b, b

jr_004_7b7c:
    rst RST_38
    ld b, b
    rst RST_38
    ld b, b
    rst RST_38
    ld b, b
    rst RST_38
    ld b, b
    rst RST_38
    ld b, b
    rst RST_38
    ld b, b
    nop
    or $18
    or b
    inc h
    and b
    rst RST_38
    sub b
    rst RST_38
    sub b
    rst RST_38
    sub b
    rst RST_38
    sub b
    rst RST_38
    sub b
    nop
    db $f4
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    nop
    sub e
    ld [de], a
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, jr_004_7bb9

jr_004_7bb9:
    ld h, [hl]
    ld [de], a
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, jr_004_7bc9

jr_004_7bc9:
    sub h
    inc d
    ld b, l
    inc hl
    ld d, $ff
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    stop
    di
    rrca
    and h
    dec de
    ld [hl], l
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    stop
    push af
    add hl, de
    and [hl]
    dec hl
    ld a, a
    add hl, sp
    sub a
    ld c, e
    ld a, a
    ld d, l
    sub a
    ld h, e
    ld a, a
    ld [hl], c
    sub a
    nop
    db $f4
    db $10
    or [hl]
    ld [hl+], a
    ld [hl], a
    ld c, h
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    stop
    add a
    ld c, $66
    inc l
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    stop
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rP1], a
    sub b
    rst RST_38
    sub b
    rst RST_38
    sub b
    rst RST_38
    sub b
    rst RST_38
    sub b
    rst RST_38
    sub b
    rst RST_38
    sub b
    rst RST_38
    sub b
    nop
    ld e, c
    ld b, $a3
    rrca
    ld [hl], b
    inc d
    ld h, b
    dec de
    ld d, b
    ld h, $40
    jr nc, jr_004_7c76

    rst RST_38
    jr nc, jr_004_7c49

jr_004_7c49:
    add hl, sp
    ld b, $83
    rrca
    ld d, b
    inc d
    ld b, b
    dec de
    jr nc, jr_004_7c79

    jr nz, jr_004_7c85

    db $10
    rst RST_38
    stop
    ld [hl], d
    inc c
    ld [hl-], a
    rrca
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    rst RST_38
    db $10
    jr nz, @+$42

    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    nop
    nop
    nop
    nop

jr_004_7c76:
    nop
    nop
    nop

jr_004_7c79:
    nop
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    nop
    nop
    nop

jr_004_7c85:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    inc bc
    add b
    ld bc, $00c0
    ld h, b
    nop
    jr nc, jr_004_7c96

jr_004_7c96:
    jr jr_004_7c98

jr_004_7c98:
    nop
    add hl, bc
    add b
    inc b
    ld b, b
    ld [bc], a
    jr nz, jr_004_7ca1

    sub b

jr_004_7ca1:
    nop
    ld c, b
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $0080
    ld b, b
    nop
    jr nz, jr_004_7cb0

jr_004_7cb0:
    stop
    inc l
    nop
    sbc l
    nop
    rlca
    ld bc, $016b
    ret


    ld bc, $0223
    ld [hl], a
    ld [bc], a
    rst RST_00
    ld [bc], a
    ld [de], a
    inc bc
    ld e, b
    inc bc
    sbc e
    inc bc
    jp c, $1603

    inc b
    ld c, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    push hl
    inc b
    ld de, $3b05
    dec b
    ld h, e
    dec b
    adc c
    dec b
    xor h
    dec b
    adc $05
    db $ed
    dec b
    dec bc
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $72
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c4
    ld b, $d6
    ld b, $e7
    ld b, $f7
    ld b, $06
    rlca
    inc d
    rlca
    ld hl, $2d07
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, a
    rlca
    ld e, c
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add e
    rlca
    adc d
    rlca
    sub b
    rlca
    sub a
    rlca
    sbc l
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    rlca
    pop bc
    rlca
    push bc
    rlca
    ret z

    rlca
    rlc a
    adc $07
    pop de
    rlca
    call nc, $d607
    rlca
    reti


    rlca
    db $db
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
