; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    ld e, d
    ld b, c
    ld h, d
    ld b, c
    ld l, d
    ld b, c
    ld [hl], d
    ld b, c
    ld a, d
    ld b, c
    add d
    ld b, c
    adc d
    ld b, c
    sub d
    ld b, c
    sbc d
    ld b, c
    and d
    ld b, c
    xor d
    ld b, c
    or d
    ld b, c
    cp d
    ld b, c
    jp nz, $ca41

    ld b, c
    jp nc, $da41

    ld b, c
    ldh [c], a
    ld b, c
    ld [$f241], a
    ld b, c
    ld a, [$0241]
    ld b, d
    ld a, [bc]
    ld b, d
    ld [de], a
    ld b, d
    ld a, [de]
    ld b, d
    ld [hl+], a
    ld b, d
    ld a, [hl+]
    ld b, d
    ld [hl-], a
    ld b, d
    ld a, [hl-]
    ld b, d
    ld b, d
    ld b, d
    ld c, d
    ld b, d
    ld d, d
    ld b, d
    ld e, d
    ld b, d
    ld h, d
    ld b, d
    ld l, d
    ld b, d
    ld [hl], d
    ld b, d
    ld a, d
    ld b, d
    add d
    ld b, d
    adc d
    ld b, d
    sub d
    ld b, d
    sbc d
    ld b, d
    and d
    ld b, d
    xor d
    ld b, d
    or d
    ld b, d
    cp d
    ld b, d
    jp nz, $ca42

    ld b, d
    jp nc, $da42

    ld b, d
    ldh [c], a
    ld b, d
    ld [$f242], a
    ld b, d
    ld a, [$0242]
    ld b, e
    ld a, [bc]
    ld b, e
    ld [de], a
    ld b, e
    ld a, [de]
    ld b, e
    ld [hl+], a
    ld b, e
    ld a, [hl+]
    ld b, e
    ld [hl-], a
    ld b, e
    ld a, [hl-]
    ld b, e
    ld b, d
    ld b, e
    ld c, d
    ld b, e
    ld d, d
    ld b, e
    ld e, d
    ld b, e
    ld h, d
    ld b, e
    ld l, d
    ld b, e
    ld [hl], d
    ld b, e
    ld a, d
    ld b, e
    add d
    ld b, e
    adc d
    ld b, e
    sub d
    ld b, e
    sbc d
    ld b, e
    and d
    ld b, e
    xor d
    ld b, e
    or d
    ld b, e
    cp d
    ld b, e
    jp nz, $ca43

    ld b, e
    jp nc, $da43

    ld b, e
    db $ec
    ld b, e
    db $f4
    ld b, e
    db $fc
    ld b, e
    inc b
    ld b, h
    inc c
    ld b, h
    inc d
    ld b, h
    inc e
    ld b, h
    inc h
    ld b, h
    inc l
    ld b, h
    inc [hl]
    ld b, h
    inc a
    ld b, h
    ld b, h
    ld b, h
    ld c, h
    ld b, h
    ld d, h
    ld b, h
    ld e, h
    ld b, h
    ld h, h
    ld b, h
    ld l, h
    ld b, h
    ld [hl], h
    ld b, h
    ld a, h
    ld b, h
    adc [hl]
    ld b, h
    sub [hl]
    ld b, h
    sbc [hl]
    ld b, h
    and [hl]
    ld b, h
    xor [hl]
    ld b, h
    or [hl]
    ld b, h
    cp [hl]
    ld b, h
    add $44
    adc $44
    sub $44
    sbc $44
    and $44
    xor $44
    nop
    ld b, l
    ld [$1045], sp
    ld b, l
    jr @+$47

    jr nz, @+$47

    jr z, jr_007_4133

    jr nc, jr_007_4135

    jr c, jr_007_4137

    ld b, b
    ld b, l
    ld c, b
    ld b, l
    ld d, b
    ld b, l
    ld e, b
    ld b, l
    ld h, b
    ld b, l
    ld l, b
    ld b, l
    ld [hl], b
    ld b, l
    ld a, b
    ld b, l
    add b
    ld b, l
    adc b
    ld b, l
    sub b
    ld b, l
    sbc b
    ld b, l
    and b
    ld b, l
    xor b
    ld b, l
    or b
    ld b, l
    cp b
    ld b, l
    ret nz

    ld b, l
    ret z

    ld b, l
    ret nc

    ld b, l
    ret c

    ld b, l
    ldh [rLYC], a
    add sp, $45
    ldh a, [rLYC]
    ld hl, sp+$45
    nop
    ld b, [hl]
    ld [$1046], sp
    ld b, [hl]
    jr jr_007_4170

    jr nz, jr_007_4172

    jr z, jr_007_4174

    jr nc, jr_007_4176

    jr c, @+$48

    ld b, b

jr_007_4133:
    ld b, [hl]
    ld c, b

jr_007_4135:
    ld b, [hl]
    ld d, b

jr_007_4137:
    ld b, [hl]
    ld e, b
    ld b, [hl]
    ld h, b
    ld b, [hl]
    ld l, b
    ld b, [hl]
    ld [hl], b
    ld b, [hl]
    ld a, b
    ld b, [hl]
    add b
    ld b, [hl]
    adc b
    ld b, [hl]
    sub b
    ld b, [hl]
    sbc b
    ld b, [hl]
    and b
    ld b, [hl]
    xor b
    ld b, [hl]
    or b
    ld b, [hl]
    cp b
    ld b, [hl]
    ret nz

    ld b, [hl]
    ret z

    ld b, [hl]
    ret nc

    ld b, [hl]
    ret c

    ld b, [hl]
    ldh [rDMA], a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    db $e3
    ld b, [hl]
    ld c, c
    ld c, l
    ld b, l
    ld c, c
    push de
    ld c, l
    add sp, $46
    ld e, d
    ld c, l
    ld b, l
    ld c, c

jr_007_4170:
    db $ec
    ld c, l

jr_007_4172:
    db $ed
    ld b, [hl]

jr_007_4174:
    ld b, l
    ld c, c

jr_007_4176:
    ld sp, $454c
    ld c, c
    nop
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    inc bc
    ld b, a
    ld c, e
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    add hl, de
    ld b, a
    ld b, l
    ld c, c
    ld b, b
    ld c, h
    ld b, l
    ld c, c
    ld h, $47
    ld l, b
    ld c, l
    ld b, l
    ld c, c
    cp $4d
    add hl, hl
    ld b, a
    ld b, l
    ld c, c
    ld d, d
    ld c, h
    ld b, l
    ld c, c
    ld sp, $4547
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    inc [hl]
    ld b, a
    ld b, l
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    scf
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld a, [hl-]
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    dec a
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld b, b
    ld b, a
    adc l
    ld c, c
    adc l
    ld c, c
    ld b, l
    ld c, c
    ld b, e
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld c, c
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld c, h
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld c, a
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld d, d
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld d, l
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld e, b
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld e, e
    ld b, a
    ld b, l
    ld c, c
    or e
    ld c, e
    cp [hl]
    ld c, h
    ld e, [hl]
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld d, h
    ld c, [hl]
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld h, c
    ld b, a
    ld b, l
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    ld h, h
    ld b, a
    ld b, l
    ld c, c
    rst RST_00
    ld c, e
    pop bc
    ld c, h
    ldh [rDMA], a
    ldh [rDMA], a
    ldh [rDMA], a
    ldh [rDMA], a
    ldh [rDMA], a
    ldh [rDMA], a
    ldh [rDMA], a
    ldh [rDMA], a
    ld l, [hl]
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld [hl], c
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    add [hl]
    ld b, a
    sbc [hl]
    ld c, c
    sbc [hl]
    ld c, c
    ld b, l
    ld c, c
    adc e
    ld b, a
    ld h, a
    ld c, d
    ld h, a
    ld c, d
    ld b, l
    ld c, c
    sub b
    ld b, a
    push af
    ld c, d
    push af
    ld c, d
    ld b, l
    ld c, c
    sub l
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    sbc b
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    sbc e
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    sbc [hl]
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    and c
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    and h
    ld b, a
    ld b, l
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    and a
    ld b, a
    ld b, l
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    xor d
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    xor l
    ld b, a
    ld b, l
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    or b
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    or e
    ld b, a
    ld b, l
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    or [hl]
    ld b, a
    ld b, l
    ld c, c
    ld e, [hl]
    ld c, h
    ld b, l
    ld c, c
    cp [hl]
    ld b, a
    ld b, l
    ld c, c
    ld [hl], c
    ld c, h
    ld b, l
    ld c, c
    add $47
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ret


    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    call z, Call_007_4547
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    pop de
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    sub $47
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    db $db
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ldh [rBGP], a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    db $e3
    ld b, a
    ld b, l
    ld c, c
    db $e4
    ld c, e
    rst RST_18
    ld c, h
    and $47
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    and $47
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    add sp, $47
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    db $eb
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    xor $47
    ld b, l
    ld c, c
    db $e4
    ld c, e
    ld [$f14c], a
    ld b, a
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    dec [hl]
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    jr c, jr_007_439c

    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    dec sp
    ld c, b
    adc e
    ld c, l
    ld b, l
    ld c, c
    inc h
    ld c, [hl]
    ld a, $48
    ld b, l
    ld c, c

Jump_007_4366:
    add a
    ld c, c
    ld b, l
    ld c, c
    ld b, c
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld b, l
    ld c, b
    ld b, l
    ld c, c
    inc b
    ld c, h
    db $ed
    ld c, h
    ld c, b
    ld c, b
    ld b, l
    ld c, c
    inc b
    ld c, h
    db $f4
    ld c, h
    ld c, e
    ld c, b
    ld b, l
    ld c, c
    inc b
    ld c, h
    ld a, [$554c]
    ld c, b
    ld b, l
    ld c, c
    inc b
    ld c, h
    ld [bc], a
    ld c, l
    ld e, b
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld e, l
    ld c, b

jr_007_439c:
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld h, d
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld h, a
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld l, h
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld l, a
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld l, a
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld [hl], c
    ld c, b
    adc [hl]
    ld c, l
    ld b, l
    ld c, c
    add hl, hl
    ld c, [hl]
    ld a, h
    ld c, b
    ld b, l
    ld c, c
    inc e
    ld c, h
    ld e, $4d
    ld a, a
    ld c, b
    ld b, l
    ld c, c
    halt
    ld c, c
    ld c, e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld b, l
    ld c, c
    jr nz, jr_007_4434

    inc l
    ld c, l
    ld b, l
    ld c, c
    sub e
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    sub [hl]
    ld c, b
    ld b, l
    ld c, c
    ld a, [hl]
    ld c, h
    ld b, l
    ld c, c
    sbc [hl]
    ld c, b
    ld b, l
    ld c, c
    sub [hl]
    ld c, h
    ld b, l
    ld c, c
    and [hl]
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    xor c
    ld c, b
    ld b, l
    ld c, c
    dec hl
    ld c, h
    jr c, jr_007_4461

    xor h
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    xor a
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    or d
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ret c

    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c

jr_007_4434:
    or l
    ld c, b
    sbc b
    ld c, l
    ld b, l
    ld c, c
    inc sp
    ld c, [hl]
    cp b
    ld c, b
    sbc b
    ld c, l
    ld b, l
    ld c, c
    inc sp
    ld c, [hl]
    cp e
    ld c, b
    ld b, l
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    cp [hl]
    ld c, b
    ld b, l
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    pop bc
    ld c, b
    ld b, l
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    call nz, $9e48
    ld c, l
    ld b, l

jr_007_4461:
    ld c, c
    or c
    ld c, l
    rst RST_00
    ld c, b
    ld b, l
    ld c, c
    and d
    ld c, h
    ld b, l
    ld c, c
    jp nc, Jump_007_4548

    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    jp nc, Jump_007_4548

    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    push de
    ld c, b
    ld b, l
    ld c, c
    ld b, l
    ld c, c
    ld c, e
    ld c, [hl]
    ld d, c
    ld c, [hl]
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld b, l
    ld c, c
    ret c

    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    db $db
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    sbc $48
    ld b, l
    ld c, c
    ld b, l
    ld c, c
    ld b, l
    ld c, c
    pop hl
    ld c, b
    ld b, l
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    jp z, Jump_007_4548

    ld c, c
    and l
    ld c, h
    ld b, l
    ld c, c
    db $e4
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, e
    ld b, l
    ld c, c
    xor $48
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    pop af
    ld c, b
    call nz, $454d
    ld c, c
    jr c, jr_007_451c

    db $f4
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    rst RST_38
    ld c, b
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld [bc], a
    ld c, c
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    dec b
    ld c, c
    ld b, l
    ld c, c
    sbc h
    ld c, e
    ld b, l
    ld c, c
    ld [$4549], sp
    ld c, c
    ld b, l
    ld c, c
    ld c, e
    ld c, [hl]
    ld d, c
    ld c, [hl]
    ld b, l
    ld c, c
    sbc a
    ld c, e
    ld b, l
    ld c, c
    ld c, b
    ld c, c
    inc de
    ld c, c
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld d, $49
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    add hl, de
    ld c, c
    ret nc

    ld c, l
    ld b, l
    ld c, c
    ld b, e
    ld c, [hl]
    inc e
    ld c, c
    ld b, l
    ld c, c

jr_007_451c:
    add a
    ld c, c
    ld b, l
    ld c, c
    rra
    ld c, c
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld [hl+], a
    ld c, c
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    dec h
    ld c, c
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    jr z, jr_007_4583

    ld b, l
    ld c, c
    or c
    ld c, h
    ld b, l
    ld c, c
    jr nc, jr_007_458b

    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l

Call_007_4547:
    ld c, c

Jump_007_4548:
    inc sp
    ld c, c
    ld b, l
    ld c, c
    ld l, $4c
    dec a
    ld c, l
    ld [hl], $49
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    add hl, sp
    ld c, c
    ld b, l
    ld c, c
    adc d
    ld c, c
    ld b, l
    ld c, c
    inc a
    ld c, c
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ccf
    ld c, c
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld b, d
    ld c, c
    ld b, l
    ld c, c
    add a
    ld c, c
    ld b, l
    ld c, c
    ld d, l
    ld c, [hl]
    ld hl, sp+$51
    ld c, c
    ld c, a
    and [hl]
    ld d, d
    ld e, b
    ld c, [hl]
    ei

jr_007_4583:
    ld d, c
    ld c, c
    ld c, a
    xor e
    ld d, d
    ld e, e
    ld c, [hl]
    ld c, c

jr_007_458b:
    ld c, a
    jr nc, jr_007_45df

    ld c, c
    ld c, a
    ld e, [hl]
    ld c, [hl]
    ld c, c
    ld c, a
    ret nz

    ld d, c
    db $e3
    ld d, c
    ld h, c
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_45ef

    ld c, c
    ld c, a
    ld h, [hl]
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_45f7

    ld c, c
    ld c, a
    ld l, e
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_45ff

    ld c, h
    ld c, a
    ld l, [hl]
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_4607

    ld c, h
    ld c, a
    ld a, e
    ld c, [hl]
    add hl, bc
    ld d, d
    ld c, c
    ld c, a
    or l
    ld d, d
    ld a, [hl]
    ld c, [hl]
    inc l
    ld d, d
    ld c, c
    ld c, a
    jp z, $8152

    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_461f

    ld c, c
    ld c, a
    add h
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_4627

    ld c, c
    ld c, a
    add a
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_462f

    ld c, c

jr_007_45df:
    ld c, a
    adc l
    ld c, [hl]
    ld d, d
    ld c, a
    inc sp
    ld d, c
    ld c, c
    ld c, a
    sub b
    ld c, [hl]
    ld c, a
    ld c, a
    inc sp
    ld d, c
    ld c, c

jr_007_45ef:
    ld c, a
    sub e
    ld c, [hl]
    ld l, l
    ld c, a
    ld a, [hl-]
    ld d, c
    ld c, c

jr_007_45f7:
    ld c, a
    and a
    ld c, [hl]
    ld c, c
    ld c, a
    ld [hl], d
    ld d, c
    ld c, c

jr_007_45ff:
    ld c, a
    xor d
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_4657

    ld c, c

jr_007_4607:
    ld c, a
    xor l
    ld c, [hl]
    ld c, d
    ld d, d
    ld c, c
    ld c, a
    rst RST_18
    ld d, d
    or b
    ld c, [hl]
    ld c, c
    ld c, a
    ld b, c
    ld d, c
    ld c, c
    ld c, a
    cp d
    ld c, [hl]
    ld e, e
    ld d, d
    ld c, c
    ld c, a
    jp hl


jr_007_461f:
    ld d, d
    cp l
    ld c, [hl]
    ld c, c
    ld c, a
    sbc c
    ld d, c
    ld c, c

jr_007_4627:
    ld c, a
    ret nz

Call_007_4629:
Jump_007_4629:
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_467f

    ld c, c

jr_007_462f:
    ld c, a
    jp Jump_007_494e


    ld c, a
    jr nc, jr_007_4687

    ld c, c
    ld c, a
    add $4e
    ld c, c
    ld c, a
    adc l
    ld d, c
    ld c, c
    ld c, a
    ret


    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_4697

    ld c, c
    ld c, a
    call z, Call_007_494e
    ld c, a
    ld b, h
    ld d, c
    ld c, c
    ld c, a
    rst RST_08
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_46a7

    ld c, c

jr_007_4657:
    ld c, a
    jp nc, Jump_007_494e

    ld c, a

Jump_007_465c:
    ld e, l
    ld d, c

Jump_007_465e:
    ld c, c
    ld c, a
    push de
    ld c, [hl]
    ld c, c
    ld c, a
    ld h, h
    ld d, c
    ld c, c
    ld c, a
    ret c

    ld c, [hl]
    ld l, [hl]
    ld d, d
    ld c, c
    ld c, a
    db $fc
    ld d, d
    db $db
    ld c, [hl]
    add h
    ld d, d
    ld c, c
    ld c, a
    ld [de], a
    ld d, e
    sbc $4e
    ld c, c
    ld c, a
    jr nc, jr_007_46cf

    ld c, c

jr_007_467f:
    ld c, a
    add sp, $4e
    ld c, c
    ld c, a
    jr nc, jr_007_46d7

    ld c, c

jr_007_4687:
    ld c, a
    db $eb
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_46df

    ld c, c
    ld c, a
    push de
    ld c, [hl]
    ld c, c
    ld c, a
    ld l, e
    ld d, c
    ld c, c

jr_007_4697:
    ld c, a
    rlca
    ld c, a
    sub a

jr_007_469b:
    ld d, d
    ld c, c
    ld c, a
    dec h
    ld d, e
    ld a, [bc]
    ld c, a
    ld c, c
    ld c, a
    jr nc, @+$53

    ld c, c

jr_007_46a7:
    ld c, a
    dec c
    ld c, a
    ld a, l
    ld c, a
    ld c, c
    ld c, a
    ld c, c
    ld c, a
    ld b, b
    ld c, a
    ld c, c
    ld c, a
    jr nc, jr_007_4707

    ld c, c
    ld c, a
    adc d
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_470f

    ld c, c
    ld c, a
    adc d
    ld c, [hl]
    ld c, c
    ld c, a
    jr nc, jr_007_4717

    ld c, c
    ld c, a
    ld b, e
    ld c, a
    ld c, c
    ld c, a
    jr nc, jr_007_471f

    ld c, c

jr_007_46cf:
    ld c, a

jr_007_46d0:
    call z, Call_007_494e
    ld c, a
    and b
    ld d, c
    ld c, c

jr_007_46d7:
    ld c, a
    ld b, [hl]
    ld c, a
    ld c, c
    ld c, a
    or e
    ld d, c
    ld c, c

jr_007_46df:
    ld c, a
    nop
    add hl, bc
    rst RST_38
    jr nc, jr_007_4697

    inc l
    inc de
    rst RST_38
    jr nc, jr_007_469b

    inc l
    inc de
    rst RST_38
    jr z, jr_007_46f2

    inc b
    push af
    ld b, [hl]

jr_007_46f2:
    nop
    ld c, $ff
    add hl, sp
    ld bc, $0a3e
    ld a, [hl]
    ld a, [hl]
    nop
    dec c
    ld a, [hl]
    ld a, [hl-]
    rst RST_38
    nop
    rrca
    rst RST_38
    ld [$0c01], sp
    ld b, a

