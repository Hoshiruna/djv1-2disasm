; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text0DMsgs0:
    db LOW(Text0DMessage00), HIGH(Text0DMessage00)
    db LOW(Text0DMessage01), HIGH(Text0DMessage01)
    db LOW(Text0DMessage02), HIGH(Text0DMessage02)
    db LOW(Text0DMessage03), HIGH(Text0DMessage03)
    db LOW(Text0DMessage04), HIGH(Text0DMessage04)
    db LOW(Text0DMessage05), HIGH(Text0DMessage05)
    db LOW(Text0DMessage06), HIGH(Text0DMessage06)
    db LOW(Text0DMessage07), HIGH(Text0DMessage07)
    db LOW(Text0DMessage08), HIGH(Text0DMessage08)
    db LOW(Text0DMessage09), HIGH(Text0DMessage09)
    db LOW(Text0DMessage0A), HIGH(Text0DMessage0A)
    db LOW(Text0DMessage0B), HIGH(Text0DMessage0B)
    db LOW(Text0DMessage0C), HIGH(Text0DMessage0C)
    db LOW(Text0DMessage0D), HIGH(Text0DMessage0D)
    db LOW(Text0DMessage0E), HIGH(Text0DMessage0E)
    db LOW(Text0DMessage0F), HIGH(Text0DMessage0F)
    db LOW(Text0DMessage10), HIGH(Text0DMessage10)
    db LOW(Text0DMessage11), HIGH(Text0DMessage11)
    db LOW(Text0DMessage12), HIGH(Text0DMessage12)
    db LOW(Text0DMessage13), HIGH(Text0DMessage13)
    db LOW(Text0DMessage14), HIGH(Text0DMessage14)
    db LOW(Text0DMessage15), HIGH(Text0DMessage15)
    db LOW(Text0DMessage16), HIGH(Text0DMessage16)
    db LOW(Text0DMessage17), HIGH(Text0DMessage17)
    db LOW(Text0DMessage18), HIGH(Text0DMessage18)
    db LOW(Text0DMessage19), HIGH(Text0DMessage19)
    db LOW(Text0DMessage1A), HIGH(Text0DMessage1A)
    db LOW(Text0DMessage1B), HIGH(Text0DMessage1B)
    db LOW(Text0DMessage1C), HIGH(Text0DMessage1C)
    db LOW(Text0DMessage1D), HIGH(Text0DMessage1D)
    db LOW(Text0DMessage1E), HIGH(Text0DMessage1E)
    db LOW(Text0DMessage1F), HIGH(Text0DMessage1F)
    db LOW(Text0DMessage20), HIGH(Text0DMessage20)
    db LOW(Text0DMessage21), HIGH(Text0DMessage21)
    db LOW(Text0DMessage22), HIGH(Text0DMessage22)
    db LOW(Text0DMessage23), HIGH(Text0DMessage23)
    db LOW(Text0DMessage24), HIGH(Text0DMessage24)
    db LOW(Text0DMessage25), HIGH(Text0DMessage25)
    db LOW(Text0DMessage26), HIGH(Text0DMessage26)
    db LOW(Text0DMessage27), HIGH(Text0DMessage27)
    db LOW(Text0DMessage28), HIGH(Text0DMessage28)
    db LOW(Text0DMessage29), HIGH(Text0DMessage29)
    db LOW(Text0DMessage2A), HIGH(Text0DMessage2A)
    db LOW(Text0DMessage2B), HIGH(Text0DMessage2B)
    db LOW(Text0DMessage2C), HIGH(Text0DMessage2C)
    db LOW(Text0DMessage2D), HIGH(Text0DMessage2D)
    db LOW(Text0DMessage2E), HIGH(Text0DMessage2E)
    db LOW(Text0DMessage2F), HIGH(Text0DMessage2F)
    db LOW(Text0DMessage30), HIGH(Text0DMessage30)
    db LOW(Text0DMessage31), HIGH(Text0DMessage31)
    db LOW(Text0DMessage32), HIGH(Text0DMessage32)
    db LOW(Text0DMessage33), HIGH(Text0DMessage33)
    db LOW(Text0DMessage34), HIGH(Text0DMessage34)
    db LOW(Text0DMessage35), HIGH(Text0DMessage35)
    db LOW(Text0DMessage36), HIGH(Text0DMessage36)
    db LOW(Text0DMessage37), HIGH(Text0DMessage37)
    db LOW(Text0DMessage38), HIGH(Text0DMessage38)
    db LOW(Text0DMessage39), HIGH(Text0DMessage39)
    db LOW(Text0DMessage3A), HIGH(Text0DMessage3A)
    db LOW(Text0DMessage3B), HIGH(Text0DMessage3B)
    db LOW(Text0DMessage3C), HIGH(Text0DMessage3C)
    db LOW(Text0DMessage3D), HIGH(Text0DMessage3D)
    db LOW(Text0DMessage3E), HIGH(Text0DMessage3E)
    db LOW(Text0DMessage3F), HIGH(Text0DMessage3F)
; Sixty-four message pointers for one text group.
Text0DMsgs1:
    db LOW(Text0DMessage40), HIGH(Text0DMessage40)
    db LOW(Text0DMessage41), HIGH(Text0DMessage41)
    db LOW(Text0DMessage42), HIGH(Text0DMessage42)
    db LOW(Text0DMessage43), HIGH(Text0DMessage43)
    db LOW(Text0DMessage44), HIGH(Text0DMessage44)
    db LOW(Text0DMessage45), HIGH(Text0DMessage45)
    db LOW(Text0DMessage46), HIGH(Text0DMessage46)
    db LOW(Text0DMessage47), HIGH(Text0DMessage47)
    db LOW(Text0DMessage48), HIGH(Text0DMessage48)
    db LOW(Text0DMessage49), HIGH(Text0DMessage49)
    db LOW(Text0DMessage4A), HIGH(Text0DMessage4A)
    db LOW(Text0DMessage4B), HIGH(Text0DMessage4B)
    db LOW(Text0DMessage4C), HIGH(Text0DMessage4C)
    db LOW(Text0DMessage4D), HIGH(Text0DMessage4D)
    db LOW(Text0DMessage4E), HIGH(Text0DMessage4E)
    db LOW(Text0DMessage4F), HIGH(Text0DMessage4F)
    db LOW(Text0DMessage50), HIGH(Text0DMessage50)
    db LOW(Text0DMessage51), HIGH(Text0DMessage51)
    db LOW(Text0DMessage52), HIGH(Text0DMessage52)
    db LOW(Text0DMessage53), HIGH(Text0DMessage53)
    db LOW(Text0DMessage54), HIGH(Text0DMessage54)
    db LOW(Text0DMessage55), HIGH(Text0DMessage55)
    db LOW(Text0DMessage56), HIGH(Text0DMessage56)
    db LOW(Text0DMessage57), HIGH(Text0DMessage57)
    db LOW(Text0DMessage58), HIGH(Text0DMessage58)
    db LOW(Text0DMessage59), HIGH(Text0DMessage59)
    db LOW(Text0DMessage5A), HIGH(Text0DMessage5A)
    db LOW(Text0DMessage5B), HIGH(Text0DMessage5B)
    db LOW(Text0DMessage5C), HIGH(Text0DMessage5C)
    db LOW(Text0DMessage5D), HIGH(Text0DMessage5D)
    db LOW(Text0DMessage5E), HIGH(Text0DMessage5E)
    db LOW(Text0DMessage5F), HIGH(Text0DMessage5F)
    db LOW(Text0DMessage60), HIGH(Text0DMessage60)
    db LOW(Text0DMessage61), HIGH(Text0DMessage61)
    db LOW(Text0DMessage62), HIGH(Text0DMessage62)
    db LOW(Text0DMessage63), HIGH(Text0DMessage63)
    db LOW(Text0DMessage64), HIGH(Text0DMessage64)
    db LOW(Text0DMessage65), HIGH(Text0DMessage65)
    db LOW(Text0DMessage66), HIGH(Text0DMessage66)
    db LOW(Text0DMessage67), HIGH(Text0DMessage67)
    db LOW(Text0DMessage68), HIGH(Text0DMessage68)
    db LOW(Text0DMessage69), HIGH(Text0DMessage69)
    db LOW(Text0DMessage6A), HIGH(Text0DMessage6A)
    db LOW(Text0DMessage6B), HIGH(Text0DMessage6B)
    db LOW(Text0DMessage6C), HIGH(Text0DMessage6C)
    db LOW(Text0DMessage6D), HIGH(Text0DMessage6D)
    db LOW(Text0DMessage6E), HIGH(Text0DMessage6E)
    db LOW(Text0DMessage6F), HIGH(Text0DMessage6F)
    db LOW(Text0DMessage70), HIGH(Text0DMessage70)
    db LOW(Text0DMessage71), HIGH(Text0DMessage71)
    db LOW(Text0DMessage72), HIGH(Text0DMessage72)
    db LOW(Text0DMessage73), HIGH(Text0DMessage73)
    db LOW(Text0DMessage74), HIGH(Text0DMessage74)
