; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text14Msgs0:
    db LOW(Text14Message00), HIGH(Text14Message00)
    db LOW(Text14Message01), HIGH(Text14Message01)
    db LOW(Text14Message02), HIGH(Text14Message02)
    db LOW(Text14Message03), HIGH(Text14Message03)
    db LOW(Text14Message04), HIGH(Text14Message04)
    db LOW(Text14Message05), HIGH(Text14Message05)
    db LOW(Text14Message06), HIGH(Text14Message06)
    db LOW(Text14Message07), HIGH(Text14Message07)
    db LOW(Text14Message08), HIGH(Text14Message08)
    db LOW(Text14Message09), HIGH(Text14Message09)
    db LOW(Text14Message0A), HIGH(Text14Message0A)
    db LOW(Text14Message0B), HIGH(Text14Message0B)
    db LOW(Text14Message0C), HIGH(Text14Message0C)
    db LOW(Text14Message0D), HIGH(Text14Message0D)
    db LOW(Text14Message0E), HIGH(Text14Message0E)
    db LOW(Text14Message0F), HIGH(Text14Message0F)
    db LOW(Text14Message10), HIGH(Text14Message10)
    db LOW(Text14Message11), HIGH(Text14Message11)
    db LOW(Text14Message12), HIGH(Text14Message12)
    db LOW(Text14Message13), HIGH(Text14Message13)
    db LOW(Text14Message14), HIGH(Text14Message14)
    db LOW(Text14Message15), HIGH(Text14Message15)
    db LOW(Text14Message16), HIGH(Text14Message16)
    db LOW(Text14Message17), HIGH(Text14Message17)
    db LOW(Text14Message18), HIGH(Text14Message18)
    db LOW(Text14Message19), HIGH(Text14Message19)
    db LOW(Text14Message1A), HIGH(Text14Message1A)
    db LOW(Text14Message1B), HIGH(Text14Message1B)
    db LOW(Text14Message1C), HIGH(Text14Message1C)
    db LOW(Text14Message1D), HIGH(Text14Message1D)
    db LOW(Text14Message1E), HIGH(Text14Message1E)
    db LOW(Text14Message1F), HIGH(Text14Message1F)
    db LOW(Text14Message20), HIGH(Text14Message20)
    db LOW(Text14Message21), HIGH(Text14Message21)
    db LOW(Text14Message22), HIGH(Text14Message22)
    db LOW(Text14Message23), HIGH(Text14Message23)
    db LOW(Text14Message24), HIGH(Text14Message24)
    db LOW(Text14Message25), HIGH(Text14Message25)
    db LOW(Text14Message26), HIGH(Text14Message26)
    db LOW(Text14Message27), HIGH(Text14Message27)
    db LOW(Text14Message28), HIGH(Text14Message28)
    db LOW(Text14Message29), HIGH(Text14Message29)
    db LOW(Text14Message2A), HIGH(Text14Message2A)
    db LOW(Text14Message2B), HIGH(Text14Message2B)
    db LOW(Text14Message2C), HIGH(Text14Message2C)
    db LOW(Text14Message2D), HIGH(Text14Message2D)
    db LOW(Text14Message2E), HIGH(Text14Message2E)
    db LOW(Text14Message2F), HIGH(Text14Message2F)
    db LOW(Text14Message30), HIGH(Text14Message30)
    db LOW(Text14Message31), HIGH(Text14Message31)
    db LOW(Text14Message32), HIGH(Text14Message32)
    db LOW(Text14Message33), HIGH(Text14Message33)
    db LOW(Text14Message34), HIGH(Text14Message34)
    db LOW(Text14Message35), HIGH(Text14Message35)
    db LOW(Text14Message36), HIGH(Text14Message36)
    db LOW(Text14Message37), HIGH(Text14Message37)
    db LOW(Text14Message38), HIGH(Text14Message38)
    db LOW(Text14Message39), HIGH(Text14Message39)
    db LOW(Text14Message3A), HIGH(Text14Message3A)
    db LOW(Text14Message3B), HIGH(Text14Message3B)
    db LOW(Text14Message3C), HIGH(Text14Message3C)
    db LOW(Text14Message3D), HIGH(Text14Message3D)
    db LOW(Text14Message3E), HIGH(Text14Message3E)
    db LOW(Text14Message3F), HIGH(Text14Message3F)
; Sixty-four message pointers for one text group.
Text14Msgs1:
    db LOW(Text14Message40), HIGH(Text14Message40)
    db LOW(Text14Message41), HIGH(Text14Message41)
    db LOW(Text14Message42), HIGH(Text14Message42)
    db LOW(Text14Message43), HIGH(Text14Message43)
    db LOW(Text14Message44), HIGH(Text14Message44)
    db LOW(Text14Message45), HIGH(Text14Message45)
    db LOW(Text14Message46), HIGH(Text14Message46)
    db LOW(Text14Message47), HIGH(Text14Message47)
    db LOW(Text14Message48), HIGH(Text14Message48)
    db LOW(Text14Message49), HIGH(Text14Message49)
    db LOW(Text14Message4A), HIGH(Text14Message4A)
    db LOW(Text14Message4B), HIGH(Text14Message4B)
    db LOW(Text14Message4C), HIGH(Text14Message4C)
    db LOW(Text14Message4D), HIGH(Text14Message4D)
    db LOW(Text14Message4E), HIGH(Text14Message4E)
    db LOW(Text14Message4F), HIGH(Text14Message4F)
    db LOW(Text14Message50), HIGH(Text14Message50)
    db LOW(Text14Message51), HIGH(Text14Message51)
    db LOW(Text14Message52), HIGH(Text14Message52)
    db LOW(Text14Message53), HIGH(Text14Message53)
    db LOW(Text14Message54), HIGH(Text14Message54)
    db LOW(Text14Message55), HIGH(Text14Message55)
    db LOW(Text14Message56)
jr_014_40ad:
    db HIGH(Text14Message56)
    db LOW(Text14Message57), HIGH(Text14Message57)
    db LOW(Text14Message58), HIGH(Text14Message58)
    db LOW(Text14Message59), HIGH(Text14Message59)
    db LOW(Text14Message5A), HIGH(Text14Message5A)
    db LOW(Text14Message5B), HIGH(Text14Message5B)
    db LOW(Text14Message5C), HIGH(Text14Message5C)
    db LOW(Text14Message5D), HIGH(Text14Message5D)
    db LOW(Text14Message5E), HIGH(Text14Message5E)
    db LOW(Text14Message5F), HIGH(Text14Message5F)
    db LOW(Text14Message60), HIGH(Text14Message60)
    db LOW(Text14Message61), HIGH(Text14Message61)
    db LOW(Text14Message62), HIGH(Text14Message62)
    db LOW(Text14Message63), HIGH(Text14Message63)
    db LOW(Text14Message64), HIGH(Text14Message64)
    db LOW(Text14Message65), HIGH(Text14Message65)
    db LOW(Text14Message66), HIGH(Text14Message66)
    db LOW(Text14Message67), HIGH(Text14Message67)
    db LOW(Text14Message68), HIGH(Text14Message68)
    db LOW(Text14Message69), HIGH(Text14Message69)
    db LOW(Text14Message6A), HIGH(Text14Message6A)
    db LOW(Text14Message6B), HIGH(Text14Message6B)
    db LOW(Text14Message6C), HIGH(Text14Message6C)
    db LOW(Text14Message6D), HIGH(Text14Message6D)
    db LOW(Text14Message6E), HIGH(Text14Message6E)
    db LOW(Text14Message6F), HIGH(Text14Message6F)
    db LOW(Text14Message70), HIGH(Text14Message70)
    db LOW(Text14Message71), HIGH(Text14Message71)
    db LOW(Text14Message72), HIGH(Text14Message72)
    db LOW(Text14Message73), HIGH(Text14Message73)
    db LOW(Text14Message74), HIGH(Text14Message74)
    db LOW(Text14Message75), HIGH(Text14Message75)
    db LOW(Text14Message76), HIGH(Text14Message76)
    db LOW(Text14Message77), HIGH(Text14Message77)
    db LOW(Text14Message78), HIGH(Text14Message78)
    db LOW(Text14Message79), HIGH(Text14Message79)
    db LOW(Text14Message7A), HIGH(Text14Message7A)
    db LOW(Text14Message7B), HIGH(Text14Message7B)
    db LOW(Text14Message7C), HIGH(Text14Message7C)
    db LOW(Text14Message7D), HIGH(Text14Message7D)
    db LOW(Text14Message7E), HIGH(Text14Message7E)
    db LOW(Text14Message7F), HIGH(Text14Message7F)
