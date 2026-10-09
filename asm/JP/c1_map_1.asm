; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    dw MapC1_S28 ; $00
    dw MapC1_S29 ; $01
    dw MapC1_S2A ; $02
    dw MapC1_S2B ; $03
    dw MapC1_S2C ; $04
    dw MapC1_S2D ; $05
    dw MapC1_S2E ; $06
    dw MapC1_S2F ; $07
    dw MapC1_S30 ; $08
    dw MapC1_S31 ; $09
    dw MapC1_S32 ; $0a
    dw MapC1_S33 ; $0b
    dw MapC1_S34 ; $0c
    dw MapC1_S35 ; $0d
    dw MapC1_S36 ; $0e
    dw MapC1_S37 ; $0f
    dw MapC1_S38 ; $10
    dw MapC1_S39 ; $11
    dw MapC1_S3A ; $12
    dw MapC1_S3B ; $13
    dw MapC1_S3C ; $14
    dw MapC1_S3D ; $15
    dw MapC1_S3E ; $16
    dw MapC1_S3F ; $17
    dw MapC1_S40 ; $18
    dw MapC1_S41 ; $19
    dw MapC1_S42 ; $1a
    dw MapC1_S43 ; $1b
    dw MapC1_S44 ; $1c
    dw MapC1_S45 ; $1d
    dw MapC1_S46 ; $1e
    dw MapC1_S47 ; $1f
    dw MapC1_S48 ; $20
    dw MapC1_S49 ; $21
    dw MapC1_S4A ; $22
    dw MapC1_S4B ; $23
    dw MapC1_S4C ; $24
    dw MapC1_S4D ; $25
    dw MapC1_S4E ; $26
    dw MapC1_S4F ; $27

MapC1_S28:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.tilemap", $0, $12
jr_024_4062:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.tilemap", $12, $7
jr_024_4069:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.tilemap", $19, $7
jr_024_4070:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.tilemap", $20, $1f
jr_024_408f:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.tilemap", $3f, $f
jr_024_409e:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.tilemap", $4e, $7
jr_024_40a5:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.tilemap", $55, $10
jr_024_40b5:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.tilemap", $65, $49
jr_024_40fe:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.tilemap", $ae, $16

AttrC1_S28:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.attrmap", $0, $2
jr_024_4116:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.attrmap", $2, $15
jr_024_412b:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.attrmap", $17, $39
jr_024_4164:
    INCBIN "../../res/scene/case1/28-siegel-office/s28-bg.attrmap", $50, $74

MapC1_S29:
    INCBIN "../../res/scene/case1/29-siegel-office/s29-bg.tilemap", $0, $3f
jr_024_4217:
    INCBIN "../../res/scene/case1/29-siegel-office/s29-bg.tilemap", $3f, $26
jr_024_423d:
    INCBIN "../../res/scene/case1/29-siegel-office/s29-bg.tilemap", $65, $49
jr_024_4286:
    INCBIN "../../res/scene/case1/29-siegel-office/s29-bg.tilemap", $ae, $16

AttrC1_S29:
    INCBIN "../../res/scene/case1/29-siegel-office/s29-bg.attrmap", $0, $2
jr_024_429e:
    INCBIN "../../res/scene/case1/29-siegel-office/s29-bg.attrmap", $2, $15
jr_024_42b3:
    INCBIN "../../res/scene/case1/29-siegel-office/s29-bg.attrmap", $17, $1
jr_024_42b4:
    INCBIN "../../res/scene/case1/29-siegel-office/s29-bg.attrmap", $18, $e
jr_024_42c2:
    INCBIN "../../res/scene/case1/29-siegel-office/s29-bg.attrmap", $26, $e
jr_024_42d0:
    INCBIN "../../res/scene/case1/29-siegel-office/s29-bg.attrmap", $34, $90

MapC1_S2A:
    INCBIN "../../res/scene/case1/2a-siegel-office/s2a-bg.tilemap", $0, $3f
jr_024_439f:
    INCBIN "../../res/scene/case1/2a-siegel-office/s2a-bg.tilemap", $3f, $6f
jr_024_440e:
    INCBIN "../../res/scene/case1/2a-siegel-office/s2a-bg.tilemap", $ae, $16

AttrC1_S2A:
    INCBIN "../../res/scene/case1/2a-siegel-office/s2a-bg.attrmap", $0, $2
