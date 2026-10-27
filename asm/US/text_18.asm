; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text18Msgs0:
    db LOW(Text18Message00), HIGH(Text18Message00)
    db LOW(Text18Message01), HIGH(Text18Message01)
    db LOW(Text18Message02), HIGH(Text18Message02)
    db LOW(Text18Message03), HIGH(Text18Message03)
    db LOW(Text18Message04), HIGH(Text18Message04)
    db LOW(Text18Message05), HIGH(Text18Message05)
    db LOW(Text18Message06), HIGH(Text18Message06)
    db LOW(Text18Message07), HIGH(Text18Message07)
    db LOW(Text18Message08), HIGH(Text18Message08)
    db LOW(Text18Message09), HIGH(Text18Message09)
    db LOW(Text18Message0A), HIGH(Text18Message0A)
    db LOW(Text18Message0B), HIGH(Text18Message0B)
    db LOW(Text18Message0C), HIGH(Text18Message0C)
    db LOW(Text18Message0D), HIGH(Text18Message0D)
    db LOW(Text18Message0E), HIGH(Text18Message0E)
    db LOW(Text18Message0F), HIGH(Text18Message0F)
    db LOW(Text18Message10), HIGH(Text18Message10)
    db LOW(Text18Message11), HIGH(Text18Message11)
    db LOW(Text18Message12), HIGH(Text18Message12)
    db LOW(Text18Message13), HIGH(Text18Message13)
    db LOW(Text18Message14), HIGH(Text18Message14)
    db LOW(Text18Message15), HIGH(Text18Message15)
    db LOW(Text18Message16), HIGH(Text18Message16)
    db LOW(Text18Message17), HIGH(Text18Message17)
    db LOW(Text18Message18), HIGH(Text18Message18)
    db LOW(Text18Message19), HIGH(Text18Message19)
    db LOW(Text18Message1A), HIGH(Text18Message1A)
    db LOW(Text18Message1B), HIGH(Text18Message1B)
    db LOW(Text18Message1C), HIGH(Text18Message1C)
    db LOW(Text18Message1D), HIGH(Text18Message1D)
    db LOW(Text18Message1E), HIGH(Text18Message1E)
    db LOW(Text18Message1F), HIGH(Text18Message1F)
    db LOW(Text18Message20), HIGH(Text18Message20)
    db LOW(Text18Message21), HIGH(Text18Message21)
    db LOW(Text18Message22), HIGH(Text18Message22)
    db LOW(Text18Message23), HIGH(Text18Message23)
    db LOW(Text18Message24), HIGH(Text18Message24)
    db LOW(Text18Message25), HIGH(Text18Message25)
    db LOW(Text18Message26), HIGH(Text18Message26)
    db LOW(Text18Message27), HIGH(Text18Message27)
    db LOW(Text18Message28), HIGH(Text18Message28)
    db LOW(Text18Message29), HIGH(Text18Message29)
    db LOW(Text18Message2A), HIGH(Text18Message2A)
    db LOW(Text18Message2B), HIGH(Text18Message2B)
    db LOW(Text18Message2C), HIGH(Text18Message2C)
    db LOW(Text18Message2D), HIGH(Text18Message2D)
    db LOW(Text18Message2E), HIGH(Text18Message2E)
    db LOW(Text18Message2F), HIGH(Text18Message2F)
    db LOW(Text18Message30), HIGH(Text18Message30)
    db LOW(Text18Message31), HIGH(Text18Message31)
    db LOW(Text18Message32), HIGH(Text18Message32)
    db LOW(Text18Message33), HIGH(Text18Message33)
    db LOW(Text18Message34), HIGH(Text18Message34)
    db LOW(Text18Message35), HIGH(Text18Message35)
    db LOW(Text18Message36), HIGH(Text18Message36)
    db LOW(Text18Message37), HIGH(Text18Message37)
    db LOW(Text18Message38), HIGH(Text18Message38)
    db LOW(Text18Message39), HIGH(Text18Message39)
    db LOW(Text18Message3A), HIGH(Text18Message3A)
    db LOW(Text18Message3B), HIGH(Text18Message3B)
    db LOW(Text18Message3C), HIGH(Text18Message3C)
    db LOW(Text18Message3D), HIGH(Text18Message3D)
    db LOW(Text18Message3E), HIGH(Text18Message3E)
    db LOW(Text18Message3F), HIGH(Text18Message3F)
; Sixty-four message pointers for one text group.
Text18Msgs1:
    db LOW(Text18Message40), HIGH(Text18Message40)
    db LOW(Text18Message41), HIGH(Text18Message41)
    db LOW(Text18Message42), HIGH(Text18Message42)
    db LOW(Text18Message43), HIGH(Text18Message43)
    db LOW(Text18Message44), HIGH(Text18Message44)
    db LOW(Text18Message45), HIGH(Text18Message45)
    db LOW(Text18Message46), HIGH(Text18Message46)
    db LOW(Text18Message47), HIGH(Text18Message47)
    db LOW(Text18Message48), HIGH(Text18Message48)
    db LOW(Text18Message49), HIGH(Text18Message49)
    db LOW(Text18Message4A), HIGH(Text18Message4A)
    db LOW(Text18Message4A), HIGH(Text18Message4A)
    db LOW(Text18Message4A), HIGH(Text18Message4A)
    db LOW(Text18Message4A), HIGH(Text18Message4A)
    db LOW(Text18Message4A), HIGH(Text18Message4A)
    db LOW(Text18Message4F), HIGH(Text18Message4F)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message51), HIGH(Text18Message51)
    db LOW(Text18Message52), HIGH(Text18Message52)
    db LOW(Text18Message53), HIGH(Text18Message53)
    db LOW(Text18Message54), HIGH(Text18Message54)
    db LOW(Text18Message55), HIGH(Text18Message55)
    db LOW(Text18Message56), HIGH(Text18Message56)
    db LOW(Text18Message57), HIGH(Text18Message57)
    db LOW(Text18Message58), HIGH(Text18Message58)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
    db LOW(Text18Message59), HIGH(Text18Message59)
