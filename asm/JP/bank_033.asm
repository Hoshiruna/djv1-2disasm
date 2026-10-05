; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

; Bank-local resource pointers, indexed by the low nibble of the resource ID.
ResourcePointers_033:
    dw Resource_JP_033_4020 ; $00: compressed font
    dw $4547 ; $01
    dw $4a21 ; $02
    dw $4f85 ; $03
    dw $4f86 ; $04
    dw $54e6 ; $05
    dw $54e7 ; $06
    dw $5a1f ; $07
    dw $5a20 ; $08
    dw $5ef7 ; $09
    dw $5ef8 ; $0a
    dw $641b ; $0b
    dw $641c ; $0c
    dw $690a ; $0d
    dw $690b ; $0e
    dw $6f2e ; $0f

; Compressed font data: 128 tiles, decoded to 2048 bytes.
Resource_JP_033_4020:
    INCBIN "../../res/JP/gfx/font.bin", $0, $22
jr_033_4042:
    INCBIN "../../res/JP/gfx/font.bin", $22, $a
jr_033_404c:
    INCBIN "../../res/JP/gfx/font.bin", $2c, $20
jr_033_406c:
    INCBIN "../../res/JP/gfx/font.bin", $4c, $4
jr_033_4070:
    INCBIN "../../res/JP/gfx/font.bin", $50, $1b0
jr_033_4220:
    INCBIN "../../res/JP/gfx/font.bin", $200, $18
jr_033_4238:
    INCBIN "../../res/JP/gfx/font.bin", $218, $2e
jr_033_4266:
    INCBIN "../../res/JP/gfx/font.bin", $246, $23
jr_033_4289:
    INCBIN "../../res/JP/gfx/font.bin", $269, $1d
jr_033_42a6:
    INCBIN "../../res/JP/gfx/font.bin", $286, $d0
jr_033_4376:
    INCBIN "../../res/JP/gfx/font.bin", $356, $72
jr_033_43e8:
    INCBIN "../../res/JP/gfx/font.bin", $3c8, $142
jr_033_452a:
    INCBIN "../../res/JP/gfx/font.bin", $50a, $1d
    dec e
    db $10
    ld [hl], b
    rst RST_18
    ld a, a
    add b
    rst RST_38
    ld a, a
    ret nz

    inc bc
    ld [$01fe], sp
    rst RST_28
    db $fd
    cp $02
    db $fc
    inc d
    rlca
    ld a, a
    add b
    add b
    ei
    nop
    cp a
    inc hl
    ld [$01fe], sp

jr_033_4565:
    inc bc
    nop
    rst RST_38
    db $fd
    ld [bc], a
    inc [hl]
    rlca
    add b
    rst RST_38
    nop
    add b
    nop
    cp b
    cp a
    nop
    or b
    nop
    or b
    inc bc
    or a
    ld b, d
    nop
    and b
    rst RST_38
    ld bc, $00ff
    ld [bc], a
    ld [bc], a
    ld e, $02
    ld c, $ff
    ld [bc], a
    ld c, $c2
    xor $02
    ld [bc], a
    ld [bc], a
    ld b, $fe
    ld b, b
    ld bc, $b105
    dec bc
    and e
    rla
    add a
    cpl
    rst RST_18
    adc a
    rla
    add a
    dec bc
    add e
    ld d, b
    ld bc, $1e42
    rst RST_38
    and d
    adc [hl]
    jp nc, $eac6

    ldh [c], a
    sbc $c2
    xor e
    cp [hl]
    add d
    ld b, b
    ld [bc], a
    cp [hl]
    add h
    ld b, $bc
    ld d, b
    ld bc, $37e2
    and $f2
    or $96
    inc bc
    ld [hl], d
    halt
    ld b, b
    ld [bc], a
    inc h
    inc bc
    xor a
    cp h
    nop
    or b
    ld [bc], a
    ld c, a
    inc bc
    cp $b4
    ld [bc], a
    ld e, $ef
    ld [bc], a
    ld b, $62
    ld h, d
    ld b, b
    inc bc
    ld bc, $00bb
    ld a, a
    cp l
    nop
    adc [hl]
    db $10
    sub [hl]
    add hl, de
    sbc c
    ld d, b
    ld [bc], a
    rst RST_18
    ld a, [hl]
    add d
    cp [hl]
    jp nz, $d8de

    ld bc, $9e82
    or $40
    ld bc, $bd01
    db $e4
    nop
    or c
    inc bc
    xor e
    ld d, $ff
    sub a
    inc d
    sub [hl]
    ld bc, $02ff
    ld [bc], a
    add d
    ei
    sbc $82
    reti


    nop
    ldh [c], a
    xor $32
    ld [hl], $12
    cp l
    sub $04
    add hl, bc
    cp a
    ld b, b
    ld b, b
    add b
    inc d
    add hl, bc
    db $fc
    scf
    nop
    nop
    ld bc, $0924
    rst RST_38
    ccf
    nop
    nop
    dec [hl]
    ld [$ffff], sp
    cp $fe
    ld bc, $b600
    inc b
    or [hl]
    rst RST_38
    rlca
    or a
    inc b
    or [hl]
    inc bc
    cp e
    nop
    cp h
    ld a, a
    ccf
    rst RST_38
    add b
    add b
    ld [bc], a
    xor $e2
    ld d, c
    db $10
    cp a
    ld [hl+], a
    ld l, [hl]
    jp nz, Jump_000_02de

    ld a, $3d
    db $10
    ld bc, $05bf
    add c
    ld [bc], a
    add b
    ld bc, $46a0
    nop
    cp b
    cp $4a
    inc de
    ld a, [hl]
    ld [bc], a
    ld a, [$ee02]
    ld [bc], a
    add $df
    ld [bc], a
    ld l, [hl]
    ld [bc], a
    ld a, $02
    ld e, h
    ld de, $bd01
    ldh [c], a
    ld b, h
    nop
    and b
    ld b, d
    nop
    ld [hl+], a
    nop
    ld c, h
    ld de, $c6c2
    ld [hl], d
    sub a
    halt
    ld [bc], a
    ld b, $94
    db $10
    ld b, [hl]
    ld a, e
    db $10
    ld e, l
    db $10
    ld a, [bc]
    rra
    adc b
    dec c
    adc h
    ld [bc], a
    or d
    xor d
    nop
    inc h
    nop
    ld c, h
    ld de, $2e3f
    ld c, $da
    ld a, [de]
    ld [hl+], a
    ld h, $56
    nop
    or l
    nop
    ld e, $5c
    ld de, $9f0f
    nop
    xor a
    ld b, [hl]
    nop
    inc h
    ld [bc], a
    adc h
    ld [de], a
    cp $f9
    nop
    ld [hl], d
    or $3a
    ld a, d
    ld [de], a
    or d
    ld [bc], a
    db $fd
    add $5c
    ld de, $9514
    nop
    add e
    nop
    cp [hl]
    ld a, a
    ld bc, $03bd
    cp e
    ld bc, $7fbb

jr_033_46be:
    ld c, l
    db $10
    rst RST_38
    ld [de], a
    sub $02
    and $02
    ld a, [hl]
    ld [bc], a
    cp [hl]
    ld c, a
    add d
    sbc $02
    sbc $5c
    ld de, $04a0
    or b
    ld b, h
    db $10
    rst RST_18
    or h
    ld b, $b7
    inc b
    or a
    or b
    inc b
    ld c, $82
    ld a, c
    adc [hl]
    jr jr_033_4706

    nop
    add hl, hl
    dec b
    or l
    inc b
    or l
    db $10
    dec h
    cp [hl]
    ld d, h
    db $10
    ld l, $a2
    xor $22
    xor $a0
    ld [$afb8], sp
    inc b
    or [hl]
    nop
    adc a
    or b
    ld [$779e], sp
    db $10
    ldh a, [c]
    cp $a0
    inc bc
    inc b
    cp a

jr_033_4706:
    ld [$13bc], sp
    or b
    inc h
    ld a, e
    and b
    jr nz, jr_033_46be

    add hl, bc
    ld a, $82
    ld e, $42
    ccf
    inc bc
    sbc l
    cp a
    add h
    ld [bc], a
    or b
    dec bc
    xor e
    ld c, [hl]
    inc b
    ld a, c
    ld hl, $ffbe
    ld [bc], a
    ld b, $6a
    ld l, d
    ld [bc], a
    ld [bc], a
    add b
    add b
    rst RST_18
    ld a, a
    ld a, a
    ld a, b
    ld b, b
    ld [hl], b
    and l
    jr nz, jr_033_47a7

    ld b, a
    rst RST_38
    ld b, b
    ld b, b
    ld h, b
    ld b, b
    ld bc, $fe01
    db $fc
    rst RST_30
    inc e
    nop
    inc c
    or l
    jr nz, @-$32

    ldh [rP1], a
    nop
    ei
    inc b
    nop
    and b
    ld hl, $4175
    ld l, e
    ld b, e
    ld d, a
    ld a, a
    ld b, a
    ld l, a
    ld c, a
    ld d, a
    ld b, a
    ld c, e
    ld b, e
    or b
    ld hl, $5cff
    nop
    xor h
    add b
    call nc, $e8c0
    ldh [$ff6f], a
    call c, $bcc0
    add b
    and b
    ld hl, $407e
    db $e4
    dec h

jr_033_4770:
    cp l
    ld a, h
    xor a
    ld [hl+], a
    db $e4
    ldh [$fff4], a
    ldh a, [$fff6]
    inc hl
    ld [hl], h
    dec a
    ld [hl], b
    ld [$0725], sp
    or a
    nop
    or b
    ld c, h
    ld [de], a
    rla
    ld h, $63
    ld [bc], a
    ld c, $5c
    ld de, $2528
    ld [$c235], sp
    adc $3a
    inc hl
    ei
    ldh [c], a
    xor $1a
    inc sp
    nop
    sub b
    ld bc, $00af
    db $fd
    or e
    and [hl]
    rla
    ld [bc], a
    ld a, [bc]
    add d
    or $02

jr_033_47a7:
    adc $f4
    ld a, c
    ld de, $139a
    jr nz, jr_033_481c

    jr nz, jr_033_47e1

    or d
    jr z, jr_033_4770

    ld [hl], a
    inc d
    cp h
    ld [de], a
    adc e
    ld [de], a
    ld [hl], $06
    ld b, $95
    ld de, $d36c
    nop
    sbc d
    inc de
    dec b
    or l
    add b
    dec [hl]

jr_033_47c8:
    nop
    cp b
    ld c, h
    ld de, $52f3
    ld d, [hl]
    sub b
    dec [hl]
    ld a, [de]
    inc sp
    ld [hl], b
    ld b, [hl]
    ld [hl], h
    ld b, [hl]
    rst RST_38
    ld [hl], a
    ld b, a
    ld [hl], h
    ld b, [hl]
    ld a, e
    ld b, e
    ld a, h
    ld b, b
    db $dd

jr_033_47e1:
    ld b, b
    cp a
    jr nz, jr_033_47f1

    ldh [$ffec], a
    or c
    jr nc, @+$2e

    ld h, b
    rst RST_28
    call c, Call_000_3cc0
    nop
    dec e

jr_033_47f1:
    db $10
    ld bc, $4145
    sub a
    ld b, d
    ld b, b
    ld h, c

jr_033_47f9:
    and l
    jr nz, jr_033_4874

    db $ed
    jr nz, @-$52

    ld sp, $ff7c
    nop
    ld hl, sp+$00
    db $ec
    nop

jr_033_4807:
    call nz, $6c00
    sbc l
    nop
    cp d
    inc sp
    ld a, l
    ld b, c
    ld a, b
    xor l
    jr nz, jr_033_47f9

    ld sp, $be7f
    xor e
    ld [hl-], a
    call nz, Call_033_74c0

jr_033_481c:
    ld [hl], b
    inc b
    cp l
    jr nz, jr_033_4865

    ld d, c
    nop
    inc e
    db $10
    cp l
    jr nc, jr_033_47c8

    ld hl, $e97f
    jr nc, jr_033_48ac

    db $ed
    jr nz, jr_033_4807

    ld [hl], b
    ld b, b
    ld h, d
    xor a
    ld [hl+], a

jr_033_4835:
    db $fc
    ld sp, hl
    jr nc, jr_033_4835

    nop
    db $ed
    inc e
    cp l
    jr nz, jr_033_489f

    ld h, b
    and b
    inc hl
    ld a, c
    ld b, e
    ld a, h
    ld a, a
    ld b, c
    ld c, [hl]
    ld b, b
    ld d, [hl]

jr_033_484a:
    ld d, b
    ld e, c
    ld e, c
    or b
    ld hl, $7cbf
    nop
    cp h
    add b
    call c, Call_000_38c0
    ld b, c
    sbc h
    cp $df
    ld [hl+], a
    ld a, l
    ld b, c
    ld a, l
    ld b, c
    ld [hl], c
    ld b, c
    ld h, e
    rst RST_18
    ld c, e

jr_033_4865:
    ld d, [hl]
    ld d, a
    ld d, h
    ld d, [hl]
    or b
    ld hl, $c09c
    db $fd
    sbc h
    add hl, sp
    ld b, b
    db $ec
    ldh [$ff34], a

jr_033_4874:
    jr nc, jr_033_484a

    db $10
    or $a0
    ld hl, $4070
    and h
    jr nc, jr_033_48c3

    halt
    ld b, a
    ld [hl], h
    rst RST_30
    ld b, a
    ld [hl], a
    ld b, a
    or b
    ld hl, $000c
    adc h
    add b
    ldh a, [c]
    halt
    ld b, e
    inc c
    cp a
    ld [hl+], a
    ld h, h

Jump_033_4893:
    ld b, e
    ld [hl], l
    ld b, l
    ld [hl], h
    ld b, l
    db $fc
    ld l, [hl]
    ld b, l
    or h
    jr nc, jr_033_48be

    xor h

jr_033_489f:
    ldh [$ff2c], a
    ldh [$ffcc], a
    db $fd
    ret nz

    nop
    ld b, a
    ld a, b
    ld b, b
    ld [hl], h
    ld b, [hl]
    ld b, b

jr_033_48ac:
    ld c, a
    ld a, [hl]
    db $10
    ld b, a
    sbc h
    nop
    inc c
    ld h, b
    nop
    ldh a, [rP1]
    ld b, d
    ld a, a
    ld b, h
    ld a, h
    ld c, b
    ld [hl], e
    ld d, b

jr_033_48be:
    ld h, h
    ld h, b
    bit 0, c
    ld a, d

jr_033_48c3:
    db $10
    ld b, l
    inc a
    cp c
    ld b, b
    ld b, b
    nop
    inc [hl]
    inc b
    and b
    ld hl, $7cff
    ld b, b
    ld a, l
    ld b, c
    ld h, b
    ld b, b
    ld d, [hl]
    ld d, [hl]
    xor a

jr_033_48d8:
    ld b, b
    ld b, b
    ld l, d
    ld c, d
    jr nc, jr_033_4921

    ld a, h
    or l
    jr nz, @-$2a

    rst RST_38
    ret nc

    inc b
    nop
    xor h
    and b
    ld c, d
    ld c, b
    ld c, l
    rst RST_08
    ld c, h
    ld [hl], d
    ld b, d
    ld a, h
    dec b
    ld b, d
    xor h
    ld sp, $0c2c
    sbc a
    ret c

    jr jr_033_491e

    jr nz, jr_033_4908

    dec d
    ld b, d
    cp h
    ld sp, $8f4f
    ld e, a
    ld h, b
    ld c, a
    ld [hl], b
    dec b
    ld b, d

jr_033_4908:
    ld [$5833], a
    ld b, c
    ld [hl], h
    cp a
    ldh a, [$ff38]
    ld a, b
    sub b
    jr nc, jr_033_48d8

    cp e
    ld [hl-], a
    ld d, l
    ei
    ld d, h
    ld b, e
    push hl
    jr nz, jr_033_499a

    ld b, c

jr_033_491e:
    ld a, e
    ld b, e
    ld a, c

jr_033_4921:
    db $dd
    ld b, e
    xor h
    ld sp, $10d4
    db $e4
    push af
    ld b, b
    inc a
    add b
    rrca
    sbc h
    ret nz

    inc e
    ret nz

    cp h
    ld sp, $4568
    inc h
    ld d, c
    xor h
    ld sp, $7660
    ld b, a
    ld a, [$8833]
    ld b, l
    ld l, b
    ld d, l
    sbc b
    ld b, e
    db $ec
    ldh [$ff78], a
    ld d, l
    sbc a
    ld b, b
    ld d, b
    ld h, c
    ld c, a
    ld [hl], b
    xor c
    jr nc, jr_033_4959

    ld d, l
    nop
    rst RST_08
    ld [$f084], sp
    inc c
    cp c

jr_033_4959:
    jr nc, jr_033_4973

    ld d, l
    ld h, b
    ld h, b
    rst RST_38

jr_033_495f:
    ld [hl], d
    ld [hl], b
    ld a, h
    ld l, b
    ld a, h
    ld d, h
    ld a, a
    ld d, d
    ld h, d
    ld [$0433], a
    db $f4
    ld sp, $40f5
    jr @+$57

    ld l, d
    ld c, d

jr_033_4973:
    ldh [rHDMA3], a
    sub $68
    ld d, l
    xor h
    and b
    ldh a, [rHDMA3]
    inc e
    ld sp, hl
    inc [hl]
    rst RST_38
    ld d, l
    ei
    rst RST_38
    xor d
    nop
    ld l, c
    db $e3
    db $e3
    pop bc
    db $dd
    add b
    db $fd
    cp [hl]
    inc d
    ld h, c
    pop bc
    db $dd
    db $e3
    db $e3
    rst RST_38
    rst RST_38
    ld [hl-], a
    db $10
    ld h, b
    pop bc
    rst RST_18

jr_033_499a:
    jr nz, @-$1f

    jr nz, jr_033_495f

    pop bc
    inc e
    ld h, c

jr_033_49a1:
    cp e
    jr nc, jr_033_49a1

    ld a, [hl]
    ld [hl-], a
    ld l, b
    nop
    pop af
    pop af
    pop hl
    db $ed
    pop bc
    rst RST_38
    db $dd
    add c
    cp l
    pop bc
    db $dd
    pop hl
    db $ed
    pop af
    rst RST_38
    pop af
    rst RST_38
    rst RST_38
    rst RST_00
    rst RST_00
    jp $c1db


    rst RST_38
    db $dd
    ret nz

    sbc $c1
    db $dd
    jp $c7db


    db $dd
    rst RST_00
    ld l, $61
    rrca
    rrca
    rra
    ld h, h
    ld l, b
    nop
    nop
    rst RST_38
    di
    rst RST_30
    db $d3
    rst RST_30
    db $d3
    db $d3
    db $d3
    jp $c30f


    rst RST_20
    rst RST_20
    rst RST_38
    ld l, $61
    ld a, l
    ld h, b
    add d
    ld l, b
    ld h, h
    ld l, c
    ld e, $64
    ld h, e
    rrca
    rrca
    db $10
    db $10
    and d
    ld h, e
    cp e
    jr nc, @-$7d

    ld h, d
    add sp, -$80
    ld h, c
    or h
    ld h, e
    add b
    ld h, l
    ld h, [hl]
    add d
    ld h, [hl]
    di
    di
    rst RST_28
    rst RST_30
    rst RST_28
    rst RST_08
    rst RST_18
    call nc, $ef61
    rst RST_28

