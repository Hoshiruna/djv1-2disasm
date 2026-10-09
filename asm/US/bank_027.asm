; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

    dw Case2BathroomMap ; scene/palette index $00
    db $d8, $41, $60, $43, $e8, $44, $70, $46, $f8, $47, $80, $49, $08, $4b, $90, $4c
    db $18, $4e, $a0, $4f, $28, $51, $b0, $52, $38, $54, $c0, $55, $48, $57, $d0, $58
    db $58, $5a, $e0, $5b, $68, $5d, $f0, $5e, $78, $60, $00, $62, $88, $63, $10, $65
    db $98, $66, $20, $68, $a8, $69, $30, $6b, $b8, $6c, $40, $6e, $c8
Call_027_403f:
    db $6f, $50, $71, $d8, $72, $60, $74, $e8, $75, $70, $77, $f8, $78, $80, $7a, $08
    db $7c
Case2BathroomMap:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/layout.tilemap", $0, $12
jr_027_4062:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/layout.tilemap", $12, $7
jr_027_4069:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/layout.tilemap", $19, $7
jr_027_4070:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/layout.tilemap", $20, $2e
jr_027_409e:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/layout.tilemap", $4e, $1b
jr_027_40b9:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/layout.tilemap", $69, $14
jr_027_40cd:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/layout.tilemap", $7d, $a
jr_027_40d7:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/layout.tilemap", $87, $14
jr_027_40eb:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/layout.tilemap", $9b, $29
Case2BathroomAttributes:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/layout.attrmap", $0, $c4
    db $5d, $49, $4a, $4b, $4c, $4a, $4b, $4c, $4a, $4b, $4c, $73, $68, $6c, $5d, $49
    db $0d, $0e, $0f, $4a, $4b, $4c, $4a, $40, $41, $73, $69, $6d, $5d, $49, $1d, $1e
    db $1f, $4a, $4b, $4c, $52, $50, $51, $53, $69, $6d, $00, $01, $02, $03, $04, $05
    db $4b, $4c, $4a, $42, $43, $73, $69, $6e, $10, $11, $12, $13, $14, $15, $4b, $4c
    db $2c, $2d, $2e, $2f, $69, $6d, $06, $07, $08, $09, $0a, $0b, $0c, $44, $3c, $3d
    db $3e, $3f, $69, $6d, $16, $17, $18, $19, $1a, $1b, $1c, $54, $46, $47, $56, $57
    db $6a, $6f, $20, $21, $22, $23, $24, $2a, $2b, $45, $46, $47, $56, $57, $6b, $70
    db $30, $31, $32, $33, $34, $3a, $3b, $55, $48, $47, $56, $58, $59, $5a, $25, $26
    db $27, $28, $29, $4e, $4e

jr_027_425d:
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, e
    ld e, h
    dec [hl]
    ld [hl], $37
    jr c, jr_027_42a2

    ld h, a
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld c, l
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld c, a
    ld c, a
    ld c, a

jr_027_427b:
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a

jr_027_4284:
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
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
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_027_42a2:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a0d], sp
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    ld [$0a0d], sp
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld [$0a0d], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    ld [$0a0d], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a0d], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a0d], sp
    inc c
    inc c
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$090d], sp
    add hl, bc
    add hl, bc
    inc c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$090a], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rlca
    ld l, d
    ld l, e
    nop
    ld bc, $6968
    ld a, b
    ld a, c
    ld bc, $6473
    ld b, $07
    rla
    ld a, d
    ld a, e
    db $10
    ld [bc], a
    sub [hl]
    sub a
    sbc b
    sbc c
    ld [bc], a
    db $10
    ld [hl], h
    ld d, $17
    add hl, bc
    ld l, h
    ld l, l
    db $10
    ld de, $9b9a
    sbc h
    sbc l
    ld de, $6510
    ld [$1409], sp
    ld a, h
    ld a, l
    db $10
    ld de, $9f9e
    and b
    and c
    ld de, $7510
    jr jr_027_43b1

    dec b
    ld l, [hl]
    ld l, a
    db $10
    ld de, $a29a
    and e
    sbc l
    ld de, $6676
    ld [hl], d
    inc [hl]
    dec d
    ld a, [hl]
    ld a, a
    inc bc
    ld [de], a
    and h
    and l
    and [hl]
    and a
    ld [de], a
    inc bc

jr_027_43b1:
    ld [hl], h
    ld [hl], d
    inc [hl]
    ld h, d
    add b
    add c
    inc de
    ld a, [bc]
    dec bc
    ld c, $0e
    inc c
    dec c
    inc de
    ld h, l
    ld [hl], d
    inc [hl]
    ld h, d
    add d
    add e
    inc b
    ld a, [de]
    dec de
    ld e, $1e
    inc e
    dec e
    inc b
    ld h, a
    ld [hl], d
    inc [hl]
    ld h, d
    add h
    add l
    rrca
    jr nz, jr_027_43f7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $77
    ld h, e
    inc [hl]
    ld b, l
    ld b, [hl]
    ld e, e
    rra
    jr nc, jr_027_4415

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $60
    ld c, l
    ld c, [hl]
    ld d, l
    ld d, [hl]
    daa
    jr z, jr_027_441a

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_027_43f7:
    ld b, b
    ld e, l
    ld e, [hl]
    ld b, a
    ld c, b
    scf
    jr c, jr_027_4438

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld e, h
    ld c, a
    ld d, a
    ld b, c
    ld b, d
    ld b, e
    inc [hl]
    inc [hl]
    ld d, c
    ld d, d
    inc [hl]
    inc [hl]
    ld d, e
    ld d, h
    ld b, h

jr_027_4415:
    ld e, a
    ld e, b
    ld c, c
    ld c, d
    ld e, c

jr_027_441a:
    ld e, d
    ld c, e
    ld c, h
    ld c, h
    ld c, e
    ld e, d
    ld e, c
    ld c, d
    ld c, c
    ld e, b
    ld a, [hl+]
    add hl, bc
    add hl, bc
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    ld l, $0e
    inc c
    ld a, [bc]
    ld a, [bc]
    ld l, $09
    add hl, bc
    ld c, $0e
    inc c

jr_027_4438:
    inc c
    inc c
    inc c
    ld l, $2e
    inc c
    ld a, [bc]
    ld c, $2a
    add hl, bc
    add hl, bc
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    ld l, $2e
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    ld l, $2e
    inc c
    ld a, [bc]
    ld a, [bc]
    ld c, $09
    add hl, bc
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    ld l, $0e
    inc c
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    ld l, $2e
    inc c
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $08
    ld [$2808], sp
    ld [$2e08], sp
    inc c
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$2e08], sp
    inc c
    ld c, $0e
    ld c, $09
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e0e], sp
    ld c, $0b
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b08], sp
    ld c, $0e
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e0e], sp
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e0b], sp
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    jr z, jr_027_450b

    jr z, @+$2a

    jr z, @+$2a

    dec hl
    nop
    inc bc
    ld de, $1112
    dec b
    ld b, $15
    ld de, $1112
    inc b
    ld h, $27
    db $10
    inc de
    ld bc, $0e02
    rrca
    ld d, $0f
    ld c, $02
    ld bc, $3614
    ld [hl], b
    nop
    inc bc
    ld de, $0720
    dec c
    dec c

jr_027_450b:
    ld [$2109], sp
    ld de, $3704
    ld [hl], c
    db $10
    inc de
    ld bc, $1730
    ld a, [bc]
    ld a, [de]
    jr jr_027_4534

    ld sp, $1401
    ld [hl], $71
    add hl, hl
    ld a, [hl+]
    dec hl
    jr nz, jr_027_4530

    inc c
    dec de
    inc e
    dec e
    ld hl, $0411
    scf
    ld [hl], d
    add hl, sp
    ld a, [hl-]

jr_027_4530:
    dec sp
    ld [bc], a
    ld e, $1f

jr_027_4534:
    ld e, $1f
    ld e, $02
    ld bc, $3614
    ld [hl], e
    inc l
    dec l
    ld a, $3f
    ld de, $1112
    ld [de], a
    ld de, $3e3f
    inc b
    scf
    ld [hl], c
    inc a
    dec a
    ld b, b
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    ld d, a
    ld d, h
    ld b, c
    ld b, b
    ld c, e
    jr z, @+$73

    ld l, $2f
    ld d, b
    ld d, c
    ld b, d
    ld e, b
    ld e, c
    ld e, b
    ld b, d
    ld d, c
    ld d, b
    ld c, d
    jr c, jr_027_45da

    ld c, h
    ld c, l
    ld b, e
    ld b, h
    ld d, d
    ld b, l
    ld b, [hl]
    ld b, a
    ld d, d
    ld b, h
    ld b, e
    ld e, d
    ld e, e
    ld h, [hl]
    ld e, h
    ld e, l
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, a
    ld e, a
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, l
    ld l, h
    ld l, a
    ld l, e
    ld l, b
    inc h
    inc sp
    inc hl
    inc hl
    ld [hl+], a
    dec h
    dec h
    ld [hl+], a
    inc hl
    inc hl
    inc sp
    inc h
    dec h
    dec h
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl-], a
    rst RST_38
    rst RST_38
    ld [hl-], a
    dec [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    rst RST_38
    rst RST_38
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_027_45da:
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0e08], sp
    ld c, $0e
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0e08], sp
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e08], sp
    ld c, $0a
    ld a, [bc]
    ld [$0808], sp
    ld [$2a08], sp
    ld a, [hl+]
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec hl
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, bc
    add hl, bc
    ld [$0b0b], sp
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
    inc l
    inc l
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    rrca
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_027_46a1

    ld a, [de]
    dec de
    inc e
    ld c, $10
    dec e
    ld e, $1e
    rra
    jr nz, jr_027_46b4

    ld hl, $2220
    inc hl
    inc hl
    inc h
    nop
    nop
    dec h
    ld h, $26
    daa
    jr z, @+$2b

jr_027_46a1:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec l
    ld l, $0d
    rrca
    dec h
    cpl
    cpl
    jr nc, jr_027_46df

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $36

jr_027_46b4:
    ld l, $0e
    db $10
    dec h
    cpl
    cpl
    jr nc, jr_027_46f3

    jr c, jr_027_46f7

    ld a, [hl-]
    dec [hl]
    ld [hl], $36
    ld l, $00
    ld d, h
    dec sp
    inc a
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, e
    ld b, h
    ld e, d
    ld d, l
    dec sp
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, b
    ld b, a
    ld c, c
    ld c, d
    ld c, d
    ld b, h

jr_027_46df:
    ld e, e
    ld d, [hl]
    ld c, e
    ld c, h
    ld c, h
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld c, a
    ld d, c
    ld d, d
    ld d, d
    ld d, e
    ld e, h
    ld d, a
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]

jr_027_46f3:
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]