; THE [OBJECT_WRAM:37C5] / BROKE.[END]
Text18Message00:
    INCBIN "../../res/text/US/banks/18.bin", $100, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $107, $8
; THE [OBJECT_WRAM:37C5] / IS BROKEN.[END]
Text18Message01:
    INCBIN "../../res/text/US/banks/18.bin", $10f, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $116, $c
; YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
Text18Message02:
    INCBIN "../../res/text/US/banks/18.bin", $122, $c
jr_018_412e:
    INCBIN "../../res/text/US/banks/18.bin", $12e, $2
    db LOW(wTextName0), HIGH(wTextName0)
jr_018_4132:
    INCBIN "../../res/text/US/banks/18.bin", $132, $2
; YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
Text18Message03:
    INCBIN "../../res/text/US/banks/18.bin", $134, $d
jr_018_4141:
    INCBIN "../../res/text/US/banks/18.bin", $141, $2
    db LOW(wTextName0)
jr_018_4144:
    db HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $145, $2
; YOU HURT SOME / PEOPLE WITH THE / [OBJECT_WRAM:37C5]![END]
Text18Message04:
    INCBIN "../../res/text/US/banks/18.bin", $147, $c
jr_018_4153:
    INCBIN "../../res/text/US/banks/18.bin", $153, $4
jr_018_4157:
    INCBIN "../../res/text/US/banks/18.bin", $157, $f
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $168, $2
; AT FIRST THE WOMANIS STARTLED, BUT / SHE QUICKLY SMILESWHEN SHE SEES THE / [OBJECT_WRAM:37C5] YOU / GAVE HER....
Text18Message05:
    INCBIN "../../res/text/US/banks/18.bin", $16a, $48
    db LOW(wTextName0)
jr_018_41b3:
    db HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $1b4, $11
jr_018_41c5:
    INCBIN "../../res/text/US/banks/18.bin", $1c5, $15
jr_018_41da:
    INCBIN "../../res/text/US/banks/18.bin", $1da, $32
; THE WOMAN SMILES / DISARMINGLY AND / GIVES THE / [OBJECT_WRAM:37C5] BACK.[PAGE] / "YOU CAN'T / EXCHANGE THIS ...
Text18Message06:
    INCBIN "../../res/text/US/banks/18.bin", $20c, $b
jr_018_4217:
    INCBIN "../../res/text/US/banks/18.bin", $217, $14
jr_018_422b:
    INCBIN "../../res/text/US/banks/18.bin", $22b, $d
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $23a, $9
jr_018_4243:
    INCBIN "../../res/text/US/banks/18.bin", $243, $1a
jr_018_425d:
    INCBIN "../../res/text/US/banks/18.bin", $25d, $11
; IT'S A ROUND GREY / BUTTON.[PAGE] / YOU CAN GO TO [NUM8_WRAM:87C5]F / IF YOU PRESS THIS.[END]
Text18Message07:
    INCBIN "../../res/text/US/banks/18.bin", $26e, $29
    db LOW(wScriptValue0)
jr_018_4298:
    db HIGH(wScriptValue0)
    INCBIN "../../res/text/US/banks/18.bin", $299, $15
jr_018_42ae:
; THE SIGN SAYS / "PLATFORM [NUM8_WRAM:87C5]."[END]
Text18Message08:
    INCBIN "../../res/text/US/banks/18.bin", $2ae, $19
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/US/banks/18.bin", $2c9, $3
; THIS GOES OUT ONTOPLATFORM [NUM8_WRAM:87C5].[END]
Text18Message09:
    INCBIN "../../res/text/US/banks/18.bin", $2cc, $1
jr_018_42cd:
    INCBIN "../../res/text/US/banks/18.bin", $2cd, $1b
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/US/banks/18.bin", $2ea, $2
; A SIGN READING / "PLATFORM [NUM8_WRAM:87C5]" / HANGS FROM THE / CEILING.[END]
Text18Message0A:
    INCBIN "../../res/text/US/banks/18.bin", $2ec, $1a
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/US/banks/18.bin", $308, $3
jr_018_430b:
    INCBIN "../../res/text/US/banks/18.bin", $30b, $17
; "THE DESTINATION / OF THIS TRAIN IS / [OBJECT_WRAM:37C5].[PAGE] / THAT WILL BE [NUM8_WRAM:87C5] / DOLLARS FOR...
Text18Message0B:
    INCBIN "../../res/text/US/banks/18.bin", $322, $23
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $347, $10
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/US/banks/18.bin", $359, $c
jr_018_4365:
    INCBIN "../../res/text/US/banks/18.bin", $365, $25