jr_024_4426:
    INCBIN "../../res/scene/case1/2a-siegel-office/s2a-bg.attrmap", $2, $15
jr_024_443b:
    INCBIN "../../res/scene/case1/2a-siegel-office/s2a-bg.attrmap", $17, $39
jr_024_4474:
    INCBIN "../../res/scene/case1/2a-siegel-office/s2a-bg.attrmap", $50, $74

MapC1_S2B:
    INCBIN "../../res/scene/case1/2b-siegel-office/s2b-bg.tilemap", $0, $3f
jr_024_4527:
    INCBIN "../../res/scene/case1/2b-siegel-office/s2b-bg.tilemap", $3f, $6f
jr_024_4596:
    INCBIN "../../res/scene/case1/2b-siegel-office/s2b-bg.tilemap", $ae, $16

AttrC1_S2B:
    INCBIN "../../res/scene/case1/2b-siegel-office/s2b-bg.attrmap", $0, $2
jr_024_45ae:
    INCBIN "../../res/scene/case1/2b-siegel-office/s2b-bg.attrmap", $2, $15
jr_024_45c3:
    INCBIN "../../res/scene/case1/2b-siegel-office/s2b-bg.attrmap", $17, $1
jr_024_45c4:
    INCBIN "../../res/scene/case1/2b-siegel-office/s2b-bg.attrmap", $18, $e
jr_024_45d2:
    INCBIN "../../res/scene/case1/2b-siegel-office/s2b-bg.attrmap", $26, $e
jr_024_45e0:
    INCBIN "../../res/scene/case1/2b-siegel-office/s2b-bg.attrmap", $34, $90

MapC1_S2C:
    INCBIN "../../res/scene/case1/2c-secretary-office/s2c-bg.tilemap", $0, $3b
jr_024_46ab:
    INCBIN "../../res/scene/case1/2c-secretary-office/s2c-bg.tilemap", $3b, $e
jr_024_46b9:
    INCBIN "../../res/scene/case1/2c-secretary-office/s2c-bg.tilemap", $49, $e
jr_024_46c7:
    INCBIN "../../res/scene/case1/2c-secretary-office/s2c-bg.tilemap", $57, $3e
jr_024_4705:
    INCBIN "../../res/scene/case1/2c-secretary-office/s2c-bg.tilemap", $95, $21
jr_024_4726:
    INCBIN "../../res/scene/case1/2c-secretary-office/s2c-bg.tilemap", $b6, $e

AttrC1_S2C:
    INCBIN "../../res/scene/case1/2c-secretary-office/s2c-bg.attrmap", $0, $30
jr_024_4764:
    INCBIN "../../res/scene/case1/2c-secretary-office/s2c-bg.attrmap", $30, $94

MapC1_S2D:
    INCBIN "../../res/scene/case1/2d-secretary-office/s2d-bg.tilemap", $0, $3b
jr_024_4833:
    INCBIN "../../res/scene/case1/2d-secretary-office/s2d-bg.tilemap", $3b, $e
jr_024_4841:
    INCBIN "../../res/scene/case1/2d-secretary-office/s2d-bg.tilemap", $49, $e
jr_024_484f:
    INCBIN "../../res/scene/case1/2d-secretary-office/s2d-bg.tilemap", $57, $3e
jr_024_488d:
    INCBIN "../../res/scene/case1/2d-secretary-office/s2d-bg.tilemap", $95, $21
jr_024_48ae:
    INCBIN "../../res/scene/case1/2d-secretary-office/s2d-bg.tilemap", $b6, $e

AttrC1_S2D:
    INCBIN "../../res/scene/case1/2d-secretary-office/s2d-bg.attrmap", $0, $c4

MapC1_S2E:
    INCBIN "../../res/scene/case1/2e-joes-private-door/s2e-bg.tilemap", $0, $5e
jr_024_49de:
    INCBIN "../../res/scene/case1/2e-joes-private-door/s2e-bg.tilemap", $5e, $66

AttrC1_S2E:
    INCBIN "../../res/scene/case1/2e-joes-private-door/s2e-bg.attrmap", $0, $9
jr_024_4a4d:
    INCBIN "../../res/scene/case1/2e-joes-private-door/s2e-bg.attrmap", $9, $1
