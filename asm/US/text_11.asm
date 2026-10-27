; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text11Msgs0:
    db LOW(Text11Message00), HIGH(Text11Message00)
    db LOW(Text11Message01), HIGH(Text11Message01)
    db LOW(Text11Message02), HIGH(Text11Message02)
    db LOW(Text11Message03), HIGH(Text11Message03)
    db LOW(Text11Message04), HIGH(Text11Message04)
    db LOW(Text11Message05), HIGH(Text11Message05)
    db LOW(Text11Message06), HIGH(Text11Message06)
    db LOW(Text11Message07), HIGH(Text11Message07)
    db LOW(Text11Message08), HIGH(Text11Message08)
    db LOW(Text11Message09), HIGH(Text11Message09)
    db LOW(Text11Message0A), HIGH(Text11Message0A)
    db LOW(Text11Message0B), HIGH(Text11Message0B)
    db LOW(Text11Message0C), HIGH(Text11Message0C)
    db LOW(Text11Message0D), HIGH(Text11Message0D)
    db LOW(Text11Message0D), HIGH(Text11Message0D)
    db LOW(Text11Message0F), HIGH(Text11Message0F)
    db LOW(Text11Message10), HIGH(Text11Message10)
    db LOW(Text11Message11), HIGH(Text11Message11)
    db LOW(Text11Message12), HIGH(Text11Message12)
    db LOW(Text11Message13), HIGH(Text11Message13)
    db LOW(Text11Message13), HIGH(Text11Message13)
    db LOW(Text11Message13), HIGH(Text11Message13)
    db LOW(Text11Message16), HIGH(Text11Message16)
    db LOW(Text11Message17), HIGH(Text11Message17)
    db LOW(Text11Message18), HIGH(Text11Message18)
    db LOW(Text11Message19), HIGH(Text11Message19)
    db LOW(Text11Message1A), HIGH(Text11Message1A)
    db LOW(Text11Message1B), HIGH(Text11Message1B)
    db LOW(Text11Message1C), HIGH(Text11Message1C)
    db LOW(Text11Message1D), HIGH(Text11Message1D)
    db LOW(Text11Message1E), HIGH(Text11Message1E)
    db LOW(Text11Message1F), HIGH(Text11Message1F)
    db LOW(Text11Message1F), HIGH(Text11Message1F)
    db LOW(Text11Message21), HIGH(Text11Message21)
    db LOW(Text11Message22), HIGH(Text11Message22)
    db LOW(Text11Message23), HIGH(Text11Message23)
    db LOW(Text11Message24), HIGH(Text11Message24)
    db LOW(Text11Message25), HIGH(Text11Message25)
    db LOW(Text11Message26), HIGH(Text11Message26)
    db LOW(Text11Message27), HIGH(Text11Message27)
    db LOW(Text11Message28), HIGH(Text11Message28)
    db LOW(Text11Message29), HIGH(Text11Message29)
    db LOW(Text11Message2A), HIGH(Text11Message2A)
    db LOW(Text11Message2B), HIGH(Text11Message2B)
    db LOW(Text11Message2C), HIGH(Text11Message2C)
    db LOW(Text11Message2D), HIGH(Text11Message2D)
    db LOW(Text11Message2E), HIGH(Text11Message2E)
    db LOW(Text11Message2F), HIGH(Text11Message2F)
    db LOW(Text11Message30), HIGH(Text11Message30)
    db LOW(Text11Message31), HIGH(Text11Message31)
    db LOW(Text11Message32), HIGH(Text11Message32)
    db LOW(Text11Message33), HIGH(Text11Message33)
    db LOW(Text11Message34), HIGH(Text11Message34)
    db LOW(Text11Message35), HIGH(Text11Message35)
    db LOW(Text11Message36), HIGH(Text11Message36)
    db LOW(Text11Message37), HIGH(Text11Message37)
    db LOW(Text11Message38), HIGH(Text11Message38)
    db LOW(Text11Message39), HIGH(Text11Message39)
    db LOW(Text11Message3A), HIGH(Text11Message3A)
    db LOW(Text11Message3B), HIGH(Text11Message3B)
    db LOW(Text11Message3C), HIGH(Text11Message3C)
    db LOW(Text11Message3D), HIGH(Text11Message3D)
    db LOW(Text11Message3E), HIGH(Text11Message3E)
    db LOW(Text11Message3F), HIGH(Text11Message3F)
; Sixty-four message pointers for one text group.
Text11Msgs1:
    db LOW(Text11Message40), HIGH(Text11Message40)
    db LOW(Text11Message41), HIGH(Text11Message41)
    db LOW(Text11Message42), HIGH(Text11Message42)
    db LOW(Text11Message43), HIGH(Text11Message43)
    db LOW(Text11Message44), HIGH(Text11Message44)
    db LOW(Text11Message45), HIGH(Text11Message45)
    db LOW(Text11Message46), HIGH(Text11Message46)
    db LOW(Text11Message47), HIGH(Text11Message47)
    db LOW(Text11Message48), HIGH(Text11Message48)
    db LOW(Text11Message49), HIGH(Text11Message49)
    db LOW(Text11Message4A), HIGH(Text11Message4A)
    db LOW(Text11Message4B), HIGH(Text11Message4B)
    db LOW(Text11Message4C), HIGH(Text11Message4C)
    db LOW(Text11Message4D), HIGH(Text11Message4D)
    db LOW(Text11Message4E), HIGH(Text11Message4E)
    db LOW(Text11Message4F), HIGH(Text11Message4F)
    db LOW(Text11Message50), HIGH(Text11Message50)
    db LOW(Text11Message51), HIGH(Text11Message51)
    db LOW(Text11Message52), HIGH(Text11Message52)
    db LOW(Text11Message53), HIGH(Text11Message53)
    db LOW(Text11Message54), HIGH(Text11Message54)
    db LOW(Text11Message55), HIGH(Text11Message55)
    db LOW(Text11Message56), HIGH(Text11Message56)
    db LOW(Text11Message57), HIGH(Text11Message57)
    db LOW(Text11Message58), HIGH(Text11Message58)
    db LOW(Text11Message59), HIGH(Text11Message59)
    db LOW(Text11Message5A), HIGH(Text11Message5A)
    db LOW(Text11Message5B), HIGH(Text11Message5B)
    db LOW(Text11Message5C), HIGH(Text11Message5C)
    db LOW(Text11Message5D), HIGH(Text11Message5D)
    db LOW(Text11Message5E), HIGH(Text11Message5E)
    db LOW(Text11Message5F), HIGH(Text11Message5F)
    db LOW(Text11Message60), HIGH(Text11Message60)
    db LOW(Text11Message61), HIGH(Text11Message61)
    db LOW(Text11Message62), HIGH(Text11Message62)
    db LOW(Text11Message63), HIGH(Text11Message63)
    db LOW(Text11Message64), HIGH(Text11Message64)
    db LOW(Text11Message65), HIGH(Text11Message65)
    db LOW(Text11Message66), HIGH(Text11Message66)
    db LOW(Text11Message67), HIGH(Text11Message67)
    db LOW(Text11Message68), HIGH(Text11Message68)
    db LOW(Text11Message69), HIGH(Text11Message69)
    db LOW(Text11Message6A), HIGH(Text11Message6A)
    db LOW(Text11Message6B), HIGH(Text11Message6B)
    db LOW(Text11Message6C), HIGH(Text11Message6C)
    db LOW(Text11Message6D), HIGH(Text11Message6D)
    db LOW(Text11Message6E), HIGH(Text11Message6E)
    db LOW(Text11Message6F), HIGH(Text11Message6F)
    db LOW(Text11Message70), HIGH(Text11Message70)
    db LOW(Text11Message71), HIGH(Text11Message71)
    db LOW(Text11Message72), HIGH(Text11Message72)
    db LOW(Text11Message73), HIGH(Text11Message73)
    db LOW(Text11Message74), HIGH(Text11Message74)
    db LOW(Text11Message75)
