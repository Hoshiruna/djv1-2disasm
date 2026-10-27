; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text10Msgs0:
    db LOW(Text10Message00), HIGH(Text10Message00)
    db LOW(Text10Message01), HIGH(Text10Message01)
    db LOW(Text10Message02), HIGH(Text10Message02)
    db LOW(Text10Message03), HIGH(Text10Message03)
    db LOW(Text10Message04), HIGH(Text10Message04)
    db LOW(Text10Message05), HIGH(Text10Message05)
    db LOW(Text10Message06), HIGH(Text10Message06)
    db LOW(Text10Message07), HIGH(Text10Message07)
    db LOW(Text10Message08), HIGH(Text10Message08)
    db LOW(Text10Message09), HIGH(Text10Message09)
    db LOW(Text10Message0A), HIGH(Text10Message0A)
    db LOW(Text10Message0B), HIGH(Text10Message0B)
    db LOW(Text10Message0C), HIGH(Text10Message0C)
    db LOW(Text10Message0D), HIGH(Text10Message0D)
    db LOW(Text10Message0E), HIGH(Text10Message0E)
    db LOW(Text10Message0F), HIGH(Text10Message0F)
    db LOW(Text10Message10), HIGH(Text10Message10)
    db LOW(Text10Message11), HIGH(Text10Message11)
    db LOW(Text10Message12), HIGH(Text10Message12)
    db LOW(Text10Message13), HIGH(Text10Message13)
    db LOW(Text10Message14), HIGH(Text10Message14)
    db LOW(Text10Message15), HIGH(Text10Message15)
    db LOW(Text10Message16), HIGH(Text10Message16)
    db LOW(Text10Message17), HIGH(Text10Message17)
    db LOW(Text10Message18), HIGH(Text10Message18)
    db LOW(Text10Message19), HIGH(Text10Message19)
    db LOW(Text10Message1A), HIGH(Text10Message1A)
    db LOW(Text10Message1B), HIGH(Text10Message1B)
    db LOW(Text10Message1C), HIGH(Text10Message1C)
    db LOW(Text10Message1D), HIGH(Text10Message1D)
    db LOW(Text10Message1E), HIGH(Text10Message1E)
    db LOW(Text10Message1F), HIGH(Text10Message1F)
    db LOW(Text10Message20), HIGH(Text10Message20)
    db LOW(Text10Message21), HIGH(Text10Message21)
    db LOW(Text10Message22), HIGH(Text10Message22)
    db LOW(Text10Message23), HIGH(Text10Message23)
    db LOW(Text10Message24), HIGH(Text10Message24)
    db LOW(Text10Message25), HIGH(Text10Message25)
    db LOW(Text10Message26), HIGH(Text10Message26)
    db LOW(Text10Message27), HIGH(Text10Message27)
    db LOW(Text10Message28), HIGH(Text10Message28)
    db LOW(Text10Message29), HIGH(Text10Message29)
    db LOW(Text10Message2A), HIGH(Text10Message2A)
    db LOW(Text10Message2B), HIGH(Text10Message2B)
    db LOW(Text10Message2C), HIGH(Text10Message2C)
    db LOW(Text10Message2D), HIGH(Text10Message2D)
    db LOW(Text10Message2E), HIGH(Text10Message2E)
    db LOW(Text10Message2F), HIGH(Text10Message2F)
    db LOW(Text10Message30), HIGH(Text10Message30)
    db LOW(Text10Message31), HIGH(Text10Message31)
    db LOW(Text10Message32), HIGH(Text10Message32)
    db LOW(Text10Message33), HIGH(Text10Message33)
    db LOW(Text10Message34), HIGH(Text10Message34)
    db LOW(Text10Message35), HIGH(Text10Message35)
    db LOW(Text10Message36), HIGH(Text10Message36)
    db LOW(Text10Message37), HIGH(Text10Message37)
    db LOW(Text10Message38), HIGH(Text10Message38)
    db LOW(Text10Message39), HIGH(Text10Message39)
    db LOW(Text10Message3A), HIGH(Text10Message3A)
    db LOW(Text10Message3B), HIGH(Text10Message3B)
    db LOW(Text10Message3C), HIGH(Text10Message3C)
    db LOW(Text10Message3D), HIGH(Text10Message3D)
    db LOW(Text10Message3E), HIGH(Text10Message3E)
    db LOW(Text10Message3F), HIGH(Text10Message3F)
; IT'S A NIGHTSTAND / WITH DRAWERS.[END]
Text10Message00:
    INCBIN "../../res/text/US/banks/10.bin", $80, $20
; IT LOOKS LIKE / MR. STERNWOOD IS / IN A DEEP SLEEP.[END]
Text10Message01:
    INCBIN "../../res/text/US/banks/10.bin", $a0, $30
; IT'S A BOX OF / TISSUES.[PAGE] / YOU KNOW HOW TO / USE THEM, / DON'T YOU?[PAGE] / YOU JUST PUT ONE / TO YOUR ...
Text10Message02:
    INCBIN "../../res/text/US/banks/10.bin", $d0, $1f
jr_010_40ef:
    INCBIN "../../res/text/US/banks/10.bin", $ef, $8
jr_010_40f7:
    INCBIN "../../res/text/US/banks/10.bin", $f7, $20
jr_010_4117:
    INCBIN "../../res/text/US/banks/10.bin", $117, $5
jr_010_411c:
    INCBIN "../../res/text/US/banks/10.bin", $11c, $c
jr_010_4128:
    INCBIN "../../res/text/US/banks/10.bin", $128, $c
; IT'S A BOX OF / CHOCOLATES.[END]
Text10Message03:
    INCBIN "../../res/text/US/banks/10.bin", $134, $1a
