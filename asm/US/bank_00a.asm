; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
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

PalTitleObj:
    INCBIN "../../res/ui/title/title_objects.pal", $0, $40
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
    ld bc, $4220
    ld h, b
    ld b, d
    and b
    ld b, d
    ldh [rSCY], a
    jr nz, jr_00a_425d

    ld h, b
    ld b, e
    and b
    ld b, e
    ldh [rSCX], a
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

jr_00a_425d:
    ld hl, $78e3

PalTitleBg:
    INCBIN "../../res/ui/title/title.pal", $0, $40
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
Resource_US_00a_42e0:
    INCBIN "../../res/ui/hud/US/hud.pal", $0, $2e
jr_00a_430e:
    INCBIN "../../res/ui/hud/US/hud.pal", $2e, $5
jr_00a_4313:
    INCBIN "../../res/ui/hud/US/hud.pal", $33, $d

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

jr_00a_433d:
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
    rst RST_38
    ld a, a
    rst RST_38
    add hl, sp
    rst RST_38
    nop
    dec e
    nop
    rst RST_38
    ld a, a
    ld d, d
    ld c, d
    ld [$0021], sp
    nop
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
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
jr_00a_44fa:
    INCBIN "../../res/scene/case1/common/pb00.pal", $2e, $5
jr_00a_44ff:
    INCBIN "../../res/scene/case1/common/pb00.pal", $33, $d

PalC1_B01:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.pal", $0, $e
jr_00a_451a:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.pal", $e, $f
jr_00a_4529:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.pal", $1d, $23

PalC1_B02:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-bg.pal", $0, $e
jr_00a_455a:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-bg.pal", $e, $32

PalC1_B03:
    INCBIN "../../res/scene/case1/common/pb03.pal", $0, $40

PalC1_B04:
    INCBIN "../../res/scene/case1/common/pb04.pal", $0, $b
jr_00a_45d7:
    INCBIN "../../res/scene/case1/common/pb04.pal", $b, $27
jr_00a_45fe:
    INCBIN "../../res/scene/case1/common/pb04.pal", $32, $a
Jump_00a_4608:
    INCBIN "../../res/scene/case1/common/pb04.pal", $3c, $4

PalC1_B05:
    INCBIN "../../res/scene/case1/common/pb05.pal", $0, $b
jr_00a_4617:
    INCBIN "../../res/scene/case1/common/pb05.pal", $b, $35

PalC1_B06:
    INCBIN "../../res/scene/case1/common/pb06.pal", $0, $40

PalC1_B07:
    INCBIN "../../res/scene/case1/common/pb07.pal", $0, $19
jr_00a_46a5:
    INCBIN "../../res/scene/case1/common/pb07.pal", $19, $20
jr_00a_46c5:
    INCBIN "../../res/scene/case1/common/pb07.pal", $39, $7

PalC1_B08:
    INCBIN "../../res/scene/case1/common/pb08.pal", $0, $40

PalC1_B09:
    INCBIN "../../res/scene/case1/common/pb09.pal", $0, $31
jr_00a_473d:
    INCBIN "../../res/scene/case1/common/pb09.pal", $31, $f

PalC1_B0A:
    INCBIN "../../res/scene/case1/common/pb0a.pal", $0, $29
jr_00a_4775:
    INCBIN "../../res/scene/case1/common/pb0a.pal", $29, $1
jr_00a_4776:
    INCBIN "../../res/scene/case1/common/pb0a.pal", $2a, $f
jr_00a_4785:
    INCBIN "../../res/scene/case1/common/pb0a.pal", $39, $7
jr_00a_478c:

PalC1_B0B:
    INCBIN "../../res/scene/case1/common/pb0b.pal", $0, $40

PalC1_B0C:
    INCBIN "../../res/scene/case1/common/pb0c.pal", $0, $40

PalC1_B0D:
    INCBIN "../../res/scene/case1/common/pb0d.pal", $0, $36
jr_00a_4842:
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
jr_00a_4995:
    INCBIN "../../res/scene/case1/common/pb13.pal", $9, $37

PalC1_B14:
    INCBIN "../../res/scene/case1/40-joes-street/s40-bg.pal", $0, $31
jr_00a_49fd:
    INCBIN "../../res/scene/case1/40-joes-street/s40-bg.pal", $31, $f

