; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    dw PalC2_B00 ; $00
    dw PalC2_B01 ; $01
    dw PalC2_B02 ; $02
    dw PalC2_B03 ; $03
    dw PalC2_B04 ; $04
    dw PalC2_B05 ; $05
    dw PalC2_B06 ; $06
    dw PalC2_B07 ; $07
    dw PalC2_B08 ; $08
    dw PalC2_B09 ; $09
    dw PalC2_B0A ; $0a
    dw PalC2_B0B ; $0b
    dw PalC2_B0C ; $0c
    dw PalC2_B0D ; $0d
    dw PalC2_B0E ; $0e
    dw PalC2_B0F ; $0f
    dw PalC2_B10 ; $10
    dw PalC2_B11 ; $11
    dw PalC2_B12 ; $12
    dw PalC2_B13 ; $13
    dw PalC2_B14 ; $14
    dw PalC2_B15 ; $15
    dw PalC2_B16 ; $16
    dw PalC2_B17 ; $17
    dw PalC2_B18 ; $18
    dw PalC2_B19 ; $19
    dw PalC2_B1A ; $1a
    dw PalC2_B1B ; $1b
    dw PalC2_B1C ; $1c
    dw PalC2_B1D ; $1d
    dw PalC2_B1E ; $1e
    dw PalC2_B1F ; $1f
    dw PalC2_B20 ; $20
    dw PalC2_B21 ; $21
    dw PalC2_B22 ; $22
    db LOW(PalC2_B23) ; $23
jr_00b_4047:
    db HIGH(PalC2_B23) ; $23
    dw PalC2_B24 ; $24
    dw PalC2_B25 ; $25
    dw PalC2_B26 ; $26
    dw PalC2_B27 ; $27
jr_00b_4050:
    dw PalC2_B28 ; $28
    dw PalC2_B29 ; $29
    dw PalC2_B2A ; $2a
    dw PalC2_B2B ; $2b
    db LOW(PalC2_B2C) ; $2c
jr_00b_4059:
    db HIGH(PalC2_B2C) ; $2c
    dw PalC2_B2D ; $2d
    dw PalC2_B2E ; $2e
    dw PalC2_B2F ; $2f
    dw PalC2_B30 ; $30
jr_00b_4062:
    dw PalC2_B31 ; $31
    dw PalC2_B32 ; $32
    dw PalC2_B33 ; $33
    dw PalC2_B34 ; $34
    db LOW(PalC2_B35) ; $35
jr_00b_406b:
    db HIGH(PalC2_B35) ; $35
    dw PalC2_B36 ; $36
    dw PalC2_B37 ; $37
    dw PalC2_B38 ; $38
    dw PalC2_B39 ; $39
jr_00b_4074:
    dw PalC2_B3A ; $3a
    dw PalC2_B3B ; $3b
    dw PalC2_B3C ; $3c
    dw PalC2_B3D ; $3d
    dw PalC2_B3E ; $3e
    dw PalC2_B3F ; $3f
    dw PalC2_B40 ; $40
    dw PalC2_B41 ; $41
    dw PalC2_B42 ; $42
jr_00b_4086:
    dw PalC2_B43 ; $43
    db $98
    db $51
    db $d8
    db $51
    db $18
    db $52
    db $58
jr_00b_408f:
    db $52, $98, $52, $d8, $52, $18, $53, $58, $53
jr_00b_4098:
Case2BathroomPalette:

PalC2_B00:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.pal", $0, $9
jr_00b_40a1:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.pal", $9, $9
jr_00b_40aa:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.pal", $12, $9
jr_00b_40b3:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.pal", $1b, $9
jr_00b_40bc:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.pal", $24, $9
jr_00b_40c5:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.pal", $2d, $9
jr_00b_40ce:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.pal", $36, $9
jr_00b_40d7:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.pal", $3f, $1

PalC2_B01:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-bg.pal", $0, $8
jr_00b_40e0:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-bg.pal", $8, $9
jr_00b_40e9:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-bg.pal", $11, $a
jr_00b_40f3:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-bg.pal", $1b, $20
jr_00b_4113:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-bg.pal", $3b, $5

PalC2_B02:
    INCBIN "../../res/scene/case2/02-lucky-casino-hall/s02-bg.pal", $0, $40

