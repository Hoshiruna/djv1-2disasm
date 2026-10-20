; 76 Case II palette pointers and 64-byte records.
; Entries $44-$4b extend beyond the exported scene palette set.
C2ObjPalRefs:
    dw PalC2_O00
    dw PalC2_O01
    dw PalC2_O02
    dw PalC2_O03
    dw PalC2_O04
    dw PalC2_O05
    dw PalC2_O06
    dw PalC2_O07
    dw PalC2_O08
    dw PalC2_O09
    dw PalC2_O0A
    dw PalC2_O0B
    dw PalC2_O0C
    dw PalC2_O0D
    dw PalC2_O0E
    dw PalC2_O0F
    dw PalC2_O10
    dw PalC2_O11
    dw PalC2_O12
    dw PalC2_O13
    dw PalC2_O14
    dw PalC2_O15
    dw PalC2_O16
    dw PalC2_O17
    dw PalC2_O18
    dw PalC2_O19
    dw PalC2_O1A
    dw PalC2_O1B
    dw PalC2_O1C
    dw PalC2_O1D
    dw PalC2_O1E
    dw PalC2_O1F
    dw PalC2_O20
    dw PalC2_O21
    dw PalC2_O22
    dw PalC2_O23
    dw PalC2_O24
    dw PalC2_O25
    dw PalC2_O26
    dw PalC2_O27
    dw PalC2_O28
    dw PalC2_O29
    dw PalC2_O2A
jr_00b_53ee:
    dw PalC2_O2B
    dw PalC2_O2C
    dw PalC2_O2D
    dw PalC2_O2E
    dw PalC2_O2F
    dw PalC2_O30
    dw PalC2_O31
    dw PalC2_O32
    dw PalC2_O33
jr_00b_5400:
    dw PalC2_O34
    dw PalC2_O35
    dw PalC2_O36
    dw PalC2_O37
    dw PalC2_O38
    dw PalC2_O39
    dw PalC2_O3A
    dw PalC2_O3B
    dw PalC2_O3C
jr_00b_5412:
    dw PalC2_O3D
    dw PalC2_O3E
    dw PalC2_O3F
    dw PalC2_O40
    ; Pointer to PalC2_O41; split bytes retain the interior label.
    db LOW(PalC2_O41)
jr_00b_541b:
    db HIGH(PalC2_O41)
    dw PalC2_O42
    dw PalC2_O43
    dw PalC2_O44
    dw PalC2_O45
jr_00b_5424:
    dw PalC2_O46
    dw PalC2_O47
    dw PalC2_O48
    dw PalC2_O49
    ; Pointer to PalC2_O4A; split bytes retain the interior label.
    db LOW(PalC2_O4A)
jr_00b_542d:
    db HIGH(PalC2_O4A)
    dw PalC2_O4B
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
PalC2_O44:
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $eb, $0c, $70, $1d, $35, $36, $5f, $5b, $00, $00, $1f, $00, $bf, $01
PalC2_O45:
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $eb, $0c, $70, $1d, $35, $36, $5f, $5b, $00, $00, $1f, $00, $bf, $01
PalC2_O46:
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $eb, $0c, $70, $1d, $35, $36, $5f, $5b, $00, $00, $1f, $00, $bf, $01
PalC2_O47:
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $eb, $0c, $70, $1d, $35, $36, $5f, $5b, $00, $00, $1f, $00, $bf, $01
PalC2_O48:
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $eb, $0c, $70, $1d, $35, $36, $5f, $5b, $00, $00, $1f, $00, $bf, $01
PalC2_O49:
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $eb, $0c, $70, $1d, $35, $36, $5f, $5b, $00, $00, $1f, $00, $bf, $01
PalC2_O4A:
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $eb, $0c, $70, $1d, $35, $36, $5f, $5b, $00, $00, $1f, $00, $bf, $01
PalC2_O4B:
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f, $5f, $5b, $1f, $7c, $1f, $7e, $1f, $7f
    db $5f, $5b, $eb, $0c, $70, $1d, $35, $36, $5f, $5b, $00, $00, $1f, $00, $bf, $01