jr_024_4a4e:
    INCBIN "../../res/scene/case1/2e-joes-private-door/s2e-bg.attrmap", $a, $13
jr_024_4a61:
    INCBIN "../../res/scene/case1/2e-joes-private-door/s2e-bg.attrmap", $1d, $a7

MapC1_S2F:
    INCBIN "../../res/scene/case1/2f-joes-private-door/s2f-bg.tilemap", $0, $5e
jr_024_4b66:
    INCBIN "../../res/scene/case1/2f-joes-private-door/s2f-bg.tilemap", $5e, $37
jr_024_4b9d:
    INCBIN "../../res/scene/case1/2f-joes-private-door/s2f-bg.tilemap", $95, $2f

AttrC1_S2F:
    INCBIN "../../res/scene/case1/2f-joes-private-door/s2f-bg.attrmap", $0, $9
jr_024_4bd5:
    INCBIN "../../res/scene/case1/2f-joes-private-door/s2f-bg.attrmap", $9, $1
jr_024_4bd6:
    INCBIN "../../res/scene/case1/2f-joes-private-door/s2f-bg.attrmap", $a, $13
jr_024_4be9:
    INCBIN "../../res/scene/case1/2f-joes-private-door/s2f-bg.attrmap", $1d, $a7

MapC1_S30:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $0, $2c
jr_024_4cbc:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $2c, $2
jr_024_4cbe:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $2e, $2
jr_024_4cc0:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $30, $2
jr_024_4cc2:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $32, $2
jr_024_4cc4:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $34, $2
jr_024_4cc6:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $36, $4
jr_024_4cca:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $3a, $2
jr_024_4ccc:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $3c, $2
jr_024_4cce:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $3e, $2
jr_024_4cd0:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $40, $2
jr_024_4cd2:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $42, $2
jr_024_4cd4:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $44, $38
jr_024_4d0c:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $7c, $1e
jr_024_4d2a:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.tilemap", $9a, $2a

AttrC1_S30:
    INCBIN "../../res/scene/case1/30-joes-street/s30-bg.attrmap", $0, $c4

MapC1_S31:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $0, $2c
jr_024_4e44:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $2c, $2
jr_024_4e46:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $2e, $2
jr_024_4e48:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $30, $2
jr_024_4e4a:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $32, $2
jr_024_4e4c:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $34, $2
jr_024_4e4e:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $36, $4
jr_024_4e52:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $3a, $2
jr_024_4e54:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $3c, $2
jr_024_4e56:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $3e, $2
jr_024_4e58:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $40, $2
jr_024_4e5a:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $42, $2
jr_024_4e5c:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $44, $38
jr_024_4e94:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $7c, $1e
jr_024_4eb2:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.tilemap", $9a, $2a

AttrC1_S31:
    INCBIN "../../res/scene/case1/31-joes-street/s31-bg.attrmap", $0, $c4

MapC1_S32:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $0, $2c
jr_024_4fcc:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $2c, $2
jr_024_4fce:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $2e, $2
jr_024_4fd0:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $30, $2
jr_024_4fd2:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $32, $2
jr_024_4fd4:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $34, $2
jr_024_4fd6:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $36, $4
jr_024_4fda:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $3a, $2
jr_024_4fdc:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $3c, $2
jr_024_4fde:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $3e, $2
jr_024_4fe0:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $40, $2
jr_024_4fe2:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $42, $2
jr_024_4fe4:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $44, $38
jr_024_501c:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $7c, $1e
jr_024_503a:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.tilemap", $9a, $2a

AttrC1_S32:
    INCBIN "../../res/scene/case1/32-joes-street/s32-bg.attrmap", $0, $c4

MapC1_S33:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $0, $2c
jr_024_5154:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $2c, $2
jr_024_5156:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $2e, $2
jr_024_5158:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $30, $2
jr_024_515a:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $32, $2
jr_024_515c:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $34, $2
jr_024_515e:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $36, $4
jr_024_5162:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $3a, $2
jr_024_5164:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $3c, $2
jr_024_5166:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $3e, $2
jr_024_5168:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $40, $2
jr_024_516a:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $42, $2
jr_024_516c:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $44, $38
jr_024_51a4:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $7c, $1e
jr_024_51c2:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.tilemap", $9a, $2a

