; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text0FMsgs0:
    db LOW(Text0FMessage00), HIGH(Text0FMessage00)
    db LOW(Text0FMessage01), HIGH(Text0FMessage01)
    db LOW(Text0FMessage02), HIGH(Text0FMessage02)
    db LOW(Text0FMessage03), HIGH(Text0FMessage03)
    db LOW(Text0FMessage04), HIGH(Text0FMessage04)
    db LOW(Text0FMessage05), HIGH(Text0FMessage05)
    db LOW(Text0FMessage06), HIGH(Text0FMessage06)
    db LOW(Text0FMessage07), HIGH(Text0FMessage07)
    db LOW(Text0FMessage08), HIGH(Text0FMessage08)
    db LOW(Text0FMessage09), HIGH(Text0FMessage09)
    db LOW(Text0FMessage0A), HIGH(Text0FMessage0A)
    db LOW(Text0FMessage0B), HIGH(Text0FMessage0B)
    db LOW(Text0FMessage0C), HIGH(Text0FMessage0C)
    db LOW(Text0FMessage0D), HIGH(Text0FMessage0D)
    db LOW(Text0FMessage0E), HIGH(Text0FMessage0E)
    db LOW(Text0FMessage0F), HIGH(Text0FMessage0F)
    db LOW(Text0FMessage10), HIGH(Text0FMessage10)
    db LOW(Text0FMessage11), HIGH(Text0FMessage11)
    db LOW(Text0FMessage12), HIGH(Text0FMessage12)
    db LOW(Text0FMessage13), HIGH(Text0FMessage13)
    db LOW(Text0FMessage14), HIGH(Text0FMessage14)
    db LOW(Text0FMessage15), HIGH(Text0FMessage15)
    db LOW(Text0FMessage16), HIGH(Text0FMessage16)
    db LOW(Text0FMessage17), HIGH(Text0FMessage17)
    db LOW(Text0FMessage18), HIGH(Text0FMessage18)
    db LOW(Text0FMessage19), HIGH(Text0FMessage19)
    db LOW(Text0FMessage1A), HIGH(Text0FMessage1A)
    db LOW(Text0FMessage1B), HIGH(Text0FMessage1B)
    db LOW(Text0FMessage1C), HIGH(Text0FMessage1C)
    db LOW(Text0FMessage1D), HIGH(Text0FMessage1D)
    db LOW(Text0FMessage1E), HIGH(Text0FMessage1E)
    db LOW(Text0FMessage1F), HIGH(Text0FMessage1F)
    db LOW(Text0FMessage20), HIGH(Text0FMessage20)
    db LOW(Text0FMessage21), HIGH(Text0FMessage21)
    db LOW(Text0FMessage22), HIGH(Text0FMessage22)
    db LOW(Text0FMessage23), HIGH(Text0FMessage23)
    db LOW(Text0FMessage24), HIGH(Text0FMessage24)
    db LOW(Text0FMessage25), HIGH(Text0FMessage25)
    db LOW(Text0FMessage26), HIGH(Text0FMessage26)
    db LOW(Text0FMessage27), HIGH(Text0FMessage27)
    db LOW(Text0FMessage28), HIGH(Text0FMessage28)
    db LOW(Text0FMessage29), HIGH(Text0FMessage29)
    db LOW(Text0FMessage2A), HIGH(Text0FMessage2A)
    db LOW(Text0FMessage2B), HIGH(Text0FMessage2B)
    db LOW(Text0FMessage2C), HIGH(Text0FMessage2C)
    db LOW(Text0FMessage2D), HIGH(Text0FMessage2D)
    db LOW(Text0FMessage2E), HIGH(Text0FMessage2E)
    db LOW(Text0FMessage2F), HIGH(Text0FMessage2F)
    db LOW(Text0FMessage30), HIGH(Text0FMessage30)
    db LOW(Text0FMessage31), HIGH(Text0FMessage31)
    db LOW(Text0FMessage32), HIGH(Text0FMessage32)
    db LOW(Text0FMessage33), HIGH(Text0FMessage33)
    db LOW(Text0FMessage34), HIGH(Text0FMessage34)
    db LOW(Text0FMessage35), HIGH(Text0FMessage35)
    db LOW(Text0FMessage36), HIGH(Text0FMessage36)
    db LOW(Text0FMessage37), HIGH(Text0FMessage37)
    db LOW(Text0FMessage38), HIGH(Text0FMessage38)
    db LOW(Text0FMessage39), HIGH(Text0FMessage39)
    db LOW(Text0FMessage3A), HIGH(Text0FMessage3A)
    db LOW(Text0FMessage3B), HIGH(Text0FMessage3B)
    db LOW(Text0FMessage3C), HIGH(Text0FMessage3C)
    db LOW(Text0FMessage3D), HIGH(Text0FMessage3D)
    db LOW(Text0FMessage3E), HIGH(Text0FMessage3E)
    db LOW(Text0FMessage3F), HIGH(Text0FMessage3F)
; IT'S A PATIENT'S / MEDICAL RECORD:[PAGE] / "SYMPTOMS: / FAINTING. STOMACH / PAINS. FEVERISH. / VOMITING. / -S...
Text0FMessage00:
    INCBIN "../../res/text/US/banks/0f.bin", $80, $31
jr_00f_40b1:
    INCBIN "../../res/text/US/banks/0f.bin", $b1, $7