jr_018_438a:
    INCBIN "../../res/text/US/banks/18.bin", $38a, $4
jr_018_438e:
    INCBIN "../../res/text/US/banks/18.bin", $38e, $c
jr_018_439a:
    INCBIN "../../res/text/US/banks/18.bin", $39a, $12
; AS SOON AS YOU TRYTO ATTACK THE / CONDUCTOR, HE / TAKES THE / [OBJECT_WRAM:37C5] FROM / YOUR HAND WITH / SURP...
Text18Message0C:
    INCBIN "../../res/text/US/banks/18.bin", $3ac, $3
jr_018_43af:
    INCBIN "../../res/text/US/banks/18.bin", $3af, $18
jr_018_43c7:
    INCBIN "../../res/text/US/banks/18.bin", $3c7, $a
jr_018_43d1:
    INCBIN "../../res/text/US/banks/18.bin", $3d1, $14
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $3e7, $16
jr_018_43fd:
    INCBIN "../../res/text/US/banks/18.bin", $3fd, $2f
jr_018_442c:
    INCBIN "../../res/text/US/banks/18.bin", $42c, $e
; THE TRAIN ARRIVED / AT [OBJECT_WRAM:37C5] / STATION.[END]
Text18Message0D:
    INCBIN "../../res/text/US/banks/18.bin", $43a, $10
jr_018_444a:
    INCBIN "../../res/text/US/banks/18.bin", $44a, $6
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $452, $a
; YOU WASTED THE / [OBJECT_WRAM:37C5].[PAGE] / A WAVE OF GUILT / OVERWHELMS YOU...[PAGE] / A MAN IN YOUR LINEOF...
Text18Message0E:
    INCBIN "../../res/text/US/banks/18.bin", $45c, $10
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $46e, $2d
jr_018_449b:
    INCBIN "../../res/text/US/banks/18.bin", $49b, $13
jr_018_44ae:
    INCBIN "../../res/text/US/banks/18.bin", $4ae, $2
jr_018_44b0:
    INCBIN "../../res/text/US/banks/18.bin", $4b0, $29
; YOU PLACE THE / [OBJECT_WRAM:37C5] IN / THE DESK DRAWER.[END]
Text18Message0F:
    INCBIN "../../res/text/US/banks/18.bin", $4d9, $f
    db LOW(wTextName0)
jr_018_44e9:
    db HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $4ea, $15
; JUST LIKE IN ONE / OF THEM MOVIES, / YOU FLASH THE / LIGHT IN THE / [OBJECT_WRAM:37C5]'S / FACE.[PAGE] / BUT ...
Text18Message10:
    INCBIN "../../res/text/US/banks/18.bin", $4ff, $3d
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $53e, $33
; IN ORDER TO PUT ONTHE [OBJECT_WRAM:37C5], / YOU NEED TO / TAKE OFF THE / [OBJECT_WRAM:38C5].[END]
Text18Message11:
    INCBIN "../../res/text/US/banks/18.bin", $571, $17
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $58a, $6
jr_018_4590:
    INCBIN "../../res/text/US/banks/18.bin", $590, $c
jr_018_459c:
    INCBIN "../../res/text/US/banks/18.bin", $59c, $a
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/US/banks/18.bin", $5a8, $2
; YOU TAKE OFF / THE [OBJECT_WRAM:37C5].[END]
Text18Message12:
    INCBIN "../../res/text/US/banks/18.bin", $5aa, $10
jr_018_45ba:
    INCBIN "../../res/text/US/banks/18.bin", $5ba, $2
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $5be, $2
; IT'S A FAUCET / WITH [OBJECT_WRAM:37C5] / TRIMMING.[END]
Text18Message13:
    INCBIN "../../res/text/US/banks/18.bin", $5c0, $9
jr_018_45c9:
    INCBIN "../../res/text/US/banks/18.bin", $5c9, $b
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $5d6, $9
jr_018_45df:
    INCBIN "../../res/text/US/banks/18.bin", $5df, $2
; YOU CUT YOURSELF / WITH THE / [OBJECT_WRAM:37C5].[END]
Text18Message14:
    INCBIN "../../res/text/US/banks/18.bin", $5e1, $10
jr_018_45f1:
    INCBIN "../../res/text/US/banks/18.bin", $5f1, $8
jr_018_45f9:
    INCBIN "../../res/text/US/banks/18.bin", $5f9, $3
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $5fe, $2
jr_018_4600:
; A BULLET RICOCHETSOFF THE / [OBJECT_WRAM:37C5].[PAGE] / WOAH! IF YOU / HADN'T OF DUCKED, / IT WOULD HAVE HIT ...
Text18Message15:
    INCBIN "../../res/text/US/banks/18.bin", $600, $1b
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $61d, $2
jr_018_461f:
    INCBIN "../../res/text/US/banks/18.bin", $61f, $19
jr_018_4638:
    INCBIN "../../res/text/US/banks/18.bin", $638, $3
jr_018_463b:
    INCBIN "../../res/text/US/banks/18.bin", $63b, $1a
; YOU PUT THE / [OBJECT_WRAM:37C5] INTO / THE WASHER.[END]
Text18Message16:
    INCBIN "../../res/text/US/banks/18.bin", $655, $b
