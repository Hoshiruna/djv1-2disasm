; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    nop
    ld b, c
    dec h
    ld b, c
    ld c, e
    ld b, c
    ld [hl], e
    ld b, c
    xor l
    ld b, c
    add $41
    db $dd
    ld b, c
    ldh a, [rSTAT]
    inc c
    ld b, d
    ld sp, $6f42
    ld b, d
    ld a, h
    ld b, d
    xor l
    ld b, d
    sbc $42
    rlca
    ld b, e
    dec [hl]
    ld b, e
    ld e, [hl]
    ld b, e
    sbc h
    ld b, e
    adc $43
    rst RST_38
    ld b, e
    inc d
    ld b, h
    dec l
    ld b, h
    ld l, l
    ld b, h
    jp $f744


    ld b, h
    ld l, b
    ld b, l
    adc b
    ld b, l
    dec c
    ld b, [hl]
    ld c, b
    ld b, [hl]
    sbc e
    ld b, [hl]
    pop de
    ld b, [hl]
    and $46
    ld d, a
    ld b, a
    ld [hl], b
    ld b, a
    xor $47
    add hl, bc
    ld c, b
    inc h
    ld c, b
    ld b, b
    ld c, b
    ld d, h
    ld c, b
    ld [hl], d
    ld c, b
    sbc c
    ld c, b
    xor b
    ld c, b
    ld [hl], $49
    ld [hl], e
    ld c, c
    add hl, bc
    ld c, d
    ld [de], a
    ld c, e
    inc d
    ld c, h
    add hl, sp
    ld c, h
    ld e, c
    ld c, h
    ld [hl], b
    ld c, h
    sbc d
    ld c, h
    or l
    ld c, h
    ldh a, [$ff4c]
    ld hl, $424d
    ld c, l
    ld e, l
    ld c, l
    sub d
    ld c, l
    and d
    ld c, l
    add $4d
    ldh [rKEY1], a
    db $fc
    ld c, l
    rst RST_00
    ld c, [hl]
    dec b
    ld c, a
    jr nz, jr_017_40cf

    ld c, e
    ld c, a
    sbc a
    ld c, a
    cp [hl]
    ld c, a
    db $10
    ld d, b
    scf
    ld d, b
    ld b, h
    ld d, b
    ld h, l
    ld d, b
    ld a, e
    ld d, b
    adc d
    ld d, b
    ret nz

    ld d, b
    db $eb
    ld d, b
    cp $50
    add hl, hl
    ld d, c
    sbc [hl]
    ld d, c
    or [hl]
    ld d, c
    pop de
    ld d, c
    ei
    ld d, c
    ld de, $2352
    ld d, d
    ld d, d
    ld d, d
    ld l, b
    ld d, d
    ld a, h
    ld d, d
    adc b
    ld d, d
    sub l
    ld d, d
    and b
    ld d, d
    ld bc, $2d53
    ld d, e
    ld a, [hl-]
    ld d, e
    ld c, [hl]
    ld d, e
    ld e, e
    ld d, e
    ld a, d
    ld d, e
    sub c
    ld d, e
    db $eb
    ld d, e
    ld [hl], h
    ld d, h
    sbc [hl]
    ld d, h
    ld d, c
    ld d, l
    ld h, d
    ld d, l
    xor h
    ld d, l
    jp $d855


jr_017_40cf:
    ld d, l
    rst RST_20
    ld d, l
    jr nz, jr_017_412a

    jr z, jr_017_412c

    inc a
    ld d, [hl]
    ld e, a
    ld d, [hl]
    ld a, [hl]
    ld d, [hl]
    adc h
    ld d, [hl]
    xor a
    ld d, [hl]
    add $56
    inc hl
    ld d, a
    ld b, l
    ld d, a
    ld [hl], h
    ld d, a
    pop bc
    ld d, a
    push de
    ld d, a
    adc l
    ld e, b
    sbc c
    ld e, b
    xor l
    ld e, b
    ldh [c], a
    ld e, b
    db $ec
    ld e, b
    db $fd
    ld e, b
    inc c
    ld e, c
    ld [hl+], a
    ld e, c
    inc [hl]
    ld e, c
    adc b
    ld e, c
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    sub h
    sub a
    jp hl


    dec c
    db $e3
    and $f3
    ldh [c], a
    sub c
    dec e
    sub [hl]
    ld hl, sp-$64
    adc [hl]
    sub e
    ld h, b
    and c
    dec c
    sbc $85
    add d
    add [hl]
    rst RST_18
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    sbc $c4
    and h
    rst RST_08
    cp l

jr_017_412a:
    and l
    ld c, [hl]

jr_017_412c:
    db $dd
    ld b, h
    or e
    xor d
    reti


    rst RST_18
    db $e4
    dec c
    sub [hl]
    sub [hl]
    ld a, [$7fe0]
    sub [hl]
    ldh a, [rNR21]
    ld a, a
    ld [$e2f8], a
    sbc c
    rst RST_30
    ld a, [$92e3]
    ld sp, hl
    ld [$609a], a
    and c
    rst RST_38
    inc e
    adc [hl]
    sub e
    sbc h
    ldh [c], a
    jp hl


    ld a, a
    sub [hl]
    db $fc
    sbc [hl]
    sub d
    jp hl


    ld a, a
    sbc e
    sub d
    db $ec
    ld h, b
    and c
    sbc $02
    and l
    and a
    rst RST_18
    db $e4
    ld a, a
    or d
    add $bc
    xor h
    reti


    ld d, $0d
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    and l
    and l
    and l
    sub c
    sub [hl]
    push hl
    sub d
    and c
    dec c
    db $eb
    or $99
    ld [$9a7f], a
    db $fc
    ld a, [$92e3]
    ld sp, hl
    or $93
    ld h, b
    and c
    inc c
    sub e
    db $fd
    pop hl
    db $fd
    ld d, $7f
    db $f4
    sbc l
    sub d
    sub [hl]
    rst RST_30
    ld a, a
    sbc h
    adc l
    sub e
    ld hl, sp-$15
    ld d, $ea
    rst RST_30
    sub h
    push hl
    sub d
    jp hl


    ld h, b
    ei
    sub e
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    sbc h
    ldh [$ff92], a
    ld d, $7f
    xor $1f
    db $fd
    sbc e
    ld a, [$92e3]
    ld sp, hl
    ld a, a
    db $ed
    db $f4
    jp hl


    dec c
    ld b, h
    or c
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    sbc h
    ldh [$ff92], a
    ld d, $7f
    xor $1f
    db $fd
    sbc e
    ld a, [$92e3]
    ld sp, hl
    ld a, a
    db $ed
    db $f4
    jp hl


    dec c
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    inc e
    pop af
    sub d
    db $fd
    ld d, $7f
    sub d
    ld sp, hl
    jp hl


    ld h, e
    ld a, a
    sub c
    sbc c
    rst RST_30
    ld a, [$92e5]
    and c
    rst RST_38
    sub l
    ld a, [$7f16]
    di
    db $fd
    or b
    ld a, a
    sub c
    sbc c
    or $93
    db $e4
    sbc l
    ld sp, hl
    db $e4
    dec c
    inc e
    pop af
    sub d
    db $fd
    ld d, $7f
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc $92
    adc a
    ld a, d
    db $fd
    sbc h
    ldh a, [$fffd]
    ld [$ea7f], a
    sub d
    ld a, [$92e5]
    or $a1
    dec c
    ld a, a
    sbc h
    db $fd
    ld h, b
    ld a, a
    db $eb
    db $e4
    ld [$6d7f], a
    ldh [c], a
    ld h, b
    ld d, $a5
    and l
    and l
    and c
    rst RST_18
    rst RST_38
    sbc $6c
    ld d, $92
    sbc h
    adc h
    ld [$ea7f], a
    sub d
    ld a, [$92e5]
    adc a
    db $e3
    dec c
    ld a, a
    sub d
    adc a
    ldh [$ff60], a
    ei
    sub e
    adc d
    inc c
    ld a, a
    sbc d
    sbc d
    and $7f
    sub d
    sub a
    ldh [$ffef], a
    rst RST_28
    ld a, a
    ld [$fa92], a
    ld sp, hl
    jp hl


    ld [$7f0d], a
    inc e
    pop af
    sub d
    db $fd

jr_017_4261:
    sub [hl]
    ld a, a
    sbc c
    sub d
    sub [hl]
    db $fd
    ld a, a
    jr jr_017_4261

    sub d
    sbc e
    and c
    rst RST_18
    rst RST_38
    push bc
    or d
    call z, Call_017_7fe9
    ld [$7fb0], a
    ld h, b
    sbc h
    ldh [$ffa1], a
    rst RST_38
    ld a, [$9c8f]
    adc h
    ld [$f57f], a
    adc a
    sbc b
    ld hl, sp-$1c
    ld a, a
    adc $a4
    pop de
    or b
    dec c
    ld [$fae5], a
    ldh [$ffa1], a
    inc c
    sbc a
    sbc h
    db $e3