jr_033_4a0b:
    di
    di

jr_033_4a0d:
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_08
    rst RST_08
    rst RST_30
    rst RST_30
    di
    ei
    ld e, $e4
    ld h, c
    rst RST_30
    rst RST_30
    rst RST_08
    rst RST_08
    add d
    ld l, e
    or b
    ld h, c
    dec e
    nop
    ld [hl], b
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp $fe
    db $fc
    call c, $fff8
    ld hl, sp-$10
    ld [hl], b
    ldh [$ffa0], a
    ret nz

    ld b, b
    add b
    rst RST_38
    inc e
    inc bc
    inc e
    inc bc
    jr c, jr_033_4a44

    jr c, jr_033_4a46

    rst RST_38
    ld a, b
    rlca
    ld [hl], b
    rrca

jr_033_4a44:
    rst RST_38
    nop

jr_033_4a46:
    rst RST_38
    rrca
    rst RST_38
    jr c, jr_033_4a0b

    jr c, jr_033_4a0d

    inc e
    ldh [rNR32], a
    ldh [$ffaf], a
    ld e, $e0
    ld c, $f0
    inc e
    nop
    ldh a, [rP1]
    nop
    ld a, a
    rst RST_38
    ld a, a
    ccf
    dec sp
    rra
    rra
    rrca
    ld c, $07
    rst RST_38
    dec b
    inc bc

jr_033_4a68:
    ld [bc], a
    ld bc, $ea00
    nop
    db $ed
    ld a, a
    rlca

jr_033_4a70:
    rst RST_28
    rra
    rst RST_38
    ccf
    rst RST_38
    ld a, a
    ld c, c
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    ld [$0cf7], sp
    di
    jr jr_033_4a68

    rst RST_38
    add h
    ld [hl], e
    ld a, [de]
    push hl
    add l
    ld [hl], d
    jp nc, $f721

    ld h, a
    rrca
    inc b
    ld d, e
    nop
    inc b
    di
    ld a, [de]
    push hl
    rst RST_38
    or a
    ld b, b
    ld b, c
    and e
    rst RST_38
    ld a, a
    ret nz

    rst RST_38
    rst RST_38
    ld e, b
    adc [hl]
    jr jr_033_4a70

    ld e, h
    adc b
    sbc e
    ld c, e
    rst RST_38
    ld e, b
    adc e
    db $fc
    add sp, $18
    xor $18
    xor $fb
    ld [$80f6], sp
    dec bc
    ld [bc], a
    nop
    dec h
    ld [de], a
    ld d, d
    rst RST_38
    dec h
    inc c
    ld [hl], e
    ld b, b
    scf
    inc c
    ld [hl], e
    nop
    rst RST_38

Jump_033_4ac3:
    ld [hl], a
    ld c, b
    scf
    and c
    nop
    ld d, e
    and b
    and h
    rst RST_30
    ld d, e
    ld a, [de]
    push hl
    ld h, b
    ld bc, $f708
    ld [$fff7], sp
    add b
    nop
    ld h, h
    add b
    and [hl]
    ld b, b
    ld [de], a
    db $e4
    rst RST_38
    inc l
    jp nc, $e412

    ld [$1af6], sp
    db $e4
    ld a, h
    xor h
    ld bc, $03c0
    ld a, [bc]
    rst RST_30
    dec bc
    rst RST_30
    rrca
    pop bc
    ld b, $ff
    dec bc
    rst RST_30
    ld a, [hl]
    rst RST_30
    ret c

    rst RST_38
    add hl, bc
    rst RST_30
    ei
    ld [$e077], sp
    inc bc
    jr c, jr_033_4b7a

    inc e
    ld a, a
    rrca
    db $fc
    pop hl
    ld bc, $04c1
    inc c
    rst RST_38
    ld a, [de]
    rst RST_30
    cp c
    rst RST_30
    rst RST_38
    jp hl


    rst RST_30
    nop
    add a
    ld hl, $10cf
    db $e3
    rst RST_18
    inc b
    ld hl, sp+$00
    rst RST_38
    nop
    ld a, [bc]
    ld [de], a
    rst RST_30
    rst RST_38
    cp a
    ei
    rst RST_38
    ld a, [hl]
    rst RST_38
    adc a
    ld a, a
    ld a, [bc]
    inc de
    nop
    ld l, a
    nop
    rst RST_28
    rst RST_38
    rst RST_18
    inc de
    db $10
    pop af
    cp $18
    dec d
    rst RST_38
    nop
    pop hl
    add h
    di
    ld [$20c7], sp
    rra
    ret c

    ld [$0015], sp
    nop
    ld sp, $ff00
    cp $13
    db $10
    ld a, $ff
    rst RST_08
    ld d, h
    rst RST_38
    jr z, jr_033_4b80

    inc e
    nop
    ld d, d
    inc d
    db $fc
    ld bc, $e0f9
    ld a, $00
    ld d, c
    ld de, $01fe
    ldh a, [rSC]
    add c
    cp a
    ld h, $01
    call nc, $a823
    ld d, a
    ld a, h
    nop
    adc $ff
    jr jr_033_4b80

    sbc b
    ld c, $58
    adc [hl]
    sbc b
    ld c, [hl]
    and $72

jr_033_4b7a:
    db $10
    adc $48
    sbc c
    nop
    sbc b

jr_033_4b80:
    ld bc, $2750
    ld l, l
    sbc a
    ld [de], a
    ld d, [hl]
    ld hl, $0023
    xor d
    ld bc, $0160
    inc h
    cp l
    db $d3
    ld h, [hl]
    ld bc, $8063
    ld [$b6f6], sp
    inc bc
    inc l
    ccf
    jp nc, $a452

    and h
    ld b, b
    ret nz

    ccf
    inc de
    or b
    jr @+$79

    inc a
    rst RST_38
    ld l, b
    call Call_000_0c00
    rst RST_30
    jr c, @-$21

    nop
    ld [hl], a
    rrca
    rst RST_38
    jr @-$31

    nop
    db $fc
    rst RST_38
    sbc b
    rlc b
    rst RST_30
    ld a, $ff
    add sp, -$3f
    ld [bc], a
    ld hl, sp+$7f
    rrca

jr_033_4bc4:
    rst RST_30
    ld a, l
    ld l, b
    rst RST_00
    db $10
    inc c

jr_033_4bca:
    rst RST_30
    jr z, jr_033_4bc4

    add hl, hl
    rst RST_10
    ld [de], a
    rst RST_18
    jr jr_033_4bca

    sbc b
    rst RST_30
    ret z

    xor l
    nop
    jr c, @+$01

    cp $f6
    ld de, $003f
    sub a
    add b
    ld c, l
    ret nz

    inc hl
    rst RST_38
    ldh [rNR11], a
    ldh a, [$ff09]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    rst RST_18
    cp $0a
    ld a, h
    ld [$107e], sp
    inc hl
    inc c
    ld a, d
    rst RST_38
    ld a, [bc]
    ld a, h
    ld c, $78
    ld d, b
    ld a, $10
    ld a, [hl]
    cp $20
    inc hl
    jr nc, jr_033_4c63

    ld d, b
    ld a, $70
    ld e, $fc
    rst RST_38
    nop
    jp hl


    ld bc, $03b2
    call nz, $8807
    cp a
    rrca
    sub b
    rra
    jr nz, jr_033_4c58

    ld b, b
    rla
    ld de, $ef40
    ldh [$ffe0], a
    db $fc
    db $fc
    ld b, b
    ld [de], a
    ldh a, [rIE]
    ret nz

    rst RST_38
    ld a, [de]
    ld [hl], c
    jr jr_033_4c9f

    ld a, [de]
    ld [hl], c
    add hl, de
    ld [hl], d
    rst RST_18
    ld a, [de]
    ld [hl], c
    rra
    ld [hl], a
    jr @+$5d

    jr nz, jr_033_4c41

    rst RST_30
    cp $aa
    ld bc, $a758
    db $fd
    ld [bc], a

jr_033_4c41:
    add d
    push bc
    rst RST_38
    di
    cp $03

jr_033_4c47:
    ld c, a
    nop
    ld h, b
    ld hl, $f20d
    ld e, b
    and a
    rst RST_38
    xor l
    ld d, d
    ld c, e
    add h
    and $f0
    jr jr_033_4c47

jr_033_4c58:
    rst RST_38
    ld l, e
    adc h
    ret


    ld c, $eb
    inc c
    xor e
    inc c
    rst RST_08
    ld c, e

jr_033_4c63:
    inc c
    inc c
    ld [$0000], sp
    dec a
    ld de, $8f3c
    ld [hl], l
    cp $08
    inc de
    rst RST_28
    ld [$f712], sp
    rst RST_30
    nop
    and l
    ld hl, $9b7e
    ld [hl+], a
    or h
    ld b, e
    ld e, d
    and l
    add h
    ld [hl], e
    xor d
    inc bc
    cp [hl]
    ret nz

    rlca
    add hl, hl
    rst RST_30
    ld a, d
    rst RST_30
    ld c, [hl]
    ret


    ld [hl+], a
    inc e
    cp e
    rst RST_38
    cpl
    call $8800
    rst RST_30
    ld e, b
    rst RST_10
    jr nz, jr_033_4d11

    db $fd
    rst RST_30
    jp c, $0c11

    rst RST_30

jr_033_4c9f:
    jr @+$01

    ld a, b
    rst RST_30
    sbc a
    adc $f7
    adc [hl]
    rst RST_30
    call c, $20e5
    db $e4
    ld hl, $fcc8
    push de
    jr nz, @-$3e

    dec b
    dec c
    ld a, a
    inc c
    ld a, e
    ld c, $79
    rst RST_38
    dec c
    ld a, d
    ld c, $79
    ld [$0878], sp
    ld a, b
    db $e3
    inc c
    ld a, b
    adc a
    jr nz, @+$53

    dec d
    dec sp
    inc d
    jp $a5c3


    ei
    and l
    sbc c
    ld h, $30
    and l
    and l
    jp $ffc3


    rst RST_38
    rst RST_38
    or b
    cp $30
    sbc $70
    sbc [hl]
    or b
    rst RST_38
    ld e, [hl]
    ld [hl], b
    sbc [hl]
    db $10
    ld e, $10
    ld e, $30
    rst RST_30
    ld e, $ff
    add b
    ld d, c
    ld de, $00f8
    ldh a, [rP1]
    cp a
    db $e3
    nop
    rst RST_20
    nop
    ldh [rP1], a
    ld e, h
    ld hl, $7f18
    ld [hl], a
    db $10
    ld [hl], e
    jr @+$72

    add hl, de
    ld [hl], b
    ld d, h
    ld hl, $52fe
    ld d, $7f
    add b
    rrca
    ld b, b
    add c
    inc h

jr_033_4d11:
    ret nz

    rst RST_38
    inc [hl]
    rst RST_38
    dec bc
    db $f4
    dec b
    ld a, [$ff00]
    rst RST_38
    ld bc, $02fe
    db $fd
    ld bc, $0bfe
    inc [hl]
    rst RST_38
    add sp, $17
    db $d3
    cpl
    rst RST_20
    rra
    rst RST_08
    ccf
    rst RST_18
    adc a
    ld a, a
    adc a
    ld a, a
    sbc a
    adc e
    jr nc, jr_033_4d66

    rst RST_08
    rst RST_38
    jp nc, $c7ef

    rst RST_38
    rst RST_00
    rst RST_38
    rst RST_20
    rst RST_38
    db $fd
    rst RST_30
    sbc c
    ld [hl-], a
    inc a
    jp $e71b


    inc de
    rst RST_28
    ld a, a
    sbc e
    rst RST_20
    set 6, a
    db $d3
    rst RST_28
    rst RST_10
    sub e
    jr nc, jr_033_4dd4

    jr nc, @-$2f

    xor a
    rst RST_18
    adc a
    rst RST_38
    sbc a
    or l
    jr nc, @-$40

    ld b, [hl]
    ld bc, $ff3f
    ld c, e
    rst RST_38
    ld a, e

jr_033_4d66:
    push hl
    jr nz, jr_033_4da1

    rst RST_28
    rst RST_30
    dec c
    rst RST_30
    add hl, de
    rl b
    inc c
    rst RST_30
    adc c
    ld [$00cb], a
    ld e, [hl]
    pop de
    db $10
    cp b
    push af
    inc h
    ld a, [bc]
    rst RST_30
    add hl, bc
    cp $cb
    nop
    ld c, $f7
    ld a, h
    rst RST_38
    db $eb
    rst RST_30

jr_033_4d88:
    adc a
    cp [hl]
    db $dd
    nop
    ld c, b
    rst RST_30
    call z, $9cf7
    rst RST_10
    jr nc, @+$6b

    db $eb
    rst RST_30
    adc a
    pop bc
    ld [bc], a
    ld bc, $3067
    jr nz, @+$21

    add b
    rst RST_38
    rrca

jr_033_4da1:
    and b
    ld b, a
    ld d, d
    and c
    add b
    ld [hl], b
    ld e, $5d
    ldh [rP1], a
    ld hl, $c047
    ld a, [hl+]
    rlca
    jr nz, jr_033_4dba

    dec bc
    ld hl, $7e5d
    jr nc, jr_033_4dd9

    ldh [c], a
    inc bc

jr_033_4dba:
    ld d, h
    scf
    jr nz, jr_033_4dce

    dec sp
    ld hl, $7efd
    ld b, c

jr_033_4dc3:
    jr nc, jr_033_4dc3

    inc b
    ld hl, sp+$01
    ldh a, [rTIMA]
    rst RST_38
    ldh [c], a
    ld c, d
    add l

jr_033_4dce:
    add hl, de
    ld b, $48
    scf
    ld b, $ff

jr_033_4dd4:
    ld a, [hl]
    ld e, $78
    ld a, $60

jr_033_4dd9:
    ld a, d
    ld c, b
    ld [hl], d
    rst RST_38
    ld b, b
    ld e, [hl]
    nop
    ld b, $60
    nop
    ld a, b
    ld [$137f], sp
    ld c, b
    ld h, e
    ld [$4843], sp
    ld h, e
    ld d, d
    ld b, e
    ei
    ld [$7013], sp
    ld bc, $8c5a
    sbc h
    ld c, b
    ld e, h
    rst RST_20
    adc b
    ld a, [$7cec]
    ld [bc], a
    cp c
    ld a, [hl+]
    ld [$1ff7], sp
    ld c, b
    cp c
    jr nc, jr_033_4d88

jr_033_4e08:
    ld b, e
    cp h
    ld sp, $813f
    ld b, [hl]
    add b
    ld b, l
    rst RST_30
    sub a
    jr nc, @-$06

    and d

jr_033_4e15:
    ld b, c
    sub h
    ld sp, $3194
    jp $c2ff


    rst RST_38
    ret nz

    ld b, d
    or e
    ld b, h
    ldh [$ffbb], a
    ld b, b
    cp h
    ld sp, $034a
    or b
    inc de
    db $e3
    rst RST_08
    ld b, h
    ld l, $a2
    ld b, e
    rst RST_20
    rst RST_38
    di
    rst RST_18
    ld c, b
    db $e3
    sub l
    jr nc, @-$4e

    dec e
    db $fd
    ld hl, $4005
    jr nz, jr_033_4e08

    ld [de], a
    pop hl
    jr z, jr_033_4e15

    rst RST_38
    ld [de], a
    db $e4
    dec c
    ldh a, [c]
    ld [$0ef7], sp
    ld a, b
    rst RST_38
    adc [hl]
    cp b
    ld c, d
    call c, $e82e
    ld a, [de]
    db $ec
    rst RST_38
    inc e
    ld l, d
    ld a, [de]
    inc l
    sbc b
    ld c, $70
    ld e, $ff
    ld [hl], c
    dec e
    ld d, d
    dec sp
    ld [hl], h
    rla
    ld e, b
    scf
    ld a, a
    jr c, @+$58

    ld e, b
    inc [hl]
    add hl, de
    ld [hl], b
    add h
    dec [hl]
    ld b, b
    rst RST_38
    inc b
    db $e3
    ld c, b
    add a
    inc c
    inc de
    ld e, b
    daa
    db $fd
    adc b
    rst RST_28
    nop
    nop
    nop
    ld a, [hl]
    rst RST_38
    add c
    ld a, [hl]
    ldh [rLY], a
    ld e, a
    ld c, [hl]
    ld d, l
    ld a, $11
    ld d, d
    ld d, $09
    ld de, $7e7e
    ld a, h
    rst RST_38
    ld h, a
    inc bc
    ld l, a
    nop
    ld l, a
    nop
    ld h, b
    nop
    rrca
    nop
    ld b, $00
    ld a, [hl]
    adc d
    ld b, e
    ld c, d
    ld bc, $438a
    and [hl]
    ld b, c
    dec e
    jp $5693


    rst RST_00
    rst RST_38
    rst RST_08
    sbc a
    ld d, h
    sub [hl]
    ld sp, $3194
    ld [$41bc], a
    ldh a, [$ffb3]
    ld d, d
    ld hl, sp-$47
    ld d, d
    rlca
    ld hl, sp-$0e
    cpl
    db $fd
    db $fd
    cp $fc
    ld b, [hl]
    db $10
    cp $40
    ld [de], a
    sub b
    ld e, l
    rst RST_18
    inc a
    jp $e799


    ret


    xor c
    inc [hl]
    rst RST_00
    rst RST_38
    ld b, c
    rst RST_28
    inc e
    nop
    or b
    dec de
    ld a, h
    ld de, $6900
    or b
    inc de
    db $dd
    nop
    nop
    db $fd
    ld [hl], a
    dec d
    ld h, b
    xor d
    rst RST_38
    xor d
    ld d, l
    ld d, l
    xor d
    rst RST_38
    xor d
    ld d, l
    db $dd
    ld [hl+], a
    ld [hl], a
    adc b
    db $fd
    ld [bc], a
    or $51
    ld de, $7318
    jr nc, jr_033_4f6d

    nop
    nop
    ld l, a
    rrca
    rst RST_38
    xor $e5
    db $e4
    ld bc, $01e4
    nop
    ld bc, $77fe
    ld d, b
    nop
    nop
    or $01
    push af
    inc bc
    ldh a, [c]
    cp $54
    ld h, c
    ld [bc], a
    ldh a, [rP1]
    db $f4
    nop
    or $00
    rst RST_38
    scf
    ret nz

    rst RST_10
    ld h, b
    rlca
    and b
    add a
    and b
    ld a, a
    rlca
    add b
    rlca
    nop
    rla
    nop
    scf
    ldh [rTIMA], a
    xor b
    ldh [rTIMA], a
    adc d
    ld b, e
    adc [hl]
    ld b, l
    rrca
    sub e
    ld d, h
    add e
    sub l
    ld h, b
    add c
    ld de, $00ff
    ld b, b
    and a
    ld b, h
    call nc, $e343
    rst RST_18
    ld b, b
    cp d
    ld d, e
    cp d
    ld d, c
    and l
    pop af
    cp c
    ld h, b
    pop hl
    rst RST_20
    ld b, h
    ret nc

    ld b, c
    pop bc
    or e
    ld b, b
    add b
    call c, $14b0
    ret z

    ld d, c
    cp $ff
    db $fc
    cp c
    ld d, b
    add hl, de
    xor $ff