; IT'S A LETTER THATSAYS, "STERNWOOD, / THIS IS MY FINAL / WARNING.[PAGE] / KEEP AWAY FROM / VICKERS, OR / YOUR...
Text10Message04:
    INCBIN "../../res/text/US/banks/10.bin", $14e, $1f
jr_010_416d:
    INCBIN "../../res/text/US/banks/10.bin", $16d, $2a
jr_010_4197:
    INCBIN "../../res/text/US/banks/10.bin", $197, $19
jr_010_41b0:
    INCBIN "../../res/text/US/banks/10.bin", $1b0, $7
jr_010_41b7:
    INCBIN "../../res/text/US/banks/10.bin", $1b7, $32
jr_010_41e9:
    INCBIN "../../res/text/US/banks/10.bin", $1e9, $2
jr_010_41eb:
    INCBIN "../../res/text/US/banks/10.bin", $1eb, $2a
jr_010_4215:
    INCBIN "../../res/text/US/banks/10.bin", $215, $33
jr_010_4248:
    INCBIN "../../res/text/US/banks/10.bin", $248, $f
jr_010_4257:
    INCBIN "../../res/text/US/banks/10.bin", $257, $2
; IT'S A PIECE OF / CHOCOLATE.[END]
Text10Message05:
    INCBIN "../../res/text/US/banks/10.bin", $259, $6
jr_010_425f:
    INCBIN "../../res/text/US/banks/10.bin", $25f, $5
jr_010_4264:
    INCBIN "../../res/text/US/banks/10.bin", $264, $b
jr_010_426f:
    INCBIN "../../res/text/US/banks/10.bin", $26f, $5
; THE MAN TENSES ANDTHEN RELAXES AS / THE MEDICINE TAKESEFFECT.[PAGE] / HE BEGINS TO / MUMBLE, "GOTTA / FOLLOW ...
Text10Message06:
    INCBIN "../../res/text/US/banks/10.bin", $274, $1f
jr_010_4293:
    INCBIN "../../res/text/US/banks/10.bin", $293, $39
jr_010_42cc:
    INCBIN "../../res/text/US/banks/10.bin", $2cc, $70
jr_010_433c:
    INCBIN "../../res/text/US/banks/10.bin", $33c, $2
jr_010_433e:
    INCBIN "../../res/text/US/banks/10.bin", $33e, $22
jr_010_4360:
    INCBIN "../../res/text/US/banks/10.bin", $360, $2f
jr_010_438f:
    INCBIN "../../res/text/US/banks/10.bin", $38f, $22
jr_010_43b1:
    INCBIN "../../res/text/US/banks/10.bin", $3b1, $b
jr_010_43bc:
    INCBIN "../../res/text/US/banks/10.bin", $3bc, $29
; IT'S A DOOR.[END]
Text10Message07:
    INCBIN "../../res/text/US/banks/10.bin", $3e5, $d
; THE MEDREZINE / APPEARS TO BE / HAVING A RATHER / ADVERSE EFFECT ON / THE SLEEPING MAN.[PAGE] / HE GIVES A SH...
Text10Message08:
    INCBIN "../../res/text/US/banks/10.bin", $3f2, $12
jr_010_4404:
    INCBIN "../../res/text/US/banks/10.bin", $404, $5a
jr_010_445e:
    INCBIN "../../res/text/US/banks/10.bin", $45e, $1a
; IT'S A BEDROOM.[END]
Text10Message09:
    INCBIN "../../res/text/US/banks/10.bin", $478, $10
; THE WOMAN IS / SNORING SO LOUDLY,YOU KNOW SHE'S IN / A DEEP SLEEP.[END]
Text10Message0A:
    INCBIN "../../res/text/US/banks/10.bin", $488, $f
jr_010_4497:
    INCBIN "../../res/text/US/banks/10.bin", $497, $10
jr_010_44a7:
    INCBIN "../../res/text/US/banks/10.bin", $4a7, $20
; YOU'RE IN A SMALL / BEDROOM.[PAGE] / THE SMELL OF CHEAPPERFUME FILLS THE / AIR. YOU KNOW / YOU'VE SMELLED / T...
Text10Message0B:
    INCBIN "../../res/text/US/banks/10.bin", $4c7, $10
jr_010_44d7:
    INCBIN "../../res/text/US/banks/10.bin", $4d7, $f
jr_010_44e6:
    INCBIN "../../res/text/US/banks/10.bin", $4e6, $35
jr_010_451b:
    INCBIN "../../res/text/US/banks/10.bin", $51b, $9
jr_010_4524:
    INCBIN "../../res/text/US/banks/10.bin", $524, $36
jr_010_455a:
    INCBIN "../../res/text/US/banks/10.bin", $55a, $2b
; IT'S A FULL LENGTHWALL MIRROR.[END]
Text10Message0C:
    INCBIN "../../res/text/US/banks/10.bin", $585, $1f
jr_010_45a4:
; IT'S A RATHER / EXPENSIVE LOOKING / LAMP.[END]
Text10Message0D:
    INCBIN "../../res/text/US/banks/10.bin", $5a4, $1f
jr_010_45c3:
    INCBIN "../../res/text/US/banks/10.bin", $5c3, $7
; IT'S A BED THAT / MISS VICKERS IS / LYING ON.[END]
Text10Message0E:
    INCBIN "../../res/text/US/banks/10.bin", $5ca, $2a
; THE WOMAN IS A / REAL LOOKER![PAGE] / YOU KNOW YOU'VE / SEEN HER BEFORE. / AND FROM WHAT YOU / REMEMBER, SHE'...
Text10Message0F:
    INCBIN "../../res/text/US/banks/10.bin", $5f4, $1
jr_010_45f5:
    INCBIN "../../res/text/US/banks/10.bin", $5f5, $1e
jr_010_4613:
    INCBIN "../../res/text/US/banks/10.bin", $613, $d