AttrC1_S33:
    INCBIN "../../res/scene/case1/33-joes-street/s33-bg.attrmap", $0, $c4

MapC1_S34:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $0, $2c
jr_024_52dc:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $2c, $2
jr_024_52de:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $2e, $2
jr_024_52e0:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $30, $2
jr_024_52e2:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $32, $2
jr_024_52e4:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $34, $2
jr_024_52e6:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $36, $4
jr_024_52ea:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $3a, $2
jr_024_52ec:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $3c, $2
jr_024_52ee:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $3e, $2
jr_024_52f0:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $40, $2
jr_024_52f2:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $42, $2
jr_024_52f4:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $44, $38
jr_024_532c:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $7c, $1e
jr_024_534a:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.tilemap", $9a, $2a

AttrC1_S34:
    INCBIN "../../res/scene/case1/34-joes-street/s34-bg.attrmap", $0, $c4

MapC1_S35:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $0, $2c
jr_024_5464:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $2c, $2
jr_024_5466:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $2e, $2
jr_024_5468:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $30, $2
jr_024_546a:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $32, $2
jr_024_546c:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $34, $2
jr_024_546e:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $36, $4
jr_024_5472:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $3a, $2
jr_024_5474:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $3c, $2
jr_024_5476:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $3e, $2
jr_024_5478:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $40, $2
jr_024_547a:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $42, $2
jr_024_547c:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $44, $38
jr_024_54b4:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $7c, $1e
jr_024_54d2:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.tilemap", $9a, $2a

AttrC1_S35:
    INCBIN "../../res/scene/case1/35-joes-street/s35-bg.attrmap", $0, $c4

MapC1_S36:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $0, $2c
jr_024_55ec:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $2c, $2
jr_024_55ee:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $2e, $2
jr_024_55f0:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $30, $2
jr_024_55f2:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $32, $2
jr_024_55f4:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $34, $2
jr_024_55f6:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $36, $4
jr_024_55fa:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $3a, $2
jr_024_55fc:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $3c, $2
jr_024_55fe:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $3e, $2
jr_024_5600:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $40, $2
jr_024_5602:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $42, $2
jr_024_5604:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $44, $38
jr_024_563c:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $7c, $1e
jr_024_565a:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.tilemap", $9a, $2a

AttrC1_S36:
    INCBIN "../../res/scene/case1/36-joes-street/s36-bg.attrmap", $0, $c4

MapC1_S37:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $0, $2c
jr_024_5774:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $2c, $2
jr_024_5776:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $2e, $2
jr_024_5778:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $30, $2
jr_024_577a:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $32, $2
jr_024_577c:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $34, $2
jr_024_577e:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $36, $4
jr_024_5782:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $3a, $2
jr_024_5784:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $3c, $2
jr_024_5786:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $3e, $2
jr_024_5788:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $40, $2
jr_024_578a:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $42, $2
jr_024_578c:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $44, $38
jr_024_57c4:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $7c, $1e
jr_024_57e2:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.tilemap", $9a, $2a

AttrC1_S37:
    INCBIN "../../res/scene/case1/37-joes-street/s37-bg.attrmap", $0, $c4

MapC1_S38:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $0, $2c
jr_024_58fc:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $2c, $2
jr_024_58fe:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $2e, $2
jr_024_5900:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $30, $2
jr_024_5902:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $32, $2
jr_024_5904:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $34, $2
jr_024_5906:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $36, $4
jr_024_590a:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $3a, $2
jr_024_590c:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $3c, $2
jr_024_590e:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $3e, $2
jr_024_5910:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $40, $2
jr_024_5912:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $42, $2
jr_024_5914:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $44, $38
jr_024_594c:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $7c, $1e
jr_024_596a:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.tilemap", $9a, $2a

AttrC1_S38:
    INCBIN "../../res/scene/case1/38-joes-street/s38-bg.attrmap", $0, $c4

MapC1_S39:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $0, $2c
jr_024_5a84:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $2c, $2
jr_024_5a86:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $2e, $2
jr_024_5a88:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $30, $2
jr_024_5a8a:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $32, $2
jr_024_5a8c:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $34, $2
jr_024_5a8e:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $36, $4
jr_024_5a92:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $3a, $2
jr_024_5a94:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $3c, $2
jr_024_5a96:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $3e, $2
jr_024_5a98:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $40, $2
jr_024_5a9a:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $42, $2
jr_024_5a9c:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $44, $38
jr_024_5ad4:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $7c, $1e
jr_024_5af2:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.tilemap", $9a, $2a

