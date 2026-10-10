; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    ld hl, sp+$40
    nop
    ld b, c
    ld [$1041], sp
    ld b, c
    jr @+$43

    jr nz, jr_008_404d

    jr z, jr_008_404f

    ld a, [hl-]
    ld b, c
    ld b, d
    ld b, c
    ld c, d
    ld b, c
    ld d, d
    ld b, c
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
    cp h
    ld b, c
    call nz, $cc41
    ld b, c
    call nc, $e641
    ld b, c
    xor $41
    or $41
    cp $41
    ld b, $42
    ld c, $42
    ld d, $42
    ld e, $42
    ld h, $42
    ld l, $42
    ld [hl], $42
    ld a, $42
    ld b, [hl]

jr_008_404d:
    ld b, d
    ld c, [hl]

jr_008_404f:
    ld b, d
    ld d, [hl]
    ld b, d
    ld e, [hl]
    ld b, d
    ld h, [hl]
    ld b, d
    ld l, [hl]
    ld b, d
    halt
    ld b, d
    ld a, [hl]
    ld b, d
    add [hl]
    ld b, d
    adc [hl]
    ld b, d
    sub [hl]
    ld b, d
    sbc [hl]
    ld b, d
    and [hl]
    ld b, d
    xor [hl]
    ld b, d
    or [hl]
    ld b, d
    cp [hl]
    ld b, d
    add $42
    adc $42
    sub $42
    sbc $42
    ldh a, [rSCY]
    ld hl, sp+$42
    nop
    ld b, e
    ld [$1043], sp
    ld b, e
    jr jr_008_40c3

    jr nz, jr_008_40c5

    jr z, jr_008_40c7

    jr nc, jr_008_40c9

    jr c, jr_008_40cb

    ld b, b
    ld b, e
    ld c, b
    ld b, e
    ld d, b
    ld b, e
    ld h, d
    ld b, e
    ld l, d
    ld b, e
    ld a, h
    ld b, e
    adc [hl]
    ld b, e
    and b
    ld b, e
    or d
    ld b, e
    call nz, $cc43
    ld b, e
    call nc, $dc43
    ld b, e
    db $e4
    ld b, e
    db $ec
    ld b, e
    db $f4
    ld b, e
    ld b, $44
    ld c, $44
    ld d, $44
    ld e, $44
    ld h, $44
    ld l, $44
    ld [hl], $44
    ld a, $44
    ld b, [hl]
    ld b, h
    ld c, [hl]
    ld b, h
    ld d, [hl]
    ld b, h
    ld e, [hl]
    ld b, h
    ld h, [hl]
    ld b, h
    ld l, [hl]

jr_008_40c3:
    ld b, h
    halt

jr_008_40c5:
    ld b, h
    ld a, [hl]

jr_008_40c7:
    ld b, h
    add [hl]

jr_008_40c9:
    ld b, h
    adc [hl]

jr_008_40cb:
    ld b, h
    and b
    ld b, h
    xor b
    ld b, h
    or b
    ld b, h
    jp nz, $ca44

    ld b, h
    jp nc, $da44

    ld b, h
    ldh [c], a
    ld b, h
    ld [$f244], a
    ld b, h
    ld a, [$0244]
    ld b, l
    ld a, [bc]
    ld b, l
    ld [de], a
    ld b, l
    ld a, [de]
    ld b, l
    ld [hl+], a
    ld b, l
    ld a, [hl+]
    ld b, l
    ld [hl-], a
    ld b, l
    ld a, [hl-]
    ld b, l
    ld b, d
    ld b, l
    ld c, d
    ld b, l
    ld d, d
    ld b, l
    ld e, d
    ld b, l
    ld h, b
    ld b, l
    adc c
    ld b, l
    or [hl]
    ld b, l
    sbc $45
    db $eb
    ld b, l
    push af
    ld b, l
    rst RST_38
    ld b, l
    ld e, d
    ld b, l
    dec l
    ld b, [hl]
    ld h, e
    ld c, b
    inc sp
    ld b, [hl]
    dec a
    ld b, [hl]
    ld h, [hl]
    ld d, e
    ld l, a
    ld d, e
    ld c, c
    ld d, e
    ld b, e
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld h, e
    ld d, e
    ld l, c
    ld b, [hl]
    ld a, b
    ld b, [hl]
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    add d
    ld b, [hl]
    cp a
    ld b, [hl]
    push bc
    ld b, [hl]
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    rst RST_08
    ld b, [hl]
    reti


    ld b, [hl]
    adc c
    ld d, e
    ld [$1247], sp
    ld b, a
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    add hl, de
    ld b, a
    ld e, e
    ld b, a
    ld e, e
    ld b, a
    ld e, e
    ld b, a
    ld e, e
    ld b, a
    ld e, e
    ld b, a
    ld e, [hl]
    ld b, [hl]
    ld h, e
    ld d, e
    ld h, l
    ld b, a
    ld [hl], h
    ld b, a
    ld h, [hl]
    ld d, e
    ld l, a
    ld d, e
    ld c, c
    ld d, e
    ld a, d
    ld b, a
    ld h, [hl]
    ld d, e
    ld l, a
    ld d, e
    ld c, c
    ld d, e
    add b
    ld b, a
    ld e, e
    ld b, [hl]
    ld h, e
    ld d, e
    adc d
    ld b, a
    sbc c
    ld b, a
    jp z, $df47

    ld b, a
    db $f4
    ld b, a
    cp $47
    ld e, b
    ld b, [hl]
    ld h, e
    ld d, e
    ld [$3148], sp
    ld c, b
    dec sp
    ld c, b
    ld b, l
    ld c, b
    ld c, a
    ld c, b
    ld e, c
    ld c, b
    dec l
    ld b, [hl]
    ld h, e
    ld c, b
    ld l, c
    ld c, b
    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    rst RST_08
    ld d, d
    ld a, h
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    pop hl
    ld d, d
    add b
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    add [hl]
    ld c, b
    sub d
    ld c, b
    and d
    ld c, b
    or a
    ld c, b
    push bc
    ld c, b
    rst RST_08
    ld c, b
    push hl
    ld c, b
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    ld a, [$0248]
    ld c, c
    adc c
    ld d, e
    jr jr_008_4205

    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    db $ec
    ld d, d
    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    inc bc
    ld d, e
    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    add hl, bc
    ld d, e
    ld l, h
    ld d, e
    dec sp
    ld c, c
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    ld b, l
    ld c, c
    ld c, a
    ld c, c
    adc c
    ld d, e
    ld h, h
    ld c, c
    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    rrca
    ld d, e
    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    add hl, de
    ld d, e
    sub h
    ld c, c
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    sbc e
    ld c, c
    jp z, Jump_008_6049

    ld d, e
    ld h, b
    ld d, e
    db $d3

jr_008_4205:
    ld c, c
    ld c, h
    ld c, d
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld d, l
    ld c, d
    ld e, a
    ld c, d
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld l, b
    ld c, d
    ld l, [hl]
    ld c, d
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld [hl], a
    ld c, d
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    adc c
    ld c, d
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    call $da4a
    ld c, d
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    db $dd
    ld c, d
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    ldh a, [c]
    ld c, d
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    db $fc
    ld c, d
    jp c, Jump_008_604a

    ld d, e
    ld h, b
    ld d, e
    db $dd
    ld c, d
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    ld b, $4b
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    db $10
    ld c, e
    jp c, Jump_008_604a

    ld d, e
    ld h, b
    ld d, e
    db $dd
    ld c, d
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    ld a, [de]
    ld c, e
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    inc h
    ld c, e
    jp c, Jump_008_604a

    ld d, e
    ld h, b
    ld d, e
    db $dd
    ld c, d
    ld l, $4b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld sp, $2e4b
    ld c, e
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld b, c
    ld c, e
    ld l, $4b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld d, c
    ld c, e
    ld l, $4b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld h, c
    ld c, e
    ld l, $4b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld [hl], c
    ld c, e
    ld l, $4b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    add c
    ld c, e
    ld l, $4b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    sub c
    ld c, e
    ld l, $4b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    and c
    ld c, e
    or c
    ld c, e
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    cp d
    ld c, e
    rst RST_38
    ld c, e
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld [$254c], sp
    ld c, h
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld l, $4c
    ld c, e
    ld c, h
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld d, h
    ld c, h
    ld [hl], c
    ld c, h
    ld [hl], a
    ld c, h
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    sbc d
    ld c, h
    cp e
    ld c, h
    adc c
    ld d, e
    ret nc

    ld c, h
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    or $4c
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    nop
    ld c, l
    jp c, Jump_008_604a

    ld d, e
    ld h, b
    ld d, e
    db $dd
    ld c, d
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    ld a, [bc]
    ld c, l
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    inc d
    ld c, l
    jp c, Jump_008_604a

    ld d, e
    ld h, b
    ld d, e
    db $dd
    ld c, d
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    ld e, $4d
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    jr z, jr_008_437d

    jp c, Jump_008_604a

    ld d, e
    ld h, b
    ld d, e
    db $dd
    ld c, d
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    ld [hl-], a
    ld c, l
    ld a, l
    ld c, d
    add e
    ld c, d
    ld h, e
    ld d, e
    inc a
    ld c, l
    jp c, Jump_008_604a

    ld d, e
    ld h, b
    ld d, e
    db $dd
    ld c, d
    ld b, [hl]
    ld c, l
    ld e, e
    ld d, e
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    ld h, e
    ld d, e
    ld d, b
    ld c, l
    adc c
    ld d, e
    ld e, d
    ld c, l
    ld c, l
    ld c, l
    ld l, l
    ld c, l
    ld l, a
    ld d, e
    ld c, c
    ld d, e
    ld [hl], b
    ld c, l
    ld e, e
    ld d, e
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    ld h, e
    ld d, e
    ld d, b
    ld c, l
    adc c
    ld d, e
    ld [hl], a
    ld c, l
    adc d