jr_010_4620:
    INCBIN "../../res/text/US/banks/10.bin", $620, $2e
jr_010_464e:
    INCBIN "../../res/text/US/banks/10.bin", $64e, $1
jr_010_464f:
    INCBIN "../../res/text/US/banks/10.bin", $64f, $14
; IT'S A PAIR OF / READING GLASSES.[END]
Text10Message10:
    INCBIN "../../res/text/US/banks/10.bin", $663, $20
; IT'S A BALL-POINT / PEN.[END]
Text10Message11:
    INCBIN "../../res/text/US/banks/10.bin", $683, $17
; IT LOOKS TO BE A / BLANK NOTEPAD.[PAGE] / YOU NOTICE THAT / THE TOP SHEET OF / THE PAD HAS MANY / INDENTATION...
Text10Message12:
    INCBIN "../../res/text/US/banks/10.bin", $69a, $8
jr_010_46a2:
    INCBIN "../../res/text/US/banks/10.bin", $6a2, $28
jr_010_46ca:
    INCBIN "../../res/text/US/banks/10.bin", $6ca, $c
jr_010_46d6:
    INCBIN "../../res/text/US/banks/10.bin", $6d6, $2a
; NOTHING HAPPENS / WHEN YOU USE THE / PEN.[PAGE] / IT MUST BE OUT / OF INK.[END]
Text10Message13:
    INCBIN "../../res/text/US/banks/10.bin", $700, $9
jr_010_4709:
    INCBIN "../../res/text/US/banks/10.bin", $709, $34
; YOU USE THE PENCILTO SHADE OVER / THE INDENTATIONS / ON THE PAD... YES,YOU CAN NOW READ / WHAT WAS WRITTEN / ...
Text10Message14:
    INCBIN "../../res/text/US/banks/10.bin", $73d, $5
jr_010_4742:
    INCBIN "../../res/text/US/banks/10.bin", $742, $b
jr_010_474d:
    INCBIN "../../res/text/US/banks/10.bin", $74d, $35
jr_010_4782:
    INCBIN "../../res/text/US/banks/10.bin", $782, $e
jr_010_4790:
    INCBIN "../../res/text/US/banks/10.bin", $790, $6
jr_010_4796:
    INCBIN "../../res/text/US/banks/10.bin", $796, $4
jr_010_479a:
    INCBIN "../../res/text/US/banks/10.bin", $79a, $1f
; "- TIMETABLE -[PAGE] / 2:15 AM: / BE SURE JOE'S / PLACE IS CLOSED UPAND EVERYONE IS / GONE.[PAGE] / 2:30 AM: ...
Text10Message15:
    INCBIN "../../res/text/US/banks/10.bin", $7b9, $6a
jr_010_4823:
    INCBIN "../../res/text/US/banks/10.bin", $823, $3
jr_010_4826:
    INCBIN "../../res/text/US/banks/10.bin", $826, $19
jr_010_483f:
    INCBIN "../../res/text/US/banks/10.bin", $83f, $37
jr_010_4876:
    INCBIN "../../res/text/US/banks/10.bin", $876, $3a
jr_010_48b0:
    INCBIN "../../res/text/US/banks/10.bin", $8b0, $1
jr_010_48b1:
    INCBIN "../../res/text/US/banks/10.bin", $8b1, $14
jr_010_48c5:
    INCBIN "../../res/text/US/banks/10.bin", $8c5, $1c
jr_010_48e1:
    INCBIN "../../res/text/US/banks/10.bin", $8e1, $1c
jr_010_48fd:
    INCBIN "../../res/text/US/banks/10.bin", $8fd, $3e
jr_010_493b:
    INCBIN "../../res/text/US/banks/10.bin", $93b, $39
jr_010_4974:
    INCBIN "../../res/text/US/banks/10.bin", $974, $d
jr_010_4981:
    INCBIN "../../res/text/US/banks/10.bin", $981, $33
jr_010_49b4:
    INCBIN "../../res/text/US/banks/10.bin", $9b4, $6
jr_010_49ba:
    INCBIN "../../res/text/US/banks/10.bin", $9ba, $45
jr_010_49ff:
    INCBIN "../../res/text/US/banks/10.bin", $9ff, $48
jr_010_4a47:
    INCBIN "../../res/text/US/banks/10.bin", $a47, $20
jr_010_4a67:
    INCBIN "../../res/text/US/banks/10.bin", $a67, $15
jr_010_4a7c:
    INCBIN "../../res/text/US/banks/10.bin", $a7c, $3
jr_010_4a7f:
    INCBIN "../../res/text/US/banks/10.bin", $a7f, $25
jr_010_4aa4:
    INCBIN "../../res/text/US/banks/10.bin", $aa4, $12
jr_010_4ab6:
    INCBIN "../../res/text/US/banks/10.bin", $ab6, $6
jr_010_4abc:
    INCBIN "../../res/text/US/banks/10.bin", $abc, $1e
jr_010_4ada:
    INCBIN "../../res/text/US/banks/10.bin", $ada, $a
jr_010_4ae4:
    INCBIN "../../res/text/US/banks/10.bin", $ae4, $b
jr_010_4aef:
    INCBIN "../../res/text/US/banks/10.bin", $aef, $37
jr_010_4b26:
    INCBIN "../../res/text/US/banks/10.bin", $b26, $20
jr_010_4b46:
    INCBIN "../../res/text/US/banks/10.bin", $b46, $32
jr_010_4b78:
    INCBIN "../../res/text/US/banks/10.bin", $b78, $1e
; THE WOMAN REACTS / TO THE MEDICINE ASIT TAKES EFFECT.[PAGE] / SHE BEGINS TO / SLUR, "YOU DON'T / OWN ME JOEY!...
Text10Message16:
    INCBIN "../../res/text/US/banks/10.bin", $b96, $1f
