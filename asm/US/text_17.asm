; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text17Msgs0:
    db LOW(Text17Message00), HIGH(Text17Message00)
    db LOW(Text17Message01), HIGH(Text17Message01)
    db LOW(Text17Message02), HIGH(Text17Message02)
    db LOW(Text17Message03), HIGH(Text17Message03)
    db LOW(Text17Message04), HIGH(Text17Message04)
    db LOW(Text17Message05), HIGH(Text17Message05)
    db LOW(Text17Message06), HIGH(Text17Message06)
    db LOW(Text17Message07), HIGH(Text17Message07)
    db LOW(Text17Message08), HIGH(Text17Message08)
    db LOW(Text17Message09), HIGH(Text17Message09)
    db LOW(Text17Message0A), HIGH(Text17Message0A)
    db LOW(Text17Message0B), HIGH(Text17Message0B)
    db LOW(Text17Message0C), HIGH(Text17Message0C)
    db LOW(Text17Message0D), HIGH(Text17Message0D)
    db LOW(Text17Message0E), HIGH(Text17Message0E)
    db LOW(Text17Message0F), HIGH(Text17Message0F)
    db LOW(Text17Message10), HIGH(Text17Message10)
    db LOW(Text17Message11), HIGH(Text17Message11)
    db LOW(Text17Message12), HIGH(Text17Message12)
    db LOW(Text17Message13), HIGH(Text17Message13)
    db LOW(Text17Message14), HIGH(Text17Message14)
    db LOW(Text17Message15), HIGH(Text17Message15)
    db LOW(Text17Message16), HIGH(Text17Message16)
    db LOW(Text17Message17), HIGH(Text17Message17)
    db LOW(Text17Message18), HIGH(Text17Message18)
    db LOW(Text17Message19), HIGH(Text17Message19)
    db LOW(Text17Message1A), HIGH(Text17Message1A)
    db LOW(Text17Message1B), HIGH(Text17Message1B)
    db LOW(Text17Message1C), HIGH(Text17Message1C)
    db LOW(Text17Message1D), HIGH(Text17Message1D)
    db LOW(Text17Message1E), HIGH(Text17Message1E)
    db LOW(Text17Message1F), HIGH(Text17Message1F)
    db LOW(Text17Message20), HIGH(Text17Message20)
    db LOW(Text17Message21), HIGH(Text17Message21)
    db LOW(Text17Message22), HIGH(Text17Message22)
    db LOW(Text17Message23), HIGH(Text17Message23)
    db LOW(Text17Message24), HIGH(Text17Message24)
    db LOW(Text17Message25), HIGH(Text17Message25)
    db LOW(Text17Message26), HIGH(Text17Message26)
    db LOW(Text17Message27), HIGH(Text17Message27)
    db LOW(Text17Message28), HIGH(Text17Message28)
    db LOW(Text17Message29), HIGH(Text17Message29)
    db LOW(Text17Message2A), HIGH(Text17Message2A)
    db LOW(Text17Message2B), HIGH(Text17Message2B)
    db LOW(Text17Message2C), HIGH(Text17Message2C)
    db LOW(Text17Message2D), HIGH(Text17Message2D)
    db LOW(Text17Message2E), HIGH(Text17Message2E)
    db LOW(Text17Message2F), HIGH(Text17Message2F)
    db LOW(Text17Message30), HIGH(Text17Message30)
    db LOW(Text17Message31), HIGH(Text17Message31)
    db LOW(Text17Message32), HIGH(Text17Message32)
    db LOW(Text17Message33), HIGH(Text17Message33)
    db LOW(Text17Message34), HIGH(Text17Message34)
    db LOW(Text17Message35), HIGH(Text17Message35)
    db LOW(Text17Message36), HIGH(Text17Message36)
    db LOW(Text17Message37), HIGH(Text17Message37)
    db LOW(Text17Message38), HIGH(Text17Message38)
    db LOW(Text17Message39), HIGH(Text17Message39)
    db LOW(Text17Message3A), HIGH(Text17Message3A)
    db LOW(Text17Message3B), HIGH(Text17Message3B)
    db LOW(Text17Message3C), HIGH(Text17Message3C)
    db LOW(Text17Message3D), HIGH(Text17Message3D)
    db LOW(Text17Message3E), HIGH(Text17Message3E)
    db LOW(Text17Message3F), HIGH(Text17Message3F)
; Sixty-four message pointers for one text group.
Text17Msgs1:
    db LOW(Text17Message40), HIGH(Text17Message40)
    db LOW(Text17Message41), HIGH(Text17Message41)
    db LOW(Text17Message42), HIGH(Text17Message42)
    db LOW(Text17Message43), HIGH(Text17Message43)
    db LOW(Text17Message44), HIGH(Text17Message44)
    db LOW(Text17Message45), HIGH(Text17Message45)
    db LOW(Text17Message46), HIGH(Text17Message46)
    db LOW(Text17Message47), HIGH(Text17Message47)
    db LOW(Text17Message48), HIGH(Text17Message48)
    db LOW(Text17Message49), HIGH(Text17Message49)
    db LOW(Text17Message4A), HIGH(Text17Message4A)
    db LOW(Text17Message4B), HIGH(Text17Message4B)
    db LOW(Text17Message4C)
jr_017_4099:
    db HIGH(Text17Message4C)
    db LOW(Text17Message4D), HIGH(Text17Message4D)
    db LOW(Text17Message4E), HIGH(Text17Message4E)
    db LOW(Text17Message4F), HIGH(Text17Message4F)
    db LOW(Text17Message50), HIGH(Text17Message50)
    db LOW(Text17Message51), HIGH(Text17Message51)
    db LOW(Text17Message52), HIGH(Text17Message52)
    db LOW(Text17Message53), HIGH(Text17Message53)
    db LOW(Text17Message54), HIGH(Text17Message54)
    db LOW(Text17Message55), HIGH(Text17Message55)
    db LOW(Text17Message56), HIGH(Text17Message56)
    db LOW(Text17Message57), HIGH(Text17Message57)
    db LOW(Text17Message58), HIGH(Text17Message58)
    db LOW(Text17Message59), HIGH(Text17Message59)
    db LOW(Text17Message5A), HIGH(Text17Message5A)
    db LOW(Text17Message5B), HIGH(Text17Message5B)
    db LOW(Text17Message5C), HIGH(Text17Message5C)
    db LOW(Text17Message5D), HIGH(Text17Message5D)
    db LOW(Text17Message5E), HIGH(Text17Message5E)
    db LOW(Text17Message5F), HIGH(Text17Message5F)
    db LOW(Text17Message60), HIGH(Text17Message60)
    db LOW(Text17Message61), HIGH(Text17Message61)
    db LOW(Text17Message62), HIGH(Text17Message62)
    db LOW(Text17Message63), HIGH(Text17Message63)
    db LOW(Text17Message64), HIGH(Text17Message64)
jr_017_40ca:
    db LOW(Text17Message65), HIGH(Text17Message65)
    db LOW(Text17Message66), HIGH(Text17Message66)
    db LOW(Text17Message67), HIGH(Text17Message67)
    db LOW(Text17Message68), HIGH(Text17Message68)
    db LOW(Text17Message69), HIGH(Text17Message69)
    db LOW(Text17Message6A), HIGH(Text17Message6A)
    db LOW(Text17Message6B), HIGH(Text17Message6B)
    db LOW(Text17Message6C), HIGH(Text17Message6C)
    db LOW(Text17Message6D), HIGH(Text17Message6D)
    db LOW(Text17Message6E), HIGH(Text17Message6E)
    db LOW(Text17Message6F), HIGH(Text17Message6F)
    db LOW(Text17Message70), HIGH(Text17Message70)
    db LOW(Text17Message71), HIGH(Text17Message71)
    db LOW(Text17Message72), HIGH(Text17Message72)
    db LOW(Text17Message73), HIGH(Text17Message73)
    db LOW(Text17Message74), HIGH(Text17Message74)
    db LOW(Text17Message75), HIGH(Text17Message75)
    db LOW(Text17Message76), HIGH(Text17Message76)
    db LOW(Text17Message77), HIGH(Text17Message77)
    db LOW(Text17Message78), HIGH(Text17Message78)
    db LOW(Text17Message79), HIGH(Text17Message79)
    db LOW(Text17Message7A), HIGH(Text17Message7A)
    db LOW(Text17Message7B), HIGH(Text17Message7B)
    db LOW(Text17Message7C), HIGH(Text17Message7C)
    db LOW(Text17Message7D), HIGH(Text17Message7D)
    db LOW(Text17Message7E), HIGH(Text17Message7E)
    db LOW(Text17Message7F), HIGH(Text17Message7F)
