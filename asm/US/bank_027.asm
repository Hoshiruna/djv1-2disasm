; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

    dw MapC2_S00 ; $00
    dw MapC2_S01 ; $01
    dw MapC2_S02 ; $02
    dw MapC2_S03 ; $03
    dw MapC2_S04 ; $04
    dw MapC2_S05 ; $05
    dw MapC2_S06 ; $06
    dw MapC2_S07 ; $07
    dw MapC2_S08 ; $08
    dw MapC2_S09 ; $09
    dw MapC2_S0A ; $0a
    dw MapC2_S0B ; $0b
    dw MapC2_S0C ; $0c
    dw MapC2_S0D ; $0d
    dw MapC2_S0E ; $0e
    dw MapC2_S0F ; $0f
    dw MapC2_S10 ; $10
    dw MapC2_S11 ; $11
    dw MapC2_S12 ; $12
    dw MapC2_S13 ; $13
    dw MapC2_S14 ; $14
    dw MapC2_S15 ; $15
    dw MapC2_S16 ; $16
    dw MapC2_S17 ; $17
    dw MapC2_S18 ; $18
    dw MapC2_S19 ; $19
    dw MapC2_S1A ; $1a
    dw MapC2_S1B ; $1b
    dw MapC2_S1C ; $1c
    dw MapC2_S1D ; $1d
    dw MapC2_S1E ; $1e
    db LOW(MapC2_S1F) ; $1f
Call_027_403f:
    db HIGH(MapC2_S1F) ; $1f
    dw MapC2_S20 ; $20
    dw MapC2_S21 ; $21
    dw MapC2_S22 ; $22
    dw MapC2_S23 ; $23
    dw MapC2_S24 ; $24
    dw MapC2_S25 ; $25
    dw MapC2_S26 ; $26
    dw MapC2_S27 ; $27
Case2BathroomMap:

MapC2_S00:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.tilemap", $0, $12
jr_027_4062:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.tilemap", $12, $7
jr_027_4069:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.tilemap", $19, $7
jr_027_4070:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.tilemap", $20, $2e
jr_027_409e:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.tilemap", $4e, $1b
jr_027_40b9:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.tilemap", $69, $14
jr_027_40cd:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.tilemap", $7d, $a
jr_027_40d7:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.tilemap", $87, $14
jr_027_40eb:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.tilemap", $9b, $29
Case2BathroomAttributes:

AttrC2_S00:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-bg.attrmap", $0, $c4

MapC2_S01:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-bg.tilemap", $0, $85
jr_027_425d:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-bg.tilemap", $85, $1e
jr_027_427b:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-bg.tilemap", $a3, $9
jr_027_4284:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-bg.tilemap", $ac, $18

AttrC2_S01:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-bg.attrmap", $0, $6
jr_027_42a2:
    INCBIN "../../res/scene/case2/01-lucky-room/s01-bg.attrmap", $6, $be

MapC2_S02:
    INCBIN "../../res/scene/case2/02-lucky-casino-hall/s02-bg.tilemap", $0, $51
jr_027_43b1:
    INCBIN "../../res/scene/case2/02-lucky-casino-hall/s02-bg.tilemap", $51, $46
jr_027_43f7:
    INCBIN "../../res/scene/case2/02-lucky-casino-hall/s02-bg.tilemap", $97, $1e
jr_027_4415:
    INCBIN "../../res/scene/case2/02-lucky-casino-hall/s02-bg.tilemap", $b5, $5
jr_027_441a:
    INCBIN "../../res/scene/case2/02-lucky-casino-hall/s02-bg.tilemap", $ba, $a

AttrC2_S02:
    INCBIN "../../res/scene/case2/02-lucky-casino-hall/s02-bg.attrmap", $0, $14
jr_027_4438:
    INCBIN "../../res/scene/case2/02-lucky-casino-hall/s02-bg.attrmap", $14, $b0

MapC2_S03:
    INCBIN "../../res/scene/case2/03-lucky-lobby/s03-bg.tilemap", $0, $23
jr_027_450b:
    INCBIN "../../res/scene/case2/03-lucky-lobby/s03-bg.tilemap", $23, $25
jr_027_4530:
    INCBIN "../../res/scene/case2/03-lucky-lobby/s03-bg.tilemap", $48, $4
jr_027_4534:
    INCBIN "../../res/scene/case2/03-lucky-lobby/s03-bg.tilemap", $4c, $78