PalC1_B15:
    INCBIN "../../res/scene/case1/common/pb15.pal", $0, $40

PalC1_B16:
    INCBIN "../../res/scene/case1/43-mercedes-trunk/s43-bg.pal", $0, $40

PalC1_B17:
    INCBIN "../../res/scene/case1/44-sternwood-trunk/s44-bg.pal", $0, $7
jr_00a_4a93:
    INCBIN "../../res/scene/case1/44-sternwood-trunk/s44-bg.pal", $7, $39

PalC1_B18:
    INCBIN "../../res/scene/case1/45-newsstand/s45-bg.pal", $0, $5
jr_00a_4ad1:
    INCBIN "../../res/scene/case1/45-newsstand/s45-bg.pal", $5, $3b

PalC1_B19:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.pal", $0, $31
jr_00a_4b3d:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.pal", $31, $b
jr_00a_4b48:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.pal", $3c, $4

PalC1_B1A:
    INCBIN "../../res/scene/case1/common/pb1a.pal", $0, $40

PalC1_B1B:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.pal", $0, $31
jr_00a_4bbd:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.pal", $31, $f

PalC1_B1C:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.pal", $0, $b
jr_00a_4bd7:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.pal", $b, $4
jr_00a_4bdb:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.pal", $f, $31

PalC1_B1D:
    INCBIN "../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.pal", $0, $40

PalC1_B1E:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.pal", $0, $12
jr_00a_4c5e:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.pal", $12, $1f
jr_00a_4c7d:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.pal", $31, $f

PalC1_B1F:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $0, $f
jr_00a_4c9b:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $f, $2
jr_00a_4c9d:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $11, $8
jr_00a_4ca5:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $19, $6
jr_00a_4cab:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $1f, $14
jr_00a_4cbf:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal", $33, $d

PalC1_B20:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.pal", $0, $3b
jr_00a_4d07:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.pal", $3b, $5

PalC1_B21:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.pal", $0, $13
jr_00a_4d1f:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.pal", $13, $8
jr_00a_4d27:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.pal", $1b, $25

PalC1_B22:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.pal", $0, $18
jr_00a_4d64:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.pal", $18, $19
jr_00a_4d7d:
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
jr_00a_4ed5:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.pal", $9, $20
jr_00a_4ef5:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.pal", $29, $1
jr_00a_4ef6:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.pal", $2a, $2
jr_00a_4ef8:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.pal", $2c, $8
jr_00a_4f00:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.pal", $34, $c

PalC1_B29:
    INCBIN "../../res/scene/case1/common/pb29.pal", $0, $40

PalC1_B2A:
    INCBIN "../../res/scene/case1/common/pb2a.pal", $0, $40

PalC1_B2B:
    INCBIN "../../res/scene/case1/common/pb2b.pal", $0, $2e
jr_00a_4fba:
    INCBIN "../../res/scene/case1/common/pb2b.pal", $2e, $12

PalC1_B2C:
    INCBIN "../../res/scene/case1/common/pb2c.pal", $0, $2b
jr_00a_4ff7:
    INCBIN "../../res/scene/case1/common/pb2c.pal", $2b, $10
jr_00a_5007:
    INCBIN "../../res/scene/case1/common/pb2c.pal", $3b, $5

PalC1_B2D:
    INCBIN "../../res/scene/case1/common/pb2d.pal", $0, $11
jr_00a_501d:
    INCBIN "../../res/scene/case1/common/pb2d.pal", $11, $1a
jr_00a_5037:
    INCBIN "../../res/scene/case1/common/pb2d.pal", $2b, $8
jr_00a_503f:
    INCBIN "../../res/scene/case1/common/pb2d.pal", $33, $8
jr_00a_5047:
    INCBIN "../../res/scene/case1/common/pb2d.pal", $3b, $5

PalC1_B2E:
    INCBIN "../../res/scene/case1/common/pb2e.pal", $0, $40

PalC1_B2F:
    INCBIN "../../res/scene/case1/65-siegel-penthouse/s65-bg.pal", $0, $40

PalC1_B30:
    INCBIN "../../res/scene/case1/common/pb30.pal", $0, $1c
jr_00a_50e8:
    INCBIN "../../res/scene/case1/common/pb30.pal", $1c, $24

PalC1_B31:
    INCBIN "../../res/scene/case1/common/pb31.pal", $0, $6