jr_027_46f7:
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, l
    ld e, b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld e, b
    ld e, c
    ld h, h
    ld e, a
    ld e, a
    ld h, l
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld h, h
    ld e, a
    ld e, a
    ld h, l
    ld e, c
    ld e, c
    ld h, [hl]
    ld h, a
    ld h, a
    ld l, b
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    ld l, b
    ld e, c
    ld e, c
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld e, c
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld l, $0e
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    ld a, [bc]
    ld l, $0e
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    ld c, d
    ld c, $0e
    ld c, d
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec l
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec l
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec l
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec l
    ld c, e
    nop
    db $10
    db $10
    ld bc, $004b
    db $10
    db $10
    db $10
    ld bc, $004b
    db $10
    ld c, l
    nop
    ld c, h
    ld c, l
    ld c, h
    inc bc
    inc b
    dec b
    ld b, $4d
    ld c, h
    ld c, l
    nop
    ld c, h
    stop
    ld bc, $104b
    rlca
    ld b, e
    ld b, h
    rla
    ld c, e
    db $10
    stop
    ld bc, $004b
    db $10
    db $10
    inc de
    inc d
    ld b, l
    ld b, [hl]
    dec d
    ld d, $01
    ld c, e
    nop
    db $10
    ld c, l
    nop
    ld c, h
    ld c, l
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, h
    ld c, l
    nop
    ld c, h
    stop
    ld bc, $184b
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    db $10
    stop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld c, $0f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld e, $1f
    jr nc, jr_027_4893

    ld [hl-], a
    inc sp
    inc [hl]
    ld [de], a
    ld [de], a
    ld [de], a
    ld de, $1111
    dec h
    ld h, $35
    ld [hl], $27
    jr z, jr_027_48a9

    jr c, jr_027_4885

    ld de, $2a11
    dec hl
    inc l
    dec l
    ld l, $2f
    ld b, b
    ld b, b
    cpl
    ld l, $2d
    inc l
    dec hl
    ld a, [hl+]
    ld a, [hl-]

jr_027_4885:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, c
    ld b, c
    ccf
    ld a, $3d
    inc a
    dec sp
    ld a, [hl-]
    add hl, hl

jr_027_4893:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

jr_027_48a9:
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, h
    ld c, h
    inc c
    inc c
    ld [$0c08], sp
    ld c, h
    inc c
    inc c
    inc c
    ld c, h
    inc c
    inc c
    ld c, h
    ld c, h
    inc c
    dec bc
    ld [$0c08], sp
    ld c, h
    inc c
    inc c
    inc c
    ld c, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, h
    ld c, h
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    ld c, h
    inc c
    inc c
    ld c, h
    ld c, h
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    ld c, h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_027_4a29

    ld a, a
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_027_49d5

    ld [hl+], a
    inc hl
    inc h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec h
    ld h, $27
    jr z, jr_027_49e9

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, $2f
    jr nc, jr_027_49fe

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $7f
    ld a, a
    ld a, a

jr_027_49d5:
    ld a, a
    ld a, a
    scf
    jr c, jr_027_4a13

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    ld b, c
    ld b, d

jr_027_49e9:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld a, a

jr_027_49fe:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_027_4a13:
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h

jr_027_4a29:
    ld a, l
    ld a, [hl]
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
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    ld b, $06
    ld b, $06
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $06
    ld b, $06
    ld b, $06
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $06
    ld b, $0e
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $06
    ld bc, $0101
    add hl, bc
    inc c
    inc c
    dec c
    dec c
    dec c
    inc c
    dec c
    add hl, bc
    ld bc, $0101
    ld bc, $0901
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld bc, $0101
    nop
    nop
    ld [$0b08], sp
    dec c
    inc c
    inc c
    inc c
    inc c
    dec bc
    ld [$0008], sp
    ld [$0a08], sp
    ld a, [bc]
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec de
    inc [hl]
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_027_4b39

    ld a, [de]
    adc b
    adc c
    inc [hl]
    inc c
    dec c
    ld c, $0f
    jr nz, jr_027_4b4b

    ld [hl+], a
    inc hl
    inc h
    add h
    add l
    add [hl]
    add a
    inc [hl]
    inc e
    dec e
    ld e, $1f
    jr nc, jr_027_4b69

    ld [hl-], a

jr_027_4b39:
    rra
    inc sp
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    inc [hl]
    inc e
    dec e
    ld e, $1f
    jr nc, jr_027_4b77

    ld [hl-], a
    rra
    inc sp
    ld e, h
    ld e, l

jr_027_4b4b:
    ld e, [hl]
    ld e, a
    inc [hl]
    inc e
    dec e
    ld e, $1f
    jr nc, jr_027_4b85

    ld [hl-], a
    rra
    inc sp
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    inc [hl]
    inc e
    add hl, hl
    ld h, $27
    jr z, jr_027_4b9b

    ld [hl-], a
    rra
    inc sp
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e

jr_027_4b69:
    inc [hl]
    dec sp
    add hl, hl
    ld [hl], $37
    jr c, jr_027_4ba9

    ld b, b
    ld b, c
    inc sp
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_027_4b77:
    inc [hl]
    inc l
    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    ld a, [hl-]
    ld d, b
    ld d, c
    inc sp
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a

jr_027_4b85:
    inc [hl]
    inc a
    dec l
    ld l, $2f
    dec a
    ld a, $42
    ld b, e
    inc sp
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    inc [hl]
    inc e
    dec e
    ld e, $1f
    jr nc, jr_027_4bcb

    ld d, d

jr_027_4b9b:
    ld d, e
    inc sp
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    inc [hl]
    inc e
    dec e
    ld e, $1f
    jr nc, jr_027_4bd9

    ld b, h

jr_027_4ba9:
    ld d, h
    inc sp
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    inc [hl]
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ccf
    inc sp
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    inc [hl]
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    rra
    inc sp
    add b
    add c
    add d
    add e

jr_027_4bcb:
    inc [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    add hl, bc

jr_027_4bd9:
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$090c], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$090c], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0c08], sp
    ld [$090c], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$090c], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$090c], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$090c], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0100], sp
    ld [bc], a
    inc bc
    inc b
    jr z, jr_027_4ccf

    jr c, @+$2a

    inc b
    ld b, $07
    ld [$1009], sp
    ld de, $1312
    inc d
    add hl, hl
    ld a, [hl+]
    dec hl
    add hl, hl
    inc d
    ld d, $17
    jr jr_027_4cc5

    inc c
    dec c
    ld [de], a
    dec b
    cpl
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    cpl
    dec d
    ld a, [bc]
    jr jr_027_4cd4

    inc e
    dec e
    ld c, $21
    ld [hl-], a
    ld sp, $2d2c
    ld sp, $3332

jr_027_4cc5:
    and b
    jr jr_027_4cd3

    adc h
    adc l
    ld e, $24
    dec h
    ld h, $3c

jr_027_4ccf:
    dec a
    ld h, $25
    daa

jr_027_4cd3:
    and c

jr_027_4cd4:
    jr nz, @+$1d

    sbc h
    sbc l
    rrca
    inc [hl]
    dec [hl]
    ld [hl], $2e
    ld a, $36
    dec [hl]
    scf
    and d
    jr nc, jr_027_4d52

    sbc e
    adc a
    ld [de], a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, e
    ld b, d
    ld b, c
    ccf
    and e
    jr jr_027_4d70

    adc [hl]
    adc a
    rra
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, c
    ld d, b
    add c
    jr @-$73

    sbc [hl]
    sbc a
    ld h, c
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld c, b
    ld l, a
    adc e
    ld h, d
    ld h, e
    ld [hl], c
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, d
    ld [hl], b
    ld e, b
    adc d
    adc c
    ld [hl], d
    ld [hl], e
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    sbc d
    sbc c
    ld h, h
    ld l, d
    ld b, [hl]
    ld b, a
    add b
    ld a, a
    ld a, a
    ld a, a
    sub b
    sub b
    ld b, a
    ld b, [hl]
    ld e, a
    ld b, h
    ld [hl], h
    ld a, d
    ld d, [hl]
    ld d, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, a
    ld d, [hl]
    ld a, a
    ld b, l
    ld [hl+], a
    ld l, e
    ld l, h
    ld l, l
    ld a, e
    ld a, h
    ld a, l
    ld a, l
    ld a, h
    ld a, e
    ld l, l
    ld l, h

jr_027_4d52:
    ld l, e
    inc hl
    dec c
    dec c
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec l
    dec l
    dec c
    dec c
    ld a, [bc]
    dec c
    inc c
    dec c
    ld a, [bc]
    dec c
    inc c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec l
    inc l
    dec c
    inc c
    ld a, [bc]
    inc c

jr_027_4d70:
    dec c
    dec c
    ld a, [bc]
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec l
    dec l
    dec c
    add hl, bc
    ld a, [bc]
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld c, $0a
    dec c
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0808], sp
    jr z, @+$2a

    jr z, @+$0b

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    dec bc
    ld [$0808], sp
    ld [$2808], sp
    dec hl
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2b08], sp
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    jr z, jr_027_4de5

    dec hl
    dec bc
    ld a, [bc]
    dec bc

jr_027_4de1:
    dec bc
    ld [$0808], sp

jr_027_4de5:
    ld [$0808], sp
    ld [$0808], sp

jr_027_4deb:
    ld [$090b], sp
    dec bc
    dec bc
    ld [$0808], sp
    nop
    nop
    nop
    ld [$2828], sp
    jr z, jr_027_4e06

    dec hl
    dec bc
    ld [$0808], sp
    nop
    nop
    nop
    nop
    nop
    nop

jr_027_4e06:
    jr z, jr_027_4e30

    ld [$0b2b], sp
    ld [$0808], sp
    ld [$0808], sp
    jr z, jr_027_4e3b

    jr z, jr_027_4e3d

    jr z, jr_027_4e3f

    dec bc
    add hl, bc
    ld [$b5b3], sp
    inc b
    jr z, jr_027_4e57

    jr c, jr_027_4e49

    inc b
    inc bc
    ld [bc], a
    ld bc, $1900
    jr jr_027_4de1

    or [hl]

jr_027_4e2a:
    inc d
    add hl, hl
    ld a, [hl+]
    dec hl
    add hl, hl
    inc d

jr_027_4e30:
    inc de
    ld [de], a
    ld de, $1a10
    jr jr_027_4deb

    or a
    cpl
    add hl, sp
    ld a, [hl-]

jr_027_4e3b:
    dec sp
    add hl, sp

jr_027_4e3d:
    cpl
    dec b

jr_027_4e3f:
    ld [de], a
    dec c
    inc c
    dec bc
    jr jr_027_4de5

    xor c
    sub d
    sub e
    inc l

jr_027_4e49:
    dec l
    ld sp, $2132
    ld c, $1d
    inc e
    dec de
    jr nz, @-$45

    add e
    add h
    xor b
    inc a