AttrC2_S03:
    INCBIN "../../res/scene/case2/03-lucky-lobby/s03-bg.attrmap", $0, $2e
jr_027_45da:
    INCBIN "../../res/scene/case2/03-lucky-lobby/s03-bg.attrmap", $2e, $96

MapC2_S04:
    INCBIN "../../res/scene/case2/04-lucky-cashier/s04-bg.tilemap", $0, $31
jr_027_46a1:
    INCBIN "../../res/scene/case2/04-lucky-cashier/s04-bg.tilemap", $31, $13
jr_027_46b4:
    INCBIN "../../res/scene/case2/04-lucky-cashier/s04-bg.tilemap", $44, $2b
jr_027_46df:
    INCBIN "../../res/scene/case2/04-lucky-cashier/s04-bg.tilemap", $6f, $14
jr_027_46f3:
    INCBIN "../../res/scene/case2/04-lucky-cashier/s04-bg.tilemap", $83, $4
jr_027_46f7:
    INCBIN "../../res/scene/case2/04-lucky-cashier/s04-bg.tilemap", $87, $3d

AttrC2_S04:
    INCBIN "../../res/scene/case2/04-lucky-cashier/s04-bg.attrmap", $0, $c4

MapC2_S05:
    INCBIN "../../res/scene/case2/05-rudy-blackjack/s05-bg.tilemap", $0, $8d
jr_027_4885:
    INCBIN "../../res/scene/case2/05-rudy-blackjack/s05-bg.tilemap", $8d, $e
jr_027_4893:
    INCBIN "../../res/scene/case2/05-rudy-blackjack/s05-bg.tilemap", $9b, $16
jr_027_48a9:
    INCBIN "../../res/scene/case2/05-rudy-blackjack/s05-bg.tilemap", $b1, $13

AttrC2_S05:
    INCBIN "../../res/scene/case2/05-rudy-blackjack/s05-bg.attrmap", $0, $c4

MapC2_S06:
    INCBIN "../../res/scene/case2/06-stogie-martin/s06-bg.tilemap", $0, $55
jr_027_49d5:
    INCBIN "../../res/scene/case2/06-stogie-martin/s06-bg.tilemap", $55, $14
jr_027_49e9:
    INCBIN "../../res/scene/case2/06-stogie-martin/s06-bg.tilemap", $69, $15
jr_027_49fe:
    INCBIN "../../res/scene/case2/06-stogie-martin/s06-bg.tilemap", $7e, $15
jr_027_4a13:
    INCBIN "../../res/scene/case2/06-stogie-martin/s06-bg.tilemap", $93, $16
jr_027_4a29:
    INCBIN "../../res/scene/case2/06-stogie-martin/s06-bg.tilemap", $a9, $1b

AttrC2_S06:
    INCBIN "../../res/scene/case2/06-stogie-martin/s06-bg.attrmap", $0, $c4

MapC2_S07:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.tilemap", $0, $31
jr_027_4b39:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.tilemap", $31, $12
jr_027_4b4b:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.tilemap", $43, $1e
jr_027_4b69:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.tilemap", $61, $e
jr_027_4b77:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.tilemap", $6f, $e
jr_027_4b85:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.tilemap", $7d, $16
jr_027_4b9b:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.tilemap", $93, $e
jr_027_4ba9:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.tilemap", $a1, $22
jr_027_4bcb:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.tilemap", $c3, $1

AttrC2_S07:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.attrmap", $0, $d
jr_027_4bd9:
    INCBIN "../../res/scene/case2/07-lucky-1f/s07-bg.attrmap", $d, $b7

MapC2_S08:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.tilemap", $0, $35
jr_027_4cc5:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.tilemap", $35, $a
jr_027_4ccf:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.tilemap", $3f, $4
jr_027_4cd3:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.tilemap", $43, $1
jr_027_4cd4:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.tilemap", $44, $7e
jr_027_4d52:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.tilemap", $c2, $2

AttrC2_S08:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.attrmap", $0, $1c
jr_027_4d70:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.attrmap", $1c, $71
jr_027_4de1:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.attrmap", $8d, $4
jr_027_4de5:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.attrmap", $91, $6
jr_027_4deb:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.attrmap", $97, $1b
jr_027_4e06:
    INCBIN "../../res/scene/case2/08-lucky-2f/s08-bg.attrmap", $b2, $12