AttrC1_S39:
    INCBIN "../../res/scene/case1/39-joes-street/s39-bg.attrmap", $0, $c4

MapC1_S3A:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $0, $2c
jr_024_5c0c:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $2c, $2
jr_024_5c0e:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $2e, $2
jr_024_5c10:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $30, $2
jr_024_5c12:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $32, $2
jr_024_5c14:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $34, $2
jr_024_5c16:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $36, $4
jr_024_5c1a:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $3a, $2
jr_024_5c1c:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $3c, $2
jr_024_5c1e:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $3e, $2
jr_024_5c20:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $40, $2
jr_024_5c22:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $42, $2
jr_024_5c24:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $44, $38
jr_024_5c5c:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $7c, $1e
jr_024_5c7a:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.tilemap", $9a, $2a

AttrC1_S3A:
    INCBIN "../../res/scene/case1/3a-joes-street/s3a-bg.attrmap", $0, $c4

MapC1_S3B:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $0, $2c
jr_024_5d94:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $2c, $2
jr_024_5d96:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $2e, $2
jr_024_5d98:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $30, $2
jr_024_5d9a:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $32, $2
jr_024_5d9c:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $34, $2
jr_024_5d9e:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $36, $4
jr_024_5da2:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $3a, $2
jr_024_5da4:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $3c, $2
jr_024_5da6:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $3e, $2
jr_024_5da8:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $40, $2
jr_024_5daa:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $42, $2
jr_024_5dac:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $44, $38
jr_024_5de4:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $7c, $1e
jr_024_5e02:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.tilemap", $9a, $2a

AttrC1_S3B:
    INCBIN "../../res/scene/case1/3b-joes-street/s3b-bg.attrmap", $0, $c4

MapC1_S3C:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $0, $2c
jr_024_5f1c:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $2c, $2
jr_024_5f1e:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $2e, $2
jr_024_5f20:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $30, $2
jr_024_5f22:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $32, $2
jr_024_5f24:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $34, $2
jr_024_5f26:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $36, $4
jr_024_5f2a:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $3a, $2
jr_024_5f2c:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $3c, $2
jr_024_5f2e:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $3e, $2
jr_024_5f30:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $40, $2
jr_024_5f32:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $42, $2
jr_024_5f34:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $44, $38
jr_024_5f6c:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $7c, $1e
jr_024_5f8a:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.tilemap", $9a, $2a

AttrC1_S3C:
    INCBIN "../../res/scene/case1/3c-joes-street/s3c-bg.attrmap", $0, $c4

MapC1_S3D:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $0, $2c
jr_024_60a4:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $2c, $2
jr_024_60a6:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $2e, $2
jr_024_60a8:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $30, $2
jr_024_60aa:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $32, $2
jr_024_60ac:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $34, $2
jr_024_60ae:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $36, $4
jr_024_60b2:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $3a, $2
jr_024_60b4:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $3c, $2
jr_024_60b6:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $3e, $2
jr_024_60b8:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $40, $2
jr_024_60ba:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $42, $2
jr_024_60bc:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $44, $38
jr_024_60f4:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $7c, $1e
jr_024_6112:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.tilemap", $9a, $2a

AttrC1_S3D:
    INCBIN "../../res/scene/case1/3d-joes-street/s3d-bg.attrmap", $0, $c4

MapC1_S3E:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $0, $2c
jr_024_622c:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $2c, $2
jr_024_622e:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $2e, $2
jr_024_6230:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $30, $2
jr_024_6232:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $32, $2
jr_024_6234:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $34, $2
jr_024_6236:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $36, $4
jr_024_623a:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $3a, $2
jr_024_623c:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $3c, $2
jr_024_623e:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $3e, $2
jr_024_6240:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $40, $2
jr_024_6242:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $42, $2
jr_024_6244:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $44, $38
jr_024_627c:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $7c, $1e
jr_024_629a:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.tilemap", $9a, $2a

AttrC1_S3E:
    INCBIN "../../res/scene/case1/3e-joes-street/s3e-bg.attrmap", $0, $c4