PalC2_B03:
    INCBIN "../../res/scene/case2/03-lucky-lobby/s03-bg.pal", $0, $40

PalC2_B04:
    INCBIN "../../res/scene/case2/04-lucky-cashier/s04-bg.pal", $0, $19
jr_00b_41b1:
    INCBIN "../../res/scene/case2/04-lucky-cashier/s04-bg.pal", $19, $27

PalC2_B05:
    INCBIN "../../res/scene/case2/05-rudy-blackjack/s05-bg.pal", $0, $40

PalC2_B06:
    INCBIN "../../res/scene/case2/06-stogie-martin/s06-bg.pal", $0, $9
Call_00b_4221:
    INCBIN "../../res/scene/case2/06-stogie-martin/s06-bg.pal", $9, $37

PalC2_B07:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.pal", $0, $40

PalC2_B08:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.pal", $0, $40

PalC2_B09:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.pal", $0, $40

PalC2_B0A:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.pal", $0, $40

PalC2_B0B:
    INCBIN "../../res/scene/case2/0b-ventini-office/s0b-bg.pal", $0, $40

PalC2_B0C:
    INCBIN "../../res/scene/case2/0c-malone-office/s0c-bg.pal", $0, $40

PalC2_B0D:
    INCBIN "../../res/scene/case2/0d-lucky-entrance/s0d-bg.pal", $0, $a
jr_00b_43e2:
    INCBIN "../../res/scene/case2/0d-lucky-entrance/s0d-bg.pal", $a, $1e
jr_00b_4400:
    INCBIN "../../res/scene/case2/0d-lucky-entrance/s0d-bg.pal", $28, $18

PalC2_B0E:
    INCBIN "../../res/scene/case2/0e-desert/s0e-bg.pal", $0, $40

PalC2_B0F:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.pal", $0, $13
jr_00b_446b:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.pal", $13, $2d

PalC2_B10:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.pal", $0, $40

PalC2_B11:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.pal", $0, $40

PalC2_B12:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-bg.pal", $0, $40

PalC2_B13:
    INCBIN "../../res/scene/case2/13-vegas-baggage/s13-bg.pal", $0, $40

PalC2_B14:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.pal", $0, $40

PalC2_B15:
    INCBIN "../../res/scene/case2/15-train-platform/s15-bg.pal", $0, $40

PalC2_B16:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-bg.pal", $0, $40

PalC2_B17:
    INCBIN "../../res/scene/case2/17-conductor/s17-bg.pal", $0, $40

PalC2_B18:
    INCBIN "../../res/scene/case2/18-train-interior/s18-bg.pal", $0, $40

PalC2_B19:
    INCBIN "../../res/scene/case2/19-conductor/s19-bg.pal", $0, $3
jr_00b_46db:
    INCBIN "../../res/scene/case2/19-conductor/s19-bg.pal", $3, $1a
jr_00b_46f5:
    INCBIN "../../res/scene/case2/19-conductor/s19-bg.pal", $1d, $18
jr_00b_470d:
    INCBIN "../../res/scene/case2/19-conductor/s19-bg.pal", $35, $b

PalC2_B1A:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.pal", $0, $40

PalC2_B1B:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.pal", $0, $3
jr_00b_475b:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.pal", $3, $1a
jr_00b_4775:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.pal", $1d, $18
jr_00b_478d:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.pal", $35, $b

PalC2_B1C:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.pal", $0, $40

PalC2_B1D:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.pal", $0, $40

PalC2_B1E:
    INCBIN "../../res/scene/case2/1e-gabby-cab/s1e-bg.pal", $0, $40

PalC2_B1F:
    INCBIN "../../res/scene/case2/1f-ace-street/s1f-bg.pal", $0, $40

PalC2_B20:
    INCBIN "../../res/scene/case2/20-ace-apartment-door/s20-bg.pal", $0, $40

PalC2_B21:
    INCBIN "../../res/scene/case2/21-ace-apartment/s21-bg.pal", $0, $40

PalC2_B22:
    INCBIN "../../res/scene/case2/22-joes-place/s22-bg.pal", $0, $40

PalC2_B23:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.pal", $0, $40