MapC2_S09:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.tilemap", $0, $12
jr_027_4e2a:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.tilemap", $12, $6
jr_027_4e30:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.tilemap", $18, $b
jr_027_4e3b:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.tilemap", $23, $2
jr_027_4e3d:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.tilemap", $25, $2
jr_027_4e3f:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.tilemap", $27, $a
jr_027_4e49:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.tilemap", $31, $e
jr_027_4e57:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.tilemap", $3f, $85

AttrC2_S09:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.attrmap", $0, $93
jr_027_4f6f:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.attrmap", $93, $5
jr_027_4f74:
    INCBIN "../../res/scene/case2/09-lucky-3f/s09-bg.attrmap", $98, $2c

MapC2_S0A:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.tilemap", $0, $18
jr_027_4fb8:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.tilemap", $18, $5
jr_027_4fbd:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.tilemap", $1d, $6
jr_027_4fc3:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.tilemap", $23, $2
jr_027_4fc5:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.tilemap", $25, $2
jr_027_4fc7:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.tilemap", $27, $25
jr_027_4fec:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.tilemap", $4c, $1e
jr_027_500a:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.tilemap", $6a, $51
jr_027_505b:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.tilemap", $bb, $9

AttrC2_S0A:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.attrmap", $0, $15
jr_027_5079:
    INCBIN "../../res/scene/case2/0a-lucky-4f/s0a-bg.attrmap", $15, $af

MapC2_S0B:
    INCBIN "../../res/scene/case2/0b-ventini-office/s0b-bg.tilemap", $0, $1a
jr_027_5142:
    INCBIN "../../res/scene/case2/0b-ventini-office/s0b-bg.tilemap", $1a, $e
jr_027_5150:
    INCBIN "../../res/scene/case2/0b-ventini-office/s0b-bg.tilemap", $28, $2a
jr_027_517a:
    INCBIN "../../res/scene/case2/0b-ventini-office/s0b-bg.tilemap", $52, $1
jr_027_517b:
    INCBIN "../../res/scene/case2/0b-ventini-office/s0b-bg.tilemap", $53, $67
jr_027_51e2:
    INCBIN "../../res/scene/case2/0b-ventini-office/s0b-bg.tilemap", $ba, $2
jr_027_51e4:
    INCBIN "../../res/scene/case2/0b-ventini-office/s0b-bg.tilemap", $bc, $8

AttrC2_S0B:
    INCBIN "../../res/scene/case2/0b-ventini-office/s0b-bg.attrmap", $0, $4
jr_027_51f0:
    INCBIN "../../res/scene/case2/0b-ventini-office/s0b-bg.attrmap", $4, $c0

MapC2_S0C:
    INCBIN "../../res/scene/case2/0c-malone-office/s0c-bg.tilemap", $0, $69
jr_027_5319:
    INCBIN "../../res/scene/case2/0c-malone-office/s0c-bg.tilemap", $69, $1f
jr_027_5338:
    INCBIN "../../res/scene/case2/0c-malone-office/s0c-bg.tilemap", $88, $11
jr_027_5349:
    INCBIN "../../res/scene/case2/0c-malone-office/s0c-bg.tilemap", $99, $14
jr_027_535d:
    INCBIN "../../res/scene/case2/0c-malone-office/s0c-bg.tilemap", $ad, $13
jr_027_5370:
    INCBIN "../../res/scene/case2/0c-malone-office/s0c-bg.tilemap", $c0, $4

AttrC2_S0C:
    INCBIN "../../res/scene/case2/0c-malone-office/s0c-bg.attrmap", $0, $c4

MapC2_S0D:
    INCBIN "../../res/scene/case2/0d-lucky-entrance/s0d-bg.tilemap", $0, $3f
jr_027_5477:
    INCBIN "../../res/scene/case2/0d-lucky-entrance/s0d-bg.tilemap", $3f, $12
jr_027_5489:
    INCBIN "../../res/scene/case2/0d-lucky-entrance/s0d-bg.tilemap", $51, $31
jr_027_54ba:
    INCBIN "../../res/scene/case2/0d-lucky-entrance/s0d-bg.tilemap", $82, $2b
jr_027_54e5:
    INCBIN "../../res/scene/case2/0d-lucky-entrance/s0d-bg.tilemap", $ad, $17

AttrC2_S0D:
    INCBIN "../../res/scene/case2/0d-lucky-entrance/s0d-bg.attrmap", $0, $14