; THERE'S NOTHING / THERE.[END]
Text14Message00:
    INCBIN "../../res/text/US/banks/14.bin", $100, $c
jr_014_410c:
    INCBIN "../../res/text/US/banks/14.bin", $10c, $b
; CONDUCTORS' SHOUTSAND TRAIN WHISTLESFILL THE AIR.[END]
Text14Message01:
    INCBIN "../../res/text/US/banks/14.bin", $117, $32
; IT'S AN OLD WOODENBENCH.[END]
Text14Message02:
    INCBIN "../../res/text/US/banks/14.bin", $149, $19
jr_014_4162:
; A DRAFT FROM / SOMEWHERE SHUTS / THE BEDROOM DOOR / WITH A SLAM.[END]
Text14Message03:
    INCBIN "../../res/text/US/banks/14.bin", $162, $1f
jr_014_4181:
    INCBIN "../../res/text/US/banks/14.bin", $181, $1c
; WANNA BUY / A NEWSPAPER?[END]
Text14Message04:
    INCBIN "../../res/text/US/banks/14.bin", $19d, $17
; THE WOODEN / SHUTTERS HAVE THE / WORDS "CLOSED" / PAINTED ON THEM.[END]
Text14Message05:
    INCBIN "../../res/text/US/banks/14.bin", $1b4, $8
jr_014_41bc:
    INCBIN "../../res/text/US/banks/14.bin", $1bc, $35
; ITS AN OLD, BLIND / NEWSPAPER CLERK.[END]
Text14Message06:
    INCBIN "../../res/text/US/banks/14.bin", $1f1, $1f
jr_014_4210:
    INCBIN "../../res/text/US/banks/14.bin", $210, $4
; IT'S A SEEING EYE / DOG. HIS TAG SAYS / HIS NAME IS OTTO.[PAGE] / ALTHOUGH HE / APPEARS TO BE A / PIT BULL-CH...
Text14Message07:
    INCBIN "../../res/text/US/banks/14.bin", $214, $15
jr_014_4229:
    INCBIN "../../res/text/US/banks/14.bin", $229, $20
jr_014_4249:
    INCBIN "../../res/text/US/banks/14.bin", $249, $57
jr_014_42a0:
    INCBIN "../../res/text/US/banks/14.bin", $2a0, $7
jr_014_42a7:
    INCBIN "../../res/text/US/banks/14.bin", $2a7, $18
jr_014_42bf:
    INCBIN "../../res/text/US/banks/14.bin", $2bf, $3b
jr_014_42fa:
    INCBIN "../../res/text/US/banks/14.bin", $2fa, $4
; THIS DOG MUST BE AREAL FIGHTER.[PAGE] / HE'S GOT HIS FAIR / SHARE OF SCARS.[END]
Text14Message08:
    INCBIN "../../res/text/US/banks/14.bin", $2fe, $42
; HE DOESN'T ANSWER / CAUSE HE'S DOZING.[END]
Text14Message09:
    INCBIN "../../res/text/US/banks/14.bin", $340, $25
; THE NEWSPAPER / HEADLINE READS, / "GANGLAND BAGMAN / MURDERED."[PAGE] / THE ARTICLE GOES / ON TO EXPLAIN THAT...
Text14Message0A:
    INCBIN "../../res/text/US/banks/14.bin", $365, $5f
jr_014_43c4:
    INCBIN "../../res/text/US/banks/14.bin", $3c4, $1d
; THE STORY REPORTS / A LOCAL MOBSTER / WAS RECENTLY SLAINAND POLICE ARE / INVESTIGATING ANY / CONNECTION WITH ...
Text14Message0B:
    INCBIN "../../res/text/US/banks/14.bin", $3e1, $4
jr_014_43e5:
    INCBIN "../../res/text/US/banks/14.bin", $3e5, $1b
jr_014_4400:
    INCBIN "../../res/text/US/banks/14.bin", $400, $5
jr_014_4405:
    INCBIN "../../res/text/US/banks/14.bin", $405, $25
jr_014_442a:
    INCBIN "../../res/text/US/banks/14.bin", $42a, $29
jr_014_4453:
    INCBIN "../../res/text/US/banks/14.bin", $453, $26
jr_014_4479:
    INCBIN "../../res/text/US/banks/14.bin", $479, $15
jr_014_448e:
    INCBIN "../../res/text/US/banks/14.bin", $48e, $11
; A FAMILIAR FACE / LOOMS IN FRONT OF / YOU...[PAGE] / STOGIE MARTIN / STANDS THERE / BLOWING HIS STALE / CIGAR...
Text14Message0C:
    INCBIN "../../res/text/US/banks/14.bin", $49f, $1f
jr_014_44be:
    INCBIN "../../res/text/US/banks/14.bin", $4be, $13
jr_014_44d1:
    INCBIN "../../res/text/US/banks/14.bin", $4d1, $15
jr_014_44e6:
    INCBIN "../../res/text/US/banks/14.bin", $4e6, $29
; "YOU STILL HANGIN'AROUND HERE?[PAGE] / YA BETTER HUSTLE / PAL, OR YOU'LL / MISS DA DEADLINE!"[END]
Text14Message0D:
    INCBIN "../../res/text/US/banks/14.bin", $50f, $5
jr_014_4514:
    INCBIN "../../res/text/US/banks/14.bin", $514, $1a
jr_014_452e:
    INCBIN "../../res/text/US/banks/14.bin", $52e, $2
jr_014_4530:
    INCBIN "../../res/text/US/banks/14.bin", $530, $27
jr_014_4557:
    INCBIN "../../res/text/US/banks/14.bin", $557, $a
; "STILL AIN'T COME / UP WITH THE DOUGH,EH HARDING?[PAGE] / WELL, YA GOT SOME / TIME YET, BUT THE / BOSS AIN'T ...
Text14Message0E:
    INCBIN "../../res/text/US/banks/14.bin", $561, $38
jr_014_4599:
    INCBIN "../../res/text/US/banks/14.bin", $599, $4d
; "YA LOOK LIKE / YOU'RE GETTING' NOWHERE FAST, ACE![PAGE] / YER TIME'S ABOUT / HALF UP. AND / REMEMBER I GOT M...
Text14Message0F:
    INCBIN "../../res/text/US/banks/14.bin", $5e6, $1e
jr_014_4604:
    INCBIN "../../res/text/US/banks/14.bin", $604, $47
jr_014_464b:
    INCBIN "../../res/text/US/banks/14.bin", $64b, $3
jr_014_464e:
    INCBIN "../../res/text/US/banks/14.bin", $64e, $2
jr_014_4650:
    INCBIN "../../res/text/US/banks/14.bin", $650, $3
; "DA BOSS DON'T / LIKE NOBODY TAKIN'FROM HIM... AND I / MEAN NOBODY! SO / YOU'D BETTER COME / UP WITH THE / DO...
Text14Message10:
    INCBIN "../../res/text/US/banks/14.bin", $653, $35
jr_014_4688:
    INCBIN "../../res/text/US/banks/14.bin", $688, $17
jr_014_469f:
    INCBIN "../../res/text/US/banks/14.bin", $69f, $7
jr_014_46a6:
    INCBIN "../../res/text/US/banks/14.bin", $6a6, $13
jr_014_46b9:
    INCBIN "../../res/text/US/banks/14.bin", $6b9, $3
; "DIS IS YOUR LAST / WARNING, HARDING![PAGE] / NEXT TIME WE MEET,IT'LL BE DA LAST. / AND THAT'S GOOD, / CUZ I'...
Text14Message11:
    INCBIN "../../res/text/US/banks/14.bin", $6bc, $18