jr_007_4707:
    ld [$1302], sp
    ld b, a
    rst RST_38
    ld [$1602], sp

jr_007_470f:
    ld b, a
    nop
    db $10
    rst RST_38
    nop
    ld [de], a
    rst RST_38
    nop

jr_007_4717:
    ld de, $28ff
    rlca
    inc bc
    ld hl, $0047

jr_007_471f:
    dec [hl]
    rst RST_38
    jr nc, jr_007_46d0

    inc l
    ld bc, $00ff
    ld [hl], $ff
    jr z, @+$07

    inc b
    push af
    ld b, [hl]
    nop
    ld c, $ff
    nop
    scf
    rst RST_38
    nop
    jr c, @+$01

    nop
    ld c, c
    rst RST_38
    nop
    ld c, d
    rst RST_38
    nop
    ld c, e
    rst RST_38
    nop
    ld c, h
    rst RST_38
    nop
    ld c, l
    rst RST_38
    nop
    ld [hl], l
    rst RST_38
    nop
    halt
    rst RST_38
    nop
    ld [hl], a
    rst RST_38
    nop
    ld a, b
    rst RST_38
    nop
    ld a, l
    rst RST_38
    nop
    ld a, [hl]
    rst RST_38
    nop
    ld a, a
    rst RST_38
    nop
    add b
    rst RST_38
    nop
    adc d
    rst RST_38
    nop
    sub l
    rst RST_38
    ld [$6b0e], sp
    ld b, a
    nop
    sub [hl]
    rst RST_38
    nop
    sub a
    rst RST_38

Call_007_476e:
    nop
    sbc [hl]
    rst RST_38
    ld [$800f], sp
    ld b, a
    jr z, jr_007_4786

    inc bc
    add e
    ld b, a
    ld l, $00
    sbc a
    nop
    and b
    rst RST_38
    nop
    sbc a
    rst RST_38
    nop
    and c
    rst RST_38

jr_007_4786:
    ld c, c
    ld bc, $072c
    rst RST_38
    ld c, c
    ld [bc], a
    inc l
    rlca
    rst RST_38
    ld c, c
    inc bc
    inc l
    rlca
    rst RST_38
    nop
    ld d, e
    rst RST_38
    nop
    ld e, b
    rst RST_38
    nop
    call Call_000_00ff
    adc $ff
    nop
    rst RST_08
    rst RST_38
    nop
    ldh [rIE], a
    nop
    ldh [c], a
    rst RST_38
    nop
    db $e4
    rst RST_38
    nop
    and $ff
    nop
    rst RST_20
    rst RST_38
    nop
    jp hl


    rst RST_38
    jr z, jr_007_47da

    inc bc
    ld hl, $0047
    ldh a, [c]
    rst RST_38
    jr z, jr_007_47e3

    inc bc
    ld hl, $0047
    ldh a, [c]
    rst RST_38
    nop
    db $f4
    rst RST_38
    nop
    rst RST_30
    rst RST_38
    ld c, c
    ld b, $2c
    ld [$49ff], sp
    rlca
    inc l
    ld [$49ff], sp
    ld [$082c], sp

jr_007_47da:
    rst RST_38
    ld c, c
    add hl, bc
    inc l
    ld [$00ff], sp
    ld hl, sp-$01

jr_007_47e3:
    nop
    ld sp, hl
    rst RST_38
    ld e, c
    rst RST_38
    nop
    dec bc
    rst RST_38
    nop
    inc c
    rst RST_38
    nop
    ld d, $ff
    dec h
    rla
    ld [de], a
    ld c, b
    dec h
    jr jr_007_480f

    ld c, b
    dec h
    add hl, de
    inc e
    ld c, b
    dec h
    ld a, [de]
    ld hl, $2548
    inc l
    ld h, $48
    dec h
    dec l
    dec hl
    ld c, b
    dec h
    ld l, $30
    ld c, b
    ld c, c
    dec b

jr_007_480f:
    inc l
    ld a, [bc]
    rst RST_38
    ld c, c
    ld b, $2c
    ld a, [bc]
    rst RST_38
    ld c, c
    rlca
    inc l
    ld a, [bc]
    rst RST_38
    ld c, c
    ld [$0a2c], sp
    rst RST_38
    ld c, c
    add hl, bc
    inc l
    ld a, [bc]
    rst RST_38
    ld c, c
    ld [bc], a
    inc l
    ld a, [bc]
    rst RST_38
    ld c, c
    inc bc
    inc l
    ld a, [bc]
    rst RST_38
    ld c, c
    inc b
    inc l
    ld a, [bc]
    rst RST_38
    nop
    adc e
    rst RST_38
    ld [bc], a
    inc hl
    rst RST_38
    ld [bc], a
    inc h
    rst RST_38
    ld [bc], a
    dec h
    rst RST_38
    ld e, [hl]
    inc l
    ld b, b
    rst RST_38
    ld [bc], a
    jr z, @+$01

    ld [bc], a
    add hl, hl
    rst RST_38
    ld [$5218], sp
    ld c, b
    ld [bc], a
    inc sp
    rst RST_38
    ld [bc], a
    ld a, [hl-]
    rst RST_38
    ld [bc], a
    dec sp
    rst RST_38
    ld c, c
    ld [bc], a
    inc l
    ld [$49ff], sp
    inc bc
    inc l
    ld [$49ff], sp
    inc b
    inc l
    ld [$49ff], sp
    dec b
    inc l
    ld [$01ff], sp
    ld [bc], a
    rst RST_38
    ld e, b
    rst RST_38
    ld c, $a0
    inc b
    ld a, c
    ld c, b
    ld bc, $ff04
    ld bc, $ff05
    ld bc, $ff06
    ld [$903c], sp
    ld c, b
    add hl, sp
    inc b
    ld a, $0a
    add hl, bc
    inc a
    ld a, [hl]
    ld a, [hl]
    ld bc, $7e07
    ld a, [hl-]
    rst RST_38
    ld bc, $ff08
    ld bc, $ff36
    ld c, $b3
    inc bc
    ld hl, $0047
    ldh a, [c]
    rst RST_38
    ld c, $b2
    inc bc
    ld hl, HeaderCartridgeType
    jr c, @+$01

    ld bc, $ff3f
    ld bc, $ff40
    ld bc, $ff41
    ld bc, $ff42
    ld bc, $ff53
    ld bc, $ff58
    ld bc, $ff59
    ld bc, $ff6a
    ld bc, $ff6b
    ld bc, $ff6c
    ld bc, $ff6d
    ld bc, $ff98
    ld c, $a5
    inc bc
    ld hl, HeaderCartridgeType
    sbc b
    rst RST_38
    ld bc, $ff99
    ld bc, $ffe1
    ld bc, $ffe2
    ld bc, $ffe3
    ld bc, $ffee
    ld bc, $ffef
    ld l, $01
    db $fc
    ld [$5461], sp
    ld c, [hl]
    ld bc, $fffb
    ld bc, $fff6
    ld bc, $fff5
    ld l, $01
    rst RST_30
    ld c, $61
    inc bc
    ld d, h
    ld c, [hl]
    ld bc, $fff8
    ld [bc], a
    inc bc
    rst RST_38
    ld [bc], a
    ld b, $ff
    ld bc, $ffac
    ld c, $58
    inc bc
    db $10
    ld c, c
    ld bc, $ffaa
    ld bc, $ffab
    ld bc, $ffa5
    ld bc, $ffba
    ld bc, $ffbb
    ld [bc], a
    inc d
    rst RST_38
    ld [bc], a
    dec d
    rst RST_38
    ld [bc], a
    ld d, $ff
    ld [bc], a
    ld a, [de]
    rst RST_38
    jr z, jr_007_496f

    inc bc
    ld hl, $0247
    dec l
    rst RST_38
    ld [bc], a
    ld l, $ff
    ld [bc], a
    cpl
    rst RST_38
    ld [bc], a
    ccf
    rst RST_38
    ld [bc], a
    ld b, b
    rst RST_38
    ld [bc], a
    ld b, c
    rst RST_38

jr_007_493f:
    ld [bc], a
    ld [hl], e
    rst RST_38
    ld [bc], a
    halt
    rst RST_38
    nop
    dec l
    rst RST_38
    inc l
    ld c, a
    rst RST_38
    add hl, bc
    adc b
    dec l

Call_007_494e:
Jump_007_494e:
    ld [hl-], a
    nop

jr_007_4950:
    and [hl]
    ld e, e
    ld c, c
    inc bc
    dec b
    ld [hl], c
    ld c, c
    cp $fe
    ld b, l
    ld c, c
    ld [$6401], sp
    ld c, c
    ld [$6b02], sp
    ld c, c
    rst RST_38
    ld [$6e02], sp
    ld c, c
    nop
    rra
    rst RST_38
    nop
    ld hl, $00ff

jr_007_496f:
    jr nz, @+$01

    nop
    ld [hl+], a
    add hl, bc
    inc b
    rst RST_38
    add hl, bc
    adc b
    dec l
    ld [hl-], a
    nop
    and [hl]
    add d
    ld c, c
    cp $fe
    ld b, l
    ld c, c
    ld bc, $0720
    jr nz, jr_007_49d3

    nop
    inc l
    rst RST_38
    nop
    ld l, $ff
    jr nc, jr_007_493f

    ld l, $01
    add b
    ld c, $04
    inc bc
    ld d, a
    ld c, l
    inc l
    ld [hl+], a
    ld b, d
    ld [bc], a
    ld [hl+], a
    inc b
    rst RST_38
    jr nc, jr_007_4950

    ld c, c
    ld bc, $1f2c
    add hl, hl
    db $10
    dec hl
    dec h
    rlca
    cp a
    ld c, c
    dec h
    ld [$49cf], sp
    dec h
    add hl, bc
    rst RST_18
    ld c, c
    ld c, $0e
    inc b
    ei
    ld c, c
    inc l
    inc hl
    inc h
    ld c, $07
    ei
    ld c, c
    ld c, $04
    inc b
    ld e, e
    ld c, d
    inc h
    inc b
    ld b, a
    jr @+$2e

    inc hl
    ld b, a
    jr jr_007_49d4

    ld e, e
    ld c, d
    ld c, $09
    inc b
    inc d

jr_007_49d3:
    ld c, d

jr_007_49d4:
    inc h
    add hl, bc
    ld b, a
    jr jr_007_4a05

    inc hl
    ld b, a
    jr jr_007_49e4

    inc d
    ld c, d
    ld c, $0c
    inc b
    inc hl
    ld c, d

jr_007_49e4:
    inc h
    inc c
    ld b, a
    jr jr_007_4a15

    inc hl
    ld b, a
    jr jr_007_49f4

    inc hl
    ld c, d
    ld a, [hl+]
    inc d
    add hl, hl
    inc de
    dec hl

jr_007_49f4:
    ld b, $2a
    inc de
    add hl, hl
    ld [de], a
    dec hl
    ld b, $00
    and l
    dec b
    rst RST_28
    ld c, c
    ld b, a
    inc d
    dec b
    push af
    ld c, c

jr_007_4a05:
    ld b, a
    inc d
    ld a, [hl+]
    ld [de], a
    add hl, hl
    ld de, $502b
    rlca
    dec b
    ld c, l
    ld c, d
    rlca
    scf
    ld c, d
    nop

jr_007_4a15:
    and l
    ld a, [hl+]
    ld [de], a
    add hl, hl

jr_007_4a19:
    ld de, $502b
    rlca
    dec b
    ld c, l
    ld c, d
    rlca
    scf
    ld c, d
    nop
    and l
    dec b
    push af
    ld c, c
    ld b, a
    inc d
    ld a, [hl+]
    ld [de], a
    add hl, hl
    ld de, $502b
    rlca
    dec b
    ld c, l
    ld c, d
    rlca
    scf
    ld c, d
    ld b, d
    rlca
    jr z, jr_007_4a4a

    inc b
    ld d, h
    ld c, [hl]
    add hl, sp
    ld c, $3e
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    nop
    di
    ld a, [hl]
    ld [hl], a
    nop
    ld l, l

jr_007_4a4a:
    ld a, [hl]
    scf
    rst RST_38
    ld b, a
    jr @+$4b

    ld bc, $202c
    ld a, [hl+]
    db $10
    dec hl
    ld b, d
    ld [bc], a
    ld [hl+], a
    inc b
    ld b, $2a
    db $10
    dec hl
    ld b, d
    ld [bc], a
    ld [hl+], a
    inc b
    ld b, a
    jr jr_007_4a66

    add hl, hl

jr_007_4a66:
    rst RST_38
    jr nc, jr_007_4a19

    ld c, c
    ld [bc], a
    inc l
    rra
    add hl, hl
    ld e, $2b
    dec h
    rlca
    adc b
    ld c, d
    dec h
    ld [$4acd], sp
    dec h
    add hl, bc
    sbc b
    ld c, d
    ld c, $0e
    inc b
    xor b
    ld c, d
    inc l
    inc hl
    inc h
    ld c, $07
    xor b
    ld c, d
    ld c, $04
    inc b
    or a
    ld c, d
    inc h
    inc b
    ld b, a
    jr jr_007_4abe

    inc hl
    ld b, a
    jr @+$09

    or a
    ld c, d
    ld c, $0c
    inc b
    jp Jump_000_244a


    inc c
    ld b, a
    jr @+$2e

    inc hl
    ld b, a
    jr jr_007_4aad

    jp Jump_000_004a


    and l
    dec b
    rst RST_28
    ld c, c

jr_007_4aad:
    ld b, a
    inc d
    dec b
    push af
    ld c, c
    ld d, b
    ld [$dd07], sp
    ld c, d
    nop
    and l
    ld a, [hl+]
    ld de, $1229
    dec hl

jr_007_4abe:
    ld d, b
    ld [$dd07], sp
    ld c, d
    nop
    and l
    dec b
    push af
    ld c, c
    ld d, b
    ld [$dd07], sp
    ld c, d
    ld c, $09
    inc b
    jp hl


    ld c, d
    inc h
    add hl, bc
    ld b, a
    jr jr_007_4b03

    inc hl
    ld b, a
    jr jr_007_4ae2

    jp hl


    ld c, d
    ld c, c
    ld [bc], a
    inc l
    jr nz, jr_007_4b0c

jr_007_4ae2:
    ld e, $2b
    ld b, d
    ld [bc], a
    ld [hl+], a
    add hl, bc
    rst RST_38
    ld a, [hl+]
    ld e, $2b
    ld b, d
    ld [bc], a
    ld [hl+], a
    add hl, bc
    ld b, a
    jr jr_007_4af4

    add hl, hl

jr_007_4af4:
    rst RST_38
    jr nc, @-$4e

    ld c, c
    inc bc
    inc l
    rra
    add hl, hl
    rra
    dec hl
    dec h
    rlca
    ld d, $4b
    dec h

jr_007_4b03:
    ld [$4b26], sp
    dec h
    add hl, bc
    ld e, a
    ld c, e
    ld c, $0e

jr_007_4b0c:
    inc b
    ld [hl], $4b
    inc l
    inc hl
    inc h
    ld c, $07
    ld [hl], $4b
    ld c, $04
    inc b
    ld b, b
    ld c, e
    inc h
    inc b
    ld b, a
    jr jr_007_4b4c

    inc hl
    ld b, a
    jr jr_007_4b2b

    ld b, b
    ld c, e
    ld c, $09
    inc b
    ld d, e
    ld c, e

jr_007_4b2b:
    inc h
    add hl, bc
    ld b, a
    jr jr_007_4b5c

    inc hl
    ld b, a
    jr jr_007_4b3b

    ld d, e
    ld c, e
    nop
    and l
    dec b
    rst RST_28
    ld c, c

jr_007_4b3b:
    ld d, b
    add hl, bc
    rlca
    ld l, a
    ld c, e
    nop
    and l
    ld a, [hl+]
    ld de, $1229
    dec hl
    ld b, a
    inc d
    ld a, [hl+]
    ld [de], a
    add hl, hl

jr_007_4b4c:
    inc de
    dec hl
    ld d, b
    add hl, bc
    rlca
    ld l, a
    ld c, e
    nop
    and l
    ld a, [hl+]
    ld [de], a
    add hl, hl
    inc de
    dec hl
    ld d, b
    add hl, bc

jr_007_4b5c:
    rlca
    ld l, a
    ld c, e
    ld c, $0c
    inc b
    ld a, e
    ld c, e
    inc h
    inc c
    ld b, a
    jr jr_007_4b95

    inc hl
    ld b, a

jr_007_4b6b:
    jr jr_007_4b74

    ld a, e
    ld c, e
    ld c, c
    inc bc
    inc l
    jr nz, @+$2c

jr_007_4b74:
    rra
    dec hl
    ld b, d
    ld [bc], a
    ld [hl+], a
    inc c
    rst RST_38
    ld a, [hl+]
    rra
    dec hl
    ld b, d
    ld [bc], a
    ld [hl+], a
    inc c
    ld b, a
    jr jr_007_4b86

    add hl, hl

jr_007_4b86:
    rst RST_38
    ld [$879d], sp

jr_007_4b8a:
    ld c, c
    ld a, $16
    ld bc, $09ff
    sbc l
    add hl, bc
    ld h, c
    inc a
    ld [hl+], a

jr_007_4b95:
    ld h, c
    ld a, [hl+]
    sub c
    ld a, [hl+]
    sub d
    dec hl
    rst RST_38
    ld bc, $ffb4
    jr z, @+$3f

    inc bc
    add a
    ld c, c
    ld l, $3e
    ld d, $01
    or e
    ld [hl+], a
    ld e, b
    add hl, hl
    dec a
    ld a, [hl+]
    inc a
    dec hl
    ld bc, $ffaf
    jr nc, jr_007_4b6b

    dec b
    db $10
    ld e, a
    inc bc
    cp l
    ld c, e
    ld [hl+], a
    ld b, $3b
    inc b
    ld de, $8300
    ld a, $12
    inc h
    ld b, $ff
    ld [$d00e], sp
    ld c, e
    jr nc, jr_007_4b8a

    rlca
    jp nc, Jump_000_304b

    cp [hl]
    dec b
    db $10
    ld e, a
    inc bc
    jp c, $224b

    ld b, $3b
    dec b
    ld de, $8300
    ld a, $12
    inc h
    ld b, $ff
    ld a, $17
    nop
    ei
    add hl, sp
    ld [$093e], sp
    ld a, [hl]
    ld a, [hl]
    nop
    db $fc
    ld a, [hl]
    cpl
    add hl, sp
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    nop
    db $fd
    ld a, [hl]
    add hl, sp

jr_007_4bfa:
    db $10
    ld a, [hl]
    ld a, [hl]
    nop
    cp $3e
    db $10
    ld a, [hl]
    scf
    rst RST_38
    ld l, $02
    ld c, l
    ld e, a
    dec bc
    ld c, h
    ld h, e
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, c
    cpl
    ld a, h
    ld [bc], a
    ld c, d
    ld [$137c], sp
    ld c, d

jr_007_4c17:
    ld [$0260], sp
    ld d, d
    rst RST_38
    ld a, $17
    ld bc, $391d
    rlca
    ld a, $09
    ld a, [hl]
    ld a, [hl]
    ld bc, $7e1e
    scf
    rst RST_38
    ld bc, $ff3b
    ld [bc], a
    jr c, @+$01

    jr z, @+$05

    inc bc
    ld hl, $3e47
    inc de
    add hl, hl
    inc bc
    dec hl
    jr nc, @-$50

    inc l
    nop
    rst RST_38
    ld [$2105], sp
    ld b, a
    ld a, $13
    ld a, [hl+]
    adc c
    add hl, hl
    rlca
    dec hl
    jr nc, jr_007_4bfa

    inc l
    nop
    add hl, bc
    dec b
    rst RST_38
    jr z, jr_007_4c59

    inc bc
    ld hl, $3e47
    inc de

jr_007_4c59:
    add hl, hl
    dec b
    rlca
    ld a, [hl-]
    ld c, h
    jr z, @+$24

    inc bc
    ld hl, $3e47
    inc de
    add hl, hl