jr_00f_40b8:
    INCBIN "../../res/text/US/banks/0f.bin", $b8, $18
jr_00f_40d0:
    INCBIN "../../res/text/US/banks/0f.bin", $d0, $f
jr_00f_40df:
    INCBIN "../../res/text/US/banks/0f.bin", $df, $44
jr_00f_4123:
    INCBIN "../../res/text/US/banks/0f.bin", $123, $16
; THIS CONTAINS AN / INDEX OF / MEDICINES:[PAGE] / "OFREEALL: / MEDICINE USED / IN THE TREATMENT / OF PATIENTS ...
Text0FMessage01:
    INCBIN "../../res/text/US/banks/0f.bin", $139, $99
jr_00f_41d2:
    INCBIN "../../res/text/US/banks/0f.bin", $1d2, $5a
jr_00f_422c:
    INCBIN "../../res/text/US/banks/0f.bin", $22c, $3e
jr_00f_426a:
    INCBIN "../../res/text/US/banks/0f.bin", $26a, $11
jr_00f_427b:
    INCBIN "../../res/text/US/banks/0f.bin", $27b, $d
jr_00f_4288:
    INCBIN "../../res/text/US/banks/0f.bin", $288, $45
jr_00f_42cd:
    INCBIN "../../res/text/US/banks/0f.bin", $2cd, $c1
jr_00f_438e:
    INCBIN "../../res/text/US/banks/0f.bin", $38e, $37
jr_00f_43c5:
    INCBIN "../../res/text/US/banks/0f.bin", $3c5, $18
jr_00f_43dd:
    INCBIN "../../res/text/US/banks/0f.bin", $3dd, $49
jr_00f_4426:
    INCBIN "../../res/text/US/banks/0f.bin", $426, $2
jr_00f_4428:
    INCBIN "../../res/text/US/banks/0f.bin", $428, $4d
jr_00f_4475:
    INCBIN "../../res/text/US/banks/0f.bin", $475, $2d
; YOU'RE IN FRONT OFA PRIVATE EYE'S / OFFICE.[END]
Text0FMessage02:
    INCBIN "../../res/text/US/banks/0f.bin", $4a2, $10
jr_00f_44b2:
    INCBIN "../../res/text/US/banks/0f.bin", $4b2, $1a
; ANOTHER MEMORY / FROM YOUR / CHILDHOOD WASHES / OVER YOU... / IT'S YOUR MOTHER![PAGE] / SHE'S BAKED A CAKEFOR...
Text0FMessage03:
    INCBIN "../../res/text/US/banks/0f.bin", $4cc, $1f
jr_00f_44eb:
    INCBIN "../../res/text/US/banks/0f.bin", $4eb, $d
jr_00f_44f8:
    INCBIN "../../res/text/US/banks/0f.bin", $4f8, $1f
jr_00f_4517:
    INCBIN "../../res/text/US/banks/0f.bin", $517, $8
jr_00f_451f:
    INCBIN "../../res/text/US/banks/0f.bin", $51f, $1
jr_00f_4520:
    INCBIN "../../res/text/US/banks/0f.bin", $520, $1a
jr_00f_453a:
    INCBIN "../../res/text/US/banks/0f.bin", $53a, $e
jr_00f_4548:
    INCBIN "../../res/text/US/banks/0f.bin", $548, $17
jr_00f_455f:
    INCBIN "../../res/text/US/banks/0f.bin", $55f, $41
jr_00f_45a0:
    INCBIN "../../res/text/US/banks/0f.bin", $5a0, $b
; IT'S PRETTY QUIET / IN THE ROOM.[END]
Text0FMessage04:
    INCBIN "../../res/text/US/banks/0f.bin", $5ab, $3
jr_00f_45ae:
    INCBIN "../../res/text/US/banks/0f.bin", $5ae, $1c
; YOU REEL FROM A / MOMENTARY BOUT / OF DIZZINESS![PAGE] / PAIN EXPLODES / BEHIND YOUR EYES / AS YOUR HEAD / PO...
Text0FMessage05:
    INCBIN "../../res/text/US/banks/0f.bin", $5ca, $7
jr_00f_45d1:
    INCBIN "../../res/text/US/banks/0f.bin", $5d1, $9
jr_00f_45da:
    INCBIN "../../res/text/US/banks/0f.bin", $5da, $f
jr_00f_45e9:
    INCBIN "../../res/text/US/banks/0f.bin", $5e9, $2f
jr_00f_4618:
    INCBIN "../../res/text/US/banks/0f.bin", $618, $4
jr_00f_461c:
    INCBIN "../../res/text/US/banks/0f.bin", $61c, $d
jr_00f_4629:
    INCBIN "../../res/text/US/banks/0f.bin", $629, $2b
jr_00f_4654:
    INCBIN "../../res/text/US/banks/0f.bin", $654, $12
; YOU'RE STANDING / IN FRONT OF / A GRIMY OFFICE.[PAGE] / THE WORDS ON THE / DOOR READ, / "ACE HARDING: / PRIVA...
Text0FMessage06:
    INCBIN "../../res/text/US/banks/0f.bin", $666, $10
jr_00f_4676:
    INCBIN "../../res/text/US/banks/0f.bin", $676, $38
jr_00f_46ae:
    INCBIN "../../res/text/US/banks/0f.bin", $6ae, $1c