jr_027_4e57:
    dec a
    ld h, $25
    inc h
    ld e, $8d
    adc h
    ld l, [hl]
    jr nc, @-$79

    add [hl]
    add a
    adc b
    ld l, $3e
    ld [hl], $35
    inc [hl]
    rrca
    sbc l
    sbc h
    ld a, [hl]
    jr jr_027_4e2a

    cp h
    cp l
    add d
    ld b, e
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ld [de], a
    adc a
    sbc e
    adc e
    jr @-$7d

    sub c
    cp d
    ld d, d
    ld d, e
    ld d, e
    ld d, d
    ld d, c
    ld d, b
    rra
    adc a
    adc [hl]
    adc e
    ld l, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    sbc a
    sbc [hl]
    adc c
    adc d
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, d
    ld [hl], b
    ld [hl], c
    ld h, e
    ld h, d
    sbc c
    sbc d
    ld a, c
    ld h, [hl]
    or c
    or d
    ld [hl], l
    halt
    ld l, c
    ld l, c
    ld h, [hl]
    ld h, l
    ld [hl], e
    ld [hl], d
    ld b, h
    ld e, a
    ld b, [hl]
    ld b, a
    ld a, a
    ld h, a
    ld l, b
    ld [hl], a
    cp [hl]
    cp a
    or b
    ld b, [hl]
    ld l, d
    ld h, h
    ld b, l
    ld a, a
    ld d, [hl]
    ld d, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, a
    ld d, [hl]
    ld a, d
    ld [hl], h
    ld [hl+], a
    ld l, e
    ld l, h
    ld l, l
    ld a, e
    ld a, h
    ld a, l
    ld a, l
    ld a, h
    ld a, e
    ld l, l
    ld l, h
    ld l, e
    inc hl
    dec l
    ld a, [hl+]
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec l
    dec l
    dec l
    ld a, [hl+]
    dec l
    dec l
    inc l
    ld a, [hl+]
    add hl, bc
    dec c
    inc c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec l
    inc l
    dec l
    ld a, [hl+]
    dec l
    inc l
    dec l
    ld a, [hl+]
    ld c, $0d
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec l
    dec l
    dec l
    ld a, [hl+]
    dec l
    dec l
    dec l
    ld a, [hl+]
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    dec l
    dec l
    dec l
    ld a, [hl+]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec l
    ld a, [hl+]
    ld a, [hl+]
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld l, $2a
    ld a, [hl+]
    ld a, [bc]
    inc c
    inc c
    ld [$2808], sp
    jr z, @+$2a

    inc l
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    dec bc
    ld [$0808], sp
    jr z, jr_027_4f6f

    jr z, jr_027_4f74

    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2b08], sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    jr z, @+$0a

    dec hl
    dec hl
    add hl, hl
    add hl, hl
    dec bc
    jr z, jr_027_4f74

    ld [$0808], sp

jr_027_4f6f:
    ld [$0808], sp
    jr z, @+$2a

jr_027_4f74:
    dec hl
    dec hl
    dec bc
    dec bc
    ld [$0008], sp
    ld [$0808], sp
    ld [$0808], sp
    jr z, @+$2d

    dec hl
    dec bc
    jr z, @+$0a

    ld [$0000], sp
    nop
    nop
    nop
    nop
    jr z, jr_027_4fb8

    jr z, jr_027_4fbd

    dec bc
    ld [$0808], sp
    ld [$0808], sp
    jr z, jr_027_4fc3

    jr z, jr_027_4fc5

    jr z, jr_027_4fc7

    dec bc
    nop
    ld bc, $2297
    sub b
    sub c
    sub c
    sub c
    sub c
    sub d
    ld [hl+], a
    sbc l
    ld bc, $1000
    ld de, $3298
    sub e
    ld l, $2f
    ld a, $3f
    sub h

jr_027_4fb8:
    ld [hl-], a
    sbc [hl]
    ld de, $0210

jr_027_4fbd:
    inc bc
    sbc b
    inc hl
    sub e
    jr z, jr_027_4fec

jr_027_4fc3:
    ld a, [hl+]
    dec hl

jr_027_4fc5:
    sub h
    inc hl

jr_027_4fc7:
    sbc [hl]
    inc bc
    ld [bc], a
    ld [de], a
    inc de
    sbc c
    inc sp
    sub l
    jr c, jr_027_500a

    ld a, [hl-]
    dec sp
    sub [hl]
    inc sp
    sbc a
    inc de
    ld [de], a
    inc b
    dec b
    sbc d
    inc h
    dec h
    ld h, $2c
    dec l
    dec [hl]
    ld [hl], $24
    and b
    dec b
    inc b
    inc d
    dec d
    sbc b
    inc [hl]
    daa
    daa

jr_027_4fec:
    inc a
    dec a
    scf
    scf
    inc [hl]
    sbc [hl]
    dec d
    inc d
    ld b, $07
    sbc e
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    and c
    inc c
    dec c
    ld d, $17
    sbc h
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_027_500a:
    ld d, l
    ld d, [hl]
    ld d, a
    and d
    inc e
    dec e
    ld [$4809], sp
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld c, $0f
    jr @+$1b

    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld e, $1f
    ld a, [bc]
    dec bc
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    jr nz, jr_027_505b

    ld a, [de]
    dec de
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    jr nc, jr_027_5079

    adc h
    adc l
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    adc l
    adc h
    adc [hl]
    adc a
    add d
    add e
    add h

jr_027_505b:
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc a
    adc [hl]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_027_5079:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [hl+]
    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [hl+]
    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    jr z, jr_027_5142

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    jr z, jr_027_5150

    nop
    nop
    nop
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    nop
    add hl, sp
    dec a
    ld [hl], $c4
    push bc
    jr c, jr_027_517a

    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    jr c, jr_027_517b

jr_027_5142:
    add hl, sp
    or h
    add $c7
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    add hl, sp

jr_027_5150:
    add hl, sp
    or l
    ret z

    ret


    ld bc, $4a49
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld bc, $3a3a
    or [hl]
    jp z, $02cb

    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld [bc], a
    dec sp
    ld a, $b7
    call z, Call_000_03cd
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    inc bc
    inc a

jr_027_517a:
    inc a

jr_027_517b:
    cp b
    call z, Call_000_03cd
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc bc
    inc a
    inc a
    cp c
    call z, $34cd
    dec [hl]
    dec [hl]
    inc b
    dec b
    inc b
    dec [hl]
    dec [hl]
    inc [hl]
    inc a
    ccf
    cp d
    call z, Call_000_03cd
    inc bc
    inc bc
    ld b, $07
    ld b, $03
    inc bc
    inc bc
    inc a
    inc bc
    cp e
    call z, $17ce
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nc, jr_027_51e4

    inc bc
    rst RST_08
    ret nc

    daa
    jr z, jr_027_51e2

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld [hl-], a
    inc sp
    ld h, $d1
    jp nc, $0908

    ld a, [bc]
    dec bc
    db $10
    ld de, $0a09
    dec bc
    jr nz, jr_027_51f0

    inc bc
    db $d3
    call nc, Call_000_0d0c
    ld c, $0f
    ld [de], a
    inc de
    dec c
    ld c, $0f
    ld [hl+], a
    inc hl
    inc d
    dec h
    ld d, $0c
    dec c

jr_027_51e2:
    ld c, $0f

jr_027_51e4:
    ld [de], a
    inc de
    dec c
    ld c, $0f
    ld [hl+], a
    dec d
    inc h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_027_51f0:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld c, $0e
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld c, $0e
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld [$2808], sp
    inc c
    inc c
    ld a, [hl+]
    ld a, [bc]
    inc c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$2808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a0c], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c0a], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    ld bc, $0302
    ld a, [bc]
    dec c
    ld h, d
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, h
    ld a, a
    ld a, [bc]
    inc b
    xor a
    or b
    rlca
    dec bc
    ld c, $80
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    add b
    dec bc
    dec b
    or c
    or d
    ld [$0f0c], sp
    add c
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, d
    ld [hl], b
    add c
    inc c
    ld b, $b1
    or d
    add hl, bc
    ld a, [bc]
    dec c
    add c
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    add c
    ld a, [bc]
    db $10
    or e
    or h
    db $10
    ld de, $8111
    halt
    ld [hl], a
    ld a, e
    ld a, h
    ld a, b
    add c
    ld de, $b512
    or [hl]
    ld a, [de]
    dec de
    inc e
    ld h, e
    ld a, c
    ld a, c
    ld a, l
    ld a, [hl]
    ld a, d
    add d
    dec de
    inc de
    or c
    or d
    dec e
    ld e, $1f
    add h
    add l
    add [hl]
    add l
    add [hl]
    add a
    add e
    ld e, $13
    or c
    or d
    jr nz, jr_027_5338

    ld [hl+], a
    inc hl

jr_027_5319:
    inc h
    dec h
    inc hl
    ld h, $27
    jr z, jr_027_5349

    inc d
    or a
    cp b
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    dec l
    jr nc, jr_027_535d

    ld [hl-], a
    inc sp
    dec d
    cp c
    cp d
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_5370

    scf

jr_027_5338:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld d, $bb
    cp h
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, c
    ld b, h
    ld b, l
    ld b, [hl]

jr_027_5349:
    ld b, a
    rla
    cp l
    cp [hl]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, e
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    jr jr_027_5319

    ret nz

    ld d, d
    ld d, e

jr_027_535d:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld d, l
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    add hl, de
    pop bc
    jp nz, Jump_027_5d5c

    ld e, [hl]
    ld e, a
    ld e, a
    ld e, a
    ld e, a

jr_027_5370:
    ld e, a
    ld e, a
    ld h, b
    ld h, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld a, [hl+]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld a, [hl+]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld a, [hl+]
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$2808], sp
    ld a, [hl+]
    inc c
    inc c
    ld [$0c08], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$080a], sp
    jr z, @+$0a

    ld [$0a08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d0d], sp
    ld [$0d0d], sp
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_027_5477

    ld a, [de]
    dec de
    ld de, $1c10
    dec e
    ld e, $1f
    jr nz, jr_027_5489

    ld [hl+], a
    ld [hl+], a
    ld hl, $1f20
    ld e, $1d
    inc e
    inc hl
    inc h
    dec h
    ld h, $27
    halt
    ld [hl], a

jr_027_5477:
    ld a, b
    ld a, c
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc hl
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld h, l
    dec hl

jr_027_5489:
    ld h, [hl]
    ld h, a
    jr z, jr_027_54ba

    ld l, $2f
    nop
    jr nc, jr_027_5510

    ld a, a
    add b
    add c
    ld l, b
    nop
    ld l, c
    ld l, d
    ld l, e
    ld sp, $3332
    inc [hl]
    dec [hl]
    add d
    add e
    add h
    add l
    ld l, h
    inc [hl]
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], $37
    jr c, jr_027_54e5

    ld a, [hl-]
    ld a, d
    add [hl]
    add a
    ld a, l
    ld [hl], b
    add hl, sp
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec sp
    dec sp
    inc a
    dec sp

jr_027_54ba:
    dec a
    adc b
    adc c
    adc d
    adc e
    ld [hl], h
    dec sp
    ld [hl], l
    dec sp
    dec sp
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ld a, $3f
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, d
    ld c, c
    ld c, b
    ld b, a
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld c, a
    ld d, e

jr_027_54e5:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld d, e
    ld c, a
    ld d, d
    ld d, c
    ld d, b
    ld e, b
    ld e, c
    ld c, a
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld e, d
    ld c, a
    ld e, c
    ld e, b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp

jr_027_5510:
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2c2c], sp
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    inc l
    inc l
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    add hl, hl
    add hl, bc
    ld c, $0c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    ld c, $29
    ld c, $0e
    ld c, $0c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec c
    dec c
    dec hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec hl
    dec bc
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec hl
    dec bc
    add hl, hl
    add hl, hl
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, $0e
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
    ld c, $0e
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
    ld a, a
    ld a, $3f
    ld a, a
    ld a, a
    ld a, a
    ld e, $1f
    ld a, a
    ld a, a
    ld l, $2f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rrca
    ld a, a
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    jr nz, jr_027_5653

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_027_5663

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nc, jr_027_5671

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_5681

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_027_5653:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_027_5663:
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_027_5671:
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d