Jump_007_4c66:
    ld [hl+], a
    dec hl
    jr nc, jr_007_4c17

    inc l
    nop
    ld b, e
    inc bc
    adc d
    ld c, h
    rst RST_38
    jr z, jr_007_4c96

    inc bc
    ld hl, $3e47
    inc de
    add hl, hl
    inc hl
    dec hl
    rlca
    ld l, b
    ld c, h
    ld c, $b3
    inc bc
    ld hl, $3e47
    inc de

jr_007_4c85:
    ld [hl+], a
    or e
    rlca
    ld l, b
    ld c, h
    add hl, sp
    ld [$093e], sp
    ld a, [hl]
    ld a, [hl]
    ld [bc], a
    ld a, [hl+]

jr_007_4c92:
    ld a, [hl]
    rlca
    pop af
    ld c, e

jr_007_4c96:
    ld c, $b2
    inc bc
    ld hl, $3e47
    inc de
    ld [hl+], a
    or d
    rlca
    ld l, b
    ld c, h
    nop
    inc l
    rst RST_38
    ld c, $a5
    inc bc
    ld hl, $3e47
    inc de
    ld [hl+], a
    and l
    nop
    ld h, d
    rst RST_38
    jr z, jr_007_4cf8

    inc bc
    ld hl, $3e47
    inc de
    add hl, hl
    ld b, l
    dec hl
    rlca
    ld l, b
    ld c, h
    nop
    add h
    rst RST_38
    ld l, $08
    ld c, $d2
    ld c, h
    jr nc, jr_007_4c85

    ld a, c
    call Call_007_7b4c
    rst RST_38
    inc l
    inc a
    inc l
    dec a
    rst RST_38
    jr nc, jr_007_4c92

    ld a, c
    jp c, Jump_000_074c

    bit 1, h
    inc l
    inc a
    inc l
    ld a, $ff
    ld [$e831], sp
    ld c, h
    nop
    rst RST_38
    add hl, bc
    ld [hl-], a
    rst RST_38
    ld l, l
    rst RST_38
    ld bc, $ff09
    ld l, $02
    ld [hl], a
    ld e, [hl]
    inc l
    dec bc
    rst RST_38
    ld l, $02
    ld d, e
    ld [bc], a

jr_007_4cf8:
    ld e, c
    rst RST_38
    ld l, $02
    ld d, e
    ld [bc], a
    ld e, a
    add hl, bc
    jr @+$01

    ld l, $02
    ld d, e
    ld [$1417], sp
    ld c, l
    ld [bc], a
    ld h, [hl]
    ld [$1b16], sp
    ld c, l
    ld [bc], a
    ld l, e
    add hl, bc
    ld d, $ff
    add hl, sp
    ld de, $ee00
    cpl
    ld a, [hl-]
    rst RST_38
    add hl, bc
    rla

jr_007_4d1d:
    rst RST_38
    ld [$297a], sp
    ld c, l
    ld [$2979], sp
    ld c, l
    ld bc, $ff1b
    ld bc, $ff1c
    ld [$353d], sp

jr_007_4d2f:
    ld c, l
    ld bc, $0919
    dec a
    rst RST_38
    ld bc, $ff1a
    ld l, $01
    ld b, l
    ld [hl], h
    rst RST_38
    ld [$466d], sp
    ld c, l
    ld [bc], a

jr_007_4d42:
    dec [hl]
    add hl, bc
    ld l, l
    rst RST_38
    ld [bc], a
    ld [hl], $ff
    jr nc, jr_007_4d1d

    ld [$5701], sp
    ld c, l
    inc l
    ld [bc], a
    add hl, hl
    inc b
    dec hl
    add hl, bc
    ld bc, $2cff
    add hl, de
    rst RST_38
    jr nc, jr_007_4d2f

    ld [$5702], sp
    ld c, l
    inc l
    ld [bc], a
    add hl, hl
    inc b
    dec hl
    add hl, bc

jr_007_4d66:
    ld [bc], a
    rst RST_38
    jr nc, @-$2a

    jr z, @-$7e

    inc bc
    ld d, a
    ld c, l
    ld [$7f05], sp
    ld c, l
    inc l

jr_007_4d74:
    ld [bc], a
    inc h
    ld [hl], a
    add hl, hl
    add b
    ld a, [hl+]
    add c
    add hl, hl
    adc c
    dec hl
    rst RST_38
    inc l
    ld [bc], a
    inc h
    ld [hl], a

jr_007_4d83:
    add hl, hl
    add b
    ld a, [hl+]
    add c

jr_007_4d87:
    add hl, hl
    rlca
    dec hl
    rst RST_38
    ld [bc], a
    add e
    rst RST_38

jr_007_4d8e:
    jr nc, jr_007_4d66

    ld c, $a0
    inc bc
    ld d, a
    ld c, l
    ld bc, $ff16
    ld l, $00
    db $d3
    nop
    sub $ff
    jr nc, jr_007_4d74

    jr z, @-$72

    inc bc
    ld d, a
    ld c, l
    ld [hl+], a
    and e
    ld a, [hl+]
    adc l

jr_007_4da9:
    add hl, hl
    adc h
    add hl, hl
    adc [hl]
    dec hl
    ld bc, $ff82
    jr nc, jr_007_4d87

    jr z, jr_007_4d42

    inc bc
    ld hl, $2c4e
    inc bc
    inc h
    and e
    ld a, [hl+]
    adc h
    ld a, [hl+]
    adc [hl]
    add hl, hl
    adc l
    dec hl
    rst RST_38
    ld [$cd5f], sp

jr_007_4dc7:
    ld c, l
    ld bc, $09fd
    ld e, a
    rst RST_38
    ld bc, $fffe
    jr nc, jr_007_4d8e

    rlca
    ld d, a

jr_007_4dd4:
    ld c, l
    jr nc, jr_007_4da9

    ld d, h
    ld bc, $4e21
    ld [$e702], sp
    ld c, l
    inc l
    inc bc
    ld a, [hl+]

jr_007_4de2:
    inc b
    dec hl
    ld a, [bc]
    ld bc, $2cff
    inc bc
    ld a, [bc]
    ld bc, $30ff
    db $d3
    ld d, h
    ld [bc], a
    ld hl, $2c4e
    inc bc
    ld a, [bc]
    ld [bc], a
    ld [$5401], sp
    ld c, [hl]
    ld a, [hl+]
    inc b
    dec hl
    rst RST_38
    jr nc, jr_007_4dd4

    jr z, jr_007_4d83

    inc bc
    ld hl, $084e
    dec b
    ld a, [de]
    ld c, [hl]
    dec b
    db $10
    ld c, [hl]
    ld a, [hl+]
    adc c
    dec hl
    rst RST_38
    inc l
    inc bc
    ld [hl+], a
    ld [hl], a
    add hl, hl
    add c
    ld a, [hl+]
    add b
    dec hl
    ld b, $05
    db $10
    ld c, [hl]
    ld a, [hl+]
    rlca
    dec hl
    rst RST_38
    inc l
    ld a, [de]
    rst RST_38
    jr nc, jr_007_4de2

    rlca
    ld hl, $304e
    sub $0e
    and b
    inc b
    ld hl, $074e
    ld b, l
    ld c, c
    jr nc, jr_007_4dc7

    rlca
    ld hl, $304e
    push de
    ld d, h
    ld e, a
    ld hl, $2c4e
    inc bc
    ld a, [bc]
    ld e, a
    rst RST_38
    jr nc, @-$42

    ld l, $00
    inc l
    inc l
    dec de
    rst RST_38
    nop
    push hl
    rst RST_38
    ld bc, $ff17
    ld bc, $ffb2
    rst RST_38
    ld [bc], a
    ld a, b
    rst RST_38
    ld [bc], a
    ld a, c
    rst RST_38
    ld [bc], a
    ld a, d
    rst RST_38
    ld [bc], a
    ld a, e
    rst RST_38
    ld c, c
    ld bc, $182c
    rst RST_38
    ld c, c
    ld [bc], a
    inc l
    jr @+$01

    ld [bc], a
    sbc e
    rst RST_38
    ld l, $02
    sbc h
    ld d, h
    add c
    ld d, h
    ld c, [hl]
    ld a, $08
    ld [bc], a
    sbc l
    ld e, d
    rst RST_38
    ld [bc], a
    sbc [hl]
    rst RST_38
    ld [bc], a
    and b
    rst RST_38
    ld [bc], a
    and d
    rst RST_38
    ld [bc], a
    and a
    rst RST_38
    ld bc, $ffe3
    ld bc, $ffef
    ld [bc], a
    or c
    rst RST_38
    ld [bc], a
    or d
    rst RST_38
    ld [$a182], sp
    ld c, [hl]
    ld l, $02
    or e
    ld [$a483], sp
    ld c, [hl]
    add hl, bc
    add e
    rst RST_38
    ld [bc], a
    or l
    rst RST_38
    ld [bc], a
    or h
    rst RST_38
    ld [bc], a
    adc $ff
    ld [bc], a
    rst RST_08
    rst RST_38
    ld [bc], a
    ret nc

    rst RST_38
    ld l, $02
    ret c

    ld [$5486], sp
    ld c, [hl]
    ld [bc], a
    reti


    rst RST_38
    ld [bc], a
    jp c, Jump_000_02ff

    db $db
    rst RST_38
    ld [bc], a
    call c, Call_000_00ff
    db $eb
    rst RST_38
    nop
    db $ec
    rst RST_38
    nop
    ld h, a
    rst RST_38
    nop
    ld l, b
    rst RST_38
    nop
    xor b
    rst RST_38
    nop
    xor c
    rst RST_38
    nop
    xor d
    rst RST_38
    nop
    xor e
    rst RST_38
    nop
    xor h
    rst RST_38
    ld l, $00
    push bc
    ld [$548b], sp
    ld c, [hl]
    nop
    add $ff
    nop
    rst RST_00
    rst RST_38
    ld l, $39
    nop
    ld a, $0a
    ld a, [hl]
    ld a, [hl]
    nop
    pop bc
    ld [$fe8c], sp
    ld c, [hl]
    nop
    jp nz, Jump_007_7e2f

    ld a, [hl-]
    rst RST_38
    cpl
    ld a, [hl]
    ld a, [hl-]
    ld a, $08
    nop
    jp $ff5a


jr_007_4f07:
    nop
    ret z

    rst RST_38
    ld [bc], a
    ld a, [$2eff]
    ld [$3d78], sp
    ld c, a
    ld [$210d], sp
    ld c, a
    ld [$2e50], sp
    ld c, a
    ld [$360c], sp
    ld c, a
    nop
    inc b
    rst RST_38
    jr nc, jr_007_4f93

    inc l
    ld b, l
    ld [$330c], sp
    ld c, a
    jr nc, jr_007_4f07

    inc l
    ld b, h
    rst RST_38
    jr nc, jr_007_4fa8

    rlca
    inc hl
    ld c, a
    nop
    dec b
    rst RST_38
    jr nc, @-$23

    inc l
    ld b, h
    rlca
    inc sp
    ld c, a
    nop
    ld b, $ff
    ld bc, $ff00
    ld bc, $ff87
    ld bc, $ff38
    nop
    dec l
    rst RST_38
    nop
    db $e3
    rst RST_38
    ld [bc], a
    cp [hl]

jr_007_4f51:
    rst RST_38
    add hl, bc

Jump_007_4f53:
    adc b
    dec l
    ld [hl-], a
    nop
    adc a
    ld e, [hl]
    ld c, a
    cp $fe
    ld c, a
    ld c, a
    ld l, $02
    cp a
    ld [hl+], a
    sub l
    ld a, [hl+]
    sbc l
    ld a, [hl+]
    sbc [hl]
    dec hl
    ld [bc], a
    ret nz

    add hl, bc
    add d
    rst RST_38
    add hl, bc
    adc b
    ld [$3082], sp
    ld d, c
    dec l
    ld [hl-], a
    nop
    adc l
    ld e, [hl]
    ld c, a
    cp $fe
    ld c, a
    ld c, a
    add hl, bc
    adc b
    ld d, h
    ld [hl], a
    adc d
    ld c, a
    ld [$8a82], sp
    ld c, a
    rlca
    ld c, a
    ld c, a
    dec l
    ld [hl-], a
    nop
    ld bc, $5024
    nop
    ld [bc], a
    ld b, e

jr_007_4f93:
    ld d, b
    nop
    dec b
    ld e, e
    ld c, c
    nop
    add hl, bc
    ld e, a
    ld d, b
    nop
    ld c, $8d
    ld c, c
    nop
    ld de, $505f
    nop
    ld [de], a
    ld e, a
    ld d, b

jr_007_4fa8:
    nop
    inc e
    ld h, d
    ld d, b
    nop
    dec e
    ld h, d
    ld d, b
    nop
    jr nz, jr_007_4f51

    ld c, c
    nop
    ld hl, $4a67
    nop
    ld [hl+], a
    push af
    ld c, d
    inc bc
    rla
    ld sp, hl
    ld h, c
    nop
    ld sp, $505f
    nop
    ccf
    ld e, a
    ld d, b
    nop
    ld c, e
    ld h, [hl]
    ld d, b
    nop
    ld e, [hl]
    ld e, a
    ld d, b
    nop
    ld h, e
    ld l, c
    ld d, b
    nop
    ld l, c
    add a
    ld c, e
    nop
    ld l, e
    ld l, h
    ld d, b
    nop
    ld l, [hl]
    ld a, h
    ld d, b
    nop
    ld [hl], b
    ld a, a
    ld d, b
    nop
    ld a, h
    sub [hl]
    ld d, b
    nop
    add c
    sbc c
    ld d, b
    ld [bc], a
    nop
    rst RST_00
    ld d, b
    nop
    sub d
    jp z, TimerOverflowInterrupt

    sub [hl]
    ld e, a
    ld d, b

jr_007_4ff8:
    nop
    sbc e
    ld e, a
    ld d, b
    nop
    and b
    ld e, a
    ld d, b
    nop
    and l
    ld e, a
    ld d, b
    inc bc
    inc h
    reti


    ld d, b
    inc bc
    inc sp
    rst RST_20
    ld d, b
    inc bc
    dec [hl]
    db $ec
    ld d, b
    inc bc
    ld b, [hl]
    rst RST_28
    ld d, b
    inc bc
    ld c, a
    adc h
    ld h, l
    inc b
    ld a, [bc]
    add hl, bc
    ld d, c
    inc b
    db $10
    dec l
    ld d, c
    cp $fe
    jr nc, jr_007_5075

    jr nc, jr_007_4ff8

    ld [$3201], sp
    ld d, b
    inc l
    ld [bc], a
    add hl, hl
    inc b
    dec hl
    add hl, bc
    ld bc, $08ff
    ld [bc], a
    ld a, $50
    ld a, [bc]
    ld bc, $032c
    ld a, [hl+]
    inc b
    dec hl
    rst RST_38
    inc l
    inc bc
    ld a, [bc]
    ld bc, $30ff
    db $d3
    ld [$5102], sp
    ld d, b
    inc l
    ld [bc], a
    add hl, hl

jr_007_504c:
    inc b
    dec hl
    add hl, bc
    ld [bc], a
    rst RST_38
    ld [$5a01], sp
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    jr c, jr_007_50aa

    inc l
    inc bc
    ld a, [bc]
    ld [bc], a
    rst RST_38
    nop
    ld l, $ff
    ld c, b
    inc l
    dec de
    rst RST_38
    ld bc, $ff1f
    ld bc, $ffea

jr_007_506c:
    ld [$755f], sp
    ld d, b
    ld bc, $09fd
    ld e, a
    rst RST_38

jr_007_5075:
    jr nc, jr_007_504c

    inc l
    inc bc
    ld a, [bc]
    ld e, a
    rst RST_38
    ld [bc], a
    ld de, $28ff
    dec a
    inc bc
    sub e
    ld d, b
    ld l, $3e
    ld d, $01
    or l
    ld [hl+], a
    ld e, b
    add hl, hl
    dec a
    ld a, [hl+]
    inc a
    dec hl
    ld bc, $ffaf
    ld bc, $ffb6
    ld [bc], a
    ld h, e
    rst RST_38
    ld [$ac78], sp
    ld d, b
    ld l, $02
    add a
    ld [$a97c], sp
    ld d, b
    ld [bc], a
    adc b
    add hl, bc
    ld a, h
    rst RST_38
    ld [bc], a

jr_007_50aa:
    adc c
    rst RST_38
    jr nc, @-$3f

    ld c, $a9
    inc bc
    cp l
    ld d, b
    inc l
    ld [bc], a
    ld [hl+], a
    xor c
    add hl, hl
    sub h
    ld a, [hl+]
    sub e
    dec hl
    rst RST_38
    inc l
    inc bc
    inc h
    xor c
    add hl, hl
    sub e
    ld a, [hl+]
    sub h
    dec hl
    rst RST_38
    ld [bc], a
    ret z

    rst RST_38
    jr z, jr_007_506c

    inc b
    ld d, c
    ld d, d
    ld [bc], a
    sub $24
    xor a
    add hl, hl
    sbc a
    ld a, [hl+]
    and b
    dec hl
    rst RST_38
    ld [$e268], sp
    ld d, b
    ld [bc], a
    adc d
    add hl, bc
    ld l, b
    rst RST_38
    ld bc, $0a14
    ld l, b
    rst RST_38
    ld [bc], a
    ld h, b
    add hl, bc
    ld [hl], b
    rst RST_38
    ld [bc], a
    ld h, h
    rst RST_38
    ld l, $00
    cp l
    ld l, [hl]
    ld bc, $3051
    ld c, b
    inc l

jr_007_50f8:
    dec l
    add hl, de
    dec de
    ld [de], a
    ld b, a
    inc sp
    ld c, h
    ld b, a
    rst RST_38
    ld a, [hl+]
    ld a, [de]
    add hl, hl
    jr jr_007_512f

    add hl, de
    dec hl
    rst RST_38
    ld l, [hl]
    rla
    ld d, c
    ld [$1a4d], sp
    ld d, c
    ld [$2076], sp
    ld d, c
    ld bc, $ff8b
    inc l
    ld b, a
    rst RST_38
    ld bc, $0a89
    ld c, l
    ld [hl], e
    rst RST_38
    ld l, $01
    add l
    add hl, bc
    ld c, l
    ld [hl], e
    ld [$54a8], sp
    ld c, [hl]
    ld bc, $ff7a
    ld [bc], a
    ld h, a

jr_007_512f:
    rst RST_38
    nop
    inc l
    rst RST_38
    ld [$3082], sp
    ld d, c
    ld [bc], a
    cp [hl]
    rst RST_38
    ld d, h
    add d
    scf
    ld d, c
    ld bc, $ffb4
    ld [bc], a
    db $e4
    rst RST_38
    ld a, $13
    ld a, [hl+]
    rla
    dec hl
    jr nc, jr_007_50f8

    inc l
    nop
    nop
    ld l, e
    add hl, sp
    ld c, $3e
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    nop
    ld l, h
    ld [hl], a
    nop
    ld l, l
    ld a, [hl]
    scf
    rst RST_38
    ld a, $13
    ld [hl+], a
    sub a
    rlca
    ld c, c
    ld d, c
    ld a, $13
    ld [hl+], a
    sbc c
    rlca
    ld c, c

jr_007_516a:
    ld d, c
    ld a, $13
    ld [hl+], a
    sbc h
    rlca
    ld c, c
    ld d, c
    ld c, $ad
    inc bc
    cp e
    ld d, c
    ld a, $13
    ld [hl+], a
    xor l
    ld l, $30
    xor l
    inc l
    nop
    add hl, sp
    ld b, $3e
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    ld [bc], a
    sbc a
    ld a, $10
    ld a, [hl]
    scf
    rst RST_38
    ld c, $ad
    inc bc
    cp e
    ld d, c
    ld a, $13
    ld [hl+], a
    xor l
    rlca
    ld l, b
    ld c, h
    ld a, $13
    ld [hl+], a
    or b
    rlca
    ld a, e
    ld d, c
    ld a, $13
    add hl, hl
    ld b, e
    dec hl
    ld c, $65
    inc bc
    xor h
    ld d, c
    ld [hl+], a
    ld h, l
    ld a, $09
    ld [bc], a
    rra
    rlca
    pop af
    ld c, e
    ld a, $13
    add hl, hl
    ld b, d
    dec hl
    rlca
    and l
    ld d, c