jr_011_40eb:
    db HIGH(Text11Message75)
    db LOW(Text11Message76), HIGH(Text11Message76)
    db LOW(Text11Message77), HIGH(Text11Message77)
    db LOW(Text11Message78), HIGH(Text11Message78)
    db LOW(Text11Message79), HIGH(Text11Message79)
    db LOW(Text11Message7A), HIGH(Text11Message7A)
    db LOW(Text11Message7B), HIGH(Text11Message7B)
    db LOW(Text11Message7C), HIGH(Text11Message7C)
    db LOW(Text11Message7D), HIGH(Text11Message7D)
    db LOW(Text11Message7E), HIGH(Text11Message7E)
    db LOW(Text11Message7F), HIGH(Text11Message7F)
; YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
Text11Message00:
    INCBIN "../../res/text/US/banks/11.bin", $100, $e
    db LOW(wTextName0), HIGH(wTextName0)
jr_011_4110:
    INCBIN "../../res/text/US/banks/11.bin", $110, $2
; THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
Text11Message01:
    INCBIN "../../res/text/US/banks/11.bin", $112, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $119, $a
; YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
Text11Message02:
    INCBIN "../../res/text/US/banks/11.bin", $123, $e
jr_011_4131:
    INCBIN "../../res/text/US/banks/11.bin", $131, $1
    db LOW(wTextName0)
jr_011_4133:
    db HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $134, $2
; THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
Text11Message03:
    INCBIN "../../res/text/US/banks/11.bin", $136, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $13d, $5
jr_011_4142:
    INCBIN "../../res/text/US/banks/11.bin", $142, $7
; YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
Text11Message04:
    INCBIN "../../res/text/US/banks/11.bin", $149, $c
jr_011_4155:
    INCBIN "../../res/text/US/banks/11.bin", $155, $3
    db LOW(wTextName0)
jr_011_4159:
    db HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $15a, $2
; YOU DISCARD THE / [OBJECT_WRAM:37C5].[END]
Text11Message05:
    INCBIN "../../res/text/US/banks/11.bin", $15c, $c
jr_011_4168:
    INCBIN "../../res/text/US/banks/11.bin", $168, $4
jr_011_416c:
    INCBIN "../../res/text/US/banks/11.bin", $16c, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $16f, $2
; YOU PUT / [OBJECT_WRAM:37C5] / IN THE CAPSULE.[END]
Text11Message06:
    INCBIN "../../res/text/US/banks/11.bin", $171, $9
    db LOW(wTextName0)
jr_011_417b:
    db HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $17c, $5
jr_011_4181:
    INCBIN "../../res/text/US/banks/11.bin", $181, $c
; IT IS / THE [OBJECT_WRAM:37C5] / MEDICINE VIAL.[PAGE] / IT IS EMPTY.[END]
Text11Message07:
    INCBIN "../../res/text/US/banks/11.bin", $18d, $3
jr_011_4190:
    INCBIN "../../res/text/US/banks/11.bin", $190, $8
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $19a, $1d
; IT IS / THE [OBJECT_WRAM:37C5] / MEDICINE VIAL.[END]
Text11Message08:
    INCBIN "../../res/text/US/banks/11.bin", $1b7, $b
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $1c4, $2
jr_011_41c6:
    INCBIN "../../res/text/US/banks/11.bin", $1c6, $e
; [OBJECT_WRAM:37C5] IS / IN THE CAPSULE.[END]
Text11Message09:
    INCBIN "../../res/text/US/banks/11.bin", $1d4, $1
    db LOW(wTextName0)
jr_011_41d6:
    db HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $1d7, $14
; [OBJECT_WRAM:37C5] IS / EMPTY.[END]
Text11Message0A:
    INCBIN "../../res/text/US/banks/11.bin", $1eb, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $1ee, $5
jr_011_41f3:
    INCBIN "../../res/text/US/banks/11.bin", $1f3, $6
; THIS IS PEORIA ST.A [OBJECT_WRAM:37C5] / IS WAITING.[END]
Text11Message0B:
    INCBIN "../../res/text/US/banks/11.bin", $1f9, $11
jr_011_420a:
    INCBIN "../../res/text/US/banks/11.bin", $20a, $2
jr_011_420c:
    INCBIN "../../res/text/US/banks/11.bin", $20c, $2
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $210, $d
; THE DRIVER IS IN / THE [OBJECT_WRAM:37C5].[PAGE] / HE IS WAITING / FOR PASSENGERS.[END]
Text11Message0C:
    INCBIN "../../res/text/US/banks/11.bin", $21d, $16
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $235, $20
; NOTHING HAPPENED.[PAGE] / SHE IS PROBABLY / IMMUNE TO THE / MEDICINE.[END]
Text11Message0D:
    INCBIN "../../res/text/US/banks/11.bin", $255, $2e
jr_011_4283:
    INCBIN "../../res/text/US/banks/11.bin", $283, $c
; YOU DISCARD THE / [OBJECT_WRAM:37C5]. / IT SINKS OUT OF / SIGHT![END]
Text11Message0F:
    INCBIN "../../res/text/US/banks/11.bin", $28f, $10
jr_011_429f:
    INCBIN "../../res/text/US/banks/11.bin", $29f, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $2a2, $19
; [OBJECT_WRAM:37C5] WAS / LIT BY THE / LIGHTER.[PAGE] / IT BURNED TO / ASHES.[END]
Text11Message10:
    INCBIN "../../res/text/US/banks/11.bin", $2bb, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $2be, $3
jr_011_42c1:
    INCBIN "../../res/text/US/banks/11.bin", $2c1, $2a
; THE LOCK IS BLOWN / AWAY, SO THE / [OBJECT_WRAM:37C5] IS / NOW OPEN.[END]
Text11Message11:
    INCBIN "../../res/text/US/banks/11.bin", $2eb, $1f
