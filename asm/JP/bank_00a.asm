; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    db $10
    ld b, b
    ld d, b
    ld b, b
    sub b
    ld b, b
    ret nc

    ld b, b
    db $10
    ld b, c
    ld d, b
    ld b, c
    sub b
    ld b, c
    ret nc

    ld b, c
    nop
    nop
    ld sp, $5d11
    ld a, $ff
    ld h, a
    ld b, b
    ld l, h
    inc bc
    ld e, c
    ld a, h
    ld a, [hl-]
    rst RST_38
    ld b, a
    nop
    nop
    nop
    inc a
    ld b, b
    ld l, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    inc a
    ld e, l
    ld a, $ff
    ld h, a
    nop
    nop
    ld sp, $5d11
    ld a, $ce
    nop
    nop
    nop
    adc $00
    ld e, l
    ld a, $00
    inc a
    ld h, b
    dec [hl]
    nop
    nop
    ret c

    ld bc, $03df
    nop
    nop
    and b
    ld [hl], $f3
    ld a, a
    ldh [$ff5f], a
    nop
    nop
    ld sp, $5d11
    ld a, $ff
    ld h, a
    ld b, b
    ld l, h
    inc bc
    ld e, c
    ld a, h
    ld a, [hl-]
    rst RST_38
    ld b, a
    nop
    nop
    nop
    inc a
    ld b, b
    ld l, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    inc a
    ld e, l
    ld a, $ff
    ld h, a
    nop
    nop
    ld sp, $5d11
    ld a, $ce
    nop
    nop
    nop
    adc $00
    ld e, l
    ld a, $00
    inc a
    ld h, b
    dec [hl]
    nop
    nop
    ret c

    ld bc, $03df
    nop
    nop
    and b
    ld [hl], $f3
    ld a, a
    ldh [$ff5f], a
    nop
    nop
    ld sp, $5d11
    ld a, $ff
    ld h, a
    ld b, b
    ld l, h
    inc bc
    ld e, c
    ld a, h
    ld a, [hl-]
    rst RST_38
    ld b, a
    nop
    nop
    nop
    inc a
    ld b, b
    ld l, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    inc a
    ld e, l
    ld a, $ff
    ld h, a
    nop
    nop
    ld sp, $5d11
    ld a, $ce
    nop
    nop
    nop
    adc $00
    ld e, l
    ld a, $00
    inc a
    ld h, b
    dec [hl]
    nop
    nop
    ret c

    ld bc, $03df
    nop
    nop
    and b
    ld [hl], $f3
    ld a, a
    ldh [$ff5f], a
    di
    add hl, bc
    ld b, l
    nop
    ld l, b
    nop
    rlc h
    di
    add hl, bc
    nop
    nop
    ld c, h
    nop
    sub h
    nop
    di
    add hl, bc
    ld b, d
    inc h
    ld l, e
    dec l
    ld [hl], e
    ld c, [hl]
    di
    add hl, bc
    nop
    nop
    or h
    nop
    ccf
    ld [bc], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $09f3
    ld b, l
    nop
    ld l, b
    nop
    rlc h
    di
    add hl, bc
    nop
    nop
    ld c, h
    nop
    sub h
    nop
    di
    add hl, bc
    ld b, d
    inc h
    ld l, e
    dec l
    ld [hl], e
    ld c, [hl]
    di
    add hl, bc
    nop
    nop
    or h
    nop
    ccf
    ld [bc], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $09f3
    ld b, l
    nop
    ld l, b
    nop
    rlc h
    di
    add hl, bc
    nop
    nop
    ld c, h
    nop
    sub h
    nop
    di
    add hl, bc
    ld b, d
    inc h
    ld l, e
    dec l
    ld [hl], e
    ld c, [hl]
    di
    add hl, bc
    nop
    nop
    or h
    nop
    ccf
    ld [bc], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $09f3
    ld b, l
    nop
    ld l, b
    nop
    rlc h
    di
    add hl, bc
    nop
    nop
    ld c, h
    nop
    sub h
    nop
    di
    add hl, bc
    ld b, d
    inc h
    ld l, e
    dec l
    ld [hl], e
    ld c, [hl]
    di
    add hl, bc
    nop
    nop
    or h
    nop
    ccf
    ld [bc], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $09f3
    ld b, l
    nop
    ld l, b
    nop
    rlc h
    di
    add hl, bc
    nop
    nop
    ld c, h
    nop
    sub h
    nop
    di
    add hl, bc
    ld b, d
    inc h
    ld l, e
    dec l
    ld [hl], e
    ld c, [hl]
    di
    add hl, bc
    nop
    nop
    or h
    nop
    ccf
    ld [bc], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $e0
    ld a, a
    nop
    nop
    rra
    nop
    cp a
    ld bc, $421e
    ld e, [hl]
    ld b, d
    sbc [hl]
    ld b, d
    sbc $42
    ld e, $43
    ld e, [hl]
    ld b, e
    sbc [hl]
    ld b, e
    ld d, b
    halt
    rst RST_38
    ld a, a
    ld h, c
    ld c, b
    dec h
    ld [hl], l
    rra
    nop
    rst RST_38
    ld a, a
    ld h, c
    ld c, b
    inc b
    ld [hl], l
    rst RST_38
    add hl, sp
    rst RST_38
    ld a, a
    dec e
    nop
    rst RST_38
    nop
    rst RST_38
    add hl, sp
    rst RST_38
    ld a, a
    dec e
    nop
    dec h
    ld [hl], l
    rra
    nop
    rst RST_38
    ld a, a
    rra
    nop
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    cpl
    ld a, [hl]
    rra
    ld b, d
    rra
    ld hl, $78e3
    nop
    nop
    ld sp, $5d11
    ld a, $ff
    ld h, a
    ld b, b
    ld l, h
    inc bc
    ld e, c
    ld a, h
    ld a, [hl-]
    rst RST_38
    ld b, a
    nop
    nop
    nop
    inc a
    ld b, b
    ld l, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    inc a
    ld e, l
    ld a, $ff
    ld h, a
    nop
    nop
    ld sp, $5d11
    ld a, $ce
    nop
    nop
    nop
    adc $00
    ld e, l
    ld a, $00
    inc a
    ld h, b
    dec [hl]
    nop
    nop
    ret c

    ld bc, $03df
    nop
    nop
    and b
    ld [hl], $f3
    ld a, a
    ldh [$ff5f], a
    nop
    nop
    ld sp, $5d11
    ld a, $ff
    ld h, a
    ld b, b
    ld l, h
    inc bc
    ld e, c
    ld a, h
    ld a, [hl-]
    rst RST_38
    ld b, a
    nop
    nop
    nop
    inc a
    ld b, b
    ld l, h
    rst RST_38
    inc bc
    nop
    nop
    nop
    inc a
    ld e, l
    ld a, $ff
    ld h, a
    nop
    nop
    ld sp, $5d11
    ld a, $ce
    nop
    nop
    nop
    adc $00
    ld e, l
    ld a, $00
    inc a
    ld h, b
    dec [hl]
    nop
    nop
    ret c

    ld bc, $03df
    nop
    nop
    and b
    ld [hl], $f3
    ld a, a
    ldh [$ff5f], a

