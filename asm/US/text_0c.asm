; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text0CMsgs0:
    db LOW(Text0CMessage00), HIGH(Text0CMessage00)
    db LOW(Text0CMessage01), HIGH(Text0CMessage01)
    db LOW(Text0CMessage02), HIGH(Text0CMessage02)
    db LOW(Text0CMessage03), HIGH(Text0CMessage03)
    db LOW(Text0CMessage04), HIGH(Text0CMessage04)
    db LOW(Text0CMessage05), HIGH(Text0CMessage05)
    db LOW(Text0CMessage06), HIGH(Text0CMessage06)
    db LOW(Text0CMessage07), HIGH(Text0CMessage07)
    db LOW(Text0CMessage08), HIGH(Text0CMessage08)
    db LOW(Text0CMessage09), HIGH(Text0CMessage09)
    db LOW(Text0CMessage0A), HIGH(Text0CMessage0A)
    db LOW(Text0CMessage0B), HIGH(Text0CMessage0B)
    db LOW(Text0CMessage0C), HIGH(Text0CMessage0C)
    db LOW(Text0CMessage0D), HIGH(Text0CMessage0D)
    db LOW(Text0CMessage0E), HIGH(Text0CMessage0E)
    db LOW(Text0CMessage0F), HIGH(Text0CMessage0F)
    db LOW(Text0CMessage10), HIGH(Text0CMessage10)
    db LOW(Text0CMessage11), HIGH(Text0CMessage11)
    db LOW(Text0CMessage12), HIGH(Text0CMessage12)
    db LOW(Text0CMessage13), HIGH(Text0CMessage13)
    db LOW(Text0CMessage14), HIGH(Text0CMessage14)
    db LOW(Text0CMessage15), HIGH(Text0CMessage15)
    db LOW(Text0CMessage16), HIGH(Text0CMessage16)
    db LOW(Text0CMessage17), HIGH(Text0CMessage17)
    db LOW(Text0CMessage18), HIGH(Text0CMessage18)
    db LOW(Text0CMessage19), HIGH(Text0CMessage19)
    db LOW(Text0CMessage1A), HIGH(Text0CMessage1A)
    db LOW(Text0CMessage1B), HIGH(Text0CMessage1B)
    db LOW(Text0CMessage1C), HIGH(Text0CMessage1C)
    db LOW(Text0CMessage1D), HIGH(Text0CMessage1D)
    db LOW(Text0CMessage1E), HIGH(Text0CMessage1E)
    db LOW(Text0CMessage1F), HIGH(Text0CMessage1F)
    db LOW(Text0CMessage20), HIGH(Text0CMessage20)
    db LOW(Text0CMessage21), HIGH(Text0CMessage21)
    db LOW(Text0CMessage22), HIGH(Text0CMessage22)
    db LOW(Text0CMessage23), HIGH(Text0CMessage23)
    db LOW(Text0CMessage24), HIGH(Text0CMessage24)
    db LOW(Text0CMessage25), HIGH(Text0CMessage25)
    db LOW(Text0CMessage26), HIGH(Text0CMessage26)
    db LOW(Text0CMessage27), HIGH(Text0CMessage27)
    db LOW(Text0CMessage28), HIGH(Text0CMessage28)
    db LOW(Text0CMessage29), HIGH(Text0CMessage29)
    db LOW(Text0CMessage2A), HIGH(Text0CMessage2A)
    db LOW(Text0CMessage2B), HIGH(Text0CMessage2B)
    db LOW(Text0CMessage2C), HIGH(Text0CMessage2C)
    db LOW(Text0CMessage2D), HIGH(Text0CMessage2D)
    db LOW(Text0CMessage2E), HIGH(Text0CMessage2E)
    db LOW(Text0CMessage2F), HIGH(Text0CMessage2F)
    db LOW(Text0CMessage30), HIGH(Text0CMessage30)
    db LOW(Text0CMessage31), HIGH(Text0CMessage31)
    db LOW(Text0CMessage32), HIGH(Text0CMessage32)
    db LOW(Text0CMessage33), HIGH(Text0CMessage33)
    db LOW(Text0CMessage34), HIGH(Text0CMessage34)
    db LOW(Text0CMessage35), HIGH(Text0CMessage35)
    db LOW(Text0CMessage36), HIGH(Text0CMessage36)
    db LOW(Text0CMessage37), HIGH(Text0CMessage37)
jr_00c_4070:
    db LOW(Text0CMessage38), HIGH(Text0CMessage38)
    db LOW(Text0CMessage39), HIGH(Text0CMessage39)
    db LOW(Text0CMessage3A), HIGH(Text0CMessage3A)
    db LOW(Text0CMessage3B), HIGH(Text0CMessage3B)
    db LOW(Text0CMessage3C), HIGH(Text0CMessage3C)
    db LOW(Text0CMessage3D), HIGH(Text0CMessage3D)
    db LOW(Text0CMessage3E)
jr_00c_407d:
    db HIGH(Text0CMessage3E)
    db LOW(Text0CMessage3F), HIGH(Text0CMessage3F)
; Sixty-four message pointers for one text group.
Text0CMsgs1:
    db LOW(Text0CMessage40), HIGH(Text0CMessage40)
    db LOW(Text0CMessage41), HIGH(Text0CMessage41)
    db LOW(Text0CMessage42), HIGH(Text0CMessage42)
    db LOW(Text0CMessage43), HIGH(Text0CMessage43)
    db LOW(Text0CMessage44), HIGH(Text0CMessage44)
    db LOW(Text0CMessage45), HIGH(Text0CMessage45)
    db LOW(Text0CMessage46), HIGH(Text0CMessage46)
    db LOW(Text0CMessage47), HIGH(Text0CMessage47)
    db LOW(Text0CMessage48), HIGH(Text0CMessage48)
    db LOW(Text0CMessage49), HIGH(Text0CMessage49)
    db LOW(Text0CMessage4A), HIGH(Text0CMessage4A)
    db LOW(Text0CMessage4B), HIGH(Text0CMessage4B)
    db LOW(Text0CMessage4C), HIGH(Text0CMessage4C)
    db LOW(Text0CMessage4D), HIGH(Text0CMessage4D)
    db LOW(Text0CMessage4E), HIGH(Text0CMessage4E)
    db LOW(Text0CMessage4F), HIGH(Text0CMessage4F)
    db LOW(Text0CMessage50), HIGH(Text0CMessage50)
    db LOW(Text0CMessage51), HIGH(Text0CMessage51)
    db LOW(Text0CMessage52), HIGH(Text0CMessage52)
    db LOW(Text0CMessage53), HIGH(Text0CMessage53)
    db LOW(Text0CMessage54), HIGH(Text0CMessage54)
    db LOW(Text0CMessage55), HIGH(Text0CMessage55)
    db LOW(Text0CMessage56), HIGH(Text0CMessage56)
    db LOW(Text0CMessage57), HIGH(Text0CMessage57)
    db LOW(Text0CMessage58), HIGH(Text0CMessage58)
    db LOW(Text0CMessage59), HIGH(Text0CMessage59)
    db LOW(Text0CMessage5A), HIGH(Text0CMessage5A)
    db LOW(Text0CMessage5B), HIGH(Text0CMessage5B)
    db LOW(Text0CMessage5C), HIGH(Text0CMessage5C)
    db LOW(Text0CMessage5D), HIGH(Text0CMessage5D)
    db LOW(Text0CMessage5E), HIGH(Text0CMessage5E)
    db LOW(Text0CMessage5F), HIGH(Text0CMessage5F)
    db LOW(Text0CMessage60), HIGH(Text0CMessage60)
    db LOW(Text0CMessage61), HIGH(Text0CMessage61)
    db LOW(Text0CMessage62), HIGH(Text0CMessage62)
    db LOW(Text0CMessage63), HIGH(Text0CMessage63)
    db LOW(Text0CMessage64), HIGH(Text0CMessage64)
    db LOW(Text0CMessage65), HIGH(Text0CMessage65)
    db LOW(Text0CMessage66), HIGH(Text0CMessage66)
    db LOW(Text0CMessage67), HIGH(Text0CMessage67)
    db LOW(Text0CMessage68), HIGH(Text0CMessage68)
    db LOW(Text0CMessage69), HIGH(Text0CMessage69)
    db LOW(Text0CMessage6A), HIGH(Text0CMessage6A)
    db LOW(Text0CMessage6B), HIGH(Text0CMessage6B)
    db LOW(Text0CMessage6C), HIGH(Text0CMessage6C)
    db LOW(Text0CMessage6D), HIGH(Text0CMessage6D)
    db LOW(Text0CMessage6E), HIGH(Text0CMessage6E)
    db LOW(Text0CMessage6F), HIGH(Text0CMessage6F)
    db LOW(Text0CMessage70), HIGH(Text0CMessage70)
    db LOW(Text0CMessage71), HIGH(Text0CMessage71)
    db LOW(Text0CMessage72), HIGH(Text0CMessage72)
    db LOW(Text0CMessage73), HIGH(Text0CMessage73)
    db LOW(Text0CMessage74), HIGH(Text0CMessage74)
    db LOW(Text0CMessage75), HIGH(Text0CMessage75)
    db LOW(Text0CMessage76), HIGH(Text0CMessage76)
    db LOW(Text0CMessage77), HIGH(Text0CMessage77)
    db LOW(Text0CMessage78), HIGH(Text0CMessage78)
    db LOW(Text0CMessage79), HIGH(Text0CMessage79)
    db LOW(Text0CMessage7A), HIGH(Text0CMessage7A)
    db LOW(Text0CMessage7B), HIGH(Text0CMessage7B)
    db LOW(Text0CMessage7C), HIGH(Text0CMessage7C)
    db LOW(Text0CMessage7D), HIGH(Text0CMessage7D)
    db LOW(Text0CMessage7E), HIGH(Text0CMessage7E)
    db LOW(Text0CMessage7F), HIGH(Text0CMessage7F)
