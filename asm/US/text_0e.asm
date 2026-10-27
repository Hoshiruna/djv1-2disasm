; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text0EMsgs0:
    db LOW(Text0EMessage00), HIGH(Text0EMessage00)
    db LOW(Text0EMessage01), HIGH(Text0EMessage01)
    db LOW(Text0EMessage02), HIGH(Text0EMessage02)
    db LOW(Text0EMessage03), HIGH(Text0EMessage03)
    db LOW(Text0EMessage04), HIGH(Text0EMessage04)
    db LOW(Text0EMessage05), HIGH(Text0EMessage05)
    db LOW(Text0EMessage06), HIGH(Text0EMessage06)
    db LOW(Text0EMessage07), HIGH(Text0EMessage07)
    db LOW(Text0EMessage08), HIGH(Text0EMessage08)
    db LOW(Text0EMessage09), HIGH(Text0EMessage09)
    db LOW(Text0EMessage0A), HIGH(Text0EMessage0A)
    db LOW(Text0EMessage0B), HIGH(Text0EMessage0B)
    db LOW(Text0EMessage0C), HIGH(Text0EMessage0C)
    db LOW(Text0EMessage0D), HIGH(Text0EMessage0D)
    db LOW(Text0EMessage0E), HIGH(Text0EMessage0E)
    db LOW(Text0EMessage0F), HIGH(Text0EMessage0F)
    db LOW(Text0EMessage10), HIGH(Text0EMessage10)
    db LOW(Text0EMessage11), HIGH(Text0EMessage11)
    db LOW(Text0EMessage12), HIGH(Text0EMessage12)
    db LOW(Text0EMessage13), HIGH(Text0EMessage13)
    db LOW(Text0EMessage14), HIGH(Text0EMessage14)
    db LOW(Text0EMessage15), HIGH(Text0EMessage15)
    db LOW(Text0EMessage16), HIGH(Text0EMessage16)
    db LOW(Text0EMessage17), HIGH(Text0EMessage17)
    db LOW(Text0EMessage18), HIGH(Text0EMessage18)
    db LOW(Text0EMessage19), HIGH(Text0EMessage19)
    db LOW(Text0EMessage1A), HIGH(Text0EMessage1A)
    db LOW(Text0EMessage1B), HIGH(Text0EMessage1B)
    db LOW(Text0EMessage1C), HIGH(Text0EMessage1C)
    db LOW(Text0EMessage1D), HIGH(Text0EMessage1D)
    db LOW(Text0EMessage1E), HIGH(Text0EMessage1E)
    db LOW(Text0EMessage1F), HIGH(Text0EMessage1F)
    db LOW(Text0EMessage20), HIGH(Text0EMessage20)
    db LOW(Text0EMessage21), HIGH(Text0EMessage21)
    db LOW(Text0EMessage22), HIGH(Text0EMessage22)
    db LOW(Text0EMessage23), HIGH(Text0EMessage23)
    db LOW(Text0EMessage24), HIGH(Text0EMessage24)
    db LOW(Text0EMessage25), HIGH(Text0EMessage25)
    db LOW(Text0EMessage26), HIGH(Text0EMessage26)
    db LOW(Text0EMessage27), HIGH(Text0EMessage27)
    db LOW(Text0EMessage28), HIGH(Text0EMessage28)
    db LOW(Text0EMessage29), HIGH(Text0EMessage29)
    db LOW(Text0EMessage2A), HIGH(Text0EMessage2A)
    db LOW(Text0EMessage2B), HIGH(Text0EMessage2B)
    db LOW(Text0EMessage2C), HIGH(Text0EMessage2C)
    db LOW(Text0EMessage2D), HIGH(Text0EMessage2D)
    db LOW(Text0EMessage2E), HIGH(Text0EMessage2E)
    db LOW(Text0EMessage2F), HIGH(Text0EMessage2F)
    db LOW(Text0EMessage30), HIGH(Text0EMessage30)
    db LOW(Text0EMessage31), HIGH(Text0EMessage31)
    db LOW(Text0EMessage32), HIGH(Text0EMessage32)
    db LOW(Text0EMessage33), HIGH(Text0EMessage33)
    db LOW(Text0EMessage34), HIGH(Text0EMessage34)
    db LOW(Text0EMessage35), HIGH(Text0EMessage35)
    db LOW(Text0EMessage36), HIGH(Text0EMessage36)
    db LOW(Text0EMessage37), HIGH(Text0EMessage37)
    db LOW(Text0EMessage38), HIGH(Text0EMessage38)
    db LOW(Text0EMessage39), HIGH(Text0EMessage39)
    db LOW(Text0EMessage3A), HIGH(Text0EMessage3A)
    db LOW(Text0EMessage3B), HIGH(Text0EMessage3B)
    db LOW(Text0EMessage3C), HIGH(Text0EMessage3C)
    db LOW(Text0EMessage3D), HIGH(Text0EMessage3D)
    db LOW(Text0EMessage3E), HIGH(Text0EMessage3E)
    db LOW(Text0EMessage3F), HIGH(Text0EMessage3F)
; Sixty-four message pointers for one text group.
Text0EMsgs1:
    db LOW(Text0EMessage40), HIGH(Text0EMessage40)
    db LOW(Text0EMessage41), HIGH(Text0EMessage41)
    db LOW(Text0EMessage42), HIGH(Text0EMessage42)
    db LOW(Text0EMessage43), HIGH(Text0EMessage43)
    db LOW(Text0EMessage44), HIGH(Text0EMessage44)
    db LOW(Text0EMessage45), HIGH(Text0EMessage45)
    db LOW(Text0EMessage46), HIGH(Text0EMessage46)
    db LOW(Text0EMessage47), HIGH(Text0EMessage47)
    db LOW(Text0EMessage48), HIGH(Text0EMessage48)
    db LOW(Text0EMessage49), HIGH(Text0EMessage49)
    db LOW(Text0EMessage4A), HIGH(Text0EMessage4A)
    db LOW(Text0EMessage4B), HIGH(Text0EMessage4B)
    db LOW(Text0EMessage4C), HIGH(Text0EMessage4C)
    db LOW(Text0EMessage4D), HIGH(Text0EMessage4D)
    db LOW(Text0EMessage4E), HIGH(Text0EMessage4E)
    db LOW(Text0EMessage4F), HIGH(Text0EMessage4F)
    db LOW(Text0EMessage50), HIGH(Text0EMessage50)
    db LOW(Text0EMessage51), HIGH(Text0EMessage51)
    db LOW(Text0EMessage52), HIGH(Text0EMessage52)
    db LOW(Text0EMessage53), HIGH(Text0EMessage53)
    db LOW(Text0EMessage54), HIGH(Text0EMessage54)
    db LOW(Text0EMessage55)
jr_00e_40ab:
    db HIGH(Text0EMessage55)
    db LOW(Text0EMessage56), HIGH(Text0EMessage56)
    db LOW(Text0EMessage57), HIGH(Text0EMessage57)
    db LOW(Text0EMessage58), HIGH(Text0EMessage58)
    db LOW(Text0EMessage59), HIGH(Text0EMessage59)
    db LOW(Text0EMessage5A), HIGH(Text0EMessage5A)
    db LOW(Text0EMessage5B), HIGH(Text0EMessage5B)
    db LOW(Text0EMessage5C), HIGH(Text0EMessage5C)
    db LOW(Text0EMessage5D), HIGH(Text0EMessage5D)
    db LOW(Text0EMessage5E), HIGH(Text0EMessage5E)
    db LOW(Text0EMessage5F), HIGH(Text0EMessage5F)
    db LOW(Text0EMessage60), HIGH(Text0EMessage60)
    db LOW(Text0EMessage61), HIGH(Text0EMessage61)
    db LOW(Text0EMessage62), HIGH(Text0EMessage62)
    db LOW(Text0EMessage63), HIGH(Text0EMessage63)
    db LOW(Text0EMessage64), HIGH(Text0EMessage64)
    db LOW(Text0EMessage65), HIGH(Text0EMessage65)
    db LOW(Text0EMessage66), HIGH(Text0EMessage66)
    db LOW(Text0EMessage67), HIGH(Text0EMessage67)
    db LOW(Text0EMessage68), HIGH(Text0EMessage68)
    db LOW(Text0EMessage69), HIGH(Text0EMessage69)
    db LOW(Text0EMessage6A), HIGH(Text0EMessage6A)
    db LOW(Text0EMessage6B), HIGH(Text0EMessage6B)
    db LOW(Text0EMessage6C), HIGH(Text0EMessage6C)
    db LOW(Text0EMessage6D), HIGH(Text0EMessage6D)
    db LOW(Text0EMessage6E), HIGH(Text0EMessage6E)
    db LOW(Text0EMessage6F), HIGH(Text0EMessage6F)
    db LOW(Text0EMessage70), HIGH(Text0EMessage70)
    db LOW(Text0EMessage71), HIGH(Text0EMessage71)
    db LOW(Text0EMessage72), HIGH(Text0EMessage72)
    db LOW(Text0EMessage73), HIGH(Text0EMessage73)
    db LOW(Text0EMessage74), HIGH(Text0EMessage74)
    db LOW(Text0EMessage75), HIGH(Text0EMessage75)
    db LOW(Text0EMessage76), HIGH(Text0EMessage76)
    db LOW(Text0EMessage77), HIGH(Text0EMessage77)
    db LOW(Text0EMessage78), HIGH(Text0EMessage78)
    db LOW(Text0EMessage79), HIGH(Text0EMessage79)
    db LOW(Text0EMessage7A), HIGH(Text0EMessage7A)
    db LOW(Text0EMessage7B), HIGH(Text0EMessage7B)
    db LOW(Text0EMessage7C), HIGH(Text0EMessage7C)
    db LOW(Text0EMessage7D), HIGH(Text0EMessage7D)
    db LOW(Text0EMessage7E), HIGH(Text0EMessage7E)
    db LOW(Text0EMessage7F), HIGH(Text0EMessage7F)