jr_033_4f6d:
    ld l, e
    adc h
    call $ea08
    inc c
    xor l
    ld [$48fd], sp
    adc e
    ld [hl+], a
    ld c, b
    xor a
    dec bc
    inc c
    ld c, c
    ld c, $02
    adc b
    ld hl, $8b0b
    ld [hl+], a
    rst RST_38
    dec e
    nop
    ld [hl], b
    ld a, a
    ldh a, [$fff0]
    rrca
    adc a
    cp a
    ccf
    ld a, a
    ld b, $00
    rst RST_38
    ld [hl], a
    ld a, a
    ld h, a
    ld l, a
    ld h, e
    ld l, a
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    pop af
    di
    ei
    ei
    pop hl
    rst RST_28
    rst RST_38
    ldh [$ffe3], a
    db $e4
    db $fd
    rst RST_30
    rst RST_38
    rrca
    rrca
    rst RST_30
    ldh a, [$fff3]
    db $fc
    inc h
    ld [bc], a
    db $f4
    db $fc
    and $fe
    ei
    jp nz, $20fe

    ld bc, $fc3d
    ld e, $7e
    cp $fe
    jr c, jr_033_4fc9

    jr nz, jr_033_4fd6

    jr nz, jr_033_4fd8

jr_033_4fc9:
    db $10
    rlca
    db $10
    db $fd
    add a
    ld b, [hl]
    ld bc, $8308
    ld [$00c3], sp
    rst RST_38

jr_033_4fd6:
    rst RST_38
    nop

jr_033_4fd8:
    rst RST_38
    ld bc, $02ff
    rst RST_38
    rlca
    rst RST_38
    rst RST_18
    ld a, [bc]
    rst RST_38
    rra
    rst RST_38
    ld a, $51
    nop
    and b
    rst RST_38
    db $dd
    ld b, d
    ld h, c
    nop
    ret nz

    rst RST_38
    sub b
    ld d, c
    nop
    ld b, b
    rst RST_38
    cp e
    ld [bc], a
    ldh a, [rSVBK]

jr_033_4ff8:
    nop
    ldh [rDIV], a
    pop hl
    halt
    nop
    pop bc
    rst RST_38
    inc b
    pop bc
    ld [$eec3], sp
    nop
    ld d, b

jr_033_5007:
    nop
    ei
    add b
    nop
    add l
    rlca
    inc bc
    nop
    rrca
    nop
    inc e
    rst RST_38
    inc bc
    jr c, jr_033_501d

    jr nc, jr_033_5027

    ld [hl], b
    rrca
    rst RST_38
    cp $83

jr_033_501d:
    nop
    ret nz

    nop
    ldh [rP1], a
    ld [hl], b
    add b
    jr c, @+$01

    ret nz

jr_033_5027:
    inc e
    ldh [rNR34], a
    ldh [$fffe], a
    nop
    ld [bc], a
    cp $50
    nop
    scf
    nop
    rra
    nop
    ld a, [bc]
    nop
    dec b
    cp $85
    inc b
    ld a, a
    nop
    nop
    add b
    cp a
    rst RST_38
    nop
    add hl, sp
    cp a
    add $00
    add l
    inc b
    rst RST_38
    rst RST_38
    add b
    ld d, c
    nop
    add e
    inc bc
    rst RST_38
    ld [$8c00], sp
    ei
    ld l, a
    sbc b
    db $eb
    jr @+$01

    db $ed
    jr jr_033_5007

    jr @+$6b

    jr jr_033_4ff8

    ld [$7fff], sp
    ld a, a
    inc b
    nop
    inc c
    rst RST_30
    db $f4
    rlca
    rst RST_30
    push hl
    ld b, $d4
    push af
    nop
    ld b, l
    ld b, $06
    inc b
    rst RST_38
    ld h, b
    ld h, a
    jr nc, jr_033_50ec

    jr c, jr_033_50f3

    ld a, $7e
    rst RST_38
    rra
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    rrca
    ccf
    ld hl, sp+$50
    ld bc, $03ce
    jr jr_033_50a0

    inc bc
    rst RST_30
    ld bc, $00c7
    ld sp, hl
    ld bc, $1716
    jr c, jr_033_5099

    db $fc

jr_033_5099:
    cp $f8
    cp $00
    rst RST_10
    cp $00

jr_033_50a0:
    ld hl, sp+$25
    stop
    ld a, d
    ld bc, $c125
    rst RST_38
    ld [bc], a
    ldh [rNR43], a
    ret nc

    ld de, $38e0
    ret nz

    rst RST_38
    ld e, b
    and b
    ld a, h
    rst RST_38
    ld sp, hl
    rst RST_38
    ldh a, [c]
    rst RST_38
    rst RST_38
    db $e4
    rst RST_38
    call z, Call_000_18ff
    ld a, a
    or b
    ccf
    di
    ld b, b
    rra
    call nc, Call_033_6102
    inc de
    cp $00
    db $fc
    nop
    push af
    ld hl, sp+$4c
    nop
    add e
    ld b, [hl]
    nop
    rlca
    jr z, @+$09

    inc h
    rst RST_38
    dec bc
    ld e, b
    rlca
    sbc [hl]
    ld bc, $8000
    ld c, $7f
    add c
    ccf
    add b
    rrca
    ret nz

    nop
    ldh a, [$ff62]
    inc de

jr_033_50ec:
    db $fc
    ld b, $00
    ld e, e
    nop
    add b
    ld a, a

jr_033_50f3:
    ld h, b
    rra
    ld bc, $ef80
    add hl, bc
    db $e4
    ld a, [bc]
    and $24
    nop
    rst RST_38
    pop af
    cp $ff
    inc bc
    db $fc
    inc c
    ldh a, [$ff03]
    nop
    ld c, $b1
    ld a, a
    add l
    ld a, [hl-]
    ld [bc], a
    ld bc, $01e2
    ld a, [$10b1]
    rst RST_38
    ld [$6813], sp
    inc de
    ld c, b
    inc sp
    jr z, jr_033_5170

    rst RST_38
    ld b, b
    nop
    ld b, $3d
    halt
    inc c
    dec [hl]
    inc c
    cp l
    ld d, [hl]
    push bc
    db $10
    inc d
    inc c
    inc c
    inc b
    ldh [$ff03], a
    ld l, l
    cp $e7
    ld [bc], a
    xor d
    jr jr_033_514f

    ld [$ffff], sp
    inc c
    db $ed
    ei
    call nc, Call_033_7f19
    ccf
    jp nz, Jump_000_071b

    ccf
    inc bc
    ld a, a
    ccf
    inc bc
    rra
    nop
    rlca
    nop
    add e
    add e

jr_033_514f:
    nop
    inc e
    add h
    nop
    ld h, c
    rla
    rst RST_18
    nop
    ei
    cp a
    nop
    jr @+$17

    db $10
    rla
    adc d
    ldh a, [c]

jr_033_5160:
    dec bc
    db $fc
    add l
    nop
    cp $37
    ld de, $2140
    add l
    nop
    jr nz, jr_033_5160

    rlca
    jr jr_033_5176

jr_033_5170:
    jr nz, @-$79

    rlca
    ld bc, $06e0

jr_033_5176:
    nop
    push af
    ld hl, sp-$7b
    ld [$bd3f], sp
    ld bc, $587f

jr_033_5180:
    ld l, a
    jr nz, jr_033_5180

    rra
    add e
    inc bc
    ld a, a
    ccf
    sbc a
    ccf
    rst RST_18
    sbc a
    rst RST_38
    rst RST_18
    rst RST_18
    rst RST_28
    rst RST_08
    rst RST_38
    rst RST_28
    rst RST_28
    rst RST_08
    ld a, e
    ldh [$ffe0], a
    jr jr_033_51af

    rst RST_38
    rst RST_38
    ldh a, [$fff0]
    sub c
    nop
    ld a, [$2793]
    rra
    ld d, b
    nop
    db $fc
    nop
    add b
    rst RST_38
    rst RST_38
    db $d3
    ldh [$ffe0], a
    sbc h

jr_033_51af:
    ld hl, $106c
    ret nz

    inc h
    db $10
    rrca
    inc bc
    rst RST_38
    inc a
    ld b, c
    sbc [hl]
    add hl, hl
    adc $18
    rst RST_08
    ld de, $c6ff
    inc b
    or a
    ld c, b
    inc de
    add l
    ld h, d
    ld b, h
    ld a, a
    scf
    db $10
    ld h, a
    ld c, b
    cpl
    jr nz, jr_033_5220

    sub $23
    rst RST_38
    db $10
    ld e, a

jr_033_51d6:
    inc d
    rst RST_20
    ld [bc], a
    di
    dec c
    pop af
    sbc a
    dec b
    ld sp, hl
    ld bc, $02fc
    jp hl


    jr nz, @+$3a

    db $10
    ld e, a
    rst RST_38
    nop
    ld e, a
    jr nz, jr_033_520b

    jr nz, @+$21

    ld b, b
    ccf
    ld hl, sp-$41
    nop
    ei
    jr nz, jr_033_51d6

    db $10
    db $f4
    db $f4
    inc b
    db $e4
    inc b
    cp $04
    ld sp, $0444
    inc b
    inc b
    jr nz, jr_033_5205

jr_033_5205:
    ld b, b
    xor a
    nop
    ld c, a
    nop
    ld b, e

jr_033_520b:
    ld de, $2030
    add l
    ld [bc], a
    ld [bc], a
    rst RST_38
    nop
    ld b, $00
    ld c, $00
    adc [hl]
    nop
    inc e
    rst RST_28
    nop
    jr c, jr_033_521e

jr_033_521e:
    db $10
    add l

jr_033_5220:
    ld [bc], a
    inc b
    ld bc, $e203
    ld b, $20
    ld a, [bc]
    dec [hl]
    ld [hl-], a
    ld c, $21
    stop
    ccf
    ld [hl], e
    sbc l
    xor h
    ld [de], a
    inc de
    ld a, $32
    ld [bc], a
    cp $69
    ld de, $85fe
    inc b
    db $fc
    db $fd
    ld bc, $3061
    nop
    db $fc
    add d
    ld a, b
    ld d, e
    xor b
    di
    and d
    ld d, b
    add h
    nop
    ei
    ld [hl+], a
    nop
    ld a, a
    adc b
    scf
    rst RST_38
    ld [bc], a
    dec a
    dec d
    ld a, [bc]
    inc bc
    nop
    add b
    adc a
    cp $bf
    nop
    ld [hl], b
    nop
    ld h, b
    inc bc
    ld h, e
    ld b, $66
    rst RST_28
    ld b, $64
    ld b, $64
    adc b
    stop
    rlca
    rlca
    rst RST_38
    ld a, h
    ld a, h
    ret nz

    ret nz

    nop
    nop
    ld a, [de]
    dec b
    cp a
    ret nc

    cpl
    ld bc, $3f01
    ccf
    or d
    jr nz, jr_033_5283

jr_033_5283:
    ld e, a
    ld a, [bc]
    dec b
    ld d, h
    xor e
    add b
    ld e, $20
    ld hl, sp+$64
    jr nz, @+$01

    rlca
    nop
    ld d, l
    ld a, [hl+]
    xor e
    ld d, h
    ld bc, $fefe
    ld d, b
    ld bc, $af80
    jr nz, @-$6f

    ld d, b
    rst RST_18
    ld b, b
    rst RST_38
    sbc a
    ld b, b
    sbc a
    and b
    ccf
    add b
    ccf
    ld b, b
    rst RST_38
    ld a, a
    and c
    ld e, [hl]
    db $f4
    dec bc
    ld [$bf15], a
    db $fd
    ld b, b
    jr jr_033_52dc

    nop
    rst RST_38
    jr nz, @-$1f

    add h
    ld a, e
    rst RST_38
    ld d, b
    xor a
    xor d
    ld d, l
    push af
    ld a, [bc]
    ld a, a
    add b
    ld sp, hl
    db $fd
    xor [hl]
    ld bc, $0051
    ld c, b
    or a
    and b
    ld e, a
    ld d, l
    ld a, a
    xor d
    xor [hl]
    ld d, c
    rst RST_38
    nop
    pop af

jr_033_52d8:
    rst RST_38
    nop
    ld b, c
    cp l

jr_033_52dc:
    ld sp, hl
    ld d, c
    db $10
    ld hl, sp-$02
    ld hl, sp-$04
    or b
    jr nc, @+$01

    sbc [hl]
    adc b
    db $10
    ret nz

    rlca
    add b
    jr jr_033_533d

    jr nz, jr_033_534e

jr_033_52f0:
    db $10
    ccf
    rst RST_18
    inc e
    db $e3
    ld a, [bc]
    dec b
    ld [bc], a
    ld h, d
    jr nc, jr_033_52fd

    nop

jr_033_52fc:
    sbc a

jr_033_52fd:
    ld bc, $04f0
    db $fc
    ld c, $bb
    ld [hl-], a
    ld h, d
    inc d
    ld a, a
    or $cc
    jr nc, jr_033_532a

    xor d
    or a
    dec b
    db $fc
    dec b
    rst RST_38
    inc bc
    rst RST_38
    rst RST_38
    dec bc
    rst RST_38
    xor d
    nop
    ld d, h
    nop
    jr z, jr_033_52d8

    call Call_000_1804
    ld de, $00bf
    ld d, l
    nop
    ld b, b
    ld b, h
    ret nz

    ld e, l
    add b
    ld h, a

jr_033_532a:
    nop
    rst RST_28
    nop
    ld d, a
    ld h, e
    ld b, b
    inc d
    ld e, h
    inc sp
    rst RST_00
    db $fc
    rst RST_38
    rst RST_38
    adc h
    ld sp, $4980
    ld h, d
    inc d

jr_033_533d:
    ld hl, sp+$00
    daa
    di
    ld b, $f4
    sbc d
    ld b, c
    ld l, b
    ld [de], a
    ret nz

    ld l, a
    jr nz, jr_033_52f0

    jr nc, jr_033_52fc

    dec b

jr_033_534e:
    ld [bc], a
    ldh [$ff1f], a
    ld h, e
    jr nz, @+$05

    ld c, b
    ld hl, $ff01
    nop
    cpl
    db $10
    ld d, l
    xor d
    ld [bc], a
    db $fd
    rlca
    xor a
    rst RST_38
    adc a
    rst RST_38
    rla
    pop bc
    ld b, b
    sbc a
    pop bc
    ld b, b
    add a
    rst RST_38
    rst RST_38
    rst RST_00
    rst RST_38
    push bc
    rst RST_38
    db $e3
    rst RST_38
    push hl
    xor e
    rst RST_38
    db $d3
    pop de
    ld b, b
    di
    reti


    ld b, d
    db $e3
    rst RST_10
    ld b, [hl]
    pop af
    xor d
    rst RST_20
    ld b, d
    db $e3
    call $cb40
    call $e740
    rst RST_30
    ld b, d
    db $e3
    inc sp
    rst RST_38
    ld bc, $0571
    ld a, e
    ld [bc], a
    ld [$1d83], sp
    ld hl, $0350
    sbc a
    inc bc
    rst RST_38
    dec b
    rst RST_38
    rrca
    ld e, e
    ld [bc], a
    ld d, b
    ld de, $7ff3
    rst RST_38
    and $ff
    ld c, h

jr_033_53aa:
    rst RST_38
    sbc b
    rst RST_38
    ld b, b
    ld bc, $90e7
    add a
    sub b
    ld c, e
    ld bc, $004d
    inc b
    pop bc
    rst RST_38
    ld c, a
    nop
    db $db
    nop
    xor [hl]
    ld h, c
    ld b, b
    ld d, h
    ld b, e
    pop bc
    ld h, $22
    ld [hl], l
    db $ed
    ld d, b
    nop
    db $fd
    ld h, e
    ld b, b
    ld d, b
    nop
    and b
    add hl, de
    jr nz, jr_033_53aa

    cp $00
    push af
    ld h, e
    ld b, b
    ld b, h
    add e
    nop
    ld bc, $d701
    rrca
    rrca
    ld d, h
    ld h, e
    ld b, b
    ld d, c
    ld l, c
    ld d, c
    rlca
    inc bc
    ld sp, $cc3f
    ld b, c
    sbc d
    ld b, e
    add h
    ld e, l
    rlca
    rst RST_30
    adc b
    inc d
    ld c, a
    nop
    ret nc

    ld b, b
    ld [hl-], a
    ld b, b
    ld [hl-], a
    ld d, b
    ld bc, $2d10
    di
    rst RST_30
    ld b, d
    jp $f7ff


    and l
    rst RST_38
    add e
    ld c, e
    ld b, b
    ld bc, $fcff
    rst RST_38
    ld d, l
    ld hl, sp-$31
    ld d, b
    ld a, [$52cf]
    ld hl, sp+$51
    db $10
    ld a, [$4001]
    push af
    jp hl


    pop de
    ld b, b
    push bc
    push af
    ld b, d
    db $e3
    rst RST_38
    rlca
    ld hl, sp+$7f
    dec hl
    call nc, $a05f
    xor a
    ld d, b
    ld a, e
    call nc, Call_033_6f00
    db $dd
    nop
    ld a, [$4600]
    inc bc
    db $10
    rlca
    ld b, b
    ld bc, $21fd
    ld b, c
    nop
    dec d
    rst RST_38
    ld a, [hl+]
    rst RST_38
    ld d, b

jr_033_5444:
    rst RST_38
    ld e, l
    add hl, bc
    inc de
    ld h, b
    nop
    rst RST_38
    ld [$0051], sp
    jr nz, jr_033_54bd

    nop
    or $60
    rla
    jr z, @+$01

    ld a, d
    ld bc, $e104
    ld [bc], a
    ldh [rHDMA4], a
    ld [hl], b
    ld [bc], a
    ld [hl], c
    nop
    db $fd
    add hl, de
    jr nz, @+$77

    ld h, e
    ld b, b
    ld d, h
    add e
    nop
    ld e, a
    rlca
    rlca
    cpl
    rrca
    push de
    ld e, l
    ld d, b
    ld b, b
    ld l, e
    ld d, b
    rst RST_38
    rlca
    rlca
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld l, a
    cpl
    add $92
    ld sp, $3f3f
    sub b
    daa
    ld h, c
    rla
    ld h, c
    inc de
    jr c, jr_033_5444

    rst RST_30
    ld b, h
    ld b, h
    ld e, h
    add h
    ld h, b
    ld b, h
    ld b, h
    jr c, @-$46

    ld l, a
    nop
    pop bc
    nop
    pop af
    db $10
    ld b, c
    inc b