; YOU AWAKE FROM A / DAZED STUPOR THAT / FEELS LIKE A VERY / BAD HEADACHE AFTERA LONG AND / EXTREMELY UNLUCKY /...
Text0CMessage00:
    INCBIN "../../res/text/US/banks/0c.bin", $100, $10
jr_00c_4110:
    INCBIN "../../res/text/US/banks/0c.bin", $110, $66
jr_00c_4176:
    INCBIN "../../res/text/US/banks/0c.bin", $176, $1f
jr_00c_4195:
    INCBIN "../../res/text/US/banks/0c.bin", $195, $1d
jr_00c_41b2:
    INCBIN "../../res/text/US/banks/0c.bin", $1b2, $38
jr_00c_41ea:
    INCBIN "../../res/text/US/banks/0c.bin", $1ea, $27
jr_00c_4211:
    INCBIN "../../res/text/US/banks/0c.bin", $211, $35
jr_00c_4246:
    INCBIN "../../res/text/US/banks/0c.bin", $246, $17
jr_00c_425d:
    INCBIN "../../res/text/US/banks/0c.bin", $25d, $d
jr_00c_426a:
    INCBIN "../../res/text/US/banks/0c.bin", $26a, $19
jr_00c_4283:
    INCBIN "../../res/text/US/banks/0c.bin", $283, $2
jr_00c_4285:
    INCBIN "../../res/text/US/banks/0c.bin", $285, $26
jr_00c_42ab:
    INCBIN "../../res/text/US/banks/0c.bin", $2ab, $1f
jr_00c_42ca:
    INCBIN "../../res/text/US/banks/0c.bin", $2ca, $20
jr_00c_42ea:
    INCBIN "../../res/text/US/banks/0c.bin", $2ea, $1e
jr_00c_4308:
    INCBIN "../../res/text/US/banks/0c.bin", $308, $4
jr_00c_430c:
    INCBIN "../../res/text/US/banks/0c.bin", $30c, $67
jr_00c_4373:
    INCBIN "../../res/text/US/banks/0c.bin", $373, $a
; IT'S A LIGHT BROWNTRENCH COAT THAT / MATCHES YOUR / TROUSERS.[END]
Text0CMessage01:
    INCBIN "../../res/text/US/banks/0c.bin", $37d, $3a
; YOU FEEL SOMETHINGIN THE POCKET OF / THE COAT.[END]
Text0CMessage02:
    INCBIN "../../res/text/US/banks/0c.bin", $3b7, $2d
; IT LOOKS LIKE / A TYPICAL CEILING / LIGHT.[END]
Text0CMessage03:
    INCBIN "../../res/text/US/banks/0c.bin", $3e4, $27
; IT'S A FULL ROLL / OF TOILET PAPER.[PAGE] / IT TENDS TO COME / IN HANDY IN / SURROUNDINGS LIKE / THESE.[END]
Text0CMessage04:
    INCBIN "../../res/text/US/banks/0c.bin", $40b, $1f
jr_00c_442a:
    INCBIN "../../res/text/US/banks/0c.bin", $42a, $37
jr_00c_4461:
    INCBIN "../../res/text/US/banks/0c.bin", $461, $2
; THE GLASS IS / EMPTY.[END]
Text0CMessage05:
    INCBIN "../../res/text/US/banks/0c.bin", $463, $14
; IT'S A GOLD PLATEDLIGHTER. VERY / NICE![PAGE] / YOU NOTICE THE / INITIALS "J.S." / ETCHED ON ITS / SIDE.[END]
Text0CMessage06:
    INCBIN "../../res/text/US/banks/0c.bin", $477, $b
jr_00c_4482:
    INCBIN "../../res/text/US/banks/0c.bin", $482, $49
jr_00c_44cb:
    INCBIN "../../res/text/US/banks/0c.bin", $4cb, $5
; THE SHINY GLINT OFA QUARTER CATCHES / THE LIGHT.[END]
Text0CMessage07:
    INCBIN "../../res/text/US/banks/0c.bin", $4d0, $1f
jr_00c_44ef:
    INCBIN "../../res/text/US/banks/0c.bin", $4ef, $10
; THERE'S NOTHING / PARTICULARLY / SPECIAL ABOUT THIS.38 SPECIAL.[END]
Text0CMessage08:
    INCBIN "../../res/text/US/banks/0c.bin", $4ff, $1f
jr_00c_451e:
    INCBIN "../../res/text/US/banks/0c.bin", $51e, $1d
; IT'S A .38 / SPECIAL ROUNDNOSE,LEAD BULLET.[END]
Text0CMessage09:
    INCBIN "../../res/text/US/banks/0c.bin", $53b, $1f
jr_00c_455a:
    INCBIN "../../res/text/US/banks/0c.bin", $55a, $9
jr_00c_4563:
    INCBIN "../../res/text/US/banks/0c.bin", $563, $2
; THE CABBY LOOKS / AT YOU AND SAYS, / "SORRY PAL, I / AIN'T GOT ANY / CHANGE![PAGE] / BUT YOU DON'T / HAVE TO ...
Text0CMessage0A:
    INCBIN "../../res/text/US/banks/0c.bin", $565, $12
jr_00c_4577:
    INCBIN "../../res/text/US/banks/0c.bin", $577, $d
jr_00c_4584:
    INCBIN "../../res/text/US/banks/0c.bin", $584, $4
jr_00c_4588:
    INCBIN "../../res/text/US/banks/0c.bin", $588, $36
jr_00c_45be:
    INCBIN "../../res/text/US/banks/0c.bin", $5be, $23
jr_00c_45e1:
    INCBIN "../../res/text/US/banks/0c.bin", $5e1, $2