; HUD initialization background palettes: 8 groups of 4 RGB555 colors.
Resource_JP_00a_42de:
    INCBIN "../../res/ui/JP/hud.pal", $0, $2e
jr_00a_430c:
    INCBIN "../../res/ui/JP/hud.pal", $2e, $5
jr_00a_4311:
    INCBIN "../../res/ui/JP/hud.pal", $33, $d

    ld d, b
    halt
    rst RST_38
    ld a, a
    ld h, c
    ld c, b
    dec h
    ld [hl], l
    rra
    nop
    rst RST_38
    ld a, a
    ld h, c
    ld c, b
    inc b
    ld [hl], l
    rst RST_38
    add hl, sp
    rst RST_38
    ld a, a
    dec e
    nop
    rst RST_38
    nop
    rst RST_38
    add hl, sp
    rst RST_38
    ld a, a
    dec e

jr_00a_433b:
    nop
    dec h
    ld [hl], l
    rra
    nop
    rst RST_38
    ld a, a
    rra
    nop
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    cpl
    ld a, [hl]
    rra
    ld b, d
    rra
    ld hl, $78e3
    nop
    nop
    ld sp, $f746
    ld e, [hl]
    nop
    ld d, $00
    nop
    rst RST_28
    dec a
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    nop
    nop
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    inc e
    nop
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    rst RST_38
    ld a, a
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    ld sp, $0000
    ld d, $ff
    inc bc
    rst RST_38
    ld a, a
    ld sp, $f746
    ld e, [hl]
    nop
    ld d, $00
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld e, a
    inc bc
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    ld a, a
    inc bc
    rra
    nop
    nop
    ld a, h
    nop
    nop
    dw PalC1_B00 ; $00
    dw PalC1_B01 ; $01
    dw PalC1_B02 ; $02
    dw PalC1_B03 ; $03
    dw PalC1_B04 ; $04
    dw PalC1_B05 ; $05
    dw PalC1_B06 ; $06
    dw PalC1_B07 ; $07
    dw PalC1_B08 ; $08
    dw PalC1_B09 ; $09
    dw PalC1_B0A ; $0a
    dw PalC1_B0B ; $0b
    dw PalC1_B0C ; $0c
    dw PalC1_B0D ; $0d
    dw PalC1_B0E ; $0e
    dw PalC1_B0F ; $0f
    dw PalC1_B10 ; $10
    dw PalC1_B11 ; $11
    dw PalC1_B12 ; $12
    dw PalC1_B13 ; $13
    dw PalC1_B14 ; $14
    dw PalC1_B15 ; $15
    dw PalC1_B16 ; $16
    dw PalC1_B17 ; $17
    dw PalC1_B18 ; $18
    dw PalC1_B19 ; $19
    dw PalC1_B1A ; $1a
    dw PalC1_B1B ; $1b
    dw PalC1_B1C ; $1c
    dw PalC1_B1D ; $1d
    dw PalC1_B1E ; $1e
    dw PalC1_B1F ; $1f
    dw PalC1_B20 ; $20
    dw PalC1_B21 ; $21
    dw PalC1_B22 ; $22
    dw PalC1_B23 ; $23
    dw PalC1_B24 ; $24
    dw PalC1_B25 ; $25
    dw PalC1_B26 ; $26
    dw PalC1_B27 ; $27
    dw PalC1_B28 ; $28
    dw PalC1_B29 ; $29
    dw PalC1_B2A ; $2a
    dw PalC1_B2B ; $2b
    dw PalC1_B2C ; $2c
    dw PalC1_B2D ; $2d
    dw PalC1_B2E ; $2e
    dw PalC1_B2F ; $2f
    dw PalC1_B30 ; $30
    dw PalC1_B31 ; $31
    dw PalC1_B32 ; $32
    dw PalC1_B33 ; $33
    dw PalC1_B34 ; $34
    dw PalC1_B35 ; $35
    dw PalC1_B36 ; $36
    dw PalC1_B37 ; $37
    dw PalC1_B38 ; $38
    dw PalC1_B39 ; $39
    dw PalC1_B3A ; $3a
    dw PalC1_B3B ; $3b
    dw PalC1_B3C ; $3c
    dw PalC1_B3D ; $3d
    dw PalC1_B3E ; $3e
    dw PalC1_B3F ; $3f
    dw PalC1_B40 ; $40
    dw PalC1_B41 ; $41
    dw PalC1_B42 ; $42
    dw PalC1_B43 ; $43
    dw PalC1_B44 ; $44
    dw PalC1_B45 ; $45
    dw PalC1_B46 ; $46
    dw PalC1_B47 ; $47
    dw PalC1_B48 ; $48
    dw PalC1_B49 ; $49
    dw PalC1_B4A ; $4a
    dw PalC1_B4B ; $4b
    dw PalC1_B4C ; $4c
    dw PalC1_B4D ; $4d
    dw PalC1_B4E ; $4e
    dw PalC1_B4F ; $4f
    dw PalC1_B50 ; $50
    dw PalC1_B51 ; $51
    dw PalC1_B52 ; $52
    dw PalC1_B53 ; $53
    dw PalC1_B54 ; $54
    dw PalC1_B55 ; $55