jr_00d_40ea:
    db LOW(Text0DMessage75), HIGH(Text0DMessage75)
    db LOW(Text0DMessage76), HIGH(Text0DMessage76)
    db LOW(Text0DMessage77), HIGH(Text0DMessage77)
    db LOW(Text0DMessage78), HIGH(Text0DMessage78)
    db LOW(Text0DMessage79), HIGH(Text0DMessage79)
    db LOW(Text0DMessage7A), HIGH(Text0DMessage7A)
    db LOW(Text0DMessage7B), HIGH(Text0DMessage7B)
    db LOW(Text0DMessage7C), HIGH(Text0DMessage7C)
    db LOW(Text0DMessage7D), HIGH(Text0DMessage7D)
    db LOW(Text0DMessage7E), HIGH(Text0DMessage7E)
    db LOW(Text0DMessage7F), HIGH(Text0DMessage7F)
; THE CAPSULES ARE / EMPTY.[PAGE] / THERE'S NO / MEDICINE IN THEM.[END]
Text0DMessage00:
    INCBIN "../../res/text/US/banks/0d.bin", $100, $35
; YOU'RE IN AN / OFFICE, THE STALE / AIR FILLED WITH / THE STENCH OF / DEATH.[PAGE] / LAZILY SLUMPED / OVER A D...
Text0DMessage01:
    INCBIN "../../res/text/US/banks/0d.bin", $135, $2
jr_00d_4137:
    INCBIN "../../res/text/US/banks/0d.bin", $137, $e
jr_00d_4145:
    INCBIN "../../res/text/US/banks/0d.bin", $145, $f
jr_00d_4154:
    INCBIN "../../res/text/US/banks/0d.bin", $154, $64
jr_00d_41b8:
    INCBIN "../../res/text/US/banks/0d.bin", $1b8, $18
jr_00d_41d0:
    INCBIN "../../res/text/US/banks/0d.bin", $1d0, $12
; YOU'RE INSIDE / A EUROPEAN LUXURY / CAR.[END]
Text0DMessage02:
    INCBIN "../../res/text/US/banks/0d.bin", $1e2, $10
jr_00d_41f2:
    INCBIN "../../res/text/US/banks/0d.bin", $1f2, $15
; IT'S A PHONE / RECEIVER.[PAGE] / THE CORD HAS BEEN / PULLED OUT.[END]
Text0DMessage03:
    INCBIN "../../res/text/US/banks/0d.bin", $207, $35
; A POOL OF BLOOD / LIES DRYING ON THEDESK TOP.[PAGE] / THE DRAWER ON THE / OTHER SIDE OF THE / DESK APPEARS AJ...
Text0DMessage04:
    INCBIN "../../res/text/US/banks/0d.bin", $23c, $1f
jr_00d_425b:
    INCBIN "../../res/text/US/banks/0d.bin", $25b, $29
jr_00d_4284:
    INCBIN "../../res/text/US/banks/0d.bin", $284, $52
; IT'S A WALL SAFE. / TOO BAD YOU NEVER / SHOWED MUCH / APTITUDE FOR SAFE / ROBBING.[END]
Text0DMessage05:
    INCBIN "../../res/text/US/banks/0d.bin", $2d6, $1f
jr_00d_42f5:
    INCBIN "../../res/text/US/banks/0d.bin", $2f5, $b
jr_00d_4300:
    INCBIN "../../res/text/US/banks/0d.bin", $300, $5
jr_00d_4305:
    INCBIN "../../res/text/US/banks/0d.bin", $305, $1c
; IT'S AN / OLD-FASHIONED / TELEPHONE.[PAGE] / THE CORD HANGS / LIMPLY FROM THE / USELESS THING.[END]
Text0DMessage06:
    INCBIN "../../res/text/US/banks/0d.bin", $321, $3d
jr_00d_435e:
    INCBIN "../../res/text/US/banks/0d.bin", $35e, $12
; THROUGH THE WINDOWYOU NOTICE EASY / ACCESS TO THE FIREESCAPE.[END]
Text0DMessage07:
    INCBIN "../../res/text/US/banks/0d.bin", $370, $2
jr_00d_4372:
    INCBIN "../../res/text/US/banks/0d.bin", $372, $1d
jr_00d_438f:
    INCBIN "../../res/text/US/banks/0d.bin", $38f, $3
jr_00d_4392:
    INCBIN "../../res/text/US/banks/0d.bin", $392, $1a
; IT'S A COMMON #2 / PENCIL.[END]
Text0DMessage08:
    INCBIN "../../res/text/US/banks/0d.bin", $3ac, $3
jr_00d_43af:
    INCBIN "../../res/text/US/banks/0d.bin", $3af, $16
; IT'S A KEY MARKED / "FRONT."[END]
Text0DMessage09:
    INCBIN "../../res/text/US/banks/0d.bin", $3c5, $6
jr_00d_43cb:
    INCBIN "../../res/text/US/banks/0d.bin", $3cb, $15
; IT'S AN UNLABELED / KEY.[END]
Text0DMessage0A:
    INCBIN "../../res/text/US/banks/0d.bin", $3e0, $a
jr_00d_43ea:
    INCBIN "../../res/text/US/banks/0d.bin", $3ea, $d
; THE FADED YELLOW / OF THE MANILA / FOLDER CATCHES / YOUR EYE.[END]
Text0DMessage0B:
    INCBIN "../../res/text/US/banks/0d.bin", $3f7, $e
jr_00d_4405:
    INCBIN "../../res/text/US/banks/0d.bin", $405, $2
jr_00d_4407:
    INCBIN "../../res/text/US/banks/0d.bin", $407, $f
jr_00d_4416:
    INCBIN "../../res/text/US/banks/0d.bin", $416, $19
; IT'S A SMALL BOX.[END]
Text0DMessage0C:
    INCBIN "../../res/text/US/banks/0d.bin", $42f, $6
jr_00d_4435:
    INCBIN "../../res/text/US/banks/0d.bin", $435, $c
; IT'S AN IOU.[PAGE] / SCRAWLED ACROSS ITIS: "ACE HARDING / OWES JOEY SIEGEL / $1,000."[END]
Text0DMessage0D:
    INCBIN "../../res/text/US/banks/0d.bin", $441, $d
jr_00d_444e:
    INCBIN "../../res/text/US/banks/0d.bin", $44e, $1c
jr_00d_446a:
    INCBIN "../../res/text/US/banks/0d.bin", $46a, $21