jr_018_4660:
    INCBIN "../../res/text/US/banks/18.bin", $660, $2
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $664, $1
jr_018_4665:
    INCBIN "../../res/text/US/banks/18.bin", $665, $11
; IT'S CRUEL TO / THROW A DART AT / THE [OBJECT_WRAM:37C5].[END]
Text18Message17:
    INCBIN "../../res/text/US/banks/18.bin", $676, $23
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $69b, $2
; THE PLATE BEARS / A NUMBER, "[NUM8_WRAM:87C5]."[END]
Text18Message18:
    INCBIN "../../res/text/US/banks/18.bin", $69d, $1c
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/US/banks/18.bin", $6bb, $3
; THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
Text18Message19:
    INCBIN "../../res/text/US/banks/18.bin", $6be, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $6c5, $a
; THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
Text18Message1A:
    INCBIN "../../res/text/US/banks/18.bin", $6cf, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $6d6, $c
; THE [OBJECT_WRAM:37C5] / IS BROKEN.[END]
Text18Message1B:
    INCBIN "../../res/text/US/banks/18.bin", $6e2, $1
jr_018_46e3:
    INCBIN "../../res/text/US/banks/18.bin", $6e3, $4
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $6e9, $c
; YOU TAKE THE / [OBJECT_WRAM:37C5].[END]
Text18Message1C:
    INCBIN "../../res/text/US/banks/18.bin", $6f5, $c
jr_018_4701:
    INCBIN "../../res/text/US/banks/18.bin", $701, $2
    db LOW(wTextName0), HIGH(wTextName0)
jr_018_4705:
    INCBIN "../../res/text/US/banks/18.bin", $705, $2
; SWISH![PAGE] / YOUR REACH ISN'T / LONG ENOUGH TO HITTHE [OBJECT_WRAM:37C5], / BUT YOU SURE DID / UPSET THE / ...
Text18Message1D:
    INCBIN "../../res/text/US/banks/18.bin", $707, $d
jr_018_4714:
    INCBIN "../../res/text/US/banks/18.bin", $714, $a
jr_018_471e:
    INCBIN "../../res/text/US/banks/18.bin", $71e, $8
jr_018_4726:
    INCBIN "../../res/text/US/banks/18.bin", $726, $10
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $738, $16
jr_018_474e:
    INCBIN "../../res/text/US/banks/18.bin", $74e, $8
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $758, $2
; [OBJECT_WRAM:37C5] / CALLED LOUDLY FOR / THE BODYGUARD.[END]
Text18Message1E:
    INCBIN "../../res/text/US/banks/18.bin", $75a, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $75d, $1c
jr_018_4779:
    INCBIN "../../res/text/US/banks/18.bin", $779, $6
jr_018_477f:
; YOU PRESS THE / BUTTON FOR [NUM8_WRAM:87C5]F.[END]
Text18Message1F:
    INCBIN "../../res/text/US/banks/18.bin", $77f, $1a
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/US/banks/18.bin", $79b, $3
; WITH A JOLT, YOU / ARRIVE AT [NUM8_WRAM:87C5]F.[END]
Text18Message20:
    INCBIN "../../res/text/US/banks/18.bin", $79e, $1c
    db LOW(wScriptValue0)
jr_018_47bb:
    db HIGH(wScriptValue0)
    INCBIN "../../res/text/US/banks/18.bin", $7bc, $1
jr_018_47bd:
    INCBIN "../../res/text/US/banks/18.bin", $7bd, $2
; YOU CAN'T DO THAT / UNLESS YOU OPEN / THE [OBJECT_WRAM:37C5].[END]
Text18Message21:
    INCBIN "../../res/text/US/banks/18.bin", $7bf, $10
jr_018_47cf:
    INCBIN "../../res/text/US/banks/18.bin", $7cf, $f
jr_018_47de:
    INCBIN "../../res/text/US/banks/18.bin", $7de, $8
    db LOW(wTextName0), HIGH(wTextName0)
jr_018_47e8:
    INCBIN "../../res/text/US/banks/18.bin", $7e8, $2
; THE [OBJECT_WRAM:37C5] / OPENS.[END]
Text18Message22:
    INCBIN "../../res/text/US/banks/18.bin", $7ea, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $7f1, $8
; THE [OBJECT_WRAM:37C5] / CLOSES.[END]
Text18Message23:
    INCBIN "../../res/text/US/banks/18.bin", $7f9, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $800, $9
jr_018_4809:
; YOU TRY TO STAB / THE DRIVER WITH / THE [OBJECT_WRAM:37C5].[PAGE] / THE BULLET-PROOF / GLASS STOPS YOUR / ATT...
Text18Message24:
    INCBIN "../../res/text/US/banks/18.bin", $809, $1f
jr_018_4828:
    INCBIN "../../res/text/US/banks/18.bin", $828, $6
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $830, $1e
jr_018_484e:
    INCBIN "../../res/text/US/banks/18.bin", $84e, $11
jr_018_485f:
    INCBIN "../../res/text/US/banks/18.bin", $85f, $20
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $881, $2
; YOU OPEN THE / [OBJECT_WRAM:37C5]'S / POCKET.[END]
Text18Message25:
    INCBIN "../../res/text/US/banks/18.bin", $883, $e
    db LOW(wTextName0), HIGH(wTextName0)