; YOU SEE NOTHING / UNUSUAL ABOUT THE / PLUSH INTERIOR OF / THE FOREIGN CAR.[END]
Text0EMessage00:
    INCBIN "../../res/text/US/banks/0e.bin", $100, $10
jr_00e_4110:
    INCBIN "../../res/text/US/banks/0e.bin", $110, $35
; IT'S THE GAS / PEDAL.[PAGE] / YOU RESIST THE / URGE TO PUT THE / PEDAL TO THE / METAL.[END]
Text0EMessage01:
    INCBIN "../../res/text/US/banks/0e.bin", $145, $24
jr_00e_4169:
    INCBIN "../../res/text/US/banks/0e.bin", $169, $c
jr_00e_4175:
    INCBIN "../../res/text/US/banks/0e.bin", $175, $17
; AS YOU ENTER THE / ROOM, THE WALL / SLIDES SHUT BEHINDYOU.[PAGE] / OBVIOUSLY THIS / ELEVATOR IS USED / AS A S...
Text0EMessage02:
    INCBIN "../../res/text/US/banks/0e.bin", $18c, $1f
jr_00e_41ab:
    INCBIN "../../res/text/US/banks/0e.bin", $1ab, $23
jr_00e_41ce:
    INCBIN "../../res/text/US/banks/0e.bin", $1ce, $11
jr_00e_41df:
    INCBIN "../../res/text/US/banks/0e.bin", $1df, $8
jr_00e_41e7:
    INCBIN "../../res/text/US/banks/0e.bin", $1e7, $30
; THERE'S / BULLETPROOF GLASS / BETWEEN YOURSELF / AND THE CAB / DRIVER.[PAGE] / SINCE YOU CAN'T / PAY THE FARE...
Text0EMessage03:
    INCBIN "../../res/text/US/banks/0e.bin", $217, $1f
jr_00e_4236:
    INCBIN "../../res/text/US/banks/0e.bin", $236, $13
jr_00e_4249:
    INCBIN "../../res/text/US/banks/0e.bin", $249, $23
jr_00e_426c:
    INCBIN "../../res/text/US/banks/0e.bin", $26c, $18
jr_00e_4284:
    INCBIN "../../res/text/US/banks/0e.bin", $284, $9
jr_00e_428d:
    INCBIN "../../res/text/US/banks/0e.bin", $28d, $23
; THIS STEERING / WHEEL HAS A / LEATHER COVER ON / IT.[END]
Text0EMessage04:
    INCBIN "../../res/text/US/banks/0e.bin", $2b0, $c
jr_00e_42bc:
    INCBIN "../../res/text/US/banks/0e.bin", $2bc, $13
jr_00e_42cf:
    INCBIN "../../res/text/US/banks/0e.bin", $2cf, $10
; IT'S THE IGNITION.[PAGE] / IT'S JUST WAITING / FOR SOMEONE TO REVIT UP.[END]
Text0EMessage05:
    INCBIN "../../res/text/US/banks/0e.bin", $2df, $2f
jr_00e_430e:
    INCBIN "../../res/text/US/banks/0e.bin", $30e, $f
; YOU WONDER WHY / IT'S CALLED A / GLOVE COMPARTMENT / WHEN THERE USUALLYAREN'T ANY GLOVES.[END]
Text0EMessage06:
    INCBIN "../../res/text/US/banks/0e.bin", $31d, $1f
jr_00e_433c:
    INCBIN "../../res/text/US/banks/0e.bin", $33c, $d
jr_00e_4349:
    INCBIN "../../res/text/US/banks/0e.bin", $349, $16
jr_00e_435f:
    INCBIN "../../res/text/US/banks/0e.bin", $35f, $12
; MMMM. TASTES / PRETTY GOOD![END]
Text0EMessage07:
    INCBIN "../../res/text/US/banks/0e.bin", $371, $12
jr_00e_4383:
    INCBIN "../../res/text/US/banks/0e.bin", $383, $8
; IT'S THE HOOD / RELEASE. IT OPENS / THE HOOD.[END]
Text0EMessage08:
    INCBIN "../../res/text/US/banks/0e.bin", $38b, $5
jr_00e_4390:
    INCBIN "../../res/text/US/banks/0e.bin", $390, $1
jr_00e_4391:
    INCBIN "../../res/text/US/banks/0e.bin", $391, $e
jr_00e_439f:
    INCBIN "../../res/text/US/banks/0e.bin", $39f, $16
; IT'S A CAR / REGISTRATION / MADE OUT TO ONE / JOEY SIEGEL OF / 1212 WEST END ST.[END]
Text0EMessage09:
    INCBIN "../../res/text/US/banks/0e.bin", $3b5, $7
jr_00e_43bc:
    INCBIN "../../res/text/US/banks/0e.bin", $3bc, $18
jr_00e_43d4:
    INCBIN "../../res/text/US/banks/0e.bin", $3d4, $28
jr_00e_43fc:
    INCBIN "../../res/text/US/banks/0e.bin", $3fc, $2
; IT'S AN OUT OF / FOCUS SNAPSHOT OF / A FOUR HUNDRED / POUND WOMAN.[PAGE] / YOU SCRATCH YOUR / HEAD WONDERING ...
Text0EMessage0A:
    INCBIN "../../res/text/US/banks/0e.bin", $3fe, $74
; IT'S A MAP OF THE / CITY STREETS.[PAGE] / THE WAY TO / JOE'S PLACE IS / MARKED IN INK.[PAGE] / A RED CIRCLE /...
Text0EMessage0B:
    INCBIN "../../res/text/US/banks/0e.bin", $472, $3c
jr_00e_44ae:
    INCBIN "../../res/text/US/banks/0e.bin", $4ae, $29
jr_00e_44d7:
    INCBIN "../../res/text/US/banks/0e.bin", $4d7, $19
; YOU NOTICE THE / SLUMPED OVER MAN / APPEARS TO HAVE / BREATHED HIS LAST / BREATH.[PAGE] / YOUR OBSERVATION / ...
Text0EMessage0C:
    INCBIN "../../res/text/US/banks/0e.bin", $4f0, $f
jr_00e_44ff:
    INCBIN "../../res/text/US/banks/0e.bin", $4ff, $1
jr_00e_4500:
    INCBIN "../../res/text/US/banks/0e.bin", $500, $f
jr_00e_450f:
    INCBIN "../../res/text/US/banks/0e.bin", $50f, $3b
jr_00e_454a:
    INCBIN "../../res/text/US/banks/0e.bin", $54a, $c
jr_00e_4556:
    INCBIN "../../res/text/US/banks/0e.bin", $556, $49
jr_00e_459f:
    INCBIN "../../res/text/US/banks/0e.bin", $59f, $42
jr_00e_45e1:
    INCBIN "../../res/text/US/banks/0e.bin", $5e1, $2c
; YOU'VE RELEASED / THE HOOD.[PAGE] / IT POPS WIDE OPEN / AND THEN...[PAGE] / AN EARTH SHAKING / "KA-BOOM!" FIL...
Text0EMessage0D:
    INCBIN "../../res/text/US/banks/0e.bin", $60d, $3
jr_00e_4610:
    INCBIN "../../res/text/US/banks/0e.bin", $610, $d
jr_00e_461d:
    INCBIN "../../res/text/US/banks/0e.bin", $61d, $26
jr_00e_4643:
    INCBIN "../../res/text/US/banks/0e.bin", $643, $1e
jr_00e_4661:
    INCBIN "../../res/text/US/banks/0e.bin", $661, $16
jr_00e_4677:
    INCBIN "../../res/text/US/banks/0e.bin", $677, $1f