jr_017_4296:
    ld a, a
    ld h, b
    db $fd
    ld h, b
    db $fd
    db $e4
    ld a, a
    cp l
    ld e, e
    and h
    ld b, h
    or b
    dec c
    sub c
    add hl, de
    db $e3
    sub d
    sbc b
    and l
    and l
    and l
    and c
    rst RST_38
    inc e
    pop af
    sub d
    db $fd
    ld [$927f], a
    adc a
    ld a, d
    ldh [c], a
    ld a, a
    sbc b
    rst RST_30
    adc a
    db $e3
    dec c
    jr c, jr_017_4296

    xor a
    db $e4
    sbc h
    ldh [$ffa1], a
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    db $e4
    adc a
    sbc e
    and $7f
    db $eb
    inc e
    adc [hl]
    sub e
    ld l, l
    reti


    or b
    dec c
    sub l
    sbc h
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    rst RST_38
    sub c
    sub c
    and l
    and l
    and l
    push hl
    db $fd
    db $e3
    ld a, a
    sbc d
    sbc d
    pop hl
    or $98
    dec c
    push af
    ld a, [$fdf9]
    ld h, b
    and l
    and l
    and l
    and c
    dec c
    push hl
    db $fd
    ld h, b
    sub [hl]
    ld a, a
    add sp, -$0f
    sbc b
    push hl
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    ld l, h
    sbc e
    xor $93
    push hl
    ld a, a
    sbc d
    sub e
    sub d
    and $7f
    sub l
    ld h, h
    ei
    sub d
    db $e3
    dec c
    inc e
    pop af
    sub d
    db $fd
    ld [$eb7f], a
    inc e
    adc [hl]
    sub e
    ld l, l
    reti


    or b
    ld a, a
    sub l
    sbc h
    db $e3
    dec c
    sbc c
    sub d
    sub [hl]
    db $fd
    or b
    ld a, a
    or $fd
    ld h, b
    and c
    rst RST_38
    add sp, $6e
    sbc c
    rst RST_28
    push hl
    sbc d
    ld h, e
    ld a, a
    ld a, [$9c8f]
    adc h
    jp hl


    push hl
    sub [hl]
    or b
    dec c
    ldh a, [$ffef]
    db $fc
    sbc h
    db $e3
    ld a, a
    sub l
    ld h, b
    db $f4
    sub [hl]
    push hl
    dec c
    add sp, -$0f
    ld hl, sp-$1a
    ldh [c], a
    sub d
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    inc e
    pop af
    sub d
    db $fd
    ld [$f27f], a
    db $fd
    sub a
    adc [hl]
    sbc h
    adc [hl]
    sub e
    or b
    ld a, a
    ldh a, [$ffe3]
    dec c
    sub l
    ld a, [$7fe9]
    sbc h
    adc [hl]
    sbc b
    rla
    adc [hl]
    sub e
    or b
    ld a, a
    ldh [rNR33], a
    add sp, -$20
    and c
    inc c
    sub l
    ld a, [$7f16]
    push hl
    db $fd
    jp hl


    ldh [$fff2], a
    and $7f
    sub a
    ldh [$ffe9], a
    sub [hl]
    dec c
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    rst RST_30
    sbc h
    sub d
    and c
    rst RST_38
    sbc $9c
    ld hl, sp-$1e
    ldh [$fffd], a
    db $e3
    sub d
    add sp, -$5b
    and l
    and l
    and c
    dec c
    ld a, a
    dec de
    db $fd
    add sp, -$03
    ld h, b
    ld d, $7f
    sbc d
    sbc d
    and $ea
    ld a, a
    inc e
    pop af
    sub d
    db $fd
    sub [hl]
    ld a, a
    sbc c
    sub d
    sub [hl]
    db $fd
    sbc h
    sub [hl]
    ld a, a
    ld [$fa92], a
    push hl
    sub d
    db $fd
    ld h, b
    and c
    rst RST_18
    rst RST_38
    inc e
    pop af
    sub d
    db $fd
    ld [$f27f], a
    db $fd
    sub a
    adc [hl]
    sbc h
    adc [hl]
    sub e
    or b
    dec c
    di
    ld h, h
    sbc h
    push hl
    ld d, $f7
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9f
    db $fd
    push hl
    ld a, a
    push hl
    rst RST_28
    sub h
    jp hl


    ld a, a
    sub d
    ldh [$ff92], a
    ld [$7f0d], a
    push hl
    sub d
    or $a1
    rst RST_18
    rst RST_38
    inc e
    pop af
    sub d
    db $fd
    ld [$f27f], a
    db $fd
    ld h, h
    sub e
    sbc b
    sbc e
    sbc a
    sub e
    and $0d
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc $5b
    or h
    and h
    reti


    sbc e
    db $fd
    jp hl


    ld a, a
    di
    pop hl
    di
    jp hl


    ld [$7f0d], a
    sub c
    ld hl, sp-$11
    sbc [hl]
    db $fd
    or $8a
    rst RST_18
    rst RST_38
    ldh a, [c]
    dec de
    ldh a, [c]
    ldh [$ffe4], a
    sub a
    and $ea
    ld a, a
    di
    sub e
    ld a, a
    ldh [rOCPD], a
    jp hl


    dec c
    sub l
    db $fc
    ld hl, sp-$1a
    ld a, a
    pop hl
    sub [hl]
    ld h, d
    sub d
    db $e3
    sub d
    ldh [$ffa1], a
    inc c
    sub l
    ld a, [$7fea]
    ldh a, [rNR32]
    ldh [$ff98], a
    or b
    ld a, a
    db $e4
    db $e4
    jp hl


    sub h
    dec c
    ld a, [$9c8f]
    adc h
    or b
    ld a, a
    sub l
    ld hl, sp-$07
    ld a, a
    inc e
    adc l
    db $fd
    ld l, e
    or b
    sbc h
    ldh [$ffa1], a
    rst RST_38
    sub l
    ld a, [$7f16]
    sub c
    sub d
    sbc e
    ldh [c], a
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    inc e
    pop af
    sub d
    db $fd
    ld [$920d], a
    adc a
    ldh [$ffa1], a
    inc c
    sbc $e5
    db $fd
    jp hl


    or $93
    ld h, e
    sbc l
    sub [hl]
    adc e
    dec c
    ld a, a
    push hl
    and $f3
    ld a, a
    or $93
    ld d, $7f
    push hl
    sbc c
    ld a, [$0d6a]
    ld a, a
    sub [hl]
    sub h
    adc a
    db $e3
    sbc b
    ld h, b
    sbc e
    sub d
    or $8a
    rst RST_18
    inc c
    and l
    and l
    and l
    ld h, h
    sub e
    di
    ld a, a
    pop af
    sbc h
    jp hl


    ld a, a
    sub d
    ld h, h
    sbc d
    ei
    ld d, $0d
    db $fc
    ld sp, hl
    sub d
    or $93
    ld h, b