jr_014_46d4:
    INCBIN "../../res/text/US/banks/14.bin", $6d4, $4d
jr_014_4721:
    INCBIN "../../res/text/US/banks/14.bin", $721, $16
jr_014_4737:
    INCBIN "../../res/text/US/banks/14.bin", $737, $2
jr_014_4739:
    INCBIN "../../res/text/US/banks/14.bin", $739, $3
; HAVING SAID THAT, / STOGIE WALKS AWAY,LEAVING A STINKINGCLOUD OF SMOKE TO / MARK HIS VISIT.[END]
Text14Message12:
    INCBIN "../../res/text/US/banks/14.bin", $73c, $e
jr_014_474a:
    INCBIN "../../res/text/US/banks/14.bin", $74a, $3b
jr_014_4785:
    INCBIN "../../res/text/US/banks/14.bin", $785, $f
; "SORRY ACE, YOUR / TIME'S UP! COUGH / UP THE MONEY![PAGE] / YA SAY YA AIN'T / GOT DA 112,000 / SMACKAROOS?[PA...
Text14Message13:
    INCBIN "../../res/text/US/banks/14.bin", $794, $1c
jr_014_47b0:
    INCBIN "../../res/text/US/banks/14.bin", $7b0, $3
jr_014_47b3:
    INCBIN "../../res/text/US/banks/14.bin", $7b3, $13
jr_014_47c6:
    INCBIN "../../res/text/US/banks/14.bin", $7c6, $7
jr_014_47cd:
    INCBIN "../../res/text/US/banks/14.bin", $7cd, $18
jr_014_47e5:
    INCBIN "../../res/text/US/banks/14.bin", $7e5, $1b
jr_014_4800:
    INCBIN "../../res/text/US/banks/14.bin", $800, $11
jr_014_4811:
    INCBIN "../../res/text/US/banks/14.bin", $811, $b
jr_014_481c:
    INCBIN "../../res/text/US/banks/14.bin", $81c, $12
jr_014_482e:
    INCBIN "../../res/text/US/banks/14.bin", $82e, $12
jr_014_4840:
    INCBIN "../../res/text/US/banks/14.bin", $840, $7
; YOU CLOSE UP THE / POCKETKNIFE.[END]
Text14Message14:
    INCBIN "../../res/text/US/banks/14.bin", $847, $10
jr_014_4857:
    INCBIN "../../res/text/US/banks/14.bin", $857, $e
; WHAT SHOULD YOU / USE THIS ON?[END]
Text14Message15:
    INCBIN "../../res/text/US/banks/14.bin", $865, $1d
; IT'S LOCKED AND / DOESN'T OPEN![END]
Text14Message16:
    INCBIN "../../res/text/US/banks/14.bin", $882, $1e
; YOU REACH OUT TO / PET THE DOG.[PAGE] / YIKES! YOU BARELY / PULL YOUR HAND / BACK IN TIME![PAGE] / THAT DOG A...
Text14Message17:
    INCBIN "../../res/text/US/banks/14.bin", $8a0, $28
jr_014_48c8:
    INCBIN "../../res/text/US/banks/14.bin", $8c8, $d
jr_014_48d5:
    INCBIN "../../res/text/US/banks/14.bin", $8d5, $18
jr_014_48ed:
    INCBIN "../../res/text/US/banks/14.bin", $8ed, $19
; AS YOU REACH FOR / A NEWSPAPER, THE / OLD MAN SAYS,[PAGE] / "THAT'LL BE 25 / CENTS FOR A / NEWSPAPER, BUB!"[END]
Text14Message18:
    INCBIN "../../res/text/US/banks/14.bin", $906, $b
jr_014_4911:
    INCBIN "../../res/text/US/banks/14.bin", $911, $8
jr_014_4919:
    INCBIN "../../res/text/US/banks/14.bin", $919, $2d
jr_014_4946:
    INCBIN "../../res/text/US/banks/14.bin", $946, $1c
; "PAW," YOU COMMANDTHE DOG.[PAGE] / THE DOG HOLDS OUT / ITS PAW TO YOU! / WHAT A SMART DOG![END]
Text14Message19:
    INCBIN "../../res/text/US/banks/14.bin", $962, $17
jr_014_4979:
    INCBIN "../../res/text/US/banks/14.bin", $979, $38
; "LIE DOWN," YOU / SAY TO THE DOG.[PAGE] / THE DOG HOLDS OUT / ITS PAW TO YOU! / WHAT A STUPID / DOG![END]
Text14Message1A:
    INCBIN "../../res/text/US/banks/14.bin", $9b1, $1c
jr_014_49cd:
    INCBIN "../../res/text/US/banks/14.bin", $9cd, $12
jr_014_49df:
    INCBIN "../../res/text/US/banks/14.bin", $9df, $1f
jr_014_49fe:
    INCBIN "../../res/text/US/banks/14.bin", $9fe, $8
; "WOULD YOU LIKE / A NEWSPAPER?[PAGE] / THEY'RE 25 CENTS."[END]
Text14Message1B:
    INCBIN "../../res/text/US/banks/14.bin", $a06, $17
jr_014_4a1d:
    INCBIN "../../res/text/US/banks/14.bin", $a1d, $19
; "THANK YOU / VERY MUCH."[END]
Text14Message1C:
    INCBIN "../../res/text/US/banks/14.bin", $a36, $17
jr_014_4a4d:
; SUDDENLY, THE DOG / LEAPS AT YOU, / LOYALLY DEFENDING / ITS MASTER.[END]
Text14Message1D:
    INCBIN "../../res/text/US/banks/14.bin", $a4d, $5
jr_014_4a52:
    INCBIN "../../res/text/US/banks/14.bin", $a52, $9
jr_014_4a5b:
    INCBIN "../../res/text/US/banks/14.bin", $a5b, $17
jr_014_4a72:
    INCBIN "../../res/text/US/banks/14.bin", $a72, $6
jr_014_4a78:
    INCBIN "../../res/text/US/banks/14.bin", $a78, $3
jr_014_4a7b:
    INCBIN "../../res/text/US/banks/14.bin", $a7b, $10
; THE DOG VICIOUSLY / RIPS, TEARS AND / BITES YOU TO / RIBBONS![PAGE] / "THERE'S NEVER A / DOG CATCHER AROUNDWH...
Text14Message1E:
    INCBIN "../../res/text/US/banks/14.bin", $a8b, $4
jr_014_4a8f:
    INCBIN "../../res/text/US/banks/14.bin", $a8f, $2b
jr_014_4aba:
    INCBIN "../../res/text/US/banks/14.bin", $aba, $9
jr_014_4ac3:
    INCBIN "../../res/text/US/banks/14.bin", $ac3, $69
jr_014_4b2c:
    INCBIN "../../res/text/US/banks/14.bin", $b2c, $6
jr_014_4b32:
    INCBIN "../../res/text/US/banks/14.bin", $b32, $3
; OUCH![PAGE] / YOU GINGERLY PULL / A SPLINTER FROM / YOUR BACKSIDE...[END]
Text14Message1F:
    INCBIN "../../res/text/US/banks/14.bin", $b35, $16
jr_014_4b4b:
    INCBIN "../../res/text/US/banks/14.bin", $b4b, $23
; YOU BITE THE DOG.[PAGE] / NOT SURPRISINGLY, / IT BITES YOU BACK![END]
Text14Message20:
    INCBIN "../../res/text/US/banks/14.bin", $b6e, $10
jr_014_4b7e:
    INCBIN "../../res/text/US/banks/14.bin", $b7e, $e
jr_014_4b8c:
    INCBIN "../../res/text/US/banks/14.bin", $b8c, $1
jr_014_4b8d:
    INCBIN "../../res/text/US/banks/14.bin", $b8d, $18
; THE DOG GOBBLES UPTHE TREAT![PAGE] / YIKES! IT ALMOST / TAKES YOUR FINGERSTOO![END]
Text14Message21:
    INCBIN "../../res/text/US/banks/14.bin", $ba5, $11