; IF YOU WERE STILL / ALIVE, YOU'D CURSEYOUR LACK OF / CAUTION THAT / ALLOWED YOU TO / FALL FOR THIS / DEADLY T...
Text0EMessage0E:
    INCBIN "../../res/text/US/banks/0e.bin", $696, $13
jr_00e_46a9:
    INCBIN "../../res/text/US/banks/0e.bin", $6a9, $c
jr_00e_46b5:
    INCBIN "../../res/text/US/banks/0e.bin", $6b5, $15
jr_00e_46ca:
    INCBIN "../../res/text/US/banks/0e.bin", $6ca, $22
jr_00e_46ec:
    INCBIN "../../res/text/US/banks/0e.bin", $6ec, $13
; IF YOU WERE STILL / ALIVE, YOU'D CURSEYOUR LACK OF / CAUTION THAT / ALLOWED YOU TO / FALL FOR THIS / DEADLY T...
Text0EMessage0F:
    INCBIN "../../res/text/US/banks/0e.bin", $6ff, $13
jr_00e_4712:
    INCBIN "../../res/text/US/banks/0e.bin", $712, $21
jr_00e_4733:
    INCBIN "../../res/text/US/banks/0e.bin", $733, $22
jr_00e_4755:
    INCBIN "../../res/text/US/banks/0e.bin", $755, $13
