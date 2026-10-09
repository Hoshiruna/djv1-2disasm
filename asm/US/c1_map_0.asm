; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    dw MapC1_S00 ; $00
    dw MapC1_S01 ; $01
    dw MapC1_S02 ; $02
    dw MapC1_S03 ; $03
    dw MapC1_S04 ; $04
    dw MapC1_S05 ; $05
    dw MapC1_S06 ; $06
    dw MapC1_S07 ; $07
    dw MapC1_S08 ; $08
    dw MapC1_S09 ; $09
    dw MapC1_S0A ; $0a
    dw MapC1_S0B ; $0b
    dw MapC1_S0C ; $0c
    dw MapC1_S0D ; $0d
    dw MapC1_S0E ; $0e
    dw MapC1_S0F ; $0f
    dw MapC1_S10 ; $10
    dw MapC1_S11 ; $11
    dw MapC1_S12 ; $12
    dw MapC1_S13 ; $13
    dw MapC1_S14 ; $14
    dw MapC1_S15 ; $15
    dw MapC1_S16 ; $16
    dw MapC1_S17 ; $17
    dw MapC1_S18 ; $18
    dw MapC1_S19 ; $19
    dw MapC1_S1A ; $1a
    dw MapC1_S1B ; $1b
    dw MapC1_S1C ; $1c
    dw MapC1_S1D ; $1d
    dw MapC1_S1E ; $1e
    dw MapC1_S1F ; $1f
    dw MapC1_S20 ; $20
    dw MapC1_S21 ; $21
    dw MapC1_S22 ; $22
    dw MapC1_S23 ; $23
    dw MapC1_S24 ; $24
    dw MapC1_S25 ; $25
    dw MapC1_S26 ; $26
    dw MapC1_S27 ; $27

MapC1_S00:
    INCBIN "../../res/scene/case1/00-joes-stall/s00-bg.tilemap", $0, $12
jr_023_4062:
    INCBIN "../../res/scene/case1/00-joes-stall/s00-bg.tilemap", $12, $e
jr_023_4070:
    INCBIN "../../res/scene/case1/00-joes-stall/s00-bg.tilemap", $20, $23
jr_023_4093:
    INCBIN "../../res/scene/case1/00-joes-stall/s00-bg.tilemap", $43, $b
jr_023_409e:
    INCBIN "../../res/scene/case1/00-joes-stall/s00-bg.tilemap", $4e, $7
jr_023_40a5:
    INCBIN "../../res/scene/case1/00-joes-stall/s00-bg.tilemap", $55, $14
jr_023_40b9:
    INCBIN "../../res/scene/case1/00-joes-stall/s00-bg.tilemap", $69, $34
jr_023_40ed:
    INCBIN "../../res/scene/case1/00-joes-stall/s00-bg.tilemap", $9d, $27

AttrC1_S00:
    INCBIN "../../res/scene/case1/00-joes-stall/s00-bg.attrmap", $0, $c4

MapC1_S01:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.tilemap", $0, $43
jr_023_421b:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.tilemap", $43, $20
jr_023_423b:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.tilemap", $63, $6
jr_023_4241:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.tilemap", $69, $5b

AttrC1_S01:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.attrmap", $0, $3
jr_023_429f:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.attrmap", $3, $2
jr_023_42a1:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.attrmap", $5, $2
jr_023_42a3:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.attrmap", $7, $a
jr_023_42ad:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.attrmap", $11, $4
jr_023_42b1:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.attrmap", $15, $10
jr_023_42c1:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.attrmap", $25, $1a
jr_023_42db:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.attrmap", $3f, $29
jr_023_4304:
    INCBIN "../../res/scene/case1/01-joes-stall/s01-bg.attrmap", $68, $5c

MapC1_S02:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.tilemap", $0, $3c
jr_023_439c:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.tilemap", $3c, $23
jr_023_43bf:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.tilemap", $5f, $1e
jr_023_43dd:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.tilemap", $7d, $30
jr_023_440d:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.tilemap", $ad, $17

AttrC1_S02:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.attrmap", $0, $3d
jr_023_4461:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.attrmap", $3d, $25
jr_023_4486:
    INCBIN "../../res/scene/case1/02-joes-washroom/s02-bg.attrmap", $62, $62

MapC1_S03:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-bg.tilemap", $0, $3c
jr_023_4524:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-bg.tilemap", $3c, $23
jr_023_4547:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-bg.tilemap", $5f, $1e
jr_023_4565:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-bg.tilemap", $7d, $30
jr_023_4595:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-bg.tilemap", $ad, $17

AttrC1_S03:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-bg.attrmap", $0, $3d
jr_023_45e9:
    INCBIN "../../res/scene/case1/03-joes-washroom/s03-bg.attrmap", $3d, $87

