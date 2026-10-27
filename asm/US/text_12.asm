; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text12Msgs0:
    db LOW(Text12Message00), HIGH(Text12Message00)
    db LOW(Text12Message01), HIGH(Text12Message01)
    db LOW(Text12Message02), HIGH(Text12Message02)
    db LOW(Text12Message03), HIGH(Text12Message03)
    db LOW(Text12Message04), HIGH(Text12Message04)
    db LOW(Text12Message05), HIGH(Text12Message05)
    db LOW(Text12Message06), HIGH(Text12Message06)
    db LOW(Text12Message07), HIGH(Text12Message07)
    db LOW(Text12Message08), HIGH(Text12Message08)
    db LOW(Text12Message09), HIGH(Text12Message09)
    db LOW(Text12Message0A), HIGH(Text12Message0A)
    db LOW(Text12Message0B), HIGH(Text12Message0B)
    db LOW(Text12Message0C), HIGH(Text12Message0C)
    db LOW(Text12Message0D), HIGH(Text12Message0D)
    db LOW(Text12Message0E), HIGH(Text12Message0E)
    db LOW(Text12Message0F), HIGH(Text12Message0F)
    db LOW(Text12Message10), HIGH(Text12Message10)
    db LOW(Text12Message11), HIGH(Text12Message11)
    db LOW(Text12Message12), HIGH(Text12Message12)
    db LOW(Text12Message13), HIGH(Text12Message13)
    db LOW(Text12Message14), HIGH(Text12Message14)
    db LOW(Text12Message15), HIGH(Text12Message15)
    db LOW(Text12Message16), HIGH(Text12Message16)
    db LOW(Text12Message17), HIGH(Text12Message17)
    db LOW(Text12Message18), HIGH(Text12Message18)
    db LOW(Text12Message19), HIGH(Text12Message19)
    db LOW(Text12Message1A), HIGH(Text12Message1A)
    db LOW(Text12Message1B), HIGH(Text12Message1B)
    db LOW(Text12Message1C), HIGH(Text12Message1C)
    db LOW(Text12Message1D), HIGH(Text12Message1D)
    db LOW(Text12Message1E), HIGH(Text12Message1E)
    db LOW(Text12Message1F), HIGH(Text12Message1F)
    db LOW(Text12Message20), HIGH(Text12Message20)
    db LOW(Text12Message21), HIGH(Text12Message21)
    db LOW(Text12Message22), HIGH(Text12Message22)
    db LOW(Text12Message23), HIGH(Text12Message23)
    db LOW(Text12Message24), HIGH(Text12Message24)
    db LOW(Text12Message25), HIGH(Text12Message25)
    db LOW(Text12Message26), HIGH(Text12Message26)
    db LOW(Text12Message27), HIGH(Text12Message27)
    db LOW(Text12Message28), HIGH(Text12Message28)
    db LOW(Text12Message29), HIGH(Text12Message29)
    db LOW(Text12Message2A), HIGH(Text12Message2A)
    db LOW(Text12Message2B), HIGH(Text12Message2B)
    db LOW(Text12Message2C), HIGH(Text12Message2C)
    db LOW(Text12Message2D), HIGH(Text12Message2D)
    db LOW(Text12Message2E), HIGH(Text12Message2E)
    db LOW(Text12Message2F), HIGH(Text12Message2F)
    db LOW(Text12Message30)
jr_012_4061:
    db HIGH(Text12Message30)
    db LOW(Text12Message31), HIGH(Text12Message31)
    db LOW(Text12Message32), HIGH(Text12Message32)
    db LOW(Text12Message33), HIGH(Text12Message33)
    db LOW(Text12Message34), HIGH(Text12Message34)
    db LOW(Text12Message35), HIGH(Text12Message35)
    db LOW(Text12Message36), HIGH(Text12Message36)
    db LOW(Text12Message37), HIGH(Text12Message37)
    db LOW(Text12Message38), HIGH(Text12Message38)
    db LOW(Text12Message39), HIGH(Text12Message39)
    db LOW(Text12Message3A), HIGH(Text12Message3A)
    db LOW(Text12Message3B), HIGH(Text12Message3B)
    db LOW(Text12Message3C), HIGH(Text12Message3C)
    db LOW(Text12Message3D), HIGH(Text12Message3D)
    db LOW(Text12Message3E), HIGH(Text12Message3E)
    db LOW(Text12Message3F), HIGH(Text12Message3F)
; Sixty-four message pointers for one text group.
Text12Msgs1:
    db LOW(Text12Message40), HIGH(Text12Message40)
    db LOW(Text12Message41), HIGH(Text12Message41)
    db LOW(Text12Message42), HIGH(Text12Message42)
    db LOW(Text12Message43), HIGH(Text12Message43)
    db LOW(Text12Message44), HIGH(Text12Message44)
    db LOW(Text12Message45), HIGH(Text12Message45)
    db LOW(Text12Message46), HIGH(Text12Message46)
    db LOW(Text12Message47), HIGH(Text12Message47)
    db LOW(Text12Message48), HIGH(Text12Message48)
    db LOW(Text12Message49), HIGH(Text12Message49)
    db LOW(Text12Message4A), HIGH(Text12Message4A)
    db LOW(Text12Message4B), HIGH(Text12Message4B)
    db LOW(Text12Message4C), HIGH(Text12Message4C)
    db LOW(Text12Message4D), HIGH(Text12Message4D)
    db LOW(Text12Message4E), HIGH(Text12Message4E)
    db LOW(Text12Message4F), HIGH(Text12Message4F)
    db LOW(Text12Message50), HIGH(Text12Message50)
    db LOW(Text12Message51), HIGH(Text12Message51)
    db LOW(Text12Message52), HIGH(Text12Message52)
    db LOW(Text12Message53), HIGH(Text12Message53)
    db LOW(Text12Message54), HIGH(Text12Message54)
    db LOW(Text12Message55), HIGH(Text12Message55)
    db LOW(Text12Message56), HIGH(Text12Message56)
    db LOW(Text12Message57), HIGH(Text12Message57)
    db LOW(Text12Message58), HIGH(Text12Message58)
    db LOW(Text12Message59), HIGH(Text12Message59)
    db LOW(Text12Message5A), HIGH(Text12Message5A)
    db LOW(Text12Message5B), HIGH(Text12Message5B)
    db LOW(Text12Message5C), HIGH(Text12Message5C)
    db LOW(Text12Message5D), HIGH(Text12Message5D)
    db LOW(Text12Message5E), HIGH(Text12Message5E)
    db LOW(Text12Message5F), HIGH(Text12Message5F)
    db LOW(Text12Message60), HIGH(Text12Message60)
    db LOW(Text12Message61), HIGH(Text12Message61)
    db LOW(Text12Message62), HIGH(Text12Message62)
    db LOW(Text12Message63), HIGH(Text12Message63)
    db LOW(Text12Message64), HIGH(Text12Message64)
    db LOW(Text12Message65), HIGH(Text12Message65)
    db LOW(Text12Message66), HIGH(Text12Message66)
    db LOW(Text12Message67), HIGH(Text12Message67)
    db LOW(Text12Message68), HIGH(Text12Message68)
    db LOW(Text12Message69), HIGH(Text12Message69)
    db LOW(Text12Message6A), HIGH(Text12Message6A)
    db LOW(Text12Message6B), HIGH(Text12Message6B)
    db LOW(Text12Message6C), HIGH(Text12Message6C)
    db LOW(Text12Message6D), HIGH(Text12Message6D)
    db LOW(Text12Message6E), HIGH(Text12Message6E)
    db LOW(Text12Message6F), HIGH(Text12Message6F)
    db LOW(Text12Message70), HIGH(Text12Message70)
    db LOW(Text12Message71), HIGH(Text12Message71)
    db LOW(Text12Message72), HIGH(Text12Message72)
    db LOW(Text12Message73), HIGH(Text12Message73)
    db LOW(Text12Message74), HIGH(Text12Message74)
    db LOW(Text12Message75), HIGH(Text12Message75)
    db LOW(Text12Message76), HIGH(Text12Message76)
    db LOW(Text12Message77), HIGH(Text12Message77)
    db LOW(Text12Message78), HIGH(Text12Message78)
    db LOW(Text12Message79), HIGH(Text12Message79)
    db LOW(Text12Message7A), HIGH(Text12Message7A)
    db LOW(Text12Message7B), HIGH(Text12Message7B)
    db LOW(Text12Message7C), HIGH(Text12Message7C)
    db LOW(Text12Message7D), HIGH(Text12Message7D)
    db LOW(Text12Message7E), HIGH(Text12Message7E)
    db LOW(Text12Message7F), HIGH(Text12Message7F)