PalC2_B24:
    INCBIN "../../res/scene/case2/24-joes-hall/s24-bg.pal", $0, $9
jr_00b_49a1:
    INCBIN "../../res/scene/case2/24-joes-hall/s24-bg.pal", $9, $37

PalC2_B25:
    INCBIN "../../res/scene/case2/25-secretary-office/s25-bg.pal", $0, $38
jr_00b_4a10:
    INCBIN "../../res/scene/case2/25-secretary-office/s25-bg.pal", $38, $8

PalC2_B26:
    INCBIN "../../res/scene/case2/26-joes-bar/s26-bg.pal", $0, $f
jr_00b_4a27:
    INCBIN "../../res/scene/case2/26-joes-bar/s26-bg.pal", $f, $1
jr_00b_4a28:
    INCBIN "../../res/scene/case2/26-joes-bar/s26-bg.pal", $10, $7
jr_00b_4a2f:
    INCBIN "../../res/scene/case2/26-joes-bar/s26-bg.pal", $17, $1
jr_00b_4a30:
    INCBIN "../../res/scene/case2/26-joes-bar/s26-bg.pal", $18, $28

PalC2_B27:
    INCBIN "../../res/scene/case2/27-joes-manhole/s27-bg.pal", $0, $11
jr_00b_4a69:
    INCBIN "../../res/scene/case2/27-joes-manhole/s27-bg.pal", $11, $2f

PalC2_B28:
    INCBIN "../../res/scene/case2/28-joes-casino/s28-bg.pal", $0, $29
jr_00b_4ac1:
    INCBIN "../../res/scene/case2/28-joes-casino/s28-bg.pal", $29, $1
jr_00b_4ac2:
    INCBIN "../../res/scene/case2/28-joes-casino/s28-bg.pal", $2a, $f
jr_00b_4ad1:
    INCBIN "../../res/scene/case2/28-joes-casino/s28-bg.pal", $39, $7
jr_00b_4ad8:

PalC2_B29:
    INCBIN "../../res/scene/case2/29-joes-upper-hall/s29-bg.pal", $0, $6
jr_00b_4ade:
    INCBIN "../../res/scene/case2/29-joes-upper-hall/s29-bg.pal", $6, $3a

PalC2_B2A:
    INCBIN "../../res/scene/case2/2a-siegel-office/s2a-bg.pal", $0, $a
jr_00b_4b22:
    INCBIN "../../res/scene/case2/2a-siegel-office/s2a-bg.pal", $a, $36

PalC2_B2B:
    INCBIN "../../res/scene/case2/2b-joes-private-door/s2b-bg.pal", $0, $40

PalC2_B2C:
    INCBIN "../../res/scene/case2/2c-joes-side-alley/s2c-bg.pal", $0, $40

PalC2_B2D:
    INCBIN "../../res/scene/case2/2d-police-station/s2d-bg.pal", $0, $40

PalC2_B2E:
    INCBIN "../../res/scene/case2/2e-sugar-street/s2e-bg.pal", $0, $40

PalC2_B2F:
    INCBIN "../../res/scene/case2/2f-sugar-apartment/s2f-bg.pal", $0, $40

PalC2_B30:
    INCBIN "../../res/scene/case2/30-city-morgue/s30-bg.pal", $0, $40

PalC2_B31:
    INCBIN "../../res/scene/case2/31-morgue-clerk/s31-bg.pal", $0, $3
jr_00b_4cdb:
    INCBIN "../../res/scene/case2/31-morgue-clerk/s31-bg.pal", $3, $8
jr_00b_4ce3:
    INCBIN "../../res/scene/case2/31-morgue-clerk/s31-bg.pal", $b, $1e
jr_00b_4d01:
    INCBIN "../../res/scene/case2/31-morgue-clerk/s31-bg.pal", $29, $12
jr_00b_4d13:
    INCBIN "../../res/scene/case2/31-morgue-clerk/s31-bg.pal", $3b, $5

PalC2_B32:
    INCBIN "../../res/scene/case2/32-morgue-drawers/s32-bg.pal", $0, $40

PalC2_B33:
    INCBIN "../../res/scene/case2/33-laundry-hamper/s33-bg.pal", $0, $40