jr_00a_5112:
    INCBIN "../../res/scene/case1/common/pb31.pal", $6, $16
jr_00a_5128:
    INCBIN "../../res/scene/case1/common/pb31.pal", $1c, $24

PalC1_B32:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.pal", $0, $5
jr_00a_5151:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.pal", $5, $4
jr_00a_5155:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.pal", $9, $2a
jr_00a_517f:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.pal", $33, $d

PalC1_B33:
    INCBIN "../../res/scene/case1/common/pb33.pal", $0, $9
jr_00a_5195:
    INCBIN "../../res/scene/case1/common/pb33.pal", $9, $21
jr_00a_51b6:
    INCBIN "../../res/scene/case1/common/pb33.pal", $2a, $16

PalC1_B34:
    INCBIN "../../res/scene/case1/common/pb34.pal", $0, $29
jr_00a_51f5:
    INCBIN "../../res/scene/case1/common/pb34.pal", $29, $1
jr_00a_51f6:
    INCBIN "../../res/scene/case1/common/pb34.pal", $2a, $16

PalC1_B35:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $0, $7
jr_00a_5213:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $7, $22
jr_00a_5235:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $29, $2
jr_00a_5237:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $2b, $8
jr_00a_523f:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $33, $7
jr_00a_5246:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal", $3a, $6

PalC1_B36:
    INCBIN "../../res/scene/case1/common/pb36.pal", $0, $7
jr_00a_5253:
    INCBIN "../../res/scene/case1/common/pb36.pal", $7, $13
jr_00a_5266:
    INCBIN "../../res/scene/case1/common/pb36.pal", $1a, $26

PalC1_B37:
    INCBIN "../../res/scene/case1/72-brody-office/s72-bg.pal", $0, $1b
jr_00a_52a7:
    INCBIN "../../res/scene/case1/72-brody-office/s72-bg.pal", $1b, $25

PalC1_B38:
    INCBIN "../../res/scene/case1/common/pb38.pal", $0, $2
jr_00a_52ce:
    INCBIN "../../res/scene/case1/common/pb38.pal", $2, $37
jr_00a_5305:
    INCBIN "../../res/scene/case1/common/pb38.pal", $39, $7

PalC1_B39:
    INCBIN "../../res/scene/case1/common/pb39.pal", $0, $12
jr_00a_531e:
    INCBIN "../../res/scene/case1/common/pb39.pal", $12, $18
jr_00a_5336:
    INCBIN "../../res/scene/case1/common/pb39.pal", $2a, $16

PalC1_B3A:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-bg.pal", $0, $4
jr_00a_5350:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-bg.pal", $4, $3c

PalC1_B3B:
    INCBIN "../../res/scene/case1/78-sternwood-gate/s78-bg.pal", $0, $5
jr_00a_5391:
    INCBIN "../../res/scene/case1/78-sternwood-gate/s78-bg.pal", $5, $6
jr_00a_5397:
    INCBIN "../../res/scene/case1/78-sternwood-gate/s78-bg.pal", $b, $2a
jr_00a_53c1:
    INCBIN "../../res/scene/case1/78-sternwood-gate/s78-bg.pal", $35, $b

PalC1_B3C:
    INCBIN "../../res/scene/case1/79-sternwood-door/s79-bg.pal", $0, $d
jr_00a_53d9:
    INCBIN "../../res/scene/case1/79-sternwood-door/s79-bg.pal", $d, $f
jr_00a_53e8:
    INCBIN "../../res/scene/case1/79-sternwood-door/s79-bg.pal", $1c, $10
jr_00a_53f8:
    INCBIN "../../res/scene/case1/79-sternwood-door/s79-bg.pal", $2c, $7
jr_00a_53ff:
    INCBIN "../../res/scene/case1/79-sternwood-door/s79-bg.pal", $33, $d

PalC1_B3D:
    INCBIN "../../res/scene/case1/7a-sternwood-foyer/s7a-bg.pal", $0, $33
jr_00a_543f:
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
jr_00a_556d:
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
jr_00a_56ac:
    INCBIN "../../res/scene/case1/89-sewer-tunnel/s89-bg.pal", $20, $d
jr_00a_56b9:
    INCBIN "../../res/scene/case1/89-sewer-tunnel/s89-bg.pal", $2d, $13