MapC1_S04:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.tilemap", $0, $83
jr_023_46f3:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.tilemap", $83, $6
jr_023_46f9:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.tilemap", $89, $8
jr_023_4701:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.tilemap", $91, $2
jr_023_4703:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.tilemap", $93, $c
jr_023_470f:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.tilemap", $9f, $c
jr_023_471b:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.tilemap", $ab, $2
jr_023_471d:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.tilemap", $ad, $15
jr_023_4732:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.tilemap", $c2, $2

AttrC1_S04:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.attrmap", $0, $12
jr_023_4746:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.attrmap", $12, $f
jr_023_4755:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.attrmap", $21, $e
jr_023_4763:
    INCBIN "../../res/scene/case1/04-joes-hall/s04-bg.attrmap", $2f, $95

MapC1_S05:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.tilemap", $0, $83
jr_023_487b:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.tilemap", $83, $6
jr_023_4881:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.tilemap", $89, $8
jr_023_4889:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.tilemap", $91, $2
jr_023_488b:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.tilemap", $93, $c
jr_023_4897:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.tilemap", $9f, $c
jr_023_48a3:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.tilemap", $ab, $2
jr_023_48a5:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.tilemap", $ad, $15
jr_023_48ba:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.tilemap", $c2, $2

AttrC1_S05:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.attrmap", $0, $12
jr_023_48ce:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.attrmap", $12, $f
jr_023_48dd:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.attrmap", $21, $e
jr_023_48eb:
    INCBIN "../../res/scene/case1/05-joes-hall/s05-bg.attrmap", $2f, $95

MapC1_S06:
    INCBIN "../../res/scene/case1/06-joes-hall/s06-bg.tilemap", $0, $89
jr_023_4a09:
    INCBIN "../../res/scene/case1/06-joes-hall/s06-bg.tilemap", $89, $22
jr_023_4a2b:
    INCBIN "../../res/scene/case1/06-joes-hall/s06-bg.tilemap", $ab, $19

AttrC1_S06:
    INCBIN "../../res/scene/case1/06-joes-hall/s06-bg.attrmap", $0, $c4

MapC1_S07:
    INCBIN "../../res/scene/case1/07-joes-hall/s07-bg.tilemap", $0, $89
jr_023_4b91:
    INCBIN "../../res/scene/case1/07-joes-hall/s07-bg.tilemap", $89, $22
jr_023_4bb3:
    INCBIN "../../res/scene/case1/07-joes-hall/s07-bg.tilemap", $ab, $19

AttrC1_S07:
    INCBIN "../../res/scene/case1/07-joes-hall/s07-bg.attrmap", $0, $c4

MapC1_S08:
    INCBIN "../../res/scene/case1/08-joes-washroom/s08-bg.tilemap", $0, $2b
jr_023_4cbb:
    INCBIN "../../res/scene/case1/08-joes-washroom/s08-bg.tilemap", $2b, $34
jr_023_4cef:
    INCBIN "../../res/scene/case1/08-joes-washroom/s08-bg.tilemap", $5f, $1e
jr_023_4d0d:
    INCBIN "../../res/scene/case1/08-joes-washroom/s08-bg.tilemap", $7d, $47

AttrC1_S08:
    INCBIN "../../res/scene/case1/08-joes-washroom/s08-bg.attrmap", $0, $a
jr_023_4d5e:
    INCBIN "../../res/scene/case1/08-joes-washroom/s08-bg.attrmap", $a, $47
jr_023_4da5:
    INCBIN "../../res/scene/case1/08-joes-washroom/s08-bg.attrmap", $51, $8
jr_023_4dad:
    INCBIN "../../res/scene/case1/08-joes-washroom/s08-bg.attrmap", $59, $14
jr_023_4dc1:
    INCBIN "../../res/scene/case1/08-joes-washroom/s08-bg.attrmap", $6d, $57

MapC1_S09:
    INCBIN "../../res/scene/case1/09-joes-washroom/s09-bg.tilemap", $0, $2b
jr_023_4e43:
    INCBIN "../../res/scene/case1/09-joes-washroom/s09-bg.tilemap", $2b, $34
jr_023_4e77:
    INCBIN "../../res/scene/case1/09-joes-washroom/s09-bg.tilemap", $5f, $1e
jr_023_4e95:
    INCBIN "../../res/scene/case1/09-joes-washroom/s09-bg.tilemap", $7d, $47

AttrC1_S09:
    INCBIN "../../res/scene/case1/09-joes-washroom/s09-bg.attrmap", $0, $a
jr_023_4ee6:
    INCBIN "../../res/scene/case1/09-joes-washroom/s09-bg.attrmap", $a, $47
jr_023_4f2d:
    INCBIN "../../res/scene/case1/09-joes-washroom/s09-bg.attrmap", $51, $8
jr_023_4f35:
    INCBIN "../../res/scene/case1/09-joes-washroom/s09-bg.attrmap", $59, $14