jr_027_5681:
    ld a, e
    ld a, h
    ld a, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $2a0a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld c, d
    ld l, d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0c0c
    ld bc, $0101
    inc c
    inc c
    ld bc, $0c01
    inc c
    ld bc, $0101
    ld bc, $010b
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    dec bc
    inc c
    ld bc, $0909
    add hl, bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$7f7f], sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, $0e
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
    ld c, $0e
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
    add a
    adc b
    adc c
    adc d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    dec l
    inc l
    dec hl
    ld a, [hl+]
    add hl, hl
    jr z, jr_027_57e6

    ld h, $25
    inc h
    inc hl
    ld [hl+], a
    ld hl, $3d20
    inc a
    dec sp
    ld a, [hl-]
    add hl, sp
    jr c, jr_027_5804

    ld [hl], $35
    inc [hl]
    inc sp
    ld [hl-], a
    ld sp, $4d30
    ld c, h
    ld c, e
    ld c, d
    ld c, c
    ld c, b
    ld b, a
    ld b, [hl]
    ld b, l
    ld b, h
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ld e, l
    ld e, h
    ld e, e
    xor c

jr_027_57e6:
    xor d
    xor e
    ld d, a
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, e
    ld d, d
    ld d, c
    ld d, b
    ld l, l
    ld l, h
    ld l, e
    xor h
    xor l
    xor [hl]
    xor c
    xor d
    xor e
    ld h, h
    ld h, e
    ld h, d
    ld h, c
    ld h, b
    ld a, l
    ld a, h
    ld a, e
    ld a, d
    ld a, c
    ld a, b

jr_027_5804:
    xor h
    xor l
    xor [hl]
    ld [hl], h
    ld [hl], e
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld bc, $0101
    ld bc, $0101
    ld bc, $2a0a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld c, d
    ld l, d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    jr z, jr_027_58a6

    jr z, jr_027_58a8

    jr z, jr_027_58aa

    jr z, jr_027_58ac

    jr z, jr_027_58ae

    jr z, jr_027_58b0

    jr z, jr_027_58b2

    jr z, jr_027_58b4

    jr z, jr_027_58b6

    jr z, jr_027_58b8

    jr z, jr_027_58ba

    jr z, jr_027_58bc

    jr z, @+$2a

    jr z, @+$2a

    jr z, @+$2a

    jr z, @+$2a

    jr z, @+$2a

    jr z, @+$2a

    jr z, jr_027_58ca

    jr z, @+$2a

    jr z, @+$2a

jr_027_58a6:
    jr z, @+$2a

jr_027_58a8:
    jr z, @+$0f

jr_027_58aa:
    dec c
    dec c

jr_027_58ac:
    jr z, jr_027_58d6

jr_027_58ae:
    jr z, @+$2a

jr_027_58b0:
    jr z, jr_027_58da

jr_027_58b2:
    jr z, jr_027_58dc

jr_027_58b4:
    jr z, jr_027_58de

jr_027_58b6:
    jr z, jr_027_58c5

jr_027_58b8:
    dec c
    dec c

jr_027_58ba:
    dec c
    dec c

jr_027_58bc:
    dec c
    jr z, jr_027_58e7

    jr z, jr_027_58e9

    jr z, jr_027_58eb

    jr z, jr_027_58ed

jr_027_58c5:
    jr z, jr_027_58ef

    jr z, jr_027_58d6

    dec c

jr_027_58ca:
    dec c
    jr z, jr_027_58f5

    jr z, jr_027_58f7

    jr z, jr_027_5950

    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_027_58d6:
    ld a, a
    ld c, $0e
    ld a, a

jr_027_58da:
    ld a, a
    ld a, a

jr_027_58dc:
    ld a, a
    ld a, a

jr_027_58de:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, $0e

jr_027_58e7:
    ld a, a
    ld a, a

jr_027_58e9:
    ld a, a
    ld a, a

jr_027_58eb:
    ld a, a
    ld a, a

jr_027_58ed:
    ld a, a
    ld a, a

jr_027_58ef:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_027_58f5:
    ld a, a
    ld a, a

jr_027_58f7:
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

jr_027_5907:
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
    or b
    or c
    or d
    ld a, a
    ld a, a
    or e
    or h
    or l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
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


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    jr nz, jr_027_5963

    ld [hl+], a
    inc hl
    inc h
    ret c

    reti


    daa
    jr z, jr_027_5973

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nc, jr_027_5981

jr_027_5950:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_5907

    jp c, Jump_000_3cdb

    dec a
    ret c

    reti


    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_027_5963:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_027_5973:
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_027_5981:
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    xor a
    jp c, Jump_027_7ddb

    ld bc, $0101
    ld bc, $0101
    ld bc, $2a0a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld c, d
    ld l, d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc c
    inc c
    inc c
    ld bc, $0901
    add hl, bc
    add hl, bc
    ld bc, $0101
    ld bc, $0c01
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e0e], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d0d], sp
    dec c
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    dec c
    ld [$0000], sp
    dec sp
    inc c
    dec c
    inc e
    dec e
    ld e, $1f
    dec c
    inc c
    ld b, c
    nop
    nop
    nop
    nop
    inc a
    ld c, $0f
    jr nz, jr_027_5a8e

    ld [hl+], a
    inc hl
    rrca
    ld c, $42
    nop
    nop
    nop
    nop
    inc a
    db $10
    ld de, $2524
    ld h, $27
    ld [de], a
    inc de
    ld b, d
    nop
    nop
    ld c, a
    ld d, b
    inc a
    inc d
    dec d
    ld d, $17
    jr jr_027_5aa4

    ld a, [de]
    dec de
    ld b, d

jr_027_5a8e:
    ld c, a
    ld d, b
    ld b, a
    ld c, b
    dec a
    jr z, @+$2b

    ld d, [hl]
    ld d, a
    ld d, a
    ld d, [hl]
    add hl, hl
    jr z, jr_027_5adf

    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld d, c
    ld a, [hl+]
    dec hl
    ld e, b

jr_027_5aa4:
    ld e, c
    ld e, d
    ld e, e
    dec hl
    ld a, [hl+]
    ld d, h
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld d, c
    inc l
    dec l
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    dec l
    inc l
    ld d, h
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld d, c
    ld l, $2f
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    cpl
    ld l, $54
    ld c, l
    ld c, [hl]
    ld d, e
    ld d, e
    ld d, d
    jr nc, jr_027_5afe

    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld sp, $5530
    ld d, e
    ld d, e
    ld a, $3f
    ld b, b
    ld [hl-], a
    inc sp
    ld l, b
    ld l, c
    ld l, d
    ld l, e

jr_027_5adf:
    inc sp
    ld [hl-], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld bc, $0302
    inc [hl]
    dec [hl]
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    dec [hl]
    inc [hl]
    inc bc
    ld [bc], a
    ld bc, $0504
    ld b, $36
    scf
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    scf
    ld [hl], $06

jr_027_5afe:
    dec b
    inc b
    rlca
    ld [$3809], sp
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_027_5b15

    ld [$0a07], sp
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]

jr_027_5b15:
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    dec bc
    dec bc
    ld [$2828], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    dec bc
    dec bc
    ld [$2828], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$2828], sp
    jr z, jr_027_5b87

    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    jr z, jr_027_5b95

    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    jr z, jr_027_5ba3

    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc

jr_027_5b87:
    jr z, jr_027_5bb1

    add hl, bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc

jr_027_5b95:
    jr z, jr_027_5bbf

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc

jr_027_5ba3:
    jr z, jr_027_5bcd

    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc

jr_027_5bb1:
    jr z, jr_027_5bdb

    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0c0d], sp
    inc c
    inc c
    inc c

jr_027_5bbf:
    dec l
    jr z, jr_027_5bec

    ld a, [hl+]
    ld a, [hl+]
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_027_5bcd:
    inc c
    inc l
    ld l, $2e
    ld l, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_027_5bdb:
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    dec b
    inc b
    inc bc
    inc d

jr_027_5bec:
    inc de
    inc de
    nop
    ld bc, $0702
    ld [$0a09], sp
    ld a, [bc]
    add hl, bc
    ld [$630b], sp
    ld h, h
    ld h, l
    nop
    ld bc, $0c02
    dec c
    ld c, $0f
    db $10
    ld de, $0c0d
    ld h, [hl]
    ld h, a
    ld l, b
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    ld e, $1f
    rla
    ld d, $15
    ld l, c
    ld l, d
    ld l, d
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    daa
    daa
    dec e
    inc e
    dec de
    ld a, [de]
    add hl, de
    add hl, de
    jr nz, jr_027_5c49

    ld [hl+], a
    inc hl
    inc h
    dec h
    jr z, jr_027_5c56

    dec h
    inc h
    inc hl
    ld [hl+], a
    ld hl, $2021
    ld hl, $2322
    inc h
    ld h, $29
    add hl, hl
    ld h, $24
    inc hl
    ld [hl+], a
    ld hl, $2021
    ld hl, $2d22
    cpl
    jr nc, jr_027_5c7a

jr_027_5c49:
    ld sp, $2f30
    dec l
    ld [hl+], a
    ld hl, $2a21
    dec hl
    inc l
    ld l, $32
    inc sp

jr_027_5c56:
    inc [hl]
    inc [hl]
    inc sp
    ld [hl-], a
    ld l, $2c
    dec hl
    dec hl
    dec [hl]
    ld [hl], $37
    jr c, jr_027_5c9c

    ld a, [hl-]
    dec sp
    dec sp
    ld a, [hl-]
    add hl, sp
    jr c, jr_027_5ca1

    ld [hl], $62
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, d
    ld b, c
    ld b, b
    ccf
    ld a, $3d
    inc a

jr_027_5c7a:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld b, l
    ld b, h
    ld b, e
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld h, b
    ld h, c
    ld d, h
    ld d, b
    ld c, a
    ld c, [hl]
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_027_5c9c:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_027_5ca1:
    ld d, a
    ld d, [hl]
    ld d, l
    ld [$0808], sp
    ld [$0808], sp
    ld [$2828], sp
    jr z, @+$2a

    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$2b0b], sp
    jr z, @+$2a

    ld [$0b0b], sp
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    jr z, jr_027_5cf3

    dec bc
    dec bc
    dec bc
    ld c, $28
    ld [$0808], sp
    ld [$0808], sp
    ld [$2828], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$2a28], sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$2a28], sp

jr_027_5cf3:
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc l
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    inc c
    inc l
    dec l
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec bc
    inc c
    add hl, bc
    add hl, hl
    inc l
    dec hl
    dec l
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec bc
    dec bc
    dec bc
    inc c
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    inc l
    dec hl
    dec hl
    dec hl
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec hl
    dec hl
    dec hl
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec hl
    dec hl
    dec hl
    dec bc
    dec bc

Jump_027_5d5c:
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec hl
    dec hl
    dec hl
    db $10
    ld de, $1111
    ld de, $1111
    ld de, $0d09
    ld c, $0f
    rlca
    nop
    ld [bc], a
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    ld [de], a
    ld [$0b0a], sp
    inc c
    ld [$0200], sp
    jr jr_027_5da0

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $07
    dec c
    ld c, $0f
    rlca
    nop
    nop
    rra
    ld [hl+], a
    nop
    nop
    nop
    inc hl
    rra
    db $10
    ld de, $1111
    add hl, bc
    nop

jr_027_5da0:
    ld bc, $0120
    ld h, $27
    jr z, @+$05

    jr nz, @+$03

    ld bc, $0101
    inc bc
    ld bc, $2000
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    ld [bc], a
    jr nz, jr_027_5db7

jr_027_5db7:
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    jr nz, jr_027_5de3

    inc l
    dec l
    ld l, $25
    jr nz, jr_027_5dc5