jr_011_430a:
    INCBIN "../../res/text/US/banks/11.bin", $30a, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $30d, $7
jr_011_4314:
    INCBIN "../../res/text/US/banks/11.bin", $314, $7
; "CLICK.....!"[PAGE] / IT IS [OBJECT_WRAM:38C5].[END]
Text11Message12:
    INCBIN "../../res/text/US/banks/11.bin", $31b, $c
jr_011_4327:
    INCBIN "../../res/text/US/banks/11.bin", $327, $9
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/US/banks/11.bin", $332, $2
jr_011_4334:
; TAKE OUT / [NUM8_WRAM:38C5] COINS.[END]
Text11Message13:
    INCBIN "../../res/text/US/banks/11.bin", $334, $a
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/US/banks/11.bin", $340, $5
jr_011_4345:
    INCBIN "../../res/text/US/banks/11.bin", $345, $3
; GET [NUM8_WRAM:38C5] BULLET.[END]
Text11Message16:
    INCBIN "../../res/text/US/banks/11.bin", $348, $5
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/US/banks/11.bin", $34f, $4
jr_011_4353:
    INCBIN "../../res/text/US/banks/11.bin", $353, $5
; YOU HAVE A TOTAL / OF [NUM8_WRAM:38C5] COINS.[END]
Text11Message17:
    INCBIN "../../res/text/US/banks/11.bin", $358, $f
jr_011_4367:
    INCBIN "../../res/text/US/banks/11.bin", $367, $1
jr_011_4368:
    INCBIN "../../res/text/US/banks/11.bin", $368, $5
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/US/banks/11.bin", $36f, $8
jr_011_4377:
; YOUR LUCK HAS / CERTAINLY CHANGED!YOU'VE HIT THE / JACKPOT![PAGE] / YOU GOT / [NUM8_WRAM:38C5] COINS.[END]
Text11Message18:
    INCBIN "../../res/text/US/banks/11.bin", $377, $8
jr_011_437f:
    INCBIN "../../res/text/US/banks/11.bin", $37f, $8
jr_011_4387:
    INCBIN "../../res/text/US/banks/11.bin", $387, $f
jr_011_4396:
    INCBIN "../../res/text/US/banks/11.bin", $396, $11
jr_011_43a7:
    INCBIN "../../res/text/US/banks/11.bin", $3a7, $2
jr_011_43a9:
    INCBIN "../../res/text/US/banks/11.bin", $3a9, $f
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/US/banks/11.bin", $3ba, $5
jr_011_43bf:
    INCBIN "../../res/text/US/banks/11.bin", $3bf, $3
; IT'S A DOSE OF / [OBJECT_WRAM:37C5].[END]
Text11Message19:
    INCBIN "../../res/text/US/banks/11.bin", $3c2, $10
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $3d4, $2
; "THANKS FOR /  THE [OBJECT_WRAM:37C5]."[END]
Text11Message1A:
    INCBIN "../../res/text/US/banks/11.bin", $3d6, $b
jr_011_43e1:
    INCBIN "../../res/text/US/banks/11.bin", $3e1, $7
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/US/banks/11.bin", $3ea, $3
; GET [OBJECT_WRAM:5CC5] BULLETS.[END]
Text11Message1B:
    INCBIN "../../res/text/US/banks/11.bin", $3ed, $5
    db LOW(wGun1Ammo), HIGH(wGun1Ammo)
    INCBIN "../../res/text/US/banks/11.bin", $3f4, $1
jr_011_43f5:
    INCBIN "../../res/text/US/banks/11.bin", $3f5, $9
; GET [OBJECT_WRAM:5DC5] BULLETS.[END]
Text11Message1C:
    INCBIN "../../res/text/US/banks/11.bin", $3fe, $5
    db LOW(wGun2Ammo), HIGH(wGun2Ammo)
    INCBIN "../../res/text/US/banks/11.bin", $405, $a
; GET [OBJECT_WRAM:5EC5] BULLETS.[END]
Text11Message1D:
    INCBIN "../../res/text/US/banks/11.bin", $40f, $3
jr_011_4412:
    INCBIN "../../res/text/US/banks/11.bin", $412, $2
    db LOW(wGun3Ammo), HIGH(wGun3Ammo)
    INCBIN "../../res/text/US/banks/11.bin", $416, $7
jr_011_441d:
    INCBIN "../../res/text/US/banks/11.bin", $41d, $3
; GET [NUM8_WRAM:60C5] BULLETS.[END]
Text11Message1E:
    INCBIN "../../res/text/US/banks/11.bin", $420, $5
    db LOW(wC1AmmoQty), HIGH(wC1AmmoQty)
    INCBIN "../../res/text/US/banks/11.bin", $427, $7
jr_011_442e:
    INCBIN "../../res/text/US/banks/11.bin", $42e, $3
; THAT'S NOT ENOUGH / COINS.[END]
Text11Message1F:
    INCBIN "../../res/text/US/banks/11.bin", $431, $19
; NOW THAT IS ONE / LARGE WOMAN! SHE'SGOT TO BE AT LEAST400 LBS![PAGE] / YOU HAVE AN UNEASYFEELING THAT / YOU'V...
Text11Message21:
    INCBIN "../../res/text/US/banks/11.bin", $44a, $6
jr_011_4450:
    INCBIN "../../res/text/US/banks/11.bin", $450, $19
jr_011_4469:
    INCBIN "../../res/text/US/banks/11.bin", $469, $2e
jr_011_4497:
    INCBIN "../../res/text/US/banks/11.bin", $497, $1a
jr_011_44b1:
    INCBIN "../../res/text/US/banks/11.bin", $4b1, $d
; YOU PUT THE / MEDICINE BACK IN / THE BOTTLE.[END]
Text11Message22:
    INCBIN "../../res/text/US/banks/11.bin", $4be, $1f
jr_011_44dd:
    INCBIN "../../res/text/US/banks/11.bin", $4dd, $a
; THERE'S NO / MEDICINE LEFT IN / THE CAPSULE.[END]
Text11Message23:
    INCBIN "../../res/text/US/banks/11.bin", $4e7, $1f
jr_011_4506:
    INCBIN "../../res/text/US/banks/11.bin", $506, $a
; IT'S THE KEY CARD / FOR THE APARTMENT.[END]
Text11Message24:
    INCBIN "../../res/text/US/banks/11.bin", $510, $25
; THE YOUNG PUNK IS / POINTING HIS GUN / AT YOU![END]
Text11Message25:
    INCBIN "../../res/text/US/banks/11.bin", $535, $2
jr_011_4537:
    INCBIN "../../res/text/US/banks/11.bin", $537, $1d
jr_011_4554:
    INCBIN "../../res/text/US/banks/11.bin", $554, $c
; YOU'RE INSIDE THE / GUN SHOP.[END]
Text11Message26:
    INCBIN "../../res/text/US/banks/11.bin", $560, $10