jr_023_4f49:
    INCBIN "../../res/scene/case1/09-joes-washroom/s09-bg.attrmap", $6d, $57

MapC1_S0A:
    INCBIN "../../res/scene/case1/0a-joes-washroom/s0a-bg.tilemap", $0, $2b
jr_023_4fcb:
    INCBIN "../../res/scene/case1/0a-joes-washroom/s0a-bg.tilemap", $2b, $34
jr_023_4fff:
    INCBIN "../../res/scene/case1/0a-joes-washroom/s0a-bg.tilemap", $5f, $13
jr_023_5012:
    INCBIN "../../res/scene/case1/0a-joes-washroom/s0a-bg.tilemap", $72, $b
jr_023_501d:
    INCBIN "../../res/scene/case1/0a-joes-washroom/s0a-bg.tilemap", $7d, $47

AttrC1_S0A:
    INCBIN "../../res/scene/case1/0a-joes-washroom/s0a-bg.attrmap", $0, $2e
jr_023_5092:
    INCBIN "../../res/scene/case1/0a-joes-washroom/s0a-bg.attrmap", $2e, $23
jr_023_50b5:
    INCBIN "../../res/scene/case1/0a-joes-washroom/s0a-bg.attrmap", $51, $8
jr_023_50bd:
    INCBIN "../../res/scene/case1/0a-joes-washroom/s0a-bg.attrmap", $59, $14
jr_023_50d1:
    INCBIN "../../res/scene/case1/0a-joes-washroom/s0a-bg.attrmap", $6d, $57

MapC1_S0B:
    INCBIN "../../res/scene/case1/0b-joes-washroom/s0b-bg.tilemap", $0, $2b
jr_023_5153:
    INCBIN "../../res/scene/case1/0b-joes-washroom/s0b-bg.tilemap", $2b, $34
jr_023_5187:
    INCBIN "../../res/scene/case1/0b-joes-washroom/s0b-bg.tilemap", $5f, $13
jr_023_519a:
    INCBIN "../../res/scene/case1/0b-joes-washroom/s0b-bg.tilemap", $72, $b
jr_023_51a5:
    INCBIN "../../res/scene/case1/0b-joes-washroom/s0b-bg.tilemap", $7d, $47

AttrC1_S0B:
    INCBIN "../../res/scene/case1/0b-joes-washroom/s0b-bg.attrmap", $0, $2e
jr_023_521a:
    INCBIN "../../res/scene/case1/0b-joes-washroom/s0b-bg.attrmap", $2e, $23
jr_023_523d:
    INCBIN "../../res/scene/case1/0b-joes-washroom/s0b-bg.attrmap", $51, $8
jr_023_5245:
    INCBIN "../../res/scene/case1/0b-joes-washroom/s0b-bg.attrmap", $59, $14
jr_023_5259:
    INCBIN "../../res/scene/case1/0b-joes-washroom/s0b-bg.attrmap", $6d, $57

MapC1_S0C:
    INCBIN "../../res/scene/case1/0c-joes-toilet/s0c-bg.tilemap", $0, $61
jr_023_5311:
    INCBIN "../../res/scene/case1/0c-joes-toilet/s0c-bg.tilemap", $61, $e
jr_023_531f:
    INCBIN "../../res/scene/case1/0c-joes-toilet/s0c-bg.tilemap", $6f, $23
jr_023_5342:
    INCBIN "../../res/scene/case1/0c-joes-toilet/s0c-bg.tilemap", $92, $d
jr_023_534f:
    INCBIN "../../res/scene/case1/0c-joes-toilet/s0c-bg.tilemap", $9f, $8
jr_023_5357:
    INCBIN "../../res/scene/case1/0c-joes-toilet/s0c-bg.tilemap", $a7, $10
jr_023_5367:
    INCBIN "../../res/scene/case1/0c-joes-toilet/s0c-bg.tilemap", $b7, $d

AttrC1_S0C:
    INCBIN "../../res/scene/case1/0c-joes-toilet/s0c-bg.attrmap", $0, $c4

MapC1_S0D:
    INCBIN "../../res/scene/case1/0d-joes-toilet/s0d-bg.tilemap", $0, $61
jr_023_5499:
    INCBIN "../../res/scene/case1/0d-joes-toilet/s0d-bg.tilemap", $61, $e
jr_023_54a7:
    INCBIN "../../res/scene/case1/0d-joes-toilet/s0d-bg.tilemap", $6f, $e
jr_023_54b5:
    INCBIN "../../res/scene/case1/0d-joes-toilet/s0d-bg.tilemap", $7d, $22
jr_023_54d7:
    INCBIN "../../res/scene/case1/0d-joes-toilet/s0d-bg.tilemap", $9f, $8
jr_023_54df:
    INCBIN "../../res/scene/case1/0d-joes-toilet/s0d-bg.tilemap", $a7, $10