jr_027_5510:
    INCBIN "../../res/scene/case2/0d-lucky-entrance/s0d-bg.attrmap", $14, $b0

MapC2_S0E:
    INCBIN "../../res/scene/case2/0e-desert/s0e-bg.tilemap", $0, $93
jr_027_5653:
    INCBIN "../../res/scene/case2/0e-desert/s0e-bg.tilemap", $93, $10
jr_027_5663:
    INCBIN "../../res/scene/case2/0e-desert/s0e-bg.tilemap", $a3, $e
jr_027_5671:
    INCBIN "../../res/scene/case2/0e-desert/s0e-bg.tilemap", $b1, $10
jr_027_5681:
    INCBIN "../../res/scene/case2/0e-desert/s0e-bg.tilemap", $c1, $3

AttrC2_S0E:
    INCBIN "../../res/scene/case2/0e-desert/s0e-bg.attrmap", $0, $c4

MapC2_S0F:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.tilemap", $0, $9e
jr_027_57e6:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.tilemap", $9e, $1e
jr_027_5804:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.tilemap", $bc, $8

AttrC2_S0F:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $0, $9a
jr_027_58a6:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $9a, $2
jr_027_58a8:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $9c, $2
jr_027_58aa:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $9e, $2
jr_027_58ac:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $a0, $2
jr_027_58ae:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $a2, $2
jr_027_58b0:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $a4, $2
jr_027_58b2:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $a6, $2
jr_027_58b4:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $a8, $2
jr_027_58b6:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $aa, $2
jr_027_58b8:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $ac, $2
jr_027_58ba:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $ae, $2
jr_027_58bc:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $b0, $9
jr_027_58c5:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $b9, $5
jr_027_58ca:
    INCBIN "../../res/scene/case2/0f-desert/s0f-bg.attrmap", $be, $6

MapC2_S10:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $0, $6
jr_027_58d6:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $6, $4
jr_027_58da:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $a, $2
jr_027_58dc:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $c, $2
jr_027_58de:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $e, $9
jr_027_58e7:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $17, $2
jr_027_58e9:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $19, $2
jr_027_58eb:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $1b, $2
jr_027_58ed:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $1d, $2
jr_027_58ef:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $1f, $6
jr_027_58f5:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $25, $2
jr_027_58f7:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $27, $10
jr_027_5907:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $37, $49
jr_027_5950:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $80, $13
jr_027_5963:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $93, $10
jr_027_5973:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $a3, $e
jr_027_5981:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.tilemap", $b1, $13

AttrC2_S10:
    INCBIN "../../res/scene/case2/10-desert/s10-bg.attrmap", $0, $c4

MapC2_S11:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.tilemap", $0, $36
jr_027_5a8e:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.tilemap", $36, $16
jr_027_5aa4:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.tilemap", $4c, $3b
jr_027_5adf:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.tilemap", $87, $1f
jr_027_5afe:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.tilemap", $a6, $17
jr_027_5b15:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.tilemap", $bd, $7

AttrC2_S11:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.attrmap", $0, $6b
jr_027_5b87:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.attrmap", $6b, $e
jr_027_5b95:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.attrmap", $79, $e
jr_027_5ba3:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.attrmap", $87, $e
jr_027_5bb1:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.attrmap", $95, $e
jr_027_5bbf:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.attrmap", $a3, $e
jr_027_5bcd:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.attrmap", $b1, $e
jr_027_5bdb:
    INCBIN "../../res/scene/case2/11-vegas-station/s11-bg.attrmap", $bf, $5

MapC2_S12:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-bg.tilemap", $0, $c
jr_027_5bec:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-bg.tilemap", $c, $5d
jr_027_5c49:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-bg.tilemap", $69, $d
jr_027_5c56:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-bg.tilemap", $76, $24
jr_027_5c7a:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-bg.tilemap", $9a, $22
jr_027_5c9c:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-bg.tilemap", $bc, $5
jr_027_5ca1:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-bg.tilemap", $c1, $3

AttrC2_S12:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-bg.attrmap", $0, $4f
jr_027_5cf3:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-bg.attrmap", $4f, $69
Jump_027_5d5c:
    INCBIN "../../res/scene/case2/12-vegas-waiting-hall/s12-bg.attrmap", $b8, $c

MapC2_S13:
    INCBIN "../../res/scene/case2/13-vegas-baggage/s13-bg.tilemap", $0, $38