jr_011_4570:
    INCBIN "../../res/text/US/banks/11.bin", $570, $c
; YOU'RE INSIDE / THE APARTMENT.[END]
Text11Message27:
    INCBIN "../../res/text/US/banks/11.bin", $57c, $10
jr_011_458c:
    INCBIN "../../res/text/US/banks/11.bin", $58c, $d
; COULD THIS / POSSIBLY BE YOUR / OFFICE?[END]
Text11Message28:
    INCBIN "../../res/text/US/banks/11.bin", $599, $1f
jr_011_45b8:
    INCBIN "../../res/text/US/banks/11.bin", $5b8, $5
; YOU CAN'T GET RID / OF WHAT YOU DIDN'TTAKE![END]
Text11Message29:
    INCBIN "../../res/text/US/banks/11.bin", $5bd, $3
jr_011_45c0:
    INCBIN "../../res/text/US/banks/11.bin", $5c0, $7
jr_011_45c7:
    INCBIN "../../res/text/US/banks/11.bin", $5c7, $15
jr_011_45dc:
    INCBIN "../../res/text/US/banks/11.bin", $5dc, $b
jr_011_45e7:
; YOU CAN'T BURN / WHAT YOU DIDN'T / TAKE![END]
Text11Message2A:
    INCBIN "../../res/text/US/banks/11.bin", $5e7, $24
jr_011_460b:
    INCBIN "../../res/text/US/banks/11.bin", $60b, $1
; CHOOSE ONE SPEED / LEVEL.[PAGE] / FAST / REGULAR / SLOW[END]
Text11Message2B:
    INCBIN "../../res/text/US/banks/11.bin", $60c, $2a
; IT'S A BUNGALOW.[END]
Text11Message2C:
    INCBIN "../../res/text/US/banks/11.bin", $636, $a
jr_011_4640:
    INCBIN "../../res/text/US/banks/11.bin", $640, $7
; ERROR[END]
Text11Message2D:
    INCBIN "../../res/text/US/banks/11.bin", $647, $6
; ERROR[END]
Text11Message2E:
    INCBIN "../../res/text/US/banks/11.bin", $64d, $6
; ERROR[END]
Text11Message2F:
    INCBIN "../../res/text/US/banks/11.bin", $653, $6
; THE LINE IS DEAD.[PAGE] / YOU HOPE YOU DON'TWIND UP THE SAME![END]
Text11Message30:
    INCBIN "../../res/text/US/banks/11.bin", $659, $d
jr_011_4666:
    INCBIN "../../res/text/US/banks/11.bin", $666, $15
jr_011_467b:
    INCBIN "../../res/text/US/banks/11.bin", $67b, $9
jr_011_4684:
    INCBIN "../../res/text/US/banks/11.bin", $684, $3
jr_011_4687:
    INCBIN "../../res/text/US/banks/11.bin", $687, $8
; IT'S THE TRUNK KEYFOR AN AUTOMOBILE.[END]
Text11Message31:
    INCBIN "../../res/text/US/banks/11.bin", $68f, $18
jr_011_46a7:
    INCBIN "../../res/text/US/banks/11.bin", $6a7, $d
; THERE'S A VERY FATWOMAN IN THE TRUNKOF THIS CAR.[END]
Text11Message32:
    INCBIN "../../res/text/US/banks/11.bin", $6b4, $1f
jr_011_46d3:
    INCBIN "../../res/text/US/banks/11.bin", $6d3, $12
; IT'S A FARE METER.[END]
Text11Message33:
    INCBIN "../../res/text/US/banks/11.bin", $6e5, $13
; YOU'VE JUST / SUCCESSFULLY / SLUGGED THE / BULLETPROOF / GLASS.[END]
Text11Message34:
    INCBIN "../../res/text/US/banks/11.bin", $6f8, $10
jr_011_4708:
    INCBIN "../../res/text/US/banks/11.bin", $708, $26
jr_011_472e:
    INCBIN "../../res/text/US/banks/11.bin", $72e, $2
; THE BUTLER SOUNDS / TROUBLED AS HE / SAYS, "THERE'S / NOTHING I CAN TELLYOU...[PAGE] / SO, PLEASE LEAVE!"[END]
Text11Message35:
    INCBIN "../../res/text/US/banks/11.bin", $730, $1f
jr_011_474f:
    INCBIN "../../res/text/US/banks/11.bin", $74f, $18
jr_011_4767:
    INCBIN "../../res/text/US/banks/11.bin", $767, $1b
jr_011_4782:
    INCBIN "../../res/text/US/banks/11.bin", $782, $a
; THAT PERSON MUST / REALLY BE IN A / DEEP SLEEP![PAGE] / NO MATTER HOW HARDYOU SHAKE, THEY / JUST WON'T WAKE /...
Text11Message36:
    INCBIN "../../res/text/US/banks/11.bin", $78c, $b
jr_011_4797:
    INCBIN "../../res/text/US/banks/11.bin", $797, $27
jr_011_47be:
    INCBIN "../../res/text/US/banks/11.bin", $7be, $30
; YOU CAN'T DO THAT / HERE.[END]
Text11Message37:
    INCBIN "../../res/text/US/banks/11.bin", $7ee, $9
jr_011_47f7:
    INCBIN "../../res/text/US/banks/11.bin", $7f7, $7
jr_011_47fe:
    INCBIN "../../res/text/US/banks/11.bin", $7fe, $8
; IT APPEARS TO BE / COMING FROM THE / WOMEN'S WASHROOM.[PAGE] / YOU HOPE IT ISN'T / SOMEONE WHO IS / HAVING TR...
Text11Message38:
    INCBIN "../../res/text/US/banks/11.bin", $806, $7
jr_011_480d:
    INCBIN "../../res/text/US/banks/11.bin", $80d, $3c
jr_011_4849:
    INCBIN "../../res/text/US/banks/11.bin", $849, $c
jr_011_4855:
    INCBIN "../../res/text/US/banks/11.bin", $855, $16
; ERROR[END]
Text11Message39:
    INCBIN "../../res/text/US/banks/11.bin", $86b, $6
; THE CABBY EYES YOUSUSPICIOUSLY, / "YOU'RE DA GUY / THAT RAN AWAY / WITHOUT PAYING, / AIN'T YA?[PAGE] / I DON'...
Text11Message3A:
    INCBIN "../../res/text/US/banks/11.bin", $871, $11
jr_011_4882:
    INCBIN "../../res/text/US/banks/11.bin", $882, $e
jr_011_4890:
    INCBIN "../../res/text/US/banks/11.bin", $890, $25
jr_011_48b5:
    INCBIN "../../res/text/US/banks/11.bin", $8b5, $8
jr_011_48bd:
    INCBIN "../../res/text/US/banks/11.bin", $8bd, $5
jr_011_48c2:
    INCBIN "../../res/text/US/banks/11.bin", $8c2, $4
jr_011_48c6:
    INCBIN "../../res/text/US/banks/11.bin", $8c6, $5