jr_007_51bb:
    jr nc, jr_007_516a

    inc l
    ld bc, $3eff
    rla
    ld [bc], a
    adc h
    add hl, sp
    ld [$093e], sp
    ld a, [hl]
    ld a, [hl]
    ld bc, $7e8a
    add hl, sp
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    ld l, $01
    add c
    nop
    db $fd
    cpl
    ld a, [hl]
    add hl, sp
    db $10
    ld a, [hl]
    ld a, [hl]
    nop
    cp $7e
    ld a, $10
    scf
    rst RST_38
    ld [$ea78], sp
    ld d, c
    ld [bc], a
    sub [hl]
    rst RST_38
    ld d, h
    add b
    rst RST_20
    ld d, c

jr_007_51ee:
    ld [$e77e], sp
    ld d, c
    ld l, $02
    sub e
    ld [bc], a

jr_007_51f6:
    sub a
    rst RST_38
    ld [bc], a
    add [hl]
    rst RST_38
    ld d, h
    ld a, b
    sbc l
    ld d, b
    jr nc, @-$3f

    ld c, $a9
    inc bc
    add c
    ld d, d
    rlca
    or e
    ld d, b
    jr nc, jr_007_51bb

    ld c, $aa
    inc bc

jr_007_520e:
    add c
    ld d, d
    inc l
    ld [bc], a
    ld [hl+], a
    xor d
    ld de, $0351
    inc h
    ld d, d
    ld [$247f], sp

jr_007_521c:
    ld d, d
    inc d
    ld d, c
    inc bc
    inc h
    ld d, d
    add hl, hl

jr_007_5223:
    ld c, l
    add hl, hl
    sub [hl]
    add hl, hl
    sub a
    ld a, [hl+]
    sub l
    dec hl
    rst RST_38

jr_007_522c:
    jr nc, @-$4e

    ld c, $ab
    inc bc

jr_007_5231:
    add c
    ld d, d
    inc l
    ld [bc], a
    ld [hl+], a
    xor e
    ld de, $0352
    ld b, d
    ld d, d
    ld [$427e], sp
    ld d, d
    add hl, hl
    ld c, [hl]

jr_007_5242:
    add hl, hl
    sbc c
    add hl, hl
    sbc d
    ld a, [hl+]
    sbc b
    dec hl
    rst RST_38
    jr nc, jr_007_521c

    jr z, jr_007_51ee

    inc bc
    ld c, c
    ld c, a
    ld [bc], a
    push de
    ld [hl+], a
    xor a
    add hl, hl
    and b
    ld a, [hl+]
    sbc a
    dec hl
    rst RST_38
    jr nc, jr_007_5231

    jr z, @-$5b

    inc bc
    add c
    ld d, d
    inc l
    ld [bc], a
    ld [hl+], a
    or c
    add hl, hl

jr_007_5267:
    and e
    ld a, [hl+]
    and d
    add hl, hl
    and c

jr_007_526c:
    dec hl

jr_007_526d:
    rst RST_38
    jr nc, jr_007_522c

    jr z, jr_007_51f6

    inc bc
    add c
    ld d, d
    inc l
    ld [bc], a
    inc h
    sub [hl]
    add hl, hl
    add h
    ld a, [hl+]

jr_007_527c:
    add l
    add hl, hl
    adc d
    dec hl
    rst RST_38
    inc l
    add hl, de

jr_007_5283:
    rst RST_38

jr_007_5284:
    jr nc, jr_007_5242

    jr z, jr_007_520e

    inc bc
    add c
    ld d, d
    inc l
    ld [bc], a
    inc h
    sbc b
    add hl, hl

jr_007_5290:
    add [hl]
    ld a, [hl+]
    add a
    add hl, hl
    adc e
    dec hl
    rst RST_38
    jr nc, jr_007_526d

    jr z, jr_007_5223

    inc bc

jr_007_529c:
    add c
    ld d, d
    inc l
    ld [bc], a
    inc h
    sbc e
    add hl, hl
    adc b
    dec hl
    rst RST_38
    jr nc, @-$69

    rlca
    rrca
    ld d, e
    jr nc, jr_007_526c

    ld c, $a9
    inc b
    rrca

jr_007_52b1:
    ld d, e
    rlca
    cp l
    ld d, b
    jr nc, jr_007_5267

    ld c, $aa
    inc b

jr_007_52ba:
    rrca
    ld d, e
    inc l
    inc bc
    inc h

jr_007_52bf:
    xor d
    add hl, hl
    sub l
    ld a, [hl+]
    sub [hl]
    ld a, [hl+]
    sub a
    ld a, [hl+]
    ld c, l
    dec hl
    rst RST_38
    jr nc, jr_007_527c

    ld c, $ab
    inc b
    rrca

jr_007_52d0:
    ld d, e
    inc l
    inc bc
    inc h
    xor e
    add hl, hl
    sbc b
    ld a, [hl+]
    sbc c
    ld a, [hl+]
    sbc d
    ld a, [hl+]
    ld c, [hl]
    dec hl
    rst RST_38
    jr nc, jr_007_52b1

    jr z, jr_007_5283

    inc b
    ld c, c
    ld c, a
    rlca
    rst RST_08
    ld d, b
    jr nc, jr_007_52bf

    jr z, jr_007_5290

    inc b
    rrca
    ld d, e
    inc l
    inc bc
    inc h
    or c
    add hl, hl
    and d
    ld a, [hl+]
    and e
    ld a, [hl+]
    and c
    dec hl

jr_007_52fb:
    rst RST_38
    jr nc, jr_007_52ba

    jr z, jr_007_5284

    inc b
    rrca
    ld d, e
    inc l
    inc bc
    ld [hl+], a
    sub [hl]
    add hl, hl
    add l
    ld a, [hl+]
    add h
    ld a, [hl+]
    adc d
    dec hl
    rst RST_38
    inc l
    ld a, [de]
    rst RST_38
    jr nc, jr_007_52d0

    jr z, jr_007_529c

    inc b
    rrca
    ld d, e
    inc l
    inc bc
    ld [hl+], a
    sbc b
    add hl, hl
    add a
    ld a, [hl+]
    add [hl]
    ld a, [hl+]
    adc e
    dec hl
    rst RST_38
    jr nc, jr_007_52fb

    jr z, jr_007_52b1

    inc b
    rrca
    ld d, e
    inc l
    inc bc
    ld [hl+], a
    sbc e
    ld a, [hl+]
    adc b
    dec hl
    rst RST_38
    ld c, [hl]
    ld d, e
    ld d, [hl]
    ld d, e
    ld e, [hl]
    ld d, e
    ld h, [hl]
    ld d, e
    ld l, [hl]
    ld d, e
    halt
    ld d, e
    ld a, [hl]
    ld d, e
    add [hl]
    ld d, e
    adc [hl]
    ld d, e
    sub [hl]
    ld d, e
    xor b
    ld d, e
    or b
    ld d, e
    cp b
    ld d, e
    ret nz

    ld d, e
    dec b
    ld d, l
    jp $1153


    ld d, l
    add $53
    dec b
    ld d, l
    jp $1153


    ld d, l
    ret


    ld d, e
    sub $53
    jp $e553


    ld d, e
    pop af
    ld d, e
    rlca
    ld d, h
    jp $1153


    ld d, l
    ld de, $2454
    ld d, h
    jp $1153


    ld d, l
    ld l, $54
    dec b
    ld d, l
    jp $1153


    ld d, l
    add hl, sp
    ld d, h
    ld b, l
    ld d, h
    jp Jump_007_4f53


    ld d, h
    ld e, d
    ld d, h
    ld h, h
    ld d, h
    jp $1153


    ld d, l
    ld l, h
    ld d, h
    dec b
    ld d, l
    jp $1153


    ld d, l
    ld l, a
    ld d, h
    ld a, d
    ld d, h
    jp $8453


    ld d, h
    add a
    ld d, h
    adc d
    ld d, h
    sub l
    ld d, h
    and [hl]
    ld d, h
    xor c
    ld d, h
    xor h
    ld d, h
    dec b
    ld d, l
    jp $1153


    ld d, l
    xor a
    ld d, h
    dec b
    ld d, l
    jp $1153


    ld d, l
    or d
    ld d, h
    jp nc, $c354

    ld d, e
    db $fd
    ld d, h
    nop
    add hl, sp
    rst RST_38
    nop
    inc l
    rst RST_38
    nop
    ld a, [hl-]
    rst RST_38
    ld [$d348], sp
    ld d, e
    ld l, $01
    ld d, a
    ld [bc], a
    ld [$01ff], sp
    ld e, c
    rst RST_38
    dec e
    dec c
    ld d, l
    ld d, h
    ld c, b
    ld a, [de]
    ld d, l
    ld c, b
    inc l
    ld [bc], a
    ld a, [hl+]
    dec sp
    dec hl
    daa
    rst RST_38
    ld c, b
    ld e, e
    jr nz, @+$57

    inc l
    inc bc
    add hl, hl
    dec sp
    dec hl
    rra
    jr c, @+$01

    ld [$0164], sp
    ld d, h
    ld [$0463], sp
    ld d, h
    ld l, $02
    rlca
    ld [bc], a
    ld [$6309], sp
    rst RST_38
    ld [bc], a
    ld a, [bc]
    rst RST_38
    ld [bc], a
    add hl, bc
    rst RST_38
    dec e
    dec c
    ld d, l
    ld d, h
    ld e, e
    ld a, [de]
    ld d, l
    rlca
    ld [$0855], sp
    ld h, [hl]
    ld hl, $0854
    ld h, l
    inc b
    ld d, h
    ld l, $02
    dec bc
    ld [bc], a
    ld [$6509], sp
    rst RST_38
    ld [bc], a
    inc c
    rst RST_38
    dec e
    dec c
    ld d, l
    ld d, h
    ld e, h
    ld a, [de]
    ld d, l
    rlca
    ld [$3955], sp
    inc bc
    ld a, $0a
    ld a, [hl]
    ld a, [hl]
    ld bc, $7ebd
    ld a, [hl-]
    rst RST_38
    ld l, $01
    cp [hl]
    ld [$0457], sp
    ld d, l
    ld bc, $09bf
    ld d, a
    rst RST_38

jr_007_5445:
    dec e
    dec c
    ld d, l
    ld c, b
    inc l
    ld [bc], a
    ld [hl+], a
    ld [hl], l
    daa
    rst RST_38
    ld c, b
    ld e, e
    jr nz, jr_007_54a8

    inc l
    inc bc
    inc h
    ld [hl], l
    rra
    jr c, @+$01

    ld l, $01
    pop bc
    ld [$0458], sp
    ld d, l
    ld bc, $ffc0
    dec e
    dec c
    ld d, l
    add hl, bc
    ld e, b
    rlca
    ld [$0255], sp
    ld b, d
    rst RST_38
    ld c, $a7
    inc bc
    ld [hl], a
    ld d, h
    ld [bc], a
    ld b, e
    rst RST_38
    ld [bc], a
    ld b, h
    rst RST_38
    dec e
    dec c
    ld d, l
    ld c, b
    inc l
    ld [bc], a
    ld [hl+], a
    xor h
    daa
    rst RST_38
    nop
    push hl
    rst RST_38
    nop
    pop hl
    rst RST_38
    ld c, b
    ld e, e
    jr nz, jr_007_54e3

    inc l
    inc bc
    inc h
    xor h
    jr c, jr_007_54b3

    rst RST_38
    jr nc, jr_007_5445

    ld c, $a7
    inc bc
    and e
    ld d, h
    ld a, $13
    ld [hl+], a
    and a
    inc l
    nop
    rst RST_38
    inc l
    ld bc, $00ff
    db $e3

jr_007_54a8:
    rst RST_38
    nop
    dec l
    rst RST_38
    ld [bc], a
    db $dd
    rst RST_38
    nop
    xor l
    rst RST_38
    ld d, h

jr_007_54b3:
    db $10
    rst RST_08
    ld d, h
    ld [$cf3e], sp
    ld d, h
    ld [$cf53], sp
    ld d, h
    ld l, $3e
    ld [$fe02], sp
    ld [bc], a
    ld [hl], b
    add hl, bc
    adc l
    add hl, bc
    inc [hl]
    add hl, bc
    ld b, c
    add hl, bc
    ld d, d
    ld e, d
    rst RST_38
    ld [bc], a
    db $fd
    rst RST_38
    dec e
    dec c
    ld d, l
    ld l, $48
    inc l
    ld [bc], a
    daa
    ld [$04a0], sp
    ld d, l
    add hl, bc
    and b
    ld d, h
    db $10
    db $f4

jr_007_54e3:
    ld d, h
    ld [$043e], sp
    ld d, l
    ld a, $08
    ld [bc], a
    ld bc, $3409
    add hl, bc
    adc e
    add hl, bc
    ld b, c
    ld e, d
    rst RST_38
    ld [$0406], sp
    ld d, l
    ld [bc], a
    jr jr_007_5504

    ld b, $ff
    ld c, b
    ld e, e
    jr nz, jr_007_5556

    rlca
    dec d
    ld d, l

jr_007_5504:
    rst RST_38
    dec e
    dec c
    ld d, l
    ld c, b
    inc l
    ld [bc], a
    daa
    rst RST_38
    ld c, b
    inc l
    add hl, de
    rst RST_38
    ld c, b
    ld e, e
    jr nz, jr_007_556a

    inc l
    inc bc
    rra
    jr c, @+$01

    ld l, $00
    db $d3
    nop
    sub $ff
    inc l
    ld a, [de]
    rst RST_38
    dec hl
    ld d, l
    inc sp
    ld d, l
    dec sp
    ld d, l
    ld b, e
    ld d, l
    ld c, e
    ld d, l
    ld h, h
    ld d, l
    halt
    ld d, l
    add b
    ld d, l
    ld c, [hl]
    ld d, l
    ld l, e
    ld d, l
    ld a, l
    ld d, l
    add a
    ld d, l
    ld d, c
    ld d, l
    ld l, e
    ld d, l
    ld a, l
    ld d, l
    add a
    ld d, l
    ld d, h
    ld d, l
    ld l, e
    ld d, l
    ld a, l
    ld d, l
    add a
    ld d, l
    ld [bc], a
    cp b
    rst RST_38
    ld [bc], a
    db $fc
    rst RST_38
    ld bc, $ffc9
    ld l, $00

jr_007_5556:
    ret


    ld [$5e8d], sp
    ld d, l
    nop
    jp z, Jump_000_3eff

    ld [$cb00], sp
    ld e, d
    rst RST_38
    ld [$6b82], sp
    ld d, l
    ld [bc], a
    cp [hl]

jr_007_556a:
    rst RST_38
    ld c, b
    dec e
    ld [hl], e
    ld d, l
    inc l
    ld [bc], a
    daa
    rst RST_38
    inc l
    add hl, de
    rst RST_38
    ld [$7d82], sp
    ld d, l
    ld [bc], a
    cp [hl]
    rst RST_38
    nop
    dec l
    rst RST_38
    ld [$8782], sp
    ld d, l
    ld [bc], a
    cp [hl]
    rst RST_38
    ld c, b
    dec e
    adc [hl]
    ld d, l
    inc l
    ld a, [de]
    rst RST_38
    inc l
    inc bc
    rra
    jr c, @+$01

    ld c, e
    ld d, [hl]
    ld d, e
    ld d, [hl]
    ld e, e
    ld d, [hl]
    ld h, e
    ld d, [hl]
    ld l, e
    ld d, [hl]
    ld [hl], e
    ld d, [hl]
    ld a, e
    ld d, [hl]
    add e
    ld d, [hl]
    adc e
    ld d, [hl]
    sub e
    ld d, [hl]
    sbc e
    ld d, [hl]
    and e
    ld d, [hl]
    xor e
    ld d, [hl]
    or e
    ld d, [hl]
    cp e
    ld d, [hl]
    jp $cb56


    ld d, [hl]
    db $d3
    ld d, [hl]
    rst RST_18
    ld d, [hl]
    rst RST_20
    ld d, [hl]
    rst RST_28
    ld d, [hl]
    rst RST_30
    ld d, [hl]
    rst RST_38
    ld d, [hl]
    rlca
    ld d, a
    add hl, de
    ld d, a
    ld hl, $2957
    ld d, a
    dec [hl]
    ld d, a
    dec a
    ld d, a
    ld b, l
    ld d, a
    ld c, l
    ld d, a
    ld e, a
    ld d, a
    ld h, a
    ld d, a
    ld l, a
    ld d, a
    ld [hl], a
    ld d, a
    ld a, a
    ld d, a
    add a
    ld d, a
    sub e
    ld d, a
    sbc e
    ld d, a
    and e
    ld d, a
    xor e
    ld d, a
    or e
    ld d, a
    cp e
    ld d, a
    jp $cb57


    ld d, a
    db $d3
    ld d, a
    db $db
    ld d, a
    db $e3
    ld d, a
    rst RST_28
    ld d, a
    rst RST_30
    ld d, a
    rst RST_38
    ld d, a
    rlca
    ld e, b
    rrca
    ld e, b
    rla
    ld e, b
    rra
    ld e, b
    daa
    ld e, b
    cpl
    ld e, b
    scf
    ld e, b
    ccf
    ld e, b
    ld b, a
    ld e, b
    ld d, e
    ld e, b
    ld e, e
    ld e, b
    ld h, e
    ld e, b
    ld l, e
    ld e, b
    ld [hl], e
    ld e, b
    ld a, e
    ld e, b
    add e
    ld e, b
    adc e
    ld e, b
    sub e
    ld e, b
    sbc a
    ld e, b
    and a
    ld e, b
    cp c
    ld e, b
    pop bc
    ld e, b
    ret


    ld e, b
    pop de
    ld e, b
    reti


    ld e, b
    push hl
    ld e, b
    db $ed
    ld e, b
    push af
    ld e, b
    db $fd
    ld e, b
    add hl, bc
    ld e, c
    dec d
    ld e, c
    dec e
    ld e, c
    dec h
    ld e, c
    dec l
    ld e, c
    dec [hl]
    ld e, c
    dec a
    ld e, c
    ld b, l
    ld e, c
    ld c, l
    ld e, c
    ld d, l
    ld e, c
    ld e, l
    ld e, c
    ld h, l
    ld e, c
    ld l, l
    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_6d66

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_7066

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_7366

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_7666

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_7966

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld h, $60
    ld sp, $3460
    ld h, b
    ld e, d
    ld h, [hl]
    jp nc, $2066

    ld h, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_6d66

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_6d66

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_6d66

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_6d66

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_000_2366

    ld h, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_000_2e66

    ld h, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_000_3166

    ld h, c
    add c
    ld e, c
    jr c, jr_007_5727

    ld c, h
    ld h, c
    ld e, a
    ld h, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld h, d
    ld h, c
    ld l, l
    ld h, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_7066

    ld h, c
    add d
    ld h, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    adc [hl]
    ld h, c
    sbc c
    ld h, c
    and d
    ld h, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    and l
    ld h, c
    or b
    ld h, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    or h
    ld h, c
    cp a
    ld h, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nz, $cd61

    ld h, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ret nc

    ld h, c
    db $db
    ld h, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    sbc $61
    jp hl


    ld h, c
    ld l, e
    ld h, l
    ld a, h
    ld e, c
    ld e, d
    ld h, [hl]
    db $ec
    ld h, c
    ldh [c], a
    ld h, [hl]
    ld sp, hl
    ld h, c
    nop
    ld h, e
    ldh [c], a
    ld h, [hl]
    rlca
    ld h, d
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld a, [de]
    ld h, d
    ld [hl+], a
    ld h, d
    add c
    ld e, c
    ld e, d
    ld h, [hl]