; IT'S A CARD WITH / SEVERAL HOLES / PUNCHED INTO IT.[PAGE] / WRITTEN ACROSS THEBOTTOM ARE THE / WORDS, "PRIVAT...
Text0CMessage0B:
    INCBIN "../../res/text/US/banks/0c.bin", $5e3, $9
jr_00c_45ec:
    INCBIN "../../res/text/US/banks/0c.bin", $5ec, $1c
jr_00c_4608:
    INCBIN "../../res/text/US/banks/0c.bin", $608, $57
; YOU ARE UNABLE TO / PUT THEM ON.[PAGE] / THEY'RE TOO BIG.[END]
Text0CMessage0C:
    INCBIN "../../res/text/US/banks/0c.bin", $65f, $10
jr_00c_466f:
    INCBIN "../../res/text/US/banks/0c.bin", $66f, $20
; IT'S A VERY WORN / LEATHER WALLET.[PAGE] / YOU'D HATE TO BE / THE COW THAT IT / CAME FROM![END]
Text0CMessage0D:
    INCBIN "../../res/text/US/banks/0c.bin", $68f, $1e
jr_00c_46ad:
    INCBIN "../../res/text/US/banks/0c.bin", $6ad, $1
jr_00c_46ae:
    INCBIN "../../res/text/US/banks/0c.bin", $6ae, $1e
jr_00c_46cc:
    INCBIN "../../res/text/US/banks/0c.bin", $6cc, $10
; IT'S A PIECE OF / YOUR FAVORITE / CHEWING GUM.[END]
Text0CMessage0E:
    INCBIN "../../res/text/US/banks/0c.bin", $6dc, $20
jr_00c_46fc:
    INCBIN "../../res/text/US/banks/0c.bin", $6fc, $b
; IT'S A USED / HANDKERCHIEF WITH / THE INITIALS J.S. / EMBROIDERED ON IT.[END]
Text0CMessage0F:
    INCBIN "../../res/text/US/banks/0c.bin", $707, $1f
jr_00c_4726:
    INCBIN "../../res/text/US/banks/0c.bin", $726, $24
; IT LOOKS LIKE / A PAIR OF / SUNGLASSES.[PAGE] / YOU THINK YOU'D / CUT A DASHING / FIGURE WEARING / THEM AT NI...
Text0CMessage10:
    INCBIN "../../res/text/US/banks/0c.bin", $74a, $a
jr_00c_4754:
    INCBIN "../../res/text/US/banks/0c.bin", $754, $2a
jr_00c_477e:
    INCBIN "../../res/text/US/banks/0c.bin", $77e, $a
jr_00c_4788:
    INCBIN "../../res/text/US/banks/0c.bin", $788, $22
; IT'S A KEY WITH / THE WORD, / "OFFICE," / INSCRIBED ON IT.[END]
Text0CMessage11:
    INCBIN "../../res/text/US/banks/0c.bin", $7aa, $35
; YOU'RE IN A TOILETSTALL. THE STENCH / IS MORE THAN YOU / CAN HANDLE![END]
Text0CMessage12:
    INCBIN "../../res/text/US/banks/0c.bin", $7df, $10
jr_00c_47ef:
    INCBIN "../../res/text/US/banks/0c.bin", $7ef, $23
jr_00c_4812:
    INCBIN "../../res/text/US/banks/0c.bin", $812, $e
jr_00c_4820:
; WHAT DO YOU THINK / YOU ARE DOING?[END]
Text0CMessage13:
    INCBIN "../../res/text/US/banks/0c.bin", $820, $21
; YOU CAN'T DO THAT.[END]
Text0CMessage14:
    INCBIN "../../res/text/US/banks/0c.bin", $841, $10
jr_00c_4851:
    INCBIN "../../res/text/US/banks/0c.bin", $851, $3
; YOU POP THE GUM / INTO YOUR MOUTH / AND BEGIN CHEWING.[PAGE] / AFTER A MOMENT IT / LOSES ITS FLAVOR.[END]
Text0CMessage15:
    INCBIN "../../res/text/US/banks/0c.bin", $854, $10
jr_00c_4864:
    INCBIN "../../res/text/US/banks/0c.bin", $864, $f
jr_00c_4873:
    INCBIN "../../res/text/US/banks/0c.bin", $873, $38
; YOU CAN'T TAKE IT.[END]
Text0CMessage16:
    INCBIN "../../res/text/US/banks/0c.bin", $8ab, $13
; THERE'S NOTHING / MORE HANDY THAN / A .38 AT YOUR / SIDE![END]
Text0CMessage17:
    INCBIN "../../res/text/US/banks/0c.bin", $8be, $c
jr_00c_48ca:
    INCBIN "../../res/text/US/banks/0c.bin", $8ca, $28
; THE CABBY LOOKS / AT YOU AND SAYS, / "SORRY PAL, I / AIN'T GOT ANY / CHANGE!"[END]
Text0CMessage18:
    INCBIN "../../res/text/US/banks/0c.bin", $8f2, $1
jr_00c_48f3:
    INCBIN "../../res/text/US/banks/0c.bin", $8f3, $4
jr_00c_48f7:
    INCBIN "../../res/text/US/banks/0c.bin", $8f7, $1e
jr_00c_4915:
    INCBIN "../../res/text/US/banks/0c.bin", $915, $23
; "WAIT A MINUTE," / YOU MUMBLE AS YOU / STOP YOURSELF.[PAGE] / "IF I LEAVE THIS / HERE, SOMEONE IS / SURE TO F...
Text0CMessage19:
    INCBIN "../../res/text/US/banks/0c.bin", $938, $14
jr_00c_494c:
    INCBIN "../../res/text/US/banks/0c.bin", $94c, $d
jr_00c_4959:
    INCBIN "../../res/text/US/banks/0c.bin", $959, $e
jr_00c_4967:
    INCBIN "../../res/text/US/banks/0c.bin", $967, $56
; WHAM! YOUR HAND / IMPACTS WITH A / SHARP STAB OF PAINAND THEN GOES / NUMB![END]
Text0CMessage1A:
    INCBIN "../../res/text/US/banks/0c.bin", $9bd, $16
jr_00c_49d3:
    INCBIN "../../res/text/US/banks/0c.bin", $9d3, $2f
; WHO ARE YOU / SPEAKING TO?[END]
Text0CMessage1B:
    INCBIN "../../res/text/US/banks/0c.bin", $a02, $18
jr_00c_4a1a:
    INCBIN "../../res/text/US/banks/0c.bin", $a1a, $1