; YOU PULL OUT THE / GUN, TAKE QUICK / AIM AND PULL THE / TRIGGER.[END]
Text0FMessage07:
    INCBIN "../../res/text/US/banks/0f.bin", $6ca, $10
jr_00f_46da:
    INCBIN "../../res/text/US/banks/0f.bin", $6da, $15
jr_00f_46ef:
    INCBIN "../../res/text/US/banks/0f.bin", $6ef, $16
; A LETHAL SURPRISE![PAGE] / AN UNKNOWN MAN / TAKES DEADLY AIM / AND FIRES AWAY / WITH HIS TOMMY / GUN![PAGE] /...
Text0FMessage08:
    INCBIN "../../res/text/US/banks/0f.bin", $705, $5f
jr_00f_4764:
    INCBIN "../../res/text/US/banks/0f.bin", $764, $7
jr_00f_476b:
    INCBIN "../../res/text/US/banks/0f.bin", $76b, $8
jr_00f_4773:
    INCBIN "../../res/text/US/banks/0f.bin", $773, $19
jr_00f_478c:
    INCBIN "../../res/text/US/banks/0f.bin", $78c, $24
jr_00f_47b0:
    INCBIN "../../res/text/US/banks/0f.bin", $7b0, $3
; THROUGH THE WINDOWYOU CAN SEE / THE FAINT SHADOW / OF SOMEONE MOVING / ABOUT INSIDE.[END]
Text0FMessage09:
    INCBIN "../../res/text/US/banks/0f.bin", $7b3, $9
jr_00f_47bc:
    INCBIN "../../res/text/US/banks/0f.bin", $7bc, $19
jr_00f_47d5:
    INCBIN "../../res/text/US/banks/0f.bin", $7d5, $2d
; THE BULLET HOLE / AND THE LACK OF / MOVEMENT TELLS / YOU THE THREAT / IS GONE.[END]
Text0FMessage0A:
    INCBIN "../../res/text/US/banks/0f.bin", $802, $1f
jr_00f_4821:
    INCBIN "../../res/text/US/banks/0f.bin", $821, $28
; YOU KICK THE GUY / ON THE FLOOR TO / MAKE SURE HE STAYSDEAD! YOU REALLY / HATED TO DO THAT, / BUT IT WAS HIM ...
Text0FMessage0B:
    INCBIN "../../res/text/US/banks/0f.bin", $849, $1f
jr_00f_4868:
    INCBIN "../../res/text/US/banks/0f.bin", $868, $f
jr_00f_4877:
    INCBIN "../../res/text/US/banks/0f.bin", $877, $17
jr_00f_488e:
    INCBIN "../../res/text/US/banks/0f.bin", $88e, $4
jr_00f_4892:
    INCBIN "../../res/text/US/banks/0f.bin", $892, $18
jr_00f_48aa:
    INCBIN "../../res/text/US/banks/0f.bin", $8aa, $17
jr_00f_48c1:
    INCBIN "../../res/text/US/banks/0f.bin", $8c1, $20
jr_00f_48e1:
    INCBIN "../../res/text/US/banks/0f.bin", $8e1, $4
; YES, ITS COMING / BACK TO YOU... / ACE? ACE / HARDING?... [PAGE] / SOMETHING CLICKS / IN YOUR HEAD! / THAT'S ...
Text0FMessage0C:
    INCBIN "../../res/text/US/banks/0f.bin", $8e5, $28
jr_00f_490d:
    INCBIN "../../res/text/US/banks/0f.bin", $90d, $16
jr_00f_4923:
    INCBIN "../../res/text/US/banks/0f.bin", $923, $14
jr_00f_4937:
    INCBIN "../../res/text/US/banks/0f.bin", $937, $7
jr_00f_493e:
    INCBIN "../../res/text/US/banks/0f.bin", $93e, $16
jr_00f_4954:
    INCBIN "../../res/text/US/banks/0f.bin", $954, $11
; A TYPICAL DESK: / FOUR LEGS AND A / DRAWER.[END]
Text0FMessage0D:
    INCBIN "../../res/text/US/banks/0f.bin", $965, $2
jr_00f_4967:
    INCBIN "../../res/text/US/banks/0f.bin", $967, $26
; THE DEAD MAN LAYS / ON THE FLOOR IN A / POOL OF HIS OWN / BLOOD.[PAGE] / TOO BAD, THE / FLOORS LOOKED LIKETHE...
Text0FMessage0E:
    INCBIN "../../res/text/US/banks/0f.bin", $98d, $23
jr_00f_49b0:
    INCBIN "../../res/text/US/banks/0f.bin", $9b0, $34
jr_00f_49e4:
    INCBIN "../../res/text/US/banks/0f.bin", $9e4, $22
; THE FILE CABINET / LOOKS OLD AND / WORN. A MAN'S / FILES SAYS A LOT / ABOUT HIMSELF![END]
Text0FMessage0F:
    INCBIN "../../res/text/US/banks/0f.bin", $a06, $10
jr_00f_4a16:
    INCBIN "../../res/text/US/banks/0f.bin", $a16, $1
jr_00f_4a17:
    INCBIN "../../res/text/US/banks/0f.bin", $a17, $38
jr_00f_4a4f:
    INCBIN "../../res/text/US/banks/0f.bin", $a4f, $4
