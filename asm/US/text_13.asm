; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text13Msgs0:
    db LOW(Text13Message00), HIGH(Text13Message00)
    db LOW(Text13Message01), HIGH(Text13Message01)
    db LOW(Text13Message02), HIGH(Text13Message02)
    db LOW(Text13Message03), HIGH(Text13Message03)
    db LOW(Text13Message04), HIGH(Text13Message04)
    db LOW(Text13Message05), HIGH(Text13Message05)
    db LOW(Text13Message06), HIGH(Text13Message06)
    db LOW(Text13Message07), HIGH(Text13Message07)
    db LOW(Text13Message08), HIGH(Text13Message08)
    db LOW(Text13Message09), HIGH(Text13Message09)
    db LOW(Text13Message0A), HIGH(Text13Message0A)
    db LOW(Text13Message0B), HIGH(Text13Message0B)
    db LOW(Text13Message0C), HIGH(Text13Message0C)
    db LOW(Text13Message0D), HIGH(Text13Message0D)
    db LOW(Text13Message0E), HIGH(Text13Message0E)
    db LOW(Text13Message0F), HIGH(Text13Message0F)
    db LOW(Text13Message10), HIGH(Text13Message10)
    db LOW(Text13Message11), HIGH(Text13Message11)
    db LOW(Text13Message12), HIGH(Text13Message12)
    db LOW(Text13Message13), HIGH(Text13Message13)
    db LOW(Text13Message14), HIGH(Text13Message14)
    db LOW(Text13Message15), HIGH(Text13Message15)
    db LOW(Text13Message16), HIGH(Text13Message16)
    db LOW(Text13Message17), HIGH(Text13Message17)
    db LOW(Text13Message18), HIGH(Text13Message18)
    db LOW(Text13Message19), HIGH(Text13Message19)
    db LOW(Text13Message1A), HIGH(Text13Message1A)
    db LOW(Text13Message1B), HIGH(Text13Message1B)
    db LOW(Text13Message1C), HIGH(Text13Message1C)
    db LOW(Text13Message1D), HIGH(Text13Message1D)
    db LOW(Text13Message1E), HIGH(Text13Message1E)
    db LOW(Text13Message1F), HIGH(Text13Message1F)
    db LOW(Text13Message20), HIGH(Text13Message20)
    db LOW(Text13Message21), HIGH(Text13Message21)
    db LOW(Text13Message22), HIGH(Text13Message22)
    db LOW(Text13Message23), HIGH(Text13Message23)
    db LOW(Text13Message24), HIGH(Text13Message24)
    db LOW(Text13Message25), HIGH(Text13Message25)
    db LOW(Text13Message26), HIGH(Text13Message26)
    db LOW(Text13Message27), HIGH(Text13Message27)
    db LOW(Text13Message28), HIGH(Text13Message28)
    db LOW(Text13Message29), HIGH(Text13Message29)
    db LOW(Text13Message2A), HIGH(Text13Message2A)
    db LOW(Text13Message2B), HIGH(Text13Message2B)
    db LOW(Text13Message2C), HIGH(Text13Message2C)
    db LOW(Text13Message2D), HIGH(Text13Message2D)
    db LOW(Text13Message2E), HIGH(Text13Message2E)
    db LOW(Text13Message2F), HIGH(Text13Message2F)
    db LOW(Text13Message30), HIGH(Text13Message30)
    db LOW(Text13Message31), HIGH(Text13Message31)
    db LOW(Text13Message32), HIGH(Text13Message32)
    db LOW(Text13Message33), HIGH(Text13Message33)
    db LOW(Text13Message34), HIGH(Text13Message34)
    db LOW(Text13Message35), HIGH(Text13Message35)
    db LOW(Text13Message36), HIGH(Text13Message36)
    db LOW(Text13Message37), HIGH(Text13Message37)
    db LOW(Text13Message38), HIGH(Text13Message38)
jr_013_4072:
    db LOW(Text13Message39), HIGH(Text13Message39)
    db LOW(Text13Message3A), HIGH(Text13Message3A)
    db LOW(Text13Message3B), HIGH(Text13Message3B)
    db LOW(Text13Message3C), HIGH(Text13Message3C)
    db LOW(Text13Message3D), HIGH(Text13Message3D)
    db LOW(Text13Message3E), HIGH(Text13Message3E)
    db LOW(Text13Message3F), HIGH(Text13Message3F)
; Sixty-four message pointers for one text group.
Text13Msgs1:
    db LOW(Text13Message40), HIGH(Text13Message40)
    db LOW(Text13Message41), HIGH(Text13Message41)
    db LOW(Text13Message42), HIGH(Text13Message42)
    db LOW(Text13Message43), HIGH(Text13Message43)
    db LOW(Text13Message44), HIGH(Text13Message44)
    db LOW(Text13Message45), HIGH(Text13Message45)
    db LOW(Text13Message46), HIGH(Text13Message46)
    db LOW(Text13Message47), HIGH(Text13Message47)
    db LOW(Text13Message48), HIGH(Text13Message48)
    db LOW(Text13Message49), HIGH(Text13Message49)
    db LOW(Text13Message4A), HIGH(Text13Message4A)
    db LOW(Text13Message4B), HIGH(Text13Message4B)
    db LOW(Text13Message4C), HIGH(Text13Message4C)
    db LOW(Text13Message4D), HIGH(Text13Message4D)
    db LOW(Text13Message4E), HIGH(Text13Message4E)
    db LOW(Text13Message4F), HIGH(Text13Message4F)
    db LOW(Text13Message50), HIGH(Text13Message50)
    db LOW(Text13Message51), HIGH(Text13Message51)
    db LOW(Text13Message52), HIGH(Text13Message52)
    db LOW(Text13Message53), HIGH(Text13Message53)
jr_013_40a8:
    db LOW(Text13Message54), HIGH(Text13Message54)
    db LOW(Text13Message55), HIGH(Text13Message55)
    db LOW(Text13Message56), HIGH(Text13Message56)
    db LOW(Text13Message57), HIGH(Text13Message57)
    db LOW(Text13Message58), HIGH(Text13Message58)
    db LOW(Text13Message59), HIGH(Text13Message59)
    db LOW(Text13Message5A), HIGH(Text13Message5A)
    db LOW(Text13Message5B), HIGH(Text13Message5B)
    db LOW(Text13Message5C), HIGH(Text13Message5C)
    db LOW(Text13Message5D), HIGH(Text13Message5D)
    db LOW(Text13Message5E), HIGH(Text13Message5E)
    db LOW(Text13Message5F), HIGH(Text13Message5F)
    db LOW(Text13Message60), HIGH(Text13Message60)
    db LOW(Text13Message61), HIGH(Text13Message61)
    db LOW(Text13Message62), HIGH(Text13Message62)
    db LOW(Text13Message63), HIGH(Text13Message63)
    db LOW(Text13Message64), HIGH(Text13Message64)
    db LOW(Text13Message65), HIGH(Text13Message65)
    db LOW(Text13Message66), HIGH(Text13Message66)
    db LOW(Text13Message67), HIGH(Text13Message67)
    db LOW(Text13Message68), HIGH(Text13Message68)
    db LOW(Text13Message69), HIGH(Text13Message69)
    db LOW(Text13Message6A), HIGH(Text13Message6A)
    db LOW(Text13Message6B), HIGH(Text13Message6B)
    db LOW(Text13Message6C), HIGH(Text13Message6C)
    db LOW(Text13Message6D), HIGH(Text13Message6D)
    db LOW(Text13Message6E), HIGH(Text13Message6E)
    db LOW(Text13Message6F), HIGH(Text13Message6F)
    db LOW(Text13Message70), HIGH(Text13Message70)
    db LOW(Text13Message71), HIGH(Text13Message71)
    db LOW(Text13Message72), HIGH(Text13Message72)
    db LOW(Text13Message73), HIGH(Text13Message73)
    db LOW(Text13Message74), HIGH(Text13Message74)
    db LOW(Text13Message75), HIGH(Text13Message75)
    db LOW(Text13Message76), HIGH(Text13Message76)
    db LOW(Text13Message77), HIGH(Text13Message77)
    db LOW(Text13Message78), HIGH(Text13Message78)
    db LOW(Text13Message79), HIGH(Text13Message79)
    db LOW(Text13Message7A), HIGH(Text13Message7A)
    db LOW(Text13Message7B), HIGH(Text13Message7B)
    db LOW(Text13Message7C), HIGH(Text13Message7C)
    db LOW(Text13Message7D), HIGH(Text13Message7D)
    db LOW(Text13Message7E), HIGH(Text13Message7E)
    db LOW(Text13Message7F), HIGH(Text13Message7F)