jr_010_4bb5:
    INCBIN "../../res/text/US/banks/10.bin", $bb5, $31
jr_010_4be6:
    INCBIN "../../res/text/US/banks/10.bin", $be6, $31
jr_010_4c17:
    INCBIN "../../res/text/US/banks/10.bin", $c17, $5
jr_010_4c1c:
    INCBIN "../../res/text/US/banks/10.bin", $c1c, $1a
jr_010_4c36:
    INCBIN "../../res/text/US/banks/10.bin", $c36, $38
jr_010_4c6e:
    INCBIN "../../res/text/US/banks/10.bin", $c6e, $18
jr_010_4c86:
    INCBIN "../../res/text/US/banks/10.bin", $c86, $28
jr_010_4cae:
    INCBIN "../../res/text/US/banks/10.bin", $cae, $23
; THIS SMALLER / BEDROOM MUST BE / THE GUESTROOM.[END]
Text10Message17:
    INCBIN "../../res/text/US/banks/10.bin", $cd1, $5
jr_010_4cd6:
    INCBIN "../../res/text/US/banks/10.bin", $cd6, $1a
jr_010_4cf0:
    INCBIN "../../res/text/US/banks/10.bin", $cf0, $d
; YOU VAGUELY RECALLA THREAT WHEN YOU / GOT SIEGEL'S / LETTER.[PAGE] / YOU FIGURED IT / MIGHT BE A TRAP / BUT Y...
Text10Message18:
    INCBIN "../../res/text/US/banks/10.bin", $cfd, $10
jr_010_4d0d:
    INCBIN "../../res/text/US/banks/10.bin", $d0d, $f
jr_010_4d1c:
    INCBIN "../../res/text/US/banks/10.bin", $d1c, $7
jr_010_4d23:
    INCBIN "../../res/text/US/banks/10.bin", $d23, $a
jr_010_4d2d:
    INCBIN "../../res/text/US/banks/10.bin", $d2d, $19
jr_010_4d46:
    INCBIN "../../res/text/US/banks/10.bin", $d46, $23
jr_010_4d69:
    INCBIN "../../res/text/US/banks/10.bin", $d69, $2f
jr_010_4d98:
    INCBIN "../../res/text/US/banks/10.bin", $d98, $17
jr_010_4daf:
    INCBIN "../../res/text/US/banks/10.bin", $daf, $e
; SUDDENLY, IT COMESBACK TO YOU...[PAGE] / YOU REMEMBER GOINGTO JOE'S PLACE / AROUND 2:45 IN THEMORNING JUST AS...
Text10Message19:
    INCBIN "../../res/text/US/banks/10.bin", $dbd, $1f
jr_010_4ddc:
    INCBIN "../../res/text/US/banks/10.bin", $ddc, $b
jr_010_4de7:
    INCBIN "../../res/text/US/banks/10.bin", $de7, $4
jr_010_4deb:
    INCBIN "../../res/text/US/banks/10.bin", $deb, $f
jr_010_4dfa:
    INCBIN "../../res/text/US/banks/10.bin", $dfa, $2
jr_010_4dfc:
    INCBIN "../../res/text/US/banks/10.bin", $dfc, $58
jr_010_4e54:
    INCBIN "../../res/text/US/banks/10.bin", $e54, $39
; THE MEDREZINE / APPEARS TO / BE HAVING A RATHERADVERSE EFFECT ON / THE SLEEPING / FORM.[PAGE] / YOU HEAR A SH...
Text10Message1A:
    INCBIN "../../res/text/US/banks/10.bin", $e8d, $1f
jr_010_4eac:
    INCBIN "../../res/text/US/banks/10.bin", $eac, $41
jr_010_4eed:
    INCBIN "../../res/text/US/banks/10.bin", $eed, $c
jr_010_4ef9:
    INCBIN "../../res/text/US/banks/10.bin", $ef9, $15
; YOU PULL THE / TRIGGER AND SHOOT / YOUR GUN.[PAGE] / A PASSERBY RUNS / FOR COVER AND / BEGINS YELLING FORTHE ...
Text10Message1B:
    INCBIN "../../res/text/US/banks/10.bin", $f0e, $1f
jr_010_4f2d:
    INCBIN "../../res/text/US/banks/10.bin", $f2d, $10
jr_010_4f3d:
    INCBIN "../../res/text/US/banks/10.bin", $f3d, $16
jr_010_4f53:
    INCBIN "../../res/text/US/banks/10.bin", $f53, $3a
jr_010_4f8d:
    INCBIN "../../res/text/US/banks/10.bin", $f8d, $3
jr_010_4f90:
    INCBIN "../../res/text/US/banks/10.bin", $f90, $5
; THERE'S ABSOLUTELYNO CHANGE.[PAGE] / THE WOMAN IS / STILL SLEEPING.[END]
Text10Message1C:
    INCBIN "../../res/text/US/banks/10.bin", $f95, $6
jr_010_4f9b:
    INCBIN "../../res/text/US/banks/10.bin", $f9b, $19
jr_010_4fb4:
    INCBIN "../../res/text/US/banks/10.bin", $fb4, $1
jr_010_4fb5:
    INCBIN "../../res/text/US/banks/10.bin", $fb5, $1a
; THROUGH YOUR FOG, / YOU WONDER WHAT'S / GOING ON?[PAGE] / AND WHAT ARE YOU / DOING WITH THIS / CORPSE![END]
Text10Message1D:
    INCBIN "../../res/text/US/banks/10.bin", $fcf, $18
jr_010_4fe7:
    INCBIN "../../res/text/US/banks/10.bin", $fe7, $7
jr_010_4fee:
    INCBIN "../../res/text/US/banks/10.bin", $fee, $3
