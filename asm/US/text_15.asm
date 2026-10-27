; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text15Msgs0:
    db LOW(Text15Message00), HIGH(Text15Message00)
    db LOW(Text15Message01), HIGH(Text15Message01)
    db LOW(Text15Message02), HIGH(Text15Message02)
    db LOW(Text15Message03), HIGH(Text15Message03)
    db LOW(Text15Message04), HIGH(Text15Message04)
    db LOW(Text15Message05), HIGH(Text15Message05)
    db LOW(Text15Message06), HIGH(Text15Message06)
    db LOW(Text15Message07), HIGH(Text15Message07)
    db LOW(Text15Message08), HIGH(Text15Message08)
    db LOW(Text15Message09), HIGH(Text15Message09)
    db LOW(Text15Message0A), HIGH(Text15Message0A)
    db LOW(Text15Message0B), HIGH(Text15Message0B)
    db LOW(Text15Message0C), HIGH(Text15Message0C)
    db LOW(Text15Message0D), HIGH(Text15Message0D)
    db LOW(Text15Message0E), HIGH(Text15Message0E)
    db LOW(Text15Message0F), HIGH(Text15Message0F)
    db LOW(Text15Message10), HIGH(Text15Message10)
    db LOW(Text15Message11), HIGH(Text15Message11)
    db LOW(Text15Message12), HIGH(Text15Message12)
    db LOW(Text15Message13), HIGH(Text15Message13)
    db LOW(Text15Message14), HIGH(Text15Message14)
    db LOW(Text15Message15), HIGH(Text15Message15)
    db LOW(Text15Message16), HIGH(Text15Message16)
    db LOW(Text15Message17), HIGH(Text15Message17)
    db LOW(Text15Message18), HIGH(Text15Message18)
    db LOW(Text15Message19), HIGH(Text15Message19)
    db LOW(Text15Message1A), HIGH(Text15Message1A)
    db LOW(Text15Message1B), HIGH(Text15Message1B)
    db LOW(Text15Message1C), HIGH(Text15Message1C)
    db LOW(Text15Message1D), HIGH(Text15Message1D)
    db LOW(Text15Message1E), HIGH(Text15Message1E)
    db LOW(Text15Message1F), HIGH(Text15Message1F)
    db LOW(Text15Message20), HIGH(Text15Message20)
    db LOW(Text15Message21), HIGH(Text15Message21)
    db LOW(Text15Message22), HIGH(Text15Message22)
    db LOW(Text15Message23), HIGH(Text15Message23)
    db LOW(Text15Message24), HIGH(Text15Message24)
    db LOW(Text15Message25), HIGH(Text15Message25)
    db LOW(Text15Message26), HIGH(Text15Message26)
    db LOW(Text15Message27), HIGH(Text15Message27)
    db LOW(Text15Message28), HIGH(Text15Message28)
    db LOW(Text15Message29), HIGH(Text15Message29)
    db LOW(Text15Message2A), HIGH(Text15Message2A)
    db LOW(Text15Message2B), HIGH(Text15Message2B)
    db LOW(Text15Message2C), HIGH(Text15Message2C)
    db LOW(Text15Message2D), HIGH(Text15Message2D)
    db LOW(Text15Message2E), HIGH(Text15Message2E)
    db LOW(Text15Message2F), HIGH(Text15Message2F)
    db LOW(Text15Message30), HIGH(Text15Message30)
    db LOW(Text15Message31), HIGH(Text15Message31)
    db LOW(Text15Message32), HIGH(Text15Message32)
    db LOW(Text15Message33), HIGH(Text15Message33)
    db LOW(Text15Message34), HIGH(Text15Message34)
    db LOW(Text15Message35), HIGH(Text15Message35)
    db LOW(Text15Message36), HIGH(Text15Message36)
    db LOW(Text15Message37), HIGH(Text15Message37)
    db LOW(Text15Message38), HIGH(Text15Message38)
    db LOW(Text15Message39), HIGH(Text15Message39)
    db LOW(Text15Message3A), HIGH(Text15Message3A)
    db LOW(Text15Message3B), HIGH(Text15Message3B)
    db LOW(Text15Message3C), HIGH(Text15Message3C)
    db LOW(Text15Message3D), HIGH(Text15Message3D)
    db LOW(Text15Message3E), HIGH(Text15Message3E)
    db LOW(Text15Message3F), HIGH(Text15Message3F)
; Sixty-four message pointers for one text group.
Text15Msgs1:
    db LOW(Text15Message40), HIGH(Text15Message40)
    db LOW(Text15Message41), HIGH(Text15Message41)
    db LOW(Text15Message42), HIGH(Text15Message42)
    db LOW(Text15Message43), HIGH(Text15Message43)
    db LOW(Text15Message44), HIGH(Text15Message44)
    db LOW(Text15Message45), HIGH(Text15Message45)
    db LOW(Text15Message46), HIGH(Text15Message46)
    db LOW(Text15Message47), HIGH(Text15Message47)
    db LOW(Text15Message48), HIGH(Text15Message48)
    db LOW(Text15Message49), HIGH(Text15Message49)
    db LOW(Text15Message4A), HIGH(Text15Message4A)
    db LOW(Text15Message4B), HIGH(Text15Message4B)
    db LOW(Text15Message4C)
jr_015_4099:
    db HIGH(Text15Message4C)
    db LOW(Text15Message4D), HIGH(Text15Message4D)
    db LOW(Text15Message4E), HIGH(Text15Message4E)
    db LOW(Text15Message4F), HIGH(Text15Message4F)
    db LOW(Text15Message50), HIGH(Text15Message50)
    db LOW(Text15Message51), HIGH(Text15Message51)
    db LOW(Text15Message52), HIGH(Text15Message52)
    db LOW(Text15Message53), HIGH(Text15Message53)
    db LOW(Text15Message54), HIGH(Text15Message54)
    db LOW(Text15Message55), HIGH(Text15Message55)
    db LOW(Text15Message56), HIGH(Text15Message56)
    db LOW(Text15Message57), HIGH(Text15Message57)
    db LOW(Text15Message58), HIGH(Text15Message58)
    db LOW(Text15Message59), HIGH(Text15Message59)
    db LOW(Text15Message5A), HIGH(Text15Message5A)
    db LOW(Text15Message5B), HIGH(Text15Message5B)
    db LOW(Text15Message5C), HIGH(Text15Message5C)
    db LOW(Text15Message5D), HIGH(Text15Message5D)
    db LOW(Text15Message5E), HIGH(Text15Message5E)
    db LOW(Text15Message5F), HIGH(Text15Message5F)
    db LOW(Text15Message60), HIGH(Text15Message60)
    db LOW(Text15Message61), HIGH(Text15Message61)
    db LOW(Text15Message62), HIGH(Text15Message62)
    db LOW(Text15Message63), HIGH(Text15Message63)
    db LOW(Text15Message64), HIGH(Text15Message64)
    db LOW(Text15Message65), HIGH(Text15Message65)
    db LOW(Text15Message66), HIGH(Text15Message66)
    db LOW(Text15Message67), HIGH(Text15Message67)
    db LOW(Text15Message68), HIGH(Text15Message68)
    db LOW(Text15Message69), HIGH(Text15Message69)
    db LOW(Text15Message6A), HIGH(Text15Message6A)
    db LOW(Text15Message6B), HIGH(Text15Message6B)
    db LOW(Text15Message6C), HIGH(Text15Message6C)
    db LOW(Text15Message6D), HIGH(Text15Message6D)
    db LOW(Text15Message6E), HIGH(Text15Message6E)
    db LOW(Text15Message6F), HIGH(Text15Message6F)
    db LOW(Text15Message70), HIGH(Text15Message70)
    db LOW(Text15Message71), HIGH(Text15Message71)
    db LOW(Text15Message72), HIGH(Text15Message72)
    db LOW(Text15Message73), HIGH(Text15Message73)
    db LOW(Text15Message74), HIGH(Text15Message74)
    db LOW(Text15Message75), HIGH(Text15Message75)
    db LOW(Text15Message76), HIGH(Text15Message76)
    db LOW(Text15Message77), HIGH(Text15Message77)
    db LOW(Text15Message78), HIGH(Text15Message78)
    db LOW(Text15Message79)