jr_008_437d:
    ld c, l
    ld e, e
    ld d, e
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    ld h, e
    ld d, e
    ld d, b
    ld c, l
    adc c
    ld d, e
    sub c
    ld c, l
    and h
    ld c, l
    ld e, e
    ld d, e
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    ld h, e
    ld d, e
    ld d, b
    ld c, l
    adc c
    ld d, e
    xor e
    ld c, l
    cp [hl]
    ld c, l
    ld e, e
    ld d, e
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    ld h, e
    ld d, e
    ld d, b
    ld c, l
    adc c
    ld d, e
    push bc
    ld c, l
    rst RST_08
    ld c, l
    reti


    ld c, l
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    db $e3
    ld c, l
    db $ed
    ld c, l
    adc c
    ld d, e
    dec b
    ld c, [hl]
    daa
    ld c, [hl]
    add hl, sp
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, l
    ld c, [hl]
    sub e
    ld c, [hl]
    ld h, [hl]
    ld d, e
    ld l, a
    ld d, e
    ld c, c
    ld d, e
    sbc c
    ld c, [hl]
    ld h, [hl]
    ld d, e
    ld l, a
    ld d, e
    ld c, c
    ld d, e
    ld a, a
    ld b, [hl]
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    sbc a
    ld c, [hl]
    xor c
    ld c, [hl]
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    or b
    ld c, [hl]
    cp d
    ld c, [hl]
    cp l
    ld c, [hl]
    ret nz

    ld c, [hl]
    ret nz

    ld c, [hl]
    ld sp, hl
    ld d, b
    ld h, [hl]
    ld d, e
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    ld l, a
    ld d, e
    rst RST_38
    ld d, b
    adc c
    ld d, e
    ld c, c
    ld d, e
    jp Jump_008_604e


    ld d, e
    ld h, b
    ld d, e
    add $4e
    ret


    ld c, [hl]
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    rst RST_20
    ld c, [hl]
    or $4e
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld sp, hl
    ld c, [hl]
    inc bc
    ld c, a
    cp l
    ld c, [hl]
    ld h, e
    ld d, e
    ld c, c
    ld d, e
    ld b, $4f
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    db $10
    ld c, a
    rst RST_18
    ld c, [hl]
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ld [hl+], a
    ld c, a
    ld h, d
    ld b, a
    ld e, l
    ld d, b
    ld h, b
    ld d, e
    ld e, l
    ld d, b
    dec h
    ld c, a
    ld b, c
    ld c, a
    ld c, a
    ld c, a
    ld e, c
    ld c, a
    ld [hl], b
    ld c, a
    ld a, d
    ld c, a
    add h
    ld c, a
    adc [hl]
    ld c, a
    or h
    ld c, a
    ld h, [hl]
    ld b, [hl]
    ld h, e
    ld d, e
    ld c, c
    ld d, e
    or a
    ld c, a
    ld h, [hl]
    ld b, [hl]
    ld h, e
    ld d, e
    ld c, c
    ld d, e
    cp d
    ld c, a
    rst RST_00
    ld c, a
    pop de
    ld c, a
    db $db
    ld c, a
    jp hl


    ld c, a
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ldh a, [rVBK]
    cp $4f
    dec bc
    ld d, b
    inc hl
    ld d, b
    ld b, c
    ld d, b
    ld e, d
    ld b, l
    dec l
    ld b, [hl]
    ld h, e
    ld c, b
    ld c, a
    ld d, b
    ld h, d
    ld b, a
    ld e, l
    ld d, b
    ld l, a
    ld d, e
    ld c, c
    ld d, e
    ld h, b
    ld d, b
    ld h, [hl]
    ld d, e
    ld l, a
    ld d, e
    ld c, c
    ld d, e
    ld h, [hl]
    ld d, b
    dec l
    ld b, [hl]
    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    ld h, e
    ld c, b
    ld [hl], b
    ld d, b
    adc c
    ld d, e
    add l
    ld d, b
    sbc h
    ld d, b
    or [hl]
    ld d, b
    call z, $de50
    ld d, b
    ld sp, hl
    ld d, b
    ld h, [hl]
    ld d, e
    ld h, e
    ld d, e
    ld c, c
    ld d, e
    ld d, $51
    jr nz, jr_008_4505

    ld h, e
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    ld a, [hl+]
    ld d, c
    inc [hl]
    ld d, c
    adc c
    ld d, e
    ld c, h
    ld d, c
    ld [hl], a
    ld d, c
    adc d
    ld d, c
    sbc e
    ld d, c
    xor h
    ld d, c
    rst RST_08
    ld d, c
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    sub $51
    rst RST_20
    ld d, c
    add hl, bc
    ld d, d
    db $10
    ld d, d
    rla
    ld d, d
    dec h
    ld d, d
    cpl
    ld d, d
    ld b, b
    ld d, d
    ld c, a
    ld d, d
    ld a, [hl]
    ld d, d
    ld e, e
    ld d, e
    ld h, e
    ld d, e
    adc b
    ld d, d
    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    ret


    ld d, d
    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    rra
    ld d, e
    add e
    ld c, b
    ld h, b

jr_008_44fd:
    ld d, e
    ld h, b
    ld d, e
    inc hl
    ld d, e
    add e
    ld c, b
    ld h, b

jr_008_4505:
    ld d, e
    ld h, b
    ld d, e
    daa
    ld d, e
    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    dec hl
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld b, l
    ld d, e
    ld h, [hl]
    ld d, e
    ld l, a
    ld d, e
    ld c, c
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    ld c, b
    ld d, e
    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    cpl
    ld d, e

jr_008_4542:
    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    cpl
    ld d, e
    add e
    ld c, b
    ld h, b
    ld d, e
    ld h, b
    ld d, e
    cpl
    ld d, e
    add e
    ld c, b
    ld h, b
    ld d, e

jr_008_4556:
    ld h, b
    ld d, e
    cpl
    ld d, e
    dec e
    ld e, e
    ld d, e
    nop
    ld a, [hl+]
    rst RST_38
    dec e
    ld e, e
    ld d, e
    ld d, l
    nop
    ld a, d
    ld b, l
    dec b
    ld d, c
    ld d, e
    ld [$7128], sp
    ld b, l
    ld a, [hl+]
    ld bc, $082b
    add hl, hl
    ld a, b
    ld b, l
    ld a, [hl+]
    ld [bc], a
    dec hl
    ld hl, $08ff
    jr z, jr_008_44fd

    ld b, l
    ld a, [hl+]
    ld bc, $2908
    ld d, [hl]
    ld d, e
    ld a, [hl+]
    ld [bc], a
    rlca
    ld d, [hl]
    ld d, e
    ld e, e
    ld l, a
    ld d, e
    dec h
    ld bc, $45a4
    jr nc, jr_008_4542

    inc l
    inc bc
    inc hl
    ld [$9c28], sp
    ld b, l
    add hl, hl
    ld bc, $082b
    add hl, hl
    ld c, b
    ld d, e
    add hl, hl
    ld [bc], a
    dec hl
    rst RST_38
    jr nc, jr_008_4556

    inc l
    inc bc
    rra
    ld [$af28], sp
    ld b, l
    add hl, hl
    ld bc, $2908
    ld c, b
    ld d, e
    add hl, hl
    ld [bc], a
    rst RST_38
    jr nz, jr_008_45b8

jr_008_45b8:
    ld bc, $0055
    ret nz

    ld b, l
    nop
    ld [$2eff], sp
    nop
    jr nc, @+$0a

    ld [$5348], sp
    nop
    ld [hl-], a
    add hl, sp
    db $10
    ld a, $09
    ld a, [hl]
    ld a, [hl]
    nop
    inc sp
    cpl
    ld a, [hl]
    ld a, [hl-]
    add hl, hl
    ld b, $2b
    ld a, $12
    add hl, bc
    ld [$3400], sp
    rst RST_38
    dec e
    ld e, e
    ld d, e
    ld l, $00
    ld a, [hl+]
    dec h
    ld bc, $5348
    ld [bc], a
    ld [$1dff], sp
    ld e, e
    ld d, e
    dec h
    ld [bc], a
    ld h, [hl]
    ld d, e
    rlca
    ld d, [hl]
    ld d, e
    ld e, e
    ld l, a
    ld d, e
    dec h
    ld [bc], a
    ld c, b
    ld d, e
    rlca
    ld a, [hl]
    ld d, e
    jr nz, jr_008_4602

    ld [bc], a