PalC1_B48:
    INCBIN "../../res/scene/case1/8a-sewer-whirlpool/s8a-bg.pal", $0, $40

PalC1_B49:
    INCBIN "../../res/scene/case1/common/pb49.pal", $0, $5
jr_00a_5711:
    INCBIN "../../res/scene/case1/common/pb49.pal", $5, $17
jr_00a_5728:
    INCBIN "../../res/scene/case1/common/pb49.pal", $1c, $24

PalC1_B4A:
    INCBIN "../../res/scene/case1/8d-alligator/s8d-bg.pal", $0, $40

PalC1_B4B:
    INCBIN "../../res/scene/case1/8e-alligator/s8e-bg.pal", $0, $20
jr_00a_57ac:
    INCBIN "../../res/scene/case1/8e-alligator/s8e-bg.pal", $20, $20

PalC1_B4C:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-bg.pal", $0, $20
jr_00a_57ec:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-bg.pal", $20, $20

PalC1_B4D:
    INCBIN "../../res/scene/case1/90-ace-cleared/s90-bg.pal", $0, $40

PalC1_B4E:
    INCBIN "../../res/scene/case1/91-ace-certificate/s91-bg.pal", $0, $40

PalC1_B4F:
    INCBIN "../../res/scene/case1/92-handcuffs/s92-bg.pal", $0, $2b
jr_00a_58b7:
    INCBIN "../../res/scene/case1/92-handcuffs/s92-bg.pal", $2b, $2
jr_00a_58b9:
    INCBIN "../../res/scene/case1/92-handcuffs/s92-bg.pal", $2d, $13

PalC1_B50:
    INCBIN "../../res/scene/case1/93-ace-grave/s93-bg.pal", $0, $2a
jr_00a_58f6:
    INCBIN "../../res/scene/case1/93-ace-grave/s93-bg.pal", $2a, $8
jr_00a_58fe:
    INCBIN "../../res/scene/case1/93-ace-grave/s93-bg.pal", $32, $7
jr_00a_5905:
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
    db LOW(PalC1_O2F) ; $2f
jr_00a_5aab:
    db HIGH(PalC1_O2F) ; $2f
    dw PalC1_O30 ; $30
    dw PalC1_O31 ; $31
    dw PalC1_O32 ; $32
    dw PalC1_O33 ; $33
jr_00a_5ab4:
    dw PalC1_O34 ; $34
    dw PalC1_O35 ; $35
    dw PalC1_O36 ; $36
    dw PalC1_O37 ; $37
    dw PalC1_O38 ; $38
    dw PalC1_O39 ; $39
    dw PalC1_O3A ; $3a
    dw PalC1_O3B ; $3b
    dw PalC1_O3C ; $3c
jr_00a_5ac6:
    dw PalC1_O3D ; $3d
    dw PalC1_O3E ; $3e
    dw PalC1_O3F ; $3f
    dw PalC1_O40 ; $40
    dw PalC1_O41 ; $41
    dw PalC1_O42 ; $42
    dw PalC1_O43 ; $43
    dw PalC1_O44 ; $44
    dw PalC1_O45 ; $45
jr_00a_5ad8:
    dw PalC1_O46 ; $46
    dw PalC1_O47 ; $47
    dw PalC1_O48 ; $48
    dw PalC1_O49 ; $49
    db LOW(PalC1_O4A) ; $4a
jr_00a_5ae1:
    db HIGH(PalC1_O4A) ; $4a
    dw PalC1_O4B ; $4b
    dw PalC1_O4C ; $4c
    dw PalC1_O4D ; $4d
    dw PalC1_O4E ; $4e
jr_00a_5aea:
    dw PalC1_O4F ; $4f
    dw PalC1_O50 ; $50
    dw PalC1_O51 ; $51
    dw PalC1_O52 ; $52
    db LOW(PalC1_O53) ; $53
jr_00a_5af3:
    db HIGH(PalC1_O53) ; $53
    dw PalC1_O54 ; $54
    dw PalC1_O55 ; $55

PalC1_O00:
    INCBIN "../../res/scene/case1/common/po00.pal", $0, $4
jr_00a_5afc:
    INCBIN "../../res/scene/case1/common/po00.pal", $4, $9
jr_00a_5b05:
    INCBIN "../../res/scene/case1/common/po00.pal", $d, $9