jr_015_40f3:
    db HIGH(Text15Message79)
    db LOW(Text15Message7A), HIGH(Text15Message7A)
    db LOW(Text15Message7B), HIGH(Text15Message7B)
    db LOW(Text15Message7C), HIGH(Text15Message7C)
    db LOW(Text15Message7D), HIGH(Text15Message7D)
    db LOW(Text15Message7E), HIGH(Text15Message7E)
    db LOW(Text15Message7F), HIGH(Text15Message7F)
; YOU PRESS THE / BUTTON.[END]
Text15Message00:
    INCBIN "../../res/text/US/banks/15.bin", $100, $16
; YOU TRY TO RUN, / BUT HE IMMEDIATELYCATCHES YOU.[PAGE] / YOU SHOULDN'T HAVEDISTURBED HIS / READING.[END]
Text15Message01:
    INCBIN "../../res/text/US/banks/15.bin", $116, $10
jr_015_4126:
    INCBIN "../../res/text/US/banks/15.bin", $126, $6
jr_015_412c:
    INCBIN "../../res/text/US/banks/15.bin", $12c, $9
jr_015_4135:
    INCBIN "../../res/text/US/banks/15.bin", $135, $6
jr_015_413b:
    INCBIN "../../res/text/US/banks/15.bin", $13b, $1
jr_015_413c:
    INCBIN "../../res/text/US/banks/15.bin", $13c, $14
jr_015_4150:
    INCBIN "../../res/text/US/banks/15.bin", $150, $5
jr_015_4155:
    INCBIN "../../res/text/US/banks/15.bin", $155, $c
jr_015_4161:
    INCBIN "../../res/text/US/banks/15.bin", $161, $d
; A STRANGE FEELING / OVERCOMES YOU- / LIKE YOU'RE BEING / WATCHED![PAGE] / YOU QUICKLY PULL / ASIDE THE / CURT...
Text15Message02:
    INCBIN "../../res/text/US/banks/15.bin", $16e, $1f
jr_015_418d:
    INCBIN "../../res/text/US/banks/15.bin", $18d, $17
jr_015_41a4:
    INCBIN "../../res/text/US/banks/15.bin", $1a4, $16
jr_015_41ba:
    INCBIN "../../res/text/US/banks/15.bin", $1ba, $3a
jr_015_41f4:
    INCBIN "../../res/text/US/banks/15.bin", $1f4, $37
; YOU REPLACE THE / BATTERIES IN THE / FLASHLIGHT.[END]
Text15Message03:
    INCBIN "../../res/text/US/banks/15.bin", $22b, $d
jr_015_4238:
    INCBIN "../../res/text/US/banks/15.bin", $238, $3
jr_015_423b:
    INCBIN "../../res/text/US/banks/15.bin", $23b, $f
jr_015_424a:
    INCBIN "../../res/text/US/banks/15.bin", $24a, $e
; THERE ARE ALREADY / BATTERIES IN IT.[END]
Text15Message04:
    INCBIN "../../res/text/US/banks/15.bin", $258, $1f
jr_015_4277:
    INCBIN "../../res/text/US/banks/15.bin", $277, $4
; THE FLASHLIGHT / IS ON.[END]
Text15Message05:
    INCBIN "../../res/text/US/banks/15.bin", $27b, $16
; THE FLASHLIGHT'S / LIGHT DIMS.[END]
Text15Message06:
    INCBIN "../../res/text/US/banks/15.bin", $291, $1d
; THE SIGN READS / "POLICE" IN BIG, / BOLD LETTERS.[END]
Text15Message07:
    INCBIN "../../res/text/US/banks/15.bin", $2ae, $2
jr_015_42b0:
    INCBIN "../../res/text/US/banks/15.bin", $2b0, $1d
jr_015_42cd:
    INCBIN "../../res/text/US/banks/15.bin", $2cd, $f
; SUDDENLY, THE / FLASHLIGHT GOES / OUT.[END]
Text15Message08:
    INCBIN "../../res/text/US/banks/15.bin", $2dc, $23
; THE FLASHLIGHT / IS OFF.[END]
Text15Message09:
    INCBIN "../../res/text/US/banks/15.bin", $2ff, $17
; A COP COMES OUT / OF THE DOORWAY.[PAGE] / WITH A GUILTY / GLANCE ABOUT, YOU / DECIDE TO RUN...[END]
Text15Message0A:
    INCBIN "../../res/text/US/banks/15.bin", $316, $1f
jr_015_4335:
    INCBIN "../../res/text/US/banks/15.bin", $335, $20
jr_015_4355:
    INCBIN "../../res/text/US/banks/15.bin", $355, $12
; YOU TURN ON THE / FLASHLIGHT, BUT / THE BATTERIES / APPEAR TO BE DEAD.[END]
Text15Message0B:
    INCBIN "../../res/text/US/banks/15.bin", $367, $10
jr_015_4377:
    INCBIN "../../res/text/US/banks/15.bin", $377, $f
jr_015_4386:
    INCBIN "../../res/text/US/banks/15.bin", $386, $22
; LIKE THE LETTER / SAID, THERE MUST / BE A RECORD OF / MONEY TRANSACTIONSSOMEWHERE.[PAGE] / IF YOU CAN FIND / ...
Text15Message0C:
    INCBIN "../../res/text/US/banks/15.bin", $3a8, $1f
jr_015_43c7:
    INCBIN "../../res/text/US/banks/15.bin", $3c7, $31
jr_015_43f8:
    INCBIN "../../res/text/US/banks/15.bin", $3f8, $10
jr_015_4408:
    INCBIN "../../res/text/US/banks/15.bin", $408, $d
jr_015_4415:
    INCBIN "../../res/text/US/banks/15.bin", $415, $11
jr_015_4426:
    INCBIN "../../res/text/US/banks/15.bin", $426, $24
; WITH THE BLADE / FOLDED IN, IT'S / NEXT TO USELESS.[END]
Text15Message0D:
    INCBIN "../../res/text/US/banks/15.bin", $44a, $30
; YOU LOAD THE GUN.[END]
Text15Message0E:
    INCBIN "../../res/text/US/banks/15.bin", $47a, $10
jr_015_448a:
    INCBIN "../../res/text/US/banks/15.bin", $48a, $2
; THERE ARE ONLY 6 / CHAMBERS IN A .38![END]
Text15Message0F:
    INCBIN "../../res/text/US/banks/15.bin", $48c, $d
jr_015_4499:
    INCBIN "../../res/text/US/banks/15.bin", $499, $12
jr_015_44ab:
    INCBIN "../../res/text/US/banks/15.bin", $4ab, $5