Jump_017_44c1:
    and c
    rst RST_38
    sbc $92
    ldh [$ff92], a
    jp hl


    ld a, a
    di
    pop hl
    di
    jp hl


    or b
    ld a, a
    ldh a, [$ffe0]
    sbc c
    ld a, [$0d6a]
    ld a, a
    sub d
    ldh [$ff92], a
    jp hl


    ld a, a
    sub c
    sbc h
    and $7f
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    dec c
    ld a, a
    push hl
    db $ec
    ld h, b
    or b
    ld a, a
    di
    adc a
    db $e3
    sub a
    db $e3
    sbc b
    ld h, b
    sbc e
    sub d
    and c
    rst RST_18
    rst RST_38
    inc e
    pop af
    sub d
    db $fd
    ld [$6c7f], a
    sub a
    ldh a, [$ffe6]
    ld a, a
    db $fc
    rst RST_30
    sub d
    push hl
    ld d, $f7
    dec c
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $98
    db $fc
    sbc h
    sbc b
    ld [$9c7f], a
    rst RST_30
    push hl
    sub d
    jp hl


    ld h, e
    sbc l
    ld d, $0d
    ld a, a
    ld c, [hl]
    db $dd
    ld b, h
    or e
    xor d
    reti


    sbc e
    db $fd
    jp hl


    ld a, a
    sub d
    ldh [$ff92], a
    ld [$7f0d], a
    cp h
    or [hl]
    ld a, [hl-]
    ld d, $fc
    jp hl


    ld a, a
    sub [hl]
    db $fc
    rra
    sbc d
    ld h, e
    dec c
    ld a, a
    ld [$998f], a
    db $fd
    sbc e
    ld a, [$e9e0]
    ld h, e
    sbc l
    and c
    inc c
    ld a, a
    cp d
    db $dd
    cp b
    ret c

    and h
    call nz, Call_017_7f63
    sub c
    sbc h
    or b
    dec c
    ld a, a
    sub [hl]
    ldh [$fff2], a
    rst RST_30
    ld a, [$92e3]
    ldh [$ff7f], a
    sbc a
    sub e
    ld h, e
    sbc l
    or $a1
    rst RST_18
    rst RST_38
    sbc d
    jp hl


    db $ed
    db $f4
    ld [$9b7f], a
    pop af
    sub d
    ld h, b
    sbc c
    ld h, e
    push hl
    sbc b
    dec c
    sbc b
    sbc e
    adc a
    ldh [$ff7f], a
    and $98
    jp hl


    ld a, a
    and $95
    sub d
    di
    sbc l
    ld sp, hl
    and c
    rst RST_38
    sbc e
    ldh [c], a
    inc e
    db $fd
    jp hl


    ld a, a
    ldh [c], a
    ldh a, [$ff63]
    ld a, a
    sub l
    ld a, [$0db0]
    rst RST_28
    adc a
    db $e3
    sub d
    ldh [$ffe9], a
    ld [$637f], a
    db $fd
    sub a
    or d
    cp l
    ld h, b
    adc a
    ldh [$ffa1], a
    inc c
    ld h, e
    db $fd
    sub a
    or d
    cp l
    and $7f
    sbc h
    ld l, d
    ld hl, sp-$1e
    sbc c
    rst RST_30
    ld a, [$0de3]
    sub l
    ld a, [$7fea]
    ld l, d
    sbc b
    ld e, $fd
    db $e4
    ld a, a
    sub [hl]
    db $fd
    ld d, $94
    db $e3
    sub d
    ldh [$ffa1], a
    inc c
    sub d
    rst RST_28
    sub [hl]
    rst RST_30
    ld a, a
    ld h, e
    db $fd
    sub a
    cp h
    xor [hl]
    xor a
    cp b
    or b
    dec c
    sub e
    sbc c
    ld sp, hl
    jp hl


    sub [hl]
    and l
    and l
    and l
    and c
    inc c
    cp l
    or d
    xor a
    pop bc
    ld d, $7f
    ld [$f992], a
    db $e4
    ld a, a
    sub l
    ld a, [$0dea]
    sbc c
    pop af
    ld hl, sp-$50
    ld a, a
    sub c
    add hl, de
    push hl
    ld d, $f7
    ld a, a
    sub c
    jp hl


    or $ed
    dec c
    ldh [rOCPD], a
    ld h, b
    ldh [c], a
    jp hl


    ld h, b
    and l
    and l
    and l
    and c
    rst RST_38
    xor $1f
    db $fd
    inc e
    adc [hl]
    sub e
    ldh [$ff92], a
    jp hl


    ld a, a
    or $92
    dec c
    sub d
    ldh [$ff92], a
    ld h, b
    and c
    inc c
    sub l
    sub l
    sub a
    push hl
    ld a, a
    sub a
    dec e
    ld [$f07f], a
    sub c
    ldh [$fff7], a
    push hl
    sub d
    ld d, $0d
    sbc d
    jp hl


    ld a, a
    sub d
    ldh [$ff92], a
    and $7f
    push hl
    and $16
    dec c
    sub l
    sbc d
    adc a
    ldh [$ffe9], a
    ld h, b
    ei
    sub e
    sub [hl]
    and c
    rst RST_38
    ld h, b
    ld a, [$1696]
    ld a, a
    sbc d
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    or b
    ld a, a
    rst RST_28
    db $e4
    and $9c
    db $e3
    sbc h
    adc h
    add hl, de
    sub a
    jp hl


    ld a, a
    ld a, [$9cfd]
    adc l
    sub e
    or b
    dec c
    sbc h
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    inc c
    db $eb
    ld h, b
    ld hl, sp-$0e
    and $7f
    sub a
    dec e
    ld d, $7f
    sub c
    ld sp, hl
    and c
    dec c
    sbc d
    db $fd
    push hl
    ld a, a
    sbc h
    and $96
    ldh [$ffb0], a
    ld a, a
    sbc l
    ld sp, hl
    push hl
    db $fd
    db $e3
    dec c
    rst RST_08
    call z, $b1a8
    ld h, b
    adc a
    ldh [$ffe9], a
    sub [hl]
    push hl
    and l
    and l
    and l
    adc e
    rst RST_38
    and l
    and l
    and l
    db $eb
    ld h, b
    ld hl, sp-$0e
    jp hl


    ld a, a
    sub a
    dec e
    adc e
    inc c
    or [hl]
    and h
    reti


    cp l
    call nz, $99dd
    sub d
    ld l, h
    and $7f
    sub [hl]
    add sp, -$50
    dec c
    db $fc
    ldh [$ff9c], a
    db $e3
    sub d
    ldh [$ffe9], a
    ld [$9a7f], a
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    dec c
    ld h, b
    adc a
    ldh [$ffe9], a
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    sub d
    ldh [$ff92], a
    or b
    ld a, a
    xor $96
    db $fd
    sbc l
    ld sp, hl
    ldh [$fff2], a
    jp hl


    dec c
    db $eb
    sub a
    ld h, b
    sbc h
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    db $f4
    ldh [c], a
    rst RST_30
    and $7f
    ldh a, [$ffe2]
    sub [hl]
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9a
    sbc d
    and $7f
    sub d
    ld sp, hl
    rra
    ld a, a
    cp l
    ld e, d
    or d
    cp b
    adc d
    dec c
    ld a, a
    ldh a, [$ffe2]
    sbc c
    ldh [$ff1f], a
    adc d
    rst RST_18
    inc c
    sbc $ef
    ldh [$ff7f], a
    and $16
    sbc h
    db $e3
    ld [$e07f], a
    sub d
    db $ed
    db $fd
    ld h, b
    adc d
    dec c
    ld a, a
    ld [$92f4], a
    db $e4
    sbc d
    ld a, a
    sbc d
    ei
    sbc h
    pop hl
    rst RST_28
    sub l
    sub e
    ld e, $8a
    rst RST_18
    inc c
    sub c
    adc a
    db $e4
    sub d
    sub e
    rst RST_28
    and $7f
    sub l
    ld a, [$0dea]
    sub [hl]
    ld e, $e4
    sub l
    sbc h
    jp hl


    or $92
    ld a, a
    sub [hl]
    rst RST_30
    ld h, b
    and $0d
    push hl
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    db $eb
    sub a
    ld h, b
    sbc h
    or b
    ld a, a
    ldh a, [$ffe0]
    ld h, b
    sbc c
    ld h, e
    ld a, a
    db $e4
    ld hl, sp-$16
    ld h, b
    ld d, $0d
    ldh [$ff8f], a
    db $e3
    sbc b
    ld sp, hl
    and c
    rst RST_38
    sbc $44
    or c
    ld d, $7f
    sub c
    sub d
    db $e3
    sub d
    ld sp, hl
    ld a, a
    db $e4
    sub d
    sub e
    sbc d
    db $e4
    ld [$7f0d], a
    db $f4
    ldh [c], a
    ld [$e67f], a
    add hl, de
    ldh [$fffd], a
    ld h, b
    adc d
    inc c
    ld a, a
    and l
    and l
    and l
    sub c
    and $97
    jp hl


    ld a, a
    sub a
    add hl, de
    db $fd
    ld d, $0d
    ld a, a
    db $fc
    ld sp, hl
    sbc b
    push hl
    ld sp, hl
    sub [hl]
    push hl
    adc e
    inc c
    ld a, a
    db $e4
    and $96
    sbc b
    ld a, a
    sub c
    and $97
    and $7f
    sbc h
    rst RST_30
    sbc [hl]
    ldh [$ffee], a
    sub e
    ld d, $7f
    sub d
    sub d
    push hl
    and c
    rst RST_18
    inc c
    db $f4
    ldh [c], a
    rst RST_30
    ld d, $7f
    sbc e
    adc a
    db $e3
    sub d
    sbc b
    ld a, a
    sub c
    sbc h
    sub l
    db $e4
    ld d, $0d
    sub a
    sbc d
    sub h
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    sbc d
    ld a, [$7f63]
    sbc h
    ld l, d
    rst RST_30
    sbc b
    ld [$600d], a
    sub d
    inc e
    adc [hl]
    sub e
    ld l, h
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    sbc $91
    sbc c
    ldh [$ff7f], a
    db $eb
    sub a
    ld h, b
    sbc h
    ld [$9c7f], a
    ldh a, [c]
    ld sp, hl
    or $93
    and $df
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    sub c
    sbc h
    db $ec
    ld h, b
    and $ea
    ld a, a
    sbc $5b
    or h
    and h
    reti


    and l
    rst RST_08
    db $db