; IT'S A DILAPIDATEDSHELF.[END]
Text0FMessage10:
    INCBIN "../../res/text/US/banks/0f.bin", $a53, $19
; IT'S A WINDOW.[PAGE] / IT'S SO GRIMY, / YOU CAN BARELY SEETHROUGH TO THE / STREET BEYOND.[END]
Text0FMessage11:
    INCBIN "../../res/text/US/banks/0f.bin", $a6c, $2b
jr_00f_4a97:
    INCBIN "../../res/text/US/banks/0f.bin", $a97, $3
jr_00f_4a9a:
    INCBIN "../../res/text/US/banks/0f.bin", $a9a, $20
; YOU'RE IN A DIMLY / LIT OFFICE. THE / BARREN FURNISHINGSSAYS A LOT ABOUT / ITS OWNER.[END]
Text0FMessage12:
    INCBIN "../../res/text/US/banks/0f.bin", $aba, $10
jr_00f_4aca:
    INCBIN "../../res/text/US/banks/0f.bin", $aca, $f
jr_00f_4ad9:
    INCBIN "../../res/text/US/banks/0f.bin", $ad9, $10
jr_00f_4ae9:
    INCBIN "../../res/text/US/banks/0f.bin", $ae9, $9
jr_00f_4af2:
    INCBIN "../../res/text/US/banks/0f.bin", $af2, $18
; IT'S EMPTY.[PAGE] / IT WOULD BE / USELESS TO / KEEP IT.[END]
Text0FMessage13:
    INCBIN "../../res/text/US/banks/0f.bin", $b0a, $2b
jr_00f_4b35:
    INCBIN "../../res/text/US/banks/0f.bin", $b35, $1
; YOUR SHOT WAS / RIGHT ON TARGET.[PAGE] / YOU TAKE NO / PLEASURE IN YOUR / ACTIONS, BUT YOU / CONSOLE YOURSELF...
Text0FMessage14:
    INCBIN "../../res/text/US/banks/0f.bin", $b36, $2f
jr_00f_4b65:
    INCBIN "../../res/text/US/banks/0f.bin", $b65, $4d
; ANOTHER MEMORY / SUDDENLY HITS YOU / AS THE MEDICINE / TAKES EFFECT...[PAGE] / IT'S TACO, YOUR / FAVORITE PET...
Text0FMessage15:
    INCBIN "../../res/text/US/banks/0f.bin", $bb2, $b
jr_00f_4bbd:
    INCBIN "../../res/text/US/banks/0f.bin", $bbd, $27
jr_00f_4be4:
    INCBIN "../../res/text/US/banks/0f.bin", $be4, $2a
jr_00f_4c0e:
    INCBIN "../../res/text/US/banks/0f.bin", $c0e, $1
jr_00f_4c0f:
    INCBIN "../../res/text/US/banks/0f.bin", $c0f, $2
jr_00f_4c11:
    INCBIN "../../res/text/US/banks/0f.bin", $c11, $18
jr_00f_4c29:
    INCBIN "../../res/text/US/banks/0f.bin", $c29, $1a
jr_00f_4c43:
    INCBIN "../../res/text/US/banks/0f.bin", $c43, $28
jr_00f_4c6b:
    INCBIN "../../res/text/US/banks/0f.bin", $c6b, $2a
jr_00f_4c95:
    INCBIN "../../res/text/US/banks/0f.bin", $c95, $33
jr_00f_4cc8:
    INCBIN "../../res/text/US/banks/0f.bin", $cc8, $1c
; ANOTHER FLASHBACK / COMES UNBIDDEN, / SIGNALING  THAT / YOUR MEMORY HAS / ALMOST RETURNED...[PAGE] / IT'S SUZ...
Text0FMessage16:
    INCBIN "../../res/text/US/banks/0f.bin", $ce4, $42
jr_00f_4d26:
    INCBIN "../../res/text/US/banks/0f.bin", $d26, $16
jr_00f_4d3c:
    INCBIN "../../res/text/US/banks/0f.bin", $d3c, $19
jr_00f_4d55:
    INCBIN "../../res/text/US/banks/0f.bin", $d55, $2
jr_00f_4d57:
    INCBIN "../../res/text/US/banks/0f.bin", $d57, $6
jr_00f_4d5d:
    INCBIN "../../res/text/US/banks/0f.bin", $d5d, $22
jr_00f_4d7f:
    INCBIN "../../res/text/US/banks/0f.bin", $d7f, $2
jr_00f_4d81:
    INCBIN "../../res/text/US/banks/0f.bin", $d81, $1f
jr_00f_4da0:
    INCBIN "../../res/text/US/banks/0f.bin", $da0, $18
jr_00f_4db8:
    INCBIN "../../res/text/US/banks/0f.bin", $db8, $9
jr_00f_4dc1:
    INCBIN "../../res/text/US/banks/0f.bin", $dc1, $2f
jr_00f_4df0:
    INCBIN "../../res/text/US/banks/0f.bin", $df0, $2f
; THE NEGLIGENT / SCRAWL IS HARD TO / READ, "SUGAR SHACKIS KNOWN TO HAVE ADEEP HATRED OF / JOEY SIEGEL. MUST / ...
Text0FMessage17:
    INCBIN "../../res/text/US/banks/0f.bin", $e1f, $72