; YOU AWAKE FROM A / GROGGY STUPOR...[PAGE] / THE THROBBING PAINFROM THE BACK OF / YOUR HEAD CREATES / AN UNEAS...
Text12Message00:
    INCBIN "../../res/text/US/banks/12.bin", $100, $10
jr_012_4110:
    INCBIN "../../res/text/US/banks/12.bin", $110, $30
jr_012_4140:
    INCBIN "../../res/text/US/banks/12.bin", $140, $15
jr_012_4155:
    INCBIN "../../res/text/US/banks/12.bin", $155, $26
jr_012_417b:
    INCBIN "../../res/text/US/banks/12.bin", $17b, $26
jr_012_41a1:
    INCBIN "../../res/text/US/banks/12.bin", $1a1, $c
jr_012_41ad:
    INCBIN "../../res/text/US/banks/12.bin", $1ad, $10
jr_012_41bd:
    INCBIN "../../res/text/US/banks/12.bin", $1bd, $19
jr_012_41d6:
    INCBIN "../../res/text/US/banks/12.bin", $1d6, $2
jr_012_41d8:
    INCBIN "../../res/text/US/banks/12.bin", $1d8, $4c
; YOU WERE ABDUCTED / IN CHICAGO BY TWO / THUGS WHO BROUGHT / YOU TO THE / NOTORIOUS LAS / VEGAS MOBSTER...[PAG...
Text12Message01:
    INCBIN "../../res/text/US/banks/12.bin", $224, $10
jr_012_4234:
    INCBIN "../../res/text/US/banks/12.bin", $234, $36
jr_012_426a:
    INCBIN "../../res/text/US/banks/12.bin", $26a, $39
jr_012_42a3:
    INCBIN "../../res/text/US/banks/12.bin", $2a3, $5f
jr_012_4302:
    INCBIN "../../res/text/US/banks/12.bin", $302, $1c
jr_012_431e:
    INCBIN "../../res/text/US/banks/12.bin", $31e, $53
jr_012_4371:
    INCBIN "../../res/text/US/banks/12.bin", $371, $25
jr_012_4396:
    INCBIN "../../res/text/US/banks/12.bin", $396, $a
; SINCE YOU WERE THELAST ONE TO DEAL / WITH SIEGEL, / MALONE FIGURED YOUWERE THE ONE WHO / LEFT WITH HIS / MONE...
Text12Message02:
    INCBIN "../../res/text/US/banks/12.bin", $3a0, $8
jr_012_43a8:
    INCBIN "../../res/text/US/banks/12.bin", $3a8, $e
jr_012_43b6:
    INCBIN "../../res/text/US/banks/12.bin", $3b6, $39
jr_012_43ef:
    INCBIN "../../res/text/US/banks/12.bin", $3ef, $40
jr_012_442f:
    INCBIN "../../res/text/US/banks/12.bin", $42f, $30
jr_012_445f:
    INCBIN "../../res/text/US/banks/12.bin", $45f, $7a
jr_012_44d9:
    INCBIN "../../res/text/US/banks/12.bin", $4d9, $9
jr_012_44e2:
    INCBIN "../../res/text/US/banks/12.bin", $4e2, $3e
jr_012_4520:
    INCBIN "../../res/text/US/banks/12.bin", $520, $c
jr_012_452c:
    INCBIN "../../res/text/US/banks/12.bin", $52c, $e
jr_012_453a:
    INCBIN "../../res/text/US/banks/12.bin", $53a, $16
; YOU STAND UP / SHAKILY, AND / WONDER WHERE THAT / MONEY COULD BE![END]
Text12Message03:
    INCBIN "../../res/text/US/banks/12.bin", $550, $10
jr_012_4560:
    INCBIN "../../res/text/US/banks/12.bin", $560, $6
jr_012_4566:
    INCBIN "../../res/text/US/banks/12.bin", $566, $26
; YOU FEEL / PARTICULARLY NAKEDWITHOUT ANY PANTS / ON.[END]
Text12Message04:
    INCBIN "../../res/text/US/banks/12.bin", $58c, $10
jr_012_459c:
    INCBIN "../../res/text/US/banks/12.bin", $59c, $21
; THE PAIR OF PANTS / FIT YOU WELL.[END]
Text12Message05:
    INCBIN "../../res/text/US/banks/12.bin", $5bd, $10
jr_012_45cd:
    INCBIN "../../res/text/US/banks/12.bin", $5cd, $10
; THE POLICE UNIFORMIS ABOUT TWO SIZESTOO BIG.[END]
Text12Message06:
    INCBIN "../../res/text/US/banks/12.bin", $5dd, $1f
jr_012_45fc:
    INCBIN "../../res/text/US/banks/12.bin", $5fc, $e
; "THANK YOU," / THE MAN SAYS / EYEING YOU WARILY,"BUT YOU LOOK LIKEYOU NEED IT MORE / THAN I DO!"[END]
Text12Message07:
    INCBIN "../../res/text/US/banks/12.bin", $60a, $17
jr_012_4621:
    INCBIN "../../res/text/US/banks/12.bin", $621, $a
jr_012_462b:
    INCBIN "../../res/text/US/banks/12.bin", $62b, $10
jr_012_463b:
    INCBIN "../../res/text/US/banks/12.bin", $63b, $10
jr_012_464b:
    INCBIN "../../res/text/US/banks/12.bin", $64b, $d
jr_012_4658:
    INCBIN "../../res/text/US/banks/12.bin", $658, $3
jr_012_465b:
    INCBIN "../../res/text/US/banks/12.bin", $65b, $a
; YOU'RE IN A DINGY / HOTEL BATHROOM.[END]
Text12Message08:
    INCBIN "../../res/text/US/banks/12.bin", $665, $10
jr_012_4675:
    INCBIN "../../res/text/US/banks/12.bin", $675, $12
; THE TUB HAS MORE / RINGS AROUND IT / THAN SATURN.[END]
Text12Message09:
    INCBIN "../../res/text/US/banks/12.bin", $687, $d
jr_012_4694:
    INCBIN "../../res/text/US/banks/12.bin", $694, $21
; A MAN DOZES BEHINDTHE COUNTER OF THELUGGAGE CLAIM.[END]
Text12Message0A:
    INCBIN "../../res/text/US/banks/12.bin", $6b5, $33
; THE SIGN SAYS / "PRESENT YOUR / CLAIM TAG TO / RECEIVE YOUR / LUGGAGE."[END]
Text12Message0B:
    INCBIN "../../res/text/US/banks/12.bin", $6e8, $1f
jr_012_4707:
    INCBIN "../../res/text/US/banks/12.bin", $707, $8
jr_012_470f:
    INCBIN "../../res/text/US/banks/12.bin", $70f, $19
; TRAIN SCHEDULES / SIT HAPHAZARDLY / IN THIS BOX.[END]
Text12Message0C:
    INCBIN "../../res/text/US/banks/12.bin", $728, $1
jr_012_4729:
    INCBIN "../../res/text/US/banks/12.bin", $729, $24
jr_012_474d:
    INCBIN "../../res/text/US/banks/12.bin", $74d, $8
; YOU STARE INTO THEMIRROR AND SEE / YOURSELF: ACE / HARDING, SECOND / RATE DETECTIVE.[PAGE] / YOUR HAGGARD FAC...
Text12Message0D:
    INCBIN "../../res/text/US/banks/12.bin", $755, $10
jr_012_4765:
    INCBIN "../../res/text/US/banks/12.bin", $765, $f
jr_012_4774:
    INCBIN "../../res/text/US/banks/12.bin", $774, $12
jr_012_4786:
    INCBIN "../../res/text/US/banks/12.bin", $786, $2e
jr_012_47b4:
    INCBIN "../../res/text/US/banks/12.bin", $7b4, $c
jr_012_47c0:
    INCBIN "../../res/text/US/banks/12.bin", $7c0, $e
jr_012_47ce:
    INCBIN "../../res/text/US/banks/12.bin", $7ce, $20
jr_012_47ee:
    INCBIN "../../res/text/US/banks/12.bin", $7ee, $1b
jr_012_4809:
    INCBIN "../../res/text/US/banks/12.bin", $809, $13
jr_012_481c:
    INCBIN "../../res/text/US/banks/12.bin", $81c, $5
jr_012_4821:
    INCBIN "../../res/text/US/banks/12.bin", $821, $2
jr_012_4823:
    INCBIN "../../res/text/US/banks/12.bin", $823, $4
jr_012_4827:
    INCBIN "../../res/text/US/banks/12.bin", $827, $2b
jr_012_4852:
    INCBIN "../../res/text/US/banks/12.bin", $852, $10
; YOU LOOK LIKE YOU / HAVE BEEN RUN OVERBY A FREIGHT / TRAIN.[END]
Text12Message0E:
    INCBIN "../../res/text/US/banks/12.bin", $862, $10
jr_012_4872:
    INCBIN "../../res/text/US/banks/12.bin", $872, $f
jr_012_4881:
    INCBIN "../../res/text/US/banks/12.bin", $881, $19
; THIS IS A TOWEL / ROD.[END]
Text12Message0F:
    INCBIN "../../res/text/US/banks/12.bin", $89a, $15
; THE WATER IS / RUNNING.[END]
Text12Message10:
    INCBIN "../../res/text/US/banks/12.bin", $8af, $16
; HOT WATER GUSHES / OUT OF THE FAUCET.[PAGE] / UNFORTUNATELY, / YOU'VE NO TIME FORA BATH NOW.[END]
Text12Message11:
    INCBIN "../../res/text/US/banks/12.bin", $8c5, $1f
jr_012_48e4:
    INCBIN "../../res/text/US/banks/12.bin", $8e4, $24
jr_012_4908:
    INCBIN "../../res/text/US/banks/12.bin", $908, $e
; STEAM RISES FROM / THE RUNNING HOT / WATER.[END]
Text12Message12:
    INCBIN "../../res/text/US/banks/12.bin", $916, $6
jr_012_491c:
    INCBIN "../../res/text/US/banks/12.bin", $91c, $22
; IT'S YOUR LUCKY / TRENCH COAT, / COMPLETE WITH A / NEW SET OF / WRINKLES AND / STAINS.[END]
Text12Message13:
    INCBIN "../../res/text/US/banks/12.bin", $93e, $15
jr_012_4953:
    INCBIN "../../res/text/US/banks/12.bin", $953, $18
jr_012_496b:
    INCBIN "../../res/text/US/banks/12.bin", $96b, $20
; IT'S YOUR PAIR OF / GRAY PANTS WHICH / LOOK ABOUT AS BAD / AS YOU FEEL.[END]
Text12Message14:
    INCBIN "../../res/text/US/banks/12.bin", $98b, $15
jr_012_49a0:
    INCBIN "../../res/text/US/banks/12.bin", $9a0, $a
jr_012_49aa:
    INCBIN "../../res/text/US/banks/12.bin", $9aa, $12
jr_012_49bc:
    INCBIN "../../res/text/US/banks/12.bin", $9bc, $11
; IT'S YOUR OLD / LEATHER WALLET. / YOU'VE GOTTEN MOREWEAR OUT OF IT / THAN THE COW DID.[END]
Text12Message15:
    INCBIN "../../res/text/US/banks/12.bin", $9cd, $3b
jr_012_4a08:
    INCBIN "../../res/text/US/banks/12.bin", $a08, $16
; THE ELDERLY / ATTENDANT LOOKS / YOUR WAY.[END]
Text12Message16:
    INCBIN "../../res/text/US/banks/12.bin", $a1e, $26
; THIS SUITCASE HAS / THE INITIALS / "T.B." ON IT.[END]
Text12Message17:
    INCBIN "../../res/text/US/banks/12.bin", $a44, $6
jr_012_4a4a:
    INCBIN "../../res/text/US/banks/12.bin", $a4a, $19
jr_012_4a63:
    INCBIN "../../res/text/US/banks/12.bin", $a63, $e
; THE CHEAP / EMBROIDERY ON / THE TOWEL READS, / "LUCKY DICE HOTEL / AND CASINO."[END]
Text12Message18:
    INCBIN "../../res/text/US/banks/12.bin", $a71, $48
; YOU RECOGNIZE THE / WELL WORN BRASS / KEY TO YOUR / APARTMENT.[END]
Text12Message19:
    INCBIN "../../res/text/US/banks/12.bin", $ab9, $2
jr_012_4abb:
    INCBIN "../../res/text/US/banks/12.bin", $abb, $e
jr_012_4ac9:
    INCBIN "../../res/text/US/banks/12.bin", $ac9, $29
jr_012_4af2:
; IT'S A FADED / NEWSPAPER CLIPPINGSHOWING YOU IN THEBOXING RING WITH / YOUR OLD SPARRING / PARTNER, RUDY / KOW...
Text12Message1A:
    INCBIN "../../res/text/US/banks/12.bin", $af2, $7
jr_012_4af9:
    INCBIN "../../res/text/US/banks/12.bin", $af9, $18
jr_012_4b11:
    INCBIN "../../res/text/US/banks/12.bin", $b11, $18
jr_012_4b29:
    INCBIN "../../res/text/US/banks/12.bin", $b29, $1b
jr_012_4b44:
    INCBIN "../../res/text/US/banks/12.bin", $b44, $2d
jr_012_4b71:
    INCBIN "../../res/text/US/banks/12.bin", $b71, $10
; THIS NEWSPAPER / CLIPPING IS / FOLDED, BUT YOU / CAN READ THE / HEADLINE:[PAGE] / "ACE CLEARS NAME / PRIVATE ...
Text12Message1B:
    INCBIN "../../res/text/US/banks/12.bin", $b81, $37
jr_012_4bb8:
    INCBIN "../../res/text/US/banks/12.bin", $bb8, $8f
jr_012_4c47:
    INCBIN "../../res/text/US/banks/12.bin", $c47, $16
; IT'S AN ILLINOIS / DRIVER'S LICENSE / WHICH READS:[PAGE] / THEODORE HARDING / 2034 W. ADDISON / CHICAGO, ILLI...
Text12Message1C:
    INCBIN "../../res/text/US/banks/12.bin", $c5d, $4
jr_012_4c61:
    INCBIN "../../res/text/US/banks/12.bin", $c61, $5e
; IT'S AN EMPTY PACKOF GUM.[END]
Text12Message1D:
    INCBIN "../../res/text/US/banks/12.bin", $cbf, $14
jr_012_4cd3:
    INCBIN "../../res/text/US/banks/12.bin", $cd3, $6
; BOY, THERE'S A LOTOF DIRTY LINENS / IN HERE.[END]
Text12Message1E:
    INCBIN "../../res/text/US/banks/12.bin", $cd9, $e
jr_012_4ce7:
    INCBIN "../../res/text/US/banks/12.bin", $ce7, $11
jr_012_4cf8:
    INCBIN "../../res/text/US/banks/12.bin", $cf8, $c
; YOU STICK YOUR / HEAD UNDER THE / FAUCET.[PAGE] / THE COLD WATER / SHOCKS YOU AWAKE![END]
Text12Message1F:
    INCBIN "../../res/text/US/banks/12.bin", $d04, $a
jr_012_4d0e:
    INCBIN "../../res/text/US/banks/12.bin", $d0e, $6
jr_012_4d14:
    INCBIN "../../res/text/US/banks/12.bin", $d14, $37
; YOU STICK YOUR / HEAD UNDER THE / FLOWING WATER.[PAGE] / THE TEPID WATER / FEELS GOOD AND / REFRESHING.[END]
Text12Message20:
    INCBIN "../../res/text/US/banks/12.bin", $d4b, $5
jr_012_4d50:
    INCBIN "../../res/text/US/banks/12.bin", $d50, $b
jr_012_4d5b:
    INCBIN "../../res/text/US/banks/12.bin", $d5b, $48
; YOU STICK YOUR / HEAD UNDER THE / FAUCET.[PAGE] / YOWCH! THE HOT / WATER SCALDS YOUR / HEAD![END]
Text12Message21:
    INCBIN "../../res/text/US/banks/12.bin", $da3, $10
jr_012_4db3:
    INCBIN "../../res/text/US/banks/12.bin", $db3, $f
jr_012_4dc2:
    INCBIN "../../res/text/US/banks/12.bin", $dc2, $23
jr_012_4de5:
    INCBIN "../../res/text/US/banks/12.bin", $de5, $b
; YOU SOAK THE TOWELIN THE WATER AND / DAINTILY DAB YOUR / FOREHEAD.[PAGE] / HOW SOPHISTICATED![END]
Text12Message22:
    INCBIN "../../res/text/US/banks/12.bin", $df0, $5
jr_012_4df5:
    INCBIN "../../res/text/US/banks/12.bin", $df5, $b
jr_012_4e00:
    INCBIN "../../res/text/US/banks/12.bin", $e00, $42
; YOU WIPE YOUR FACEWITH THE TOWEL / TRYING TO CLEAN / AWAY THE GRIME OF / THE PAST FEW DAYS.[END]
Text12Message23:
    INCBIN "../../res/text/US/banks/12.bin", $e42, $9
jr_012_4e4b:
    INCBIN "../../res/text/US/banks/12.bin", $e4b, $7
jr_012_4e52:
    INCBIN "../../res/text/US/banks/12.bin", $e52, $9
jr_012_4e5b:
    INCBIN "../../res/text/US/banks/12.bin", $e5b, $37
jr_012_4e92:
    INCBIN "../../res/text/US/banks/12.bin", $e92, $6
; MAYBE THAT'S / WHERE THE 112,000 / CLAMS IS HIDDEN...[END]
Text12Message24:
    INCBIN "../../res/text/US/banks/12.bin", $e98, $5
jr_012_4e9d:
    INCBIN "../../res/text/US/banks/12.bin", $e9d, $b
jr_012_4ea8:
    INCBIN "../../res/text/US/banks/12.bin", $ea8, $f
jr_012_4eb7:
    INCBIN "../../res/text/US/banks/12.bin", $eb7, $13
; SCRAWLED ON THIS / ENVELOPE ARE THE / WORDS: / "ANTHONY MALONE, / LUCKY DICE HOTEL / AND CASINO."[END]
Text12Message25:
    INCBIN "../../res/text/US/banks/12.bin", $eca, $1b
jr_012_4ee5:
    INCBIN "../../res/text/US/banks/12.bin", $ee5, $3
jr_012_4ee8:
    INCBIN "../../res/text/US/banks/12.bin", $ee8, $1
jr_012_4ee9:
    INCBIN "../../res/text/US/banks/12.bin", $ee9, $2d
jr_012_4f16:
    INCBIN "../../res/text/US/banks/12.bin", $f16, $c
; WITH EVERY BEAT OFYOUR HEART, YOU / FEEL YOUR LIFE / SLIPPING AWAY...[PAGE] / SOON, EVERYTHING / GOES BLACK A...
Text12Message26:
    INCBIN "../../res/text/US/banks/12.bin", $f22, $2
jr_012_4f24:
    INCBIN "../../res/text/US/banks/12.bin", $f24, $20
jr_012_4f44:
    INCBIN "../../res/text/US/banks/12.bin", $f44, $3
jr_012_4f47:
    INCBIN "../../res/text/US/banks/12.bin", $f47, $3a
jr_012_4f81:
    INCBIN "../../res/text/US/banks/12.bin", $f81, $2
jr_012_4f83:
    INCBIN "../../res/text/US/banks/12.bin", $f83, $14
; YOU PUT ON THE / TRENCH COAT.[END]
Text12Message27:
    INCBIN "../../res/text/US/banks/12.bin", $f97, $10
jr_012_4fa7:
    INCBIN "../../res/text/US/banks/12.bin", $fa7, $c
; YOU SLIP INTO YOURPANTS.[END]
Text12Message28:
    INCBIN "../../res/text/US/banks/12.bin", $fb3, $2
jr_012_4fb5:
    INCBIN "../../res/text/US/banks/12.bin", $fb5, $1
jr_012_4fb6:
    INCBIN "../../res/text/US/banks/12.bin", $fb6, $d
jr_012_4fc3:
    INCBIN "../../res/text/US/banks/12.bin", $fc3, $9
; AS YOU OPEN THE / PAPER, AN OLD / CLIPPING FALLS / OUT.[END]
Text12Message29:
    INCBIN "../../res/text/US/banks/12.bin", $fcc, $5
jr_012_4fd1:
    INCBIN "../../res/text/US/banks/12.bin", $fd1, $1
jr_012_4fd2:
    INCBIN "../../res/text/US/banks/12.bin", $fd2, $d
jr_012_4fdf:
    INCBIN "../../res/text/US/banks/12.bin", $fdf, $c
jr_012_4feb:
    INCBIN "../../res/text/US/banks/12.bin", $feb, $13
; MIGHT BE A DOOR. / YUP, HANDLE AND / HINGES- IT'S A / DOOR ALRIGHT![END]
Text12Message2A:
    INCBIN "../../res/text/US/banks/12.bin", $ffe, $1f
jr_012_501d:
    INCBIN "../../res/text/US/banks/12.bin", $101d, $8
jr_012_5025:
    INCBIN "../../res/text/US/banks/12.bin", $1025, $17
; FOR NO OTHER / REASON THAN YOU / CAN, YOU BLOW THE / POOR SLOB AWAY.[END]
Text12Message2B:
    INCBIN "../../res/text/US/banks/12.bin", $103c, $29
jr_012_5065:
    INCBIN "../../res/text/US/banks/12.bin", $1065, $9
jr_012_506e:
    INCBIN "../../res/text/US/banks/12.bin", $106e, $d
; NOTHING HAPPENS.[END]
Text12Message2C:
    INCBIN "../../res/text/US/banks/12.bin", $107b, $11
; WHAT ARE YOU / DOING...?[END]
Text12Message2D:
    INCBIN "../../res/text/US/banks/12.bin", $108c, $e
jr_012_509a:
    INCBIN "../../res/text/US/banks/12.bin", $109a, $9
; OUCH![END]
Text12Message2E:
    INCBIN "../../res/text/US/banks/12.bin", $10a3, $2
jr_012_50a5:
    INCBIN "../../res/text/US/banks/12.bin", $10a5, $4
; IN THIS PICTURE, / SEIGEL IS SHAKING / HANDS WITH A THIN / GUY IN FRONT OF / THE "RELIANT / CLEANERS."[PAGE] ...
Text12Message2F:
    INCBIN "../../res/text/US/banks/12.bin", $10a9, $18
jr_012_50c1:
    INCBIN "../../res/text/US/banks/12.bin", $10c1, $3b
jr_012_50fc:
    INCBIN "../../res/text/US/banks/12.bin", $10fc, $2a
jr_012_5126:
    INCBIN "../../res/text/US/banks/12.bin", $1126, $1e
jr_012_5144:
    INCBIN "../../res/text/US/banks/12.bin", $1144, $e
; YOU'RE IN A CHEAP,MESSY HOTEL ROOM. / BUT THEN AGAIN, / WHO'S COMPLAINING![END]
Text12Message30:
    INCBIN "../../res/text/US/banks/12.bin", $1152, $10
jr_012_5162:
    INCBIN "../../res/text/US/banks/12.bin", $1162, $37
; HMM INTERESTING...YOU WONDER WHO / THIS GUY IS AND / HOW HE KNEW / SIEGEL?[END]
Text12Message31:
    INCBIN "../../res/text/US/banks/12.bin", $1199, $31
jr_012_51ca:
    INCBIN "../../res/text/US/banks/12.bin", $11ca, $14
; A MAN REEKING OF / CIGAR SMOKE / APPEARS OUT OF / THE BLUE AND / SAYS...[END]
Text12Message32:
    INCBIN "../../res/text/US/banks/12.bin", $11de, $1f
jr_012_51fd:
    INCBIN "../../res/text/US/banks/12.bin", $11fd, $22
; "JUST REMEMBER / PAL, I GOT / INSTRUCTIONS TO / KEEP MY EYES ON / YOU.[PAGE] / SO, DON'T BE / GETTING NO FUNN...
Text12Message33:
    INCBIN "../../res/text/US/banks/12.bin", $121f, $e
jr_012_522d:
    INCBIN "../../res/text/US/banks/12.bin", $122d, $10
jr_012_523d:
    INCBIN "../../res/text/US/banks/12.bin", $123d, $1b
jr_012_5258:
    INCBIN "../../res/text/US/banks/12.bin", $1258, $13
jr_012_526b:
    INCBIN "../../res/text/US/banks/12.bin", $126b, $f
jr_012_527a:
    INCBIN "../../res/text/US/banks/12.bin", $127a, $14
; STOGIE LEAVES / THE ROOM. A / DISCARDED CIGAR / RING IS THE ONLY / INDICATION THAT HEWAS EVER HERE.[END]
Text12Message34:
    INCBIN "../../res/text/US/banks/12.bin", $128e, $b
jr_012_5299:
    INCBIN "../../res/text/US/banks/12.bin", $1299, $27
jr_012_52c0:
    INCBIN "../../res/text/US/banks/12.bin", $12c0, $26
jr_012_52e6:
    INCBIN "../../res/text/US/banks/12.bin", $12e6, $4
; THE WINDOW'S TOO / GRIMY TO SEE / THROUGH.[END]
Text12Message35:
    INCBIN "../../res/text/US/banks/12.bin", $12ea, $27
; YOU DOUBT THAT / ANYONE WOULD WANT / TO MAKE A DRESS / FROM THESE DRAPES.[END]
Text12Message36:
    INCBIN "../../res/text/US/banks/12.bin", $1311, $10
jr_012_5321:
    INCBIN "../../res/text/US/banks/12.bin", $1321, $f
jr_012_5330:
    INCBIN "../../res/text/US/banks/12.bin", $1330, $2
jr_012_5332:
    INCBIN "../../res/text/US/banks/12.bin", $1332, $23
; IF YOU SLEEP NOW, / YOU'LL ONLY HAVE / DREAMS OF MALONE / TEARING YOU TO / PIECES![END]
Text12Message37:
    INCBIN "../../res/text/US/banks/12.bin", $1355, $1f
jr_012_5374:
    INCBIN "../../res/text/US/banks/12.bin", $1374, $3
jr_012_5377:
    INCBIN "../../res/text/US/banks/12.bin", $1377, $29
; YOU ARE / DISAPPOINTED THAT / THIS IS NOT A / BLACK VELVET / PAINTING OF A / MATADOR OR / SOMETHING.[END]
Text12Message38:
    INCBIN "../../res/text/US/banks/12.bin", $13a0, $10
jr_012_53b0:
    INCBIN "../../res/text/US/banks/12.bin", $13b0, $49
; IT'S A BEAT UP / DRESSER.[END]
Text12Message39:
    INCBIN "../../res/text/US/banks/12.bin", $13f9, $18
; TWO INCHES OF / DUST COAT THIS / NIGHTSTAND.[END]
Text12Message3A:
    INCBIN "../../res/text/US/banks/12.bin", $1411, $7
jr_012_5418:
    INCBIN "../../res/text/US/banks/12.bin", $1418, $22
; THIS WASTEBASKET / IS THE CLEANEST / ITEM IN THIS ROOM.[END]
Text12Message3B:
    INCBIN "../../res/text/US/banks/12.bin", $143a, $1f
jr_012_5459:
    INCBIN "../../res/text/US/banks/12.bin", $1459, $15
; A FOLDED TRAIN / SCHEDULE ALWAYS / COMES IN HANDY.[END]
Text12Message3C:
    INCBIN "../../res/text/US/banks/12.bin", $146e, $1f
jr_012_548d:
    INCBIN "../../res/text/US/banks/12.bin", $148d, $10
; "A GUIDE TO THE / NEW INFORMATION / TABLE:[PAGE] / INBOUND -- / THE TRAIN WILL BE / ARRIVING SHORTLY.[PAGE] /...
Text12Message3D:
    INCBIN "../../res/text/US/banks/12.bin", $149d, $1f
jr_012_54bc:
    INCBIN "../../res/text/US/banks/12.bin", $14bc, $56
jr_012_5512:
    INCBIN "../../res/text/US/banks/12.bin", $1512, $1f
jr_012_5531:
    INCBIN "../../res/text/US/banks/12.bin", $1531, $64
jr_012_5595:
    INCBIN "../../res/text/US/banks/12.bin", $1595, $10
; IT'S A CIGAR RING.APPARENTLY STOGIE / MARTIN DROPPED IT.[PAGE] / HE'S GOT TO BE / THE ONLY GOON WHO / SMOKES ...
Text12Message3E:
    INCBIN "../../res/text/US/banks/12.bin", $15a5, $13
jr_012_55b8:
    INCBIN "../../res/text/US/banks/12.bin", $15b8, $12
jr_012_55ca:
    INCBIN "../../res/text/US/banks/12.bin", $15ca, $12
jr_012_55dc:
    INCBIN "../../res/text/US/banks/12.bin", $15dc, $32
jr_012_560e:
    INCBIN "../../res/text/US/banks/12.bin", $160e, $13
; IT'S A HARD, / LUMPY PILLOW.[END]
Text12Message3F:
    INCBIN "../../res/text/US/banks/12.bin", $1621, $1b
; THIS LETTER IS / ADDRESSED TO / ANTHONY MALONE.[END]
Text12Message40:
    INCBIN "../../res/text/US/banks/12.bin", $163c, $12
jr_012_564e:
    INCBIN "../../res/text/US/banks/12.bin", $164e, $d
jr_012_565b:
    INCBIN "../../res/text/US/banks/12.bin", $165b, $d
; AT THE BOTTOM OF / THE FOLDED TRAIN / SCHEDULE IS THE / CHICAGO STATION / ADDRESS.[END]
Text12Message41:
    INCBIN "../../res/text/US/banks/12.bin", $1668, $12
jr_012_567a:
    INCBIN "../../res/text/US/banks/12.bin", $167a, $39
; A LIST OF FARES ISINCLUDED.[PAGE] / LAS VEGAS TO /   NEW YORK    $35 / LAS VEGAS TO /   ST. LOUIS   $15 / LAS...
Text12Message42:
    INCBIN "../../res/text/US/banks/12.bin", $16b3, $1f
jr_012_56d2:
    INCBIN "../../res/text/US/banks/12.bin", $16d2, $19
jr_012_56eb:
    INCBIN "../../res/text/US/banks/12.bin", $16eb, $7
jr_012_56f2:
    INCBIN "../../res/text/US/banks/12.bin", $16f2, $29
jr_012_571b:
    INCBIN "../../res/text/US/banks/12.bin", $171b, $30
; THE CRUMPLED PIECEOF PAPER READS:[PAGE] / "STOGIE, THE / PAYMENT FROM LA ISOVERDUE. CHECK IT / OUT AND, IF / ...
Text12Message43:
    INCBIN "../../res/text/US/banks/12.bin", $174b, $1f
jr_012_576a:
    INCBIN "../../res/text/US/banks/12.bin", $176a, $20
jr_012_578a:
    INCBIN "../../res/text/US/banks/12.bin", $178a, $25
jr_012_57af:
    INCBIN "../../res/text/US/banks/12.bin", $17af, $25
; BANG![END]
Text12Message44:
    INCBIN "../../res/text/US/banks/12.bin", $17d4, $6
; THAT WAS / PRODUCTIVE...[END]
Text12Message45:
    INCBIN "../../res/text/US/banks/12.bin", $17da, $10
jr_012_57ea:
    INCBIN "../../res/text/US/banks/12.bin", $17ea, $7
; YOU SCRATCHED IT![PAGE] / YOU GUILTILY / GLANCE AROUND / HOPING NO ONE / NOTICED.[END]
Text12Message46:
    INCBIN "../../res/text/US/banks/12.bin", $17f1, $1e
jr_012_580f:
    INCBIN "../../res/text/US/banks/12.bin", $180f, $1
jr_012_5810:
    INCBIN "../../res/text/US/banks/12.bin", $1810, $3
jr_012_5813:
    INCBIN "../../res/text/US/banks/12.bin", $1813, $22
; AS YOU STAND IN / THE HOTEL HALLWAY,YOU CAN HEAR THE / SOUNDS OF GAMBLINGIN THE DISTANCE.[END]
Text12Message47:
    INCBIN "../../res/text/US/banks/12.bin", $1835, $13
jr_012_5848:
    INCBIN "../../res/text/US/banks/12.bin", $1848, $1f
jr_012_5867:
    INCBIN "../../res/text/US/banks/12.bin", $1867, $15
jr_012_587c:
    INCBIN "../../res/text/US/banks/12.bin", $187c, $f
; IT'S THE FIRST / FLOOR HALLWAY.[END]
Text12Message48:
    INCBIN "../../res/text/US/banks/12.bin", $188b, $1e
; THIS TABLE BLENDS / IN WELL WITH THE / HOTEL'S DECOR.[END]
Text12Message49:
    INCBIN "../../res/text/US/banks/12.bin", $18a9, $1
jr_012_58aa:
    INCBIN "../../res/text/US/banks/12.bin", $18aa, $1e
jr_012_58c8:
    INCBIN "../../res/text/US/banks/12.bin", $18c8, $13
; THE LIGHT CASTS A / WARM, GOLDEN GLOW.[END]
Text12Message4A:
    INCBIN "../../res/text/US/banks/12.bin", $18db, $1f
jr_012_58fa:
    INCBIN "../../res/text/US/banks/12.bin", $18fa, $6
; IT'S A TACKY LIGHTFIXTURE.[END]
Text12Message4B:
    INCBIN "../../res/text/US/banks/12.bin", $1900, $1b
; THIS IS AN / ELEVATOR BUTTON.[END]
Text12Message4C:
    INCBIN "../../res/text/US/banks/12.bin", $191b, $c
jr_012_5927:
    INCBIN "../../res/text/US/banks/12.bin", $1927, $10
; IT'S A SIGN THAT / READS, "CASINO."[END]
Text12Message4D:
    INCBIN "../../res/text/US/banks/12.bin", $1937, $1f
jr_012_5956:
    INCBIN "../../res/text/US/banks/12.bin", $1956, $3
; THIS PLANT IS IN / NEED OF A GOOD / WATERING.[END]
Text12Message4E:
    INCBIN "../../res/text/US/banks/12.bin", $1959, $2a
; "SON, YOU REALLY / SHOULD QUIT," / THE MAN SAYS WITH / A FROWN.[END]
Text12Message4F:
    INCBIN "../../res/text/US/banks/12.bin", $1983, $16
jr_012_5999:
    INCBIN "../../res/text/US/banks/12.bin", $1999, $18
jr_012_59b1:
    INCBIN "../../res/text/US/banks/12.bin", $19b1, $c
; YOU PUT YOUR EAR / TO THE DOOR, / HOPING TO HEAR / SOMETHING. BUT / ALL'S QUIET.[END]
Text12Message50:
    INCBIN "../../res/text/US/banks/12.bin", $19bd, $3
jr_012_59c0:
    INCBIN "../../res/text/US/banks/12.bin", $19c0, $15
jr_012_59d5:
    INCBIN "../../res/text/US/banks/12.bin", $19d5, $7
jr_012_59dc:
    INCBIN "../../res/text/US/banks/12.bin", $19dc, $2a
; THESE ELEVATOR / DOORS MUST HAVE / RECENTLY BEEN / PAINTED. THEY / REEK![END]
Text12Message51:
    INCBIN "../../res/text/US/banks/12.bin", $1a06, $9
jr_012_5a0f:
    INCBIN "../../res/text/US/banks/12.bin", $1a0f, $16
jr_012_5a25:
    INCBIN "../../res/text/US/banks/12.bin", $1a25, $22
; THE 2ND FLOOR / HALLWAY IS EERILY / QUIET.[END]
Text12Message52:
    INCBIN "../../res/text/US/banks/12.bin", $1a47, $1
jr_012_5a48:
    INCBIN "../../res/text/US/banks/12.bin", $1a48, $e
jr_012_5a56:
    INCBIN "../../res/text/US/banks/12.bin", $1a56, $18
; NOT BAD FOR HOTEL / ART.[END]
Text12Message53:
    INCBIN "../../res/text/US/banks/12.bin", $1a6e, $9
jr_012_5a77:
    INCBIN "../../res/text/US/banks/12.bin", $1a77, $d
jr_012_5a84:
    INCBIN "../../res/text/US/banks/12.bin", $1a84, $1
; THE PLANT HAS JUSTSTARTED TO BLOOM.[END]
Text12Message54:
    INCBIN "../../res/text/US/banks/12.bin", $1a85, $8
jr_012_5a8d:
    INCBIN "../../res/text/US/banks/12.bin", $1a8d, $1c
; THIS IS OBVIOUSLY / THE DOOR TO A / HOTEL ROOM.[END]
Text12Message55:
    INCBIN "../../res/text/US/banks/12.bin", $1aa9, $1f
jr_012_5ac8:
    INCBIN "../../res/text/US/banks/12.bin", $1ac8, $d
; A FAINT SCUFFLING / CAN BE HEARD ON / THE OTHER SIDE OF / THIS DOOR.[END]
Text12Message56:
    INCBIN "../../res/text/US/banks/12.bin", $1ad5, $3
jr_012_5ad8:
    INCBIN "../../res/text/US/banks/12.bin", $1ad8, $1c
jr_012_5af4:
    INCBIN "../../res/text/US/banks/12.bin", $1af4, $20
; THE THIRD FLOOR / HALLWAY IS MUCH / THE SAME AS THE / REST.[END]
Text12Message57:
    INCBIN "../../res/text/US/banks/12.bin", $1b14, $36
; WHAT AN UGLY PIECEOF ART! MUST HAVE / BEEN PAINTED BY / THE OWNER'S WIFE.[END]
Text12Message58:
    INCBIN "../../res/text/US/banks/12.bin", $1b4a, $1f
jr_012_5b69:
    INCBIN "../../res/text/US/banks/12.bin", $1b69, $8
jr_012_5b71:
    INCBIN "../../res/text/US/banks/12.bin", $1b71, $1f
; THIS PLANT HAS / LITTLE FLOWERS.[END]
Text12Message59:
    INCBIN "../../res/text/US/banks/12.bin", $1b90, $1f
jr_012_5baf:
; WITH DEDUCTIVE / REASONING, YOU / DEDUCE THAT THIS / MUST BE AN / ELEVATOR DOOR.[END]
Text12Message5A:
    INCBIN "../../res/text/US/banks/12.bin", $1baf, $2a
jr_012_5bd9:
    INCBIN "../../res/text/US/banks/12.bin", $1bd9, $1f
; SOMETHING IS / WRITTEN ON THE / SIDE OF THIS LARGEHAMPER.[END]
Text12Message5B:
    INCBIN "../../res/text/US/banks/12.bin", $1bf8, $36
; IT READS, "RELIANTCLEANERS."[END]
Text12Message5C:
    INCBIN "../../res/text/US/banks/12.bin", $1c2e, $1d
; YOU WONDER IF THEYTAKE THIS HAMPER / TO THE CLEANERS / EVERY NIGHT.[END]
Text12Message5D:
    INCBIN "../../res/text/US/banks/12.bin", $1c4b, $10
jr_012_5c5b:
    INCBIN "../../res/text/US/banks/12.bin", $1c5b, $16
jr_012_5c71:
    INCBIN "../../res/text/US/banks/12.bin", $1c71, $1a
; THE BEGINNINGS OF / AN IDEA FORM IN / YOUR HEAD.[END]
Text12Message5E:
    INCBIN "../../res/text/US/banks/12.bin", $1c8b, $1f
jr_012_5caa:
    INCBIN "../../res/text/US/banks/12.bin", $1caa, $e
; INSIDE THE HAMPER / IT STINKS LIKE / DAY-OLD SOCKS AND / SMELLY SHORTS.[END]
Text12Message5F:
    INCBIN "../../res/text/US/banks/12.bin", $1cb8, $42
; THE KEY DOESN'T / FIT.[END]
Text12Message60:
    INCBIN "../../res/text/US/banks/12.bin", $1cfa, $4
jr_012_5cfe:
    INCBIN "../../res/text/US/banks/12.bin", $1cfe, $11
; NOBODY ANSWERS.[END]
Text12Message61:
    INCBIN "../../res/text/US/banks/12.bin", $1d0f, $a
jr_012_5d19:
    INCBIN "../../res/text/US/banks/12.bin", $1d19, $6
; GLASS SHATTERS / EVERYWHERE.[END]
Text12Message62:
    INCBIN "../../res/text/US/banks/12.bin", $1d1f, $11
jr_012_5d30:
    INCBIN "../../res/text/US/banks/12.bin", $1d30, $a
; THE NAMES ON THE / DOORS ARE / FAMILIAR: ANTHONY / MALONE, NOTORIOUS / VEGAS MOBSTER, ANDDANNY VENTINI.[PAGE]...
Text12Message63:
    INCBIN "../../res/text/US/banks/12.bin", $1d3a, $4a
jr_012_5d84:
    INCBIN "../../res/text/US/banks/12.bin", $1d84, $27
jr_012_5dab:
    INCBIN "../../res/text/US/banks/12.bin", $1dab, $8
jr_012_5db3:
    INCBIN "../../res/text/US/banks/12.bin", $1db3, $2e
; IT WAS RUMORED / THAT A DISTRICT / ATTORNEY HAD / IRREFUTABLE / EVIDENCE TO / CONVICT THE / LAS VEGAS / "BUSI...
Text12Message64:
    INCBIN "../../res/text/US/banks/12.bin", $1de1, $42
jr_012_5e23:
    INCBIN "../../res/text/US/banks/12.bin", $1e23, $4c
jr_012_5e6f:
    INCBIN "../../res/text/US/banks/12.bin", $1e6f, $19
; THE FOURTH FLOOR / OF THE HOTEL SEEMSTO CONTAIN / OFFICES.[PAGE] / SIGNS HANG ABOVE / THE TWO DOORS.[END]
Text12Message65:
    INCBIN "../../res/text/US/banks/12.bin", $1e88, $1f
jr_012_5ea7:
    INCBIN "../../res/text/US/banks/12.bin", $1ea7, $34
jr_012_5edb:
    INCBIN "../../res/text/US/banks/12.bin", $1edb, $4
; YOU'RE ON THE / FOURTH FLOOR.[END]
Text12Message66:
    INCBIN "../../res/text/US/banks/12.bin", $1edf, $1c
; THIS POOR TREE IS / WITHERING A BIT.[END]
Text12Message67:
    INCBIN "../../res/text/US/banks/12.bin", $1efb, $23
; HMM... / SQUEAKY CLEAN.[END]
Text12Message68:
    INCBIN "../../res/text/US/banks/12.bin", $1f1e, $16
; THE SIGN ABOVE / THIS DOOR READS, / "DANNY VENTINI."[END]
Text12Message69:
    INCBIN "../../res/text/US/banks/12.bin", $1f34, $9
jr_012_5f3d:
    INCBIN "../../res/text/US/banks/12.bin", $1f3d, $5
jr_012_5f42:
    INCBIN "../../res/text/US/banks/12.bin", $1f42, $1
jr_012_5f43:
    INCBIN "../../res/text/US/banks/12.bin", $1f43, $10
jr_012_5f53:
    INCBIN "../../res/text/US/banks/12.bin", $1f53, $12
; "ANTHONY MALONE" / IS PRINTED IN GOLDLETTERS ON THIS / SIGN.[END]
Text12Message6A:
    INCBIN "../../res/text/US/banks/12.bin", $1f65, $23
jr_012_5f88:
    INCBIN "../../res/text/US/banks/12.bin", $1f88, $2
jr_012_5f8a:
    INCBIN "../../res/text/US/banks/12.bin", $1f8a, $14
; UH OH! THE GUARD / SPOTS YOU![END]
Text12Message6B:
    INCBIN "../../res/text/US/banks/12.bin", $1f9e, $1c
; "YOU ARE STUPID / AREN'T YOU? TRYIN'TA SNEAK AROUND / HERE?"[PAGE] / HE EYES YOU UP ANDDOWN AND THEN / SAYS, ...
Text12Message6C:
    INCBIN "../../res/text/US/banks/12.bin", $1fba, $b
jr_012_5fc5:
    INCBIN "../../res/text/US/banks/12.bin", $1fc5, $1c
jr_012_5fe1:
    INCBIN "../../res/text/US/banks/12.bin", $1fe1, $1c
jr_012_5ffd:
    INCBIN "../../res/text/US/banks/12.bin", $1ffd, $e
jr_012_600b:
    INCBIN "../../res/text/US/banks/12.bin", $200b, $1e
jr_012_6029:
    INCBIN "../../res/text/US/banks/12.bin", $2029, $c
; THE NOISE AND / SMOKE OF THE TOMMYGUN FILLS YOUR / WORLD AS YOU FALL / TO THE GROUND IN AHEAP.[END]
Text12Message6D:
    INCBIN "../../res/text/US/banks/12.bin", $2035, $3a
jr_012_606f:
    INCBIN "../../res/text/US/banks/12.bin", $206f, $e
jr_012_607d:
    INCBIN "../../res/text/US/banks/12.bin", $207d, $11
; THE CLINKING / SOUNDS OF CHIPS / FLOATS OUT FROM / THE LOBBY.[END]
Text12Message6E:
    INCBIN "../../res/text/US/banks/12.bin", $208e, $1f
jr_012_60ad:
    INCBIN "../../res/text/US/banks/12.bin", $20ad, $19
; THE BOUNCER / QUICKLY STEPS / IN FRONT OF YOU / AND SAYS,[PAGE] / "HEY, 'DIS HERE ISA CLASSY KIND OF / JOINT!...
Text12Message6F:
    INCBIN "../../res/text/US/banks/12.bin", $20c6, $2e
jr_012_60f4:
    INCBIN "../../res/text/US/banks/12.bin", $20f4, $8
jr_012_60fc:
    INCBIN "../../res/text/US/banks/12.bin", $20fc, $e
jr_012_610a:
    INCBIN "../../res/text/US/banks/12.bin", $210a, $1a
jr_012_6124:
    INCBIN "../../res/text/US/banks/12.bin", $2124, $15
jr_012_6139:
    INCBIN "../../res/text/US/banks/12.bin", $2139, $f
; THE BOUNCER / ROUGHLY THROWS YOUFROM THE CASINO.[END]
Text12Message70:
    INCBIN "../../res/text/US/banks/12.bin", $2148, $2f
; YOU'RE ON A / PLATFORM IN A / TRAIN STATION.[END]
Text12Message71:
    INCBIN "../../res/text/US/banks/12.bin", $2177, $10
jr_012_6187:
    INCBIN "../../res/text/US/banks/12.bin", $2187, $f
jr_012_6196:
    INCBIN "../../res/text/US/banks/12.bin", $2196, $a
; "LUCKY DICE HOTEL / AND CASINO" IS / PRINTED ON THE / ASHTRAY.[END]
Text12Message72:
    INCBIN "../../res/text/US/banks/12.bin", $21a0, $21
jr_012_61c1:
    INCBIN "../../res/text/US/banks/12.bin", $21c1, $18
; IT'S A BUSY PLACE.[END]
Text12Message73:
    INCBIN "../../res/text/US/banks/12.bin", $21d9, $13
; LOOKS LIKE THE / ENTRANCE.[END]
Text12Message74:
    INCBIN "../../res/text/US/banks/12.bin", $21ec, $c
jr_012_61f8:
    INCBIN "../../res/text/US/banks/12.bin", $21f8, $d
; THE PAINTING / DEPICTS TWO MEN / FACING OFF IN A / CLASSIC OLD WEST / STYLE SHOWDOWN.[END]
Text12Message75:
    INCBIN "../../res/text/US/banks/12.bin", $2205, $6
jr_012_620b:
    INCBIN "../../res/text/US/banks/12.bin", $220b, $19
jr_012_6224:
    INCBIN "../../res/text/US/banks/12.bin", $2224, $2f
; IT'S A TACKY, BUT / COMFORTABLE, RED / VELVET CHAIR.[END]
Text12Message76:
    INCBIN "../../res/text/US/banks/12.bin", $2253, $1f
jr_012_6272:
    INCBIN "../../res/text/US/banks/12.bin", $2272, $12
; THEY DON'T MAKE / CHAIRS LIKE THIS / ANYMORE, THANK / GOODNESS.[END]
Text12Message77:
    INCBIN "../../res/text/US/banks/12.bin", $2284, $1
jr_012_6285:
    INCBIN "../../res/text/US/banks/12.bin", $2285, $39
; OUT OF ALL THE / COFFEE TABLES / YOU'VE SEEN IN / YOUR LIFE, THIS ISONE OF THEM.[END]
Text12Message78:
    INCBIN "../../res/text/US/banks/12.bin", $22be, $1f
jr_012_62dd:
    INCBIN "../../res/text/US/banks/12.bin", $22dd, $1d
jr_012_62fa:
    INCBIN "../../res/text/US/banks/12.bin", $22fa, $f
; NOW THAT'S A / BIG SPITTOON.[END]
Text12Message79:
    INCBIN "../../res/text/US/banks/12.bin", $2309, $1b
; THE SOUND OF / SHATTERING GLASS / FILLS THE ROOM![END]
Text12Message7A:
    INCBIN "../../res/text/US/banks/12.bin", $2324, $4
jr_012_6328:
    INCBIN "../../res/text/US/banks/12.bin", $2328, $1b
jr_012_6343:
    INCBIN "../../res/text/US/banks/12.bin", $2343, $f
; "AND JUST WHAT DO / YA THINK YOU'RE / DOING!?"[END]
Text12Message7B:
    INCBIN "../../res/text/US/banks/12.bin", $2352, $14
jr_012_6366:
    INCBIN "../../res/text/US/banks/12.bin", $2366, $17
jr_012_637d:
; THE PRETTY WOMAN / BEHIND THE COUNTERMUST BE THE CASINOCASHIER.[PAGE] / SHE'LL EXCHANGE / MONEY FOR CHIPS, / ...
Text12Message7C:
    INCBIN "../../res/text/US/banks/12.bin", $237d, $25
jr_012_63a2:
    INCBIN "../../res/text/US/banks/12.bin", $23a2, $35
jr_012_63d7:
    INCBIN "../../res/text/US/banks/12.bin", $23d7, $15
; COINCIDENTALLY / ENOUGH, THE SIGN / READS, "CASHIER."[END]
Text12Message7D:
    INCBIN "../../res/text/US/banks/12.bin", $23ec, $1f
jr_012_640b:
    INCBIN "../../res/text/US/banks/12.bin", $240b, $d
jr_012_6418:
    INCBIN "../../res/text/US/banks/12.bin", $2418, $6
; "ONE CHIP IS $5," / SHE SAYS IN A / BORED TONE.[END]
Text12Message7E:
    INCBIN "../../res/text/US/banks/12.bin", $241e, $25
jr_012_6443:
    INCBIN "../../res/text/US/banks/12.bin", $2443, $7
jr_012_644a:
; SHE EXCHANGES CASHFOR CHIPS, OR IS / THAT THE OTHER WAYAROUND?[END]
Text12Message7F:
    INCBIN "../../res/text/US/banks/12.bin", $244a, $1f
jr_012_6469:
    INCBIN "../../res/text/US/banks/12.bin", $2469, $17
jr_012_6480:
    INCBIN "../../res/text/US/banks/12.bin", $2480, $26
jr_012_64a6:
    INCBIN "../../res/text/US/banks/12.bin", $24a6, $1b5a