jr_014_4bb6:
    INCBIN "../../res/text/US/banks/14.bin", $bb6, $16
jr_014_4bcc:
    INCBIN "../../res/text/US/banks/14.bin", $bcc, $1d
jr_014_4be9:
    INCBIN "../../res/text/US/banks/14.bin", $be9, $1
; YOU PLACE THE / CIGAR RING ON / THE DESK.[PAGE] / YOU CAN ALMOST / PICTURE THE LOOK / ON VENTINI'S FACE / WHE...
Text14Message22:
    INCBIN "../../res/text/US/banks/14.bin", $bea, $36
jr_014_4c20:
    INCBIN "../../res/text/US/banks/14.bin", $c20, $c
jr_014_4c2c:
    INCBIN "../../res/text/US/banks/14.bin", $c2c, $85
jr_014_4cb1:
    INCBIN "../../res/text/US/banks/14.bin", $cb1, $17
; "THANK YOU VERY / MUCH," THE OLD MANSAYS. "PLEASE TAKEA NEWSPAPER."[END]
Text14Message23:
    INCBIN "../../res/text/US/banks/14.bin", $cc8, $17
jr_014_4cdf:
    INCBIN "../../res/text/US/banks/14.bin", $cdf, $21
jr_014_4d00:
    INCBIN "../../res/text/US/banks/14.bin", $d00, $a
jr_014_4d0a:
; "MISTER, YOU PAID / FOR A PAPER- HELP / YOURSELF!"[END]
Text14Message24:
    INCBIN "../../res/text/US/banks/14.bin", $d0a, $19
jr_014_4d23:
    INCBIN "../../res/text/US/banks/14.bin", $d23, $16
; "THANKS, BUT I'VE / JUST RUN OUT OF / PAPERS. SORRY."[END]
Text14Message25:
    INCBIN "../../res/text/US/banks/14.bin", $d39, $5
jr_014_4d3e:
    INCBIN "../../res/text/US/banks/14.bin", $d3e, $16
Call_014_4d54:
    INCBIN "../../res/text/US/banks/14.bin", $d54, $17
; "NO THANKS, I ONLYACCEPT CASH..."[END]
Text14Message26:
    INCBIN "../../res/text/US/banks/14.bin", $d6b, $13
jr_014_4d7e:
    INCBIN "../../res/text/US/banks/14.bin", $d7e, $f
; THE WELL TRAINED / DOG SWIFTLY DODGESYOUR ATTACK.[END]
Text14Message27:
    INCBIN "../../res/text/US/banks/14.bin", $d8d, $1d
jr_014_4daa:
    INCBIN "../../res/text/US/banks/14.bin", $daa, $8
jr_014_4db2:
    INCBIN "../../res/text/US/banks/14.bin", $db2, $b
; WITH A MIGHTY / ROUNDHOUSE, YOU / DECK THE OLD MAN![PAGE] / THE DOG GROWLS / MENACINGLY AND / THEN SPRINGS IN...
Text14Message28:
    INCBIN "../../res/text/US/banks/14.bin", $dbd, $3
jr_014_4dc0:
    INCBIN "../../res/text/US/banks/14.bin", $dc0, $4
jr_014_4dc4:
    INCBIN "../../res/text/US/banks/14.bin", $dc4, $18
jr_014_4ddc:
    INCBIN "../../res/text/US/banks/14.bin", $ddc, $b
jr_014_4de7:
    INCBIN "../../res/text/US/banks/14.bin", $de7, $1
jr_014_4de8:
    INCBIN "../../res/text/US/banks/14.bin", $de8, $3d
; IT IMMEDIATELY / OPENS AGAIN.[PAGE] / OOPS... YOU / MUST'VE PRESSED / THE BUTTON FOR THEFLOOR YOU WERE / ALRE...
Text14Message29:
    INCBIN "../../res/text/US/banks/14.bin", $e25, $2c
jr_014_4e51:
    INCBIN "../../res/text/US/banks/14.bin", $e51, $8
jr_014_4e59:
    INCBIN "../../res/text/US/banks/14.bin", $e59, $e
jr_014_4e67:
    INCBIN "../../res/text/US/banks/14.bin", $e67, $23
; YOU STAND ON A / PLATFORM IN THE / STATION.[END]
Text14Message2A:
    INCBIN "../../res/text/US/banks/14.bin", $e8a, $10
jr_014_4e9a:
    INCBIN "../../res/text/US/banks/14.bin", $e9a, $6
jr_014_4ea0:
    INCBIN "../../res/text/US/banks/14.bin", $ea0, $9
jr_014_4ea9:
    INCBIN "../../res/text/US/banks/14.bin", $ea9, $9
; "ALL ABOARD!"[END]
Text14Message2B:
    INCBIN "../../res/text/US/banks/14.bin", $eb2, $e
; PASSENGERS QUICKLYSCRAMBLE IN AND / OUT.[END]
Text14Message2C:
    INCBIN "../../res/text/US/banks/14.bin", $ec0, $11
jr_014_4ed1:
    INCBIN "../../res/text/US/banks/14.bin", $ed1, $14
jr_014_4ee5:
    INCBIN "../../res/text/US/banks/14.bin", $ee5, $2
; YOU JUMP ONTO THE / TRAIN JUST AS THE / DOORS CLOSE.[END]
Text14Message2D:
    INCBIN "../../res/text/US/banks/14.bin", $ee7, $10
jr_014_4ef7:
    INCBIN "../../res/text/US/banks/14.bin", $ef7, $f
jr_014_4f06:
    INCBIN "../../res/text/US/banks/14.bin", $f06, $12
; THE DOOR SHUTS / RIGHT IN YOUR / FACE![PAGE] / IF IT WEREN'T FOR / BAD LUCK, YOU'D / HAVE NO LUCK AT / ALL![END]
Text14Message2E:
    INCBIN "../../res/text/US/banks/14.bin", $f18, $1f
jr_014_4f37:
    INCBIN "../../res/text/US/banks/14.bin", $f37, $30
jr_014_4f67:
    INCBIN "../../res/text/US/banks/14.bin", $f67, $b
; A TRAIN COMES INTOTHE STATION WITH AHISS OF STEAM AND / SCREECH OF WHEELS.[END]
Text14Message2F:
    INCBIN "../../res/text/US/banks/14.bin", $f72, $49
; THE CONDUCTOR / YELLS FROM A FEW / FEET AWAY.[END]
Text14Message30:
    INCBIN "../../res/text/US/banks/14.bin", $fbb, $14
jr_014_4fcf:
    INCBIN "../../res/text/US/banks/14.bin", $fcf, $b
jr_014_4fda:
    INCBIN "../../res/text/US/banks/14.bin", $fda, $b
; THE DOORS OF THE / TRAIN CLOSE FOR / DEPARTURE.[END]
Text14Message31:
    INCBIN "../../res/text/US/banks/14.bin", $fe5, $2c
; YOU HEAR A TRAIN / WHISTLE IN THE / DISTANCE.[END]
Text14Message32:
    INCBIN "../../res/text/US/banks/14.bin", $1011, $10
jr_014_5021:
    INCBIN "../../res/text/US/banks/14.bin", $1021, $1a
; YOU HEAR THE FAINTYELL OF THE / CONDUCTOR IN / THE DISTANCE.[END]
Text14Message33:
    INCBIN "../../res/text/US/banks/14.bin", $103b, $1f
jr_014_505a:
    INCBIN "../../res/text/US/banks/14.bin", $105a, $1a
; YOU STAND OUTSIDE / OF A LARGE TRAIN / STATION. THERE IS / A CAB PARKED HERE.[END]
Text14Message34:
    INCBIN "../../res/text/US/banks/14.bin", $1074, $48
; YOU ARRIVE AT / CHICAGO STATION.[END]
Text14Message35:
    INCBIN "../../res/text/US/banks/14.bin", $10bc, $10
jr_014_50cc:
    INCBIN "../../res/text/US/banks/14.bin", $10cc, $f