jr_023_54ef:
    INCBIN "../../res/scene/case1/0d-joes-toilet/s0d-bg.tilemap", $b7, $d

AttrC1_S0D:
    INCBIN "../../res/scene/case1/0d-joes-toilet/s0d-bg.attrmap", $0, $c4

MapC1_S0E:
    INCBIN "../../res/scene/case1/0e-joes-bar/s0e-bg.tilemap", $0, $5e
jr_023_561e:
    INCBIN "../../res/scene/case1/0e-joes-bar/s0e-bg.tilemap", $5e, $20
jr_023_563e:
    INCBIN "../../res/scene/case1/0e-joes-bar/s0e-bg.tilemap", $7e, $b
jr_023_5649:
    INCBIN "../../res/scene/case1/0e-joes-bar/s0e-bg.tilemap", $89, $15
jr_023_565e:
    INCBIN "../../res/scene/case1/0e-joes-bar/s0e-bg.tilemap", $9e, $a
jr_023_5668:
    INCBIN "../../res/scene/case1/0e-joes-bar/s0e-bg.tilemap", $a8, $13
jr_023_567b:
    INCBIN "../../res/scene/case1/0e-joes-bar/s0e-bg.tilemap", $bb, $9

AttrC1_S0E:
    INCBIN "../../res/scene/case1/0e-joes-bar/s0e-bg.attrmap", $0, $c4

MapC1_S0F:
    INCBIN "../../res/scene/case1/0f-joes-bar/s0f-bg.tilemap", $0, $7e
jr_023_57c6:
    INCBIN "../../res/scene/case1/0f-joes-bar/s0f-bg.tilemap", $7e, $b
jr_023_57d1:
    INCBIN "../../res/scene/case1/0f-joes-bar/s0f-bg.tilemap", $89, $1f
jr_023_57f0:
    INCBIN "../../res/scene/case1/0f-joes-bar/s0f-bg.tilemap", $a8, $13
jr_023_5803:
    INCBIN "../../res/scene/case1/0f-joes-bar/s0f-bg.tilemap", $bb, $9

AttrC1_S0F:
    INCBIN "../../res/scene/case1/0f-joes-bar/s0f-bg.attrmap", $0, $c4

MapC1_S10:
    INCBIN "../../res/scene/case1/10-joes-bar/s10-bg.tilemap", $0, $5e
jr_023_592e:
    INCBIN "../../res/scene/case1/10-joes-bar/s10-bg.tilemap", $5e, $20
jr_023_594e:
    INCBIN "../../res/scene/case1/10-joes-bar/s10-bg.tilemap", $7e, $b
jr_023_5959:
    INCBIN "../../res/scene/case1/10-joes-bar/s10-bg.tilemap", $89, $15
jr_023_596e:
    INCBIN "../../res/scene/case1/10-joes-bar/s10-bg.tilemap", $9e, $a
jr_023_5978:
    INCBIN "../../res/scene/case1/10-joes-bar/s10-bg.tilemap", $a8, $13
jr_023_598b:
    INCBIN "../../res/scene/case1/10-joes-bar/s10-bg.tilemap", $bb, $9

AttrC1_S10:
    INCBIN "../../res/scene/case1/10-joes-bar/s10-bg.attrmap", $0, $c4

MapC1_S11:
    INCBIN "../../res/scene/case1/11-joes-bar/s11-bg.tilemap", $0, $7e
jr_023_5ad6:
    INCBIN "../../res/scene/case1/11-joes-bar/s11-bg.tilemap", $7e, $b
jr_023_5ae1:
    INCBIN "../../res/scene/case1/11-joes-bar/s11-bg.tilemap", $89, $1f
jr_023_5b00:
    INCBIN "../../res/scene/case1/11-joes-bar/s11-bg.tilemap", $a8, $13
jr_023_5b13:
    INCBIN "../../res/scene/case1/11-joes-bar/s11-bg.tilemap", $bb, $9

AttrC1_S11:
    INCBIN "../../res/scene/case1/11-joes-bar/s11-bg.attrmap", $0, $c4

MapC1_S12:
    INCBIN "../../res/scene/case1/12-joes-cellar/s12-bg.tilemap", $0, $59
jr_023_5c39:
    INCBIN "../../res/scene/case1/12-joes-cellar/s12-bg.tilemap", $59, $16
jr_023_5c4f:
    INCBIN "../../res/scene/case1/12-joes-cellar/s12-bg.tilemap", $6f, $1e
jr_023_5c6d:
    INCBIN "../../res/scene/case1/12-joes-cellar/s12-bg.tilemap", $8d, $14
jr_023_5c81:
    INCBIN "../../res/scene/case1/12-joes-cellar/s12-bg.tilemap", $a1, $1a
jr_023_5c9b:
    INCBIN "../../res/scene/case1/12-joes-cellar/s12-bg.tilemap", $bb, $9