PalC2_B34:
    INCBIN "../../res/scene/case2/34-reliant-cleaners/s34-bg.pal", $0, $40

PalC2_B35:
    INCBIN "../../res/scene/case2/35-reliant-laundry/s35-bg.pal", $0, $40

PalC2_B36:
    INCBIN "../../res/scene/case2/36-reliant-hall/s36-bg.pal", $0, $40

PalC2_B37:
    INCBIN "../../res/scene/case2/37-reliant-office/s37-bg.pal", $0, $40

PalC2_B38:
    INCBIN "../../res/scene/case2/38-ventini-secret/s38-bg.pal", $0, $40

PalC2_B39:
    INCBIN "../../res/scene/case2/39-hitman/s39-bg.pal", $0, $3
jr_00b_4edb:
    INCBIN "../../res/scene/case2/39-hitman/s39-bg.pal", $3, $f
jr_00b_4eea:
    INCBIN "../../res/scene/case2/39-hitman/s39-bg.pal", $12, $7
jr_00b_4ef1:
    INCBIN "../../res/scene/case2/39-hitman/s39-bg.pal", $19, $5
jr_00b_4ef6:
    INCBIN "../../res/scene/case2/39-hitman/s39-bg.pal", $1e, $22

PalC2_B3A:
    INCBIN "../../res/scene/case2/3a-moose-spike/s3a-bg.pal", $0, $40

PalC2_B3B:
    INCBIN "../../res/scene/case2/3b-dog/s3b-bg.pal", $0, $40

PalC2_B3C:
    INCBIN "../../res/scene/case2/3c-policeman/s3c-bg.pal", $0, $11
jr_00b_4fa9:
    INCBIN "../../res/scene/case2/3c-policeman/s3c-bg.pal", $11, $10
jr_00b_4fb9:
    INCBIN "../../res/scene/case2/3c-policeman/s3c-bg.pal", $21, $1f

PalC2_B3D:
    INCBIN "../../res/scene/case2/3d-handcuffs/s3d-bg.pal", $0, $2b
jr_00b_5003:
    INCBIN "../../res/scene/case2/3d-handcuffs/s3d-bg.pal", $2b, $2
jr_00b_5005:
    INCBIN "../../res/scene/case2/3d-handcuffs/s3d-bg.pal", $2d, $13

PalC2_B3E:
    INCBIN "../../res/scene/case2/3e-ace-grave/s3e-bg.pal", $0, $2a
jr_00b_5042:
    INCBIN "../../res/scene/case2/3e-ace-grave/s3e-bg.pal", $2a, $8
jr_00b_504a:
    INCBIN "../../res/scene/case2/3e-ace-grave/s3e-bg.pal", $32, $7
jr_00b_5051:
    INCBIN "../../res/scene/case2/3e-ace-grave/s3e-bg.pal", $39, $7

PalC2_B3F:
    INCBIN "../../res/scene/case2/3f-casino-bouncer/s3f-bg.pal", $0, $40

PalC2_B40:
    INCBIN "../../res/scene/case2/40-lemonade-stand/s40-bg.pal", $0, $40

PalC2_B41:
    INCBIN "../../res/scene/case2/41-vegas-times/s41-bg.pal", $0, $40

PalC2_B42:
    INCBIN "../../res/scene/case2/42-vegas-times/s42-bg.pal", $0, $1
jr_00b_5119:
    INCBIN "../../res/scene/case2/42-vegas-times/s42-bg.pal", $1, $3a
jr_00b_5153:
    INCBIN "../../res/scene/case2/42-vegas-times/s42-bg.pal", $3b, $5

PalC2_B43:
    INCBIN "../../res/scene/case2/43-card-tiles/s43-bg.pal", $0, $2
jr_00b_515a:
    INCBIN "../../res/scene/case2/43-card-tiles/s43-bg.pal", $2, $12