jr_008_4602:
    dec h
    ld bc, $45c0
    ld [$2609], sp
    ld b, [hl]
    ld b, d
    ld bc, $0c54
    dec d
    ld b, [hl]
    nop
    ld b, a
    add hl, bc
    add hl, bc
    rst RST_38
    nop
    add c
    add hl, sp
    ld c, $3e
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    nop
    rst RST_28
    ld a, [hl]
    dec sp
    ld [bc], a
    ld bc, $8200
    rst RST_38
    ld d, h
    inc c
    dec d
    ld b, [hl]
    nop
    ld c, b
    rst RST_38
    dec e
    ld e, e
    ld d, e
    rlca
    ld c, h
    ld d, e
    jr nz, jr_008_4637

    inc bc
    dec h

jr_008_4637:
    ld [bc], a
    ld a, [hl+]
    ld b, [hl]
    nop
    ld l, [hl]
    rst RST_38
    ld l, $00
    ld d, b
    rlca
    add sp, $45
    dec e
    ld e, e
    ld d, e
    dec h
    ld [bc], a
    ld c, l
    ld b, [hl]
    nop
    and h
    rst RST_38
    nop
    ld d, c
    rst RST_38
    dec e
    ld h, e

jr_008_4652:
    ld d, e
    ld b, d
    ld [bc], a
    rlca
    ld c, h
    ld d, e
    rlca
    ld e, [hl]
    ld b, [hl]
    rlca
    ld e, [hl]
    ld b, [hl]
    dec e
    ld h, e
    ld d, e
    ld b, d
    ld [bc], a
    rlca
    ld c, h
    ld d, e
    nop
    db $d3
    rst RST_38
    jr nz, jr_008_466d

    rlca
    dec h

jr_008_466d:
    ld [bc], a
    ld a, [hl+]
    ld b, [hl]
    ld a, [hl+]
    inc de
    add hl, hl
    ld de, $002b
    sbc l
    rst RST_38
    ld d, l
    inc bc
    ld a, a
    ld b, [hl]
    nop
    ld [hl], e
    rst RST_38
    nop
    adc b
    rst RST_38
    jr nz, jr_008_4687

    inc b
    dec h
    inc bc

jr_008_4687:
    ld a, [hl-]
    ld b, [hl]
    ld d, h
    inc c
    sub b
    ld b, [hl]
    nop
    ld a, h
    rst RST_38
    ld d, h
    ld a, b
    sbc d
    ld b, [hl]
    rlca
    adc l
    ld b, [hl]
    rlca
    adc l
    ld b, [hl]
    jr nc, jr_008_4652

    dec b
    or c
    ld b, [hl]
    ld c, $06
    inc bc
    and [hl]
    ld b, [hl]
    rrca
    ld b, $5a
    dec sp
    inc b
    ld de, $7000
    ld a, $12
    inc h
    ld b, $ff
    inc l

jr_008_46b2:
    ld e, $2f
    add hl, sp
    ld c, $3e
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    nop
    ld l, a
    ld a, [hl]
    ld a, a
    ld b, $1d
    ld e, e
    ld d, e
    nop
    ld [hl], h
    rst RST_38
    dec e
    ld e, e
    ld d, e
    dec h
    ld de, $534c
    rlca
    ld d, [hl]
    ld d, e
    ld e, e
    ld l, a
    ld d, e
    dec h
    inc bc
    ld a, [hl]
    ld d, e
    rlca
    ld [hl], h
    ld d, e
    dec e
    ld h, e
    ld d, e
    ld c, $9d
    inc bc
    inc bc
    ld b, a
    ld a, $13
    dec h
    ld de, $46fd
    rrca
    sbc l
    ld l, $00
    ld a, d
    add hl, sp
    ld c, $3e
    add hl, bc
    nop
    ld a, e
    dec e
    rst RST_30
    ld b, [hl]
    rrca
    ld b, $3b
    inc bc
    ld de, $aa07
    ld b, [hl]
    ld [hl+], a
    sbc l

jr_008_46ff:
    ld a, l
    ld h, [hl]
    ld c, h
    rlca
    jr nc, jr_008_46b2

    inc l
    ld bc, $20ff
    inc bc
    ld de, $0325
    ld a, [hl-]
    ld b, [hl]
    nop
    call z, Call_008_55ff

jr_008_4713:
    inc b
    ld a, a
    ld b, [hl]
    nop
    adc c
    rst RST_38
    jr nz, jr_008_471f

    dec b
    ld d, l
    inc b
    inc hl

jr_008_471f:
    ld b, a
    rlca
    adc c
    ld b, [hl]
    ld d, h
    inc c
    ld sp, $0847
    ld c, $58
    ld b, a
    ld l, $00
    add [hl]
    nop
    add a
    rst RST_38
    ld [$2778], sp
    ld b, a
    rlca
    inc a
    ld b, a
    ld [$2750], sp
    ld b, a
    ld [$530e], sp
    ld b, a
    jr nc, jr_008_46ff

    dec b
    or c
    ld b, [hl]
    ld c, $06
    inc bc
    ld c, h
    ld b, a
    rrca
    ld b, $5a
    dec sp
    dec b
    ld de, $aa07
    ld b, [hl]
    jr nc, jr_008_4713

    rlca
    ld b, d
    ld b, a
    nop
    sub h
    rst RST_38
    dec e
    ld e, e
    ld d, e
    ld d, l
    ld [$464d], sp
    nop
    ld e, d
    rst RST_38
    jr nz, jr_008_4772

    ld [$0825], sp
    ld l, a
    ld b, a
    nop
    ld d, d
    rst RST_38
    add hl, hl
    ld [de], a
    rlca

jr_008_4772:
    ld [hl], h
    ld b, [hl]
    ld l, $00
    ld d, l
    rlca
    add sp, $45
    ld l, $00
    ld d, [hl]
    rlca
    add sp, $45
    dec e
    ld e, e
    ld d, e
    dec h
    add hl, bc
    ld h, d
    ld b, a
    rlca
    ld c, l
    ld b, [hl]
    jr nz, jr_008_4798

    add hl, bc
    dec h
    add hl, bc
    sub h
    ld b, a
    nop
    ld d, a
    rst RST_38
    add hl, hl
    inc de
    rlca

jr_008_4797:
    ld [hl], h

jr_008_4798:
    ld b, [hl]
    dec e
    cp [hl]
    ld b, a
    ld d, l
    inc c
    cp e

jr_008_479f:
    ld b, a
    ld d, h
    ld a, [bc]
    or [hl]
    ld b, a
    ld l, $00
    ld e, h
    ld d, h
    add hl, sp
    or e
    ld b, a
    ld a, $08
    nop
    ld e, [hl]
    add hl, bc
    inc e
    ld e, d
    rst RST_38
    nop
    ld e, l
    rst RST_38
    nop
    ld e, e
    add hl, bc
    ld a, [bc]
    rst RST_38
    nop
    add sp, -$01
    ld l, $30
    cp e
    inc l
    add hl, de
    ld d, l
    inc c
    ld c, b
    ld d, e
    rlca
    and b
    ld b, a
    dec e
    jp c, $3047

    cp e
    inc l
    ld [bc], a
    add hl, bc
    dec e
    inc a
    ld hl, $822a
    add hl, hl
    add e
    rst RST_38
    jr nc, jr_008_4797

    inc l
    add hl, de
    rst RST_38
    ld e, e
    rst RST_28
    ld b, a
    jr nc, jr_008_479f

    inc l
    inc bc
    ld a, [bc]
    sbc h
    inc a
    inc hl
    ld a, [hl+]
    add e
    add hl, hl
    add d
    rst RST_38
    jr nc, @-$43

    inc l
    ld a, [de]
    rst RST_38
    jr nz, jr_008_4802

    dec c
    ld d, l
    dec c
    sub c
    ld b, a
    nop
    ld e, a
    rst RST_38
    dec e
    ld e, e
    ld d, e
    dec h

jr_008_4802:
    ld a, [bc]
    ld h, d
    ld b, a
    rlca
    ld c, l
    ld b, [hl]
    jr nz, @+$10

    ld a, [bc]
    dec h
    ld a, [bc]
    inc l
    ld c, b
    ld [$290b], sp
    ld c, b
    nop
    ld h, l
    add hl, sp
    ld [bc], a
    ld a, $0a
    ld a, [hl]
    ld a, [hl]
    nop
    ld h, e
    ld a, [hl]
    ld h, [hl]
    dec c
    ld a, [hl]
    ld a, [hl]
    nop
    ld h, h
    ld a, [hl]
    ld a, [hl-]
    add hl, bc
    dec bc
    rst RST_38
    nop
    ld h, [hl]
    rst RST_38
    add hl, hl
    inc d
    rlca
    ld [hl], h
    ld b, [hl]
    dec e
    ld e, e
    ld d, e
    ld d, l
    ld c, $5d
    ld b, l
    nop
    ld l, c
    rst RST_38
    dec e
    ld e, e
    ld d, e
    dec h
    ld c, $4c
    ld d, e
    rlca
    ld d, [hl]
    ld d, e
    ld e, e
    ld l, a
    ld d, e
    dec h
    ld c, $74
    ld d, e
    rlca
    ld a, [hl]
    ld d, e
    jr nz, jr_008_485f

    rrca
    dec h
    ld c, $29
    ld c, b
    nop
    and a
    rst RST_38
    dec e
    ld e, e
    ld d, e
    ld d, l
    ld c, $5d