AttrC1_S12:
    INCBIN "../../res/scene/case1/12-joes-cellar/s12-bg.attrmap", $0, $1
jr_023_5ca5:
    INCBIN "../../res/scene/case1/12-joes-cellar/s12-bg.attrmap", $1, $c3

MapC1_S13:
    INCBIN "../../res/scene/case1/13-joes-cellar/s13-bg.tilemap", $0, $59
jr_023_5dc1:
    INCBIN "../../res/scene/case1/13-joes-cellar/s13-bg.tilemap", $59, $16
jr_023_5dd7:
    INCBIN "../../res/scene/case1/13-joes-cellar/s13-bg.tilemap", $6f, $1e
jr_023_5df5:
    INCBIN "../../res/scene/case1/13-joes-cellar/s13-bg.tilemap", $8d, $14
jr_023_5e09:
    INCBIN "../../res/scene/case1/13-joes-cellar/s13-bg.tilemap", $a1, $1a
jr_023_5e23:
    INCBIN "../../res/scene/case1/13-joes-cellar/s13-bg.tilemap", $bb, $9

AttrC1_S13:
    INCBIN "../../res/scene/case1/13-joes-cellar/s13-bg.attrmap", $0, $c4

MapC1_S14:
    INCBIN "../../res/scene/case1/14-joes-manhole/s14-bg.tilemap", $0, $61
jr_023_5f51:
    INCBIN "../../res/scene/case1/14-joes-manhole/s14-bg.tilemap", $61, $22
jr_023_5f73:
    INCBIN "../../res/scene/case1/14-joes-manhole/s14-bg.tilemap", $83, $3b
jr_023_5fae:
    INCBIN "../../res/scene/case1/14-joes-manhole/s14-bg.tilemap", $be, $6

AttrC1_S14:
    INCBIN "../../res/scene/case1/14-joes-manhole/s14-bg.attrmap", $0, $24
jr_023_5fd8:
    INCBIN "../../res/scene/case1/14-joes-manhole/s14-bg.attrmap", $24, $e
jr_023_5fe6:
    INCBIN "../../res/scene/case1/14-joes-manhole/s14-bg.attrmap", $32, $f
jr_023_5ff5:
    INCBIN "../../res/scene/case1/14-joes-manhole/s14-bg.attrmap", $41, $d
jr_023_6002:
    INCBIN "../../res/scene/case1/14-joes-manhole/s14-bg.attrmap", $4e, $76

MapC1_S15:
    INCBIN "../../res/scene/case1/15-joes-manhole/s15-bg.tilemap", $0, $61
jr_023_60d9:
    INCBIN "../../res/scene/case1/15-joes-manhole/s15-bg.tilemap", $61, $22
jr_023_60fb:
    INCBIN "../../res/scene/case1/15-joes-manhole/s15-bg.tilemap", $83, $3b
jr_023_6136:
    INCBIN "../../res/scene/case1/15-joes-manhole/s15-bg.tilemap", $be, $6

AttrC1_S15:
    INCBIN "../../res/scene/case1/15-joes-manhole/s15-bg.attrmap", $0, $24
jr_023_6160:
    INCBIN "../../res/scene/case1/15-joes-manhole/s15-bg.attrmap", $24, $e
jr_023_616e:
    INCBIN "../../res/scene/case1/15-joes-manhole/s15-bg.attrmap", $32, $f
jr_023_617d:
    INCBIN "../../res/scene/case1/15-joes-manhole/s15-bg.attrmap", $41, $d
jr_023_618a:
    INCBIN "../../res/scene/case1/15-joes-manhole/s15-bg.attrmap", $4e, $76

MapC1_S16:
    INCBIN "../../res/scene/case1/16-joes-manhole/s16-bg.tilemap", $0, $61
jr_023_6261:
    INCBIN "../../res/scene/case1/16-joes-manhole/s16-bg.tilemap", $61, $22
jr_023_6283:
    INCBIN "../../res/scene/case1/16-joes-manhole/s16-bg.tilemap", $83, $b
jr_023_628e:
    INCBIN "../../res/scene/case1/16-joes-manhole/s16-bg.tilemap", $8e, $10
jr_023_629e:
    INCBIN "../../res/scene/case1/16-joes-manhole/s16-bg.tilemap", $9e, $10
jr_023_62ae:
    INCBIN "../../res/scene/case1/16-joes-manhole/s16-bg.tilemap", $ae, $10
jr_023_62be:
    INCBIN "../../res/scene/case1/16-joes-manhole/s16-bg.tilemap", $be, $6

AttrC1_S16:
    INCBIN "../../res/scene/case1/16-joes-manhole/s16-bg.attrmap", $0, $c
jr_023_62d0:
    INCBIN "../../res/scene/case1/16-joes-manhole/s16-bg.attrmap", $c, $12
