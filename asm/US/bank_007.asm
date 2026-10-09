; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
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

    jr nz, @+$48

    jr z, jr_007_4174

    jr nc, jr_007_4176

    jr c, jr_007_4178

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
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    db $e3
    ld b, [hl]
    ld b, a
    ld c, l
    ld b, e
    ld c, c
    db $d3
    ld c, l
    add sp, $46
    ld e, b
    ld c, l
    ld b, e
    ld c, c

jr_007_4170:
    ld [$ed4d], a
    ld b, [hl]

jr_007_4174:
    ld b, e
    ld c, c

jr_007_4176:
    cpl
    ld c, h

jr_007_4178:
    ld b, e
    ld c, c
    nop
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    inc bc
    ld b, a
    ld c, c
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    add hl, de
    ld b, a
    ld b, e
    ld c, c
    ld a, $4c
    ld b, e
    ld c, c
    ld h, $47
    ld h, [hl]
    ld c, l
    ld b, e
    ld c, c
    db $fc
    ld c, l
    add hl, hl
    ld b, a
    ld b, e
    ld c, c
    ld d, b
    ld c, h
    ld b, e
    ld c, c
    ld sp, $4347
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    inc [hl]
    ld b, a
    ld b, e
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    scf
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld a, [hl-]
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    dec a
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld b, b
    ld b, a
    adc e
    ld c, c
    adc e
    ld c, c
    ld b, e
    ld c, c
    ld b, e
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld c, c
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld c, h
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld c, a
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld d, d
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld d, l
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld e, b
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld e, e
    ld b, a
    ld b, e
    ld c, c
    or c
    ld c, e
    cp h
    ld c, h
    ld e, [hl]
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld d, d
    ld c, [hl]
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld h, c
    ld b, a
    ld b, e
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    ld h, h
    ld b, a
    ld b, e
    ld c, c
    push bc
    ld c, e
    cp a
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
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld [hl], c
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    add h
    ld b, a
    sbc h
    ld c, c
    sbc h
    ld c, c
    ld b, e
    ld c, c
    adc c
    ld b, a
    ld h, l
    ld c, d
    ld h, l
    ld c, d
    ld b, e
    ld c, c
    adc [hl]
    ld b, a
    di
    ld c, d
    di
    ld c, d
    ld b, e
    ld c, c
    sub e
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    sub [hl]
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    sbc c
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    sbc h
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    sbc a
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    and d
    ld b, a
    ld b, e
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    and l
    ld b, a
    ld b, e
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    xor b
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    xor e
    ld b, a
    ld b, e
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    xor [hl]
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    or c
    ld b, a
    ld b, e
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    or h
    ld b, a
    ld b, e
    ld c, c
    ld e, h
    ld c, h
    ld b, e
    ld c, c
    cp h
    ld b, a
    ld b, e
    ld c, c
    ld l, a
    ld c, h
    ld b, e
    ld c, c
    call nz, Call_007_4347
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    rst RST_00
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    jp z, Jump_007_4347

    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    rst RST_08
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    call nc, Call_007_4347
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    reti


    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    sbc $47
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    pop hl
    ld b, a
    ld b, e
    ld c, c
    ldh [c], a
    ld c, e
    db $dd
    ld c, h
    db $e4
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    db $e4
    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    and $47
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    jp hl


    ld b, a
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    db $ec
    ld b, a
    ld b, e
    ld c, c
    ldh [c], a
    ld c, e
    add sp, $4c
    rst RST_28
    ld b, a
    ld b, e
    ld c, c
    add l

Call_007_4347:
Jump_007_4347:
    ld c, c

Call_007_4348:
    ld b, e
    ld c, c
    inc sp
    ld c, b
    ld b, e

Jump_007_434d:
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld [hl], $48
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    add hl, sp
    ld c, b
    adc c
    ld c, l
    ld b, e
    ld c, c
    ld [hl+], a
    ld c, [hl]
    inc a
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ccf
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld b, e
    ld c, b
    ld b, e
    ld c, c
    ld [bc], a
    ld c, h
    db $eb
    ld c, h
    ld b, [hl]
    ld c, b
    ld b, e
    ld c, c
    ld [bc], a
    ld c, h
    ldh a, [c]
    ld c, h
    ld c, c
    ld c, b
    ld b, e
    ld c, c
    ld [bc], a
    ld c, h
    ld hl, sp+$4c
    ld d, e
    ld c, b
    ld b, e
    ld c, c
    ld [bc], a
    ld c, h
    nop
    ld c, l
    ld d, [hl]
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld e, e
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld h, b
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld h, l
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld l, d
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld l, l
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld l, l
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld l, a
    ld c, b
    adc h
    ld c, l
    ld b, e
    ld c, c
    daa
    ld c, [hl]
    ld a, d
    ld c, b
    ld b, e
    ld c, c
    ld a, [de]
    ld c, h
    inc e
    ld c, l
    ld a, l
    ld c, b
    ld b, e
    ld c, c
    ld [hl], h
    ld c, c
    ld c, c
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld b, e
    ld c, c
    ld e, $4c
    ld a, [hl+]
    ld c, l
    ld b, e
    ld c, c
    sub c
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    sub h
    ld c, b
    ld b, e
    ld c, c
    ld a, h
    ld c, h
    ld b, e
    ld c, c
    sbc h
    ld c, b
    ld b, e
    ld c, c
    sub h
    ld c, h
    ld b, e
    ld c, c
    and h
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    and a
    ld c, b
    ld b, e
    ld c, c
    add hl, hl
    ld c, h
    ld [hl], $4d
    xor d
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    xor l
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    or b
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    sub $48
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    or e
    ld c, b
    sub [hl]
    ld c, l
    ld b, e
    ld c, c
    ld sp, $b64e
    ld c, b
    sub [hl]
    ld c, l
    ld b, e
    ld c, c
    ld sp, $b94e
    ld c, b
    ld b, e
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    cp h
    ld c, b
    ld b, e
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    cp a
    ld c, b
    ld b, e
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    jp nz, $9c48

    ld c, l
    ld b, e
    ld c, c
    xor a
    ld c, l
    push bc
    ld c, b
    ld b, e
    ld c, c
    and b
    ld c, h
    ld b, e
    ld c, c
    ret nc

    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ret nc

    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    db $d3
    ld c, b
    ld b, e
    ld c, c
    ld b, e
    ld c, c
    ld c, c
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld b, e
    ld c, c
    sub $48
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    reti


    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    call c, Call_007_4348
    ld c, c
    ld b, e
    ld c, c
    ld b, e
    ld c, c
    rst RST_18
    ld c, b
    ld b, e
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    ret z

    ld c, b
    ld b, e
    ld c, c
    and e
    ld c, h
    ld b, e
    ld c, c
    ldh [c], a
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, e
    ld b, e
    ld c, c
    db $ec
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    rst RST_28
    ld c, b
    jp nz, Jump_007_434d

    ld c, c
    ld [hl], $4e
    ldh a, [c]
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    db $fd
    ld c, b
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    nop
    ld c, c
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    inc bc
    ld c, c
    ld b, e
    ld c, c
    sbc d
    ld c, e
    ld b, e
    ld c, c
    ld b, $49
    ld b, e
    ld c, c
    ld b, e
    ld c, c
    ld c, c
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld b, e
    ld c, c
    sbc l
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld c, c
    ld de, $4349
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    inc d
    ld c, c
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    rla
    ld c, c
    adc $4d
    ld b, e
    ld c, c
    ld b, c
    ld c, [hl]
    ld a, [de]
    ld c, c
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    dec e
    ld c, c
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    jr nz, jr_007_4573

    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    inc hl
    ld c, c
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld h, $49
    ld b, e
    ld c, c
    xor a
    ld c, h
    ld b, e
    ld c, c
    ld l, $49
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld sp, $4349
    ld c, c
    inc l
    ld c, h
    dec sp
    ld c, l
    inc [hl]
    ld c, c
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    scf
    ld c, c
    ld b, e
    ld c, c
    adc b
    ld c, c
    ld b, e
    ld c, c
    ld a, [hl-]
    ld c, c
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    dec a
    ld c, c
    ld b, e
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld b, b
    ld c, c
    ld b, e

jr_007_4573:
    ld c, c
    add l
    ld c, c
    ld b, e
    ld c, c
    ld d, e
    ld c, [hl]
    or $51
    ld b, a
    ld c, a
    and h
    ld d, d
    ld d, [hl]
    ld c, [hl]
    ld sp, hl
    ld d, c
    ld b, a
    ld c, a
    xor c
    ld d, d
    ld e, c
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    ld e, h
    ld c, [hl]
    ld b, a
    ld c, a
    cp [hl]
    ld d, c
    pop hl
    ld d, c
    ld e, a
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    ld h, h
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    ld l, c
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld c, d
    ld c, a
    ld l, h
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld c, d
    ld c, a
    ld a, c
    ld c, [hl]
    rlca
    ld d, d
    ld b, a
    ld c, a
    or e
    ld d, d
    ld a, h
    ld c, [hl]
    ld a, [hl+]
    ld d, d
    ld b, a
    ld c, a
    ret z

    ld d, d
    ld a, a
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    add d
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    add l
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    adc e
    ld c, [hl]
    ld d, b
    ld c, a
    ld sp, $4751
    ld c, a
    adc [hl]
    ld c, [hl]
    ld c, l
    ld c, a
    ld sp, $4751
    ld c, a
    sub c
    ld c, [hl]
    ld l, e
    ld c, a
    jr c, jr_007_4647

    ld b, a
    ld c, a
    and l
    ld c, [hl]
    ld b, a
    ld c, a
    ld [hl], b
    ld d, c
    ld b, a
    ld c, a
    xor b
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    xor e
    ld c, [hl]
    ld c, b
    ld d, d
    ld b, a
    ld c, a
    db $dd
    ld d, d
    xor [hl]
    ld c, [hl]
    ld b, a
    ld c, a
    ccf
    ld d, c
    ld b, a
    ld c, a
    cp b
    ld c, [hl]
    ld e, c
    ld d, d
    ld b, a
    ld c, a
    rst RST_20
    ld d, d
    cp e
    ld c, [hl]
    ld b, a
    ld c, a
    sub a
    ld d, c
    ld b, a
    ld c, a
    cp [hl]

Call_007_4629:
Jump_007_4629:
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    pop bc
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    call nz, Call_007_474e
    ld c, a
    adc e
    ld d, c
    ld b, a
    ld c, a
    rst RST_00
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a

jr_007_4647:
    ld c, a
    jp z, Jump_007_474e

    ld c, a
    ld b, d
    ld d, c
    ld b, a
    ld c, a
    call Call_007_474e
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    ret nc

    ld c, [hl]
    ld b, a
    ld c, a
    ld e, e

Call_007_465d:
    ld d, c
    ld b, a
    ld c, a
    db $d3
    ld c, [hl]
    ld b, a
    ld c, a
    ld h, d
    ld d, c
    ld b, a
    ld c, a
    sub $4e
    ld l, h
    ld d, d
    ld b, a
    ld c, a
    ld a, [$d952]
    ld c, [hl]
    add d
    ld d, d
    ld b, a
    ld c, a
    db $10
    ld d, e
    call c, Call_007_474e
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    and $4e
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    jp hl


    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    db $d3
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, c
    ld d, c
    ld b, a

jr_007_4697:
    ld c, a
    dec b
    ld c, a
    sub l

jr_007_469b:
    ld d, d
    ld b, a
    ld c, a
    inc hl
    ld d, e
    ld [$474f], sp
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    dec bc
    ld c, a
    ld a, e
    ld c, a
    ld b, a
    ld c, a
    ld b, a
    ld c, a
    ld a, $4f
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    adc b
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    adc b
    ld c, [hl]
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a
    ld b, c
    ld c, a
    ld b, a
    ld c, a
    ld l, $51
    ld b, a
    ld c, a

jr_007_46d0:
    jp z, Jump_007_474e

    ld c, a
    sbc [hl]
    ld d, c
    ld b, a
    ld c, a
    ld b, h
    ld c, a
    ld b, a
    ld c, a
    or c
    ld d, c
    ld b, a
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
    ld [$1302], sp
    ld b, a
    rst RST_38
    ld [$1602], sp
    ld b, a
    nop
    db $10
    rst RST_38
    nop
    ld [de], a
    rst RST_38
    nop
    ld de, $28ff
    rlca
    inc bc
    ld hl, $0047
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

Call_007_474e:
Jump_007_474e:
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

Jump_007_476e:
    nop
    sbc [hl]
    rst RST_38
    ld [$800f], sp
    ld b, a
    jr z, @+$11

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
    rst RST_38
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
    jr z, jr_007_47d8

    inc bc
    ld hl, $0047
    ldh a, [c]
    rst RST_38
    jr z, jr_007_47e1

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

jr_007_47d8:
    rst RST_38
    ld c, c
    add hl, bc
    inc l
    ld [$00ff], sp
    ld hl, sp-$01

jr_007_47e1:
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
    db $10
    ld c, b
    dec h
    jr jr_007_480b

    ld c, b
    dec h
    add hl, de
    ld a, [de]
    ld c, b
    dec h
    ld a, [de]
    rra
    ld c, b
    dec h
    inc l
    inc h
    ld c, b
    dec h
    dec l
    add hl, hl
    ld c, b
    dec h
    ld l, $2e
    ld c, b

jr_007_480b:
    ld c, c
    dec b
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
    ld [$5018], sp
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
    ld [hl], a
    ld c, b
    ld bc, $ff04
    ld bc, $ff05
    ld bc, $ff06
    ld [$8e3c], sp
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
    ld [$5261], sp
    ld c, [hl]
    ld bc, $fffb
    ld bc, $fff6
    ld bc, $fff5
    ld l, $01
    rst RST_30
    ld c, $61
    inc bc
    ld d, d
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
    ld c, $49
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
    jr z, jr_007_496d

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

jr_007_493d:
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
    ld [hl-], a
    nop

jr_007_494e:
    and [hl]
    ld e, c
    ld c, c
    inc bc
    dec b
    ld l, a
    ld c, c
    cp $fe
    ld b, e
    ld c, c
    ld [$6201], sp
    ld c, c
    ld [$6902], sp
    ld c, c
    rst RST_38
    ld [$6c02], sp
    ld c, c
    nop
    rra
    rst RST_38
    nop
    ld hl, $00ff

jr_007_496d:
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
    add b
    ld c, c
    cp $fe
    ld b, e
    ld c, c
    ld bc, $0720
    ld e, $4c
    nop
    inc l
    rst RST_38
    nop
    ld l, $ff
    jr nc, jr_007_493d

    ld l, $01
    add b
    ld c, $04
    inc bc
    ld d, l
    ld c, l
    inc l
    ld [hl+], a
    ld b, d
    ld [bc], a
    ld [hl+], a
    inc b
    rst RST_38
    jr nc, jr_007_494e

    ld c, c
    ld bc, $1f2c
    add hl, hl
    db $10
    dec hl
    dec h
    rlca
    cp l
    ld c, c
    dec h
    ld [$49cd], sp
    dec h
    add hl, bc
    db $dd
    ld c, c
    ld c, $0e
    inc b
    ld sp, hl
    ld c, c
    inc l
    inc hl
    inc h
    ld c, $07
    ld sp, hl
    ld c, c
    ld c, $04
    inc b
    ld e, c
    ld c, d
    inc h
    inc b
    ld b, a
    jr @+$2e

    inc hl
    ld b, a
    jr jr_007_49d2

    ld e, c
    ld c, d
    ld c, $09
    inc b
    ld [de], a
    ld c, d

