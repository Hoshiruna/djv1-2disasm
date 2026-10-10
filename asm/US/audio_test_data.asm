
TestMapAddrs:
    dw $9909, $990a

TestDigitPtrs:
    dw TestDigit0
    dw TestDigit1
    dw TestDigit2
    dw TestDigit3
    dw TestDigit4
    dw TestDigit5
    dw TestDigit6
    dw TestDigit7
    dw TestDigit8
    dw TestDigit9

TestDigit0:
    db $01, $01, $80, $06

TestDigit1:
    db $01, $01, $81, $06

TestDigit2:
    db $01, $01, $82, $06

TestDigit3:
    db $01, $01, $83, $06

TestDigit4:
    db $01, $01, $84, $06

TestDigit5:
    db $01, $01, $85, $06

TestDigit6:
    db $01, $01, $86, $06

TestDigit7:
    db $01, $01, $87, $06

TestDigit8:
    db $01, $01, $88, $06

TestDigit9:
    db $01, $01, $89, $06

; Case ID, audio cue; eighteen records.
TestAudioPairs:
    db $00, $01
    db $00, $02
    db $00, $03
    db $00, $04
    db $00, $0b
    db $00, $0c
    db $00, $0e
    db $01, $01
    db $01, $02
    db $01, $03
    db $01, $04
    db $01, $05
    db $01, $06
    db $01, $07
    db $01, $08
    db $01, $09
    db $01, $0a
    db $01, $0c