jr_010_4ff1:
    INCBIN "../../res/text/US/banks/10.bin", $ff1, $28
jr_010_5019:
    INCBIN "../../res/text/US/banks/10.bin", $1019, $1
jr_010_501a:
    INCBIN "../../res/text/US/banks/10.bin", $101a, $c
; YEP, YOU DID OWE / SIEGEL A LOT OF / MONEY![END]
Text10Message1E:
    INCBIN "../../res/text/US/banks/10.bin", $1026, $15
jr_010_503b:
    INCBIN "../../res/text/US/banks/10.bin", $103b, $13
; A GRAND SURE AIN'TCHICKEN FEED![END]
Text10Message1F:
    INCBIN "../../res/text/US/banks/10.bin", $104e, $20
; SUDDENLY, A MUGGERJUMPS OUT IN FRONTOF YOU![PAGE] / "MA ALWAYS TOLD MEIT WAS WRONG TA / STEAL.[PAGE] / SHE AL...
Text10Message20:
    INCBIN "../../res/text/US/banks/10.bin", $106e, $6
jr_010_5074:
    INCBIN "../../res/text/US/banks/10.bin", $1074, $28
jr_010_509c:
    INCBIN "../../res/text/US/banks/10.bin", $109c, $9
jr_010_50a5:
    INCBIN "../../res/text/US/banks/10.bin", $10a5, $3a
jr_010_50df:
    INCBIN "../../res/text/US/banks/10.bin", $10df, $38
; HE ACCEPTS YOUR / KIND OFFER WITH / HIS MOTHER'S / THANKS.[PAGE] / YOU WATCH AS HE / SKIPS AWAY WITH A / HOP ...
Text10Message21:
    INCBIN "../../res/text/US/banks/10.bin", $1117, $5
jr_010_511c:
    INCBIN "../../res/text/US/banks/10.bin", $111c, $40
jr_010_515c:
    INCBIN "../../res/text/US/banks/10.bin", $115c, $24
; SOCKO![PAGE] / THE MUGGER POUNCESON YOU WITH MOVES / AS FAST AS A CAT![PAGE] / A LEFT, A RIGHT / AND A ROUNDH...
Text10Message22:
    INCBIN "../../res/text/US/banks/10.bin", $1180, $1
jr_010_5181:
    INCBIN "../../res/text/US/banks/10.bin", $1181, $1e
jr_010_519f:
    INCBIN "../../res/text/US/banks/10.bin", $119f, $d
jr_010_51ac:
    INCBIN "../../res/text/US/banks/10.bin", $11ac, $43
jr_010_51ef:
    INCBIN "../../res/text/US/banks/10.bin", $11ef, $7
; "THIS IS SMALL / CHANGE!" THE / MUGGER YELLS![PAGE] / HE UNLOADS A / WICKED LEFT AND / CATCHES YOU RIGHT / ON...
Text10Message23:
    INCBIN "../../res/text/US/banks/10.bin", $11f6, $5f
jr_010_5255:
    INCBIN "../../res/text/US/banks/10.bin", $1255, $33
jr_010_5288:
    INCBIN "../../res/text/US/banks/10.bin", $1288, $f
jr_010_5297:
    INCBIN "../../res/text/US/banks/10.bin", $1297, $18
jr_010_52af:
    INCBIN "../../res/text/US/banks/10.bin", $12af, $4
; "ARE YOU KIDDING?"THE MUGGER SAYS / AND THEN SLUGS YOUIN THE FACE BEFOREYOU CAN ANSWER.[PAGE] / STARS EXPLODE...
Text10Message24:
    INCBIN "../../res/text/US/banks/10.bin", $12b3, $15
jr_010_52c8:
    INCBIN "../../res/text/US/banks/10.bin", $12c8, $1e
jr_010_52e6:
    INCBIN "../../res/text/US/banks/10.bin", $12e6, $5
jr_010_52eb:
    INCBIN "../../res/text/US/banks/10.bin", $12eb, $1e
jr_010_5309:
    INCBIN "../../res/text/US/banks/10.bin", $1309, $22
jr_010_532b:
    INCBIN "../../res/text/US/banks/10.bin", $132b, $9
; YOU SHAKE YOUR / HEAD GROGGILY AS / YOU GET UP.[PAGE] / YOU NOTICE THE / MUGGER IS NOW GONEAS YOU CHECK YOUR ...
Text10Message25:
    INCBIN "../../res/text/US/banks/10.bin", $1334, $10
jr_010_5344:
    INCBIN "../../res/text/US/banks/10.bin", $1344, $a
jr_010_534e:
    INCBIN "../../res/text/US/banks/10.bin", $134e, $16
jr_010_5364:
    INCBIN "../../res/text/US/banks/10.bin", $1364, $7
jr_010_536b:
    INCBIN "../../res/text/US/banks/10.bin", $136b, $5
jr_010_5370:
    INCBIN "../../res/text/US/banks/10.bin", $1370, $c
jr_010_537c:
    INCBIN "../../res/text/US/banks/10.bin", $137c, $18
jr_010_5394:
    INCBIN "../../res/text/US/banks/10.bin", $1394, $8
; HE SAYS, / "GO ON AND TAKE / ONE. THEN YOU CAN / PAY ME!"[END]
Text10Message26:
    INCBIN "../../res/text/US/banks/10.bin", $139c, $2
jr_010_539e:
    INCBIN "../../res/text/US/banks/10.bin", $139e, $17
jr_010_53b5:
    INCBIN "../../res/text/US/banks/10.bin", $13b5, $6
jr_010_53bb:
    INCBIN "../../res/text/US/banks/10.bin", $13bb, $15
; YOU CURSE YOUR / LUCK AS YOU / DISCOVER THERE IS / NOT A PENNY LEFT.[PAGE] / HE TOOK / EVERYTHING![END]
Text10Message27:
    INCBIN "../../res/text/US/banks/10.bin", $13d0, $4