jr_011_48cb:
    INCBIN "../../res/text/US/banks/11.bin", $8cb, $2c
jr_011_48f7:
    INCBIN "../../res/text/US/banks/11.bin", $8f7, $d
; IT'S A BIG BLACK / CABINET.[END]
Text11Message3B:
    INCBIN "../../res/text/US/banks/11.bin", $904, $5
jr_011_4909:
    INCBIN "../../res/text/US/banks/11.bin", $909, $12
jr_011_491b:
    INCBIN "../../res/text/US/banks/11.bin", $91b, $3
; HITTING IT MIGHT / NOT BE THE BEST / IDEA.[END]
Text11Message3C:
    INCBIN "../../res/text/US/banks/11.bin", $91e, $1f
jr_011_493d:
    INCBIN "../../res/text/US/banks/11.bin", $93d, $8
; THIS CASE IS / STARTING TO COME / TOGETHER.[END]
Text11Message3D:
    INCBIN "../../res/text/US/banks/11.bin", $945, $1f
jr_011_4964:
    INCBIN "../../res/text/US/banks/11.bin", $964, $9
; IT'S THE BOTTLE / THAT OPENED THE / SECRET DOOR.[END]
Text11Message3E:
    INCBIN "../../res/text/US/banks/11.bin", $96d, $2d
; THE RACK SLIDES / OPEN AND REVEALS ASECRET PASSAGE![END]
Text11Message3F:
    INCBIN "../../res/text/US/banks/11.bin", $99a, $32
; IT LOOKS LIKE / A SLOT FOR A CARD / OR SOMETHING.[END]
Text11Message40:
    INCBIN "../../res/text/US/banks/11.bin", $9cc, $2e
; THE ELEVATOR DOOR / SLIDES SHUT AND / BEGINS MOVING.[PAGE] / YOU HAVE NO CHOICEBUT TO GO ALONG / FOR THE RIDE...
Text11Message41:
    INCBIN "../../res/text/US/banks/11.bin", $9fa, $1f
jr_011_4a19:
    INCBIN "../../res/text/US/banks/11.bin", $a19, $22
jr_011_4a3b:
    INCBIN "../../res/text/US/banks/11.bin", $a3b, $c
jr_011_4a47:
    INCBIN "../../res/text/US/banks/11.bin", $a47, $14
; THE ELEVATOR STOPSAND THE DOOR / SLIDES OPEN.[END]
Text11Message42:
    INCBIN "../../res/text/US/banks/11.bin", $a5b, $2c
; SWOOSH![PAGE] / THE ELEVATOR DOORSCLOSE AND IT / BEGINS TO MOVE.[END]
Text11Message43:
    INCBIN "../../res/text/US/banks/11.bin", $a87, $1f
jr_011_4aa6:
    INCBIN "../../res/text/US/banks/11.bin", $aa6, $18
; IT'S A PHOTO OF / THE GAL ASLEEP / IN THE BED![END]
Text11Message44:
    INCBIN "../../res/text/US/banks/11.bin", $abe, $1f
jr_011_4add:
    INCBIN "../../res/text/US/banks/11.bin", $add, $c
; IT'S LOCKED.[END]
Text11Message45:
    INCBIN "../../res/text/US/banks/11.bin", $ae9, $d
; THE MEDICINE NAMESAND THEIR EFFECTS / ARE SHOWN IN / THESE FILES:[PAGE] / "MEDREZINE- / A NERVE ANTIDOTE.[PAG...
Text11Message46:
    INCBIN "../../res/text/US/banks/11.bin", $af6, $1f
jr_011_4b15:
    INCBIN "../../res/text/US/banks/11.bin", $b15, $59
jr_011_4b6e:
    INCBIN "../../res/text/US/banks/11.bin", $b6e, $21
jr_011_4b8f:
    INCBIN "../../res/text/US/banks/11.bin", $b8f, $31
jr_011_4bc0:
    INCBIN "../../res/text/US/banks/11.bin", $bc0, $6c
jr_011_4c2c:
    INCBIN "../../res/text/US/banks/11.bin", $c2c, $1e
jr_011_4c4a:
    INCBIN "../../res/text/US/banks/11.bin", $c4a, $14
; THE MAN IS IN AN / IMPOSSIBLY DEEP / SLEEP.[END]
Text11Message47:
    INCBIN "../../res/text/US/banks/11.bin", $c5e, $28
; YOU CAN'T USE WHATYOU DIDN'T TAKE.[END]
Text11Message48:
    INCBIN "../../res/text/US/banks/11.bin", $c86, $e
jr_011_4c94:
    INCBIN "../../res/text/US/banks/11.bin", $c94, $2
jr_011_4c96:
    INCBIN "../../res/text/US/banks/11.bin", $c96, $f
jr_011_4ca5:
    INCBIN "../../res/text/US/banks/11.bin", $ca5, $4
; ERROR[END]
Text11Message49:
    INCBIN "../../res/text/US/banks/11.bin", $ca9, $6
; MAYBE A NAP WOULD / MAKE YOU FEEL / BETTER.[END]
Text11Message4A:
    INCBIN "../../res/text/US/banks/11.bin", $caf, $5
jr_011_4cb4:
    INCBIN "../../res/text/US/banks/11.bin", $cb4, $14
jr_011_4cc8:
    INCBIN "../../res/text/US/banks/11.bin", $cc8, $f
; HMMM...[PAGE] / THAT WAS NO / IMPROVEMENT![END]
Text11Message4B:
    INCBIN "../../res/text/US/banks/11.bin", $cd7, $21
; YOU DON'T FEEL / BETTER.[END]
Text11Message4C:
    INCBIN "../../res/text/US/banks/11.bin", $cf8, $3
jr_011_4cfb:
    INCBIN "../../res/text/US/banks/11.bin", $cfb, $2
jr_011_4cfd:
    INCBIN "../../res/text/US/banks/11.bin", $cfd, $12
; IT'S AN ODD SHAPEDCHAIR.[END]
Text11Message4D:
    INCBIN "../../res/text/US/banks/11.bin", $d0f, $19
; THROUGH THE GRIMY / WINDOW YOU CAN / BARELY MAKE OUT / A ROOM BEYOND.[END]
Text11Message4E:
    INCBIN "../../res/text/US/banks/11.bin", $d28, $29
jr_011_4d51:
    INCBIN "../../res/text/US/banks/11.bin", $d51, $17
; IT'S A TRUNK FULL / OF JUNK.[PAGE] / BUT WAIT, WHAT'S / THIS?[END]
Text11Message4F:
    INCBIN "../../res/text/US/banks/11.bin", $d68, $1f
jr_011_4d87:
    INCBIN "../../res/text/US/banks/11.bin", $d87, $13
; YOU DECIDE NOT TO / BURN IT JUST YET.[END]
Text11Message50:
    INCBIN "../../res/text/US/banks/11.bin", $d9a, $5