; THERE'S A BLONDE / LADY BEHIND THE / COUNTER.[END]
Text13Message00:
    INCBIN "../../res/text/US/banks/13.bin", $100, $2
jr_013_4102:
    INCBIN "../../res/text/US/banks/13.bin", $102, $28
; AS YOU LEAVE THE / ROOM, A SEEDY / LOOKING MAN STEPS / IN FRONT OF YOU![END]
Text13Message01:
    INCBIN "../../res/text/US/banks/13.bin", $12a, $6
jr_013_4130:
    INCBIN "../../res/text/US/banks/13.bin", $130, $36
jr_013_4166:
    INCBIN "../../res/text/US/banks/13.bin", $166, $6
; YOU ARE FORCED / INTO THE ROOM.[END]
Text13Message02:
    INCBIN "../../res/text/US/banks/13.bin", $16c, $b
jr_013_4177:
    INCBIN "../../res/text/US/banks/13.bin", $177, $13
; THE BOUNCER TOSSESYOU OUT LIKE A / SACK OF POTATOES.[END]
Text13Message03:
    INCBIN "../../res/text/US/banks/13.bin", $18a, $1f
jr_013_41a9:
    INCBIN "../../res/text/US/banks/13.bin", $1a9, $3
jr_013_41ac:
    INCBIN "../../res/text/US/banks/13.bin", $1ac, $11
; YOU MUSTER ALL / YOUR CHARM AND / SAY, "HEY TOOTS? / WHAT'S A NICE GIRLLIKE YOU DOING IN / A PLACE LIKE / THI...
Text13Message04:
    INCBIN "../../res/text/US/banks/13.bin", $1bd, $1f
jr_013_41dc:
    INCBIN "../../res/text/US/banks/13.bin", $1dc, $23
jr_013_41ff:
    INCBIN "../../res/text/US/banks/13.bin", $1ff, $14
jr_013_4213:
    INCBIN "../../res/text/US/banks/13.bin", $213, $33
jr_013_4246:
    INCBIN "../../res/text/US/banks/13.bin", $246, $10
jr_013_4256:
    INCBIN "../../res/text/US/banks/13.bin", $256, $2
; THE WOMAN MUMBLES / SOMETHING.[END]
Text13Message05:
    INCBIN "../../res/text/US/banks/13.bin", $258, $b
jr_013_4263:
    INCBIN "../../res/text/US/banks/13.bin", $263, $12
; THE BLACKJACK / DEALER SAYS,[END]
Text13Message06:
    INCBIN "../../res/text/US/banks/13.bin", $275, $2
jr_013_4277:
    INCBIN "../../res/text/US/banks/13.bin", $277, $19
; "C'MON TRY YOUR / LUCK! THESE CARDS / ARE SURE HOT / TODAY!"[END]
Text13Message07:
    INCBIN "../../res/text/US/banks/13.bin", $290, $4
jr_013_4294:
    INCBIN "../../res/text/US/banks/13.bin", $294, $17
jr_013_42ab:
    INCBIN "../../res/text/US/banks/13.bin", $2ab, $1c
; THIS SURE IS A / QUIET PLACE.[END]
Text13Message08:
    INCBIN "../../res/text/US/banks/13.bin", $2c7, $1c
; THE DEALER DEALS / THE CARDS AT THE / BLACKJACK TABLE.[END]
Text13Message09:
    INCBIN "../../res/text/US/banks/13.bin", $2e3, $9
jr_013_42ec:
    INCBIN "../../res/text/US/banks/13.bin", $2ec, $16
jr_013_4302:
    INCBIN "../../res/text/US/banks/13.bin", $302, $14
; GREEN FELT COVERS / THE TABLE.[END]
Text13Message0A:
    INCBIN "../../res/text/US/banks/13.bin", $316, $1d
; LOOKS SUSPICIOUSLYLIKE A TRAIN TO / YOU. BOY, YOUR / DETECTIVE SKILLS / ARE IN FULL SWING![END]
Text13Message0B:
    INCBIN "../../res/text/US/banks/13.bin", $333, $1e
jr_013_4351:
    INCBIN "../../res/text/US/banks/13.bin", $351, $1
jr_013_4352:
    INCBIN "../../res/text/US/banks/13.bin", $352, $13
jr_013_4365:
    INCBIN "../../res/text/US/banks/13.bin", $365, $a
jr_013_436f:
    INCBIN "../../res/text/US/banks/13.bin", $36f, $5
jr_013_4374:
    INCBIN "../../res/text/US/banks/13.bin", $374, $14
; THAT'S THE / EMERGENCY EXIT.[END]
Text13Message0C:
    INCBIN "../../res/text/US/banks/13.bin", $388, $1b
; RUDY GLANCES AT / THE ARTICLE AND / WINKS.[END]
Text13Message0D:
    INCBIN "../../res/text/US/banks/13.bin", $3a3, $14
jr_013_43b7:
    INCBIN "../../res/text/US/banks/13.bin", $3b7, $b
jr_013_43c2:
    INCBIN "../../res/text/US/banks/13.bin", $3c2, $8
; "SURE'S BEEN A / LONG TIME, ACE," / HE WHISPERS, "I / THINK YOUR LUCK ISABOUT TO TURN!"[PAGE] / GOOD! YOU COU...
Text13Message0E:
    INCBIN "../../res/text/US/banks/13.bin", $3ca, $46
jr_013_4410:
    INCBIN "../../res/text/US/banks/13.bin", $410, $22
jr_013_4432:
    INCBIN "../../res/text/US/banks/13.bin", $432, $1e
; "I MISS THE OLD / DAYS, ACE," RUDY / SAYS WITH A SIGH.[END]
Text13Message0F:
    INCBIN "../../res/text/US/banks/13.bin", $450, $26
jr_013_4476:
    INCBIN "../../res/text/US/banks/13.bin", $476, $d
; "CAN YOU TELL ME / ABOUT THE CASINO / OWNER?"[END]
Text13Message10:
    INCBIN "../../res/text/US/banks/13.bin", $483, $4
jr_013_4487:
    INCBIN "../../res/text/US/banks/13.bin", $487, $7
jr_013_448e:
    INCBIN "../../res/text/US/banks/13.bin", $48e, $a
jr_013_4498:
    INCBIN "../../res/text/US/banks/13.bin", $498, $15
; "THE OBJECT IS FORYOUR CARDS TO ADD / UP TO 21, WITHOUT / GOING OVER.[PAGE] / FIRST, I'LL DEAL / 2 CARDS. ONE...
Text13Message11:
    INCBIN "../../res/text/US/banks/13.bin", $4ad, $22
jr_013_44cf:
    INCBIN "../../res/text/US/banks/13.bin", $4cf, $54
jr_013_4523:
    INCBIN "../../res/text/US/banks/13.bin", $523, $24
jr_013_4547:
    INCBIN "../../res/text/US/banks/13.bin", $547, $4
jr_013_454b:
    INCBIN "../../res/text/US/banks/13.bin", $54b, $17
jr_013_4562:
    INCBIN "../../res/text/US/banks/13.bin", $562, $2d
jr_013_458f:
    INCBIN "../../res/text/US/banks/13.bin", $58f, $a
jr_013_4599:
    INCBIN "../../res/text/US/banks/13.bin", $599, $1a
jr_013_45b3:
    INCBIN "../../res/text/US/banks/13.bin", $5b3, $12
jr_013_45c5:
    INCBIN "../../res/text/US/banks/13.bin", $5c5, $23