jr_007_5727:
    jp nc, Jump_000_3b66

    ld h, d
    ld b, a
    ld h, d
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld e, b
    ld h, d
    ld h, e
    ld h, d
    ld l, h
    ld h, d
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld a, [hl]
    ld h, d
    xor b
    ld h, d
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    cp d
    ld h, d
    call c, $8162
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $df66

    ld h, d
    ld l, e
    ld h, l
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld [$e262], a
    ld h, [hl]
    inc bc
    ld h, e
    nop
    ld h, e
    ldh [c], a
    ld h, [hl]
    inc e
    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    rra
    ld h, e
    ld l, l
    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_6d66

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_6d66

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $2a66

    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $2a66

    ld h, e
    inc [hl]
    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_000_3d66

    ld h, e
    ld b, [hl]
    ld h, e
    inc [hl]
    ld h, b
    ld e, d
    ld h, [hl]
    jp nc, $4966

    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $4966

    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $4966

    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $4966

    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $4966

    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $4966

    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_4c66

    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld c, a
    ld h, e
    ld e, d
    ld h, e
    inc [hl]
    ld h, b
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_5d66

    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_6066

    ld h, e
    push de
    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $e466

    ld h, e
    db $ed
    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $f866

    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $fb66

    ld h, e
    inc [hl]
    ld h, b
    ld e, d
    ld h, [hl]
    jp nc, $fe66

    ld h, e
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld [$1364], sp
    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld d, $64
    ld hl, $8164
    ld e, c
    ld e, d
    ld h, [hl]
    inc h
    ld h, h
    cpl
    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld [hl-], a
    ld h, h
    dec a
    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $4066

    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_4366

    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $5a66

    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_5d66

    ld h, h
    ld [hl], l
    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $8166

    ld h, h
    adc d
    ld h, h
    inc [hl]
    ld h, b
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_6d66

    ld e, c
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $8d66

    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $9066

    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $9366

    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $9666

    ld h, h
    inc [hl]
    ld h, b
    ld e, d
    ld h, [hl]
    jp nc, $9966

    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    sbc h
    ld h, h
    and a
    ld h, h
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    or [hl]
    ld h, h
    pop bc
    ld h, h
    cp $64
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $0d66

    ld h, l
    ld d, $65
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    add hl, de
    ld h, l
    jr z, jr_007_590e

    ld l, e
    ld h, l
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    dec l
    ld h, l
    push hl
    ld h, [hl]
    adc b
    ld e, h
    nop
    ld h, e
    ldh [c], a
    ld h, [hl]
    jr c, jr_007_5920

    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld b, d
    ld h, l
    ld d, h
    ld h, l
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld d, a
    ld h, l
    ld h, d
    ld h, l
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_6566

    ld h, l
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_6866

    ld h, l
    ld l, e
    ld h, l
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld l, a
    ld h, l
    ldh [c], a
    ld h, [hl]
    ld a, h
    ld h, l
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_000_2266

    ld h, d
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, Jump_007_7f66

    ld h, l
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $8266

    ld h, l
    adc h
    ld h, l
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    and e
    ld h, l
    ldh [c], a
    ld h, [hl]
    xor e
    ld h, l
    add sp, $65
    add c

jr_007_590e:
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $f666

    ld h, l
    rst RST_38
    ld h, l
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld [bc], a
    ld h, [hl]
    dec c
    ld h, [hl]
    add c

jr_007_5920:
    ld e, c
    ld e, d
    ld h, [hl]
    db $10
    ld h, [hl]
    dec de
    ld h, [hl]
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    jp nc, $1e66

    ld h, [hl]
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    ld e, $66
    ld [hl-], a
    ld h, [hl]
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    dec [hl]
    ld h, [hl]
    ld [hl-], a
    ld h, [hl]
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    dec [hl]
    ld h, [hl]
    ld [hl-], a
    ld h, [hl]
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    dec [hl]
    ld h, [hl]
    ld [hl-], a
    ld h, [hl]
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    dec [hl]
    ld h, [hl]
    ld [hl-], a
    ld h, [hl]
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    dec [hl]
    ld h, [hl]
    ld [hl-], a
    ld h, [hl]
    add c
    ld e, c
    ld e, d
    ld h, [hl]
    dec [hl]
    ld h, [hl]
    ld sp, $8161
    ld e, c
    jr c, jr_007_59d1

    rra
    ld h, [hl]
    ld bc, $ff65
    ld bc, $ff7f
    ld bc, $ff78
    nop
    push af
    rst RST_38
    nop
    jr @+$01

    jr z, jr_007_598d

    inc bc
    ld sp, hl
    ld h, c
    dec l
    ld [hl-], a
    nop
    dec b
    dec bc
    ld e, d
    nop
    jr jr_007_599c

    ld e, d
    nop
    ld a, [de]

jr_007_598d:
    add hl, de
    ld e, d
    nop
    dec de
    add hl, de
    ld e, d
    nop
    rra
    inc l
    ld e, e
    nop
    ld b, e
    or [hl]
    ld e, l
    nop

jr_007_599c:
    ld b, h
    pop af
    ld e, l
    nop
    ld b, l
    add hl, bc
    ld e, [hl]
    nop
    ld b, [hl]
    pop af
    ld e, l
    nop
    ld d, b
    sub [hl]
    ld e, [hl]
    nop
    ld [hl], b
    ld bc, $005d
    ld a, d
    ld [hl], $5e
    nop
    add e
    ld a, a
    ld e, d
    nop
    sub e
    pop de
    ld e, h
    ld bc, $020c
    ld e, e
    ld bc, $7203
    ld e, l
    ld bc, $7204
    ld e, l
    ld [bc], a
    nop
    or a
    ld e, h
    inc bc
    ld c, e
    rst RST_38
    ld e, d
    inc b
    add hl, bc

jr_007_59d1:
    jr nz, jr_007_5a30

    inc b
    ld a, [bc]
    ld b, e
    ld e, l
    inc b
    ld de, $5d2b
    dec b
    ld b, a
    rrca
    ld e, l
    dec b
    ld e, e
    add b
    ld e, l
    dec b
    ld h, [hl]
    sbc d
    ld e, l
    nop
    and [hl]
    adc $5b
    nop
    ld d, $d1
    ld e, [hl]
    nop
    rla
    pop de
    ld e, [hl]
    nop
    scf
    ld h, $5f
    nop
    inc a
    ld l, b
    ld e, a
    nop
    ld c, a
    adc c
    ld e, a
    nop
    ld d, l
    and $5f
    ld [bc], a
    inc bc
    ld a, l
    ld h, [hl]
    cp $fe
    inc d
    ld h, b
    ld d, [hl]
    dec b
    push hl

jr_007_5a0e:
    ld h, [hl]
    nop
    ld [hl+], a
    rst RST_38
    ld b, [hl]
    inc b
    ld d, e
    ld e, d
    rlca
    push hl
    ld h, [hl]
    ld b, [hl]
    rlca
    inc [hl]
    ld e, d
    ld b, [hl]
    ld e, $56
    ld e, d
    ld b, [hl]
    inc h
    ld e, l
    ld e, d
    ld b, [hl]
    ld c, c

jr_007_5a27:
    ld h, h
    ld e, d
    ld b, [hl]
    ld b, a
    ld b, l
    ld e, d
    ld b, [hl]
    inc b
    ld d, e

jr_007_5a30:
    ld e, d
    rlca
    push hl
    ld h, [hl]
    ld [$420e], sp
    ld e, d
    nop
    adc l
    ld [hl], l
    rrca
    ld [hl], e
    nop
    adc [hl]
    add hl, bc
    ld c, $ff
    nop
    adc a
    rst RST_38
    ld [$4e0e], sp
    ld e, d
    jr nc, @-$41

    inc l
    rla
    rst RST_38
    jr nc, jr_007_5a0e

    inc l
    rla
    rst RST_38
    ld a, d
    ld d, a
    rst RST_38
    ld d, h
    ld c, h
    push hl
    ld h, [hl]
    rlca
    ld h, h
    ld e, d
    ld d, h
    ld l, b
    push hl
    ld h, [hl]
    rlca
    ld h, h
    ld e, d
    ld [$790e], sp
    ld e, d
    jr nc, jr_007_5a27

    dec b
    db $10
    ld e, a
    inc bc
    ld [hl], d
    ld e, d
    rrca
    ld b, $3b
    dec b
    ld de, $aa7d
    ld b, [hl]
    ld [$302e], sp
    cp [hl]
    rlca
    ld l, d
    ld e, d
    ld b, [hl]
    inc c
    sbc [hl]
    ld e, d
    ld b, [hl]
    ld d, c
    or c
    ld e, d
    ld b, [hl]
    ld d, d
    cp a
    ld e, d
    ld b, [hl]
    ld e, $dd

jr_007_5a8e:
    ld e, d
    ld b, [hl]
    inc h
    db $e4
    ld e, d
    ld b, [hl]
    ld c, c
    db $eb
    ld e, d
    ld b, [hl]
    ld b, a
    ret c

    ld e, d
    rlca
    push hl
    ld h, [hl]
    ld [$ae78], sp
    ld e, d
    ld [$ab7d], sp
    ld e, d
    ld l, $02
    sub b
    add hl, bc
    ld a, l
    ld [bc], a
    sub c
    rst RST_38
    ld [bc], a
    sub d
    rst RST_38
    ld d, h
    ld a, b
    pop de
    ld e, d
    ld l, $02
    sub e
    ld [bc], a
    sub h
    add hl, bc
    ld a, a
    rlca
    ld h, l
    ld e, h
    ld d, h
    ld a, b
    pop de
    ld e, d
    ld l, $02
    sbc b
    dec b
    ld l, c
    ld e, h
    ld bc, $2937
    ld c, e
    dec hl
    add hl, bc
    ld a, [hl]
    rst RST_38
    ld a, $09
    ld bc, $0754
    pop af
    ld c, e
    jr nc, jr_007_5a8e

    inc l
    rla
    rst RST_38
    ld [$eb4c], sp
    ld e, d
    rlca
    push hl
    ld h, [hl]
    ld [$eb68], sp
    ld e, d
    rlca
    push hl
    ld h, [hl]
    ld [bc], a
    adc [hl]
    add hl, sp
    ld [$093e], sp
    ld a, [hl]
    ld a, [hl]
    ld bc, $7e8a
    add hl, sp
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    ld bc, $7e81
    scf
    rst RST_38
    rla
    push hl
    ld h, [hl]
    ld b, [hl]
    ld c, $0d
    ld e, e
    ld b, [hl]
    ld e, e
    ld d, $5b
    rlca
    push hl
    ld h, [hl]
    ld [$e53e], sp
    ld h, [hl]
    add hl, hl
    ld d, h
    rlca
    inc e
    ld e, e
    ld [$e53e], sp
    ld h, [hl]
    add hl, hl
    ld h, [hl]
    dec hl
    ld bc, $0922
    ld a, $09
    inc [hl]
    dec b
    daa
    ld e, e
    rst RST_38
    dec [hl]
    add hl, de
    inc sp
    ld [hl], $06
    ld b, [hl]
    ld b, d
    scf
    ld e, e
    ld b, [hl]
    rla
    scf
    ld e, e
    rlca
    push hl
    ld h, [hl]
    db $10
    inc d
    ld a, [bc]
    ld h, $10
    dec d
    add hl, bc
    dec sp
    add hl, hl
    rrca
    dec hl
    nop
    and [hl]
    add hl, hl
    jr nz, jr_007_5b72

    dec [hl]
    add hl, de
    inc sp
    ld b, [hl]
    rla
    ld c, a
    ld e, e
    dec de
    ld [hl], $29
    jr nz, jr_007_5b7e

    dec h
    ld [$5b8d], sp
    dec h
    add hl, bc
    sbc l
    ld e, e
    dec h
    ld a, [bc]
    xor l
    ld e, e
    ld c, $04
    inc b
    ld l, c
    ld e, e
    dec b
    call nz, $245b
    inc b
    dec b
    ret


    ld e, e
    ld a, [hl+]
    ld de, $1229
    dec hl
    ld b, a

jr_007_5b72:
    jr @+$2c

    ld [de], a
    add hl, hl

jr_007_5b76:
    inc de
    dec hl
    ld b, a
    jr @+$2c

    inc de
    add hl, hl
    inc d

jr_007_5b7e:
    dec hl
    ld b, a
    jr jr_007_5bcb

    inc b
    inc l
    jr nz, jr_007_5bb0

    jr nz, jr_007_5bb3

    ld b, d
    ld [bc], a
    ld [hl+], a
    ld c, $ff
    ld c, $09
    inc b
    sub a
    ld e, e
    dec b
    call nz, $245b
    add hl, bc
    dec b
    ret


    ld e, e
    rlca
    ld [hl], e
    ld e, e
    ld c, $0c
    inc b
    and a
    ld e, e
    dec b
    call nz, $245b
    inc c
    dec b
    ret


    ld e, e
    rlca
    ld a, d
    ld e, e
    add hl, hl
    jr nz, jr_007_5bdb

jr_007_5bb0:
    ld c, $0e
    inc b

jr_007_5bb3:
    cp d
    ld e, e
    dec b
    call nz, $245b
    ld c, $2a
    jr nz, jr_007_5be8

    ld b, d
    ld [bc], a
    ld [hl+], a
    ld c, $01
    add hl, hl
    rst RST_38
    jr nc, jr_007_5b76

    inc l
    inc hl
    ld b, $00
    and l

jr_007_5bcb:
    ld d, b
    ld a, [bc]
    ld b, $46
    dec b
    add hl, bc
    ld e, h
    ld b, [hl]
    ld l, $6f
    ld e, h
    ld b, [hl]
    ld c, a
    ld [hl], h
    ld e, h
    ld b, [hl]

jr_007_5bdb:
    ld d, e
    add d
    ld e, h
    ld b, [hl]
    inc sp
    inc c
    ld e, h
    ld b, [hl]
    dec [hl]
    inc e
    ld e, h
    ld b, [hl]
    scf

jr_007_5be8:
    rra
    ld e, h
    ld b, [hl]
    ld e, $9f
    ld e, h
    ld b, [hl]
    inc h
    xor [hl]
    ld e, h
    ld b, [hl]
    ld c, c
    or d
    ld e, h
    ld b, [hl]
    ld a, [hl-]
    ld l, $5c
    ld b, [hl]
    ld c, d
    ld h, e
    ld e, h
    ld b, [hl]
    ld b, a
    add l
    ld e, h
    ld b, [hl]
    ld b, [hl]
    adc b
    ld e, h
    rlca
    push hl
    ld h, [hl]
    nop
    inc hl
    rst RST_38
    ld [$1670], sp
    ld e, h
    ld [bc], a
    ld h, c
    dec b
    ld l, c
    ld e, h
    rst RST_38
    ld [bc], a
    ld h, d
    dec b
    ld l, c
    ld e, h
    rst RST_38
    ld [bc], a
    ld h, l
    rst RST_38
    ld [$510d], sp
    ld e, h
    ld [$5750], sp
    ld e, h
    ld [$5d78], sp
    ld e, h
    ld [bc], a
    ld l, d
    rst RST_38
    ld [$4b0c], sp
    ld e, h
    ld [$510d], sp
    ld e, h
    ld [$5750], sp
    ld e, h
    ld [$4378], sp
    ld e, h
    ld [bc], a
    ld l, h
    add hl, bc
    ld a, b
    rst RST_38
    ld b, l
    inc l
    ld [de], a
    ld a, [bc]
    ld a, b
    rlca
    adc c
    ld l, c
    ld b, l
    ld sp, $2c71
    ld de, $45ff
    ld sp, $2c70
    ld de, $45ff
    ld sp, $2c78
    ld de, $45ff
    ld sp, $2c3a
    ld de, $00ff
    cp [hl]
    dec b
    ld l, c
    ld e, h
    rst RST_38
    dec [hl]
    add hl, de
    inc sp
    dec de
    ld [hl], $06
    ld bc, $07d9
    ld h, l
    ld e, h
    ld [$7b56], sp
    ld e, h
    ld [bc], a
    dec de
    rst RST_38
    ld [bc], a
    dec e
    add hl, bc
    adc c
    rlca
    ld h, l
    ld e, h
    ld [bc], a
    jr nz, @+$01

    ld [bc], a
    db $ec
    rst RST_38
    ld l, $00
    cp l
    ld de, $0446
    ld bc, $3051
    ld c, b
    inc l
    dec l
    inc de
    ld b, [hl]
    dec d
    ld b, [hl]
    ld [de], a
    ld b, a
    inc [hl]
    ld b, [hl]
    ld c, h
    ld b, a
    rst RST_38
    ld d, h
    ld c, h
    push hl
    ld h, [hl]
    ld l, $30
    ret c

    ld a, $09
    inc l
    inc d
    nop
    ld h, $37
    rst RST_38
    ld d, h
    ld l, b
    push hl
    ld h, [hl]
    ld l, $45
    rlca
    and [hl]
    ld e, h
    ld b, [hl]
    ld a, [hl-]
    jp z, Jump_007_465c

    jr c, jr_007_5d32

    ld h, [hl]
    ld b, [hl]
    scf
    ld [hl], h
    ld h, [hl]
    ld b, [hl]
    ld b, b
    ld [hl], h
    ld h, [hl]
    rlca
    push hl
    ld h, [hl]
    ld d, h
    ld a, b
    ld [hl], h
    ld h, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld b, [hl]
    ld b, a
    ret c

    ld e, h
    rlca
    push hl
    ld h, [hl]
    ld l, $02
    and $3e
    nop
    dec b
    daa
    ld e, e
    ld a, $17
    add hl, hl
    ld d, d
    dec hl
    ld bc, $3e39
    ld [de], a
    ld [bc], a
    rst RST_20
    add hl, bc
    sbc [hl]
    inc a
    ld [hl+], a
    ld l, l
    ld a, [hl+]
    ld d, d
    add hl, hl
    ld e, e
    dec hl
    ld [bc], a
    add sp, $09
    add [hl]
    ld a, [hl+]
    and h
    add hl, hl
    and l
    add hl, hl
    and [hl]
    ld e, d
    rst RST_38
    ld b, [hl]
    inc h
    ld [$075d], sp
    push hl
    ld h, [hl]
    ld d, h
    ld l, b
    sub a
    ld e, l
    ld bc, $ffb7
    ld b, [hl]
    inc h
    ld d, $5d
    rlca
    push hl
    ld h, [hl]
    ld [$1d43], sp
    ld e, l
    ld bc, $ff3b
    ld bc, $ff3c
    ld b, [hl]
    ld [bc], a
    daa
    ld e, l
    rlca
    push hl
    ld h, [hl]
    ld d, d
    add hl, bc
    ld c, e
    rst RST_38
    ld b, [hl]
    inc h
    ld [hl-], a
    ld e, l
    rlca
    push hl
    ld h, [hl]

jr_007_5d32:
    ld d, h
    ld l, b
    sub a
    ld e, l
    ld [$4075], sp
    ld e, l
    ld [bc], a
    ld l, b
    daa
    add hl, bc
    ld [hl], l
    rst RST_38
    ld [bc], a
    ld l, c
    rst RST_38
    ld b, [hl]
    inc bc
    ld c, d
    ld e, l
    rlca
    push hl
    ld h, [hl]
    ld l, [hl]
    ld e, b
    ld e, l
    ld d, h
    ld c, [hl]
    ld e, e
    ld e, l
    ld [$5ba8], sp
    ld e, l
    ld bc, $ff4c
    inc l
    ld b, a
    rst RST_38
    ld [hl], d
    inc b
    ld l, a
    ld e, l
    ld bc, $4283
    ld a, [bc]
    ld d, h
    ld c, l
    ld l, b

Jump_007_5d66:
    ld e, l
    ld [hl], e
    add hl, bc
    ld c, [hl]
    add hl, bc
    halt
    ld a, [bc]
    xor b
    rst RST_38
    ld bc, $ff67
    ld b, [hl]
    ld bc, $5d79
    rlca
    push hl
    ld h, [hl]
    ld e, h
    inc b
    push hl
    ld h, [hl]
    ld [bc], a
    ld [de], a
    rst RST_38
    ld d, [hl]
    inc h
    push hl
    ld h, [hl]
    ld [$e55d], sp
    ld h, [hl]
    ld d, h
    ld l, b
    sub a
    ld e, l
    ld l, $01
    jp c, $153e

    ld hl, $db01
    add hl, bc
    ld e, l
    rst RST_38
    ld bc, $ff8d
    ld d, [hl]
    inc h
    and d
    ld h, b
    ld [$e56b], sp
    ld h, [hl]
    ld d, h
    ld l, b
    sub a
    ld e, l
    ld l, $01
    jp c, Jump_007_4629

    dec hl