PalC1_B00:
    INCBIN "../../res/scene/case1/common/pb00.pal", $0, $2e
jr_00a_44b8:
    INCBIN "../../res/scene/case1/common/pb00.pal", $2e, $5
jr_00a_44bd:
    INCBIN "../../res/scene/case1/common/pb00.pal", $33, $d

PalC1_B01:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.pal", $0, $e
jr_00a_44d8:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.pal", $e, $f
jr_00a_44e7:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.pal", $1d, $23

PalC1_B02:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-bg.pal", $0, $e
jr_00a_4518:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-bg.pal", $e, $32

PalC1_B03:
    INCBIN "../../res/scene/case1/common/pb03.pal", $0, $40

PalC1_B04:
    INCBIN "../../res/scene/case1/common/pb04.pal", $0, $b
jr_00a_4595:
    INCBIN "../../res/scene/case1/common/pb04.pal", $b, $27
jr_00a_45bc:
    INCBIN "../../res/scene/case1/common/pb04.pal", $32, $e

PalC1_B05:
    INCBIN "../../res/scene/case1/common/pb05.pal", $0, $b
jr_00a_45d5:
    INCBIN "../../res/scene/case1/common/pb05.pal", $b, $33
Jump_00a_4608:
    INCBIN "../../res/scene/case1/common/pb05.pal", $3e, $2

PalC1_B06:
    INCBIN "../../res/scene/case1/common/pb06.pal", $0, $40

PalC1_B07:
    INCBIN "../../res/scene/case1/common/pb07.pal", $0, $19
jr_00a_4663:
    INCBIN "../../res/scene/case1/common/pb07.pal", $19, $20
jr_00a_4683:
    INCBIN "../../res/scene/case1/common/pb07.pal", $39, $7

PalC1_B08:
    INCBIN "../../res/scene/case1/common/pb08.pal", $0, $40

PalC1_B09:
    INCBIN "../../res/scene/case1/common/pb09.pal", $0, $31
jr_00a_46fb:
    INCBIN "../../res/scene/case1/common/pb09.pal", $31, $f

PalC1_B0A:
    INCBIN "../../res/scene/case1/common/pb0a.pal", $0, $29
jr_00a_4733:
    INCBIN "../../res/scene/case1/common/pb0a.pal", $29, $1
jr_00a_4734:
    INCBIN "../../res/scene/case1/common/pb0a.pal", $2a, $f
jr_00a_4743:
    INCBIN "../../res/scene/case1/common/pb0a.pal", $39, $7
jr_00a_474a:

PalC1_B0B:
    INCBIN "../../res/scene/case1/common/pb0b.pal", $0, $40

PalC1_B0C:
    INCBIN "../../res/scene/case1/common/pb0c.pal", $0, $40

PalC1_B0D:
    INCBIN "../../res/scene/case1/common/pb0d.pal", $0, $36
jr_00a_4800:
    INCBIN "../../res/scene/case1/common/pb0d.pal", $36, $a

PalC1_B0E:
    INCBIN "../../res/scene/case1/common/pb0e.pal", $0, $40

PalC1_B0F:
    INCBIN "../../res/scene/case1/common/pb0f.pal", $0, $40

PalC1_B10:
    INCBIN "../../res/scene/case1/common/pb10.pal", $0, $40

PalC1_B11:
    INCBIN "../../res/scene/case1/common/pb11.pal", $0, $40

PalC1_B12:
    INCBIN "../../res/scene/case1/common/pb12.pal", $0, $40

PalC1_B13:
    INCBIN "../../res/scene/case1/common/pb13.pal", $0, $9
jr_00a_4953:
    INCBIN "../../res/scene/case1/common/pb13.pal", $9, $37

PalC1_B14:
    INCBIN "../../res/scene/case1/40-joes-street/s40-bg.pal", $0, $31
jr_00a_49bb:
    INCBIN "../../res/scene/case1/40-joes-street/s40-bg.pal", $31, $f

PalC1_B15:
    INCBIN "../../res/scene/case1/common/pb15.pal", $0, $40

PalC1_B16:
    INCBIN "../../res/scene/case1/43-mercedes-trunk/s43-bg.pal", $0, $40

PalC1_B17:
    INCBIN "../../res/scene/case1/44-sternwood-trunk/s44-bg.pal", $0, $7
jr_00a_4a51:
    INCBIN "../../res/scene/case1/44-sternwood-trunk/s44-bg.pal", $7, $39

PalC1_B18:
    INCBIN "../../res/scene/case1/45-newsstand/s45-bg.pal", $0, $5