jr_007_49d2:
    inc h
    add hl, bc
    ld b, a
    jr jr_007_4a03

    inc hl
    ld b, a
    jr @+$09

    ld [de], a
    ld c, d
    ld c, $0c
    inc b
    ld hl, $244a
    inc c
    ld b, a
    jr jr_007_4a13

    inc hl
    ld b, a
    jr jr_007_49f2

    ld hl, $2a4a
    inc d
    add hl, hl
    inc de
    dec hl

jr_007_49f2:
    ld b, $2a
    inc de
    add hl, hl
    ld [de], a
    dec hl
    ld b, $00
    and l
    dec b
    db $ed
    ld c, c
    ld b, a
    inc d
    dec b
    di
    ld c, c

jr_007_4a03:
    ld b, a
    inc d
    ld a, [hl+]
    ld [de], a
    add hl, hl
    ld de, $502b
    rlca
    dec b
    ld c, e
    ld c, d
    rlca
    dec [hl]
    ld c, d
    nop

jr_007_4a13:
    and l
    ld a, [hl+]
    ld [de], a
    add hl, hl

jr_007_4a17:
    ld de, $502b
    rlca
    dec b
    ld c, e
    ld c, d
    rlca
    dec [hl]
    ld c, d
    nop
    and l
    dec b
    di
    ld c, c
    ld b, a
    inc d
    ld a, [hl+]
    ld [de], a
    add hl, hl
    ld de, $502b
    rlca
    dec b
    ld c, e
    ld c, d
    rlca
    dec [hl]
    ld c, d
    ld b, d
    rlca
    jr z, jr_007_4a48

    inc b
    ld d, d
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

jr_007_4a48:
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
    jr jr_007_4a64

    add hl, hl

jr_007_4a64:
    rst RST_38
    jr nc, jr_007_4a17

    ld c, c
    ld [bc], a
    inc l
    rra
    add hl, hl
    ld e, $2b
    dec h
    rlca
    add [hl]
    ld c, d
    dec h
    ld [$4acb], sp
    dec h
    add hl, bc
    sub [hl]
    ld c, d
    ld c, $0e
    inc b
    and [hl]
    ld c, d
    inc l
    inc hl
    inc h
    ld c, $07
    and [hl]
    ld c, d
    ld c, $04
    inc b
    or l
    ld c, d
    inc h
    inc b
    ld b, a
    jr jr_007_4abc

    inc hl
    ld b, a
    jr jr_007_4a9b

    or l
    ld c, d
    ld c, $0c
    inc b
    pop bc
    ld c, d

jr_007_4a9b:
    inc h
    inc c
    ld b, a
    jr @+$2e

    inc hl
    ld b, a
    jr jr_007_4aab

    pop bc

jr_007_4aa5:
    ld c, d
    nop
    and l
    dec b
    db $ed
    ld c, c

jr_007_4aab:
    ld b, a
    inc d
    dec b
    di
    ld c, c
    ld d, b
    ld [$db07], sp
    ld c, d
    nop
    and l
    ld a, [hl+]
    ld de, $1229
    dec hl

jr_007_4abc:
    ld d, b
    ld [$db07], sp
    ld c, d
    nop
    and l
    dec b
    di
    ld c, c
    ld d, b
    ld [$db07], sp
    ld c, d
    ld c, $09
    inc b
    rst RST_20
    ld c, d
    inc h
    add hl, bc
    ld b, a
    jr jr_007_4b01

    inc hl
    ld b, a
    jr jr_007_4ae0

    rst RST_20
    ld c, d
    ld c, c
    ld [bc], a
    inc l
    jr nz, jr_007_4b0a

jr_007_4ae0:
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
    jr jr_007_4af2

    add hl, hl

jr_007_4af2:
    rst RST_38
    jr nc, jr_007_4aa5

    ld c, c
    inc bc
    inc l
    rra
    add hl, hl
    rra
    dec hl
    dec h
    rlca
    inc d
    ld c, e
    dec h

jr_007_4b01:
    ld [$4b24], sp
    dec h
    add hl, bc
    ld e, l
    ld c, e
    ld c, $0e

jr_007_4b0a:
    inc b
    inc [hl]
    ld c, e
    inc l
    inc hl
    inc h
    ld c, $07
    inc [hl]
    ld c, e
    ld c, $04
    inc b
    ld a, $4b
    inc h
    inc b
    ld b, a
    jr jr_007_4b4a

    inc hl
    ld b, a
    jr jr_007_4b29

    ld a, $4b
    ld c, $09
    inc b
    ld d, c
    ld c, e

jr_007_4b29:
    inc h
    add hl, bc
    ld b, a
    jr jr_007_4b5a

    inc hl
    ld b, a
    jr jr_007_4b39

    ld d, c
    ld c, e
    nop
    and l
    dec b
    db $ed
    ld c, c

jr_007_4b39:
    ld d, b
    add hl, bc
    rlca
    ld l, l
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

jr_007_4b4a:
    inc de
    dec hl
    ld d, b
    add hl, bc
    rlca
    ld l, l
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

jr_007_4b5a:
    rlca
    ld l, l
    ld c, e
    ld c, $0c
    inc b
    ld a, c
    ld c, e
    inc h
    inc c
    ld b, a
    jr jr_007_4b93

    inc hl
    ld b, a

jr_007_4b69:
    jr jr_007_4b72

    ld a, c
    ld c, e
    ld c, c
    inc bc
    inc l
    jr nz, @+$2c

jr_007_4b72:
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
    jr jr_007_4b84

    add hl, hl

jr_007_4b84:
    rst RST_38
    ld [$859d], sp

jr_007_4b88:
    ld c, c
    ld a, $16
    ld bc, $09ff

jr_007_4b8e:
    sbc l
    add hl, bc
    ld h, c
    inc a
    ld [hl+], a

jr_007_4b93:
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
    add l
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
    jr nc, jr_007_4b69

    dec b
    ld c, $5f
    inc bc
    cp e
    ld c, e
    ld [hl+], a
    ld b, $3b
    inc b
    ld de, $8300
    ld a, $12
    inc h
    ld b, $ff
    ld [$ce0e], sp
    ld c, e
    jr nc, jr_007_4b88

    rlca
    ret nc

    ld c, e
    jr nc, jr_007_4b8e

    dec b
    ld c, $5f
    inc bc
    ret c

    ld c, e
    ld [hl+], a
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

jr_007_4bf8:
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
    add hl, bc
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

jr_007_4c15:
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

Case2BathroomMirrorBreak:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-mirror-break.bin", $0, $f
    ld [$2105], sp
    ld b, a
    ld a, $13
    ld a, [hl+]
    adc c
    add hl, hl
    rlca
    dec hl
    jr nc, jr_007_4bf8

    inc l
    nop
    add hl, bc
    dec b
    rst RST_38
    jr z, jr_007_4c57

    inc bc
    ld hl, $3e47
    inc de

jr_007_4c57:
    add hl, hl
    dec b
    rlca
    jr c, @+$4e

    jr z, @+$24

    inc bc
    ld hl, $3e47
    inc de
    add hl, hl
    ld [hl+], a
    dec hl
    jr nc, jr_007_4c15

    inc l
    nop
    ld b, e
    inc bc
    adc b
    ld c, h
    rst RST_38
    jr z, jr_007_4c94

    inc bc
    ld hl, $3e47
    inc de
    add hl, hl
    inc hl
    dec hl
    rlca
    ld h, [hl]
    ld c, h
    ld c, $b3
    inc bc
    ld hl, $3e47
    inc de

jr_007_4c83:
    ld [hl+], a
    or e
    rlca
    ld h, [hl]
    ld c, h
    add hl, sp
    ld [$093e], sp
    ld a, [hl]
    ld a, [hl]
    ld [bc], a
    ld a, [hl+]

jr_007_4c90:
    ld a, [hl]
    rlca
    rst RST_28
    ld c, e

jr_007_4c94:
    ld c, $b2
    inc bc
    ld hl, $3e47
    inc de
    ld [hl+], a
    or d
    rlca
    ld h, [hl]
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
    jr z, jr_007_4cf6

    inc bc
    ld hl, $3e47
    inc de
    add hl, hl
    ld b, l
    dec hl
    rlca
    ld h, [hl]
    ld c, h
    nop
    add h
    rst RST_38
    ld l, $08
    ld c, $d0
    ld c, h
    jr nc, jr_007_4c83

    ld a, c
    bit 1, h
    ld a, e
    rst RST_38
    inc l
    inc a
    inc l
    dec a
    rst RST_38
    jr nc, jr_007_4c90

    ld a, c
    ret c

    ld c, h
    rlca
    ret


    ld c, h
    inc l
    inc a
    inc l
    ld a, $ff
    ld [$e631], sp
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

jr_007_4cf6:
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
    ld [$1217], sp
    ld c, l
    ld [bc], a
    ld h, [hl]
    ld [$1916], sp
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

jr_007_4d1b:
    rst RST_38
    ld [$277a], sp
    ld c, l
    ld [$2779], sp
    ld c, l
    ld bc, $ff1b
    ld bc, $ff1c
    ld [$333d], sp

jr_007_4d2d:
    ld c, l
    ld bc, $0919
    dec a
    rst RST_38
    ld bc, $ff1a
    ld l, $01
    ld b, l
    ld [hl], h
    rst RST_38
    ld [$446d], sp
    ld c, l
    ld [bc], a

jr_007_4d40:
    dec [hl]
    add hl, bc
    ld l, l
    rst RST_38
    ld [bc], a
    ld [hl], $ff
Case2BathroomColdTapOpen:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-cold-tap-open.bin", $0, $11
    jr nc, jr_007_4d2d

    ld [$5502], sp
    ld c, l
    inc l
    ld [bc], a
    add hl, hl
    inc b
    dec hl
    add hl, bc

jr_007_4d64:
    ld [bc], a
    rst RST_38
    jr nc, @-$2a

    jr z, @-$7e

    inc bc
    ld d, l
    ld c, l
    ld [$7d05], sp
    ld c, l
    inc l

jr_007_4d72:
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

jr_007_4d81:
    add hl, hl
    add b
    ld a, [hl+]
    add c

jr_007_4d85:
    add hl, hl
    rlca
    dec hl
    rst RST_38
    ld [bc], a
    add e
    rst RST_38

jr_007_4d8c:
    jr nc, jr_007_4d64

    ld c, $a0
    inc bc
    ld d, l
    ld c, l
    ld bc, $ff16
    ld l, $00
    db $d3
    nop
    sub $ff
    jr nc, jr_007_4d72

    jr z, @-$72

    inc bc
    ld d, l
    ld c, l
    ld [hl+], a
    and e
    ld a, [hl+]
    adc l

jr_007_4da7:
    add hl, hl
    adc h
    add hl, hl
    adc [hl]
    dec hl
    ld bc, $ff82
    jr nc, jr_007_4d85

    jr z, jr_007_4d40

    inc bc
    rra
    ld c, [hl]
    inc l
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
    ld [$cb5f], sp

jr_007_4dc5:
    ld c, l
    ld bc, $09fd
    ld e, a
    rst RST_38
    ld bc, $fffe
    jr nc, jr_007_4d8c

    rlca
    ld d, l

jr_007_4dd2:
    ld c, l
    jr nc, jr_007_4da7

    ld d, h
    ld bc, $4e1f
    ld [$e502], sp
    ld c, l
    inc l
    inc bc
    ld a, [hl+]

jr_007_4de0:
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
    rra
    ld c, [hl]
    inc l
    inc bc
    ld a, [bc]
    ld [bc], a
    ld [$5201], sp
    ld c, [hl]
    ld a, [hl+]
    inc b
    dec hl
    rst RST_38
    jr nc, jr_007_4dd2

    jr z, jr_007_4d81

    inc bc
    rra
    ld c, [hl]
    ld [$1805], sp
    ld c, [hl]
    dec b
    ld c, $4e
    ld a, [hl+]
    adc c
    dec hl

jr_007_4e0d:
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
    ld c, $4e
    ld a, [hl+]
    rlca
    dec hl
    rst RST_38
    inc l
    ld a, [de]
    rst RST_38
    jr nc, jr_007_4de0

    rlca
    rra
    ld c, [hl]
    jr nc, @-$28

    ld c, $a0
    inc b
    rra
    ld c, [hl]
    rlca
    ld b, e
    ld c, c
    jr nc, jr_007_4dc5

    rlca
    rra
    ld c, [hl]
    jr nc, jr_007_4e0d

    ld d, h
    ld e, a
    rra
    ld c, [hl]
    inc l
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
    ld d, d
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
    ld [$9f82], sp
    ld c, [hl]
    ld l, $02
    or e
    ld [$a283], sp
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

    ld [$5286], sp
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
    ld [$528b], sp
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
    ld [$fc8c], sp
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


jr_007_4f05:
    nop
    ret z

    rst RST_38
    ld [bc], a
    ld a, [$2eff]
    ld [$3b78], sp
    ld c, a
    ld [$1f0d], sp
    ld c, a
    ld [$2c50], sp
    ld c, a
    ld [$340c], sp
    ld c, a
    nop
    inc b
    rst RST_38
    jr nc, jr_007_4f91

    inc l
    ld b, l
    ld [$310c], sp
    ld c, a
    jr nc, jr_007_4f05

    inc l
    ld b, h
    rst RST_38
    jr nc, jr_007_4fa6

    rlca
    ld hl, $004f
    dec b
    rst RST_38
    jr nc, @-$23

    inc l
    ld b, h
    rlca
    ld sp, $004f
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

jr_007_4f4d:
    ld [bc], a
    cp [hl]
    rst RST_38
    add hl, bc
    adc b
    dec l
    ld [hl-], a
    nop
    adc a
    ld e, h
    ld c, a
    cp $fe
    ld c, l
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
    ld [$2e82], sp
    ld d, c
    dec l
    ld [hl-], a
    nop
    adc l
    ld e, h
    ld c, a
    cp $fe
    ld c, l
    ld c, a
    add hl, bc
    adc b
    ld d, h
    ld [hl], a
    adc b
    ld c, a
    ld [$8882], sp
    ld c, a
    rlca
    ld c, l
    ld c, a
    dec l
    ld [hl-], a
    nop
    ld bc, $5022
    nop
    ld [bc], a
    ld b, c

jr_007_4f91:
    ld d, b
    nop
    dec b
    ld e, c
    ld c, c
    nop
    add hl, bc
    ld e, l
    ld d, b
    nop
    ld c, $8b
    ld c, c
    nop
    ld de, $505d
    nop
    ld [de], a
    ld e, l
    ld d, b