jr_00b_516c:
    INCBIN "../../res/scene/case2/43-card-tiles/s43-bg.pal", $14, $2c
    nop
    nop
    ld b, $00
    ld l, b
    nop
    db $ed
    stop
    nop
    ldh [rNR14], a
    ld l, b
    nop
    ld c, a
    ld de, $0000
    add a
    db $10
    ld [$6c18], a
    add hl, hl
    nop
    nop
    ld b, $00
    ld l, b
    nop
    rst RST_20
    inc e
    nop
    nop
    add a
    db $10
    ld l, b
    nop
    db $ed
    stop
    nop
    ldh [rNR14], a
    ld l, b
    nop
    ld c, a
    ld de, $0000
    add hl, hl
    dec h
    and a
    inc e
    ld l, h
    ld sp, $0000
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld b, h
    ld [$14a6], sp
    ld a, [bc]
    ld hl, $0000
    ld b, l
    ld [$1088], sp
    ld c, d
    ld hl, $0000
    ld h, h
    inc c
    and l
    inc d
    add h
    stop
    nop
    ld b, h
    ld [$0c85], sp
    ret z

    jr jr_00b_51f9

jr_00b_51f9:
    nop
    add l
    db $10
    ld b, h
    nop
    ld h, [hl]
    nop
    nop
    nop
    ld b, e
    nop
    ld b, [hl]
    nop
    ld c, d
    ld hl, $254b
    ld b, [hl]
    ld [$108a], sp
    ret z

    jr jr_00b_5211

jr_00b_5211:
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld h, $04
    adc d
    inc b
    rrca
    dec b
    nop
    nop
    ld h, $04
    inc c
    nop
    adc h
    ld [$0000], sp
    ld h, $04
    ld b, b
    nop
    adc h
    ld [$0000], sp
    ld h, $04
    ld b, b
    nop
    xor a
    nop
    ld [$2600], sp
    inc b
    adc d
    inc b
    rrca
    jr jr_00b_5241

jr_00b_5241:
    nop
    adc h
    inc b
    add hl, bc
    ld hl, $180f
    and b
    nop
    ret nz

    nop
    nop
    ld bc, $180f
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld a, [hl+]
    ld hl, $0001
    add $18
    ld l, e
    dec l
    ld h, e
    inc c
    ld l, d
    ld [$00a9], sp
    xor e
    inc c
    nop
    nop
    ldh [$ff7c], a
    xor c
    nop
    xor e
    inc c
    nop
    nop
    xor e
    db $10
    dec b
    nop
    ld a, [bc]
    dec e
    nop
    nop
    xor e
    db $10
    add $18
    add a
    inc b
    ld h, e
    inc c
    ld a, [bc]
    dec e
    add a
    inc c
    dec b
    nop
    ld h, e
    inc c
    ldh [$ff7c], a
    add $18
    ld l, d
    ld [$0000], sp
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    ld bc, $0400
    nop
    adc d
    ld [$14e6], sp
    rlca
    ld bc, $14a6
    and [hl]
    inc e
    dec h
    nop
    and [hl]
    inc e
    inc b
    nop
    rlca
    ld bc, $0025
    and [hl]
    inc e
    adc d
    ld [$1d28], sp
    dec h
    nop
    ld b, $00
    and [hl]
    inc d
    and [hl]
    inc e
    dec h
    nop
    ld h, [hl]
    nop
    adc d
    ld [$1ca6], sp
    ld bc, $6600
    nop
    ld b, $00
    and [hl]
    inc e
    ld bc, $0000
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    add l
    inc c
    add hl, bc
    add hl, de
    ld c, d
    add hl, hl
    nop
    nop
    inc h
    nop
    ld h, a
    nop
    inc l
    ld de, $0000
    ld c, d
    add hl, hl
    ld h, a
    nop
    inc l
    ld de, $0000
    ld h, a
    nop
    ld [bc], a
    nop
    ld a, [hl+]
    nop
    ld b, b
    nop
    nop
    inc h
    ld h, a
    nop
    ld c, d
    add hl, hl
    dec h
    nop
    ld c, d
    add hl, hl
    add hl, bc
    add hl, de
    ld h, a
    nop
    nop
    nop
    ld c, d
    add hl, hl
    ld [bc], a
    nop
    ld a, [hl+]
    nop
    nop
    nop
    ld [bc], a
    ld a, [hl]
    ld e, $00
    ld a, a
    inc bc
    nop
    nop
    ld sp, $f746
    ld e, [hl]
    nop
    ld d, $00
    nop
    ldh [$ff7d], a
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    add b
    ld [bc], a
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    cp a
    nop
    nop
    ld d, $ff
    ld a, a
    nop
    nop
    rra
    ld b, h
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
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    dw PalC2_O00 ; $00
    dw PalC2_O01 ; $01
    dw PalC2_O02 ; $02
    dw PalC2_O03 ; $03
    dw PalC2_O04 ; $04
    dw PalC2_O05 ; $05
    dw PalC2_O06 ; $06
    dw PalC2_O07 ; $07
    dw PalC2_O08 ; $08
    dw PalC2_O09 ; $09
    dw PalC2_O0A ; $0a
    dw PalC2_O0B ; $0b
    dw PalC2_O0C ; $0c
    dw PalC2_O0D ; $0d
    dw PalC2_O0E ; $0e
    dw PalC2_O0F ; $0f
    dw PalC2_O10 ; $10
    dw PalC2_O11 ; $11
    dw PalC2_O12 ; $12
    dw PalC2_O13 ; $13
    dw PalC2_O14 ; $14
    dw PalC2_O15 ; $15
    dw PalC2_O16 ; $16
    dw PalC2_O17 ; $17
    dw PalC2_O18 ; $18
    dw PalC2_O19 ; $19
    dw PalC2_O1A ; $1a
    dw PalC2_O1B ; $1b
    dw PalC2_O1C ; $1c
    dw PalC2_O1D ; $1d
    dw PalC2_O1E ; $1e
    dw PalC2_O1F ; $1f
    dw PalC2_O20 ; $20
    dw PalC2_O21 ; $21
    dw PalC2_O22 ; $22
    dw PalC2_O23 ; $23
    dw PalC2_O24 ; $24
    dw PalC2_O25 ; $25
    dw PalC2_O26 ; $26
    dw PalC2_O27 ; $27
    dw PalC2_O28 ; $28
    dw PalC2_O29 ; $29
    dw PalC2_O2A ; $2a