jr_017_4818:
    and h
    or [hl]
    rst RST_18
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    sbc $c4
    and h
    rst RST_08
    cp l
    and l
    ld c, [hl]
    db $dd
    ld b, h
    or e
    xor d
    reti


    rst RST_18
    db $e4
    dec c
    sub c
    sbc h
    db $ec
    ld h, b
    and $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    pop af
    sbc d
    sub e
    ld [$9c7f], a
    ldh [$ff92], a
    sub l
    sub a
    ld l, d
    jp hl


    dec c
    sub e
    sbc c
    ldh [c], a
    sbc c
    ld h, b
    and c
    rst RST_38
    db $ec
    ldh [$fff8], a
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    ld d, $7f
    sub l
    ld a, [$0de9]
    ld c, [hl]
    ld b, e
    xor b
    and h
    pop bc
    xor d
    xor a
    cp b
    or b
    ld a, a
    ld [$f21c], a
    ldh [$ffa1], a
    rst RST_38
    sbc [hl]
    db $fd
    ldh [$ff98], a
    di
    jp hl


    sub d
    ld a, [$7fe9]
    push hl
    sub [hl]
    and $92
    ld sp, hl
    and c
    inc c
    jr jr_017_4818

    db $fc
    sub c
    sub c
    sub c
    adc a
    and l
    and l
    and l
    adc d
    dec c
    sbc l
    ld a, [de]
    sub d
    ld a, a
    and $95
    sub d
    ld h, b
    adc d
    rst RST_38
    db $e4
    ldh [c], a
    ld e, $fd
    ld a, a
    db $ec
    ldh [rNR21], a
    ld a, a
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub l
    ld a, [$7f16]
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    jp hl


    and $7f
    sub a
    ld h, d
    sub [hl]
    dec e
    dec c
    ld h, b
    ld a, [$1696]
    ld a, a
    sbc [hl]
    db $fd
    ldh [$ff98], a
    di
    jp hl


    sub d
    ld a, [$0db0]
    sub e
    ld a, [de]
    sub [hl]
    sbc h
    ld [$f21c], a
    ldh [$ffa1], a
    inc c
    call nz, $afd7
    cp b
    and $7f
    jp hl


    sbc [hl]
    rst RST_30
    ld a, [$f6e0]
    sub e
    ld h, b
    and c
    dec c
    sbc h
    ld l, d
    rst RST_30
    sbc b
    ld a, a
    ld b, h
    rst RST_10
    or d
    ld c, h
    or b
    ld a, a
    ldh [$ffe9], a
    sbc h
    pop af
    sbc d
    db $e4
    and $9c
    or $93
    and l
    and l
    and l
    and c
    inc c
    sbc h
    ld l, d
    rst RST_30
    sbc b
    sbc h
    db $e3
    ld a, a
    call nz, $afd7
    cp b
    ld [$e47f], a
    rst RST_28
    ld hl, sp+$0d
    sbc [hl]
    db $fd
    ldh [$ff98], a
    di
    jp hl


    sub d
    ld a, [$7f16]
    call nz, $afd7
    cp b
    sub [hl]
    rst RST_30
    dec c
    sub l
    ei
    sbc e
    ld a, [$a1e0]
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    db $ec
    ldh [rNR21], a
    ld a, a
    sub c
    sub d
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    and l
    and l
    and l
    sub e
    adc a
    adc d
    dec c
    rst RST_28
    ld l, h
    sbc h
    sub d
    adc d
    adc d
    inc c
    rst RST_28
    db $fc
    ld hl, sp-$50
    ld a, a
    ldh a, [$fff6]
    sub e
    db $e4
    sbc h
    db $e3
    ld a, a
    ldh a, [c]
    or b
    dec c
    xor $9f
    ldh a, [c]
    db $e3
    ldh a, [$fff9]
    db $e4
    ld a, a
    db $ec
    ldh [$fff8], a
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    ld d, $0d
    sub l
    ld a, [$7fb0]
    inc e
    adc a
    db $e4
    ld a, a
    ldh a, [$ffe3]
    sub d
    ldh [$ff8a], a
    rst RST_38
    sbc a
    jp hl


    sub e
    pop hl
    ld a, a
    sub l
    ld a, [$7fb0]
    sub d
    sub [hl]
    sbc h
    db $e3
    sub l
    sub d
    db $e3
    di
    dec c
    rst RST_28
    adc a
    ldh [$ff98], a
    ld a, a
    sub d
    ldh a, [rNR21]
    ld a, a
    push hl
    sub d
    db $e4
    dec c
    sub l
    di
    adc a
    ldh [$ffe9], a
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    inc c
    db $ec
    ldh [$fff8], a
    ld [$ea7f], a
    push hl
    sbc h
    or b
    ld a, a
    ld [$f21c], a
    ldh [$ffa1], a
    inc c
    sbc $9a
    sub d
    ldh [c], a
    ld d, $7f
    inc e
    adc l
    sub e
    or $93
    push hl
    ld a, a
    inc e
    db $fd
    ld l, h
    ldh [c], a
    sub [hl]
    ld a, a
    ld h, h
    sub e
    sub [hl]
    or b
    ld a, a
    sbc h
    ldh a, [c]
    sbc l
    di
    jp hl


    ld [$e57f], a
    and $eb
    db $e4
    ldh [c], a
    ld a, a
    di
    adc a
    db $e3
    push hl
    sub d
    ld e, $8a
    rst RST_18
    inc c
    sbc $9f
    sub e
    ld h, b
    push hl
    ld a, a
    cp l
    ld e, d
    or d
    cp b
    and c
    dec c
    ld a, a
    sbc d
    sub d
    ldh [c], a
    or b
    ld a, a
    sbc c
    sbc h
    db $e3
    sbc h
    rst RST_28
    sub l
    sub e
    adc d
    rst RST_18
    inc c
    sub c
    and h
    adc d
    dec c
    sub d
    adc a
    sub [hl]
    db $fd
    jp hl


    ld a, a
    sub l
    db $fc
    ld hl, sp+$60
    adc d
    rst RST_38
    sbc a
    jp hl


    sub e
    pop hl
    ld a, a
    db $ec
    ldh [$fff8], a
    ld [$bc7f], a
    and h
    add hl, sp
    reti


    ld d, $0d
    sbc $a9
    and l
    call $e4df
    sub d
    sub e
    ld a, a
    or d
    add $bc
    xor h
    reti


    jp hl


    dec c
    sub l
    db $e4
    sbc d
    db $e4
    ld a, a
    sub c
    sbc b
    sbc h
    adc l
    sbc h
    db $e3
    sub d
    ld sp, hl
    dec c
    sbc h
    adc h
    sbc h
    db $fd
    or b
    ld a, a
    ldh a, [$ffe2]
    sbc c
    ldh [$ffa1], a
    inc c
    sbc $95
    sub d
    ld a, a
    pop de
    and h
    cp l
    adc d
    dec c
    ld a, a
    sbc d
    ld a, [$7fea]
    ld l, l
    db $dd
    jp $a4a8


    add $91
    and $97
    jp hl


    dec c
    ld a, a
    sbc h
    adc h
    sbc h
    db $fd
    ld h, b
    adc d
    rst RST_18
    inc c
    sbc $91
    and $97
    ld [$9c7f], a
    adc h
    sbc h
    db $fd
    ld d, $0d
    ld a, a
    sbc l
    sub a
    ld h, b
    sub [hl]
    rst RST_30
    push hl
    sub c
    and l
    and l
    and l
    and c
    inc c
    ld a, a
    ld h, e
    di
    ld a, a
    sbc d
    sub d
    ldh [c], a
    ld [$937f], a
    ldh [c], a
    adc a
    db $e3
    sub d
    push hl
    sub d
    ld e, $a1
    inc c
    ld a, a
    ld h, h
    sub e
    sbc h
    db $e3
    ld a, a
    sbc d
    jp hl


    ld a, a
    sbc h
    adc h
    sbc h
    db $fd
    or b
    dec c
    ld a, a
    sbc d
    sub d
    ldh [c], a
    ld d, $7f
    di
    adc a
    db $e3
    sub d
    ld sp, hl
    db $fd
    ld h, b
    adc e
    dec c
    ld a, a
    rst RST_28
    sbc e
    sub [hl]
    ld a, a
    sbc d
    sub d
    ldh [c], a
    ld a, a
    sbc c
    sub d
    sub [hl]
    db $fd
    sub [hl]
    adc e
    rst RST_18
    inc c
    sbc $91
    sub c
    ld a, a
    sub a
    adc a
    db $e4
    ld a, a
    sbc a
    sub e
    sbc e
    adc d
    dec c
    ld a, a
    sbc d
    sub d
    ldh [c], a
    ld [$9a7f], a
    ei
    sbc h
    db $e3
    sub l
    sub d
    ldh [rNR21], a
    dec c
    ld a, a
    or $9b
    sbc a
    sub e
    ld h, b
    and c
    rst RST_18
    inc c
    sub c
    and h
    adc d
    dec c
    sbc d
    sbc d
    and $7f
    sbc b
    ld sp, hl
    jp hl


    ld [$9d7f], a
    sbc d
    sbc h
    dec c
    ld [$9df4], a
    rla
    ldh [$fff6], a
    sub e
    ld h, b
    and l
    and l
    and l
    and c
    inc c
    sub l
    ld a, [$7fea]
    sbc d
    ei
    sbc e
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc a
    jp hl


    sub e
    pop hl
    ld a, a
    db $ec
    ldh [$fff8], a
    ld [$4e7f], a
    db $dd
    ld b, h
    or e
    xor d
    reti


    jp hl


    dec c
    db $e3
    ld d, $f0
    or b
    ld a, a
    ldh a, [$ffe2]
    sbc c
    ldh [$ffa1], a
    inc c
    sbc $95
    sub d
    ld a, a
    ldh a, [$fffb]
    or $7f
    pop de
    and h
    cp l
    adc d
    dec c
    ld a, a
    ld c, [hl]
    cp l
    sub c
    db $e3
    jp hl


    ld a, a
    db $e3
    ld d, $f0
    ld h, b
    ld e, $a1
    rst RST_18
    inc c
    sbc $a5
    and l
    and l
    sbc a
    jp hl


    or $93
    ld h, b
    push hl
    ld a, a
    cp l
    ld e, d
    or d
    cp b
    and c
    dec c
    ld a, a
    sbc d
    db $fd
    push hl
    di
    jp hl


    or b
    ld a, a
    di
    adc a
    db $e3
    sub d
    ld sp, hl
    push hl
    db $fd
    db $e3
    dec c
    ld a, a
    sbc d
    sub d
    ldh [c], a
    ld [$e57f], a
    and $f3
    jp hl


    ld a, a
    push hl
    jp hl


    sub [hl]
    push hl
    adc e
    rst RST_18
    inc c
    sbc $fc
    sub [hl]
    rst RST_30
    db $fd
    push hl
    ld a, a
    pop de
    and h
    cp l
    and c
    dec c
    ld a, a
    ld h, b
    ld d, $7f
    ldh [c], a
    sub [hl]
    rst RST_28
    sub h
    db $e3
    sub l
    sub d
    db $e3
    ld a, a
    sub c
    and $97
    and $0d
    ld a, a
    sbc h
    rst RST_30
    sbc [hl]
    ldh [$ffee], a
    sub e
    ld d, $7f
    or $9b
    sbc a
    sub e
    ld h, b
    and c
    rst RST_18
    inc c
    sbc $fc
    sub [hl]
    adc a
    ldh [$ff7f], a
    cp l
    ld e, d
    or d
    cp b
    and c
    dec c
    ld a, a
    sub c
    db $e4
    ld h, e
    ld a, a
    ld c, [hl]
    db $dd
    ld b, h
    or e
    xor d
    reti


    or b
    dec c
    ld a, a
    db $f4
    adc a
    ldh [$ffe4], a
    sub a
    jp hl


    or $93
    and $7f
    inc e
    adc a
    sbc b
    ld hl, sp+$0d
    ld a, a
    sbc h
    ldh a, [c]
    sub c
    add hl, de
    or $93
    ld e, $a1
    rst RST_18
    inc c
    db $ec
    ldh [$fff8], a
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    ld [$957f], a
    ld a, [$0de9]
    di
    pop hl
    di
    jp hl


    sub [hl]
    rst RST_30
    ld a, a
    sub a
    adc [hl]
    sub e
    ldh a, [$ffe9]
    ld a, a
    sub c
    ld sp, hl
    di
    jp hl


    or b
    db $e4
    adc a
    db $e3
    ld a, a
    ld h, h
    sbc d
    sub [hl]
    db $ed
    ld a, a
    sub d
    adc a
    db $e3
    sbc h