jr_007_4fa6:
    nop
    inc e
    ld h, b
    ld d, b
    nop
    dec e
    ld h, b
    ld d, b
    nop
    jr nz, jr_007_4f4d

    ld c, c
    nop
    ld hl, $4a65
    nop
    ld [hl+], a
    di
    ld c, d
    inc bc
    rla
    rst RST_30
    ld h, c
    nop
    ld sp, $505d
    nop
    ccf
    ld e, l
    ld d, b
    nop
    ld c, e
    ld h, h
    ld d, b
    nop
    ld e, [hl]
    ld e, l
    ld d, b
    nop
    ld h, e
    ld h, a
    ld d, b
    nop
    ld l, c
    add l
    ld c, e
    nop
    ld l, e
    ld l, d
    ld d, b
    nop
    ld l, [hl]
    ld a, d
    ld d, b
    nop
    ld [hl], b
    ld a, l
    ld d, b
    nop
    ld a, h
    sub h
    ld d, b
    nop
    add c
    sub a
    ld d, b
    ld [bc], a
    nop
    push bc
    ld d, b
    nop
    sub d
    ret z

    ld d, b
    nop
    sub [hl]
    ld e, l
    ld d, b

jr_007_4ff6:
    nop
    sbc e
    ld e, l
    ld d, b
    nop
    and b
    ld e, l
    ld d, b
    nop
    and l
    ld e, l
    ld d, b
    inc bc
    inc h
    rst RST_10
    ld d, b
    inc bc
    inc sp
    push hl
    ld d, b
    inc bc
    dec [hl]
    ld [$0350], a
    ld b, [hl]
    db $ed
    ld d, b
    inc bc
    ld c, a
    adc d
    ld h, l
    inc b
    ld a, [bc]
    rlca
    ld d, c
    inc b
    db $10
    dec hl
    ld d, c
    cp $fe
    ld l, $51
    jr nc, jr_007_4ff6

    ld [$3001], sp
    ld d, b
    inc l
    ld [bc], a
    add hl, hl
    inc b
    dec hl
    add hl, bc
    ld bc, $08ff
    ld [bc], a
    inc a
    ld d, b
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
    ld [$4f02], sp
    ld d, b
    inc l
    ld [bc], a
    add hl, hl

jr_007_504a:
    inc b
    dec hl
    add hl, bc
    ld [bc], a
    rst RST_38
    ld [$5801], sp
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [hl], $50
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

jr_007_506a:
    ld [$735f], sp
    ld d, b
    ld bc, $09fd
    ld e, a
    rst RST_38
    jr nc, jr_007_504a

    inc l
    inc bc
    ld a, [bc]
    ld e, a
    rst RST_38
    ld [bc], a
    ld de, $28ff
    dec a
    inc bc
    sub c
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
    ld [$aa78], sp
    ld d, b
    ld l, $02
    add a
    ld [$a77c], sp
    ld d, b
    ld [bc], a
    adc b
    add hl, bc
    ld a, h
    rst RST_38
    ld [bc], a
    adc c
    rst RST_38
    jr nc, @-$3f

    ld c, $a9
    inc bc
    cp e
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
    jr z, jr_007_506a

    inc b
    ld c, a
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
    ld [$e068], sp
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
    rst RST_38
    ld d, b
    jr nc, @+$4a

    inc l

jr_007_50f6:
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
    jr jr_007_512d

    add hl, de
    dec hl
    rst RST_38
    ld l, [hl]
    dec d
    ld d, c
    ld [$184d], sp
    ld d, c
    ld [$1e76], sp
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
    ld [$52a8], sp
    ld c, [hl]
    ld bc, $ff7a
    ld [bc], a
    ld h, a

jr_007_512d:
    rst RST_38
    nop
    inc l
    rst RST_38
    ld [$2e82], sp
    ld d, c
    ld [bc], a
    cp [hl]
    rst RST_38
    ld d, h
    add d
    dec [hl]
    ld d, c
    ld bc, $ffb4
    ld [bc], a
    db $e4
    rst RST_38
    ld a, $13
    ld a, [hl+]
    rla
    dec hl
    jr nc, jr_007_50f6

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
    ld b, a
    ld d, c
    ld a, $13
    ld [hl+], a
    sbc c
    rlca
    ld b, a

jr_007_5168:
    ld d, c
    ld a, $13
    ld [hl+], a
    sbc h
    rlca
    ld b, a
    ld d, c
    ld c, $ad
    inc bc
    cp c
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
    cp c
    ld d, c
    ld a, $13
    ld [hl+], a
    xor l
    rlca
    ld h, [hl]
    ld c, h
    ld a, $13
    ld [hl+], a
    or b
    rlca
    ld a, c
    ld d, c
    ld a, $13
    add hl, hl
    ld b, e
    dec hl
    ld c, $65
    inc bc
    xor d
    ld d, c
    ld [hl+], a
    ld h, l
    ld a, $09
    ld [bc], a
    rra
    rlca
    rst RST_28
    ld c, e
    ld a, $13
    add hl, hl
    ld b, d
    dec hl
    rlca
    and e
    ld d, c

jr_007_51b9:
    jr nc, jr_007_5168

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
    ld [$e878], sp
    ld d, c
    ld [bc], a
    sub [hl]
    rst RST_38
    ld d, h
    add b
    push hl
    ld d, c

jr_007_51ec:
    ld [$e57e], sp
    ld d, c
    ld l, $02
    sub e
    ld [bc], a

jr_007_51f4:
    sub a
    rst RST_38
    ld [bc], a
    add [hl]
    rst RST_38
    ld d, h
    ld a, b
    sbc e
    ld d, b
    jr nc, @-$3f

    ld c, $a9
    inc bc
    ld a, a
    ld d, d
    rlca
    or c
    ld d, b
    jr nc, jr_007_51b9

    ld c, $aa
    inc bc

jr_007_520c:
    ld a, a
    ld d, d
    inc l
    ld [bc], a
    ld [hl+], a
    xor d
    ld de, $0351
    ld [hl+], a
    ld d, d
    ld [$227f], sp

jr_007_521a:
    ld d, d
    inc d
    ld d, c
    inc bc
    ld [hl+], a
    ld d, d
    add hl, hl

jr_007_5221:
    ld c, l
    add hl, hl
    sub [hl]
    add hl, hl
    sub a
    ld a, [hl+]
    sub l
    dec hl
    rst RST_38

jr_007_522a:
    jr nc, @-$4e

    ld c, $ab
    inc bc

jr_007_522f:
    ld a, a
    ld d, d
    inc l
    ld [bc], a
    ld [hl+], a
    xor e
    ld de, $0352
    ld b, b
    ld d, d
    ld [$407e], sp
    ld d, d
    add hl, hl
    ld c, [hl]

jr_007_5240:
    add hl, hl
    sbc c
    add hl, hl
    sbc d
    ld a, [hl+]
    sbc b
    dec hl
    rst RST_38
    jr nc, jr_007_521a

    jr z, jr_007_51ec

    inc bc
    ld b, a
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
    jr nc, jr_007_522f

    jr z, @-$5b

    inc bc
    ld a, a
    ld d, d
    inc l
    ld [bc], a
    ld [hl+], a
    or c
    add hl, hl

jr_007_5265:
    and e
    ld a, [hl+]
    and d
    add hl, hl
    and c

jr_007_526a:
    dec hl

jr_007_526b:
    rst RST_38
    jr nc, jr_007_522a

    jr z, jr_007_51f4

    inc bc
    ld a, a
    ld d, d
    inc l
    ld [bc], a
    inc h
    sub [hl]
    add hl, hl
    add h
    ld a, [hl+]

jr_007_527a:
    add l
    add hl, hl
    adc d
    dec hl
    rst RST_38
    inc l
    add hl, de

jr_007_5281:
    rst RST_38

jr_007_5282:
    jr nc, jr_007_5240

    jr z, jr_007_520c

    inc bc
    ld a, a
    ld d, d
    inc l
    ld [bc], a
    inc h
    sbc b
    add hl, hl
    add [hl]
    ld a, [hl+]
    add a
    add hl, hl
    adc e
    dec hl
    rst RST_38
    jr nc, jr_007_526b

    jr z, jr_007_5221

    inc bc

jr_007_529a:
    ld a, a
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
    dec c
    ld d, e
    jr nc, jr_007_526a

    ld c, $a9
    inc b
    dec c

jr_007_52af:
    ld d, e
    rlca
    cp e
    ld d, b
    jr nc, jr_007_5265

    ld c, $aa
    inc b

jr_007_52b8:
    dec c
    ld d, e
    inc l
    inc bc
    inc h
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
    jr nc, jr_007_527a

    ld c, $ab
    inc b
    dec c

jr_007_52ce:
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
    jr nc, jr_007_52af

    jr z, jr_007_5281

    inc b
    ld b, a
    ld c, a
    rlca
    call Call_000_3050
    call nc, $a328
    inc b
    dec c
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

jr_007_52f9:
    rst RST_38
    jr nc, jr_007_52b8

    jr z, jr_007_5282

    inc b
    dec c
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
    jr nc, jr_007_52ce

    jr z, jr_007_529a

    inc b
    dec c
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
    jr nc, jr_007_52f9

    jr z, jr_007_52af

    inc b
    dec c
    ld d, e
    inc l
    inc bc
    ld [hl+], a
    sbc e
    ld a, [hl+]
    adc b
    dec hl
    rst RST_38
    ld c, h
    ld d, e
    ld d, h
    ld d, e
    ld e, h
    ld d, e
    ld h, h
    ld d, e
    ld l, h
    ld d, e
    ld [hl], h
    ld d, e
    ld a, h
    ld d, e
    add h
    ld d, e
    adc h
    ld d, e
    sub h
    ld d, e
    and [hl]
    ld d, e
    xor [hl]
    ld d, e
    or [hl]
    ld d, e
    cp [hl]
    ld d, e
    inc bc
    ld d, l
    pop bc
    ld d, e
    rrca
    ld d, l
    call nz, Call_000_0353
    ld d, l
    pop bc
    ld d, e
    rrca
    ld d, l
    rst RST_00
    ld d, e
    call nc, $c153
    ld d, e
    db $e3
    ld d, e
    rst RST_28
    ld d, e
    dec b
    ld d, h
    pop bc
    ld d, e
    rrca
    ld d, l
    rrca
    ld d, h
    ld [hl+], a
    ld d, h
    pop bc
    ld d, e
    rrca
    ld d, l
    inc l
    ld d, h
    inc bc
    ld d, l
    pop bc
    ld d, e
    rrca
    ld d, l
    scf
    ld d, h
    ld b, e
    ld d, h
    pop bc
    ld d, e
    ld c, l
    ld d, h
    ld e, b
    ld d, h
    ld h, d
    ld d, h
    pop bc
    ld d, e
    rrca
    ld d, l
    ld l, d
    ld d, h
    inc bc
    ld d, l
    pop bc
    ld d, e
    rrca
    ld d, l
    ld l, l
    ld d, h
    ld a, b
    ld d, h
    pop bc
    ld d, e
    add d
    ld d, h
    add l
    ld d, h
    adc b
    ld d, h
    sub e
    ld d, h
    and h
    ld d, h
    and a
    ld d, h
    xor d
    ld d, h
    inc bc
    ld d, l
    pop bc
    ld d, e
    rrca
    ld d, l
    xor l
    ld d, h
    inc bc
    ld d, l
    pop bc
    ld d, e
    rrca
    ld d, l
    or b
    ld d, h
    ret nc

    ld d, h
    pop bc
    ld d, e
    ei
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
    ld [$d148], sp
    ld d, e
    ld l, $01
    ld d, a
    ld [bc], a
    ld [$01ff], sp
    ld e, c
    rst RST_38
    dec e
    dec bc
    ld d, l
    ld d, h
    ld c, b
    jr jr_007_5430

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
    ld e, $55
    inc l
    inc bc
    add hl, hl
    dec sp
    dec hl
    rra
    jr c, @+$01

    ld [$ff64], sp
    ld d, e
    ld [$0263], sp
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
    dec bc
    ld d, l
    ld d, h
    ld e, e
    jr @+$57

    rlca
    ld b, $55
    ld [$1f66], sp
    ld d, h
    ld [$0265], sp
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
    dec bc
    ld d, l
    ld d, h
    ld e, h
    jr jr_007_547e

    rlca
    ld b, $55
    add hl, sp
    inc bc
    ld a, $0a

jr_007_5430:
    ld a, [hl]
    ld a, [hl]
    ld bc, $7ebd
    ld a, [hl-]
    rst RST_38
    ld l, $01
    cp [hl]
    ld [$0257], sp
    ld d, l
    ld bc, $09bf
    ld d, a
    rst RST_38

jr_007_5443:
    dec e
    dec bc
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
    ld e, $55
    inc l
    inc bc
    inc h
    ld [hl], l
    rra
    jr c, @+$01

    ld l, $01
    pop bc
    ld [$0258], sp
    ld d, l
    ld bc, $ffc0
    dec e
    dec bc

Call_007_5464:
    ld d, l
    add hl, bc
    ld e, b
    rlca
    ld b, $55
    ld [bc], a
    ld b, d
    rst RST_38
    ld c, $a7
    inc bc
    ld [hl], l
    ld d, h
    ld [bc], a
    ld b, e
    rst RST_38
    ld [bc], a
    ld b, h
    rst RST_38
    dec e
    dec bc
    ld d, l
    ld c, b
    inc l
    ld [bc], a

jr_007_547e:
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
    ld e, $55
    inc l
    inc bc
    inc h
    xor h
    jr c, jr_007_54b1

    rst RST_38
    jr nc, jr_007_5443

    ld c, $a7
    inc bc
    and c
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

jr_007_54b1:
    db $10
    call $0854
    ld a, $cd
    ld d, h
    ld [$cd53], sp
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
    dec bc
    ld d, l
    ld l, $48
    inc l
    ld [bc], a
    daa
    ld [$02a0], sp
    ld d, l
    add hl, bc
    and b
    ld d, h
    db $10
    ldh a, [c]
    ld d, h
    ld [$023e], sp
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
    ld [$0206], sp
    ld d, l
    ld [bc], a
    jr jr_007_5502

    ld b, $ff
    ld c, b
    ld e, e
    ld e, $55
    rlca
    inc de
    ld d, l