; THE SIGN READS / "CHICAGO STATION."[END]
Text14Message36:
    INCBIN "../../res/text/US/banks/14.bin", $10db, $1f
jr_014_50fa:
    INCBIN "../../res/text/US/banks/14.bin", $10fa, $3
; THE CLERK QUICKLY / BRINGS OUT A BOX.[PAGE] / "THESE WERE MR. / BONDWELL'S / BELONGINGS."[END]
Text14Message37:
    INCBIN "../../res/text/US/banks/14.bin", $10fd, $4c
; IT'S A LARGE / ARCHED WINDOW.[END]
Text14Message38:
    INCBIN "../../res/text/US/banks/14.bin", $1149, $1c
; RIGHT ON THE / MONEY![END]
Text14Message39:
    INCBIN "../../res/text/US/banks/14.bin", $1165, $9
jr_014_516e:
    INCBIN "../../res/text/US/banks/14.bin", $116e, $b
; IT'S A FAMILIAR / YELLOW CAB IDLING / IN THE STREET.[END]
Text14Message3A:
    INCBIN "../../res/text/US/banks/14.bin", $1179, $26
jr_014_519f:
    INCBIN "../../res/text/US/banks/14.bin", $119f, $b
; IT WOULDN'T BE THESMARTEST THING TO / UPSET GABBY! HE'D / PROBABLY MAKE YOU / WALK![END]
Text14Message3B:
    INCBIN "../../res/text/US/banks/14.bin", $11aa, $4e
; YOU STOP YOURSELF / FROM VANDALIZING / THE INSIDE OF YOURFRIEND'S CAB.[END]
Text14Message3C:
    INCBIN "../../res/text/US/banks/14.bin", $11f8, $6
jr_014_51fe:
    INCBIN "../../res/text/US/banks/14.bin", $11fe, $a
jr_014_5208:
    INCBIN "../../res/text/US/banks/14.bin", $1208, $9
jr_014_5211:
    INCBIN "../../res/text/US/banks/14.bin", $1211, $2a
; YOU OPEN THE DOOR / AND STEP INTO THE / CAB.[PAGE] / WHY, IT'S NONE / OTHER THAN YOUR / OLD PAL, GABBY![PAGE]...
Text14Message3D:
    INCBIN "../../res/text/US/banks/14.bin", $123b, $10
jr_014_524b:
    INCBIN "../../res/text/US/banks/14.bin", $124b, $43
jr_014_528e:
    INCBIN "../../res/text/US/banks/14.bin", $128e, $2e
jr_014_52bc:
    INCBIN "../../res/text/US/banks/14.bin", $12bc, $15
jr_014_52d1:
    INCBIN "../../res/text/US/banks/14.bin", $12d1, $12
jr_014_52e3:
    INCBIN "../../res/text/US/banks/14.bin", $12e3, $c
jr_014_52ef:
    INCBIN "../../res/text/US/banks/14.bin", $12ef, $10
jr_014_52ff:
    INCBIN "../../res/text/US/banks/14.bin", $12ff, $e
jr_014_530d:
    INCBIN "../../res/text/US/banks/14.bin", $130d, $a
jr_014_5317:
    INCBIN "../../res/text/US/banks/14.bin", $1317, $43
jr_014_535a:
    INCBIN "../../res/text/US/banks/14.bin", $135a, $d
jr_014_5367:
    INCBIN "../../res/text/US/banks/14.bin", $1367, $d
jr_014_5374:
    INCBIN "../../res/text/US/banks/14.bin", $1374, $4
jr_014_5378:
    INCBIN "../../res/text/US/banks/14.bin", $1378, $2c
jr_014_53a4:
    INCBIN "../../res/text/US/banks/14.bin", $13a4, $e
jr_014_53b2:
    INCBIN "../../res/text/US/banks/14.bin", $13b2, $26
jr_014_53d8:
    INCBIN "../../res/text/US/banks/14.bin", $13d8, $23
; YOU SINK DOWN INTOTHE COMFORTABLE / BACK SEAT OF THE / CAB.[END]
Text14Message3E:
    INCBIN "../../res/text/US/banks/14.bin", $13fb, $38
; YOU CAN'T SEE MUCHIN THE REAR-VIEW / MIRROR FROM WHERE / YOU'RE SITTING.[END]
Text14Message3F:
    INCBIN "../../res/text/US/banks/14.bin", $1433, $10
jr_014_5443:
    INCBIN "../../res/text/US/banks/14.bin", $1443, $35
jr_014_5478:
; THE CABBIE SMILES / AS IF HE'S / LAUGHING AT SOME / PRIVATE JOKE.[END]
Text14Message40:
    INCBIN "../../res/text/US/banks/14.bin", $1478, $1f
jr_014_5497:
    INCBIN "../../res/text/US/banks/14.bin", $1497, $1d
; GOOD OLD GABBY! HEHASN'T CHANGED A / BIT![END]
Text14Message41:
    INCBIN "../../res/text/US/banks/14.bin", $14b4, $1f
jr_014_54d3:
    INCBIN "../../res/text/US/banks/14.bin", $14d3, $9
; GABBY HAS ALWAYS / BEEN A FOOTBALL / FAN.[PAGE] / YOU ALWAYS FIGUREDTHAT WAS A LOSING / CAUSE, ESPECIALLY / I...
Text14Message42:
    INCBIN "../../res/text/US/banks/14.bin", $14dc, $22
jr_014_54fe:
    INCBIN "../../res/text/US/banks/14.bin", $14fe, $20
jr_014_551e:
    INCBIN "../../res/text/US/banks/14.bin", $151e, $2f
; LOOKS LIKE A DOOR.[END]
Text14Message43:
    INCBIN "../../res/text/US/banks/14.bin", $154d, $13
; IT DOESN'T OPEN. / GABBY SAYS, "SORRYACE, THAT DOOR / HASN'T OPENED / SINCE THE GARBAGE / TRUCK HIT ME."[END]
Text14Message44:
    INCBIN "../../res/text/US/banks/14.bin", $1560, $2d
jr_014_558d:
    INCBIN "../../res/text/US/banks/14.bin", $158d, $1
jr_014_558e:
    INCBIN "../../res/text/US/banks/14.bin", $158e, $33
; "JUST NAME DA / PLACE, ACE... / I'LL GET YOU / THERE."[END]
Text14Message45:
    INCBIN "../../res/text/US/banks/14.bin", $15c1, $25
jr_014_55e6:
    INCBIN "../../res/text/US/banks/14.bin", $15e6, $c
; GABBY LAUGHS AND / SAYS, "WELL TAKE ALOOK AROUND, ACE! / DAT'S WHERE WE ARENOW!"[END]
Text14Message46:
    INCBIN "../../res/text/US/banks/14.bin", $15f2, $8
jr_014_55fa:
    INCBIN "../../res/text/US/banks/14.bin", $15fa, $1
jr_014_55fb:
    INCBIN "../../res/text/US/banks/14.bin", $15fb, $1e
jr_014_5619:
    INCBIN "../../res/text/US/banks/14.bin", $1619, $26
; SINCE THERE IS NO / OTHER USE FOR IT, / YOU DON'T NEED / IT ANYMORE.[END]
Text14Message47:
    INCBIN "../../res/text/US/banks/14.bin", $163f, $3f
; "LEAVE IT TO ME, / ACE!" WITH THAT / GABBY DRIVES OFF.[END]
Text14Message48:
    INCBIN "../../res/text/US/banks/14.bin", $167e, $7
jr_014_5685:
    INCBIN "../../res/text/US/banks/14.bin", $1685, $18
jr_014_569d:
    INCBIN "../../res/text/US/banks/14.bin", $169d, $14
; A PEEL OF RUBBER, / SOME WICKED TURNS / AND A SCREECH OF / THE TIRES LATER...[END]
Text14Message49:
    INCBIN "../../res/text/US/banks/14.bin", $16b1, $1f
jr_014_56d0:
    INCBIN "../../res/text/US/banks/14.bin", $16d0, $29