jr_017_4c0f:
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub e
    sbc l
    jr jr_017_4c0f

    sub d
    ld a, a
    sbc [hl]
    db $fd
    ldh [$ff98], a
    sbc h
    ldh [c], a
    ld h, b
    and c
    dec c
    sbc [hl]
    db $fd
    dec de
    sub d
    jp hl


    ld a, a
    sub a
    adc [hl]
    sub e
    ld a, [$e5e2]
    ld a, a
    and $95
    sub d
    ld d, $0d
    sbc l
    ld sp, hl
    and c
    rst RST_38
    sub e
    sub h
    jp hl


    ld a, a
    sub [hl]
    sub d
    sub [hl]
    rst RST_30
    ld a, a
    or $1a
    ld a, [$e9f3]
    or b
    dec c
    sub l
    db $e4
    sbc l
    ldh [$fff2], a
    jp hl


    ld a, a
    cp h
    xor l
    and h
    call nz, $fb60
    sub e
    and c
    rst RST_38
    or e
    db $db
    or e
    db $db
    sbc l
    ld sp, hl
    rst RST_28
    sub h
    and $7f
    push hl
    and $96
    dec c
    sbc l
    ld sp, hl
    db $fd
    ld h, b
    adc a
    ldh [$ffe5], a
    and c
    rst RST_38
    db $db
    and h
    ld e, h
    ld h, e
    ld a, a
    sbc h
    ld l, d
    rst RST_30
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    dec c
    db $f4
    ldh [c], a
    rst RST_30
    ld d, $7f
    di
    ld h, h
    adc a
    db $e3
    sbc b
    ld sp, hl
    rst RST_28
    sub h
    and $0d
    push hl
    db $fd
    db $e4
    sub [hl]
    sbc h
    push hl
    sbc c
    ld a, [$8a6a]
    rst RST_38
    db $ec
    ldh [$fff8], a
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    and $7f
    ld hl, sp-$72
    sub e
    db $e3
    or b
    dec c
    sbc h
    ld l, d
    rst RST_30
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub a
    jp hl


    ld a, a
    sub [hl]
    ld a, [de]
    ld h, b
    and c
    dec c
    push hl
    and $16
    ld a, a
    ld [$8f92], a
    db $e3
    sub d
    ldh [$ffe9], a
    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    inc c
    rst RST_28
    ld d, $8f
    ldh [$ff7f], a
    cp b
    scf
    ld d, $7f
    ldh [$ff98], a
    sbc e
    db $fd
    dec c
    ldh [c], a
    sub a
    sbc e
    sbc e
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    sub c
    ld l, h
    push hl
    sub d
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    sbc a
    sub e
    ld h, b
    adc d
    dec c
    sub d
    sub d
    sbc d
    db $e4
    or b
    ld a, a
    sub l
    di
    sub d
    ldh [c], a
    sub d
    ldh [$ff8a], a
    inc c
    sbc d
    jp hl


    ld a, a
    sub [hl]
    ld a, [de]
    or b
    ld a, a
    ldh [c], a
    sub [hl]
    sub h
    ld l, d
    ld a, a
    db $db
    and h
    ld e, h
    ld d, $0d
    sub a
    ld a, [$96f9]
    di
    ld a, a
    sbc h
    ld a, [$92e5]
    rra
    adc d
    rst RST_38
    sub a
    jp hl


    ld a, a
    sub [hl]
    ld a, [de]
    ld h, b
    and c
    dec c
    sbc d
    ld a, [$7fe9]
    sub l
    sub [hl]
    add hl, de
    ld h, e
    ld a, a
    db $db
    and h
    ld e, h
    or b
    dec c
    sub a
    ld sp, hl
    sbc d
    db $e4
    ld d, $7f
    ld h, e
    sub a
    ldh [$ffa1], a
    rst RST_38
    sbc $95
    sub d
    ld a, a
    cp l
    ld e, d
    or d
    cp b
    and c
    dec c
    ld a, a
    db $f4
    ldh [c], a
    ld d, $7f
    sub d
    push hl
    sbc b
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    ld e, $8a
    rst RST_18
    rst RST_38
    sbc $63
    di
    ld a, a
    sbc a
    db $e4
    and $7f
    and $19
    ldh [$fff6], a
    sub e
    sbc l
    ld [$7f0d], a
    push hl
    sub d
    push hl
    and l
    and l
    and l
    and c
    inc c
    ld a, a
    ld h, h
    sbc d
    sub [hl]
    ld a, a
    sbc a
    jp hl


    db $ed
    db $fd
    and $7f
    sub [hl]
    sbc b
    ld a, [$0de3]
    ld a, a
    sub d
    ld sp, hl
    db $fd
    inc e
    adc h
    push hl
    sub d
    sub [hl]
    adc e
    rst RST_18
    rst RST_38
    rla
    adc [hl]
    sub e
    pop af
    or $93
    jp hl


    ld a, a
    sbc [hl]
    db $fd
    ldh [$ff98], a
    sub a
    ld h, b
    and c
    rst RST_38
    sbc [hl]
    db $fd
    ldh [$ff98], a
    or b
    ld a, a
    sbc l
    ld sp, hl
    ldh [$fff2], a
    jp hl


    ld a, a
    sbc [hl]
    db $fd
    dec de
    sub d
    ld h, b
    and c
    db $e4
    sbc b
    ld l, l
    ldh [c], a
    push hl
    ld a, a
    sbc [hl]
    db $fd
    dec de
    sub d
    push hl
    jp hl


    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    rst RST_38
    sbc $17
    adc [hl]
    sub e
    pop af
    or $93
    ld a, a
    sbc [hl]
    db $fd
    dec de
    sub d
    rst RST_18
    db $e4
    dec c
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    ld a, a
    ld [$609a], a
    and c
    rst RST_38
    sbc [hl]
    db $fd
    ldh [$ff98], a
    di
    jp hl


    sub d
    ld a, [$a160]
    dec c
    sbc d
    ld a, [$e460]
    ld a, a
    sub d
    sbc b
    rst RST_30
    ld h, e
    di
    ld a, a
    ld [$f992], a
    push hl
    and c
    rst RST_38
    sbc d
    jp hl


    sub c
    ldh [$fff8], a
    or b
    ld a, a
    or e
    db $db
    or e
    db $db
    sbc h
    db $e3
    sub d
    ld sp, hl
    db $e4
    dec c
    sbc l
    jr jr_017_4e8f

    sub c
    sub d
    ldh [c], a

jr_017_4e13:
    rst RST_30
    and $7f
    ldh a, [$ffe2]
    sub [hl]
    adc a
    db $e3
    sbc h
    rst RST_28
    sub e
    dec c
    ld h, b
    ei
    sub e
    and c
    inc c
    ld h, e
    di
    ld a, a
    sbc d
    jp hl


    cp b
    ret c

    and h
    add $dd
    jr c, jr_017_4e13

    db $fd
    jp hl


    dec c
    sub l
    db $e4
    sbc d
    db $e4
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    and $7f
    push hl
    db $fd
    rst RST_30
    sub [hl]
    jp hl


    dec c
    ldh [c], a
    push hl
    ld d, $f8
    ld d, $7f
    sub c
    adc a
    ldh [$ffe9], a
    ld [$e07f], a
    sbc h
    sub [hl]
    ld h, b
    and c
    inc c
    cp l
    and h
    jp nz, $a4b9

    cp l
    and $91
    adc a
    ldh [$ff7f], a
    sbc h
    adc h
    sbc h
    db $fd
    ld d, $0d
    sbc a
    jp hl


    sbc h
    adc [hl]
    sub e
    sbc d
    ld h, b
    adc d
    inc c
    ld h, b
    sub [hl]
    rst RST_30
    ld a, a
    and $19
    ld h, b
    sbc h
    db $e3
    ld [$927f], a
    ldh a, [rNR21]
    push hl
    sub d
    adc d
    dec c
    sbc a
    jp hl


    ld a, a
    sub l

jr_017_4e86:
    db $e4
    sbc d
    or b
    ld a, a
    sbc e
    jr jr_017_4e86

    ldh [$fff2], a

jr_017_4e8f:
    and $0d
    sbc d
    sbc d
    and $7f
    sub a
    ldh [$fffd], a
    inc e
    adc h
    push hl
    sub d
    sub [hl]
    adc d
    inc c
    ld h, e
    ld [$927f], a
    adc a
    ldh [$ff92], a
    ld a, a
    ld h, h
    sub e
    sbc l
    ld a, [$8b6a]
    dec c
    sub d
    sub d
    ld a, a
    sub [hl]
    db $fd
    ld d, $94
    ld [$e57f], a
    sub d
    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    inc c
    and l
    and l
    and l
    sbc a
    sub e
    ld h, b
    adc d
    rst RST_38
    sbc d
    sbc d
    sub [hl]
    rst RST_30
    ld a, a
    and $19
    ldh [$fff6], a
    sub e
    and $7f
    ldh a, [$ff9e]
    sub [hl]
    sbc c
    db $e3
    dec c
    sbc d
    jp hl


    ld a, a
    sbc [hl]
    db $fd
    ldh [$ff98], a
    di
    jp hl


    sub d
    ld a, [$7fe9]
    push hl
    sub [hl]
    and $0d
    sub [hl]
    sbc b
    ld a, [$92e3]
    ld a, [$7f6a]
    db $f4
    ldh [c], a
    rst RST_30
    or b
    dec c
    ld a, [de]
    rst RST_28
    sub [hl]
    sbc [hl]
    ld sp, hl
    sub [hl]
    di
    ld a, a
    sbc h
    ld a, [$92e5]
    adc d
    rst RST_38
    sbc a
    db $fd
    push hl
    sbc d
    db $e4
    ld [$637f], a
    sub a
    push hl
    sub d
    and c
    dec c
    db $db
    and h
    ld e, h
    ld h, e
    ld a, a
    sbc h
    ld l, d
    rst RST_30
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    cp b
    scf
    ld d, $7f
    ld h, e
    db $e3
    sub d
    ld sp, hl
    db $e4
    sbc d
    ei
    and $7f
    db $db
    and h
    ld e, h
    or b
    dec c
    sub l
    sbc h
    sub c
    db $e3
    db $e3
    ld a, a
    ld e, $fd
    ld a, [de]
    and $7f
    pop hl
    sub [hl]
    rst RST_30
    sub d
    adc a
    ld a, d
    sub d
    sub e
    ld a, [de]
    sub [hl]
    sbc h
    ldh [$ffa1], a
    rst RST_38
    db $f4
    adc a
    ldh [$ff8a], a
    dec c
    db $db
    and h
    ld e, h
    ld d, $7f
    sub a
    ld a, [$a1e0]
    dec c
    inc e
    push af
    sub e
    and $7f
    push hl
    adc a
    ldh [$ff1f], a
    adc d
    inc c
    ld h, e
    di
    and l
    and l
    and l
    sbc d
    jp hl


    rst RST_28
    rst RST_28
    ld h, e
    ld [$f47f], a
    ldh [c], a
    rst RST_30
    and $0d
    sbc d
    ei
    sbc e
    ld a, [$9ce3]
    rst RST_28
    sub e
    ld h, b
    ei
    sub e
    and c
    inc c
    db $f4
    ldh [c], a
    rst RST_30
    or b
    ld a, a
    ld a, [de]
    rst RST_28
    sub [hl]
    sbc [hl]
    ld sp, hl
    ld a, a
    xor $93
    xor $93
    ld [$e50d], a
    sub d
    ld h, b
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    adc e
    rst RST_38
    sub c
    adc a
    adc d
    dec c
    sub c
    sbc h
    sub l
    db $e4
    ld d, $7f
    sub a
    sbc d
    sub h
    ld sp, hl
    adc d
    dec c
    db $f4
    ldh [c], a
    rst RST_30
    ld d, $7f
    di
    ld h, h
    adc a
    db $e3
    sub a
    ldh [$fffd], a
    ld h, b
    adc d
    rst RST_38
    sbc $91
    and $97
    ld [$957f], a
    rst RST_28
    sub h
    jp hl


    sbc d
    db $e4
    push hl
    db $fd
    sub [hl]
    dec c
    ld a, a
    sbc h
    rst RST_30
    push hl
    sub d
    adc a
    db $e3
    ld a, a
    sub d
    adc a
    db $e3
    ld sp, hl
    ld e, $a1
    rst RST_18
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    ld e, e
    cp l
    call nz, $b0d9
    ld a, a
    db $e4
    ld hl, sp+$60
    sbc h
    db $e3
    sub [hl]
    rst RST_30
    dec c
    sub l
    ld a, [$7fe6]
    sub d
    adc a
    ldh [$ffa1], a
    dec c
    sbc $e5
    and $96
    ld a, a
    sub d
    sub d
    jp hl


    sbc d
    sbc h
    ldh [$ff92], a
    sbc d
    db $e4
    ld [$7f0d], a
    sub c
    ld sp, hl
    sub [hl]
    adc e
    rst RST_18
    rst RST_38
    sub l
    ld a, [$7f16]
    push af
    sub d
    ld a, [de]
    db $fd
    or b
    ld a, a
    jp hl


    sbc d
    sbc l
    rst RST_28
    sub h
    and $0d
    db $f4
    ldh [c], a
    rst RST_30
    ld [$957f], a
    ld a, [$7fe9]
    sbc h
    db $fd
    rra
    sub e
    or b
    dec c
    ld l, h
    pop hl
    rst RST_20
    sub d
    ldh [$ffa1], a
    rst RST_38
    db $db
    and h
    ld e, h
    ld d, $7f
    sub a
    ld a, [$f7e0]
    push hl
    sub c
    and c
    rst RST_38
    sub l
    ld a, [$7f16]
    or e
    db $db
    or e
    db $db
    sbc h
    db $e3
    sub d
    ld sp, hl
    db $e4
    sbc d
    ei
    or b
    dec c
    db $f4
    ldh [c], a
    rst RST_30
    and $7f
    ldh a, [$ffe2]
    sub [hl]
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc [hl]
    db $fd
    dec de
    sub d
    or b
    ld a, a
    sbc [hl]
    db $fd
    ldh [$ff98], a
    sub a
    jp hl


    ld a, a
    push hl
    sub [hl]
    and $0d
    sub d
    ld a, [$a1e0]
    rst RST_38
    rst RST_20
    ld d, $e5
    sbc c
    ld a, [$7f6a]
    sub d
    ld a, [$faf7]
    push hl
    sub d
    and c
    rst RST_38
    ldh [c], a
    rst RST_28
    ldh a, [$ffb0]
    ld a, a
    sub d
    inc e
    adc a
    db $e3
    ldh a, [$ffe0]
    ld d, $7f
    rst RST_28
    adc a
    ldh [$ff98], a
    dec c
    sub e
    ld a, [de]
    sub [hl]
    push hl
    sub d
    and c
    inc c
    sbc [hl]
    db $fd
    ldh [$ff98], a
    push hl
    db $fd
    db $e3
    ld a, a
    sub d
    pop hl
    ld h, h
    di
    dec c
    db $f4
    adc a
    ldh [$ff9a], a
    db $e4
    ld d, $e5
    sub d
    sub [hl]
    rst RST_30
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$7fb0]
    sub d
    sbc a
    sub d
    ld h, e
    ld a, a
    xor $93
    ld hl, sp+$60
    sbc h
    ldh [$ffe4], a
    sub a
    dec c
    db $ec
    ldh [rNR21], a
    ld a, a
    sbc d
    db $fc
    ld a, [$f6e0]
    sub e
    ld h, b
    and c
    dec c
    sbc h
    rst RST_28
    rst RST_30
    push hl
    sbc b
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    cp h
    xor l
    and h
    call nz, Call_017_7fea
    sbc l
    ld l, l
    ld sp, hl
    jp hl


    ld h, e
    ld a, a
    jp hl


    ld l, [hl]
    ld a, [$92e5]
    and c
    rst RST_38
    sbc $e6
    add hl, de
    or $93
    db $e4
    sbc h
    db $e3
    sub d
    ldh [$ffe9], a
    sub [hl]
    adc e
    dec c
    ld a, a
    rst RST_28
    sub c
    ld a, a
    ldh a, [$ffe2]
    sbc c
    db $e3
    sbc h
    rst RST_28
    sub h
    ld l, d
    ld a, a
    sbc a
    db $fd
    push hl
    sbc d
    db $e4
    ld a, a
    sub [hl]
    db $fd
    sbc c
    sub d
    push hl
    sub d
    ld d, $e8
    and c
    rst RST_38
    ld a, a
    sub c
    and $97
    ld [$647f], a
    sub e
    sbc h
    db $e3
    ld a, a
    sub c
    jp hl


    ld a, a
    db $e3
    ld d, $f0
    or b
    ld a, a
    sub l
    rst RST_28
    sub h
    ld d, $7f
    di
    adc a
    db $e3
    sub d
    ldh [$ffe9], a
    sub [hl]
    dec c
    ld a, a
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    sbc h
    ld a, a
    sub l
    rst RST_28
    sub h
    jp hl


    sbc d
    db $e4
    push hl
    ld h, h
    dec c
    ld a, a
    sub a
    sub d
    ldh [$ff9a], a
    db $e4
    di
    push hl
    sub d
    db $e4
    ld a, a
    sub d
    adc a
    db $e3
    sub d
    ldh [$ffa1], a
    inc c
    ld a, a
    sub l
    rst RST_28
    sub h
    or b
    ld a, a
    sbc d
    ei
    sbc h
    db $e3
    di
    ld a, a
    sub [hl]
    rst RST_28
    db $fc
    push hl
    sub d
    dec c
    ld a, a
    db $e4
    sub d
    sub e
    sbc d
    db $e4
    ld h, b
    and c
    inc c
    ld a, a
    push hl
    and $96
    ld a, a
    sub d
    sub d
    jp hl


    sbc d