jr_011_4d9f:
    INCBIN "../../res/text/US/banks/11.bin", $d9f, $b
jr_011_4daa:
    INCBIN "../../res/text/US/banks/11.bin", $daa, $14
; IT'S THE BRAKE / PEDAL.[END]
Text11Message51:
    INCBIN "../../res/text/US/banks/11.bin", $dbe, $16
; YOU CAN'T USE WHATYOU HAVEN'T TAKEN.[END]
Text11Message52:
    INCBIN "../../res/text/US/banks/11.bin", $dd4, $9
jr_011_4ddd:
    INCBIN "../../res/text/US/banks/11.bin", $ddd, $7
jr_011_4de4:
    INCBIN "../../res/text/US/banks/11.bin", $de4, $f
jr_011_4df3:
    INCBIN "../../res/text/US/banks/11.bin", $df3, $3
jr_011_4df6:
    INCBIN "../../res/text/US/banks/11.bin", $df6, $3
; YOU TAKE THE / CHOCOLATE AND POP / IT IN YOUR MOUTH.[PAGE] / UGH! RUMBALLS! YOUHATE RUMBALLS![END]
Text11Message53:
    INCBIN "../../res/text/US/banks/11.bin", $df9, $1f
jr_011_4e18:
    INCBIN "../../res/text/US/banks/11.bin", $e18, $16
jr_011_4e2e:
    INCBIN "../../res/text/US/banks/11.bin", $e2e, $1b
jr_011_4e49:
    INCBIN "../../res/text/US/banks/11.bin", $e49, $2
; ERROR[END]
Text11Message54:
    INCBIN "../../res/text/US/banks/11.bin", $e4b, $6
; YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
Text11Message55:
    INCBIN "../../res/text/US/banks/11.bin", $e51, $21
jr_011_4e72:
    INCBIN "../../res/text/US/banks/11.bin", $e72, $7
; YOU CAN'T LEAVE / WHAT YOU DIDN'T / TAKE![END]
Text11Message56:
    INCBIN "../../res/text/US/banks/11.bin", $e79, $10
jr_011_4e89:
    INCBIN "../../res/text/US/banks/11.bin", $e89, $15
jr_011_4e9e:
    INCBIN "../../res/text/US/banks/11.bin", $e9e, $1
; MAYBE YOU CAN'T / LEAVE IT HERE.[END]
Text11Message57:
    INCBIN "../../res/text/US/banks/11.bin", $e9f, $5
jr_011_4ea4:
    INCBIN "../../res/text/US/banks/11.bin", $ea4, $11
jr_011_4eb5:
    INCBIN "../../res/text/US/banks/11.bin", $eb5, $9
; YOU PUT IT BACK / WHERE YOU GOT IT.[END]
Text11Message58:
    INCBIN "../../res/text/US/banks/11.bin", $ebe, $10
jr_011_4ece:
    INCBIN "../../res/text/US/banks/11.bin", $ece, $12
; YOU FEEL / ABSOLUTELY GREAT![PAGE] / THE THROBBING IN / YOUR HEAD IS GONE![END]
Text11Message59:
    INCBIN "../../res/text/US/banks/11.bin", $ee0, $4
jr_011_4ee4:
    INCBIN "../../res/text/US/banks/11.bin", $ee4, $c
jr_011_4ef0:
    INCBIN "../../res/text/US/banks/11.bin", $ef0, $1e
jr_011_4f0e:
    INCBIN "../../res/text/US/banks/11.bin", $f0e, $e
jr_011_4f1c:
    INCBIN "../../res/text/US/banks/11.bin", $f1c, $3
; SUDDENLY, THE / WORLD BEGINS / SPINNING... YOU'REPASSING OUT...[END]
Text11Message5A:
    INCBIN "../../res/text/US/banks/11.bin", $f1f, $2e
jr_011_4f4d:
    INCBIN "../../res/text/US/banks/11.bin", $f4d, $9
jr_011_4f56:
    INCBIN "../../res/text/US/banks/11.bin", $f56, $5
; IT APPEARS YOUR / TIME IS UP AND / YOUR LUCK HAS RUN / OUT, ACE![PAGE] / THE THROBBING AND / DISORIENTATION /...
Text11Message5B:
    INCBIN "../../res/text/US/banks/11.bin", $f5b, $5
jr_011_4f60:
    INCBIN "../../res/text/US/banks/11.bin", $f60, $16
jr_011_4f76:
    INCBIN "../../res/text/US/banks/11.bin", $f76, $3
jr_011_4f79:
    INCBIN "../../res/text/US/banks/11.bin", $f79, $1
jr_011_4f7a:
    INCBIN "../../res/text/US/banks/11.bin", $f7a, $66
jr_011_4fe0:
    INCBIN "../../res/text/US/banks/11.bin", $fe0, $1f
jr_011_4fff:
    INCBIN "../../res/text/US/banks/11.bin", $fff, $3
jr_011_5002:
    INCBIN "../../res/text/US/banks/11.bin", $1002, $9
jr_011_500b:
    INCBIN "../../res/text/US/banks/11.bin", $100b, $2a
jr_011_5035:
    INCBIN "../../res/text/US/banks/11.bin", $1035, $27
jr_011_505c:
    INCBIN "../../res/text/US/banks/11.bin", $105c, $1
; IT'S THE CLUTCH.[END]
Text11Message5C:
    INCBIN "../../res/text/US/banks/11.bin", $105d, $6
jr_011_5063:
    INCBIN "../../res/text/US/banks/11.bin", $1063, $b
; WITH AN ANGRY / FROWN THE DRIVER / SAYS, "HEY PAL! YASTILL OWE ME![PAGE] / AND YA BETTER PAY / UP OR I'LL CAL...
Text11Message5D:
    INCBIN "../../res/text/US/banks/11.bin", $106e, $2b
jr_011_5099:
    INCBIN "../../res/text/US/banks/11.bin", $1099, $6
jr_011_509f:
    INCBIN "../../res/text/US/banks/11.bin", $109f, $14
jr_011_50b3:
    INCBIN "../../res/text/US/banks/11.bin", $10b3, $25
; "HEY BUB, YA / HAVEN'T PAID ME / YET!" YELLS THE / CABBY.[PAGE] / "YA BETTER PAY ME / OR ELSE!"[END]
Text11Message5E:
    INCBIN "../../res/text/US/banks/11.bin", $10d8, $c
jr_011_50e4:
    INCBIN "../../res/text/US/banks/11.bin", $10e4, $13
jr_011_50f7:
    INCBIN "../../res/text/US/banks/11.bin", $10f7, $4
jr_011_50fb:
    INCBIN "../../res/text/US/banks/11.bin", $10fb, $6
jr_011_5101:
    INCBIN "../../res/text/US/banks/11.bin", $1101, $27
jr_011_5128:
; A COIN IS LEFT IN / THE SLOT MACHINE'SDISH![END]
Text11Message5F:
    INCBIN "../../res/text/US/banks/11.bin", $1128, $d