jr_013_45e8:
    INCBIN "../../res/text/US/banks/13.bin", $5e8, $15
jr_013_45fd:
    INCBIN "../../res/text/US/banks/13.bin", $5fd, $14
jr_013_4611:
    INCBIN "../../res/text/US/banks/13.bin", $611, $9
jr_013_461a:
    INCBIN "../../res/text/US/banks/13.bin", $61a, $30
jr_013_464a:
    INCBIN "../../res/text/US/banks/13.bin", $64a, $3
jr_013_464d:
    INCBIN "../../res/text/US/banks/13.bin", $64d, $b
jr_013_4658:
    INCBIN "../../res/text/US/banks/13.bin", $658, $1b
jr_013_4673:
    INCBIN "../../res/text/US/banks/13.bin", $673, $a
jr_013_467d:
    INCBIN "../../res/text/US/banks/13.bin", $67d, $15
jr_013_4692:
    INCBIN "../../res/text/US/banks/13.bin", $692, $16
jr_013_46a8:
    INCBIN "../../res/text/US/banks/13.bin", $6a8, $17
jr_013_46bf:
    INCBIN "../../res/text/US/banks/13.bin", $6bf, $b
jr_013_46ca:
    INCBIN "../../res/text/US/banks/13.bin", $6ca, $2b
jr_013_46f5:
    INCBIN "../../res/text/US/banks/13.bin", $6f5, $3a
jr_013_472f:
    INCBIN "../../res/text/US/banks/13.bin", $72f, $12
jr_013_4741:
    INCBIN "../../res/text/US/banks/13.bin", $741, $5
; QUIETLY, HE / ANSWERS YOU.[PAGE] / "MALONE HAS HIS / HANDS IN DIRTY / LAUNDRY ALL OVER / THE PLACE.[PAGE] / E...
Text13Message12:
    INCBIN "../../res/text/US/banks/13.bin", $746, $e
jr_013_4754:
    INCBIN "../../res/text/US/banks/13.bin", $754, $16
jr_013_476a:
    INCBIN "../../res/text/US/banks/13.bin", $76a, $9
jr_013_4773:
    INCBIN "../../res/text/US/banks/13.bin", $773, $28
jr_013_479b:
    INCBIN "../../res/text/US/banks/13.bin", $79b, $3f
jr_013_47da:
    INCBIN "../../res/text/US/banks/13.bin", $7da, $e
jr_013_47e8:
    INCBIN "../../res/text/US/banks/13.bin", $7e8, $c
; THE TRAIN SOUNDS / ITS WHISTLE FOR / DEPARTURE.[END]
Text13Message13:
    INCBIN "../../res/text/US/banks/13.bin", $7f4, $25
jr_013_4819:
    INCBIN "../../res/text/US/banks/13.bin", $819, $7
; RUDY GIVES YOU A / SLY GRIN, "ACE, / YOU WIN IN / WHATEVER YOU DO, / WHETHER IT'S / BOXING OR / BLACKJACK..."...
Text13Message14:
    INCBIN "../../res/text/US/banks/13.bin", $820, $1b
jr_013_483b:
    INCBIN "../../res/text/US/banks/13.bin", $83b, $4
jr_013_483f:
    INCBIN "../../res/text/US/banks/13.bin", $83f, $10
jr_013_484f:
    INCBIN "../../res/text/US/banks/13.bin", $84f, $2
jr_013_4851:
    INCBIN "../../res/text/US/banks/13.bin", $851, $31
; HIS NAME TAG / READS, "RUDY / KOWALSKI."[END]
Text13Message15:
    INCBIN "../../res/text/US/banks/13.bin", $882, $1d
jr_013_489f:
    INCBIN "../../res/text/US/banks/13.bin", $89f, $8
jr_013_48a7:
; A SENSE OF DEJA VUHITS YOU. THIS GUYLOOKS AWFULLY / FAMILIAR.[END]
Text13Message16:
    INCBIN "../../res/text/US/banks/13.bin", $8a7, $12
jr_013_48b9:
    INCBIN "../../res/text/US/banks/13.bin", $8b9, $15
jr_013_48ce:
    INCBIN "../../res/text/US/banks/13.bin", $8ce, $9
jr_013_48d7:
    INCBIN "../../res/text/US/banks/13.bin", $8d7, $c
; RUDY SMILES / WARMLY.[END]
Text13Message17:
    INCBIN "../../res/text/US/banks/13.bin", $8e3, $13
jr_013_48f6:
    INCBIN "../../res/text/US/banks/13.bin", $8f6, $1
; IT LOOKS LIKE THE / COURIER #0 / PAYMENTS MIGHT BE / BRIBES TO THE / POLICE...[END]
Text13Message18:
    INCBIN "../../res/text/US/banks/13.bin", $8f7, $1f
jr_013_4916:
    INCBIN "../../res/text/US/banks/13.bin", $916, $1b
jr_013_4931:
    INCBIN "../../res/text/US/banks/13.bin", $931, $d
; "THAT'S NOT / ENOUGH, PAL."[END]
Text13Message19:
    INCBIN "../../res/text/US/banks/13.bin", $93e, $1a
; "THANK YOU. / COME AGAIN."[END]
Text13Message1A:
    INCBIN "../../res/text/US/banks/13.bin", $958, $4
jr_013_495c:
    INCBIN "../../res/text/US/banks/13.bin", $95c, $1
jr_013_495d:
    INCBIN "../../res/text/US/banks/13.bin", $95d, $12
jr_013_496f:
    INCBIN "../../res/text/US/banks/13.bin", $96f, $2
; "HEY! THIS ISN'T / ENOUGH!"[END]
Text13Message1B:
    INCBIN "../../res/text/US/banks/13.bin", $971, $10
jr_013_4981:
    INCBIN "../../res/text/US/banks/13.bin", $981, $a
; LOOKING AROUND, / HE SAYS, / "SHHH... I SELL / THINGS YOU MIGHT / NEED, TAX FREE, / IF YOU GET MY / DRIFT...[...
Text13Message1C:
    INCBIN "../../res/text/US/banks/13.bin", $98b, $12
jr_013_499d:
    INCBIN "../../res/text/US/banks/13.bin", $99d, $17
jr_013_49b4:
    INCBIN "../../res/text/US/banks/13.bin", $9b4, $13
jr_013_49c7:
    INCBIN "../../res/text/US/banks/13.bin", $9c7, $4
jr_013_49cb:
    INCBIN "../../res/text/US/banks/13.bin", $9cb, $1d
jr_013_49e8:
    INCBIN "../../res/text/US/banks/13.bin", $9e8, $22
jr_013_4a0a:
    INCBIN "../../res/text/US/banks/13.bin", $a0a, $1d
; YOU'RE INSIDE THE / CRAMPED SPACE OF / THE ELEVATOR.[END]
Text13Message1D:
    INCBIN "../../res/text/US/banks/13.bin", $a27, $10
jr_013_4a37:
    INCBIN "../../res/text/US/banks/13.bin", $a37, $15
jr_013_4a4c:
    INCBIN "../../res/text/US/banks/13.bin", $a4c, $8
jr_013_4a54:
    INCBIN "../../res/text/US/banks/13.bin", $a54, $4
; IT'S AN / ADVERTISEMENT:[PAGE] / "-GET RICH QUICK!-MAKE YOUR DREAMS / COME TRUE AT THE / LUCKY DICE / CASINO!...
Text13Message1E:
    INCBIN "../../res/text/US/banks/13.bin", $a58, $3e
jr_013_4a96:
    INCBIN "../../res/text/US/banks/13.bin", $a96, $21
; IT'S A PANEL WITH / THREE BUTTONS.[END]
Text13Message1F:
    INCBIN "../../res/text/US/banks/13.bin", $ab7, $c
jr_013_4ac3:
    INCBIN "../../res/text/US/banks/13.bin", $ac3, $15
; YOU NOTICE A SPACEABOVE THE THIRD / FLOOR BUTTON![END]
Text13Message20:
    INCBIN "../../res/text/US/banks/13.bin", $ad8, $10