jr_00b_53ee:
    dw PalC2_O2B ; $2b
    dw PalC2_O2C ; $2c
    dw PalC2_O2D ; $2d
    dw PalC2_O2E ; $2e
    dw PalC2_O2F ; $2f
    dw PalC2_O30 ; $30
    dw PalC2_O31 ; $31
    dw PalC2_O32 ; $32
    dw PalC2_O33 ; $33
jr_00b_5400:
    dw PalC2_O34 ; $34
    dw PalC2_O35 ; $35
    dw PalC2_O36 ; $36
    dw PalC2_O37 ; $37
    dw PalC2_O38 ; $38
    dw PalC2_O39 ; $39
    dw PalC2_O3A ; $3a
    dw PalC2_O3B ; $3b
    dw PalC2_O3C ; $3c
jr_00b_5412:
    dw PalC2_O3D ; $3d
    dw PalC2_O3E ; $3e
    dw PalC2_O3F ; $3f
    dw PalC2_O40 ; $40
    db LOW(PalC2_O41) ; $41
jr_00b_541b:
    db HIGH(PalC2_O41) ; $41
    dw PalC2_O42 ; $42
    dw PalC2_O43 ; $43
    jr nc, jr_00b_5487

    ld [hl], b
    ld h, l

jr_00b_5424:
    or b
    ld h, l
    ldh a, [$ff65]
    jr nc, jr_00b_5490

    ld [hl], b
    ld h, [hl]
    or b

jr_00b_542d:
    db $66, $f0, $66
Case2BathroomObjectPalettes:

PalC2_O00:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.pal", $0, $6
jr_00b_5436:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.pal", $6, $9
jr_00b_543f:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.pal", $f, $9
jr_00b_5448:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.pal", $18, $9
jr_00b_5451:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.pal", $21, $9
jr_00b_545a:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.pal", $2a, $9
jr_00b_5463:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.pal", $33, $9
jr_00b_546c:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.pal", $3c, $4

PalC2_O01:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-objects.pal", $0, $17
jr_00b_5487:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-objects.pal", $17, $9
jr_00b_5490:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-objects.pal", $20, $20

PalC2_O02:
    INCBIN "../../res/scene/case2/02-lucky-casino-hall/s02-objects.pal", $0, $29