jr_008_485f:
    ld b, l
    nop
    ld l, d
    rst RST_38
    ld e, e
    ld l, a
    ld d, e
    rlca
    ld [hl], h
    ld d, e
    jr nz, @+$10

    db $10
    dec h
    ld c, $29
    ld c, b
    ld l, $00
    call nz, RST_08
    ld c, b
    ld d, e
    ld bc, $095f
    nop
    rst RST_38
    ld d, l
    ld de, $4883
    nop
    jp nc, Jump_000_00ff

    ret nc

    rst RST_38
    jr nz, jr_008_4899

    inc d
    dec h
    ld de, $52e7
    nop
    pop af
    ld b, d
    inc bc
    rst RST_38
    dec e
    ld e, e
    ld d, e
    ld d, l
    inc de
    sbc a
    ld c, b

jr_008_4899:
    ld l, $00
    db $ed
    rlca
    add sp, $45
    ld [bc], a
    xor a
    rst RST_38
    dec e
    ld e, e
    ld d, e
    ld d, l
    inc de
    or h
    ld c, b
    ld d, h
    ld h, $66
    ld d, e
    ld a, [hl+]
    sbc e
    add hl, hl
    sbc h
    rlca
    ld c, h
    ld d, e
    ld [bc], a
    jp z, Jump_008_5bff

    ld l, a
    ld d, e
    ld d, l
    inc de
    or h
    ld c, b
    add hl, hl
    sbc e
    ld a, [hl+]
    sbc h
    rlca
    ld [hl], h
    ld d, e
    ld d, l
    inc de
    or h
    ld c, b
    jr nz, @+$15

    ld b, a
    ld [bc], a
    xor [hl]
    rst RST_38
    ld l, $25
    inc de
    ldh [rOBP0], a
    ld bc, $0843
    add h
    ld c, b
    ld d, e
    ld a, $08
    ld [bc], a
    jp nc, $ff5a

    nop
    ld [hl], h
    rlca
    add sp, $45
    dec e
    ld e, e
    ld d, e
    ld d, h
    add d
    ld h, [hl]
    ld d, e
    dec h
    inc de
    di
    ld c, b
    rlca
    ld c, h
    ld d, e
    ld [$663b], sp
    ld d, e
    rlca
    ld c, h
    ld d, e
    ld e, e
    ld l, a
    ld d, e
    ld a, [bc]
    dec sp
    rlca
    ld [hl], h
    ld d, e
    dec e
    ld h, e
    ld d, e
    ld c, $ae
    inc bc
    inc bc
    ld b, a
    ld a, $13
    ld [hl+], a
    xor [hl]
    dec h
    inc de
    inc [hl]
    ld c, c
    ld l, $00
    ld h, d
    rlca
    ld h, $49
    jr nz, jr_008_492d

    ld c, b
    dec h
    ld c, b
    jr c, jr_008_4968

    ld l, $00
    ld [$8408], a
    ld c, b
    ld d, e
    add hl, sp
    ld b, $3e
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    ld [bc], a

jr_008_492d:
    sbc a

jr_008_492e:
    cpl
    ld a, $10
    ld a, [hl]
    scf
    rst RST_38
    ld a, l
    ld h, [hl]
    ld c, h
    rlca
    ld [bc], a
    call $1dff
    ld e, e
    ld d, e
    dec h
    inc d
    ld c, h
    ld d, e
    rlca
    ld d, [hl]
    ld d, e
    ld e, e
    ld l, a
    ld d, e
    dec h
    inc d
    ld [hl], h
    ld d, e
    rlca
    ld a, [hl]
    ld d, e
    dec e
    ld h, e
    ld d, e
    ld c, $9e
    inc bc
    inc bc
    ld b, a
    ld a, $13
    rrca
    sbc [hl]
    dec h
    dec d
    inc [hl]
    ld c, c
    ld [hl+], a
    sbc [hl]
    rlca
    inc [hl]
    ld c, c
    ld d, l
    inc d
    adc [hl]
    ld c, c

jr_008_4968:
    jr nz, @+$16

    dec d
    ld l, $00
    or $54
    inc c
    adc c
    ld c, c
    rst RST_38
    ld [$4850], sp
    ld d, e
    jr nc, jr_008_492e

    inc l
    ld a, [hl+]
    cpl
    add hl, sp
    ld [$093e], sp
    ld a, [hl]
    ld a, [hl]
    nop
    jp c, Jump_008_7d7e

    rst RST_28
    ld c, e
    rlca
    ld d, h
    ld a, b
    ld [hl], a
    ld c, c
    rst RST_38
    jr nz, @+$16

    dec d
    rlca
    adc l
    ld c, b
    ld d, l
    dec d
    ld a, h
    ld b, [hl]
    nop
    ld a, [$55ff]
    dec d
    pop bc
    ld c, c
    ld d, h
    dec de
    xor h
    ld c, c
    ld [$aca4], sp
    ld c, c
    ld a, [hl+]
    ld hl, $1d29
    dec hl
    jr nz, jr_008_49c3

    ld d, $2e
    nop
    ld a, [bc]
    ld d, h
    inc c
    or a
    ld c, c
    rst RST_38
    ld d, h
    ld a, b
    ld [hl], a
    ld c, c
    rst RST_38
    ld d, h
    ld d, b
    ld [hl], a
    ld c, c
    rst RST_38
    jr nz, jr_008_49d8

jr_008_49c3:
    ld d, $2e
    nop
    or $07
    or d
    ld c, c
    dec h
    rla
    ld a, h
    ld b, [hl]
    ld c, c
    ld b, $2c
    add hl, bc
    rst RST_38
    jr nz, jr_008_49ea

    rla
    dec h
    dec d

jr_008_49d8:
    db $fc
    ld c, c
    dec b
    ld [bc], a
    ld c, d
    dec b
    inc de
    ld c, d
    ld l, $00
    ld [hl], c
    ld a, [bc]
    ld d, $0a
    rla
    ld a, [bc]
    jr jr_008_4a3e

jr_008_49ea:
    inc c
    xor $49
    rst RST_38
    ld [$4878], sp
    ld d, e
    rlca
    ld a, e
    ld c, c
    ld [$4850], sp
    ld d, e
    rlca
    ld a, e
    ld c, c
    ld l, $00
    or $07
    or d
    ld c, c
    db $10
    add l
    db $10
    add a
    db $10
    adc c
    db $10
    adc e
    db $10
    adc l
    db $10
    adc a
    db $10
    sub c
    db $10
    sub e
    ld b, $2a
    xor b
    db $10
    add [hl]
    db $10
    adc b
    db $10
    adc d
    db $10
    adc h
    db $10
    adc [hl]
    db $10
    sub b
    db $10
    sub d
    db $10
    sub h
    ld b, $29
    xor b
    ld a, [hl+]
    xor c
    ld a, [hl+]
    xor d
    ld a, [hl+]
    xor e
    ld a, [hl+]
    xor h
    ld a, [hl+]
    xor l
    ld a, [hl+]
    xor [hl]
    ld a, [hl+]
    xor a
    ld a, [hl+]
    or b
    ld b, $2a
    xor b
    add hl, hl
    xor c
    add hl, hl

jr_008_4a3e:
    xor d
    add hl, hl
    xor e
    add hl, hl
    xor h
    add hl, hl
    xor l
    add hl, hl
    xor [hl]
    add hl, hl
    xor a
    add hl, hl
    or b
    ld b, $25
    jr jr_008_4acb

    ld b, [hl]
    ld c, c
    rlca
    inc l
    add hl, bc
    rst RST_38
    jr nz, jr_008_4a6c

    jr jr_008_4aae

    dec d
    jp c, Jump_000_0749

    db $fc
    ld c, c
    dec h
    add hl, de
    ld a, h
    ld b, [hl]
    ld c, c
    ld [$092c], sp
    rst RST_38
    jr nz, jr_008_4a7f

    add hl, de
    rlca

jr_008_4a6c:
    ld e, b
    ld c, d
    dec h
    ld a, [de]
    ld a, h
    ld b, [hl]
    ld c, c
    add hl, bc
    inc l
    add hl, bc
    rst RST_38
    jr nz, jr_008_4a8e

    ld a, [de]
    rlca
    ld e, b
    ld c, d
    dec e
    ld e, e