jr_023_62e2:
    INCBIN "../../res/scene/case1/16-joes-manhole/s16-bg.attrmap", $1e, $a6

MapC1_S17:
    INCBIN "../../res/scene/case1/17-joes-manhole/s17-bg.tilemap", $0, $61
jr_023_63e9:
    INCBIN "../../res/scene/case1/17-joes-manhole/s17-bg.tilemap", $61, $22
jr_023_640b:
    INCBIN "../../res/scene/case1/17-joes-manhole/s17-bg.tilemap", $83, $b
jr_023_6416:
    INCBIN "../../res/scene/case1/17-joes-manhole/s17-bg.tilemap", $8e, $10
jr_023_6426:
    INCBIN "../../res/scene/case1/17-joes-manhole/s17-bg.tilemap", $9e, $10
jr_023_6436:
    INCBIN "../../res/scene/case1/17-joes-manhole/s17-bg.tilemap", $ae, $10
jr_023_6446:
    INCBIN "../../res/scene/case1/17-joes-manhole/s17-bg.tilemap", $be, $6

AttrC1_S17:
    INCBIN "../../res/scene/case1/17-joes-manhole/s17-bg.attrmap", $0, $c
jr_023_6458:
    INCBIN "../../res/scene/case1/17-joes-manhole/s17-bg.attrmap", $c, $12
jr_023_646a:
    INCBIN "../../res/scene/case1/17-joes-manhole/s17-bg.attrmap", $1e, $a6

MapC1_S18:
    INCBIN "../../res/scene/case1/18-joes-casino/s18-bg.tilemap", $0, $3a
jr_023_654a:
    INCBIN "../../res/scene/case1/18-joes-casino/s18-bg.tilemap", $3a, $9
jr_023_6553:
    INCBIN "../../res/scene/case1/18-joes-casino/s18-bg.tilemap", $43, $1b
jr_023_656e:
    INCBIN "../../res/scene/case1/18-joes-casino/s18-bg.tilemap", $5e, $3
jr_023_6571:
    INCBIN "../../res/scene/case1/18-joes-casino/s18-bg.tilemap", $61, $63

AttrC1_S18:
    INCBIN "../../res/scene/case1/18-joes-casino/s18-bg.attrmap", $0, $39
jr_023_660d:
    INCBIN "../../res/scene/case1/18-joes-casino/s18-bg.attrmap", $39, $8b

MapC1_S19:
    INCBIN "../../res/scene/case1/19-joes-casino/s19-bg.tilemap", $0, $3a
jr_023_66d2:
    INCBIN "../../res/scene/case1/19-joes-casino/s19-bg.tilemap", $3a, $9
jr_023_66db:
    INCBIN "../../res/scene/case1/19-joes-casino/s19-bg.tilemap", $43, $1b
jr_023_66f6:
    INCBIN "../../res/scene/case1/19-joes-casino/s19-bg.tilemap", $5e, $3
jr_023_66f9:
    INCBIN "../../res/scene/case1/19-joes-casino/s19-bg.tilemap", $61, $63

AttrC1_S19:
    INCBIN "../../res/scene/case1/19-joes-casino/s19-bg.attrmap", $0, $39
jr_023_6795:
    INCBIN "../../res/scene/case1/19-joes-casino/s19-bg.attrmap", $39, $8b

MapC1_S1A:
    INCBIN "../../res/scene/case1/1a-joes-elevator/s1a-bg.tilemap", $0, $3d
jr_023_685d:
    INCBIN "../../res/scene/case1/1a-joes-elevator/s1a-bg.tilemap", $3d, $12
jr_023_686f:
    INCBIN "../../res/scene/case1/1a-joes-elevator/s1a-bg.tilemap", $4f, $1e
jr_023_688d:
    INCBIN "../../res/scene/case1/1a-joes-elevator/s1a-bg.tilemap", $6d, $57

AttrC1_S1A:
    INCBIN "../../res/scene/case1/1a-joes-elevator/s1a-bg.attrmap", $0, $c4

MapC1_S1B:
    INCBIN "../../res/scene/case1/1b-joes-elevator/s1b-bg.tilemap", $0, $3d
jr_023_69e5:
    INCBIN "../../res/scene/case1/1b-joes-elevator/s1b-bg.tilemap", $3d, $12
jr_023_69f7:
    INCBIN "../../res/scene/case1/1b-joes-elevator/s1b-bg.tilemap", $4f, $1e
jr_023_6a15:
    INCBIN "../../res/scene/case1/1b-joes-elevator/s1b-bg.tilemap", $6d, $28
jr_023_6a3d:
    INCBIN "../../res/scene/case1/1b-joes-elevator/s1b-bg.tilemap", $95, $2f

AttrC1_S1B:
    INCBIN "../../res/scene/case1/1b-joes-elevator/s1b-bg.attrmap", $0, $25