; YOU TAKE AIM, PULL / THE TRIGGER...[PAGE] / AND... CLICK?![PAGE] / HMM, NO BULLETS![END]
Text15Message10:
    INCBIN "../../res/text/US/banks/15.bin", $4b0, $5
jr_015_44b5:
    INCBIN "../../res/text/US/banks/15.bin", $4b5, $b
jr_015_44c0:
    INCBIN "../../res/text/US/banks/15.bin", $4c0, $20
jr_015_44e0:
    INCBIN "../../res/text/US/banks/15.bin", $4e0, $e
jr_015_44ee:
    INCBIN "../../res/text/US/banks/15.bin", $4ee, $4
; THIS ISN'T A TOY![PAGE] / PLAYING WITH GUNS / CAN BE STUPID![END]
Text15Message11:
    INCBIN "../../res/text/US/banks/15.bin", $4f2, $1
jr_015_44f3:
    INCBIN "../../res/text/US/banks/15.bin", $4f3, $4
jr_015_44f7:
    INCBIN "../../res/text/US/banks/15.bin", $4f7, $10
jr_015_4507:
    INCBIN "../../res/text/US/banks/15.bin", $507, $a
jr_015_4511:
    INCBIN "../../res/text/US/banks/15.bin", $511, $14
; COOL PEOPLE DON'T / PLAY WITH GUNS![END]
Text15Message12:
    INCBIN "../../res/text/US/banks/15.bin", $525, $22
; YOU CAN'T CARRY / ANY MORE.[END]
Text15Message13:
    INCBIN "../../res/text/US/banks/15.bin", $547, $f
jr_015_4556:
    INCBIN "../../res/text/US/banks/15.bin", $556, $1
jr_015_4557:
    INCBIN "../../res/text/US/banks/15.bin", $557, $a
; SUDDENLY TWO MEN / BLOCK YOUR WAY.[END]
Text15Message14:
    INCBIN "../../res/text/US/banks/15.bin", $561, $14
jr_015_4575:
    INCBIN "../../res/text/US/banks/15.bin", $575, $d
; YOU PUT ON THE / COAT.[PAGE] / HMM... QUALITY / POLYESTER![END]
Text15Message15:
    INCBIN "../../res/text/US/banks/15.bin", $582, $2
jr_015_4584:
    INCBIN "../../res/text/US/banks/15.bin", $584, $4
jr_015_4588:
    INCBIN "../../res/text/US/banks/15.bin", $588, $a
jr_015_4592:
    INCBIN "../../res/text/US/banks/15.bin", $592, $f
jr_015_45a1:
    INCBIN "../../res/text/US/banks/15.bin", $5a1, $10
; WHY, IT'S YOUR / FAVORITE OLD / HAUNT, JOE'S / PLACE![END]
Text15Message16:
    INCBIN "../../res/text/US/banks/15.bin", $5b1, $2
jr_015_45b3:
    INCBIN "../../res/text/US/banks/15.bin", $5b3, $18
jr_015_45cb:
    INCBIN "../../res/text/US/banks/15.bin", $5cb, $f
jr_015_45da:
    INCBIN "../../res/text/US/banks/15.bin", $5da, $7
; THE STREET IN / FRONT OF JOE'S / PLACE IS EMPTY.[END]
Text15Message17:
    INCBIN "../../res/text/US/banks/15.bin", $5e1, $2d
; BOARDS HAVE BEEN / NAILED OVER THE / HUGE FRONT WINDOW / OF JOE'S PLACE.[END]
Text15Message18:
    INCBIN "../../res/text/US/banks/15.bin", $60e, $1f
jr_015_462d:
    INCBIN "../../res/text/US/banks/15.bin", $62d, $24
; IT'S A LAMPPOST.[END]
Text15Message19:
    INCBIN "../../res/text/US/banks/15.bin", $651, $11
; IT'S A MANHOLE, / SOMEDAY TO BE / DUBBED PERSONHOLE,AT LEAST IN / CALIFORNIA![END]
Text15Message1A:
    INCBIN "../../res/text/US/banks/15.bin", $662, $e
jr_015_4670:
    INCBIN "../../res/text/US/banks/15.bin", $670, $11
jr_015_4681:
    INCBIN "../../res/text/US/banks/15.bin", $681, $13
jr_015_4694:
    INCBIN "../../res/text/US/banks/15.bin", $694, $16
; YOUR WAY IS / BLOCKED BY A HUGE / CONSTRUCTION / BARRIER.[END]
Text15Message1B:
    INCBIN "../../res/text/US/banks/15.bin", $6aa, $10
jr_015_46ba:
    INCBIN "../../res/text/US/banks/15.bin", $6ba, $13
jr_015_46cd:
    INCBIN "../../res/text/US/banks/15.bin", $6cd, $11
; IT'S AN ALLEYWAY / BEHIND JOE'S / PLACE.[END]
Text15Message1C:
    INCBIN "../../res/text/US/banks/15.bin", $6de, $25
; YOU CAN'T OPEN / ANYTHING ELSE.[PAGE] / THERE ARE TOO MANYTHINGS OPEN / ALREADY![END]
Text15Message1D:
    INCBIN "../../res/text/US/banks/15.bin", $703, $9
jr_015_470c:
    INCBIN "../../res/text/US/banks/15.bin", $70c, $7
jr_015_4713:
    INCBIN "../../res/text/US/banks/15.bin", $713, $f
jr_015_4722:
    INCBIN "../../res/text/US/banks/15.bin", $722, $1b
jr_015_473d:
    INCBIN "../../res/text/US/banks/15.bin", $73d, $a
jr_015_4747:
    INCBIN "../../res/text/US/banks/15.bin", $747, $1
; YOU CAN'T USE / SOMETHING YOU / DON'T HAVE![END]
Text15Message1E:
    INCBIN "../../res/text/US/banks/15.bin", $748, $26
jr_015_476e:
    INCBIN "../../res/text/US/banks/15.bin", $76e, $2
jr_015_4770:
; THE MANHOLE IS / CLOSED.[END]
Text15Message1F:
    INCBIN "../../res/text/US/banks/15.bin", $770, $17
; THERE'S A CHAIN- / LINK FENCE THERE / TO KEEP KIDS OUT / OF THE / CONSTRUCTION AREA.[END]
Text15Message20:
    INCBIN "../../res/text/US/banks/15.bin", $787, $1f
jr_015_47a6:
    INCBIN "../../res/text/US/banks/15.bin", $7a6, $2e
; REPORTS OF / CROCODILES IN THE / SEWERS PROMPTED / THE SANITATION / DEPARTMENT TO / SEAL THE MANHOLES.[END]
Text15Message21:
    INCBIN "../../res/text/US/banks/15.bin", $7d4, $1f
jr_015_47f3:
    INCBIN "../../res/text/US/banks/15.bin", $7f3, $3e
; THIS DARK ALLEY / CONNECTS TO THE / STREET.[END]
Text15Message22:
    INCBIN "../../res/text/US/banks/15.bin", $831, $1f
jr_015_4850:
    INCBIN "../../res/text/US/banks/15.bin", $850, $9
; THE MANHOLE / PROBABLY LEADS TO / THE SEWER.[END]
Text15Message23:
    INCBIN "../../res/text/US/banks/15.bin", $859, $5
jr_015_485e:
    INCBIN "../../res/text/US/banks/15.bin", $85e, $1a
jr_015_4878:
    INCBIN "../../res/text/US/banks/15.bin", $878, $a
; IT MIGHT BE STURDYENOUGH TO CLIMB / ON.[END]
Text15Message24:
    INCBIN "../../res/text/US/banks/15.bin", $882, $26
