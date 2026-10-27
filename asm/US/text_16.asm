; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text16Msgs0:
    db LOW(Text16Message00), HIGH(Text16Message00)
    db LOW(Text16Message01), HIGH(Text16Message01)
    db LOW(Text16Message02), HIGH(Text16Message02)
    db LOW(Text16Message03), HIGH(Text16Message03)
    db LOW(Text16Message04), HIGH(Text16Message04)
    db LOW(Text16Message05), HIGH(Text16Message05)
    db LOW(Text16Message06), HIGH(Text16Message06)
    db LOW(Text16Message07), HIGH(Text16Message07)
    db LOW(Text16Message08), HIGH(Text16Message08)
    db LOW(Text16Message09), HIGH(Text16Message09)
    db LOW(Text16Message0A), HIGH(Text16Message0A)
    db LOW(Text16Message0B), HIGH(Text16Message0B)
    db LOW(Text16Message0C), HIGH(Text16Message0C)
    db LOW(Text16Message0D), HIGH(Text16Message0D)
    db LOW(Text16Message0E), HIGH(Text16Message0E)
    db LOW(Text16Message0F), HIGH(Text16Message0F)
    db LOW(Text16Message10), HIGH(Text16Message10)
    db LOW(Text16Message11), HIGH(Text16Message11)
    db LOW(Text16Message12), HIGH(Text16Message12)
    db LOW(Text16Message13), HIGH(Text16Message13)
    db LOW(Text16Message14), HIGH(Text16Message14)
    db LOW(Text16Message15), HIGH(Text16Message15)
    db LOW(Text16Message16), HIGH(Text16Message16)
    db LOW(Text16Message17), HIGH(Text16Message17)
    db LOW(Text16Message18), HIGH(Text16Message18)
    db LOW(Text16Message19), HIGH(Text16Message19)
    db LOW(Text16Message1A), HIGH(Text16Message1A)
    db LOW(Text16Message1B), HIGH(Text16Message1B)
    db LOW(Text16Message1C), HIGH(Text16Message1C)
    db LOW(Text16Message1D), HIGH(Text16Message1D)
    db LOW(Text16Message1E), HIGH(Text16Message1E)
    db LOW(Text16Message1F), HIGH(Text16Message1F)
    db LOW(Text16Message20), HIGH(Text16Message20)
    db LOW(Text16Message21), HIGH(Text16Message21)
    db LOW(Text16Message22), HIGH(Text16Message22)
    db LOW(Text16Message23), HIGH(Text16Message23)
    db LOW(Text16Message24), HIGH(Text16Message24)
    db LOW(Text16Message25), HIGH(Text16Message25)
    db LOW(Text16Message26), HIGH(Text16Message26)
    db LOW(Text16Message27), HIGH(Text16Message27)
    db LOW(Text16Message28), HIGH(Text16Message28)
    db LOW(Text16Message29), HIGH(Text16Message29)
    db LOW(Text16Message2A), HIGH(Text16Message2A)
    db LOW(Text16Message2B), HIGH(Text16Message2B)
    db LOW(Text16Message2C), HIGH(Text16Message2C)
    db LOW(Text16Message2D), HIGH(Text16Message2D)
    db LOW(Text16Message2E), HIGH(Text16Message2E)
    db LOW(Text16Message2F), HIGH(Text16Message2F)
    db LOW(Text16Message30), HIGH(Text16Message30)
    db LOW(Text16Message31), HIGH(Text16Message31)
    db LOW(Text16Message32), HIGH(Text16Message32)
    db LOW(Text16Message33), HIGH(Text16Message33)
    db LOW(Text16Message34), HIGH(Text16Message34)
    db LOW(Text16Message35), HIGH(Text16Message35)
    db LOW(Text16Message36), HIGH(Text16Message36)
    db LOW(Text16Message37), HIGH(Text16Message37)
    db LOW(Text16Message38), HIGH(Text16Message38)
    db LOW(Text16Message39), HIGH(Text16Message39)
    db LOW(Text16Message3A), HIGH(Text16Message3A)
    db LOW(Text16Message3B), HIGH(Text16Message3B)
    db LOW(Text16Message3C), HIGH(Text16Message3C)
    db LOW(Text16Message3D), HIGH(Text16Message3D)
    db LOW(Text16Message3E), HIGH(Text16Message3E)
    db LOW(Text16Message3F), HIGH(Text16Message3F)
; Sixty-four message pointers for one text group.
Text16Msgs1:
    db LOW(Text16Message40), HIGH(Text16Message40)
jr_016_4082:
    db LOW(Text16Message41), HIGH(Text16Message41)
    db LOW(Text16Message42), HIGH(Text16Message42)
    db LOW(Text16Message43), HIGH(Text16Message43)
    db LOW(Text16Message44), HIGH(Text16Message44)
    db LOW(Text16Message45)
jr_016_408b:
    db HIGH(Text16Message45)
    db LOW(Text16Message46), HIGH(Text16Message46)
    db LOW(Text16Message47), HIGH(Text16Message47)
    db LOW(Text16Message48), HIGH(Text16Message48)
    db LOW(Text16Message49), HIGH(Text16Message49)
    db LOW(Text16Message4A), HIGH(Text16Message4A)
    db LOW(Text16Message4B), HIGH(Text16Message4B)
    db LOW(Text16Message4C), HIGH(Text16Message4C)
    db LOW(Text16Message4D), HIGH(Text16Message4D)
    db LOW(Text16Message4E), HIGH(Text16Message4E)
    db LOW(Text16Message4F), HIGH(Text16Message4F)
    db LOW(Text16Message50), HIGH(Text16Message50)
    db LOW(Text16Message51), HIGH(Text16Message51)
    db LOW(Text16Message52), HIGH(Text16Message52)
    db LOW(Text16Message53), HIGH(Text16Message53)
    db LOW(Text16Message54), HIGH(Text16Message54)
    db LOW(Text16Message55), HIGH(Text16Message55)
    db LOW(Text16Message56), HIGH(Text16Message56)
    db LOW(Text16Message57), HIGH(Text16Message57)
    db LOW(Text16Message58), HIGH(Text16Message58)
    db LOW(Text16Message59), HIGH(Text16Message59)
    db LOW(Text16Message5A), HIGH(Text16Message5A)
    db LOW(Text16Message5B), HIGH(Text16Message5B)
    db LOW(Text16Message5C), HIGH(Text16Message5C)
    db LOW(Text16Message5D), HIGH(Text16Message5D)
    db LOW(Text16Message5E), HIGH(Text16Message5E)
    db LOW(Text16Message5F), HIGH(Text16Message5F)
    db LOW(Text16Message60), HIGH(Text16Message60)
    db LOW(Text16Message61), HIGH(Text16Message61)
    db LOW(Text16Message62), HIGH(Text16Message62)
    db LOW(Text16Message63), HIGH(Text16Message63)
    db LOW(Text16Message64), HIGH(Text16Message64)
    db LOW(Text16Message65), HIGH(Text16Message65)
    db LOW(Text16Message66), HIGH(Text16Message66)
    db LOW(Text16Message67), HIGH(Text16Message67)
    db LOW(Text16Message68), HIGH(Text16Message68)
    db LOW(Text16Message69), HIGH(Text16Message69)
    db LOW(Text16Message6A), HIGH(Text16Message6A)
    db LOW(Text16Message6B), HIGH(Text16Message6B)
    db LOW(Text16Message6C), HIGH(Text16Message6C)
    db LOW(Text16Message6D), HIGH(Text16Message6D)
    db LOW(Text16Message6E), HIGH(Text16Message6E)
    db LOW(Text16Message6F), HIGH(Text16Message6F)
    db LOW(Text16Message70), HIGH(Text16Message70)
    db LOW(Text16Message71), HIGH(Text16Message71)
    db LOW(Text16Message72), HIGH(Text16Message72)
    db LOW(Text16Message73), HIGH(Text16Message73)
    db LOW(Text16Message74), HIGH(Text16Message74)
    db LOW(Text16Message75), HIGH(Text16Message75)
    db LOW(Text16Message76), HIGH(Text16Message76)
    db LOW(Text16Message77), HIGH(Text16Message77)
    db LOW(Text16Message78), HIGH(Text16Message78)
    db LOW(Text16Message79), HIGH(Text16Message79)
    db LOW(Text16Message7A), HIGH(Text16Message7A)
    db LOW(Text16Message7B), HIGH(Text16Message7B)
    db LOW(Text16Message7C), HIGH(Text16Message7C)
    db LOW(Text16Message7D), HIGH(Text16Message7D)
    db LOW(Text16Message7E), HIGH(Text16Message7E)
    db LOW(Text16Message7F), HIGH(Text16Message7F)