jr_007_5502:
    rst RST_38
    dec e
    dec bc
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
    ld e, $55
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
    add hl, hl
    ld d, l
    ld sp, $3955
    ld d, l
    ld b, c
    ld d, l
    ld c, c
    ld d, l
    ld h, d
    ld d, l
    ld [hl], h
    ld d, l
    ld a, [hl]
    ld d, l
    ld c, h
    ld d, l
    ld l, c
    ld d, l
    ld a, e
    ld d, l
    add l
    ld d, l
    ld c, a
    ld d, l
    ld l, c
    ld d, l
    ld a, e
    ld d, l
    add l
    ld d, l
    ld d, d
    ld d, l
    ld l, c
    ld d, l
    ld a, e
    ld d, l
    add l
    ld d, l
    ld [bc], a
    cp b
    rst RST_38
    ld [bc], a
    db $fc
    rst RST_38
    ld bc, $ffc9
    ld l, $00
    ret


    ld [$5c8d], sp
    ld d, l
    nop
    jp z, Jump_000_3eff

    ld [$cb00], sp
    ld e, d
    rst RST_38
    ld [$6982], sp
    ld d, l
    ld [bc], a
    cp [hl]
    rst RST_38
    ld c, b
    dec e
    ld [hl], c
    ld d, l
    inc l
    ld [bc], a
    daa
    rst RST_38
    inc l
    add hl, de
    rst RST_38
    ld [$7b82], sp
    ld d, l
    ld [bc], a
    cp [hl]
    rst RST_38
    nop
    dec l
    rst RST_38
    ld [$8582], sp
    ld d, l
    ld [bc], a
    cp [hl]
    rst RST_38
    ld c, b
    dec e
    adc h
    ld d, l
    inc l
    ld a, [de]
    rst RST_38
    inc l
    inc bc
    rra
    jr c, @+$01

    ld c, c
    ld d, [hl]
    ld d, c
    ld d, [hl]
    ld e, c
    ld d, [hl]
    ld h, c
    ld d, [hl]
    ld l, c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld a, c
    ld d, [hl]
    add c
    ld d, [hl]
    adc c
    ld d, [hl]
    sub c
    ld d, [hl]
    sbc c
    ld d, [hl]
    and c
    ld d, [hl]
    xor c
    ld d, [hl]
    or c
    ld d, [hl]
    cp c
    ld d, [hl]
    pop bc
    ld d, [hl]
    ret


    ld d, [hl]
    pop de
    ld d, [hl]
    db $dd
    ld d, [hl]
    push hl
    ld d, [hl]
    db $ed
    ld d, [hl]
    push af
    ld d, [hl]
    db $fd
    ld d, [hl]
    dec b
    ld d, a
    rla
    ld d, a
    rra
    ld d, a
    daa
    ld d, a
    inc sp
    ld d, a
    dec sp
    ld d, a
    ld b, e
    ld d, a
    ld c, e
    ld d, a
    ld e, l
    ld d, a
    ld h, l
    ld d, a
    ld l, l
    ld d, a
    ld [hl], l
    ld d, a
    ld a, l
    ld d, a
    add l
    ld d, a
    sub c
    ld d, a
    sbc c
    ld d, a
    and c
    ld d, a
    xor c
    ld d, a
    or c
    ld d, a
    cp c
    ld d, a
    pop bc
    ld d, a
    ret


    ld d, a
    pop de
    ld d, a
    reti


    ld d, a
    pop hl
    ld d, a
    db $ed
    ld d, a
    push af
    ld d, a
    db $fd
    ld d, a
    dec b
    ld e, b
    dec c
    ld e, b
    dec d
    ld e, b
    dec e
    ld e, b
    dec h
    ld e, b
    dec l
    ld e, b
    dec [hl]
    ld e, b
    dec a
    ld e, b
    ld b, l
    ld e, b
    ld d, c
    ld e, b
    ld e, c
    ld e, b
    ld h, c
    ld e, b
    ld l, c
    ld e, b
    ld [hl], c
    ld e, b
    ld a, c
    ld e, b
    add c
    ld e, b
    adc c
    ld e, b
    sub c
    ld e, b
    sbc l
    ld e, b
    and l
    ld e, b
    or a
    ld e, b
    cp a
    ld e, b
    rst RST_00
    ld e, b
    rst RST_08
    ld e, b
    rst RST_10
    ld e, b
    db $e3
    ld e, b
    db $eb
    ld e, b
    di
    ld e, b
    ei
    ld e, b
    rlca
    ld e, c
    inc de
    ld e, c
    dec de
    ld e, c
    inc hl
    ld e, c
    dec hl
    ld e, c
    inc sp
    ld e, c
    dec sp
    ld e, c
    ld b, e
    ld e, c
    ld c, e
    ld e, c
    ld d, e
    ld e, c
    ld e, e
    ld e, c
    ld h, e
    ld e, c
    ld l, e
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld l, e
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld l, [hl]
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld [hl], c
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld [hl], h
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld [hl], a
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    dw Case2BathroomTowelTake
    cpl
    ld h, b
    ld [hl-], a
    ld h, b
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld e, $61
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld l, e
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld l, e
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld l, e
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld l, e
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld hl, $7f61
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    inc l
    ld h, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    cpl
    ld h, c
    ld a, a
    ld e, c
    ld [hl], $66
    ld c, d
    ld h, c
    ld e, l
    ld h, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ld h, b
    ld h, c
    ld l, e
    ld h, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld l, [hl]
    ld h, c
    add b
    ld h, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    adc h
    ld h, c
    sub a
    ld h, c
    and b
    ld h, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    and e
    ld h, c
    xor [hl]
    ld h, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    or d
    ld h, c
    cp l
    ld h, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nz

    ld h, c
    bit 4, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    adc $61
    reti


    ld h, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    call c, $e761
    ld h, c
    ld l, c
    ld h, l
    ld a, d
    ld e, c
    ld e, b
    ld h, [hl]
    ld [$e061], a
    ld h, [hl]
    rst RST_30
    ld h, c
    cp $62
    ldh [$ff66], a
    dec b
    ld h, d
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    jr jr_007_5781

    jr nz, jr_007_5783

    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    add hl, sp
    ld h, d
    ld b, l
    ld h, d
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ld d, [hl]
    ld h, d
    ld h, c
    ld h, d
    ld l, d
    ld h, d
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ld a, h
    ld h, d
    and [hl]
    ld h, d
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    cp b
    ld h, d
    jp c, Jump_007_7f62

    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    db $dd
    ld h, d
    ld l, c
    ld h, l
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    add sp, $62
    ldh [$ff66], a
    ld bc, $fe63
    ld h, d
    ldh [$ff66], a
    ld a, [de]
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    dec e
    ld h, e
    ld l, e
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld l, e
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld l, e
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    jr z, jr_007_57e2

    ld a, a
    ld e, c

jr_007_5781:
    ld e, b
    ld h, [hl]

jr_007_5783:
    ret nc

    ld h, [hl]
    jr z, jr_007_57ea

    ld [hl-], a
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    dec sp
    ld h, e
    ld b, h
    ld h, e
    ld [hl-], a
    ld h, b
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld b, a
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld b, a
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld b, a
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld b, a
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld b, a
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld b, a
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld c, d
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ld c, l
    ld h, e
    ld e, b
    ld h, e
    ld [hl-], a
    ld h, b
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld e, e
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld e, [hl]

jr_007_57e2:
    ld h, e
    db $d3
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

jr_007_57ea:
    ld h, [hl]
    ldh [c], a
    ld h, e
    db $eb
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    or $63
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld sp, hl
    ld h, e
    ld [hl-], a
    ld h, b
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    db $fc
    ld h, e
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ld b, $64
    ld de, $7f64
    ld e, c
    ld e, b
    ld h, [hl]
    inc d
    ld h, h
    rra
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ld [hl+], a
    ld h, h
    dec l
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    jr nc, jr_007_5889

    dec sp
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld a, $64
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld b, c
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld e, b
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld e, e
    ld h, h
    ld [hl], e
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld a, a
    ld h, h
    adc b
    ld h, h
    ld [hl-], a
    ld h, b
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld l, e
    ld e, c
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    adc e
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    adc [hl]
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    sub c
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    sub h
    ld h, h
    ld [hl-], a
    ld h, b
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    sub a
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    sbc d
    ld h, h

jr_007_5889:
    and l
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    or h
    ld h, h
    cp a
    ld h, h
    db $fc
    ld h, h
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    dec bc
    ld h, l
    inc d
    ld h, l
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    rla
    ld h, l
    ld h, $65
    ld l, c
    ld h, l
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    dec hl
    ld h, l
    db $e3
    ld h, [hl]
    add [hl]
    ld e, h
    cp $62
    ldh [$ff66], a
    ld [hl], $65
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ld b, b
    ld h, l
    ld d, d
    ld h, l
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, b
    ld h, l
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld h, e
    ld h, l
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld l, c
    ld h, l
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ld l, l
    ld h, l
    ldh [$ff66], a
    ld a, d
    ld h, l
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    jr nz, jr_007_594f

    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    ld a, l
    ld h, l
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    add b
    ld h, l
    adc d
    ld h, l
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    and c
    ld h, l
    ldh [$ff66], a
    xor c
    ld h, l
    and $65
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    db $f4
    ld h, l
    db $fd
    ld h, l
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    nop
    ld h, [hl]
    dec bc
    ld h, [hl]
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ld c, $66
    add hl, de
    ld h, [hl]
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    ret nc

    ld h, [hl]
    inc e
    ld h, [hl]
    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    inc e
    ld h, [hl]
    jr nc, jr_007_599b

    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    inc sp
    ld h, [hl]
    jr nc, jr_007_59a3

    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    inc sp
    ld h, [hl]
    jr nc, jr_007_59ab

    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    inc sp
    ld h, [hl]
    jr nc, jr_007_59b3

    ld a, a
    ld e, c

jr_007_594f:
    ld e, b
    ld h, [hl]
    inc sp
    ld h, [hl]
    jr nc, @+$68

    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    inc sp
    ld h, [hl]
    jr nc, @+$68

    ld a, a
    ld e, c
    ld e, b
    ld h, [hl]
    inc sp
    ld h, [hl]
    cpl
    ld h, c
    ld a, a
    ld e, c
    ld [hl], $66
    dec e
    ld h, [hl]
    ld bc, $ff65
    ld bc, $ff7f
    ld bc, $ff78
    nop
    push af
    rst RST_38
    nop
    jr @+$01

    jr z, jr_007_598b

    inc bc
    rst RST_30
    ld h, c
    dec l
    ld [hl-], a
    nop
    dec b
    add hl, bc
    ld e, d
    nop
    jr jr_007_5998

    ld e, d
    nop
    ld a, [de]

jr_007_598b:
    rla
    ld e, d
    nop
    dec de
    rla
    ld e, d
    nop
    rra
    ld a, [hl+]
    ld e, e
    nop
    ld b, e
    or h

jr_007_5998:
    ld e, l
    nop
    ld b, h

jr_007_599b:
    rst RST_28
    ld e, l
    nop
    ld b, l
    rlca
    ld e, [hl]
    nop
    ld b, [hl]

jr_007_59a3:
    rst RST_28
    ld e, l
    nop
    ld d, b
    sub h
    ld e, [hl]
    nop
    ld [hl], b

jr_007_59ab:
    rst RST_38
    ld e, h
    nop
    ld a, d
    inc [hl]
    ld e, [hl]
    nop
    add e

jr_007_59b3:
    ld a, l
    ld e, d
    nop
    sub e
    rst RST_08
    ld e, h
    ld bc, $000c
    ld e, e
    ld bc, $7003
    ld e, l
    ld bc, $7004
    ld e, l
    ld [bc], a
    nop
    or l
    ld e, h
    inc bc
    ld c, e
    db $fd
    ld e, d
    inc b
    add hl, bc
    ld e, $5d
    inc b
    ld a, [bc]
    ld b, c
    ld e, l
    inc b
    ld de, $5d29
    dec b
    ld b, a
    dec c
    ld e, l
    dec b
    ld e, e
    ld a, [hl]
    ld e, l
    dec b
    ld h, [hl]
    sbc b
    ld e, l
    nop
    and [hl]
    call z, Call_000_005b
    ld d, $cf
    ld e, [hl]
    nop
    rla
    rst RST_08
    ld e, [hl]
    nop
    scf
    inc h
    ld e, a
    nop
    inc a
    ld h, [hl]
    ld e, a
    nop
    ld c, a
    add a
    ld e, a
    nop
    ld d, l
    db $e4
    ld e, a
    ld [bc], a
    inc bc
    ld a, e
    ld h, [hl]
    cp $fe
    ld [de], a
    ld h, b
    ld d, [hl]
    dec b
    db $e3

jr_007_5a0c:
    ld h, [hl]
    nop
    ld [hl+], a
    rst RST_38
    ld b, [hl]
    inc b
    ld d, c
    ld e, d
    rlca
    db $e3
    ld h, [hl]
    ld b, [hl]
    rlca
    ld [hl-], a
    ld e, d
    ld b, [hl]
    ld e, $54
    ld e, d
    ld b, [hl]
    inc h
    ld e, e
    ld e, d
    ld b, [hl]
    ld c, c

jr_007_5a25:
    ld h, d
    ld e, d
    ld b, [hl]
    ld b, a
    ld b, e
    ld e, d
    ld b, [hl]
    inc b
    ld d, c
    ld e, d
    rlca
    db $e3
    ld h, [hl]
    ld [$400e], sp
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
    ld [$4c0e], sp
    ld e, d
    jr nc, @-$41

    inc l
    rla
    rst RST_38
    jr nc, jr_007_5a0c

    inc l
    rla
    rst RST_38
    ld a, d
    ld d, a
    rst RST_38
    ld d, h
    ld c, h
    db $e3
    ld h, [hl]
    rlca
    ld h, d
    ld e, d
    ld d, h
    ld l, b
    db $e3
    ld h, [hl]
    rlca
    ld h, d
    ld e, d
    ld [$770e], sp
    ld e, d
    jr nc, jr_007_5a25

    dec b
    ld c, $5f
    inc bc
    ld [hl], b
    ld e, d
    rrca
    ld b, $3b
    dec b
    ld de, $aa7d
    ld b, [hl]
    ld [$302e], sp
    cp [hl]
    rlca
    ld l, b
    ld e, d
    ld b, [hl]
    inc c
    sbc h
    ld e, d
    ld b, [hl]
    ld d, c
    xor a
    ld e, d
    ld b, [hl]
    ld d, d
    cp l
    ld e, d
    ld b, [hl]
    ld e, $db