jr_008_4a7f:
    ld d, e
    ld bc, $ff2c
    dec e
    ld e, e
    ld d, e

jr_008_4a86:
    nop
    db $d3
    rst RST_38
    jr nz, jr_008_4aa2

    dec de
    dec h
    rla

jr_008_4a8e:
    jp c, Jump_000_2e49

    ld [bc], a
    ld hl, $2325
    cp e
    ld c, d
    dec h
    inc h
    cp e
    ld c, d
    dec h
    dec h
    cp e
    ld c, d
    dec h
    ld h, $bb

jr_008_4aa2:
    ld c, d
    dec h
    daa
    cp e
    ld c, d
    dec h
    jr z, @-$43

    ld c, d
    dec h
    add hl, hl
    cp e

jr_008_4aae:
    ld c, d
    dec h
    ld a, [hl+]
    cp e
    ld c, d
    ld e, a
    jp nz, Jump_000_054a

    add hl, sp
    ld c, d
    ld h, h
    rst RST_38
    ld [hl], c
    inc b
    or [hl]
    ld c, d
    rlca
    or e
    ld c, d
    dec b
    ld h, $4a
    ld h, d
    ld l, $02
    pop de
    ld e, [hl]
    inc l

jr_008_4acb:
    dec bc
    rst RST_38
    jr nz, jr_008_4ae6

    inc e
    dec h
    rla

jr_008_4ad2:
    jp c, Jump_000_2e49

    ld [bc], a
    ld [hl+], a
    rlca
    sub e
    ld c, d
    nop
    adc h

jr_008_4adc:
    rst RST_38
    jr z, jr_008_4a86

    inc bc
    rst RST_28
    ld c, d
    add b
    ld a, $09
    nop

jr_008_4ae6:
    or l
    halt
    ld a, $17
    ld b, c
    nop
    or a
    scf
    rst RST_38
    nop
    cp a
    rst RST_38
    jr nz, @+$1a

    dec e
    dec h
    jr jr_008_4ad2

    ld c, c
    rlca
    sub b
    ld c, d
    jr nz, @+$1a

    ld e, $25
    jr jr_008_4adc

    ld c, c
    rlca
    call nc, $204a
    add hl, de
    rra
    dec h
    add hl, de
    jp c, Jump_000_0749

    sub b
    ld c, d
    jr nz, @+$1b

    jr nz, jr_008_4b39

    add hl, de
    jp c, Jump_000_0749

    call nc, $204a
    ld hl, $251a
    ld a, [de]
    jp c, Jump_000_0749

    sub b
    ld c, d
    jr nz, @+$1c

    ld [hl+], a
    dec h
    ld a, [de]
    jp c, Jump_000_0749

    call nc, Call_000_024a
    inc a
    rst RST_38
    jr nz, jr_008_4b4e

    inc e
    dec b
    inc de
    ld c, d
    dec b
    ld [bc], a

jr_008_4b39:
    ld c, d
    dec h
    dec de
    sub b
    ld c, d
    rlca
    call nc, $204a
    dec e
    ld e, $05
    inc de
    ld c, d
    dec b
    ld [bc], a
    ld c, d
    dec h
    dec e
    sub b
    ld c, d

jr_008_4b4e:
    rlca
    call nc, $204a
    rra
    jr nz, jr_008_4b5a

    inc de
    ld c, d
    dec b
    ld [bc], a
    ld c, d

jr_008_4b5a:
    dec h
    rra
    sub b
    ld c, d
    rlca
    call nc, $204a
    ld hl, $0522
    inc de
    ld c, d
    dec b
    ld [bc], a
    ld c, d
    dec h
    ld hl, $4a90
    rlca
    call nc, $204a
    inc hl
    inc h
    dec b
    inc de
    ld c, d
    dec b
    ld [bc], a
    ld c, d
    dec h
    inc hl
    sub b
    ld c, d
    rlca
    call nc, $204a
    dec h
    ld h, $05
    inc de
    ld c, d
    dec b
    ld [bc], a
    ld c, d
    dec h
    dec h
    sub b
    ld c, d
    rlca
    call nc, $204a
    daa
    jr z, jr_008_4b9a

    inc de
    ld c, d
    dec b
    ld [bc], a
    ld c, d

jr_008_4b9a:
    dec h
    daa
    sub b
    ld c, d
    rlca
    call nc, $204a
    add hl, hl
    ld a, [hl+]
    dec b
    inc de
    ld c, d
    dec b
    ld [bc], a
    ld c, d
    dec h
    add hl, hl
    sub b
    ld c, d
    rlca
    call nc, $254a
    inc l
    ld a, h
    ld b, [hl]
    ld c, c
    ld [bc], a
    inc l
    add hl, bc
    rst RST_38
    dec h
    inc l
    call nz, Call_000_204b
    dec hl
    inc l
    rlca
    jp c, Jump_008_5449

    and c
    pop hl
    ld c, e
    dec b
    db $f4
    ld c, e
    jr nz, jr_008_4bf8

    inc l
    ld l, $01
    ld bc, $54ff
    ld d, b
    db $db
    ld c, e
    rst RST_38
    ld [$4878], sp
    ld d, e
    ld l, $30
    cp b
    rlca
    ld a, c
    ld c, c
    jr nz, jr_008_4c0e

    inc l
    ld l, $01
    ld bc, $2708
    rst RST_28
    ld c, e
    ld b, h
    ldh [$ff09], a
    daa
    ld d, h
    inc c
    rst RST_10
    ld c, e
    rst RST_38
    ld a, [hl+]
    ld l, $2a
    cpl

jr_008_4bf8:
    ld a, [hl+]
    inc l
    ld a, [hl+]
    dec l
    db $10
    and b
    ld b, $25
    dec l
    ld a, h
    ld b, [hl]
    ld c, c
    inc bc
    inc l
    add hl, bc
    rst RST_38
    dec h

jr_008_4c09:
    dec l
    ld [de], a
    ld c, h
    jr nz, jr_008_4c39

jr_008_4c0e:
    dec l
    rlca
    jp c, Jump_008_5449

    and c
    rra
    ld c, h
    dec b
    db $f4
    ld c, e
    jr nz, @+$2d

    dec l
    rlca
    adc $4b
    jr nz, jr_008_4c4c

    dec l
    rlca
    db $e4
    ld c, e
    dec h
    ld l, $7c
    ld b, [hl]
    ld c, c
    inc b
    inc l
    add hl, bc
    rst RST_38
    dec h
    ld l, $38
    ld c, h
    jr nz, jr_008_4c5f

    ld l, $07
    jp c, Jump_008_5449

jr_008_4c39:
    and c
    ld b, l
    ld c, h
    dec b
    db $f4
    ld c, e
    jr nz, @+$2d

    ld l, $07
    adc $4b
    jr nz, jr_008_4c72

    ld l, $07
    db $e4
    ld c, e
    dec h

jr_008_4c4c:
    cpl
    ld a, h
    ld b, [hl]
    ld c, c
    dec b

jr_008_4c51:
    inc l
    add hl, bc
    rst RST_38
    dec h
    cpl
    ld e, [hl]
    ld c, h
    jr nz, jr_008_4c85

    cpl
    rlca
    jp c, Jump_008_5449

jr_008_4c5f:
    and c
    ld l, e
    ld c, h
    dec b
    db $f4
    ld c, e
    jr nz, jr_008_4c92

    cpl
    rlca
    adc $4b
    jr nz, jr_008_4c98

    cpl
    rlca
    db $e4
    ld c, e
    dec e

jr_008_4c72:
    ld e, e
    ld d, e
    rlca
    ld l, h
    ld d, e
    dec e
    ld e, e
    ld d, e
    ld d, h
    ccf
    sub e
    ld c, h
    ld d, l
    jr nc, jr_008_4c09

    ld c, h
    dec b
    adc l
    ld c, h

jr_008_4c85:
    dec hl
    ld hl, $05ff
    adc l
    ld c, h
    ld e, $ff
    dec b
    ld d, c
    ld d, e
    ld a, [hl+]
    ld [hl-], a

jr_008_4c92:
    ld b, $25
    jr nc, @+$4e

    ld d, e
    rlca

jr_008_4c98:
    ld d, [hl]
    ld d, e
    ld e, e
    ld l, a
    ld d, e
    ld d, h
    ccf
    or h
    ld c, h
    ld d, l
    jr nc, jr_008_4c51

    ld c, h
    dec b
    ld a, c
    ld d, e
    inc hl
    add hl, hl
    ld [hl-], a
    dec hl
    rst RST_38
    dec b
    ld a, c
    ld d, e
    add hl, hl
    ld [hl-], a
    rra
    rst RST_38
    dec h
    jr nc, @+$76

    ld d, e
    rlca
    ld a, [hl]
    ld d, e
    dec e
    ld h, e
    ld d, e
    ld [$033f], sp
    ld b, a
    ld a, $13
    add hl, bc
    ccf
    add hl, hl
    ld [hl-], a
    dec h
    dec hl
    inc [hl]
    ld c, c
    dec hl
    rlca
    inc [hl]
    ld c, c
    ld d, l
    dec hl
    db $e3
    ld c, h
    jr nz, @+$2d

    jr nc, jr_008_4ce0

    ld b, b
    ldh [$ff4c], a
    ld bc, $0934
    ld b, b
    rst RST_38