; IT'S A SMALL FOUL-SMELLING CHAMBER.[END]
Text16Message00:
    INCBIN "../../res/text/US/banks/16.bin", $100, $24
; YOU DISCOVER THE / STUFF THAT WAS / TAKEN FROM YOU.[PAGE] / YOU CAREFULLY / CONSIDER WHAT TO / DO NEXT...[PAG...
Text16Message01:
    INCBIN "../../res/text/US/banks/16.bin", $124, $10
jr_016_4134:
    INCBIN "../../res/text/US/banks/16.bin", $134, $f
jr_016_4143:
    INCBIN "../../res/text/US/banks/16.bin", $143, $1c
jr_016_415f:
    INCBIN "../../res/text/US/banks/16.bin", $15f, $11
jr_016_4170:
    INCBIN "../../res/text/US/banks/16.bin", $170, $2a
jr_016_419a:
    INCBIN "../../res/text/US/banks/16.bin", $19a, $2
jr_016_419c:
    INCBIN "../../res/text/US/banks/16.bin", $19c, $26
jr_016_41c2:
    INCBIN "../../res/text/US/banks/16.bin", $1c2, $12
; SEWER FUMES WAFT / UP FROM THIS / CLOSED SHAFT.[END]
Text16Message02:
    INCBIN "../../res/text/US/banks/16.bin", $1d4, $2c
; IT'S A BARE / LIGHTBULB WITH A / CRACK IN IT.[END]
Text16Message03:
    INCBIN "../../res/text/US/banks/16.bin", $200, $2a
; THAT LEADS TO THE / CELLAR.[END]
Text16Message04:
    INCBIN "../../res/text/US/banks/16.bin", $22a, $1a
; IT'S A HIDDEN / CASINO. HEY, / AREN'T THESE / THINGS ILLEGAL / OUTSIDE OF NEVADA?[END]
Text16Message05:
    INCBIN "../../res/text/US/banks/16.bin", $244, $3f
jr_016_4283:
    INCBIN "../../res/text/US/banks/16.bin", $283, $b
; YOU BEGIN TO / SEARCH FOR THE / LITTLE BALL / USUALLY ASSOCIATEDWITH THESE TABLES.YOU FAIL TO FIND / ONE, HOW...
Text16Message06:
    INCBIN "../../res/text/US/banks/16.bin", $28e, $10
jr_016_429e:
    INCBIN "../../res/text/US/banks/16.bin", $29e, $3a
jr_016_42d8:
    INCBIN "../../res/text/US/banks/16.bin", $2d8, $1b
jr_016_42f3:
    INCBIN "../../res/text/US/banks/16.bin", $2f3, $6
; WELL, WELL- A SLOTMACHINE. DO YOU / FEEL LUCKY?[END]
Text16Message07:
    INCBIN "../../res/text/US/banks/16.bin", $2f9, $2e
jr_016_4327:
; YOUR DETECTIVE / SKILLS TELL YOU / THAT A KEY WOULD / PROBABLY OPEN THISUP![END]
Text16Message08:
    INCBIN "../../res/text/US/banks/16.bin", $327, $7
jr_016_432e:
    INCBIN "../../res/text/US/banks/16.bin", $32e, $9
jr_016_4337:
    INCBIN "../../res/text/US/banks/16.bin", $337, $17
jr_016_434e:
    INCBIN "../../res/text/US/banks/16.bin", $34e, $1d
jr_016_436b:
    INCBIN "../../res/text/US/banks/16.bin", $36b, $2
; THAT WOULD / PROBABLY BE THE / EASIEST WAY TO / OPEN IT UP![END]
Text16Message09:
    INCBIN "../../res/text/US/banks/16.bin", $36d, $36
; A DIARY IS HIDDEN / IN THIS MACHINE.[END]
Text16Message0A:
    INCBIN "../../res/text/US/banks/16.bin", $3a3, $b
jr_016_43ae:
    INCBIN "../../res/text/US/banks/16.bin", $3ae, $18
; IT DOESN'T APPEAR / THAT THIS SLOT / MACHINE HAS BEEN / USED IN QUITE A / WHILE.[END]
Text16Message0B:
    INCBIN "../../res/text/US/banks/16.bin", $3c6, $49
; THIS IS AN EMPTY / SLOT MACHINE.[END]
Text16Message0C:
    INCBIN "../../res/text/US/banks/16.bin", $40f, $1f
jr_016_442e:
; IT'S A BUSINESS / CARD THAT READS, / "SUGAR SHACK / 4117 S. COTTAGE / CHICAGO, IL"[PAGE] / YOU NOTICE THE / W...
Text16Message0D:
    INCBIN "../../res/text/US/banks/16.bin", $42e, $f
jr_016_443d:
    INCBIN "../../res/text/US/banks/16.bin", $43d, $10
jr_016_444d:
    INCBIN "../../res/text/US/banks/16.bin", $44d, $31
jr_016_447e:
    INCBIN "../../res/text/US/banks/16.bin", $47e, $4d
jr_016_44cb:
    INCBIN "../../res/text/US/banks/16.bin", $4cb, $2e
jr_016_44f9:
    INCBIN "../../res/text/US/banks/16.bin", $4f9, $2
jr_016_44fb:
    INCBIN "../../res/text/US/banks/16.bin", $4fb, $a
jr_016_4505:
    INCBIN "../../res/text/US/banks/16.bin", $505, $13
jr_016_4518:
    INCBIN "../../res/text/US/banks/16.bin", $518, $14
jr_016_452c:
    INCBIN "../../res/text/US/banks/16.bin", $52c, $1f
jr_016_454b:
    INCBIN "../../res/text/US/banks/16.bin", $54b, $1b
jr_016_4566:
    INCBIN "../../res/text/US/banks/16.bin", $566, $29
jr_016_458f:
    INCBIN "../../res/text/US/banks/16.bin", $58f, $3
; IT'S SIEGEL'S / PERSONAL DIARY.[END]
Text16Message0E:
    INCBIN "../../res/text/US/banks/16.bin", $592, $9
jr_016_459b:
    INCBIN "../../res/text/US/banks/16.bin", $59b, $15
; THE DIARY CONTAINSA LIST OF PAYMENTSFOR DIFFERENT / AMOUNTS. YOU STARTTO SCAN THE / PAGES...[PAGE] / MAR.24 -...
Text16Message0F:
    INCBIN "../../res/text/US/banks/16.bin", $5b0, $24
jr_016_45d4:
    INCBIN "../../res/text/US/banks/16.bin", $5d4, $8
jr_016_45dc:
    INCBIN "../../res/text/US/banks/16.bin", $5dc, $1f
jr_016_45fb:
    INCBIN "../../res/text/US/banks/16.bin", $5fb, $a
jr_016_4605:
    INCBIN "../../res/text/US/banks/16.bin", $605, $20
jr_016_4625:
    INCBIN "../../res/text/US/banks/16.bin", $625, $28
jr_016_464d:
    INCBIN "../../res/text/US/banks/16.bin", $64d, $11
jr_016_465e:
    INCBIN "../../res/text/US/banks/16.bin", $65e, $27
jr_016_4685:
    INCBIN "../../res/text/US/banks/16.bin", $685, $8
jr_016_468d:
    INCBIN "../../res/text/US/banks/16.bin", $68d, $2
jr_016_468f:
    INCBIN "../../res/text/US/banks/16.bin", $68f, $c
jr_016_469b:
    INCBIN "../../res/text/US/banks/16.bin", $69b, $d
jr_016_46a8:
    INCBIN "../../res/text/US/banks/16.bin", $6a8, $11
jr_016_46b9:
    INCBIN "../../res/text/US/banks/16.bin", $6b9, $9
jr_016_46c2:
    INCBIN "../../res/text/US/banks/16.bin", $6c2, $d
jr_016_46cf:
    INCBIN "../../res/text/US/banks/16.bin", $6cf, $c
jr_016_46db:
    INCBIN "../../res/text/US/banks/16.bin", $6db, $1
jr_016_46dc:
    INCBIN "../../res/text/US/banks/16.bin", $6dc, $19
jr_016_46f5:
    INCBIN "../../res/text/US/banks/16.bin", $6f5, $1
jr_016_46f6:
    INCBIN "../../res/text/US/banks/16.bin", $6f6, $4
jr_016_46fa:
    INCBIN "../../res/text/US/banks/16.bin", $6fa, $d
jr_016_4707:
    INCBIN "../../res/text/US/banks/16.bin", $707, $8
jr_016_470f:
    INCBIN "../../res/text/US/banks/16.bin", $70f, $1
jr_016_4710:
    INCBIN "../../res/text/US/banks/16.bin", $710, $d
jr_016_471d:
    INCBIN "../../res/text/US/banks/16.bin", $71d, $16
jr_016_4733:
    INCBIN "../../res/text/US/banks/16.bin", $733, $23
; THERE APPEARS TO / BE NO POWER TO THEELEVATOR.[END]
Text16Message10:
    INCBIN "../../res/text/US/banks/16.bin", $756, $11
jr_016_4767:
    INCBIN "../../res/text/US/banks/16.bin", $767, $1c
; YOU CURB YOUR / GAMBLING / TENDENCIES AND GETBACK TO THOUGHTS / ABOUT THE CASE.[END]
Text16Message11:
    INCBIN "../../res/text/US/banks/16.bin", $783, $10
jr_016_4793:
    INCBIN "../../res/text/US/banks/16.bin", $793, $9
jr_016_479c:
    INCBIN "../../res/text/US/banks/16.bin", $79c, $31
; A LEAD COIN IS / STUCK IN THE SLOT.THIS MACHINE WON'TWORK.[END]
Text16Message12:
    INCBIN "../../res/text/US/banks/16.bin", $7cd, $35
jr_016_4802:
    INCBIN "../../res/text/US/banks/16.bin", $802, $4
; YOU'RE IN THE / UPSTAIRS HALLWAY.[END]
Text16Message13:
    INCBIN "../../res/text/US/banks/16.bin", $806, $10
jr_016_4816:
    INCBIN "../../res/text/US/banks/16.bin", $816, $10
; IT'S A POSTER OF / YOU, IN YOUR EARLYYEARS AS A BOXER. / TRUTH TELL, YOU / WERE NEVER REALLY / THAT GOOD.[END]
Text16Message14:
    INCBIN "../../res/text/US/banks/16.bin", $826, $1f
jr_016_4845:
    INCBIN "../../res/text/US/banks/16.bin", $845, $a
jr_016_484f:
    INCBIN "../../res/text/US/banks/16.bin", $84f, $28
jr_016_4877:
    INCBIN "../../res/text/US/banks/16.bin", $877, $11
; IT'S A POSTER OF / "PUFF" MACMUFFIN. / NOBODY COULD TAKE / A DIVE AS / GRACEFULLY AS HE![END]
Text16Message15:
    INCBIN "../../res/text/US/banks/16.bin", $888, $1f
jr_016_48a7:
    INCBIN "../../res/text/US/banks/16.bin", $8a7, $25
jr_016_48cc:
    INCBIN "../../res/text/US/banks/16.bin", $8cc, $d
; IT'S A POSTER OF / "DOGHOUSE" RILEY- / A BOXER WHO WAS / NEVER REALLY TALL,THOUGH HE TRIED TOBE.[END]
Text16Message16:
    INCBIN "../../res/text/US/banks/16.bin", $8d9, $13
jr_016_48ec:
    INCBIN "../../res/text/US/banks/16.bin", $8ec, $30
jr_016_491c:
    INCBIN "../../res/text/US/banks/16.bin", $91c, $18
; A LARGE SIGN TELLSYOU THAT ONLY THE / PRIVILEGED MAY / ENTER HERE.[END]
Text16Message17:
    INCBIN "../../res/text/US/banks/16.bin", $934, $22
jr_016_4956:
    INCBIN "../../res/text/US/banks/16.bin", $956, $18
jr_016_496e:
    INCBIN "../../res/text/US/banks/16.bin", $96e, $5
; HERE'S THE STUFF / THEY TOOK OFF OF / YOU![PAGE] / YOU THINK YOU KNOWWHY THIS WAS SO / IMPORTANT TO THEM!IF M...
Text16Message18:
    INCBIN "../../res/text/US/banks/16.bin", $973, $11
jr_016_4984:
    INCBIN "../../res/text/US/banks/16.bin", $984, $1f
jr_016_49a3:
    INCBIN "../../res/text/US/banks/16.bin", $9a3, $7
jr_016_49aa:
    INCBIN "../../res/text/US/banks/16.bin", $9aa, $20
jr_016_49ca:
    INCBIN "../../res/text/US/banks/16.bin", $9ca, $28
; YOU'RE IN FRONT / OF THE POLICE / STATION.[END]
Text16Message19:
    INCBIN "../../res/text/US/banks/16.bin", $9f2, $10
jr_016_4a02:
    INCBIN "../../res/text/US/banks/16.bin", $a02, $e
jr_016_4a10:
    INCBIN "../../res/text/US/banks/16.bin", $a10, $1
jr_016_4a11:
    INCBIN "../../res/text/US/banks/16.bin", $a11, $8
; THAT'S A STYLISH / LAMP![END]
Text16Message1A:
    INCBIN "../../res/text/US/banks/16.bin", $a19, $17
; THE BANANA APPEARSTO BE RIPE.[END]
Text16Message1B:
    INCBIN "../../res/text/US/banks/16.bin", $a30, $1
jr_016_4a31:
    INCBIN "../../res/text/US/banks/16.bin", $a31, $7
jr_016_4a38:
    INCBIN "../../res/text/US/banks/16.bin", $a38, $16
; LOOKS LIKE THE / DOOR INTO THE / STATION.[END]
Text16Message1C:
    INCBIN "../../res/text/US/banks/16.bin", $a4e, $1f
jr_016_4a6d:
    INCBIN "../../res/text/US/banks/16.bin", $a6d, $7
; YOU'VE NEVER BEEN / MUCH OF A FRUIT / GUY.[END]
Text16Message1D:
    INCBIN "../../res/text/US/banks/16.bin", $a74, $10
jr_016_4a84:
    INCBIN "../../res/text/US/banks/16.bin", $a84, $17
; YOU GET LITTLE / HELP FROM THE / POLICE, WHO COULD / CARE LESS ABOUT / YOUR WILD STORIES.INSTEAD, THEY / DETA...
Text16Message1E:
    INCBIN "../../res/text/US/banks/16.bin", $a9b, $10
jr_016_4aab:
    INCBIN "../../res/text/US/banks/16.bin", $aab, $4a
jr_016_4af5:
    INCBIN "../../res/text/US/banks/16.bin", $af5, $1c
jr_016_4b11:
    INCBIN "../../res/text/US/banks/16.bin", $b11, $7
; VANDALIZING IS / BAD! VANDALIZING APOLICE STATION IS / BAD AND STUPID![PAGE] / THE COPS QUICKLY / COME OUT AN...
Text16Message1F:
    INCBIN "../../res/text/US/banks/16.bin", $b18, $1e
jr_016_4b36:
    INCBIN "../../res/text/US/banks/16.bin", $b36, $4f
; YOU REALIZE THAT / EVEN MONKEYS DON'TEAT THE PEELS.[END]
Text16Message20:
    INCBIN "../../res/text/US/banks/16.bin", $b85, $4
jr_016_4b89:
    INCBIN "../../res/text/US/banks/16.bin", $b89, $7
jr_016_4b90:
    INCBIN "../../res/text/US/banks/16.bin", $b90, $5
jr_016_4b95:
    INCBIN "../../res/text/US/banks/16.bin", $b95, $f
jr_016_4ba4:
    INCBIN "../../res/text/US/banks/16.bin", $ba4, $10
jr_016_4bb4:
    INCBIN "../../res/text/US/banks/16.bin", $bb4, $3
; THE TRAIN IS / RATHER WARM AND / STUFFY.[END]
Text16Message21:
    INCBIN "../../res/text/US/banks/16.bin", $bb7, $1f
jr_016_4bd6:
    INCBIN "../../res/text/US/banks/16.bin", $bd6, $6
; THERE ARE NO / PASSENGERS IN / THIS CAR.[END]
Text16Message22:
    INCBIN "../../res/text/US/banks/16.bin", $bdc, $25
; THIS SET OF TRAIN / SEATS IS DESIGNED / FOR MAXIMUM / COMFORT FOR LONG / TRAIN TRIPS.[END]
Text16Message23:
    INCBIN "../../res/text/US/banks/16.bin", $c01, $4e
; THE CLOSED BLINDS / PREVENT YOU FROM / SEEING OUTSIDE.[END]
Text16Message24:
    INCBIN "../../res/text/US/banks/16.bin", $c4f, $1f
jr_016_4c6e:
    INCBIN "../../res/text/US/banks/16.bin", $c6e, $b
jr_016_4c79:
    INCBIN "../../res/text/US/banks/16.bin", $c79, $9
; YOU CAN SEE OUT OFTHE WINDOW.[END]
Text16Message25:
    INCBIN "../../res/text/US/banks/16.bin", $c82, $10
jr_016_4c92:
    INCBIN "../../res/text/US/banks/16.bin", $c92, $e
; YOU DISCOVER / SOMETHING / INTERESTING![PAGE] / ALL THE PAYMENTS / FOR COURIER #0 / ADD UP TO... / $112,000![...
Text16Message26:
    INCBIN "../../res/text/US/banks/16.bin", $ca0, $10
jr_016_4cb0:
    INCBIN "../../res/text/US/banks/16.bin", $cb0, $f
jr_016_4cbf:
    INCBIN "../../res/text/US/banks/16.bin", $cbf, $1d
jr_016_4cdc:
    INCBIN "../../res/text/US/banks/16.bin", $cdc, $1f
; THE SIGN READS, / "NOT RESPONSIBLE / FOR LOST OR STOLENITEMS. /  -THE MANAGEMENT."[END]
Text16Message27:
    INCBIN "../../res/text/US/banks/16.bin", $cfb, $15
jr_016_4d10:
    INCBIN "../../res/text/US/banks/16.bin", $d10, $11
jr_016_4d21:
    INCBIN "../../res/text/US/banks/16.bin", $d21, $7
jr_016_4d28:
    INCBIN "../../res/text/US/banks/16.bin", $d28, $20
; THE CONDUCTOR / WAITS WITH A / GRUMPY LOOK ON / HIS FACE.[END]
Text16Message28:
    INCBIN "../../res/text/US/banks/16.bin", $d48, $a
jr_016_4d52:
    INCBIN "../../res/text/US/banks/16.bin", $d52, $1b
jr_016_4d6d:
    INCBIN "../../res/text/US/banks/16.bin", $d6d, $f
; WHAT A NAG. THAT / MOUTH IS GOING A / MILE-A-MINUTE![END]
Text16Message29:
    INCBIN "../../res/text/US/banks/16.bin", $d7c, $8
jr_016_4d84:
    INCBIN "../../res/text/US/banks/16.bin", $d84, $17
jr_016_4d9b:
    INCBIN "../../res/text/US/banks/16.bin", $d9b, $12
; THE POLICE TAKE A / DIM VIEW UPON / TROUBLEMAKERS LIKEYOU.[PAGE] / YOU ARE QUICKLY / ARRESTED FOR / DISTURBIN...
Text16Message2A:
    INCBIN "../../res/text/US/banks/16.bin", $dad, $47
jr_016_4df4:
    INCBIN "../../res/text/US/banks/16.bin", $df4, $c
jr_016_4e00:
    INCBIN "../../res/text/US/banks/16.bin", $e00, $11
jr_016_4e11:
    INCBIN "../../res/text/US/banks/16.bin", $e11, $6
; YOU'RE STANDING / OUTSIDE OF A / TENEMENT. THIS / PART OF TOWN IS SOBAD THAT EVEN THE / CHICAGO POLICE / STEE...
Text16Message2B:
    INCBIN "../../res/text/US/banks/16.bin", $e17, $10
jr_016_4e27:
    INCBIN "../../res/text/US/banks/16.bin", $e27, $f
jr_016_4e36:
    INCBIN "../../res/text/US/banks/16.bin", $e36, $22
jr_016_4e58:
    INCBIN "../../res/text/US/banks/16.bin", $e58, $2b
; THIS STREET RUNS / PAST SUGAR SHACK'SAPARTMENT.[END]
Text16Message2C:
    INCBIN "../../res/text/US/banks/16.bin", $e83, $2e
; YOU OUGHT TO BE / ASHAMED OF / YOURSELF, PEEPING / IN OTHER PEOPLE'S / WINDOWS.[END]
Text16Message2D:
    INCBIN "../../res/text/US/banks/16.bin", $eb1, $10
jr_016_4ec1:
    INCBIN "../../res/text/US/banks/16.bin", $ec1, $38
; IT'S A SMALL / BARRED WINDOW.[END]
Text16Message2E:
    INCBIN "../../res/text/US/banks/16.bin", $ef9, $1c
; FROM THE LOOK OF / THIS BUM, YOU / FIGURE HE MUST BE / THE NEIGHBORHOOD / LUSH![END]
Text16Message2F:
    INCBIN "../../res/text/US/banks/16.bin", $f15, $1f
jr_016_4f34:
    INCBIN "../../res/text/US/banks/16.bin", $f34, $c
jr_016_4f40:
    INCBIN "../../res/text/US/banks/16.bin", $f40, $1d
; IT'S THE FRONT / DOOR TO SUGAR / SHACK'S BASEMENT / APARTMENT.[PAGE] / IT HAS A CHEAP / LOCK ON IT.[END]
Text16Message30:
    INCBIN "../../res/text/US/banks/16.bin", $f5d, $54
; ANOTHER LOCK AND / AGAIN NO KEY![END]
Text16Message31:
    INCBIN "../../res/text/US/banks/16.bin", $fb1, $1
jr_016_4fb2:
    INCBIN "../../res/text/US/banks/16.bin", $fb2, $1e
; YOU WONDER IF / THERE IS ANY LINE / OF WORK IN THE / BREAKING AND / ENTERING / DEPARTMENT![END]
Text16Message32:
    INCBIN "../../res/text/US/banks/16.bin", $fd0, $10
jr_016_4fe0:
    INCBIN "../../res/text/US/banks/16.bin", $fe0, $41
; THE BUM JUST SITS / THERE ROCKING BACKAND FORTH MUMBLINGTO HIMSELF.[END]
Text16Message33:
    INCBIN "../../res/text/US/banks/16.bin", $1021, $42
;  THE BUM ON THE / SIDEWALK WRAPS / HIMSELF AROUND / YOUR LEG, BEGGING / FOR A NICKEL.[PAGE] / NOT ONLY IS THI...
Text16Message34:
    INCBIN "../../res/text/US/banks/16.bin", $1063, $1f
jr_016_5082:
    INCBIN "../../res/text/US/banks/16.bin", $1082, $1f
jr_016_50a1:
    INCBIN "../../res/text/US/banks/16.bin", $10a1, $33
jr_016_50d4:
    INCBIN "../../res/text/US/banks/16.bin", $10d4, $18
jr_016_50ec:
    INCBIN "../../res/text/US/banks/16.bin", $10ec, $9
; THE BUM SEEMS / STARTLED BY YOU![PAGE] / "WHAT'S THAT," HE / SLURS, "YOU WANT / TO BUY ME A / DINNER?!"[END]
Text16Message35:
    INCBIN "../../res/text/US/banks/16.bin", $10f5, $10
jr_016_5105:
    INCBIN "../../res/text/US/banks/16.bin", $1105, $1a
jr_016_511f:
    INCBIN "../../res/text/US/banks/16.bin", $111f, $2e
; "ALRIGHT, BUT I / WANT TO GO TO SOMEFANCY SCHMANCY / PLACE!" HE / FINISHES WITH A / BELCH![PAGE] / YOU DON'T ...
Text16Message36:
    INCBIN "../../res/text/US/banks/16.bin", $114d, $42
jr_016_518f:
    INCBIN "../../res/text/US/banks/16.bin", $118f, $21
jr_016_51b0:
    INCBIN "../../res/text/US/banks/16.bin", $11b0, $19
jr_016_51c9:
    INCBIN "../../res/text/US/banks/16.bin", $11c9, $a
jr_016_51d3:
    INCBIN "../../res/text/US/banks/16.bin", $11d3, $3
; YOU GIVE THE BUM / SOME MONEY.[PAGE] / SPRAYING SPITTLE / ALL OVER YOU, HE / SAYS, "GEE THANKS / PAL, I'LL GL...
Text16Message37:
    INCBIN "../../res/text/US/banks/16.bin", $11d6, $10
jr_016_51e6:
    INCBIN "../../res/text/US/banks/16.bin", $11e6, $2c
jr_016_5212:
    INCBIN "../../res/text/US/banks/16.bin", $1212, $19
jr_016_522b:
    INCBIN "../../res/text/US/banks/16.bin", $122b, $21
jr_016_524c:
    INCBIN "../../res/text/US/banks/16.bin", $124c, $8
; SOCKO![PAGE] / YOUR EXPERIENCE ASA BOXER USUALLY / SERVES YOU PRETTY / WELL, BUT THIS GUYDOESN'T FEEL A / THI...
Text16Message38:
    INCBIN "../../res/text/US/banks/16.bin", $1254, $1
jr_016_5255:
    INCBIN "../../res/text/US/banks/16.bin", $1255, $16
jr_016_526b:
    INCBIN "../../res/text/US/banks/16.bin", $126b, $e
jr_016_5279:
    INCBIN "../../res/text/US/banks/16.bin", $1279, $1b
jr_016_5294:
    INCBIN "../../res/text/US/banks/16.bin", $1294, $6
jr_016_529a:
    INCBIN "../../res/text/US/banks/16.bin", $129a, $b
jr_016_52a5:
    INCBIN "../../res/text/US/banks/16.bin", $12a5, $7
jr_016_52ac:
    INCBIN "../../res/text/US/banks/16.bin", $12ac, $27
jr_016_52d3:
    INCBIN "../../res/text/US/banks/16.bin", $12d3, $13
; THE BUM GRABS THE / FOOD AND CHOWS / DOWN. BOY, HE / MUST'VE BEEN / HUNGRY![END]
Text16Message39:
    INCBIN "../../res/text/US/banks/16.bin", $12e6, $1f
jr_016_5305:
    INCBIN "../../res/text/US/banks/16.bin", $1305, $22
jr_016_5327:
    INCBIN "../../res/text/US/banks/16.bin", $1327, $3
; THE MAN IS NODDINGOFF.[END]
Text16Message3A:
    INCBIN "../../res/text/US/banks/16.bin", $132a, $17
; SHE'S REALLY QUITEATTRACTIVE, ISN'T / SHE?[END]
Text16Message3B:
    INCBIN "../../res/text/US/banks/16.bin", $1341, $f
jr_016_5350:
    INCBIN "../../res/text/US/banks/16.bin", $1350, $18
jr_016_5368:
    INCBIN "../../res/text/US/banks/16.bin", $1368, $2
; THAT'S THE WAY TO / THE OTHER CAR.[END]
Text16Message3C:
    INCBIN "../../res/text/US/banks/16.bin", $136a, $21
; YOU'RE STANDING INSUGAR SHACK'S / PLACE...[PAGE] / WHAT A DUMP! THIS / PLACE MAKES THE / SEWERS LOOK GOOD![END]
Text16Message3D:
    INCBIN "../../res/text/US/banks/16.bin", $138b, $8
jr_016_5393:
    INCBIN "../../res/text/US/banks/16.bin", $1393, $8
jr_016_539b:
    INCBIN "../../res/text/US/banks/16.bin", $139b, $35
jr_016_53d0:
    INCBIN "../../res/text/US/banks/16.bin", $13d0, $2
jr_016_53d2:
    INCBIN "../../res/text/US/banks/16.bin", $13d2, $16
; THE SMELL OF CHEAPPERFUME FILLS THE / AIR.[END]
Text16Message3E:
    INCBIN "../../res/text/US/banks/16.bin", $13e8, $29
; THE WALL FIXTURE / PROVIDES MINIMAL / LIGHTING.[END]
Text16Message3F:
    INCBIN "../../res/text/US/banks/16.bin", $1411, $2c
; IT'S A WORN / MATTRESS. IT SAGS / IN THE MIDDLE FROMEXCESSIVE USE.[END]
Text16Message40:
    INCBIN "../../res/text/US/banks/16.bin", $143d, $30
jr_016_546d:
    INCBIN "../../res/text/US/banks/16.bin", $146d, $f
; IT'S A DRESSING / TABLE WHICH IS / STREAKED WITH / DUST.[END]
Text16Message41:
    INCBIN "../../res/text/US/banks/16.bin", $147c, $1f
jr_016_549b:
    INCBIN "../../res/text/US/banks/16.bin", $149b, $14
; THE THICK DUST ON / THIS NIGHT TABLE / MAKES YOUR NOSE / ITCH.[END]
Text16Message42:
    INCBIN "../../res/text/US/banks/16.bin", $14af, $1f
jr_016_54ce:
    INCBIN "../../res/text/US/banks/16.bin", $14ce, $1a
jr_016_54e8:
; IT'S A LARGE / CLOTHES WARDROBE.[PAGE] / A GLANCE IN THE / MIRROR, TELLS YOU / THAT YOU ARE NOT / IN ANY BETT...
Text16Message43:
    INCBIN "../../res/text/US/banks/16.bin", $14e8, $1f
jr_016_5507:
    INCBIN "../../res/text/US/banks/16.bin", $1507, $1c
jr_016_5523:
    INCBIN "../../res/text/US/banks/16.bin", $1523, $1b
jr_016_553e:
    INCBIN "../../res/text/US/banks/16.bin", $153e, $24
; THE JAGGED ANGLES / OF THE BUSTED / MIRROR FASCINATES / YOU.[END]
Text16Message44:
    INCBIN "../../res/text/US/banks/16.bin", $1562, $1f
jr_016_5581:
    INCBIN "../../res/text/US/banks/16.bin", $1581, $18
; BEYOND THAT DOOR / IS A TRAIN / PLATFORM.[END]
Text16Message45:
    INCBIN "../../res/text/US/banks/16.bin", $1599, $b
jr_016_55a4:
    INCBIN "../../res/text/US/banks/16.bin", $15a4, $14
jr_016_55b8:
    INCBIN "../../res/text/US/banks/16.bin", $15b8, $7
; IT'S A TISSUE.[PAGE] / YOU KNOW HOW TO / USE IT- JUST PUT / IT TO YOUR NOSE / AND BLOW.[END]
Text16Message46:
    INCBIN "../../res/text/US/banks/16.bin", $15bf, $1f
jr_016_55de:
    INCBIN "../../res/text/US/banks/16.bin", $15de, $c
jr_016_55ea:
    INCBIN "../../res/text/US/banks/16.bin", $15ea, $1f
; IT'S A USED / TISSUE.[END]
Text16Message47:
    INCBIN "../../res/text/US/banks/16.bin", $1609, $14
; THAT PILLOW HAS / SEEN BETTER DAYS.[END]
Text16Message48:
    INCBIN "../../res/text/US/banks/16.bin", $161d, $22
; IT'S A BOTTLE OF / SUGAR'S FAVORITE / PERFUME, "ODE DU / PIERE."[END]
Text16Message49:
    INCBIN "../../res/text/US/banks/16.bin", $163f, $10
jr_016_564f:
    INCBIN "../../res/text/US/banks/16.bin", $164f, $2b
; THIS PAPER IS / OPENED TO THE / OBITUARIES. YOU / NOTICE THAT SUGAR / SHACK SEEMS TO / HAVE CUT ONE OUT.[END]
Text16Message4A:
    INCBIN "../../res/text/US/banks/16.bin", $167a, $25
jr_016_569f:
    INCBIN "../../res/text/US/banks/16.bin", $169f, $13
jr_016_56b2:
    INCBIN "../../res/text/US/banks/16.bin", $16b2, $a
jr_016_56bc:
    INCBIN "../../res/text/US/banks/16.bin", $16bc, $1d
; THIS SURE IS A / SLINKY DRESS! YOU / FIND IT ATTRACTIVEIN A GARISH SORT / OF WAY.[END]
Text16Message4B:
    INCBIN "../../res/text/US/banks/16.bin", $16d9, $1f
jr_016_56f8:
    INCBIN "../../res/text/US/banks/16.bin", $16f8, $11
jr_016_5709:
    INCBIN "../../res/text/US/banks/16.bin", $1709, $1c
; IT'S A PILE OF / SUGAR SHACK'S / DIRTY CLOTHES. YOUFIGURE TODAY IS / NOT WASH DAY![END]
Text16Message4C:
    INCBIN "../../res/text/US/banks/16.bin", $1725, $3c
jr_016_5761:
    INCBIN "../../res/text/US/banks/16.bin", $1761, $a
jr_016_576b:
    INCBIN "../../res/text/US/banks/16.bin", $176b, $7
; SWISH![END]
Text16Message4D:
    INCBIN "../../res/text/US/banks/16.bin", $1772, $7
; IT'S A LETTER FROMPOLICEMAN MCMURPHYTHAT READS...[PAGE] / "CONSIDER THIS A / DEATH BED / TESTIMONY, CAUSE / I...
Text16Message4E:
    INCBIN "../../res/text/US/banks/16.bin", $1779, $1f
jr_016_5798:
    INCBIN "../../res/text/US/banks/16.bin", $1798, $2f
jr_016_57c7:
    INCBIN "../../res/text/US/banks/16.bin", $17c7, $2
jr_016_57c9:
    INCBIN "../../res/text/US/banks/16.bin", $17c9, $2c
jr_016_57f5:
    INCBIN "../../res/text/US/banks/16.bin", $17f5, $99
jr_016_588e:
    INCBIN "../../res/text/US/banks/16.bin", $188e, $1
jr_016_588f:
    INCBIN "../../res/text/US/banks/16.bin", $188f, $55
jr_016_58e4:
    INCBIN "../../res/text/US/banks/16.bin", $18e4, $24
jr_016_5908:
    INCBIN "../../res/text/US/banks/16.bin", $1908, $35
jr_016_593d:
    INCBIN "../../res/text/US/banks/16.bin", $193d, $61
jr_016_599e:
    INCBIN "../../res/text/US/banks/16.bin", $199e, $12
; IT'S A COPPER'S / UNIFORM![PAGE] / CLOSE EXAMINATION / REVEALS THAT THE / OWNER IS NONE / OTHER THAN SGT. / M...
Text16Message4F:
    INCBIN "../../res/text/US/banks/16.bin", $19b0, $77
jr_016_5a27:
    INCBIN "../../res/text/US/banks/16.bin", $1a27, $1b
jr_016_5a42:
    INCBIN "../../res/text/US/banks/16.bin", $1a42, $e
; YOU THROW A FIERCEJAB![END]
Text16Message50:
    INCBIN "../../res/text/US/banks/16.bin", $1a50, $10
jr_016_5a60:
    INCBIN "../../res/text/US/banks/16.bin", $1a60, $7
; SUDDENLY YOU'RE / SAILING THROUGH / THE AIR! A JOLT OFPAIN HITS YOU AS / YOU LAND HARD ON / THE PLATFORM.[END]
Text16Message51:
    INCBIN "../../res/text/US/banks/16.bin", $1a67, $19
jr_016_5a80:
    INCBIN "../../res/text/US/banks/16.bin", $1a80, $a
jr_016_5a8a:
    INCBIN "../../res/text/US/banks/16.bin", $1a8a, $29
jr_016_5ab3:
    INCBIN "../../res/text/US/banks/16.bin", $1ab3, $7
jr_016_5aba:
    INCBIN "../../res/text/US/banks/16.bin", $1aba, $f
; "DON'T YOU HAVE / ANY RESPECT FOR / YER ELDERS! BOY, / KIDS NOWADAYS! / ASSAULTING A / HARMLESS OLD / CONDUCT...
Text16Message52:
    INCBIN "../../res/text/US/banks/16.bin", $1ac9, $17
jr_016_5ae0:
    INCBIN "../../res/text/US/banks/16.bin", $1ae0, $8
jr_016_5ae8:
    INCBIN "../../res/text/US/banks/16.bin", $1ae8, $7
jr_016_5aef:
    INCBIN "../../res/text/US/banks/16.bin", $1aef, $6e
; YOU MUMBLE / UNCONVINCINGLY / "IT'S A NICE DAY, / ISN'T IT?"[END]
Text16Message53:
    INCBIN "../../res/text/US/banks/16.bin", $1b5d, $10
jr_016_5b6d:
    INCBIN "../../res/text/US/banks/16.bin", $1b6d, $27
jr_016_5b94:
; IT LOOKS LIKE A / BUNCH OF BANK / DEPOSIT SLIPS / BUNDLED TOGETHER / WITH A RUBBER / BAND.[END]
Text16Message54:
    INCBIN "../../res/text/US/banks/16.bin", $1b94, $19
jr_016_5bad:
    INCBIN "../../res/text/US/banks/16.bin", $1bad, $38
; THERE ARE FOUR / BANK DEPOSIT SLIPSSTAPLED TOGETHER.[PAGE] / THE DATES AND / AMOUNTS ON THE / SLIPS ARE:[PAGE...
Text16Message55:
    INCBIN "../../res/text/US/banks/16.bin", $1be5, $9b
; WHOA, DEJA VU... / HAVEN'T YOU SEEN / THIS BEFORE?[END]
Text16Message56:
    INCBIN "../../res/text/US/banks/16.bin", $1c80, $d
jr_016_5c8d:
    INCBIN "../../res/text/US/banks/16.bin", $1c8d, $12
jr_016_5c9f:
    INCBIN "../../res/text/US/banks/16.bin", $1c9f, $10
jr_016_5caf:
; IT'S A BRAND NEW / VACUUM CLEANER.[END]
Text16Message57:
    INCBIN "../../res/text/US/banks/16.bin", $1caf, $21
; IT HAS A / DISPOSABLE BAG.[END]
Text16Message58:
    INCBIN "../../res/text/US/banks/16.bin", $1cd0, $19
; YOU CAN'T GET A / WORD IN EDGEWISE![END]
Text16Message59:
    INCBIN "../../res/text/US/banks/16.bin", $1ce9, $10
jr_016_5cf9:
    INCBIN "../../res/text/US/banks/16.bin", $1cf9, $f
jr_016_5d08:
    INCBIN "../../res/text/US/banks/16.bin", $1d08, $3
; YOU WONDER IF / SUGAR KNOWS WHAT / TO DO WITH A / VACUUM CLEANER?[END]
Text16Message5A:
    INCBIN "../../res/text/US/banks/16.bin", $1d0b, $10
jr_016_5d1b:
    INCBIN "../../res/text/US/banks/16.bin", $1d1b, $2c
; IT'S A FULL VACUUMCLEANER BAG![PAGE] / IT CERTAINLY / DIDN'T CLEAN THIS / ROOM. THERE'S / FILTH EVERYWHERE![END]
Text16Message5B:
    INCBIN "../../res/text/US/banks/16.bin", $1d47, $5e
jr_016_5da5:
; IT'S A VACUUM / CLEANER BAG WITH ABIG GASH IN IT.[END]
Text16Message5C:
    INCBIN "../../res/text/US/banks/16.bin", $1da5, $30
; THERE'S A NOTE / SCRIBBLED ON THE / ENVELOPE, IT / READS,[PAGE] / "SUGAR, IF I'M / KNOCKED OFF, GIVE / THIS T...
Text16Message5D:
    INCBIN "../../res/text/US/banks/16.bin", $1dd5, $8e
jr_016_5e63:
    INCBIN "../../res/text/US/banks/16.bin", $1e63, $10
; YOU CAN'T OPEN IT / WITH YOUR BARE / HANDS.[END]
Text16Message5E:
    INCBIN "../../res/text/US/banks/16.bin", $1e73, $28
; HE PAYS YOU NO / ATTENTION, INSTEADHE NODS TO THE / WOMAN WITH A / VACANT, GLAZED / LOOK IN HIS EYES.[END]
Text16Message5F:
    INCBIN "../../res/text/US/banks/16.bin", $1e9b, $18
jr_016_5eb3:
    INCBIN "../../res/text/US/banks/16.bin", $1eb3, $1
jr_016_5eb4:
    INCBIN "../../res/text/US/banks/16.bin", $1eb4, $6
jr_016_5eba:
    INCBIN "../../res/text/US/banks/16.bin", $1eba, $3f
; HONK![PAGE] / YOU BLEW YOUR / NOSE.[END]
Text16Message60:
    INCBIN "../../res/text/US/banks/16.bin", $1ef9, $1
jr_016_5efa:
    INCBIN "../../res/text/US/banks/16.bin", $1efa, $19
; YOU'VE HEARD OF / HAVING FIBER IN / YOUR DIET... BUT / THAT'S RIDICULOUS![END]
Text16Message61:
    INCBIN "../../res/text/US/banks/16.bin", $1f13, $5
jr_016_5f18:
    INCBIN "../../res/text/US/banks/16.bin", $1f18, $b
jr_016_5f23:
    INCBIN "../../res/text/US/banks/16.bin", $1f23, $f
jr_016_5f32:
    INCBIN "../../res/text/US/banks/16.bin", $1f32, $11
jr_016_5f43:
    INCBIN "../../res/text/US/banks/16.bin", $1f43, $14
; NO THANKS, YOU'LL / PASS ON THAT![END]
Text16Message62:
    INCBIN "../../res/text/US/banks/16.bin", $1f57, $3
jr_016_5f5a:
    INCBIN "../../res/text/US/banks/16.bin", $1f5a, $4
jr_016_5f5e:
    INCBIN "../../res/text/US/banks/16.bin", $1f5e, $14
jr_016_5f72:
    INCBIN "../../res/text/US/banks/16.bin", $1f72, $5
; YOU LIE DOWN ON / THE BED FOR A / MOMENT.[PAGE] / AFTER A MOMENT, / YOU BEGIN TO / ITCH...[PAGE] / YOU QUICKL...
Text16Message63:
    INCBIN "../../res/text/US/banks/16.bin", $1f77, $10
jr_016_5f87:
    INCBIN "../../res/text/US/banks/16.bin", $1f87, $36
jr_016_5fbd:
    INCBIN "../../res/text/US/banks/16.bin", $1fbd, $15
jr_016_5fd2:
    INCBIN "../../res/text/US/banks/16.bin", $1fd2, $c
jr_016_5fde:
    INCBIN "../../res/text/US/banks/16.bin", $1fde, $a
jr_016_5fe8:
    INCBIN "../../res/text/US/banks/16.bin", $1fe8, $11
jr_016_5ff9:
    INCBIN "../../res/text/US/banks/16.bin", $1ff9, $10
; HMM, NOT TOO BAD! / ADD A LITTLE / LIPSTICK, SOME / ROUGE...[PAGE] / YEP, ACE, YOU / WOULD HAVE MADE / QUITE ...
Text16Message64:
    INCBIN "../../res/text/US/banks/16.bin", $2009, $3d
jr_016_6046:
    INCBIN "../../res/text/US/banks/16.bin", $2046, $14
jr_016_605a:
    INCBIN "../../res/text/US/banks/16.bin", $205a, $2
jr_016_605c:
    INCBIN "../../res/text/US/banks/16.bin", $205c, $2
jr_016_605e:
    INCBIN "../../res/text/US/banks/16.bin", $205e, $e
; GULP! YEECH![PAGE] / YOUR TONGUE NOW / SMELLS LIKE A / BORDELLO![END]
Text16Message65:
    INCBIN "../../res/text/US/banks/16.bin", $206c, $c
jr_016_6078:
    INCBIN "../../res/text/US/banks/16.bin", $2078, $11
jr_016_6089:
    INCBIN "../../res/text/US/banks/16.bin", $2089, $18
; YOU TRY TO THINK / OF SOME CLEVER / OPENING LINE, BUT / WORDS ESCAPE YOU.[END]
Text16Message66:
    INCBIN "../../res/text/US/banks/16.bin", $20a1, $10
jr_016_60b1:
    INCBIN "../../res/text/US/banks/16.bin", $20b1, $34
; THE VACUUM DOESN'TWORK. STRANGELY / ENOUGH, YOU SEE NOPLUG![END]
Text16Message67:
    INCBIN "../../res/text/US/banks/16.bin", $20e5, $b
jr_016_60f0:
    INCBIN "../../res/text/US/banks/16.bin", $20f0, $14
jr_016_6104:
    INCBIN "../../res/text/US/banks/16.bin", $2104, $1b
jr_016_611f:
; YOU SLASH OPEN THEBAG WITH THE / KNIFE.[END]
Text16Message68:
    INCBIN "../../res/text/US/banks/16.bin", $211f, $5
jr_016_6124:
    INCBIN "../../res/text/US/banks/16.bin", $2124, $b
jr_016_612f:
    INCBIN "../../res/text/US/banks/16.bin", $212f, $16
; THE BAG'S A LOST / CAUSE, YOU CAN'T / FIX IT NOW...[END]
Text16Message69:
    INCBIN "../../res/text/US/banks/16.bin", $2145, $1f
jr_016_6164:
    INCBIN "../../res/text/US/banks/16.bin", $2164, $11
; IT WOULDN'T FIT / YOU, BESIDES THE / COLOR WOULD DO / NOTHING FOR YOU![END]
Text16Message6A:
    INCBIN "../../res/text/US/banks/16.bin", $2175, $1e
jr_016_6193:
    INCBIN "../../res/text/US/banks/16.bin", $2193, $1
jr_016_6194:
    INCBIN "../../res/text/US/banks/16.bin", $2194, $1
jr_016_6195:
    INCBIN "../../res/text/US/banks/16.bin", $2195, $21
; SHE PROBABLY / THINKS YOU'RE SOMESORT OF WEIRDO.[END]
Text16Message6B:
    INCBIN "../../res/text/US/banks/16.bin", $21b6, $24
jr_016_61da:
    INCBIN "../../res/text/US/banks/16.bin", $21da, $b
; THIS POLICE / UNIFORM SEEMS / LOOSE AND BAGGY ONYOU.[END]
Text16Message6C:
    INCBIN "../../res/text/US/banks/16.bin", $21e5, $31
; THE COP, THINKING / YOU ARE A COMRADE,COMES OVER AND / STARTS TO ASK IF / YOU GOT YOUR / WEEKLY PAY-OFF / YET...
Text16Message6D:
    INCBIN "../../res/text/US/banks/16.bin", $2216, $b
jr_016_6221:
    INCBIN "../../res/text/US/banks/16.bin", $2221, $14
jr_016_6235:
    INCBIN "../../res/text/US/banks/16.bin", $2235, $3
jr_016_6238:
    INCBIN "../../res/text/US/banks/16.bin", $2238, $32
jr_016_626a:
    INCBIN "../../res/text/US/banks/16.bin", $226a, $8
jr_016_6272:
    INCBIN "../../res/text/US/banks/16.bin", $2272, $a
jr_016_627c:
    INCBIN "../../res/text/US/banks/16.bin", $227c, $c
jr_016_6288:
    INCBIN "../../res/text/US/banks/16.bin", $2288, $b
jr_016_6293:
    INCBIN "../../res/text/US/banks/16.bin", $2293, $4
jr_016_6297:
    INCBIN "../../res/text/US/banks/16.bin", $2297, $50
jr_016_62e7:
    INCBIN "../../res/text/US/banks/16.bin", $22e7, $5b
jr_016_6342:
    INCBIN "../../res/text/US/banks/16.bin", $2342, $2
jr_016_6344:
    INCBIN "../../res/text/US/banks/16.bin", $2344, $12
jr_016_6356:
    INCBIN "../../res/text/US/banks/16.bin", $2356, $28
jr_016_637e:
    INCBIN "../../res/text/US/banks/16.bin", $237e, $7
jr_016_6385:
    INCBIN "../../res/text/US/banks/16.bin", $2385, $8
; HE COLLECTS THE / FARE AND SAYS,[END]
Text16Message6E:
    INCBIN "../../res/text/US/banks/16.bin", $238d, $1f
; "THANKS AND MAKE / YOURSELF / COMFORTABLE.[PAGE] / THE TRAIN WILL BE / LEAVING SHORTLY."[END]
Text16Message6F:
    INCBIN "../../res/text/US/banks/16.bin", $23ac, $10
jr_016_63bc:
    INCBIN "../../res/text/US/banks/16.bin", $23bc, $11
jr_016_63cd:
    INCBIN "../../res/text/US/banks/16.bin", $23cd, $22
jr_016_63ef:
    INCBIN "../../res/text/US/banks/16.bin", $23ef, $8
; IF YOU CAN DO THATAND REVEAL / VENTINI'S SCHEME / TO MALONE AND / SOMEHOW GET OUT OFTOWN SAFELY... [PAGE] / Y...
Text16Message70:
    INCBIN "../../res/text/US/banks/16.bin", $23f7, $13
jr_016_640a:
    INCBIN "../../res/text/US/banks/16.bin", $240a, $b
jr_016_6415:
    INCBIN "../../res/text/US/banks/16.bin", $2415, $5c
jr_016_6471:
    INCBIN "../../res/text/US/banks/16.bin", $2471, $2
jr_016_6473:
    INCBIN "../../res/text/US/banks/16.bin", $2473, $1
; YOU'RE IN FRONT OFCHICAGO'S CITY / MORGUE.[END]
Text16Message71:
    INCBIN "../../res/text/US/banks/16.bin", $2474, $3
jr_016_6477:
    INCBIN "../../res/text/US/banks/16.bin", $2477, $d
jr_016_6484:
    INCBIN "../../res/text/US/banks/16.bin", $2484, $19
; "SIR... THIS ISN'TENOUGH..."[END]
Text16Message72:
    INCBIN "../../res/text/US/banks/16.bin", $249d, $1d
; THE SIGN PAINTED / ABOVE THE DOORWAY / READS, "CITY / MORGUE."[END]
Text16Message73:
    INCBIN "../../res/text/US/banks/16.bin", $24ba, $2
jr_016_64bc:
    INCBIN "../../res/text/US/banks/16.bin", $24bc, $8
jr_016_64c4:
    INCBIN "../../res/text/US/banks/16.bin", $24c4, $2f
; "IF YOU'VE GOT NO / CASH, THEN YOU / CAN'T RIDE THE / TRAIN!"[PAGE] / WITH THAT THE OLD / MAN KICKS YOU OFF /...
Text16Message74:
    INCBIN "../../res/text/US/banks/16.bin", $24f3, $7
jr_016_64fa:
    INCBIN "../../res/text/US/banks/16.bin", $24fa, $d
jr_016_6507:
    INCBIN "../../res/text/US/banks/16.bin", $2507, $11
jr_016_6518:
    INCBIN "../../res/text/US/banks/16.bin", $2518, $8
jr_016_6520:
    INCBIN "../../res/text/US/banks/16.bin", $2520, $37
jr_016_6557:
    INCBIN "../../res/text/US/banks/16.bin", $2557, $3
; THE MORGUE CLERK / SITS SILENTLY / BEHIND HIS DESK.[END]
Text16Message75:
    INCBIN "../../res/text/US/banks/16.bin", $255a, $30
; A NUMBER OF / CLIPPINGS ARE / TACKED ONTO THE / WALL. YOU READ A / FEW OF THEM...[PAGE] / "-LENNY "THE /     ...
Text16Message76:
    INCBIN "../../res/text/US/banks/16.bin", $258a, $c
jr_016_6596:
    INCBIN "../../res/text/US/banks/16.bin", $2596, $13
jr_016_65a9:
    INCBIN "../../res/text/US/banks/16.bin", $25a9, $2b
jr_016_65d4:
    INCBIN "../../res/text/US/banks/16.bin", $25d4, $1c
jr_016_65f0:
    INCBIN "../../res/text/US/banks/16.bin", $25f0, $2
jr_016_65f2:
    INCBIN "../../res/text/US/banks/16.bin", $25f2, $4
jr_016_65f6:
    INCBIN "../../res/text/US/banks/16.bin", $25f6, $4f
jr_016_6645:
    INCBIN "../../res/text/US/banks/16.bin", $2645, $2
jr_016_6647:
    INCBIN "../../res/text/US/banks/16.bin", $2647, $7
jr_016_664e:
    INCBIN "../../res/text/US/banks/16.bin", $264e, $3d
jr_016_668b:
    INCBIN "../../res/text/US/banks/16.bin", $268b, $1a
jr_016_66a5:
    INCBIN "../../res/text/US/banks/16.bin", $26a5, $1f
jr_016_66c4:
    INCBIN "../../res/text/US/banks/16.bin", $26c4, $28
jr_016_66ec:
    INCBIN "../../res/text/US/banks/16.bin", $26ec, $35
; THE CONDUCTOR / LOOKS IMPATIENT.[END]
Text16Message77:
    INCBIN "../../res/text/US/banks/16.bin", $2721, $1f
; THIS COUNTER IS / SMUDGED. WHO KNOWSWHAT IT'S GOT ON / IT.[END]
Text16Message78:
    INCBIN "../../res/text/US/banks/16.bin", $2740, $6
jr_016_6746:
    INCBIN "../../res/text/US/banks/16.bin", $2746, $19
jr_016_675f:
    INCBIN "../../res/text/US/banks/16.bin", $275f, $14
jr_016_6773:
    INCBIN "../../res/text/US/banks/16.bin", $2773, $4
; IT'S A SMALL GATE / TO THE BACK OF THEMORGUE.[END]
Text16Message79:
    INCBIN "../../res/text/US/banks/16.bin", $2777, $2c
; THE SIGN OVER THE / DOOR READS, / "AUTHORIZED / PERSONNEL ONLY."[END]
Text16Message7A:
    INCBIN "../../res/text/US/banks/16.bin", $27a3, $3b
; YOU SHUDDER AS YOUNOTICE THE TITLE / OF THE BOOK HE'S / READING, "MURDER / IN THE RUE MORGUE"BY EDGAR ALLEN /...
Text16Message7B:
    INCBIN "../../res/text/US/banks/16.bin", $27de, $1e
jr_016_67fc:
    INCBIN "../../res/text/US/banks/16.bin", $27fc, $4d
; YOU FIGURE THIS / KEY MAY BELONG TO / BONDWELL'S HOUSE. / ALTHOUGH, YOU / COULD BE WRONG.[END]
Text16Message7C:
    INCBIN "../../res/text/US/banks/16.bin", $2849, $10
jr_016_6859:
    INCBIN "../../res/text/US/banks/16.bin", $2859, $1e
jr_016_6877:
    INCBIN "../../res/text/US/banks/16.bin", $2877, $4
jr_016_687b:
    INCBIN "../../res/text/US/banks/16.bin", $287b, $1f
jr_016_689a:
    INCBIN "../../res/text/US/banks/16.bin", $289a, $1
; "ATTENTION ALL / PASSENGERS, THE / TRAIN WILL SOON BEDEPARTING..."[END]
Text16Message7D:
    INCBIN "../../res/text/US/banks/16.bin", $289b, $3f
; "IF YOU DON'T / PAY THE FARE, THENYOU'LL HAVE TO GETOFF THE TRAIN!"[END]
Text16Message7E:
    INCBIN "../../res/text/US/banks/16.bin", $28da, $14
jr_016_68ee:
    INCBIN "../../res/text/US/banks/16.bin", $28ee, $a
jr_016_68f8:
    INCBIN "../../res/text/US/banks/16.bin", $28f8, $e
jr_016_6906:
    INCBIN "../../res/text/US/banks/16.bin", $2906, $16
; YOU ARE UNABLE TO / MAKE OUT THE / ADDRESS ON / BONDWELL'S DRIVERSLICENSE.[END]
Text16Message7F:
    INCBIN "../../res/text/US/banks/16.bin", $291c, $10
jr_016_692c:
    INCBIN "../../res/text/US/banks/16.bin", $292c, $54
jr_016_6980:
    INCBIN "../../res/text/US/banks/16.bin", $2980, $1680