jr_033_549d:
    rst RST_30
    rlca
    jr nc, jr_033_549d

    sub a
    ld h, h
    ccf
    inc sp
    nop
    nop
    ld [hl], l
    ld a, [bc]
    xor d
    ld d, l
    rst RST_08
    ld b, b
    cp a
    inc b
    ei
    ld d, b
    ld bc, $61ae
    ld b, l
    cp d
    rst RST_38
    xor d
    ld d, l
    ld e, a
    and b
    cp $01

jr_033_54bd:
    ld bc, $fffe
    ld [$01f7], sp
    cp $aa
    ld d, l
    ld d, a
    xor b
    rst RST_30
    cp a
    ld b, b
    rst RST_30
    inc e
    ld h, c
    rst RST_38
    inc b
    rlca
    ld h, h
    rst RST_38
    rlca
    push bc
    ld b, $64
    rlca
    dec h
    ld b, $c5
    ld b, a
    ld b, $66
    inc b
    ld b, $01
    ldh [rBCPD], a
    ld [hl], c
    ld l, h
    rst RST_38
    rst RST_38
    dec e
    nop
    ld [hl], b
    ld a, a
    ldh a, [$fff0]
    rrca
    adc a
    cp a
    ccf
    ld a, a
    ld b, $00
    rst RST_38
    ld [hl], a
    ld a, a
    ld h, a
    ld l, a
    ld h, e
    ld l, a
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    pop af
    di
    ei
    ei
    pop hl
    rst RST_28
    rst RST_38
    ldh [$ffe3], a
    db $e4
    db $fd
    rst RST_30
    rst RST_38
    rrca
    rrca
    rst RST_30
    ldh a, [$fff3]
    db $fc
    inc h
    ld [bc], a
    db $f4
    db $fc
    and $fe
    ei
    jp nz, $20fe

    ld bc, $fc3d
    ld e, $7e
    cp $fe
    jr c, jr_033_552a

    jr nz, jr_033_5537

    jr nz, jr_033_5539

jr_033_552a:
    db $10
    rlca
    db $10
    db $fd
    add a
    ld b, [hl]
    ld bc, $8308
    ld [$00c3], sp
    rst RST_38

jr_033_5537:
    rst RST_38
    nop

jr_033_5539:
    rst RST_38
    ld bc, $02ff
    rst RST_38
    rlca
    rst RST_38
    rst RST_18
    ld a, [bc]
    rst RST_38
    rra
    rst RST_38
    ld a, $51
    nop
    and b
    rst RST_38
    db $dd
    ld b, d
    ld h, c
    nop
    ret nz

    rst RST_38
    sub b
    ld d, c
    nop
    ld b, b
    rst RST_38
    cp e
    ld [bc], a
    ldh a, [rSVBK]

jr_033_5559:
    nop
    ldh [rDIV], a
    pop hl
    halt
    nop
    pop bc
    rst RST_38
    inc b
    pop bc
    ld [$eec3], sp
    nop
    ld d, b

jr_033_5568:
    nop
    ei
    add b
    nop
    add l
    rlca
    inc bc
    nop
    rrca
    nop
    inc e
    rst RST_38
    inc bc
    jr c, jr_033_557e

    jr nc, jr_033_5588

    ld [hl], b
    rrca
    rst RST_38
    cp $83

jr_033_557e:
    nop
    ret nz

    nop
    ldh [rP1], a
    ld [hl], b
    add b
    jr c, @+$01

    ret nz

jr_033_5588:
    inc e
    ldh [rNR34], a
    ldh [$fffe], a
    nop
    ld [bc], a
    cp $50
    nop
    scf
    nop
    rra
    nop
    ld a, [bc]
    nop
    dec b
    cp $85
    inc b
    ld a, a
    nop
    nop
    add b
    cp a
    rst RST_38
    nop
    add hl, sp
    cp a
    add $00
    add l
    inc b
    rst RST_38
    rst RST_38
    add b
    ld d, c
    nop
    add e
    inc bc
    rst RST_38
    ld [$8c00], sp
    ei
    ld l, a
    sbc b
    db $eb
    jr @+$01

    db $ed
    jr jr_033_5568

    jr @+$6b

    jr jr_033_5559

    ld [$7fff], sp
    ld a, a
    inc b
    nop
    inc c
    rst RST_30
    db $f4
    rlca
    rst RST_30
    push hl
    ld b, $d4
    push af
    nop
    ld b, l
    ld b, $06
    inc b
    rst RST_38
    ld h, b
    ld h, a
    jr nc, jr_033_564d

    jr c, jr_033_5654

    ld a, $7e
    rst RST_38
    rra
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    rrca
    ccf
    ld hl, sp+$50
    ld bc, $03ce
    jr jr_033_5601

    inc bc
    rst RST_30
    ld bc, $00c7
    ld sp, hl
    ld bc, $1716
    jr c, jr_033_55fa

    db $fc

jr_033_55fa:
    cp $f8
    cp $00
    rst RST_10
    cp $00

jr_033_5601:
    ld hl, sp+$25
    stop
    ld a, d
    ld bc, $c125
    rst RST_38
    ld [bc], a
    ldh [rNR43], a
    ret nc

    ld de, $38e0
    ret nz

    rst RST_38
    ld e, b
    and b
    ld a, h
    rst RST_38
    ld sp, hl
    rst RST_38
    ldh a, [c]
    rst RST_38
    rst RST_38
    db $e4
    rst RST_38
    call z, Call_000_18ff

Call_033_5621:
    ld a, a
    or b
    ccf
    di
    ld b, b
    rra
    call nc, Call_033_6102
    inc de
    cp $00
    db $fc
    nop
    push af
    ld hl, sp+$4c
    nop
    add e
    ld b, [hl]
    nop
    rlca
    jr z, @+$09

    inc h
    rst RST_38
    dec bc
    ld e, b
    rlca
    sbc [hl]
    ld bc, $8000
    ld c, $7f
    add c
    ccf
    add b
    rrca
    ret nz

    nop
    ldh a, [$ff62]
    inc de

jr_033_564d:
    db $fc
    ld b, $00
    ld e, e
    nop
    add b
    ld a, a

jr_033_5654:
    ld h, b
    rra
    ld bc, $ef80
    add hl, bc
    db $e4
    ld a, [bc]
    and $24
    nop
    rst RST_38
    pop af
    cp $ff
    inc bc
    db $fc
    inc c
    ldh a, [$ff03]
    nop
    ld c, $b1
    ld a, a
    add l
    ld a, [hl-]
    ld [bc], a
    ld bc, $01e2
    ld a, [$10b1]
    rst RST_38
    ld [$6813], sp
    inc de
    ld c, b
    inc sp
    jr z, jr_033_56d1

    rst RST_38
    ld b, b
    nop
    ld b, $3d
    halt
    inc c
    dec [hl]
    inc c
    cp l
    ld d, [hl]
    push bc
    db $10
    inc d
    inc c
    inc c
    inc b
    ldh [$ff03], a
    ld l, l
    cp $e7
    ld [bc], a
    xor d
    jr jr_033_56b0

    ld [$ffff], sp
    inc c
    db $ed
    ei
    call nc, Call_033_7f19
    ccf
    jp nz, Jump_000_071b

    ccf
    inc bc
    ld a, a
    ccf
    inc bc
    rra
    nop
    rlca
    nop
    add e
    add e

jr_033_56b0:
    nop
    inc e
    add h
    nop
    ld h, c
    rla
    rst RST_18
    nop
    ei
    cp a
    nop
    jr @+$17

    db $10
    rla
    adc d
    ldh a, [c]

jr_033_56c1:
    dec bc
    db $fc
    add l
    nop
    cp $37
    ld de, $2140
    add l
    nop
    jr nz, jr_033_56c1

    rlca
    jr jr_033_56d7

jr_033_56d1:
    jr nz, @-$79

    rlca
    ld bc, $06e0

jr_033_56d7:
    nop
    push af
    ld hl, sp-$7b
    ld [$bd3f], sp
    ld bc, $587f

jr_033_56e1:
    ld l, a
    jr nz, jr_033_56e1

    rra
    add e
    inc bc
    ld a, a
    ccf
    sbc a
    ccf
    rst RST_18
    sbc a
    rst RST_38
    rst RST_18
    rst RST_18
    rst RST_28
    rst RST_08
    rst RST_38
    rst RST_28
    rst RST_28
    rst RST_08
    ld a, e
    ldh [$ffe0], a
    jr jr_033_5710

    rst RST_38
    rst RST_38
    ldh a, [$fff0]
    sub c
    nop
    ld a, [$2793]
    rra
    ld d, b
    nop
    db $fc
    nop
    add b
    rst RST_38
    rst RST_38
    db $d3
    ldh [$ffe0], a
    sbc h

jr_033_5710:
    ld hl, $106c
    ret nz

    inc h
    db $10
    rrca
    inc bc
    rst RST_38
    inc a
    ld b, c
    sbc [hl]
    add hl, hl
    adc $18
    rst RST_08
    ld de, $c6ff
    inc b
    or a
    ld c, b
    inc de
    add l
    ld h, d
    ld b, h
    ld a, a
    scf
    db $10
    ld h, a
    ld c, b
    cpl
    jr nz, jr_033_5781

    sub $23
    rst RST_38
    db $10
    ld e, a

jr_033_5737:
    inc d
    rst RST_20
    ld [bc], a
    di
    dec c
    pop af
    sbc a
    dec b
    ld sp, hl
    ld bc, $02fc
    jp hl


    jr nz, @+$3a

    db $10
    ld e, a
    rst RST_38
    nop
    ld e, a
    jr nz, jr_033_576c

    jr nz, @+$21

    ld b, b
    ccf
    ld hl, sp-$41
    nop
    ei
    jr nz, jr_033_5737

    db $10
    db $f4
    db $f4
    inc b
    db $e4
    inc b
    cp $04
    ld sp, $0444
    inc b
    inc b

jr_033_5764:
    jr nz, jr_033_5766

jr_033_5766:
    ld b, b
    xor a
    nop
    ld c, a
    nop
    ld b, e

jr_033_576c:
    ld de, $2030
    add l
    ld [bc], a
    ld [bc], a
    rst RST_38
    nop
    ld b, $00
    ld c, $00
    adc [hl]
    nop
    inc e
    rst RST_28
    nop
    jr c, jr_033_577f

jr_033_577f:
    db $10
    add l

jr_033_5781:
    ld [bc], a
    inc b
    ld bc, $e203
    ld b, $20
    ld a, [bc]
    dec [hl]
    ld [hl-], a
    ld c, $21
    stop
    ccf
    ld [hl], e
    sbc l
    xor h
    ld [de], a
    inc de
    ld a, $32
    ld [bc], a
    cp $69
    ld de, $85fe
    inc b
    db $fc
    db $fd
    ld bc, $3061
    nop
    db $fc
    add d
    ld a, b
    ld d, e
    xor b
    di
    and d
    ld d, b
    add h
    nop
    ei
    ld [hl+], a
    nop
    ld a, a
    adc b
    scf
    rst RST_38
    ld [bc], a
    dec a
    dec d
    ld a, [bc]
    inc bc
    nop
    add b
    adc a
    cp $bf
    nop
    ld [hl], b
    nop
    ld h, b
    inc bc
    ld h, e
    ld b, $66
    rst RST_28
    inc b
    ld h, h
    inc b
    ld h, h
    adc b
    stop
    rlca
    rlca
    rst RST_28
    ld a, h
    ld a, h
    ret nz

    ret nz

    ld e, d
    inc h
    ld bc, $3f3f
    db $e4
    or d
    jr nz, jr_033_5764

    ld b, $f8
    ld h, h
    add hl, hl
    add l
    nop
    add b

jr_033_57e6:
    xor a
    jr nz, @+$01

    adc a
    ld d, b
    rst RST_18
    ld b, b
    sbc a
    ld b, b
    sbc a
    and b
    rst RST_38
    ccf
    add b
    ccf
    ld b, b
    ld a, a
    and c
    ld e, [hl]
    db $f4
    rst RST_18
    dec bc
    ld [$bf15], a
    ld b, b
    jr jr_033_5827

    nop
    rst RST_38
    rst RST_38
    jr nz, jr_033_57e6

    add h
    ld a, e
    ld d, b
    xor a
    xor d
    ld d, l
    sbc a
    push af
    ld a, [bc]
    ld a, a
    add b
    db $fd
    xor [hl]
    ld bc, $0051
    ld c, b
    rst RST_38
    or a
    and b
    ld e, a
    ld d, l
    xor d
    xor [hl]
    ld d, c
    rst RST_38
    rst RST_10
    nop
    pop af
    rst RST_38
    nop
    ld b, c

jr_033_5827:
    ld sp, hl
    ld d, c
    db $10
    ld hl, sp-$02
    db $eb
    ld hl, sp-$04
    or b
    jr nc, @+$01

    adc b
    db $10

jr_033_5834:
    ret nz

    rlca
    add b
    ld sp, hl
    jr jr_033_5889

    jr nz, @+$60

    db $10
    ccf
    inc e
    db $e3
    ld a, [bc]
    dec b
    db $fd
    ld [bc], a
    ld h, d
    jr nc, @+$04

    nop
    ld bc, $04f0
    db $fc
    ld l, e
    ld c, $fe
    rrca
    jr z, jr_033_58d1

    call z, Call_000_1f30
    xor d
    or a
    dec b
    rst RST_38
    db $fc
    dec b
    rst RST_38
    inc bc
    rst RST_38
    dec bc
    rst RST_38
    xor d
    rst RST_08
    nop
    ld d, h
    nop
    jr z, jr_033_5834

    inc b
    jr jr_033_587b

    cp a
    nop
    db $db
    ld d, l
    nop
    ld b, b
    ld b, h
    ret nz

    add b
    ld h, a
    nop
    rst RST_28
    nop
    push af
    ld d, a
    ld h, e
    ld b, b

jr_033_587b:
    inc d
    ld e, h
    inc sp
    db $fc
    rst RST_38
    rst RST_38
    ld b, $f5
    ld h, h
    add b
    ld c, e
    inc b
    or l
    nop

jr_033_5889:
    dec d
    nop
    ld l, $00
    rst RST_38
    dec de
    inc b
    dec l
    ld [bc], a
    ld c, e
    inc d
    dec [hl]
    ld a, [bc]
    ld a, a
    rst RST_38
    rst RST_38
    jp $a5c3


    and l
    sbc c
    and [hl]
    ld b, b
    rst RST_08
    and l
    and l
    jp $18c3


    ld de, $4ba2
    rlca
    rst RST_38
    rst RST_10
    adc a
    rst RST_38
    rla
    pop bc
    ld b, b
    sbc a
    pop bc
    ld b, b
    add a
    rst RST_38
    rst RST_38
    rst RST_00
    rst RST_38
    push bc
    rst RST_38
    db $e3
    rst RST_38
    push hl
    rst RST_38
    ld d, l
    db $d3
    pop de
    ld b, b
    di
    reti


    ld b, d
    db $e3
    rst RST_10
    ld b, [hl]
    pop af
    rst RST_20
    ld b, d
    push de
    db $e3
    call $cb40

jr_033_58d1:
    call $e740
    rst RST_30
    ld b, d
    db $e3
    rst RST_38
    sbc c
    ld bc, $0571
    ld a, e
    ld [bc], a
    ld [$1d83], sp
    ld hl, $0350
    inc bc
    rst RST_08
    rst RST_38
    dec b
    rst RST_38
    rrca
    ld e, e
    ld [bc], a
    ld d, b
    ld de, $fff3
    cp a
    and $ff
    ld c, h
    rst RST_38
    sbc b
    rst RST_38
    ld b, b
    ld bc, $f390
    add a
    sub b
    ld c, e
    ld bc, $004d
    inc b
    pop bc
    rst RST_38
    nop
    and a
    db $db
    nop
    xor [hl]
    ld h, c
    ld b, b
    ld d, h
    ld b, e
    pop bc
    ld h, $22
    db $ed
    cp d
    ld d, b
    nop
    db $fd
    ld h, e
    ld b, b
    ld d, b
    nop
    and b
    add hl, de

jr_033_591b:
    jr nz, jr_033_591b

    db $eb
    nop
    push af
    ld h, e
    ld b, b
    ld b, h
    add e
    nop
    ld bc, $0f01
    db $eb
    rrca
    ld d, h
    ld h, e
    ld b, b
    ld d, c
    ld l, c
    ld d, c
    rlca
    inc bc
    ccf
    db $f4
    call z, $b241
    dec sp
    nop
    sub a
    ld b, b
    or a
    ld [$144b], sp
    rst RST_38
    scf
    ld [$045b], sp
    or l
    ld a, [bc]
    ld a, e
    inc b
    db $f4
    sbc [hl]
    ld c, a
    and b
    ld e, l
    di
    rst RST_30
    ld b, d
    jp $a5ff


    rst RST_38
    ld a, l
    add e
    ld c, e
    ld b, b
    ld bc, $fcff
    rst RST_38
    ld hl, sp-$31
    ld d, b
    ld d, l
    ld a, [$52cf]
    ld hl, sp+$51
    db $10
    ld a, [$4001]
    jp hl


    pop de
    ld b, b
    db $fd
    push bc
    push af
    ld b, d
    db $e3
    rst RST_38
    rlca
    ld hl, sp+$2b
    call nc, Call_033_5fdf
    and b
    xor a
    ld d, b
    ld a, e
    call nc, $dd00
    nop
    ld e, e
    ld a, [$4600]
    inc bc
    db $10
    rlca
    ld b, b
    ld bc, $4121
    nop
    ld a, a
    dec d
    rst RST_38
    ld a, [hl+]
    rst RST_38
    ld d, b
    rst RST_38
    add hl, bc
    inc de
    ld h, b
    sub a
    nop
    rst RST_38
    ld [$0051], sp
    jr nz, jr_033_5a0b

    nop
    ld h, b
    rla
    jr z, jr_033_59e0

    rst RST_38
    ld a, d
    ld bc, $e104
    ld [bc], a
    ldh [rSVBK], a
    ld [bc], a
    ld [hl], c
    nop
    push de
    db $fd
    add hl, de
    jr nz, jr_033_5a28

    ld h, e
    ld b, b
    ld d, h
    add e
    nop
    rlca
    rlca
    rst RST_10
    cpl
    rrca
    push de
    ld e, l
    ld d, b
    ld b, b
    sbc a
    jr nc, jr_033_59cb

    rlca
    cp a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld l, a

jr_033_59cb:
    cpl
    sub d
    ld sp, $e13f
    ccf
    sub b
    daa
    ld h, c
    rla
    ld h, c
    inc d
    and c
    ld e, h
    ld e, e
    inc b
    scf
    ld c, $93
    ld d, b
    or l

jr_033_59e0:
    ld a, [bc]
    ld l, e
    sub l
    ld d, b
    sub h
    ld h, c
    and b
    ld e, l
    ld d, b
    ld bc, $04ff
    ei
    nop
    rst RST_38
    ld b, l
    cp d
    xor d
    ld d, l
    rst RST_38
    ld e, a
    and b
    cp $01
    ld bc, $08fe
    rst RST_30
    rst RST_38
    ld bc, $aafe
    ld d, l
    ld d, a
    xor b
    cp a
    ld b, b
    db $fd
    rst RST_30
    inc e
    ld h, c
    rst RST_38
    inc b