jr_00a_4a8f:
    INCBIN "../../res/scene/case1/45-newsstand/s45-bg.pal", $5, $3b

PalC1_B19:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.pal", $0, $31
jr_00a_4afb:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.pal", $31, $b
jr_00a_4b06:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.pal", $3c, $4

PalC1_B1A:
    INCBIN "../../res/scene/case1/common/pb1a.pal", $0, $40

PalC1_B1B:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.pal", $0, $31
jr_00a_4b7b:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.pal", $31, $f

PalC1_B1C:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.pal", $0, $b
jr_00a_4b95:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.pal", $b, $4
jr_00a_4b99:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.pal", $f, $31

PalC1_B1D:
    INCBIN "../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.pal", $0, $40

PalC1_B1E:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.pal", $0, $12
jr_00a_4c1c:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.pal", $12, $1f
jr_00a_4c3b:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.pal", $31, $f

PalC1_B1F:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $0, $f
jr_00a_4c59:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $f, $2
jr_00a_4c5b:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $11, $8
jr_00a_4c63:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $19, $6
jr_00a_4c69:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $1f, $14
jr_00a_4c7d:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $33, $d

PalC1_B20:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.pal", $0, $3b
jr_00a_4cc5:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.pal", $3b, $5

PalC1_B21:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.pal", $0, $13
jr_00a_4cdd:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.pal", $13, $8
jr_00a_4ce5:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.pal", $1b, $25

PalC1_B22:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.pal", $0, $18
jr_00a_4d22:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.pal", $18, $19
jr_00a_4d3b:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.pal", $31, $f

PalC1_B23:
    INCBIN "../../res/scene/case1/common/pb23.pal", $0, $40

PalC1_B24:
    INCBIN "../../res/scene/case1/53-drunkard/s53-bg.pal", $0, $40

PalC1_B25:
    INCBIN "../../res/scene/case1/54-mugger/s54-bg.pal", $0, $40

PalC1_B26:
    INCBIN "../../res/scene/case1/55-sugar-shack/s55-bg.pal", $0, $40

PalC1_B27:
    INCBIN "../../res/scene/case1/56-sugar-shack/s56-bg.pal", $0, $40

PalC1_B28:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.pal", $0, $9
jr_00a_4e93:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.pal", $9, $20
jr_00a_4eb3:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.pal", $29, $1
jr_00a_4eb4:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.pal", $2a, $2
jr_00a_4eb6:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.pal", $2c, $8
jr_00a_4ebe:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.pal", $34, $c

PalC1_B29:
    INCBIN "../../res/scene/case1/common/pb29.pal", $0, $40

PalC1_B2A:
    INCBIN "../../res/scene/case1/common/pb2a.pal", $0, $40

PalC1_B2B:
    INCBIN "../../res/scene/case1/common/pb2b.pal", $0, $2e
jr_00a_4f78:
    INCBIN "../../res/scene/case1/common/pb2b.pal", $2e, $12

PalC1_B2C:
    INCBIN "../../res/scene/case1/common/pb2c.pal", $0, $2b
jr_00a_4fb5:
    INCBIN "../../res/scene/case1/common/pb2c.pal", $2b, $10
jr_00a_4fc5:
    INCBIN "../../res/scene/case1/common/pb2c.pal", $3b, $5

PalC1_B2D:
    INCBIN "../../res/scene/case1/common/pb2d.pal", $0, $11
jr_00a_4fdb:
    INCBIN "../../res/scene/case1/common/pb2d.pal", $11, $1a
jr_00a_4ff5:
    INCBIN "../../res/scene/case1/common/pb2d.pal", $2b, $8
jr_00a_4ffd:
    INCBIN "../../res/scene/case1/common/pb2d.pal", $33, $8
jr_00a_5005:
    INCBIN "../../res/scene/case1/common/pb2d.pal", $3b, $5

PalC1_B2E:
    INCBIN "../../res/scene/case1/common/pb2e.pal", $0, $40

PalC1_B2F:
    INCBIN "../../res/scene/case1/65-siegel-penthouse/s65-bg.pal", $0, $40

PalC1_B30:
    INCBIN "../../res/scene/case1/common/pb30.pal", $0, $1c
jr_00a_50a6:
    INCBIN "../../res/scene/case1/common/pb30.pal", $1c, $24

PalC1_B31:
    INCBIN "../../res/scene/case1/common/pb31.pal", $0, $6
jr_00a_50d0:
    INCBIN "../../res/scene/case1/common/pb31.pal", $6, $16
jr_00a_50e6:
    INCBIN "../../res/scene/case1/common/pb31.pal", $1c, $24

PalC1_B32:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.pal", $0, $5
jr_00a_510f:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.pal", $5, $4
jr_00a_5113:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.pal", $9, $2a
jr_00a_513d:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.pal", $33, $d

PalC1_B33:
    INCBIN "../../res/scene/case1/common/pb33.pal", $0, $9
jr_00a_5153:
    INCBIN "../../res/scene/case1/common/pb33.pal", $9, $21
jr_00a_5174:
    INCBIN "../../res/scene/case1/common/pb33.pal", $2a, $16

PalC1_B34:
    INCBIN "../../res/scene/case1/common/pb34.pal", $0, $29
jr_00a_51b3:
    INCBIN "../../res/scene/case1/common/pb34.pal", $29, $1
jr_00a_51b4:
    INCBIN "../../res/scene/case1/common/pb34.pal", $2a, $16

PalC1_B35:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $0, $7
jr_00a_51d1:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $7, $22
jr_00a_51f3:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $29, $2
jr_00a_51f5:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $2b, $8
jr_00a_51fd:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $33, $7
jr_00a_5204:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $3a, $6