jr_00f_4e91:
    INCBIN "../../res/text/US/banks/0f.bin", $e91, $8
jr_00f_4e99:
    INCBIN "../../res/text/US/banks/0f.bin", $e99, $9
; YOU READ THE OLD / NEWSPAPER CLIPPINGIN THE FILE,[PAGE] / "SUGAR SHACK USED / HER LITTLE BLACK / BOOK TO BLAC...
Text0FMessage18:
    INCBIN "../../res/text/US/banks/0f.bin", $ea2, $10
jr_00f_4eb2:
    INCBIN "../../res/text/US/banks/0f.bin", $eb2, $d4
jr_00f_4f86:
    INCBIN "../../res/text/US/banks/0f.bin", $f86, $1d
; THE HANDWRITTEN / NOTE READS, "ACE, / YOU OWE ME AND / THIS IS THE ONLY / WAY TO GET OFF THEHOOK.[PAGE] / IT'...
Text0FMessage19:
    INCBIN "../../res/text/US/banks/0f.bin", $fa3, $1e
jr_00f_4fc1:
    INCBIN "../../res/text/US/banks/0f.bin", $fc1, $14
jr_00f_4fd5:
    INCBIN "../../res/text/US/banks/0f.bin", $fd5, $2d
jr_00f_5002:
    INCBIN "../../res/text/US/banks/0f.bin", $1002, $1
jr_00f_5003:
    INCBIN "../../res/text/US/banks/0f.bin", $1003, $52
jr_00f_5055:
    INCBIN "../../res/text/US/banks/0f.bin", $1055, $18
jr_00f_506d:
    INCBIN "../../res/text/US/banks/0f.bin", $106d, $c
jr_00f_5079:
    INCBIN "../../res/text/US/banks/0f.bin", $1079, $a
jr_00f_5083:
    INCBIN "../../res/text/US/banks/0f.bin", $1083, $2b
jr_00f_50ae:
    INCBIN "../../res/text/US/banks/0f.bin", $10ae, $44
jr_00f_50f2:
    INCBIN "../../res/text/US/banks/0f.bin", $10f2, $c
jr_00f_50fe:
    INCBIN "../../res/text/US/banks/0f.bin", $10fe, $e
jr_00f_510c:
    INCBIN "../../res/text/US/banks/0f.bin", $110c, $15
jr_00f_5121:
    INCBIN "../../res/text/US/banks/0f.bin", $1121, $a
jr_00f_512b:
    INCBIN "../../res/text/US/banks/0f.bin", $112b, $39
jr_00f_5164:
    INCBIN "../../res/text/US/banks/0f.bin", $1164, $22
jr_00f_5186:
    INCBIN "../../res/text/US/banks/0f.bin", $1186, $18
jr_00f_519e:
    INCBIN "../../res/text/US/banks/0f.bin", $119e, $1a
jr_00f_51b8:
    INCBIN "../../res/text/US/banks/0f.bin", $11b8, $8
; YOU STAND ON THE / SPRAWLING GROUNDS / OF A LARGE ESTATE.[PAGE] / THE RESEMBLANCE TOTARA FROM "GONE / WITH TH...
Text0FMessage1A:
    INCBIN "../../res/text/US/banks/0f.bin", $11c0, $3
jr_00f_51c3:
    INCBIN "../../res/text/US/banks/0f.bin", $11c3, $a
jr_00f_51cd:
    INCBIN "../../res/text/US/banks/0f.bin", $11cd, $3
jr_00f_51d0:
    INCBIN "../../res/text/US/banks/0f.bin", $11d0, $42
jr_00f_5212:
    INCBIN "../../res/text/US/banks/0f.bin", $1212, $21
; IT'S A MAIL BOX. / THE NUMBER 626 IS / NEATLY PAINTED ON / IT. [END]
Text0FMessage1B:
    INCBIN "../../res/text/US/banks/0f.bin", $1233, $26
jr_00f_5259:
    INCBIN "../../res/text/US/banks/0f.bin", $1259, $14
; THE NAME "MR. / STERNWOOD" IS / PASTED ON THE / ENVELOPE USING / LETTERS CUT OUT / FROM NEWSPAPERS.[END]
Text0FMessage1C:
    INCBIN "../../res/text/US/banks/0f.bin", $126d, $5a
; IT IS CLEARLY A / RANSOM NOTE. IT / READS, "STERNWOOD,WE HAVE YOUR WIFE.[PAGE] / YOU HAVE EXACTLY / 24 HOURS ...
Text0FMessage1D:
    INCBIN "../../res/text/US/banks/0f.bin", $12c7, $37
jr_00f_52fe:
    INCBIN "../../res/text/US/banks/0f.bin", $12fe, $13
jr_00f_5311:
    INCBIN "../../res/text/US/banks/0f.bin", $1311, $29
jr_00f_533a:
    INCBIN "../../res/text/US/banks/0f.bin", $133a, $16
jr_00f_5350:
    INCBIN "../../res/text/US/banks/0f.bin", $1350, $f
jr_00f_535f:
    INCBIN "../../res/text/US/banks/0f.bin", $135f, $28
jr_00f_5387:
    INCBIN "../../res/text/US/banks/0f.bin", $1387, $29
jr_00f_53b0:
    INCBIN "../../res/text/US/banks/0f.bin", $13b0, $41