jr_011_5135:
    INCBIN "../../res/text/US/banks/11.bin", $1135, $1d
; YOU GLANCE OVER / AT YOURSELF, / AMAZED THAT YOU'VEMADE IT THIS FAR![END]
Text11Message60:
    INCBIN "../../res/text/US/banks/11.bin", $1152, $23
jr_011_5175:
    INCBIN "../../res/text/US/banks/11.bin", $1175, $16
jr_011_518b:
    INCBIN "../../res/text/US/banks/11.bin", $118b, $8
; THERE DOESN'T SEEMTO BE A PHONE / NUMBER.[END]
Text11Message61:
    INCBIN "../../res/text/US/banks/11.bin", $1193, $28
; TOO BAD ACE! FROM / THE BEGINNING THE / ODDS WERE STACKED / AGAINST YOU![PAGE] / IT SEEMED ONLY A / MATTER OF...
Text11Message62:
    INCBIN "../../res/text/US/banks/11.bin", $11bb, $1f
jr_011_51da:
    INCBIN "../../res/text/US/banks/11.bin", $11da, $4d
jr_011_5227:
    INCBIN "../../res/text/US/banks/11.bin", $1227, $d
jr_011_5234:
    INCBIN "../../res/text/US/banks/11.bin", $1234, $33
jr_011_5267:
; IT CAN'T BE / MOVED IF IT'S / NOT OPENED![END]
Text11Message63:
    INCBIN "../../res/text/US/banks/11.bin", $1267, $26
jr_011_528d:
; AHH, IT JUST NEEDSA COIN![END]
Text11Message64:
    INCBIN "../../res/text/US/banks/11.bin", $128d, $1a
; THERE'S NOTHING / HERE EXCEPT FOR / CRACKED WALLS.[END]
Text11Message65:
    INCBIN "../../res/text/US/banks/11.bin", $12a7, $2f
; THERE ARE CRACKS / IN THE WALL.[END]
Text11Message66:
    INCBIN "../../res/text/US/banks/11.bin", $12d6, $1e
; WHOOSH![PAGE] / THE ELEVATOR / DOORS SLIDE OPEN.[END]
Text11Message67:
    INCBIN "../../res/text/US/banks/11.bin", $12f4, $27
; WHOOSH![PAGE] / THE DOORS CLOSE / WITH A BANG.[END]
Text11Message68:
    INCBIN "../../res/text/US/banks/11.bin", $131b, $1f
jr_011_533a:
    INCBIN "../../res/text/US/banks/11.bin", $133a, $6
; YOU'D LIKE TO TELLHIM WHERE TO GO, / BUT YOU DON'T KNOWTHE ADDRESS![END]
Text11Message69:
    INCBIN "../../res/text/US/banks/11.bin", $1340, $10
jr_011_5350:
    INCBIN "../../res/text/US/banks/11.bin", $1350, $27
jr_011_5377:
    INCBIN "../../res/text/US/banks/11.bin", $1377, $b
; BESIDES IT BEING / BROKEN, YOU SEE / NOTHING ELSE / UNUSUAL.[END]
Text11Message6A:
    INCBIN "../../res/text/US/banks/11.bin", $1382, $29
jr_011_53ab:
    INCBIN "../../res/text/US/banks/11.bin", $13ab, $e
; THE BILL WON'T / GO IN THE SLOT![END]
Text11Message6B:
    INCBIN "../../res/text/US/banks/11.bin", $13b9, $1f
jr_011_53d8:
; THE CABBIE SAYS, / "DOWN ON YER LUCK,PAL?[PAGE] / OKAY, WELL YOU CANPAY ME NEXT TIME."[END]
Text11Message6C:
    INCBIN "../../res/text/US/banks/11.bin", $13d8, $20
jr_011_53f8:
    INCBIN "../../res/text/US/banks/11.bin", $13f8, $1
jr_011_53f9:
    INCBIN "../../res/text/US/banks/11.bin", $13f9, $22
jr_011_541b:
    INCBIN "../../res/text/US/banks/11.bin", $141b, $1
jr_011_541c:
    INCBIN "../../res/text/US/banks/11.bin", $141c, $9
; THE CABBY SAYS / WITH A HINT OF / COMPASSION, "WELL / WE'VE ALL GOT / TROUBLES NOW DON'TWE![PAGE] / YOU CAN P...
Text11Message6D:
    INCBIN "../../res/text/US/banks/11.bin", $1425, $5
jr_011_542a:
    INCBIN "../../res/text/US/banks/11.bin", $142a, $6
jr_011_5430:
    INCBIN "../../res/text/US/banks/11.bin", $1430, $1a
jr_011_544a:
    INCBIN "../../res/text/US/banks/11.bin", $144a, $3f
jr_011_5489:
    INCBIN "../../res/text/US/banks/11.bin", $1489, $e
; THE CABBY MUTTERS / WITH A HINT OF / ANGER, "HEY, PAL![PAGE] / YA GONNA PAY ME / BACK THE MONEY I / BORROWED ...
Text11Message6E:
    INCBIN "../../res/text/US/banks/11.bin", $1497, $25
jr_011_54bc:
    INCBIN "../../res/text/US/banks/11.bin", $14bc, $10
jr_011_54cc:
    INCBIN "../../res/text/US/banks/11.bin", $14cc, $1d
jr_011_54e9:
    INCBIN "../../res/text/US/banks/11.bin", $14e9, $8
jr_011_54f1:
    INCBIN "../../res/text/US/banks/11.bin", $14f1, $5
jr_011_54f6:
    INCBIN "../../res/text/US/banks/11.bin", $14f6, $4
; "HEY, MACK!" THE / CABBY ANGRILY / SAYS,[PAGE] / "I'M FRESH OUT OF / CHARITY, NOW PAY / ME FOR THAT RIDE / OR...
Text11Message6F:
    INCBIN "../../res/text/US/banks/11.bin", $14fa, $9
jr_011_5503:
    INCBIN "../../res/text/US/banks/11.bin", $1503, $1c
jr_011_551f:
    INCBIN "../../res/text/US/banks/11.bin", $151f, $5
jr_011_5524:
    INCBIN "../../res/text/US/banks/11.bin", $1524, $39
; THERE DOESN'T SEEMTO BE ANYTHING / UNUSUAL.[END]
Text11Message70:
    INCBIN "../../res/text/US/banks/11.bin", $155d, $1
jr_011_555e:
    INCBIN "../../res/text/US/banks/11.bin", $155e, $1
jr_011_555f:
    INCBIN "../../res/text/US/banks/11.bin", $155f, $28
; IT SEEMS THAT TOO / MANY THINGS HAVE / BEEN LEFT OPEN.[END]
Text11Message71:
    INCBIN "../../res/text/US/banks/11.bin", $1587, $5
jr_011_558c:
    INCBIN "../../res/text/US/banks/11.bin", $158c, $1a