jr_013_4ae8:
    INCBIN "../../res/text/US/banks/13.bin", $ae8, $20
; THERE'S A PLACE TOINSERT A MAGNETIC / BUTTON AT THE / TOP OF THE PANEL.[END]
Text13Message21:
    INCBIN "../../res/text/US/banks/13.bin", $b08, $44
; THE TRAIN PULLS / AWAY, LEAVING YOU / BEHIND IN A CLOUD / OF SMOKE.[END]
Text13Message22:
    INCBIN "../../res/text/US/banks/13.bin", $b4c, $2e
jr_013_4b7a:
    INCBIN "../../res/text/US/banks/13.bin", $b7a, $10
; YOU ASSUME THE / MAGNETIC / BUTTON ENSURES / THAT ONLY CERTAIN / PEOPLE GET ACCESS / TO THIS FLOOR.[END]
Text13Message23:
    INCBIN "../../res/text/US/banks/13.bin", $b8a, $10
jr_013_4b9a:
    INCBIN "../../res/text/US/banks/13.bin", $b9a, $f
jr_013_4ba9:
    INCBIN "../../res/text/US/banks/13.bin", $ba9, $2c
jr_013_4bd5:
    INCBIN "../../res/text/US/banks/13.bin", $bd5, $f
; THAT'S QUITE THE / STYLISH DOOR.[PAGE] / YOU'VE NEVER SEEN / ANOTHER LIKE IT![END]
Text13Message24:
    INCBIN "../../res/text/US/banks/13.bin", $be4, $2f
jr_013_4c13:
    INCBIN "../../res/text/US/banks/13.bin", $c13, $13
; WITH A JERK, THE / ELEVATOR STARTS / MOVING.[END]
Text13Message25:
    INCBIN "../../res/text/US/banks/13.bin", $c26, $29
; CLICK![PAGE] / THE MAGNETIC / BUTTON FITS IN TO / PLACE AT THE TOP / OF THE PANEL.[END]
Text13Message26:
    INCBIN "../../res/text/US/banks/13.bin", $c4f, $1f
jr_013_4c6e:
    INCBIN "../../res/text/US/banks/13.bin", $c6e, $26
; THIS OFFICE HAS A / QUITE A VIEW! / DESERT AS FAR AS / THE EYE CAN SEE![PAGE] / GEE, WHAT YOU / WOULDN'T GIVE...
Text13Message27:
    INCBIN "../../res/text/US/banks/13.bin", $c94, $1f
jr_013_4cb3:
    INCBIN "../../res/text/US/banks/13.bin", $cb3, $1d
jr_013_4cd0:
    INCBIN "../../res/text/US/banks/13.bin", $cd0, $20
jr_013_4cf0:
    INCBIN "../../res/text/US/banks/13.bin", $cf0, $2e
jr_013_4d1e:
    INCBIN "../../res/text/US/banks/13.bin", $d1e, $4
; YOU'VE ALWAYS / WANTED ONE OF / THOSE EXPENSIVE / LEATHER CHAIRS FORYOUR OWN OFFICE.[END]
Text13Message28:
    INCBIN "../../res/text/US/banks/13.bin", $d22, $10
jr_013_4d32:
    INCBIN "../../res/text/US/banks/13.bin", $d32, $3f
; YOU LOOK OUT OVER / THE CITY- NICE / PLACE BUT YOU / WOULDN'T WANT TO / LIVE HERE![END]
Text13Message29:
    INCBIN "../../res/text/US/banks/13.bin", $d71, $10
jr_013_4d81:
    INCBIN "../../res/text/US/banks/13.bin", $d81, $2b
jr_013_4dac:
    INCBIN "../../res/text/US/banks/13.bin", $dac, $10
; THE CITY LIES / BELOW, WAITING TO / DRAIN THE CASH / FROM UNSUSPECTING / SOULS.[END]
Text13Message2A:
    INCBIN "../../res/text/US/banks/13.bin", $dbc, $48
; THE THIN BLINDS / PARTIALLY OBSCURE / THE VIEW.[END]
Text13Message2B:
    INCBIN "../../res/text/US/banks/13.bin", $e04, $1f
jr_013_4e23:
    INCBIN "../../res/text/US/banks/13.bin", $e23, $d
; WHITE BLINDS HANG / OVERHEAD.[END]
Text13Message2C:
    INCBIN "../../res/text/US/banks/13.bin", $e30, $1c
; IT'S AN SOLID WOODDESK.[END]
Text13Message2D:
    INCBIN "../../res/text/US/banks/13.bin", $e4c, $3
jr_013_4e4f:
    INCBIN "../../res/text/US/banks/13.bin", $e4f, $15
; IT'S A PLAIN, / BROWN PAPER BAG.[END]
Text13Message2E:
    INCBIN "../../res/text/US/banks/13.bin", $e64, $7
jr_013_4e6b:
    INCBIN "../../res/text/US/banks/13.bin", $e6b, $18
jr_013_4e83:
; IT'S AN ORNATE / BRASS HAT-RACK.[END]
Text13Message2F:
    INCBIN "../../res/text/US/banks/13.bin", $e83, $1f
; THIS PAPERWEIGHT / IS SHAPED IN THE / FORM OF SOME TYPE / OF BIRD.[PAGE] / ITS SEEMS TO BE / LOOSE AT ITS BAS...
Text13Message30:
    INCBIN "../../res/text/US/banks/13.bin", $ea2, $1f
jr_013_4ec1:
    INCBIN "../../res/text/US/banks/13.bin", $ec1, $22
jr_013_4ee3:
    INCBIN "../../res/text/US/banks/13.bin", $ee3, $18
jr_013_4efb:
    INCBIN "../../res/text/US/banks/13.bin", $efb, $7
; THE DATES ARE THE / SAME AS THE / COURIER #0 / PAYMENTS.[PAGE] / THE AMOUNT WRITTENHERE MUST BE THE / PAYMENT...
Text13Message31:
    INCBIN "../../res/text/US/banks/13.bin", $f02, $1f
jr_013_4f21:
    INCBIN "../../res/text/US/banks/13.bin", $f21, $1a
jr_013_4f3b:
    INCBIN "../../res/text/US/banks/13.bin", $f3b, $d
jr_013_4f48:
    INCBIN "../../res/text/US/banks/13.bin", $f48, $9
jr_013_4f51:
    INCBIN "../../res/text/US/banks/13.bin", $f51, $17
jr_013_4f68:
    INCBIN "../../res/text/US/banks/13.bin", $f68, $18
; THE TOP PART / OF THIS / PAPERWEIGHT IS / SHAPED LIKED A / DART.[END]
Text13Message32:
    INCBIN "../../res/text/US/banks/13.bin", $f80, $9
jr_013_4f89:
    INCBIN "../../res/text/US/banks/13.bin", $f89, $30
; IT ALMOST SEEMS ASTHOUGH SOMEBODY / DESIGNED THIS / BIRD TO ACTUALLY / FLY![END]
Text13Message33:
    INCBIN "../../res/text/US/banks/13.bin", $fb9, $3f
jr_013_4ff8:
    INCBIN "../../res/text/US/banks/13.bin", $ff8, $7
; YOU NOTICE THAT / THE BIRD PART HAS / DETACHED FROM THE / BASE![END]
Text13Message34:
    INCBIN "../../res/text/US/banks/13.bin", $fff, $10
jr_013_500f:
    INCBIN "../../res/text/US/banks/13.bin", $100f, $8
jr_013_5017:
    INCBIN "../../res/text/US/banks/13.bin", $1017, $e
jr_013_5025:
    INCBIN "../../res/text/US/banks/13.bin", $1025, $14
; YOU STEP DOWN ONTOTHE TRACKS...[END]
Text13Message35:
    INCBIN "../../res/text/US/banks/13.bin", $1039, $a
Jump_013_5043:
    INCBIN "../../res/text/US/banks/13.bin", $1043, $6
jr_013_5049:
    INCBIN "../../res/text/US/banks/13.bin", $1049, $10
; IT'S A STERLING / SILVER LETTER / OPENER.[END]
Text13Message36:
    INCBIN "../../res/text/US/banks/13.bin", $1059, $1f