; IT APPEARS TO BE ABAGGAGE CLAIM / TICKET WITH THE / NUMBER "526" / PRINTED ON IT.[END]
Text17Message00:
    INCBIN "../../res/text/US/banks/17.bin", $100, $2a
jr_017_412a:
    INCBIN "../../res/text/US/banks/17.bin", $12a, $14
jr_017_413e:
    INCBIN "../../res/text/US/banks/17.bin", $13e, $e
; IT'S A CARDBOARD / BOX LABELED, / "BONDWELL, THOMAS / S."[END]
Text17Message01:
    INCBIN "../../res/text/US/banks/17.bin", $14c, $34
; IT'S A WALLET MADEOF FINE BLACK / LEATHER, WITH THE / INITIALS "T.S.B." / STAMPED IN THE / CORNER.[END]
Text17Message02:
    INCBIN "../../res/text/US/banks/17.bin", $180, $25
jr_017_41a5:
    INCBIN "../../res/text/US/banks/17.bin", $1a5, $2c
jr_017_41d1:
    INCBIN "../../res/text/US/banks/17.bin", $1d1, $a
; THESE BLINDS WON'TOPEN. THEY MUST BEBROKEN.[END]
Text17Message03:
    INCBIN "../../res/text/US/banks/17.bin", $1db, $2c
; IT'S A HEAVY-DUTY / FREEZER DOOR.[END]
Text17Message04:
    INCBIN "../../res/text/US/banks/17.bin", $207, $6
jr_017_420d:
    INCBIN "../../res/text/US/banks/17.bin", $20d, $5
jr_017_4212:
    INCBIN "../../res/text/US/banks/17.bin", $212, $15
; THE DOOR LEADS TO / THE BACK ROOM.[END]
Text17Message05:
    INCBIN "../../res/text/US/banks/17.bin", $227, $e
jr_017_4235:
    INCBIN "../../res/text/US/banks/17.bin", $235, $1
jr_017_4236:
    INCBIN "../../res/text/US/banks/17.bin", $236, $12
; YOU CAN'T OPEN IT / WHILE THE CLERK'S / WATCHING.[END]
Text17Message06:
    INCBIN "../../res/text/US/banks/17.bin", $248, $1f
jr_017_4267:
    INCBIN "../../res/text/US/banks/17.bin", $267, $f
; THE CLERK STOPS / YOU FROM OPENING / THE GATE AND SAYS,[END]
Text17Message07:
    INCBIN "../../res/text/US/banks/17.bin", $276, $20
jr_017_4296:
    INCBIN "../../res/text/US/banks/17.bin", $296, $14
; "SORRY MACK, / UNAUTHORIZED / PERSONS AIN'T / ALLOWED BACK / THERE...UNLESS, OFCOURSE, THEY'RE / DEAD!"[END]
Text17Message08:
    INCBIN "../../res/text/US/banks/17.bin", $2aa, $10
jr_017_42ba:
    INCBIN "../../res/text/US/banks/17.bin", $2ba, $4e
; "I THOUGHT I TOLD / YOU, YOU CAN'T GO / BACK THERE![PAGE] / ONLY THE PROPER / AUTHORITIES HAVE / ACCESS TO TH...
Text17Message09:
    INCBIN "../../res/text/US/banks/17.bin", $308, $20
jr_017_4328:
    INCBIN "../../res/text/US/banks/17.bin", $328, $7
jr_017_432f:
    INCBIN "../../res/text/US/banks/17.bin", $32f, $28
jr_017_4357:
    INCBIN "../../res/text/US/banks/17.bin", $357, $18
; YOU FLICK OPEN THEPOCKET KNIFE.[END]
Text17Message0A:
    INCBIN "../../res/text/US/banks/17.bin", $36f, $10
jr_017_437f:
    INCBIN "../../res/text/US/banks/17.bin", $37f, $10
; WITH A LURCH, / THE TRAIN LEAVES / THE STATION AND / SPEEDS TOWARDS / ITS DESTINATION.[END]
Text17Message0B:
    INCBIN "../../res/text/US/banks/17.bin", $38f, $1f
jr_017_43ae:
    INCBIN "../../res/text/US/banks/17.bin", $3ae, $30
; THE BLOW STAGGERS / THE CLERK![PAGE] / BEFORE HE PASSES / OUT, HE MANAGES TOPRESS THE ALARM.[END]
Text17Message0C:
    INCBIN "../../res/text/US/banks/17.bin", $3de, $51
; THE SWAYING / MOTION QUICKLY / LULLS YOU TO / SLEEP.[END]
Text17Message0D:
    INCBIN "../../res/text/US/banks/17.bin", $42f, $2f
; STARTLED BY YOUR / RUDENESS, THE / CLERK PRESSES / THE ALARM TO CALL / THE POLICE.[END]
Text17Message0E:
    INCBIN "../../res/text/US/banks/17.bin", $45e, $2
jr_017_4460:
    INCBIN "../../res/text/US/banks/17.bin", $460, $7
jr_017_4467:
    INCBIN "../../res/text/US/banks/17.bin", $467, $13
jr_017_447a:
    INCBIN "../../res/text/US/banks/17.bin", $47a, $3
jr_017_447d:
    INCBIN "../../res/text/US/banks/17.bin", $47d, $2c
; YOU LOOK ABOUT THETRAIN AND DRIFT / QUICKLY OFF TO / SLEEP...[END]
Text17Message0F:
    INCBIN "../../res/text/US/banks/17.bin", $4a9, $10
jr_017_44b9:
    INCBIN "../../res/text/US/banks/17.bin", $4b9, $2a
; THE CLERK LOOKS ATYOUR LICENSE.[END]
Text17Message10:
    INCBIN "../../res/text/US/banks/17.bin", $4e3, $a
jr_017_44ed:
    INCBIN "../../res/text/US/banks/17.bin", $4ed, $14
jr_017_4501:
    INCBIN "../../res/text/US/banks/17.bin", $501, $2
; HE SNORTS, / "PRIVATE DICK, / EH? SORRY, ONLY / UNIFORMS ARE / ALLOWED IN BACK."[END]
Text17Message11:
    INCBIN "../../res/text/US/banks/17.bin", $503, $2
jr_017_4505:
    INCBIN "../../res/text/US/banks/17.bin", $505, $1d
jr_017_4522:
    INCBIN "../../res/text/US/banks/17.bin", $522, $19
jr_017_453b:
    INCBIN "../../res/text/US/banks/17.bin", $53b, $11
; THE CLERK RETURNS / THE LICENSE, AND / SAYS THERE'S NO / ONE HERE BY THAT / NAME.[END]
Text17Message12:
    INCBIN "../../res/text/US/banks/17.bin", $54c, $25
jr_017_4571:
    INCBIN "../../res/text/US/banks/17.bin", $571, $14
jr_017_4585:
    INCBIN "../../res/text/US/banks/17.bin", $585, $11
; THE CLERK SIGHS INA BORED TONE,[END]
Text17Message13:
    INCBIN "../../res/text/US/banks/17.bin", $596, $1f
