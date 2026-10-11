; 86 original Case I palette pointers and 64-byte records.
C1BgPalRefs:
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