PalC1_B36:
    INCBIN "../../res/scene/case1/common/pb36.pal", $0, $7
jr_00a_5211:
    INCBIN "../../res/scene/case1/common/pb36.pal", $7, $13
jr_00a_5224:
    INCBIN "../../res/scene/case1/common/pb36.pal", $1a, $26

PalC1_B37:
    INCBIN "../../res/scene/case1/72-brody-office/s72-bg.pal", $0, $1b
jr_00a_5265:
    INCBIN "../../res/scene/case1/72-brody-office/s72-bg.pal", $1b, $25

PalC1_B38:
    INCBIN "../../res/scene/case1/common/pb38.pal", $0, $2
jr_00a_528c:
    INCBIN "../../res/scene/case1/common/pb38.pal", $2, $37
jr_00a_52c3:
    INCBIN "../../res/scene/case1/common/pb38.pal", $39, $7

PalC1_B39:
    INCBIN "../../res/scene/case1/common/pb39.pal", $0, $12
jr_00a_52dc:
    INCBIN "../../res/scene/case1/common/pb39.pal", $12, $18
jr_00a_52f4:
    INCBIN "../../res/scene/case1/common/pb39.pal", $2a, $16

PalC1_B3A:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-bg.pal", $0, $4
jr_00a_530e:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-bg.pal", $4, $3c

PalC1_B3B:
    INCBIN "../../res/scene/case1/78-sternwood-gate/s78-bg.pal", $0, $5
jr_00a_534f:
    INCBIN "../../res/scene/case1/78-sternwood-gate/s78-bg.pal", $5, $6
jr_00a_5355:
    INCBIN "../../res/scene/case1/78-sternwood-gate/s78-bg.pal", $b, $2a
jr_00a_537f:
    INCBIN "../../res/scene/case1/78-sternwood-gate/s78-bg.pal", $35, $b

PalC1_B3C:
    INCBIN "../../res/scene/case1/79-sternwood-door/s79-bg.pal", $0, $d
jr_00a_5397:
    INCBIN "../../res/scene/case1/79-sternwood-door/s79-bg.pal", $d, $f
jr_00a_53a6:
    INCBIN "../../res/scene/case1/79-sternwood-door/s79-bg.pal", $1c, $10
jr_00a_53b6:
    INCBIN "../../res/scene/case1/79-sternwood-door/s79-bg.pal", $2c, $7
jr_00a_53bd:
    INCBIN "../../res/scene/case1/79-sternwood-door/s79-bg.pal", $33, $d

PalC1_B3D:
    INCBIN "../../res/scene/case1/7a-sternwood-foyer/s7a-bg.pal", $0, $33
jr_00a_53fd:
    INCBIN "../../res/scene/case1/7a-sternwood-foyer/s7a-bg.pal", $33, $d

PalC1_B3E:
    INCBIN "../../res/scene/case1/common/pb3e.pal", $0, $40

PalC1_B3F:
    INCBIN "../../res/scene/case1/7d-sternwood-kitchen/s7d-bg.pal", $0, $40

PalC1_B40:
    INCBIN "../../res/scene/case1/common/pb40.pal", $0, $40

PalC1_B41:
    INCBIN "../../res/scene/case1/common/pb41.pal", $0, $40

PalC1_B42:
    INCBIN "../../res/scene/case1/common/pb42.pal", $0, $21
jr_00a_552b:
    INCBIN "../../res/scene/case1/common/pb42.pal", $21, $1f

PalC1_B43:
    INCBIN "../../res/scene/case1/common/pb43.pal", $0, $40

PalC1_B44:
    INCBIN "../../res/scene/case1/86-sewer-tunnel/s86-bg.pal", $0, $40

PalC1_B45:
    INCBIN "../../res/scene/case1/87-sewer-junction/s87-bg.pal", $0, $40

PalC1_B46:
    INCBIN "../../res/scene/case1/88-sewer-junction/s88-bg.pal", $0, $40

PalC1_B47:
    INCBIN "../../res/scene/case1/89-sewer-tunnel/s89-bg.pal", $0, $20
jr_00a_566a:
    INCBIN "../../res/scene/case1/89-sewer-tunnel/s89-bg.pal", $20, $d
jr_00a_5677:
    INCBIN "../../res/scene/case1/89-sewer-tunnel/s89-bg.pal", $2d, $13

PalC1_B48:
    INCBIN "../../res/scene/case1/8a-sewer-whirlpool/s8a-bg.pal", $0, $40

PalC1_B49:
    INCBIN "../../res/scene/case1/common/pb49.pal", $0, $5
jr_00a_56cf:
    INCBIN "../../res/scene/case1/common/pb49.pal", $5, $17
jr_00a_56e6:
    INCBIN "../../res/scene/case1/common/pb49.pal", $1c, $24

PalC1_B4A:
    INCBIN "../../res/scene/case1/8d-alligator/s8d-bg.pal", $0, $40

PalC1_B4B:
    INCBIN "../../res/scene/case1/8e-alligator/s8e-bg.pal", $0, $20
jr_00a_576a:
    INCBIN "../../res/scene/case1/8e-alligator/s8e-bg.pal", $20, $20

PalC1_B4C:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-bg.pal", $0, $20
jr_00a_57aa:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-bg.pal", $20, $20

PalC1_B4D:
    INCBIN "../../res/scene/case1/90-ace-cleared/s90-bg.pal", $0, $40

PalC1_B4E:
    INCBIN "../../res/scene/case1/91-ace-certificate/s91-bg.pal", $0, $40