jr_023_6a91:
    INCBIN "../../res/scene/case1/1b-joes-elevator/s1b-bg.attrmap", $25, $9f

MapC1_S1C:
    INCBIN "../../res/scene/case1/1c-joes-elevator/s1c-bg.tilemap", $0, $25
jr_023_6b55:
    INCBIN "../../res/scene/case1/1c-joes-elevator/s1c-bg.tilemap", $25, $71
jr_023_6bc6:
    INCBIN "../../res/scene/case1/1c-joes-elevator/s1c-bg.tilemap", $96, $1e
jr_023_6be4:
    INCBIN "../../res/scene/case1/1c-joes-elevator/s1c-bg.tilemap", $b4, $10

AttrC1_S1C:
    INCBIN "../../res/scene/case1/1c-joes-elevator/s1c-bg.attrmap", $0, $c4

MapC1_S1D:
    INCBIN "../../res/scene/case1/1d-joes-elevator/s1d-bg.tilemap", $0, $25
jr_023_6cdd:
    INCBIN "../../res/scene/case1/1d-joes-elevator/s1d-bg.tilemap", $25, $1c
jr_023_6cf9:
    INCBIN "../../res/scene/case1/1d-joes-elevator/s1d-bg.tilemap", $41, $55
jr_023_6d4e:
    INCBIN "../../res/scene/case1/1d-joes-elevator/s1d-bg.tilemap", $96, $1e
jr_023_6d6c:
    INCBIN "../../res/scene/case1/1d-joes-elevator/s1d-bg.tilemap", $b4, $b
jr_023_6d77:
    INCBIN "../../res/scene/case1/1d-joes-elevator/s1d-bg.tilemap", $bf, $5

AttrC1_S1D:
    INCBIN "../../res/scene/case1/1d-joes-elevator/s1d-bg.attrmap", $0, $c4

MapC1_S1E:
    INCBIN "../../res/scene/case1/1e-joes-elevator/s1e-bg.tilemap", $0, $25
jr_023_6e65:
    INCBIN "../../res/scene/case1/1e-joes-elevator/s1e-bg.tilemap", $25, $71
jr_023_6ed6:
    INCBIN "../../res/scene/case1/1e-joes-elevator/s1e-bg.tilemap", $96, $1e
jr_023_6ef4:
    INCBIN "../../res/scene/case1/1e-joes-elevator/s1e-bg.tilemap", $b4, $b
jr_023_6eff:
    INCBIN "../../res/scene/case1/1e-joes-elevator/s1e-bg.tilemap", $bf, $5

AttrC1_S1E:
    INCBIN "../../res/scene/case1/1e-joes-elevator/s1e-bg.attrmap", $0, $c4

MapC1_S1F:
    INCBIN "../../res/scene/case1/1f-joes-elevator/s1f-bg.tilemap", $0, $25
jr_023_6fed:
    INCBIN "../../res/scene/case1/1f-joes-elevator/s1f-bg.tilemap", $25, $1c
jr_023_7009:
    INCBIN "../../res/scene/case1/1f-joes-elevator/s1f-bg.tilemap", $41, $55
jr_023_705e:
    INCBIN "../../res/scene/case1/1f-joes-elevator/s1f-bg.tilemap", $96, $1e
jr_023_707c:
    INCBIN "../../res/scene/case1/1f-joes-elevator/s1f-bg.tilemap", $b4, $b
jr_023_7087:
    INCBIN "../../res/scene/case1/1f-joes-elevator/s1f-bg.tilemap", $bf, $5

AttrC1_S1F:
    INCBIN "../../res/scene/case1/1f-joes-elevator/s1f-bg.attrmap", $0, $c0
jr_023_714c:
    INCBIN "../../res/scene/case1/1f-joes-elevator/s1f-bg.attrmap", $c0, $4

MapC1_S20:
    INCBIN "../../res/scene/case1/20-restraint-room/s20-bg.tilemap", $0, $3f
jr_023_718f:
    INCBIN "../../res/scene/case1/20-restraint-room/s20-bg.tilemap", $3f, $10
jr_023_719f:
    INCBIN "../../res/scene/case1/20-restraint-room/s20-bg.tilemap", $4f, $1e
jr_023_71bd:
    INCBIN "../../res/scene/case1/20-restraint-room/s20-bg.tilemap", $6d, $57

AttrC1_S20:
    INCBIN "../../res/scene/case1/20-restraint-room/s20-bg.attrmap", $0, $c4

MapC1_S21:
    INCBIN "../../res/scene/case1/21-restraint-room/s21-bg.tilemap", $0, $3f
jr_023_7317:
    INCBIN "../../res/scene/case1/21-restraint-room/s21-bg.tilemap", $3f, $10
jr_023_7327:
    INCBIN "../../res/scene/case1/21-restraint-room/s21-bg.tilemap", $4f, $1e