jr_033_5a0b:
    rlca
    ld h, h
    rlca
    push bc
    ccf
    ld b, $64
    rlca
    dec h
    ld b, $c5
    adc d
    jr nc, jr_033_5a1f

    ld bc, $e000
    ld l, c
    ld [hl], c
    ld l, l

jr_033_5a1f:
    rst RST_38
    dec e
    nop
    ld [hl], b
    rst RST_08
    nop
    nop
    nop
    rst RST_38

jr_033_5a28:
    nop
    inc b
    ld bc, $ff01
    nop
    rst RST_38
    inc bc
    ld hl, sp-$05
    ld [$e80b], sp
    db $eb
    ld [$2b7f], sp
    ld c, b
    ld l, e
    ld c, c
    ld l, d
    ld c, d
    ld l, c
    inc c
    ld [bc], a
    daa
    ldh [rP1], a
    rst RST_28
    inc h
    nop
    dec h
    ld bc, $0cef
    ld [bc], a
    dec b
    add hl, bc
    db $fd
    ld a, a
    ld b, b
    ld [bc], a
    ld h, b
    rrca
    ld l, a
    ld [$0b68], sp
    and a
    ld l, e
    ld [$0c6a], sp
    ld [bc], a
    inc bc
    nop
    rst RST_38
    ld d, l
    inc b
    add hl, bc
    ld a, l
    ld l, e
    ld h, b
    rrca
    add hl, bc
    dec bc
    add hl, bc
    db $eb
    jp hl


    ld [hl], a
    ld [bc], a
    rst RST_38
    adc b
    adc d
    adc d
    push af
    dec c
    di
    sub l
    db $eb
    rst RST_18
    adc c
    rst RST_30
    add c
    rst RST_38
    jp $0289


    ld b, c
    cp a
    rst RST_38
    ld l, b
    sbc a
    inc h
    rst RST_18
    ld e, b
    cp a
    inc c
    rst RST_38
    ld a, a
    adc h
    rst RST_38
    sbc c
    rst RST_38
    ld [$e3ff], sp
    sbc a
    ld [bc], a
    db $fd
    di
    sbc a
    ld b, $0d
    rst RST_38
    rrca
    rst RST_38
    rra
    rst RST_38
    db $ed
    sbc a
    or l
    ld [bc], a
    rst RST_18
    rst RST_38
    cp l
    ld bc, $ff39
    jp nc, $fffb

    ret nz

    dec c
    nop
    rst RST_38
    rst RST_38
    ccf
    rst RST_38
    db $fc
    rst RST_38
    inc bc
    rst RST_38
    rst RST_38
    cp a
    rst RST_38
    db $fc
    rst RST_38
    ld c, $f2
    or l
    nop
    ld hl, sp-$2d
    nop
    ld d, a
    nop
    add a
    nop
    ret nz

    db $e4
    rst RST_38
    ldh a, [$ffc2]
    ld hl, sp-$0b
    ld hl, sp+$03
    ld hl, sp+$0f
    ld a, a
    ldh a, [$ff7f]
    add b
    rst RST_38
    inc c
    rst RST_28
    ld [$03f2], sp
    ld c, a
    rst RST_08
    ld [$0808], sp
    ld e, b
    nop
    ld sp, $fc09
    inc c
    db $10
    ld e, $0d
    ld bc, $003f
    cp a
    add b
    rla
    inc d
    inc l
    ld [bc], a
    ld hl, $0419
    dec c
    ld de, $1931
    nop
    ld b, b
    inc b
    ld b, e
    dec d
    dec bc
    inc bc
    ld d, e
    rla
    ld b, c
    db $10
    push bc
    ld b, b
    ld h, h
    ld de, $684f
    inc de
    inc b
    ld a, [bc]
    dec c
    nop
    pop hl
    rst RST_38
    ld d, a
    db $eb
    rst RST_38
    push af
    add c
    db $10
    di
    add l
    ld [de], a
    rst RST_30
    ld e, b
    nop
    rst RST_38
    cp a
    ld b, b
    ld e, a
    and b
    xor a
    ld d, b
    rla
    add sp, -$01
    dec bc
    db $f4

jr_033_5b2a:
    rla
    add sp, $03
    db $fc
    dec b
    ld a, [$03ff]
    db $fc
    ld bc, $02fe
    db $fd
    ld bc, $fefe
    ld d, b
    inc bc
    ld b, b
    rst RST_38
    xor b
    rst RST_38
    ret nc

    rst RST_38
    cp b
    cp a
    rst RST_38
    call nc, $e8ff
    rst RST_38
    db $f4
    cp c
    db $10
    db $10

jr_033_5b4d:
    rst RST_28
    nop
    xor d
    nop
    push de
    pop bc
    db $10
    rst RST_18
    nop
    or $fe
    ld [bc], a
    nop
    db $eb
    inc d
    ld d, l
    xor d
    and d
    ld e, l
    ld d, l
    rst RST_18
    xor d
    add b
    ld a, a
    inc b
    ei
    ld d, b
    dec b
    jr nc, jr_033_5b2a

    di
    jr jr_033_5b4d

    ld b, $04
    ld d, a
    ld bc, $0002
    cp $40
    pop hl
    ld a, [hl]
    ld a, $12
    db $eb
    ld [de], a
    jr jr_033_5b93

    jr jr_033_5b9c

    xor $00
    ldh [$ffbf], a
    ld bc, $0fe1
    xor $00
    pop hl
    ld [bc], a
    nop
    cp $fe
    jr @+$22

    ld bc, $1e1f

jr_033_5b93:
    cp $e1
    ldh [$ff1f], a
    rst RST_28
    nop
    rst RST_38
    ld c, e
    ld l, b

jr_033_5b9c:
    inc e
    ld bc, $6a49
    ld c, b
    ld e, l
    ld l, e
    jr c, jr_033_5bc5

    ld l, d
    ld c, b
    ld l, b
    ld b, d
    inc e
    ld a, a
    ld l, b
    dec d
    and h
    ld d, [hl]
    ld l, $64
    db $10
    ld a, a
    ld c, a
    add hl, de
    db $eb
    inc de
    nop
    or b
    ld de, $4bd5
    rst RST_38
    ld [$1083], a
    cp $bd
    ld [bc], a
    ld d, b
    inc bc

jr_033_5bc5:
    and b
    xor a
    db $10
    call z, Call_000_2486

jr_033_5bcb:
    inc c
    ld [bc], a
    rst RST_30
    ld [$009d], sp
    and a
    jr nz, jr_033_5bcb

    nop
    rst RST_28
    db $fc
    inc bc
    ld a, [$0d05]
    nop
    ld bc, $03fe
    ccf
    ld sp, hl
    nop
    pop bc
    ld [bc], a
    db $e3
    inc h
    ld d, [hl]
    rlca
    add sp, $13
    rst RST_38
    ld [$1500], sp
    nop
    ld l, d
    nop
    scf
    nop
    rst RST_38
    ld a, [hl]
    nop
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    ld d, l
    ld b, h
    dec sp
    xor $08
    ld bc, $0080
    ld d, b
    pop bc
    db $10
    ld d, h
    add b
    xor d
    rst RST_38
    ld b, b
    dec [hl]
    ret nz

    ld c, d
    and b
    inc [hl]
    ret nz

    ld e, d
    rst RST_18
    and b
    inc l
    ret nc

    ld [$f2e0], sp
    ld hl, $c030
    rst RST_38
    nop
    ldh [$ff03], a
    inc bc
    inc e

Call_033_5c20:
    inc e
    ldh [$ffe3], a
    ld sp, hl
    nop
    dec l
    jr nz, jr_033_5c34

    ld bc, $b131
    ld [hl+], a
    and h
    daa
    rst RST_38
    jr z, @-$17

    add sp, -$1e
    db $e4

jr_033_5c34:
    ldh [$ffe0], a
    pop hl
    sub a
    pop hl
    pop hl
    push hl
    ld d, d
    ld a, [de]
    db $fc
    inc h
    nop
    dec h
    scf
    ret nz

    cp $00
    nop
    inc e
    ld b, c
    ld b, c
    ld b, c
    ld e, l
    ld b, c
    ld e, a
    rst RST_38
    ld b, l
    ld e, c
    ld c, c
    ld d, a
    ld d, l
    ld c, e
    ld c, l
    ld d, e
    rst RST_38
    ld e, l
    ld b, e
    ld e, l
    ld b, c
    ld e, c
    ld b, l
    ld d, c
    ld c, l
    or $42
    jr nc, jr_033_5ca4

    ld a, a
    ld e, d
    ld [hl-], a
    xor $11
    db $f4
    dec bc
    rst RST_38
    xor b
    ld d, [hl]
    ld b, b
    cp b
    add b
    ld h, e
    inc bc
    adc a
    rst RST_28
    rrca
    ccf
    ld a, $fe
    ld l, b
    dec [hl]
    ld hl, sp-$08
    ldh [rIE], a
    ldh [$ff8d], a
    adc a
    nop
    nop
    or $18
    db $ed
    ld a, a
    ld bc, $17e7
    rst RST_38
    rlca
    rst RST_38
    inc bc
    or [hl]
    jr nz, @+$01

    nop
    db $fd
    inc bc
    ld h, e
    ld h, h
    rst RST_00
    ret z

    rst RST_00
    rst RST_38
    call z, $ccc1
    call nz, $0eca
    add hl, sp
    ccf
    rst RST_38
    ret z

jr_033_5ca4:
    rst RST_30
    nop
    ld c, e
    ld l, d
    ld c, c
    ld l, e
    ld c, d
    ld a, a
    ld l, b
    ld c, d
    ld l, c
    ld c, d
    ld l, b
    ld c, e

jr_033_5cb2:
    ld l, e
    xor d
    ld sp, $fbff
    inc c
    di
    inc d
    rst RST_00
    ld [$4847], sp
    rst RST_38
    jp $e3c4


    db $e4
    db $e3
    db $e4
    rst RST_00
    ret z

    cp e
    nop
    ld e, a
    ret nz

    inc a
    ld l, b
    nop
    ld [hl], b
    ret nc

    jr nc, jr_033_5d26

    ldh a, [c]
    ret nc

    jr nc, jr_033_5d26

    ret c

    ld [hl-], a
    ld b, c
    dec b
    rrca
    ld a, b
    ld a, b
    nop
    rst RST_38
    nop
    inc bc
    inc bc
    nop
    and b
    nop
    ret nc

    nop
    rst RST_28
    nop
    ld d, h
    ld d, h
    ret nz

    dec sp
    jr nc, jr_033_5d29

    ld a, [hl-]
    ld [hl], b
    rst RST_38
    ld [hl], b
    pop hl
    db $ed
    push hl
    jp hl


    db $ed
    pop hl
    xor l
    rst RST_38
    and c
    add hl, hl
    ld hl, $a727
    ccf
    cp a
    ccf
    ld de, $22bf
    ld hl, $201e
    ld hl, $0117
    ld [$5035], sp
    inc bc
    inc e
    ld [de], a
    reti


    ccf
    ld d, d
    rla
    ld d, c
    inc bc
    db $fd
    ld [bc], a
    ld h, b
    dec [hl]
    nop
    ld hl, sp-$01
    nop
    db $e3
    nop
    add b
    ld [$2a00], sp

jr_033_5d26:
    ld d, l
    db $eb
    ld b, b

jr_033_5d29:
    cp a
    inc c
    ld [bc], a
    ld hl, sp+$1e
    jr nz, jr_033_5cb2

    dec bc
    rra
    cp a
    nop
    nop
    ld a, [bc]
    jr nz, jr_033_5d82

    or l
    ld e, [hl]
    ld b, h
    adc d
    ld hl, sp+$00
    nop
    dec l
    jr nz, @+$5a

    ld bc, $03fe
    db $fd
    ld b, $ff
    rst RST_30
    inc b
    db $db
    inc a
    ld d, e
    dec d
    rst RST_30
    inc c
    ei
    nop
    ld a, $92
    ld b, b
    ld b, $fc
    ld [bc], a
    cp $01
    dec c
    ld bc, $33aa
    db $fd
    ld c, d
    dec a
    jr nz, @+$4a

    ld l, e
    ld c, e
    ld l, b
    ld c, e
    ld l, b
    rst RST_38
    adc a
    sbc b
    adc a
    sbc b
    rla
    inc l
    dec sp
    ld b, b

jr_033_5d71:
    ccf
    or e
    add $e5
    ld l, b
    db $fd
    ld [bc], a
    inc bc
    nop
    pop bc
    dec [hl]
    rst RST_38
    ld e, [hl]
    nop
    ld e, c
    nop
    ld b, a

jr_033_5d82:
    nop
    inc e
    ld l, d
    rst RST_38
    ld l, d
    ld [hl], b
    ld [hl], b
    ld h, h
    ld h, h
    db $10
    db $10
    ld h, b
    ld a, a
    ld h, b
    ret nz

    jp $0d02


    dec b
    ld a, [hl-]
    add sp, $13
    rst RST_38

jr_033_5d99:
    jr z, jr_033_5d9b

jr_033_5d9b:
    ld d, l
    nop
    nop
    xor d

jr_033_5d9f:
    ld bc, $f3fc
    ld d, [hl]
    ld hl, sp+$40
    dec l
    inc h
    jr c, jr_033_5d99

    inc bc
    jp Jump_033_7d0f


    inc c
    ld [$3c55], sp
    inc sp
    ldh a, [$ffcf]
    ret nz

    dec [hl]
    ld b, c
    sbc l
    db $ec
    nop
    jr nc, jr_033_5d9f

    inc c
    db $ec
    ld d, d
    ld b, b
    cpl
    ld [bc], a
    jr nc, jr_033_5d9b

    inc sp
    ret nz

    rst RST_08
    inc [hl]
    ld c, c
    ld de, $0156
    rst RST_38
    add hl, sp
    ld a, h
    dec bc
    ld [bc], a
    cp $10
    nop
    ld h, a
    nop
    ld c, b
    or a
    ld a, d
    ld b, e
    rst RST_28
    or c
    nop
    and l
    ld e, d
    ld c, b
    ld d, e
    nop
    nop
    ld d, c
    rst RST_20
    jr nz, jr_033_5d71

    ld [hl], l
    ld a, [hl-]
    ld b, h
    rlca
    ld [bc], a
    dec d
    nop
    and d
    push af
    ld e, l
    ld d, b
    inc bc
    rlca
    pop hl
    ld b, h
    ld [hl], a
    rrca
    and e
    rra
    rst RST_38
    add e
    ld a, a
    cp e
    ld a, a
    rst RST_38
    nop
    db $10
    rrca
    ld d, a
    rrca
    ccf
    ld [hl], e
    add [hl]
    jr nc, jr_033_5e18

    pop de
    nop
    add h
    ld e, b
    nop
    push af
    ld e, $a5
    nop
    rst RST_20
    ld a, a
    db $10
    ld e, $ff

jr_033_5e18:
    add b
    rst RST_38
    ei
    ld l, a
    ldh a, [rNR13]
    db $10
    rst RST_00
    add b
    ldh [$ffa8], a
    ldh [$ffef], a
    push af
    ldh [$ff2e], a
    add b
    ld sp, $7002
    inc bc
    ld b, b
    rra
    rrca
    nop
    rla
    nop
    cpl
    rst RST_20
    ld b, c
    ld b, c
    db $10
    ld d, e
    ld d, $15
    ld bc, $527f
    rst RST_38
    add [hl]
    jr nc, jr_033_5e61

    rlc b
    adc e
    inc hl
    ld bc, $de00
    ld [hl], b
    add hl, sp
    add e
    add e
    rrca
    rrca
    dec h
    scf
    ld hl, sp+$00
    rst RST_30
    jp $1f07


    ld [$0051], sp
    ret nz

    ld bc, $ef0f
    rrca
    inc b
    ld a, a

jr_033_5e61:
    sbc $ab
    ld d, b
    add c
    ld a, [hl]
    inc hl
    db $ed
    ld l, b
    jr nz, jr_033_5ed7

    ld l, e
    jr nz, jr_033_5e9f

    ld h, c
    ld l, d
    jr nz, jr_033_5eda

    cp $32
    ld h, c
    nop
    rlca
    ld a, a
    add b
    ld a, a
    add b
    ccf
    rst RST_38

jr_033_5e7d:
    ret nz

    ld a, [hl]
    add c
    ld a, $c1
    ld e, [hl]
    and c
    inc l
    rst RST_20
    db $d3
    inc e
    db $e3
    dec c
    ld bc, $419a
    cp $01
    ld a, l
    rst RST_38
    add d
    ld a, h
    add e
    jr z, @-$27

    inc l
    db $d3
    ld a, h
    rst RST_38
    add e
    ld a, [hl-]
    push bc
    ld a, h
    add e

jr_033_5e9f:
    ld a, $c1
    ld a, [de]
    rst RST_38
    push hl
    jr z, jr_033_5e7d

    inc d
    db $eb
    ld [$5015], a
    rst RST_30
    xor a
    and b
    ld e, a
    ld [hl], $48
    ld hl, sp+$01
    rlca
    ld d, e
    rst RST_38
    rrca
    add e
    ccf
    ld h, b
    rra
    jp hl


    rra
    db $db
    db $fd
    rlca
    dec c
    nop
    rrca
    add b
    ldh [$ff80], a
    ld sp, hl
    rst RST_38
    rst RST_30
    rst RST_38
    inc b
    rst RST_38
    ld a, [de]
    ld h, e
    db $fc
    add e
    ld a, $7f
    push de
    ld c, $bd
    nop
    inc bc

jr_033_5ed7:
    dec c
    nop
    ld e, a

jr_033_5eda:
    cp e
    ld d, b
    db $fc
    dec sp
    rst RST_38
    jr jr_033_5ee8

    ld bc, $f7df
    rst RST_38
    pop bc
    rst RST_38
    rrca

jr_033_5ee8:
    ld h, a
    rst RST_38
    ldh [c], a
    rra
    rst RST_00
    ld [bc], a
    ret nz

    ld l, d
    ld d, d
    inc e
    adc $6e
    nop
    rst RST_28
    ld l, l
    rst RST_38
    dec e
    nop
    ld [hl], b
    ld a, a
    ldh a, [$fff0]
    rrca
    adc a
    cp a
    ccf
    ld a, a
    ld b, $00
    rst RST_38
    ld [hl], a
    ld a, a
    ld h, a
    ld l, a
    ld h, e
    ld l, a
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    jp $e7cb


    rst RST_30
    jp $ffc3


    add l
    cp l
    add b
    or [hl]
    add b
    jp nz, Jump_000_0f0f

    rst RST_30
    ldh a, [$fff3]
    db $fc
    inc h
    ld [bc], a
    db $f4
    db $fc
    and $fe
    ei
    jp nz, $20fe

    ld bc, $fc3d
    ld e, $7e
    cp $fe
    jr c, jr_033_5f3b

    jr nz, jr_033_5f48

    jr nz, jr_033_5f4a

jr_033_5f3b:
    db $10
    rlca
    db $10
    ld a, l
    add a
    ld b, [hl]
    ld bc, $8308
    ld [$00c3], sp
    ld d, b

jr_033_5f48:
    dec c
    db $dd