jr_018_4893:
    INCBIN "../../res/text/US/banks/18.bin", $893, $b
; YOU CLOSE THE / [OBJECT_WRAM:37C5]'S / POCKET.[END]
Text18Message26:
    INCBIN "../../res/text/US/banks/18.bin", $89e, $4
jr_018_48a2:
    INCBIN "../../res/text/US/banks/18.bin", $8a2, $b
    db LOW(wTextName0)
jr_018_48ae:
    db HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $8af, $b
; THE [OBJECT_WRAM:37C5]'S / POCKET IS OPEN.[END]
Text18Message27:
    INCBIN "../../res/text/US/banks/18.bin", $8ba, $3
jr_018_48bd:
    INCBIN "../../res/text/US/banks/18.bin", $8bd, $2
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $8c1, $13
; THE [OBJECT_WRAM:37C5]'SPOCKET IS CLOSED.[END]
Text18Message28:
    INCBIN "../../res/text/US/banks/18.bin", $8d4, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $8db, $14
; THE [OBJECT_WRAM:37C5] / IS SURPRISED AS / YOU BEGIN TAKING / OFF YOUR CLOTHES.[PAGE] / WITH A NERVOUS / SHOU...
Text18Message29:
    INCBIN "../../res/text/US/banks/18.bin", $8ef, $4
jr_018_48f3:
    INCBIN "../../res/text/US/banks/18.bin", $8f3, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $8f6, $18
jr_018_490e:
    INCBIN "../../res/text/US/banks/18.bin", $90e, $9
jr_018_4917:
    INCBIN "../../res/text/US/banks/18.bin", $917, $15
jr_018_492c:
    INCBIN "../../res/text/US/banks/18.bin", $92c, $19
    db LOW(wTextName0)
jr_018_4946:
    db HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $947, $11
; THE [OBJECT_WRAM:37C5] / APPEARS TO BE / SHOCKED BECAUSE / YOU AREN'T WEARINGANYTHING.[PAGE] / WITH A NERVOUS...
Text18Message2A:
    INCBIN "../../res/text/US/banks/18.bin", $958, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $95f, $48
jr_018_49a7:
    INCBIN "../../res/text/US/banks/18.bin", $9a7, $c
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $9b5, $1
jr_018_49b6:
    INCBIN "../../res/text/US/banks/18.bin", $9b6, $16
; IT CONTINUES TO / [NUM8_WRAM:87C5] FLOOR.[END]
Text18Message2B:
    INCBIN "../../res/text/US/banks/18.bin", $9cc, $11
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/US/banks/18.bin", $9df, $8
; YOU THROW OUT THE / [OBJECT_WRAM:37C5].[END]
Text18Message2C:
    INCBIN "../../res/text/US/banks/18.bin", $9e7, $3
jr_018_49ea:
    INCBIN "../../res/text/US/banks/18.bin", $9ea, $1
jr_018_49eb:
    INCBIN "../../res/text/US/banks/18.bin", $9eb, $c
jr_018_49f7:
    INCBIN "../../res/text/US/banks/18.bin", $9f7, $3
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $9fc, $2
; YOU THROW OUT THE / [OBJECT_WRAM:37C5] / BECAUSE IT SEEMS / USELESS.[END]
Text18Message2D:
    INCBIN "../../res/text/US/banks/18.bin", $9fe, $10
jr_018_4a0e:
    INCBIN "../../res/text/US/banks/18.bin", $a0e, $3
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $a13, $1b
; THE CONTENTS / DIFFER SLIGHTLY / FROM THE LEDGER / FOUND AT JOE'S.[END]
Text18Message2E:
    INCBIN "../../res/text/US/banks/18.bin", $a2e, $3a
jr_018_4a68:
    INCBIN "../../res/text/US/banks/18.bin", $a68, $3
; THE PAYMENT TO / COURIER #0 IS NOT / RECORDED IN THIS / LEDGER.[END]
Text18Message2F:
    INCBIN "../../res/text/US/banks/18.bin", $a6b, $34
jr_018_4a9f:
    INCBIN "../../res/text/US/banks/18.bin", $a9f, $6
; BUT COMPARED / WITH THE OTHER / LEDGER...[END]
Text18Message30:
    INCBIN "../../res/text/US/banks/18.bin", $aa5, $26
; THERE IS A #0 / ENTRY IN THIS / BOOK.[END]
Text18Message31:
    INCBIN "../../res/text/US/banks/18.bin", $acb, $1f
jr_018_4aea:
    INCBIN "../../res/text/US/banks/18.bin", $aea, $3
; THE CONTENTS ARE / THE SAME AS THE / LEDGER IN THE / OTHER OFFICE.[END]
Text18Message32:
    INCBIN "../../res/text/US/banks/18.bin", $aed, $9
jr_018_4af6:
    INCBIN "../../res/text/US/banks/18.bin", $af6, $16
jr_018_4b0c:
    INCBIN "../../res/text/US/banks/18.bin", $b0c, $1e
; "I FINALLY FOUND / YOU![PAGE] / SOMEONE LEFT A / CIGAR WRAPPER IN / DA SECRET OFFICE / TA TRY AND START AMOB ...
Text18Message33:
    INCBIN "../../res/text/US/banks/18.bin", $b2a, $1f