jr_027_5da0:
    INCBIN "../../res/scene/case2/13-vegas-baggage/s13-bg.tilemap", $38, $17
jr_027_5db7:
    INCBIN "../../res/scene/case2/13-vegas-baggage/s13-bg.tilemap", $4f, $e
jr_027_5dc5:
    INCBIN "../../res/scene/case2/13-vegas-baggage/s13-bg.tilemap", $5d, $1e
jr_027_5de3:
    INCBIN "../../res/scene/case2/13-vegas-baggage/s13-bg.tilemap", $7b, $3e
jr_027_5e21:
    INCBIN "../../res/scene/case2/13-vegas-baggage/s13-bg.tilemap", $b9, $b

AttrC2_S13:
    INCBIN "../../res/scene/case2/13-vegas-baggage/s13-bg.attrmap", $0, $24
jr_027_5e50:
    INCBIN "../../res/scene/case2/13-vegas-baggage/s13-bg.attrmap", $24, $a0

MapC2_S14:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.tilemap", $0, $47
jr_027_5f37:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.tilemap", $47, $2f
jr_027_5f66:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.tilemap", $76, $9
jr_027_5f6f:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.tilemap", $7f, $11
jr_027_5f80:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.tilemap", $90, $11
jr_027_5f91:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.tilemap", $a1, $d
jr_027_5f9e:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.tilemap", $ae, $16

AttrC2_S14:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.attrmap", $0, $a6
jr_027_605a:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.attrmap", $a6, $e
jr_027_6068:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.attrmap", $b4, $e
jr_027_6076:
    INCBIN "../../res/scene/case2/14-train-platform/s14-bg.attrmap", $c2, $2

MapC2_S15:
    INCBIN "../../res/scene/case2/15-train-platform/s15-bg.tilemap", $0, $28
jr_027_60a0:
    INCBIN "../../res/scene/case2/15-train-platform/s15-bg.tilemap", $28, $57
jr_027_60f7:
    INCBIN "../../res/scene/case2/15-train-platform/s15-bg.tilemap", $7f, $2f
jr_027_6126:
    INCBIN "../../res/scene/case2/15-train-platform/s15-bg.tilemap", $ae, $16

AttrC2_S15:
    INCBIN "../../res/scene/case2/15-train-platform/s15-bg.attrmap", $0, $a6
jr_027_61e2:
    INCBIN "../../res/scene/case2/15-train-platform/s15-bg.attrmap", $a6, $e
jr_027_61f0:
    INCBIN "../../res/scene/case2/15-train-platform/s15-bg.attrmap", $b4, $e
jr_027_61fe:
    INCBIN "../../res/scene/case2/15-train-platform/s15-bg.attrmap", $c2, $2

MapC2_S16:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-bg.tilemap", $0, $28
jr_027_6228:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-bg.tilemap", $28, $9
jr_027_6231:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-bg.tilemap", $31, $7
jr_027_6238:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-bg.tilemap", $38, $24
jr_027_625c:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-bg.tilemap", $5c, $13
jr_027_626f:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-bg.tilemap", $6f, $d
jr_027_627c:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-bg.tilemap", $7c, $48

AttrC2_S16:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-bg.attrmap", $0, $aa
jr_027_636e:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-bg.attrmap", $aa, $e
jr_027_637c:
    INCBIN "../../res/scene/case2/16-train-passengers/s16-bg.attrmap", $b8, $c

MapC2_S17:
    INCBIN "../../res/scene/case2/17-conductor/s17-bg.tilemap", $0, $2
jr_027_638a:
    INCBIN "../../res/scene/case2/17-conductor/s17-bg.tilemap", $2, $39
jr_027_63c3:
    INCBIN "../../res/scene/case2/17-conductor/s17-bg.tilemap", $3b, $20
jr_027_63e3:
    INCBIN "../../res/scene/case2/17-conductor/s17-bg.tilemap", $5b, $9
jr_027_63ec:
    INCBIN "../../res/scene/case2/17-conductor/s17-bg.tilemap", $64, $1d
jr_027_6409:
    INCBIN "../../res/scene/case2/17-conductor/s17-bg.tilemap", $81, $12
jr_027_641b:
    INCBIN "../../res/scene/case2/17-conductor/s17-bg.tilemap", $93, $31

AttrC2_S17:
    INCBIN "../../res/scene/case2/17-conductor/s17-bg.attrmap", $0, $c4