jr_027_5dc5:
    ld d, d
    ld d, e
    ld d, h
    ld [bc], a
    nop
    ld c, h
    ld hl, $302f
    ld sp, $3332
    ld hl, $554d
    ld d, [hl]
    ld d, a
    ld e, b
    inc b
    ld c, [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    ld [hl], $35
    dec [hl]
    scf
    ld c, [hl]
    ld e, c
    ld e, d

jr_027_5de3:
    dec [hl]
    scf
    dec b
    jr c, jr_027_5e21

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld c, a
    ld e, e
    ld e, h
    ld e, l
    ccf
    ld b, $40
    ld b, c
    ld b, d
    ld b, e
    inc a
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, b
    ld e, [hl]
    ld e, a
    ld h, b
    ld b, [hl]
    ld h, e
    ld b, a
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, e
    ld d, c
    ld h, c
    ld h, d
    ld c, c
    ld c, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l

jr_027_5e21:
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    inc c
    inc c
    inc c
    ld [$0808], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc l
    jr z, jr_027_5e50

    inc c
    inc c
    ld [$0808], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_027_5e50:
    ld [$0c0c], sp
    inc c
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0908], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    dec bc
    ld [$0a0b], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$090c], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0302], sp
    inc hl
    rlca
    inc h
    dec h
    ld [hl+], a
    ld [hl+], a
    ld h, $35
    rlca
    dec [hl]
    inc bc
    ld [bc], a
    nop
    ld bc, $1733
    inc sp
    inc [hl]
    ld [hl-], a
    ld [hl-], a
    ld [hl], $08
    rla
    ld [$0001], sp
    db $10
    ld de, $2712
    inc de
    inc d
    dec d
    ld d, $13
    inc d
    daa
    ld [de], a
    ld de, $2010
    ld hl, $3709
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec bc
    ld a, [bc]
    scf
    add hl, bc
    ld hl, $3020
    ld sp, $1918
    ld a, [de]
    dec de
    inc e
    dec e
    dec de
    ld a, [de]
    add hl, de
    jr jr_027_5f66

    jr nc, jr_027_5f37

jr_027_5f37:
    ld bc, $0f0e
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $1000
    ld de, $1f1e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld de, $2010
    ld hl, $2928
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    jr z, jr_027_5f80

    jr nz, jr_027_5f91

    ld sp, $3938
    ld a, [hl-]
    dec sp

jr_027_5f66:
    inc a
    dec a
    dec sp
    ld a, $39
    jr c, jr_027_5f9e

    jr nc, jr_027_5f6f

jr_027_5f6f:
    inc b
    ld a, [hl+]
    dec hl
    ld a, a
    ld a, a
    inc l
    dec l
    ld a, a
    ld a, a
    dec hl
    ld a, [hl+]
    inc b
    nop
    dec b
    ld b, $3f
    ld a, [hl+]

jr_027_5f80:
    ld a, a
    ld a, a
    ld l, $2f
    ld a, a
    ld a, a
    ld a, [hl+]
    ccf
    ld b, $05
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_027_5f91:
    ld b, a
    ld c, b
    ld c, c
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ld a, a
    ccf
    ld a, [hl+]
    ld a, a
    ld a, a
    ld a, a

jr_027_5f9e:
    ld l, $4a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl+]
    ccf
    ld a, a
    ld a, [hl+]
    dec hl
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, $4b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec hl
    ld a, [hl+]
    add hl, bc
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [hl+]
    dec bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [hl+]
    dec bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    ld [$080a], sp
    ld [$0a0a], sp
    ld [$2a08], sp
    jr z, @+$2b

    add hl, hl
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2929], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2929], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    jr z, @+$2b

    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    jr z, jr_027_605a

    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    jr z, jr_027_6068

    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0868], sp
    ld [$0808], sp
    ld [$4808], sp
    jr z, jr_027_6076

    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2828], sp

jr_027_605a:
    jr z, @+$0a

    ld [$6808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$4808], sp

jr_027_6068:
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_027_6076:
    jr z, jr_027_60a0

    ld [bc], a
    inc bc
    inc hl
    rlca
    inc h
    dec h
    ld [hl+], a
    ld [hl+], a
    ld h, $35
    rlca
    dec [hl]
    inc bc
    ld [bc], a
    nop
    ld bc, $5251
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld bc, $1000
    ld de, $6261
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h

jr_027_60a0:
    ld de, $2010
    ld hl, $5857
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, h
    ld hl, $3020
    ld sp, $6867
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, e
    ld sp, $0030
    ld bc, $7271
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    halt
    ld bc, $1000
    ld de, $7c7b
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld de, $2010
    ld hl, $8382
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc b
    add a
    ld hl, $3020
    ld sp, $3938
    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec sp
    ld a, $39
    jr c, jr_027_6126

    jr nc, jr_027_60f7

jr_027_60f7:
    inc b
    ld a, [hl+]
    dec hl
    ld a, a
    ld a, a
    inc l
    dec l
    ld a, a
    ld a, a
    dec hl
    ld a, [hl+]
    inc b
    nop
    dec b
    ld b, $3f
    ld a, [hl+]
    ld a, a
    ld a, a
    ld l, $2f
    ld a, a
    ld a, a
    ld a, [hl+]
    ccf
    ld b, $05
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ld a, a
    ccf
    ld a, [hl+]
    ld a, a
    ld a, a
    ld a, a

jr_027_6126:
    ld l, $4a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl+]
    ccf
    ld a, a
    ld a, [hl+]
    dec hl
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, $4b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec hl
    ld a, [hl+]
    add hl, bc
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [hl+]
    dec bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc l
    inc l
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    jr z, jr_027_61e2

    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    jr z, jr_027_61f0

    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0868], sp
    ld [$0808], sp
    ld [$4808], sp
    jr z, jr_027_61fe

    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2828], sp

jr_027_61e2:
    jr z, @+$0a

    ld [$6808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$4808], sp

jr_027_61f0:
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_027_61fe:
    jr z, jr_027_6228

    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    rst RST_38
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $0a
    rst RST_38
    dec bc
    inc c
    rla
    jr jr_027_6238

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_027_6231

    rst RST_38

jr_027_6228:
    dec bc
    inc c
    ld hl, $2322
    inc h
    dec h
    ld h, $27

jr_027_6231:
    jr z, jr_027_625c

    ld a, [hl+]
    ld a, [bc]
    rst RST_38
    dec hl
    add hl, hl

jr_027_6238:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_027_626f

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_627c

    add hl, sp
    ld a, [hl-]
    add hl, sp
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld sp, $3131
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_027_625c:
    ld c, e
    ld c, h
    ld sp, $4d31
    ld c, [hl]
    ld sp, $3131
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld sp, $5631

jr_027_626f:
    ld d, a
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld h, b

jr_027_627c:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld sp, $3131
    ld sp, $7877
    ld sp, $7b7a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, c
    ld sp, $3131
    ld sp, $3179
    ld sp, $8180
    add d
    add e
    add h
    add l
    ld a, c
    ld sp, $3131
    ld sp, $3179
    ld sp, $8786
    adc b
    adc c
    adc d
    adc e
    ld a, c
    ld sp, $3131
    ld sp, $3179
    ld sp, $0b0b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    ld [$0b08], sp
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0b0b], sp
    add hl, bc
    add hl, bc
    ld [$0a08], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0b0b], sp
    dec c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    jr z, @+$0a

    ld [$0808], sp
    ld [$090c], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$090c], sp
    ld c, $0e
    ld [$0808], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c
    dec c
    dec c
    ld [$0808], sp
    dec c
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    inc c
    add hl, bc
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    jr z, jr_027_636e

    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c

jr_027_636e:
    inc c
    inc c
    inc c
    inc c
    jr z, jr_027_637c

    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c

jr_027_637c:
    inc c
    inc c
    inc c
    inc c
    jr z, jr_027_638a

    ld [$0808], sp
    ld [$0808], sp
    ld a, a
    ld a, a

jr_027_638a:
    ld a, a
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $0f
    rrca
    rrca
    rrca
    ld a, a
    ld a, a
    ld a, a
    nop
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    rrca
    rrca
    rrca
    rrca
    dec c
    ld c, $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    rrca
    rrca
    rrca
    rrca
    jr jr_027_63c3

    rrca
    rrca
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $0f
    rrca
    rrca
    rrca
    rra
    jr nz, jr_027_63e3

jr_027_63c3:
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_027_63ec

    jr nz, @-$64

    sbc c
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_027_6409

    ld [hl-], a
    inc sp
    inc [hl]
    sbc c
    sbc c
    dec [hl]
    ld [hl], $37
    jr c, jr_027_641b

    ld a, [hl-]

jr_027_63e3:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    sbc c
    sbc c
    ld b, c

jr_027_63ec:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    sbc c
    sbc c
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    sbc c
    ld e, d
    ld e, e

jr_027_6409:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    sbc c
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

jr_027_641b:
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    sbc c
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    sbc c
    sbc c
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    sbc c
    sbc c
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    inc b
    inc b
    inc b
    inc c
    dec c
    ld [$0808], sp
    ld [$0c0d], sp
    inc c
    inc c
    inc c
    inc b
    inc b
    inc b
    inc c
    dec c
    ld [$0808], sp
    ld [$0c0d], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld c, $0e
    ld c, $0c
    inc c
    ld c, $0b
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld c, $0c
    inc c
    ld c, $0b
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld c, $0c
    inc c
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0c
    inc c
    ld c, $0b
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld c, $0e
    dec bc
    ld c, $0c
    ld c, $0b
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld c, $0e
    dec bc
    ld c, $0c
    inc c
    ld c, $0b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld c, $0e
    dec bc
    ld c, $0c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    dec bc
    ld c, $00
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld a, e
    ld a, h
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld a, l
    ld a, [hl]
    inc c
    adc d
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    add b
    ld de, $1312
    inc d
    dec d
    ld d, $01
    ld bc, $0101
    ld bc, $8101
    add d
    rla
    jr jr_027_655e

    ld a, [de]
    dec de
    inc e
    rra
    dec e
    ld e, $1f
    jr nz, jr_027_656f

    add e
    add h
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_027_6581

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_027_655e:
    jr nc, jr_027_6591

    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_65a4

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_027_656f:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $22
    ld [hl+], a
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, [hl]

jr_027_6581:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_027_6591:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, h
    ld e, l
    ld [hl+], a
    ld [hl+], a
    ld e, [hl]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld e, a

jr_027_65a4:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld [hl+], a
    ld [hl+], a
    ccf
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ccf
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld [hl+], a
    ld [hl+], a
    ccf
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ccf
    ld [hl], b
    ld [hl], c
    ld h, b
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl+], a
    ld [hl+], a
    ccf
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ccf
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    ld [$0808], sp
    ld [$0b0b], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    ld [$0a08], sp
    ld a, [bc]
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    ld [$0a08], sp
    ld a, [bc]
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    dec c
    ld [$0808], sp
    ld [$0b0a], sp
    dec bc
    ld [$0808], sp
    ld [$0c0c], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$090c], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$090c], sp
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c