jr_008_4ce0:
    ld bc, $ff35
    ld d, h
    and c
    ldh a, [$ff4c]
    dec b
    db $f4
    ld c, e
    jr nz, @+$2d

    jr nc, jr_008_4cf5

    adc $4b
    jr nz, @+$2d

    jr nc, jr_008_4cfb

    db $e4

jr_008_4cf5:
    ld c, e
    jr nz, jr_008_4d24

    inc hl
    dec h
    inc l

jr_008_4cfb:
    jp c, Jump_000_0749

    sub b
    ld c, d
    jr nz, jr_008_4d2e

    inc h
    dec h
    inc l
    jp c, Jump_000_0749

    call nc, $204a
    dec l
    dec h
    dec h
    dec l
    jp c, Jump_000_0749

    sub b
    ld c, d
    jr nz, @+$2f

    ld h, $25
    dec l
    jp c, Jump_000_0749

    call nc, $204a
    ld l, $27
    dec h
    ld l, $da

jr_008_4d24:
    ld c, c
    rlca
    sub b
    ld c, d
    jr nz, @+$30

    jr z, @+$27

    ld l, $da

jr_008_4d2e:
    ld c, c
    rlca
    call nc, $204a
    cpl
    add hl, hl
    dec h
    cpl
    jp c, Jump_000_0749

    sub b
    ld c, d
    jr nz, jr_008_4d6d

    ld a, [hl+]
    dec h
    cpl
    jp c, Jump_000_0749

    call nc, $254a
    ld sp, $4d4d
    ld bc, $ff3a
    ld bc, $ff43
    ld [$5743], sp
    ld c, l
    ld bc, $ff3b
    ld bc, $ff3c
    jr nz, jr_008_4d8c

    ld sp, $3025
    ldh [$ff4c], a
    ld [$6a43], sp
    ld c, l
    ld bc, $093d
    ld b, e
    rst RST_38
    ld bc, $ff3e

jr_008_4d6d:
    ld bc, $ff44
    dec h
    ld e, [hl]
    ld c, l
    ld c, l
    ld bc, $ff3a
    jr nz, jr_008_4dab

    ld e, [hl]
    ld d, l
    ld [hl-], a
    ld l, d
    ld c, l
    ld [$8744], sp
    ld c, l
    ld bc, $0951
    ld b, h
    rst RST_38
    ld bc, $ff52
    dec h
    ld e, a

jr_008_4d8c:
    ld c, l
    ld c, l
    ld bc, $ff3a
    jr nz, jr_008_4df2

    ld b, c
    dec h
    ld e, a
    ld l, d
    ld c, l
    ld [$a169], sp
    ld c, l
    ld [bc], a
    dec hl
    add hl, bc
    ld l, c
    rst RST_38
    ld [bc], a
    inc l
    rst RST_38
    dec h
    ld h, b
    ld c, l
    ld c, l
    ld bc, $ff3a

jr_008_4dab:
    jr nz, @+$62

    dec [hl]
    dec h
    ld h, b
    ld l, d
    ld c, l
    ld [$bb51], sp
    ld c, l
    ld bc, $0996
    ld d, c
    rst RST_38
    ld bc, $ff97
    dec h
    ld h, c
    ld c, l
    ld c, l
    ld bc, $ff3a
    jr nz, jr_008_4e28

    ld b, e
    dec h
    ld h, c
    ld l, d
    ld c, l
    ld [bc], a
    ld [hl], c
    rst RST_38
    dec e
    ld e, e
    ld d, e
    dec h
    ld [hl-], a
    ld l, h
    ld d, e
    rlca
    ld c, l
    ld c, l
    dec e
    ld e, e
    ld d, e
    dec h
    ld [hl-], a
    ld c, h
    ld d, e
    rlca
    ld d, [hl]
    ld d, e
    ld e, e
    ld l, a
    ld d, e
    dec h
    ld [hl-], a
    ld [hl], h
    ld d, e
    rlca
    ld a, [hl]
    ld d, e
    dec e
    ld h, e
    ld d, e
    ld c, $a2

jr_008_4df2:
    inc bc
    inc bc
    ld b, a
    ld a, $13
    ld d, l
    ld [hl-], a
    nop
    ld c, [hl]
    ld [hl+], a
    and d
    rlca
    inc [hl]
    ld c, c
    rrca
    and d
    nop
    ld h, d
    rst RST_38
    jr nz, jr_008_4e39

    inc sp
    dec h
    ld [hl-], a
    dec de
    ld c, [hl]
    ld [$1546], sp
    ld c, [hl]
    ld bc, $0955
    ld b, [hl]
    rst RST_38
    add hl, hl
    dec sp
    dec hl
    ld bc, $ff56
    ld [$2444], sp
    ld c, [hl]

jr_008_4e1f:
    ld bc, $0951
    ld b, h
    rst RST_38
    ld bc, $ff52
    dec e

jr_008_4e28:
    ld e, e
    ld d, e
    ld l, $55
    inc sp
    inc [hl]
    ld c, [hl]
    ld bc, $0761
    add sp, $45
    nop
    ld a, [hl+]
    rlca
    add sp, $45

jr_008_4e39:
    dec e
    ld e, e
    ld d, e
    ld d, h
    ld b, a
    ld h, [hl]
    ld d, e
    dec h
    inc sp
    ld c, h
    ld d, e
    ld c, $a3
    inc bc
    ld c, h
    ld d, e
    jr nc, jr_008_4e1f

    inc l
    ld hl, $5bff
    ld l, a
    ld d, e
    dec h
    inc sp
    ld [hl], h
    ld d, e
    ld c, $a3
    inc bc
    ld [hl], h
    ld d, e
    rlca
    ld c, c
    ld c, [hl]
    dec h
    inc sp
    ld h, [hl]
    ld c, [hl]
    ld c, $a3
    inc b
    ld c, c
    ld c, [hl]
    jr nz, jr_008_4e9b

    inc [hl]
    dec h
    inc sp
    dec d
    ld c, [hl]
    ld [$9049], sp
    ld c, [hl]
    ld bc, $39cb
    dec c
    ld a, $0a
    ld a, [hl]
    ld a, [hl]
    ld bc, $7ecc
    ld a, [hl-]
    ld [de], a
    ld d, l
    ld [de], a
    ld d, [hl]
    ld [de], a
    ld d, a
    ld [de], a
    ld e, b
    ld [de], a
    ld e, c
    ld [de], a
    ld e, d
    add hl, bc
    halt
    add hl, bc
    ld c, [hl]
    add hl, bc
    ld c, c
    rst RST_38
    ld bc, $ff69
    ld l, $01
    ld h, d
    rlca
    add sp, $45
    ld l, $01

jr_008_4e9b:
    ld h, b
    rlca
    add sp, $45
    jr nz, @+$37

    ld b, b
    dec h
    dec [hl]
    cp e
    ld c, l
    ld [bc], a
    add hl, de
    rst RST_38
    ld d, l
    dec [hl]
    ld a, a
    ld b, [hl]
    ld bc, $ff9c
    jr nz, jr_008_4ee7

    ld [hl], $25
    dec [hl]
    cp e
    ld c, l
    rlca
    di
    ld c, [hl]
    ld bc, $ff9a
    ld bc, $ffa1
    ld bc, $ff9f
    ld bc, $ff9b
    ld bc, $ffa0
    dec h
    scf
    rst RST_10
    ld c, [hl]
    ld l, $01
    and l
    ld [$4854], sp
    ld d, e
    ld bc, $ffa4
    ld l, $01
    and l
    ld c, c
    ld bc, $2b2c
    rst RST_38
    ld l, $01
    and l
    ld c, c
    inc bc
    inc l
    dec hl
    rst RST_38

jr_008_4ee7:
    jr nz, @+$38

    scf
    dec h
    ld [hl], $f3

jr_008_4eed:
    ld c, [hl]
    ld bc, $09a9
    ld d, h
    rst RST_38
    ld bc, $ffa2
    ld bc, $ffa6
    jr nz, jr_008_4f31

    add hl, sp
    dec h
    ld [hl], $f3
    ld c, [hl]
    ld bc, $ffc8
    ld bc, $ffa3
    ld d, l
    scf
    dec c
    ld c, a
    ld bc, $ffad
    ld bc, $ffa5
    ld d, l
    scf
    inc e
    ld c, a
    db $10
    ld [hl], l
    jr nz, jr_008_4f4f

    jr c, jr_008_4f1b

    cp b

jr_008_4f1b:
    rst RST_38
    jr nz, jr_008_4f55

    jr c, jr_008_4f27

    call $014e
    or c
    rst RST_38
    dec e
    ld e, e

jr_008_4f27:
    ld d, e
    dec h
    ld a, [hl-]
    ld e, l
    ld b, l
    ld l, $08
    ld e, l
    inc a
    ld c, a