MapC2_S18:
    INCBIN "../../res/scene/case2/18-train-interior/s18-bg.tilemap", $0, $4e
jr_027_655e:
    INCBIN "../../res/scene/case2/18-train-interior/s18-bg.tilemap", $4e, $11
jr_027_656f:
    INCBIN "../../res/scene/case2/18-train-interior/s18-bg.tilemap", $5f, $12
jr_027_6581:
    INCBIN "../../res/scene/case2/18-train-interior/s18-bg.tilemap", $71, $10
jr_027_6591:
    INCBIN "../../res/scene/case2/18-train-interior/s18-bg.tilemap", $81, $13
jr_027_65a4:
    INCBIN "../../res/scene/case2/18-train-interior/s18-bg.tilemap", $94, $30

AttrC2_S18:
    INCBIN "../../res/scene/case2/18-train-interior/s18-bg.attrmap", $0, $97
jr_027_666b:
    INCBIN "../../res/scene/case2/18-train-interior/s18-bg.attrmap", $97, $2d

MapC2_S19:
    INCBIN "../../res/scene/case2/19-conductor/s19-bg.tilemap", $0, $5b
jr_027_66f3:
    INCBIN "../../res/scene/case2/19-conductor/s19-bg.tilemap", $5b, $26
jr_027_6719:
    INCBIN "../../res/scene/case2/19-conductor/s19-bg.tilemap", $81, $12
jr_027_672b:
    INCBIN "../../res/scene/case2/19-conductor/s19-bg.tilemap", $93, $31

AttrC2_S19:
    INCBIN "../../res/scene/case2/19-conductor/s19-bg.attrmap", $0, $c4

MapC2_S1A:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.tilemap", $0, $47
jr_027_6867:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.tilemap", $47, $2f
jr_027_6896:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.tilemap", $76, $9
jr_027_689f:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.tilemap", $7f, $11
jr_027_68b0:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.tilemap", $90, $11
jr_027_68c1:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.tilemap", $a1, $d
jr_027_68ce:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.tilemap", $ae, $16

AttrC2_S1A:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.attrmap", $0, $a6
jr_027_698a:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.attrmap", $a6, $e
jr_027_6998:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.attrmap", $b4, $e
jr_027_69a6:
    INCBIN "../../res/scene/case2/1a-train-platform/s1a-bg.attrmap", $c2, $2

MapC2_S1B:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.tilemap", $0, $28
jr_027_69d0:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.tilemap", $28, $57
jr_027_6a27:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.tilemap", $7f, $2f
jr_027_6a56:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.tilemap", $ae, $16

AttrC2_S1B:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.attrmap", $0, $a6
jr_027_6b12:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.attrmap", $a6, $e
jr_027_6b20:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.attrmap", $b4, $e
jr_027_6b2e:
    INCBIN "../../res/scene/case2/1b-train-platform/s1b-bg.attrmap", $c2, $2

MapC2_S1C:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.tilemap", $0, $28
jr_027_6b58:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.tilemap", $28, $4f
jr_027_6ba7:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.tilemap", $77, $10
jr_027_6bb7:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.tilemap", $87, $3d
jr_027_6bf4:

AttrC2_S1C:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.attrmap", $0, $30
jr_027_6c24:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.attrmap", $30, $2
jr_027_6c26:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.attrmap", $32, $c
jr_027_6c32:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.attrmap", $3e, $2
jr_027_6c34:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.attrmap", $40, $1c
jr_027_6c50:
    INCBIN "../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.attrmap", $5c, $68

MapC2_S1D:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.tilemap", $0, $20
jr_027_6cd8:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.tilemap", $20, $19
jr_027_6cf1:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.tilemap", $39, $a
jr_027_6cfb:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.tilemap", $43, $15
jr_027_6d10:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.tilemap", $58, $65
jr_027_6d75:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.tilemap", $bd, $7

AttrC2_S1D:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.attrmap", $0, $52
jr_027_6dce:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.attrmap", $52, $d
jr_027_6ddb:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.attrmap", $5f, $1c
jr_027_6df7:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.attrmap", $7b, $e
jr_027_6e05:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.attrmap", $89, $e
jr_027_6e13:
    INCBIN "../../res/scene/case2/1d-chicago-station/s1d-bg.attrmap", $97, $2d

MapC2_S1E:
    INCBIN "../../res/scene/case2/1e-gabby-cab/s1e-bg.tilemap", $0, $51