MapC1_S3F:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $0, $2c
jr_024_63b4:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $2c, $2
jr_024_63b6:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $2e, $2
jr_024_63b8:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $30, $2
jr_024_63ba:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $32, $2
jr_024_63bc:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $34, $2
jr_024_63be:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $36, $4
jr_024_63c2:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $3a, $2
jr_024_63c4:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $3c, $2
jr_024_63c6:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $3e, $2
jr_024_63c8:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $40, $2
jr_024_63ca:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $42, $2
jr_024_63cc:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $44, $38
jr_024_6404:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $7c, $1e
jr_024_6422:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.tilemap", $9a, $2a

AttrC1_S3F:
    INCBIN "../../res/scene/case1/3f-joes-street/s3f-bg.attrmap", $0, $c4

MapC1_S40:
    INCBIN "../../res/scene/case1/40-joes-street/s40-bg.tilemap", $0, $57
jr_024_6567:
    INCBIN "../../res/scene/case1/40-joes-street/s40-bg.tilemap", $57, $21
jr_024_6588:
    INCBIN "../../res/scene/case1/40-joes-street/s40-bg.tilemap", $78, $3f
jr_024_65c7:
    INCBIN "../../res/scene/case1/40-joes-street/s40-bg.tilemap", $b7, $d

AttrC1_S40:
    INCBIN "../../res/scene/case1/40-joes-street/s40-bg.attrmap", $0, $7
jr_024_65db:
    INCBIN "../../res/scene/case1/40-joes-street/s40-bg.attrmap", $7, $bd

MapC1_S41:
    INCBIN "../../res/scene/case1/41-mercedes-interior/s41-bg.tilemap", $0, $5b
jr_024_66f3:
    INCBIN "../../res/scene/case1/41-mercedes-interior/s41-bg.tilemap", $5b, $10
jr_024_6703:
    INCBIN "../../res/scene/case1/41-mercedes-interior/s41-bg.tilemap", $6b, $e
jr_024_6711:
    INCBIN "../../res/scene/case1/41-mercedes-interior/s41-bg.tilemap", $79, $10
jr_024_6721:
    INCBIN "../../res/scene/case1/41-mercedes-interior/s41-bg.tilemap", $89, $3b

AttrC1_S41:
    INCBIN "../../res/scene/case1/41-mercedes-interior/s41-bg.attrmap", $0, $c4

MapC1_S42:
    INCBIN "../../res/scene/case1/42-mercedes-interior/s42-bg.tilemap", $0, $5b
jr_024_687b:
    INCBIN "../../res/scene/case1/42-mercedes-interior/s42-bg.tilemap", $5b, $10
jr_024_688b:
    INCBIN "../../res/scene/case1/42-mercedes-interior/s42-bg.tilemap", $6b, $e
jr_024_6899:
    INCBIN "../../res/scene/case1/42-mercedes-interior/s42-bg.tilemap", $79, $10
jr_024_68a9:
    INCBIN "../../res/scene/case1/42-mercedes-interior/s42-bg.tilemap", $89, $3b

AttrC1_S42:
    INCBIN "../../res/scene/case1/42-mercedes-interior/s42-bg.attrmap", $0, $c4

MapC1_S43:
    INCBIN "../../res/scene/case1/43-mercedes-trunk/s43-bg.tilemap", $0, $31
jr_024_69d9:
    INCBIN "../../res/scene/case1/43-mercedes-trunk/s43-bg.tilemap", $31, $e
jr_024_69e7:
    INCBIN "../../res/scene/case1/43-mercedes-trunk/s43-bg.tilemap", $3f, $10
jr_024_69f7:
    INCBIN "../../res/scene/case1/43-mercedes-trunk/s43-bg.tilemap", $4f, $11
jr_024_6a08:
    INCBIN "../../res/scene/case1/43-mercedes-trunk/s43-bg.tilemap", $60, $16
jr_024_6a1e:
    INCBIN "../../res/scene/case1/43-mercedes-trunk/s43-bg.tilemap", $76, $4e

AttrC1_S43:
    INCBIN "../../res/scene/case1/43-mercedes-trunk/s43-bg.attrmap", $0, $c4

MapC1_S44:
    INCBIN "../../res/scene/case1/44-sternwood-trunk/s44-bg.tilemap", $0, $77