PalC1_B4F:
    INCBIN "../../res/scene/case1/92-handcuffs/s92-bg.pal", $0, $2b
jr_00a_5875:
    INCBIN "../../res/scene/case1/92-handcuffs/s92-bg.pal", $2b, $2
jr_00a_5877:
    INCBIN "../../res/scene/case1/92-handcuffs/s92-bg.pal", $2d, $13

PalC1_B50:
    INCBIN "../../res/scene/case1/93-ace-grave/s93-bg.pal", $0, $2a
jr_00a_58b4:
    INCBIN "../../res/scene/case1/93-ace-grave/s93-bg.pal", $2a, $8
jr_00a_58bc:
    INCBIN "../../res/scene/case1/93-ace-grave/s93-bg.pal", $32, $7
jr_00a_58c3:
    INCBIN "../../res/scene/case1/93-ace-grave/s93-bg.pal", $39, $7

PalC1_B51:
    INCBIN "../../res/scene/case1/94-socko/s94-bg.pal", $0, $40

PalC1_B52:
    INCBIN "../../res/scene/case1/95-blam/s95-bg.pal", $0, $40

PalC1_B53:
    INCBIN "../../res/scene/case1/96-boom/s96-bg.pal", $0, $40

PalC1_B54:
    INCBIN "../../res/scene/case1/97-slot-machine/s97-bg.pal", $0, $40

PalC1_B55:
    INCBIN "../../res/scene/case1/98-hitman/s98-bg.pal", $0, $40
    dw PalC1_O00 ; $00
    dw PalC1_O01 ; $01
    dw PalC1_O02 ; $02
    dw PalC1_O03 ; $03
    dw PalC1_O04 ; $04
    dw PalC1_O05 ; $05
    dw PalC1_O06 ; $06
    dw PalC1_O07 ; $07
    dw PalC1_O08 ; $08
    dw PalC1_O09 ; $09
    dw PalC1_O0A ; $0a
    dw PalC1_O0B ; $0b
    dw PalC1_O0C ; $0c
    dw PalC1_O0D ; $0d
    dw PalC1_O0E ; $0e
    dw PalC1_O0F ; $0f
    dw PalC1_O10 ; $10
    dw PalC1_O11 ; $11
    dw PalC1_O12 ; $12
    dw PalC1_O13 ; $13
    dw PalC1_O14 ; $14
    dw PalC1_O15 ; $15
    dw PalC1_O16 ; $16
    dw PalC1_O17 ; $17
    dw PalC1_O18 ; $18
    dw PalC1_O19 ; $19
    dw PalC1_O1A ; $1a
    dw PalC1_O1B ; $1b
    dw PalC1_O1C ; $1c
    dw PalC1_O1D ; $1d
    dw PalC1_O1E ; $1e
    dw PalC1_O1F ; $1f
    dw PalC1_O20 ; $20
    dw PalC1_O21 ; $21
    dw PalC1_O22 ; $22
    dw PalC1_O23 ; $23
    dw PalC1_O24 ; $24
    dw PalC1_O25 ; $25
    dw PalC1_O26 ; $26
    dw PalC1_O27 ; $27
    dw PalC1_O28 ; $28
    dw PalC1_O29 ; $29
    dw PalC1_O2A ; $2a
    dw PalC1_O2B ; $2b
    dw PalC1_O2C ; $2c
    dw PalC1_O2D ; $2d
    dw PalC1_O2E ; $2e
    dw PalC1_O2F ; $2f
    dw PalC1_O30 ; $30
    dw PalC1_O31 ; $31
    dw PalC1_O32 ; $32
    dw PalC1_O33 ; $33
    dw PalC1_O34 ; $34
    dw PalC1_O35 ; $35
    dw PalC1_O36 ; $36
    dw PalC1_O37 ; $37
    dw PalC1_O38 ; $38
    dw PalC1_O39 ; $39
    dw PalC1_O3A ; $3a
    dw PalC1_O3B ; $3b
    dw PalC1_O3C ; $3c
    dw PalC1_O3D ; $3d
    dw PalC1_O3E ; $3e
    dw PalC1_O3F ; $3f
    dw PalC1_O40 ; $40
    dw PalC1_O41 ; $41
    dw PalC1_O42 ; $42
    dw PalC1_O43 ; $43
    dw PalC1_O44 ; $44
    dw PalC1_O45 ; $45
    dw PalC1_O46 ; $46
    dw PalC1_O47 ; $47
    dw PalC1_O48 ; $48
    dw PalC1_O49 ; $49
    dw PalC1_O4A ; $4a
    dw PalC1_O4B ; $4b
    dw PalC1_O4C ; $4c
    dw PalC1_O4D ; $4d
    dw PalC1_O4E ; $4e
    dw PalC1_O4F ; $4f
    dw PalC1_O50 ; $50
    dw PalC1_O51 ; $51
    dw PalC1_O52 ; $52
    dw PalC1_O53 ; $53
    dw PalC1_O54 ; $54
    dw PalC1_O55 ; $55

PalC1_O00:
    INCBIN "../../res/scene/case1/common/po00.pal", $0, $40

PalC1_O01:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-objects.pal", $0, $40

PalC1_O02:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-objects.pal", $0, $40

PalC1_O03:
    INCBIN "../../res/scene/case1/common/po03.pal", $0, $40

PalC1_O04:
    INCBIN "../../res/scene/case1/common/po04.pal", $0, $40

PalC1_O05:
    INCBIN "../../res/scene/case1/common/po05.pal", $0, $40

PalC1_O06:
    INCBIN "../../res/scene/case1/common/po06.pal", $0, $40