jr_017_45b5:
    INCBIN "../../res/text/US/banks/17.bin", $5b5, $1
; "NOPE, NO / BELONGINGS FOR A / MR. JONES."[END]
Text17Message14:
    INCBIN "../../res/text/US/banks/17.bin", $5b6, $27
; YOU RUB THE SLEEP / FROM YOUR EYES...[PAGE] / YOU LOOK ABOUT / YOUR SEAT MAKING / SURE YOU HAVE / EVERYTHING ...
Text17Message15:
    INCBIN "../../res/text/US/banks/17.bin", $5dd, $10
jr_017_45ed:
    INCBIN "../../res/text/US/banks/17.bin", $5ed, $17
jr_017_4604:
    INCBIN "../../res/text/US/banks/17.bin", $604, $19
jr_017_461d:
    INCBIN "../../res/text/US/banks/17.bin", $61d, $3
jr_017_4620:
    INCBIN "../../res/text/US/banks/17.bin", $620, $16
jr_017_4636:
    INCBIN "../../res/text/US/banks/17.bin", $636, $17
jr_017_464d:
    INCBIN "../../res/text/US/banks/17.bin", $64d, $7
; THE CLERK AKS / IN AN ANGRY TONE, / "JUST WHAT DO YOU / WANT?![PAGE] / IF YOU'VE NO / BUSINESS, THEN / JUST L...
Text17Message16:
    INCBIN "../../res/text/US/banks/17.bin", $654, $1f
jr_017_4673:
    INCBIN "../../res/text/US/banks/17.bin", $673, $15
jr_017_4688:
    INCBIN "../../res/text/US/banks/17.bin", $688, $a
jr_017_4692:
    INCBIN "../../res/text/US/banks/17.bin", $692, $e
jr_017_46a0:
    INCBIN "../../res/text/US/banks/17.bin", $6a0, $13
jr_017_46b3:
    INCBIN "../../res/text/US/banks/17.bin", $6b3, $4e
; "IF YOU NEED TO / COLLECT SOMEONE'S / BELONGINGS, THEN / JUST BRING ME / THE TOE TAG."[END]
Text17Message17:
    INCBIN "../../res/text/US/banks/17.bin", $701, $14
jr_017_4715:
    INCBIN "../../res/text/US/banks/17.bin", $715, $3b
; WITH AN ODD GLEAM / IN HIS EYE, THE / CLERK SAYS,[PAGE] / "I DON'T KNOW ALL / THE DETAILS, BUT / THEY SAY BON...
Text17Message18:
    INCBIN "../../res/text/US/banks/17.bin", $750, $20
jr_017_4770:
    INCBIN "../../res/text/US/banks/17.bin", $770, $1e
jr_017_478e:
    INCBIN "../../res/text/US/banks/17.bin", $78e, $32
jr_017_47c0:
    INCBIN "../../res/text/US/banks/17.bin", $7c0, $4
jr_017_47c4:
    INCBIN "../../res/text/US/banks/17.bin", $7c4, $3b
jr_017_47ff:
    INCBIN "../../res/text/US/banks/17.bin", $7ff, $3
jr_017_4802:
    INCBIN "../../res/text/US/banks/17.bin", $802, $4
jr_017_4806:
    INCBIN "../../res/text/US/banks/17.bin", $806, $26
; NOT ONLY IS THIS / ROOM COLD, BUT IT / ALSO HAS A STRANGESMELL OF SOMETHINGROTTING! YUCK![END]
Text17Message19:
    INCBIN "../../res/text/US/banks/17.bin", $82c, $23
jr_017_484f:
    INCBIN "../../res/text/US/banks/17.bin", $84f, $33
; CHARGED WITH / COLD-BLOODED / MURDER, YOU AWAIT / THE ELECTRIC / CHAIR...[END]
Text17Message1A:
    INCBIN "../../res/text/US/banks/17.bin", $882, $10
jr_017_4892:
    INCBIN "../../res/text/US/banks/17.bin", $892, $22
jr_017_48b4:
    INCBIN "../../res/text/US/banks/17.bin", $8b4, $10
; IT'S A WELL / PRESERVED BODY. / YOU LOOK IT UP ANDDOWN, WONDERING / WHAT HAPPENED TO / HIM.[END]
Text17Message1B:
    INCBIN "../../res/text/US/banks/17.bin", $8c4, $1f
jr_017_48e3:
    INCBIN "../../res/text/US/banks/17.bin", $8e3, $d
jr_017_48f0:
    INCBIN "../../res/text/US/banks/17.bin", $8f0, $28
; IT LOOKS LIKE / SOMEONE USED THIS / GUY FOR TARGET / PRACTICE![PAGE] / YOU NOTICE A SCAR / RUNNING THROUGH / ...
Text17Message1C:
    INCBIN "../../res/text/US/banks/17.bin", $918, $3e
jr_017_4956:
    INCBIN "../../res/text/US/banks/17.bin", $956, $b
jr_017_4961:
    INCBIN "../../res/text/US/banks/17.bin", $961, $2a
jr_017_498b:
    INCBIN "../../res/text/US/banks/17.bin", $98b, $18
jr_017_49a3:
    INCBIN "../../res/text/US/banks/17.bin", $9a3, $10
; YOU WONDER WHAT / COULD HAVE / HAPPENED TO CAUSE / SUCH AN END TO THEGUY![END]
Text17Message1D:
    INCBIN "../../res/text/US/banks/17.bin", $9b3, $10
jr_017_49c3:
    INCBIN "../../res/text/US/banks/17.bin", $9c3, $34
; IT'S A DRAWER IN / WHICH THE STIFFS / ARE KEPT ON ICE.[END]
Text17Message1E:
    INCBIN "../../res/text/US/banks/17.bin", $9f7, $26
jr_017_4a1d:
    INCBIN "../../res/text/US/banks/17.bin", $a1d, $d
; UH-OH! YOU HEAR / FOOTSTEPS![PAGE] / ONE OF THE THUGS / GRABS HOLD OF YOURCOLLAR AND SAYS, / "SO YA MANAGED /...
Text17Message1F:
    INCBIN "../../res/text/US/banks/17.bin", $a2a, $17
jr_017_4a41:
    INCBIN "../../res/text/US/banks/17.bin", $a41, $8
jr_017_4a49:
    INCBIN "../../res/text/US/banks/17.bin", $a49, $2b
jr_017_4a74:
    INCBIN "../../res/text/US/banks/17.bin", $a74, $b
jr_017_4a7f:
    INCBIN "../../res/text/US/banks/17.bin", $a7f, $a
jr_017_4a89:
    INCBIN "../../res/text/US/banks/17.bin", $a89, $2c
jr_017_4ab5:
    INCBIN "../../res/text/US/banks/17.bin", $ab5, $43
jr_017_4af8:
    INCBIN "../../res/text/US/banks/17.bin", $af8, $d
jr_017_4b05:
    INCBIN "../../res/text/US/banks/17.bin", $b05, $3d
; JUST THE SIGHT OF / THESE STIFFS MAKESYOUR SKIN CRAWL.[END]
Text17Message20:
    INCBIN "../../res/text/US/banks/17.bin", $b42, $35
; YOU HEAR A WORRIEDVOICE SAY, "UH-OH / MOOSE! HE AIN'T / HERE!"[PAGE] / A SECOND VOICE / REPLIES, "DA FRONTDOO...
Text17Message21:
    INCBIN "../../res/text/US/banks/17.bin", $b77, $10
jr_017_4b87:
    INCBIN "../../res/text/US/banks/17.bin", $b87, $f
jr_017_4b96:
    INCBIN "../../res/text/US/banks/17.bin", $b96, $8a
jr_017_4c20:
    INCBIN "../../res/text/US/banks/17.bin", $c20, $41
jr_017_4c61:
    INCBIN "../../res/text/US/banks/17.bin", $c61, $14
