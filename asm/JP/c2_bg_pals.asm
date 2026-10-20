; 76 Case II palette pointers and 64-byte records.
; Entries $44-$4b extend beyond the exported scene palette set.

C2BgPalRefs:
    dw PalC2_B00
    dw PalC2_B01
    dw PalC2_B02
    dw PalC2_B03
    dw PalC2_B04
    dw PalC2_B05
    dw PalC2_B06
    dw PalC2_B07
    dw PalC2_B08
    dw PalC2_B09
    dw PalC2_B0A
    dw PalC2_B0B
    dw PalC2_B0C
    dw PalC2_B0D
    dw PalC2_B0E
    dw PalC2_B0F
    dw PalC2_B10
    dw PalC2_B11
    dw PalC2_B12
    dw PalC2_B13
    dw PalC2_B14
    dw PalC2_B15
    dw PalC2_B16
    dw PalC2_B17
    dw PalC2_B18
    dw PalC2_B19
    dw PalC2_B1A
    dw PalC2_B1B
    dw PalC2_B1C
    dw PalC2_B1D
    dw PalC2_B1E
    dw PalC2_B1F
    dw PalC2_B20
    dw PalC2_B21
    dw PalC2_B22
    ; Pointer to PalC2_B23; split bytes retain the interior label.
    db LOW(PalC2_B23)
jr_00b_4047:
    db HIGH(PalC2_B23)
    dw PalC2_B24
    dw PalC2_B25
    dw PalC2_B26
    dw PalC2_B27
jr_00b_4050:
    dw PalC2_B28
    dw PalC2_B29
    dw PalC2_B2A
    dw PalC2_B2B
    ; Pointer to PalC2_B2C; split bytes retain the interior label.
    db LOW(PalC2_B2C)
jr_00b_4059:
    db HIGH(PalC2_B2C)
    dw PalC2_B2D
    dw PalC2_B2E
    dw PalC2_B2F
    dw PalC2_B30
jr_00b_4062:
    dw PalC2_B31
    dw PalC2_B32
    dw PalC2_B33
    dw PalC2_B34
    ; Pointer to PalC2_B35; split bytes retain the interior label.
    db LOW(PalC2_B35)
jr_00b_406b:
    db HIGH(PalC2_B35)
    dw PalC2_B36
    dw PalC2_B37
    dw PalC2_B38
    dw PalC2_B39
jr_00b_4074:
    dw PalC2_B3A
    dw PalC2_B3B
    dw PalC2_B3C
    dw PalC2_B3D
    dw PalC2_B3E
    dw PalC2_B3F
    dw PalC2_B40
    dw PalC2_B41
    dw PalC2_B42
jr_00b_4086:
    dw PalC2_B43
    dw PalC2_B44
    dw PalC2_B45
    dw PalC2_B46
    ; Pointer to PalC2_B47; split bytes retain the interior label.
    db LOW(PalC2_B47)
jr_00b_408f:
    db HIGH(PalC2_B47)
    dw PalC2_B48
    dw PalC2_B49
    dw PalC2_B4A
    dw PalC2_B4B
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

PalC2_B44:
    db $00, $00, $06, $00, $68, $00, $ed, $10, $00, $00, $e0, $14, $68, $00, $4f, $11
    db $00, $00, $87, $10, $ea, $18, $6c, $29, $00, $00, $06, $00, $68, $00, $e7, $1c
    db $00, $00, $87, $10, $68, $00, $ed, $10, $00, $00, $e0, $14, $68, $00, $4f, $11
    db $00, $00, $29, $25, $a7, $1c, $6c, $31, $00, $00, $02, $7e, $1e, $00, $7f, $03

PalC2_B45:
    db $00, $00, $44, $08, $a6, $14, $0a, $21, $00, $00, $45, $08, $88, $10, $4a, $21
    db $00, $00, $64, $0c, $a5, $14, $84, $10, $00, $00, $44, $08, $85, $0c, $c8, $18
    db $00
jr_00b_51f9:
    db $00, $85, $10, $44, $00, $66, $00, $00, $00, $43, $00, $46, $00, $4a, $21, $4b
    db $25, $46, $08, $8a, $10, $c8, $18, $00
jr_00b_5211:
    db $00, $02, $7e, $1e, $00, $7f, $03

PalC2_B46:
    db $00, $00, $26, $04, $8a, $04, $0f, $05, $00, $00, $26, $04, $0c, $00, $8c, $08
    db $00, $00, $26, $04, $40, $00, $8c, $08, $00, $00, $26, $04, $40, $00, $af, $00
    db $08, $00, $26, $04, $8a, $04, $0f, $18, $00
jr_00b_5241:
    db $00, $8c, $04, $09, $21, $0f, $18, $a0, $00, $c0, $00, $00, $01, $0f, $18, $00
    db $00, $02, $7e, $1e, $00, $7f, $03

PalC2_B47:
    db $2a, $21, $01, $00, $c6, $18, $6b, $2d, $63, $0c, $6a, $08, $a9, $00, $ab, $0c
    db $00, $00, $e0, $7c, $a9, $00, $ab, $0c, $00, $00, $ab, $10, $05, $00, $0a, $1d
    db $00, $00, $ab, $10, $c6, $18, $87, $04, $63, $0c, $0a, $1d, $87, $0c, $05, $00
    db $63, $0c, $e0, $7c, $c6, $18, $6a, $08, $00, $00, $02, $7e, $1e, $00, $7f, $03

PalC2_B48:
    db $01, $00, $04, $00, $8a, $08, $e6, $14, $07, $01, $a6, $14, $a6, $1c, $25, $00
    db $a6, $1c, $04, $00, $07, $01, $25, $00, $a6, $1c, $8a, $08, $28, $1d, $25, $00
    db $06, $00, $a6, $14, $a6, $1c, $25, $00, $66, $00, $8a, $08, $a6, $1c, $01, $00
    db $66, $00, $06, $00, $a6, $1c, $01, $00, $00, $00, $02, $7e, $1e, $00, $7f, $03

PalC2_B49:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $7e, $1e, $00, $7f, $03

PalC2_B4A:
    db $00, $00, $85, $0c, $09, $19, $4a, $29, $00, $00, $24, $00, $67, $00, $2c, $11
    db $00, $00, $4a, $29, $67, $00, $2c, $11, $00, $00, $67, $00, $02, $00, $2a, $00
    db $40, $00, $00, $24, $67, $00, $4a, $29, $25, $00, $4a, $29, $09, $19, $67, $00
    db $00, $00, $4a, $29, $02, $00, $2a, $00, $00, $00, $02, $7e, $1e, $00, $7f, $03

PalC2_B4B:
    db $00, $00, $31, $46, $f7, $5e, $00, $16, $00, $00, $e0, $7d, $00, $16, $ff, $7f
    db $00, $00, $80, $02, $00, $16, $ff, $7f, $00, $00, $bf, $00, $00, $16, $ff, $7f
    db $00, $00, $1f, $44, $00, $16, $ff, $7f, $00, $00, $31, $00, $00, $16, $ff, $03
    db $ff, $7f, $31, $46, $f7, $5e, $00, $16, $00, $00, $a9, $0c, $f3, $2d, $5f, $5b