; THE METAL / PLATFORMS AND / LADDERS ARE / CONNECTED IN SUCH / A WAY AS TO FORM AFIRE ESCAPE.[END]
Text15Message25:
    INCBIN "../../res/text/US/banks/15.bin", $8a8, $55
; THE ALLEY / CONTINUES FURTHER / DOWN THAT WAY.[END]
Text15Message26:
    INCBIN "../../res/text/US/banks/15.bin", $8fd, $1
jr_015_48fe:
    INCBIN "../../res/text/US/banks/15.bin", $8fe, $1e
jr_015_491c:
    INCBIN "../../res/text/US/banks/15.bin", $91c, $c
; WHERE SHOULD YOU / LEAVE IT?[END]
Text15Message27:
    INCBIN "../../res/text/US/banks/15.bin", $928, $1b
; WHERE SHOULD YOU / GO?[END]
Text15Message28:
    INCBIN "../../res/text/US/banks/15.bin", $943, $2
jr_015_4945:
    INCBIN "../../res/text/US/banks/15.bin", $945, $13
; YOU ARE ON A / RATHER SHAKY FIRE / ESCAPE.[END]
Text15Message29:
    INCBIN "../../res/text/US/banks/15.bin", $958, $8
jr_015_4960:
    INCBIN "../../res/text/US/banks/15.bin", $960, $8
jr_015_4968:
    INCBIN "../../res/text/US/banks/15.bin", $968, $f
jr_015_4977:
    INCBIN "../../res/text/US/banks/15.bin", $977, $8
; THE WINDOW HAS / BEEN BOARDED UP. / ONE BOARD APPEARS / LOOSE.[END]
Text15Message2A:
    INCBIN "../../res/text/US/banks/15.bin", $97f, $d
jr_015_498c:
    INCBIN "../../res/text/US/banks/15.bin", $98c, $2c
; THERE IS NOW AN / OPENING LARGE / ENOUGH FOR YOU TO / FIT THROUGH.[END]
Text15Message2B:
    INCBIN "../../res/text/US/banks/15.bin", $9b8, $1f
jr_015_49d7:
    INCBIN "../../res/text/US/banks/15.bin", $9d7, $1a
jr_015_49f1:
    INCBIN "../../res/text/US/banks/15.bin", $9f1, $4
; THE ROUGH WOOD OF / THIS BOARD IS / COVERED WITH / JAGGED SPLINTERS.[END]
Text15Message2C:
    INCBIN "../../res/text/US/banks/15.bin", $9f5, $3f
; THIS OFFERS / ENTRANCE INTO THE / SECOND STORY OF  / JOE'S PLACE.[END]
Text15Message2D:
    INCBIN "../../res/text/US/banks/15.bin", $a34, $3c
; ONE OF THE THUGS / GRABS YOU ROUGHLY / BY THE COLLAR AND / SAYS, "DERE YOU / ARE![PAGE] / DA BOSS WOULDA HADU...
Text15Message2E:
    INCBIN "../../res/text/US/banks/15.bin", $a70, $9
jr_015_4a79:
    INCBIN "../../res/text/US/banks/15.bin", $a79, $1e
jr_015_4a97:
    INCBIN "../../res/text/US/banks/15.bin", $a97, $24
jr_015_4abb:
    INCBIN "../../res/text/US/banks/15.bin", $abb, $6
jr_015_4ac1:
    INCBIN "../../res/text/US/banks/15.bin", $ac1, $29
jr_015_4aea:
    INCBIN "../../res/text/US/banks/15.bin", $aea, $35
jr_015_4b1f:
    INCBIN "../../res/text/US/banks/15.bin", $b1f, $8
jr_015_4b27:
    INCBIN "../../res/text/US/banks/15.bin", $b27, $14
jr_015_4b3b:
    INCBIN "../../res/text/US/banks/15.bin", $b3b, $4
jr_015_4b3f:
    INCBIN "../../res/text/US/banks/15.bin", $b3f, $21
jr_015_4b60:
    INCBIN "../../res/text/US/banks/15.bin", $b60, $9
jr_015_4b69:
    INCBIN "../../res/text/US/banks/15.bin", $b69, $3f
jr_015_4ba8:
    INCBIN "../../res/text/US/banks/15.bin", $ba8, $36
jr_015_4bde:
    INCBIN "../../res/text/US/banks/15.bin", $bde, $2
jr_015_4be0:
    INCBIN "../../res/text/US/banks/15.bin", $be0, $c
jr_015_4bec:
    INCBIN "../../res/text/US/banks/15.bin", $bec, $24
jr_015_4c10:
    INCBIN "../../res/text/US/banks/15.bin", $c10, $22
; YOU MANAGE TO PRY / ONE BOARD LOOSE.[END]
Text15Message2F:
    INCBIN "../../res/text/US/banks/15.bin", $c32, $23
; THE BOARDS BLOCK / YOUR WAY THROUGH.[END]
Text15Message30:
    INCBIN "../../res/text/US/banks/15.bin", $c55, $2
jr_015_4c57:
    INCBIN "../../res/text/US/banks/15.bin", $c57, $1d
jr_015_4c74:
    INCBIN "../../res/text/US/banks/15.bin", $c74, $2
jr_015_4c76:
    INCBIN "../../res/text/US/banks/15.bin", $c76, $2
; THE LADDER LOOKS / MUCH TOO RICKETY / FOR YOU TO CLIMB / ANY HIGHER.[END]
Text15Message31:
    INCBIN "../../res/text/US/banks/15.bin", $c78, $11
jr_015_4c89:
    INCBIN "../../res/text/US/banks/15.bin", $c89, $e
jr_015_4c97:
    INCBIN "../../res/text/US/banks/15.bin", $c97, $20
jr_015_4cb7:
; YOU'VE GOT TO PULLOFF A BOARD![END]
Text15Message32:
    INCBIN "../../res/text/US/banks/15.bin", $cb7, $10
jr_015_4cc7:
    INCBIN "../../res/text/US/banks/15.bin", $cc7, $2
jr_015_4cc9:
    INCBIN "../../res/text/US/banks/15.bin", $cc9, $d
; THE BOARD FALLS TOTHE FIRE ESCAPE / WITH A CLATTER.[END]
Text15Message33:
    INCBIN "../../res/text/US/banks/15.bin", $cd6, $32
; SMACK! POW![PAGE] / YOU BEAT UP ON THEPOOR, DEFENSELESS / BOARD...[PAGE] / AND GET A NAIL / STUCK IN YOUR HAN...
Text15Message34:
    INCBIN "../../res/text/US/banks/15.bin", $d08, $1c
jr_015_4d24:
    INCBIN "../../res/text/US/banks/15.bin", $d24, $3c
jr_015_4d60:
    INCBIN "../../res/text/US/banks/15.bin", $d60, $9
jr_015_4d69:
    INCBIN "../../res/text/US/banks/15.bin", $d69, $c
; WITH ALL OF YOUR / STRENGTH, YOU GIVEA MIGHTY HEAVE![END]
Text15Message35:
    INCBIN "../../res/text/US/banks/15.bin", $d75, $33
; YOU TRY WITH ALL / YOUR STRENGTH...[PAGE] / ...BUT IT STILL / WON'T COME OFF![END]
Text15Message36:
    INCBIN "../../res/text/US/banks/15.bin", $da8, $10
jr_015_4db8:
    INCBIN "../../res/text/US/banks/15.bin", $db8, $3