jr_018_4b49:
    INCBIN "../../res/text/US/banks/18.bin", $b49, $2
jr_018_4b4b:
    INCBIN "../../res/text/US/banks/18.bin", $b4b, $4
jr_018_4b4f:
    INCBIN "../../res/text/US/banks/18.bin", $b4f, $5b
jr_018_4baa:
    INCBIN "../../res/text/US/banks/18.bin", $baa, $3c
jr_018_4be6:
    INCBIN "../../res/text/US/banks/18.bin", $be6, $5e
jr_018_4c44:
    INCBIN "../../res/text/US/banks/18.bin", $c44, $4
jr_018_4c48:
    INCBIN "../../res/text/US/banks/18.bin", $c48, $36
jr_018_4c7e:
    INCBIN "../../res/text/US/banks/18.bin", $c7e, $10
jr_018_4c8e:
    INCBIN "../../res/text/US/banks/18.bin", $c8e, $31
; INTERESTING...[PAGE] / THE [OBJECT_WRAM:37C5] / LEDGER MUST HAVE / BEEN KEPT TO / DECEIVE MALONE.[END]
Text18Message34:
    INCBIN "../../res/text/US/banks/18.bin", $cbf, $14
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $cd5, $15
jr_018_4cea:
    INCBIN "../../res/text/US/banks/18.bin", $cea, $2
jr_018_4cec:
    INCBIN "../../res/text/US/banks/18.bin", $cec, $18
; "A CHIP IS $5. / HOW MANY CHIPS / WOULD YOU LIKE, / SIR?" /    CHIPS:[NUM8_WRAM:C3C5] /  / USE LEFT/RIGHT TO ...
Text18Message35:
    INCBIN "../../res/text/US/banks/18.bin", $d04, $2c
jr_018_4d30:
    INCBIN "../../res/text/US/banks/18.bin", $d30, $6
jr_018_4d36:
    INCBIN "../../res/text/US/banks/18.bin", $d36, $2
jr_018_4d38:
    INCBIN "../../res/text/US/banks/18.bin", $d38, $a
    db LOW(wChipCount), HIGH(wChipCount)
    INCBIN "../../res/text/US/banks/18.bin", $d44, $23
; "HOW MANY DO YOU / WANT TO CASH IN, / SIR?" /  /    CHIPS:[NUM8_WRAM:C3C5] /  / USE LEFT/RIGHT TO / SELECT AM...
Text18Message36:
    INCBIN "../../res/text/US/banks/18.bin", $d67, $1d
jr_018_4d84:
    INCBIN "../../res/text/US/banks/18.bin", $d84, $16
    db LOW(wChipCount), HIGH(wChipCount)
    INCBIN "../../res/text/US/banks/18.bin", $d9c, $23
; "THAT WILL BE A / TOTAL OF [NUM8_WRAM:A7C8] / DOLLARS.[PAGE] / THANK YOU VERY / MUCH AND GOOD / LUCK," SHE / ...
Text18Message37:
    INCBIN "../../res/text/US/banks/18.bin", $dbf, $1a
    db LOW(wArg0), HIGH(wArg0)
    INCBIN "../../res/text/US/banks/18.bin", $ddb, $20
jr_018_4dfb:
    INCBIN "../../res/text/US/banks/18.bin", $dfb, $23
jr_018_4e1e:
    INCBIN "../../res/text/US/banks/18.bin", $e1e, $8
; "WHAT DO YOU / WANT?" /       BATTERIES /       BULLETS /       NOTHING[WAIT_END]
Text18Message38:
    INCBIN "../../res/text/US/banks/18.bin", $e26, $19
jr_018_4e3f:
    INCBIN "../../res/text/US/banks/18.bin", $e3f, $6
jr_018_4e45:
    INCBIN "../../res/text/US/banks/18.bin", $e45, $1a
jr_018_4e5f:
    INCBIN "../../res/text/US/banks/18.bin", $e5f, $7
; "THANK YOU![PAGE] / DO YOU WANT / ANYTHING ELSE?" /  /       YES /       NO[WAIT_END]
Text18Message39:
    INCBIN "../../res/text/US/banks/18.bin", $e66, $17
jr_018_4e7d:
    INCBIN "../../res/text/US/banks/18.bin", $e7d, $18
jr_018_4e95:
    INCBIN "../../res/text/US/banks/18.bin", $e95, $6
jr_018_4e9b:
    INCBIN "../../res/text/US/banks/18.bin", $e9b, $7
; THE [OBJECT_WRAM:37C5] / DOES NOT OPEN.[END]
Text18Message3A:
    INCBIN "../../res/text/US/banks/18.bin", $ea2, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $ea9, $a
jr_018_4eb3:
    INCBIN "../../res/text/US/banks/18.bin", $eb3, $6
; WHUMP![PAGE] / YOU FALL HARD AND / HIT YOUR HEAD / AGAINST THE FLOOR.[PAGE] / THE MEATY THUD OF / YOUR HEAD /...
Text18Message3B:
    INCBIN "../../res/text/US/banks/18.bin", $eb9, $17
jr_018_4ed0:
    INCBIN "../../res/text/US/banks/18.bin", $ed0, $8