jr_017_5190:
    sbc h
    ldh [$ff92], a
    sbc d
    db $e4
    ld [$7f0d], a
    sub c
    ld sp, hl
    sub [hl]
    adc e
    rst RST_18
    rst RST_38
    sbc $d8
    rst RST_10
    or d
    or c
    db $dd
    call nz, $b8a5
    ret c

    and h
    add $dd
    jr c, jr_017_5190

    db $fd
    rst RST_18
    jp hl


    ei
    sub e
    sub [hl]
    ld h, b
    and c
    rst RST_38
    rst RST_08
    ld b, h
    sub [hl]
    rst RST_30
    ld a, a
    db $e4
    sub l
    ld hl, sp+$16
    ld a, a
    ldh a, [$ff94]
    ld sp, hl
    and c
    dec c
    ld h, b
    ld a, [$7ff3]
    sub d
    push hl
    sub d
    and l
    and l
    and l
    and c

jr_017_51d0:
    rst RST_38
    cp b
    ret c

    and h
    add $dd
    jr c, jr_017_51d0

    adc [hl]

jr_017_51d9:
    sub e
    sub a
    db $fd
    jp hl


    dec c
    sub d
    pop hl
    rst RST_30
    db $fd
    db $eb
    adc [hl]
    sub e
    ld h, b
    and c
    dec c
    push hl
    and $96
    ld a, a
    cp b
    ret c

    and h
    add $dd
    jr c, jr_017_51d9

    ld a, a
    ld h, b
    sbc a
    sub e
    sub [hl]
    push hl
    adc e
    rst RST_38
    or [hl]
    or e
    db $dd
    ret nz

    and h
    ld h, b
    and c
    dec c
    db $e3
    db $fd
    sub d
    db $fd
    ld [$927f], a
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    sbc h
    adc h
    sbc h
    adc [hl]
    sub e
    ld d, $7f
    sub c
    rst RST_30
    db $fc
    ld a, [$7fe3]
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    and l
    and l
    and l
    sbc a
    sub e
    ld h, b
    adc d
    inc c
    sbc d
    jp hl


    ld b, h
    or c
    or b
    ld a, a
    sub c
    sbc c
    db $e3
    sub l
    sbc c
    ld l, d
    ld a, a
    db $f4
    ldh [c], a
    rst RST_30
    ld [$950d], a
    ld a, [$7f16]
    and $19
    ldh [$ffe4], a
    ld a, a
    sub l
    di
    sub e
    and $0d
    pop hl
    ld d, $92
    push hl
    sub d
    and c
    rst RST_38
    sbc [hl]
    db $fd
    ldh [$ff98], a
    sbc h
    ldh [c], a
    db $ed
    ld a, a
    sub l
    ld hl, sp-$07
    ld a, a
    sub [hl]
    sub d
    ld h, b
    db $fd
    ld d, $0d
    sub c
    ld sp, hl
    and c
    rst RST_38
    ld b, h
    or c
    and $ea
    ld a, a
    sbc $b5
    call z, $bda8
    rst RST_18
    db $e4
    dec c
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    or [hl]
    or e
    db $dd
    ret nz

    and h
    or b
    ld a, a
    sub c
    add hl, de
    ldh [$ffa1], a
    rst RST_38
    or [hl]
    or e
    db $dd
    ret nz

    and h
    or b
    ld a, a
    sub l
    ei
    sbc h
    ldh [$ffa1], a
    rst RST_38
    db $eb
    ei
    sub d
    ld a, a
    or l
    call z, $bda8
    ld h, b
    and c
    rst RST_38
    ld b, b
    and h
    jp nz, $a44e

    ld b, h
    ld h, b
    and c
    dec c
    rst RST_28
    db $fc
    ld hl, sp-$16
    ld a, a
    sub [hl]
    ld l, l
    or b
    ld a, a
    sub a
    dec e
    ldh [c], a
    sbc c
    push hl
    sub d
    or $93
    and $ba
    reti


    cp b
    jp hl


    ld a, a
    ld e, d
    ret z

    reti


    and $7f
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sbc d
    ld a, [$e460]
    ld a, a
    sbc h
    adc a
    ld a, d
    sub d
    sbc h
    db $e3
    dec c
    ld b, b
    and h
    jp nz, $a44e

    ld b, h
    and $7f
    sub c
    ldh [$fff7], a
    push hl
    sbc b
    db $e3
    di
    dec c
    ld b, b
    and h
    jp nz, Jump_017_7fe9

    sbc e
    sub a
    ld d, $7f
    sub l
    ld a, [$16ef]
    ld sp, hl
    dec c
    sbc h
    db $fd
    ld a, d
    sub d
    ld [$e57f], a
    sub d
    and c
    rst RST_38
    ld h, e
    di
    ld a, a
    ld h, h
    sub e
    sbc h
    db $e3
    ld a, a
    or l
    call z, $bda8
    jp hl


    ld a, a
    push hl
    sub [hl]
    and $0d
    ld b, b
    and h
    jp nz, $a44e

    ld b, h
    ld d, $7f
    sub c
    ld sp, hl
    db $fd
    ld h, b
    ei
    sub e
    and c
    dec c
    sub l
    sub [hl]
    sbc h
    sub d
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    db $eb
    db $fd
    jp hl


    sub d
    sub d
    ld a, a
    or [hl]
    and h
    jp Jump_017_60dd


    and c
    rst RST_38
    sub c
    ldh [$ffe0], a
    sub [hl]
    sub d
    ld a, a
    db $eb
    dec de
    sbc h
    ld d, $0d
    sbc e
    sbc h
    sbc d
    db $fd
    ld h, e
    sbc b
    ld sp, hl
    and c
    rst RST_38
    sub [hl]
    db $fc
    ld h, e
    ld a, a
    ld h, e
    sub a
    ldh [$ff7f], a
    or d
    cp l
    ld h, b
    and c
    rst RST_38
    rst RST_08
    adc $36
    add $a4
    jp hl


    ld a, a
    sub a
    ld h, e
    ld a, a
    ldh [c], a
    sbc b
    rst RST_30
    ld a, [$0de0]
    ldh [c], a
    sbc b