jr_015_4dbb:
    INCBIN "../../res/text/US/banks/15.bin", $dbb, $14
jr_015_4dcf:
    INCBIN "../../res/text/US/banks/15.bin", $dcf, $19
jr_015_4de8:
    INCBIN "../../res/text/US/banks/15.bin", $de8, $2
; YOU ATTEMPT TO / LEVERAGE THE BOARDWITH THE KNIFE. / BUT IT DOESN'T / SEEM TO WORK.[END]
Text15Message37:
    INCBIN "../../res/text/US/banks/15.bin", $dea, $2
jr_015_4dec:
    INCBIN "../../res/text/US/banks/15.bin", $dec, $e
jr_015_4dfa:
    INCBIN "../../res/text/US/banks/15.bin", $dfa, $3e
jr_015_4e38:
; YOU'RE IN AN / OFFICE.[PAGE] / IN FACT IT'S THE / SAME OFFICE THAT / YOU FIRST / DISCOVERED THE / DEAD BODY O...
Text15Message38:
    INCBIN "../../res/text/US/banks/15.bin", $e38, $10
jr_015_4e48:
    INCBIN "../../res/text/US/banks/15.bin", $e48, $21
jr_015_4e69:
    INCBIN "../../res/text/US/banks/15.bin", $e69, $16
jr_015_4e7f:
    INCBIN "../../res/text/US/banks/15.bin", $e7f, $23
; YOU ALMOST ESCAPE.[PAGE] / SOMEHOW YOU SHOULDHAVE COVERED YOUR / TRACKS BETTER...[END]
Text15Message39:
    INCBIN "../../res/text/US/banks/15.bin", $ea2, $a
jr_015_4eac:
    INCBIN "../../res/text/US/banks/15.bin", $eac, $6
jr_015_4eb2:
    INCBIN "../../res/text/US/banks/15.bin", $eb2, $f
jr_015_4ec1:
    INCBIN "../../res/text/US/banks/15.bin", $ec1, $c
jr_015_4ecd:
    INCBIN "../../res/text/US/banks/15.bin", $ecd, $17
jr_015_4ee4:
    INCBIN "../../res/text/US/banks/15.bin", $ee4, $6
; HAVING REMOVED A / BOARD, THERE'S A / SMALL SPACE THAT / CAN BE SEEN.[END]
Text15Message3A:
    INCBIN "../../res/text/US/banks/15.bin", $eea, $1f
jr_015_4f09:
    INCBIN "../../res/text/US/banks/15.bin", $f09, $21
; THE BLINDS ARE / OPEN.[END]
Text15Message3B:
    INCBIN "../../res/text/US/banks/15.bin", $f2a, $15
; IT'S HARD TO SEE / OUTSIDE WITH THE / BLINDS CLOSED.[END]
Text15Message3C:
    INCBIN "../../res/text/US/banks/15.bin", $f3f, $a
jr_015_4f49:
    INCBIN "../../res/text/US/banks/15.bin", $f49, $15
jr_015_4f5e:
    INCBIN "../../res/text/US/banks/15.bin", $f5e, $12
; ON THE DESKTOP IS / A POOL OF DRIED / BLOOD.[PAGE] / YOU REMEMBER / FINDING JOEY / SIEGEL DRAPED OVERIT WITH ...
Text15Message3D:
    INCBIN "../../res/text/US/banks/15.bin", $f70, $8c
jr_015_4ffc:
    INCBIN "../../res/text/US/banks/15.bin", $ffc, $2c
jr_015_5028:
    INCBIN "../../res/text/US/banks/15.bin", $1028, $2
jr_015_502a:
    INCBIN "../../res/text/US/banks/15.bin", $102a, $a
jr_015_5034:
    INCBIN "../../res/text/US/banks/15.bin", $1034, $27
jr_015_505b:
    INCBIN "../../res/text/US/banks/15.bin", $105b, $10
; IT'S A STAINLESS- / STEEL SAFE MOUNTEDON THE WALL.[END]
Text15Message3E:
    INCBIN "../../res/text/US/banks/15.bin", $106b, $31
; JOEY KEPT HIS / IMPORTANT THINGS / HERE...[PAGE] / AND THAT INCLUDED / A LARGE AMOUNT OF / YOUR IOUS![END]
Text15Message3F:
    INCBIN "../../res/text/US/banks/15.bin", $109c, $1f
jr_015_50bb:
    INCBIN "../../res/text/US/banks/15.bin", $10bb, $27
jr_015_50e2:
    INCBIN "../../res/text/US/banks/15.bin", $10e2, $10
; NOW THAT'S / STRANGE, YOU NEVERNOTICED THE SMALL / KNOB ON IT BEFORE![END]
Text15Message40:
    INCBIN "../../res/text/US/banks/15.bin", $10f2, $5
jr_015_50f7:
    INCBIN "../../res/text/US/banks/15.bin", $10f7, $1f
jr_015_5116:
    INCBIN "../../res/text/US/banks/15.bin", $1116, $1e
; IT'S AN OLD / FASHIONED / TELEPHONE.[END]
Text15Message41:
    INCBIN "../../res/text/US/banks/15.bin", $1134, $21
; AN ORDINARY / PENCIL.[END]
Text15Message42:
    INCBIN "../../res/text/US/banks/15.bin", $1155, $14
; IT'S A SMALL / UNUSUALLY SHAPED / KEY.[END]
Text15Message43:
    INCBIN "../../res/text/US/banks/15.bin", $1169, $b
jr_015_5174:
    INCBIN "../../res/text/US/banks/15.bin", $1174, $18
; SUDDENLY STOGIE / APPEARS IN FRONT / OF YOU AND GROWLS,[END]
Text15Message44:
    INCBIN "../../res/text/US/banks/15.bin", $118c, $1f
jr_015_51ab:
    INCBIN "../../res/text/US/banks/15.bin", $11ab, $4
jr_015_51af:
    INCBIN "../../res/text/US/banks/15.bin", $11af, $11
jr_015_51c0:
; BEYOND THIS DOOR / IS A SECRETARY'S / OFFICE.[END]
Text15Message45:
    INCBIN "../../res/text/US/banks/15.bin", $11c0, $2a
; THE PENCIL'S LEAD / IS BROKEN.[END]
Text15Message46:
    INCBIN "../../res/text/US/banks/15.bin", $11ea, $1d
; "IT WAS YOU THAT / SNUCK INTO DA / BOSS' OFFICE, / RIGHT!?[PAGE] / YUP, THAT'S WHAT / MALONE SAID. WAS / YOU ...
Text15Message47:
    INCBIN "../../res/text/US/banks/15.bin", $1207, $2
jr_015_5209:
    INCBIN "../../res/text/US/banks/15.bin", $1209, $1d
jr_015_5226:
    INCBIN "../../res/text/US/banks/15.bin", $1226, $2c
jr_015_5252:
    INCBIN "../../res/text/US/banks/15.bin", $1252, $4a
jr_015_529c:
    INCBIN "../../res/text/US/banks/15.bin", $129c, $70
jr_015_530c:
    INCBIN "../../res/text/US/banks/15.bin", $130c, $4
jr_015_5310:
    INCBIN "../../res/text/US/banks/15.bin", $1310, $11
; THE ALLEYWAY / BEHIND JOE'S PLACEIS FILTHY.[END]
Text15Message48:
    INCBIN "../../res/text/US/banks/15.bin", $1321, $2a