jr_027_666b:
    inc c
    inc c
    inc c
    ld [$2808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$2808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$2808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    ld a, a
    ld a, a
    ld a, a
    rrca
    rrca
    rrca
    rrca
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    nop
    ld a, a
    ld a, a
    ld a, a
    rrca
    rrca
    rrca
    rrca
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    ld de, $0e10
    dec c
    rrca
    rrca
    rrca
    rrca
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $0f
    rrca
    rrca
    jr jr_027_666b

    jr nz, jr_027_66f3

    jr z, @+$24

    inc hl
    inc h
    dec h
    ld h, $27
    ld hl, $2020
    rra
    sbc c
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_027_6719

    ld [hl-], a
    inc sp
    inc [hl]
    sbc c
    sbc c
    dec [hl]
    ld [hl], $37
    jr c, jr_027_672b

    ld a, [hl-]

jr_027_66f3:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    sbc c
    sbc c
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    sbc c
    sbc c
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    sbc c
    ld e, d
    ld e, e

jr_027_6719:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    sbc c
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

jr_027_672b:
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    sbc c
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    sbc c
    sbc c
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    sbc c
    sbc c
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    inc c
    inc c
    inc c
    inc c
    dec c
    ld [$0808], sp
    ld [$2c0d], sp
    inc h
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    dec c
    ld [$0808], sp
    ld [$2c0d], sp
    inc b
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    inc l
    inc l
    inc l
    inc l
    inc c
    inc c
    inc c
    inc c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    inc c
    inc c
    inc c
    inc l
    inc l
    inc l
    inc c
    inc l
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $2c
    inc c
    inc c
    inc l
    inc l
    ld c, $0e
    ld c, $0b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld c, $0e
    ld c, $2c
    inc c
    ld c, $0b
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld c, $0c
    inc c
    ld c, $0b
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld c, $0c
    inc c
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0c
    inc c
    ld c, $0b
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld c, $0e
    dec bc
    ld c, $0c
    ld c, $0b
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld c, $0e
    dec bc
    ld c, $0c
    inc c
    ld c, $0b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld c, $0e
    dec bc
    ld c, $0c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    dec bc
    ld c, $02
    inc bc
    inc hl
    rlca
    inc h
    dec h
    ld [hl+], a
    ld [hl+], a
    ld h, $35
    rlca
    dec [hl]
    inc bc
    ld [bc], a
    nop
    ld bc, $1733
    inc sp
    inc [hl]
    ld [hl-], a
    ld [hl-], a
    ld [hl], $08
    rla
    ld [$0001], sp
    db $10
    ld de, $2712
    inc de
    inc d
    dec d
    ld d, $13
    inc d
    daa
    ld [de], a
    ld de, $2010
    ld hl, $3709
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec bc
    ld a, [bc]
    scf
    add hl, bc
    ld hl, $3020
    ld sp, $1918
    ld a, [de]
    dec de
    inc e
    dec e
    dec de
    ld a, [de]
    add hl, de
    jr jr_027_6896

    jr nc, jr_027_6867

jr_027_6867:
    ld bc, $0f0e
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $1000
    ld de, $1f1e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld de, $2010
    ld hl, $2928
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    jr z, jr_027_68b0

    jr nz, jr_027_68c1

    ld sp, $3938
    ld a, [hl-]
    dec sp

jr_027_6896:
    inc a
    dec a
    dec sp
    ld a, $39
    jr c, jr_027_68ce

    jr nc, jr_027_689f

jr_027_689f:
    inc b
    ld a, [hl+]
    dec hl
    ld a, a
    ld a, a
    inc l
    dec l
    ld a, a
    ld a, a
    dec hl
    ld a, [hl+]
    inc b
    nop
    dec b
    ld b, $3f
    ld a, [hl+]

jr_027_68b0:
    ld a, a
    ld a, a
    ld l, $2f
    ld a, a
    ld a, a
    ld a, [hl+]
    ccf
    ld b, $05
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_027_68c1:
    ld b, a
    ld c, b
    ld c, c
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ld a, a
    ccf
    ld a, [hl+]
    ld a, a
    ld a, a
    ld a, a

jr_027_68ce:
    ld l, $4a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl+]
    ccf
    ld a, a
    ld a, [hl+]
    dec hl
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, $4b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec hl
    ld a, [hl+]
    add hl, bc
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [hl+]
    dec bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [hl+]
    dec bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    ld [$080a], sp
    ld [$0a0a], sp
    ld [$2a08], sp
    jr z, @+$2b

    add hl, hl
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2929], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2929], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    jr z, @+$2b

    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    jr z, jr_027_698a

    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    jr z, jr_027_6998

    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0868], sp
    ld [$0808], sp
    ld [$4808], sp
    jr z, jr_027_69a6

    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2828], sp

jr_027_698a:
    jr z, @+$0a

    ld [$6808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$4808], sp

jr_027_6998:
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_027_69a6:
    jr z, jr_027_69d0

    ld [bc], a
    inc bc
    inc hl
    rlca
    inc h
    dec h
    ld [hl+], a
    ld [hl+], a
    ld h, $35
    rlca
    dec [hl]
    inc bc
    ld [bc], a
    nop
    ld bc, $5251
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld bc, $1000
    ld de, $6261
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h

jr_027_69d0:
    ld de, $2010
    ld hl, $5857
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, h
    ld hl, $3020
    ld sp, $6867
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, e
    ld sp, $0030
    ld bc, $7271
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    halt
    ld bc, $1000
    ld de, $7c7b
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld de, $2010
    ld hl, $8382
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc b
    add a
    ld hl, $3020
    ld sp, $3938
    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec sp
    ld a, $39
    jr c, jr_027_6a56

    jr nc, jr_027_6a27

jr_027_6a27:
    inc b
    ld a, [hl+]
    dec hl
    ld a, a
    ld a, a
    inc l
    dec l
    ld a, a
    ld a, a
    dec hl
    ld a, [hl+]
    inc b
    nop
    dec b
    ld b, $3f
    ld a, [hl+]
    ld a, a
    ld a, a
    ld l, $2f
    ld a, a
    ld a, a
    ld a, [hl+]
    ccf
    ld b, $05
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ld a, a
    ccf
    ld a, [hl+]
    ld a, a
    ld a, a
    ld a, a

jr_027_6a56:
    ld l, $4a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl+]
    ccf
    ld a, a
    ld a, [hl+]
    dec hl
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, $4b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec hl
    ld a, [hl+]
    add hl, bc
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [hl+]
    dec bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc l
    inc l
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    jr z, jr_027_6b12

    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    jr z, jr_027_6b20

    add hl, hl
    add hl, bc
    add hl, bc
    ld [$0868], sp
    ld [$0808], sp
    ld [$4808], sp
    jr z, jr_027_6b2e

    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2828], sp

jr_027_6b12:
    jr z, @+$0a

    ld [$6808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$4808], sp

jr_027_6b20:
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_027_6b2e:
    jr z, jr_027_6b58

    nop
    ld bc, $0908
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$2928], sp
    ld a, [hl+]
    dec hl
    nop
    ld bc, $0c08
    nop
    dec c
    dec c
    nop
    inc c
    ld [$2524], sp
    ld h, $27
    nop
    ld bc, $0f0e
    db $10
    ld de, $1312
    rrca
    ld c, $28
    add hl, hl

jr_027_6b58:
    ld a, [hl+]
    dec hl
    ld [bc], a
    inc bc
    inc d
    dec d
    rst RST_38
    ld d, $16
    rst RST_38
    dec d
    inc d
    inc l
    dec l
    ld l, $2f
    inc b
    dec b
    rla
    jr @+$01

    add hl, de
    add hl, de
    rst RST_38
    jr @+$19

    jr nc, jr_027_6ba7

    ld l, e
    ld l, h
    nop
    ld bc, $1b1a
    rst RST_38
    inc e
    inc e
    rst RST_38
    dec de
    ld a, [de]
    ld sp, $6d33
    ld l, [hl]
    nop
    ld bc, $1d1a
    ld e, $1f
    rra
    ld e, $1d
    ld a, [de]
    ld sp, $6d33
    ld l, [hl]
    ld b, $07
    jr nz, jr_027_6bb7

    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld hl, $3220
    inc sp
    inc [hl]
    dec [hl]
    ld h, h
    ccf
    ld a, $3d
    inc a
    dec sp
    dec sp

jr_027_6ba7:
    inc a
    dec a
    ld a, $3f
    ld [hl], $37
    scf
    ld e, e
    ld b, h
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ld b, b
    ld b, c
    ld b, d

jr_027_6bb7:
    ld b, e
    ld b, h
    jr c, jr_027_6bf4

    ld a, [hl-]
    ld d, b
    ld c, c
    ld c, b
    ld b, a
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld c, h
    ld c, e
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, e
    ld c, h
    ld d, e
    ld d, h
    ld d, l
    ld e, b
    ld d, a
    ld d, [hl]
    ld c, a
    ld c, [hl]
    ld c, l
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld h, c
    ld h, b
    ld e, a
    ld e, [hl]
    ld e, l
    ld e, h
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e

jr_027_6bf4:
    ld [$0808], sp
    ld [$0808], sp
    jr z, jr_027_6c24

    jr z, jr_027_6c26

    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    jr z, jr_027_6c32

    jr z, jr_027_6c34

    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    jr z, jr_027_6c26

    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0800], sp

jr_027_6c24:
    jr z, jr_027_6c26

jr_027_6c26:
    jr z, jr_027_6c50

    ld [$0e0e], sp
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc

jr_027_6c32:
    add hl, hl
    nop

jr_027_6c34:
    add hl, hl
    add hl, hl
    add hl, bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    add hl, hl
    nop
    add hl, hl
    add hl, hl
    add hl, bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl

jr_027_6c50:
    add hl, hl
    add hl, hl
    add hl, bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec bc
    dec bc
    add hl, bc
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    inc l
    inc l
    inc l
    inc l
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    ld bc, $160b
    rla
    jr jr_027_6cd8

    ld a, [de]
    rla
    jr @+$25

    rrca
    ld [bc], a
    nop
    inc bc
    inc b
    inc c
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_027_6cf1

    ld [hl+], a
    ld de, $0605
    ld c, d
    ld c, e
    dec c
    inc h

jr_027_6cd8:
    dec h
    ld h, $27
    daa
    ld h, $25
    inc h
    ld [de], a
    ld c, e
    ld c, d
    sub c
    sub d
    dec c
    jr z, jr_027_6d10

    ld a, [hl+]
    dec hl
    dec hl
    ld a, [hl+]
    add hl, hl
    jr z, jr_027_6cfb

    sbc l
    sbc [hl]
    sub e

jr_027_6cf1:
    sub h
    ld c, $2c
    dec l
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    dec l
    inc l

jr_027_6cfb:
    dec c
    sbc a
    and b
    sub l
    sub [hl]
    rrca
    ld l, $2f
    add c
    add d
    add e
    add h
    cpl
    ld l, $0d
    and c
    and d
    rlca
    ld [$300f], sp

jr_027_6d10:
    ld sp, $8685
    add a
    adc b
    ld sp, $1330
    add hl, bc
    ld a, [bc]
    nop
    ld bc, $3210
    inc sp
    adc c
    adc d
    adc e
    adc h
    inc sp
    ld [hl-], a
    inc d
    ld [bc], a
    nop
    nop
    ld bc, $340d
    ld [hl], $37
    ld b, b
    ld b, c
    inc a
    dec a
    inc [hl]
    dec d
    ld l, l
    nop
    ld c, h
    ld c, l
    ld c, [hl]
    dec [hl]
    jr c, jr_027_6d75

    ld b, d
    ld b, e
    ld a, $3f
    dec [hl]
    ld d, d
    ld d, e
    ld d, h
    ld c, a
    ld d, b
    ld d, c
    ld c, b
    ld a, [hl-]
    dec sp
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, c
    ld d, l
    ld d, [hl]
    ld d, a
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h