jr_027_6e91:
    INCBIN "../../res/scene/case2/1e-gabby-cab/s1e-bg.tilemap", $51, $1e
jr_027_6eaf:
    INCBIN "../../res/scene/case2/1e-gabby-cab/s1e-bg.tilemap", $6f, $2
jr_027_6eb1:
    INCBIN "../../res/scene/case2/1e-gabby-cab/s1e-bg.tilemap", $71, $14
jr_027_6ec5:
    INCBIN "../../res/scene/case2/1e-gabby-cab/s1e-bg.tilemap", $85, $29
jr_027_6eee:
    INCBIN "../../res/scene/case2/1e-gabby-cab/s1e-bg.tilemap", $ae, $16

AttrC2_S1E:
    INCBIN "../../res/scene/case2/1e-gabby-cab/s1e-bg.attrmap", $0, $a8
jr_027_6fac:
    INCBIN "../../res/scene/case2/1e-gabby-cab/s1e-bg.attrmap", $a8, $1c

MapC2_S1F:
    INCBIN "../../res/scene/case2/1f-ace-street/s1f-bg.tilemap", $0, $48
jr_027_7010:
    INCBIN "../../res/scene/case2/1f-ace-street/s1f-bg.tilemap", $48, $17
jr_027_7027:
    INCBIN "../../res/scene/case2/1f-ace-street/s1f-bg.tilemap", $5f, $17
jr_027_703e:
    INCBIN "../../res/scene/case2/1f-ace-street/s1f-bg.tilemap", $76, $2e
jr_027_706c:
    INCBIN "../../res/scene/case2/1f-ace-street/s1f-bg.tilemap", $a4, $20

AttrC2_S1F:
    INCBIN "../../res/scene/case2/1f-ace-street/s1f-bg.attrmap", $0, $c4

MapC2_S20:
    INCBIN "../../res/scene/case2/20-ace-apartment-door/s20-bg.tilemap", $0, $63
jr_027_71b3:
    INCBIN "../../res/scene/case2/20-ace-apartment-door/s20-bg.tilemap", $63, $c
jr_027_71bf:
    INCBIN "../../res/scene/case2/20-ace-apartment-door/s20-bg.tilemap", $6f, $25
jr_027_71e4:
    INCBIN "../../res/scene/case2/20-ace-apartment-door/s20-bg.tilemap", $94, $16
jr_027_71fa:
    INCBIN "../../res/scene/case2/20-ace-apartment-door/s20-bg.tilemap", $aa, $15
jr_027_720f:
    INCBIN "../../res/scene/case2/20-ace-apartment-door/s20-bg.tilemap", $bf, $5

AttrC2_S20:
    INCBIN "../../res/scene/case2/20-ace-apartment-door/s20-bg.attrmap", $0, $c4

MapC2_S21:
    INCBIN "../../res/scene/case2/21-ace-apartment/s21-bg.tilemap", $0, $3d
jr_027_7315:
    INCBIN "../../res/scene/case2/21-ace-apartment/s21-bg.tilemap", $3d, $16
jr_027_732b:
    INCBIN "../../res/scene/case2/21-ace-apartment/s21-bg.tilemap", $53, $10
jr_027_733b:
    INCBIN "../../res/scene/case2/21-ace-apartment/s21-bg.tilemap", $63, $2a
jr_027_7365:
    INCBIN "../../res/scene/case2/21-ace-apartment/s21-bg.tilemap", $8d, $5
jr_027_736a:
    INCBIN "../../res/scene/case2/21-ace-apartment/s21-bg.tilemap", $92, $32

AttrC2_S21:
    INCBIN "../../res/scene/case2/21-ace-apartment/s21-bg.attrmap", $0, $c4

MapC2_S22:
    INCBIN "../../res/scene/case2/22-joes-place/s22-bg.tilemap", $0, $21
jr_027_7481:
    INCBIN "../../res/scene/case2/22-joes-place/s22-bg.tilemap", $21, $7c
jr_027_74fd:
    INCBIN "../../res/scene/case2/22-joes-place/s22-bg.tilemap", $9d, $10
jr_027_750d:
    INCBIN "../../res/scene/case2/22-joes-place/s22-bg.tilemap", $ad, $17

AttrC2_S22:
    INCBIN "../../res/scene/case2/22-joes-place/s22-bg.attrmap", $0, $b