jr_017_536d:
    sub h
    ld h, b
    and c
    dec c
    ldh [c], a
    db $f4
    ld d, $7f
    sub c
    ld sp, hl
    push hl
    and c
    rst RST_38
    sbc h
    ld sp, hl
    sbc h
    jp hl


    push hl
    sub d
    ld a, a
    or [hl]
    scf
    ld h, b
    and c
    dec c
    ld h, h
    sbc d
    jp hl


    ld a, a
    or [hl]
    scf
    ld h, b
    ei
    sub e
    adc e
    rst RST_38
    jr c, jr_017_536d

    and h
    jp hl


    ld a, a
    rst RST_28
    ld sp, hl
    sub d
    ld a, a
    inc e
    sbc h
    adc h
    sbc b
    ld h, b
    and c
    dec c
    pop hl
    adc [hl]
    sub e
    ld h, h
    ld a, a
    ld c, e
    db $dd
    jp hl


    db $ec
    ldh [$ff7f], a
    db $e3
    sub d
    ld h, h
    jp hl


    dec c
    sub l
    sub l
    sub a
    sbc e
    ld h, b
    push hl
    and c
    inc c
    push hl
    and $96
    jp hl


    ld a, a
    ld c, [hl]
    ret nz

    db $dd
    jp hl


    or $93
    ld h, b
    ld d, $a5
    and l
    and l
    adc e
    dec c
    and l
    and l
    and l
    ld h, h
    sbc d
    sub [hl]
    ld h, e
    ld a, a
    sub l
    push hl
    inc e
    ld c, [hl]
    ret nz

    db $dd
    or b
    dec c
    ldh a, [$ffe0]
    or $93
    push hl
    ld a, a
    sub a
    ld d, $9d
    ld sp, hl
    ld d, $a5
    and l
    and l
    adc e
    rst RST_38
    sub c
    sbc b
    ldh a, [c]
    sub d
    ld h, b
    sub [hl]
    sub d
    ld a, a
    or c
    db $dd
    cp a
    add $a4
    and l
    rst RST_08
    db $db
    db $dd
    jp hl


    sbc h
    adc h
    sbc h
    db $fd
    ld h, b
    and c
    inc c
    rst RST_08
    db $db
    db $dd
    ld [$bc7f], a
    and h
    add hl, sp
    reti


    db $e4
    ld a, a
    sub d
    adc a
    sbc h
    adc [hl]
    and $0d
    sub e
    ldh [c], a
    adc a
    db $e3
    sub d
    ldh [$ff7f], a
    sub c
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    db $e4
    dec c
    sub c
    sbc b
    sbc h
    adc l
    sbc h
    db $e3
    sub d
    ld sp, hl
    adc d
    inc c
    sbc h
    adc h
    sbc h
    db $fd
    and $ea
    ld a, a
    cp e
    or d
    db $dd
    ld d, $7f
    sub c
    ld sp, hl
    and c
    inc c
    sbc $40
    add $a4
    or $a1
    dec c
    ld a, a
    db $fc
    ldh [$ff9c], a
    jp hl


    ld a, a
    sbc [hl]
    sub d
    sbc h
    adc l
    db $fd
    or b
    dec c
    ld a, a
    sub l
    rst RST_28
    sub h
    jp hl


    ldh [$fff2], a
    and $7f
    sbc e
    sbc e
    add hl, de
    or $93
    and c
    dec c
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
    and [hl]
    and l
    rst RST_00
    rst RST_18
    rst RST_38
    ld b, h
    or c
    ld d, $7f
    sbc h
    rst RST_28
    ld sp, hl
    ld a, a
    pop hl
    adc [hl]
    sbc b
    ld e, $fd
    and $0d
    cp l
    call nz, Call_000_3ca4
    and h
    and l
    rst RST_08
    and h
    pop bc
    db $dd
    ld d, $7f
    ld a, [$9c8f]
    adc h
    and $0d
    db $e4
    ld l, e
    jp hl


    adc a
    db $e3
    sub a
    ldh [$ff8a], a
    rst RST_38
    sbc $9a
    jp hl


    ld a, a
    ld a, [$9c8f]
    adc h
    ld [$4e7f], a
    cp l
    jp hl


    sub d
    ld sp, hl
    dec c
    ld a, a
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    sub d
    sub a
    ld h, e
    di
    ld a, a
    sub l
    rst RST_28
    sub h
    jp hl


    dec c
    ld a, a
    sub d
    sub h
    ld d, $91
    ld sp, hl
    ld a, a
    cp h
    or [hl]
    ld a, [hl-]
    sub d
    sub a
    ld h, e
    di
    push hl
    sub d
    and c
    inc c
    ld a, a
    and l
    and l
    and l
    db $e4
    ld a, a
    sub d
    sub e
    sbc d
    db $e4
    ld [$957f], a
    rst RST_28
    sub h
    dec c
    ld a, a
    and $19
    ld sp, hl
    ldh [c], a
    di
    ld hl, sp+$60
    push hl
    adc d
    inc c
    ld a, a
    ld c, [hl]
    cp l
    ld d, $7f
    sub d
    adc a
    ldh [$ffea], a
    dec e
    ld h, b
    adc d
    dec c
    ld a, a
    and $19
    ld a, [$7f6a]
    sub d
    jp hl


    pop hl
    ld [$e57f], a
    sub d
    and l
    and l
    and l
    db $e4
    and c
    inc c
    ld a, a
    sub e
    rst RST_30
    pop af
    push hl
    or $a5
    and l
    and l
    and c
    dec c
    ld a, a
    sbc d
    ld a, [$7fea]
    ld c, [hl]
    cp l
    jp hl


    ld a, a
    ldh a, [c]
    sub d
    ld a, [$e592]
    db $fd
    ld h, b
    and c
    rst RST_18
    inc c
    sbc a
    sub e
    sub d
    sub e
    db $e4
    ld a, a
    cp l
    call nz, Call_000_3ca4
    and h
    ld [$957f], a
    ld a, [$0de9]
    sbc h
    db $fd
    rra
    sub e
    ldh a, [c]
    ld d, $99
    db $e3
    ld a, a
    push hl
    rst RST_28
    ld hl, sp+$60
    rst RST_28
    or b
    dec c
    sub e
    pop hl
    sbc d
    db $fd
    ld h, b
    and c
    rst RST_38
    db $eb
    ldh a, [$ffe2]
    jp hl


    ld a, a
    db $ed
    db $f4
    db $ed
    jp hl


    ld a, a
    sub d
    ld hl, sp+$18
    pop hl
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    cp d
    db $dd
    ld a, a
    cp d
    db $dd
    adc d
    inc c
    cp d
    reti


    cp b
    jp hl


    ld a, a
    ld e, d
    ret z

    reti


    or b
    ld a, a
    ldh [$ffe0], a
    sub d
    db $e3
    ldh a, [$ffe0]
    and c
    dec c
    and l
    and l
    and l
    db $fd
    and l
    and l
    and l
    adc e
    inc c
    push hl
    sub [hl]
    ld d, $7f
    sbc b
    sub e
    ld h, h
    sub e
    and $7f
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    rra
    adc d
    dec c
    push hl
    and $96
    ld a, a
    sbc h
    sub [hl]
    sbc c
    ld d, $91
    ld sp, hl
    and $7f
    pop hl
    ld d, $92
    push hl
    sub d
    and c
    rst RST_38
    sub l
    db $e4
    sbc d
    ld [$e87f], a
    pop af
    adc a
    db $e3
    sub d
    ld sp, hl
    jp hl


    ld h, e
    dec c
    ld [$e9fd], a
    sub e
    ld d, $e5
    sub d
    and c
    rst RST_38
    add sp, -$09
    sub d
    or b
    ld a, a
    sbc e
    ld h, b
    ldh a, [c]
    db $e3
    ld a, a
    jp z, Jump_017_44c1

    ret c

    or b
    dec c
    push hl
    add hl, de
    ldh [$ffa1], a
    rst RST_38
    and l
    and l
    and l
    db $fd
    and l
    and l
    and l
    adc e
    dec c
    db $f4
    adc a
    ldh [$ffa4], a
    adc d
    rst RST_38
    jp z, Jump_017_44c1

    ret c

    ld d, $7f
    rst RST_28
    db $e4
    or b
    ld a, a
    sub d
    ld sp, hl
    db $e4
    dec c
    scf
    and h
    xor a
    db $e4
    sub d
    sub e
    ld a, a
    sub l
    db $e4
    db $e4
    ld a, a
    db $e4
    di
    and $7f
    sub [hl]
    ld l, l
    ld d, $bd
    rst RST_10
    or d
    ld b, h
    sbc h
    db $e3
    ld a, a
    db $eb
    ldh a, [$ffe2]
    jp hl


    ld a, a
    sub d
    ld hl, sp+$18
    pop hl
    ld d, $0d
    sub c
    rst RST_30
    db $fc
    ld a, [$8ae0]
    rst RST_38
    and l
    and l
    and l
    scf
    and h
    xor a
    adc d
    rst RST_38
    sub l
    ldh a, [rNR30]
    db $e4
    adc d
    dec c
    sub l
    ld a, [$7fe9]
    sub e
    ld h, e
    ld [$e07f], a
    sbc h
    sub [hl]
    ld h, b
    and c
    rst RST_38
    add b
    ld l, d
    db $fd
    jp hl


    ld a, a
    sbc h
    ld [$92f7], a
    and $ea
    ld a, a
    push hl
    and $96
    dec c
    db $e4
    sbc b
    ld l, l
    ldh [c], a
    push hl
    ld a, a
    sub d
    ldh a, [rNR21]
    ld a, a
    sub c
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    rst RST_38
    ld h, h
    sub e
    sbc h
    db $e3
    ld a, a
    jp z, Jump_017_44c1

    ret c

    ld h, e
    ld a, a
    inc e
    ld l, h
    db $fd
    or b
    dec c
    ldh [c], a
    ldh [c], a
    sub [hl]
    push hl
    sbc c
    ld a, [$e56a]
    rst RST_30
    push hl
    sub d
    db $fd
    ld h, b
    adc e
    rst RST_38
    ld c, d
    push bc
    push bc
    jp hl


    ld a, a
    sub [hl]
    db $fc
    or b
    ld a, a
    pop af
    sub d
    ldh [$ffa1], a
    rst RST_38
    push af
    sub [hl]
    and $7f
    ld c, d
    push bc
    push bc
    jp hl


    sub [hl]
    db $fc
    or b
    ld a, a
    sub l
    sub d
    db $e3
    sub l
    sbc c
    ld l, d
    sbc d
    ei
    ld l, h
    ld a, a
    db $eb
    db $e4
    ld d, $7f
    sub d
    ld sp, hl
    sub [hl]
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    sbc b
    ei
    sbc b
    db $e3
    ld a, a
    sub l
    sub l
    sub a
    push hl
    dec c
    db $e4
    ld hl, sp-$15
    sub a
    sub a
    ei
    sbc b
    pop hl
    adc [hl]
    sub e
    ld h, b
    and c
    rst RST_38
    db $e4
    sub d
    sub e
    sbc d
    db $e4
    ld [$a5a5], a
    and l
    sbc d
    ld a, [$7f16]
    xor $fd
    di
    jp hl


    jp hl


    db $e4
    ld hl, sp-$15
    sub a
    sub a
    ei
    sbc b
    pop hl
    adc [hl]
    sub e
    ld h, b
    ei
    sub e
    and c
    inc c
    and $9e
    di
    jp hl


    jp hl


    ld a, a
    sub a
    ei
    sbc b
    pop hl
    adc [hl]
    sub e
    or b
    ld a, a
    ldh [c], a
    sbc b
    adc a
    db $e3
    adc $c3
    reti


    jp hl


    ld a, a
    inc e
    ld l, h
    db $fd
    jp hl


    ld a, a
    db $ed
    db $f4
    and $0d
    sub l
    sub d
    db $e3
    sub d
    ldh [$ffe9], a
    ld [$cf7f], a
    db $db
    db $dd
    or b
    dec c
    ld a, [de]
    rst RST_28
    sub [hl]
    sbc l
    ldh [$fff2], a
    and $7f
    pop hl
    ld d, $92
    push hl
    sub d
    and c
    rst RST_38
    ld l, l
    db $dd
    jp $a4a8


    add $ea
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    sbc h
    ld a, [de]
    db $e4
    or b
    sbc l
    ld l, l
    db $e3
    ld a, a
    ld [$9891], a
    sbc h
    db $e3
    sub d
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    rst RST_38
    db $e4