jr_027_6d75:
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, bc
    jr z, jr_027_6dce

    inc c
    inc c
    add hl, bc
    ld a, [bc]
    ld [$0909], sp
    add hl, hl
    add hl, hl
    jr z, jr_027_6ddb

    add hl, hl
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec l
    ld a, [hl+]
    add hl, hl
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    ld [$0b0b], sp
    dec bc
    dec bc
    jr z, jr_027_6df7

    add hl, hl

jr_027_6dce:
    inc c
    inc c
    ld [$0908], sp
    ld a, [bc]
    ld [$0b0b], sp
    dec bc
    dec bc
    jr z, jr_027_6e05

jr_027_6ddb:
    add hl, bc
    ld [$0808], sp
    ld [$0a09], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    jr z, jr_027_6e13

    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl

jr_027_6df7:
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl

jr_027_6e05:
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_027_6e13:
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    nop
    ld bc, $0402
    inc b
    xor b
    xor c
    xor d
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    xor e
    xor h
    xor l
    ld b, $05
    inc c
    dec c
    ld c, $0f
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $05
    dec b
    inc d
    dec d
    ld d, $77
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    dec b
    dec b
    db $10
    ld de, $1312
    rla
    jr jr_027_6e91

    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    dec b
    dec e
    ld e, $06
    dec b
    dec b
    ld a, [de]
    dec de
    inc e
    add c
    add d
    add e
    add h
    add l
    rra
    jr nz, jr_027_6eaf

    ld b, $22
    inc hl

jr_027_6e91:
    inc h
    dec h
    ld h, $86
    add a
    adc b
    adc c
    adc d
    daa
    jr z, jr_027_6ec5

    ld b, $27
    ld a, [hl+]
    dec hl
    inc l
    dec l
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld l, $2f
    jr nc, jr_027_6eb1

    ld sp, $3227
    inc sp

jr_027_6eaf:
    inc [hl]
    dec [hl]

jr_027_6eb1:
    ld [hl], $37
    jr c, jr_027_6eee

    ld a, [hl-]
    dec sp
    inc a
    ld b, $3d
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_027_6ec5:
    ld c, c
    ld b, $4a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_027_6eee:
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    dec b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    inc c
    inc c
    inc c
    inc c
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec c
    inc c
    inc c
    inc c
    inc c
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_027_6fac:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $82
    add e
    adc l
    sub h
    sub l
    add d
    ld e, l
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    add d
    add e
    adc l
    sub h
    sub [hl]
    add d
    ld e, l
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    add d
    add e
    adc l
    sub a
    sbc b
    add d
    ld e, l
    dec d
    ld d, $17
    jr jr_027_7010

    ld a, [de]
    dec de
    add h
    add e
    adc [hl]
    sbc c
    sbc d
    add d
    ld e, l
    inc e
    dec e
    ld e, $1f
    jr nz, jr_027_7027

    ld [hl+], a
    add d
    add l
    adc a
    sbc e
    sbc h
    adc d
    adc e
    inc hl
    inc h

jr_027_7010:
    dec h
    ld h, $27
    jr z, jr_027_703e

    add [hl]
    add a
    sub b
    sbc l
    sbc [hl]
    adc h
    ld e, l
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_027_6fac

    adc c
    sub c
    sbc a

jr_027_7027:
    and b
    adc h
    ld e, l
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_706c

    sub d
    and c
    and d
    adc h
    ld e, l
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_027_703e:
    ld b, b
    ld b, c
    ld b, d
    sub e
    and e
    and h
    adc h
    ld e, l
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld c, b
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, l
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h

jr_027_706c:
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld e, l
    ld e, l
    ld e, l
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    dec c
    dec bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    dec c
    dec bc
    ld [$0a08], sp
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld c, $0e
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld c, $0e
    ld [$0808], sp
    ld [$0a0a], sp
    ld [$0a0a], sp
    ld [$0808], sp
    ld c, $0e
    ld [$0808], sp
    ld [$080a], sp
    ld [$0a0a], sp
    ld [$0808], sp
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080c], sp
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    sub [hl]
    nop
    ld bc, $9b02
    sbc e
    ld a, [bc]
    dec bc
    inc c
    sub [hl]
    ld h, h
    ld h, l
    ld h, l
    ld h, l
    sub a
    inc bc
    inc b
    ld [$9d9c], sp
    dec c
    ld c, $0c
    sub a
    ld h, h
    ld h, l
    ld h, l
    ld h, l
    sub a
    inc bc
    dec b
    ld [$9f9e], sp
    rrca
    db $10
    inc c
    sub a
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    sub a
    ld b, $07
    add hl, bc
    and b
    and c
    ld de, $1312
    sbc b
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    sub e
    inc d
    dec d
    ld d, $a2
    and e
    dec e
    ld e, $1f
    sub h
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld l, l
    sbc c
    rla
    jr jr_027_71b3

    and h
    and l
    add hl, de
    jr jr_027_71bf

    sub l
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    sub a
    ld a, [de]
    dec de
    inc e
    and [hl]
    and a
    inc e
    dec de
    ld hl, $7597
    halt
    ld [hl], a
    ld a, b
    sbc b

jr_027_71b3:
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_027_71e4

    sbc b
    ld a, c
    ld a, d
    ld a, e

jr_027_71bf:
    ld a, h
    sbc d
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_027_71fa

    sbc d
    ld a, c
    ld a, l
    ld a, [hl]
    ld a, a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_720f

    ld a, [hl-]
    dec sp
    ld a, c
    add b
    add c
    add d
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_027_71e4:
    ld b, h
    ld b, l
    add e
    add h
    add l
    add [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    add a
    adc b
    adc c
    adc d
    ld d, b
    ld d, c

jr_027_71fa:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    adc e
    adc h
    adc l
    adc [hl]
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_027_720f:
    ld h, e
    adc a
    sub b
    sub c
    sub d
    add hl, bc
    dec c
    ld [$090d], sp
    add hl, hl
    dec c
    ld [$290d], sp
    ld c, $08
    ld [$0908], sp
    dec c
    ld [$090d], sp
    add hl, bc
    dec c
    ld [$290d], sp
    ld c, $08
    ld [$0908], sp
    dec c
    ld [$090d], sp
    add hl, bc
    dec c
    ld [$290d], sp
    ld c, $08
    ld [$0908], sp
    dec c
    ld [$090d], sp
    ld c, $0d
    ld [$290d], sp
    ld c, $08
    ld [$0e08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    ld a, [bc]
    ld c, $0e
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$84a2], sp
    add l
    add [hl]
    and e
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $87a2
    adc b
    adc b
    and e
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_027_7315

    ld a, [de]
    and d
    adc c
    adc d
    adc e
    and e
    ld [de], a
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_027_732b

    ld [hl+], a
    and d
    adc c
    adc h
    adc l
    and e
    ld [de], a
    inc hl
    inc h
    dec h
    dec hl

jr_027_7315:
    ld h, $27
    jr z, jr_027_733b

    and d
    adc c
    adc [hl]
    adc a
    and e
    ld [de], a
    add hl, hl
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $22
    and d
    adc c
    sub b
    sub c

jr_027_732b:
    and e
    ld [de], a
    ld [hl], $37
    jr c, jr_027_736a

    cpl
    jr nc, jr_027_7365

    ld [hl+], a
    and d
    adc c
    adc h
    adc l
    and e
    ld a, [hl-]

jr_027_733b:
    dec sp
    inc a
    dec a
    ld a, $32
    inc sp
    inc [hl]
    dec [hl]
    and d
    adc c
    sub d
    sub e
    and e
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ccf
    and d
    sub l
    sub [hl]
    sub a
    and e
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    ld d, c

jr_027_7365:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_027_736a:
    ld d, a
    ld e, b
    ld e, c
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    add b
    add c
    add d
    add e
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    dec c
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec c
    ld [$0808], sp
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec bc
    ld [$0c0c], sp
    dec bc
    dec c
    ld c, $0e
    ld c, $0d
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec bc
    ld [$0c0c], sp
    dec bc
    dec c
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec bc
    ld [$0c0c], sp
    dec bc
    dec c
    ld c, $08
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec bc
    ld [$0c0a], sp
    dec bc
    dec c
    ld [$0808], sp
    dec c
    inc c
    inc c
    ld [$0b0d], sp
    ld [$0c0a], sp
    dec bc
    dec c
    ld [$0808], sp
    dec c
    inc c
    inc c
    ld [$0b0d], sp
    ld [$0c0c], sp
    dec bc
    dec c
    ld [$0a08], sp
    dec c
    inc c
    inc c
    inc c
    dec c
    dec bc
    ld [$0a0a], sp
    dec bc
    ld [$0a08], sp
    ld [$0808], sp
    inc c
    inc c
    dec c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    ld [$080a], sp
    ld [$0808], sp
    inc c
    inc c
    dec c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    ld [$0808], sp
    ld [$0a08], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    dec [hl]
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst RST_38
    ld [hl], $37
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst RST_38
    jr c, jr_027_7481

    inc b
    inc b

jr_027_7481:
    inc b
    dec b
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    nop
    rst RST_38
    add hl, sp
    inc bc
    ld c, d
    ld c, e
    ld c, h
    ld b, $62
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    rst RST_38
    ld a, [hl-]
    inc bc
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, $62
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    nop
    rst RST_38
    ld a, [hl-]
    inc bc
    ld d, b
    ld d, c
    ld d, d
    ld b, $6d
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    nop
    rst RST_38
    ld a, [hl-]
    inc bc
    ld d, e
    ld d, h
    ld d, l
    rlca
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    nop
    rst RST_38
    ld a, [hl-]
    inc bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld [$7a79], sp
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [de]
    rst RST_38
    ld a, [hl-]
    inc bc
    inc d
    dec d
    ld d, $0c
    nop
    nop
    nop
    nop
    nop
    dec de
    inc e
    rst RST_38
    dec sp
    dec c
    rla
    jr jr_027_74fd

    ld c, $0f
    rrca
    dec e
    ld e, $1f
    jr nz, jr_027_750d

    inc a
    dec a
    db $10
    ld de, $4511
    ld [de], a
    inc de
    inc de
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $40
    ld b, c
    ld b, d

jr_027_74fd:
    ld b, d
    ld b, e
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    daa
    jr z, jr_027_752f

    ld a, [hl+]
    dec hl
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a

jr_027_750d:
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    inc l
    dec l
    ld l, $2f
    jr nc, @+$48

    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, c
    ld c, b
    ld sp, $3332
    inc [hl]
    ld bc, $0a09
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_027_752f:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0a09
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0a09
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld bc, $0a09
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld bc, $0a09
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld bc, $0a09
    dec c
    dec c
    dec c
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld bc, $0a09
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld bc, $0a09
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $01
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $01
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $09
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    ld bc, $0302
    inc b
    dec b
    adc a
    sub b
    ld b, $08
    daa
    daa
    ld a, [hl-]
    dec b
    db $10
    ld de, $1312
    inc d
    dec d
    sub c
    sub d
    ld d, $18
    daa
    daa
    ld a, [hl-]
    dec d
    jr nz, jr_027_7627

    ld [hl+], a
    inc hl
    inc h
    dec h
    sub e
    sub h
    ld h, $27
    daa
    daa
    ld a, [hl-]
    dec h
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    sub [hl]
    rlca
    ld b, $09
    ld a, [bc]
    dec bc
    ld a, [hl-]
    dec [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    sub a

jr_027_7627:
    rla
    ld d, $19
    ld a, [de]
    dec de
    ld a, [hl-]
    ld b, l
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    sub l
    sub h
    ld [hl], $29
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    ld d, l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    inc c
    dec c
    ld c, $0f
    inc l
    dec l
    ld l, $65
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc e
    dec e
    ld e, $1f
    inc a
    dec a
    ld a, $75
    add b
    add c
    add d
    add e
    add h
    add l
    sbc b
    sbc c
    ccf
    ccf
    ccf
    ccf
    cpl
    add l
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, [hl]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, a
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, [hl]
    ld c, l
    ld c, l
    jr z, jr_027_76c3

    add hl, sp
    jr c, jr_027_76b6

    ld c, l
    ld c, l
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld c, l
    ld c, l
    ld c, l
    halt
    ld [hl], a
    ld a, b
    ld [hl], a
    halt
    ld c, l
    ld c, l
    ld l, e
    ld l, h
    ld l, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    add [hl]
    add a
    adc b
    add a
    add [hl]
    ld c, l
    ld c, l
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0d0c], sp
    inc c
    dec c

jr_027_76b6:
    dec c
    dec c
    dec c
    xor b
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0d0c], sp
    inc c