jr_010_53d4:
    INCBIN "../../res/text/US/banks/10.bin", $13d4, $c
jr_010_53e0:
    INCBIN "../../res/text/US/banks/10.bin", $13e0, $5
jr_010_53e5:
    INCBIN "../../res/text/US/banks/10.bin", $13e5, $5
jr_010_53ea:
    INCBIN "../../res/text/US/banks/10.bin", $13ea, $d
jr_010_53f7:
    INCBIN "../../res/text/US/banks/10.bin", $13f7, $2c
jr_010_5423:
; ...GOOD JOB.[PAGE] / WHAT A GREAT WAY / TO GO OUT WITH / A BANG![PAGE] / AND TO THINK YOU / HAD SO MANY DREAM...
Text10Message28:
    INCBIN "../../res/text/US/banks/10.bin", $1423, $8
jr_010_542b:
    INCBIN "../../res/text/US/banks/10.bin", $142b, $4a
jr_010_5475:
    INCBIN "../../res/text/US/banks/10.bin", $1475, $17
; NOTHING SEEMS TO / BE MISSING.[END]
Text10Message29:
    INCBIN "../../res/text/US/banks/10.bin", $148c, $3
jr_010_548f:
    INCBIN "../../res/text/US/banks/10.bin", $148f, $1a
; YOU SHOOT THE / MUGGER ONLY TO / HAVE THE COPS SHOWUP MOMENTS LATER.[PAGE] / BOY, WHERE WERE / THEY A FEW MIN...
Text10Message2A:
    INCBIN "../../res/text/US/banks/10.bin", $14a9, $10
jr_010_54b9:
    INCBIN "../../res/text/US/banks/10.bin", $14b9, $f
jr_010_54c8:
    INCBIN "../../res/text/US/banks/10.bin", $14c8, $51
jr_010_5519:
    INCBIN "../../res/text/US/banks/10.bin", $1519, $2b
jr_010_5544:
    INCBIN "../../res/text/US/banks/10.bin", $1544, $1
jr_010_5545:
    INCBIN "../../res/text/US/banks/10.bin", $1545, $57
; A MUGGER BLOCKS / YOUR WAY. HE WANTSALL OF YOUR MONEY![PAGE] / YOU PONDER THE / WISDOM OF WHAT TO / DO NEXT.....
Text10Message2B:
    INCBIN "../../res/text/US/banks/10.bin", $159c, $20
jr_010_55bc:
    INCBIN "../../res/text/US/banks/10.bin", $15bc, $19
jr_010_55d5:
    INCBIN "../../res/text/US/banks/10.bin", $15d5, $22
jr_010_55f7:
    INCBIN "../../res/text/US/banks/10.bin", $15f7, $6
; THE MAN TAKES YOURMONEY AND SKIPS / AWAY SAYING, / "HA HA, THE GUN / WASN'T EVEN / LOADED!"[END]
Text10Message2C:
    INCBIN "../../res/text/US/banks/10.bin", $15fd, $1e
jr_010_561b:
    INCBIN "../../res/text/US/banks/10.bin", $161b, $14
jr_010_562f:
    INCBIN "../../res/text/US/banks/10.bin", $162f, $1
jr_010_5630:
    INCBIN "../../res/text/US/banks/10.bin", $1630, $e
jr_010_563e:
    INCBIN "../../res/text/US/banks/10.bin", $163e, $13
; "YOU'RE HOLDING / OUT ON ME!" / THE MAN YELLS AS / HE EMPTIES HIS GUNINTO YOU![END]
Text10Message2D:
    INCBIN "../../res/text/US/banks/10.bin", $1651, $2a
jr_010_567b:
    INCBIN "../../res/text/US/banks/10.bin", $167b, $1f
; YOU WERE A BIT / SLOW ON THE / TRIGGER.[PAGE] / HE SHOT YOU FIRST.[END]
Text10Message2E:
    INCBIN "../../res/text/US/banks/10.bin", $169a, $b
jr_010_56a5:
    INCBIN "../../res/text/US/banks/10.bin", $16a5, $5
jr_010_56aa:
    INCBIN "../../res/text/US/banks/10.bin", $16aa, $27
; SOCKO![PAGE] / A QUICK JAB TO / THE MUGGER'S EYE / STUNS HIM.[PAGE] / HE RUNS DOWN THE / STREET SHOUTING, / "...
Text10Message2F:
    INCBIN "../../res/text/US/banks/10.bin", $16d1, $1f
jr_010_56f0:
    INCBIN "../../res/text/US/banks/10.bin", $16f0, $b
jr_010_56fb:
    INCBIN "../../res/text/US/banks/10.bin", $16fb, $3a
; THE MUGGER'S GOT / AN ITCHY TRIGGER / FINGER AND LETS / YOU HAVE IT.[END]
Text10Message30:
    INCBIN "../../res/text/US/banks/10.bin", $1735, $34
jr_010_5769:
    INCBIN "../../res/text/US/banks/10.bin", $1769, $b
; THE MUGGER BLOCKS / YOUR WAY.[PAGE] / HIS BLACK EYE / SHINES AS A / SOUVENIR OF YOUR / LAST ENCOUNTER.[PAGE] ...
Text10Message31:
    INCBIN "../../res/text/US/banks/10.bin", $1774, $3
jr_010_5777:
    INCBIN "../../res/text/US/banks/10.bin", $1777, $38
jr_010_57af:
    INCBIN "../../res/text/US/banks/10.bin", $17af, $17
jr_010_57c6:
    INCBIN "../../res/text/US/banks/10.bin", $17c6, $47
jr_010_580d:
    INCBIN "../../res/text/US/banks/10.bin", $180d, $11