jr_007_5a8c:
    ld e, d
    ld b, [hl]
    inc h
    ldh [c], a
    ld e, d
    ld b, [hl]
    ld c, c
    jp hl


    ld e, d
    ld b, [hl]
    ld b, a
    sub $5a
    rlca
    db $e3
    ld h, [hl]
    ld [$ac78], sp
    ld e, d
    ld [$a97d], sp
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
    rst RST_08
    ld e, d
    ld l, $02
    sub e
    ld [bc], a
    sub h
    add hl, bc
    ld a, a
    rlca
    ld h, e
    ld e, h
    ld d, h
    ld a, b
    rst RST_08
    ld e, d
    ld l, $02
    sbc b
    dec b
    ld h, a
    ld e, h
    ld bc, $2937
    ld c, e
    dec hl
    add hl, bc
    ld a, [hl]
    rst RST_38
    ld a, $09
    ld bc, $0754
    rst RST_28
    ld c, e
    jr nc, jr_007_5a8c

    inc l
    rla
    rst RST_38
    ld [$e94c], sp
    ld e, d
    rlca
    db $e3
    ld h, [hl]
    ld [$e968], sp
    ld e, d
    rlca
    db $e3
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
    db $e3
    ld h, [hl]
    ld b, [hl]
    ld c, $0b
    ld e, e
    ld b, [hl]
    ld e, e
    inc d
    ld e, e
    rlca
    db $e3
    ld h, [hl]
    ld [$e33e], sp
    ld h, [hl]
    add hl, hl
    ld d, h
    rlca
    ld a, [de]
    ld e, e
    ld [$e33e], sp
    ld h, [hl]
    add hl, hl
    ld h, [hl]
    dec hl
    ld bc, $0922
    ld a, $09
    inc [hl]
    dec b
    dec h
    ld e, e
    rst RST_38
    dec [hl]
    add hl, de
    inc sp
    ld [hl], $06
    ld b, [hl]
    ld b, d
    dec [hl]
    ld e, e
    ld b, [hl]
    rla
    dec [hl]
    ld e, e
    rlca
    db $e3
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
    jr nz, jr_007_5b70

    dec [hl]
    add hl, de
    inc sp
    ld b, [hl]
    rla
    ld c, l
    ld e, e
    dec de
    ld [hl], $29
    jr nz, jr_007_5b7c

    dec h
    ld [$5b8b], sp
    dec h
    add hl, bc
    sbc e
    ld e, e
    dec h
    ld a, [bc]
    xor e
    ld e, e
    ld c, $04
    inc b
    ld h, a
    ld e, e
    dec b
    jp nz, $245b

    inc b
    dec b
    rst RST_00
    ld e, e
    ld a, [hl+]
    ld de, $1229
    dec hl
    ld b, a

jr_007_5b70:
    jr @+$2c

    ld [de], a
    add hl, hl

jr_007_5b74:
    inc de
    dec hl
    ld b, a
    jr @+$2c

    inc de
    add hl, hl
    inc d

jr_007_5b7c:
    dec hl
    ld b, a
    jr jr_007_5bc9

    inc b
    inc l
    jr nz, jr_007_5bae

    jr nz, jr_007_5bb1

    ld b, d
    ld [bc], a
    ld [hl+], a
    ld c, $ff
    ld c, $09
    inc b
    sub l
    ld e, e
    dec b
    jp nz, $245b

    add hl, bc
    dec b
    rst RST_00
    ld e, e
    rlca
    ld [hl], c
    ld e, e
    ld c, $0c
    inc b
    and l
    ld e, e
    dec b
    jp nz, $245b

    inc c
    dec b
    rst RST_00
    ld e, e
    rlca
    ld a, b
    ld e, e
    add hl, hl
    jr nz, jr_007_5bd9

jr_007_5bae:
    ld c, $0e
    inc b

jr_007_5bb1:
    cp b
    ld e, e
    dec b
    jp nz, $245b

    ld c, $2a
    jr nz, jr_007_5be6

    ld b, d
    ld [bc], a
    ld [hl+], a
    ld c, $01
    add hl, hl
    rst RST_38
    jr nc, jr_007_5b74

    inc l
    inc hl
    ld b, $00
    and l

jr_007_5bc9:
    ld d, b
    ld a, [bc]
    ld b, $46
    dec b
    rlca
    ld e, h
    ld b, [hl]
    ld l, $6d
    ld e, h
    ld b, [hl]
    ld c, a
    ld [hl], d
    ld e, h
    ld b, [hl]

jr_007_5bd9:
    ld d, e
    add b
    ld e, h
    ld b, [hl]
    inc sp
    ld a, [bc]
    ld e, h
    ld b, [hl]
    dec [hl]
    ld a, [de]
    ld e, h
    ld b, [hl]
    scf

jr_007_5be6:
    dec e
    ld e, h
    ld b, [hl]
    ld e, $9d
    ld e, h
    ld b, [hl]
    inc h
    xor h
    ld e, h
    ld b, [hl]
    ld c, c
    or b
    ld e, h
    ld b, [hl]
    ld a, [hl-]
    inc l
    ld e, h
    ld b, [hl]
    ld c, d
    ld h, c
    ld e, h
    ld b, [hl]
    ld b, a
    add e
    ld e, h
    ld b, [hl]
    ld b, [hl]
    add [hl]
    ld e, h
    rlca
    db $e3
    ld h, [hl]
    nop
    inc hl
    rst RST_38
    ld [$1470], sp
    ld e, h
    ld [bc], a
    ld h, c
    dec b
    ld h, a
    ld e, h
    rst RST_38
    ld [bc], a
    ld h, d
    dec b
    ld h, a
    ld e, h
    rst RST_38
    ld [bc], a
    ld h, l
    rst RST_38
    ld [$4f0d], sp
    ld e, h
    ld [$5550], sp
    ld e, h
    ld [$5b78], sp
    ld e, h
    ld [bc], a
    ld l, d
    rst RST_38
    ld [$490c], sp
    ld e, h
    ld [$4f0d], sp
    ld e, h
    ld [$5550], sp
    ld e, h
    ld [$4178], sp
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
    add a
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
    ld h, a
    ld e, h
    rst RST_38
    dec [hl]
    add hl, de
    inc sp
    dec de
    ld [hl], $06
    ld bc, $07d9
    ld h, e
    ld e, h
    ld [$7956], sp
    ld e, h
    ld [bc], a
    dec de
    rst RST_38
    ld [bc], a
    dec e
    add hl, bc
    adc c
    rlca
    ld h, e
    ld e, h
    ld [bc], a
    jr nz, @+$01

    ld [bc], a
    db $ec
    rst RST_38
    ld l, $00
    cp l
    ld de, $0446
    rst RST_38
    ld d, b
    jr nc, jr_007_5cd8

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
    db $e3
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
    db $e3
    ld h, [hl]
    ld l, $45
    rlca
    and h
    ld e, h
    ld b, [hl]
    ld a, [hl-]
    ret z

    ld e, h
    ld b, [hl]
    jr c, jr_007_5d2e

    ld h, [hl]
    ld b, [hl]
    scf
    ld [hl], d
    ld h, [hl]
    ld b, [hl]
    ld b, b
    ld [hl], d
    ld h, [hl]
    rlca
    db $e3
    ld h, [hl]
    ld d, h
    ld a, b
    ld [hl], d
    ld h, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld b, [hl]
    ld b, a
    sub $5c
    rlca
    db $e3
    ld h, [hl]
    ld l, $02

jr_007_5cd8:
    and $3e
    nop
    dec b
    dec h
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
    ld b, $5d
    rlca
    db $e3
    ld h, [hl]
    ld d, h
    ld l, b
    sub l
    ld e, l
    ld bc, $ffb7
    ld b, [hl]
    inc h
    inc d
    ld e, l
    rlca
    db $e3
    ld h, [hl]
    ld [$1b43], sp
    ld e, l
    ld bc, $ff3b
    ld bc, $ff3c
    ld b, [hl]
    ld [bc], a
    dec h
    ld e, l
    rlca
    db $e3
    ld h, [hl]
    ld d, d
    add hl, bc
    ld c, e
    rst RST_38
    ld b, [hl]
    inc h
    jr nc, jr_007_5d8a

    rlca

jr_007_5d2e:
    db $e3
    ld h, [hl]
    ld d, h
    ld l, b
    sub l
    ld e, l
    ld [$3e75], sp
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
    ld c, b
    ld e, l
    rlca
    db $e3
    ld h, [hl]
    ld l, [hl]
    ld d, [hl]
    ld e, l
    ld d, h
    ld c, [hl]
    ld e, c
    ld e, l
    ld [$59a8], sp
    ld e, l
    ld bc, $ff4c
    inc l
    ld b, a
    rst RST_38
    ld [hl], d
    inc b
    ld l, l
    ld e, l
    ld bc, $4283
    ld a, [bc]
    ld d, h
    ld c, l
    ld h, [hl]
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
    ld bc, $5d77
    rlca
    db $e3
    ld h, [hl]
    ld e, h
    inc b
    db $e3
    ld h, [hl]
    ld [bc], a
    ld [de], a
    rst RST_38
    ld d, [hl]
    inc h
    db $e3
    ld h, [hl]
    ld [$e35d], sp
    ld h, [hl]
    ld d, h
    ld l, b
    sub l
    ld e, l

jr_007_5d8a:
    ld l, $01
    jp c, Jump_000_153e

    ld hl, $db01
    add hl, bc
    ld e, l
    rst RST_38
    ld bc, $ff8d
    ld d, [hl]
    inc h
    and b
    ld h, b
    ld [$e36b], sp
    ld h, [hl]
    ld d, h
    ld l, b
    sub l
    ld e, l
    ld l, $01
    jp c, Jump_007_4629

    dec hl

jr_007_5daa:
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
    rst RST_08
    ld e, l
    ld b, [hl]
    inc h

jr_007_5dba:
    ld hl, $465e
    ld c, c
    dec h
    ld e, [hl]
    ld b, [hl]
    ld e, $1a
    ld e, [hl]
    ld b, [hl]
    nop
    call nc, Call_007_465d
    ld bc, $5de5
    rlca
    db $e3
    ld h, [hl]
    jr nc, jr_007_5daa

    inc l
    rla
    rst RST_38
    ld l, b
    inc b
    call c, $2e5f
    ld [bc], a
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

jr_007_5de6:
    inc b
    db $e3
    ld h, [hl]
    ld l, $02
    ld [hl], a
    ld [bc], a
    ld [hl], d
    rst RST_38
    ld b, [hl]
    ld b, a
    ld [bc], a
    ld e, [hl]
    ld b, [hl]
    inc h
    ld hl, $465e
    ld c, c
    dec h
    ld e, [hl]
    ld b, [hl]
    ld e, $1a
    ld e, [hl]
    rlca
    db $e3
    ld h, [hl]
    jr nc, jr_007_5dba

    inc l
    rla
    rst RST_38
    ld b, [hl]
    ld b, a
    cpl
    ld e, [hl]
    ld b, [hl]
    inc h
    ld hl, $465e
    ld c, c
    dec h
    ld e, [hl]
    ld b, [hl]
    ld e, $1a
    ld e, [hl]
    nop
    rlca
    rst RST_38

jr_007_5e1a:
    ld d, h
    ld c, h
    db $e3
    ld h, [hl]
    rlca
    dec h
    ld e, [hl]
    ld d, h
    ld l, b
    db $e3
    ld h, [hl]
    ld e, a
    add hl, hl
    ld e, [hl]
    ld h, e
    ld b, l
    inc l
    inc c
    rlca
    ld c, $4c
    jr nc, jr_007_5de6

    inc l
    rla
    rst RST_38
    ld b, [hl]

jr_007_5e35:
    ld l, $5b
    ld e, [hl]
    ld b, [hl]
    ld c, d
    ld e, e
    ld e, [hl]
    ld b, [hl]
    ld c, a
    ld e, e
    ld e, [hl]
    ld b, [hl]
    inc h
    ld h, c
    ld e, [hl]
    ld b, [hl]
    ld c, c
    ld h, l
    ld e, [hl]
    ld b, [hl]
    ld e, $79
    ld e, [hl]
    ld b, [hl]
    ld b, a
    add b
    ld e, [hl]
    ld b, [hl]
    nop
    add l
    ld e, [hl]
    ld b, [hl]
    ld bc, $5e8c
    rlca
    db $e3
    ld h, [hl]
    dec b
    ld h, a
    ld e, h
    ld [bc], a
    add hl, sp
    rst RST_38
    ld d, h
    ld l, b
    db $e3
    ld h, [hl]
    jr nc, jr_007_5e1a

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
    db $e3
    ld h, [hl]
    rlca
    ld h, l
    ld e, [hl]
    jr nc, jr_007_5e35

    inc l
    rla
    rst RST_38

jr_007_5e85:
    ld h, a
    inc b
    db $e3
    ld h, [hl]
    ld [bc], a
    scf
    rst RST_38
    ld e, h
    inc b
    db $e3
    ld h, [hl]
    ld [bc], a
    scf
    ld e, l
    rst RST_38
    ld b, [hl]
    ld l, $b3
    ld e, [hl]
    ld b, [hl]
    ld c, d
    or e
    ld e, [hl]
    ld b, [hl]
    ld c, a
    or e
    ld e, [hl]
    ld b, [hl]
    inc h
    cp c
    ld e, [hl]
    ld b, [hl]
    ld c, c
    ret nz

    ld e, [hl]
    ld b, [hl]
    ld e, $c3
    ld e, [hl]
    ld b, [hl]
    ld b, a
    jp z, Jump_000_075e

    db $e3
    ld h, [hl]
    dec b
    ld h, a

jr_007_5eb5:
    ld e, h
    ld bc, $ff21
    ld [$c068], sp
    ld e, [hl]
    rlca
    db $e3
    ld h, [hl]
    ld bc, $ff27
    ld [$c04c], sp
    ld e, [hl]
    rlca
    db $e3
    ld h, [hl]
    jr nc, jr_007_5e85

    inc l
    rla
    rst RST_38
    ld b, [hl]
    ld e, $ef
    ld e, [hl]
    ld b, [hl]
    inc h
    or $5e
    ld b, [hl]
    ld c, c
    db $fd
    ld e, [hl]
    ld b, [hl]
    ld b, a
    ld [bc], a
    ld e, [hl]
    ld b, [hl]
    nop
    inc e
    ld e, a
    ld b, [hl]
    ld bc, $5f1e
    ld b, [hl]
    inc b
    ld [hl+], a
    ld e, a
    ld b, l
    inc l
    dec b
    rst RST_38
    ld [$fd4c], sp
    ld e, [hl]
    rlca
    db $e3
    ld h, [hl]
    ld [$fd68], sp
    ld e, [hl]
    rlca
    db $e3
    ld h, [hl]
    jr nc, jr_007_5eb5

    dec b
    ld c, $5f
    inc bc
    rlca
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
    ld e, $49