jr_017_4c75:
    INCBIN "../../res/text/US/banks/17.bin", $c75, $1
jr_017_4c76:
    INCBIN "../../res/text/US/banks/17.bin", $c76, $2a
; IT'S A SIGN THAT / READS, "CLOSE / DRAWERS AFTER / EXAMINATIONS."[END]
Text17Message22:
    INCBIN "../../res/text/US/banks/17.bin", $ca0, $4
jr_017_4ca4:
    INCBIN "../../res/text/US/banks/17.bin", $ca4, $38
; THE TOE TAG READS / "JONES, SQUIDLY."[END]
Text17Message23:
    INCBIN "../../res/text/US/banks/17.bin", $cdc, $24
; THE TOE TAG READS / "BONDWELL, THOMAS / S."[END]
Text17Message24:
    INCBIN "../../res/text/US/banks/17.bin", $d00, $1
jr_017_4d01:
    INCBIN "../../res/text/US/banks/17.bin", $d01, $1d
jr_017_4d1e:
    INCBIN "../../res/text/US/banks/17.bin", $d1e, $a
; IT'S THE FRONT / DESK.[END]
Text17Message25:
    INCBIN "../../res/text/US/banks/17.bin", $d28, $15
; TWO MEN FRISK YOU.[END]
Text17Message26:
    INCBIN "../../res/text/US/banks/17.bin", $d3d, $10
jr_017_4d4d:
    INCBIN "../../res/text/US/banks/17.bin", $d4d, $3
; YOU'RE INSIDE AN / INDUSTRIAL SIZE / LAUNDRY HAMPER. / PHEW! IT STINKS.[END]
Text17Message27:
    INCBIN "../../res/text/US/banks/17.bin", $d50, $10
jr_017_4d60:
    INCBIN "../../res/text/US/banks/17.bin", $d60, $32
; SUDDENLY, THE / HEAVY LID SLAMS / SHUT![END]
Text17Message28:
    INCBIN "../../res/text/US/banks/17.bin", $d92, $1f
jr_017_4db1:
    INCBIN "../../res/text/US/banks/17.bin", $db1, $5
; YOU CAN FEEL / SOMEONE PUSHING / THE DUMPSTER! THE / DUMPSTER STOPS / WITH A JOLT AND A / CRASH![PAGE] / IT'S...
Text17Message29:
    INCBIN "../../res/text/US/banks/17.bin", $db6, $a
jr_017_4dc0:
    INCBIN "../../res/text/US/banks/17.bin", $dc0, $6
jr_017_4dc6:
    INCBIN "../../res/text/US/banks/17.bin", $dc6, $aa
jr_017_4e70:
    INCBIN "../../res/text/US/banks/17.bin", $e70, $b
jr_017_4e7b:
    INCBIN "../../res/text/US/banks/17.bin", $e7b, $62
; YOU BLINK AS THE / BRIGHT LIGHT POURSIN...[PAGE] / YOUR EYES BEGIN TOADJUST AS YOU / NOTICE TWO BURLY / THUGS...
Text17Message2A:
    INCBIN "../../res/text/US/banks/17.bin", $edd, $10
jr_017_4eed:
    INCBIN "../../res/text/US/banks/17.bin", $eed, $29
jr_017_4f16:
    INCBIN "../../res/text/US/banks/17.bin", $f16, $c
jr_017_4f22:
    INCBIN "../../res/text/US/banks/17.bin", $f22, $2
jr_017_4f24:
    INCBIN "../../res/text/US/banks/17.bin", $f24, $29
; AFTER THE TWO / GOONS FRISK YOU, / THEY CAN'T FIND / ANYTHING OF / INTEREST TO MAKE / IT WORTHWHILE TO / KEEP...
Text17Message2B:
    INCBIN "../../res/text/US/banks/17.bin", $f4d, $7
jr_017_4f54:
    INCBIN "../../res/text/US/banks/17.bin", $f54, $4
jr_017_4f58:
    INCBIN "../../res/text/US/banks/17.bin", $f58, $1f
jr_017_4f77:
    INCBIN "../../res/text/US/banks/17.bin", $f77, $14
jr_017_4f8b:
    INCBIN "../../res/text/US/banks/17.bin", $f8b, $4b
jr_017_4fd6:
    INCBIN "../../res/text/US/banks/17.bin", $fd6, $23
jr_017_4ff9:
    INCBIN "../../res/text/US/banks/17.bin", $ff9, $23
jr_017_501c:
    INCBIN "../../res/text/US/banks/17.bin", $101c, $6d
jr_017_5089:
    INCBIN "../../res/text/US/banks/17.bin", $1089, $1d
jr_017_50a6:
    INCBIN "../../res/text/US/banks/17.bin", $10a6, $14
jr_017_50ba:
    INCBIN "../../res/text/US/banks/17.bin", $10ba, $9