jr_027_76c3:
    dec c
    dec c
    dec c
    dec c
    xor b
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    xor b
    ld [$0808], sp
    ld [$0808], sp
    inc c
    dec c
    inc c
    dec c
    dec c
    dec c
    dec c
    jr z, jr_027_76ed

    ld [$0808], sp
    ld [$0c08], sp
    dec c
    inc c

jr_027_76ed:
    dec c
    add hl, bc
    dec c
    dec c
    jr z, jr_027_76fb

    ld [$0808], sp
    ld [$0d08], sp
    dec c
    dec c

jr_027_76fb:
    dec c
    add hl, bc
    dec c
    dec c
    jr z, jr_027_7709

    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc

jr_027_7709:
    dec bc
    dec bc
    dec bc
    dec bc
    jr z, jr_027_7717

    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    inc c

jr_027_7717:
    inc c
    inc c
    inc c
    inc c
    jr z, jr_027_7725

    ld [$0808], sp
    ld [$0e08], sp
    ld c, $0e

jr_027_7725:
    ld c, $0e
    ld c, $2e
    jr z, jr_027_7733

    ld [$0808], sp
    ld [$0a0e], sp
    ld a, [bc]
    dec bc

jr_027_7733:
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $08
    ld [$0808], sp
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld [$0e08], sp
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld [$0e08], sp
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld [$0e0e], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec c
    ld c, $0e
    rrca
    db $10
    ld d, a
    ld e, b
    ld e, b
    ld de, $1312
    inc d
    inc c
    dec d
    ld d, $17
    jr jr_027_77a4

    db $10
    ld e, c
    ld e, d
    ld e, e
    ld de, $1312
    inc d
    inc c
    add hl, de
    ld a, [de]
    dec de
    dec de
    inc e

jr_027_77a4:
    db $10
    ld e, c
    ld e, h
    ld e, l
    dec e
    ld e, $13
    rra
    jr nz, jr_027_77cf

    dec de
    dec de
    ld [hl+], a
    inc hl
    db $10
    ld e, c
    ld e, [hl]
    ld e, a
    jr z, jr_027_77e1

    ld a, [hl+]
    dec hl
    inc l
    dec de
    dec de
    dec de
    inc h
    dec h
    db $10
    ld h, b
    ld e, l
    ld e, l
    dec l
    ld l, $2f
    jr nc, jr_027_77fa

    ld [hl-], a
    dec de
    dec de
    ld h, $27
    db $10

jr_027_77cf:
    ld h, c
    ld e, d
    ld e, e
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_77f4

    dec de
    dec de
    dec de
    db $10
    ld e, c
    ld e, h
    ld e, l
    add hl, sp

jr_027_77e1:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec de
    dec de
    dec de
    dec de
    dec de
    db $10
    ld e, c
    ld e, [hl]
    ld e, a
    ld a, $3f
    inc de
    ld b, b
    ld b, c
    dec de

jr_027_77f4:
    dec de
    dec de
    ld c, h
    ld c, l
    ld d, [hl]
    ld d, a

jr_027_77fa:
    ld e, b
    ld e, b
    ld b, d
    ld [de], a
    inc de
    inc d
    inc c
    dec de
    ld c, h
    ld c, l
    ld c, [hl]
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld de, $1312
    inc d
    ld b, e
    ld c, l
    ld c, [hl]
    ld d, b
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld de, $4544
    ld b, [hl]
    ld b, a
    ld c, a
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0d08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0d08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0d08], sp
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0d08], sp
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    ld c, $08
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    ld c, $0e
    dec bc
    dec bc
    dec c
    ld [$0d08], sp
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld c, $0b
    dec bc
    dec c
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $08
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    ld c, $08
    ld [$0d08], sp
    dec c
    dec c
    ld c, c
    ld c, c
    ld c, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0d0d], sp
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    rlca
    ld [$beb8], sp
    db $10
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld a, c
    dec d
    dec de
    inc e
    inc e
    add hl, bc
    cp c
    cp a
    ld de, $7a7e
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    dec d
    dec e
    xor c
    xor d
    ld a, [bc]
    cp c
    ret nz

    ld [de], a
    ld a, a
    add b
    add c
    add d
    add e
    add h
    ld d, $1d
    xor e
    xor h
    dec bc
    cp c
    pop bc
    inc de
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    rla
    ld e, $ad
    xor [hl]
    inc c
    cp d
    cp e
    inc d
    adc e
    adc h
    adc l
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    jr jr_027_7969

    xor a
    xor a
    dec c
    cp h
    jp nz, Jump_000_1a19

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld [hl+], a
    jr nz, jr_027_797a

    ld hl, $bc0e
    jp $2423


    inc h
    inc h
    inc h
    inc h
    inc h
    dec h
    ld h, $27
    jr z, jr_027_7978

jr_027_7969:
    cp l
    call nz, Call_027_403f
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    ld b, [hl]
    ld b, a

jr_027_7978:
    ld c, b
    ld c, c

jr_027_797a:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    dec l
    ld l, $2f
    jr nc, jr_027_79ea

    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    inc [hl]
    ld sp, $3332
    ld l, b
    ld h, [hl]
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    inc [hl]
    ld a, $37
    jr c, jr_027_7a0a

    ld l, b
    ld h, a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld [hl], b
    inc [hl]
    add hl, sp
    ld a, [hl-]
    dec sp
    ld l, d
    ld l, c
    ld l, b
    ld l, e
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    dec [hl]
    add hl, sp
    inc a
    dec a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    inc c
    inc c
    inc c
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    inc c
    add hl, bc
    inc c
    add hl, bc
    inc c
    add hl, bc
    add hl, bc

jr_027_79ea:
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    inc c
    add hl, bc
    inc c
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    inc c
    ld a, [bc]
    inc c
    ld [$080c], sp
    ld [$0d0d], sp
    dec c
    dec c

jr_027_7a0a:
    dec c
    dec c
    ld [$090c], sp
    add hl, bc
    ld [$080c], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    ld [$080c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0c0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    dec bc
    dec bc
    dec bc
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    inc c
    dec bc
    dec bc
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld [$0c08], sp
    inc c
    dec bc
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld [$0c08], sp
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    ld [$7978], sp
    ld a, d
    sub a
    nop
    ld bc, $ffff
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld a, e
    ld a, h
    ld a, l
    sbc b
    ld [bc], a
    inc bc
    rst RST_38
    rst RST_38
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld a, [hl]
    ld a, a
    add b
    sbc c
    inc b
    dec b
    rst RST_38
    rst RST_38
    jr z, jr_027_7acf

    ld a, [hl+]
    dec hl
    inc l
    dec l
    add c
    add d
    add e
    sub a
    ld b, $07
    rst RST_38
    rst RST_38
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    add h
    add l
    add [hl]
    sbc b
    ld [$6a09], sp
    ld l, e
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_7aff

    add a
    adc b
    adc c
    sbc c
    ld a, [bc]
    dec bc
    ld l, h
    ld l, l
    ld a, [hl-]

jr_027_7acf:
    dec sp
    inc a
    dec a
    ld a, $3f
    adc d
    add d
    add e
    sub a
    inc c
    dec c
    rst RST_38
    ld l, [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    adc e
    adc h
    adc l
    sbc b
    ld c, $0f
    rst RST_38
    rst RST_38
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    add a
    adc [hl]
    adc a
    sbc c
    db $10
    ld de, $ffff
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    sub b

jr_027_7aff:
    add d
    sub c
    sub a
    ld [de], a
    inc de
    rst RST_38
    rst RST_38
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    sub d
    sub e
    sub h
    sbc b
    inc d
    dec d
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    sub l
    sub [hl]
    adc c
    sbc c
    ld d, $17
    rst RST_38
    ld l, a
    ld [hl], b
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld a, b
    add d
    ld a, d
    sub a
    jr jr_027_7b47

    ld [hl], c
    ld [hl], d
    ld [hl], e
    rst RST_38
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld a, e
    ld a, h
    ld a, l
    sbc b
    ld a, [de]
    dec de
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    add hl, bc
    add hl, bc
    add hl, bc

jr_027_7b47:
    ld [$0a0a], sp
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    nop
    ld c, $08
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    nop
    nop
    ld [$0b08], sp
    dec bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    nop
    nop
    nop
    ld [$0b0b], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    nop
    ld c, $0e
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    ld c, $0e
    ld c, $07
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld [$0e0a], sp
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $0302
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e
    inc b
    dec b
    ld b, $0c
    dec c
    inc c
    dec c
    ld c, $0c
    dec c
    inc c
    dec e
    ld e, $1f
    rlca
    ld [$1209], sp
    inc de
    inc de
    inc de
    ld a, b
    inc de
    inc de
    jr jr_027_7c50

    ld hl, $0f22
    db $10
    ld de, $1514
    dec d
    dec d
    ld a, c
    dec d
    dec d
    add hl, de
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld c, b
    ld c, c
    ld c, d
    ld d, $17
    rla
    ld a, d
    ld a, e
    rla
    rla
    ld a, [de]
    inc h
    dec h
    ld h, $4b
    ld c, h

jr_027_7c50:
    ld c, l
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    jr jr_027_7c82

    ld l, h
    daa
    ld c, [hl]
    ld c, a
    ld d, b
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    add hl, de
    jr z, @+$6f

    daa
    ld c, [hl]
    ld c, a
    ld d, c
    ld d, $17
    rla
    rla
    rla
    rla
    rla
    ld a, [de]
    jr z, @+$70

    daa
    ld c, [hl]
    ld c, a
    ld d, d
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

jr_027_7c82:
    jr jr_027_7cac

    ld l, a
    daa
    ld c, [hl]
    ld c, a
    ld d, e
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    add hl, de
    jr z, jr_027_7d03

    add hl, hl
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, $17
    rla
    rla
    rla
    rla
    rla
    ld a, [de]
    jr z, jr_027_7d12

    ld a, [hl+]
    ld d, a
    ld e, b
    ld e, c
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

jr_027_7cac:
    jr @+$2a

    ld [hl], d
    dec hl
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_7cf5

    ld [hl], e
    inc l
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld [hl], h
    dec l
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld [$0b08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]

jr_027_7cf5:
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]

jr_027_7d03:
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_027_7d12:
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    ld [$0b0b], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_027_7ddb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