jr_007_5f27:
    ld e, a
    ld b, [hl]
    inc h
    ld d, d
    ld e, a
    ld b, [hl]
    ld c, c
    ld e, c
    ld e, a
    ld b, [hl]
    ld b, a
    cpl
    ld e, [hl]
    ld b, [hl]
    nop
    ccf
    ld e, a
    ld b, [hl]
    ld bc, $5f42
    nop
    rlca
    rst RST_38
    rlca
    db $e3
    ld h, [hl]
    ld e, h
    inc bc
    inc a
    ld e, a
    rlca
    db $e3
    ld h, [hl]
    ld d, h
    ld c, h
    db $e3
    ld h, [hl]
    jr nc, jr_007_5f27

    rlca
    ld e, c
    ld e, a
    ld d, h
    ld l, b
    db $e3
    ld h, [hl]
    rlca
    ld e, c
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
    ld [hl], b
    ld e, [hl]
    ld b, [hl]
    ld e, $49
    ld e, a
    ld b, [hl]
    inc h
    ld d, d
    ld e, a
    ld b, [hl]
    ld c, c
    ld e, c
    ld e, a
    ld b, [hl]
    ccf
    ld a, l
    ld e, a
    ld b, [hl]
    ld b, a
    cpl
    ld e, [hl]
    ld [bc], a
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
    ld h, e
    ld e, h
    ld b, [hl]
    ld e, $a7
    ld e, a
    ld b, [hl]
    inc h
    xor [hl]
    ld e, a
    ld b, [hl]
    ld c, c
    ld a, [de]
    ld c, h
    ld b, [hl]
    ld b, a
    and d
    ld e, a
    ld b, [hl]
    nop
    or l
    ld e, a
    ld b, [hl]
    ld bc, $5fcb
    ld bc, $ff26
    jr nc, @-$46

    inc l
    rla
    rst RST_38
    ld d, h
    ld c, h
    db $e3
    ld h, [hl]
    rlca
    ld a, [de]
    ld c, h
    ld d, h
    ld l, b
    db $e3
    ld h, [hl]
    rlca
    ld a, [de]
    ld c, h
    ld [$c579], sp
    ld e, a
    ld [$c84a], sp
    ld e, a
    ld h, a
    inc b
    call c, $055f
    rst RST_18
    ld e, a
    rst RST_38
    ld bc, $ff25
    ld bc, $ff24
    ld [$c579], sp
    ld e, a
    ld [$c84a], sp
    ld e, a
    ld e, h
    inc b
    call c, $055f
    rst RST_18
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
    ld a, [bc]
    ld h, b
    ld b, [hl]
    ld c, c
    ld c, $60
    ld b, [hl]
    ld b, a
    dec b
    ld h, b
    ld b, [hl]
    nop
    ei
    ld e, a
    ld b, [hl]
    ld bc, $5ffe
    ld bc, $ff50
    rlca
    db $e3
    ld h, [hl]
    ld e, h
    inc bc
    ld hl, sp+$5f
    rlca
    db $e3
    ld h, [hl]
    jr nc, @-$24

    inc l
    rla
    rst RST_38
    ld d, h
    ld l, b
    db $e3
    ld h, [hl]
    ld b, l
    inc l
    inc h
    rst RST_38
    ld d, [hl]
    ld sp, $6019
    ld bc, $ffc6
    ld d, l
    ld b, a
    db $e3
    ld h, [hl]
    ld [$e382], sp
    ld h, [hl]
    ld [bc], a
    cp [hl]
    rst RST_38
Case2BathroomTowelTake:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-towel-take.bin", $0, $b
    nop
    add hl, de
    rst RST_38
    dec l
    ld [hl-], a
    nop
    ld e, d
    and b
    ld h, b
    nop
    ld e, e
    and b
    ld h, b
    dec b
    ld bc, $60a0
    dec b
    inc bc
    and b
    ld h, b
    dec b
    ld a, [bc]
    and b
    ld h, b
    dec b
    dec bc
    and b
    ld h, b
    dec b
    inc d
    and e
    ld h, b
    dec b
    dec d
    and b
    ld h, b
    dec b
    ld c, l
    cp a
    ld h, b
    dec b
    ld c, [hl]
    and b
    ld h, b
    dec b
    ld c, a
    and b
    ld h, b
    dec b
    ld d, e
    and b
    ld h, b
    dec b
    ld e, e
    and b
    ld h, b
    dec b
    ld h, h
    and b
    ld h, b
    dec b
    ld h, [hl]
    and b
    ld h, b
    dec b
    ld h, a
    and b
    ld h, b
    dec b
    ld [hl], h
    and b
    ld h, b
    ld bc, $d402
    ld h, b
    ld bc, $ee03
    ld h, b
    ld bc, $0704
    ld h, c
    nop
    rla
    rst RST_08
    ld e, [hl]
    nop
    scf
    inc h
    ld e, a
    nop
    inc a
    ld h, [hl]
    ld e, a
    nop
    ld c, a
    add a
    ld e, a
    nop
    ld d, l
    db $e4
    ld e, a
    ld [bc], a
    inc bc
    ld a, e
    ld h, [hl]
    cp $fe
    add hl, de
    ld h, b
    nop
    ld h, b
    rst RST_38
    ld d, [hl]
    ld b, c
    and b
    ld h, b
    dec h
    ld b, a
    or h
    ld h, b
    ld [$b726], sp
    ld h, b
    add hl, bc
    ld h, $07
    or $66
    ld [bc], a
    jp z, $1dff

    db $e3
    ld h, [hl]
    ld a, [bc]
    ld h, $07
    rlca
    ld h, a
    ld d, [hl]
    ld b, $a0
    ld h, b
    ld [$cc47], sp
    ld h, b
    add hl, bc
    ld b, a
    rlca
    or $66
    dec e
    db $e3
    ld h, [hl]
    ld a, [bc]
    ld b, a
    rlca
    rlca
    ld h, a
    ld d, [hl]
    dec h
    and b
    ld h, b
    dec e
    db $e3
    ld h, [hl]
    ld [$e948], sp
    ld h, b
    add hl, bc
    ld c, b
    dec b
    rst RST_38
    ld h, [hl]
    ld a, [hl+]
    dec sp
    dec hl
    daa
    rst RST_38
    ld a, [bc]
    ld c, b
    rlca
    rlca
    ld h, a
    ld d, [hl]
    ld [hl-], a
    and b
    ld h, b
    dec e
    db $e3
    ld h, [hl]
    ld [$025b], sp
    ld h, c
    add hl, bc
    ld h, h
    add hl, bc
    ld e, e
    dec b
    rst RST_38
    ld h, [hl]
    daa
    rst RST_38
    ld a, [bc]
    ld e, e
    rlca
    rlca
    ld h, a
    ld d, [hl]
    ld [hl-], a
    and b
    ld h, b
    dec e
    db $e3
    ld h, [hl]
    ld [$195c], sp
    ld h, c
    add hl, bc
    ld e, h
    add hl, bc
    ld h, [hl]
    rlca
    db $fd
    ld h, b
    ld a, [bc]
    ld e, h
    rlca
    rlca
    ld h, a
    nop
    ld a, [de]
    rst RST_38
    nop
    inc e
    ld [$d935], sp
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
    ld b, $d9
    ld h, [hl]
    ld d, h
    db $10
    reti


    ld h, [hl]
    ld [$d93e], sp
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
    db $d3
    ld h, [hl]
    dec h
    ld c, d
    ldh [$ff66], a
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ld b, $07
    sbc $66
    nop
    ccf
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    add hl, bc
    rlca
    sbc $66
    nop
    ld b, e
    rst RST_38
    ld [$7d07], sp
    ld h, c
    nop
    ld b, c
    ld [$d927], sp
    ld h, [hl]
    ld b, h
    ldh [$ff09], a
    daa
    rst RST_38
    nop
    ld b, d
    rst RST_38
    ld [$ea07], sp
    ld h, [hl]
    dec b
    ld d, c
    ld h, d
    add hl, bc
    rlca
    rlca
    ld a, l
    ld h, c
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ld [$de07], sp
    ld h, [hl]
    ld d, h
    rlca
    ldh a, [c]
    ld h, [hl]
    ld a, [bc]
    rlca
    rlca
    xor $66
    nop
    ld c, [hl]
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ld a, [bc]
    rlca
    sbc $66

jr_007_61ae:
    nop
    ld a, c
    rst RST_38
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    inc c
    rlca
    sbc $66
    nop
    ld [hl], d
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    dec bc
    rlca
    sbc $66
    nop
    ld d, h
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    dec d
    rlca
    sbc $66
    nop
    ld e, c
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ld d, $07
    sbc $66
    nop
    and e
    rst RST_38
    rla
    ldh [$ff66], a
    add hl, bc
    rrca
    dec b
    jp c, $2a66

    rrca
    rlca
    sbc $66
    jr z, jr_007_6208

    inc b
    ldh [$ff66], a
    jr nc, jr_007_61ae

    ld c, c
    inc b
    inc l
    rra
    rlca
    ld c, [hl]
    ld e, e
    ld l, $00
    cpl

jr_007_6208:
    add hl, bc
    add hl, sp
    ld [$d91c], sp
    ld h, [hl]
    ld [$d985], sp
    ld h, [hl]
    ld a, $08
    nop
    ld sp, $ff5a
    rla
    ldh [$ff66], a
    add hl, bc
    ld a, [hl-]
    rlca
    db $d3
    ld h, [hl]
    ld l, $3e
    ld [$4000], sp
    add hl, bc
    inc sp
    add hl, bc
    adc h
    ld [$0f10], sp
    ld h, a
    ld [$3581], sp
    ld h, d
    ld bc, $5a63
    rst RST_38
    ld bc, $5a68
    rst RST_38
    ld [$4214], sp
    ld h, d
    nop
    inc a
    rlca
    ld [hl], h
    ld h, c
    nop
    dec a
    rst RST_38
    ld [$ea14], sp
    ld h, [hl]
    dec b
    ld d, c
    ld h, d
    add hl, bc
    inc d
    rlca

jr_007_624f:
    ld b, d
    ld h, d
    ld l, $48
    inc l
    ld [bc], a
    ld b, $17
    ldh [$ff66], a
    dec b
    jp c, $2a66

    inc e
    rlca
    sbc $66
    ld d, h
    inc d
    ldh a, [c]
    ld h, [hl]
    ld a, [bc]
    inc d
    rlca
    xor $66
    ld d, l
    dec hl
    ld [hl], c
    ld h, d
    ld l, [hl]
    sub a
    ld h, d
    ld bc, $080a
    jr c, jr_007_624f

    ld h, [hl]
    ld b, h
    db $e4
    add hl, bc
    jr c, @+$01

    rla
    ldh [$ff66], a
    ld d, l
    dec hl
    db $d3
    ld h, [hl]
    ld d, h
    ld c, d
    sub a
    ld h, d
    dec b
    jp c, $0a66

jr_007_628b:
    ld c, d
    ld [$a17a], sp
    ld h, d
    add hl, bc
    ld a, d
    ld a, [hl+]
    inc l
    rlca
    sbc $66
    ld [$9e4a], sp
    ld h, d
    ld bc, $ff18
    ld bc, $ffdf
    add hl, bc
    ld a, c
    rlca
    sub d
    ld h, d
    ld d, l
    dec hl
    xor l
    ld h, d
    ld l, [hl]
    sub a
    ld h, d
    ld bc, $080b
    jr c, jr_007_628b

    ld h, [hl]
    ld b, h
    db $e4
    add hl, bc
    jr c, @+$01

    rla
    ldh [$ff66], a
    ld d, l
    dec hl
    db $d3
    ld h, [hl]
    ld d, h
    ld c, d
    sub a
    ld h, d
    dec b
    jp c, Jump_000_0966

    sbc h
    ld a, [bc]
    ld c, d
    ld [$d57a], sp
    ld h, d
    add hl, bc
    ld a, d
    ld a, [hl+]
    dec l
    rlca
    sbc $66
    add hl, bc
    ld a, c
    rlca
    ret nc

    ld h, d
    ld bc, $ff5e
    ld [$e44c], sp
    ld h, d
    ld bc, $ff76
    ld c, b
    inc l
    ld bc, $17ff
    ldh [$ff66], a
    dec b
    jp c, Jump_000_0966

    and d
    ld [$f94c], sp
    ld h, d
    ld a, [hl+]
    ld [hl], $07
    sbc $66
    ld a, [hl+]
    scf
    rlca
    sbc $66
    nop
    db $e3
    rst RST_38
    ld [$164c], sp
    ld h, e
    ld a, $13
    ld [$10a2], sp
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
    ldh [$ff66], a
    dec b
    jp c, $2a66

    jr c, @+$09

    sbc $66
    ld d, h
    ld l, b
    cpl
    ld h, e
    ld bc, $ff7c
    ld bc, $ff7b
    ld [$e068], sp
    ld h, [hl]
    ld [bc], a
    adc d
    add hl, bc
    ld l, b
    rst RST_38
    ld d, h
    ld l, b
    ldh [$ff66], a
    ld bc, $0a14
    ld l, b
    rst RST_38
    ld bc, $ff7e
    ld bc, $ff7f
    ld bc, $ffd0
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ccf
    rlca
    sbc $66
    ld bc, $ffd2
    ld bc, $ffd4
    ld l, $08
    ld [hl], h
    ld l, h
    ld h, e
    ld [bc], a
    ld c, $08
    ld [hl], c
    reti


    ld h, [hl]
    ld bc, $ff4f
    ld [bc], a
    rrca
    ld d, h
    and e
    xor d
    ld h, e
    ld a, $08
    ld d, h
    adc d
    push bc
    ld h, e
    jr nc, jr_007_63e3

    ld sp, $2c6b
    jr nc, jr_007_63af

    ld l, h
    ld sp, $2c6d
    ld sp, $3354
    rst RST_08
    ld h, e
    jr nc, jr_007_63f3

    inc l
    inc [hl]
    ld d, h
    add c
    rrca
    ld h, a
    nop
    sbc b
    ld [$0f55], sp
    ld h, a
    add hl, bc
    ld d, l
    ld [bc], a
    ld h, $09
    db $10
    add hl, bc
    inc bc
    ld [$0f8d], sp
    ld h, a
    ld [$0f8b], sp
    ld h, a
    ld bc, $5a64
    rst RST_38
    ld [$b18a], sp
    ld h, e
    nop

jr_007_63af:
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
    jr nc, jr_007_642f

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
    ld [$ea74], sp
    ld h, [hl]
    dec b
    ld d, c
    ld h, d
    add hl, bc
    ld [hl], c
    add hl, bc
    ld [hl], h
    ld l, $07
    ld l, h
    ld h, e
    ld d, h

jr_007_63e3:
    ld [hl], h
    ldh a, [c]
    ld h, [hl]
    ld a, [bc]
    ld [hl], h
    rlca
    xor $66
    ld [bc], a
    dec c
    ld [$d937], sp
    ld h, [hl]
    ld b, h
    db $e3

jr_007_63f3:
    add hl, bc
    scf
    rst RST_38
    ld bc, $ffc2
    ld bc, $ffc3
    ld [$0370], sp
    ld h, h
    ld [bc], a
    ld b, [hl]
    rst RST_38
    ld [bc], a
    ld b, a
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ld c, d
    rlca
    sbc $66
    ld [bc], a
    ld c, b
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ld c, b
    rlca
    sbc $66
    ld [bc], a
    ld c, c
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ld c, c
    rlca
    sbc $66
    ld [bc], a
    ld c, d