jr_008_4f31:
    ld bc, $09d6
    ld e, [hl]
    ld d, h
    ld e, [hl]
    ld c, b
    ld d, e
    ld bc, $ffd7
    jr nc, jr_008_4eed

    inc l
    dec de
    rst RST_38
    dec e
    ld e, e
    ld d, e
    ld d, h
    ld e, l
    ld h, [hl]
    ld d, e
    dec h
    add hl, sp
    ld c, h
    ld d, e
    rlca
    ld d, [hl]
    ld d, e

jr_008_4f4f:
    ld e, e
    ld l, a
    ld d, e
    dec h
    add hl, sp
    ld [hl], h

jr_008_4f55:
    ld d, e
    rlca
    ld a, [hl]
    ld d, e
    ld d, l
    add hl, sp
    ld h, a
    ld c, a
    jr nz, jr_008_4f98

    ld a, [hl-]
    ld d, h
    ld c, l
    ld l, l
    ld c, a
    ld bc, $ffe0
    jr nz, jr_008_4fa2

    ld a, [hl-]
    rlca
    nop
    ld c, a
    ld bc, $ffde
    dec e
    ld e, e
    ld d, e
    dec h
    dec sp
    ld e, l
    ld b, l
    ld bc, $ffe6
    dec e
    ld e, e
    ld d, e
    dec h
    ld a, [hl-]
    ld c, h
    ld d, e
    rlca
    ld d, [hl]
    ld d, e
    ld e, e
    ld l, a
    ld d, e
    dec h
    ld a, [hl-]
    ld [hl], h
    ld d, e
    rlca
    ld a, [hl]
    ld d, e
    ld d, l
    ld a, [hl-]
    sbc [hl]
    ld c, a
    jr nz, jr_008_4fce

    dec sp
    ld d, h
    ld c, l
    xor b

jr_008_4f98:
    ld c, a
    ld bc, $09ec
    ld h, b
    rst RST_38
    ld d, h
    ld c, l
    xor b
    ld c, a

jr_008_4fa2:
    jr nz, jr_008_4fde

    dec sp
    ld bc, $ffe0
    ld l, $3e
    add hl, bc
    ld bc, $3ee9
    rla
    ld b, c
    inc l
    dec sp
    scf
    rst RST_38
    ld bc, $ffe4
    ld bc, $ffe5
    dec e
    ld e, e
    ld d, e
    ld d, l
    dec sp
    ld e, l
    ld b, l
    ld bc, $fff1
    ld bc, $fff9
    dec e
    ld e, e
    ld d, e
    dec h
    dec sp
    ld c, h
    ld d, e

jr_008_4fce:
    rlca
    ld d, [hl]
    ld d, e
    ld e, e
    ld l, a
    ld d, e
    dec h
    dec sp
    ld [hl], h
    ld d, e
    rlca
    ld a, [hl]
    ld d, e
    ld d, h
    ld c, l
    xor b

jr_008_4fde:
    ld c, a
    jr nz, jr_008_501c

    inc a

jr_008_4fe2:
    dec h
    dec sp
    sub l
    ld c, a
    ld bc, $fff4
    ld d, l
    dec sp
    call nz, $014f
    db $ed
    rst RST_38

jr_008_4ff0:
    ld d, h
    ld c, l
    xor b
    ld c, a
    jr nz, jr_008_5031

    ccf
    dec h
    dec sp
    sub l
    ld c, a
    ld [bc], a
    inc de
    rst RST_38
    dec h
    inc a
    ld [$1d50], sp
    ld e, e
    ld d, e
    ld [bc], a
    inc b
    rst RST_38
    ld bc, $fffa
    dec h

jr_008_500c:
    dec a
    inc d
    ld d, b
    jr nc, jr_008_4fe2

    inc l
    add hl, de
    rst RST_38
    dec e
    rrca
    ld d, b
    add hl, bc
    sbc l
    ld a, [hl+]
    sub c
    ld a, [hl+]

jr_008_501c:
    sub d
    jr nc, jr_008_4ff0

    inc l
    ld [bc], a
    ld hl, $5bff
    ld l, a
    ld d, e
    dec h
    dec a
    inc sp
    ld d, b
    dec b
    add hl, sp
    ld d, b
    inc a
    add hl, hl
    sub c
    add hl, hl

jr_008_5031:
    sub d
    rst RST_38
    dec b
    add hl, sp
    ld d, b
    rlca
    ld l, $50
    jr nc, jr_008_500c

    inc l
    inc bc
    ld a, [bc]
    sbc l
    inc hl
    ld b, $54
    ld c, l
    xor b
    ld c, a
    jr nz, jr_008_5083

    dec a
    dec h
    inc a
    and $4f
    ld [bc], a
    nop
    rst RST_38
    ld d, h
    ld c, l
    xor b
    ld c, a
    jr nz, jr_008_5092

    ld a, $25
    dec a
    ld c, h
    ld d, b
    ld [bc], a
    dec b
    rst RST_38
    ld [bc], a
    db $10
    rst RST_38
    ld l, $02
    rla
    rlca
    add sp, $45
    dec e
    ld e, e
    ld d, e
    ld [bc], a
    inc e
    rst RST_38
    ld a, l
    adc b
    ld c, h
    rlca
    ld l, $1d
    ld l, h
    ld d, b
    ld a, $13
    add hl, hl
    ld b, b
    add hl, hl
    ld b, c
    dec hl
    ld b, a
    ld a, [bc]
    ld a, [hl+]
    ld b, b
    ld a, [hl+]
    ld b, c
    ld a, l
    and d

jr_008_5083:
    ld d, c
    rlca
    ld e, e
    sbc c
    ld d, b
    ld l, $39
    add hl, bc
    ld a, $09
    ld [bc], a
    ld e, $00
    db $fd
    add hl, sp

jr_008_5092:
    stop
    cp $3e
    db $10
    scf
    rst RST_38
    nop
    pop de
    rst RST_38
    dec e
    ld e, e
    ld d, e
    ld d, l
    ld b, c
    ld c, l
    ld c, l
    ld [$5d6b], sp
    ld b, l
    ld l, $02
    jr nc, jr_008_50b3

    ld l, h
    or e
    ld d, b
    ld [bc], a
    ld sp, $6c09
    rst RST_38

jr_008_50b3:
    ld [bc], a
    ld [hl-], a
    rst RST_38
    dec e
    ld e, e
    ld d, e
    ld d, h
    ld l, e
    ld h, [hl]
    ld d, e
    add hl, hl
    ld b, [hl]
    dec h

jr_008_50c0:
    ld b, c
    add $50
    rlca
    ld d, [hl]
    ld d, e
    dec b
    ld d, c
    ld d, e
    dec hl
    ld hl, $5bff
    ld l, a
    ld d, e
    ld a, [hl+]
    ld b, [hl]
    dec h
    ld b, c
    ret c

    ld d, b
    rlca
    ld a, [hl]
    ld d, e
    dec b
    ld a, c
    ld d, e
    dec hl
    inc hl
    rst RST_38
    dec h
    ld b, c
    add sp, $50
    jr nz, jr_008_5125

    ld b, d
    rlca
    and c
    ld c, l
    db $10
    xor h
    jr nz, jr_008_512d

    ld b, d
    ld [$f66e], sp
    ld d, b
    ld [bc], a
    dec a
    add hl, bc
    ld l, [hl]
    rst RST_38
    ld [bc], a
    ld a, $ff
    ld l, $00
    ld [hl], h
    rlca
    add sp, $45
    ld c, $a4
    inc bc
    inc bc
    ld b, a
    ld a, $13
    ld d, l
    dec [hl]
    rrca
    ld d, c
    ld [hl+], a
    and h
    rlca
    inc [hl]
    ld c, c
    ld [hl+], a
    and h
    jr nc, jr_008_50c0

    inc l
    nop
    rst RST_38
    dec e
    ld e, e
    ld d, e
    dec h
    ld b, e
    ld l, h
    ld d, e
    rlca
    ld c, l
    ld c, l
    dec e
    ld e, e
    ld d, e
    dec h
    ld b, e

jr_008_5125:
    ld c, h
    ld d, e
    rlca
    ld d, [hl]
    ld d, e
    ld e, e
    ld l, a
    ld d, e

jr_008_512d:
    dec h
    ld b, e
    ld [hl], h
    ld d, e
    rlca
    ld a, [hl]
    ld d, e
    dec e
    ld h, e
    ld d, e
    ld c, $a8
    inc bc
    inc bc
    ld b, a
    ld a, $13
    dec h
    ld b, h
    ld b, a
    ld d, c
    ld [hl+], a
    xor b
    rlca
    inc [hl]
    ld c, c
    rrca
    xor b
    rlca
    inc [hl]
    ld c, c
    jr nz, jr_008_5191

    ld b, h
    dec h
    ld b, e
    call z, Call_008_544d
    ld a, [hl]
    ld h, b
    ld d, c