jr_007_5dac:
    ld a, $15
    ld [hl+], a
    ld h, [hl]
    ld e, $01
    db $db
    add hl, bc
    ld l, e
    rst RST_38
    ld b, [hl]
    ld b, a
    pop de
    ld e, l
    ld b, [hl]
    inc h

jr_007_5dbc:
    inc hl
    ld e, [hl]
    ld b, [hl]
    ld c, c
    daa
    ld e, [hl]
    ld b, [hl]
    ld e, $1c
    ld e, [hl]
    ld b, [hl]
    nop
    sub $5d
    ld b, [hl]
    ld bc, $5de7
    rlca
    push hl
    ld h, [hl]
    jr nc, jr_007_5dac

    inc l
    rla
    rst RST_38
    ld l, b
    inc b
    sbc $5f
    ld l, $02
    ld l, [hl]
    ld [bc], a
    ld l, a
    cpl
    ld l, a
    ld a, h
    add hl, sp
    ld c, d
    ld [$ff64], sp
    ld e, h

jr_007_5de8:
    inc b
    push hl
    ld h, [hl]
    ld l, $02
    ld [hl], a
    ld [bc], a
    ld [hl], d
    rst RST_38
    ld b, [hl]
    ld b, a
    inc b
    ld e, [hl]
    ld b, [hl]
    inc h
    inc hl
    ld e, [hl]
    ld b, [hl]
    ld c, c
    daa
    ld e, [hl]
    ld b, [hl]
    ld e, $1c
    ld e, [hl]
    rlca
    push hl
    ld h, [hl]
    jr nc, jr_007_5dbc

    inc l
    rla
    rst RST_38
    ld b, [hl]
    ld b, a
    ld sp, $465e
    inc h
    inc hl
    ld e, [hl]
    ld b, [hl]
    ld c, c
    daa
    ld e, [hl]
    ld b, [hl]
    ld e, $1c
    ld e, [hl]
    nop
    rlca
    rst RST_38

jr_007_5e1c:
    ld d, h
    ld c, h
    push hl
    ld h, [hl]
    rlca
    daa
    ld e, [hl]
    ld d, h
    ld l, b
    push hl
    ld h, [hl]
    ld e, a
    dec hl
    ld e, [hl]
    ld h, e
    ld b, l
    inc l
    inc c
    rlca
    db $10
    ld c, h
    jr nc, jr_007_5de8

    inc l
    rla
    rst RST_38
    ld b, [hl]

jr_007_5e37:
    ld l, $5d
    ld e, [hl]
    ld b, [hl]
    ld c, d
    ld e, l
    ld e, [hl]
    ld b, [hl]
    ld c, a
    ld e, l
    ld e, [hl]
    ld b, [hl]
    inc h
    ld h, e
    ld e, [hl]
    ld b, [hl]
    ld c, c
    ld h, a
    ld e, [hl]
    ld b, [hl]
    ld e, $7b
    ld e, [hl]
    ld b, [hl]
    ld b, a
    add d
    ld e, [hl]
    ld b, [hl]
    nop
    add a
    ld e, [hl]
    ld b, [hl]
    ld bc, $5e8e
    rlca
    push hl
    ld h, [hl]
    dec b
    ld l, c
    ld e, h
    ld [bc], a
    add hl, sp
    rst RST_38
    ld d, h
    ld l, b
    push hl
    ld h, [hl]
    jr nc, jr_007_5e1c

    add hl, sp
    ld [$093e], sp
    ld a, [hl]
    ld a, [hl]
    inc l
    ld c, $7e
    add hl, sp
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    ld [bc], a
    sbc d
    ld a, [hl]
    scf
    rst RST_38
    ld d, h
    ld c, h
    push hl
    ld h, [hl]
    rlca
    ld h, a
    ld e, [hl]
    jr nc, jr_007_5e37

    inc l
    rla
    rst RST_38

jr_007_5e87:
    ld h, a
    inc b
    push hl
    ld h, [hl]
    ld [bc], a
    scf
    rst RST_38
    ld e, h
    inc b
    push hl
    ld h, [hl]
    ld [bc], a
    scf
    ld e, l
    rst RST_38
    ld b, [hl]
    ld l, $b5
    ld e, [hl]
    ld b, [hl]
    ld c, d
    or l
    ld e, [hl]
    ld b, [hl]
    ld c, a
    or l
    ld e, [hl]
    ld b, [hl]
    inc h
    cp e
    ld e, [hl]
    ld b, [hl]
    ld c, c
    jp nz, Jump_007_465e

    ld e, $c5
    ld e, [hl]
    ld b, [hl]
    ld b, a
    call z, Call_000_075e
    push hl
    ld h, [hl]
    dec b
    ld l, c

jr_007_5eb7:
    ld e, h
    ld bc, $ff21
    ld [$c268], sp
    ld e, [hl]
    rlca
    push hl
    ld h, [hl]
    ld bc, $ff27
    ld [$c24c], sp
    ld e, [hl]
    rlca
    push hl
    ld h, [hl]
    jr nc, jr_007_5e87

    inc l
    rla
    rst RST_38
    ld b, [hl]
    ld e, $f1
    ld e, [hl]
    ld b, [hl]
    inc h
    ld hl, sp+$5e
    ld b, [hl]
    ld c, c
    rst RST_38
    ld e, [hl]
    ld b, [hl]
    ld b, a
    inc b
    ld e, [hl]
    ld b, [hl]
    nop
    ld e, $5f
    ld b, [hl]
    ld bc, $5f20
    ld b, [hl]
    inc b
    inc h
    ld e, a
    ld b, l
    inc l
    dec b
    rst RST_38
    ld [$ff4c], sp
    ld e, [hl]
    rlca
    push hl
    ld h, [hl]
    ld [$ff68], sp
    ld e, [hl]
    rlca
    push hl
    ld h, [hl]
    jr nc, jr_007_5eb7

    dec b
    db $10
    ld e, a
    inc bc
    add hl, bc
    ld e, a
    rrca
    ld b, $3b
    inc b
    ld de, $aa7d
    ld b, [hl]
    ld [$1d2c], sp
    add hl, sp
    ld c, $3e
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    inc l
    ld e, $7e
    ld c, $06
    ld b, $69
    rst RST_38
    ld b, l
    inc l
    ld b, $ff
    ld l, d
    rst RST_38
    ld b, [hl]
    ld e, $4b

jr_007_5f29:
    ld e, a
    ld b, [hl]
    inc h
    ld d, h
    ld e, a
    ld b, [hl]
    ld c, c
    ld e, e
    ld e, a
    ld b, [hl]
    ld b, a
    ld sp, $465e
    nop
    ld b, c
    ld e, a
    ld b, [hl]
    ld bc, $5f44
    nop
    rlca
    rst RST_38
    rlca
    push hl
    ld h, [hl]
    ld e, h
    inc bc
    ld a, $5f
    rlca
    push hl
    ld h, [hl]
    ld d, h
    ld c, h
    push hl
    ld h, [hl]
    jr nc, jr_007_5f29

    rlca
    ld e, e
    ld e, a
    ld d, h
    ld l, b
    push hl
    ld h, [hl]
    rlca
    ld e, e
    ld e, a
    add hl, sp
    ld [$093e], sp
    ld a, [hl]
    ld a, [hl]
    ld b, l
    inc l
    inc b
    ld a, [hl]
    rlca
    ld [hl], d
    ld e, [hl]
    ld b, [hl]
    ld e, $4b
    ld e, a
    ld b, [hl]
    inc h
    ld d, h
    ld e, a
    ld b, [hl]
    ld c, c
    ld e, e
    ld e, a
    ld b, [hl]
    ccf
    ld a, a
    ld e, a
    ld b, [hl]
    ld b, a
    ld sp, $025e
    push hl
    rst RST_38
    ld [bc], a
    rst RST_38
    add hl, hl
    dec e
    dec hl
    add hl, bc
    dec de
    rlca
    ld h, l
    ld e, h
    ld b, [hl]
    ld e, $a9
    ld e, a
    ld b, [hl]
    inc h
    or b
    ld e, a
    ld b, [hl]
    ld c, c
    inc e
    ld c, h
    ld b, [hl]
    ld b, a
    and h
    ld e, a
    ld b, [hl]
    nop
    or a
    ld e, a
    ld b, [hl]
    ld bc, $5fcd
    ld bc, $ff26
    jr nc, @-$46

    inc l
    rla
    rst RST_38
    ld d, h
    ld c, h
    push hl
    ld h, [hl]
    rlca
    inc e
    ld c, h
    ld d, h
    ld l, b
    push hl
    ld h, [hl]
    rlca
    inc e
    ld c, h
    ld [$c779], sp
    ld e, a
    ld [$ca4a], sp
    ld e, a
    ld h, a
    inc b
    sbc $5f
    dec b
    pop hl
    ld e, a
    rst RST_38
    ld bc, $ff25
    ld bc, $ff24
    ld [$c779], sp
    ld e, a
    ld [$ca4a], sp
    ld e, a
    ld e, h
    inc b
    sbc $5f
    dec b
    pop hl
    ld e, a
    ld e, l
    rst RST_38
    ld [bc], a
    ld [hl], d
    rst RST_38
    ld bc, $0923
    ld c, d
    ld b, $46
    inc h
    inc c
    ld h, b
    ld b, [hl]
    ld c, c
    db $10
    ld h, b
    ld b, [hl]
    ld b, a
    rlca
    ld h, b
    ld b, [hl]
    nop
    db $fd
    ld e, a
    ld b, [hl]
    ld bc, $6000
    ld bc, $ff50
    rlca
    push hl
    ld h, [hl]
    ld e, h
    inc bc
    ld a, [$075f]
    push hl
    ld h, [hl]
    jr nc, @-$24

    inc l
    rla
    rst RST_38
    ld d, h
    ld l, b
    push hl
    ld h, [hl]
    ld b, l
    inc l
    inc h
    rst RST_38
    ld d, [hl]
    ld sp, $601b
    ld bc, $ffc6
    ld d, l
    ld b, a
    push hl
    ld h, [hl]
    ld [$e582], sp
    ld h, [hl]
    ld [bc], a
    cp [hl]
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    nop
    rlca
    ldh [$ff66], a
    nop
    add hl, de
    rst RST_38
    dec l
    ld [hl-], a
    nop
    ld e, d
    and d
    ld h, b
    nop
    ld e, e
    and d
    ld h, b
    dec b
    ld bc, $60a2
    dec b
    inc bc
    and d
    ld h, b
    dec b
    ld a, [bc]
    and d
    ld h, b
    dec b
    dec bc
    and d
    ld h, b
    dec b
    inc d
    and l
    ld h, b
    dec b
    dec d
    and d
    ld h, b
    dec b
    ld c, l
    pop bc
    ld h, b
    dec b
    ld c, [hl]
    and d
    ld h, b
    dec b
    ld c, a
    and d
    ld h, b
    dec b
    ld d, e
    and d
    ld h, b

Jump_007_6066:
    dec b
    ld e, e
    and d
    ld h, b
    dec b
    ld h, h
    and d
    ld h, b
    dec b
    ld h, [hl]
    and d
    ld h, b
    dec b
    ld h, a
    and d
    ld h, b
    dec b
    ld [hl], h
    and d
    ld h, b
    ld bc, $d602
    ld h, b
    ld bc, $f003
    ld h, b
    ld bc, $0904
    ld h, c
    nop
    rla
    pop de
    ld e, [hl]
    nop
    scf
    ld h, $5f
    nop
    inc a
    ld l, b
    ld e, a
    nop
    ld c, a
    adc c
    ld e, a
    nop
    ld d, l
    and $5f
    ld [bc], a
    inc bc
    ld a, l
    ld h, [hl]
    cp $fe
    dec de
    ld h, b
    nop
    ld h, b
    rst RST_38
    ld d, [hl]
    ld b, c
    and d
    ld h, b
    dec h
    ld b, a
    or [hl]
    ld h, b
    ld [$b926], sp
    ld h, b
    add hl, bc
    ld h, $07
    ld hl, sp+$66
    ld [bc], a
    jp z, Jump_000_1dff

    push hl
    ld h, [hl]
    ld a, [bc]
    ld h, $07
    add hl, bc
    ld h, a
    ld d, [hl]
    ld b, $a2
    ld h, b
    ld [$ce47], sp
    ld h, b
    add hl, bc
    ld b, a
    rlca
    ld hl, sp+$66
    dec e
    push hl
    ld h, [hl]
    ld a, [bc]
    ld b, a
    rlca
    add hl, bc
    ld h, a
    ld d, [hl]
    dec h
    and d
    ld h, b
    dec e
    push hl
    ld h, [hl]
    ld [$eb48], sp
    ld h, b
    add hl, bc
    ld c, b
    dec b
    ld bc, $2a67
    dec sp
    dec hl
    daa
    rst RST_38
    ld a, [bc]
    ld c, b
    rlca
    add hl, bc
    ld h, a
    ld d, [hl]
    ld [hl-], a
    and d
    ld h, b
    dec e
    push hl
    ld h, [hl]
    ld [$045b], sp
    ld h, c
    add hl, bc
    ld h, h
    add hl, bc
    ld e, e
    dec b
    ld bc, $2767
    rst RST_38
    ld a, [bc]
    ld e, e
    rlca
    add hl, bc
    ld h, a
    ld d, [hl]
    ld [hl-], a
    and d
    ld h, b
    dec e
    push hl
    ld h, [hl]
    ld [$1b5c], sp
    ld h, c
    add hl, bc
    ld e, h
    add hl, bc
    ld h, [hl]
    rlca
    rst RST_38
    ld h, b
    ld a, [bc]
    ld e, h
    rlca
    add hl, bc
    ld h, a
    nop
    ld a, [de]
    rst RST_38
    nop
    inc e
    ld [$db35], sp
    ld h, [hl]
    ld b, h
    pop hl
    add hl, bc
    dec [hl]
    rst RST_38
    nop
    dec e
    rst RST_38
    ld l, $00
    ld a, $54
    ld b, $db
    ld h, [hl]
    ld d, h
    db $10
    db $db
    ld h, [hl]
    ld [$db3e], sp
    ld h, [hl]
    ld a, $08
    nop
    push de
    ld [bc], a
    ld [hl], b
    add hl, bc
    inc [hl]
    add hl, bc
    ld b, c
    ld e, d
    rst RST_38
    ld a, [de]
    inc bc
    push de
    ld h, [hl]
    dec h
    ld c, d
    ldh [c], a
    ld h, [hl]
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ld b, $07
    ldh [$ff66], a
    nop
    ccf
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    add hl, bc
    rlca
    ldh [$ff66], a
    nop
    ld b, e
    rst RST_38
    ld [$7f07], sp
    ld h, c
    nop
    ld b, c
    ld [$db27], sp
    ld h, [hl]
    ld b, h
    ldh [$ff09], a
    daa
    rst RST_38
    nop
    ld b, d
    rst RST_38
    ld [$ec07], sp
    ld h, [hl]
    dec b
    ld d, e
    ld h, d
    add hl, bc
    rlca
    rlca
    ld a, a
    ld h, c
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ld [$e007], sp
    ld h, [hl]
    ld d, h
    rlca
    db $f4
    ld h, [hl]
    ld a, [bc]
    rlca
    rlca
    ldh a, [$ff66]
    nop
    ld c, [hl]
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ld a, [bc]
    rlca
    ldh [$ff66], a

jr_007_61b0:
    nop
    ld a, c
    rst RST_38
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    inc c
    rlca
    ldh [$ff66], a
    nop
    ld [hl], d
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    dec bc
    rlca
    ldh [$ff66], a
    nop
    ld d, h
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    dec d
    rlca
    ldh [$ff66], a
    nop
    ld e, c
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ld d, $07
    ldh [$ff66], a
    nop
    and e
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    add hl, bc
    rrca
    dec b
    call c, $2a66
    rrca
    rlca
    ldh [$ff66], a
    jr z, jr_007_620a

    inc b
    ldh [c], a
    ld h, [hl]
    jr nc, jr_007_61b0

    ld c, c
    inc b
    inc l
    rra
    rlca
    ld d, b
    ld e, e
    ld l, $00
    cpl

jr_007_620a:
    add hl, bc
    add hl, sp
    ld [$db1c], sp
    ld h, [hl]
    ld [$db85], sp
    ld h, [hl]
    ld a, $08
    nop
    ld sp, $ff5a
    rla
    ldh [c], a
    ld h, [hl]
    add hl, bc
    ld a, [hl-]
    rlca
    push de
    ld h, [hl]
    ld l, $3e
    ld [$4000], sp
    add hl, bc
    inc sp
    add hl, bc
    adc h
    ld [$1110], sp
    ld h, a
    ld [$3781], sp
    ld h, d
    ld bc, $5a63
    rst RST_38
    ld bc, $5a68
    rst RST_38
    ld [$4414], sp
    ld h, d
    nop
    inc a
    rlca
    halt
    ld h, c
    nop
    dec a
    rst RST_38
    ld [$ec14], sp
    ld h, [hl]
    dec b
    ld d, e
    ld h, d
    add hl, bc
    inc d
    rlca
    ld b, h
    ld h, d

jr_007_6253:
    ld l, $48
    inc l
    ld [bc], a
    ld b, $17
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    inc e
    rlca
    ldh [$ff66], a
    ld d, h
    inc d
    db $f4
    ld h, [hl]
    ld a, [bc]
    inc d
    rlca
    ldh a, [$ff66]
    ld d, l
    dec hl
    ld [hl], e
    ld h, d
    ld l, [hl]
    sbc c
    ld h, d
    ld bc, $080a
    jr c, jr_007_6253

    ld h, [hl]
    ld b, h
    db $e4
    add hl, bc
    jr c, @+$01

    rla
    ldh [c], a
    ld h, [hl]
    ld d, l
    dec hl
    push de
    ld h, [hl]
    ld d, h
    ld c, d
    sbc c
    ld h, d
    dec b
    call c, Call_000_0a66
    ld c, d
    ld [$a37a], sp
    ld h, d
    add hl, bc
    ld a, d
    ld a, [hl+]
    inc l
    rlca
    ldh [$ff66], a
    ld [$a04a], sp
    ld h, d
    ld bc, $ff18
    ld bc, $ffdf
    add hl, bc
    ld a, c
    rlca
    sub h
    ld h, d
    ld d, l
    dec hl
    xor a
    ld h, d
    ld l, [hl]
    sbc c
    ld h, d
    ld bc, $080b
    jr c, @-$23

    ld h, [hl]
    ld b, h
    db $e4
    add hl, bc
    jr c, @+$01

    rla
    ldh [c], a
    ld h, [hl]
    ld d, l
    dec hl
    push de
    ld h, [hl]
    ld d, h
    ld c, d
    sbc c
    ld h, d
    dec b
    call c, Call_000_0966
    sbc h
    ld a, [bc]
    ld c, d
    ld [$d77a], sp
    ld h, d
    add hl, bc
    ld a, d
    ld a, [hl+]
    dec l
    rlca
    ldh [$ff66], a
    add hl, bc
    ld a, c
    rlca
    jp nc, $0162

    ld e, [hl]
    rst RST_38
    ld [$e64c], sp
    ld h, d
    ld bc, $ff76
    ld c, b
    inc l
    ld bc, $17ff
    ldh [c], a
    ld h, [hl]
    dec b
    call c, Call_000_0966
    and d
    ld [$fb4c], sp
    ld h, d
    ld a, [hl+]
    ld [hl], $07
    ldh [$ff66], a
    ld a, [hl+]
    scf
    rlca
    ldh [$ff66], a
    nop
    db $e3
    rst RST_38
    ld [$184c], sp
    ld h, e
    ld a, $13
    ld [$12a2], sp
    ld h, e
    ld a, [hl+]
    ld [hl], $29
    scf
    dec hl
    ld c, b
    inc l
    nop
    add hl, bc
    ld c, h
    rst RST_38
    ld c, b
    inc l
    dec de
    rst RST_38
    ld bc, $ff77
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    jr c, jr_007_632f

    ldh [$ff66], a
    ld d, h
    ld l, b
    ld sp, $0163