jr_010_581e:
    INCBIN "../../res/text/US/banks/10.bin", $181e, $2e
; SOCKO![PAGE] / A SWIFT JAB TO / THE MUGGER'S LEFT / EYE SENDS HIM / REELING BACK / IN PAIN.[PAGE] / HE QUICKL...
Text10Message32:
    INCBIN "../../res/text/US/banks/10.bin", $184c, $1f
jr_010_586b:
    INCBIN "../../res/text/US/banks/10.bin", $186b, $10
jr_010_587b:
    INCBIN "../../res/text/US/banks/10.bin", $187b, $33
; YOU GIVE HIM $20.[PAGE] / HE GRABS IT AND / RUNS AWAY SAYING, / "ABOUT TIME YOU / WISED UP!"[END]
Text10Message33:
    INCBIN "../../res/text/US/banks/10.bin", $18ae, $f
jr_010_58bd:
    INCBIN "../../res/text/US/banks/10.bin", $18bd, $10
jr_010_58cd:
    INCBIN "../../res/text/US/banks/10.bin", $18cd, $12
jr_010_58df:
    INCBIN "../../res/text/US/banks/10.bin", $18df, $15
jr_010_58f4:
    INCBIN "../../res/text/US/banks/10.bin", $18f4, $9
; THE MUGGER BLOCKS / YOUR WAY AGAIN, / THIS TIME WITH / TWO NASTY SHINERS.[PAGE] / IN A MENACING TONEHE THREAT...
Text10Message34:
    INCBIN "../../res/text/US/banks/10.bin", $18fd, $1
jr_010_58fe:
    INCBIN "../../res/text/US/banks/10.bin", $18fe, $21
jr_010_591f:
    INCBIN "../../res/text/US/banks/10.bin", $191f, $13
jr_010_5932:
    INCBIN "../../res/text/US/banks/10.bin", $1932, $20
jr_010_5952:
    INCBIN "../../res/text/US/banks/10.bin", $1952, $25
; SOCKO![PAGE] / A LIGHTNING FAST / FIST HITS HIM / IN THE NOSE.[PAGE] / HE STUMBLES FOR / A MOMENT AND THEN / ...
Text10Message35:
    INCBIN "../../res/text/US/banks/10.bin", $1977, $3
jr_010_597a:
    INCBIN "../../res/text/US/banks/10.bin", $197a, $4c
jr_010_59c6:
    INCBIN "../../res/text/US/banks/10.bin", $19c6, $17
; THE MUGGER BLOCKS / YOUR WAY ONCE / AGAIN, OBVIOUSLY / SUFFERING FROM / A BROKEN NOSE.[PAGE] / HE SEEMS RATHE...
Text10Message36:
    INCBIN "../../res/text/US/banks/10.bin", $19dd, $35
jr_010_5a12:
    INCBIN "../../res/text/US/banks/10.bin", $1a12, $4a
jr_010_5a5c:
    INCBIN "../../res/text/US/banks/10.bin", $1a5c, $2f
jr_010_5a8b:
    INCBIN "../../res/text/US/banks/10.bin", $1a8b, $2
jr_010_5a8d:
    INCBIN "../../res/text/US/banks/10.bin", $1a8d, $19
jr_010_5aa6:
    INCBIN "../../res/text/US/banks/10.bin", $1aa6, $5
jr_010_5aab:
    INCBIN "../../res/text/US/banks/10.bin", $1aab, $4
; BLAM! BLAM! BLAM![PAGE] / THE MUGGER BLOWS / YOU AWAY / REPEATEDLY![PAGE] / SEEMS HE WAS TIREDOF ARGUING WITH...
Text10Message37:
    INCBIN "../../res/text/US/banks/10.bin", $1aaf, $33
jr_010_5ae2:
    INCBIN "../../res/text/US/banks/10.bin", $1ae2, $16
jr_010_5af8:
    INCBIN "../../res/text/US/banks/10.bin", $1af8, $1d
; YOU WONDER WHY YOUBOTHERED WASTING / THE BULLETS?[END]
Text10Message38:
    INCBIN "../../res/text/US/banks/10.bin", $1b15, $4
jr_010_5b19:
    INCBIN "../../res/text/US/banks/10.bin", $1b19, $1b
jr_010_5b34:
    INCBIN "../../res/text/US/banks/10.bin", $1b34, $11
; YOU'RE IN THE / HANDS OF THE / POLICE.[PAGE] / THE EVIDENCE / YOU'VE BROUGHT TO / THEM PROVES TO BE / INTERES...
Text10Message39:
    INCBIN "../../res/text/US/banks/10.bin", $1b45, $10
jr_010_5b55:
    INCBIN "../../res/text/US/banks/10.bin", $1b55, $2f
jr_010_5b84:
    INCBIN "../../res/text/US/banks/10.bin", $1b84, $1
jr_010_5b85:
    INCBIN "../../res/text/US/banks/10.bin", $1b85, $46
jr_010_5bcb:
    INCBIN "../../res/text/US/banks/10.bin", $1bcb, $29
jr_010_5bf4:
    INCBIN "../../res/text/US/banks/10.bin", $1bf4, $8
jr_010_5bfc:
    INCBIN "../../res/text/US/banks/10.bin", $1bfc, $4a
jr_010_5c46:
    INCBIN "../../res/text/US/banks/10.bin", $1c46, $36
jr_010_5c7c:
    INCBIN "../../res/text/US/banks/10.bin", $1c7c, $d4
jr_010_5d50:
    INCBIN "../../res/text/US/banks/10.bin", $1d50, $5
jr_010_5d55:
    INCBIN "../../res/text/US/banks/10.bin", $1d55, $2e
jr_010_5d83:
    INCBIN "../../res/text/US/banks/10.bin", $1d83, $3e