jr_013_5078:
    INCBIN "../../res/text/US/banks/13.bin", $1078, $7
; SUDDENLY, A TRAIN / BARRELS INTO THE / STATION AND / CRUSHES YOU UNDER / ITS WEIGHT![PAGE] / YOUR LAST THOUGH...
Text13Message37:
    INCBIN "../../res/text/US/banks/13.bin", $107f, $2e
jr_013_50ad:
    INCBIN "../../res/text/US/banks/13.bin", $10ad, $19
jr_013_50c6:
    INCBIN "../../res/text/US/banks/13.bin", $10c6, $16
jr_013_50dc:
    INCBIN "../../res/text/US/banks/13.bin", $10dc, $18
jr_013_50f4:
    INCBIN "../../res/text/US/banks/13.bin", $10f4, $1d
jr_013_5111:
    INCBIN "../../res/text/US/banks/13.bin", $1111, $13
; AN OLD PASTRAMI ONRYE! IF IT WASN'T / STALE YOU MIGHT / TAKE A BITE.[END]
Text13Message38:
    INCBIN "../../res/text/US/banks/13.bin", $1124, $a
jr_013_512e:
    INCBIN "../../res/text/US/banks/13.bin", $112e, $30
jr_013_515e:
    INCBIN "../../res/text/US/banks/13.bin", $115e, $7
; IT'S A LARGE / LEATHER-BOUND / LEDGER.[END]
Text13Message39:
    INCBIN "../../res/text/US/banks/13.bin", $1165, $23