jr_018_4ed8:
    INCBIN "../../res/text/US/banks/18.bin", $ed8, $e
jr_018_4ee6:
    INCBIN "../../res/text/US/banks/18.bin", $ee6, $2f
jr_018_4f15:
    INCBIN "../../res/text/US/banks/18.bin", $f15, $2d
; YOU ASK [OBJECT_WRAM:37C5] / TO LET YOU PLAY / BLACKJACK FOR / FREE.[PAGE] / HE SAYS,[END]
Text18Message3C:
    INCBIN "../../res/text/US/banks/18.bin", $f42, $9
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $f4d, $5
jr_018_4f52:
    INCBIN "../../res/text/US/banks/18.bin", $f52, $13
jr_018_4f65:
    INCBIN "../../res/text/US/banks/18.bin", $f65, $16
jr_018_4f7b:
; "I CAN'T DO THAT! / BUT I ONCE HEARD / OF A MAN WHO GOT / RICH WITH MONEY HEFOUND IN THE / DESERT."[END]
Text18Message3D:
    INCBIN "../../res/text/US/banks/18.bin", $f7b, $10
jr_018_4f8b:
    INCBIN "../../res/text/US/banks/18.bin", $f8b, $4c
; "IF THE BOSS / DISCOVERS WHAT I'MDOING, I'M TOAST![PAGE] / WHY DON'T YOU GO / OUT INTO THE / DESERT?[PAGE] / ...
Text18Message3E:
    INCBIN "../../res/text/US/banks/18.bin", $fd7, $2
jr_018_4fd9:
    INCBIN "../../res/text/US/banks/18.bin", $fd9, $49
jr_018_5022:
    INCBIN "../../res/text/US/banks/18.bin", $1022, $4
jr_018_5026:
    INCBIN "../../res/text/US/banks/18.bin", $1026, $45
; YOU FIND A $10 / BILL PLAYFULLY / BEING BLOWN ABOUT / BY THE WIND.[END]
Text18Message3F:
    INCBIN "../../res/text/US/banks/18.bin", $106b, $1e
jr_018_5089:
    INCBIN "../../res/text/US/banks/18.bin", $1089, $1d
jr_018_50a6:
    INCBIN "../../res/text/US/banks/18.bin", $10a6, $2
; IT SAYS / "THIS TRAIN IS / GOING TO / [OBJECT_WRAM:37C5]."[END]
Text18Message40:
    INCBIN "../../res/text/US/banks/18.bin", $10a8, $19
jr_018_50c1:
    INCBIN "../../res/text/US/banks/18.bin", $10c1, $8
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $10cb, $3
; THE CLERK / EXCLAIMS, "THESE / BELONG TO THE / DECEASED![PAGE] / NO ONE BUT THE / POLICE MAY EXAMINETHEM!"[END]
Text18Message41:
    INCBIN "../../res/text/US/banks/18.bin", $10ce, $25
jr_018_50f3:
    INCBIN "../../res/text/US/banks/18.bin", $10f3, $36
; MAYBE YOU / SHOULD'VE DONE / SOMETHING ELSE![END]
Text18Message42:
    INCBIN "../../res/text/US/banks/18.bin", $1129, $5
jr_018_512e:
    INCBIN "../../res/text/US/banks/18.bin", $112e, $7
jr_018_5135:
    INCBIN "../../res/text/US/banks/18.bin", $1135, $1d
; UNFORTUNATELY, YOUDIDN'T RUN FAR / ENOUGH AWAY.[END]
Text18Message43:
    INCBIN "../../res/text/US/banks/18.bin", $1152, $1f
jr_018_5171:
    INCBIN "../../res/text/US/banks/18.bin", $1171, $f
; YOU AREN'T WEARINGANYTHING ON / [OBJECT_WRAM:37C5].[END]
Text18Message44:
    INCBIN "../../res/text/US/banks/18.bin", $1180, $5
jr_018_5185:
    INCBIN "../../res/text/US/banks/18.bin", $1185, $1a
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $11a1, $2
; YOU ARE WEARING / THE [OBJECT_WRAM:37C5].[END]
Text18Message45:
    INCBIN "../../res/text/US/banks/18.bin", $11a3, $10
jr_018_51b3:
    INCBIN "../../res/text/US/banks/18.bin", $11b3, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $11ba, $2
; "WHEN YOU WANT TO / TRY YOUR LUCK, / YOU GOTTA USE / CHIPS![PAGE] / YOU CAN BUY CHIPS / AT THE CASHIER / NEXT...
Text18Message46:
    INCBIN "../../res/text/US/banks/18.bin", $11bc, $6
jr_018_51c2:
    INCBIN "../../res/text/US/banks/18.bin", $11c2, $10
jr_018_51d2:
    INCBIN "../../res/text/US/banks/18.bin", $11d2, $9
jr_018_51db:
    INCBIN "../../res/text/US/banks/18.bin", $11db, $12
jr_018_51ed:
    INCBIN "../../res/text/US/banks/18.bin", $11ed, $32
; HM, MAYBE THAT / FLASHLIGHT WILL / COME IN HANDY![END]
Text18Message47:
    INCBIN "../../res/text/US/banks/18.bin", $121f, $9
jr_018_5228:
    INCBIN "../../res/text/US/banks/18.bin", $1228, $25