jr_00f_53f1:
    INCBIN "../../res/text/US/banks/0f.bin", $13f1, $1
jr_00f_53f2:
    INCBIN "../../res/text/US/banks/0f.bin", $13f2, $9
jr_00f_53fb:
    INCBIN "../../res/text/US/banks/0f.bin", $13fb, $31
jr_00f_542c:
    INCBIN "../../res/text/US/banks/0f.bin", $142c, $10
; WHOEVER OWNS THIS / PLACE MUST REALLY / HAVE THE BUCKS![END]
Text0FMessage1E:
    INCBIN "../../res/text/US/banks/0f.bin", $143c, $34
; YOU CAN'T SEE / ANYONE AROUND.[END]
Text0FMessage1F:
    INCBIN "../../res/text/US/banks/0f.bin", $1470, $d
jr_00f_547d:
    INCBIN "../../res/text/US/banks/0f.bin", $147d, $3
jr_00f_5480:
    INCBIN "../../res/text/US/banks/0f.bin", $1480, $d
; YOU'RE AT THE / FRONT DOOR OF / THE MANSION.[PAGE] / THE DOOR HAS / A HUGE KNOCKER / ON IT.[END]
Text0FMessage20:
    INCBIN "../../res/text/US/banks/0f.bin", $148d, $3
jr_00f_5490:
    INCBIN "../../res/text/US/banks/0f.bin", $1490, $1c
jr_00f_54ac:
    INCBIN "../../res/text/US/banks/0f.bin", $14ac, $2d
; THE DOOR REFUSES / TO BUDGE.[PAGE] / MIGHT BE BETTER TOTRY COMMON SENSE / AND TRY KNOCKING.[END]
Text0FMessage21:
    INCBIN "../../res/text/US/banks/0f.bin", $14d9, $37
jr_00f_5510:
    INCBIN "../../res/text/US/banks/0f.bin", $1510, $19
; IN YOUR / EXCITEMENT, YOUR / AIM IS WAY OFF![PAGE] / IT SEEMS THAT YOU / HAVE MISSED YOUR / TARGET![END]
Text0FMessage22:
    INCBIN "../../res/text/US/banks/0f.bin", $1529, $13
jr_00f_553c:
    INCBIN "../../res/text/US/banks/0f.bin", $153c, $11
jr_00f_554d:
    INCBIN "../../res/text/US/banks/0f.bin", $154d, $1a
jr_00f_5567:
    INCBIN "../../res/text/US/banks/0f.bin", $1567, $9
jr_00f_5570:
    INCBIN "../../res/text/US/banks/0f.bin", $1570, $d
; YOU RAP THE / KNOCKER AGAINST / THE DOOR.[END]
Text0FMessage23:
    INCBIN "../../res/text/US/banks/0f.bin", $157d, $3
jr_00f_5580:
    INCBIN "../../res/text/US/banks/0f.bin", $1580, $d
jr_00f_558d:
    INCBIN "../../res/text/US/banks/0f.bin", $158d, $16
; AN OLD MAN COMES / AND ANSWERS THE / DOOR. IN A / CONDESCENDING / TONE THE BUTLER / EXPLAINS THAT HE / HAS OR...
Text0FMessage24:
    INCBIN "../../res/text/US/banks/0f.bin", $15a3, $83
jr_00f_5626:
    INCBIN "../../res/text/US/banks/0f.bin", $1626, $45
; THIS OLD BUTLER / LOOKS LIKE HE / MIGHT BE A / PROBLEM, BUT / YOU'VE NO DOUBT / YOU CAN HANDLE / HIM.[END]
Text0FMessage25:
    INCBIN "../../res/text/US/banks/0f.bin", $166b, $15
jr_00f_5680:
    INCBIN "../../res/text/US/banks/0f.bin", $1680, $a
jr_00f_568a:
    INCBIN "../../res/text/US/banks/0f.bin", $168a, $27
jr_00f_56b1:
    INCBIN "../../res/text/US/banks/0f.bin", $16b1, $10
jr_00f_56c1:
    INCBIN "../../res/text/US/banks/0f.bin", $16c1, $4
; CLICK! THERE / AREN'T ANY BULLETSIN THE GUN.[PAGE] / THE BUTLER CALMLY / ASKS, "WOULD YOU / PLEASE PUT THAT /...
Text0FMessage26:
    INCBIN "../../res/text/US/banks/0f.bin", $16c5, $32
jr_00f_56f7:
    INCBIN "../../res/text/US/banks/0f.bin", $16f7, $15
jr_00f_570c:
    INCBIN "../../res/text/US/banks/0f.bin", $170c, $13
jr_00f_571f:
    INCBIN "../../res/text/US/banks/0f.bin", $171f, $f
; HMMM. / THIS KEY WON'T / FIT.[END]
Text0FMessage27:
    INCBIN "../../res/text/US/banks/0f.bin", $172e, $1a
; IT'S PROBABLY ONE / OF THE LARGEST / CHANDELIERS YOU'VEEVER SEEN![PAGE] / IT'S MUCH TOO / BRIGHT TO LOOK AT /...
Text0FMessage28:
    INCBIN "../../res/text/US/banks/0f.bin", $1748, $4
jr_00f_574c:
    INCBIN "../../res/text/US/banks/0f.bin", $174c, $5
jr_00f_5751:
    INCBIN "../../res/text/US/banks/0f.bin", $1751, $34