jr_015_534b:
; THIS GARBAGE / STINKS OF ROTTEN / FOOD AND DISCARDEDDREAMS... WHOA, / WERE DID THAT / THOUGHT COME FROM?[END]
Text15Message49:
    INCBIN "../../res/text/US/banks/15.bin", $134b, $1f
jr_015_536a:
    INCBIN "../../res/text/US/banks/15.bin", $136a, $35
jr_015_539f:
    INCBIN "../../res/text/US/banks/15.bin", $139f, $d
; YOU SHOULD'VE BEENMORE CAREFUL...[END]
Text15Message4A:
    INCBIN "../../res/text/US/banks/15.bin", $13ac, $22
; THE ROOM LOOKS AS / IF A CYCLONE HIT / IT...[PAGE] / A CYCLONE NAMED / STOGIE, THAT IS! / YOU CAN STILL / SME...
Text15Message4B:
    INCBIN "../../res/text/US/banks/15.bin", $13ce, $1e
jr_015_53ec:
    INCBIN "../../res/text/US/banks/15.bin", $13ec, $1
jr_015_53ed:
    INCBIN "../../res/text/US/banks/15.bin", $13ed, $3b
jr_015_5428:
    INCBIN "../../res/text/US/banks/15.bin", $1428, $15
; WELL, YOU THOUGHT / THAT THIS WOULD / BE THE BEST PLACE / TO START YOUR / SEARCH FOR THE / MONEY AND / APPARE...
Text15Message4C:
    INCBIN "../../res/text/US/banks/15.bin", $143d, $16
jr_015_5453:
    INCBIN "../../res/text/US/banks/15.bin", $1453, $9
jr_015_545c:
    INCBIN "../../res/text/US/banks/15.bin", $145c, $2e
jr_015_548a:
    INCBIN "../../res/text/US/banks/15.bin", $148a, $24
jr_015_54ae:
    INCBIN "../../res/text/US/banks/15.bin", $14ae, $1a
jr_015_54c8:
    INCBIN "../../res/text/US/banks/15.bin", $14c8, $28
jr_015_54f0:
    INCBIN "../../res/text/US/banks/15.bin", $14f0, $36
; IT'S A MOLDY BOX.[END]
Text15Message4D:
    INCBIN "../../res/text/US/banks/15.bin", $1526, $12
; "HEY ACE, DA BOSS / SENT ME...[PAGE] / NICE TRICK, TRYINGTO TURN DA BOSS / AGAINST VENTINI![PAGE] / SORRY PAL...
Text15Message4E:
    INCBIN "../../res/text/US/banks/15.bin", $1538, $15
jr_015_554d:
    INCBIN "../../res/text/US/banks/15.bin", $154d, $24
jr_015_5571:
    INCBIN "../../res/text/US/banks/15.bin", $1571, $66
jr_015_55d7:
    INCBIN "../../res/text/US/banks/15.bin", $15d7, $b
jr_015_55e2:
    INCBIN "../../res/text/US/banks/15.bin", $15e2, $1b
jr_015_55fd:
    INCBIN "../../res/text/US/banks/15.bin", $15fd, $17
; A SMALL CARDBOARD / BOX.[END]
Text15Message4F:
    INCBIN "../../res/text/US/banks/15.bin", $1614, $17
; IT'S A FLATTENED / JUICE CAN.[END]
Text15Message50:
    INCBIN "../../res/text/US/banks/15.bin", $162b, $1c
; THE STACCATO / BURSTS OF MACHINE / GUNS AND THE / THUNDER OF / EXPLOSIONS FILL / THE LAS VEGAS AIR![PAGE] / S...
Text15Message51:
    INCBIN "../../res/text/US/banks/15.bin", $1647, $3
jr_015_564a:
    INCBIN "../../res/text/US/banks/15.bin", $164a, $1c
jr_015_5666:
    INCBIN "../../res/text/US/banks/15.bin", $1666, $c3
jr_015_5729:
    INCBIN "../../res/text/US/banks/15.bin", $1729, $55
jr_015_577e:
    INCBIN "../../res/text/US/banks/15.bin", $177e, $9
jr_015_5787:
    INCBIN "../../res/text/US/banks/15.bin", $1787, $4e
; YOU RECOGNIZE A / FAMILIAR SYMBOL OFA GERMAN LUXURY / CAR ON THE KEY...[END]
Text15Message52:
    INCBIN "../../res/text/US/banks/15.bin", $17d5, $10
jr_015_57e5:
    INCBIN "../../res/text/US/banks/15.bin", $17e5, $34
; YOU ARE NOT / FOLLOWED AS YOU / LEAVE THE CITY.[PAGE] / YOUR PLAN MIGHT / HAVE ACTUALLY / WORKED![END]
Text15Message53:
    INCBIN "../../res/text/US/banks/15.bin", $1819, $10
jr_015_5829:
    INCBIN "../../res/text/US/banks/15.bin", $1829, $d
jr_015_5836:
    INCBIN "../../res/text/US/banks/15.bin", $1836, $2
jr_015_5838:
    INCBIN "../../res/text/US/banks/15.bin", $1838, $1d
jr_015_5855:
    INCBIN "../../res/text/US/banks/15.bin", $1855, $c
jr_015_5861:
    INCBIN "../../res/text/US/banks/15.bin", $1861, $a
; SOMEONE LEFT SOME / PEKING DUCK WITH / BLACK BEAN SAUCE / IN THE TRASH.[PAGE] / MMM, DELICIOUS IF / IT WEREN'...
Text15Message54:
    INCBIN "../../res/text/US/banks/15.bin", $186b, $15
jr_015_5880:
    INCBIN "../../res/text/US/banks/15.bin", $1880, $49
jr_015_58c9:
    INCBIN "../../res/text/US/banks/15.bin", $18c9, $11
; MEANWHILE, BACK / IN THE CITY OF / LAS VEGAS...[END]
Text15Message55:
    INCBIN "../../res/text/US/banks/15.bin", $18da, $2c
; IT'S THE BACK DOORINTO JOE'S PLACE.[PAGE] / YOUR KEEN EYE / PICKS OUT THE / CHEAPLY MADE LOCK.[END]
Text15Message56:
    INCBIN "../../res/text/US/banks/15.bin", $1906, $1e
jr_015_5924:
    INCBIN "../../res/text/US/banks/15.bin", $1924, $1
jr_015_5925:
    INCBIN "../../res/text/US/banks/15.bin", $1925, $21
jr_015_5946:
    INCBIN "../../res/text/US/banks/15.bin", $1946, $13
; WITHOUT A KEY, YOUWONDER HOW YOU CANOPEN THIS DOOR?[END]
Text15Message57:
    INCBIN "../../res/text/US/banks/15.bin", $1959, $f
jr_015_5968:
    INCBIN "../../res/text/US/banks/15.bin", $1968, $10
jr_015_5978:
    INCBIN "../../res/text/US/banks/15.bin", $1978, $15
; GANG KINGPIN / ANTHONY MALONE / NOTICES SOMETHING / DIFFERENT ABOUT / HIS DESK IN HIS / PRIVATE OFFICE.[PAGE]...
Text15Message58:
    INCBIN "../../res/text/US/banks/15.bin", $198d, $2f
jr_015_59bc:
    INCBIN "../../res/text/US/banks/15.bin", $19bc, $4b
jr_015_5a07:
    INCBIN "../../res/text/US/banks/15.bin", $1a07, $35
jr_015_5a3c:
    INCBIN "../../res/text/US/banks/15.bin", $1a3c, $25