jr_024_6ba7:
    INCBIN "../../res/scene/case1/44-sternwood-trunk/s44-bg.tilemap", $77, $7
jr_024_6bae:
    INCBIN "../../res/scene/case1/44-sternwood-trunk/s44-bg.tilemap", $7e, $6
jr_024_6bb4:
    INCBIN "../../res/scene/case1/44-sternwood-trunk/s44-bg.tilemap", $84, $40

AttrC1_S44:
    INCBIN "../../res/scene/case1/44-sternwood-trunk/s44-bg.attrmap", $0, $41
jr_024_6c35:
    INCBIN "../../res/scene/case1/44-sternwood-trunk/s44-bg.attrmap", $41, $83

MapC1_S45:
    INCBIN "../../res/scene/case1/45-newsstand/s45-bg.tilemap", $0, $38
jr_024_6cf0:
    INCBIN "../../res/scene/case1/45-newsstand/s45-bg.tilemap", $38, $a
jr_024_6cfa:
    INCBIN "../../res/scene/case1/45-newsstand/s45-bg.tilemap", $42, $2f
jr_024_6d29:
    INCBIN "../../res/scene/case1/45-newsstand/s45-bg.tilemap", $71, $e
jr_024_6d37:
    INCBIN "../../res/scene/case1/45-newsstand/s45-bg.tilemap", $7f, $15
jr_024_6d4c:
    INCBIN "../../res/scene/case1/45-newsstand/s45-bg.tilemap", $94, $30

AttrC1_S45:
    INCBIN "../../res/scene/case1/45-newsstand/s45-bg.attrmap", $0, $c4

MapC1_S46:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.tilemap", $0, $42
jr_024_6e82:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.tilemap", $42, $28
jr_024_6eaa:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.tilemap", $6a, $f
jr_024_6eb9:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.tilemap", $79, $4
jr_024_6ebd:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.tilemap", $7d, $47

AttrC1_S46:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.attrmap", $0, $4c
jr_024_6f50:
    INCBIN "../../res/scene/case1/46-newsstand/s46-bg.attrmap", $4c, $78

MapC1_S47:
    INCBIN "../../res/scene/case1/47-petes-gun-palace/s47-bg.tilemap", $0, $4b
jr_024_7013:
    INCBIN "../../res/scene/case1/47-petes-gun-palace/s47-bg.tilemap", $4b, $36
jr_024_7049:
    INCBIN "../../res/scene/case1/47-petes-gun-palace/s47-bg.tilemap", $81, $12
jr_024_705b:
    INCBIN "../../res/scene/case1/47-petes-gun-palace/s47-bg.tilemap", $93, $14
jr_024_706f:
    INCBIN "../../res/scene/case1/47-petes-gun-palace/s47-bg.tilemap", $a7, $6
jr_024_7075:
    INCBIN "../../res/scene/case1/47-petes-gun-palace/s47-bg.tilemap", $ad, $8
jr_024_707d:
    INCBIN "../../res/scene/case1/47-petes-gun-palace/s47-bg.tilemap", $b5, $2
jr_024_707f:
    INCBIN "../../res/scene/case1/47-petes-gun-palace/s47-bg.tilemap", $b7, $c
jr_024_708b:
    INCBIN "../../res/scene/case1/47-petes-gun-palace/s47-bg.tilemap", $c3, $1

AttrC1_S47:
    INCBIN "../../res/scene/case1/47-petes-gun-palace/s47-bg.attrmap", $0, $f
jr_024_709b:
    INCBIN "../../res/scene/case1/47-petes-gun-palace/s47-bg.attrmap", $f, $b5

MapC1_S48:
    INCBIN "../../res/scene/case1/48-petes-gun-palace/s48-bg.tilemap", $0, $4b
jr_024_719b:
    INCBIN "../../res/scene/case1/48-petes-gun-palace/s48-bg.tilemap", $4b, $32
jr_024_71cd:
    INCBIN "../../res/scene/case1/48-petes-gun-palace/s48-bg.tilemap", $7d, $4
jr_024_71d1:
    INCBIN "../../res/scene/case1/48-petes-gun-palace/s48-bg.tilemap", $81, $a
jr_024_71db:
    INCBIN "../../res/scene/case1/48-petes-gun-palace/s48-bg.tilemap", $8b, $e