jr_008_5157:
    ld [$60a5], sp
    ld d, c
    ld a, [hl+]
    ld c, h
    add hl, hl
    ld c, e
    dec hl
    ld l, $02
    ld [hl], l
    ld d, h
    inc c
    ld l, l
    ld d, c
    rst RST_38

jr_008_5168:
    ld d, h
    ld d, b
    ld [hl], c
    ld d, c
    rst RST_38
    ld [$4878], sp
    ld d, e
    ld l, $02
    adc [hl]
    rlca
    ld a, e

jr_008_5176:
    ld c, c
    dec e
    ld e, e
    ld d, e
    dec h
    ld b, h
    add c
    ld d, c
    ld [bc], a
    and l
    rst RST_38
    ld [$8880], sp
    ld d, c
    ld [bc], a
    add h
    rst RST_38
    ld [bc], a
    add l
    dec e
    ld e, e
    ld d, e
    dec h
    ld b, l
    ld d, [hl]
    ld d, e

jr_008_5191:
    ld c, $a9
    inc bc
    ld c, h
    ld d, e
    jr nc, jr_008_5157

    inc l
    ld hl, $5bff
    ld l, a
    ld d, e
    dec h
    ld b, l
    ld a, [hl]
    ld d, e
    ld c, $a9
    inc bc
    ld [hl], h
    ld d, e
    jr nc, jr_008_5168

    inc l
    ld hl, $25ff
    ld b, l
    cp d
    ld d, c
    ld c, $a9
    inc bc
    ret nz

    ld d, c
    jr nc, jr_008_5176

    inc l
    ld hl, $20ff
    ld b, h
    ld b, l
    rlca
    ld d, e
    ld d, c
    ld d, h
    ld a, b
    call z, StoreRoomState
    ld b, h
    ld b, l
    ld [bc], a
    sbc c
    add hl, bc
    add b
    rst RST_38
    ld [bc], a
    adc b
    rst RST_38
    dec h
    ld b, a
    dec c
    ld c, a
    ld [bc], a
    db $d3
    rst RST_38
    ld d, h
    add d
    db $e4
    ld d, c
    jr nz, jr_008_5223

    ld c, b
    ld d, l
    ld b, a
    jr c, jr_008_522a

    ld [bc], a
    xor [hl]
    rst RST_38
    ld [bc], a
    cp [hl]
    rst RST_38
    dec h
    ld b, [hl]
    jp c, $2e47

    ld [bc], a
    cp e
    ld [$4884], sp
    ld d, e
    ld [$0485], sp
    ld d, d
    ld d, h
    add d
    ld c, b
    ld d, e
    ld a, $08
    ld [bc], a
    cp h
    add hl, bc
    add l
    ld [bc], a
    cp l
    ld e, d
    rst RST_38
    ld a, $08
    rlca
    nop
    ld d, d
    ld d, h
    add d
    db $e4
    ld d, c

jr_008_520d:
    rlca
    ld h, b
    ld d, e
    ld d, h
    add d
    db $e4
    ld d, c
    ld [bc], a
    ret


    rst RST_38
    ld d, h
    add d
    db $e4
    ld d, c
    jr nz, @+$48

    ld b, a
    ld d, l
    ld b, [hl]
    pop hl
    ld d, c
    ld [bc], a

jr_008_5223:
    and a
    rst RST_38
    dec e
    ld e, e
    ld d, e
    ld d, l
    ld c, b

jr_008_522a:
    ld e, l
    ld b, l
    ld [bc], a
    call nc, $1dff
    ld e, e
    ld d, e
    ld d, l
    ld c, b
    ld d, [hl]
    ld d, e
    ld c, $af
    inc bc
    ld c, h
    ld d, e
    jr nc, jr_008_520d

    inc l
    ld hl, $5bff
    ld l, a
    ld d, e
    ld d, l
    ld c, b
    ld a, [hl]
    ld d, e
    ld c, $af
    inc bc
    ld [hl], h
    ld d, e
    rlca
    dec sp
    ld d, d
    dec h
    ld c, b
    ld e, l
    ld d, d
    ld d, h
    and a
    ld a, b
    ld d, d
    jr nz, @+$4a

    ld c, c
    ld [bc], a
    call Call_000_0eff
    xor a
    inc b
    dec sp
    ld d, d
    jr nz, jr_008_52ac

    ld c, c
    ld l, $02
    rst RST_10
    ld d, h
    add h
    ld h, $49
    ld [$48a6], sp
    ld d, e
    ld a, $08
    ld bc, $5a5c
    add hl, bc
    and [hl]
    rst RST_38
    ld a, $08
    ld bc, $5a5d
    rst RST_38
    ld d, l
    ld c, c
    add l
    ld d, d
    ld [bc], a
    db $e3
    rst RST_38
    ld [bc], a
    db $f4
    rst RST_38
    ld d, l
    ld c, c
    and a
    ld d, d
    jr nz, @+$4b

    ld c, d
    ld [$953a], sp
    ld d, d
    dec d
    ld c, h
    ld [$9b6a], sp
    ld d, d
    dec d
    ld d, e
    ld [$a487], sp
    ld d, d
    ld [bc], a
    ld hl, sp+$09
    add a
    rst RST_38
    ld [bc], a
    ld sp, hl
    rst RST_38
    ld d, h
    db $10
    jp $0852


jr_008_52ac:
    ld a, $c3
    ld d, d
    ld [$c352], sp
    ld d, d
    ld l, $3e
    ld [$fe02], sp
    ld [bc], a
    ld [hl], b
    add hl, bc
    inc [hl]
    add hl, bc
    adc l
    add hl, bc
    ld b, c
    add hl, bc
    ld d, e
    ld e, d
    jr nz, jr_008_530e

    ld c, d
    rlca
    ld h, l
    ld d, d
    jr nz, jr_008_532d

    ld h, e
    inc l
    ld c, c
    rst RST_38
    jr nz, @+$13

    ld a, l
    dec h
    ld de, $52e7
    ld l, $00
    ret nc

    dec h
    ld h, e
    sbc $52
    rst RST_38
    inc l
    ld c, c
    rst RST_38
    jr nz, @+$13

    ld h, e
    rlca
    jp nc, $0052

    call z, Call_000_0342
    rst RST_38
    jr nz, @+$15

    ld h, d
    dec h
    inc de
    cp $52
    ld l, $00
    call nc, Call_008_6225
    ei
    ld d, d
    rst RST_38
    inc l
    ld c, c
    rst RST_38
    nop
    ld [$0342], a
    rst RST_38
    jr nz, jr_008_5318

    halt
    rlca
    rst RST_28
    ld d, d
    jr nz, jr_008_531e

    ld a, d
    rlca

jr_008_530d:
    rst RST_28

jr_008_530e:
    ld d, d
    jr nz, jr_008_5325

    ld [hl], a
    dec h
    inc d
    adc l
    ld c, b
    nop
    ret nc

jr_008_5318:
    rst RST_38
    jr nz, jr_008_532f

    ld a, [hl]
    rlca
    ld [de], a

jr_008_531e:
    ld d, e
    jr nz, jr_008_5383

jr_008_5321:
    ld [hl], b
    rst RST_38
    jr nz, jr_008_5387

jr_008_5325:
    ld a, e
    rst RST_38
    jr nz, jr_008_538c

    ld [hl], c
    rst RST_38

jr_008_532b:
    jr nz, jr_008_5390

jr_008_532d:
    ld a, h
    rst RST_38

jr_008_532f:
    ld l, h
    dec h
    inc de
    cp $52
    dec h
    ld de, $52e7
    dec h
    inc d
    adc l
    ld c, b
    dec h
    ld h, d
    ei
    ld d, d
    dec h
    ld h, e
    sbc $52
    rst RST_38
    ld bc, $ffc5
    rst RST_38
    nop
    pop de
    rst RST_38
    dec b
    ld d, c
    ld d, e
    ld hl, $30ff
    or b
    inc l
    ld [bc], a
    ld b, $05
    ld d, c
    ld d, e
    ld e, $ff
    jr nc, jr_008_530d

    inc l
    add hl, de
    rst RST_38
    nop
    dec l
    rst RST_38
    nop
    inc l
    rst RST_38
    ld l, $00
    db $d3
    nop
    sub $ff
    nop
    ld [hl], h
    rst RST_38
    jr nc, jr_008_5321

    inc l
    ld a, [de]
    rst RST_38
    dec b
    ld a, c
    ld d, e
    inc hl
    rst RST_38
    jr nc, jr_008_532b

    inc l
    inc bc
    ld b, $05
    ld a, c
    ld d, e
    rra
    rst RST_38

jr_008_5383:
    nop
    push hl
    rst RST_38
    nop

jr_008_5387:
    pop hl
    rst RST_38
    nop
    db $e3
    rst RST_38

jr_008_538c:
    nop
    nop
    nop
    nop

jr_008_5390:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_008_5449:
    nop
    nop
    nop
    nop

Call_008_544d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_008_55ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_008_5bff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_008_6049:
    nop

Jump_008_604a:
    nop
    nop
    nop
    nop

Jump_008_604e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_008_6225:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_008_7d7e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