jr_011_55a6:
    INCBIN "../../res/text/US/banks/11.bin", $15a6, $12
jr_011_55b8:
    INCBIN "../../res/text/US/banks/11.bin", $15b8, $2
; THERE ARE NO MORE / COINS.[END]
Text11Message72:
    INCBIN "../../res/text/US/banks/11.bin", $15ba, $19
; YOU HAVE TOO MANY / THINGS.[PAGE] / YOU MAY HAVE TO / LEAVE SOMETHING![END]
Text11Message73:
    INCBIN "../../res/text/US/banks/11.bin", $15d3, $6
jr_011_55d9:
    INCBIN "../../res/text/US/banks/11.bin", $15d9, $a
jr_011_55e3:
    INCBIN "../../res/text/US/banks/11.bin", $15e3, $f
jr_011_55f2:
    INCBIN "../../res/text/US/banks/11.bin", $15f2, $b
jr_011_55fd:
    INCBIN "../../res/text/US/banks/11.bin", $15fd, $5
jr_011_5602:
    INCBIN "../../res/text/US/banks/11.bin", $1602, $7
jr_011_5609:
    INCBIN "../../res/text/US/banks/11.bin", $1609, $5
; ERROR[END]
Text11Message74:
    INCBIN "../../res/text/US/banks/11.bin", $160e, $1
jr_011_560f:
    INCBIN "../../res/text/US/banks/11.bin", $160f, $5
; UNFORTUNATELY, YOUCOME UP A LOSER.[END]
Text11Message75:
    INCBIN "../../res/text/US/banks/11.bin", $1614, $1f
jr_011_5633:
    INCBIN "../../res/text/US/banks/11.bin", $1633, $4
; THE WASTEBASKET / IS FULL.[PAGE] / IT WON'T HOLD / ANYMORE.[END]
Text11Message76:
    INCBIN "../../res/text/US/banks/11.bin", $1637, $10
jr_011_5647:
    INCBIN "../../res/text/US/banks/11.bin", $1647, $20
; THERE ARE NO / BULLETS.[END]
Text11Message77:
    INCBIN "../../res/text/US/banks/11.bin", $1667, $7
jr_011_566e:
    INCBIN "../../res/text/US/banks/11.bin", $166e, $f
; THERE ARE NO / BULLETS.[END]
Text11Message78:
    INCBIN "../../res/text/US/banks/11.bin", $167d, $16
; TALKING TO / YOURSELF MIGHT BE / FUN BUT IT ISN'T / VERY HELPFUL![END]
Text11Message79:
    INCBIN "../../res/text/US/banks/11.bin", $1693, $9
jr_011_569c:
    INCBIN "../../res/text/US/banks/11.bin", $169c, $16
jr_011_56b2:
    INCBIN "../../res/text/US/banks/11.bin", $16b2, $1d
; DON'T PAT YOURSELFON THE BACK YET.[END]
Text11Message7A:
    INCBIN "../../res/text/US/banks/11.bin", $16cf, $23
; NOTHING HAPPENS.[PAGE] / THE CAPSULE IS / EMPTY.[END]
Text11Message7B:
    INCBIN "../../res/text/US/banks/11.bin", $16f2, $1
jr_011_56f3:
    INCBIN "../../res/text/US/banks/11.bin", $16f3, $26
; DON'T EVEN BOTHER / TO TRY IT, ACE.[END]
Text11Message7C:
    INCBIN "../../res/text/US/banks/11.bin", $1719, $6
jr_011_571f:
    INCBIN "../../res/text/US/banks/11.bin", $171f, $19
jr_011_5738:
    INCBIN "../../res/text/US/banks/11.bin", $1738, $3
; HOLD ON![PAGE] / IF YOU DO THAT, / IT MAY CAUSE YOU / TROUBLE LATER.[END]
Text11Message7D:
    INCBIN "../../res/text/US/banks/11.bin", $173b, $1c
jr_011_5757:
    INCBIN "../../res/text/US/banks/11.bin", $1757, $1a
jr_011_5771:
    INCBIN "../../res/text/US/banks/11.bin", $1771, $3
; YOU'RE ON TRIAL / FOR ATTEMPTED / MURDER.[PAGE] / THE PROSECUTION / HAS A SOLID CASE / AGAINST YOU WITH / MAN...
Text11Message7E:
    INCBIN "../../res/text/US/banks/11.bin", $1774, $10
jr_011_5784:
    INCBIN "../../res/text/US/banks/11.bin", $1784, $54
jr_011_57d8:
    INCBIN "../../res/text/US/banks/11.bin", $17d8, $13
jr_011_57eb:
    INCBIN "../../res/text/US/banks/11.bin", $17eb, $9
jr_011_57f4:
    INCBIN "../../res/text/US/banks/11.bin", $17f4, $7
jr_011_57fb:
    INCBIN "../../res/text/US/banks/11.bin", $17fb, $15
jr_011_5810:
    INCBIN "../../res/text/US/banks/11.bin", $1810, $34
; IT DOESN'T TAKE / TOO LONG FOR A / JURY OF YOUR PEERSTO CONVICT YOU OF / FIRST DEGREE / MURDER AND / SENTENCE...
Text11Message7F:
    INCBIN "../../res/text/US/banks/11.bin", $1844, $37
jr_011_587b:
    INCBIN "../../res/text/US/banks/11.bin", $187b, $56
jr_011_58d1:
    INCBIN "../../res/text/US/banks/11.bin", $18d1, $1
jr_011_58d2:
    INCBIN "../../res/text/US/banks/11.bin", $18d2, $1a
; Fixed-width object-name records.
C1ObjectNames:
    INCBIN "../../res/text/US/banks/11.bin", $18ec, $56
jr_011_5942:
    INCBIN "../../res/text/US/banks/11.bin", $1942, $30
jr_011_5972:
    INCBIN "../../res/text/US/banks/11.bin", $1972, $10
jr_011_5982:
    INCBIN "../../res/text/US/banks/11.bin", $1982, $72
jr_011_59f4:
    INCBIN "../../res/text/US/banks/11.bin", $19f4, $21
jr_011_5a15:
    INCBIN "../../res/text/US/banks/11.bin", $1a15, $61
jr_011_5a76:
    INCBIN "../../res/text/US/banks/11.bin", $1a76, $cc
jr_011_5b42:
    INCBIN "../../res/text/US/banks/11.bin", $1b42, $1ee
jr_011_5d30:
    INCBIN "../../res/text/US/banks/11.bin", $1d30, $12
jr_011_5d42:
    INCBIN "../../res/text/US/banks/11.bin", $1d42, $50
jr_011_5d92:
    INCBIN "../../res/text/US/banks/11.bin", $1d92, $681
jr_011_6413:
    INCBIN "../../res/text/US/banks/11.bin", $2413, $10f
jr_011_6522:
    INCBIN "../../res/text/US/banks/11.bin", $2522, $1ade