jr_017_5746:
    ldh [c], a
    ld e, $fd
    ld a, a
    sbc [hl]
    db $fd
    ldh [$ff98], a
    di
    jp hl


    sub d
    ld a, [$f796]
    dec c
    sbc a
    db $e4
    and $7f
    xor $93
    ld hl, sp+$60
    sbc e
    ld a, [$a1e0]
    inc c
    sbc $9a
    sbc d
    and $7f
    sub d
    ldh [$ffe9], a
    sub [hl]
    ld a, a
    db $d3
    jr c, jr_017_5746

    db $f4
    ei
    sub e
    adc d
    rst RST_38
    sbc h
    ld [$92f7], a
    sub a
    ei
    sbc b
    ld d, $7f
    sub [hl]
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    and c
    inc c
    ld h, e
    di
    and l
    and l
    and l
    sub l
    sub l
    sbc b
    jp hl


    ld a, a
    sbc h
    ld [$92f7], a
    ld d, $0d
    sub [hl]
    sub [hl]
    ld a, [$92e3]
    db $e3
    ld a, a
    or $98
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    adc d
    inc c
    push hl
    and $96
    ld a, a
    ldh a, [c]
    db $f4
    sbc l
    and $e5
    ld sp, hl
    di
    jp hl


    ld d, $7f
    sub c
    ld a, [$0d6a]
    sub d
    sub d
    db $fd
    ld h, b
    ld d, $a5
    and l
    and l
    and c
    rst RST_38
    ld b, b
    and h
    jp nz, $a44e

    ld b, h
    jp hl


    ld a, a
    db $ed
    db $f4
    db $ed
    jp hl


    dec c
    sub d
    ld hl, sp+$18
    pop hl
    ld h, b
    and c
    rst RST_38
    sub [hl]
    ldh a, [$ff97]
    ld a, [$7fe6]
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    ld a, a
    di
    inc e
    ld d, $0d
    push hl
    db $fd
    db $e4
    sub [hl]
    ld a, a
    or $f2
    ld sp, hl
    and c
    inc c
    cp h
    or [hl]
    ld a, [hl-]
    or b
    ld a, a
    sub a
    ld l, d
    db $fd
    and $9c
    db $e3
    sub d
    ld sp, hl
    dec c
    sub [hl]
    sub d
    sbc h
    adc h
    jp hl


    ld a, a
    ret c

    cp l
    call nz, Call_017_7fe9
    or $93
    ld h, b
    and c
    inc c
    sub [hl]
    sub d
    sbc h
    adc h
    ldh a, [c]
    sub d
    jp hl


    ld a, a
    db $e4
    push hl
    ld hl, sp-$1a
    ld a, a
    sbc a
    ld a, [$fa1f]
    dec c
    sbc $1c
    adc l
    ld hl, sp-$21
    ld a, a
    rst RST_28
    ldh [$ffea], a
    ld a, a
    sbc $ef
    ld h, b
    rst RST_18
    jp hl


    dec c
    di
    inc e
    ld d, $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    and l
    and l
    and l
    db $ec
    sub a
    ldh [c], a
    push hl
    ld a, a
    or $96
    db $fd
    ld d, $7f
    sbc l
    ld sp, hl
    push hl
    and c
    inc c
    ld h, b
    ld d, $7f
    sbc d
    db $fd
    push hl
    and $7f
    sub d
    ei
    sub d
    ei
    db $e4
    dec c
    sbc h
    ld hl, sp-$63
    rla
    db $e3
    sbc h
    rst RST_28
    adc a
    db $e3
    ld [$a5a5], a
    and l
    and c
    inc c
    di
    sbc h
    ld a, a
    sbc d
    ld a, [$7fb0]
    ldh a, [$ffe0]
    sbc d
    db $e4
    ld d, $7f
    ld l, d
    ld a, [$6afa]
    dec c
    sub l
    ld a, [$7fe9]
    sub d
    jp hl


    pop hl
    ld [$e57f], a
    sbc b
    push hl
    ld sp, hl
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    sub e
    ld a, [$179d]
    jp hl


    ld a, a
    ld c, d
    push bc
    push bc
    ld h, b
    and c
    rst RST_38
    ld c, d
    push bc
    push bc
    ld d, $7f
    call z, $acc6
    call z, $acc6
    and $0d
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $eb
    ldh a, [$ffe2]
    jp hl


    ld a, a
    db $ed
    db $f4
    ld h, b
    adc d
    inc c
    ld l, l
    db $dd
    jp $a4a8


    add $ea
    ld a, a
    sbc d
    sbc d
    ld h, e
    ld a, a
    sub c
    ldh [$fff7], a
    sbc h
    sub d
    dec c
    sbc h
    ld a, [de]
    db $e4
    jp hl


    ld a, a
    sbc c
    sub d
    sub [hl]
    sbc b
    or b
    ld a, a
    add sp, -$71
    db $e3
    sub d
    ld sp, hl
    and $0d
    pop hl
    ld d, $92
    push hl
    sub d
    and c
    rst RST_38
    db $eb
    ldh a, [$ffe2]
    jp hl


    ld a, a
    db $ed
    db $f4
    ld h, b
    and c
    rst RST_38
    sub [hl]
    db $fc
    ld h, e
    ld a, a
    ld h, e
    sub a
    ldh [$ff7f], a
    sub [hl]
    sub d
    db $e3
    db $fd
    or d
    cp l
    ld h, b
    and c
    rst RST_38
    sub c
    ldh [$fff7], a
    sbc h
    sub d
    ld a, a
    ld b, e
    cp l
    cp b
    rst RST_08
    xor a
    call nz, $a160
    rst RST_38
    db $e4
    sub e

jr_017_590e:
    or b
    ld a, a
    sub c
    ldh a, [$ff9a]
    db $fd
    ld h, e
    ld a, a
    ldh [c], a
    sbc b
    adc a
    ldh [$ff0d], a
    ld a, [hl-]
    ret nc

    ld l, d
    sbc d
    ld h, b
    and c
    rst RST_38
    sub [hl]
    sbc h
    jp hl


    sub a
    ld h, e
    ld a, a
    ldh [c], a
    sbc b
    rst RST_30
    ld a, [$7fe0]
    ldh [c], a
    sbc b
    sub h
    ld h, b
    and c
    rst RST_38
    sbc d
    jp hl


    ld a, a
    ldh [c], a
    sbc b
    sub h
    jp hl


    ld a, a
    sub e
    sub h
    and $7f
    cp l
    call nz, Call_000_3ca4
    and h
    jp hl


    call nz, $a4da
    ld b, h
    rst RST_08
    and h
    cp b
    db $e4
    sub d
    sub h
    ld sp, hl
    ld a, a
    ld [$97ef], a
    jp hl


    dec c
    cp h
    ld [hl], $a4
    ret c

    db $dd
    jr c, jr_017_590e

    ld a, a
    sub l
    sub d
    db $e3
    sub l
    sbc c
    ld l, d
    and l
    and l
    and l
    inc c
    ld l, l
    db $dd
    jp $a4a8


    add $ea
    ld a, a
    sbc c
    sub d
    sub [hl]
    sbc b
    ld d, $7f
    rst RST_08
    db $db
    db $dd
    and $9c
    ld a, [$e4e0]
    ld a, a
    sub l
    di
    sub e
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    sub c
    dec e
    sub [hl]
    ld hl, sp-$64
    adc [hl]
    sub e
    or b
    ld a, a
    sbc e
    sbc h
    ld h, b
    sbc l
    db $e4
    dec c
    sub l
    db $e4
    sbc d
    ld [$ea7f], a
    db $fd
    sbc h
    adc h
    db $e3
    sub a
    and $7f
    ldh a, [c]
    or b
    sbc e
    rst RST_28
    sbc h
    or [hl]
    or e
    db $dd
    ret nz

    and h
    sub [hl]
    rst RST_30
    ld a, a
    sub l
    sub l
    sub a
    push hl
    dec c
    cp l
    and h
    jp nz, $a4b9

    cp l
    or b
    ld a, a
    ld h, b
    sbc h
    ldh [$ffa1], a
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    db $ec
    ldh [$ffe0], a
    ld l, e
    ld a, a
    add sp, -$0f
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
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

Jump_017_60dd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_017_7f63:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_017_7fe9:
Jump_017_7fe9:
    nop

Call_017_7fea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