jr_023_7345:
    INCBIN "../../res/scene/case1/21-restraint-room/s21-bg.tilemap", $6d, $57

AttrC1_S21:
    INCBIN "../../res/scene/case1/21-restraint-room/s21-bg.attrmap", $0, $aa
jr_023_7446:
    INCBIN "../../res/scene/case1/21-restraint-room/s21-bg.attrmap", $aa, $1a

MapC1_S22:
    INCBIN "../../res/scene/case1/22-restraint-room/s22-bg.tilemap", $0, $3f
jr_023_749f:
    INCBIN "../../res/scene/case1/22-restraint-room/s22-bg.tilemap", $3f, $10
jr_023_74af:
    INCBIN "../../res/scene/case1/22-restraint-room/s22-bg.tilemap", $4f, $1e
jr_023_74cd:
    INCBIN "../../res/scene/case1/22-restraint-room/s22-bg.tilemap", $6d, $57

AttrC1_S22:
    INCBIN "../../res/scene/case1/22-restraint-room/s22-bg.attrmap", $0, $aa
jr_023_75ce:
    INCBIN "../../res/scene/case1/22-restraint-room/s22-bg.attrmap", $aa, $1a

MapC1_S23:
    INCBIN "../../res/scene/case1/23-restraint-room/s23-bg.tilemap", $0, $3f
jr_023_7627:
    INCBIN "../../res/scene/case1/23-restraint-room/s23-bg.tilemap", $3f, $10
jr_023_7637:
    INCBIN "../../res/scene/case1/23-restraint-room/s23-bg.tilemap", $4f, $1e
jr_023_7655:
    INCBIN "../../res/scene/case1/23-restraint-room/s23-bg.tilemap", $6d, $57

AttrC1_S23:
    INCBIN "../../res/scene/case1/23-restraint-room/s23-bg.attrmap", $0, $c4

MapC1_S24:
    INCBIN "../../res/scene/case1/24-joes-upper-hall/s24-bg.tilemap", $0, $58
jr_023_77c8:
    INCBIN "../../res/scene/case1/24-joes-upper-hall/s24-bg.tilemap", $58, $1e
jr_023_77e6:
    INCBIN "../../res/scene/case1/24-joes-upper-hall/s24-bg.tilemap", $76, $4e

AttrC1_S24:
    INCBIN "../../res/scene/case1/24-joes-upper-hall/s24-bg.attrmap", $0, $5c
jr_023_7890:
    INCBIN "../../res/scene/case1/24-joes-upper-hall/s24-bg.attrmap", $5c, $68

MapC1_S25:
    INCBIN "../../res/scene/case1/25-joes-upper-hall/s25-bg.tilemap", $0, $46
jr_023_793e:
    INCBIN "../../res/scene/case1/25-joes-upper-hall/s25-bg.tilemap", $46, $12
jr_023_7950:
    INCBIN "../../res/scene/case1/25-joes-upper-hall/s25-bg.tilemap", $58, $1e
jr_023_796e:
    INCBIN "../../res/scene/case1/25-joes-upper-hall/s25-bg.tilemap", $76, $4e

AttrC1_S25:
    INCBIN "../../res/scene/case1/25-joes-upper-hall/s25-bg.attrmap", $0, $5c
jr_023_7a18:
    INCBIN "../../res/scene/case1/25-joes-upper-hall/s25-bg.attrmap", $5c, $68

MapC1_S26:
    INCBIN "../../res/scene/case1/26-joes-upper-hall/s26-bg.tilemap", $0, $c4

AttrC1_S26:
    INCBIN "../../res/scene/case1/26-joes-upper-hall/s26-bg.attrmap", $0, $26
jr_023_7b6a:
    INCBIN "../../res/scene/case1/26-joes-upper-hall/s26-bg.attrmap", $26, $2
jr_023_7b6c:
    INCBIN "../../res/scene/case1/26-joes-upper-hall/s26-bg.attrmap", $28, $10
jr_023_7b7c:
    INCBIN "../../res/scene/case1/26-joes-upper-hall/s26-bg.attrmap", $38, $8c

MapC1_S27:
    INCBIN "../../res/scene/case1/27-joes-upper-hall/s27-bg.tilemap", $0, $c4

AttrC1_S27:
    INCBIN "../../res/scene/case1/27-joes-upper-hall/s27-bg.attrmap", $0, $26
jr_023_7cf2:
    INCBIN "../../res/scene/case1/27-joes-upper-hall/s27-bg.attrmap", $26, $2
jr_023_7cf4:
    INCBIN "../../res/scene/case1/27-joes-upper-hall/s27-bg.attrmap", $28, $10
jr_023_7d04:
    INCBIN "../../res/scene/case1/27-joes-upper-hall/s27-bg.attrmap", $38, $8c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