; THIS LEDGER LISTS / PAYMENTS MADE TO / MALONE VIA VENTINIFROM THE VARIOUS / OPERATIONS AROUND / THE COUNTRY.[...
Text13Message3A:
    INCBIN "../../res/text/US/banks/13.bin", $1188, $9b
jr_013_5223:
    INCBIN "../../res/text/US/banks/13.bin", $1223, $58
jr_013_527b:
    INCBIN "../../res/text/US/banks/13.bin", $127b, $f
jr_013_528a:
    INCBIN "../../res/text/US/banks/13.bin", $128a, $2
jr_013_528c:
    INCBIN "../../res/text/US/banks/13.bin", $128c, $18
jr_013_52a4:
    INCBIN "../../res/text/US/banks/13.bin", $12a4, $7
jr_013_52ab:
    INCBIN "../../res/text/US/banks/13.bin", $12ab, $1
jr_013_52ac:
    INCBIN "../../res/text/US/banks/13.bin", $12ac, $10
jr_013_52bc:
    INCBIN "../../res/text/US/banks/13.bin", $12bc, $18
jr_013_52d4:
    INCBIN "../../res/text/US/banks/13.bin", $12d4, $e
jr_013_52e2:
    INCBIN "../../res/text/US/banks/13.bin", $12e2, $1
; HMM...[PAGE] / THIS BOOK MIGHT BEIDENTICAL TO THE / OTHER ONE IF IT / WEREN'T FOR THE / FACT THAT THE / "NO.0...
Text13Message3B:
    INCBIN "../../res/text/US/banks/13.bin", $12e3, $7
jr_013_52ea:
    INCBIN "../../res/text/US/banks/13.bin", $12ea, $2
jr_013_52ec:
    INCBIN "../../res/text/US/banks/13.bin", $12ec, $7
jr_013_52f3:
    INCBIN "../../res/text/US/banks/13.bin", $12f3, $1
jr_013_52f4:
    INCBIN "../../res/text/US/banks/13.bin", $12f4, $4
jr_013_52f8:
    INCBIN "../../res/text/US/banks/13.bin", $12f8, $2
jr_013_52fa:
    INCBIN "../../res/text/US/banks/13.bin", $12fa, $a
jr_013_5304:
    INCBIN "../../res/text/US/banks/13.bin", $1304, $2
jr_013_5306:
    INCBIN "../../res/text/US/banks/13.bin", $1306, $4c
jr_013_5352:
    INCBIN "../../res/text/US/banks/13.bin", $1352, $15
jr_013_5367:
    INCBIN "../../res/text/US/banks/13.bin", $1367, $8
jr_013_536f:
    INCBIN "../../res/text/US/banks/13.bin", $136f, $14
; YOU SCAN THE REST / OF THE BOOK...[PAGE] / BUT, THE FOLLOWINGPAGES HOLD NO / INTEREST TO YOU.[END]
Text13Message3C:
    INCBIN "../../res/text/US/banks/13.bin", $1383, $8
jr_013_538b:
    INCBIN "../../res/text/US/banks/13.bin", $138b, $8
jr_013_5393:
    INCBIN "../../res/text/US/banks/13.bin", $1393, $f
jr_013_53a2:
    INCBIN "../../res/text/US/banks/13.bin", $13a2, $1e
jr_013_53c0:
    INCBIN "../../res/text/US/banks/13.bin", $13c0, $2
jr_013_53c2:
    INCBIN "../../res/text/US/banks/13.bin", $13c2, $13
; YOU YANK HARD AND / THE BIRD COMES / AWAY FROM THE / BASE.[PAGE] / STRANGE, THE BIRD / LOOKS SO LIFELIKE / AS...
Text13Message3D:
    INCBIN "../../res/text/US/banks/13.bin", $13d5, $6
jr_013_53db:
    INCBIN "../../res/text/US/banks/13.bin", $13db, $5
jr_013_53e0:
    INCBIN "../../res/text/US/banks/13.bin", $13e0, $5
jr_013_53e5:
    INCBIN "../../res/text/US/banks/13.bin", $13e5, $f
jr_013_53f4:
    INCBIN "../../res/text/US/banks/13.bin", $13f4, $21
jr_013_5415:
    INCBIN "../../res/text/US/banks/13.bin", $1415, $11
jr_013_5426:
    INCBIN "../../res/text/US/banks/13.bin", $1426, $31
jr_013_5457:
    INCBIN "../../res/text/US/banks/13.bin", $1457, $7
; YOU GAG DOWN THE / OLD FOOD.[END]
Text13Message3E:
    INCBIN "../../res/text/US/banks/13.bin", $145e, $10
jr_013_546e:
    INCBIN "../../res/text/US/banks/13.bin", $146e, $b
; THE TRAIN BLOCKS / YOUR WAY.[END]
Text13Message3F:
    INCBIN "../../res/text/US/banks/13.bin", $1479, $4
jr_013_547d:
    INCBIN "../../res/text/US/banks/13.bin", $147d, $17
; IT'S A BULLET FOR / A .38 SPECIAL.[END]
Text13Message40:
    INCBIN "../../res/text/US/banks/13.bin", $1494, $4
jr_013_5498:
    INCBIN "../../res/text/US/banks/13.bin", $1498, $2
jr_013_549a:
    INCBIN "../../res/text/US/banks/13.bin", $149a, $19
jr_013_54b3:
    INCBIN "../../res/text/US/banks/13.bin", $14b3, $2
; THE PICTURE SHOWS / MALONE MAKING / A SPEECH AT A / BANQUET HELD IN / HONOR OF DAN / VENTINI.[PAGE] / RUMOR H...
Text13Message41:
    INCBIN "../../res/text/US/banks/13.bin", $14b5, $11
jr_013_54c6:
    INCBIN "../../res/text/US/banks/13.bin", $14c6, $e
jr_013_54d4:
    INCBIN "../../res/text/US/banks/13.bin", $14d4, $9
jr_013_54dd:
    INCBIN "../../res/text/US/banks/13.bin", $14dd, $48
jr_013_5525:
    INCBIN "../../res/text/US/banks/13.bin", $1525, $50
; LOOKING AT THE / PICTURE, YOU / WONDER IF VENTINI / LOOKS AT MALONE ASFATHER FIGURE?[PAGE] / YOU DOUBT IT, / ...
Text13Message42:
    INCBIN "../../res/text/US/banks/13.bin", $1575, $1f
jr_013_5594:
    INCBIN "../../res/text/US/banks/13.bin", $1594, $9
jr_013_559d:
    INCBIN "../../res/text/US/banks/13.bin", $159d, $81
; YOU WONDER ABOUT / VENTINI'S SECRET / DEALINGS IN / CHICAGO! DOES / MALONE KNOW THIS? / AND WOULD HE / BELIEV...
Text13Message43:
    INCBIN "../../res/text/US/banks/13.bin", $161e, $10
jr_013_562e:
    INCBIN "../../res/text/US/banks/13.bin", $162e, $5e
; JUST WHAT YOU'D / EXPECT FROM THE / BOSS' OFFICE.[PAGE] / EVERYTHING HERE ISWORTH A FORTUNE![END]
Text13Message44:
    INCBIN "../../res/text/US/banks/13.bin", $168c, $12
jr_013_569e:
    INCBIN "../../res/text/US/banks/13.bin", $169e, $3f
; THE EXPENSIVE / LEATHER LOOKS VERYCOMFORTABLE.[END]
Text13Message45:
    INCBIN "../../res/text/US/banks/13.bin", $16dd, $2d
; YOU DECIDE AGAINSTWASTING TOO MUCH / TIME.[PAGE] / MALONE'S THREAT / WAS, AFTER ALL, / QUITE CLEAR![END]
Text13Message46:
    INCBIN "../../res/text/US/banks/13.bin", $170a, $1f
jr_013_5729:
    INCBIN "../../res/text/US/banks/13.bin", $1729, $26
jr_013_574f:
    INCBIN "../../res/text/US/banks/13.bin", $174f, $11
; THE PICTURE SHOWS / MALONE AND VENTINIHOLDING UP A HUGE / TUNA![PAGE] / YOU FIGURE THAT / MALONE MUST HAVE / ...
Text13Message47:
    INCBIN "../../res/text/US/banks/13.bin", $1760, $4c
jr_013_57ac:
    INCBIN "../../res/text/US/banks/13.bin", $17ac, $3c
jr_013_57e8:
; A FINE SILK / CURTAIN.[END]
Text13Message48:
    INCBIN "../../res/text/US/banks/13.bin", $17e8, $3
jr_013_57eb:
    INCBIN "../../res/text/US/banks/13.bin", $17eb, $12
; IT'S AN EXPENSIVE / DESK MADE OF / CHERRY WOOD.[END]
Text13Message49:
    INCBIN "../../res/text/US/banks/13.bin", $17fd, $2c
; MALONE MUST KEEP / HIS IMPORTANT / DOCUMENTS HERE.[END]
Text13Message4A:
    INCBIN "../../res/text/US/banks/13.bin", $1829, $1f
jr_013_5848:
    INCBIN "../../res/text/US/banks/13.bin", $1848, $10
; THIS MIGHT BE THE / PLACE TO LEAVE / CONCRETE PROOF OF / WHAT VENTINI IS UPTO.[END]
Text13Message4B:
    INCBIN "../../res/text/US/banks/13.bin", $1858, $49
; YOU'RE STANDING / OUTSIDE THE FANCY / BRICK FACADE OF / THE LUCKY DICE / HOTEL AND CASINO.[END]
Text13Message4C:
    INCBIN "../../res/text/US/banks/13.bin", $18a1, $10
jr_013_58b1:
    INCBIN "../../res/text/US/banks/13.bin", $18b1, $43
; THE FRONDS OF THISPALM TREE PROVIDE / A SMALL MEASURE OFSHADE.[END]
Text13Message4D:
    INCBIN "../../res/text/US/banks/13.bin", $18f4, $3
jr_013_58f7:
    INCBIN "../../res/text/US/banks/13.bin", $18f7, $3a
; A MEDIUM SIZE PALMTREE FLANKS THE / ENTRANCE TO THE / HOTEL.[END]
Text13Message4E:
    INCBIN "../../res/text/US/banks/13.bin", $1931, $1f
jr_013_5950:
    INCBIN "../../res/text/US/banks/13.bin", $1950, $1a
; THE AWNING READS / IN BIG BOLD / LETTERS, "LUCKY / DICE HOTEL AND / CASINO."[END]
Text13Message4F:
    INCBIN "../../res/text/US/banks/13.bin", $196a, $1f
jr_013_5989:
    INCBIN "../../res/text/US/banks/13.bin", $1989, $26
; THE BARREN DESERT / STRETCHES AS FAR / AS YOU CAN SEE.[END]
Text13Message50:
    INCBIN "../../res/text/US/banks/13.bin", $19af, $25
jr_013_59d4:
    INCBIN "../../res/text/US/banks/13.bin", $19d4, $e
; OOPS... GOTTA OPENIT FIRST![END]
Text13Message51:
    INCBIN "../../res/text/US/banks/13.bin", $19e2, $3
jr_013_59e5:
    INCBIN "../../res/text/US/banks/13.bin", $19e5, $19
; THAT'S ACROSS THE / STREET.[END]
Text13Message52:
    INCBIN "../../res/text/US/banks/13.bin", $19fe, $3
jr_013_5a01:
    INCBIN "../../res/text/US/banks/13.bin", $1a01, $3
jr_013_5a04:
    INCBIN "../../res/text/US/banks/13.bin", $1a04, $14
; HMM... / IT DOESN'T OPEN.[END]
Text13Message53:
    INCBIN "../../res/text/US/banks/13.bin", $1a18, $18
; THE BARREN / WASTELAND GOES ON / AND ON.[END]
Text13Message54:
    INCBIN "../../res/text/US/banks/13.bin", $1a30, $7
jr_013_5a37:
    INCBIN "../../res/text/US/banks/13.bin", $1a37, $6
jr_013_5a3d:
    INCBIN "../../res/text/US/banks/13.bin", $1a3d, $12
jr_013_5a4f:
    INCBIN "../../res/text/US/banks/13.bin", $1a4f, $6
; YOU HOPE THAT BY / LEAVING STOGIE'S / CIGAR WRAPPER ON / VENTINI'S DESK IN / HIS SECRET / OFFICE...[PAGE] / T...
Text13Message55:
    INCBIN "../../res/text/US/banks/13.bin", $1a55, $64
jr_013_5ab9:
    INCBIN "../../res/text/US/banks/13.bin", $1ab9, $14
jr_013_5acd:
    INCBIN "../../res/text/US/banks/13.bin", $1acd, $2d
; IT'S LOCKED.[END]
Text13Message56:
    INCBIN "../../res/text/US/banks/13.bin", $1afa, $d
; STOGIE AIMS HIS / GUN AT YOU. HE / NEEDS ONLY ONE / SHOT TO END YOUR / LIFE.[PAGE] / "I LOVE MY JOB," / HE SA...
Text13Message57:
    INCBIN "../../res/text/US/banks/13.bin", $1b07, $12
jr_013_5b19:
    INCBIN "../../res/text/US/banks/13.bin", $1b19, $d
jr_013_5b26:
    INCBIN "../../res/text/US/banks/13.bin", $1b26, $8
jr_013_5b2e:
    INCBIN "../../res/text/US/banks/13.bin", $1b2e, $f
jr_013_5b3d:
    INCBIN "../../res/text/US/banks/13.bin", $1b3d, $2b
jr_013_5b68:
    INCBIN "../../res/text/US/banks/13.bin", $1b68, $9
jr_013_5b71:
    INCBIN "../../res/text/US/banks/13.bin", $1b71, $5
jr_013_5b76:
    INCBIN "../../res/text/US/banks/13.bin", $1b76, $1
; THE SUN BEATS DOWNMERCILESSLY ON / YOU.[END]
Text13Message58:
    INCBIN "../../res/text/US/banks/13.bin", $1b77, $26
; NO SHADE, NO / WATER...[PAGE] / YOU SWEAT / PROFUSELY, HOPING / FOR AN END TO THISDESERT.[END]
Text13Message59:
    INCBIN "../../res/text/US/banks/13.bin", $1b9d, $b
jr_013_5ba8:
    INCBIN "../../res/text/US/banks/13.bin", $1ba8, $14
jr_013_5bbc:
    INCBIN "../../res/text/US/banks/13.bin", $1bbc, $7
jr_013_5bc3:
    INCBIN "../../res/text/US/banks/13.bin", $1bc3, $c
jr_013_5bcf:
    INCBIN "../../res/text/US/banks/13.bin", $1bcf, $1a
; A COP PATROLLING / HIS BEAT COMES / OVER TO SEE WHAT / ALL THE RUCKUS IS / ABOUT.[PAGE] / YOU MOUTH OFF TO / ...
Text13Message5A:
    INCBIN "../../res/text/US/banks/13.bin", $1be9, $3
jr_013_5bec:
    INCBIN "../../res/text/US/banks/13.bin", $1bec, $63
jr_013_5c4f:
    INCBIN "../../res/text/US/banks/13.bin", $1c4f, $4e
jr_013_5c9d:
    INCBIN "../../res/text/US/banks/13.bin", $1c9d, $14
; "WATER," YOU / CROAK.[PAGE] / IT'S ONLY A MATTEROF TIME BEFORE YOUBECOME BUZZARD / BAIT...[END]
Text13Message5B:
    INCBIN "../../res/text/US/banks/13.bin", $1cb1, $8
jr_013_5cb9:
    INCBIN "../../res/text/US/banks/13.bin", $1cb9, $11
jr_013_5cca:
    INCBIN "../../res/text/US/banks/13.bin", $1cca, $1f
jr_013_5ce9:
    INCBIN "../../res/text/US/banks/13.bin", $1ce9, $17
; COULD IT BE? WHY / YES, IT IS! / ...A LEMONADE / STAND![PAGE] / YOU STAGGER OVER / TO THE STAND AND / RASP, "...
Text13Message5C:
    INCBIN "../../res/text/US/banks/13.bin", $1d00, $1f
jr_013_5d1f:
    INCBIN "../../res/text/US/banks/13.bin", $1d1f, $2
jr_013_5d21:
    INCBIN "../../res/text/US/banks/13.bin", $1d21, $d
jr_013_5d2e:
    INCBIN "../../res/text/US/banks/13.bin", $1d2e, $11
jr_013_5d3f:
    INCBIN "../../res/text/US/banks/13.bin", $1d3f, $32
; ERROR[END]
Text13Message5D:
    INCBIN "../../res/text/US/banks/13.bin", $1d71, $6
; JUST A MIRAGE! / YOU SHOULD HAVE / KNOWN![PAGE] / YOU MUST BE NEAR / THE END OF YOUR / ENDURANCE BECAUSE / YO...
Text13Message5E:
    INCBIN "../../res/text/US/banks/13.bin", $1d77, $1f
jr_013_5d96:
    INCBIN "../../res/text/US/banks/13.bin", $1d96, $4a
jr_013_5de0:
    INCBIN "../../res/text/US/banks/13.bin", $1de0, $1e
; YOU FALL FACE DOWNIN THE SAND. YOU / CAN'T MANAGE / ANOTHER STEP...[PAGE] / YOU LIE FOR WHAT / SEEMS A LONG T...
Text13Message5F:
    INCBIN "../../res/text/US/banks/13.bin", $1dfe, $b
jr_013_5e09:
    INCBIN "../../res/text/US/banks/13.bin", $1e09, $3
jr_013_5e0c:
    INCBIN "../../res/text/US/banks/13.bin", $1e0c, $21
jr_013_5e2d:
    INCBIN "../../res/text/US/banks/13.bin", $1e2d, $a
jr_013_5e37:
    INCBIN "../../res/text/US/banks/13.bin", $1e37, $17
jr_013_5e4e:
    INCBIN "../../res/text/US/banks/13.bin", $1e4e, $c
jr_013_5e5a:
    INCBIN "../../res/text/US/banks/13.bin", $1e5a, $2
jr_013_5e5c:
    INCBIN "../../res/text/US/banks/13.bin", $1e5c, $3e
jr_013_5e9a:
    INCBIN "../../res/text/US/banks/13.bin", $1e9a, $6
; THE THORNS ON THISCACTUS ARE NEEDLE / SHARP![END]
Text13Message60:
    INCBIN "../../res/text/US/banks/13.bin", $1ea0, $2b
; I CAN'T DO THAT.[END]
Text13Message61:
    INCBIN "../../res/text/US/banks/13.bin", $1ecb, $11
; THIS TREE SURE IS / GROWING WELL, / CONSIDERING.[END]
Text13Message62:
    INCBIN "../../res/text/US/banks/13.bin", $1edc, $1f
jr_013_5efb:
    INCBIN "../../res/text/US/banks/13.bin", $1efb, $e
; ...NO ANSWER.[END]
Text13Message63:
    INCBIN "../../res/text/US/banks/13.bin", $1f09, $e
; IT'S SO HOT THAT / YOU COULD FRY AN / EGG ON THIS ROCK![END]
Text13Message64:
    INCBIN "../../res/text/US/banks/13.bin", $1f17, $3
jr_013_5f1a:
    INCBIN "../../res/text/US/banks/13.bin", $1f1a, $11
jr_013_5f2b:
    INCBIN "../../res/text/US/banks/13.bin", $1f2b, $d
jr_013_5f38:
    INCBIN "../../res/text/US/banks/13.bin", $1f38, $13
; IF YOU DON'T HAVE / IT, YOU CAN'T / THROW IT AWAY.[END]
Text13Message65:
    INCBIN "../../res/text/US/banks/13.bin", $1f4b, $26
jr_013_5f71:
    INCBIN "../../res/text/US/banks/13.bin", $1f71, $9
; IT'S THE SUN- / BLEACHED SKULL / FROM SOME HAPLESS / ANIMAL.[END]
Text13Message66:
    INCBIN "../../res/text/US/banks/13.bin", $1f7a, $37
; THIS GRASS IS / TRYING VERY HARD / TO GROW HERE.[END]
Text13Message67:
    INCBIN "../../res/text/US/banks/13.bin", $1fb1, $1f
jr_013_5fd0:
    INCBIN "../../res/text/US/banks/13.bin", $1fd0, $e
; IT'S THE LID TO / THE HAMPER.[END]
Text13Message68:
    INCBIN "../../res/text/US/banks/13.bin", $1fde, $1c
; IT'S AMAZING THAT / THIS CACTUS CAN / GROW IN THIS / BARREN WASTELAND.[END]
Text13Message69:
    INCBIN "../../res/text/US/banks/13.bin", $1ffa, $41
; YOU'RE STANDING / NEAR THE OUTSKIRTSOF TOWN.[END]
Text13Message6A:
    INCBIN "../../res/text/US/banks/13.bin", $203b, $10
jr_013_604b:
    INCBIN "../../res/text/US/banks/13.bin", $204b, $1b
; THE SIGN READS / "RELIANT CLEANERS"IN BIG, BOLD / LETTERS.[END]
Text13Message6B:
    INCBIN "../../res/text/US/banks/13.bin", $2066, $37
; THE WORDS "RELIANTCLEANERS" ARE / PAINTED ON THE / WINDOW.[END]
Text13Message6C:
    INCBIN "../../res/text/US/banks/13.bin", $209d, $37
; THE SHUTTER IS / FILTHY. BAD FOR A / CLEANER'S IMAGE, / DON'T YOU THINK?[END]
Text13Message6D:
    INCBIN "../../res/text/US/banks/13.bin", $20d4, $1f
jr_013_60f3:
    INCBIN "../../res/text/US/banks/13.bin", $20f3, $17
jr_013_610a:
    INCBIN "../../res/text/US/banks/13.bin", $210a, $d
; SUDDENLY, A WOMAN / JUMPS IN FRONT OF / YOU AND SLAPS YOU / IN THE FACE![PAGE] / SHE CACKLES, / "THAT'S FOR A...
Text13Message6E:
    INCBIN "../../res/text/US/banks/13.bin", $2117, $5
jr_013_611c:
    INCBIN "../../res/text/US/banks/13.bin", $211c, $1a
jr_013_6136:
    INCBIN "../../res/text/US/banks/13.bin", $2136, $f
jr_013_6145:
    INCBIN "../../res/text/US/banks/13.bin", $2145, $6
jr_013_614b:
    INCBIN "../../res/text/US/banks/13.bin", $214b, $e
jr_013_6159:
    INCBIN "../../res/text/US/banks/13.bin", $2159, $3b
jr_013_6194:
    INCBIN "../../res/text/US/banks/13.bin", $2194, $26
jr_013_61ba:
    INCBIN "../../res/text/US/banks/13.bin", $21ba, $11
; "HEY! YOU CAN'T / WALK AROUND HERE / STARK NAKED!"[END]
Text13Message6F:
    INCBIN "../../res/text/US/banks/13.bin", $21cb, $d
jr_013_61d8:
    INCBIN "../../res/text/US/banks/13.bin", $21d8, $9
jr_013_61e1:
    INCBIN "../../res/text/US/banks/13.bin", $21e1, $16
jr_013_61f7:
    INCBIN "../../res/text/US/banks/13.bin", $21f7, $3
; THE DESERT EXTENDSTO THE HORIZON.[END]
Text13Message70:
    INCBIN "../../res/text/US/banks/13.bin", $21fa, $22
; A LARGE BUILDING / HOUSING THE TRAIN / STATION STANDS / BEFORE YOU.[END]
Text13Message71:
    INCBIN "../../res/text/US/banks/13.bin", $221c, $3e
; THIS LARGE ARCHED / WINDOW LOOKS / POORLY MADE.[END]
Text13Message72:
    INCBIN "../../res/text/US/banks/13.bin", $225a, $b
jr_013_6265:
    INCBIN "../../res/text/US/banks/13.bin", $2265, $14
jr_013_6279:
    INCBIN "../../res/text/US/banks/13.bin", $2279, $d
; JUST AS THE / ELEVATOR OPENS, / SOME THUG STEPS INAND SAYS,[PAGE] / "HEY, HOW'D YOU / GET THIS? YOU / AIN'T A...
Text13Message73:
    INCBIN "../../res/text/US/banks/13.bin", $2286, $1f
jr_013_62a5:
    INCBIN "../../res/text/US/banks/13.bin", $22a5, $29
jr_013_62ce:
    INCBIN "../../res/text/US/banks/13.bin", $22ce, $c
jr_013_62da:
    INCBIN "../../res/text/US/banks/13.bin", $22da, $e
jr_013_62e8:
    INCBIN "../../res/text/US/banks/13.bin", $22e8, $4d
; THE SIGN READS / "LAS VEGAS / STATION."[END]
Text13Message74:
    INCBIN "../../res/text/US/banks/13.bin", $2335, $1e
jr_013_6353:
    INCBIN "../../res/text/US/banks/13.bin", $2353, $6
; A CHIP IS WORTH / $5.[END]
Text13Message75:
    INCBIN "../../res/text/US/banks/13.bin", $2359, $14
; YOUR INSIDE THE / LAS VEGAS TRAIN / STATION.[END]
Text13Message76:
    INCBIN "../../res/text/US/banks/13.bin", $236d, $10
jr_013_637d:
    INCBIN "../../res/text/US/banks/13.bin", $237d, $1
jr_013_637e:
    INCBIN "../../res/text/US/banks/13.bin", $237e, $e
jr_013_638c:
    INCBIN "../../res/text/US/banks/13.bin", $238c, $a
; IT'S A WELL-WORN / WOODEN BENCH.[END]
Text13Message77:
    INCBIN "../../res/text/US/banks/13.bin", $2396, $1f
jr_013_63b5:
; THIS SIGN POINTS / TO THE "BAGGAGE / CLAIM AREA."[END]
Text13Message78:
    INCBIN "../../res/text/US/banks/13.bin", $23b5, $2e
; YOU DON'T KNOW IF / YOUR NERVES ARE / ACTING UP, BUT / THIS GUY SEEMS / SUSPICIOUS.[END]
Text13Message79:
    INCBIN "../../res/text/US/banks/13.bin", $23e3, $22
jr_013_6405:
    INCBIN "../../res/text/US/banks/13.bin", $2405, $3
jr_013_6408:
    INCBIN "../../res/text/US/banks/13.bin", $2408, $27
; THIS LEADS TO THE / LUGGAGE CLAIM / AREA.[END]
Text13Message7A:
    INCBIN "../../res/text/US/banks/13.bin", $242f, $8
jr_013_6437:
    INCBIN "../../res/text/US/banks/13.bin", $2437, $1e
; YOU NAIL THE GUY / WITH A WICKED LEFTHOOK![PAGE] / YOUR HAND ACHES A / BIT, BUT BOY DID / YOU CLEAN HIS / CLO...
Text13Message7B:
    INCBIN "../../res/text/US/banks/13.bin", $2455, $1f
jr_013_6474:
    INCBIN "../../res/text/US/banks/13.bin", $2474, $1a
jr_013_648e:
    INCBIN "../../res/text/US/banks/13.bin", $248e, $23
jr_013_64b1:
    INCBIN "../../res/text/US/banks/13.bin", $24b1, $5
; UNFORTUNATELY, / THIS ISN'T A / BOXING RING...[PAGE] / A COP QUICKLY / COMES OVER TO / SEE WHAT THE / HUBBUB ...
Text13Message7C:
    INCBIN "../../res/text/US/banks/13.bin", $24b6, $33
jr_013_64e9:
    INCBIN "../../res/text/US/banks/13.bin", $24e9, $17
jr_013_6500:
    INCBIN "../../res/text/US/banks/13.bin", $2500, $c
jr_013_650c:
    INCBIN "../../res/text/US/banks/13.bin", $250c, $2f
jr_013_653b:
    INCBIN "../../res/text/US/banks/13.bin", $253b, $18
jr_013_6553:
    INCBIN "../../res/text/US/banks/13.bin", $2553, $2
; THEY KEEP YOU IN / JAIL, AT THE END / OF THE WEEK, / STOGIE SHOWS UP / AND POSTS BAIL.[END]
Text13Message7D:
    INCBIN "../../res/text/US/banks/13.bin", $2555, $1a
jr_013_656f:
    INCBIN "../../res/text/US/banks/13.bin", $256f, $5
jr_013_6574:
    INCBIN "../../res/text/US/banks/13.bin", $2574, $30
; "I'M GONNA TAKE / YOU SOMEPLACE NICEAND QUIET, ACE," / HE SAYS WITH A / SNICKER. YOU BEGINTO THINK THAT / STO...
Text13Message7E:
    INCBIN "../../res/text/US/banks/13.bin", $25a4, $1f
jr_013_65c3:
    INCBIN "../../res/text/US/banks/13.bin", $25c3, $80
jr_013_6643:
    INCBIN "../../res/text/US/banks/13.bin", $2643, $38
; THE MAN WHISPERS / TO YOU, "HEY! / PSST! YOU'RE / A STRANGER ROUND / HERE AIN'T YA?[PAGE] / IT'S NOT SMART TO...
Text13Message7F:
    INCBIN "../../res/text/US/banks/13.bin", $267b, $24
jr_013_669f:
    INCBIN "../../res/text/US/banks/13.bin", $269f, $11
jr_013_66b0:
    INCBIN "../../res/text/US/banks/13.bin", $26b0, $15
jr_013_66c5:
    INCBIN "../../res/text/US/banks/13.bin", $26c5, $1e
jr_013_66e3:
    INCBIN "../../res/text/US/banks/13.bin", $26e3, $12
jr_013_66f5:
    INCBIN "../../res/text/US/banks/13.bin", $26f5, $18
jr_013_670d:
    INCBIN "../../res/text/US/banks/13.bin", $270d, $1e
jr_013_672b:
    INCBIN "../../res/text/US/banks/13.bin", $272b, $12
jr_013_673d:
    INCBIN "../../res/text/US/banks/13.bin", $273d, $20
jr_013_675d:
    INCBIN "../../res/text/US/banks/13.bin", $275d, $1d
jr_013_677a:
    INCBIN "../../res/text/US/banks/13.bin", $277a, $19
jr_013_6793:
    INCBIN "../../res/text/US/banks/13.bin", $2793, $186d