jr_007_642f:
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ld b, a
    rlca
    sbc $66
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
    ld [$0f10], sp
    ld h, a
    ld [$5433], sp
    ld h, h
    ld bc, $5a7d
    rst RST_38
    ld bc, $5a8c
    rst RST_38
    ld [bc], a
    ld c, a
    rst RST_38
    ld [$624f], sp
    ld h, h
    ld [bc], a
    ld d, h
    rst RST_38
    ld l, $02
    ld d, l
    ld [$7010], sp
    ld h, h
    ld d, h
    ld [hl], c
    reti


    ld h, [hl]
    ld [bc], a
    ld d, [hl]
    rst RST_38
    nop
    or c
    rst RST_38
    ld [$ea4f], sp
    ld h, [hl]
    dec b
    ld d, c
    ld h, d
    add hl, bc
    ld c, a
    rlca
    ld h, d
    ld h, h
    ld d, h
    ld c, a
    ldh a, [c]
    ld h, [hl]
    ld a, [bc]
    ld c, a
    rlca
    xor $66
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
    ldh [$ff66], a
    dec b
    jp c, Jump_000_0966

    add hl, de
    rlca
    sbc $66
    ld l, $02
    ldh [$ff08], a
    and a
    reti


    ld h, [hl]
    ld a, $08
    ld bc, $0975
    and a
    ld e, d
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ld d, c
    rlca
    sbc $66
    ld l, $08
    ld de, $64cd
    nop
    cp c
    ld [$d98a], sp
    ld h, [hl]
    ld bc, $ff4f
    ld l, $00
    cp d
    ld d, h
    ld [hl], c
    reti


    ld h, [hl]
    ld a, $08
    ld d, h
    and e
    rst RST_28
    ld h, h
    jr nc, jr_007_6544

    ld sp, $2c6b
    jr nc, @+$32

    ld l, e
    ld sp, $2c6e
    ld sp, $3354
    rst RST_08
    ld h, e
    jr nc, jr_007_6553

    rlca
    adc d
    ld h, e
    jr nc, @+$6c

    ld sp, $2c6c
    ld l, $30
    ld l, e
    ld sp, $076e
    cp l
    ld h, e
    ld [$ea11], sp
    ld h, [hl]
    ld l, $05
    ld d, c
    ld h, d
    add hl, bc
    ld de, $8a09
    rlca
    call Call_007_5464
    ld de, $66f2
    ld a, [bc]
    ld de, $ee07
    ld h, [hl]
    nop
    xor a
    rst RST_38
    ld a, [de]
    inc bc
    db $d3
    ld h, [hl]
    rla
    ldh [$ff66], a
    dec b
    jp c, Jump_000_2266

    sbc d
    rlca
    sbc $66
    nop
    or b
    add hl, bc
    ld [de], a
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ld a, [de]
    rlca
    sbc $66
    ld l, $00
    or d
    ld [$d986], sp
    ld h, [hl]
    nop
    or e
    rst RST_38
    ld [$4f86], sp
    ld h, l

jr_007_6544:
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    jr jr_007_6554

    sbc $66
    nop
    pop hl
    rst RST_38
    nop

jr_007_6553:
    or h

jr_007_6554:
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    add hl, de
    rlca
    sbc $66
    nop
    or [hl]
    rst RST_38
    nop
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
    ldh [$ff66], a
    add hl, bc
    sbc a
    dec b
    jp c, $2a66

    ld d, e
    rlca
    sbc $66
    nop
    cpl
    rst RST_38
    ld [bc], a
    push af
    rst RST_38
    ld [$8756], sp
    ld h, l
    ld [bc], a
    or $ff
    ld [bc], a
    rst RST_30
    rst RST_38
    ld [$e356], sp
    ld h, [hl]
    ld l, $02
    db $ed
    ld l, [hl]
    sbc e
    ld h, l
    jr nc, jr_007_65e9

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
    ldh [$ff66], a
    add hl, bc
    ld l, d
    rlca
    db $d3
    ld h, [hl]
    ld l, $08
    ld e, c
    cp c
    ld h, l
    ld l, $02
    rst RST_28
    ld [$0f62], sp
    ld h, a
    ld bc, $5a4f
    rst RST_38
    ld l, $54
    ld [hl], c
    db $e3
    ld h, l
    add hl, bc
    and e
    jr nc, jr_007_662c

    ld sp, $2c6c
    ld [hl-], a
    ld a, $08
    ld d, h
    adc d
    bit 4, e
    jr nc, jr_007_6637

    ld sp, $2c6b
    jr nc, jr_007_6603

    ld l, e
    ld sp, $2c6d
    ld sp, $3354
    rst RST_08
    ld h, e
    jr nc, @+$6b

    inc l
    inc [hl]
    rlca
    adc h
    ld h, e
    ld [bc], a
    di
    rst RST_38
    ld [$ea59], sp

jr_007_65e9:
    ld h, [hl]
    dec b
    ld d, c
    ld h, d
    add hl, bc
    ld e, c
    add hl, bc
    ld h, d
    rlca
    cp c
    ld h, l
    ld d, h
    ld e, c
    ldh a, [c]
    ld h, [hl]
    ld a, [bc]
    ld e, c
    rlca
    xor $66
    ld [bc], a
    and e
    rst RST_38
    rla
    ldh [$ff66], a

jr_007_6603:
    dec b
    jp c, $2a66

    ld c, l
    rlca
    sbc $66
    ld [bc], a
    and h
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

    ld c, [hl]
    rlca
    sbc $66
    ld [bc], a
    xor $ff
    rst RST_38
    ld a, [de]
    inc bc
    db $d3
    ld h, [hl]
    dec h
    ld c, d
    ldh [$ff66], a
    rla
    ldh [$ff66], a
    dec b
    jp c, $2a66

jr_007_662c:
    ld h, l
    rlca
    sbc $66
    nop
    ret nz

    rst RST_38
    ld bc, $ff47
    dec l

jr_007_6637:
    ld [hl-], a
    inc bc
    ld c, e
    db $fd
    ld e, d
    ld bc, $000c
    ld e, e
    ld [bc], a
    nop
    ld [hl], d
    ld h, [hl]
    ld [bc], a
    ld bc, $6675
    ld [bc], a
    ld [bc], a
    ld a, b
    ld h, [hl]
    ld [bc], a
    inc bc
    ld a, e
    ld h, [hl]
    nop
    and a
    call $fe66
    cp $e3
    ld h, [hl]
    dec l
    ld [hl-], a
    ld [bc], a
    nop
    ld [hl], d
    ld h, [hl]
    ld [bc], a
    ld bc, $6675
    ld [bc], a
    ld [bc], a
    ld a, b
    ld h, [hl]
    ld [bc], a
    inc bc
    ld a, e
    ld h, [hl]
    nop
    and a
    call $fe66
    cp $e3
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
    or c
    ld h, [hl]
    ld b, [hl]
    add c
    cp b
    ld h, [hl]
    ld b, [hl]
    adc b
    cp a
    ld h, [hl]
    ld b, [hl]
    ld a, [hl-]
    add $66
    ld b, [hl]
    rla
    xor [hl]
    ld h, [hl]
    ld b, [hl]
    nop
    xor [hl]
    ld h, [hl]
    ld b, [hl]
    ld bc, $66ae
    ld b, [hl]
    ld [bc], a
    xor [hl]
    ld h, [hl]
    ld b, [hl]
    inc bc
    xor [hl]
    ld h, [hl]
    ld b, [hl]
    inc b
    xor [hl]
    ld h, [hl]
    ld b, [hl]
    ld b, [hl]
    xor [hl]
    ld h, [hl]
    ld b, [hl]
    ld c, a
    xor [hl]

jr_007_66aa:
    ld h, [hl]
    ld h, l
    inc bc
    rst RST_38
    ld bc, $fff3
    ld d, h
    dec c
    xor e
    ld h, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld d, h
    inc c
    xor e

jr_007_66bb:
    ld h, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld d, h
    ld d, b
    xor e
    ld h, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld d, h
    ld a, b
    xor e
    ld h, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld h, l
    inc b
    rst RST_38
    rla
    ldh [$ff66], a
    dec b
    jp c, Jump_000_0766

    sbc $66
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
    jr nc, jr_007_66aa

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
    jr nc, jr_007_66bb

    inc l
    inc bc
    rst RST_38
    ld e, d
    rst RST_38
    ld b, c
    ld h, a
    ld c, l
    ld h, a
    ld e, c
    ld h, a
    ld h, l
    ld h, a
    ld [hl], c
    ld h, a
    ld a, l
    ld h, a
    adc c
    ld h, a
    sub l
    ld h, a
    and c
    ld h, a
    xor l
    ld h, a
    cp c
    ld h, a
    pop bc
    ld h, a
    call $d967
    ld h, a
    push hl
    ld h, a
    pop af
    ld h, a
    db $fd
    ld h, a
    add hl, bc
    ld l, b
    dec d
    ld l, b
    ld hl, $2d68
    ld l, b
    add hl, sp
    ld l, b
    ld b, l
    ld l, b
    ld d, c
    ld l, b
    ld e, l
    ld l, b
    ld h, b
    ld l, b
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    ld l, d
    ld l, e
    ld [hl], a
    ld l, e
    jr jr_007_67bc

    ld h, b
    ld l, b
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    dec de
    ld l, l
    ld [hl], a
    ld l, e
    jr z, jr_007_67c8

    bit 5, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    dec hl
    ld l, l
    ld [hl], $6d
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    ld b, a
    ld l, l
    ld c, d
    ld l, l
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    ld e, e
    ld l, l
    ld [hl], h
    ld l, l
    add [hl]
    ld l, l
    sub b
    ld l, l
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    and h
    ld l, l
    bit 5, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    and a
    ld l, l
    bit 5, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    xor d
    ld l, l
    or h
    ld l, l
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    cp c
    ld l, l
    ld [hl], a
    ld l, e
    call nz, $cb6d
    ld l, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    adc $6d
    ld l, e

jr_007_67bc:
    ld l, b
    and h
    ld l, [hl]
    pop de
    ld l, l
    call c, $cb6d
    ld l, [hl]
    ld l, e
    ld l, b
    and h

jr_007_67c8:
    ld l, [hl]
    rst RST_18
    ld l, l
    pop de
    ld l, [hl]
    ld [$cb6d], a
    ld l, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    db $ed
    ld l, l
    bit 5, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    ldh a, [$ff6d]
    pop de
    ld l, [hl]
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    cp $6d
    ld de, $6b6e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    ld d, $6e
    jr nz, jr_007_687b

    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $ec6e

    ld l, [hl]
    daa
    ld l, [hl]
    bit 5, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    ld a, [hl+]
    ld l, [hl]
    dec l
    ld l, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    ld c, h
    ld l, [hl]
    ld l, l
    ld l, [hl]
    ld a, a
    ld l, [hl]
    bit 5, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    add d
    ld l, [hl]
    add l
    ld l, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    sub [hl]
    ld l, [hl]
    pop de
    ld l, [hl]
    ei
    ld l, l
    bit 5, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    and c
    ld l, [hl]
    bit 5, [hl]
    ld l, e
    ld l, b
    and h
    ld l, [hl]
    jp c, $d16e

    ld l, [hl]
    nop
    inc de
    rst RST_38
    ld c, b
    dec e
    ld l, b
    ld l, b
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
    dec h
    ld l, c
    nop
    and [hl]
    ld c, l
    ld l, c
    nop
    and a
    ld e, a
    ld l, d
    nop
    add e

jr_007_687b:
    add e
    ld l, d
    nop
    ld b, e
    sbc e
    ld l, d
    nop
    ld b, [hl]
    xor a
    ld l, d
    nop
    ld b, h
    xor a
    ld l, d
    nop
    ld a, d
    jp Jump_000_006a


    ld b, l
    ld a, b
    ld l, d
    nop
    rla
    rst RST_10
    ld l, d
    nop
    scf
    ld a, b
    ld l, d
    nop
    inc a
    db $e3
    ld l, d
    nop
    ld c, a
    xor $6a
    nop
    ld d, b
    rrca
    ld l, e
    nop
    ld d, l
    dec e
    ld l, e
    rlca
    ld b, [hl]
    ld b, e
    ld l, e
    rlca
    ld c, b
    ld b, e
    ld l, e
    dec b
    ld c, c
    ld b, e
    ld l, e
    dec b
    ld c, d
    ld b, e
    ld l, e
    dec b
    ld c, e
    ld b, e
    ld l, e
    nop
    ld l, $83
    ld l, e
    nop
    cpl
    sub c
    ld l, e
    nop
    ld d, d
    sbc a
    ld l, e
    nop
    ld d, e
    xor l
    ld l, e
    nop
    ld h, b
    cp e
    ld l, e
    nop
    ld l, b
    ret


    ld l, e
    nop
    ld a, b
    rst RST_10
    ld l, e
    nop
    sub b
    push hl
    ld l, e
    nop
    sbc b
    di
    ld l, e
    nop
    xor e
    ld bc, $006c
    xor h
    rrca
    ld l, h
    ld bc, $1d06
    ld l, h
    inc bc
    ld e, $30
    ld l, h
    dec b
    ld b, $3e
    ld l, h
    dec b
    dec d
    ld c, l
    ld l, h
    dec b
    add hl, de
    ld e, h
    ld l, h
    dec b
    add hl, sp
    ld l, e
    ld l, h
    dec b
    ld c, h
    ld a, d
    ld l, h
    dec b
    ld d, e
    adc c
    ld l, h
    dec b
    ld h, l
    sbc b
    ld l, h
    dec b
    ld l, b
    and a
    ld l, h
    ld bc, $b609
    ld l, h
    dec b
    ld e, e
    call nz, $056c
    ld h, [hl]
    rst RST_18
    ld l, h
    ld [bc], a
    inc bc
    ld a, e
    ld h, [hl]
    cp $fe
    rst RST_38
    ld l, h
    ld b, [hl]
    add l
    cp [hl]
    ld l, [hl]
    ld b, [hl]
    add b
    jr c, jr_007_6996

    ld b, [hl]
    add c
    ccf
    ld l, c
    ld b, [hl]
    adc b
    ld b, [hl]
    ld l, c
    rlca
    db $ec
    ld l, [hl]
    ld d, h
    dec c
    cp [hl]
    ld l, [hl]
    ld [bc], a
    rst RST_00
    rst RST_38
    ld d, h
    inc c
    cp [hl]
    ld l, [hl]
    rlca
    inc a
    ld l, c
    ld d, h
    ld d, b
    cp [hl]
    ld l, [hl]
    rlca
    inc a
    ld l, c
    ld b, [hl]
    add b
    ld h, h
    ld l, c
    ld b, [hl]
    add c
    jr nz, jr_007_69bf

    ld b, [hl]
    adc b
    ld [hl-], a
    ld l, d
    ld b, [hl]
    adc d
    ld d, e
    ld l, d
    ld b, [hl]
    adc c
    ld c, b
    ld l, d
    rlca
    db $ec
    ld l, [hl]
    ld [$810d], sp
    ld l, c
    ld [$5550], sp
    ld e, h
    ld [$5b78], sp
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
    ld a, l
    ld l, c
    dec h
    dec b
    ld a, c
    ld l, c
    dec h
    dec d
    inc b
    ld l, d
    dec h
    ld d, $04

jr_007_6996:
    ld l, d
    dec h
    rla
    nop
    ld l, d
    dec h
    jr jr_007_699e

jr_007_699e:
    ld l, d
    dec h
    add hl, de
    nop
    ld l, d
    dec h
    ld a, [de]
    nop
    ld l, d
    dec h
    inc l
    nop
    ld l, d
    dec h
    dec l
    nop
    ld l, d
    dec h
    ld l, $00
    ld l, d
    dec h
    cpl
    nop
    ld l, d
    dec h
    dec hl
    ld d, $6a
    dec h
    ld b, h
    ld [hl], l
    ld l, c