jr_00f_5785:
    INCBIN "../../res/text/US/banks/0f.bin", $1785, $2b
; YOU'RE IN THE / MANSION VESTIBULE.THIS ROOM IS / BIGGER THAN A CITYBLOCK![END]
Text0FMessage29:
    INCBIN "../../res/text/US/banks/0f.bin", $17b0, $10
jr_00f_57c0:
    INCBIN "../../res/text/US/banks/0f.bin", $17c0, $36
; SLAM![PAGE] / THE BUTLER THROWS / THE DOOR SHUT! IF / YOU HADN'T OF / JUMPED BACK, YOU / WOULD HAVE BEEN / CL...
Text0FMessage2A:
    INCBIN "../../res/text/US/banks/0f.bin", $17f6, $3a
jr_00f_5830:
    INCBIN "../../res/text/US/banks/0f.bin", $1830, $3a
; YOU TAKE DEADLY / AIM AND SHOT THE / SNOOTY BUTLER! THESOUND BRINGS A / BUNCH OF STARTLED / CLEANING SERVANTS...
Text0FMessage2B:
    INCBIN "../../res/text/US/banks/0f.bin", $186a, $10
jr_00f_587a:
    INCBIN "../../res/text/US/banks/0f.bin", $187a, $1d
jr_00f_5897:
    INCBIN "../../res/text/US/banks/0f.bin", $1897, $15
jr_00f_58ac:
    INCBIN "../../res/text/US/banks/0f.bin", $18ac, $57
jr_00f_5903:
    INCBIN "../../res/text/US/banks/0f.bin", $1903, $62
jr_00f_5965:
    INCBIN "../../res/text/US/banks/0f.bin", $1965, $d
jr_00f_5972:
    INCBIN "../../res/text/US/banks/0f.bin", $1972, $9
; YOU SEE SOMEONE'S / SHADOW MOVING / BEYOND THE GLASS.[END]
Text0FMessage2C:
    INCBIN "../../res/text/US/banks/0f.bin", $197b, $7
jr_00f_5982:
    INCBIN "../../res/text/US/banks/0f.bin", $1982, $9
jr_00f_598b:
    INCBIN "../../res/text/US/banks/0f.bin", $198b, $22
; YOU'VE KNOCKED THEBUTLER OUT WITH A / TREMENDOUS / ROUNDHOUSE TO THE / JAW![PAGE] / HE LIES IN AN / UNCONSCIO...
Text0FMessage2D:
    INCBIN "../../res/text/US/banks/0f.bin", $19ad, $10
jr_00f_59bd:
    INCBIN "../../res/text/US/banks/0f.bin", $19bd, $f
jr_00f_59cc:
    INCBIN "../../res/text/US/banks/0f.bin", $19cc, $54
; YOU'RE IN / THE KITCHEN.[PAGE] / THE PLACE IS SO / CLEAN IT SPARKLES.[END]
Text0FMessage2E:
    INCBIN "../../res/text/US/banks/0f.bin", $1a20, $1f
jr_00f_5a3f:
    INCBIN "../../res/text/US/banks/0f.bin", $1a3f, $14
jr_00f_5a53:
    INCBIN "../../res/text/US/banks/0f.bin", $1a53, $7
; IT'S A SMALL JAR.[END]
Text0FMessage2F:
    INCBIN "../../res/text/US/banks/0f.bin", $1a5a, $12
; WOW! WHAT A RUSH![PAGE] / EATING ALL THAT / SUGAR GIVES YOU A / BURST OF ENERGY![END]
Text0FMessage30:
    INCBIN "../../res/text/US/banks/0f.bin", $1a6c, $3e
jr_00f_5aaa:
    INCBIN "../../res/text/US/banks/0f.bin", $1aaa, $7
; HMM! A LITTLE / PASTY, BUT IT / DOESN'T TASTE TOO / BAD AT ALL![END]
Text0FMessage31:
    INCBIN "../../res/text/US/banks/0f.bin", $1ab1, $39
jr_00f_5aea:
    INCBIN "../../res/text/US/banks/0f.bin", $1aea, $1
; WHAT STARTED OUT / AS A BAD DAY JUST / GOT WORSE![PAGE] / THE DISGRUNTLED / CABBY CALLED THE / POLICE ON YOU....
Text0FMessage32:
    INCBIN "../../res/text/US/banks/0f.bin", $1aeb, $7a
jr_00f_5b65:
    INCBIN "../../res/text/US/banks/0f.bin", $1b65, $14
jr_00f_5b79:
    INCBIN "../../res/text/US/banks/0f.bin", $1b79, $3f
; THIS PAN WAS MADE / FOR FRYIN', / AND THAT'S JUST / WHAT YOU'LL DO IF / YOU DON'T STOP / WASTING TIME.[END]
Text0FMessage33:
    INCBIN "../../res/text/US/banks/0f.bin", $1bb8, $b
jr_00f_5bc3:
    INCBIN "../../res/text/US/banks/0f.bin", $1bc3, $14
jr_00f_5bd7:
    INCBIN "../../res/text/US/banks/0f.bin", $1bd7, $24
jr_00f_5bfb:
    INCBIN "../../res/text/US/banks/0f.bin", $1bfb, $1a
; IT'S A FINELY / DETAILED PORCELAINDISH.[END]
Text0FMessage34:
    INCBIN "../../res/text/US/banks/0f.bin", $1c15, $26