jr_033_5f4a:
    rst RST_38
    ld h, b
    inc bc
    ld [$01ff], sp
    ld h, c
    nop
    ld d, b
    rst RST_38
    cp e
    ld [bc], a
    ldh a, [rSVBK]
    nop
    ldh [rDIV], a
    pop hl
    halt

jr_033_5f5d:
    nop
    pop bc

jr_033_5f5f:
    rst RST_28
    inc b
    pop bc
    ld [$06c3], sp
    nop
    rst RST_38
    rra
    rst RST_38
    rst RST_38
    add b
    ld a, a
    ld h, b
    rra
    nop
    add b
    ld e, $e1
    xor a
    inc c
    di
    cp $00
    sub b
    ld bc, $50e0
    nop
    inc c
    rst RST_38
    nop
    sbc [hl]
    nop
    sbc h
    nop
    inc e
    ldh [$ffc3], a
    cp a
    db $fc
    ldh a, [rIE]
    db $fc
    rst RST_38
    cp $a7
    nop
    inc bc
    rst RST_38
    rst RST_38
    nop
    inc bc
    ld a, [hl+]
    nop
    sub l
    nop
    jp nz, Jump_000_00ff

    jr nc, jr_033_5f5d

    jr c, jr_033_5f5f

    ld [$0cf0], sp
    rst RST_38
    ldh a, [rDIV]
    ld hl, sp+$7f
    nop
    nop
    add b
    cp a
    ld h, a
    rst RST_38
    nop

jr_033_5fae:
    cp a
    add $00
    ld e, d
    dec b
    rst RST_38
    add b
    ld h, c
    ld bc, $80fd
    ld d, b
    ld bc, $0008
    adc h
    ei
    ld l, e
    sbc b
    rst RST_30
    db $eb
    jr jr_033_5fae

    push hl
    nop
    xor b
    jr @+$1a

    ld [$7fff], sp
    ld a, a
    inc b
    nop
    inc c
    rst RST_30
    push af
    ld b, $fd
    push hl
    push af
    nop
    push bc
    ld b, $05
    ld b, $06
    inc b
    rst RST_38

Call_033_5fdf:
    ld h, b
    ld h, a
    jr nc, jr_033_6056

    jr c, jr_033_605d

    ld a, $7e
    rst RST_38
    rra
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    rrca
    ccf
    db $e3
    nop
    ld hl, sp+$60
    nop
    rst RST_08
    ld [bc], a
    jr jr_033_600c

    inc bc
    rst RST_30
    ld bc, $c7e7
    nop
    ld bc, $1716
    jr c, jr_033_6005

    db $fc

jr_033_6005:
    cp $f8
    rst RST_00
    cp $00
    db $fc
    db $10

jr_033_600c:
    db $10
    ld d, b
    nop
    ld a, d
    ld bc, $e104
    rst RST_38
    ld [bc], a
    ldh [rNR12], a
    ldh [rNR42], a
    ret nc

    jr @-$1e

    rst RST_30
    ld a, b
    add b
    nop
    ld l, c
    nop
    ld [bc], a
    rst RST_38
    rlca
    rst RST_38
    rst RST_38
    rrca
    rst RST_38
    rra
    ld a, a
    cp a
    ccf
    ld e, a
    rra
    db $fd
    jr nz, @+$6f

    nop
    and b
    rst RST_38
    ret nc

    rst RST_38
    ldh [rIE], a
    and a
    ld b, b
    cp $80
    add hl, sp
    db $10
    ld c, h
    nop
    add e
    ld b, [hl]
    nop
    rlca
    rst RST_38
    jr z, @+$09

    inc h
    dec bc
    ld e, b
    rlca
    sbc [hl]
    ld bc, $80ff
    add b
    adc [hl]
    add c
    cp a
    add b
    rst RST_08

jr_033_6056:
    ret nz

    rst RST_30
    ldh [$fff0], a
    ret nz

    ld h, a
    db $10

jr_033_605d:
    pop af
    rst RST_38
    sbc $00
    db $fc
    sub b
    dec de
    inc h
    nop
    rst RST_38
    pop af
    cp $03
    db $fc
    inc c
    rst RST_30
    ldh a, [rP1]
    inc bc
    ld h, b
    ld bc, $0303
    db $e3
    inc bc
    cp a
    ei
    inc bc
    rst RST_20
    rlca
    rra
    rra
    ld b, $01
    ld a, a
    rst RST_38
    ld a, a
    ld b, b
    nop

jr_033_6084:
    ld b, $3d
    ld [hl], l
    inc c
    ld [hl], l
    ld a, e
    inc c
    inc [hl]
    rst RST_00
    db $10
    inc d
    inc c
    inc c
    inc b
    ldh [$ff03], a
    ld a, d
    db $e4
    inc bc
    jr z, jr_033_6084

    nop
    rst RST_38
    rst RST_38
    inc c
    ei
    call nc, $ac11
    db $e4
    ld bc, $11dc
    ld a, a
    ccf
    jp nz, Jump_033_7413

    ret


    inc d
    rlca
    rst RST_38
    ccf
    inc bc
    ccf
    inc bc
    rra
    nop
    rlca
    nop
    ld sp, hl
    add e
    ret c

    nop
    reti


    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec h
    inc c
    ld de, $2520
    stop
    inc b
    dec d
    jr jr_033_612b

    ld [bc], a
    rst RST_08
    ld [bc], a

jr_033_60ce:
    ldh a, [c]
    dec bc

jr_033_60d0:
    push bc
    db $fc
    ld d, b
    nop
    cp $90
    ld bc, $2140
    ld d, b

jr_033_60da:
    nop
    ld h, $07
    add hl, sp
    jr jr_033_60e6

    jr nz, jr_033_6132

    rlca
    ld bc, $06e0

jr_033_60e6:
    ld a, [hl-]
    inc de
    ld d, b
    inc b
    dec a
    ccf
    ld d, b
    nop
    ld a, a
    ld [hl], a
    ld b, a
    ld a, c
    ld l, a
    jr nz, jr_033_60ce

    ld [bc], a
    db $ec
    jr jr_033_610e

    jr jr_033_610e

    ldh [$ffe0], a
    add b
    daa
    ldh a, [$fff0]
    nop

Call_033_6102:
    ld sp, hl
    rrca
    rla
    dec d
    sbc d
    jr nz, jr_033_6128

    nop
    rst RST_38
    ld [bc], a
    db $fc
    rst RST_18

jr_033_610e:
    ld b, b
    add b
    ld hl, sp-$01
    ldh [$ff9b], a
    ld [hl+], a
    ld [bc], a
    db $fc
    ei
    jr nz, jr_033_60da

    inc h
    db $10
    rrca
    rst RST_38
    rst RST_38
    ld b, b
    ret nz

    ld a, a
    sub e
    inc c
    ld b, b
    nop
    ld a, b
    rlca

jr_033_6128:
    sbc a
    ld d, b
    ld [bc], a

jr_033_612b:
    rst RST_38
    ld a, a
    ccf
    ld [bc], a
    inc bc
    ret nz

    nop

jr_033_6132:
    nop
    ld b, $ef
    ld [bc], a
    db $fc
    jp hl


    db $10
    ld d, b
    ld bc, $8891
    add hl, hl
    rst RST_38
    add [hl]
    and h
    ld [de], a
    sub [hl]
    add hl, bc
    sub c
    jr z, jr_033_60d0

    rst RST_38
    ld h, $24
    ld [de], a
    ld d, $09
    add hl, de
    add c
    sub h
    rst RST_38
    ld h, c
    ld b, h
    jr z, jr_033_61b6

    sbc b
    jr @-$7a

    sub c
    rst RST_18
    ld h, h
    ld b, h
    jr z, jr_033_61c6

    sub b
    jr c, jr_033_6166

    cp $fe
    rst RST_30
    ldh [$ffe0], a

jr_033_6166:
    ld e, $91
    nop
    nop
    jr nz, jr_033_616c

jr_033_616c:
    ld b, b
    xor a
    nop
    ld c, a
    nop
    ld b, d
    ld [de], a
    jr nc, jr_033_6195

    ld d, b
    ld [bc], a
    ld [bc], a
    ei
    nop
    ld b, $22
    jr nc, jr_033_618c

    nop
    inc a
    nop
    jr c, jr_033_61b1

    ld d, b

jr_033_6184:
    inc bc
    inc b
    ld bc, $0603
    jr nz, jr_033_6195

    dec [hl]

jr_033_618c:
    ld [hl-], a
    ld e, a
    ld bc, $10ce
    nop
    rst RST_30
    jr jr_033_6184

jr_033_6195:
    ld [de], a
    inc de
    ld a, $32
    ld [bc], a
    cp $d9
    rst RST_38
    sub c
    ld [bc], a
    ld d, b
    inc bc
    db $fc
    ld bc, $3061
    nop
    db $fc
    cp a
    add d
    ld a, b
    ld d, e
    xor b
    and d
    ld d, b
    reti


    nop
    ld a, a

jr_033_61b1:
    cp $70
    inc sp
    adc b
    scf

jr_033_61b6:
    ld [bc], a
    dec a
    dec d
    ld a, [bc]
    inc bc
    rst RST_38
    nop
    add b
    adc a
    nop
    ld a, a
    ld [$0070], sp
    rst RST_38
    ld h, b

jr_033_61c6:
    inc bc
    ld h, e
    ld b, $66
    ld b, $64
    ld b, $ff
    ld h, h
    ld [$80f0], sp
    nop
    rlca
    rlca
    ld a, h
    ei
    ld a, h
    ret nz

    call nc, $1a20
    dec b
    ret nc

    cpl
    ld bc, $01ef
    ccf
    ccf
    ldh [$ff96], a
    nop
    ld a, [bc]
    dec b
    ld d, h
    cp a
    xor e
    add b
    ld a, a
    nop
    rst RST_38
    ld hl, sp+$3b
    db $10
    rlca
    ld a, a
    nop
    ld d, l
    ld a, [hl+]
    xor e
    ld d, h
    ld bc, $60fe
    ld [bc], a
    push de
    xor $c0
    dec sp
    rst RST_18
    ld h, b
    nop
    ld [hl], a
    ld h, b
    nop
    ld d, a
    nop
    rst RST_38
    cp e
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    call nc, $ff2b
    ld [$dd15], a
    ld [hl+], a
    ld a, [$7f05]
    nop
    rst RST_18
    ld a, [$5f01]
    nop
    xor [hl]
    ld e, a
    inc b
    and h
    ld e, e
    rst RST_38
    ld b, b
    cp a
    xor d
    ld d, l

jr_033_622b:
    cp l
    ld [bc], a
    rst RST_28
    nop
    rst RST_38
    di
    rst RST_38
    db $e3
    rst RST_38
    push af
    rst RST_38
    di
    rst RST_38
    ld a, a
    pop hl
    rst RST_38
    ldh [$fffe], a
    ldh [$fffc], a
    ldh a, [rNR11]
    ld de, $f0ff
    nop
    ret nz

    rlca
    add b
    jr jr_033_624a

jr_033_624a:
    jr nz, jr_033_622b

    rlca
    ld b, b
    rra
    add b
    ccf
    ld h, b
    nop
    rrca
    nop
    rst RST_38
    inc bc
    db $fc
    ld bc, $0002
    ld bc, $00f0
    cp a
    db $fc
    ld [bc], a
    cp $e3
    rst RST_38
    db $d3
    ld bc, $e340
    rst RST_38
    rst RST_38
    rst RST_00
    rst RST_38
    ld b, a
    ld a, a
    add a
    ccf
    ld c, a
    ld e, l
    rra
    xor d
    db $10
    ei
    nop
    ld a, [$1010]
    ld hl, sp+$44
    ld b, b
    db $fd
    ei
    ld b, d
    ld b, b
    xor $00
    ld c, $60
    ld l, [hl]
    ldh a, [$ff5f]
    or $70
    halt
    jr nz, jr_033_62bb

    ld h, $30
    xor $50
    ld [$c09d], sp
    ld d, b
    ld de, $0005
    ld [hl+], a
    dec de
    ld [hl+], a
    ld e, h
    inc sp
    db $fc
    pop af
    rst RST_38
    adc h
    ld sp, $4980
    ld h, b
    inc b
    ld hl, sp+$00
    di
    inc b
    ld e, a
    db $f4
    inc b
    db $f4
    dec b
    db $f4
    ld h, b
    nop
    cp $6a
    ld b, b
    cp l
    ccf
    sub l
    ld bc, $0205

jr_033_62bb:
    ldh [$ff1f], a
    db $10
    db $10
    inc bc
    cp $48
    ld hl, $0001
    cpl
    db $10
    ld d, l
    xor d
    ld [bc], a
    xor e
    db $fd
    push bc
    ld bc, $e540
    ld sp, $f342
    ret


    ld b, d
    ld a, [$8d2a]
    db $10
    jp hl


    ld bc, $c540
    scf
    ld b, b
    rst RST_20
    ld bc, $5040
    nop
    sbc c
    ldh [$ff4c], a
    ld b, d
    push hl
    ld b, h
    ldh [$ff0e], a
    ld e, h
    ld b, d
    pop bc
    ld [hl], $01
    adc h
    ld [hl], c
    dec b
    ld a, e
    ld [bc], a
    ld [$7083], sp
    jr nc, jr_033_635c

    inc b
    ld d, b
    ld de, $de03
    ld d, l
    inc de
    rst RST_38
    ccf
    rst RST_38
    ld a, a
    and a
    nop
    db $fc
    rst RST_38
    dec sp
    ld hl, sp-$01
    ld b, b
    ld bc, $8790
    sub b
    ld c, e
    ld bc, $004d
    ccf
    inc b
    pop bc
    ld d, l
    nop
    adc d
    nop
    db $db
    ld [hl+], a
    ld e, e
    inc b
    rra
    xor b
    nop
    ld d, b
    nop
    and h
    ld d, c
    ld d, b
    reti


    ld [bc], a
    ld d, b
    dec bc
    adc a
    ld bc, $0f01
    inc c
    ld c, c
    inc [hl]
    ld b, $20
    rra
    ld b, c
    rst RST_38
    rst RST_20
    adc e
    rst RST_38
    dec b
    sbc l
    ld b, b
    add d

jr_033_6340:
    ld e, l
    inc b
    db $f4
    rlca
    add hl, bc
    rst RST_30
    ld [de], a
    ld b, b
    ld h, c
    ld bc, $11c3
    nop
    rst RST_08
    ld [bc], a
    ld e, [hl]
    dec b
    inc de
    ld d, [hl]
    ld e, e
    nop
    rst RST_18
    ld b, d
    ld b, b
    ld a, a
    nop
    inc l
    ld d, c

jr_033_635c:
    db $fc
    rst RST_08
    ld b, b
    xor [hl]
    inc l
    ld d, c
    ld hl, sp-$01
    ld sp, hl

jr_033_6365:
    dec b
    ld b, b
    rst RST_20
    db $db
    ld b, b
    jp $ffef


    and l
    rst RST_38
    add e
    xor e
    nop
    ld bc, $f8ff
    rst RST_38
    inc bc
    nop
    inc bc
    ldh a, [$ff03]
    jr nc, jr_033_6340

    ld d, b
    rst RST_38
    and e
    nop
    di
    db $10
    db $e3
    nop
    di
    ldh [$ff99], a
    ld c, $f0
    ld e, e
    ld b, [hl]
    inc bc
    db $10
    rlca
    ld b, b
    ld bc, $0140
    dec b
    rst RST_38

jr_033_6395:
    rst RST_38
    ld c, $ff
    dec d
    rst RST_38
    ld a, [bc]
    rst RST_38
    sub h
    ld a, [hl+]

jr_033_639e:
    ld d, e
    db $10
    db $10
    ld h, c
    nop
    ldh a, [$ff63]
    db $10
    ret nz

    db $d3
    inc bc
    ld h, c
    ld [bc], a
    ld hl, sp+$40
    dec d
    ld [hl], b
    ld [bc], a
    ld [hl], c
    nop
    xor d
    nop
    ld d, h
    nop
    and b
    sub $43
    ld d, l
    rrca
    inc bc
    ld c, a
    ld d, b
    ld b, b
    ld l, c
    ld d, c
    rra
    rra
    sbc [hl]
    ld hl, $0725
    rlca
    ccf
    ccf
    add e
    add hl, hl
    pop af
    ld d, b
    jr nz, jr_033_644f

    ld c, $a0
    ld c, $20
    adc [hl]
    jr nz, jr_033_6365

    ldh a, [rHDMA1]
    rst RST_18
    jr c, jr_033_6395

    ld b, h
    ld b, h
    ld e, h
    add h
    ld h, b
    ld b, h
    ld b, h
    cp a
    jr c, jr_033_639e

    nop
    pop bc
    nop
    pop af
    db $10
    ld b, c
    inc b
    pop af
    rst RST_30
    sbc d
    ld b, e
    add d
    ld d, c
    ccf
    inc sp
    nop
    nop
    push af
    ld a, [bc]
    rst RST_38
    xor d
    ld d, l
    ld b, b
    cp a
    inc b
    ei
    nop
    di
    ld h, d
    or b
    ld l, h
    nop
    db $10
    ld [de], a
    ld h, c
    ld bc, $2054
    ldh a, [$fff0]
    ldh a, [rWY]
    nop
    ld [hl], e
    ld h, b
    cp d
    inc de
    ldh [$ff67], a
    ld [de], a
    ld d, a
    ld h, b
    inc bc
    rst RST_38
    dec e
    nop
    ld [hl], b
    ld a, a
    ldh a, [$fff0]
    rrca
    adc a
    cp a
    ccf
    ld a, a
    ld b, $00
    rst RST_38
    ld [hl], a
    ld a, a
    ld h, a
    ld l, a
    ld h, e
    ld l, a
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    jp $e7cb


    rst RST_30
    jp $ffc3


    add l
    cp l
    add b
    or [hl]
    add b
    jp nz, Jump_000_0f0f

    rst RST_30
    ldh a, [$fff3]
    db $fc
    inc h
    ld [bc], a
    db $f4
    db $fc
    and $fe
    ei

jr_033_644f:
    jp nz, $20fe

    ld bc, $fc3d
    ld e, $7e
    cp $fe
    jr c, jr_033_645f

    jr nz, jr_033_646c

    jr nz, jr_033_646e

jr_033_645f:
    db $10
    rlca
    db $10
    ld a, l
    add a
    ld b, [hl]
    ld bc, $8308
    ld [$00c3], sp
    ld d, b

jr_033_646c:
    dec c
    db $dd

jr_033_646e:
    rst RST_38
    ld h, b
    inc bc
    ld [$01ff], sp
    ld h, c
    nop
    ld d, b
    rst RST_38
    cp e
    ld [bc], a
    ldh a, [rSVBK]
    nop
    ldh [rDIV], a
    pop hl
    halt

jr_033_6481:
    nop
    pop bc