; [OBJECT_WRAM:37C5] ASKS,[PAGE] / "DO YOU KNOW THE /  RULES OF /  BLACKJACK?" /        YES /        NO[WAIT_END]
Text18Message48:
    INCBIN "../../res/text/US/banks/18.bin", $124d, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/18.bin", $1250, $23
jr_018_5273:
    INCBIN "../../res/text/US/banks/18.bin", $1273, $19
jr_018_528c:
    INCBIN "../../res/text/US/banks/18.bin", $128c, $8
; A SET OF TIRE / TRACKS GOES / THROUGH THIS PART / OF THE DESERT.[END]
Text18Message49:
    INCBIN "../../res/text/US/banks/18.bin", $1294, $3b
; RUDY GLANCES / NERVOUSLY AROUND / AND SAYS, "I CAN'TKEEP THIS UP ACE, / THE BOSS IS / WATCHING!"[END]
Text18Message4A:
    INCBIN "../../res/text/US/banks/18.bin", $12cf, $1f
jr_018_52ee:
    INCBIN "../../res/text/US/banks/18.bin", $12ee, $12
jr_018_5300:
    INCBIN "../../res/text/US/banks/18.bin", $1300, $28
; YOU CAN'T GET / INSIDE BECAUSE THEWINDOW IS BOARDED / UP.[END]
Text18Message4F:
    INCBIN "../../res/text/US/banks/18.bin", $1328, $36
; THE CONTENTS / DIFFER SLIGHTLY / FROM SIEGEL'S / DIARY.[END]
Text18Message50:
    INCBIN "../../res/text/US/banks/18.bin", $135e, $32
; COMPARED WITH THE / LEDGER IN THE / SECRET OFFICE...[END]
Text18Message51:
    INCBIN "../../res/text/US/banks/18.bin", $1390, $8
jr_018_5398:
    INCBIN "../../res/text/US/banks/18.bin", $1398, $17
jr_018_53af:
    INCBIN "../../res/text/US/banks/18.bin", $13af, $12
; THERE IS NO #0 IN / THIS LEDGER.[END]
Text18Message52:
    INCBIN "../../res/text/US/banks/18.bin", $13c1, $1f
jr_018_53e0:
; THERE ARE "NO.0" / PAYMENTS IN THIS / LEDGER.[END]
Text18Message53:
    INCBIN "../../res/text/US/banks/18.bin", $13e0, $a
jr_018_53ea:
    INCBIN "../../res/text/US/banks/18.bin", $13ea, $20
; THE CONTENTS ARE / THE SAME AS / SIEGEL'S DIARY.[END]
Text18Message54:
    INCBIN "../../res/text/US/banks/18.bin", $140a, $c
jr_018_5416:
    INCBIN "../../res/text/US/banks/18.bin", $1416, $21
; THE PAYMENTS FOR / "NO.0" ARE / RECORDED IN / THE DIARY.[END]
Text18Message55:
    INCBIN "../../res/text/US/banks/18.bin", $1437, $1f
jr_018_5456:
    INCBIN "../../res/text/US/banks/18.bin", $1456, $14
; THIS IS THE STREETIN FRONT OF THE / HOTEL.[END]
Text18Message56:
    INCBIN "../../res/text/US/banks/18.bin", $146a, $a
jr_018_5474:
    INCBIN "../../res/text/US/banks/18.bin", $1474, $15
jr_018_5489:
    INCBIN "../../res/text/US/banks/18.bin", $1489, $a
; THIS IS THE STREETIN FRONT OF THE / TRAIN STATION.[END]
Text18Message57:
    INCBIN "../../res/text/US/banks/18.bin", $1493, $1f
jr_018_54b2:
    INCBIN "../../res/text/US/banks/18.bin", $14b2, $12
; THIS IS THE STREETIN FRONT OF THE / CLEANERS.[END]
Text18Message58:
    INCBIN "../../res/text/US/banks/18.bin", $14c4, $1f
jr_018_54e3:
    INCBIN "../../res/text/US/banks/18.bin", $14e3, $d
; Fixed-width object-name records.
C2ObjectNames:
; [END]
Text18Message59:
    INCBIN "../../res/text/US/banks/18.bin", $14f0, $7f
jr_018_556f:
    INCBIN "../../res/text/US/banks/18.bin", $156f, $208
jr_018_5777:
    INCBIN "../../res/text/US/banks/18.bin", $1777, $5a
jr_018_57d1:
    INCBIN "../../res/text/US/banks/18.bin", $17d1, $27
jr_018_57f8:
    INCBIN "../../res/text/US/banks/18.bin", $17f8, $51
jr_018_5849:
    INCBIN "../../res/text/US/banks/18.bin", $1849, $f2
jr_018_593b:
    INCBIN "../../res/text/US/banks/18.bin", $193b, $669
jr_018_5fa4:
    INCBIN "../../res/text/US/banks/18.bin", $1fa4, $1c
jr_018_5fc0:
    INCBIN "../../res/text/US/banks/18.bin", $1fc0, $5
jr_018_5fc5:
    INCBIN "../../res/text/US/banks/18.bin", $1fc5, $36e
jr_018_6333:
    INCBIN "../../res/text/US/banks/18.bin", $2333, $1ccd