jr_007_632f:
    ld a, h
    rst RST_38
    ld bc, $ff7b
    ld [$e268], sp
    ld h, [hl]
    ld [bc], a
    adc d
    add hl, bc
    ld l, b
    rst RST_38
    ld d, h
    ld l, b
    ldh [c], a
    ld h, [hl]
    ld bc, $0a14
    ld l, b
    rst RST_38
    ld bc, $ff7e
    ld bc, $ff7f
    ld bc, $ffd0
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ccf
    rlca
    ldh [$ff66], a
    ld bc, $ffd2
    ld bc, $ffd4
    ld l, $08
    ld [hl], h
    ld l, [hl]
    ld h, e
    ld [bc], a
    ld c, $08
    ld [hl], c
    db $db
    ld h, [hl]
    ld bc, $ff4f
    ld [bc], a
    rrca
    ld d, h
    and e
    xor h
    ld h, e
    ld a, $08
    ld d, h
    adc d
    rst RST_00
    ld h, e
    jr nc, jr_007_63e5

    ld sp, $2c6b
    jr nc, jr_007_63b1

    ld l, h
    ld sp, $2c6d
    ld sp, $3354
    pop de
    ld h, e
    jr nc, jr_007_63f5

    inc l
    inc [hl]
    ld d, h
    add c
    ld de, $0067
    sbc b
    ld [$1155], sp
    ld h, a
    add hl, bc
    ld d, l
    ld [bc], a
    ld h, $09
    db $10
    add hl, bc
    inc bc
    ld [$118d], sp
    ld h, a
    ld [$118b], sp
    ld h, a
    ld bc, $5a64
    rst RST_38
    ld [$b38a], sp
    ld h, e
    nop

jr_007_63b1:
    cp h
    rst RST_38
    ld a, $08
    jr nc, @+$6b

    ld sp, $2c6b
    ld l, $30
    ld l, h
    ld sp, $2c6d
    cpl
    ld [bc], a
    db $eb
    ld bc, $5a79
    rst RST_38
    jr nc, jr_007_6431

    ld sp, $2c6b
    ld [hl-], a
    ld [bc], a
    pop af
    ld e, d
    rst RST_38
    nop
    cp e
    ld e, d
    rst RST_38
    ld [$ec74], sp
    ld h, [hl]
    dec b
    ld d, e
    ld h, d
    add hl, bc
    ld [hl], c
    add hl, bc
    ld [hl], h
    ld l, $07
    ld l, [hl]
    ld h, e
    ld d, h

jr_007_63e5:
    ld [hl], h
    db $f4
    ld h, [hl]
    ld a, [bc]
    ld [hl], h
    rlca
    ldh a, [$ff66]
    ld [bc], a
    dec c
    ld [$db37], sp
    ld h, [hl]
    ld b, h
    db $e3

jr_007_63f5:
    add hl, bc
    scf
    rst RST_38
    ld bc, $ffc2
    ld bc, $ffc3
    ld [$0570], sp
    ld h, h
    ld [bc], a
    ld b, [hl]
    rst RST_38
    ld [bc], a
    ld b, a
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ld c, d
    rlca
    ldh [$ff66], a
    ld [bc], a
    ld c, b
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ld c, b
    rlca
    ldh [$ff66], a
    ld [bc], a
    ld c, c
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ld c, c
    rlca
    ldh [$ff66], a
    ld [bc], a
    ld c, d

jr_007_6431:
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ld b, a
    rlca
    ldh [$ff66], a
    ld [bc], a
    ld c, e
    rst RST_38
    ld [bc], a
    ld c, h
    rst RST_38
    ld a, $08
    ld l, $02
    ld c, [hl]
    add hl, bc
    add c
    ld [$1110], sp
    ld h, a
    ld [$5633], sp
    ld h, h
    ld bc, $5a7d
    rst RST_38
    ld bc, $5a8c
    rst RST_38
    ld [bc], a
    ld c, a
    rst RST_38
    ld [$644f], sp
    ld h, h
    ld [bc], a
    ld d, h
    rst RST_38
    ld l, $02
    ld d, l
    ld [$7210], sp
    ld h, h
    ld d, h
    ld [hl], c
    db $db
    ld h, [hl]
    ld [bc], a
    ld d, [hl]
    rst RST_38
    nop
    or c
    rst RST_38
    ld [$ec4f], sp
    ld h, [hl]
    dec b
    ld d, e
    ld h, d
    add hl, bc
    ld c, a
    rlca
    ld h, h
    ld h, h
    ld d, h
    ld c, a
    db $f4
    ld h, [hl]
    ld a, [bc]
    ld c, a
    rlca
    ldh a, [$ff66]
    ld [bc], a
    ld a, h
    rst RST_38
    ld [bc], a
    ld a, a
    rst RST_38
    ld [bc], a
    add b
    rst RST_38
    ld [bc], a
    cp c
    rst RST_38
    ld [bc], a
    sbc $ff
    ld [bc], a
    rst RST_18
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, Call_000_0966
    add hl, de
    rlca
    ldh [$ff66], a
    ld l, $02
    ldh [$ff08], a
    and a
    db $db
    ld h, [hl]
    ld a, $08
    ld bc, $0975
    and a
    ld e, d
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ld d, c
    rlca
    ldh [$ff66], a
    ld l, $08
    ld de, $64cf
    nop
    cp c
    ld [$db8a], sp
    ld h, [hl]
    ld bc, $ff4f
    ld l, $00
    cp d
    ld d, h
    ld [hl], c
    db $db
    ld h, [hl]
    ld a, $08
    ld d, h
    and e
    pop af
    ld h, h
    jr nc, jr_007_6546

    ld sp, $2c6b
    jr nc, @+$32

    ld l, e
    ld sp, $2c6e
    ld sp, $3354
    pop de
    ld h, e
    jr nc, jr_007_6555

    rlca
    adc h
    ld h, e
    jr nc, @+$6c

    ld sp, $2c6c
    ld l, $30
    ld l, e
    ld sp, $076e
    cp a
    ld h, e
    ld [$ec11], sp
    ld h, [hl]
    ld l, $05
    ld d, e
    ld h, d
    add hl, bc
    ld de, $8a09
    rlca
    rst RST_08
    ld h, h
    ld d, h
    ld de, $66f4
    ld a, [bc]
    ld de, $f007
    ld h, [hl]
    nop
    xor a
    rst RST_38
    ld a, [de]
    inc bc
    push de
    ld h, [hl]
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, Call_000_2266
    sbc d
    rlca
    ldh [$ff66], a
    nop
    or b
    add hl, bc
    ld [de], a
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ld a, [de]
    rlca
    ldh [$ff66], a
    ld l, $00
    or d
    ld [$db86], sp
    ld h, [hl]
    nop
    or e
    rst RST_38
    ld [$5186], sp
    ld h, l

jr_007_6546:
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    jr jr_007_6556

    ldh [$ff66], a
    nop
    pop hl
    rst RST_38
    nop

jr_007_6555:
    or h

jr_007_6556:
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    add hl, de
    rlca
    ldh [$ff66], a
    nop
    or [hl]
    rst RST_38
    nop

Jump_007_6566:
    cp b
    rst RST_38
    ld [bc], a
    ei
    rst RST_38
    ld c, b
    inc l
    ld a, [hl-]
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    add hl, bc
    sbc a
    dec b
    call c, $2a66
    ld d, e
    rlca
    ldh [$ff66], a
    nop
    cpl
    rst RST_38
    ld [bc], a
    push af
    rst RST_38
    ld [$8956], sp
    ld h, l
    ld [bc], a
    or $ff
    ld [bc], a
    rst RST_30
    rst RST_38
    ld [$e556], sp
    ld h, [hl]
    ld l, $02
    db $ed
    ld l, [hl]
    sbc l
    ld h, l
    jr nc, jr_007_65eb

    inc l
    dec l
    add hl, bc
    ld d, [hl]
    rst RST_38
    ld d, $53
    ld a, b
    add hl, bc
    ld d, [hl]
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    add hl, bc
    ld l, d
    rlca
    push de
    ld h, [hl]
    ld l, $08
    ld e, c
    cp e
    ld h, l
    ld l, $02
    rst RST_28
    ld [$1162], sp
    ld h, a
    ld bc, $5a4f
    rst RST_38
    ld l, $54
    ld [hl], c
    push hl
    ld h, l
    add hl, bc
    and e
    jr nc, jr_007_662e

    ld sp, $2c6c
    ld [hl-], a
    ld a, $08
    ld d, h
    adc d
    call $3063
    ld l, c
    ld sp, $2c6b
    jr nc, jr_007_6605

    ld l, e
    ld sp, $2c6d
    ld sp, $3354
    pop de
    ld h, e
    jr nc, @+$6b

    inc l
    inc [hl]
    rlca
    adc [hl]
    ld h, e
    ld [bc], a
    di
    rst RST_38
    ld [$ec59], sp

jr_007_65eb:
    ld h, [hl]
    dec b
    ld d, e
    ld h, d
    add hl, bc
    ld e, c
    add hl, bc
    ld h, d
    rlca
    cp e
    ld h, l
    ld d, h
    ld e, c
    db $f4
    ld h, [hl]
    ld a, [bc]
    ld e, c
    rlca
    ldh a, [$ff66]
    ld [bc], a
    and e
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]

jr_007_6605:
    dec b
    call c, $2a66
    ld c, l
    rlca
    ldh [$ff66], a
    ld [bc], a
    and h
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66
    ld c, [hl]
    rlca
    ldh [$ff66], a
    ld [bc], a
    xor $ff
    rst RST_38
    ld a, [de]
    inc bc
    push de
    ld h, [hl]
    dec h
    ld c, d
    ldh [c], a
    ld h, [hl]
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, $2a66

jr_007_662e:
    ld h, l
    rlca
    ldh [$ff66], a
    nop
    ret nz

    rst RST_38
    ld bc, $ff47
    dec l
    ld [hl-], a
    inc bc
    ld c, e
    rst RST_38
    ld e, d
    ld bc, $020c
    ld e, e
    ld [bc], a
    nop
    ld [hl], h
    ld h, [hl]
    ld [bc], a
    ld bc, $6677
    ld [bc], a
    ld [bc], a
    ld a, d
    ld h, [hl]
    ld [bc], a
    inc bc
    ld a, l
    ld h, [hl]
    nop
    and a
    rst RST_08
    ld h, [hl]
    cp $fe
    push hl
    ld h, [hl]
    dec l
    ld [hl-], a
    ld [bc], a
    nop
    ld [hl], h
    ld h, [hl]
    ld [bc], a
    ld bc, $6677
    ld [bc], a
    ld [bc], a
    ld a, d
    ld h, [hl]
    ld [bc], a
    inc bc
    ld a, l
    ld h, [hl]
    nop
    and a
    rst RST_08
    ld h, [hl]
    cp $fe
    push hl
    ld h, [hl]
    ld h, l
    nop
    rst RST_38
    ld h, l
    ld bc, $65ff
    ld [bc], a
    rst RST_38
    ld b, [hl]
    add b
    or e
    ld h, [hl]
    ld b, [hl]
    add c
    cp d
    ld h, [hl]
    ld b, [hl]
    adc b
    pop bc
    ld h, [hl]
    ld b, [hl]
    ld a, [hl-]
    ret z

    ld h, [hl]
    ld b, [hl]
    rla
    or b
    ld h, [hl]
    ld b, [hl]
    nop
    or b
    ld h, [hl]
    ld b, [hl]
    ld bc, $66b0
    ld b, [hl]
    ld [bc], a
    or b
    ld h, [hl]
    ld b, [hl]
    inc bc
    or b
    ld h, [hl]
    ld b, [hl]
    inc b
    or b
    ld h, [hl]
    ld b, [hl]
    ld b, [hl]
    or b
    ld h, [hl]
    ld b, [hl]
    ld c, a
    or b

jr_007_66ac:
    ld h, [hl]
    ld h, l
    inc bc
    rst RST_38
    ld bc, $fff3
    ld d, h
    dec c
    xor l
    ld h, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld d, h
    inc c
    xor l

jr_007_66bd:
    ld h, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld d, h
    ld d, b
    xor l
    ld h, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld d, h
    ld a, b
    xor l
    ld h, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld h, l
    inc b
    rst RST_38
    rla
    ldh [c], a
    ld h, [hl]
    dec b
    call c, Call_000_0766
    ldh [$ff66], a
    rst RST_38
    ld c, b
    inc l
    inc e
    ld b, $26
    rst RST_38
    nop
    dec l
    rst RST_38
    nop
    inc l
    rst RST_38
    ld c, b
    inc l
    ld [bc], a
    rst RST_38
    ld c, b
    inc l
    add hl, de
    rst RST_38
    ld c, b
    inc l
    inc bc
    rst RST_38
    ld c, b
    inc l
    ld a, [de]
    rst RST_38
    ld l, $3e
    dec d
    jr nc, jr_007_66ac

    inc l
    ld [bc], a
    ld hl, $3eff
    dec d
    ld l, $30
    xor a
    inc l
    ld [bc], a
    ld b, $2e
    ld a, $15
    jr nc, jr_007_66bd

    inc l
    inc bc
    rst RST_38
    ld e, d
    rst RST_38
    ld b, e
    ld h, a
    ld c, a
    ld h, a
    ld e, e
    ld h, a
    ld h, a
    ld h, a
    ld [hl], e
    ld h, a
    ld a, a
    ld h, a
    adc e
    ld h, a
    sub a
    ld h, a
    and e
    ld h, a
    xor a
    ld h, a
    cp e
    ld h, a
    jp $cf67


    ld h, a
    db $db
    ld h, a
    rst RST_20
    ld h, a
    di
    ld h, a
    rst RST_38
    ld h, a
    dec bc
    ld l, b
    rla
    ld l, b
    inc hl
    ld l, b
    cpl
    ld l, b
    dec sp
    ld l, b
    ld b, a
    ld l, b
    ld d, e
    ld l, b
    ld e, a
    ld l, b
    ld h, d
    ld l, b
    ld l, l
    ld l, b
    and [hl]
    ld l, [hl]
    ld l, h
    ld l, e
    ld a, c
    ld l, e
    ld a, [de]
    ld l, l
    ld h, d
    ld l, b
    ld l, l
    ld l, b
    and [hl]
    ld l, [hl]
    dec e
    ld l, l
    ld a, c
    ld l, e
    ld a, [hl+]
    ld l, l
    call Call_007_6d6e
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    dec l
    ld l, l
    jr c, @+$6f

    ld l, l
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    ld c, c
    ld l, l
    ld c, h
    ld l, l
    ld l, l
    ld l, b
    and [hl]
    ld l, [hl]
    ld e, l
    ld l, l
    halt
    ld l, l
    adc b
    ld l, l
    sub d
    ld l, l
    ld l, l
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    and [hl]
    ld l, l
    call Call_007_6d6e
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    xor c
    ld l, l
    call Call_007_6d6e
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    xor h
    ld l, l
    or [hl]
    ld l, l
    ld l, l
    ld l, b
    and [hl]
    ld l, [hl]
    cp e
    ld l, l
    ld a, c
    ld l, e
    add $6d
    call Call_007_6d6e
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    ret nc

    ld l, l
    ld l, l
    ld l, b
    and [hl]
    ld l, [hl]
    db $d3
    ld l, l
    sbc $6d
    call Call_007_6d6e
    ld l, b
    and [hl]
    ld l, [hl]
    pop hl
    ld l, l
    db $d3
    ld l, [hl]
    db $ec
    ld l, l
    call Call_007_6d6e
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    ld e, a
    ld l, b
    ld e, a
    ld l, b
    ld e, a
    ld l, b
    ld e, a
    ld l, b
    ld e, a
    ld l, b
    ld e, a
    ld l, b
    rst RST_28
    ld l, l
    call Call_007_6d6e
    ld l, b
    and [hl]
    ld l, [hl]
    ldh a, [c]
    ld l, l
    db $d3
    ld l, [hl]
    ld e, a
    ld l, b
    ld e, a
    ld l, b
    ld e, a
    ld l, b
    ld e, a
    ld l, b
    ld e, a
    ld l, b
    ld e, a
    ld l, b
    nop
    ld l, [hl]
    inc de
    ld l, [hl]
    ld l, l
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    jr jr_007_687b

    ld [hl+], a
    ld l, [hl]
    ld l, l
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $ee6e
    ld l, [hl]
    add hl, hl
    ld l, [hl]
    call Call_007_6d6e
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    inc l
    ld l, [hl]
    cpl
    ld l, [hl]
    ld l, l
    ld l, b
    and [hl]
    ld l, [hl]
    ld c, [hl]
    ld l, [hl]
    ld l, a
    ld l, [hl]
    add c
    ld l, [hl]
    call Call_007_6d6e
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    add h
    ld l, [hl]
    add a
    ld l, [hl]
    ld l, l
    ld l, b
    and [hl]
    ld l, [hl]
    sbc b
    ld l, [hl]
    db $d3
    ld l, [hl]
    db $fd
    ld l, l
    call Call_007_6d6e
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    and e
    ld l, [hl]
    call Call_007_6d6e
    ld l, b
    and [hl]
    ld l, [hl]
    call c, $d36e
    ld l, [hl]
    nop
    inc de
    rst RST_38
    ld c, b
    dec e
    ld l, d
    ld l, b

Jump_007_6866:
    inc l
    dec h
    daa
    rst RST_38
    inc l
    daa
    rst RST_38
    dec l
    ld [hl-], a
    ld [bc], a
    nop
    daa
    ld l, c
    nop
    and [hl]
    ld c, a
    ld l, c
    nop
    and a
    ld h, c
    ld l, d

jr_007_687b:
    nop
    add e
    add l
    ld l, d
    nop
    ld b, e
    sbc l
    ld l, d
    nop
    ld b, [hl]
    or c
    ld l, d
    nop
    ld b, h
    or c
    ld l, d
    nop
    ld a, d
    push bc
    ld l, d
    nop
    ld b, l
    ld a, d
    ld l, d
    nop
    rla
    reti


    ld l, d
    nop
    scf
    ld a, d
    ld l, d
    nop
    inc a
    push hl
    ld l, d
    nop
    ld c, a
    ldh a, [rOCPS]
    nop
    ld d, b
    ld de, $006b
    ld d, l
    rra
    ld l, e
    rlca
    ld b, [hl]
    ld b, l
    ld l, e
    rlca
    ld c, b
    ld b, l
    ld l, e
    dec b
    ld c, c
    ld b, l
    ld l, e
    dec b
    ld c, d
    ld b, l
    ld l, e
    dec b
    ld c, e
    ld b, l
    ld l, e
    nop
    ld l, $85
    ld l, e
    nop
    cpl
    sub e
    ld l, e
    nop
    ld d, d
    and c
    ld l, e
    nop
    ld d, e
    xor a
    ld l, e
    nop
    ld h, b
    cp l
    ld l, e
    nop
    ld l, b
    bit 5, e
    nop
    ld a, b
    reti


    ld l, e
    nop
    sub b
    rst RST_20
    ld l, e
    nop
    sbc b
    push af
    ld l, e
    nop
    xor e
    inc bc
    ld l, h
    nop
    xor h
    ld de, $016c
    ld b, $1f
    ld l, h
    inc bc
    ld e, $32
    ld l, h
    dec b
    ld b, $40
    ld l, h
    dec b
    dec d
    ld c, a
    ld l, h
    dec b
    add hl, de
    ld e, [hl]
    ld l, h
    dec b
    add hl, sp
    ld l, l
    ld l, h
    dec b
    ld c, h
    ld a, h
    ld l, h
    dec b
    ld d, e
    adc e
    ld l, h
    dec b
    ld h, l
    sbc d
    ld l, h
    dec b
    ld l, b
    xor c
    ld l, h
    ld bc, $b809
    ld l, h
    dec b
    ld e, e
    add $6c
    dec b
    ld h, [hl]
    pop hl
    ld l, h
    ld [bc], a
    inc bc
    ld a, l
    ld h, [hl]
    cp $fe
    ld bc, $466d
    add l
    ret nz

    ld l, [hl]
    ld b, [hl]
    add b
    ld a, [hl-]
    ld l, c
    ld b, [hl]
    add c
    ld b, c
    ld l, c
    ld b, [hl]
    adc b
    ld c, b
    ld l, c
    rlca
    xor $6e
    ld d, h
    dec c
    ret nz

    ld l, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld d, h
    inc c
    ret nz

    ld l, [hl]
    rlca
    ld a, $69
    ld d, h
    ld d, b
    ret nz

    ld l, [hl]
    rlca
    ld a, $69
    ld b, [hl]
    add b
    ld h, [hl]
    ld l, c
    ld b, [hl]
    add c
    ld [hl+], a
    ld l, d
    ld b, [hl]
    adc b
    inc [hl]
    ld l, d
    ld b, [hl]
    adc d
    ld d, l
    ld l, d
    ld b, [hl]
    adc c
    ld c, d
    ld l, d
    rlca
    xor $6e
    ld [$830d], sp
    ld l, c
    ld [$5750], sp
    ld e, h
    ld [$5d78], sp
    ld e, h
    nop
    daa
    add hl, bc
    dec c
    rst RST_38
    ld a, l
    ld [hl], c
    ld d, c
    ld [$3c7d], sp
    ld b, a
    ld [$9a7d], sp
    ld b, [hl]
    ld [$0d0a], sp
    ld l, $45
    inc l
    ld [de], a
    dec h
    inc b
    ld a, a
    ld l, c
    dec h
    dec b
    ld a, e
    ld l, c
    dec h
    dec d
    ld b, $6a
    dec h
    ld d, $06
    ld l, d
    dec h
    rla
    ld [bc], a
    ld l, d
    dec h
    jr jr_007_69a2

    ld l, d
    dec h