; AS THE TWO GOONS / FRISK YOU, THEY / FIND THE PICTURE / OF SIEGEL SHAKING / HANDS WITH THE / UNKNOWN "D.V."[P...
Text17Message2C:
    INCBIN "../../res/text/US/banks/17.bin", $10c3, $27
jr_017_50ea:
    INCBIN "../../res/text/US/banks/17.bin", $10ea, $17
jr_017_5101:
    INCBIN "../../res/text/US/banks/17.bin", $1101, $36
jr_017_5137:
    INCBIN "../../res/text/US/banks/17.bin", $1137, $12
jr_017_5149:
    INCBIN "../../res/text/US/banks/17.bin", $1149, $6
jr_017_514f:
    INCBIN "../../res/text/US/banks/17.bin", $114f, $78
jr_017_51c7:
    INCBIN "../../res/text/US/banks/17.bin", $11c7, $32
jr_017_51f9:
    INCBIN "../../res/text/US/banks/17.bin", $11f9, $3a
; AS THE TWO GOONS / FRISK YOU, THEY / FIND THE LETTER TOMALONE.[PAGE] / "WOW, LOOK AT THATMOOSE," SAYS THE / S...
Text17Message2D:
    INCBIN "../../res/text/US/banks/17.bin", $1233, $2
jr_017_5235:
    INCBIN "../../res/text/US/banks/17.bin", $1235, $14
jr_017_5249:
    INCBIN "../../res/text/US/banks/17.bin", $1249, $11
jr_017_525a:
    INCBIN "../../res/text/US/banks/17.bin", $125a, $30
jr_017_528a:
    INCBIN "../../res/text/US/banks/17.bin", $128a, $14
jr_017_529e:
    INCBIN "../../res/text/US/banks/17.bin", $129e, $50
jr_017_52ee:
    INCBIN "../../res/text/US/banks/17.bin", $12ee, $42
jr_017_5330:
    INCBIN "../../res/text/US/banks/17.bin", $1330, $31
jr_017_5361:
    INCBIN "../../res/text/US/banks/17.bin", $1361, $c
jr_017_536d:
    INCBIN "../../res/text/US/banks/17.bin", $136d, $1f
jr_017_538c:
    INCBIN "../../res/text/US/banks/17.bin", $138c, $6
jr_017_5392:
    INCBIN "../../res/text/US/banks/17.bin", $1392, $18
jr_017_53aa:
    INCBIN "../../res/text/US/banks/17.bin", $13aa, $14
; YOU ARE IN A / DIMLY-LIT LAUNDRY / ROOM. THE SMELL OFDETERGENT / OVERWHELMS YOUR / SENSES.[END]
Text17Message2E:
    INCBIN "../../res/text/US/banks/17.bin", $13be, $3
jr_017_53c1:
    INCBIN "../../res/text/US/banks/17.bin", $13c1, $1c
jr_017_53dd:
    INCBIN "../../res/text/US/banks/17.bin", $13dd, $15
jr_017_53f2:
    INCBIN "../../res/text/US/banks/17.bin", $13f2, $1f
; IT'S A CHUTE USED / TO DEPOSIT THE / DIRTY LAUNDRY INTOTHE ROOM FOR / CLEANING.[END]
Text17Message2F:
    INCBIN "../../res/text/US/banks/17.bin", $1411, $3
jr_017_5414:
    INCBIN "../../res/text/US/banks/17.bin", $1414, $1c
jr_017_5430:
    INCBIN "../../res/text/US/banks/17.bin", $1430, $22
jr_017_5452:
    INCBIN "../../res/text/US/banks/17.bin", $1452, $9
; YOU SHOULD'VE MADESURE YOU LOST / THOSE GOONS BEFOREYOU BEGAN ROAMING / AROUND.[END]
Text17Message30:
    INCBIN "../../res/text/US/banks/17.bin", $145b, $10
jr_017_546b:
    INCBIN "../../res/text/US/banks/17.bin", $146b, $f
jr_017_547a:
    INCBIN "../../res/text/US/banks/17.bin", $147a, $2d
; YOU'D BETTER GET / LOOSE BEFORE THEY / COME BACK.[END]
Text17Message31:
    INCBIN "../../res/text/US/banks/17.bin", $14a7, $10
jr_017_54b7:
    INCBIN "../../res/text/US/banks/17.bin", $14b7, $f
jr_017_54c6:
    INCBIN "../../res/text/US/banks/17.bin", $14c6, $f
; THE THUGS TIE YOU / UP TIGHTLY.[END]
Text17Message32:
    INCBIN "../../res/text/US/banks/17.bin", $14d5, $12
jr_017_54e7:
    INCBIN "../../res/text/US/banks/17.bin", $14e7, $c
jr_017_54f3:
; BENT NAILS AND / SPLINTERS ADORN / THIS WOODEN CRATE.[END]
Text17Message33:
    INCBIN "../../res/text/US/banks/17.bin", $14f3, $1f
jr_017_5512:
    INCBIN "../../res/text/US/banks/17.bin", $1512, $13
; THOSE SHARP NAILS / LOOK HAZARDOUS.[END]
Text17Message34:
    INCBIN "../../res/text/US/banks/17.bin", $1525, $1f
jr_017_5544:
    INCBIN "../../res/text/US/banks/17.bin", $1544, $3
; IF IT WEREN'T FOR / THAT BASKET, YOU'DSTILL BE TIED / UP.[END]
Text17Message35:
    INCBIN "../../res/text/US/banks/17.bin", $1547, $1f
jr_017_5566:
    INCBIN "../../res/text/US/banks/17.bin", $1566, $17
; YOU HEAR A VOICE / SAY, "HEY SPIKE, / HE'S GONE!"[END]
Text17Message36:
    INCBIN "../../res/text/US/banks/17.bin", $157d, $10
jr_017_558d:
    INCBIN "../../res/text/US/banks/17.bin", $158d, $1e
; A GRUFF VOICE / REPLIES, "THERE'S / NO SIGN DAT HE / LEFT, SO HE MUST / BE HIDIN' HERE, / SOMEWHERE."[END]
Text17Message37:
    INCBIN "../../res/text/US/banks/17.bin", $15ab, $7
jr_017_55b2:
    INCBIN "../../res/text/US/banks/17.bin", $15b2, $5
jr_017_55b7:
    INCBIN "../../res/text/US/banks/17.bin", $15b7, $50
; IT'S AN / INDUSTRIAL-SIZED / WASHER.[END]
Text17Message38:
    INCBIN "../../res/text/US/banks/17.bin", $1607, $21
; IT'S LAUNDRY SOAP![PAGE] / YOU WANT TO DO / LAUNDRY OR SOLVE AMYSTERY?[END]
Text17Message39:
    INCBIN "../../res/text/US/banks/17.bin", $1628, $23
jr_017_564b:
    INCBIN "../../res/text/US/banks/17.bin", $164b, $1a
; THE LABEL ON THE / BOX READS, / "LAUNDRY / DETERGENT."[END]
Text17Message3A:
    INCBIN "../../res/text/US/banks/17.bin", $1665, $c
jr_017_5671:
    INCBIN "../../res/text/US/banks/17.bin", $1671, $25
; IT'S THE HUGE / LAUNDRY HAMPER / YOU RODE IN ON.[END]
Text17Message3B:
    INCBIN "../../res/text/US/banks/17.bin", $1696, $25
jr_017_56bb:
    INCBIN "../../res/text/US/banks/17.bin", $16bb, $8
; THOSE THUGS ARE / SURE TO COME BACK![PAGE] / BUT YOU KNOW YOU / CAN'T LEAVE, / YOU'RE ON THE ONLYLEAD YOU'VE ...
Text17Message3C:
    INCBIN "../../res/text/US/banks/17.bin", $16c3, $37
jr_017_56fa:
    INCBIN "../../res/text/US/banks/17.bin", $16fa, $9
jr_017_5703:
    INCBIN "../../res/text/US/banks/17.bin", $1703, $11
jr_017_5714:
    INCBIN "../../res/text/US/banks/17.bin", $1714, $e
jr_017_5722:
    INCBIN "../../res/text/US/banks/17.bin", $1722, $9
jr_017_572b:
    INCBIN "../../res/text/US/banks/17.bin", $172b, $3d
; YOU SEARCH FOR / SOME WAY TO LOSE / THOSE GOONS![END]
Text17Message3D:
    INCBIN "../../res/text/US/banks/17.bin", $1768, $7
jr_017_576f:
    INCBIN "../../res/text/US/banks/17.bin", $176f, $9
jr_017_5778:
    INCBIN "../../res/text/US/banks/17.bin", $1778, $16
jr_017_578e:
    INCBIN "../../res/text/US/banks/17.bin", $178e, $7
; YOUR TIED HANDS / PREVENT YOU FROM / DOING THAT![END]
Text17Message3E:
    INCBIN "../../res/text/US/banks/17.bin", $1795, $10
jr_017_57a5:
    INCBIN "../../res/text/US/banks/17.bin", $17a5, $18
jr_017_57bd:
    INCBIN "../../res/text/US/banks/17.bin", $17bd, $5
; YOU VIGOROUSLY / WORK THE ROPE BACKAND FORTH OVER THENAILS.[END]
Text17Message3F:
    INCBIN "../../res/text/US/banks/17.bin", $17c2, $3a
; THE ROPE BREAKS![PAGE] / YOUR HANDS ARE / FREE![END]
Text17Message40:
    INCBIN "../../res/text/US/banks/17.bin", $17fc, $21
jr_017_581d:
    INCBIN "../../res/text/US/banks/17.bin", $181d, $5
; UH-OH! YOU HEAR / FOOTSTEPS![PAGE] / THE TWO GOONS ARE / COMING BACK.[END]
Text17Message41:
    INCBIN "../../res/text/US/banks/17.bin", $1822, $17
jr_017_5839:
    INCBIN "../../res/text/US/banks/17.bin", $1839, $23
; ONE OF THE GOONS / GRABS YOU AND / SAYS, "DA BOSS / SAYS HE DON'T KNOWYA!"[PAGE] / "YEAH," CHIMES THEOTHER ON...
Text17Message42:
    INCBIN "../../res/text/US/banks/17.bin", $185c, $1f
jr_017_587b:
    INCBIN "../../res/text/US/banks/17.bin", $187b, $8
jr_017_5883:
    INCBIN "../../res/text/US/banks/17.bin", $1883, $e
jr_017_5891:
    INCBIN "../../res/text/US/banks/17.bin", $1891, $d
jr_017_589e:
    INCBIN "../../res/text/US/banks/17.bin", $189e, $36
; BEFORE YOU CAN / UTTER THOSE LAST / WORDS, THE GOONS / FILL YOU FULL OF / LEAD![END]
Text17Message43:
    INCBIN "../../res/text/US/banks/17.bin", $18d4, $d
jr_017_58e1:
    INCBIN "../../res/text/US/banks/17.bin", $18e1, $a
jr_017_58eb:
    INCBIN "../../res/text/US/banks/17.bin", $18eb, $e
jr_017_58f9:
    INCBIN "../../res/text/US/banks/17.bin", $18f9, $21
jr_017_591a:
    INCBIN "../../res/text/US/banks/17.bin", $191a, $2
; IT'S AT TIMES LIKETHESE THAT YOU / WISH YOU WERE A / MAGICIAN![END]
Text17Message44:
    INCBIN "../../res/text/US/banks/17.bin", $191c, $36
jr_017_5952:
    INCBIN "../../res/text/US/banks/17.bin", $1952, $5
; THE GOONS FIND YOUWANDERING / AIMLESSLY![END]
Text17Message45:
    INCBIN "../../res/text/US/banks/17.bin", $1957, $27
; YOU POUR DETERGENTINTO THE WASHER.[END]
Text17Message46:
    INCBIN "../../res/text/US/banks/17.bin", $197e, $10
jr_017_598e:
    INCBIN "../../res/text/US/banks/17.bin", $198e, $13
; YOU HAVE A STRANGEURGE TO TAKE OFF / YOUR CLOTHES.[END]
Text17Message47:
    INCBIN "../../res/text/US/banks/17.bin", $19a1, $3
jr_017_59a4:
    INCBIN "../../res/text/US/banks/17.bin", $19a4, $d
jr_017_59b1:
    INCBIN "../../res/text/US/banks/17.bin", $19b1, $21
; YOU'VE NO IDEA / WHAT TO DO NEXT...[PAGE] / YOU'VE NEVER USED / A WASHING MACHINE / BEFORE![END]
Text17Message48:
    INCBIN "../../res/text/US/banks/17.bin", $19d2, $2
jr_017_59d4:
    INCBIN "../../res/text/US/banks/17.bin", $19d4, $30
jr_017_5a04:
    INCBIN "../../res/text/US/banks/17.bin", $1a04, $c
jr_017_5a10:
    INCBIN "../../res/text/US/banks/17.bin", $1a10, $2
jr_017_5a12:
    INCBIN "../../res/text/US/banks/17.bin", $1a12, $e
; WHEN THE THUGS / DRAGGED YOU OUT, / THEY MUST HAVE / BROKEN THE LID.[PAGE] / IT DOESN'T CLOSE / ANYMORE...[END]
Text17Message49:
    INCBIN "../../res/text/US/banks/17.bin", $1a20, $27
jr_017_5a47:
    INCBIN "../../res/text/US/banks/17.bin", $1a47, $18
jr_017_5a5f:
    INCBIN "../../res/text/US/banks/17.bin", $1a5f, $1c
; THE CHUTE'S TOO / SLIPPERY TO CLIMB.[END]
Text17Message4A:
    INCBIN "../../res/text/US/banks/17.bin", $1a7b, $5
jr_017_5a80:
    INCBIN "../../res/text/US/banks/17.bin", $1a80, $19
jr_017_5a99:
    INCBIN "../../res/text/US/banks/17.bin", $1a99, $5
; ONE OF THE GOONS / SMACKS YOU HARD ASHE SAYS, "ARE YA / TRYING TO ESCAPE?[PAGE] / I GUESS YA DIDN'T / DO SUCH...
Text17Message4B:
    INCBIN "../../res/text/US/banks/17.bin", $1a9e, $28
jr_017_5ac6:
    INCBIN "../../res/text/US/banks/17.bin", $1ac6, $b
jr_017_5ad1:
    INCBIN "../../res/text/US/banks/17.bin", $1ad1, $9
jr_017_5ada:
    INCBIN "../../res/text/US/banks/17.bin", $1ada, $14
jr_017_5aee:
    INCBIN "../../res/text/US/banks/17.bin", $1aee, $12
jr_017_5b00:
    INCBIN "../../res/text/US/banks/17.bin", $1b00, $25
jr_017_5b25:
    INCBIN "../../res/text/US/banks/17.bin", $1b25, $a
; "DA BOSS DON'T / KNOW YA AND HE / DON'T LIKE IT THATYA GOT DAT LETTER / TO MALONE, EITHER![PAGE] / I GUESS YA...
Text17Message4C:
    INCBIN "../../res/text/US/banks/17.bin", $1b2f, $16
jr_017_5b45:
    INCBIN "../../res/text/US/banks/17.bin", $1b45, $1c
jr_017_5b61:
    INCBIN "../../res/text/US/banks/17.bin", $1b61, $2d
jr_017_5b8e:
    INCBIN "../../res/text/US/banks/17.bin", $1b8e, $76
jr_017_5c04:
    INCBIN "../../res/text/US/banks/17.bin", $1c04, $39
; YOU'RE IN THE / BUILDING'S / HALLWAY.[END]
Text17Message4D:
    INCBIN "../../res/text/US/banks/17.bin", $1c3d, $22
; THROUGH THE WINDOWYOU SEE AND EMPTY / STREET. THERE'S NOONE THERE![END]
Text17Message4E:
    INCBIN "../../res/text/US/banks/17.bin", $1c5f, $1f
jr_017_5c7e:
    INCBIN "../../res/text/US/banks/17.bin", $1c7e, $3
jr_017_5c81:
    INCBIN "../../res/text/US/banks/17.bin", $1c81, $1f
jr_017_5ca0:
; IT'S A SIGN / LISTING THE PRICESON LAUNDRY / SERVICES.[END]
Text17Message4F:
    INCBIN "../../res/text/US/banks/17.bin", $1ca0, $5
jr_017_5ca5:
    INCBIN "../../res/text/US/banks/17.bin", $1ca5, $2e
; THERE'S NO CLERK / BEHIND THIS / COUNTER.[END]
Text17Message50:
    INCBIN "../../res/text/US/banks/17.bin", $1cd3, $26
; THE CONDUCTOR / APPROACHES AND / SAYS,[END]
Text17Message51:
    INCBIN "../../res/text/US/banks/17.bin", $1cf9, $23
; THOSE GOONS DON'T / SEEM TOO SMART, / THERE MUST BE / SOMETHING TO DO TOMAKE THEM THINK / YOU LEFT![END]
Text17Message52:
    INCBIN "../../res/text/US/banks/17.bin", $1d1c, $10
jr_017_5d2c:
    INCBIN "../../res/text/US/banks/17.bin", $1d2c, $4c
; THOSE STAIRS LEAD / DOWN TO THE / LAUNDRY ROOM.[END]
Text17Message53:
    INCBIN "../../res/text/US/banks/17.bin", $1d78, $6
jr_017_5d7e:
    INCBIN "../../res/text/US/banks/17.bin", $1d7e, $26
; IT'S A DOOR WITH / THE WORD "OFFICE" / IN BIG, BOLD / LETTERS.[END]
Text17Message54:
    INCBIN "../../res/text/US/banks/17.bin", $1da4, $39
; WITH AN EASY PULL,YOU LIFT THE / COUNTER DOOR.[END]
Text17Message55:
    INCBIN "../../res/text/US/banks/17.bin", $1ddd, $22
jr_017_5dff:
    INCBIN "../../res/text/US/banks/17.bin", $1dff, $b
; YOU LOWER THE / COUNTER.[END]
Text17Message56:
    INCBIN "../../res/text/US/banks/17.bin", $1e0a, $17
; YOU'RE IN A FAIRLYLARGE OFFICE.[END]
Text17Message57:
    INCBIN "../../res/text/US/banks/17.bin", $1e21, $1e
jr_017_5e3f:
    INCBIN "../../res/text/US/banks/17.bin", $1e3f, $2
; IT'S A BIG / DARTBOARD.[PAGE] / CORK PANELS / SURROUND THE / BOARD TO KEEP / STRAY DARTS OUT / OF THE WALL.[END]
Text17Message58:
    INCBIN "../../res/text/US/banks/17.bin", $1e41, $1f
jr_017_5e60:
    INCBIN "../../res/text/US/banks/17.bin", $1e60, $3b
; THE DART BOARD / SEEMS A LITTLE OUTOF PLACE IN THIS / OFFICE.[END]
Text17Message59:
    INCBIN "../../res/text/US/banks/17.bin", $1e9b, $3a
; THESE ATTRACTIVE / DRAPES HAVE A / LOVELY BROCADED / FLORAL PATTERN.[END]
Text17Message5A:
    INCBIN "../../res/text/US/banks/17.bin", $1ed5, $1f
jr_017_5ef4:
    INCBIN "../../res/text/US/banks/17.bin", $1ef4, $20
; THE WARM SUNLIGHT / SHINES THROUGH.[END]
Text17Message5B:
    INCBIN "../../res/text/US/banks/17.bin", $1f14, $1
jr_017_5f15:
    INCBIN "../../res/text/US/banks/17.bin", $1f15, $21
; IT'S A LEATHER / OFFICE CHAIR.[END]
Text17Message5C:
    INCBIN "../../res/text/US/banks/17.bin", $1f36, $1d
; IT'S A MAHOGANY / DESK WITH A / GLOSSY, SHELLACKEDFINISH.[END]
Text17Message5D:
    INCBIN "../../res/text/US/banks/17.bin", $1f53, $2d
jr_017_5f80:
    INCBIN "../../res/text/US/banks/17.bin", $1f80, $9
; IT'S AN UNMARKED / BRASS KEY.[END]
Text17Message5E:
    INCBIN "../../res/text/US/banks/17.bin", $1f89, $1c
; IT'S A SMALL / MAGNET.[PAGE] / IT LOOKS LIKE A / BUTTON OF SOME / SORT.[END]
Text17Message5F:
    INCBIN "../../res/text/US/banks/17.bin", $1fa5, $3
jr_017_5fa8:
    INCBIN "../../res/text/US/banks/17.bin", $1fa8, $1c
jr_017_5fc4:
    INCBIN "../../res/text/US/banks/17.bin", $1fc4, $1b
; IT'S A PICTURE OF / THE NOTORIOUS / ANTHONY MALONE / SHAKING THE HAND / OF A MAN YOU DO / NOT RECOGNIZE.[PAGE...
Text17Message60:
    INCBIN "../../res/text/US/banks/17.bin", $1fdf, $1f
jr_017_5ffe:
    INCBIN "../../res/text/US/banks/17.bin", $1ffe, $23
jr_017_6021:
    INCBIN "../../res/text/US/banks/17.bin", $2021, $17
jr_017_6038:
    INCBIN "../../res/text/US/banks/17.bin", $2038, $59
jr_017_6091:
    INCBIN "../../res/text/US/banks/17.bin", $2091, $a
jr_017_609b:
    INCBIN "../../res/text/US/banks/17.bin", $209b, $c
jr_017_60a7:
    INCBIN "../../res/text/US/banks/17.bin", $20a7, $13
jr_017_60ba:
    INCBIN "../../res/text/US/banks/17.bin", $20ba, $2
jr_017_60bc:
    INCBIN "../../res/text/US/banks/17.bin", $20bc, $3
jr_017_60bf:
    INCBIN "../../res/text/US/banks/17.bin", $20bf, $b
jr_017_60ca:
    INCBIN "../../res/text/US/banks/17.bin", $20ca, $1
jr_017_60cb:
    INCBIN "../../res/text/US/banks/17.bin", $20cb, $5
jr_017_60d0:
    INCBIN "../../res/text/US/banks/17.bin", $20d0, $2
; JUST BEFORE THE / DOORS CLOSE, / STOGIE JUMPS / ONTO THE TRAIN![END]
Text17Message61:
    INCBIN "../../res/text/US/banks/17.bin", $20d2, $3a
; "HEY, DIS TRAIN / DON'T GO NO PLACE / THAT YOU SHOULD BEGOIN'!" HE SAYS / THROUGH A CLOUD OFCIGAR SMOKE.[PAGE...
Text17Message62:
    INCBIN "../../res/text/US/banks/17.bin", $210c, $2a
jr_017_6136:
    INCBIN "../../res/text/US/banks/17.bin", $2136, $d
jr_017_6143:
    INCBIN "../../res/text/US/banks/17.bin", $2143, $3e
jr_017_6181:
    INCBIN "../../res/text/US/banks/17.bin", $2181, $42
jr_017_61c3:
    INCBIN "../../res/text/US/banks/17.bin", $21c3, $5
jr_017_61c8:
    INCBIN "../../res/text/US/banks/17.bin", $21c8, $4c
jr_017_6214:
    INCBIN "../../res/text/US/banks/17.bin", $2214, $4
; WELL DON'T THAT / BEAT ALL![PAGE] / IT'S A SECRET / ENTRANCE.[END]
Text17Message63:
    INCBIN "../../res/text/US/banks/17.bin", $2218, $18
jr_017_6230:
    INCBIN "../../res/text/US/banks/17.bin", $2230, $1a
; YOU BANG ON THE / CORK BOARD. IT HASAN ODD, HOLLOW / SOUND TO IT.[END]
Text17Message64:
    INCBIN "../../res/text/US/banks/17.bin", $224a, $10
jr_017_625a:
    INCBIN "../../res/text/US/banks/17.bin", $225a, $f
jr_017_6269:
    INCBIN "../../res/text/US/banks/17.bin", $2269, $1f
; HE'S ASLEEP.[END]
Text17Message65:
    INCBIN "../../res/text/US/banks/17.bin", $2288, $d
; OVER THE YEARS / YOU'VE ACQUIRED / MANY TALENTS AND / THROWING DARTS IS / ONE OF THEM![END]
Text17Message66:
    INCBIN "../../res/text/US/banks/17.bin", $2295, $f
jr_017_62a4:
    INCBIN "../../res/text/US/banks/17.bin", $22a4, $10
jr_017_62b4:
    INCBIN "../../res/text/US/banks/17.bin", $22b4, $1f
jr_017_62d3:
    INCBIN "../../res/text/US/banks/17.bin", $22d3, $11
; BULL'S EYE![END]
Text17Message67:
    INCBIN "../../res/text/US/banks/17.bin", $22e4, $c
; THE DARTBOARD AND / THE SECTION OF / WALL IT'S ON MOVE / ASIDE TO REVEAL A / SECRET PASSAGEWAY![END]
Text17Message68:
    INCBIN "../../res/text/US/banks/17.bin", $22f0, $2
jr_017_62f2:
    INCBIN "../../res/text/US/banks/17.bin", $22f2, $56
; SQUEAK![END]
Text17Message69:
    INCBIN "../../res/text/US/banks/17.bin", $2348, $8
; YOU'RE SURE GOOD / AT THIS![END]
Text17Message6A:
    INCBIN "../../res/text/US/banks/17.bin", $2350, $10
jr_017_6360:
    INCBIN "../../res/text/US/banks/17.bin", $2360, $a
; YOU WONDER WHY / COURIER #0 / ISN'T LISTED IN / THIS BOOK? DOES / THIS MEAN THAT / VENTINI IS HIDING / SOME P...
Text17Message6B:
    INCBIN "../../res/text/US/banks/17.bin", $236a, $4
jr_017_636e:
    INCBIN "../../res/text/US/banks/17.bin", $236e, $c
jr_017_637a:
    INCBIN "../../res/text/US/banks/17.bin", $237a, $1c
jr_017_6396:
    INCBIN "../../res/text/US/banks/17.bin", $2396, $44
jr_017_63da:
    INCBIN "../../res/text/US/banks/17.bin", $23da, $3e
; WHY DID YOU STICK / YOURSELF WITH THE / DART? SEEMS / POINTLESS![END]
Text17Message6C:
    INCBIN "../../res/text/US/banks/17.bin", $2418, $18
jr_017_6430:
    INCBIN "../../res/text/US/banks/17.bin", $2430, $6
jr_017_6436:
    INCBIN "../../res/text/US/banks/17.bin", $2436, $1
jr_017_6437:
    INCBIN "../../res/text/US/banks/17.bin", $2437, $3
jr_017_643a:
    INCBIN "../../res/text/US/banks/17.bin", $243a, $19
; YOU PEEL THE / BANANA.[END]
Text17Message6D:
    INCBIN "../../res/text/US/banks/17.bin", $2453, $10
jr_017_6463:
    INCBIN "../../res/text/US/banks/17.bin", $2463, $5
; YOU WONDER IF / SOMEONE WOULD SLIPIF YOU LEFT THIS / ON THE FLOOR?[END]
Text17Message6E:
    INCBIN "../../res/text/US/banks/17.bin", $2468, $33
jr_017_649b:
    INCBIN "../../res/text/US/banks/17.bin", $249b, $c
; IT'S A LARGE BLACKLEDGER.[END]
Text17Message6F:
    INCBIN "../../res/text/US/banks/17.bin", $24a7, $1a
; THE LEDGER LISTS / ALL THE PAYMENTS / THAT APPEAR IN / SIEGEL'S DIARY.[PAGE] / "THESE MUST BE THEREAL BOOKS,"...
Text17Message70:
    INCBIN "../../res/text/US/banks/17.bin", $24c1, $29
jr_017_64ea:
    INCBIN "../../res/text/US/banks/17.bin", $24ea, $37
jr_017_6521:
    INCBIN "../../res/text/US/banks/17.bin", $2521, $10
jr_017_6531:
    INCBIN "../../res/text/US/banks/17.bin", $2531, $8
; THIS SEEMS TO / CONTAIN ALL THE / SAME INFORMATION / AS SIEGEL'S DIARY.[END]
Text17Message71:
    INCBIN "../../res/text/US/banks/17.bin", $2539, $6
jr_017_653f:
    INCBIN "../../res/text/US/banks/17.bin", $253f, $19
jr_017_6558:
    INCBIN "../../res/text/US/banks/17.bin", $2558, $23
; SUDDENLY YOU ARE / PULLED ROUGHLY OUTOF THE HAMPER.[PAGE] / "AH, THERE YA / ARE!"[END]
Text17Message72:
    INCBIN "../../res/text/US/banks/17.bin", $257b, $23
jr_017_659e:
    INCBIN "../../res/text/US/banks/17.bin", $259e, $17
jr_017_65b5:
    INCBIN "../../res/text/US/banks/17.bin", $25b5, $5
jr_017_65ba:
    INCBIN "../../res/text/US/banks/17.bin", $25ba, $7
; PAYMENTS ARE / RECORDED IN THIS / BOOK, BUT WITHOUT / ANY FURTHER / INFORMATION, THEY / DON'T MEAN MUCH TOYOU...
Text17Message73:
    INCBIN "../../res/text/US/banks/17.bin", $25c1, $10
jr_017_65d1:
    INCBIN "../../res/text/US/banks/17.bin", $25d1, $3e
jr_017_660f:
    INCBIN "../../res/text/US/banks/17.bin", $260f, $17
; THAT LEADS TO THE / OUTER OFFICE.[END]
Text17Message74:
    INCBIN "../../res/text/US/banks/17.bin", $2626, $6
jr_017_662c:
    INCBIN "../../res/text/US/banks/17.bin", $262c, $1a
; YOU CAN BARELY / MAKE OUT THE / SCRIBBLINGS  ON / THIS PAPER...[PAGE] / IT'S SEEMS TO BE ALIST OF CHICAGO / B...
Text17Message75:
    INCBIN "../../res/text/US/banks/17.bin", $2646, $10
jr_017_6656:
    INCBIN "../../res/text/US/banks/17.bin", $2656, $1c
jr_017_6672:
    INCBIN "../../res/text/US/banks/17.bin", $2672, $2a
jr_017_669c:
    INCBIN "../../res/text/US/banks/17.bin", $269c, $6b
jr_017_6707:
    INCBIN "../../res/text/US/banks/17.bin", $2707, $3
; THIS BANANA SEEMS / PRETTY RIPE.[END]
Text17Message76:
    INCBIN "../../res/text/US/banks/17.bin", $270a, $2
jr_017_670c:
    INCBIN "../../res/text/US/banks/17.bin", $270c, $1d
; IT'S REALLY TOO / SOFT...[END]
Text17Message77:
    INCBIN "../../res/text/US/banks/17.bin", $2729, $14
jr_017_673d:
    INCBIN "../../res/text/US/banks/17.bin", $273d, $4
; IT'S A SECRET / OFFICE![PAGE] / YOU WONDER WHAT / TYPE OF PLANS WERELAID HERE?[END]
Text17Message78:
    INCBIN "../../res/text/US/banks/17.bin", $2741, $7
jr_017_6748:
    INCBIN "../../res/text/US/banks/17.bin", $2748, $7
jr_017_674f:
    INCBIN "../../res/text/US/banks/17.bin", $274f, $10
jr_017_675f:
    INCBIN "../../res/text/US/banks/17.bin", $275f, $1
jr_017_6760:
    INCBIN "../../res/text/US/banks/17.bin", $2760, $7
jr_017_6767:
    INCBIN "../../res/text/US/banks/17.bin", $2767, $1d
; THIS SEEMS TO BE ASECRET, BUT STUFFYROOM! BOY! IT / NEEDS SOME AIR / CIRCULATION IN / HERE![END]
Text17Message79:
    INCBIN "../../res/text/US/banks/17.bin", $2784, $36
jr_017_67ba:
    INCBIN "../../res/text/US/banks/17.bin", $27ba, $20
; IT'S A BROWN, / LEATHER SWIVEL / CHAIR.[END]
Text17Message7A:
    INCBIN "../../res/text/US/banks/17.bin", $27da, $24
; IT'S A DESK / BLOTTER.[END]
Text17Message7B:
    INCBIN "../../res/text/US/banks/17.bin", $27fe, $15
; IT'S A WELL-WOVEN / STRAW WASTEBASKET.WHAT DO YOU WANT, / WICKER?[END]
Text17Message7C:
    INCBIN "../../res/text/US/banks/17.bin", $2813, $3b
jr_017_684e:
    INCBIN "../../res/text/US/banks/17.bin", $284e, $3
; IT'S A SMALL / OFFICE DESK, MADE / OF BLONDE OAK.[END]
Text17Message7D:
    INCBIN "../../res/text/US/banks/17.bin", $2851, $5
Jump_017_6856:
    INCBIN "../../res/text/US/banks/17.bin", $2856, $29
; YOU WONDER IF / SEEING STOGIE'S / CIGAR RING ON HIS / DESK WOULD CAUSE / VENTINI TO THINK / MALONE WAS ON TO ...
Text17Message7E:
    INCBIN "../../res/text/US/banks/17.bin", $287f, $10
jr_017_688f:
    INCBIN "../../res/text/US/banks/17.bin", $288f, $f
jr_017_689e:
    INCBIN "../../res/text/US/banks/17.bin", $289e, $49
; YOU NUDGE THE MAN / AND SHOW HIM YOUR / CLAIM TICKET.[PAGE] / WITH A START, HE / WAKES UP, LOOKS / UNDER THE ...
Text17Message7F:
    INCBIN "../../res/text/US/banks/17.bin", $28e7, $10
jr_017_68f7:
    INCBIN "../../res/text/US/banks/17.bin", $28f7, $1f
jr_017_6916:
    INCBIN "../../res/text/US/banks/17.bin", $2916, $1f
jr_017_6935:
    INCBIN "../../res/text/US/banks/17.bin", $2935, $54
jr_017_6989:
    INCBIN "../../res/text/US/banks/17.bin", $2989, $1677