jr_007_69bf:
    dec h
    dec de
    inc c
    ld l, d
    dec h
    inc e
    inc c
    ld l, d
    dec h
    dec e
    inc c
    ld l, d
    dec h
    ld e, $0c
    ld l, d
    dec h
    rra
    inc c
    ld l, d
    dec h
    jr nz, jr_007_69e2

    ld l, d
    dec h
    ld hl, $6a0c
    dec h
    ld [hl+], a
    inc c
    ld l, d
    dec h
    inc hl
    inc c

jr_007_69e2:
    ld l, d
    dec h
    inc h
    inc c
    ld l, d
    dec h
    dec h
    inc c
    ld l, d
    dec h

jr_007_69ec:
    ld h, $0c
    ld l, d
    dec h
    daa
    inc c
    ld l, d
    dec h
    jr z, jr_007_6a02

    ld l, d
    dec h
    add hl, hl
    inc c
    ld l, d
    dec h
    ld a, [hl+]
    inc c
    ld l, d
    rst RST_38
    ld a, l
    ld a, e

jr_007_6a02:
    ld c, c
    ld [$b530], sp
    ld l, $2c
    add hl, hl
    rlca
    nop
    ld l, d
    ld l, $5f
    ld de, $636a
    jr nc, jr_007_69ec

    rlca
    rlca
    ld l, d
    ld [$caa1], sp
    ld l, [hl]
    ld l, $30
    cp b
    rlca
    rlca
    ld l, d
    ld [$2d0c], sp
    ld l, d
    ld [$5b78], sp
    ld e, h
    nop
    jr z, @+$0b

    inc c
    rst RST_38
    ld a, [bc]
    inc c
    rlca
    add e
    ld l, c
    ld [$4350], sp
    ld l, d
    ld [$5b78], sp
    ld e, h
    ld [$4f0d], sp
    ld e, h
    ld bc, $0995
    ld d, b
    rst RST_38
    ld a, [bc]
    ld d, b
    rlca
    add e
    ld l, c
    ld d, e
    inc b
    jp z, $2e6e

jr_007_6a4d:
    ld bc, $0191
    sub d
    scf
    rst RST_38
    dec [hl]
    ld l, [hl]
    ld e, e
    ld l, d
    ld [hl], $07
    ld a, [bc]
    ld d, c
    ld [hl], $2c
    ld b, a
    rst RST_38
    ld b, [hl]
    adc c
    ld [hl], c
    ld l, d
    ld d, l
    ld b, d
    db $ec
    ld l, [hl]
    ld b, [hl]
    sub b
    ld l, [hl]
    ld l, d
    rlca
    add hl, de
    ld h, b
    ld [bc], a
    ld h, a
    rst RST_38
    ld d, e
    inc b
    jp z, Jump_000_006e

jr_007_6a76:
    ld b, l
    rst RST_38
    ld b, [hl]
    adc d
    adc [hl]
    ld l, d
    ld b, [hl]
    adc c
    ld d, h
    ld l, e
    nop
    rlca
    rst RST_38
    ld b, [hl]
    adc d

jr_007_6a85:
    adc [hl]
    ld l, d

jr_007_6a87:
    ld b, [hl]
    adc c
    ld d, h
    ld l, e
    rlca
    db $ec
    ld l, [hl]
    ld d, h
    halt
    db $ec
    ld l, [hl]
    ld d, h
    ld c, l
    db $ec
    ld l, [hl]
    jr nc, jr_007_6a4d

    inc l
    db $10
    rst RST_38
    ld b, [hl]
    adc d
    and d
    ld l, d
    rlca
    add a
    ld l, d
    ld d, h
    halt
    db $ec
    ld l, [hl]
    ld d, h
    ld c, l
    db $ec
    ld l, [hl]
    jr nc, jr_007_6a85

    inc l
    db $10
    rst RST_38
    ld b, [hl]
    adc d
    or [hl]
    ld l, d
    rlca
    add a
    ld l, d
    ld d, h
    halt
    db $ec
    ld l, [hl]
    ld d, h

jr_007_6abb:
    ld c, l
    db $ec
    ld l, [hl]
    jr nc, jr_007_6a76

    inc l
    db $10
    rst RST_38
    ld b, [hl]
    adc d
    jp z, Jump_000_076a

    add a
    ld l, d
    ld d, h
    halt
    db $ec
    ld l, [hl]
    ld d, h
    ld c, l
    db $ec
    ld l, [hl]
    jr nc, jr_007_6a87

    inc l
    db $10
    rst RST_38
    ld b, [hl]
    adc d
    or [hl]
    ld l, d
    ld b, [hl]
    adc c
    ld d, h
    ld l, e
    ld b, l
    inc l
    dec b
    rst RST_38
    ld b, [hl]
    adc d
    adc [hl]
    ld l, d
    ld b, [hl]
    adc c
    ld d, h
    ld l, e
    ld [bc], a
    push hl
    rst RST_38
    ld b, [hl]
    adc d
    ld sp, hl
    ld l, d
    ld b, [hl]
    adc c
    ld b, $6b
    ld bc, $ff26
    ld d, h
    halt
    db $ec
    ld l, [hl]
    ld d, h
    ld c, l
    db $ec
    ld l, [hl]
    jr nc, jr_007_6abb

    inc l
    db $10
    rst RST_38
    ld d, e
    inc b
    jp z, $016e

    jr z, jr_007_6b14

    ld e, $4c
    ld b, [hl]
    adc c
    ld d, $6b
    rlca

jr_007_6b14:
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $016e

    daa
    rst RST_38
    ld b, [hl]
    adc d
    jr z, jr_007_6b8c

    ld b, [hl]
    adc c
    dec [hl]
    ld l, e
    ld bc, $ff50
    ld d, h
    halt
    db $ec
    ld l, [hl]
    ld d, h
    ld c, l
    db $ec
    ld l, [hl]
    jr nc, @-$24

    inc l
    db $10
    rst RST_38
    ld d, e
    inc b
    jp z, $2e6e

    ld bc, $304b
    cp d
    ld a, $11
    inc l
    dec d
    rst RST_38
    ld b, [hl]
    adc c
    ld c, d
    ld l, e
    rlca
    db $ec
    ld l, [hl]
    ld [$5143], sp
    ld l, e
    ld bc, $ff3b
    ld bc, $ff3c
    ld d, e
    inc b
    jp z, $396e

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
    rst RST_28
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    ld bc, $2809
    rlca
    ld [$486e], a
    ld e, e
    add b
    ld l, e
    inc l
    ld h, $07
    rst RST_10
    ld l, [hl]
    inc l
    jr z, @+$01

    ld b, [hl]
    adc c
    adc d
    ld l, e
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b

jr_007_6b8c:
    jp z, $076e

    ld e, h
    ld c, h
    ld b, [hl]
    adc c
    sbc b
    ld l, e
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    ld l, a
    ld c, h
    ld b, [hl]
    adc c
    and [hl]
    ld l, e
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    ld a, h
    ld c, h
    ld b, [hl]
    adc c
    or h
    ld l, e
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    sub h
    ld c, h
    ld b, [hl]
    adc c
    jp nz, $076b

    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    and b
    ld c, h
    ld b, [hl]
    adc c
    ret nc

    ld l, e
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    and e
    ld c, h
    ld b, [hl]
    adc c
    sbc $6b
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    xor a
    ld c, h
    ld b, [hl]
    adc c
    db $ec
    ld l, e
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    ld [hl], b
    ld d, c
    ld b, [hl]
    adc c
    ld a, [$076b]
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    adc e
    ld d, c
    ld b, [hl]
    adc c
    ld [$076c], sp
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    sbc [hl]
    ld d, c
    ld b, [hl]
    adc c
    ld d, $6c
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    or c
    ld d, c
    ld b, [hl]
    adc c
    inc h
    ld l, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, Jump_007_476e

    db $10
    ld a, $11
    ld c, b
    inc l
    dec d
    rst RST_38
    ld b, [hl]
    adc c
    scf
    ld l, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    ld bc, $4663
    adc c
    ld b, l
    ld l, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, Jump_007_7d6e

    reti


    ld b, [hl]
    ld [$8946], sp
    ld d, h
    ld l, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, Jump_007_7d6e

    ld [bc], a
    ld c, c
    ld [$8946], sp
    ld h, e
    ld l, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, Jump_007_7d6e

    ld c, a
    ld c, c
    ld [$8946], sp
    ld [hl], d
    ld l, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, Jump_007_7d6e

    cp e
    ld c, h
    ld [$8946], sp
    add c
    ld l, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, Jump_007_7d6e

    db $ed
    ld c, l
    ld [$8946], sp
    sub b
    ld l, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, Jump_007_7d6e

    rst RST_38
    ld d, b
    ld [$8946], sp
    sbc a
    ld l, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, Jump_007_7d6e

    ld [hl], b
    ld d, b
    ld [$8946], sp
    xor [hl]
    ld l, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, Jump_007_7d6e

    inc [hl]
    ld d, c
    ld [$8946], sp
    cp l
    ld l, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $076e

    sub e
    ld d, h
    ld b, [hl]
    adc c
    bit 5, h
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $1d6e

    ld [hl], l
    ld l, d
    ld [$ec5d], sp
    ld l, [hl]
    ld l, $01
    call c, $0121
    db $dd
    add hl, bc
    ld e, l
    rst RST_38
    ld b, [hl]
    adc c
    and $6c
    rlca
    db $ec
    ld l, [hl]
    ld d, e
    inc b
    jp z, $1d6e

    ld [hl], l
    ld l, d
    ld [$ec6b], sp
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
    ld b, $6d
    rlca
    add hl, de
    ld h, b
    dec h
    ld b, a
    ld de, $536d
    inc b
    jp z, Jump_000_006e

    ld b, l
    rst RST_38
    ld [$0a82], sp
    ld l, l
    ld [bc], a
    cp [hl]
    rst RST_38
    nop
    inc d
    rst RST_38
    rla
    rst RST_28
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    ld [bc], a
    add hl, bc
    add hl, hl
    rlca
    ld [$006e], a
    dec d
    rst RST_38
    nop
    dec de
    ld [$ca36], sp
    ld l, [hl]
    ld b, h
    ldh [c], a
    add hl, bc
    ld [hl], $ff
    dec e
    db $e3
    ld l, [hl]
    ld l, $48
    inc l
    ld [bc], a
    daa
    ld [$ca42], sp
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
    db $e3
    ld l, [hl]
    ld c, b
    inc l
    ld [bc], a
    ld [$59a4], sp
    ld l, l
    ld a, [hl+]
    dec e
    add hl, hl
    ld hl, $272b
    rst RST_38
    ld a, [de]
    inc bc
    jp c, $176e

    rst RST_28
    ld l, [hl]
    ld c, b
    inc l
    inc e
    add hl, bc
    and h
    dec e
    ld l, a
    ld l, l
    ld a, [hl+]
    dec e
    rlca
    ld [$2a6e], a
    ld hl, $ea07
    ld l, [hl]
    ld c, b
    ld e, e
    rst RST_20
    ld l, [hl]
    inc l
    inc bc
    ld [$83a4], sp
    ld l, l
    ld a, [hl+]
    ld hl, $1d29
    dec hl
    rra
    jr c, @+$01

    ld l, $00
    ld e, $08
    inc de
    jp z, Jump_000_006e

    inc h
    rst RST_38
    dec e
    db $e3
    ld l, [hl]
    ld [$f213], sp
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
    ld [$b15a], sp
    ld l, l
    ld bc, $ff6e
    ld bc, $ff6f
    add hl, bc
    ld e, d
    rlca
    ld h, b
    ld l, b
    rla
    rst RST_28
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    inc sp
    rlca
    ld [$086e], a
    ld c, e
    bit 5, l
    ld bc, $ff70
    ld bc, $ff71
    ld bc, $ff72
    rla
    rst RST_28
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    inc [hl]
    rlca
    ld [$016e], a
    ld [hl], e
    rst RST_38
    rla
    rst RST_28
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    dec [hl]
    rlca
    ld [$016e], a
    ld [hl], h
    rst RST_38
    ld bc, $ffcd
    rla
    rst RST_28
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    ld a, $07
    ld [$016e], a
    rst RST_08
    rst RST_38
    ld [$0b72], sp
    ld l, [hl]
    ld [$0e73], sp
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
    bit 5, [hl]
    ld [$1d75], sp
    ld l, [hl]
    ld [bc], a
    ld e, e
    rst RST_38
    ld [bc], a
    ld e, h
    rst RST_38
    ld [$cb75], sp
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
    db $e3
    ld l, [hl]
    rla
    ldh a, [c]
    ld l, [hl]
    ld d, l
    ld b, h
    dec sp
    ld l, [hl]
    ld d, h
    ld a, b
    ld c, c
    ld l, [hl]
    ld c, b
    inc l
    ld [bc], a
    ld [$47a5], sp
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
    jp c, $176e

    rst RST_28
    ld l, [hl]
    ld d, l
    ld b, h
    ld e, e
    ld l, [hl]
    ld d, h
    ld a, b
    ld c, c
    ld l, [hl]
    ld c, b
    inc l
    inc e
    add hl, bc
    and l
    dec e
    ld l, b
    ld l, [hl]
    ld a, [hl+]
    ld c, e
    rlca
    ld [$2a6e], a
    ld c, h
    rlca
    ld [$486e], a
    ld e, e
    rst RST_20
    ld l, [hl]
    inc l
    inc bc
    ld [$d7a5], sp
    ld l, [hl]
    ld a, [hl+]
    ld c, h
    add hl, hl
    ld c, e
    dec hl
    rlca
    rst RST_10
    ld l, [hl]
    ld [bc], a
    add d
    rst RST_38
    ld [bc], a
    cp d
    rst RST_38
    ld d, l
    ld b, a
    sub b
    ld l, [hl]
    ld [$9082], sp
    ld l, [hl]
    ld [bc], a
    cp [hl]
    rst RST_38
    dec e
    db $e3
    ld l, [hl]
    rlca
    ldh a, [c]
    ld l, [hl]
    rla
    rst RST_28
    ld l, [hl]
    ld c, b
    inc l
    inc e
    ld a, [hl+]
    ld d, b
    rlca
    ld [$006e], a
    xor [hl]
    rst RST_38
    dec l
    ld [hl-], a
    ld [bc], a
    nop
    cp [hl]
    ld l, [hl]
    ld [bc], a
    ld bc, $6ec1
    ld [bc], a
    ld [bc], a
    call nz, $026e
    inc bc
    ld a, e
    ld h, [hl]
    nop
    and a
    rst RST_00
    ld l, [hl]
    cp $fe
    db $ec
    ld l, [hl]
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
    db $e3
    ld l, [hl]
    rlca
    ldh a, [c]
    ld l, [hl]
    ld c, b
    ld e, e
    rst RST_20
    ld l, [hl]
    inc l
    inc bc
    rra
    jr c, @+$01

    rla
    rst RST_28
    ld l, [hl]
    ld c, b
    inc l
    inc e
    rlca
    ld [$486e], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_7d6e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Jump_007_7f62:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