jr_015_5a61:
    INCBIN "../../res/text/US/banks/15.bin", $1a61, $8a
jr_015_5aeb:
    INCBIN "../../res/text/US/banks/15.bin", $1aeb, $30
jr_015_5b1b:
    INCBIN "../../res/text/US/banks/15.bin", $1b1b, $1c
; GULP! YOU GOBBLE / DOWN THE DUCK! / THAT BLACK BEAN / SAUCE IS GREAT![PAGE] / ALMOST AS GOOD / AS YU'S IN THE...
Text15Message59:
    INCBIN "../../res/text/US/banks/15.bin", $1b37, $16
jr_015_5b4d:
    INCBIN "../../res/text/US/banks/15.bin", $1b4d, $50
;  YOU FUMBLE WITH / THE KNIFE AND / INSERT IT INTO THELOCK.[PAGE] / SCRIITCH...CLICK![END]
Text15Message5A:
    INCBIN "../../res/text/US/banks/15.bin", $1b9d, $11
jr_015_5bae:
    INCBIN "../../res/text/US/banks/15.bin", $1bae, $38
; WITH MORE LUCK / THAN SKILL, YOU / JIMMY OPEN THE / LOCK![END]
Text15Message5B:
    INCBIN "../../res/text/US/banks/15.bin", $1be6, $a
jr_015_5bf0:
    INCBIN "../../res/text/US/banks/15.bin", $1bf0, $21
jr_015_5c11:
    INCBIN "../../res/text/US/banks/15.bin", $1c11, $9
; YOU TAKE AIM AND / SQUEEZE THE / TRIGGER...[END]
Text15Message5C:
    INCBIN "../../res/text/US/banks/15.bin", $1c1a, $10
jr_015_5c2a:
    INCBIN "../../res/text/US/banks/15.bin", $1c2a, $18
; THE LOCK IS BLOWN / CLEAN OFF![PAGE] / YOU ARE PLEASED / WITH YOUR / MARKSMANSHIP![END]
Text15Message5D:
    INCBIN "../../res/text/US/banks/15.bin", $1c42, $1f
jr_015_5c61:
    INCBIN "../../res/text/US/banks/15.bin", $1c61, $e
jr_015_5c6f:
    INCBIN "../../res/text/US/banks/15.bin", $1c6f, $18
; THE NARROW / CORRIDOR IS DARK / AND GLOOMY.[END]
Text15Message5E:
    INCBIN "../../res/text/US/banks/15.bin", $1c87, $28
; AS YOU TRY TO / READ THE PAPER, / THE OLD MAN SAYS,[PAGE] / "YOU AIN'T NO / CHARITY CASE AND IAIN'T NO MOTHER...
Text15Message5F:
    INCBIN "../../res/text/US/banks/15.bin", $1caf, $13
jr_015_5cc2:
    INCBIN "../../res/text/US/banks/15.bin", $1cc2, $c
jr_015_5cce:
    INCBIN "../../res/text/US/banks/15.bin", $1cce, $21
jr_015_5cef:
    INCBIN "../../res/text/US/banks/15.bin", $1cef, $4d
; THIS HALLWAY / DOESN'T SMELL VERYGOOD.[END]
Text15Message60:
    INCBIN "../../res/text/US/banks/15.bin", $1d3c, $25
; THE BOARDS ARE / NAILED SECURELY.[END]
Text15Message61:
    INCBIN "../../res/text/US/banks/15.bin", $1d61, $1f
jr_015_5d80:
    INCBIN "../../res/text/US/banks/15.bin", $1d80, $1
; WHAT A PERFECT / PLACE FOR THIS / SPIDER'S WEB.[END]
Text15Message62:
    INCBIN "../../res/text/US/banks/15.bin", $1d81, $1f
jr_015_5da0:
    INCBIN "../../res/text/US/banks/15.bin", $1da0, $d
; IT'S A LARGE DUSTYCOBWEB.[END]
Text15Message63:
    INCBIN "../../res/text/US/banks/15.bin", $1dad, $15
jr_015_5dc2:
    INCBIN "../../res/text/US/banks/15.bin", $1dc2, $5
; IT'S THE DOOR / LEADING INTO THE / WOMAN'S BATHROOM.[END]
Text15Message64:
    INCBIN "../../res/text/US/banks/15.bin", $1dc7, $31
; THAT LEADS INTO / THE MEN'S ROOM.[END]
Text15Message65:
    INCBIN "../../res/text/US/banks/15.bin", $1df8, $20
; THE DOOR LEADS / INTO THE BAR.[END]
Text15Message66:
    INCBIN "../../res/text/US/banks/15.bin", $1e18, $1d
; AT THE SAME TIME, / MOBSTER DANIEL / VENTINI DISCOVERS / A TELLTALE CIGAR / RING IN HIS SECRETOFFICE ON THE /...
Text15Message67:
    INCBIN "../../res/text/US/banks/15.bin", $1e35, $2
jr_015_5e37:
    INCBIN "../../res/text/US/banks/15.bin", $1e37, $91
jr_015_5ec8:
    INCBIN "../../res/text/US/banks/15.bin", $1ec8, $15
jr_015_5edd:
    INCBIN "../../res/text/US/banks/15.bin", $1edd, $38
jr_015_5f15:
    INCBIN "../../res/text/US/banks/15.bin", $1f15, $4
jr_015_5f19:
    INCBIN "../../res/text/US/banks/15.bin", $1f19, $b
jr_015_5f24:
    INCBIN "../../res/text/US/banks/15.bin", $1f24, $2
jr_015_5f26:
    INCBIN "../../res/text/US/banks/15.bin", $1f26, $2a
; THE GANG WAR / EXPLODES ACROSS / THE QUIET OF THE / DESERT CITY.[END]
Text15Message68:
    INCBIN "../../res/text/US/banks/15.bin", $1f50, $1
jr_015_5f51:
    INCBIN "../../res/text/US/banks/15.bin", $1f51, $1d
jr_015_5f6e:
    INCBIN "../../res/text/US/banks/15.bin", $1f6e, $1
jr_015_5f6f:
    INCBIN "../../res/text/US/banks/15.bin", $1f6f, $1c
; YOU GROPE ABOUT / BLINDLY THROUGH / THE DARKNESS.[PAGE] / YOU WERE NEVER / MUCH GOOD AT / GROPING, SO YOU / S...
Text15Message69:
    INCBIN "../../res/text/US/banks/15.bin", $1f8b, $10
jr_015_5f9b:
    INCBIN "../../res/text/US/banks/15.bin", $1f9b, $f
jr_015_5faa:
    INCBIN "../../res/text/US/banks/15.bin", $1faa, $13
jr_015_5fbd:
    INCBIN "../../res/text/US/banks/15.bin", $1fbd, $c
jr_015_5fc9:
    INCBIN "../../res/text/US/banks/15.bin", $1fc9, $c
jr_015_5fd5:
    INCBIN "../../res/text/US/banks/15.bin", $1fd5, $1c
jr_015_5ff1:
    INCBIN "../../res/text/US/banks/15.bin", $1ff1, $e
; YOU DON'T HAVE / THE TOOLS OR THE / TIME TO REMOVE / THESE BOARDS![END]
Text15Message6A:
    INCBIN "../../res/text/US/banks/15.bin", $1fff, $5
jr_015_6004:
    INCBIN "../../res/text/US/banks/15.bin", $2004, $b