jr_027_752f:
    INCBIN "../../res/scene/case2/22-joes-place/s22-bg.attrmap", $b, $b9

MapC2_S23:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.tilemap", $0, $3f
jr_027_7627:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.tilemap", $3f, $85

AttrC2_S23:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.attrmap", $0, $a
jr_027_76b6:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.attrmap", $a, $d
jr_027_76c3:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.attrmap", $17, $2a
jr_027_76ed:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.attrmap", $41, $e
jr_027_76fb:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.attrmap", $4f, $e
jr_027_7709:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.attrmap", $5d, $e
jr_027_7717:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.attrmap", $6b, $e
jr_027_7725:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.attrmap", $79, $e
jr_027_7733:
    INCBIN "../../res/scene/case2/23-joes-back-alley/s23-bg.attrmap", $87, $3d

MapC2_S24:
    INCBIN "../../res/scene/case2/24-joes-hall/s24-bg.tilemap", $0, $34
jr_027_77a4:
    INCBIN "../../res/scene/case2/24-joes-hall/s24-bg.tilemap", $34, $2b
jr_027_77cf:
    INCBIN "../../res/scene/case2/24-joes-hall/s24-bg.tilemap", $5f, $12
jr_027_77e1:
    INCBIN "../../res/scene/case2/24-joes-hall/s24-bg.tilemap", $71, $13
jr_027_77f4:
    INCBIN "../../res/scene/case2/24-joes-hall/s24-bg.tilemap", $84, $6
jr_027_77fa:
    INCBIN "../../res/scene/case2/24-joes-hall/s24-bg.tilemap", $8a, $3a

AttrC2_S24:
    INCBIN "../../res/scene/case2/24-joes-hall/s24-bg.attrmap", $0, $c4

MapC2_S25:
    INCBIN "../../res/scene/case2/25-secretary-office/s25-bg.tilemap", $0, $71
jr_027_7969:
    INCBIN "../../res/scene/case2/25-secretary-office/s25-bg.tilemap", $71, $f
jr_027_7978:
    INCBIN "../../res/scene/case2/25-secretary-office/s25-bg.tilemap", $80, $2
jr_027_797a:
    INCBIN "../../res/scene/case2/25-secretary-office/s25-bg.tilemap", $82, $42

AttrC2_S25:
    INCBIN "../../res/scene/case2/25-secretary-office/s25-bg.attrmap", $0, $2e
jr_027_79ea:
    INCBIN "../../res/scene/case2/25-secretary-office/s25-bg.attrmap", $2e, $20
jr_027_7a0a:
    INCBIN "../../res/scene/case2/25-secretary-office/s25-bg.attrmap", $4e, $76

MapC2_S26:
    INCBIN "../../res/scene/case2/26-joes-bar/s26-bg.tilemap", $0, $4f
jr_027_7acf:
    INCBIN "../../res/scene/case2/26-joes-bar/s26-bg.tilemap", $4f, $30
jr_027_7aff:
    INCBIN "../../res/scene/case2/26-joes-bar/s26-bg.tilemap", $7f, $45

AttrC2_S26:
    INCBIN "../../res/scene/case2/26-joes-bar/s26-bg.attrmap", $0, $3
jr_027_7b47:
    INCBIN "../../res/scene/case2/26-joes-bar/s26-bg.attrmap", $3, $c1

MapC2_S27:
    INCBIN "../../res/scene/case2/27-joes-manhole/s27-bg.tilemap", $0, $48
jr_027_7c50:
    INCBIN "../../res/scene/case2/27-joes-manhole/s27-bg.tilemap", $48, $32
jr_027_7c82:
    INCBIN "../../res/scene/case2/27-joes-manhole/s27-bg.tilemap", $7a, $2a
jr_027_7cac:
    INCBIN "../../res/scene/case2/27-joes-manhole/s27-bg.tilemap", $a4, $20

AttrC2_S27:
    INCBIN "../../res/scene/case2/27-joes-manhole/s27-bg.attrmap", $0, $29
jr_027_7cf5:
    INCBIN "../../res/scene/case2/27-joes-manhole/s27-bg.attrmap", $29, $e
jr_027_7d03:
    INCBIN "../../res/scene/case2/27-joes-manhole/s27-bg.attrmap", $37, $f
jr_027_7d12:
    INCBIN "../../res/scene/case2/27-joes-manhole/s27-bg.attrmap", $46, $7e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