jr_033_6483:
    rst RST_28
    inc b
    pop bc
    ld [$06c3], sp
    nop
    rst RST_38
    rra
    rst RST_38
    rst RST_38
    add b
    ld a, a
    ld h, b
    rra
    nop
    add b
    ld e, $e1
    xor a
    inc c
    di
    cp $00
    sub b
    ld bc, $50e0
    nop
    inc c
    rst RST_38
    nop
    sbc [hl]
    nop
    sbc h
    nop
    inc e
    ldh [$ffc3], a
    cp a
    db $fc
    ldh a, [rIE]
    db $fc
    rst RST_38
    cp $a7
    nop
    inc bc
    rst RST_38
    rst RST_38
    nop
    inc bc
    ld a, [hl+]
    nop
    sub l
    nop
    jp nz, Jump_000_00ff

    jr nc, jr_033_6481

    jr c, jr_033_6483

    ld [$0cf0], sp
    rst RST_38
    ldh a, [rDIV]
    ld hl, sp+$7f
    nop
    nop
    add b
    cp a
    ld h, a
    rst RST_38
    nop

jr_033_64d2:
    cp a
    add $00
    ld e, d
    dec b
    rst RST_38
    add b
    ld h, c
    ld bc, $80fd
    ld d, b
    ld bc, $0008
    adc h
    ei
    ld l, e
    sbc b
    rst RST_30
    db $eb
    jr jr_033_64d2

    push hl
    nop
    xor b
    jr @+$1a

    ld [$7fff], sp
    ld a, a
    inc b
    nop
    inc c
    rst RST_30
    push af
    ld b, $fd
    push hl
    push af
    nop
    push bc
    ld b, $05
    ld b, $06
    inc b
    rst RST_38
    ld h, b
    ld h, a
    jr nc, jr_033_657a

    jr c, jr_033_6581

    ld a, $7e
    rst RST_38
    rra
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    rrca
    ccf
    db $e3
    nop
    ld hl, sp+$60
    nop
    rst RST_08
    ld [bc], a
    jr jr_033_6530

    inc bc
    rst RST_30
    ld bc, $c7e7
    nop
    ld bc, $1716
    jr c, jr_033_6529

    db $fc

jr_033_6529:
    cp $f8
    rst RST_00
    cp $00
    db $fc
    db $10

jr_033_6530:
    db $10
    ld d, b
    nop
    ld a, d
    ld bc, $e104
    rst RST_38
    ld [bc], a
    ldh [rNR12], a
    ldh [rNR42], a
    ret nc

    jr @-$1e

    rst RST_30
    ld a, b
    add b
    nop
    ld l, c
    nop
    ld [bc], a
    rst RST_38
    rlca
    rst RST_38
    rst RST_38
    rrca
    rst RST_38
    rra
    ld a, a
    cp a
    ccf
    ld e, a
    rra
    db $fd
    jr nz, @+$6f

    nop
    and b
    rst RST_38
    ret nc

    rst RST_38
    ldh [rIE], a
    and a
    ld b, b
    cp $80
    add hl, sp
    db $10
    ld c, h
    nop
    add e
    ld b, [hl]
    nop
    rlca
    rst RST_38
    jr z, @+$09

    inc h
    dec bc
    ld e, b
    rlca
    sbc [hl]
    ld bc, $80ff
    add b
    adc [hl]
    add c
    cp a
    add b
    rst RST_08

jr_033_657a:
    ret nz

    rst RST_30
    ldh [$fff0], a
    ret nz

    ld h, a
    db $10

jr_033_6581:
    pop af
    rst RST_38
    sbc $00
    db $fc
    sub b
    dec de
    inc h
    nop
    rst RST_38
    pop af
    cp $03
    db $fc
    inc c
    rst RST_30
    ldh a, [rP1]
    inc bc
    ld h, b
    ld bc, $0303
    db $e3
    inc bc
    cp a
    ei
    inc bc
    rst RST_20
    rlca
    rra
    rra
    ld b, $01
    ld a, a
    rst RST_38
    ld a, a
    ld b, b
    nop

jr_033_65a8:
    ld b, $3d
    ld [hl], l
    inc c
    ld [hl], l
    ld a, e
    inc c
    inc [hl]
    rst RST_00
    db $10
    inc d
    inc c
    inc c
    inc b
    ldh [$ff03], a
    ld a, d
    db $e4
    inc bc
    jr z, jr_033_65a8

    nop
    rst RST_38
    rst RST_38
    inc c
    ei
    call nc, $ac11
    db $e4
    ld bc, $11dc
    ld a, a
    ccf
    jp nz, Jump_033_7413

    ret


    inc d
    rlca
    rst RST_38
    ccf
    inc bc
    ccf
    inc bc
    rra
    nop
    rlca
    nop
    ld sp, hl
    add e
    ret c

    nop
    reti


    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec h
    inc c
    ld de, $2520
    stop
    inc b
    dec d
    jr jr_033_664f

    ld [bc], a
    rst RST_08
    ld [bc], a

jr_033_65f2:
    ldh a, [c]
    dec bc

jr_033_65f4:
    push bc
    db $fc
    ld d, b
    nop
    cp $90
    ld bc, $2140
    ld d, b

jr_033_65fe:
    nop
    ld h, $07
    add hl, sp
    jr jr_033_660a

    jr nz, jr_033_6656

    rlca
    ld bc, $06e0

jr_033_660a:
    ld a, [hl-]
    inc de
    ld d, b
    inc b
    dec a
    ccf
    ld d, b
    nop
    ld a, a
    ld [hl], a
    ld b, a
    ld a, c
    ld l, a
    jr nz, jr_033_65f2

    ld [bc], a
    db $ec
    jr jr_033_6632

    jr jr_033_6632

    ldh [$ffe0], a
    add b
    daa
    ldh a, [$fff0]
    nop
    ld sp, hl
    rrca
    rla
    dec d
    sbc d
    jr nz, jr_033_664c

    nop
    rst RST_38
    ld [bc], a
    db $fc
    rst RST_18

jr_033_6632:
    ld b, b
    add b
    db $fc
    rst RST_38
    ret nz

    sbc e
    ld [hl+], a
    ld [bc], a
    db $fc
    ei
    jr nz, jr_033_65fe

    inc h
    db $10
    rrca
    rst RST_38
    rst RST_38
    ld b, b
    ret nz

    ld a, a
    sub e
    inc c
    ld b, b
    nop
    ld a, b
    rlca

jr_033_664c:
    sbc a
    ld d, b
    ld [bc], a

jr_033_664f:
    rst RST_38
    ld a, a
    ccf
    ld [bc], a
    inc bc
    ret nz

    nop

jr_033_6656:
    nop
    ld b, $ef
    ld [bc], a
    db $fc
    jp hl


    db $10
    ld d, b
    ld bc, $8891
    add hl, hl
    rst RST_38
    add [hl]
    and h
    ld [de], a
    sub [hl]
    add hl, bc
    sub c
    jr z, jr_033_65f4

    rst RST_38
    ld h, $24
    ld [de], a
    ld d, $09
    add hl, de
    add c
    sub h
    rst RST_38
    ld h, c
    ld b, h
    jr z, jr_033_66da

    sbc b
    jr @-$7a

    sub c
    rst RST_18
    ld h, h
    ld b, h
    jr z, jr_033_66ea

    sub b
    jr c, jr_033_668a

    cp $fe
    rst RST_30
    ldh [$ffe0], a

jr_033_668a:
    ld e, $91
    nop
    nop
    jr nz, jr_033_6690

jr_033_6690:
    ld b, b
    xor a
    nop
    ld c, a
    nop
    ld b, d
    ld [de], a
    jr nc, jr_033_66b9

    ld d, b
    ld [bc], a
    ld [bc], a
    ei
    nop
    ld b, $22
    jr nc, jr_033_66b0

    nop
    inc a
    nop
    jr c, jr_033_66d5

    ld d, b

jr_033_66a8:
    inc bc
    inc b
    ld bc, $0603
    jr nz, jr_033_66b9

    dec [hl]

jr_033_66b0:
    ld [hl-], a
    ld e, a
    ld bc, $10ce
    nop
    rst RST_30
    jr jr_033_66a8

jr_033_66b9:
    ld [de], a
    inc de
    ld a, $32
    ld [bc], a
    cp $d9
    rst RST_38
    sub c
    ld [bc], a
    ld d, b
    inc bc
    db $fc
    ld bc, $3061
    nop
    db $fc
    cp a
    add d
    ld a, b
    ld d, e
    xor b
    and d
    ld d, b
    reti


    nop
    ld a, a

jr_033_66d5:
    cp $70
    inc sp
    adc b
    scf

jr_033_66da:
    ld [bc], a
    dec a
    dec d
    ld a, [bc]
    inc bc
    rst RST_38
    nop
    add b
    adc a
    nop
    ld a, a
    ld [$1070], sp
    rst RST_38
    ld h, b

jr_033_66ea:
    inc bc
    ld h, e
    ld b, $66
    ld b, $64
    ld b, $ff
    ld h, h
    ld [$80f0], sp
    nop
    rlca
    rlca
    ld a, h
    di
    ld a, h
    ret nz

    call nc, Call_033_5c20
    ld [hl+], a
    ld bc, $3f3f
    ldh [$ff64], a
    sub [hl]
    ld bc, $0450
    ld hl, sp+$3b
    db $10
    ld d, h
    add hl, hl
    nop
    xor $c0
    dec sp
    push af
    rst RST_18
    ld h, b
    nop
    ld [hl], a
    ld h, b
    nop
    ld d, a
    nop
    cp e
    nop
    rst RST_38
    ld d, l
    nop
    ld a, [hl+]
    nop
    call nc, $ea2b
    dec d
    rst RST_38
    db $dd
    ld [hl+], a
    ld a, [$7f05]
    nop
    ld a, [$f701]
    ld e, a
    nop
    xor [hl]
    ld e, a
    inc b
    and h
    ld e, e
    ld b, b
    cp a
    rst RST_38
    xor d
    ld d, l
    cp l
    ld [bc], a
    rst RST_28
    nop
    di
    rst RST_38
    rst RST_38
    db $e3
    rst RST_38
    push af
    rst RST_38
    di
    rst RST_38
    pop hl
    rst RST_38
    rst RST_18
    ldh [$fffe], a
    ldh [$fffc], a
    ldh a, [rNR11]
    ld de, $00f0
    rst RST_38
    ret nz

    rlca
    add b
    jr jr_033_675c

jr_033_675c:
    jr nz, jr_033_6765

    ld b, b
    rst RST_30
    rra
    add b
    ccf
    ld h, b
    nop

jr_033_6765:
    rrca
    nop
    inc bc
    db $fc
    rst RST_38
    ld bc, $0002
    ld bc, $00f0
    db $fc
    ld [bc], a
    rst RST_28
    cp $e3
    rst RST_38
    db $d3
    ld bc, $e340
    rst RST_38
    rst RST_00
    ld a, a
    rst RST_38
    ld b, a
    ld a, a
    add a
    ccf
    ld c, a
    rra
    xor d
    db $10
    ld d, a
    ei
    nop
    ld a, [$1010]
    ld hl, sp+$44
    ld b, b
    ei
    ld b, d
    ld b, b
    rst RST_38
    xor $00
    ld c, $60
    ld l, [hl]
    ldh a, [$fff6]
    ld [hl], b
    ld d, a
    halt
    jr nz, jr_033_67cd

    ld h, $30
    xor $50
    ld [$50c0], sp
    ld de, $0567
    nop
    ld [hl+], a
    dec de
    ld [hl+], a
    ld e, h
    inc sp
    db $fc
    rst RST_38
    adc h
    ld sp, $80fa
    ld c, c
    inc b
    ld de, $1520
    nop
    ld l, $00
    dec de
    ld a, a
    inc b
    dec l
    ld [bc], a
    ld c, e
    inc d
    dec [hl]
    ld a, [bc]
    ld [de], a
    nop
    rst RST_28
    jp $a5a5


    sbc c

jr_033_67cd:
    and [hl]
    ld b, b
    and l
    and l
    jp $c3a9


    jr @+$13

    and d
    ld c, e
    push bc
    ld bc, $e540
    ld sp, $f342
    xor d
    ret


    ld b, d
    ld a, [$108d]
    jp hl


    ld bc, $c540
    scf
    ld b, b
    rst RST_20
    ld h, h
    ld bc, $5040
    nop
    ldh [$ff4c], a
    ld b, d
    push hl
    ld b, h
    ldh [$ff0e], a
    ld e, h
    ld b, d
    ld [hl-], a
    pop bc
    ld [hl], $01
    ld [hl], c
    dec b
    ld a, e
    ld [bc], a
    ld [$7083], sp
    jr nc, @+$63

    inc b
    ld a, d
    ld d, b
    ld de, $5503
    inc de
    rst RST_38
    ccf
    rst RST_38
    ld a, a
    and a
    nop
    rst RST_28
    db $fc
    rst RST_38
    ld hl, sp-$01
    ld b, b
    ld bc, $8790
    sub b
    db $fc
    ld c, e
    ld bc, $004d
    inc b
    pop bc
    ld d, l
    nop
    adc d
    nop
    ld a, h
    db $db
    ld [hl+], a
    ld e, e
    inc b
    xor b
    nop
    ld d, b
    nop
    and h
    ld d, c
    ld d, b
    inc a
    reti


    ld [bc], a
    ld d, b
    dec bc
    ld bc, $0f01
    inc c
    ld c, c
    inc [hl]
    ld b, $20
    and $1f
    ld b, c

jr_033_6845:
    rst RST_38
    adc e
    ld l, a
    ld d, l
    ld d, b
    ld b, $1b
    inc b
    or a
    rst RST_38
    ld [$144b], sp
    scf
    ld [$045b], sp
    or l
    ld b, a
    ld a, [bc]
    ld a, e
    inc b
    sbc [hl]
    ld c, a
    and b
    ld e, l
    inc l
    ld d, c
    db $fc
    rst RST_08
    ld b, b
    xor [hl]
    inc l
    ld d, c
    ld hl, sp-$01
    ld sp, hl

jr_033_686a:
    dec b
    ld b, b
    rst RST_20
    db $db
    ld b, b
    jp $ffef


    and l
    rst RST_38
    add e
    xor e
    nop
    ld bc, $f8ff
    rst RST_38
    inc bc
    nop
    inc bc
    ldh a, [$ff03]

jr_033_6880:
    jr nc, jr_033_6845

    ld d, b
    rst RST_38
    and e
    nop
    di
    db $10
    db $e3
    nop
    di
    ldh [$ff99], a
    ld c, $f0
    ld e, e
    ld b, [hl]
    inc bc
    db $10
    rlca
    ld b, b
    ld bc, $0140
    dec b
    rst RST_38
    rst RST_38
    ld c, $ff
    dec d
    rst RST_38
    ld a, [bc]
    rst RST_38
    sub h
    ld a, [hl+]
    ld d, e
    db $10
    db $10
    ld h, c
    nop
    ldh a, [$ff63]
    db $10
    ret nz

    db $d3
    inc bc
    ld h, c
    ld [bc], a
    ld hl, sp+$40
    dec d
    ld [hl], b
    ld [bc], a
    ld [hl], c
    nop
    xor d
    nop
    ld d, h
    nop
    and b
    sub $43
    ld d, l
    rrca
    inc bc
    ld c, a
    ld d, b
    ld b, b
    sbc [hl]
    ld sp, $1f1f
    sbc [hl]
    ld hl, $0725
    rlca
    ccf
    ccf
    add e
    add hl, hl
    pop af
    ld d, b
    jr nz, jr_033_6954

    ld c, $a0
    ld c, $20
    adc [hl]
    jr nz, jr_033_686a

    ldh a, [rHDMA1]
    xor $a0
    ld e, l
    ld e, e
    inc b
    scf
    sub e
    ld d, b
    or l
    ld a, [bc]
    ld l, e
    jr jr_033_6880

    ld d, b

jr_033_68ec:
    sub h
    ld h, c
    and b
    ld e, l
    nop
    di
    or b
    ld l, h
    xor [hl]
    jr nc, @+$62

    inc b
    ld b, $54
    jr nz, jr_033_68ec

    ldh a, [$fff0]
    ld c, d
    ld [hl], e
    ld h, b
    cp d
    inc de
    ldh [$ff67], a
    ld [de], a
    ld d, a
    nop
    ld h, b
    inc bc
    rst RST_38
    dec e
    nop
    ld [hl], b
    db $db
    ld [$00ef], sp
    dec bc
    jr nc, @-$3f

    db $10
    dec bc
    ld a, [hl]
    ld h, e
    rst RST_38
    ld a, [hl]
    ld b, a
    ld a, [hl]
    ld b, e
    ld a, [hl]
    ld d, a
    ld a, [hl]
    ld l, a
    rst RST_38
    ld a, [hl]
    ld a, a
    ld b, b
    ld a, a
    nop
    nop
    ld h, $7f
    rst RST_38
    inc h
    ld a, a
    ld a, [hl+]
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, $7d
    rst RST_38
    ld a, h
    ld [hl], a
    ld [hl], d
    ld c, a
    ld b, d
    ld b, d
    inc c
    db $fd
    or $40
    dec bc
    db $10
    rst RST_30
    ld d, b
    dec bc
    ld b, e
    ld a, a
    rst RST_00
    cp a
    rst RST_38
    rst RST_00
    cp a
    add a
    rst RST_38
    rst RST_08
    rst RST_38
    rst RST_10
    cp $ff
    rst RST_30
    rst RST_38

jr_033_6954:
    ld h, e
    ld h, e
    ld sp, $736f
    ld c, a
    rst RST_38
    ld [hl], a
    ld c, [hl]
    ld h, a
    ld e, [hl]
    add $bf
    add $bd
    rst RST_38
    add [hl]
    db $fd
    add h
    add h
    nop
    rra
    nop
    add hl, sp
    rst RST_38
    inc b
    ld [hl+], a
    add hl, bc
    inc b
    inc bc
    add hl, sp
    ld [bc], a
    dec sp
    rst RST_38
    inc b
    dec sp
    nop
    nop
    ld a, $7f
    ld [bc], a
    ld b, a
    rst RST_38
    ld [hl], $3f
    ld b, $1f
    ld c, [hl]
    rra
    ld h, d
    ld b, e
    rst RST_38
    jr nc, jr_033_69f1

    nop
    nop
    and c
    ld a, a
    and l
    rst RST_38
    rst RST_38
    push hl
    rst RST_38
    push hl
    sbc $c7
    ld a, [$bbc6]
    rst RST_38
    jp nc, $96bf

    sub [hl]
    ld e, $6f
    ld c, $77
    cp $b2
    ld bc, $7b06
    rlca
    ld a, e
    inc bc
    ld a, l
    ld bc, $01ff
    ld b, c
    ld a, [hl]
    jp $c2be


    db $fd
    ldh [c], a
    rst RST_38
    db $fd
    ldh [c], a
    rst RST_38
    ldh [c], a
    cp l
    ldh [c], a
    cp a
    ld [hl+], a
    rst RST_28
    ld [hl+], a
    inc d
    ld a, a
    ld d, h
    pop de
    nop
    ld d, [hl]
    ld a, a
    halt
    db $ed
    ld l, a
    jr z, jr_033_69cd

    ld d, [hl]

jr_033_69cd:
    ld d, [hl]
    jr nz, jr_033_69d0