; GABBY STOPS THE / CAB WITH A JERK. / HE SMILES AS HE / SAYS, "HERE WE / ARE, ACE!"[END]
Text14Message4A:
    INCBIN "../../res/text/US/banks/14.bin", $16f9, $47
jr_014_5740:
    INCBIN "../../res/text/US/banks/14.bin", $1740, $4
; YOU FIRE A SHOT.[END]
Text14Message4B:
    INCBIN "../../res/text/US/banks/14.bin", $1744, $11
; THE BATTERY / DOESN'T NEED / CHANGING.[END]
Text14Message4C:
    INCBIN "../../res/text/US/banks/14.bin", $1755, $1f
jr_014_5774:
    INCBIN "../../res/text/US/banks/14.bin", $1774, $4
; YOU DON'T HAVE A / NEW BATTERY TO PUTIN...[END]
Text14Message4D:
    INCBIN "../../res/text/US/banks/14.bin", $1778, $10
jr_014_5788:
    INCBIN "../../res/text/US/banks/14.bin", $1788, $19
; YOUR CASE IS / CLOSED... / FOREVER![END]
Text14Message4E:
    INCBIN "../../res/text/US/banks/14.bin", $17a1, $20
; YOU WONDER WHAT ITSAYS?[END]
Text14Message4F:
    INCBIN "../../res/text/US/banks/14.bin", $17c1, $10
jr_014_57d1:
    INCBIN "../../res/text/US/banks/14.bin", $17d1, $4
jr_014_57d5:
    INCBIN "../../res/text/US/banks/14.bin", $17d5, $4
; "NO THANKS ACE, / I CAN'T ACCEPT / THAT FROM YOU."[END]
Text14Message50:
    INCBIN "../../res/text/US/banks/14.bin", $17d9, $10
jr_014_57e9:
    INCBIN "../../res/text/US/banks/14.bin", $17e9, $f
jr_014_57f8:
    INCBIN "../../res/text/US/banks/14.bin", $17f8, $10
; YOU'RE IN FRONT OFA RUNDOWN, / APARTMENT / BUILDING.[PAGE] / HOME SWEET HOME![END]
Text14Message51:
    INCBIN "../../res/text/US/banks/14.bin", $1808, $a
jr_014_5812:
    INCBIN "../../res/text/US/banks/14.bin", $1812, $6
jr_014_5818:
    INCBIN "../../res/text/US/banks/14.bin", $1818, $15
jr_014_582d:
    INCBIN "../../res/text/US/banks/14.bin", $182d, $1d
; YOU'RE IN FRONT OFYOUR APARTMENT.[END]
Text14Message52:
    INCBIN "../../res/text/US/banks/14.bin", $184a, $b
jr_014_5855:
    INCBIN "../../res/text/US/banks/14.bin", $1855, $5
jr_014_585a:
    INCBIN "../../res/text/US/banks/14.bin", $185a, $12
jr_014_586c:
; THIS SAYS THERE'S / A VACANCY IN THE / BUILDING. YOU HOPEIT DOESN'T MEAN / YOU![END]
Text14Message53:
    INCBIN "../../res/text/US/banks/14.bin", $186c, $1f
jr_014_588b:
    INCBIN "../../res/text/US/banks/14.bin", $188b, $1e
jr_014_58a9:
    INCBIN "../../res/text/US/banks/14.bin", $18a9, $a
jr_014_58b3:
    INCBIN "../../res/text/US/banks/14.bin", $18b3, $3
; "HEY, YOU AREN'T ACOP, ARE YOU!?! / WHERE'D YOU GET / THIS?"[PAGE] / THE CLERK SOUNDS / A HIDDEN ALARM / THAT...
Text14Message54:
    INCBIN "../../res/text/US/banks/14.bin", $18b6, $b
jr_014_58c1:
    INCBIN "../../res/text/US/banks/14.bin", $18c1, $b
jr_014_58cc:
    INCBIN "../../res/text/US/banks/14.bin", $18cc, $14
jr_014_58e0:
    INCBIN "../../res/text/US/banks/14.bin", $18e0, $10
jr_014_58f0:
    INCBIN "../../res/text/US/banks/14.bin", $18f0, $e
jr_014_58fe:
    INCBIN "../../res/text/US/banks/14.bin", $18fe, $29
; A DIMLY-LIT HALL, / THE AROMA OF CHEAPCOLOGNE AND STALE / POPCORN... IT'S / GOOD TO BE HOME![END]
Text14Message55:
    INCBIN "../../res/text/US/banks/14.bin", $1927, $1f
jr_014_5946:
    INCBIN "../../res/text/US/banks/14.bin", $1946, $a
jr_014_5950:
    INCBIN "../../res/text/US/banks/14.bin", $1950, $2e
; YOU ADMIRE THE / RUN-DOWN CONDITIONOF THE HALLWAY / OUTSIDE YOUR / APARTMENT.[END]
Text14Message56:
    INCBIN "../../res/text/US/banks/14.bin", $197e, $4
jr_014_5982:
    INCBIN "../../res/text/US/banks/14.bin", $1982, $44
jr_014_59c6:
; THIS BATTERED / MAILBOX HAS YOUR / NAME ON IT. KIND / OF SEEMS LIKE A / METAPHOR ABOUT / YOUR LIFE... / OR MA...
Text14Message57:
    INCBIN "../../res/text/US/banks/14.bin", $19c6, $5
jr_014_59cb:
    INCBIN "../../res/text/US/banks/14.bin", $19cb, $25
jr_014_59f0:
    INCBIN "../../res/text/US/banks/14.bin", $19f0, $35
jr_014_5a25:
    INCBIN "../../res/text/US/banks/14.bin", $1a25, $5
jr_014_5a2a:
    INCBIN "../../res/text/US/banks/14.bin", $1a2a, $6
; THERE ARE KNIFE / SCRATCHES NEAR / THE LOCK.[END]
Text14Message58:
    INCBIN "../../res/text/US/banks/14.bin", $1a30, $f
jr_014_5a3f:
    INCBIN "../../res/text/US/banks/14.bin", $1a3f, $1
jr_014_5a40:
    INCBIN "../../res/text/US/banks/14.bin", $1a40, $19
; IT'S A DENTED / MAILBOX.[END]
Text14Message59:
    INCBIN "../../res/text/US/banks/14.bin", $1a59, $17
; THERE'S AN / ENVELOPE AND A / SNAPSHOT INSIDE.[PAGE] / THE PICTURE SHOWS / SIEGEL AND SOME / OTHER GUY STANDI...
Text14Message5A:
    INCBIN "../../res/text/US/banks/14.bin", $1a70, $8
jr_014_5a78:
    INCBIN "../../res/text/US/banks/14.bin", $1a78, $17
jr_014_5a8f:
    INCBIN "../../res/text/US/banks/14.bin", $1a8f, $28
jr_014_5ab7:
    INCBIN "../../res/text/US/banks/14.bin", $1ab7, $2c
; THE WORD / "CONFIDENTIAL" / IS WRITTEN / ON THE FRONT.[END]
Text14Message5B:
    INCBIN "../../res/text/US/banks/14.bin", $1ae3, $31
; THERE'S A FRAMED / PICTURE ON THE / DESK.[PAGE] / THE GUY WITH / SIEGEL IS IN THIS / PHOTO TOO.[END]
Text14Message5C:
    INCBIN "../../res/text/US/banks/14.bin", $1b14, $1f
jr_014_5b33:
    INCBIN "../../res/text/US/banks/14.bin", $1b33, $23
jr_014_5b56:
    INCBIN "../../res/text/US/banks/14.bin", $1b56, $e
; YOU FEEL THE MAN / IN THE PICTURE MAYBE IMPORTANT...[PAGE] / MAYBE IF YOU COULDGET A CLOSER LOOK.[END]
Text14Message5D:
    INCBIN "../../res/text/US/banks/14.bin", $1b64, $10
jr_014_5b74:
    INCBIN "../../res/text/US/banks/14.bin", $1b74, $15
jr_014_5b89:
    INCBIN "../../res/text/US/banks/14.bin", $1b89, $13
jr_014_5b9c:
    INCBIN "../../res/text/US/banks/14.bin", $1b9c, $14