; YOUR VISION SWIMS / AND YOU STUMBLE / AWKWARDLY![PAGE] / CATCHING YOURSELF,YOU RUB YOUR / THROBBING TEMPLES![...
Text0CMessage1C:
    INCBIN "../../res/text/US/banks/0c.bin", $a1b, $10
jr_00c_4a2b:
    INCBIN "../../res/text/US/banks/0c.bin", $a2b, $36
jr_00c_4a61:
    INCBIN "../../res/text/US/banks/0c.bin", $a61, $11
jr_00c_4a72:
    INCBIN "../../res/text/US/banks/0c.bin", $a72, $28
jr_00c_4a9a:
    INCBIN "../../res/text/US/banks/0c.bin", $a9a, $24
jr_00c_4abe:
    INCBIN "../../res/text/US/banks/0c.bin", $abe, $19
jr_00c_4ad7:
    INCBIN "../../res/text/US/banks/0c.bin", $ad7, $7
jr_00c_4ade:
    INCBIN "../../res/text/US/banks/0c.bin", $ade, $f
jr_00c_4aed:
    INCBIN "../../res/text/US/banks/0c.bin", $aed, $1e
; YOU'RE IN A DANK, / DINGY WASHROOM.[PAGE] / FROM THE LOOK AND / SMELL OF IT, YOU / FIGURE THE JANITORMUST BE ...
Text0CMessage1D:
    INCBIN "../../res/text/US/banks/0c.bin", $b0b, $10
jr_00c_4b1b:
    INCBIN "../../res/text/US/banks/0c.bin", $b1b, $22
jr_00c_4b3d:
    INCBIN "../../res/text/US/banks/0c.bin", $b3d, $1f
jr_00c_4b5c:
    INCBIN "../../res/text/US/banks/0c.bin", $b5c, $19
; IT'S A DOOR THAT / LEADS OUT OF THE / WASHROOM AND / MOST LIKELY INTO / TROUBLE.[END]
Text0CMessage1E:
    INCBIN "../../res/text/US/banks/0c.bin", $b75, $1f
jr_00c_4b94:
    INCBIN "../../res/text/US/banks/0c.bin", $b94, $2a
; YOU SEE YOURSELF / IN THE MIRROR.[PAGE] / THE RAGGED FACE OFA STRANGER STARES / BACK. YOU STILL / CAN'T REMEM...
Text0CMessage1F:
    INCBIN "../../res/text/US/banks/0c.bin", $bbe, $10
jr_00c_4bce:
    INCBIN "../../res/text/US/banks/0c.bin", $bce, $8
jr_00c_4bd6:
    INCBIN "../../res/text/US/banks/0c.bin", $bd6, $42
jr_00c_4c18:
    INCBIN "../../res/text/US/banks/0c.bin", $c18, $15
; AN ELECTRIC LIGHT / IS HANGING FROM / THE CEILING.[END]
Text0CMessage20:
    INCBIN "../../res/text/US/banks/0c.bin", $c2d, $2f
; IT APPEARS TO BE / A SINK. RUST / STAINS SHOW WHERE / THE WATER / CONSTANTLY DRIPS.[END]
Text0CMessage21:
    INCBIN "../../res/text/US/banks/0c.bin", $c5c, $33
jr_00c_4c8f:
    INCBIN "../../res/text/US/banks/0c.bin", $c8f, $19
; YOU JUST BLEW AWAYTHE MIRROR. IT / SHATTERS SENDING / SMALL SHARDS EVERYWHICH WAY![END]
Text0CMessage22:
    INCBIN "../../res/text/US/banks/0c.bin", $ca8, $13
jr_00c_4cbb:
    INCBIN "../../res/text/US/banks/0c.bin", $cbb, $13
jr_00c_4cce:
    INCBIN "../../res/text/US/banks/0c.bin", $cce, $12
jr_00c_4ce0:
    INCBIN "../../res/text/US/banks/0c.bin", $ce0, $17
; THIS WASHROOM / REALLY NEEDS / A GOOD CLEANING. / NO... MAKE THAT A / GOOD FUMIGATION![END]
Text0CMessage23:
    INCBIN "../../res/text/US/banks/0c.bin", $cf7, $26
jr_00c_4d1d:
    INCBIN "../../res/text/US/banks/0c.bin", $d1d, $9
jr_00c_4d26:
    INCBIN "../../res/text/US/banks/0c.bin", $d26, $1a
jr_00c_4d40:
    INCBIN "../../res/text/US/banks/0c.bin", $d40, $6
; THE DOOR LEADS OUTTO A HALLWAY.[END]
Text0CMessage24:
    INCBIN "../../res/text/US/banks/0c.bin", $d46, $2
jr_00c_4d48:
    INCBIN "../../res/text/US/banks/0c.bin", $d48, $1e
; IT'S A MIRROR WITHA SIMPLE WOODEN / FRAME.[END]
Text0CMessage25:
    INCBIN "../../res/text/US/banks/0c.bin", $d66, $1f
jr_00c_4d85:
    INCBIN "../../res/text/US/banks/0c.bin", $d85, $a
; YOU'RE IN A DINGY / HALLWAY.[END]
Text0CMessage26:
    INCBIN "../../res/text/US/banks/0c.bin", $d8f, $10
jr_00c_4d9f:
    INCBIN "../../res/text/US/banks/0c.bin", $d9f, $b
; THERE'S A PUDDLE / ON THE FLOOR.[END]
Text0CMessage27:
    INCBIN "../../res/text/US/banks/0c.bin", $daa, $14
jr_00c_4dbe:
    INCBIN "../../res/text/US/banks/0c.bin", $dbe, $b
jr_00c_4dc9:
; IT'S A PLAIN / WOODEN DOOR.[END]
Text0CMessage28:
    INCBIN "../../res/text/US/banks/0c.bin", $dc9, $1a
; THIS DOOR HAS / SCUFFS AND / SCRATCHES ON IT.[PAGE] / IT MUST BE USED / A LOT.[END]
Text0CMessage29:
    INCBIN "../../res/text/US/banks/0c.bin", $de3, $41
; YOU STEP INTO THE / POLICE STATION.[PAGE] / THE COPS QUICKLY / SURROUND YOU WITH / THEIR HANDS ON / THEIR CLU...
Text0CMessage2A:
    INCBIN "../../res/text/US/banks/0c.bin", $e24, $10
jr_00c_4e34:
    INCBIN "../../res/text/US/banks/0c.bin", $e34, $2e
jr_00c_4e62:
    INCBIN "../../res/text/US/banks/0c.bin", $e62, $e
jr_00c_4e70:
    INCBIN "../../res/text/US/banks/0c.bin", $e70, $4
jr_00c_4e74:
    INCBIN "../../res/text/US/banks/0c.bin", $e74, $43
; THERE IS NOTHING / UNUSUAL ABOUT THISHALLWAY.[END]
Text0CMessage2B:
    INCBIN "../../res/text/US/banks/0c.bin", $eb7, $1f
jr_00c_4ed6:
    INCBIN "../../res/text/US/banks/0c.bin", $ed6, $d
; YOU'RE IN THE / WOMEN'S WASHROOM.[END]
Text0CMessage2C:
    INCBIN "../../res/text/US/banks/0c.bin", $ee3, $10
jr_00c_4ef3:
    INCBIN "../../res/text/US/banks/0c.bin", $ef3, $10
; A FAINT WHITE FILMCOVERS THE MIRROR.IT'S AS GRIMY AS / THE REST OF THIS / PLACE![END]
Text0CMessage2D:
    INCBIN "../../res/text/US/banks/0c.bin", $f03, $4d
; IT'S A LARGE METALWASTEBASKET.[END]
Text0CMessage2E:
    INCBIN "../../res/text/US/banks/0c.bin", $f50, $1f
; THIS LIGHT LOOKS / LIKE IT'S ON ITS / LAST LEG.[END]
Text0CMessage2F:
    INCBIN "../../res/text/US/banks/0c.bin", $f6f, $2c
; YOU FIGURE IF YOU / WASHED YOUR HANDS / IN THIS SINK, / THEY'D JUST GET / DIRTIER.[END]
Text0CMessage30:
    INCBIN "../../res/text/US/banks/0c.bin", $f9b, $10
jr_00c_4fab:
    INCBIN "../../res/text/US/banks/0c.bin", $fab, $19
jr_00c_4fc4:
    INCBIN "../../res/text/US/banks/0c.bin", $fc4, $22
; IT'S THE ENTRANCE / TO THE WOMEN'S / TOILET STALL.[END]
Text0CMessage31:
    INCBIN "../../res/text/US/banks/0c.bin", $fe6, $16
jr_00c_4ffc:
    INCBIN "../../res/text/US/banks/0c.bin", $ffc, $9
jr_00c_5005:
    INCBIN "../../res/text/US/banks/0c.bin", $1005, $10
; YOU'RE IN THE / LADIES ROOM. / SOMEHOW, YOU FEEL / OUT OF PLACE![END]
Text0CMessage32:
    INCBIN "../../res/text/US/banks/0c.bin", $1015, $10
jr_00c_5025:
    INCBIN "../../res/text/US/banks/0c.bin", $1025, $f
jr_00c_5034:
    INCBIN "../../res/text/US/banks/0c.bin", $1034, $15
jr_00c_5049:
    INCBIN "../../res/text/US/banks/0c.bin", $1049, $4
jr_00c_504d:
    INCBIN "../../res/text/US/banks/0c.bin", $104d, $3
; YOU'RE IN AN EMPTYSTALL.[PAGE] / YOU SEE A CRACK / IN THE TOILET AND / WATER LEAKING OUT / OF IT.[END]
Text0CMessage33:
    INCBIN "../../res/text/US/banks/0c.bin", $1050, $10
jr_00c_5060:
    INCBIN "../../res/text/US/banks/0c.bin", $1060, $19
jr_00c_5079:
    INCBIN "../../res/text/US/banks/0c.bin", $1079, $c
jr_00c_5085:
    INCBIN "../../res/text/US/banks/0c.bin", $1085, $1f
; IT'S A ROLL OF / TOILET PAPER.[PAGE] / IT LOOKS LIKE IT / HASN'T BEEN USED / YET.[END]
Text0CMessage34:
    INCBIN "../../res/text/US/banks/0c.bin", $10a4, $44
; IT'S A PUDDLE OF / WATER THAT APPEARSTO BE COMING OUT / OF THE TOILET.[END]
Text0CMessage35:
    INCBIN "../../res/text/US/banks/0c.bin", $10e8, $1f
jr_00c_5107:
    INCBIN "../../res/text/US/banks/0c.bin", $1107, $24
; THE PORCELAIN OF / THE TOILET SEEMS / TO HAVE BEEN / RECENTLY CRACKED.[PAGE] / WATER SLOWLY / TRICKLES FROM T...
Text0CMessage36:
    INCBIN "../../res/text/US/banks/0c.bin", $112b, $1f
jr_00c_514a:
    INCBIN "../../res/text/US/banks/0c.bin", $114a, $33
jr_00c_517d:
    INCBIN "../../res/text/US/banks/0c.bin", $117d, $b
jr_00c_5188:
    INCBIN "../../res/text/US/banks/0c.bin", $1188, $2f
;  YOU ARE RELIEVED / THAT YOU FIND / NOTHING FLOATING / INSIDE.[END]
Text0CMessage37:
    INCBIN "../../res/text/US/banks/0c.bin", $11b7, $11
jr_00c_51c8:
    INCBIN "../../res/text/US/banks/0c.bin", $11c8, $e
jr_00c_51d6:
    INCBIN "../../res/text/US/banks/0c.bin", $11d6, $8
jr_00c_51de:
    INCBIN "../../res/text/US/banks/0c.bin", $11de, $12
; THE VAGUE / RECOLLECTION OF / YOUR MOTHER / TELLING YOU TO PUTTHE SEAT DOWN / COMES TO MIND.[END]
Text0CMessage38:
    INCBIN "../../res/text/US/banks/0c.bin", $11f0, $2a
jr_00c_521a:
    INCBIN "../../res/text/US/banks/0c.bin", $121a, $14
jr_00c_522e:
    INCBIN "../../res/text/US/banks/0c.bin", $122e, $17
; IT IS VERY QUIET / IN THE WOMEN'S / TOILET STALL. YOU / HEAR NOTHING / EXCEPT THE FAINT / TRICKLE OF WATER.[END]
Text0CMessage39:
    INCBIN "../../res/text/US/banks/0c.bin", $1245, $1f
jr_00c_5264:
    INCBIN "../../res/text/US/banks/0c.bin", $1264, $1f
jr_00c_5283:
    INCBIN "../../res/text/US/banks/0c.bin", $1283, $a
jr_00c_528d:
    INCBIN "../../res/text/US/banks/0c.bin", $128d, $1a
; YOUR STORY AND / THE THREE PIECES / OF EVIDENCE MADE / STERNWOOD AND / VICKERS LOOK / SUSPICIOUS.[PAGE] / BUT...
Text0CMessage3A:
    INCBIN "../../res/text/US/banks/0c.bin", $12a7, $10
jr_00c_52b7:
    INCBIN "../../res/text/US/banks/0c.bin", $12b7, $15
jr_00c_52cc:
    INCBIN "../../res/text/US/banks/0c.bin", $12cc, $4f
jr_00c_531b:
    INCBIN "../../res/text/US/banks/0c.bin", $131b, $6
; YOU'RE IN WHAT / SEEMS TO BE A / DARK, EMPTY / RESTAURANT.[PAGE] / IT IS EITHER / CLOSED OR ELSE / YOU'VE SCA...
Text0CMessage3B:
    INCBIN "../../res/text/US/banks/0c.bin", $1321, $10
jr_00c_5331:
    INCBIN "../../res/text/US/banks/0c.bin", $1331, $f
jr_00c_5340:
    INCBIN "../../res/text/US/banks/0c.bin", $1340, $27
jr_00c_5367:
    INCBIN "../../res/text/US/banks/0c.bin", $1367, $b
jr_00c_5372:
    INCBIN "../../res/text/US/banks/0c.bin", $1372, $10
jr_00c_5382:
    INCBIN "../../res/text/US/banks/0c.bin", $1382, $d
; THROUGH THE WINDOWYOU SEE AN EMPTY / STREET WITH NO / ONE IN SIGHT.[END]
Text0CMessage3C:
    INCBIN "../../res/text/US/banks/0c.bin", $138f, $1f
jr_00c_53ae:
    INCBIN "../../res/text/US/banks/0c.bin", $13ae, $21
jr_00c_53cf:
; IT'S A RICKETY / STAIRCASE WHICH / LEADS UP TO THE / SECOND FLOOR.[END]
Text0CMessage3D:
    INCBIN "../../res/text/US/banks/0c.bin", $13cf, $1f
jr_00c_53ee:
    INCBIN "../../res/text/US/banks/0c.bin", $13ee, $d
jr_00c_53fb:
    INCBIN "../../res/text/US/banks/0c.bin", $13fb, $11
; THE DOOR HAS THE / WORD "CELLAR" / WRITTEN ON IT.[END]
Text0CMessage3E:
    INCBIN "../../res/text/US/banks/0c.bin", $140c, $2e
; IT'S THE FRONT / DOOR OF THE / RESTAURANT.[END]
Text0CMessage3F:
    INCBIN "../../res/text/US/banks/0c.bin", $143a, $27
; IT'S A SHOT GLASS / FULL OF SELTZER.[END]
Text0CMessage40:
    INCBIN "../../res/text/US/banks/0c.bin", $1461, $1f
jr_00c_5480:
    INCBIN "../../res/text/US/banks/0c.bin", $1480, $4
; IT'S THE / COUNTERTOP.[PAGE] / YOU CATCH A SLIGHTREFLECTION OF / YOURSELF IN THE / HIGHLY POLISHED / FINISH.[...
Text0CMessage41:
    INCBIN "../../res/text/US/banks/0c.bin", $1484, $31
jr_00c_54b5:
    INCBIN "../../res/text/US/banks/0c.bin", $14b5, $14
jr_00c_54c9:
    INCBIN "../../res/text/US/banks/0c.bin", $14c9, $18
; THIS ROOM IS / EMPTY.[END]
Text0CMessage42:
    INCBIN "../../res/text/US/banks/0c.bin", $14e1, $9
jr_00c_54ea:
    INCBIN "../../res/text/US/banks/0c.bin", $14ea, $b
; THE DOOR WON'T / OPEN.[PAGE] / IT MUST BE / LOCKED.[END]
Text0CMessage43:
    INCBIN "../../res/text/US/banks/0c.bin", $14f5, $28
; YOU QUICKLY DOWN / THE SELTZER.[PAGE] / IT'S NOT YOUR / PREFERRED DRINK, / BUT IT'LL DO IN A / PINCH![END]
Text0CMessage44:
    INCBIN "../../res/text/US/banks/0c.bin", $151d, $9
jr_00c_5526:
    INCBIN "../../res/text/US/banks/0c.bin", $1526, $7
jr_00c_552d:
    INCBIN "../../res/text/US/banks/0c.bin", $152d, $16
jr_00c_5543:
    INCBIN "../../res/text/US/banks/0c.bin", $1543, $11
jr_00c_5554:
    INCBIN "../../res/text/US/banks/0c.bin", $1554, $1f
; WITH A TELLTALE / CLICK, THE KEY / UNLOCKS THE FRONT / DOOR.[END]
Text0CMessage45:
    INCBIN "../../res/text/US/banks/0c.bin", $1573, $37
; WITH A BANG AND A / CRASH, YOU BLOW / AWAY THE WINDOW.[END]
Text0CMessage46:
    INCBIN "../../res/text/US/banks/0c.bin", $15aa, $5
jr_00c_55af:
    INCBIN "../../res/text/US/banks/0c.bin", $15af, $24
jr_00c_55d3:
    INCBIN "../../res/text/US/banks/0c.bin", $15d3, $a
; YOU TRY TO OPEN / THE TRUNK BUT / IT'S LOCKED.[END]
Text0CMessage47:
    INCBIN "../../res/text/US/banks/0c.bin", $15dd, $e
jr_00c_55eb:
    INCBIN "../../res/text/US/banks/0c.bin", $15eb, $2
jr_00c_55ed:
    INCBIN "../../res/text/US/banks/0c.bin", $15ed, $1b
; THIS STAIRWAY / LEADS TO THE / SECOND FLOOR.[END]
Text0CMessage48:
    INCBIN "../../res/text/US/banks/0c.bin", $1608, $29
; YOU'RE IN THE / CELLAR.[PAGE] / THE PLACE LOOKS / LIKE IT COULD USE / A GOOD SWEEPING.[END]
Text0CMessage49:
    INCBIN "../../res/text/US/banks/0c.bin", $1631, $2
jr_00c_5633:
    INCBIN "../../res/text/US/banks/0c.bin", $1633, $e
jr_00c_5641:
    INCBIN "../../res/text/US/banks/0c.bin", $1641, $39
; IT'S THE KIND OF / LIGHT YOU'D EXPECTTO FIND IN A / CELLAR.[END]
Text0CMessage4A:
    INCBIN "../../res/text/US/banks/0c.bin", $167a, $1f
jr_00c_5699:
    INCBIN "../../res/text/US/banks/0c.bin", $1699, $8
jr_00c_56a1:
    INCBIN "../../res/text/US/banks/0c.bin", $16a1, $11
; A BARREL IS SET UPAGAINST THE WALL.[END]
Text0CMessage4B:
    INCBIN "../../res/text/US/banks/0c.bin", $16b2, $24
; IT'S A SPIGOT.[END]
Text0CMessage4C:
    INCBIN "../../res/text/US/banks/0c.bin", $16d6, $f
; YOU ARE MESMERIZEDBY THE INTRICATE / DESIGN OF THE / SPIDER WEB![END]
Text0CMessage4D:
    INCBIN "../../res/text/US/banks/0c.bin", $16e5, $10
jr_00c_56f5:
    INCBIN "../../res/text/US/banks/0c.bin", $16f5, $f
jr_00c_5704:
    INCBIN "../../res/text/US/banks/0c.bin", $1704, $1e
; ROWS AND ROWS OF / DUSTY BOTTLES LINETHIS RACK.[PAGE] / ONE OF THE BOTTLESON THE RIGHT HAND / SIDE APPEARS TO...
Text0CMessage4E:
    INCBIN "../../res/text/US/banks/0c.bin", $1722, $31
jr_00c_5753:
    INCBIN "../../res/text/US/banks/0c.bin", $1753, $19
jr_00c_576c:
    INCBIN "../../res/text/US/banks/0c.bin", $176c, $2b
; YOU NOTICE A / LACK OF DUST.[PAGE] / HOW PECULIAR![END]
Text0CMessage4F:
    INCBIN "../../res/text/US/banks/0c.bin", $1797, $10
jr_00c_57a7:
    INCBIN "../../res/text/US/banks/0c.bin", $17a7, $f
jr_00c_57b6:
    INCBIN "../../res/text/US/banks/0c.bin", $17b6, $a
; THE CONTENTS OF / THE BARREL GUSHES / OUT ONTO YOUR / SHOES.[END]
Text0CMessage50:
    INCBIN "../../res/text/US/banks/0c.bin", $17c0, $37
; WHEN YOU HIT / THE BOTTLE, THE / WHOLE RACK SLIDES / TO THE SIDE.[PAGE] / A SECRET PASSAGE / IS REVEALED![END]
Text0CMessage51:
    INCBIN "../../res/text/US/banks/0c.bin", $17f7, $4
jr_00c_57fb:
    INCBIN "../../res/text/US/banks/0c.bin", $17fb, $11
jr_00c_580c:
    INCBIN "../../res/text/US/banks/0c.bin", $180c, $a
jr_00c_5816:
    INCBIN "../../res/text/US/banks/0c.bin", $1816, $39
jr_00c_584f:
    INCBIN "../../res/text/US/banks/0c.bin", $184f, $2
; IT'S A DAMP AND / DREARY CELLAR.[END]
Text0CMessage52:
    INCBIN "../../res/text/US/banks/0c.bin", $1851, $1f
; IT'S A BIG BARREL.[END]
Text0CMessage53:
    INCBIN "../../res/text/US/banks/0c.bin", $1870, $13
; IT'S A SMALL / CONNECTING ROOM / MADE OF STONE AND / BRICK.[END]
Text0CMessage54:
    INCBIN "../../res/text/US/banks/0c.bin", $1883, $1f
jr_00c_58a2:
    INCBIN "../../res/text/US/banks/0c.bin", $18a2, $17
; YOU SEE A SHAFT / WITH A LADDER / LEADING STRAIGHT / DOWN.[PAGE] / YOU ALMOST RETCH / AT THE NASTY SMELLRISIN...
Text0CMessage55:
    INCBIN "../../res/text/US/banks/0c.bin", $18b9, $10
jr_00c_58c9:
    INCBIN "../../res/text/US/banks/0c.bin", $18c9, $f
jr_00c_58d8:
    INCBIN "../../res/text/US/banks/0c.bin", $18d8, $26
jr_00c_58fe:
    INCBIN "../../res/text/US/banks/0c.bin", $18fe, $c
jr_00c_590a:
    INCBIN "../../res/text/US/banks/0c.bin", $190a, $1c
jr_00c_5926:
    INCBIN "../../res/text/US/banks/0c.bin", $1926, $3
; IT'S A ROUND / WOODEN DOOR.[PAGE] / STRANGE DESIGN FORA DOOR![END]
Text0CMessage56:
    INCBIN "../../res/text/US/banks/0c.bin", $1929, $1f
jr_00c_5948:
    INCBIN "../../res/text/US/banks/0c.bin", $1948, $15
; WAIT A MINUTE! / COULD IT BE? YES, / IT IS! A LIGHT / BULB![END]
Text0CMessage57:
    INCBIN "../../res/text/US/banks/0c.bin", $195d, $36
; YOU GAG ON THE / STALE AIR. THIS / PLACE COULD USE / SOME CIRCULATION / IN HERE![END]
Text0CMessage58:
    INCBIN "../../res/text/US/banks/0c.bin", $1993, $10
jr_00c_59a3:
    INCBIN "../../res/text/US/banks/0c.bin", $19a3, $39
; IT'S A DOOR.[END]
Text0CMessage59:
    INCBIN "../../res/text/US/banks/0c.bin", $19dc, $d
; YOU'RE IN A SMALL / ROOM SET UP AS A / CASINO.[PAGE] / THE SILENCE IN / THIS PLACE IS / ALMOST DEAFENING![END]
Text0CMessage5A:
    INCBIN "../../res/text/US/banks/0c.bin", $19e9, $10
jr_00c_59f9:
    INCBIN "../../res/text/US/banks/0c.bin", $19f9, $4a
; THE COPS FIND / SOME INCRIMINATINGEVIDENCE AND / THEY SUSPECT / YOU COMMITTED JOEYSIEGEL'S MURDER / AND KIDNA...
Text0CMessage5B:
    INCBIN "../../res/text/US/banks/0c.bin", $1a43, $5f
jr_00c_5aa2:
    INCBIN "../../res/text/US/banks/0c.bin", $1aa2, $37
jr_00c_5ad9:
    INCBIN "../../res/text/US/banks/0c.bin", $1ad9, $55
jr_00c_5b2e:
    INCBIN "../../res/text/US/banks/0c.bin", $1b2e, $4
jr_00c_5b32:
    INCBIN "../../res/text/US/banks/0c.bin", $1b32, $2
; BUT THERE IS TOO / LITTLE EVIDENCE / THAT STERNWOOD ANDVICKERS WERE / INVOLVED...[END]
Text0CMessage5C:
    INCBIN "../../res/text/US/banks/0c.bin", $1b34, $1f
jr_00c_5b53:
    INCBIN "../../res/text/US/banks/0c.bin", $1b53, $2d
; ERROR[END]
Text0CMessage5D:
    INCBIN "../../res/text/US/banks/0c.bin", $1b80, $6
; ERROR[END]
Text0CMessage5E:
    INCBIN "../../res/text/US/banks/0c.bin", $1b86, $6
; YOU REMEMBER THE / LAST TIME YOU / PLAYED ROULETTE...20 BLACK- YOU / LOST![END]
Text0CMessage5F:
    INCBIN "../../res/text/US/banks/0c.bin", $1b8c, $12
jr_00c_5b9e:
    INCBIN "../../res/text/US/banks/0c.bin", $1b9e, $1
jr_00c_5b9f:
    INCBIN "../../res/text/US/banks/0c.bin", $1b9f, $18
jr_00c_5bb7:
    INCBIN "../../res/text/US/banks/0c.bin", $1bb7, $1a
; IT'S A SLOT / MACHINE.[PAGE] / DO YOU FEEL LUCKY?[END]
Text0CMessage60:
    INCBIN "../../res/text/US/banks/0c.bin", $1bd1, $9
jr_00c_5bda:
    INCBIN "../../res/text/US/banks/0c.bin", $1bda, $2
jr_00c_5bdc:
    INCBIN "../../res/text/US/banks/0c.bin", $1bdc, $14
jr_00c_5bf0:
    INCBIN "../../res/text/US/banks/0c.bin", $1bf0, $9
jr_00c_5bf9:
; WITH A PULL OF THELEVER, THE WHEELS / SPIN AND CLANG / AWAY![PAGE] / YOUR ANTICIPATION / HEIGHTENS, THE / EXC...
Text0CMessage61:
    INCBIN "../../res/text/US/banks/0c.bin", $1bf9, $9
jr_00c_5c02:
    INCBIN "../../res/text/US/banks/0c.bin", $1c02, $8b
jr_00c_5c8d:
    INCBIN "../../res/text/US/banks/0c.bin", $1c8d, $3
; WELL AT LEAST YOURLUCK IS / CONSISTENT- ALL / BAD![END]
Text0CMessage62:
    INCBIN "../../res/text/US/banks/0c.bin", $1c90, $1e
jr_00c_5cae:
    INCBIN "../../res/text/US/banks/0c.bin", $1cae, $11
; THE WHEELS BEGIN / TO SPIN AND THIS / TIME YOU CROSS / YOUR FINGERS / FOR LUCK.[PAGE] / CLANK, CLANK, / CLANK...
Text0CMessage63:
    INCBIN "../../res/text/US/banks/0c.bin", $1cbf, $37
jr_00c_5cf6:
    INCBIN "../../res/text/US/banks/0c.bin", $1cf6, $a
jr_00c_5d00:
    INCBIN "../../res/text/US/banks/0c.bin", $1d00, $23
jr_00c_5d23:
    INCBIN "../../res/text/US/banks/0c.bin", $1d23, $c
jr_00c_5d2f:
    INCBIN "../../res/text/US/banks/0c.bin", $1d2f, $d
jr_00c_5d3c:
    INCBIN "../../res/text/US/banks/0c.bin", $1d3c, $1b
jr_00c_5d57:
    INCBIN "../../res/text/US/banks/0c.bin", $1d57, $d
jr_00c_5d64:
    INCBIN "../../res/text/US/banks/0c.bin", $1d64, $11
; THE CABBY / ACCELERATES IN A / SUDDEN BURST OF / SPEED![END]
Text0CMessage64:
    INCBIN "../../res/text/US/banks/0c.bin", $1d75, $32
; THE CASINO IS / DESERTED.[END]
Text0CMessage65:
    INCBIN "../../res/text/US/banks/0c.bin", $1da7, $18
; IT'S A ROULETTE / WHEEL.[END]
Text0CMessage66:
    INCBIN "../../res/text/US/banks/0c.bin", $1dbf, $17
; YOU ARE THROWN / AROUND BY THE / CABBY'S RECKLESS / DRIVING.[END]
Text0CMessage67:
    INCBIN "../../res/text/US/banks/0c.bin", $1dd6, $8
jr_00c_5dde:
    INCBIN "../../res/text/US/banks/0c.bin", $1dde, $8
jr_00c_5de6:
    INCBIN "../../res/text/US/banks/0c.bin", $1de6, $f
jr_00c_5df5:
    INCBIN "../../res/text/US/banks/0c.bin", $1df5, $18
; IT WON'T OPEN.[PAGE] / YOU WONDER IF IT / CAN BE OPENED FROMTHIS SIDE.[END]
Text0CMessage68:
    INCBIN "../../res/text/US/banks/0c.bin", $1e0d, $2b
jr_00c_5e38:
    INCBIN "../../res/text/US/banks/0c.bin", $1e38, $12
; YOU STAND IN FRONTOF A SMALL / ELEVATOR.[END]
Text0CMessage69:
    INCBIN "../../res/text/US/banks/0c.bin", $1e4a, $1f
jr_00c_5e69:
    INCBIN "../../res/text/US/banks/0c.bin", $1e69, $8
; ERROR[END]
Text0CMessage6A:
    INCBIN "../../res/text/US/banks/0c.bin", $1e71, $6
; YOU'RE INSIDE / THE ELEVATOR.[PAGE] / WHICH FLOOR DO YOUWISH TO GO TO?[END]
Text0CMessage6B:
    INCBIN "../../res/text/US/banks/0c.bin", $1e77, $38
jr_00c_5eaf:
    INCBIN "../../res/text/US/banks/0c.bin", $1eaf, $5
; THIS BUTTON IS FORTHE TOP FLOOR.[END]
Text0CMessage6C:
    INCBIN "../../res/text/US/banks/0c.bin", $1eb4, $21
; THERE'S NOTHING / ON THE BUTTON.[END]
Text0CMessage6D:
    INCBIN "../../res/text/US/banks/0c.bin", $1ed5, $1f
; THIS IS THE BUTTONFOR THE FIRST / FLOOR.[END]
Text0CMessage6E:
    INCBIN "../../res/text/US/banks/0c.bin", $1ef4, $1f
jr_00c_5f13:
    INCBIN "../../res/text/US/banks/0c.bin", $1f13, $8
; YOU'RE INSIDE THE / CRAMPED ELEVATOR.[END]
Text0CMessage6F:
    INCBIN "../../res/text/US/banks/0c.bin", $1f1b, $10
jr_00c_5f2b:
    INCBIN "../../res/text/US/banks/0c.bin", $1f2b, $14
; AS YOU PRESS THE / BUTTON, THE / ELEVATOR LURCHES / TO LIFE.[PAGE] / WITHIN MOMENTS, / IT STOPS AND THE / DOO...
Text0CMessage70:
    INCBIN "../../res/text/US/banks/0c.bin", $1f3f, $1f
jr_00c_5f5e:
    INCBIN "../../res/text/US/banks/0c.bin", $1f5e, $34
jr_00c_5f92:
    INCBIN "../../res/text/US/banks/0c.bin", $1f92, $11
; THE DOOR CLOSES / AND THEN QUICKLY / OPENS AGAIN.[PAGE] / YOU PUSHED THE / BUTTON FOR THE / FLOOR THAT YOU / ...
Text0CMessage71:
    INCBIN "../../res/text/US/banks/0c.bin", $1fa3, $1f
jr_00c_5fc2:
    INCBIN "../../res/text/US/banks/0c.bin", $1fc2, $48
jr_00c_600a:
    INCBIN "../../res/text/US/banks/0c.bin", $200a, $19
jr_00c_6023:
    INCBIN "../../res/text/US/banks/0c.bin", $2023, $1
jr_00c_6024:
    INCBIN "../../res/text/US/banks/0c.bin", $2024, $6
jr_00c_602a:
    INCBIN "../../res/text/US/banks/0c.bin", $202a, $4
; WHAT KIND OF ROOM / IS THIS?[PAGE] / YOU WONDER WHAT / WENT ON HERE?[END]
Text0CMessage72:
    INCBIN "../../res/text/US/banks/0c.bin", $202e, $2b
jr_00c_6059:
    INCBIN "../../res/text/US/banks/0c.bin", $2059, $e
; IT'S A BIZARRE / LOOKING CHAIR.[PAGE] / RESTRAINTS FOR THEARMS AND HEAD HAVEBEEN BUILT INTO / IT.[PAGE] / IT ...
Text0CMessage73:
    INCBIN "../../res/text/US/banks/0c.bin", $2067, $8c
; IT'S AN OLD / WASTEBASKET.[END]
Text0CMessage74:
    INCBIN "../../res/text/US/banks/0c.bin", $20f3, $19
; IT'S AN EMPTY / MEDICINE VIAL.[PAGE] / "SODIUM PENTOTHAL"IS WRITTEN ON / THE LABEL.[PAGE] / YOU WONDER WHAT I...
Text0CMessage75:
    INCBIN "../../res/text/US/banks/0c.bin", $210c, $1f
jr_00c_612b:
    INCBIN "../../res/text/US/banks/0c.bin", $212b, $c
jr_00c_6137:
    INCBIN "../../res/text/US/banks/0c.bin", $2137, $e
jr_00c_6145:
    INCBIN "../../res/text/US/banks/0c.bin", $2145, $1f
jr_00c_6164:
    INCBIN "../../res/text/US/banks/0c.bin", $2164, $c
jr_00c_6170:
    INCBIN "../../res/text/US/banks/0c.bin", $2170, $4
; THE MEDICINE / VIAL'S LABEL READS"MEDREZINE."[END]
Text0CMessage76:
    INCBIN "../../res/text/US/banks/0c.bin", $2174, $1f
jr_00c_6193:
    INCBIN "../../res/text/US/banks/0c.bin", $2193, $d
; IT'S AN EMPTY / MEDICINE VIAL OF / "DIETHANOL / TRIMENE."[PAGE] / THE NAME SOUNDS / FAMILIAR, BUT YOU / CAN'T...
Text0CMessage77:
    INCBIN "../../res/text/US/banks/0c.bin", $21a0, $25
jr_00c_61c5:
    INCBIN "../../res/text/US/banks/0c.bin", $21c5, $6
jr_00c_61cb:
    INCBIN "../../res/text/US/banks/0c.bin", $21cb, $2e
jr_00c_61f9:
    INCBIN "../../res/text/US/banks/0c.bin", $21f9, $11
; THERE'S A LITTLE / MEDICINE LEFT / IN THE CAPSULE.[PAGE] / THINKING OF THE / PAIN IN YOUR / ARM... YOU HAVE A...
Text0CMessage78:
    INCBIN "../../res/text/US/banks/0c.bin", $220a, $1f
jr_00c_6229:
    INCBIN "../../res/text/US/banks/0c.bin", $2229, $38
jr_00c_6261:
    INCBIN "../../res/text/US/banks/0c.bin", $2261, $1b
jr_00c_627c:
    INCBIN "../../res/text/US/banks/0c.bin", $227c, $17
; IT'S AN ELEVATOR / BUTTON.[END]
Text0CMessage79:
    INCBIN "../../res/text/US/banks/0c.bin", $2293, $b
jr_00c_629e:
    INCBIN "../../res/text/US/banks/0c.bin", $229e, $e
; IT'S AN UNUSED / MEDICINE CAPSULE.[PAGE] / YOU'VE SEEN / DOCTORS PLACE / MEDICINE IN THESE / FOR THEIR PATIEN...
Text0CMessage7A:
    INCBIN "../../res/text/US/banks/0c.bin", $22ac, $6
jr_00c_62b2:
    INCBIN "../../res/text/US/banks/0c.bin", $22b2, $19
jr_00c_62cb:
    INCBIN "../../res/text/US/banks/0c.bin", $22cb, $12
jr_00c_62dd:
    INCBIN "../../res/text/US/banks/0c.bin", $22dd, $c
jr_00c_62e9:
    INCBIN "../../res/text/US/banks/0c.bin", $22e9, $2b
; YOU TAKE THE / CAPSULES, THINKINGTHEY MIGHT COME INHANDY LATER.[END]
Text0CMessage7B:
    INCBIN "../../res/text/US/banks/0c.bin", $2314, $10
jr_00c_6324:
    INCBIN "../../res/text/US/banks/0c.bin", $2324, $f
jr_00c_6333:
    INCBIN "../../res/text/US/banks/0c.bin", $2333, $1f
jr_00c_6352:
; YOU'RE INSIDE / A SMALL, / CLAUSTROPHOBIC / ROOM.[END]
Text0CMessage7C:
    INCBIN "../../res/text/US/banks/0c.bin", $2352, $10
jr_00c_6362:
    INCBIN "../../res/text/US/banks/0c.bin", $2362, $3
jr_00c_6365:
    INCBIN "../../res/text/US/banks/0c.bin", $2365, $19
; NOTHING SEEMED TO / HAPPEN.[END]
Text0CMessage7D:
    INCBIN "../../res/text/US/banks/0c.bin", $237e, $1a
; THE CAPSULE / ALREADY CONTAINS / A DOSAGE OF / MEDICINE.[END]
Text0CMessage7E:
    INCBIN "../../res/text/US/banks/0c.bin", $2398, $5
jr_00c_639d:
    INCBIN "../../res/text/US/banks/0c.bin", $239d, $1a
jr_00c_63b7:
    INCBIN "../../res/text/US/banks/0c.bin", $23b7, $14
; MEDREZINE ONLY / COMES IN HANDY / WHEN ONE HAS / BEEN GIVEN A / LETHAL DOSE / OF NERVE GAS.[PAGE] / SINCE THA...
Text0CMessage7F:
    INCBIN "../../res/text/US/banks/0c.bin", $23cb, $3b
jr_00c_6406:
    INCBIN "../../res/text/US/banks/0c.bin", $2406, $33
jr_00c_6439:
    INCBIN "../../res/text/US/banks/0c.bin", $2439, $6
jr_00c_643f:
    INCBIN "../../res/text/US/banks/0c.bin", $243f, $2b
jr_00c_646a:
    INCBIN "../../res/text/US/banks/0c.bin", $246a, $2a
jr_00c_6494:
    INCBIN "../../res/text/US/banks/0c.bin", $2494, $7
jr_00c_649b:
    INCBIN "../../res/text/US/banks/0c.bin", $249b, $16
jr_00c_64b1:
    INCBIN "../../res/text/US/banks/0c.bin", $24b1, $1b4f