jr_033_69d0:
    ld b, [hl]
    ld a, [hl]
    ld c, [hl]
    ld a, [$0026]
    ld a, a
    ld a, [hl+]
    inc bc
    add b
    nop
    ccf
    ld a, a
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ldh [rSB], a
    ldh [$ff03], a
    ldh [$ffdf], a
    rlca
    ldh [rTAC], a
    nop
    rst RST_38
    ld bc, $0012
    nop

jr_033_69f1:
    ccf
    rst RST_38
    nop
    rst RST_38
    rlca
    rst RST_38
    rra
    add hl, bc
    db $10
    ld [bc], a
    rla
    cp $01
    ld de, $3418
    ld bc, $0038
    ld hl, $ff06
    ld bc, $0f18
    nop
    jr c, jr_033_6a0f

    dec de
    nop

jr_033_6a0f:
    cp a
    nop
    ld bc, $fce0
    cp $fe
    push af
    nop
    rlca
    rst RST_30
    nop
    rlca
    ret nz

    db $fd

jr_033_6a1e:
    nop
    ldh [$ff3f], a
    ld a, a
    ccf
    rst RST_38
    ld a, a
    ld a, $7f
    ld a, $7e
    ld a, $7e
    ccf
    ei
    ld a, a
    nop
    dec l
    nop
    rst RST_20
    nop
    add sp, $07
    rst RST_30
    cp a
    rrca
    rst RST_38
    rst RST_38
    rst RST_30
    rlca
    add sp, $4f
    db $10
    ldh [$ff7f], a
    rlca
    ccf
    rst RST_38
    cp a
    ld a, a
    ld a, a
    cp a
    ld h, h
    db $10
    add hl, sp
    ccf
    ld h, d
    db $10
    ld bc, $fc10
    rst RST_38
    cp $71
    inc d
    ld bc, $fb13
    db $e3
    ld hl, sp-$80
    add hl, de
    ldh [$fff8], a
    db $10
    rst RST_30
    sub b
    rst RST_38

jr_033_6a62:
    rst RST_30
    ld d, b
    ld [hl], a
    jr nc, jr_033_6a1e

    inc e
    rst RST_38
    ld [de], a
    rst RST_18
    di
    ld d, b
    push af
    ld d, c
    rst RST_30
    nop
    ld bc, $ee69
    rst RST_38
    ret


    xor $aa
    db $ed
    ld c, d
    db $ed
    ld c, l
    ld [$a57f], a
    ld h, d
    jr z, jr_033_6b00

    ld [hl], b
    ld a, [hl]
    ld a, b
    or c
    db $10
    db $fd
    ld l, b
    or c
    stop
    ld a, [hl]
    nop
    nop
    ld a, a
    rst RST_38
    rst RST_38
    ccf
    rst RST_38
    rst RST_38
    cp a
    cp [hl]
    sbc a
    xor l
    sbc $ff
    xor $dd
    db $db
    call $eddb
    jr jr_033_6a62

    rst RST_38
    inc [hl]
    or a
    ld [de], a
    di
    db $10
    pop de
    nop
    rst RST_20
    rst RST_38
    dec d
    rst RST_30
    ld d, $f7
    ld de, $7cf5
    ld a, b
    rst RST_18
    db $fc
    cp $1f
    cp $06
    dec bc
    db $10
    inc bc
    rst RST_38
    cp a
    jp $c23f


    ccf
    ld b, a

jr_033_6ac5:
    rra
    ldh a, [rNR24]
    rlca
    rst RST_38
    rra
    di
    db $ed
    db $eb
    push hl
    push af
    pop af
    rst RST_38
    rst RST_38
    ei
    rst RST_30
    ei
    ei
    di
    or $f1
    db $fd
    rst RST_38
    db $fc
    inc bc
    cp $02
    db $fc
    inc b
    ld hl, sp+$18
    cp a
    ldh [$fff0], a
    ld [$0830], sp
    db $10
    dec de
    jr nz, jr_033_6b35

    rst RST_38
    rra
    ld b, e
    rrca
    ld b, e
    rrca
    ld b, c
    rrca
    ld h, c
    rst RST_18
    rlca
    ld h, b
    rlca
    ld [hl], b
    ld bc, $1007
    rst RST_38

jr_033_6b00:
    ld a, a
    cp $31
    jr nz, jr_033_6b44

    ld hl, sp+$3f
    rst RST_00
    ld a, a
    cp a
    rst RST_38
    ld a, [hl]
    ld h, h
    db $10
    rst RST_38
    rst RST_38
    sbc a
    jp $b5e7


    rrca
    dec d
    rst RST_38
    rst RST_38
    rst RST_38
    ld b, $07
    inc b
    rlca
    nop
    inc bc
    ld a, a
    nop
    inc bc
    jr jr_033_6b27

    ld [hl], h
    add hl, de
    ld h, b

jr_033_6b27:
    dec l
    nop
    db $fd
    cp $33
    db $10
    cp $ff
    db $fc
    rra
    inc e
    pop bc
    rst RST_38
    ldh [c], a

jr_033_6b35:
    ld hl, sp-$07
    db $fc
    ld sp, hl
    cp $63
    ld a, b
    rst RST_38
    ld b, e
    ld [hl], b
    inc bc
    jr nc, jr_033_6ac5

    or b
    rlca

jr_033_6b44:
    and b
    rst RST_38
    rlca
    add b
    rrca
    add b
    nop
    nop
    inc e
    db $ed
    rst RST_38
    ld e, $e8
    inc e
    ld [$ee18], a
    ld a, [de]
    db $ed
    ld e, a
    ld e, $e9
    dec de
    db $ec
    jr jr_033_6b6d

    ld bc, $103f
    inc b
    rst RST_38
    ccf
    db $10
    cp a
    db $10
    sbc a
    ld b, b
    ld [hl], h
    ld h, b
    rst RST_00
    ld a, d

jr_033_6b6d:
    ld h, b
    ld a, l
    or h
    db $10
    and l
    jr nz, jr_033_6bc0

    ld de, $3fdf
    rst RST_38
    cp a
    ld c, a
    call $fb33
    inc e
    cp a
    rlca
    sbc a
    add a
    ld bc, $3c81
    add b
    jp nz, $0110

    ld de, $ffbf
    ld a, a
    ld l, a
    sbc a
    rst RST_38
    ldh [$ffde], a
    inc a
    inc a
    db $fd
    add c
    ld bc, $fe11
    rst RST_38
    ld hl, sp-$02
    add $f1
    rst RST_38
    ld a, [$5307]
    jr c, @+$3e

    add c
    di
    ld hl, sp-$01
    call Call_000_33f2
    call z, $38d7
    db $dd
    ldh [$ff7f], a
    ld h, c
    nop
    add c
    jr nc, @+$03

    ldh a, [rNR34]
    ld b, e
    db $10
    ldh a, [$fff0]
    ld hl, $21f2
    ld c, h

jr_033_6bc0:
    ld de, $0940
    ld [$08fd], sp
    ld sp, hl
    cp $00
    nop
    xor $09
    db $ed
    ld a, [bc]
    db $eb
    inc b
    rst RST_20
    rst RST_38
    ld [$10ef], sp
    rst RST_18
    jr nz, @-$3f

    ld d, b
    ld e, a
    rst RST_30
    sub b
    rst RST_18
    db $10
    inc hl
    jr c, jr_033_6c51

    ld a, a
    ld a, h
    ld e, a
    db $e3
    ld a, [hl]
    ld e, a
    add sp, $00
    rst RST_20
    nop
    ld c, h
    ld de, $3f1f
    rra
    ei
    ccf
    ld c, a
    pop af
    db $10
    ld h, a
    rrca
    ld [hl], e
    rlca
    ld a, c
    adc a
    ld bc, $0100
    inc bc
    ld sp, $0120
    ld de, $2132
    rra
    ld a, [$100b]
    ret nz

    ld l, a
    inc d
    db $fc
    rst RST_38
    ld hl, sp-$01
    ldh [rIE], a
    rst RST_38
    add b
    cp $f0
    db $fc
    ldh a, [$fffc]
    pop hl
    rst RST_38
    db $fc
    pop hl
    ld hl, sp-$3d
    ldh a, [$ff87]
    ldh [rIF], a
    rst RST_38

jr_033_6c24:
    ret nz

    nop
    add b
    ld bc, $117f
    ld a, a
    ld de, $6ebf
    ld de, $117e
    ld a, a
    inc de
    adc c
    jr nc, @+$09

    ccf
    rlca
    ld a, [bc]
    ld a, [$fb09]
    ld [$3893], sp
    ld d, b
    nop
    rst RST_38
    ld [hl], a
    sub b
    or a
    ld d, b
    rst RST_10
    jr nz, @-$17

    db $10
    rst RST_38
    rst RST_30
    ld [$04fb], sp
    db $fd
    ld b, b

jr_033_6c51:
    ld a, a
    add b
    db $fc
    add hl, bc
    db $10
    ld [$fe10], sp
    nop
    db $fc
    nop
    ld sp, hl
    nop
    db $fd
    ldh a, [c]
    inc h
    ld [hl-], a
    sbc a
    db $10
    ccf
    db $10
    ld a, a
    db $10
    db $fd
    rst RST_38
    ret z

    ld sp, $7400
    nop
    ld a, d
    jr nz, @+$7f

    sbc a
    db $10
    ld a, [hl]
    jr nz, jr_033_6cf4

    jr nc, jr_033_6c24

    ld [hl+], a
    ret nz

    ld de, $f73f
    ld a, a
    rrca
    ccf
    add b
    nop
    rrca
    ld bc, $071f
    rst RST_38
    ccf
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [$fffe], a
    ret nz

    rst RST_38
    db $fc
    nop
    ld hl, sp+$00
    and b
    add b
    ld hl, sp-$20
    rst RST_38
    db $fc
    nop
    rla
    nop
    cpl
    ld [bc], a
    ld e, a
    inc b
    rst RST_18
    ccf
    ld [bc], a
    ld e, a
    ld b, $3f
    ld c, h
    ld de, $7f4e
    rst RST_38
    ld l, [hl]
    ccf
    ld a, [hl]
    inc de
    ld a, $77
    ld a, $67
    rst RST_38
    inc l
    ld [hl], a
    halt
    ld e, a
    ld d, a
    ld d, a
    db $fc
    di
    rst RST_38
    ld hl, sp-$39
    ld a, b
    ld h, a
    ld h, b
    ccf
    ld h, b
    ccf
    cp a
    jr nc, jr_033_6d29

    or b
    rst RST_18
    db $fd
    db $fd
    sub h
    ld [hl-], a
    ld sp, hl
    cp a
    ld [$08fc], sp
    cp $08
    rst RST_38
    jr c, jr_033_6d1b

    ld [bc], a
    ei
    cp $01
    or e
    inc sp
    ld a, a
    nop
    ccf
    nop
    sbc a
    rst RST_38
    nop
    ld c, a
    nop
    push hl
    nop
    jp z, $8500

    or $07
    ld de, $0057
    rlca

jr_033_6cf4:
    ld de, $7e10
    ld de, $17fc
    db $10
    ld a, b
    inc bc
    ld [$0b11], sp
    rlca
    ld [de], a
    rlca
    ld de, $4f6d
    or $08
    db $10
    ld c, l
    or d
    rlca
    ld de, $0fc0
    pop bc
    rrca
    ld a, l
    jp Jump_033_4893


    inc bc
    ldh a, [$ff83]
    ldh a, [$ffc3]
    and e

jr_033_6d1b:
    ld b, h
    rst RST_18
    rst RST_00
    ldh [$ffc7], a
    ldh [$ffe7], a
    ret nz

    db $10
    inc bc
    rlca
    cp a
    db $fd
    inc bc

jr_033_6d29:
    cp $01
    and [hl]
    ld e, c
    rla
    inc d
    ret nz

    ld a, e
    ldh [$fff8], a
    pop de
    ld hl, $ff3f
    rra
    ccf
    ld d, h
    db $10
    rst RST_18
    ret nz

    cp $ff
    rlca
    rra
    jp nc, Jump_033_7f20

    rst RST_38
    rst RST_38
    and a
    di
    di
    rst RST_38
    rst RST_38
    pop bc
    ld a, $78
    cp $77
    ld [de], a
    rst RST_18
    ccf
    rst RST_38
    add a
    jp $ffc3


    rst RST_38
    rst RST_38
    ld [$087f], sp
    cp a
    ld [$80df], sp
    rst RST_18
    ldh [$ffef], a
    ldh a, [$fffb]
    db $fc
    ret nz

    ld de, $a700
    rst RST_28
    nop
    ld d, e

jr_033_6d6e:
    nop
    and c
    ld [hl], h
    ld b, h
    add b
    rst RST_18
    ldh [$ffee], a
    db $10
    ld a, [de]
    ret nz

    ret nz

    ccf
    db $10
    ld a, [de]
    inc bc
    inc bc
    db $fc
    rst RST_38
    ccf
    cp $bf
    ld a, h
    ld a, [hl]
    cp l
    ld a, l
    cp e
    rst RST_38
    ld a, e
    or a
    or a
    ld l, a
    ld [hl], a
    rst RST_28
    rst RST_28
    rst RST_18
    rst RST_38
    ld a, h
    add e
    cp [hl]
    ld a, l
    cp $fd
    db $fc
    di
    rst RST_38
    ldh a, [$ffcf]
    ret nz

    cp a
    add b
    ld a, a
    add b
    ld a, a
    rst RST_38
    ld a, $c1
    ld a, l
    cp [hl]
    ld a, a
    cp a
    ccf
    rst RST_08
    rst RST_38
    rrca
    di
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $ff
    db $fc
    ld a, a
    cp $3f
    ld a, [hl]
    sbc a
    cp [hl]
    rst RST_18
    rst RST_38
    sbc $ef
    rst RST_28
    rst RST_30
    rst RST_28
    rst RST_30
    rst RST_30
    ei
    cp a
    rst RST_28
    sbc $ed
    sbc $de
    cp h
    ld [hl], h
    ld d, e
    adc $c8
    ld a, e
    ld d, b
    ld c, h
    db $10
    add c
    ld e, c
    ccf
    cp b
    jr nc, jr_033_6d6e

    ld e, c
    db $fc
    rst RST_30
    rst RST_38
    ld a, e
    or a
    ld a, e
    ld a, e
    dec a
    ld a, d
    dec a
    ld a, e
    ld sp, hl
    inc a
    and [hl]
    ld d, b
    xor e
    ld d, b
    adc $bc
    add $bc
    jp nz, $9cdf

    jp nz, $e19c

    adc $b8
    ld d, c
    ldh a, [$ffe7]
    ldh [c], a
    add b
    nop

jr_033_6e01:
    rlca
    ld e, e
    ld b, b
    call nz, Call_033_7d54
    jr nz, jr_033_6e01

    nop
    ldh [$fff6], a
    call nz, Call_000_0157
    nop
    xor h
    ld d, c
    ld [hl], e
    dec a
    ld h, e
    add hl, sp
    rst RST_38
    add a
    dec sp
    add a
    dec sp
    add [hl]
    ld sp, $660d
    rst RST_38
    ldh a, [$ffe3]
    ld a, b
    pop af
    ld a, a
    ldh a, [rSVBK]
    rst RST_08
    rst RST_38
    ld c, a
    cp [hl]
    cp [hl]
    ld a, b
    cp b
    ld [hl], b
    cp b
    ld [hl], c
    rst RST_38
    ld a, h
    add b
    ld h, $8c
    rst RST_00
    inc e
    inc a

jr_033_6e39:
    jp Jump_000_06fc


    db $10
    cp [hl]
    db $10
    ld bc, $3eff
    nop
    ld h, h
    jr nc, jr_033_6e39

    db $e3
    jr c, @+$08

    ld h, h
    ld [hl], c
    db $10
    ld c, $c7
    ld e, $0f
    rst RST_38
    cp $0f
    inc c
    di
    ldh a, [c]
    ld a, l
    ld a, l
    ld e, $ff
    dec e

jr_033_6e5b:
    adc $1d
    xor $bc
    ld a, e
    sbc $3d
    rst RST_38
    rst RST_28
    ld e, $bb
    rlca
    add [hl]
    ld bc, $3881
    rst RST_28
    add b
    ccf
    add b
    ccf
    ld d, d
    ld [hl-], a
    ld a, a
    rst RST_38
    add b
    and $e6
    ld b, c
    ccf
    add b
    nop
    inc de
    inc sp

jr_033_6e7d:
    db $10
    ld bc, $ffff
    rst RST_38
    di
    db $fc
    db $fc
    ld bc, $ff00
    cp l
    sbc $ff
    ei
    cp h

jr_033_6e8d:
    rst RST_30
    ld a, b
    reti


    ldh [$ff61], a
    add b
    rst RST_38
    add c
    db $10
    ld bc, $01f8
    ld hl, sp+$18
    rst RST_28
    rst RST_38
    jr jr_033_6e8d

    db $10
    and b
    ld [$106b], sp
    pop bc
    rst RST_38
    ld [$00ec], sp
    rlca
    jr jr_033_6e5b

    ld [hl], b
    cp a
    or e
    ld [hl], b
    ccf
    add b
    ld h, b
    add l
    ld h, [hl]
    ld c, $bd
    sub b
    ld h, b
    db $dd
    rst RST_28
    ld c, $cc
    ld c, $bc
    sbc b
    ld h, b
    db $fc
    ld c, $fd
    rst RST_38
    jr @-$07

    jr jr_033_6f40

    jr jr_033_6f20

    jr jr_033_6e7d

    rst RST_38
    jr jr_033_6f45

    db $10
    or e
    ld [$18c3], sp
    pop af
    rst RST_38
    ld h, e
    dec e
    dec bc
    ld a, l
    dec bc
    ld [hl], l
    add hl, bc
    ld a, a
    rst RST_38
    dec c
    ld [hl], a
    rra
    ld [hl], a
    rla
    ld a, a
    dec bc
    dec bc
    rst RST_38
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ldh [$ffbf], a
    ldh [$ffbf], a
    rst RST_38
    and h
    rst RST_38
    and h
    ei
    ld a, b
    ld a, a
    db $fc
    db $fc
    rst RST_38
    rrca
    ld [hl], e
    dec bc
    ld [hl], a
    rlca

Call_033_6f00:
    ld a, a
    rrca
    ld a, [hl]
    rst RST_38
    rrca
    ld a, a
    rrca
    ld a, e
    dec bc
    ld [hl], a
    add hl, bc
    add hl, bc
    rst RST_30
    and b
    rst RST_38
    xor b
    pop hl
    ld h, b
    add sp, -$09
    add sp, -$21
    rst RST_38
    add sp, -$09
    ldh [$ffdf], a
    ret nz

    ret nz

    ret nz

    rst RST_38
    rst RST_38

jr_033_6f20:
    ret nc

    rst RST_38
    ret nc

    xor a
    ret nc

    xor a
    ld b, b
    ccf
    dec c
    add b
    ld b, [hl]
    ld h, b
    nop
    nop
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

jr_033_6f40:
    nop
    nop
    nop
    nop
    nop

jr_033_6f45:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_033_7413:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_033_74c0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_033_7d0f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_033_7d54:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_033_7f19:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_033_7f20:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