jr_007_69a2:
    add hl, de
    ld [bc], a
    ld l, d
    dec h
    ld a, [de]
    ld [bc], a
    ld l, d
    dec h
    inc l
    ld [bc], a
    ld l, d
    dec h
    dec l
    ld [bc], a
    ld l, d
    dec h
    ld l, $02
    ld l, d
    dec h
    cpl
    ld [bc], a
    ld l, d
    dec h
    dec hl
    jr @+$6c

    dec h
    ld b, h
    ld [hl], a
    ld l, c
    dec h
    dec de
    ld c, $6a
    dec h
    inc e
    ld c, $6a
    dec h
    dec e
    ld c, $6a
    dec h
    ld e, $0e
    ld l, d
    dec h
    rra
    ld c, $6a
    dec h
    jr nz, jr_007_69e6

    ld l, d
    dec h
    ld hl, $6a0e
    dec h
    ld [hl+], a
    ld c, $6a
    dec h
    inc hl
    ld c, $6a
    dec h

jr_007_69e6:
    inc h
    ld c, $6a
    dec h
    dec h
    ld c, $6a
    dec h

jr_007_69ee:
    ld h, $0e
    ld l, d
    dec h
    daa
    ld c, $6a
    dec h
    jr z, @+$10

    ld l, d
    dec h
    add hl, hl
    ld c, $6a
    dec h
    ld a, [hl+]
    ld c, $6a
    rst RST_38
    ld a, l
    ld a, e
    ld c, c
    ld [$b530], sp
    ld l, $2c
    add hl, hl
    rlca
    ld [bc], a
    ld l, d
    ld l, $5f
    inc de
    ld l, d
    ld h, e
    jr nc, jr_007_69ee

    rlca
    add hl, bc
    ld l, d
    ld [$cca1], sp
    ld l, [hl]
    ld l, $30
    cp b
    rlca
    add hl, bc
    ld l, d
    ld [$2f0c], sp
    ld l, d
    ld [$5d78], sp
    ld e, h
    nop
    jr z, @+$0b

    inc c
    rst RST_38
    ld a, [bc]
    inc c
    rlca
    add l
    ld l, c
    ld [$4550], sp
    ld l, d
    ld [$5d78], sp
    ld e, h
    ld [$510d], sp
    ld e, h
    ld bc, $0995
    ld d, b
    rst RST_38
    ld a, [bc]
    ld d, b
    rlca
    add l
    ld l, c
    ld d, e
    inc b
    call z, Call_000_2e6e

jr_007_6a4f:
    ld bc, $0191
    sub d
    scf
    rst RST_38
    dec [hl]
    ld l, [hl]
    ld e, l
    ld l, d
    ld [hl], $07
    inc c
    ld d, c
    ld [hl], $2c
    ld b, a
    rst RST_38
    ld b, [hl]
    adc c
    ld [hl], e
    ld l, d
    ld d, l
    ld b, d
    xor $6e
    ld b, [hl]
    sub b
    ld [hl], b
    ld l, d
    rlca
    dec de
    ld h, b
    ld [bc], a
    ld h, a
    rst RST_38
    ld d, e
    inc b
    call z, Call_000_006e

jr_007_6a78:
    ld b, l
    rst RST_38
    ld b, [hl]
    adc d
    sub b
    ld l, d
    ld b, [hl]
    adc c
    ld d, [hl]
    ld l, e
    nop
    rlca
    rst RST_38
    ld b, [hl]
    adc d

jr_007_6a87:
    sub b
    ld l, d

jr_007_6a89:
    ld b, [hl]
    adc c
    ld d, [hl]
    ld l, e
    rlca
    xor $6e
    ld d, h
    halt
    xor $6e
    ld d, h
    ld c, l
    xor $6e
    jr nc, jr_007_6a4f

    inc l
    db $10
    rst RST_38
    ld b, [hl]
    adc d
    and h
    ld l, d
    rlca
    adc c
    ld l, d
    ld d, h
    halt
    xor $6e
    ld d, h
    ld c, l
    xor $6e
    jr nc, jr_007_6a87

    inc l
    db $10
    rst RST_38
    ld b, [hl]
    adc d
    cp b
    ld l, d
    rlca
    adc c
    ld l, d
    ld d, h
    halt
    xor $6e
    ld d, h

jr_007_6abd:
    ld c, l
    xor $6e
    jr nc, jr_007_6a78

    inc l
    db $10
    rst RST_38
    ld b, [hl]
    adc d
    call z, Call_000_076a
    adc c
    ld l, d
    ld d, h
    halt
    xor $6e
    ld d, h
    ld c, l
    xor $6e
    jr nc, jr_007_6a89

    inc l
    db $10
    rst RST_38
    ld b, [hl]
    adc d
    cp b
    ld l, d
    ld b, [hl]
    adc c
    ld d, [hl]
    ld l, e
    ld b, l
    inc l
    dec b
    rst RST_38
    ld b, [hl]
    adc d
    sub b
    ld l, d
    ld b, [hl]
    adc c
    ld d, [hl]
    ld l, e
    ld [bc], a
    push hl
    rst RST_38
    ld b, [hl]
    adc d
    ei
    ld l, d
    ld b, [hl]
    adc c
    ld [$016b], sp
    ld h, $ff
    ld d, h
    halt
    xor $6e
    ld d, h
    ld c, l
    xor $6e
    jr nc, jr_007_6abd

    inc l
    db $10
    rst RST_38
    ld d, e
    inc b
    call z, $016e
    jr z, jr_007_6b16

    jr nz, @+$4e

    ld b, [hl]
    adc c
    jr jr_007_6b80

    rlca

jr_007_6b16:
    xor $6e
    ld d, e
    inc b
    call z, $016e
    daa
    rst RST_38
    ld b, [hl]
    adc d
    ld a, [hl+]
    ld l, e
    ld b, [hl]
    adc c
    scf
    ld l, e
    ld bc, $ff50
    ld d, h
    halt
    xor $6e
    ld d, h
    ld c, l
    xor $6e
    jr nc, @-$24

    inc l
    db $10
    rst RST_38
    ld d, e
    inc b
    call z, Call_000_2e6e
    ld bc, $304b
    cp d
    ld a, $11
    inc l
    dec d
    rst RST_38
    ld b, [hl]
    adc c
    ld c, h
    ld l, e
    rlca
    xor $6e
    ld [$5343], sp
    ld l, e
    ld bc, $ff3b
    ld bc, $ff3c
    ld d, e
    inc b
    call z, $396e
    ld [$093e], sp
    ld a, [hl]
    ld a, [hl]
    nop
    dec hl
    ld a, [hl]
    add hl, sp
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    ld [bc], a
    sbc d
    ld a, [hl]
    scf
    rst RST_38
    rla
    pop af
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    ld bc, $2809
    rlca
    db $ec
    ld l, [hl]
    ld c, b
    ld e, e
    add d
    ld l, e
    inc l
    ld h, $07

jr_007_6b80:
    reti


    ld l, [hl]
    inc l
    jr z, @+$01

    ld b, [hl]
    adc c
    adc h
    ld l, e
    rlca
    xor $6e
    ld d, e
    inc b
    call z, $076e
    ld e, [hl]
    ld c, h
    ld b, [hl]
    adc c
    sbc d
    ld l, e
    rlca
    xor $6e
    ld d, e
    inc b
    call z, $076e
    ld [hl], c
    ld c, h
    ld b, [hl]
    adc c
    xor b
    ld l, e
    rlca
    xor $6e
    ld d, e
    inc b
    call z, $076e
    ld a, [hl]
    ld c, h
    ld b, [hl]
    adc c
    or [hl]
    ld l, e
    rlca
    xor $6e
    ld d, e
    inc b
    call z, $076e
    sub [hl]
    ld c, h
    ld b, [hl]
    adc c
    call nz, $076b
    xor $6e
    ld d, e
    inc b
    call z, $076e
    and d
    ld c, h
    ld b, [hl]
    adc c
    jp nc, $076b

    xor $6e
    ld d, e
    inc b
    call z, $076e
    and l
    ld c, h
    ld b, [hl]
    adc c
    ldh [rOCPD], a
    rlca
    xor $6e
    ld d, e
    inc b
    call z, $076e
    or c
    ld c, h
    ld b, [hl]
    adc c
    xor $6b
    rlca
    xor $6e
    ld d, e
    inc b
    call z, $076e
    ld [hl], d
    ld d, c
    ld b, [hl]
    adc c
    db $fc
    ld l, e
    rlca
    xor $6e
    ld d, e
    inc b
    call z, $076e
    adc l
    ld d, c
    ld b, [hl]
    adc c
    ld a, [bc]
    ld l, h
    rlca
    xor $6e
    ld d, e
    inc b
    call z, $076e
    and b
    ld d, c
    ld b, [hl]
    adc c
    jr jr_007_6c81

    rlca
    xor $6e
    ld d, e
    inc b
    call z, $076e
    or e
    ld d, c
    ld b, [hl]
    adc c
    ld h, $6c
    rlca
    xor $6e
    ld d, e
    inc b
    call z, Call_007_476e
    db $10
    ld a, $11
    ld c, b
    inc l
    dec d
    rst RST_38
    ld b, [hl]
    adc c
    add hl, sp
    ld l, h
    rlca
    xor $6e
    ld d, e
    inc b
    call z, $076e
    inc bc
    ld h, e
    ld b, [hl]
    adc c
    ld b, a
    ld l, h
    rlca
    xor $6e
    ld d, e
    inc b
    call z, Call_007_7d6e
    reti


    ld b, [hl]
    ld [$8946], sp
    ld d, [hl]
    ld l, h
    rlca
    xor $6e
    ld d, e
    inc b
    call z, Call_007_7d6e
    ld [bc], a
    ld c, c
    ld [$8946], sp
    ld h, l
    ld l, h
    rlca
    xor $6e
    ld d, e
    inc b
    call z, Call_007_7d6e
    ld c, a
    ld c, c
    ld [$8946], sp
    ld [hl], h
    ld l, h
    rlca
    xor $6e
    ld d, e
    inc b
    call z, Call_007_7d6e
    cp e
    ld c, h
    ld [$8946], sp
    add e
    ld l, h
    rlca

jr_007_6c81:
    xor $6e
    ld d, e
    inc b
    call z, Call_007_7d6e
    db $ed
    ld c, l
    ld [$8946], sp
    sub d
    ld l, h
    rlca
    xor $6e
    ld d, e
    inc b
    call z, Call_007_7d6e
    rst RST_38
    ld d, b
    ld [$8946], sp
    and c
    ld l, h
    rlca
    xor $6e
    ld d, e
    inc b
    call z, Call_007_7d6e
    ld [hl], b
    ld d, b
    ld [$8946], sp
    or b
    ld l, h
    rlca
    xor $6e
    ld d, e
    inc b
    call z, Call_007_7d6e
    inc [hl]
    ld d, c
    ld [$8946], sp
    cp a
    ld l, h
    rlca
    xor $6e
    ld d, e
    inc b
    call z, $076e
    sub l
    ld d, h
    ld b, [hl]
    adc c
    call $076c
    xor $6e
    ld d, e
    inc b
    call z, $1d6e
    ld [hl], a
    ld l, d
    ld [$ee5d], sp
    ld l, [hl]
    ld l, $01
    call c, $0121
    db $dd
    add hl, bc
    ld e, l
    rst RST_38
    ld b, [hl]
    adc c
    add sp, $6c
    rlca
    xor $6e
    ld d, e
    inc b
    call z, $1d6e
    ld [hl], a
    ld l, d
    ld [$ee6b], sp
    ld l, [hl]
    ld l, $01
    call c, Call_007_4629
    dec hl
    ld [hl+], a
    ld h, [hl]
    ld e, $01
    db $dd
    add hl, bc
    ld l, e
    rst RST_38
    ld b, [hl]
    adc c
    ld [$076d], sp
    dec de
    ld h, b
    dec h
    ld b, a
    inc de
    ld l, l
    ld d, e
    inc b
    call z, Call_000_006e
    ld b, l
    rst RST_38
    ld [$0c82], sp
    ld l, l
    ld [bc], a
    cp [hl]
    rst RST_38
    nop
    inc d
    rst RST_38
    rla
    pop af
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    ld [bc], a
    add hl, bc
    add hl, hl
    rlca
    db $ec
    ld l, [hl]
    nop
    dec d
    rst RST_38
    nop
    dec de
    ld [$cc36], sp
    ld l, [hl]
    ld b, h
    ldh [c], a
    add hl, bc
    ld [hl], $ff
    dec e
    push hl
    ld l, [hl]
    ld l, $48
    inc l
    ld [bc], a
    daa
    ld [$cc42], sp
    ld l, [hl]
    nop
    add hl, hl
    add hl, bc
    ld b, d
    rst RST_38
    nop
    rla
    rst RST_38
    dec e
    push hl
    ld l, [hl]
    ld c, b
    inc l
    ld [bc], a
    ld [$5ba4], sp
    ld l, l
    ld a, [hl+]
    dec e
    add hl, hl
    ld hl, $272b
    rst RST_38
    ld a, [de]
    inc bc
    call c, Call_000_176e
    pop af
    ld l, [hl]
    ld c, b
    inc l

Jump_007_6d66:
    inc e
    add hl, bc
    and h
    dec e
    ld [hl], c
    ld l, l
    ld a, [hl+]
    dec e

Call_007_6d6e:
    rlca
    db $ec
    ld l, [hl]
    ld a, [hl+]
    ld hl, $ec07
    ld l, [hl]
    ld c, b
    ld e, e
    jp hl


    ld l, [hl]
    inc l
    inc bc
    ld [$85a4], sp
    ld l, l
    ld a, [hl+]
    ld hl, $1d29
    dec hl
    rra
    jr c, @+$01

    ld l, $00
    ld e, $08
    inc de
    call z, Call_000_006e
    inc h
    rst RST_38
    dec e
    push hl
    ld l, [hl]
    ld [$f413], sp
    ld l, [hl]
    add hl, bc
    inc de
    ld l, $48
    inc l
    ld [bc], a
    daa
    ld a, $08
    ld bc, $5a5a
    rst RST_38
    nop
    dec h
    rst RST_38
    ld bc, $ff5b
    ld [$b35a], sp
    ld l, l
    ld bc, $ff6e
    ld bc, $ff6f
    add hl, bc
    ld e, d
    rlca
    ld h, d
    ld l, b
    rla
    pop af
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    inc sp
    rlca
    db $ec
    ld l, [hl]
    ld [$cd4b], sp
    ld l, l
    ld bc, $ff70
    ld bc, $ff71
    ld bc, $ff72
    rla
    pop af
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    inc [hl]
    rlca
    db $ec
    ld l, [hl]
    ld bc, $ff73
    rla
    pop af
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    dec [hl]
    rlca
    db $ec
    ld l, [hl]
    ld bc, $ff74
    ld bc, $ffcd
    rla
    pop af
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    ld a, $07
    db $ec
    ld l, [hl]
    ld bc, $ffcf
    ld [$0d72], sp
    ld l, [hl]
    ld [$1073], sp
    ld l, [hl]
    ld [bc], a
    ld d, a
    add hl, bc
    ld [hl], e
    rst RST_38
    ld [bc], a
    ld e, d
    rst RST_38
    ld [bc], a
    ld e, b
    rst RST_38
    add hl, bc
    ld [hl], d
    rlca
    call $086e
    ld [hl], l
    rra
    ld l, [hl]
    ld [bc], a
    ld e, e
    rst RST_38
    ld [bc], a
    ld e, h
    rst RST_38
    ld [$cd75], sp
    ld l, [hl]
    ld [bc], a
    ld e, [hl]
    rst RST_38
    ld [bc], a
    ld e, l
    rst RST_38
    ld [bc], a
    add c
    rst RST_38
    dec e
    push hl
    ld l, [hl]
    rla
    db $f4
    ld l, [hl]
    ld d, l
    ld b, h
    dec a
    ld l, [hl]
    ld d, h
    ld a, b
    ld c, e
    ld l, [hl]
    ld c, b
    inc l
    ld [bc], a
    ld [$49a5], sp
    ld l, [hl]
    ld a, [hl+]
    ld c, e
    add hl, hl
    ld c, h
    dec hl
    daa
    rst RST_38
    inc l
    ld b, c
    rst RST_38
    ld a, [de]
    inc bc
    call c, Call_000_176e
    pop af
    ld l, [hl]
    ld d, l
    ld b, h
    ld e, l
    ld l, [hl]
    ld d, h
    ld a, b
    ld c, e
    ld l, [hl]
    ld c, b
    inc l
    inc e
    add hl, bc
    and l
    dec e
    ld l, d
    ld l, [hl]
    ld a, [hl+]
    ld c, e
    rlca
    db $ec
    ld l, [hl]
    ld a, [hl+]
    ld c, h
    rlca
    db $ec
    ld l, [hl]
    ld c, b
    ld e, e
    jp hl


    ld l, [hl]
    inc l
    inc bc
    ld [$d9a5], sp
    ld l, [hl]
    ld a, [hl+]
    ld c, h
    add hl, hl
    ld c, e
    dec hl
    rlca
    reti


    ld l, [hl]
    ld [bc], a
    add d
    rst RST_38
    ld [bc], a
    cp d
    rst RST_38
    ld d, l
    ld b, a
    sub d
    ld l, [hl]
    ld [$9282], sp
    ld l, [hl]
    ld [bc], a
    cp [hl]
    rst RST_38
    dec e
    push hl
    ld l, [hl]
    rlca
    db $f4
    ld l, [hl]
    rla
    pop af
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    ld d, b
    rlca
    db $ec
    ld l, [hl]
    nop
    xor [hl]
    rst RST_38
    dec l
    ld [hl-], a
    ld [bc], a
    nop
    ret nz

    ld l, [hl]
    ld [bc], a
    ld bc, $6ec3
    ld [bc], a
    ld [bc], a
    add $6e
    ld [bc], a
    inc bc
    ld a, l
    ld h, [hl]
    nop
    and a
    ret


    ld l, [hl]
    cp $fe
    xor $6e
    ld h, l
    nop
    rst RST_38
    ld h, l
    ld bc, $65ff
    ld [bc], a
    rst RST_38
    ld h, l
    inc b
    rst RST_38
    rst RST_38
    dec e
    push hl
    ld l, [hl]
    rlca
    db $f4
    ld l, [hl]
    ld c, b
    ld e, e
    jp hl


    ld l, [hl]
    inc l
    inc bc
    rra
    jr c, @+$01

    rla
    pop af
    ld l, [hl]
    ld c, b
    inc l
    inc e
    rlca
    db $ec
    ld l, [hl]
    ld c, b
    inc l
    add hl, de
    rst RST_38
    inc l
    ld a, [de]
    rst RST_38
    ld h, $ff
    nop
    inc l
    rst RST_38
    nop
    dec l
    rst RST_38
    ld c, b
    inc l
    ld [bc], a
    daa
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_7066:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_7366:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_7666:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_7966:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_007_7b4c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_007_7d6e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_7e2f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_7f66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