jr_010_5dc1:
    INCBIN "../../res/text/US/banks/10.bin", $1dc1, $c
jr_010_5dcd:
    INCBIN "../../res/text/US/banks/10.bin", $1dcd, $65
jr_010_5e32:
    INCBIN "../../res/text/US/banks/10.bin", $1e32, $29
jr_010_5e5b:
    INCBIN "../../res/text/US/banks/10.bin", $1e5b, $2d
; CLICK! CUFFED BY / THE COPS.[PAGE] / YOUR STORY / INTERESTS THEM SO / THEY INVESTIGATE / THE MURDER AND THEKI...
Text10Message3A:
    INCBIN "../../res/text/US/banks/10.bin", $1e88, $d
jr_010_5e95:
    INCBIN "../../res/text/US/banks/10.bin", $1e95, $36
jr_010_5ecb:
    INCBIN "../../res/text/US/banks/10.bin", $1ecb, $14
jr_010_5edf:
    INCBIN "../../res/text/US/banks/10.bin", $1edf, $5c
jr_010_5f3b:
    INCBIN "../../res/text/US/banks/10.bin", $1f3b, $d
jr_010_5f48:
    INCBIN "../../res/text/US/banks/10.bin", $1f48, $5
jr_010_5f4d:
    INCBIN "../../res/text/US/banks/10.bin", $1f4d, $5
jr_010_5f52:
    INCBIN "../../res/text/US/banks/10.bin", $1f52, $18
jr_010_5f6a:
    INCBIN "../../res/text/US/banks/10.bin", $1f6a, $71
jr_010_5fdb:
    INCBIN "../../res/text/US/banks/10.bin", $1fdb, $2
jr_010_5fdd:
    INCBIN "../../res/text/US/banks/10.bin", $1fdd, $a
jr_010_5fe7:
    INCBIN "../../res/text/US/banks/10.bin", $1fe7, $1c
jr_010_6003:
    INCBIN "../../res/text/US/banks/10.bin", $2003, $18
jr_010_601b:
    INCBIN "../../res/text/US/banks/10.bin", $201b, $2f
jr_010_604a:
    INCBIN "../../res/text/US/banks/10.bin", $204a, $9
jr_010_6053:
    INCBIN "../../res/text/US/banks/10.bin", $2053, $50
jr_010_60a3:
    INCBIN "../../res/text/US/banks/10.bin", $20a3, $4
; CLICK! THE COPS / SNAP THE CUFFS ON / YOU![PAGE] / YOU ARE / QUESTIONED OVER / AND OVER ABOUT / YOUR WHEREABO...
Text10Message3B:
    INCBIN "../../res/text/US/banks/10.bin", $20a7, $32
jr_010_60d9:
    INCBIN "../../res/text/US/banks/10.bin", $20d9, $5
jr_010_60de:
    INCBIN "../../res/text/US/banks/10.bin", $20de, $27
jr_010_6105:
    INCBIN "../../res/text/US/banks/10.bin", $2105, $a6
jr_010_61ab:
    INCBIN "../../res/text/US/banks/10.bin", $21ab, $10
jr_010_61bb:
    INCBIN "../../res/text/US/banks/10.bin", $21bb, $2b
jr_010_61e6:
    INCBIN "../../res/text/US/banks/10.bin", $21e6, $1e
; THE SENTENCE / PASSED DOWN WAS / TEN YEARS IN / MAXIMUM SECURITY![PAGE] / YOUR CELL AWAITS / YOU AT JOLIET / ...
Text10Message3C:
    INCBIN "../../res/text/US/banks/10.bin", $2204, $1f
jr_010_6223:
    INCBIN "../../res/text/US/banks/10.bin", $2223, $8
jr_010_622b:
    INCBIN "../../res/text/US/banks/10.bin", $222b, $25
jr_010_6250:
    INCBIN "../../res/text/US/banks/10.bin", $2250, $11
jr_010_6261:
    INCBIN "../../res/text/US/banks/10.bin", $2261, $5
jr_010_6266:
    INCBIN "../../res/text/US/banks/10.bin", $2266, $12
; IF STERNWOOD AND / VICKERS DIDN'T / KILL SIEGEL AND / KIDNAP MRS. / STERNWOOD, THEN / YOU'RE THE NEXT / BEST ...
Text10Message3D:
    INCBIN "../../res/text/US/banks/10.bin", $2278, $15
jr_010_628d:
    INCBIN "../../res/text/US/banks/10.bin", $228d, $47
jr_010_62d4:
    INCBIN "../../res/text/US/banks/10.bin", $22d4, $2a
jr_010_62fe:
    INCBIN "../../res/text/US/banks/10.bin", $22fe, $1b
jr_010_6319:
    INCBIN "../../res/text/US/banks/10.bin", $2319, $19
jr_010_6332:
    INCBIN "../../res/text/US/banks/10.bin", $2332, $3
; YOU'RE GIVEN THREECONSECUTIVE LIFE / SENTENCES TO BEGINIMMEDIATELY![PAGE] / YOUR NOTORIETY IS / SHORT-LIVED A...
Text10Message3E:
    INCBIN "../../res/text/US/banks/10.bin", $2335, $1f
jr_010_6354:
    INCBIN "../../res/text/US/banks/10.bin", $2354, $49
jr_010_639d:
    INCBIN "../../res/text/US/banks/10.bin", $239d, $3
jr_010_63a0:
    INCBIN "../../res/text/US/banks/10.bin", $23a0, $1d
jr_010_63bd:
    INCBIN "../../res/text/US/banks/10.bin", $23bd, $15
jr_010_63d2:
    INCBIN "../../res/text/US/banks/10.bin", $23d2, $5
; IT'S A BOX OF / AMMO.[END]
Text10Message3F:
    INCBIN "../../res/text/US/banks/10.bin", $23d7, $1c29