; IT'S A WATER / PITCHER.[PAGE] / BUT, THERE'S NO / WATER IN IT... SO / MAYBE IT'S JUST A / PITCHER.[END]
Text0FMessage35:
    INCBIN "../../res/text/US/banks/0f.bin", $1c3b, $5
jr_00f_5c40:
    INCBIN "../../res/text/US/banks/0f.bin", $1c40, $38
jr_00f_5c78:
    INCBIN "../../res/text/US/banks/0f.bin", $1c78, $16
; IT'S A BIT OF / SLICED SAUSAGE.[END]
Text0FMessage36:
    INCBIN "../../res/text/US/banks/0f.bin", $1c8e, $1e
; THIS TABLE IS / VERY INTERESTING.[PAGE] / ONE COULD STAND / HERE FOR HOURS / JUST ADMIRING / THE NAILS.[END]
Text0FMessage37:
    INCBIN "../../res/text/US/banks/0f.bin", $1cac, $3c
jr_00f_5ce8:
    INCBIN "../../res/text/US/banks/0f.bin", $1ce8, $1c
; YOU'RE IN THE HUGEKITCHEN.[PAGE] / THERE DOESN'T / APPEAR TO BE / ANYONE AROUND.[END]
Text0FMessage38:
    INCBIN "../../res/text/US/banks/0f.bin", $1d04, $10
jr_00f_5d14:
    INCBIN "../../res/text/US/banks/0f.bin", $1d14, $27
jr_00f_5d3b:
    INCBIN "../../res/text/US/banks/0f.bin", $1d3b, $e
; WHAT WOULD YOU / LIKE TO USE THIS / ON?[END]
Text0FMessage39:
    INCBIN "../../res/text/US/banks/0f.bin", $1d49, $3
jr_00f_5d4c:
    INCBIN "../../res/text/US/banks/0f.bin", $1d4c, $18
jr_00f_5d64:
    INCBIN "../../res/text/US/banks/0f.bin", $1d64, $9
; YOU'RE IN THE / UPSTAIRS HALLWAY.[END]
Text0FMessage3A:
    INCBIN "../../res/text/US/banks/0f.bin", $1d6d, $10
jr_00f_5d7d:
    INCBIN "../../res/text/US/banks/0f.bin", $1d7d, $f
jr_00f_5d8c:
    INCBIN "../../res/text/US/banks/0f.bin", $1d8c, $1
; THE MEDICINE / BEGINS TO WORK.[PAGE] / YOUR HEAD STARTS / TO CLEAR AND A / MEMORY ROLLS IN / FROM YOUR / CHIL...
Text0FMessage3B:
    INCBIN "../../res/text/US/banks/0f.bin", $1d8d, $1f
jr_00f_5dac:
    INCBIN "../../res/text/US/banks/0f.bin", $1dac, $e
jr_00f_5dba:
    INCBIN "../../res/text/US/banks/0f.bin", $1dba, $35
jr_00f_5def:
    INCBIN "../../res/text/US/banks/0f.bin", $1def, $1c
jr_00f_5e0b:
    INCBIN "../../res/text/US/banks/0f.bin", $1e0b, $4
jr_00f_5e0f:
    INCBIN "../../res/text/US/banks/0f.bin", $1e0f, $12
jr_00f_5e21:
    INCBIN "../../res/text/US/banks/0f.bin", $1e21, $24
jr_00f_5e45:
    INCBIN "../../res/text/US/banks/0f.bin", $1e45, $46
jr_00f_5e8b:
    INCBIN "../../res/text/US/banks/0f.bin", $1e8b, $2f
jr_00f_5eba:
    INCBIN "../../res/text/US/banks/0f.bin", $1eba, $15
; YOU'RE IN THE / MASTER BEDROOM.[PAGE] / THERE IS A MAN / ASLEEP IN THE BED.[END]
Text0FMessage3C:
    INCBIN "../../res/text/US/banks/0f.bin", $1ecf, $7
jr_00f_5ed6:
    INCBIN "../../res/text/US/banks/0f.bin", $1ed6, $9
jr_00f_5edf:
    INCBIN "../../res/text/US/banks/0f.bin", $1edf, $2a
jr_00f_5f09:
    INCBIN "../../res/text/US/banks/0f.bin", $1f09, $6
; IT'S THE BED THAT / MR. STERNWOOD LIESIN.[END]
Text0FMessage3D:
    INCBIN "../../res/text/US/banks/0f.bin", $1f0f, $1f
jr_00f_5f2e:
    INCBIN "../../res/text/US/banks/0f.bin", $1f2e, $9
; AS FAR AS LAMPS / GO, THIS ONE IS / PRETTY NICE.[END]
Text0FMessage3E:
    INCBIN "../../res/text/US/banks/0f.bin", $1f37, $2d
; IT'S A BLACK / BRIEFCASE, THE / KIND PREFERRED BY / KIDNAPPERS / EVERYWHERE![END]
Text0FMessage3F:
    INCBIN "../../res/text/US/banks/0f.bin", $1f64, $14
jr_00f_5f78:
    INCBIN "../../res/text/US/banks/0f.bin", $1f78, $6cd
Jump_00f_6645:
    INCBIN "../../res/text/US/banks/0f.bin", $2645, $19bb