PalC1_O07:
    INCBIN "../../res/scene/case1/common/po07.pal", $0, $40

PalC1_O08:
    INCBIN "../../res/scene/case1/common/po08.pal", $0, $40

PalC1_O09:
    INCBIN "../../res/scene/case1/common/po09.pal", $0, $22
jr_00a_5d18:
    INCBIN "../../res/scene/case1/common/po09.pal", $22, $1e

PalC1_O0A:
    INCBIN "../../res/scene/case1/common/po0a.pal", $0, $40

PalC1_O0B:
    INCBIN "../../res/scene/case1/common/po0b.pal", $0, $40

PalC1_O0C:
    INCBIN "../../res/scene/case1/common/po0c.pal", $0, $40

PalC1_O0D:
    INCBIN "../../res/scene/case1/common/po0d.pal", $0, $40

PalC1_O0E:
    INCBIN "../../res/scene/case1/common/po0e.pal", $0, $40

PalC1_O0F:
    INCBIN "../../res/scene/case1/common/po0f.pal", $0, $40

PalC1_O10:
    INCBIN "../../res/scene/case1/common/po10.pal", $0, $40

PalC1_O11:
    INCBIN "../../res/scene/case1/common/po11.pal", $0, $40

PalC1_O12:
    INCBIN "../../res/scene/case1/common/po12.pal", $0, $40

PalC1_O13:
    INCBIN "../../res/scene/case1/common/po13.pal", $0, $40

PalC1_O14:
    INCBIN "../../res/scene/case1/40-joes-street/s40-objects.pal", $0, $40

PalC1_O15:
    INCBIN "../../res/scene/case1/common/po15.pal", $0, $40

PalC1_O16:
    INCBIN "../../res/scene/case1/43-mercedes-trunk/s43-objects.pal", $0, $40

PalC1_O17:
    INCBIN "../../res/scene/case1/44-sternwood-trunk/s44-objects.pal", $0, $40

PalC1_O18:
    INCBIN "../../res/scene/case1/45-newsstand/s45-objects.pal", $0, $40

PalC1_O19:
    INCBIN "../../res/scene/case1/46-newsstand/s46-objects.pal", $0, $40

PalC1_O1A:
    INCBIN "../../res/scene/case1/common/po1a.pal", $0, $40

PalC1_O1B:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-objects.pal", $0, $40

PalC1_O1C:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-objects.pal", $0, $11
jr_00a_61c7:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-objects.pal", $11, $20
jr_00a_61e7:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-objects.pal", $31, $f

PalC1_O1D:
    INCBIN "../../res/scene/case1/4b-peoria-blue-cab/s4b-objects.pal", $0, $40

PalC1_O1E:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-objects.pal", $0, $12
jr_00a_6248:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-objects.pal", $12, $2e

PalC1_O1F:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-objects.pal", $0, $40

PalC1_O20:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-objects.pal", $0, $40

PalC1_O21:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-objects.pal", $0, $40

PalC1_O22:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-objects.pal", $0, $40

PalC1_O23:
    INCBIN "../../res/scene/case1/common/po23.pal", $0, $40

PalC1_O24:
    INCBIN "../../res/scene/case1/53-drunkard/s53-objects.pal", $0, $40

PalC1_O25:
    INCBIN "../../res/scene/case1/54-mugger/s54-objects.pal", $0, $40

PalC1_O26:
    INCBIN "../../res/scene/case1/55-sugar-shack/s55-objects.pal", $0, $40

PalC1_O27:
    INCBIN "../../res/scene/case1/56-sugar-shack/s56-objects.pal", $0, $40

PalC1_O28:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-objects.pal", $0, $40

PalC1_O29:
    INCBIN "../../res/scene/case1/common/po29.pal", $0, $40

PalC1_O2A:
    INCBIN "../../res/scene/case1/common/po2a.pal", $0, $40

PalC1_O2B:
    INCBIN "../../res/scene/case1/common/po2b.pal", $0, $40

PalC1_O2C:
    INCBIN "../../res/scene/case1/common/po2c.pal", $0, $40

PalC1_O2D:
    INCBIN "../../res/scene/case1/common/po2d.pal", $0, $40

PalC1_O2E:
    INCBIN "../../res/scene/case1/common/po2e.pal", $0, $40

PalC1_O2F:
    INCBIN "../../res/scene/case1/65-siegel-penthouse/s65-objects.pal", $0, $3f
jr_00a_66b5:
    INCBIN "../../res/scene/case1/65-siegel-penthouse/s65-objects.pal", $3f, $1

PalC1_O30:
    INCBIN "../../res/scene/case1/common/po30.pal", $0, $40

PalC1_O31:
    INCBIN "../../res/scene/case1/common/po31.pal", $0, $40

PalC1_O32:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-objects.pal", $0, $40

PalC1_O33:
    INCBIN "../../res/scene/case1/common/po33.pal", $0, $40

PalC1_O34:
    INCBIN "../../res/scene/case1/common/po34.pal", $0, $40

PalC1_O35:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-objects.pal", $0, $40

PalC1_O36:
    INCBIN "../../res/scene/case1/common/po36.pal", $0, $15
jr_00a_684b:
    INCBIN "../../res/scene/case1/common/po36.pal", $15, $2b

PalC1_O37:
    INCBIN "../../res/scene/case1/72-brody-office/s72-objects.pal", $0, $40

PalC1_O38:
    INCBIN "../../res/scene/case1/common/po38.pal", $0, $1e
jr_00a_68d4:
    INCBIN "../../res/scene/case1/common/po38.pal", $1e, $9
jr_00a_68dd:
    INCBIN "../../res/scene/case1/common/po38.pal", $27, $8