jr_00a_5b0e:
    INCBIN "../../res/scene/case1/common/po00.pal", $16, $9
jr_00a_5b17:
    INCBIN "../../res/scene/case1/common/po00.pal", $1f, $9
jr_00a_5b20:
    INCBIN "../../res/scene/case1/common/po00.pal", $28, $12
jr_00a_5b32:
    INCBIN "../../res/scene/case1/common/po00.pal", $3a, $6

PalC1_O01:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-objects.pal", $0, $3
jr_00a_5b3b:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-objects.pal", $3, $9
jr_00a_5b44:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-objects.pal", $c, $9
jr_00a_5b4d:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-objects.pal", $15, $9
jr_00a_5b56:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-objects.pal", $1e, $9
jr_00a_5b5f:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-objects.pal", $27, $9
jr_00a_5b68:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-objects.pal", $30, $10

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
jr_00a_5d5a:
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
jr_00a_6209:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-objects.pal", $11, $20
jr_00a_6229:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-objects.pal", $31, $f

PalC1_O1D:
    INCBIN "../../res/scene/case1/4b-peoria-blue-cab/s4b-objects.pal", $0, $40

PalC1_O1E:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-objects.pal", $0, $12
jr_00a_628a:
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
jr_00a_66f7:
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
jr_00a_688d:
    INCBIN "../../res/scene/case1/common/po36.pal", $15, $2b

PalC1_O37:
    INCBIN "../../res/scene/case1/72-brody-office/s72-objects.pal", $0, $40

PalC1_O38:
    INCBIN "../../res/scene/case1/common/po38.pal", $0, $1e
jr_00a_6916:
    INCBIN "../../res/scene/case1/common/po38.pal", $1e, $9
jr_00a_691f:
    INCBIN "../../res/scene/case1/common/po38.pal", $27, $8
jr_00a_6927:
    INCBIN "../../res/scene/case1/common/po38.pal", $2f, $8
jr_00a_692f:
    INCBIN "../../res/scene/case1/common/po38.pal", $37, $4
jr_00a_6933:
    INCBIN "../../res/scene/case1/common/po38.pal", $3b, $4
jr_00a_6937:
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
jr_00a_6ae8:
    INCBIN "../../res/scene/case1/7d-sternwood-kitchen/s7d-objects.pal", $30, $10

PalC1_O40:
    INCBIN "../../res/scene/case1/common/po40.pal", $0, $40

PalC1_O41:
    INCBIN "../../res/scene/case1/common/po41.pal", $0, $2
jr_00a_6b3a:
    INCBIN "../../res/scene/case1/common/po41.pal", $2, $3e

PalC1_O42:
    INCBIN "../../res/scene/case1/common/po42.pal", $0, $1f
jr_00a_6b97:
    INCBIN "../../res/scene/case1/common/po42.pal", $1f, $8
jr_00a_6b9f:
    INCBIN "../../res/scene/case1/common/po42.pal", $27, $8
jr_00a_6ba7:
    INCBIN "../../res/scene/case1/common/po42.pal", $2f, $8
jr_00a_6baf:
    INCBIN "../../res/scene/case1/common/po42.pal", $37, $8
jr_00a_6bb7:
    INCBIN "../../res/scene/case1/common/po42.pal", $3f, $1

PalC1_O43:
    INCBIN "../../res/scene/case1/common/po43.pal", $0, $1f
jr_00a_6bd7:
    INCBIN "../../res/scene/case1/common/po43.pal", $1f, $8
jr_00a_6bdf:
    INCBIN "../../res/scene/case1/common/po43.pal", $27, $8
jr_00a_6be7:
    INCBIN "../../res/scene/case1/common/po43.pal", $2f, $8
jr_00a_6bef:
    INCBIN "../../res/scene/case1/common/po43.pal", $37, $8
jr_00a_6bf7:
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
jr_00a_6e16:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-objects.pal", $1e, $17
jr_00a_6e2d:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-objects.pal", $35, $6
jr_00a_6e33:
    INCBIN "../../res/scene/case1/8f-hitman/s8f-objects.pal", $3b, $4
jr_00a_6e37:
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
jr_00a_7056:
    INCBIN "../../res/scene/case1/98-hitman/s98-objects.pal", $1e, $1d
jr_00a_7073:
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