; YOU'RE INSIDE / PETE'S ALL NITE / GUN PALACE.[PAGE] / THE GUY BEHIND THECOUNTER ASKS, "YA / WANT SOMETHIN'?"[...
Text0EMessage10:
    INCBIN "../../res/text/US/banks/0e.bin", $768, $10
jr_00e_4778:
    INCBIN "../../res/text/US/banks/0e.bin", $778, $3
jr_00e_477b:
    INCBIN "../../res/text/US/banks/0e.bin", $77b, $33
jr_00e_47ae:
    INCBIN "../../res/text/US/banks/0e.bin", $7ae, $6
jr_00e_47b4:
    INCBIN "../../res/text/US/banks/0e.bin", $7b4, $13
; THIS GUY REALLY / HAS QUITE THE GUT-MAYBE EXERCISING / WOULD DO HIM GOOD.[END]
Text0EMessage11:
    INCBIN "../../res/text/US/banks/0e.bin", $7c7, $27
jr_00e_47ee:
    INCBIN "../../res/text/US/banks/0e.bin", $7ee, $1f
; IT'S A STANDARD / MILITARY-ISSUE / GERMAN LUGER.[END]
Text0EMessage12:
    INCBIN "../../res/text/US/banks/0e.bin", $80d, $1f
jr_00e_482c:
    INCBIN "../../res/text/US/banks/0e.bin", $82c, $e
; IT LOOKS VERY MUCHLIKE A 9MM / CARTRIDGE.[END]
Text0EMessage13:
    INCBIN "../../res/text/US/banks/0e.bin", $83a, $28
; THE SIGN SAYS, / "TONIGHT'S SPECIAL$20."[END]
Text0EMessage14:
    INCBIN "../../res/text/US/banks/0e.bin", $862, $27
; A WAVE OF INTENSE / PAIN CAUSES YOU TOREEL. YOU CATCH / YOURSELF BEFORE / YOU BLACK OUT![PAGE] / WHEN THE EPI...
Text0EMessage15:
    INCBIN "../../res/text/US/banks/0e.bin", $889, $1e
jr_00e_48a7:
    INCBIN "../../res/text/US/banks/0e.bin", $8a7, $10
jr_00e_48b7:
    INCBIN "../../res/text/US/banks/0e.bin", $8b7, $c
jr_00e_48c3:
    INCBIN "../../res/text/US/banks/0e.bin", $8c3, $a
jr_00e_48cd:
    INCBIN "../../res/text/US/banks/0e.bin", $8cd, $6e
jr_00e_493b:
    INCBIN "../../res/text/US/banks/0e.bin", $93b, $1a
jr_00e_4955:
    INCBIN "../../res/text/US/banks/0e.bin", $955, $21
jr_00e_4976:
    INCBIN "../../res/text/US/banks/0e.bin", $976, $44
; YOU OPEN THE GUN'SCHAMBER AND FIND / THAT THERE ARE NO / BULLETS IN IT.[END]
Text0EMessage16:
    INCBIN "../../res/text/US/banks/0e.bin", $9ba, $b
jr_00e_49c5:
    INCBIN "../../res/text/US/banks/0e.bin", $9c5, $5
jr_00e_49ca:
    INCBIN "../../res/text/US/banks/0e.bin", $9ca, $34
; YOU LOAD THE GUN / WITH A BULLET.[END]
Text0EMessage17:
    INCBIN "../../res/text/US/banks/0e.bin", $9fe, $10
jr_00e_4a0e:
    INCBIN "../../res/text/US/banks/0e.bin", $a0e, $10
; THE CHAMBER IS / FULL.[END]
Text0EMessage18:
    INCBIN "../../res/text/US/banks/0e.bin", $a1e, $15
; THIS BULLET IS FORA DIFFERENT GUN.[PAGE] / IT WON'T FIT.[END]
Text0EMessage19:
    INCBIN "../../res/text/US/banks/0e.bin", $a33, $a
jr_00e_4a3d:
    INCBIN "../../res/text/US/banks/0e.bin", $a3d, $27
; KA-BOOM![PAGE] / THE CLERK REACTS / FASTER THAN YOU / THOUGHT POSSIBLE / FOR ONE SO BIG.[PAGE] / A SHOTGUN BL...
Text0EMessage1A:
    INCBIN "../../res/text/US/banks/0e.bin", $a64, $e
jr_00e_4a72:
    INCBIN "../../res/text/US/banks/0e.bin", $a72, $28
jr_00e_4a9a:
    INCBIN "../../res/text/US/banks/0e.bin", $a9a, $31
jr_00e_4acb:
    INCBIN "../../res/text/US/banks/0e.bin", $acb, $2a
jr_00e_4af5:
    INCBIN "../../res/text/US/banks/0e.bin", $af5, $2
; THE CLERK SAYS IN / A GRUFF VOICE, / "IT'LL COST YA / TWENTY BUCKS, / PAL!"[END]
Text0EMessage1B:
    INCBIN "../../res/text/US/banks/0e.bin", $af7, $20
jr_00e_4b17:
    INCBIN "../../res/text/US/banks/0e.bin", $b17, $f
jr_00e_4b26:
    INCBIN "../../res/text/US/banks/0e.bin", $b26, $15
; THE CLERK SAYS, / "IT'LL COST YA / TWENTY-FIVE / CENTS."[END]
Text0EMessage1C:
    INCBIN "../../res/text/US/banks/0e.bin", $b3b, $1e
jr_00e_4b59:
    INCBIN "../../res/text/US/banks/0e.bin", $b59, $2
jr_00e_4b5b:
    INCBIN "../../res/text/US/banks/0e.bin", $b5b, $13
; KA-BOOM![PAGE] / THE CLERK REACTS / FASTER THAN YOU / THOUGHT POSSIBLE / FOR ONE SO BIG.[PAGE] / A SHOTGUN BL...
Text0EMessage1D:
    INCBIN "../../res/text/US/banks/0e.bin", $b6e, $25
jr_00e_4b93:
    INCBIN "../../res/text/US/banks/0e.bin", $b93, $11
jr_00e_4ba4:
    INCBIN "../../res/text/US/banks/0e.bin", $ba4, $31
jr_00e_4bd5:
    INCBIN "../../res/text/US/banks/0e.bin", $bd5, $2a
jr_00e_4bff:
    INCBIN "../../res/text/US/banks/0e.bin", $bff, $2
; THE GUY BEHIND / THE COUNTER ASKS, / "CAN I HELP YOU / OR WHAT?"[END]
Text0EMessage1E:
    INCBIN "../../res/text/US/banks/0e.bin", $c01, $3b
; THERE IS A / BOOKMARK BETWEEN / THE PAGES.[END]
Text0EMessage1F:
    INCBIN "../../res/text/US/banks/0e.bin", $c3c, $2
jr_00e_4c3e:
    INCBIN "../../res/text/US/banks/0e.bin", $c3e, $23
jr_00e_4c61:
    INCBIN "../../res/text/US/banks/0e.bin", $c61, $2
; YOU'RE IN THE / SEWER.[PAGE] / SO MUCH FOR YOUR / NEW PAIR OF SHOES.[END]
Text0EMessage20:
    INCBIN "../../res/text/US/banks/0e.bin", $c63, $10
jr_00e_4c73:
    INCBIN "../../res/text/US/banks/0e.bin", $c73, $21
jr_00e_4c94:
    INCBIN "../../res/text/US/banks/0e.bin", $c94, $8
; IT'S A LADDER / LEADING UP.[PAGE] / IT'S PRETTY RUSTY.YOU HOPE IT HOLDS / YOU WEIGHT![END]
Text0EMessage21:
    INCBIN "../../res/text/US/banks/0e.bin", $c9c, $1f
jr_00e_4cbb:
    INCBIN "../../res/text/US/banks/0e.bin", $cbb, $1d
jr_00e_4cd8:
    INCBIN "../../res/text/US/banks/0e.bin", $cd8, $4
jr_00e_4cdc:
    INCBIN "../../res/text/US/banks/0e.bin", $cdc, $a
; IT'S A TUNNEL / LEADING FURTHER / DOWN THE SEWER.[END]
Text0EMessage22:
    INCBIN "../../res/text/US/banks/0e.bin", $ce6, $4
jr_00e_4cea:
    INCBIN "../../res/text/US/banks/0e.bin", $cea, $2a
; THE FLOWING SEWAGESMELLS TERRIBLE.[END]
Text0EMessage23:
    INCBIN "../../res/text/US/banks/0e.bin", $d14, $23
; YOU'RE INSIDE / THE SEWER.[END]
Text0EMessage24:
    INCBIN "../../res/text/US/banks/0e.bin", $d37, $10
jr_00e_4d47:
    INCBIN "../../res/text/US/banks/0e.bin", $d47, $9
; YOU'RE INSIDE / THE SEWER.[PAGE] / YOU'D BETTER BE / CAREFUL WHERE YOU / STEP.[END]
Text0EMessage25:
    INCBIN "../../res/text/US/banks/0e.bin", $d50, $10
jr_00e_4d60:
    INCBIN "../../res/text/US/banks/0e.bin", $d60, $4
Jump_00e_4d64:
    INCBIN "../../res/text/US/banks/0e.bin", $d64, $15
jr_00e_4d79:
    INCBIN "../../res/text/US/banks/0e.bin", $d79, $18
; YOU'RE IN / A PITCH-BLACK / TUNNEL.[END]
Text0EMessage26:
    INCBIN "../../res/text/US/banks/0e.bin", $d91, $10
jr_00e_4da1:
    INCBIN "../../res/text/US/banks/0e.bin", $da1, $10
; THE TUNNEL IS SO / DARK THAT YOU / CAN'T SEE YOUR / HAND IN FRONT OF / YOUR FACE![END]
Text0EMessage27:
    INCBIN "../../res/text/US/banks/0e.bin", $db1, $1f
jr_00e_4dd0:
    INCBIN "../../res/text/US/banks/0e.bin", $dd0, $c
jr_00e_4ddc:
    INCBIN "../../res/text/US/banks/0e.bin", $ddc, $1f
; THE SEWER THAT / YOU'RE IN SMELLS / REALLY, REALLY / NASTY![END]
Text0EMessage28:
    INCBIN "../../res/text/US/banks/0e.bin", $dfb, $5
jr_00e_4e00:
    INCBIN "../../res/text/US/banks/0e.bin", $e00, $1a
jr_00e_4e1a:
    INCBIN "../../res/text/US/banks/0e.bin", $e1a, $17
; IT'S A LADDER / GOING DOWN.[END]
Text0EMessage29:
    INCBIN "../../res/text/US/banks/0e.bin", $e31, $1a
; YOU'RE IN A / TUNNEL.[END]
Text0EMessage2A:
    INCBIN "../../res/text/US/banks/0e.bin", $e4b, $c
jr_00e_4e57:
    INCBIN "../../res/text/US/banks/0e.bin", $e57, $4
jr_00e_4e5b:
    INCBIN "../../res/text/US/banks/0e.bin", $e5b, $4
; YOU'RE IN THE / DEEPEST PART / OF THE SEWER.[END]
Text0EMessage2B:
    INCBIN "../../res/text/US/banks/0e.bin", $e5f, $b
jr_00e_4e6a:
    INCBIN "../../res/text/US/banks/0e.bin", $e6a, $5
jr_00e_4e6f:
    INCBIN "../../res/text/US/banks/0e.bin", $e6f, $f
jr_00e_4e7e:
    INCBIN "../../res/text/US/banks/0e.bin", $e7e, $a
; THE SEWAGE LOOKS / REALLY DEEP RIGHT / HERE.[PAGE] / YOU TRY TO BE / CAREFUL, BECAUSE / IT LOOKS THAT IF / YO...
Text0EMessage2C:
    INCBIN "../../res/text/US/banks/0e.bin", $e88, $32
jr_00e_4eba:
    INCBIN "../../res/text/US/banks/0e.bin", $eba, $7
jr_00e_4ec1:
    INCBIN "../../res/text/US/banks/0e.bin", $ec1, $30
jr_00e_4ef1:
    INCBIN "../../res/text/US/banks/0e.bin", $ef1, $2f
; IT'S A SMALL / DRAINAGE TUNNEL.[PAGE] / YOU DON'T THINK / YOU'LL BE ABLE TO / GET THROUGH IT.[END]
Text0EMessage2D:
    INCBIN "../../res/text/US/banks/0e.bin", $f20, $2e
jr_00e_4f4e:
    INCBIN "../../res/text/US/banks/0e.bin", $f4e, $10
jr_00e_4f5e:
    INCBIN "../../res/text/US/banks/0e.bin", $f5e, $12
; THERE MUST BE AN / EASIER WAY THAN / THIS TO GET OUT.[END]
Text0EMessage2E:
    INCBIN "../../res/text/US/banks/0e.bin", $f70, $32
; IT REMINDS YOU OF / SOMETHING YOU'VE / SEEN FROM YOUR / CHILDHOOD.[PAGE] / IT WAS THE LAST / TIME YOU TOOK / ...
Text0EMessage2F:
    INCBIN "../../res/text/US/banks/0e.bin", $fa2, $1b
jr_00e_4fbd:
    INCBIN "../../res/text/US/banks/0e.bin", $fbd, $4
jr_00e_4fc1:
    INCBIN "../../res/text/US/banks/0e.bin", $fc1, $d
jr_00e_4fce:
    INCBIN "../../res/text/US/banks/0e.bin", $fce, $11
jr_00e_4fdf:
    INCBIN "../../res/text/US/banks/0e.bin", $fdf, $1c
jr_00e_4ffb:
    INCBIN "../../res/text/US/banks/0e.bin", $ffb, $9
jr_00e_5004:
    INCBIN "../../res/text/US/banks/0e.bin", $1004, $11
jr_00e_5015:
    INCBIN "../../res/text/US/banks/0e.bin", $1015, $44
jr_00e_5059:
    INCBIN "../../res/text/US/banks/0e.bin", $1059, $c
jr_00e_5065:
    INCBIN "../../res/text/US/banks/0e.bin", $1065, $a
jr_00e_506f:
    INCBIN "../../res/text/US/banks/0e.bin", $106f, $2c
; YOU GAZE INTENTLY / AT THE / HANDWRITING... IT / DOESN'T LOOK LIKE / SIEGEL'S![END]
Text0EMessage30:
    INCBIN "../../res/text/US/banks/0e.bin", $109b, $10
jr_00e_50ab:
    INCBIN "../../res/text/US/banks/0e.bin", $10ab, $f
jr_00e_50ba:
    INCBIN "../../res/text/US/banks/0e.bin", $10ba, $10
jr_00e_50ca:
    INCBIN "../../res/text/US/banks/0e.bin", $10ca, $18
jr_00e_50e2:
; YOU'RE IN A COLD / AND CLAMMY SEWER.[END]
Text0EMessage31:
    INCBIN "../../res/text/US/banks/0e.bin", $10e2, $10
jr_00e_50f2:
    INCBIN "../../res/text/US/banks/0e.bin", $10f2, $13
; IT'S A MANHOLE / COVER.[PAGE] / YOU'VE OFTEN / WONDERED WHY / THEY'RE ROUND / INSTEAD OF SQUARE?[END]
Text0EMessage32:
    INCBIN "../../res/text/US/banks/0e.bin", $1105, $13
jr_00e_5118:
    INCBIN "../../res/text/US/banks/0e.bin", $1118, $13
jr_00e_512b:
    INCBIN "../../res/text/US/banks/0e.bin", $112b, $27
jr_00e_5152:
    INCBIN "../../res/text/US/banks/0e.bin", $1152, $4
; YOU NEVER THOUGHT / YOU'D SEE THE DAY![PAGE] / AN ALLIGATOR IN / THE SEWERS OF / CHICAGO! AND / WHAT'S WORSE,...
Text0EMessage33:
    INCBIN "../../res/text/US/banks/0e.bin", $1156, $e
jr_00e_5164:
    INCBIN "../../res/text/US/banks/0e.bin", $1164, $2
jr_00e_5166:
    INCBIN "../../res/text/US/banks/0e.bin", $1166, $12
jr_00e_5178:
    INCBIN "../../res/text/US/banks/0e.bin", $1178, $29
jr_00e_51a1:
    INCBIN "../../res/text/US/banks/0e.bin", $11a1, $2a
; THE ALLIGATOR / HEADS STRAIGHT FORYOU![PAGE] / ITS HARD TO TELL, / BUT IT LOOKS / HUNGRY! REALLY / HUNGRY![PA...
Text0EMessage34:
    INCBIN "../../res/text/US/banks/0e.bin", $11cb, $6
jr_00e_51d1:
    INCBIN "../../res/text/US/banks/0e.bin", $11d1, $6a
jr_00e_523b:
    INCBIN "../../res/text/US/banks/0e.bin", $123b, $11
jr_00e_524c:
    INCBIN "../../res/text/US/banks/0e.bin", $124c, $3
jr_00e_524f:
    INCBIN "../../res/text/US/banks/0e.bin", $124f, $29
jr_00e_5278:
    INCBIN "../../res/text/US/banks/0e.bin", $1278, $c
; SINCE REASONING / WITH IT IS OUT OF / THE QUESTION, THATLEAVES ONLY TWO / CHOICES: / RUN OR FIGHT![END]
Text0EMessage35:
    INCBIN "../../res/text/US/banks/0e.bin", $1284, $5a
jr_00e_52de:
    INCBIN "../../res/text/US/banks/0e.bin", $12de, $1
; AS YOU TRY TO STOPTHE RINGING IN / YOUR EARS, YOU ARETHANKFUL OF TWO / THINGS.[PAGE] / FIRST, THAT YOU / MANA...
Text0EMessage36:
    INCBIN "../../res/text/US/banks/0e.bin", $12df, $13
jr_00e_52f2:
    INCBIN "../../res/text/US/banks/0e.bin", $12f2, $1e
jr_00e_5310:
    INCBIN "../../res/text/US/banks/0e.bin", $1310, $b
jr_00e_531b:
    INCBIN "../../res/text/US/banks/0e.bin", $131b, $2b
jr_00e_5346:
    INCBIN "../../res/text/US/banks/0e.bin", $1346, $65
; CRUNCH![PAGE] / THE POWERFUL JAWS / OF THE ALLIGATOR / SNAP DOWN AND / RATHER MESSILY RIPYOU IN TWO.[END]
Text0EMessage37:
    INCBIN "../../res/text/US/banks/0e.bin", $13ab, $57
; THE THROBBING IN / YOUR HEAD FEELS ASIF IT WILL RIP / YOUR SKULL APART / ANY MOMENT NOW![PAGE] / TO MAKE THIN...
Text0EMessage38:
    INCBIN "../../res/text/US/banks/0e.bin", $1402, $4
jr_00e_5406:
    INCBIN "../../res/text/US/banks/0e.bin", $1406, $1b
jr_00e_5421:
    INCBIN "../../res/text/US/banks/0e.bin", $1421, $2
jr_00e_5423:
    INCBIN "../../res/text/US/banks/0e.bin", $1423, $40
jr_00e_5463:
    INCBIN "../../res/text/US/banks/0e.bin", $1463, $18
jr_00e_547b:
    INCBIN "../../res/text/US/banks/0e.bin", $147b, $9
jr_00e_5484:
    INCBIN "../../res/text/US/banks/0e.bin", $1484, $19
jr_00e_549d:
    INCBIN "../../res/text/US/banks/0e.bin", $149d, $7
jr_00e_54a4:
    INCBIN "../../res/text/US/banks/0e.bin", $14a4, $18
jr_00e_54bc:
    INCBIN "../../res/text/US/banks/0e.bin", $14bc, $21
jr_00e_54dd:
    INCBIN "../../res/text/US/banks/0e.bin", $14dd, $18
; YOU HUNKER DOWN / IN THE BACK OF THECAB.[PAGE] / YOU LOOK OVER THE / DRIVER, HE SEEMS / QUITE NERVOUS.[END]
Text0EMessage39:
    INCBIN "../../res/text/US/banks/0e.bin", $14f5, $4
jr_00e_54f9:
    INCBIN "../../res/text/US/banks/0e.bin", $14f9, $c
jr_00e_5505:
    INCBIN "../../res/text/US/banks/0e.bin", $1505, $27
jr_00e_552c:
    INCBIN "../../res/text/US/banks/0e.bin", $152c, $22
; "HEY MISTER, WHERED'YA WANNA GO?" / THE DRIVER ASKS INA NERVOUS TONE.[END]
Text0EMessage3A:
    INCBIN "../../res/text/US/banks/0e.bin", $154e, $16
jr_00e_5564:
    INCBIN "../../res/text/US/banks/0e.bin", $1564, $9
jr_00e_556d:
    INCBIN "../../res/text/US/banks/0e.bin", $156d, $25
; WHEN YOU ARRIVE, / HE LOOKS AT THE / METER AND SAYS, / "HERE YA ARE! / THAT'LL BE / SEVENTY-FIVE / CENTS, MAC...
Text0EMessage3B:
    INCBIN "../../res/text/US/banks/0e.bin", $1592, $3
jr_00e_5595:
    INCBIN "../../res/text/US/banks/0e.bin", $1595, $12
jr_00e_55a7:
    INCBIN "../../res/text/US/banks/0e.bin", $15a7, $a
jr_00e_55b1:
    INCBIN "../../res/text/US/banks/0e.bin", $15b1, $1a
jr_00e_55cb:
    INCBIN "../../res/text/US/banks/0e.bin", $15cb, $8
jr_00e_55d3:
    INCBIN "../../res/text/US/banks/0e.bin", $15d3, $23
; THE DRIVER COUNTS / THE CHANGE. / "1, 2... YUP, 3 / QUARTERS. THANKS ALOT, BUB!"[END]
Text0EMessage3C:
    INCBIN "../../res/text/US/banks/0e.bin", $15f6, $f
jr_00e_5605:
    INCBIN "../../res/text/US/banks/0e.bin", $1605, $2c
jr_00e_5631:
    INCBIN "../../res/text/US/banks/0e.bin", $1631, $2
jr_00e_5633:
    INCBIN "../../res/text/US/banks/0e.bin", $1633, $4
jr_00e_5637:
    INCBIN "../../res/text/US/banks/0e.bin", $1637, $4
jr_00e_563b:
    INCBIN "../../res/text/US/banks/0e.bin", $163b, $6
; IT'S THE CAB / DRIVER.[PAGE] / YOU DON'T KNOW / WHY, BUT HE SEEMS / VERY IMPATIENT.[END]
Text0EMessage3D:
    INCBIN "../../res/text/US/banks/0e.bin", $1641, $46
; IT'S THE SLOT / WHERE YOU PAY THE / CAB FARE.[END]
Text0EMessage3E:
    INCBIN "../../res/text/US/banks/0e.bin", $1687, $7
jr_00e_568e:
    INCBIN "../../res/text/US/banks/0e.bin", $168e, $18
jr_00e_56a6:
    INCBIN "../../res/text/US/banks/0e.bin", $16a6, $b
; THERE'S WRITING ONTHE MAP WHICH / READS, "ACE, / FOLLOW THIS / ROUTE TO THE / LETTER...[PAGE] / THAT WAY YOU'...
Text0EMessage3F:
    INCBIN "../../res/text/US/banks/0e.bin", $16b1, $6c
jr_00e_571d:
    INCBIN "../../res/text/US/banks/0e.bin", $171d, $7
jr_00e_5724:
    INCBIN "../../res/text/US/banks/0e.bin", $1724, $5
jr_00e_5729:
    INCBIN "../../res/text/US/banks/0e.bin", $1729, $23
jr_00e_574c:
    INCBIN "../../res/text/US/banks/0e.bin", $174c, $9
jr_00e_5755:
    INCBIN "../../res/text/US/banks/0e.bin", $1755, $53
jr_00e_57a8:
    INCBIN "../../res/text/US/banks/0e.bin", $17a8, $7
jr_00e_57af:
    INCBIN "../../res/text/US/banks/0e.bin", $17af, $10
jr_00e_57bf:
    INCBIN "../../res/text/US/banks/0e.bin", $17bf, $c
jr_00e_57cb:
    INCBIN "../../res/text/US/banks/0e.bin", $17cb, $7
jr_00e_57d2:
    INCBIN "../../res/text/US/banks/0e.bin", $17d2, $11
; YOU TRY TO GIVE / THE DRIVER SOME / MEDICINE, BUT THE / BULLET-PROOF / GLASS STOPS YOU.[END]
Text0EMessage40:
    INCBIN "../../res/text/US/banks/0e.bin", $17e3, $10
jr_00e_57f3:
    INCBIN "../../res/text/US/banks/0e.bin", $17f3, $40
; YOU'VE MANAGED / TO SHOOT THE / BULLETPROOF SCREENBETWEEN YOU AND / THE CABBY.[PAGE] / YOU OVERHEAR HIS / FRA...
Text0EMessage41:
    INCBIN "../../res/text/US/banks/0e.bin", $1833, $b
jr_00e_583e:
    INCBIN "../../res/text/US/banks/0e.bin", $183e, $5
jr_00e_5843:
    INCBIN "../../res/text/US/banks/0e.bin", $1843, $f
jr_00e_5852:
    INCBIN "../../res/text/US/banks/0e.bin", $1852, $46
jr_00e_5898:
    INCBIN "../../res/text/US/banks/0e.bin", $1898, $20
; YOU'RE IN A BEAT / UP YELLOW CAB.[PAGE] / THE CABBY LOOKS / LIKE A PLEASANT / ENOUGH FELLOW.[END]
Text0EMessage42:
    INCBIN "../../res/text/US/banks/0e.bin", $18b8, $10
jr_00e_58c8:
    INCBIN "../../res/text/US/banks/0e.bin", $18c8, $a
jr_00e_58d2:
    INCBIN "../../res/text/US/banks/0e.bin", $18d2, $35
; "WHAT CAN I DO / YOU FOR?" THE / CABBY ASKS WITH A / SMILE.[END]
Text0EMessage43:
    INCBIN "../../res/text/US/banks/0e.bin", $1907, $1f
jr_00e_5926:
    INCBIN "../../res/text/US/banks/0e.bin", $1926, $17
; YOU GIVE THE CABBYHIS FARE.[PAGE] / "THANKS, BUB," HE / SAYS WITH A SMILE.[END]
Text0EMessage44:
    INCBIN "../../res/text/US/banks/0e.bin", $193d, $8
jr_00e_5945:
    INCBIN "../../res/text/US/banks/0e.bin", $1945, $17
jr_00e_595c:
    INCBIN "../../res/text/US/banks/0e.bin", $195c, $22
; JUST WHEN YOU ARE / ABOUT TO COMPLAIN,HE STOPS THE CAB / WITH A SCREECH / AND SAYS,[PAGE] / "HERE YA GO, / TH...
Text0EMessage45:
    INCBIN "../../res/text/US/banks/0e.bin", $197e, $3
jr_00e_5981:
    INCBIN "../../res/text/US/banks/0e.bin", $1981, $1c
jr_00e_599d:
    INCBIN "../../res/text/US/banks/0e.bin", $199d, $37
jr_00e_59d4:
    INCBIN "../../res/text/US/banks/0e.bin", $19d4, $8
jr_00e_59dc:
    INCBIN "../../res/text/US/banks/0e.bin", $19dc, $1d
; THE CABBY ASKS, / "WHERE TO, / MISTER?"[END]
Text0EMessage46:
    INCBIN "../../res/text/US/banks/0e.bin", $19f9, $14
jr_00e_5a0d:
    INCBIN "../../res/text/US/banks/0e.bin", $1a0d, $10
; YOU'RE OUTSIDE / THE STANFORD ARMS,AN APARTMENT / BUILDING IN / A VERY UPSCALE / PART OF TOWN.[END]
Text0EMessage47:
    INCBIN "../../res/text/US/banks/0e.bin", $1a1d, $10
jr_00e_5a2d:
    INCBIN "../../res/text/US/banks/0e.bin", $1a2d, $47
; YOU ARE IMPRESSED / WITH THE / CONSTRUCTION OF / THE BUILDING.[PAGE] / IT LOOKS TO BE A / BIT TOO PRICEY FORY...
Text0EMessage48:
    INCBIN "../../res/text/US/banks/0e.bin", $1a74, $10
jr_00e_5a84:
    INCBIN "../../res/text/US/banks/0e.bin", $1a84, $f
jr_00e_5a93:
    INCBIN "../../res/text/US/banks/0e.bin", $1a93, $4a
; THE APARTMENT / BUILDING RISES / HIGH ABOVE YOU.[END]
Text0EMessage49:
    INCBIN "../../res/text/US/banks/0e.bin", $1add, $3
jr_00e_5ae0:
    INCBIN "../../res/text/US/banks/0e.bin", $1ae0, $7
jr_00e_5ae7:
    INCBIN "../../res/text/US/banks/0e.bin", $1ae7, $23
; THE DECORATIVE / TOUCHES IN THE / LOBBY ARE A BIT / TOO OPULENT FOR / YOU.[PAGE] / "I'LL TAKE A RUN / DOWN AP...
Text0EMessage4A:
    INCBIN "../../res/text/US/banks/0e.bin", $1b0a, $b
jr_00e_5b15:
    INCBIN "../../res/text/US/banks/0e.bin", $1b15, $14
jr_00e_5b29:
    INCBIN "../../res/text/US/banks/0e.bin", $1b29, $2f
jr_00e_5b58:
    INCBIN "../../res/text/US/banks/0e.bin", $1b58, $11
jr_00e_5b69:
    INCBIN "../../res/text/US/banks/0e.bin", $1b69, $33
jr_00e_5b9c:
    INCBIN "../../res/text/US/banks/0e.bin", $1b9c, $3
; IT APPEARS TO / BE A PRIVATE / ELEVATOR FOR / RESIDENTS ONLY.[END]
Text0EMessage4B:
    INCBIN "../../res/text/US/banks/0e.bin", $1b9f, $c
jr_00e_5bab:
    INCBIN "../../res/text/US/banks/0e.bin", $1bab, $13
jr_00e_5bbe:
    INCBIN "../../res/text/US/banks/0e.bin", $1bbe, $19
; IT LOOKS TO BE / A SLOT FOR / SOMETHING.[END]
Text0EMessage4C:
    INCBIN "../../res/text/US/banks/0e.bin", $1bd7, $1f
jr_00e_5bf6:
    INCBIN "../../res/text/US/banks/0e.bin", $1bf6, $6
; THE ELEVATOR IS / AT THE LOBBY.[END]
Text0EMessage4D:
    INCBIN "../../res/text/US/banks/0e.bin", $1bfc, $1e
; WHEN YOU PUT THE / CARD INTO THE / SLOT, THE ELEVATORDOORS OPEN WITH A / SWOOSH.[END]
Text0EMessage4E:
    INCBIN "../../res/text/US/banks/0e.bin", $1c1a, $4b
; AS YOU PUT THE / CARD INTO THE / SLOT, THE ELEVATORDOORS SLIDE CLOSE.[END]
Text0EMessage4F:
    INCBIN "../../res/text/US/banks/0e.bin", $1c65, $1f
jr_00e_5c84:
    INCBIN "../../res/text/US/banks/0e.bin", $1c84, $23
; IT LOOKS JUST LIKETHE SLOT ON THE / OUTSIDE.[END]
Text0EMessage50:
    INCBIN "../../res/text/US/banks/0e.bin", $1ca7, $1f
jr_00e_5cc6:
    INCBIN "../../res/text/US/banks/0e.bin", $1cc6, $c
; THERE DOESN'T SEEMTO BE MUCH TO DO / INSIDE THIS / ELEVATOR.[END]
Text0EMessage51:
    INCBIN "../../res/text/US/banks/0e.bin", $1cd2, $39
; YOU PUT THE PASS / CARD IN THE SLOT.[END]
Text0EMessage52:
    INCBIN "../../res/text/US/banks/0e.bin", $1d0b, $10
jr_00e_5d1b:
    INCBIN "../../res/text/US/banks/0e.bin", $1d1b, $f
jr_00e_5d2a:
    INCBIN "../../res/text/US/banks/0e.bin", $1d2a, $4
; YOU'RE IN A VERY / ORNATELY DECORATEDPENTHOUSE.[PAGE] / THE COUCH ALONE / PROBABLY COSTS / MORE THAN YOUR / Y...
Text0EMessage53:
    INCBIN "../../res/text/US/banks/0e.bin", $1d2e, $1f
jr_00e_5d4d:
    INCBIN "../../res/text/US/banks/0e.bin", $1d4d, $2b
jr_00e_5d78:
    INCBIN "../../res/text/US/banks/0e.bin", $1d78, $23
; THE CRYSTAL / CHANDELIER FITS / THE DECOR OF THE / ROOM NICELY.[END]
Text0EMessage54:
    INCBIN "../../res/text/US/banks/0e.bin", $1d9b, $3a
; IT'S A LEATHER / COVERED SOFA.[END]
Text0EMessage55:
    INCBIN "../../res/text/US/banks/0e.bin", $1dd5, $1d
; ONE COULD ADMIRE / THE QUALITY OF / THIS CHAIR FOR / HOURS ON END.[END]
Text0EMessage56:
    INCBIN "../../res/text/US/banks/0e.bin", $1df2, $2
jr_00e_5df4:
    INCBIN "../../res/text/US/banks/0e.bin", $1df4, $1d
jr_00e_5e11:
    INCBIN "../../res/text/US/banks/0e.bin", $1e11, $1e
; THERE'S NOTHING / LIKE A GREAT WORK / OF ART FOR / INSPIRATION.[END]
Text0EMessage57:
    INCBIN "../../res/text/US/banks/0e.bin", $1e2f, $1f
jr_00e_5e4e:
    INCBIN "../../res/text/US/banks/0e.bin", $1e4e, $1b
; IT'S A FIREPLACE.[PAGE] / FROM THE LACK OF / ASHES, YOU GUESS / THAT IT'S USED / MORE FOR / DECORATION THAN /...
Text0EMessage58:
    INCBIN "../../res/text/US/banks/0e.bin", $1e69, $1f
jr_00e_5e88:
    INCBIN "../../res/text/US/banks/0e.bin", $1e88, $f
jr_00e_5e97:
    INCBIN "../../res/text/US/banks/0e.bin", $1e97, $3d
; IT'S A SMALL, / LOW TABLE.[END]
Text0EMessage59:
    INCBIN "../../res/text/US/banks/0e.bin", $1ed4, $8
jr_00e_5edc:
    INCBIN "../../res/text/US/banks/0e.bin", $1edc, $11
; "BETTER HOMES AND / PENTHOUSES" IS NOTSOMETHING YOU READTOO OFTEN.[END]
Text0EMessage5A:
    INCBIN "../../res/text/US/banks/0e.bin", $1eed, $6
jr_00e_5ef3:
    INCBIN "../../res/text/US/banks/0e.bin", $1ef3, $38
jr_00e_5f2b:
    INCBIN "../../res/text/US/banks/0e.bin", $1f2b, $3
; IT'S A BIG, ROUND / MIRROR.[END]
Text0EMessage5B:
    INCBIN "../../res/text/US/banks/0e.bin", $1f2e, $1a
; IT'S A PHOTOGRAPH / OF A SHAPELY / BRUNETTE. NOT / QUITE YOUR CUP OF / TEA![PAGE] / TURNING THE / PICTURE OVE...
Text0EMessage5C:
    INCBIN "../../res/text/US/banks/0e.bin", $1f48, $5
jr_00e_5f4d:
    INCBIN "../../res/text/US/banks/0e.bin", $1f4d, $1a
jr_00e_5f67:
    INCBIN "../../res/text/US/banks/0e.bin", $1f67, $1d
jr_00e_5f84:
    INCBIN "../../res/text/US/banks/0e.bin", $1f84, $7
jr_00e_5f8b:
    INCBIN "../../res/text/US/banks/0e.bin", $1f8b, $5f
; IT'S A BOOKSHELF / FILLED WITH THICK / ENCYCLOPEDIAS / AND BOOKS.[END]
Text0EMessage5D:
    INCBIN "../../res/text/US/banks/0e.bin", $1fea, $4
jr_00e_5fee:
    INCBIN "../../res/text/US/banks/0e.bin", $1fee, $3
jr_00e_5ff1:
    INCBIN "../../res/text/US/banks/0e.bin", $1ff1, $18
jr_00e_6009:
    INCBIN "../../res/text/US/banks/0e.bin", $2009, $1d
; YOUR INSTINCTS / TELL YOU THERE IS / SOMETHING YOU'RE / MISSING IN THIS / ROOM![END]
Text0EMessage5E:
    INCBIN "../../res/text/US/banks/0e.bin", $2026, $10
jr_00e_6036:
    INCBIN "../../res/text/US/banks/0e.bin", $2036, $14
jr_00e_604a:
    INCBIN "../../res/text/US/banks/0e.bin", $204a, $24
; IT'S A RUN-DOWN / BUNGALOW IN THE / SEEDIER SECTION OFTOWN.[PAGE] / THE PAINT IS / CHIPPING, THE / BOARDS LOO...
Text0EMessage5F:
    INCBIN "../../res/text/US/banks/0e.bin", $206e, $80
jr_00e_60ee:
    INCBIN "../../res/text/US/banks/0e.bin", $20ee, $f
; YOU CAN'T USE IT / WHEN IT'S OPEN.[END]
Text0EMessage60:
    INCBIN "../../res/text/US/banks/0e.bin", $20fd, $3
jr_00e_6100:
    INCBIN "../../res/text/US/banks/0e.bin", $2100, $1c
jr_00e_611c:
    INCBIN "../../res/text/US/banks/0e.bin", $211c, $2
; THE DOOR IS / LOCKED.[END]
Text0EMessage61:
    INCBIN "../../res/text/US/banks/0e.bin", $211e, $14
; YOU HAVEN'T COME / THIS FAR TO LET A / LOCKED DOOR STOP / YOU![END]
Text0EMessage62:
    INCBIN "../../res/text/US/banks/0e.bin", $2132, $b
jr_00e_613d:
    INCBIN "../../res/text/US/banks/0e.bin", $213d, $5
jr_00e_6142:
    INCBIN "../../res/text/US/banks/0e.bin", $2142, $f
jr_00e_6151:
    INCBIN "../../res/text/US/banks/0e.bin", $2151, $1a
; THE DRUNK SPRAYS / MORE THAN SAYS, / "HEY MAC, CAN YA / SPARE FIFTY / CENTS?!"[END]
Text0EMessage63:
    INCBIN "../../res/text/US/banks/0e.bin", $216b, $b
jr_00e_6176:
    INCBIN "../../res/text/US/banks/0e.bin", $2176, $26
jr_00e_619c:
    INCBIN "../../res/text/US/banks/0e.bin", $219c, $f
jr_00e_61ab:
    INCBIN "../../res/text/US/banks/0e.bin", $21ab, $7
; CLICK![PAGE] / YOU PULL THE / TRIGGER.[PAGE] / IT SEEMS THAT THE / GUN IS EMPTY.[END]
Text0EMessage64:
    INCBIN "../../res/text/US/banks/0e.bin", $21b2, $14
jr_00e_61c6:
    INCBIN "../../res/text/US/banks/0e.bin", $21c6, $11
jr_00e_61d7:
    INCBIN "../../res/text/US/banks/0e.bin", $21d7, $18
; THERE'S WRITING ONTHE MAP WHICH / READS, "ACE, / FOLLOW THIS / ROUTE TO THE / LETTER...[PAGE] / THAT WAY YOU'...
Text0EMessage65:
    INCBIN "../../res/text/US/banks/0e.bin", $21ef, $1f
jr_00e_620e:
    INCBIN "../../res/text/US/banks/0e.bin", $220e, $4d
jr_00e_625b:
    INCBIN "../../res/text/US/banks/0e.bin", $225b, $7
jr_00e_6262:
    INCBIN "../../res/text/US/banks/0e.bin", $2262, $5
jr_00e_6267:
    INCBIN "../../res/text/US/banks/0e.bin", $2267, $23
jr_00e_628a:
    INCBIN "../../res/text/US/banks/0e.bin", $228a, $9
jr_00e_6293:
    INCBIN "../../res/text/US/banks/0e.bin", $2293, $3e
jr_00e_62d1:
    INCBIN "../../res/text/US/banks/0e.bin", $22d1, $14
jr_00e_62e5:
    INCBIN "../../res/text/US/banks/0e.bin", $22e5, $1
jr_00e_62e6:
    INCBIN "../../res/text/US/banks/0e.bin", $22e6, $19
; YOU STAND IN FRONTOF A RAMSHACKLE / BUNGALOW.[PAGE] / THERE'S A PARKED / CAB IDLING BY THE / CURBSIDE.[END]
Text0EMessage66:
    INCBIN "../../res/text/US/banks/0e.bin", $22ff, $48
jr_00e_6347:
    INCBIN "../../res/text/US/banks/0e.bin", $2347, $11
; THE SMELL INSIDE / THE BUNGALOW IS / CLOYING.[PAGE] / YOU THINK YOU'VE / SMELLED THIS CHEAPPERFUME BEFORE.[END]
Text0EMessage67:
    INCBIN "../../res/text/US/banks/0e.bin", $2358, $3a
jr_00e_6392:
    INCBIN "../../res/text/US/banks/0e.bin", $2392, $a
jr_00e_639c:
    INCBIN "../../res/text/US/banks/0e.bin", $239c, $19
; IT'S A SCUFFED / NIGHTSTAND / WITH A DRAWER / IN IT.[END]
Text0EMessage68:
    INCBIN "../../res/text/US/banks/0e.bin", $23b5, $1f
jr_00e_63d4:
    INCBIN "../../res/text/US/banks/0e.bin", $23d4, $10
; SCRAWLED ON THIS / PIECE OF PAPER ARETHE NUMBERS: / 25, 3, AND 45.[END]
Text0EMessage69:
    INCBIN "../../res/text/US/banks/0e.bin", $23e4, $3f
; YOU READ THE / NUMBERS ON THE / PAPER, "33-24-36".[PAGE] / HMM, SOUNDS LIKE / SOMEONE YOU'VE / DATED ONCE![END]
Text0EMessage6A:
    INCBIN "../../res/text/US/banks/0e.bin", $2423, $10
jr_00e_6433:
    INCBIN "../../res/text/US/banks/0e.bin", $2433, $f
jr_00e_6442:
    INCBIN "../../res/text/US/banks/0e.bin", $2442, $39
jr_00e_647b:
    INCBIN "../../res/text/US/banks/0e.bin", $247b, $3
; THE BED LOOKS MORELIKE AN ARMY COT / THAN ANYTHING / ELSE.[PAGE] / IT SEEMS THE OWNERHERE IS VERY POOR.[END]
Text0EMessage6B:
    INCBIN "../../res/text/US/banks/0e.bin", $247e, $3f
jr_00e_64bd:
    INCBIN "../../res/text/US/banks/0e.bin", $24bd, $14
jr_00e_64d1:
    INCBIN "../../res/text/US/banks/0e.bin", $24d1, $9
; IT'S A GAUDY / PAIR OF PEARL / EARRINGS.[PAGE] / YOU CAN TELL / THEY'RE FAKE / BECAUSE OF THE / "MADE IN MONT...
Text0EMessage6C:
    INCBIN "../../res/text/US/banks/0e.bin", $24da, $2a
jr_00e_6504:
    INCBIN "../../res/text/US/banks/0e.bin", $2504, $b
jr_00e_650f:
    INCBIN "../../res/text/US/banks/0e.bin", $250f, $2c
jr_00e_653b:
    INCBIN "../../res/text/US/banks/0e.bin", $253b, $12
; IT'S AN UNMARKED / KEY.[END]
Text0EMessage6D:
    INCBIN "../../res/text/US/banks/0e.bin", $254d, $16
; IT'S A DIARY WITH / THE NAME "MARTHA" / ON IT.[END]
Text0EMessage6E:
    INCBIN "../../res/text/US/banks/0e.bin", $2563, $27
jr_00e_658a:
    INCBIN "../../res/text/US/banks/0e.bin", $258a, $4
; YOU'RE INSIDE / A SMALL BUNGALOW.[END]
Text0EMessage6F:
    INCBIN "../../res/text/US/banks/0e.bin", $258e, $10
jr_00e_659e:
    INCBIN "../../res/text/US/banks/0e.bin", $259e, $10
; IT'S A BOOKMARK / WITH THE INITIALS / J.S. IMPRINTED ON / IT.[END]
Text0EMessage70:
    INCBIN "../../res/text/US/banks/0e.bin", $25ae, $37
jr_00e_65e5:
    INCBIN "../../res/text/US/banks/0e.bin", $25e5, $1
; YOU BEGIN READING,"DEC. 5TH: SIEGEL / DROPPED BY- / PROBABLY TO / APOLOGIZE AGAIN.[PAGE] / I TOLD HIM TO / GE...
Text0EMessage71:
    INCBIN "../../res/text/US/banks/0e.bin", $25e6, $a2
jr_00e_6688:
    INCBIN "../../res/text/US/banks/0e.bin", $2688, $65
jr_00e_66ed:
    INCBIN "../../res/text/US/banks/0e.bin", $26ed, $58
jr_00e_6745:
; YOU OPEN THE / DIARY TO THE / BOOKMARKED PAGE.[END]
Text0EMessage72:
    INCBIN "../../res/text/US/banks/0e.bin", $2745, $2b
; YOU'RE IN FRONT OFA DIRTY OFFICE / BUILDING.[END]
Text0EMessage73:
    INCBIN "../../res/text/US/banks/0e.bin", $2770, $2
jr_00e_6772:
    INCBIN "../../res/text/US/banks/0e.bin", $2772, $e
jr_00e_6780:
    INCBIN "../../res/text/US/banks/0e.bin", $2780, $1b
; IT'S A BUILDING / LIKE ANY OTHER / BUILDING.[END]
Text0EMessage74:
    INCBIN "../../res/text/US/banks/0e.bin", $279b, $29
; YOU'RE ON A QUIET / STREET.[PAGE] / YOU ARE AMAZED AT / HOW QUIET IT IS![END]
Text0EMessage75:
    INCBIN "../../res/text/US/banks/0e.bin", $27c4, $a
jr_00e_67ce:
    INCBIN "../../res/text/US/banks/0e.bin", $27ce, $15
jr_00e_67e3:
    INCBIN "../../res/text/US/banks/0e.bin", $27e3, $b
jr_00e_67ee:
    INCBIN "../../res/text/US/banks/0e.bin", $27ee, $c
jr_00e_67fa:
    INCBIN "../../res/text/US/banks/0e.bin", $27fa, $7
; YOU'RE IN THE / LOBBY OF THE / OFFICE BUILDING.[PAGE] / THERE IS A HALLWAYIN FRONT AND / A STAIRCASE TO / YOU...
Text0EMessage76:
    INCBIN "../../res/text/US/banks/0e.bin", $2801, $47
jr_00e_6848:
    INCBIN "../../res/text/US/banks/0e.bin", $2848, $1
jr_00e_6849:
    INCBIN "../../res/text/US/banks/0e.bin", $2849, $1d
; THE LONG HALLWAY / RUNS THE LENGTH OFTHE BUILDING.[END]
Text0EMessage77:
    INCBIN "../../res/text/US/banks/0e.bin", $2866, $5
jr_00e_686b:
    INCBIN "../../res/text/US/banks/0e.bin", $286b, $1a
jr_00e_6885:
    INCBIN "../../res/text/US/banks/0e.bin", $2885, $12
; YOU'RE STANDING BYTHE ENTRANCE TO ANOFFICE.[END]
Text0EMessage78:
    INCBIN "../../res/text/US/banks/0e.bin", $2897, $10
jr_00e_68a7:
    INCBIN "../../res/text/US/banks/0e.bin", $28a7, $f
jr_00e_68b6:
    INCBIN "../../res/text/US/banks/0e.bin", $28b6, $d
; THIS GUY SEEMS TO / BE IN A LOT OF / PAIN![PAGE] / YOU HOPE HE / RECOVERS![END]
Text0EMessage79:
    INCBIN "../../res/text/US/banks/0e.bin", $28c3, $23
jr_00e_68e6:
    INCBIN "../../res/text/US/banks/0e.bin", $28e6, $1a
; IT'S THE STERILE / FURNISHINGS OF A / DOCTOR'S OFFICE.[PAGE] / YOU GLANCE AROUND / THE DESERTED ROOM / WONDER...
Text0EMessage7A:
    INCBIN "../../res/text/US/banks/0e.bin", $2900, $43
jr_00e_6943:
    INCBIN "../../res/text/US/banks/0e.bin", $2943, $3d
; THIS SEEMS TO BE ACABINET WHERE / THE DOCTOR KEEPS / VIALS OF MEDICINE.[END]
Text0EMessage7B:
    INCBIN "../../res/text/US/banks/0e.bin", $2980, $44
; A COMBINATION LOCKKEEPS THIS FILE / CABINET LOCKED.[PAGE] / PERHAPS TO KEEP / OUT WOULD-BE / SNOOPERS OR / PR...
Text0EMessage7C:
    INCBIN "../../res/text/US/banks/0e.bin", $29c4, $4e
jr_00e_6a12:
    INCBIN "../../res/text/US/banks/0e.bin", $2a12, $21
; IF YOU CAN'T READ / THE EYE CHART FROMWHERE YOU ARE, / THEN YOU NEED / GLASSES![END]
Text0EMessage7D:
    INCBIN "../../res/text/US/banks/0e.bin", $2a33, $13
jr_00e_6a46:
    INCBIN "../../res/text/US/banks/0e.bin", $2a46, $a
jr_00e_6a50:
    INCBIN "../../res/text/US/banks/0e.bin", $2a50, $1d
jr_00e_6a6d:
    INCBIN "../../res/text/US/banks/0e.bin", $2a6d, $e
jr_00e_6a7b:
    INCBIN "../../res/text/US/banks/0e.bin", $2a7b, $2
; YOU READ THE / PATIENT'S FILE.[PAGE] / "ACE HARDING: / DURING HIS LAST / PHYSICAL WAS / STRONGLY URGED TO / Q...
Text0EMessage7E:
    INCBIN "../../res/text/US/banks/0e.bin", $2a7d, $10
jr_00e_6a8d:
    INCBIN "../../res/text/US/banks/0e.bin", $2a8d, $29
jr_00e_6ab6:
    INCBIN "../../res/text/US/banks/0e.bin", $2ab6, $18
jr_00e_6ace:
    INCBIN "../../res/text/US/banks/0e.bin", $2ace, $18
; IT'S A RECEIPT. / THERE'S A HAND / WRITTEN NOTE NEAR / THE BOTTOM WHICH / READS:[PAGE] / "REQUESTED / DELIVER...
Text0EMessage7F:
    INCBIN "../../res/text/US/banks/0e.bin", $2ae6, $25
jr_00e_6b0b:
    INCBIN "../../res/text/US/banks/0e.bin", $2b0b, $8
jr_00e_6b13:
    INCBIN "../../res/text/US/banks/0e.bin", $2b13, $14ed