; YOU FIDDLE WITH / THE DIAL, / LISTENING HARD FORTHE TELLTALE / SOUNDS OF TUMBLERSCLICKING INTO / PLACE...[PAG...
Text0DMessage0E:
    INCBIN "../../res/text/US/banks/0d.bin", $48b, $a
jr_00d_4495:
    INCBIN "../../res/text/US/banks/0d.bin", $495, $6
jr_00d_449b:
    INCBIN "../../res/text/US/banks/0d.bin", $49b, $15
jr_00d_44b0:
    INCBIN "../../res/text/US/banks/0d.bin", $4b0, $8
jr_00d_44b8:
    INCBIN "../../res/text/US/banks/0d.bin", $4b8, $51
jr_00d_4509:
    INCBIN "../../res/text/US/banks/0d.bin", $509, $2
jr_00d_450b:
    INCBIN "../../res/text/US/banks/0d.bin", $50b, $14
jr_00d_451f:
    INCBIN "../../res/text/US/banks/0d.bin", $51f, $c
jr_00d_452b:
    INCBIN "../../res/text/US/banks/0d.bin", $52b, $26
; CLICK! / THE TUMBLERS FALL / INTO PLACE. A / QUICK TUG OF THE / HANDLE AND THE / DOOR SWINGS OPEN![END]
Text0DMessage0F:
    INCBIN "../../res/text/US/banks/0d.bin", $551, $1f
jr_00d_4570:
    INCBIN "../../res/text/US/banks/0d.bin", $570, $20
jr_00d_4590:
    INCBIN "../../res/text/US/banks/0d.bin", $590, $1a
; AFTER TRYING THE / COMBINATION, YOU / TUG ON THE HANDLE.[PAGE] / YOU REALIZE YOU / HAVE THE WRONG / COMBINATI...
Text0DMessage10:
    INCBIN "../../res/text/US/banks/0d.bin", $5aa, $2e
jr_00d_45d8:
    INCBIN "../../res/text/US/banks/0d.bin", $5d8, $17
jr_00d_45ef:
    INCBIN "../../res/text/US/banks/0d.bin", $5ef, $38
; CLICK! / WITH A TWIST, THE / KEY UNLOCKS THE / DOOR![END]
Text0DMessage11:
    INCBIN "../../res/text/US/banks/0d.bin", $627, $1f
jr_00d_4646:
    INCBIN "../../res/text/US/banks/0d.bin", $646, $10
; TYPICALLY, YOU'D / FIND FILES INSIDE.[END]
Text0DMessage12:
    INCBIN "../../res/text/US/banks/0d.bin", $656, $8
jr_00d_465e:
    INCBIN "../../res/text/US/banks/0d.bin", $65e, $a
jr_00d_4668:
    INCBIN "../../res/text/US/banks/0d.bin", $668, $9
jr_00d_4671:
    INCBIN "../../res/text/US/banks/0d.bin", $671, $9
; THERE'S A DEAD / BODY LYING JUST / INSIDE THE OFFICE.[END]
Text0DMessage13:
    INCBIN "../../res/text/US/banks/0d.bin", $67a, $b
jr_00d_4685:
    INCBIN "../../res/text/US/banks/0d.bin", $685, $14
jr_00d_4699:
    INCBIN "../../res/text/US/banks/0d.bin", $699, $13
; IT'S A RATHER NEW / WALL SAFE.[END]
Text0DMessage14:
    INCBIN "../../res/text/US/banks/0d.bin", $6ac, $1d
; IT'S A KEY TO / A FANCY FOREIGN / CAR.[END]
Text0DMessage15:
    INCBIN "../../res/text/US/banks/0d.bin", $6c9, $1f
jr_00d_46e8:
    INCBIN "../../res/text/US/banks/0d.bin", $6e8, $4
; IT'S THE BODY / OF JOEY SIEGEL.[PAGE] / YOUR STOMACH DOES / A LURCH AS YOU / NOTICE THE BULLET / HOLES THAT R...
Text0DMessage16:
    INCBIN "../../res/text/US/banks/0d.bin", $6ec, $2b
jr_00d_4717:
    INCBIN "../../res/text/US/banks/0d.bin", $717, $3
jr_00d_471a:
    INCBIN "../../res/text/US/banks/0d.bin", $71a, $2
jr_00d_471c:
    INCBIN "../../res/text/US/banks/0d.bin", $71c, $a
jr_00d_4726:
    INCBIN "../../res/text/US/banks/0d.bin", $726, $33
; YOU'RE IN THE / SECRETARY'S / OFFICE.[PAGE] / THE ODOR OF CHEAP / PERFUME LINGERS INTHE AIR.[END]
Text0DMessage17:
    INCBIN "../../res/text/US/banks/0d.bin", $759, $10
jr_00d_4769:
    INCBIN "../../res/text/US/banks/0d.bin", $769, $3f
; THROUGH THE WINDOWYOU SEE NOTHING / UNUSUAL.[END]
Text0DMessage18:
    INCBIN "../../res/text/US/banks/0d.bin", $7a8, $22
jr_00d_47ca:
    INCBIN "../../res/text/US/banks/0d.bin", $7ca, $9
; IT'S AN EVERYDAY, / RUN-OF-THE-MILL / DESK.[PAGE] / THE DRAWER APPEARSTO HAVE BEEN / RECENTLY PRIED / OPEN.[END]
Text0DMessage19:
    INCBIN "../../res/text/US/banks/0d.bin", $7d3, $1f
jr_00d_47f2:
    INCBIN "../../res/text/US/banks/0d.bin", $7f2, $17
jr_00d_4809:
    INCBIN "../../res/text/US/banks/0d.bin", $809, $26
; IT'S A SMALL DESK / LAMP. FUNCTIONAL, / NOT DECORATIVE![END]
Text0DMessage1A:
    INCBIN "../../res/text/US/banks/0d.bin", $82f, $e
jr_00d_483d:
    INCBIN "../../res/text/US/banks/0d.bin", $83d, $24
jr_00d_4861:
    INCBIN "../../res/text/US/banks/0d.bin", $861, $2
; IT'S A TYPEWRITER.FOR THOSE WITH THEDEXTERITY, IT'S / PRETTY HANDY...[PAGE] / YOU, HOWEVER, / PREFER THE PENC...
Text0DMessage1B:
    INCBIN "../../res/text/US/banks/0d.bin", $863, $53
jr_00d_48b6:
    INCBIN "../../res/text/US/banks/0d.bin", $8b6, $e
jr_00d_48c4:
    INCBIN "../../res/text/US/banks/0d.bin", $8c4, $4
; IT'S A TELEPHONE.[END]
Text0DMessage1C:
    INCBIN "../../res/text/US/banks/0d.bin", $8c8, $12
; IT LOOKS LIKE / A LEGAL-SIZE / ENVELOPE.[END]
Text0DMessage1D:
    INCBIN "../../res/text/US/banks/0d.bin", $8da, $1f
jr_00d_48f9:
    INCBIN "../../res/text/US/banks/0d.bin", $8f9, $6
; IT'S A BILL FROM / A PHARMACY. THE / ADDRESS READS: / DR. BRODY'S, / 934 SHERMAN ST. / CHICAGO, IL.[PAGE] / "...
Text0DMessage1E:
    INCBIN "../../res/text/US/banks/0d.bin", $8ff, $1f
jr_00d_491e:
    INCBIN "../../res/text/US/banks/0d.bin", $91e, $1d
jr_00d_493b:
    INCBIN "../../res/text/US/banks/0d.bin", $93b, $2e
jr_00d_4969:
    INCBIN "../../res/text/US/banks/0d.bin", $969, $18
jr_00d_4981:
    INCBIN "../../res/text/US/banks/0d.bin", $981, $2c
jr_00d_49ad:
    INCBIN "../../res/text/US/banks/0d.bin", $9ad, $24
; IT SOUNDS VAGUELY / FAMILIAR BUT YOU / CAN'T BE SURE.[END]
Text0DMessage1F:
    INCBIN "../../res/text/US/banks/0d.bin", $9d1, $b
jr_00d_49dc:
    INCBIN "../../res/text/US/banks/0d.bin", $9dc, $27
; YOU'RE IN THE / CRAMPED QUARTERS / OF A SECRETARY'S / OFFICE.[END]
Text0DMessage20:
    INCBIN "../../res/text/US/banks/0d.bin", $a03, $38
; IT WON'T OPEN.[END]
Text0DMessage21:
    INCBIN "../../res/text/US/banks/0d.bin", $a3b, $f
; IT WON'T CLOSE.[END]
Text0DMessage22:
    INCBIN "../../res/text/US/banks/0d.bin", $a4a, $10
jr_00d_4a5a:
; YOU'RE IN A / DINGY UPSTAIRS / HALL.[PAGE] / YOU NOTICE SOME / FADED POSTERS / OF OLD BOXERS / COVERING THE /...
Text0DMessage23:
    INCBIN "../../res/text/US/banks/0d.bin", $a5a, $10
jr_00d_4a6a:
    INCBIN "../../res/text/US/banks/0d.bin", $a6a, $f
jr_00d_4a79:
    INCBIN "../../res/text/US/banks/0d.bin", $a79, $d
jr_00d_4a86:
    INCBIN "../../res/text/US/banks/0d.bin", $a86, $5
jr_00d_4a8b:
    INCBIN "../../res/text/US/banks/0d.bin", $a8b, $30
; IT'S A POSTER OF / SOME BOXER NAMED / "DOGHOUSE" RILEY.[END]
Text0DMessage24:
    INCBIN "../../res/text/US/banks/0d.bin", $abb, $1f
jr_00d_4ada:
    INCBIN "../../res/text/US/banks/0d.bin", $ada, $15
; IT'S A POSTER OF ABOXER NAMED / "PUFF" MACMUFFEN.[END]
Text0DMessage25:
    INCBIN "../../res/text/US/banks/0d.bin", $aef, $30
; IT'S A POSTER OF / A BOXER, THE FACE / SEEMS SLIGHTLY / FAMILIAR.[PAGE] / THE NAME / UNDERNEATH READS / "ACE ...
Text0DMessage26:
    INCBIN "../../res/text/US/banks/0d.bin", $b1f, $1f
jr_00d_4b3e:
    INCBIN "../../res/text/US/banks/0d.bin", $b3e, $30
jr_00d_4b6e:
    INCBIN "../../res/text/US/banks/0d.bin", $b6e, $16
; YOU CAN'T SHAKE / THE FEELING THAT / YOU SHOULD KNOW / THIS GUY...[PAGE] / THE NAME IS / ACE HARDING...[PAGE]...
Text0DMessage27:
    INCBIN "../../res/text/US/banks/0d.bin", $b84, $10
jr_00d_4b94:
    INCBIN "../../res/text/US/banks/0d.bin", $b94, $21
jr_00d_4bb5:
    INCBIN "../../res/text/US/banks/0d.bin", $bb5, $29
jr_00d_4bde:
    INCBIN "../../res/text/US/banks/0d.bin", $bde, $1d
jr_00d_4bfb:
    INCBIN "../../res/text/US/banks/0d.bin", $bfb, $2a
jr_00d_4c25:
    INCBIN "../../res/text/US/banks/0d.bin", $c25, $6
; THE MEMORIES FLOODBACK AS YOU / RECOGNIZE THE / POSTER OF YOU, ACEHARDING, TAKEN / DURING YOUR OLD / BOXING D...
Text0DMessage28:
    INCBIN "../../res/text/US/banks/0d.bin", $c2b, $2a
jr_00d_4c55:
    INCBIN "../../res/text/US/banks/0d.bin", $c55, $1c
jr_00d_4c71:
    INCBIN "../../res/text/US/banks/0d.bin", $c71, $1e
jr_00d_4c8f:
    INCBIN "../../res/text/US/banks/0d.bin", $c8f, $16
jr_00d_4ca5:
    INCBIN "../../res/text/US/banks/0d.bin", $ca5, $11
jr_00d_4cb6:
    INCBIN "../../res/text/US/banks/0d.bin", $cb6, $20
jr_00d_4cd6:
    INCBIN "../../res/text/US/banks/0d.bin", $cd6, $e
jr_00d_4ce4:
    INCBIN "../../res/text/US/banks/0d.bin", $ce4, $7
jr_00d_4ceb:
    INCBIN "../../res/text/US/banks/0d.bin", $ceb, $9
jr_00d_4cf4:
    INCBIN "../../res/text/US/banks/0d.bin", $cf4, $15
; THE WALL SLIDES / BACK INTO PLACE, / SILENTLY HIDING / THE ELEVATOR.[END]
Text0DMessage29:
    INCBIN "../../res/text/US/banks/0d.bin", $d09, $26
jr_00d_4d2f:
    INCBIN "../../res/text/US/banks/0d.bin", $d2f, $19
; YOU'RE IN THE / SECOND FLOOR / HALLWAY.[END]
Text0DMessage2A:
    INCBIN "../../res/text/US/banks/0d.bin", $d48, $10
jr_00d_4d58:
    INCBIN "../../res/text/US/banks/0d.bin", $d58, $f
jr_00d_4d67:
    INCBIN "../../res/text/US/banks/0d.bin", $d67, $5
; YOU'RE STANDING / ON THE THIRD FLOORFIRE ESCAPE.[PAGE] / A BOUT OF PANIC / HITS YOU AS YOU / STRUGGLE WITH / ...
Text0DMessage2B:
    INCBIN "../../res/text/US/banks/0d.bin", $d6c, $10
jr_00d_4d7c:
    INCBIN "../../res/text/US/banks/0d.bin", $d7c, $f
jr_00d_4d8b:
    INCBIN "../../res/text/US/banks/0d.bin", $d8b, $2c
jr_00d_4db7:
    INCBIN "../../res/text/US/banks/0d.bin", $db7, $9
jr_00d_4dc0:
    INCBIN "../../res/text/US/banks/0d.bin", $dc0, $7
jr_00d_4dc7:
    INCBIN "../../res/text/US/banks/0d.bin", $dc7, $b
; IT'S A WINDOW / LEADING INTO / THE BUILDING.[END]
Text0DMessage2C:
    INCBIN "../../res/text/US/banks/0d.bin", $dd2, $29
; THE FIRE ESCAPE ISPRETTY RUSTY.[END]
Text0DMessage2D:
    INCBIN "../../res/text/US/banks/0d.bin", $dfb, $1f
jr_00d_4e1a:
    INCBIN "../../res/text/US/banks/0d.bin", $e1a, $1
; YOU'RE ON A FIRE / ESCAPE.[PAGE] / THE THEORY IS THATIF THERE'S A FIRE,YOU USE ONE OF / THESE TO ESCAPE.[END]
Text0DMessage2E:
    INCBIN "../../res/text/US/banks/0d.bin", $e1b, $10
jr_00d_4e2b:
    INCBIN "../../res/text/US/banks/0d.bin", $e2b, $3
jr_00d_4e2e:
    INCBIN "../../res/text/US/banks/0d.bin", $e2e, $c
jr_00d_4e3a:
    INCBIN "../../res/text/US/banks/0d.bin", $e3a, $16
jr_00d_4e50:
    INCBIN "../../res/text/US/banks/0d.bin", $e50, $18
jr_00d_4e68:
    INCBIN "../../res/text/US/banks/0d.bin", $e68, $10
; THE LADDER ENDS / SOME NINE FEET / ABOVE THE GROUND.[PAGE] / YOU COULD JUMP / DOWN TO THE ALLEY.[END]
Text0DMessage2F:
    INCBIN "../../res/text/US/banks/0d.bin", $e78, $1f
jr_00d_4e97:
    INCBIN "../../res/text/US/banks/0d.bin", $e97, $22
jr_00d_4eb9:
    INCBIN "../../res/text/US/banks/0d.bin", $eb9, $c
jr_00d_4ec5:
    INCBIN "../../res/text/US/banks/0d.bin", $ec5, $6
; IT'S A WINDOW.[END]
Text0DMessage30:
    INCBIN "../../res/text/US/banks/0d.bin", $ecb, $f
; YOU'RE ON THE / STREET IN FRONT OFJOE'S PLACE.[PAGE] / A QUICK GLANCE / TELLS YOU NO ONE / ELSE IS AROUND.[END]
Text0DMessage31:
    INCBIN "../../res/text/US/banks/0d.bin", $eda, $10
jr_00d_4eea:
    INCBIN "../../res/text/US/banks/0d.bin", $eea, $39
jr_00d_4f23:
    INCBIN "../../res/text/US/banks/0d.bin", $f23, $9
jr_00d_4f2c:
    INCBIN "../../res/text/US/banks/0d.bin", $f2c, $b
; IT'S THE DOOR / LEADING INSIDE THEBUILDING.[END]
Text0DMessage32:
    INCBIN "../../res/text/US/banks/0d.bin", $f37, $1f
jr_00d_4f56:
    INCBIN "../../res/text/US/banks/0d.bin", $f56, $b
; YOU'D JUST BE / WASTING YOUR / MONEY.[END]
Text0DMessage33:
    INCBIN "../../res/text/US/banks/0d.bin", $f61, $10
jr_00d_4f71:
    INCBIN "../../res/text/US/banks/0d.bin", $f71, $f
jr_00d_4f80:
    INCBIN "../../res/text/US/banks/0d.bin", $f80, $3
; IT'S A VERY / ELEGANT LUXURY / CAR.[END]
Text0DMessage34:
    INCBIN "../../res/text/US/banks/0d.bin", $f83, $4
jr_00d_4f87:
    INCBIN "../../res/text/US/banks/0d.bin", $f87, $1c
; IT'S THE FRONT / DOOR TO THE / CAR.[END]
Text0DMessage35:
    INCBIN "../../res/text/US/banks/0d.bin", $fa3, $20
; SUDDENLY, A PAIN / SHOOTS THROUGH / YOUR HEAD CAUSING / THE WORLD TO / MOMENTARILY / SPIN... [PAGE] / YOU DON...
Text0DMessage36:
    INCBIN "../../res/text/US/banks/0d.bin", $fc3, $2e
jr_00d_4ff1:
    INCBIN "../../res/text/US/banks/0d.bin", $ff1, $3a
jr_00d_502b:
    INCBIN "../../res/text/US/banks/0d.bin", $102b, $a
jr_00d_5035:
    INCBIN "../../res/text/US/banks/0d.bin", $1035, $13
jr_00d_5048:
    INCBIN "../../res/text/US/banks/0d.bin", $1048, $b
; A HOT FLASH PASSESTHROUGH YOU![PAGE] / SOMEHOW THE PAIN / SLOWLY EBBS.[PAGE] / YOU BEGIN TO FEEL / BETTER, AL...
Text0DMessage37:
    INCBIN "../../res/text/US/banks/0d.bin", $1053, $2a
jr_00d_507d:
    INCBIN "../../res/text/US/banks/0d.bin", $107d, $23
jr_00d_50a0:
    INCBIN "../../res/text/US/banks/0d.bin", $10a0, $c
jr_00d_50ac:
    INCBIN "../../res/text/US/banks/0d.bin", $10ac, $27
; IT'S A NARROW / ALLEY.[END]
Text0DMessage38:
    INCBIN "../../res/text/US/banks/0d.bin", $10d3, $15
; YOU'RE STANDING ONTHE STREET IN / FRONT OF THE / RESTAURANT.[END]
Text0DMessage39:
    INCBIN "../../res/text/US/banks/0d.bin", $10e8, $10
jr_00d_50f8:
    INCBIN "../../res/text/US/banks/0d.bin", $10f8, $29
; CLICK! / THE DOOR IS NOW / UNLOCKED.[END]
Text0DMessage3A:
    INCBIN "../../res/text/US/banks/0d.bin", $1121, $1f
jr_00d_5140:
    INCBIN "../../res/text/US/banks/0d.bin", $1140, $2
; YOU'RE IN THE / SEWERS UNDER THE / MANHOLE.[END]
Text0DMessage3B:
    INCBIN "../../res/text/US/banks/0d.bin", $1142, $10
jr_00d_5152:
    INCBIN "../../res/text/US/banks/0d.bin", $1152, $f
jr_00d_5161:
    INCBIN "../../res/text/US/banks/0d.bin", $1161, $9
; THE MANHOLE COVER / SITS IN THE MIDDLEOF THE STREET.[END]
Text0DMessage3C:
    INCBIN "../../res/text/US/banks/0d.bin", $116a, $1f
jr_00d_5189:
    INCBIN "../../res/text/US/banks/0d.bin", $1189, $14
; YOU'RE IN FRONT OFA NEWSSTAND.[PAGE] / YOU FEEL THAT THISMIGHT NOT BE / THE BEST TIME TO / BRUSH UP ON / CURR...
Text0DMessage3D:
    INCBIN "../../res/text/US/banks/0d.bin", $119d, $10
jr_00d_51ad:
    INCBIN "../../res/text/US/banks/0d.bin", $11ad, $f
jr_00d_51bc:
    INCBIN "../../res/text/US/banks/0d.bin", $11bc, $10
jr_00d_51cc:
    INCBIN "../../res/text/US/banks/0d.bin", $11cc, $c
jr_00d_51d8:
    INCBIN "../../res/text/US/banks/0d.bin", $11d8, $30
; THE NEWSPAPERS AREFOR SALE.[PAGE] / YOU'D FEEL GUILTY / READING ONE / WITHOUT PAYING.[END]
Text0DMessage3E:
    INCBIN "../../res/text/US/banks/0d.bin", $1208, $1f
jr_00d_5227:
    INCBIN "../../res/text/US/banks/0d.bin", $1227, $d
jr_00d_5234:
    INCBIN "../../res/text/US/banks/0d.bin", $1234, $c
jr_00d_5240:
    INCBIN "../../res/text/US/banks/0d.bin", $1240, $12
; THE HEADLINE / READS, "THE / JAPANESE BOMB / PEARL HARBOR!"[END]
Text0DMessage3F:
    INCBIN "../../res/text/US/banks/0d.bin", $1252, $1
jr_00d_5253:
    INCBIN "../../res/text/US/banks/0d.bin", $1253, $3
jr_00d_5256:
    INCBIN "../../res/text/US/banks/0d.bin", $1256, $32
; THE NEWSBOY LOOKS / AT YOU AS THOUGH / HE RECOGNIZES YOU.[END]
Text0DMessage40:
    INCBIN "../../res/text/US/banks/0d.bin", $1288, $25
jr_00d_52ad:
    INCBIN "../../res/text/US/banks/0d.bin", $12ad, $11
; THIS NEWSSTAND IS / MADE OF THE FINESTPLYWOOD.[END]
Text0DMessage41:
    INCBIN "../../res/text/US/banks/0d.bin", $12be, $b
jr_00d_52c9:
    INCBIN "../../res/text/US/banks/0d.bin", $12c9, $14
jr_00d_52dd:
    INCBIN "../../res/text/US/banks/0d.bin", $12dd, $e
; YOU'RE ON THE / STREET IN FRONT OFTHE NEWSSTAND.[END]
Text0DMessage42:
    INCBIN "../../res/text/US/banks/0d.bin", $12eb, $10
jr_00d_52fb:
    INCBIN "../../res/text/US/banks/0d.bin", $12fb, $1f
; "IT'S TWENTY-FIVE / CENTS A COPY, MAC![PAGE] / IF YA WANT, TAKE / DA FAR RIGHT ONE,"SAYS THE NEWSBOY.[END]
Text0DMessage43:
    INCBIN "../../res/text/US/banks/0d.bin", $131a, $1f
jr_00d_5339:
    INCBIN "../../res/text/US/banks/0d.bin", $1339, $b
jr_00d_5344:
    INCBIN "../../res/text/US/banks/0d.bin", $1344, $4
jr_00d_5348:
    INCBIN "../../res/text/US/banks/0d.bin", $1348, $7
Jump_00d_534f:
    INCBIN "../../res/text/US/banks/0d.bin", $134f, $25
; YOU HAND THE / NEWSBOY A QUARTER / AND TAKE A PAPER.[END]
Text0DMessage44:
    INCBIN "../../res/text/US/banks/0d.bin", $1374, $4
jr_00d_5378:
    INCBIN "../../res/text/US/banks/0d.bin", $1378, $2d
; THE NEWSBOY SAYS, / "DA COPS HAVE / BEEN ROAMING / 'ROUND HERE / LOOKING FOR / ANYONE SUSPICIOUS / LIKE.[PAGE...
Text0DMessage45:
    INCBIN "../../res/text/US/banks/0d.bin", $13a5, $57
jr_00d_53fc:
    INCBIN "../../res/text/US/banks/0d.bin", $13fc, $22
jr_00d_541e:
    INCBIN "../../res/text/US/banks/0d.bin", $141e, $3
jr_00d_5421:
    INCBIN "../../res/text/US/banks/0d.bin", $1421, $44
jr_00d_5465:
    INCBIN "../../res/text/US/banks/0d.bin", $1465, $22
jr_00d_5487:
    INCBIN "../../res/text/US/banks/0d.bin", $1487, $43
jr_00d_54ca:
    INCBIN "../../res/text/US/banks/0d.bin", $14ca, $9
jr_00d_54d3:
    INCBIN "../../res/text/US/banks/0d.bin", $14d3, $16
; THE NEWSBOY / SPLATTERS ALL OVERTHE FRONT PAGE, / PROBABLY THE ONLY / HEADLINE HE'LL / EVER MAKE.[PAGE] / UNF...
Text0DMessage46:
    INCBIN "../../res/text/US/banks/0d.bin", $14e9, $5d
jr_00d_5546:
    INCBIN "../../res/text/US/banks/0d.bin", $1546, $19
jr_00d_555f:
    INCBIN "../../res/text/US/banks/0d.bin", $155f, $17
jr_00d_5576:
    INCBIN "../../res/text/US/banks/0d.bin", $1576, $1c
jr_00d_5592:
    INCBIN "../../res/text/US/banks/0d.bin", $1592, $2
; THE NEWSBOY SAYS / IN A LOW VOICE, / "ARE YA STILL / HERE?[PAGE] / YOU'D BETTER BEAT / IT, BUB!"[END]
Text0DMessage47:
    INCBIN "../../res/text/US/banks/0d.bin", $1594, $28
jr_00d_55bc:
    INCBIN "../../res/text/US/banks/0d.bin", $15bc, $1d
jr_00d_55d9:
    INCBIN "../../res/text/US/banks/0d.bin", $15d9, $c
; THE CABBY LAUGHS / AND SAYS, "YA MUSTBE NEW IN TOWN ...WE'RE ALREADY / THERE!"[END]
Text0DMessage48:
    INCBIN "../../res/text/US/banks/0d.bin", $15e5, $4b
; YOU DON'T HAVE / ANY STRENGTH LEFT![END]
Text0DMessage49:
    INCBIN "../../res/text/US/banks/0d.bin", $1630, $9
jr_00d_5639:
    INCBIN "../../res/text/US/banks/0d.bin", $1639, $7
jr_00d_5640:
    INCBIN "../../res/text/US/banks/0d.bin", $1640, $5
jr_00d_5645:
    INCBIN "../../res/text/US/banks/0d.bin", $1645, $d
; THE GUY GIVES YOU / A NASTY LOOK- YOU / DECIDE AGAINST / USING THE CAPSULE.[END]
Text0DMessage4A:
    INCBIN "../../res/text/US/banks/0d.bin", $1652, $b
jr_00d_565d:
    INCBIN "../../res/text/US/banks/0d.bin", $165d, $13
jr_00d_5670:
    INCBIN "../../res/text/US/banks/0d.bin", $1670, $16
jr_00d_5686:
    INCBIN "../../res/text/US/banks/0d.bin", $1686, $12
; YOU'RE STANDING ONTHE STREET IN / FRONT OF PETE'S / ALL NITE GUN / PALACE.[END]
Text0DMessage4B:
    INCBIN "../../res/text/US/banks/0d.bin", $1698, $10
jr_00d_56a8:
    INCBIN "../../res/text/US/banks/0d.bin", $16a8, $35
; THE WINDOW READS / "GUNS AND AMMO."[END]
Text0DMessage4C:
    INCBIN "../../res/text/US/banks/0d.bin", $16dd, $22
; IT'S THE ENTRANCE / TO THE STORE.[END]
Text0DMessage4D:
    INCBIN "../../res/text/US/banks/0d.bin", $16ff, $20
; IT LOOKS LIKE / A TRASH CAN.[END]
Text0DMessage4E:
    INCBIN "../../res/text/US/banks/0d.bin", $171f, $1b
; YOU'RE ON THE / STREET IN FRONT OFTHE GUN SHOP.[END]
Text0DMessage4F:
    INCBIN "../../res/text/US/banks/0d.bin", $173a, $4
jr_00d_573e:
    INCBIN "../../res/text/US/banks/0d.bin", $173e, $c
jr_00d_574a:
    INCBIN "../../res/text/US/banks/0d.bin", $174a, $1e
; YOU STAND AMONGST / THE RAMSHACKLE / BUILDINGS ON  / PEORIA ST.[END]
Text0DMessage50:
    INCBIN "../../res/text/US/banks/0d.bin", $1768, $10
jr_00d_5778:
    INCBIN "../../res/text/US/banks/0d.bin", $1778, $f
jr_00d_5787:
    INCBIN "../../res/text/US/banks/0d.bin", $1787, $1b
; YOU'RE IN A DARK / ALLEY.[END]
Text0DMessage51:
    INCBIN "../../res/text/US/banks/0d.bin", $17a2, $18
; THE CABBY / CHUCKLES, "HEY / MISTER, WHAT DO / YA MEAN? [PAGE] / WE ARE ALREADY / THERE!"[END]
Text0DMessage52:
    INCBIN "../../res/text/US/banks/0d.bin", $17ba, $2b
jr_00d_57e5:
    INCBIN "../../res/text/US/banks/0d.bin", $17e5, $b
jr_00d_57f0:
    INCBIN "../../res/text/US/banks/0d.bin", $17f0, $14
; THE FIRE ESCAPE ISTOO HIGH FOR YOU / TO REACH FROM / THE STREET.[END]
Text0DMessage53:
    INCBIN "../../res/text/US/banks/0d.bin", $1804, $2
jr_00d_5806:
    INCBIN "../../res/text/US/banks/0d.bin", $1806, $13
jr_00d_5819:
    INCBIN "../../res/text/US/banks/0d.bin", $1819, $28
; YOU'RE AT THE END / OF THE ALLEY.[END]
Text0DMessage54:
    INCBIN "../../res/text/US/banks/0d.bin", $1841, $10
jr_00d_5851:
    INCBIN "../../res/text/US/banks/0d.bin", $1851, $f
jr_00d_5860:
    INCBIN "../../res/text/US/banks/0d.bin", $1860, $1
; THE KEY HAS THE / MARK OF A FOREIGN / CAR MAKER ON IT.[END]
Text0DMessage55:
    INCBIN "../../res/text/US/banks/0d.bin", $1861, $22
jr_00d_5883:
    INCBIN "../../res/text/US/banks/0d.bin", $1883, $11
; YOU'RE STANDING INFRONT OF THE / POLICE STATION.[END]
Text0DMessage56:
    INCBIN "../../res/text/US/banks/0d.bin", $1894, $10
jr_00d_58a4:
    INCBIN "../../res/text/US/banks/0d.bin", $18a4, $1f
; THE LAMP POST HAS / THREE VERY BRIGHT / LIGHTS.[PAGE] / YOU SUPPOSE IT / REDUCES THE / CRIME RATE ON / THIS C...
Text0DMessage57:
    INCBIN "../../res/text/US/banks/0d.bin", $18c3, $48
jr_00d_590b:
    INCBIN "../../res/text/US/banks/0d.bin", $190b, $1a
; THE POLICE / STATION'S / FRONT DOOR IS / CLOSED.[END]
Text0DMessage58:
    INCBIN "../../res/text/US/banks/0d.bin", $1925, $2b
; YUCK! EATING / SOMEONE'S / LEFTOVERS TURNS / YOUR STOMACH.[END]
Text0DMessage59:
    INCBIN "../../res/text/US/banks/0d.bin", $1950, $16
jr_00d_5966:
    INCBIN "../../res/text/US/banks/0d.bin", $1966, $1f
; WHOOPS! YOU DON'T / WATCH THAT FIRST / STEP AND PLUNGE / DOWN HEAD OVER / HEELS INTO A DEEP / CONSTRUCTION PI...
Text0DMessage5A:
    INCBIN "../../res/text/US/banks/0d.bin", $1985, $2
jr_00d_5987:
    INCBIN "../../res/text/US/banks/0d.bin", $1987, $16
jr_00d_599d:
    INCBIN "../../res/text/US/banks/0d.bin", $199d, $5e
jr_00d_59fb:
    INCBIN "../../res/text/US/banks/0d.bin", $19fb, $32
; YOU RUN INTO A BUMWHO BLOCKS YOUR / WAY. THE STENCH OFHIM IS ALMOST TOO / MUCH TO BEAR![PAGE] / HE STANDS SO ...
Text0DMessage5B:
    INCBIN "../../res/text/US/banks/0d.bin", $1a2d, $2d
jr_00d_5a5a:
    INCBIN "../../res/text/US/banks/0d.bin", $1a5a, $19
jr_00d_5a73:
    INCBIN "../../res/text/US/banks/0d.bin", $1a73, $31
jr_00d_5aa4:
    INCBIN "../../res/text/US/banks/0d.bin", $1aa4, $5f
jr_00d_5b03:
    INCBIN "../../res/text/US/banks/0d.bin", $1b03, $24
jr_00d_5b27:
    INCBIN "../../res/text/US/banks/0d.bin", $1b27, $5
; HE LOOKS VERY WEAKAND DEFENSELESS.[PAGE] / THE MAN LOOKS / EXTREMELY DAZED, / TOO![PAGE] / YOU HESITATE ABOUT...
Text0DMessage5C:
    INCBIN "../../res/text/US/banks/0d.bin", $1b2c, $a
jr_00d_5b36:
    INCBIN "../../res/text/US/banks/0d.bin", $1b36, $13
jr_00d_5b49:
    INCBIN "../../res/text/US/banks/0d.bin", $1b49, $8
jr_00d_5b51:
    INCBIN "../../res/text/US/banks/0d.bin", $1b51, $1a
jr_00d_5b6b:
    INCBIN "../../res/text/US/banks/0d.bin", $1b6b, $16
jr_00d_5b81:
    INCBIN "../../res/text/US/banks/0d.bin", $1b81, $2c
; BECAUSE OF YOUR / EXCELLENT / INVESTIGATIVE / SKILLS, YOU'VE / LAID THE CASE TO / REST.[PAGE] / CONGRATULATIO...
Text0DMessage5D:
    INCBIN "../../res/text/US/banks/0d.bin", $1bad, $40
jr_00d_5bed:
    INCBIN "../../res/text/US/banks/0d.bin", $1bed, $34
jr_00d_5c21:
    INCBIN "../../res/text/US/banks/0d.bin", $1c21, $24
jr_00d_5c45:
    INCBIN "../../res/text/US/banks/0d.bin", $1c45, $4f
jr_00d_5c94:
    INCBIN "../../res/text/US/banks/0d.bin", $1c94, $8
jr_00d_5c9c:
    INCBIN "../../res/text/US/banks/0d.bin", $1c9c, $c
jr_00d_5ca8:
    INCBIN "../../res/text/US/banks/0d.bin", $1ca8, $46
jr_00d_5cee:
    INCBIN "../../res/text/US/banks/0d.bin", $1cee, $4c
; THERE'S A / VAGRANT CROSSING / THE STREET.[END]
Text0DMessage5E:
    INCBIN "../../res/text/US/banks/0d.bin", $1d3a, $27
; SOCKO![PAGE] / YOU BELTED THE BUMHARD, BUT SOMEHOW / YOU DON'T THINK HENOTICED- SEEING / THE CONDITION HE / I...
Text0DMessage5F:
    INCBIN "../../res/text/US/banks/0d.bin", $1d61, $1f
jr_00d_5d80:
    INCBIN "../../res/text/US/banks/0d.bin", $1d80, $1c
jr_00d_5d9c:
    INCBIN "../../res/text/US/banks/0d.bin", $1d9c, $5d
jr_00d_5df9:
    INCBIN "../../res/text/US/banks/0d.bin", $1df9, $1c
jr_00d_5e15:
    INCBIN "../../res/text/US/banks/0d.bin", $1e15, $4d
; "HEH, HEH, HEH... / FIFTY CENTS IS A / SMALL PRICE TA / PAY FOR YER LIFE,"BELCHES THE BUM.[END]
Text0DMessage60:
    INCBIN "../../res/text/US/banks/0d.bin", $1e62, $2f
jr_00d_5e91:
    INCBIN "../../res/text/US/banks/0d.bin", $1e91, $1
jr_00d_5e92:
    INCBIN "../../res/text/US/banks/0d.bin", $1e92, $2
jr_00d_5e94:
    INCBIN "../../res/text/US/banks/0d.bin", $1e94, $1e
jr_00d_5eb2:
    INCBIN "../../res/text/US/banks/0d.bin", $1eb2, $5
; THE BUM LOOKS AT / THE TWENTY AND / STARTS DROOLING.[END]
Text0DMessage61:
    INCBIN "../../res/text/US/banks/0d.bin", $1eb7, $1f
jr_00d_5ed6:
    INCBIN "../../res/text/US/banks/0d.bin", $1ed6, $12
; THE VAGRANT IS / STAGGERING AROUND / SO MUCH THAT YOU / CAN'T GIVE HIM / THE MEDICINE.[END]
Text0DMessage62:
    INCBIN "../../res/text/US/banks/0d.bin", $1ee8, $5
jr_00d_5eed:
    INCBIN "../../res/text/US/banks/0d.bin", $1eed, $1a
jr_00d_5f07:
    INCBIN "../../res/text/US/banks/0d.bin", $1f07, $1f
jr_00d_5f26:
    INCBIN "../../res/text/US/banks/0d.bin", $1f26, $11
; THE BUM GLADLY / TAKES THE MONEY, / LOOKS AROUND / AND SLURS,[PAGE] / "JOEY'S HIT MAN / HAS BEEN LOOKIN' / FO...
Text0DMessage63:
    INCBIN "../../res/text/US/banks/0d.bin", $1f37, $1f
jr_00d_5f56:
    INCBIN "../../res/text/US/banks/0d.bin", $1f56, $d
jr_00d_5f63:
    INCBIN "../../res/text/US/banks/0d.bin", $1f63, $18
jr_00d_5f7b:
    INCBIN "../../res/text/US/banks/0d.bin", $1f7b, $1b
jr_00d_5f96:
    INCBIN "../../res/text/US/banks/0d.bin", $1f96, $9
jr_00d_5f9f:
    INCBIN "../../res/text/US/banks/0d.bin", $1f9f, $22
jr_00d_5fc1:
    INCBIN "../../res/text/US/banks/0d.bin", $1fc1, $19
; YOU TAKE A SHOT ATTHE BUM AND HEAR / A WOMAN BEGIN TO / SCREAM.[PAGE] / IMMEDIATELY THE / QUIET OF THE / STRE...
Text0DMessage64:
    INCBIN "../../res/text/US/banks/0d.bin", $1fda, $a
jr_00d_5fe4:
    INCBIN "../../res/text/US/banks/0d.bin", $1fe4, $6
jr_00d_5fea:
    INCBIN "../../res/text/US/banks/0d.bin", $1fea, $15
jr_00d_5fff:
    INCBIN "../../res/text/US/banks/0d.bin", $1fff, $33
jr_00d_6032:
    INCBIN "../../res/text/US/banks/0d.bin", $2032, $44
jr_00d_6076:
    INCBIN "../../res/text/US/banks/0d.bin", $2076, $32
jr_00d_60a8:
    INCBIN "../../res/text/US/banks/0d.bin", $20a8, $5
; A WOMAN COMES OUT / OF NOWHERE AND / SAYS, "IT'S BEEN AWHILE, SUGAR. I / JUST GOT OUT OF / PRISON AND HAD / S...
Text0DMessage65:
    INCBIN "../../res/text/US/banks/0d.bin", $20ad, $7
jr_00d_60b4:
    INCBIN "../../res/text/US/banks/0d.bin", $20b4, $18
jr_00d_60cc:
    INCBIN "../../res/text/US/banks/0d.bin", $20cc, $9d
jr_00d_6169:
    INCBIN "../../res/text/US/banks/0d.bin", $2169, $62
jr_00d_61cb:
    INCBIN "../../res/text/US/banks/0d.bin", $21cb, $1a
jr_00d_61e5:
    INCBIN "../../res/text/US/banks/0d.bin", $21e5, $b
jr_00d_61f0:
    INCBIN "../../res/text/US/banks/0d.bin", $21f0, $1c
jr_00d_620c:
    INCBIN "../../res/text/US/banks/0d.bin", $220c, $11
; BLAM! / YOUR REFLEXES / WITH YOUR GUN ARE / TOO SLOW, SHE / BEATS YOU TO THE / DRAW AND PLUGS YOUFULL OF HOLE...
Text0DMessage66:
    INCBIN "../../res/text/US/banks/0d.bin", $221d, $12
jr_00d_622f:
    INCBIN "../../res/text/US/banks/0d.bin", $222f, $4
jr_00d_6233:
    INCBIN "../../res/text/US/banks/0d.bin", $2233, $13
jr_00d_6246:
    INCBIN "../../res/text/US/banks/0d.bin", $2246, $21
jr_00d_6267:
    INCBIN "../../res/text/US/banks/0d.bin", $2267, $1a
jr_00d_6281:
    INCBIN "../../res/text/US/banks/0d.bin", $2281, $2
; SOCKO![PAGE] / A QUICK JAB OUT OFNOWHERE AND SHE'S / OUT LIKE A LIGHT! / HER PURSE DROPS TOTHE GROUND AS SHE ...
Text0DMessage67:
    INCBIN "../../res/text/US/banks/0d.bin", $2283, $71
; YOU ARE STANDING / OVER THE LADY YOU / JUST SUCKER / PUNCHED.[PAGE] / YOU PROBABLY / SHOULDN'T STAND / HERE M...
Text0DMessage68:
    INCBIN "../../res/text/US/banks/0d.bin", $22f4, $10
jr_00d_6304:
    INCBIN "../../res/text/US/banks/0d.bin", $2304, $44
jr_00d_6348:
    INCBIN "../../res/text/US/banks/0d.bin", $2348, $3a
; IT LOOKS LIKE YOU / HIT HER PRETTY / HARD- SHE'S OUT / COLD![END]
Text0DMessage69:
    INCBIN "../../res/text/US/banks/0d.bin", $2382, $1e
jr_00d_63a0:
    INCBIN "../../res/text/US/banks/0d.bin", $23a0, $19
; IT'S A BLACK / HANDBAG. IT LOOKS / BIG ENOUGH TO / CHOKE A MULE![END]
Text0DMessage6A:
    INCBIN "../../res/text/US/banks/0d.bin", $23b9, $7
jr_00d_63c0:
    INCBIN "../../res/text/US/banks/0d.bin", $23c0, $34
; THIS GUN IS ONE OFTHOSE "SATURDAY / NIGHT SPECIALS."[PAGE] / IT'S EASY TO COME / BY ON THE STREETS!AND IS JUS...
Text0DMessage6B:
    INCBIN "../../res/text/US/banks/0d.bin", $23f4, $57
jr_00d_644b:
    INCBIN "../../res/text/US/banks/0d.bin", $244b, $1
jr_00d_644c:
    INCBIN "../../res/text/US/banks/0d.bin", $244c, $25
; IT'S A MAKEUP KIT.[END]
Text0DMessage6C:
    INCBIN "../../res/text/US/banks/0d.bin", $2471, $a
jr_00d_647b:
    INCBIN "../../res/text/US/banks/0d.bin", $247b, $9
; IT'S A TWENTY / DOLLAR BILL.[END]
Text0DMessage6D:
    INCBIN "../../res/text/US/banks/0d.bin", $2484, $1b
; IT'S A GUN.[PAGE] / THIS GAL WAS / GOING TO KILL YOU![END]
Text0DMessage6E:
    INCBIN "../../res/text/US/banks/0d.bin", $249f, $1f
jr_00d_64be:
    INCBIN "../../res/text/US/banks/0d.bin", $24be, $d
; GOING AGAINST / COMMON SENSE, YOU / DECIDE TO SHOOT / HER.[PAGE] / A PASSING COP / HEARS THE SHOT ANDQUICKLY ...
Text0DMessage6F:
    INCBIN "../../res/text/US/banks/0d.bin", $24cb, $2c
jr_00d_64f7:
    INCBIN "../../res/text/US/banks/0d.bin", $24f7, $4b
jr_00d_6542:
    INCBIN "../../res/text/US/banks/0d.bin", $2542, $9
jr_00d_654b:
    INCBIN "../../res/text/US/banks/0d.bin", $254b, $1
; IT'S A BLACK / HANDBAG.[END]
Text0DMessage70:
    INCBIN "../../res/text/US/banks/0d.bin", $254c, $16
; YOU'RE STANDING / AT THE REAR OF THECAR, IN FRONT OF / ITS TRUNK.[END]
Text0DMessage71:
    INCBIN "../../res/text/US/banks/0d.bin", $2562, $9
jr_00d_656b:
    INCBIN "../../res/text/US/banks/0d.bin", $256b, $7
jr_00d_6572:
    INCBIN "../../res/text/US/banks/0d.bin", $2572, $f
jr_00d_6581:
    INCBIN "../../res/text/US/banks/0d.bin", $2581, $1f
; IT'S A TRUNK LIKE / ANY OTHER TRUNK.[END]
Text0DMessage72:
    INCBIN "../../res/text/US/banks/0d.bin", $25a0, $23
; IT'S THE BLACK / EUROPEAN LUXURY / CAR.[END]
Text0DMessage73:
    INCBIN "../../res/text/US/banks/0d.bin", $25c3, $d
jr_00d_65d0:
    INCBIN "../../res/text/US/banks/0d.bin", $25d0, $12
jr_00d_65e2:
    INCBIN "../../res/text/US/banks/0d.bin", $25e2, $5
; IT'S THE BIGGEST / WOMAN YOU'VE EVER / SEEN IN YOUR LIFE!YOU WONDER HOW SHEEVER MANAGED TO / GET INSIDE THE /...
Text0DMessage74:
    INCBIN "../../res/text/US/banks/0d.bin", $25e7, $27
jr_00d_660e:
    INCBIN "../../res/text/US/banks/0d.bin", $260e, $14
jr_00d_6622:
    INCBIN "../../res/text/US/banks/0d.bin", $2622, $a
jr_00d_662c:
    INCBIN "../../res/text/US/banks/0d.bin", $262c, $3d
jr_00d_6669:
    INCBIN "../../res/text/US/banks/0d.bin", $2669, $2a
jr_00d_6693:
    INCBIN "../../res/text/US/banks/0d.bin", $2693, $21
; THE GAG IS MADE OFWHITE CLOTH.[END]
Text0DMessage75:
    INCBIN "../../res/text/US/banks/0d.bin", $26b4, $1f
jr_00d_66d3:
; YOU'RE AT THE BACKOF THE CAR.[END]
Text0DMessage76:
    INCBIN "../../res/text/US/banks/0d.bin", $26d3, $1e
; YOU OPEN THE TRUNKWITH THE KEY.[END]
Text0DMessage77:
    INCBIN "../../res/text/US/banks/0d.bin", $26f1, $20
; THE SODIUM / PENTATHOL TAKES / EFFECT.[PAGE] / THE WOMAN STARTS / BABBLING, / "TAKE ME HOME, / PLEASE TAKE ME...
Text0DMessage78:
    INCBIN "../../res/text/US/banks/0d.bin", $2711, $1f
jr_00d_6730:
    INCBIN "../../res/text/US/banks/0d.bin", $2730, $61
jr_00d_6791:
    INCBIN "../../res/text/US/banks/0d.bin", $2791, $25
jr_00d_67b6:
    INCBIN "../../res/text/US/banks/0d.bin", $27b6, $31
; THE WOMAN IS / TRYING TO SAY / SOMETHING, BUT HERGAG PREVENTS YOU / FROM UNDERSTANDINGHER CLEARLY.[END]
Text0DMessage79:
    INCBIN "../../res/text/US/banks/0d.bin", $27e7, $1f
jr_00d_6806:
    INCBIN "../../res/text/US/banks/0d.bin", $2806, $19
jr_00d_681f:
    INCBIN "../../res/text/US/banks/0d.bin", $281f, $12
jr_00d_6831:
    INCBIN "../../res/text/US/banks/0d.bin", $2831, $13
; WHEN YOU TAKE THE / GAG OUT, SHE / STARTS TO BREATHE / A LITTLE EASIER.[END]
Text0DMessage7A:
    INCBIN "../../res/text/US/banks/0d.bin", $2844, $1f
jr_00d_6863:
    INCBIN "../../res/text/US/banks/0d.bin", $2863, $23
; SHE CAN'T SAY / ANYTHING TO YOU / WHILE SHE'S / UNCONSCIOUS.[END]
Text0DMessage7B:
    INCBIN "../../res/text/US/banks/0d.bin", $2886, $25
jr_00d_68ab:
    INCBIN "../../res/text/US/banks/0d.bin", $28ab, $5
jr_00d_68b0:
    INCBIN "../../res/text/US/banks/0d.bin", $28b0, $1
jr_00d_68b1:
    INCBIN "../../res/text/US/banks/0d.bin", $28b1, $c
; ON SECOND THOUGHT,YOU'VE SEEN PLENTYENOUGH ALREADY.[END]
Text0DMessage7C:
    INCBIN "../../res/text/US/banks/0d.bin", $28bd, $1f
jr_00d_68dc:
    INCBIN "../../res/text/US/banks/0d.bin", $28dc, $3
jr_00d_68df:
    INCBIN "../../res/text/US/banks/0d.bin", $28df, $12
; THE MEDICINE / APPEARS TO BE / HAVING AN ADVERSE / EFFECT ON THE / WOMAN.[PAGE] / YOU WONDER IF / SHE'S STILL...
Text0DMessage7D:
    INCBIN "../../res/text/US/banks/0d.bin", $28f1, $52
jr_00d_6943:
    INCBIN "../../res/text/US/banks/0d.bin", $2943, $c
jr_00d_694f:
    INCBIN "../../res/text/US/banks/0d.bin", $294f, $b
jr_00d_695a:
    INCBIN "../../res/text/US/banks/0d.bin", $295a, $16
jr_00d_6970:
; ERROR[END]
Text0DMessage7E:
    INCBIN "../../res/text/US/banks/0d.bin", $2970, $6
; THE FORCE OF YOUR / BLOW SENDS SHOCK / WAVES THROUGH THE / RIPPLES OF HER / FAT.[PAGE] / IT APPEARS THAT / AN...
Text0DMessage7F:
    INCBIN "../../res/text/US/banks/0d.bin", $2976, $19
jr_00d_698f:
    INCBIN "../../res/text/US/banks/0d.bin", $298f, $4
jr_00d_6993:
    INCBIN "../../res/text/US/banks/0d.bin", $2993, $48
jr_00d_69db:
    INCBIN "../../res/text/US/banks/0d.bin", $29db, $b
jr_00d_69e6:
    INCBIN "../../res/text/US/banks/0d.bin", $29e6, $6f
jr_00d_6a55:
    INCBIN "../../res/text/US/banks/0d.bin", $2a55, $15ab