jr_00a_68e5:
    INCBIN "../../res/scene/case1/common/po38.pal", $2f, $8
jr_00a_68ed:
    INCBIN "../../res/scene/case1/common/po38.pal", $37, $4
jr_00a_68f1:
    INCBIN "../../res/scene/case1/common/po38.pal", $3b, $4
jr_00a_68f5:
    INCBIN "../../res/scene/case1/common/po38.pal", $3f, $1

PalC1_O39:
    INCBIN "../../res/scene/case1/common/po39.pal", $0, $40

PalC1_O3A:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-objects.pal", $0, $40

PalC1_O3B:
    INCBIN "../../res/scene/case1/78-sternwood-gate/s78-objects.pal", $0, $40

PalC1_O3C:
    INCBIN "../../res/scene/case1/79-sternwood-door/s79-objects.pal", $0, $40

PalC1_O3D:
    INCBIN "../../res/scene/case1/7a-sternwood-foyer/s7a-objects.pal", $0, $40

PalC1_O3E:
    INCBIN "../../res/scene/case1/common/po3e.pal", $0, $40

PalC1_O3F:
    INCBIN "../../res/scene/case1/7d-sternwood-kitchen/s7d-objects.pal", $0, $30
jr_00a_6aa6:
    INCBIN "../../res/scene/case1/7d-sternwood-kitchen/s7d-objects.pal", $30, $10

PalC1_O40:
    INCBIN "../../res/scene/case1/common/po40.pal", $0, $40

PalC1_O41:
    INCBIN "../../res/scene/case1/common/po41.pal", $0, $2
jr_00a_6af8:
    INCBIN "../../res/scene/case1/common/po41.pal", $2, $3e

PalC1_O42:
    INCBIN "../../res/scene/case1/common/po42.pal", $0, $1f
jr_00a_6b55:
    INCBIN "../../res/scene/case1/common/po42.pal", $1f, $8
jr_00a_6b5d:
    INCBIN "../../res/scene/case1/common/po42.pal", $27, $8
jr_00a_6b65:
    INCBIN "../../res/scene/case1/common/po42.pal", $2f, $8
jr_00a_6b6d:
    INCBIN "../../res/scene/case1/common/po42.pal", $37, $8
jr_00a_6b75:
    INCBIN "../../res/scene/case1/common/po42.pal", $3f, $1

PalC1_O43:
    INCBIN "../../res/scene/case1/common/po43.pal", $0, $1f
jr_00a_6b95:
    INCBIN "../../res/scene/case1/common/po43.pal", $1f, $8
jr_00a_6b9d:
    INCBIN "../../res/scene/case1/common/po43.pal", $27, $8
jr_00a_6ba5:
    INCBIN "../../res/scene/case1/common/po43.pal", $2f, $8
jr_00a_6bad:
    INCBIN "../../res/scene/case1/common/po43.pal", $37, $8
jr_00a_6bb5:
    INCBIN "../../res/scene/case1/common/po43.pal", $3f, $1

PalC1_O44:
    INCBIN "../../res/scene/case1/86-sewer-tunnel/s86-objects.pal", $0, $40

PalC1_O45:
    INCBIN "../../res/scene/case1/87-sewer-junction/s87-objects.pal", $0, $40

PalC1_O46:
    INCBIN "../../res/scene/case1/88-sewer-junction/s88-objects.pal", $0, $40

PalC1_O47:
    INCBIN "../../res/scene/case1/89-sewer-tunnel/s89-objects.pal", $0, $40

PalC1_O48:
    INCBIN "../../res/scene/case1/8a-sewer-whirlpool/s8a-objects.pal", $0, $40

PalC1_O49:
    INCBIN "../../res/scene/case1/common/po49.pal", $0, $40

PalC1_O4A:
    INCBIN "../../res/scene/case1/8d-alligator/s8d-objects.pal", $0, $40

PalC1_O4B:
    INCBIN "../../res/scene/case1/8e-alligator/s8e-objects.pal", $0, $40

PalC1_O4C:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-objects.pal", $0, $1e
jr_00a_6dd4:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-objects.pal", $1e, $17
jr_00a_6deb:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-objects.pal", $35, $6
jr_00a_6df1:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-objects.pal", $3b, $4
jr_00a_6df5:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-objects.pal", $3f, $1

PalC1_O4D:
    INCBIN "../../res/scene/case1/90-ace-cleared/s90-objects.pal", $0, $40

PalC1_O4E:
    INCBIN "../../res/scene/case1/91-ace-certificate/s91-objects.pal", $0, $40

PalC1_O4F:
    INCBIN "../../res/scene/case1/92-handcuffs/s92-objects.pal", $0, $40

PalC1_O50:
    INCBIN "../../res/scene/case1/93-ace-grave/s93-objects.pal", $0, $40

PalC1_O51:
    INCBIN "../../res/scene/case1/94-socko/s94-objects.pal", $0, $40

PalC1_O52:
    INCBIN "../../res/scene/case1/95-blam/s95-objects.pal", $0, $40

PalC1_O53:
    INCBIN "../../res/scene/case1/96-boom/s96-objects.pal", $0, $40

PalC1_O54:
    INCBIN "../../res/scene/case1/97-slot-machine/s97-objects.pal", $0, $40

PalC1_O55:
    INCBIN "../../res/scene/case1/98-hitman/s98-objects.pal", $0, $1e
jr_00a_7014:
    INCBIN "../../res/scene/case1/98-hitman/s98-objects.pal", $1e, $1d
jr_00a_7031:
    INCBIN "../../res/scene/case1/98-hitman/s98-objects.pal", $3b, $5
    db $00, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