jr_00b_54d9:
    INCBIN "../../res/scene/case2/02-lucky-casino-hall/s02-objects.pal", $29, $17

PalC2_O03:
    INCBIN "../../res/scene/case2/03-lucky-lobby/s03-objects.pal", $0, $40

PalC2_O04:
    INCBIN "../../res/scene/case2/04-lucky-cashier/s04-objects.pal", $0, $40

PalC2_O05:
    INCBIN "../../res/scene/case2/05-rudy-blackjack/s05-objects.pal", $0, $40

PalC2_O06:
    INCBIN "../../res/scene/case2/06-stogie-martin/s06-objects.pal", $0, $40

PalC2_O07:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-objects.pal", $0, $40

PalC2_O08:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-objects.pal", $0, $40

PalC2_O09:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-objects.pal", $0, $40

PalC2_O0A:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-objects.pal", $0, $40

PalC2_O0B:
    INCBIN "../../res/scene/case2/0b-ventini-office/s0b-objects.pal", $0, $40

PalC2_O0C:
    INCBIN "../../res/scene/case2/0c-malone-office/s0c-objects.pal", $0, $40

PalC2_O0D:
    INCBIN "../../res/scene/case2/0d-lucky-entrance/s0d-objects.pal", $0, $40

PalC2_O0E:
    INCBIN "../../res/scene/case2/0e-desert/s0e-objects.pal", $0, $40

PalC2_O0F:
    INCBIN "../../res/scene/case2/0f-desert/s0f-objects.pal", $0, $40

PalC2_O10:
    INCBIN "../../res/scene/case2/10-desert/s10-objects.pal", $0, $40

PalC2_O11:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-objects.pal", $0, $40

PalC2_O12:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-objects.pal", $0, $40

PalC2_O13:
    INCBIN "../../res/scene/case2/13-vegas-baggage/s13-objects.pal", $0, $40

PalC2_O14:
    INCBIN "../../res/scene/case2/14-train-platform/s14-objects.pal", $0, $40

PalC2_O15:
    INCBIN "../../res/scene/case2/15-train-platform/s15-objects.pal", $0, $40

PalC2_O16:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-objects.pal", $0, $40

PalC2_O17:
    INCBIN "../../res/scene/case2/17-conductor/s17-objects.pal", $0, $40

PalC2_O18:
    INCBIN "../../res/scene/case2/18-train-interior/s18-objects.pal", $0, $40

PalC2_O19:
    INCBIN "../../res/scene/case2/19-conductor/s19-objects.pal", $0, $40

PalC2_O1A:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-objects.pal", $0, $40

PalC2_O1B:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-objects.pal", $0, $40

PalC2_O1C:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-objects.pal", $0, $10
jr_00b_5b40:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-objects.pal", $10, $30

PalC2_O1D:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-objects.pal", $0, $40

PalC2_O1E:
    INCBIN "../../res/scene/case2/1e-gabby-cab/s1e-objects.pal", $0, $40

PalC2_O1F:
    INCBIN "../../res/scene/case2/1f-ace-street/s1f-objects.pal", $0, $40

PalC2_O20:
    INCBIN "../../res/scene/case2/20-ace-apartment-door/s20-objects.pal", $0, $40

PalC2_O21:
    INCBIN "../../res/scene/case2/21-ace-apartment/s21-objects.pal", $0, $40

PalC2_O22:
    INCBIN "../../res/scene/case2/22-joes-place/s22-objects.pal", $0, $40

PalC2_O23:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-objects.pal", $0, $40

PalC2_O24:
    INCBIN "../../res/scene/case2/24-joes-hall/s24-objects.pal", $0, $40

PalC2_O25:
    INCBIN "../../res/scene/case2/25-secretary-office/s25-objects.pal", $0, $40

PalC2_O26:
    INCBIN "../../res/scene/case2/26-joes-bar/s26-objects.pal", $0, $40

PalC2_O27:
    INCBIN "../../res/scene/case2/27-joes-manhole/s27-objects.pal", $0, $40

PalC2_O28:
    INCBIN "../../res/scene/case2/28-joes-casino/s28-objects.pal", $0, $40

PalC2_O29:
    INCBIN "../../res/scene/case2/29-joes-upper-hall/s29-objects.pal", $0, $40