jr_015_600f:
    INCBIN "../../res/text/US/banks/15.bin", $200f, $2d
; THE NEWSPAPERS / TRUMPET THE BIG / NEWS OF THE LAST / FEW DAYS...[PAGE] / "-GREAT LAS VEGAS / SHOOTOUT- DOUBL...
Text15Message6B:
    INCBIN "../../res/text/US/banks/15.bin", $203c, $4a
jr_015_6086:
    INCBIN "../../res/text/US/banks/15.bin", $2086, $6e
jr_015_60f4:
    INCBIN "../../res/text/US/banks/15.bin", $20f4, $26
jr_015_611a:
    INCBIN "../../res/text/US/banks/15.bin", $211a, $24
jr_015_613e:
    INCBIN "../../res/text/US/banks/15.bin", $213e, $1e
jr_015_615c:
    INCBIN "../../res/text/US/banks/15.bin", $215c, $5b
jr_015_61b7:
    INCBIN "../../res/text/US/banks/15.bin", $21b7, $3e
jr_015_61f5:
    INCBIN "../../res/text/US/banks/15.bin", $21f5, $2a
jr_015_621f:
    INCBIN "../../res/text/US/banks/15.bin", $221f, $19
jr_015_6238:
; INSIDE JOE'S PLACEIT'S EMPTY AND IN / NEED OF A GOOD / CLEANING.[END]
Text15Message6C:
    INCBIN "../../res/text/US/banks/15.bin", $2238, $c
jr_015_6244:
    INCBIN "../../res/text/US/banks/15.bin", $2244, $b
jr_015_624f:
    INCBIN "../../res/text/US/banks/15.bin", $224f, $20
jr_015_626f:
    INCBIN "../../res/text/US/banks/15.bin", $226f, $6
; THESE STAIRS LEAD / TO THE SECOND / FLOOR.[END]
Text15Message6D:
    INCBIN "../../res/text/US/banks/15.bin", $2275, $1f
jr_015_6294:
    INCBIN "../../res/text/US/banks/15.bin", $2294, $8
; A THICK LAYER OF / DUST COVERS THE / COUNTER.[END]
Text15Message6E:
    INCBIN "../../res/text/US/banks/15.bin", $229c, $10
jr_015_62ac:
    INCBIN "../../res/text/US/banks/15.bin", $22ac, $1a
; IT'S A HUGE SPIDERWITH A FLY CAUGHT / IN IT. "I KNOW HOWYOU FEEL," YOU / MUTTER TO THE FLY.[END]
Text15Message6F:
    INCBIN "../../res/text/US/banks/15.bin", $22c6, $46
jr_015_630c:
    INCBIN "../../res/text/US/banks/15.bin", $230c, $b
jr_015_6317:
    INCBIN "../../res/text/US/banks/15.bin", $2317, $7
; IT APPEARS THE / EVIDENCE WASN'T / STRONG ENOUGH.[END]
Text15Message70:
    INCBIN "../../res/text/US/banks/15.bin", $231e, $1f
jr_015_633d:
    INCBIN "../../res/text/US/banks/15.bin", $233d, $f
; THE WORD "CELLAR" / IS CLEARLY MARKED / ON THIS DOOR.[END]
Text15Message71:
    INCBIN "../../res/text/US/banks/15.bin", $234c, $1f
jr_015_636b:
    INCBIN "../../res/text/US/banks/15.bin", $236b, $13
; YOU CAN'T TAKE ANYMORE.[END]
Text15Message72:
    INCBIN "../../res/text/US/banks/15.bin", $237e, $10
jr_015_638e:
    INCBIN "../../res/text/US/banks/15.bin", $238e, $8
; YOU'D BETTER GIVE / UP.[END]
Text15Message73:
    INCBIN "../../res/text/US/banks/15.bin", $2396, $16
; THE AIR IS STALE / IN THE DIM AND / DIRTY STORAGE / CELLAR.[END]
Text15Message74:
    INCBIN "../../res/text/US/banks/15.bin", $23ac, $1f
jr_015_63cb:
    INCBIN "../../res/text/US/banks/15.bin", $23cb, $17
; IT'S A SPIGOT, / DESIGNED TO ALLOW / THE CONTENTS OF / THE CASK OUT.[END]
Text15Message75:
    INCBIN "../../res/text/US/banks/15.bin", $23e2, $3f
; IT'S AN OLD, EMPTYBARREL.[END]
Text15Message76:
    INCBIN "../../res/text/US/banks/15.bin", $2421, $14
jr_015_6435:
    INCBIN "../../res/text/US/banks/15.bin", $2435, $6
; IT'S A BOTTLE RACKFULL OF DUSTY / BOTTLES.[END]
Text15Message77:
    INCBIN "../../res/text/US/banks/15.bin", $243b, $5
jr_015_6440:
    INCBIN "../../res/text/US/banks/15.bin", $2440, $24
; YOU LOOK CLOSELY / AT THE BOTTLES ANDNOTICE SOMETHING / SUSPICIOUS.[END]
Text15Message78:
    INCBIN "../../res/text/US/banks/15.bin", $2464, $14
jr_015_6478:
    INCBIN "../../res/text/US/banks/15.bin", $2478, $b
jr_015_6483:
    INCBIN "../../res/text/US/banks/15.bin", $2483, $f
jr_015_6492:
    INCBIN "../../res/text/US/banks/15.bin", $2492, $12
; A FAINT BREEZE / BLOWS FROM BEHIND / IT.[END]
Text15Message79:
    INCBIN "../../res/text/US/banks/15.bin", $24a4, $25
; A PASSAGE LEADS / OFF INTO THE / DARKNESS.[END]
Text15Message7A:
    INCBIN "../../res/text/US/banks/15.bin", $24c9, $27
; YOU WONDER WHAT / THAT COULD MEAN?[END]
Text15Message7B:
    INCBIN "../../res/text/US/banks/15.bin", $24f0, $10
jr_015_6500:
    INCBIN "../../res/text/US/banks/15.bin", $2500, $f
jr_015_650f:
    INCBIN "../../res/text/US/banks/15.bin", $250f, $2
; THIS BOTTLE IS NOTCOVERED WITH DUST.[END]
Text15Message7C:
    INCBIN "../../res/text/US/banks/15.bin", $2511, $1f
jr_015_6530:
    INCBIN "../../res/text/US/banks/15.bin", $2530, $6
; YOU TURN THE TAP, / BUT NOTHING COMES / OUT.[END]
Text15Message7D:
    INCBIN "../../res/text/US/banks/15.bin", $2536, $10
jr_015_6546:
    INCBIN "../../res/text/US/banks/15.bin", $2546, $f
jr_015_6555:
    INCBIN "../../res/text/US/banks/15.bin", $2555, $a
; YOU JIGGLE THE / HANDLE BUT NOTHINGCOMES OUT.[END]
Text15Message7E:
    INCBIN "../../res/text/US/banks/15.bin", $255f, $10
jr_015_656f:
    INCBIN "../../res/text/US/banks/15.bin", $256f, $1c
; YOU HIT THE / BOTTLE AND THE / ENTIRE RACK / SLIDES ASIDE.[PAGE] / YOU'VE FOUND A / SECRET PASSAGE![END]
Text15Message7F:
    INCBIN "../../res/text/US/banks/15.bin", $258b, $10
jr_015_659b:
    INCBIN "../../res/text/US/banks/15.bin", $259b, $35
jr_015_65d0:
    INCBIN "../../res/text/US/banks/15.bin", $25d0, $1a30
