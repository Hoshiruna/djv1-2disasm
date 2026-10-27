
; Audio-test tens and ones tile-map destinations.
AudioTestMapDestinations:
TestMapAddrs:
    dw AudioTestTensMapAddress, AudioTestOnesMapAddress

; Audio-test decimal digit rectangle pointers, zero through nine.
AudioTestDigitPointers:
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
    db $01, $01, $80, AudioTestDigitAttribute

TestDigit1:
    db $01, $01, $81, AudioTestDigitAttribute

TestDigit2:
    db $01, $01, $82, AudioTestDigitAttribute

TestDigit3:
    db $01, $01, $83, AudioTestDigitAttribute

TestDigit4:
    db $01, $01, $84, AudioTestDigitAttribute

TestDigit5:
    db $01, $01, $85, AudioTestDigitAttribute

TestDigit6:
    db $01, $01, $86, AudioTestDigitAttribute

TestDigit7:
    db $01, $01, $87, AudioTestDigitAttribute

TestDigit8:
    db $01, $01, $88, AudioTestDigitAttribute

TestDigit9:
    db $01, $01, $89, AudioTestDigitAttribute

; Case ID, audio cue; eighteen records.
; Audio-test selection records: stored case ID followed by audio request ID.
AudioTestCuePairs:
TestAudioPairs:
    db $00, $01 ; 01: Case I cue $01
    db $00, $02 ; 02: Case I cue $02
    db $00, $03 ; 03: Case I cue $03
    db $00, $04 ; 04: Case I cue $04
    db $00, $0b ; 05: Case I cue $0b
    db $00, $0c ; 06: Case I cue $0c
    db $00, $0e ; 07: Case I cue $0e
    db $01, $01 ; 08: Case II cue $01
    db $01, $02 ; 09: Case II cue $02
    db $01, $03 ; 10: Case II cue $03
    db $01, $04 ; 11: Case II cue $04
    db $01, $05 ; 12: Case II cue $05
    db $01, $06 ; 13: Case II cue $06
    db $01, $07 ; 14: Case II cue $07
    db $01, $08 ; 15: Case II cue $08
    db $01, $09 ; 16: Case II cue $09
    db $01, $0a ; 17: Case II cue $0a
    db $01, $0c ; 18: Case II cue $0c