jr_014_5bb0:
    INCBIN "../../res/text/US/banks/14.bin", $1bb0, $3
jr_014_5bb3:
    INCBIN "../../res/text/US/banks/14.bin", $1bb3, $9
; IT'S A LETTER / FROM VINNY / TULUSSA, YOUR / INFORMANT.[PAGE] / "ACE, SOME WEIRD / STUFF IS GOING ON / AT THE...
Text14Message5E:
    INCBIN "../../res/text/US/banks/14.bin", $1bbc, $1f
jr_014_5bdb:
    INCBIN "../../res/text/US/banks/14.bin", $1bdb, $13
jr_014_5bee:
    INCBIN "../../res/text/US/banks/14.bin", $1bee, $4
jr_014_5bf2:
    INCBIN "../../res/text/US/banks/14.bin", $1bf2, $18
jr_014_5c0a:
    INCBIN "../../res/text/US/banks/14.bin", $1c0a, $41
jr_014_5c4b:
    INCBIN "../../res/text/US/banks/14.bin", $1c4b, $2
jr_014_5c4d:
    INCBIN "../../res/text/US/banks/14.bin", $1c4d, $92
jr_014_5cdf:
    INCBIN "../../res/text/US/banks/14.bin", $1cdf, $a
jr_014_5ce9:
    INCBIN "../../res/text/US/banks/14.bin", $1ce9, $10
; THERE ARE TWO / PICTURES ON / THE WALL...[PAGE] / YOU WONDER WHO / THESE PEOPLE MIGHTBE.[END]
Text14Message5F:
    INCBIN "../../res/text/US/banks/14.bin", $1cf9, $b
jr_014_5d04:
    INCBIN "../../res/text/US/banks/14.bin", $1d04, $13
jr_014_5d17:
    INCBIN "../../res/text/US/banks/14.bin", $1d17, $18
jr_014_5d2f:
    INCBIN "../../res/text/US/banks/14.bin", $1d2f, $c
jr_014_5d3b:
    INCBIN "../../res/text/US/banks/14.bin", $1d3b, $9
; DAN SMORON LIVES / IN "1C." ALL THAT / GUY EVER THINKS / ABOUT IS SPORTS, / SPORTS, SPORTS![END]
Text14Message60:
    INCBIN "../../res/text/US/banks/14.bin", $1d44, $41
jr_014_5d85:
    INCBIN "../../res/text/US/banks/14.bin", $1d85, $13
; YOU VERY OWN / APARTMENT DOOR, / "1A."[END]
Text14Message61:
    INCBIN "../../res/text/US/banks/14.bin", $1d98, $10
jr_014_5da8:
    INCBIN "../../res/text/US/banks/14.bin", $1da8, $13
; JACK BROWN LIVES / HERE. HE'S ALWAYS / TRYING TO SHOCK / YOU BY BUYING / EXPENSIVE CARS.[PAGE] / GOOD OL' JAC...
Text14Message62:
    INCBIN "../../res/text/US/banks/14.bin", $1dbb, $43
jr_014_5dfe:
    INCBIN "../../res/text/US/banks/14.bin", $1dfe, $3a
jr_014_5e38:
    INCBIN "../../res/text/US/banks/14.bin", $1e38, $5
; MAYBE VENTINI HAS / PLANS TO START UP / HIS OWN / OPERATION...[PAGE] / MAYBE THE MISSING / MONEY IS BEING / U...
Text14Message63:
    INCBIN "../../res/text/US/banks/14.bin", $1e3d, $5
jr_014_5e42:
    INCBIN "../../res/text/US/banks/14.bin", $1e42, $39
jr_014_5e7b:
    INCBIN "../../res/text/US/banks/14.bin", $1e7b, $19
jr_014_5e94:
    INCBIN "../../res/text/US/banks/14.bin", $1e94, $14
jr_014_5ea8:
; IF THAT IS THE / CASE, THEN YOU'LL / PROBABLY NEVER / FIND THAT MONEY![END]
Text14Message64:
    INCBIN "../../res/text/US/banks/14.bin", $1ea8, $1e
jr_014_5ec6:
    INCBIN "../../res/text/US/banks/14.bin", $1ec6, $1
jr_014_5ec7:
    INCBIN "../../res/text/US/banks/14.bin", $1ec7, $b
jr_014_5ed2:
    INCBIN "../../res/text/US/banks/14.bin", $1ed2, $17
; YOU'VE NEVER HAD / MUCH CASH, BUT YOUSURE DO RECOGNIZE / IT WHEN YOU SEE / IT.[END]
Text14Message65:
    INCBIN "../../res/text/US/banks/14.bin", $1ee9, $10
jr_014_5ef9:
    INCBIN "../../res/text/US/banks/14.bin", $1ef9, $20
jr_014_5f19:
    INCBIN "../../res/text/US/banks/14.bin", $1f19, $19
; THE ELEVATOR DOOR / IS CLOSED.[END]
Text14Message66:
    INCBIN "../../res/text/US/banks/14.bin", $1f32, $4
jr_014_5f36:
    INCBIN "../../res/text/US/banks/14.bin", $1f36, $19
; YOU DON'T HAVE ANYBATTERIES.[END]
Text14Message67:
    INCBIN "../../res/text/US/banks/14.bin", $1f4f, $10
jr_014_5f5f:
    INCBIN "../../res/text/US/banks/14.bin", $1f5f, $4
jr_014_5f63:
    INCBIN "../../res/text/US/banks/14.bin", $1f63, $9
; "MR. MALONE, / I'VE COME ACROSS / SOMETHING STRANGE.I'VE BEEN MAKING / PAYMENTS TO THE / COPS IN CHICAGO ONBE...
Text14Message68:
    INCBIN "../../res/text/US/banks/14.bin", $1f6c, $2
jr_014_5f6e:
    INCBIN "../../res/text/US/banks/14.bin", $1f6e, $1d
jr_014_5f8b:
    INCBIN "../../res/text/US/banks/14.bin", $1f8b, $1a
jr_014_5fa5:
    INCBIN "../../res/text/US/banks/14.bin", $1fa5, $18
jr_014_5fbd:
    INCBIN "../../res/text/US/banks/14.bin", $1fbd, $79
jr_014_6036:
    INCBIN "../../res/text/US/banks/14.bin", $2036, $52
jr_014_6088:
    INCBIN "../../res/text/US/banks/14.bin", $2088, $37
jr_014_60bf:
    INCBIN "../../res/text/US/banks/14.bin", $20bf, $29
jr_014_60e8:
    INCBIN "../../res/text/US/banks/14.bin", $20e8, $7
jr_014_60ef:
    INCBIN "../../res/text/US/banks/14.bin", $20ef, $27
jr_014_6116:
    INCBIN "../../res/text/US/banks/14.bin", $2116, $5
jr_014_611b:
    INCBIN "../../res/text/US/banks/14.bin", $211b, $f
; YOU STAND IN A / ROOM THAT LOOKS / LIKE IT WAS TURNEDINSIDE OUT.[END]
Text14Message69:
    INCBIN "../../res/text/US/banks/14.bin", $212a, $3d
; IT'S AN ELK HEAD / YOU WON IN A POKERGAME.[END]
Text14Message6A:
    INCBIN "../../res/text/US/banks/14.bin", $2167, $1f
jr_014_6186:
    INCBIN "../../res/text/US/banks/14.bin", $2186, $2
jr_014_6188:
    INCBIN "../../res/text/US/banks/14.bin", $2188, $8
; IT'S A PICTURE OF / YOU WITH FATHER / O'MALLEY.[PAGE] / HE'S THE KIND SOULWHO GUIDED YOU TO / THIS FINE LIFE ...
Text14Message6B:
    INCBIN "../../res/text/US/banks/14.bin", $2190, $1f
jr_014_61af:
    INCBIN "../../res/text/US/banks/14.bin", $21af, $2c
jr_014_61db:
    INCBIN "../../res/text/US/banks/14.bin", $21db, $e
jr_014_61e9:
    INCBIN "../../res/text/US/banks/14.bin", $21e9, $19