jr_024_71e9:
    INCBIN "../../res/scene/case1/48-petes-gun-palace/s48-bg.tilemap", $99, $e
jr_024_71f7:
    INCBIN "../../res/scene/case1/48-petes-gun-palace/s48-bg.tilemap", $a7, $6
jr_024_71fd:
    INCBIN "../../res/scene/case1/48-petes-gun-palace/s48-bg.tilemap", $ad, $8
jr_024_7205:
    INCBIN "../../res/scene/case1/48-petes-gun-palace/s48-bg.tilemap", $b5, $e
jr_024_7213:
    INCBIN "../../res/scene/case1/48-petes-gun-palace/s48-bg.tilemap", $c3, $1

AttrC1_S48:
    INCBIN "../../res/scene/case1/48-petes-gun-palace/s48-bg.attrmap", $0, $c4

MapC1_S49:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.tilemap", $0, $51
jr_024_7329:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.tilemap", $51, $2
jr_024_732b:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.tilemap", $53, $1c
jr_024_7347:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.tilemap", $6f, $55

AttrC1_S49:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.attrmap", $0, $1c
jr_024_73b8:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.attrmap", $1c, $4c
jr_024_7404:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.attrmap", $68, $e
jr_024_7412:
    INCBIN "../../res/scene/case1/49-petes-gun-palace/s49-bg.attrmap", $76, $4e

MapC1_S4A:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.tilemap", $0, $1d
jr_024_747d:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.tilemap", $1d, $1b
jr_024_7498:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.tilemap", $38, $f
jr_024_74a7:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.tilemap", $47, $12
jr_024_74b9:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.tilemap", $59, $21
jr_024_74da:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.tilemap", $7a, $4a

AttrC1_S4A:
    INCBIN "../../res/scene/case1/4a-petes-counter/s4a-bg.attrmap", $0, $c4

MapC1_S4B:
    INCBIN "../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.tilemap", $0, $a8
jr_024_7690:
    INCBIN "../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.tilemap", $a8, $2
jr_024_7692:
    INCBIN "../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.tilemap", $aa, $1a

AttrC1_S4B:
    INCBIN "../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.attrmap", $0, $4
jr_024_76b0:
    INCBIN "../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.attrmap", $4, $2
jr_024_76b2:
    INCBIN "../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.attrmap", $6, $be

MapC1_S4C:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.tilemap", $0, $31
jr_024_77a1:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.tilemap", $31, $b
jr_024_77ac:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.tilemap", $3c, $c
jr_024_77b8:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.tilemap", $48, $14
jr_024_77cc:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.tilemap", $5c, $38
jr_024_7804:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.tilemap", $94, $30

AttrC1_S4C:
    INCBIN "../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.attrmap", $0, $c4

MapC1_S4D:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.tilemap", $0, $a9
jr_024_79a1:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.tilemap", $a9, $2
jr_024_79a3:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.tilemap", $ab, $19

AttrC1_S4D:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.attrmap", $0, $5
jr_024_79c1:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.attrmap", $5, $2
jr_024_79c3:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.attrmap", $7, $1e
jr_024_79e1:
    INCBIN "../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.attrmap", $25, $9f

MapC1_S4E:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.tilemap", $0, $37
jr_024_7ab7:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.tilemap", $37, $e
jr_024_7ac5:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.tilemap", $45, $b
jr_024_7ad0:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.tilemap", $50, $11
jr_024_7ae1:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.tilemap", $61, $13
jr_024_7af4:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.tilemap", $74, $6
jr_024_7afa:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.tilemap", $7a, $4a

AttrC1_S4E:
    INCBIN "../../res/scene/case1/4e-police-station/s4e-bg.attrmap", $0, $c4

MapC1_S4F:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.tilemap", $0, $3a
jr_024_7c42:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.tilemap", $3a, $5
jr_024_7c47:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.tilemap", $3f, $2b
jr_024_7c72:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.tilemap", $6a, $17
jr_024_7c89:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.tilemap", $81, $5
jr_024_7c8e:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.tilemap", $86, $e
jr_024_7c9c:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.tilemap", $94, $30

AttrC1_S4F:
    INCBIN "../../res/scene/case1/4f-police-station/s4f-bg.attrmap", $0, $c4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