PalC2_O2A:
    INCBIN "../../res/scene/case2/2a-siegel-office/s2a-objects.pal", $0, $40

PalC2_O2B:
    INCBIN "../../res/scene/case2/2b-joes-private-door/s2b-objects.pal", $0, $10
Jump_00b_5f00:
    INCBIN "../../res/scene/case2/2b-joes-private-door/s2b-objects.pal", $10, $30

PalC2_O2C:
    INCBIN "../../res/scene/case2/2c-joes-side-alley/s2c-objects.pal", $0, $40

PalC2_O2D:
    INCBIN "../../res/scene/case2/2d-police-station/s2d-objects.pal", $0, $40

PalC2_O2E:
    INCBIN "../../res/scene/case2/2e-sugar-street/s2e-objects.pal", $0, $40

PalC2_O2F:
    INCBIN "../../res/scene/case2/2f-sugar-apartment/s2f-objects.pal", $0, $10
Jump_00b_6000:
    INCBIN "../../res/scene/case2/2f-sugar-apartment/s2f-objects.pal", $10, $30

PalC2_O30:
    INCBIN "../../res/scene/case2/30-city-morgue/s30-objects.pal", $0, $40

PalC2_O31:
    INCBIN "../../res/scene/case2/31-morgue-clerk/s31-objects.pal", $0, $40

PalC2_O32:
    INCBIN "../../res/scene/case2/32-morgue-drawers/s32-objects.pal", $0, $40

PalC2_O33:
    INCBIN "../../res/scene/case2/33-laundry-hamper/s33-objects.pal", $0, $40

PalC2_O34:
    INCBIN "../../res/scene/case2/34-reliant-cleaners/s34-objects.pal", $0, $40

PalC2_O35:
    INCBIN "../../res/scene/case2/35-reliant-laundry/s35-objects.pal", $0, $40

PalC2_O36:
    INCBIN "../../res/scene/case2/36-reliant-hall/s36-objects.pal", $0, $40

PalC2_O37:
    INCBIN "../../res/scene/case2/37-reliant-office/s37-objects.pal", $0, $40

PalC2_O38:
    INCBIN "../../res/scene/case2/38-ventini-secret/s38-objects.pal", $0, $40

PalC2_O39:
    INCBIN "../../res/scene/case2/39-hitman/s39-objects.pal", $0, $1e
jr_00b_628e:
    INCBIN "../../res/scene/case2/39-hitman/s39-objects.pal", $1e, $1d
jr_00b_62ab:
    INCBIN "../../res/scene/case2/39-hitman/s39-objects.pal", $3b, $5

PalC2_O3A:
    INCBIN "../../res/scene/case2/3a-moose-spike/s3a-objects.pal", $0, $40

PalC2_O3B:
    INCBIN "../../res/scene/case2/3b-dog/s3b-objects.pal", $0, $40

PalC2_O3C:
    INCBIN "../../res/scene/case2/3c-policeman/s3c-objects.pal", $0, $40

PalC2_O3D:
    INCBIN "../../res/scene/case2/3d-handcuffs/s3d-objects.pal", $0, $40

PalC2_O3E:
    INCBIN "../../res/scene/case2/3e-ace-grave/s3e-objects.pal", $0, $40

PalC2_O3F:
    INCBIN "../../res/scene/case2/3f-casino-bouncer/s3f-objects.pal", $0, $40

PalC2_O40:
    INCBIN "../../res/scene/case2/40-lemonade-stand/s40-objects.pal", $0, $40

PalC2_O41:
    INCBIN "../../res/scene/case2/41-vegas-times/s41-objects.pal", $0, $40

PalC2_O42:
    INCBIN "../../res/scene/case2/42-vegas-times/s42-objects.pal", $0, $40

PalC2_O43:
    INCBIN "../../res/scene/case2/43-card-tiles/s43-objects.pal", $0, $40
    db $5f, $5b
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
    ld bc, $5b5f
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, a
    ld e, a
    ld e, e
    db $eb
    inc c
    ld [hl], b
    dec e
    dec [hl]
    ld [hl], $5f
    ld e, e
    nop
    nop
    rra
    nop
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