jr_014_6202:
    INCBIN "../../res/text/US/banks/14.bin", $2202, $5
; IT'S WHAT USED TO / BE YOUR COUCH, / BEFORE STOGIE USEDIT FOR TARGET / PRACTICE.[END]
Text14Message6C:
    INCBIN "../../res/text/US/banks/14.bin", $2207, $4b
; YOU'VE ALWAYS / ENJOYED THE / YELLOW PATTERN / OF THESE CURTAINS.[END]
Text14Message6D:
    INCBIN "../../res/text/US/banks/14.bin", $2252, $10
jr_014_6262:
    INCBIN "../../res/text/US/banks/14.bin", $2262, $10
jr_014_6272:
    INCBIN "../../res/text/US/banks/14.bin", $2272, $1c
; IT'S YOUR SPARE / SUIT.[PAGE] / THERE'S SOMETHING / HEAVY IN THE / POCKET.[END]
Text14Message6E:
    INCBIN "../../res/text/US/banks/14.bin", $228e, $15
jr_014_62a3:
    INCBIN "../../res/text/US/banks/14.bin", $22a3, $a
jr_014_62ad:
    INCBIN "../../res/text/US/banks/14.bin", $22ad, $1e
; IT'S A POLYESTER / TUX COAT. YOU'VE / NO IDEA WHY YOU / EVER PURCHASED IT![END]
Text14Message6F:
    INCBIN "../../res/text/US/banks/14.bin", $22cb, $1f
jr_014_62ea:
    INCBIN "../../res/text/US/banks/14.bin", $22ea, $16
jr_014_6300:
    INCBIN "../../res/text/US/banks/14.bin", $2300, $9
jr_014_6309:
    INCBIN "../../res/text/US/banks/14.bin", $2309, $7
; THE .38 IS STILL / HERE.[PAGE] / GOOD THING STOGIE / MISSED THIS![END]
Text14Message70:
    INCBIN "../../res/text/US/banks/14.bin", $2310, $3
jr_014_6313:
    INCBIN "../../res/text/US/banks/14.bin", $2313, $1f
jr_014_6332:
    INCBIN "../../res/text/US/banks/14.bin", $2332, $14
; IT'S A .38 / SPECIAL; CHEAP BUTOCCASIONALLY / EFFECTIVE.[END]
Text14Message71:
    INCBIN "../../res/text/US/banks/14.bin", $2346, $3
jr_014_6349:
    INCBIN "../../res/text/US/banks/14.bin", $2349, $25
jr_014_636e:
    INCBIN "../../res/text/US/banks/14.bin", $236e, $d
; IT'S A DENTED / BATTERY-OPERATED / FLASHLIGHT.[END]
Text14Message72:
    INCBIN "../../res/text/US/banks/14.bin", $237b, $7
jr_014_6382:
    INCBIN "../../res/text/US/banks/14.bin", $2382, $b
jr_014_638d:
    INCBIN "../../res/text/US/banks/14.bin", $238d, $d
jr_014_639a:
    INCBIN "../../res/text/US/banks/14.bin", $239a, $c
; THIS DRAWER IS / USUALLY IN THE / NIGHT TABLE.[END]
Text14Message73:
    INCBIN "../../res/text/US/banks/14.bin", $23a6, $1f
jr_014_63c5:
    INCBIN "../../res/text/US/banks/14.bin", $23c5, $c
; IT'S A PLAIN / CARDBOARD BOX.[END]
Text14Message74:
    INCBIN "../../res/text/US/banks/14.bin", $23d1, $6
jr_014_63d7:
    INCBIN "../../res/text/US/banks/14.bin", $23d7, $16
; DANNY VENTINI MUSTBE MALONE'S RIGHT / HAND MAN! IF THAT / IS SO, THEN WHAT / IS HE DOING WITH / A SECRET OFFI...
Text14Message75:
    INCBIN "../../res/text/US/banks/14.bin", $23ed, $3
jr_014_63f0:
    INCBIN "../../res/text/US/banks/14.bin", $23f0, $74
; MORE OF YOUR / "GOOD" LUCK... / THERE'S NOT A DROPLEFT INSIDE.[END]
Text14Message76:
    INCBIN "../../res/text/US/banks/14.bin", $2464, $18
jr_014_647c:
    INCBIN "../../res/text/US/banks/14.bin", $247c, $21
jr_014_649d:
    INCBIN "../../res/text/US/banks/14.bin", $249d, $2
; THE LAMP IS / CRACKED.[PAGE] / YOU CAN'T REMEMBERIF IT WAS LIKE / THIS BEFORE STOGIEGOT HIS PAWS ON / IT. PRO...
Text14Message77:
    INCBIN "../../res/text/US/banks/14.bin", $249f, $1f
jr_014_64be:
    INCBIN "../../res/text/US/banks/14.bin", $24be, $12
jr_014_64d0:
    INCBIN "../../res/text/US/banks/14.bin", $24d0, $39
; THIS D CELL / BATTERY HAS BEGUN / TO CORRODE.[END]
Text14Message78:
    INCBIN "../../res/text/US/banks/14.bin", $2509, $2a
; YOU FIGURE THAT / MIGHT BE THE / CONNECTION! SIEGELWAS PAYING OFF / COURIER #0 AND / VENTINI HAD TO / KNOW![END]
Text14Message79:
    INCBIN "../../res/text/US/banks/14.bin", $2533, $10
jr_014_6543:
    INCBIN "../../res/text/US/banks/14.bin", $2543, $2f
jr_014_6572:
    INCBIN "../../res/text/US/banks/14.bin", $2572, $23
; THE SURROUNDINGS / LIGHT UP.[END]
Text14Message7A:
    INCBIN "../../res/text/US/banks/14.bin", $2595, $1
jr_014_6596:
    INCBIN "../../res/text/US/banks/14.bin", $2596, $1a
; IT'S YOUR OLD / PENKNIFE.[END]
Text14Message7B:
    INCBIN "../../res/text/US/banks/14.bin", $25b0, $18
; THE BLADE OF THE / PENKNIFE IS SMALL,BUT IN THE RIGHT / HANDS, IT CAN BE / EFFECTIVE.[END]
Text14Message7C:
    INCBIN "../../res/text/US/banks/14.bin", $25c8, $7
jr_014_65cf:
    INCBIN "../../res/text/US/banks/14.bin", $25cf, $18
jr_014_65e7:
    INCBIN "../../res/text/US/banks/14.bin", $25e7, $31
; LOOKS LIKE SIEGEL / WAS INVOLVED IN / EVEN MORE SHADY / STUFF THAN YOU / THOUGHT.[PAGE] / YOU WONDER WHO'S / ...
Text14Message7D:
    INCBIN "../../res/text/US/banks/14.bin", $2618, $1f
jr_014_6637:
    INCBIN "../../res/text/US/banks/14.bin", $2637, $2e
jr_014_6665:
    INCBIN "../../res/text/US/banks/14.bin", $2665, $d
jr_014_6672:
    INCBIN "../../res/text/US/banks/14.bin", $2672, $c
jr_014_667e:
    INCBIN "../../res/text/US/banks/14.bin", $267e, $5
; THE SMALL BRASS / KEY IS TARNISHED.[END]
Text14Message7E:
    INCBIN "../../res/text/US/banks/14.bin", $2683, $1f
jr_014_66a2:
    INCBIN "../../res/text/US/banks/14.bin", $26a2, $3
; THIS SMALL / PROJECTILE WAS / DESIGNED TO BE / USED IN A .38 / SPECIAL.[END]
Text14Message7F:
    INCBIN "../../res/text/US/banks/14.bin", $26a5, $c
jr_014_66b1:
    INCBIN "../../res/text/US/banks/14.bin", $26b1, $48
jr_014_66f9:
    INCBIN "../../res/text/US/banks/14.bin", $26f9, $b
jr_014_6704:
    INCBIN "../../res/text/US/banks/14.bin", $2704, $9
jr_014_670d:
    INCBIN "../../res/text/US/banks/14.bin", $270d, $18f3
