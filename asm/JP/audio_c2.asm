; Audio IDs $01..$33; index is (request-1)*2 in eight-bit arithmetic.
C2AudioPtrs:
    dw AudioCueC2_01
    dw AudioCueC2_02
jr_004_636e:
    dw AudioCueC2_03
    dw AudioCueC2_04
    dw AudioCueC2_05
    dw AudioCueC2_06
    dw AudioCueC2_07
    dw AudioCueC2_08
    dw AudioCueC2_09
    dw AudioCueC2_0A
    dw AudioCueC1_02
    dw AudioCueC2_0C
    dw AudioCueC1_0C
    dw AudioCueC2_0E
    dw AudioCueC2_0F
    dw AudioCueC2_10
    dw AudioCueC2_11
    dw AudioCueC1_23
    dw AudioCueC2_13
    dw AudioCueC2_14
    dw AudioCueC2_15
    dw AudioCueC2_16
    dw AudioCueC1_1B
    dw AudioCueC1_31
    dw AudioCueC1_19
    dw AudioCueC2_1A
    dw AudioCueC2_1B
    dw AudioCueC2_1C
    dw AudioCueC1_27
    dw AudioCueC2_0E
    dw AudioCueC2_0F
    dw AudioCueC2_20
    dw AudioCueC2_21
    dw AudioCueC2_22
    dw AudioCueC2_23
    dw AudioCueC2_24
    dw AudioCueC2_25
    dw AudioCueC2_26
    dw AudioCueC2_27
    dw AudioCueC2_28
    dw AudioCueC2_0E
    dw AudioCueC2_0E
    dw AudioCueC2_0E
    dw AudioCueC2_0E
    dw AudioCueC2_0E
    dw AudioCueC2_0E
    dw AudioCueC1_2F
    dw AudioCueC2_0E
    dw AudioCueC2_0E
    dw AudioCueC2_0E
    dw AudioCueC1_33

; Records: type, speed, four stream pointers, two instrument pointers.
; Stream/instrument bytes and unreferenced data retain their original order.
; Audio record first indexed by Case II request $01; type 1, fourteen bytes.
AudioCueC2_01:
Audio63d0:
    db $01, $14
    dw AudioC2_01_BaseP2Seq
    dw AudioC2_01_BaseP1Seq
    dw AudioC2_01_BaseWaveSeq
    dw AudioC2_01_BaseNoiseSeq
    dw AudioC2_01_PulseWaveInsts
    dw AudioC2_01_NoiseInsts
; Stream indexed by AudioCueC2_01 for the base pulse 2 slot; shared references retain this address.
AudioC2_01_BaseP2Seq:
Seq63de:
    db $e0, $00, $03, $81, $7f, $90
jr_004_63e4:
    db $7f, $7f, $2d, $32, $7e, $32, $7f, $81, $35, $32, $90, $35, $7e, $35, $32, $82
    db $7f, $90, $7f, $7f, $2d, $32, $7e, $32, $34, $8a, $35, $84, $7f, $8a, $35, $84
    db $7f, $8a, $32, $84, $7f, $8a, $32, $84, $7f, $90, $35, $7e, $35, $32, $82, $7f
    db $90, $7f, $7f, $2d, $8a, $32, $84, $7f, $81, $34, $82, $32, $8a, $31, $84, $7f
    db $90, $34, $7e, $34, $31, $82, $7f, $90, $7f, $7f, $31, $32, $7e, $32, $34, $8a
    db $35, $84, $7f, $8a, $35, $84, $7f, $8a, $32, $84, $7f, $8a, $32, $84, $7f, $90
    db $35, $7e, $35, $32, $82, $7f, $90, $7f, $7f, $39, $8a, $3e, $84, $7f, $81, $3d
    db $7e, $83, $3d, $7f, $8a, $3d, $84, $7f, $8a, $3d, $84, $7f, $8a, $3a, $84, $7f
    db $8a, $39, $84, $7f, $82, $37, $35, $37, $39, $90, $3e, $7e, $3e, $39, $7e, $81
    db $39, $90, $7f, $7f, $39, $8a, $3e, $84, $7f, $89, $3d, $7e, $84, $3d, $7f, $82
    db $3d, $3e, $83, $40, $7f, $82, $39, $8a, $3b, $84, $7f, $90, $3d, $7e, $3d, $3e
    db $7f, $7f, $3e, $83, $3c, $7f
jr_004_649a:
    db $3a, $7f, $39, $7f, $82, $38, $7e, $90, $38, $7e, $38, $39, $7e, $81, $39, $ff
; Stream indexed by AudioCueC2_01 for the base pulse 1 slot; shared references retain this address.
AudioC2_01_BaseP1Seq:
Seq64aa:
    db $e1, $00, $03, $80, $7f, $e1, $00, $81, $2d, $2d, $90, $32, $7e, $32, $2d, $88
    db $7f, $8a, $2d, $84, $7f, $8a, $2d, $84, $7f, $8a, $2d, $84, $7f, $8a, $2d, $84
    db $7f, $90, $32, $7e, $32, $2d, $88, $7f, $e1, $02, $82, $2b, $2d, $2e, $2d, $2b
    db $2d, $2e, $2b, $2d, $32
jr_004_64df:
    db $2d
jr_004_64e0:
    db $2c, $2d, $2d, $90
jr_004_64e4:
    db $2b, $7e, $2b, $e1, $00, $32, $82, $35, $37, $39, $3a, $39, $39, $37, $35, $34
    db $32, $34, $35, $35, $35, $34, $32, $35, $34, $35, $37, $38, $37, $35, $8a, $36
    db $84, $7f, $90, $34, $7e, $34, $32, $e1, $01, $91, $7f, $90, $7f, $7f, $32, $8a
    db $30, $84, $7f, $8a
jr_004_6518:
    db $2e, $84, $7f, $8a, $2d, $84, $7f
jr_004_651f:
    db $82, $2c, $7e
jr_004_6522:
    db $90, $2c, $7e, $2c, $2d, $7e, $82, $2d, $7e, $8a, $2d, $ff
; Stream indexed by AudioCueC2_01 for the base wave slot; shared references retain this address.
AudioC2_01_BaseWaveSeq:
Seq652e:
    db $e2, $03, $03, $90, $32, $7e, $32, $32, $8a, $2d
jr_004_6538:
    db $84, $7f, $82, $2c, $2d, $32, $7f, $31, $7f, $30, $7f, $2f, $7f, $2e, $7f, $2d
    db $7f, $2c, $7f, $2d, $7f, $31, $7f, $2d, $7f, $31, $7f, $2d, $7f, $32, $7f, $31
    db $7f, $8a, $30, $84, $7f, $8a, $30, $84, $7f, $8a, $2f, $84, $7f, $8a, $2e, $84
    db $7f, $90, $2d, $7f, $2d, $8a, $2d, $84, $7f, $8a, $2d, $84, $7f, $8a, $2d, $84
    db $7f, $8a, $2d, $84, $7f, $8a, $2d, $84, $7f, $8a, $2d, $84, $7f, $8a, $2d, $84
    db $7f, $8a, $32, $84, $7f, $8a, $31, $84, $7f, $8a, $30, $84, $7f, $8a, $2f, $84
    db $7f, $8a, $2f, $84, $7f, $8a, $2f, $84, $7f, $8a, $2c, $84, $7f, $8a, $2c, $84
    db $7f, $8a, $2d, $84, $7f, $8a, $2d, $84, $7f, $8a, $2d, $84, $7f, $8a
jr_004_65b6:
    db $2d, $84, $7f, $8a, $39, $84, $7f, $8a, $37, $84, $7f, $81
jr_004_65c2:
    db $7f, $80, $7f, $81, $7f, $90, $7f, $7f, $39, $84, $2d, $8a, $7f, $ff
; Stream indexed by AudioCueC2_01 for the base noise slot; shared references retain this address.
AudioC2_01_BaseNoiseSeq:
Seq65d0:
    db $03, $90, $34, $7f, $34
jr_004_65d5:
    db $34
jr_004_65d6:
    db $7f, $34, $34, $7f
jr_004_65da:
    db $34, $34, $7f
jr_004_65dd:
    db $34, $c7, $80, $81
jr_004_65e1:
    db $36, $82, $36, $90, $34, $7f, $34, $cf, $82, $36, $36, $36, $36, $c6, $8a, $82
    db $36, $90, $34, $7f, $35, $82, $36, $90, $34, $7f, $35, $cf, $80, $36, $82, $35
    db $35, $35, $90, $35, $7f, $34, $ff
; Pulse/wave instrument base for AudioCueC2_01; referenced by its encoded instrument commands.
AudioC2_01_PulseWaveInsts:
Inst6608:
    db $40, $00, $40, $06, $40, $0b, $00, $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_01.
AudioC2_01_NoiseInsts:
Inst6610:
    db $38, $b0, $00, $c0, $30, $a0, $00, $c0, $00, $c4, $00, $80
; Audio record first indexed by Case II request $02; type 1, fourteen bytes.
AudioCueC2_02:
Audio661c:
    db $01, $0c
    dw AudioC2_02_BaseP2Seq
jr_004_6620:
    dw AudioC2_02_BaseP1Seq
    db LOW(AudioC2_02_BaseWaveSeq)
jr_004_6623:
    db HIGH(AudioC2_02_BaseWaveSeq)
    dw AudioC2_02_BaseNoiseSeq
    dw AudioC2_02_PulseWaveInsts
    dw AudioC2_02_NoiseInsts
; Stream indexed by AudioCueC2_02 for the base pulse 2 slot; shared references retain this address.
AudioC2_02_BaseP2Seq:
Seq662a:
    db $e0, $00, $03, $ca, $84, $83
jr_004_6630:
    db $30, $32, $82, $34, $83, $34, $82, $34, $83, $34, $82, $34, $83, $39, $82, $34
    db $83, $34, $82, $34, $83, $34, $82, $34, $84, $32, $30, $89, $32, $82, $2d, $83
jr_004_6650:
    db $2f, $89, $30, $82, $30, $84, $2d, $2f, $89, $30, $82, $30, $84, $2b, $30, $82
    db $2f, $83, $2f, $82
jr_004_6664:
    db $33, $83, $33, $89, $34, $83, $7f, $30, $32, $82
jr_004_666e:
    db $34, $83, $34, $84, $34, $35, $34, $33, $83, $34, $7f, $91, $34, $35, $34, $35
jr_004_667e:
    db $34, $35, $83, $34, $39, $34, $7e, $84, $34, $83, $7f, $84, $34, $39, $3b, $83
    db $3c, $3b, $39, $89, $3e, $82, $39, $83, $3b, $89, $3c, $82, $30, $84, $2d, $2f
    db $89
jr_004_669f:
    db $30, $82, $30, $84, $2b, $30, $8a, $2f, $84, $2e, $2d, $2a
jr_004_66ab:
    db $8a
jr_004_66ac:
    db $33, $84, $32, $31, $33, $88, $34
jr_004_66b3:
    db $89, $7f, $83, $7f
jr_004_66b7:
    db $8a
jr_004_66b8:
    db $2d, $84, $2f, $85, $7f, $86, $7f, $82, $2d, $84, $2f, $85, $7f, $83, $30, $7e
    db $84, $30, $85, $7f, $84, $32, $7f, $34, $83, $32, $30, $8b, $2d, $82, $39, $7e
    db $85, $39, $83, $2d, $7e, $85, $2d, $83, $32, $30, $8b, $2d, $89, $39, $7e, $85
    db $39, $83, $32, $91, $33, $32, $30, $2d, $7e, $2d, $7e, $2d, $82, $39, $84, $38
    db $85, $7f, $81, $7f
jr_004_66fc:
    db $cf, $ff
; Stream indexed by AudioCueC2_02 for the base pulse 1 slot; shared references retain this address.
AudioC2_02_BaseP1Seq:
Seq66fe:
    db $e1
jr_004_66ff:
    db $01, $03, $8b, $7f
jr_004_6703:
    db $ca, $84, $83, $30, $32, $82, $34, $83, $34
jr_004_670c:
    db $82, $34, $83, $34, $82, $34, $83, $39, $82, $34, $83, $34, $82, $34, $83, $34
    db $82
jr_004_671d:
    db $34, $84, $32, $30, $89, $32, $82, $2d, $83, $2f, $89, $30, $82, $30, $84, $2d
    db $2f, $89, $30, $82, $30, $84, $2b, $30, $82, $2f
jr_004_6737:
    db $83, $2f, $82
jr_004_673a:
    db $33, $85, $33, $e1, $00, $82, $2c, $83, $2d, $89, $2c, $8b
jr_004_6746:
    db $7f, $e1, $01, $82, $34, $83, $34, $84, $34, $35, $34, $33, $83, $34, $7f
jr_004_6755:
    db $91, $34, $35, $34, $35, $34, $35, $83, $34, $39, $34, $7e, $84, $34, $83, $7f
jr_004_6765:
    db $84, $34, $39, $3b, $83, $3c, $3b, $39, $89, $3e, $82, $39, $83, $3b, $89, $3c
    db $82, $30, $84, $2d, $2f, $89, $30, $82, $30, $84, $2b, $30, $8a, $2f, $84, $2e
    db $2d, $2a, $8a, $33, $84, $32, $31, $33, $83, $34, $7e
jr_004_6790:
    db $85, $34, $e1, $00, $83, $2a, $82
jr_004_6797:
    db $2d, $83, $2a, $81, $2c, $82, $7f, $8b, $7f, $85, $7f, $86, $7f, $e1, $01, $82
    db $2d, $84, $2f, $85, $7f, $83, $30, $7e, $84, $30, $85, $7f, $84, $32, $7f, $34
    db $83, $32, $30, $8b, $2d, $82, $39, $7e, $85, $39, $83, $2d, $7e, $85, $2d, $83
    db $32
jr_004_67c8:
    db $30, $8b, $2d, $89, $39, $7e, $85
jr_004_67cf:
    db $39, $83, $32, $91, $33, $32, $30, $2d, $7e, $2d, $7e, $2d, $82, $39, $84, $38
    db $85, $7f
jr_004_67e1:
    db $81, $7f, $cf, $ff
; Stream indexed by AudioCueC2_02 for the base wave slot; shared references retain this address.
AudioC2_02_BaseWaveSeq:
Seq67e5:
    db $e2, $03, $03, $ca, $83, $82, $7f, $83, $2d, $7f, $30, $34, $82, $7f, $83, $2c
    db $7f, $30, $34, $82, $7f, $83, $2b, $7f, $30, $34, $82, $7f, $83, $2a, $7f
jr_004_6804:
    db $2d, $32, $82, $7f, $83, $29, $7f, $2d, $30, $82, $7f, $83, $28, $7f, $2b, $30
    db $82, $7f, $83, $23, $7f, $2a, $2d, $82, $7f, $83, $28, $7f, $32, $34, $82, $7f
    db $83
jr_004_6825:
    db $2d, $7f, $30, $34, $82, $7f, $83
jr_004_682c:
    db $2c
jr_004_682d:
    db $7f, $30, $34, $82, $7f, $83
jr_004_6833:
    db $2b, $7f, $30, $34, $82, $7f, $83, $2a, $7f, $2d, $32, $82, $7f, $83, $29, $7f
    db $2d, $30, $82, $7f, $83, $28, $7f, $2b, $30, $82, $7f, $83, $23
jr_004_6850:
    db $7f, $2a, $2d, $82, $7f, $83, $28, $7f, $30, $32, $82, $7f, $28, $83, $7f, $89
    db $7f, $85, $7f, $86
jr_004_6864:
    db $7f, $84, $2d, $7f, $30, $7f, $34
jr_004_686b:
    db $7f, $2b, $7f, $30, $7f, $34, $7f, $2a, $7f, $2d, $7f, $32, $7f, $2a, $7f, $2d
    db $7f, $32, $7f, $29, $7f, $2d, $7f, $30, $7f, $29, $7f, $2d, $7f, $2e, $7f, $28
    db $7f
jr_004_688c:
    db $82, $7f, $89, $7f, $81
jr_004_6891:
    db $7f, $cf, $ff
; Stream indexed by AudioCueC2_02 for the base noise slot; shared references retain this address.
AudioC2_02_BaseNoiseSeq:
Seq6894:
    db $03, $ca, $83, $83, $34, $34, $c4, $83, $c4, $83, $83
jr_004_689f:
    db $35, $34, $34, $82, $36, $83, $34, $cf, $cf, $35, $34, $34, $89, $36, $85, $7f
    db $86, $7f, $c4, $83, $83, $34, $34, $35, $82, $36, $83, $35, $cf, $34, $34, $35
    db $34, $cf, $ff
; Pulse/wave instrument base for AudioCueC2_02; referenced by its encoded instrument commands.
AudioC2_02_PulseWaveInsts:
Inst68c2:
    db $40, $03
    db $40, $06

; No instrument command in the current loaded streams reads this pair.
Inst68c6:
    db $40, $0b
    db $00
jr_004_68c9:
    db $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_02.
AudioC2_02_NoiseInsts:
Inst68ca:
    db $38, $60, $00, $c0, $30, $80, $00, $c0, $00, $a5, $00, $80
; Audio record first indexed by Case II request $03; type 1, fourteen bytes.
AudioCueC2_03:
Audio68d6:
    db $01, $13
    dw AudioC2_03_BaseP2Seq
    dw AudioC2_03_BaseP1Seq
    dw AudioC2_03_BaseWaveSeq
    dw AudioC2_03_BaseNoiseSeq
    dw AudioC2_03_PulseWaveInsts
    dw AudioC2_03_NoiseInsts
; Stream indexed by AudioCueC2_03 for the base pulse 2 slot; shared references retain this address.
AudioC2_03_BaseP2Seq:
Seq68e4:
    db $e0, $00, $03, $ca, $82, $90, $7f, $7f, $2a, $2f, $7e
jr_004_68ef:
    db $2f, $32, $36, $7e, $36, $37, $7e, $7f, $7f, $36, $7e, $80, $36, $90, $7f, $7f
    db $2a, $2e, $7e, $2e, $31, $34, $7e, $34, $37, $7e, $7f, $7f
jr_004_690b:
    db $36, $88, $32, $82, $7f, $90, $7f, $7f, $2a, $2f, $7e, $2f, $32, $36, $7e, $36
    db $37, $7f, $7f, $36, $7e, $80, $36, $90, $7f, $7f, $2a, $2e, $7e, $2e, $31, $34
    db $7e
jr_004_692c:
    db $34, $37, $7e, $7f, $7f, $36, $7e, $82, $36, $90, $35, $34, $32, $2f, $7e, $2f
    db $3b, $82, $7f, $88, $7f, $90, $7f, $7f, $2f, $82, $31, $2e, $7e, $90, $2e, $7f
    db $2e, $2f, $7e, $2f, $31, $7e, $82, $31, $37, $36, $31, $34, $32, $7e, $90, $32
    db $7f, $32, $34, $7e, $34, $36, $7e, $81, $36, $90, $7f, $7f, $36, $7e, $82, $36
    db $35, $7e, $90, $35, $7f, $36, $38, $7e, $38, $31, $7f, $7f, $3b, $7e, $8a, $3b
    db $84, $7f, $8a, $3b, $84, $7f, $8a, $3b, $84, $7f, $90, $3d, $7e, $3d, $3a, $7e
    db $80, $3a, $82, $7f, $36, $38, $8a, $3a, $84, $7f, $82, $3b, $90, $36, $7f, $3b
    db $82, $3a, $90, $36, $7f, $3a, $82, $39, $90, $36, $7f
jr_004_69a7:
    db $39, $38, $7e, $38, $36, $7e, $82, $36, $83, $34, $7f, $90, $35, $34, $33, $34
    db $7e, $34, $32, $7f, $7f, $2f, $2e, $7e, $2e, $37, $7f, $7f, $36, $7e, $36, $7f
    db $36, $38, $7e, $38, $3a, $7f, $7f, $3d, $82, $7f, $3d, $90, $7f, $7f, $3d, $80
    db $7f, $cf, $ff
; Stream indexed by AudioCueC2_03 for the base pulse 1 slot; shared references retain this address.
AudioC2_03_BaseP1Seq:
Seq69da:
    db $e1, $01, $03, $90, $7f, $7f, $ca, $82, $90, $7f, $7f, $2a, $2f, $7e, $2f, $32
    db $36, $7e, $36, $37, $7f, $7f, $36, $7e, $82, $36, $7e, $90, $36, $e1, $02, $82
    db $2f, $7e, $90, $2f, $7e, $2f, $2e, $e1, $01, $7f, $7f, $7f
jr_004_6a06:
    db $7f, $2a, $2e, $7e, $2e, $31, $34, $7e, $34, $37, $7e, $7f, $7f, $36, $e1, $02
    db $2a, $82, $7f, $2b, $7e, $90, $2b, $7e, $2b, $2a, $e1, $01, $7f, $7f, $7f, $7f
    db $2a, $2f
jr_004_6a28:
    db $7e, $2f, $32, $36, $7e, $36, $37, $7f, $7f, $36, $7e, $82, $36, $7e, $90, $36
    db $e1, $02, $82, $2f, $7e, $90, $2f, $7e, $2f, $2e, $e1, $01, $7f, $7f, $7f, $7f
    db $2a, $2e, $7e, $2e, $31, $34, $7e, $34, $37, $7e, $7f, $7f, $36, $7e, $82, $36
    db $90, $35, $34, $32, $2f, $7e, $2f, $3b, $82, $7f, $88, $7f, $90, $7f, $7f, $2f
    db $82, $31, $2e, $7e, $90, $2e, $7f, $2e, $2f, $7e, $2f, $31, $7e, $82, $31, $37
    db $36, $31, $34, $32, $7e, $90, $32, $7f, $32, $34, $7e, $34, $36, $7e, $81, $36
    db $90, $7f, $7f, $36, $7e, $82, $36, $35, $7e, $90, $35, $7f, $36, $38, $7e, $38
    db $31, $7f, $7f, $3b, $7e, $8a, $3b, $84, $7f, $8a, $3b, $84, $7f, $8a, $3b, $84
    db $7f, $90, $3d, $7e, $3d, $3a, $7e, $39, $e1, $02, $82, $37, $36, $34, $31, $31
    db $34, $34, $8a, $32, $84, $7f, $90, $32, $7f, $32, $8a, $32, $84, $7f, $90, $32
    db $7f, $32
jr_004_6aca:
    db $8a, $32, $84, $7f, $90, $32, $7f, $32, $2f, $7e, $2f, $32, $7e, $82, $32, $e1
    db $01, $90, $7f, $7f, $83, $34, $7f, $90, $35, $34, $33, $34, $7e, $34, $32, $7f
    db $7f, $2f, $2e, $7e, $2e, $37, $7f, $7f, $36, $7e, $36, $7f, $36, $38, $7e, $38
    db $3a, $e1, $02, $32, $82, $7f, $32, $90, $7f, $7f, $32, $80, $7f, $e1, $01, $90
    db $7f, $7f, $cf, $ff
; Stream indexed by AudioCueC2_03 for the base wave slot; shared references retain this address.
AudioC2_03_BaseWaveSeq:
Seq6b0e:
    db $e2, $03, $03, $ca, $8a, $8a, $23, $84, $7f, $88, $7f, $81, $7f, $82, $34, $7e
    db $90, $34, $7e, $34, $31, $80, $7f, $90, $7f, $7f, $2f, $82, $7f, $2f, $7e, $90
    db $2f, $7f, $2f, $80, $7f, $81, $7f
jr_004_6b35:
    db $82, $34, $7e, $90, $34, $7e, $34, $31, $80, $7f, $82, $2f, $88, $7f, $90, $2a
    db $29, $28, $26, $7e, $26, $23, $81, $7f, $82, $2a, $8a, $2e, $84, $7f, $8a, $31
    db $84, $7f, $8a, $34, $84, $7f, $8a, $37, $84, $7f, $8a, $36, $84, $7f, $8a, $31
    db $84, $7f, $8a
jr_004_6b68:
    db $2e, $84, $7f, $82, $31, $8a, $2e, $84, $7f, $8a, $2d, $84, $7f, $8a, $2c, $84
    db $7f, $8a, $2b, $84, $7f, $90, $2a, $7f, $2a, $8a, $29, $84, $7f, $8a, $2a, $84
    db $7f, $82, $25, $8a, $27, $84, $7f, $8a, $29, $84, $7f, $8a, $2a, $84, $7f, $8a
    db $2b, $84, $7f, $8a, $2c, $84, $7f, $8a, $2d, $84, $7f, $8a, $2e, $84, $7f, $8a
    db $2a, $84, $7f, $8a, $2a, $84, $7f, $8a, $2a, $84, $7f, $8a, $2a, $84, $7f, $8a
    db $2a, $84, $7f, $82, $2a, $81, $7f, $82, $2f, $90, $2f, $7f, $2f, $82, $2e, $90
    db $2e, $7f, $2e, $82, $2d, $90, $2d, $7f, $2d, $8a, $2c, $84, $7f, $8a, $2c, $84
    db $7f, $82, $2b, $88, $7f, $82, $28, $88, $7f, $90, $7f, $7f, $2f, $82, $7f, $2f
    db $90, $7f, $7f, $2f, $80, $7f, $cf, $ff
; Stream indexed by AudioCueC2_03 for the base noise slot; shared references retain this address.
AudioC2_03_BaseNoiseSeq:
Seq6bf0:
    db $03, $ca, $82, $80, $37, $90, $7f, $7f, $34, $82, $7f, $34, $90, $7f, $7f, $34
    db $80, $36, $90, $7f, $7f, $34, $82, $7f, $34, $90, $7f
jr_004_6c0b:
    db $7f, $34, $80, $36, $90, $7f, $7f, $34, $82, $7f, $34, $34, $80, $37, $82, $7f
    db $88, $36, $81, $7f, $90, $7f, $7f, $35, $34, $34, $34, $c3, $82, $82, $36, $90
    db $34, $7f, $35, $82, $36, $90, $34, $7f, $35, $cf, $82, $36, $90, $34, $7f, $35
    db $82, $36, $90, $7f, $34, $34, $c3, $82, $82, $36, $90, $34, $7f, $35, $82, $36
    db $90, $34, $7f, $35, $cf, $82, $36, $90, $35, $34, $35, $34, $35, $34, $35, $34
    db $35, $c2, $82, $82, $37, $37, $37, $37, $cf, $80, $36, $88, $36, $90, $35, $34
    db $35, $7f, $7f, $36, $82, $7f, $36, $90, $7f, $7f, $36, $82, $34, $34, $34, $34
    db $cf, $ff
; Pulse/wave instrument base for AudioCueC2_03; referenced by its encoded instrument commands.
AudioC2_03_PulseWaveInsts:
Inst6c7d:
    db $40, $03, $40, $06, $80, $0c, $00, $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_03.
AudioC2_03_NoiseInsts:
Inst6c85:
    db $38, $70, $00, $c0, $30, $80, $00, $c0, $00, $a4, $00, $80, $00, $a6, $00, $80
; Audio record first indexed by Case II request $04; type 1, fourteen bytes.
AudioCueC2_04:
Audio6c95:
    db $01, $14
    dw AudioC2_04_BaseP2Seq
    dw AudioC2_04_BaseP1Seq
    dw AudioC2_04_BaseWaveSeq
    dw AudioC2_04_BaseNoiseSeq
    dw AudioC2_04_PulseWaveInsts
    dw AudioC2_04_NoiseInsts
; Stream indexed by AudioCueC2_04 for the base pulse 2 slot; shared references retain this address.
AudioC2_04_BaseP2Seq:
Seq6ca3:
    db $e0, $00, $03, $ca, $82, $85, $33, $90, $34, $7f, $34, $81, $7f, $83, $7f, $8b
    db $7f, $88, $7f, $90, $7f, $7f, $2f, $34, $7e, $34, $36, $37, $7e, $37, $39, $82
    db $3a, $90, $39, $7e, $39
jr_004_6cc8:
    db $3a, $82, $39, $90, $37, $7e, $37, $39, $82, $37, $90, $2f, $7e, $2f, $32, $85
    db $33, $90, $34, $7f, $34, $81, $7f, $83, $7f, $8b, $7f, $88, $7f, $90, $7f, $7f
    db $2f, $34, $7e, $34, $36, $37, $7e, $37, $39, $82, $3a, $90, $39, $7e, $39
jr_004_6cf7:
    db $3a, $82, $39, $90, $37, $7e, $37, $39, $82, $37, $90, $2f, $7e, $2f, $32, $85
    db $33, $90, $34, $7f, $34, $81, $7f, $83, $7f, $8b, $7f, $88, $7f, $90, $7f, $7f
    db $34, $39, $7e, $39, $3b, $3c, $7e, $3c, $3e, $82, $3f, $90, $3e, $7e, $3e, $3f
    db $82, $3e, $90, $3c, $7e, $3c, $3e, $82, $3c, $90, $34, $7e, $34, $37, $85, $38
    db $90, $39, $7f, $39, $81, $7f, $83, $7f, $8b, $7f, $80, $7f, $90, $3e, $7e, $3e
    db $43, $40, $7e, $40, $3b, $39, $7e, $39, $3e, $3b, $7e, $3b, $37, $34, $7e, $34
    db $39, $36, $7e, $36, $32, $2f, $7e, $2f, $34, $2d, $7e, $2d, $32, $85, $33, $90
    db $34, $7f, $34, $81, $7f, $83, $7f, $8b, $7f, $88, $7f, $90, $7f, $7f, $2f, $34
    db $7e, $34, $36, $37, $7e, $37, $39, $82, $3a, $90, $39, $7e, $39
jr_004_6d84:
    db $3a, $82, $39, $90, $37, $7e, $37, $39, $82, $37, $90, $2f, $7e, $2f, $32, $85
    db $33, $90, $34, $7f, $34, $81, $7f, $83, $7f, $8b, $7f, $80, $7f, $90, $3e, $7e
    db $3e, $43, $40, $7e, $40, $3b, $39, $7e, $39, $3e, $3b, $7e, $3b, $37, $34, $7e
    db $34, $39, $36, $7e, $36, $32, $2f, $7e, $2f, $34, $2d, $7e, $2d, $32, $85, $33
    db $90, $34, $7f, $34, $81, $7f, $83, $7f, $8b, $7f, $88, $7f, $90, $7f, $7f, $34
    db $39, $7e, $39, $3b, $3c, $7e, $3c, $3e, $82, $3f, $90, $3e, $7e, $3e, $3f, $82
    db $3e, $90, $3c, $7e, $3c, $3e, $82, $3c, $90, $34, $7e, $34, $37, $85, $38, $90
    db $39, $7f, $39, $81, $7f, $83, $7f, $8b, $7f, $88, $7f, $90, $7f, $7f, $34, $39
    db $7e, $39, $3b, $3c, $7e, $3c, $3e, $82, $3f, $90, $3e, $7e, $3e, $3f, $82, $3e
    db $90, $3c, $7e, $3c, $3e, $82, $3c, $90, $2f, $7e, $2f, $32, $cf, $83, $7f, $ff
; Stream indexed by AudioCueC2_04 for the base pulse 1 slot; shared references retain this address.
AudioC2_04_BaseP1Seq:
Seq6e24:
    db $e1, $01, $03, $83, $7f, $ca, $82, $85, $33, $90, $34, $7f, $34, $81, $7f, $83
    db $7f, $8b, $7f, $88, $7f, $90, $7f, $7f, $2f, $34, $7e, $34, $36, $37, $7e, $37
    db $39, $82, $3a, $90, $39, $7e, $39
jr_004_6e4b:
    db $3a, $82, $39, $90, $37, $7e, $37, $39, $82, $37, $90, $2f, $7e, $2f, $32, $85
    db $33, $90, $34, $7f, $34, $81, $7f, $83, $7f, $8b, $7f, $88, $7f, $90, $7f, $7f
    db $2f, $34, $7e, $34, $36, $37, $7e, $37, $39, $82, $3a, $90, $39, $7e, $39, $3a
    db $82, $39, $90, $37, $7e, $37, $39, $82, $37, $90, $2f, $7e, $2f, $32, $85, $33
    db $90, $34, $7f, $34, $81, $7f, $83, $7f, $8b, $7f, $88, $7f, $90, $7f, $7f, $34
    db $39, $7e, $39, $3b, $3c, $7e, $3c, $3e, $82, $3f, $90, $3e, $7e, $3e, $3f, $82
    db $3e, $90, $3c, $7e, $3c, $3e, $82, $3c, $90, $34, $7e, $34, $37, $85, $38, $90
    db $39, $7f, $39, $81, $7f, $83, $7f, $8b, $7f, $80, $7f, $90, $3e, $7e, $3e, $43
    db $40, $7e, $40, $3b, $39, $7e, $39, $3e, $3b, $7e, $3b, $37, $34, $7e, $34, $39
    db $36, $7e, $36, $32, $2f, $7e, $2f, $34, $2d, $7e, $2d, $32, $85, $33, $90, $34
    db $7f, $34, $81, $7f, $83, $7f, $8b, $7f, $88, $7f, $90, $7f, $7f, $2f, $34, $7e
    db $34, $36, $37, $7e, $37, $39, $82, $3a, $90, $39, $7e, $39
jr_004_6f07:
    db $3a, $82, $39, $90, $37, $7e, $37, $39, $82, $37, $90, $2f, $7e, $2f, $32, $85
    db $33, $90, $34, $7f, $34, $81, $7f, $83, $7f, $8b, $7f, $80, $7f, $90, $3e, $7e
    db $3e, $43, $40, $7e, $40, $3b, $39, $7e, $39, $3e, $3b, $7e
jr_004_6f33:
    db $3b, $37, $34, $7e, $34, $39, $36, $7e, $36, $32, $2f, $7e, $2f, $34, $2d, $7e
    db $2d, $32, $85, $33, $90, $34, $7f, $34, $81, $7f, $83, $7f, $8b, $7f, $88, $7f
    db $90, $7f, $7f, $34, $39, $7e, $39, $3b, $3c, $7e, $3c, $3e, $82, $3f, $90, $3e
    db $7e, $3e, $3f, $82, $3e, $90, $3c, $7e, $3c, $3e, $82, $3c, $90, $34, $7e, $34
    db $37, $85, $38, $90, $39, $7f, $39, $81, $7f, $83, $7f, $8b, $7f, $88, $7f, $90
    db $7f, $7f, $34, $39, $7e, $39, $3b, $3c, $7e, $3c, $3e, $82, $3f, $90, $3e, $7e
    db $3e, $3f, $82, $3e, $90, $3c, $7e, $3c, $3e, $82, $3c, $90
jr_004_6f9f:
    db $2f, $7e, $2f, $32, $cf, $ff
; Stream indexed by AudioCueC2_04 for the base wave slot; shared references retain this address.
AudioC2_04_BaseWaveSeq:
Seq6fa5:
    db $e2, $02, $03, $ca, $82, $c2, $82, $90, $28, $7f, $28, $82, $26, $25, $24, $23
    db $24, $25, $26, $28, $2a, $21, $2a, $28, $29, $2a, $29, $90, $28, $7f, $34, $82
    db $32, $31, $30, $2f, $31, $2a, $31, $2f, $30, $31, $30, $2f, $2d, $2b, $2f, $2d
    db $2d, $2b, $2b, $2a, $2a, $28, $28, $2d, $2f, $28, $2f, $2d, $2e, $2f, $2e, $90
    db $2d, $7f, $34, $82, $2a, $2b, $2c, $2d, $34, $28, $29, $2a, $32, $36, $30, $2f
    db $23, $24, $26, $cf, $cf, $83, $7f, $ff
; Stream indexed by AudioCueC2_04 for the base noise slot; shared references retain this address.
AudioC2_04_BaseNoiseSeq:
Seq6ffd:
    db $03, $ca, $82, $c4, $82, $c8, $82
jr_004_7004:
    db $82, $36, $90, $34, $7f, $35, $82, $36, $90, $34, $7f
jr_004_700f:
    db $35, $cf, $cf, $cf, $83, $7f, $ff
; Pulse/wave instrument base for AudioCueC2_04; referenced by its encoded instrument commands.
AudioC2_04_PulseWaveInsts:
Inst7016:
    db $40, $03, $40
jr_004_7019:
    db $06, $00, $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_04.
AudioC2_04_NoiseInsts:
Inst701c:
    db $38, $81, $00, $c0, $30, $90, $00, $c0, $00, $94, $00, $80
; Audio record first indexed by Case II request $05; type 1, fourteen bytes.
AudioCueC2_05:
Audio7028:
    db $01, $20
    dw AudioC2_05_BaseP2Seq
    dw AudioC2_05_BaseP1Seq
jr_004_702e:
    dw AudioC2_05_BaseWaveSeq
    dw AudioC2_05_BaseNoiseSeq
    dw AudioC2_05_PulseWaveInsts
    dw AudioC2_05_NoiseInsts
; Stream indexed by AudioCueC2_05 for the base pulse 2 slot; shared references retain this address.
AudioC2_05_BaseP2Seq:
Seq7036:
    db $e0, $00, $03, $ca, $83, $82, $32, $83, $7f, $32, $87, $7f
jr_004_7042:
    db $82, $32, $83, $7f, $32, $80, $7f, $83, $32, $33, $34, $32, $33, $7f, $32, $7f
    db $87, $2f, $80, $7f, $7f, $82, $32, $83, $7f, $32, $87, $7f, $82, $32, $83, $7f
    db $32, $80, $7f, $83, $32, $33, $34, $32, $33, $7f, $32, $7f, $87, $2f, $80, $7f
    db $83, $7f, $32, $7f, $32, $7f, $33, $7f, $34, $82, $35, $83, $7f, $35, $87, $7f
    db $82, $35, $83, $7f, $35, $80, $7f, $83, $35, $36, $37, $35, $36, $7f, $35, $7f
    db $87, $32, $80, $7f, $83, $7f, $35, $7f, $35, $7f, $34, $7f, $33, $82, $32, $83
    db $7f, $32, $87, $7f, $82, $32, $83, $7f, $32, $80, $7f, $83, $32, $33, $34, $32
    db $33, $7f, $32, $7f, $87, $2f, $81, $7f, $82, $7f, $83, $7f, $32, $7f, $32, $7f
    db $32, $7f, $31, $7f, $30, $82, $2f, $83, $7f, $2f, $7f, $2f, $7f, $2f, $7f, $2f
    db $7f, $2f, $7f, $2e, $7f, $2d, $82, $2c, $83, $7f, $2c, $7f, $2c, $7f, $2c, $7f
    db $2c, $7f, $2c, $7f, $2d, $7f, $2e, $82, $2f, $83, $7f, $2f, $7f, $2f, $7f, $2f
    db $7f, $2f, $7f, $2f, $7f, $2e, $7f, $2d, $80, $2b, $7e, $81, $2b, $90, $2b, $2d
    db $2e, $2f, $30, $31, $cf, $8a, $7f, $ff
; Stream indexed by AudioCueC2_05 for the base pulse 1 slot; shared references retain this address.
AudioC2_05_BaseP1Seq:
Seq710a:
    db $e1, $01, $03, $82, $7f, $ca, $83, $82, $32, $83, $7f, $32, $87, $7f, $82, $32
    db $83, $7f, $32, $80, $7f, $83, $32
jr_004_7121:
    db $33, $34, $32, $33, $7f, $32, $7f, $87, $2f, $80, $7f, $7f, $82, $32, $83, $7f
    db $32, $87, $7f, $82, $32, $83
jr_004_7137:
    db $7f, $32, $80, $7f, $83, $32, $33, $34, $32, $33, $7f, $32, $7f, $87, $2f, $80
    db $7f, $83, $7f, $32, $7f, $32, $7f, $33, $7f, $34, $82, $35, $83, $7f, $35, $87
    db $7f, $82, $35, $83, $7f, $35, $80, $7f, $83, $35, $36, $37, $35, $36, $7f, $35
    db $7f, $87, $32, $80, $7f, $83, $7f, $35, $7f, $35, $7f, $34, $7f, $33, $82, $32
    db $83, $7f, $32, $87, $7f, $82, $32, $83, $7f, $32, $80, $7f, $83, $32, $33, $34
    db $32, $33, $7f, $32, $7f, $87, $2f, $81, $7f, $82, $7f, $83, $7f, $32, $7f, $32
    db $7f, $32, $7f, $31, $7f, $84, $30, $82, $2f, $83, $7f, $2f, $7f, $2f, $7f, $2f
    db $7f, $2f, $7f, $2f, $7f, $2e, $7f, $2d, $82, $2c, $83, $7f, $2c, $7f, $2c, $7f
    db $2c, $7f, $2c, $7f, $2c, $7f, $2d, $7f, $2e, $82, $2f, $83, $7f, $2f, $7f, $2f
    db $7f, $2f, $7f, $2f, $7f, $2f, $7f, $2e, $7f, $2d, $80, $2b, $7e, $81, $2b, $90
    db $2b, $2d, $2e, $2f, $30, $31, $84, $7f, $cf, $ff
; Stream indexed by AudioCueC2_05 for the base wave slot; shared references retain this address.
AudioC2_05_BaseWaveSeq:
Seq71e1:
    db $e2, $02, $03, $ca, $83, $c7, $83, $83, $28, $7f, $28, $7f, $28, $7f, $28, $7f
    db $28, $7f, $28, $7f, $28, $23, $26, $27, $cf, $28, $7f, $28, $7f, $28, $7f, $28
    db $7f, $28, $7f, $28, $7f, $29, $7f, $2a, $7f, $c3, $83, $83, $2b
jr_004_720e:
    db $7f, $2b, $7f, $2b, $7f, $2b, $7f, $2b, $7f, $2b, $7f, $2b
jr_004_721a:
    db $26, $29, $2a, $cf, $2b, $7f, $2b, $7f, $2b, $7f, $2b, $7f, $2b, $7f, $2b, $7f
    db $2a, $7f, $29, $7f, $c3, $83, $83, $28, $7f, $28, $7f, $28, $7f
jr_004_7237:
    db $28, $7f, $28, $7f, $28, $7f, $28, $23, $26, $27, $cf, $28, $7f, $28, $7f, $28
    db $7f, $28, $7f, $28, $7f, $28, $7f, $27, $7f, $26, $7f, $25, $7f, $25, $7f, $25
    db $7f, $25, $7f, $25, $7f, $25, $7f, $24, $7f, $23, $7f
jr_004_7262:
    db $22, $7f, $22, $7f, $22, $7f, $22, $7f
jr_004_726a:
    db $22, $7f
jr_004_726c:
    db $22, $7f
jr_004_726e:
    db $23, $7f
jr_004_7270:
    db $24, $7f
jr_004_7272:
    db $25, $7f
jr_004_7274:
    db $25, $7f, $25, $7f, $25, $7f, $25
jr_004_727b:
    db $7f, $25
jr_004_727d:
    db $7f, $24
jr_004_727f:
    db $7f, $23
jr_004_7281:
    db $7f, $22
jr_004_7283:
    db $7f, $22
jr_004_7285:
    db $7f, $22, $7f, $22, $7f, $22, $7f, $22, $7f, $22, $7f, $22, $7f, $cf, $8a, $7f
    db $ff
; Stream indexed by AudioCueC2_05 for the base noise slot; shared references retain this address.
AudioC2_05_BaseNoiseSeq:
Seq7296:
    db $03, $ca, $82, $c3, $82, $c8, $82, $82, $34, $35, $34, $35, $34, $35, $34, $83
    db $34, $34, $cf, $cf, $cf, $8a, $7f, $ff
; Pulse/wave instrument base for AudioCueC2_05; referenced by its encoded instrument commands.
AudioC2_05_PulseWaveInsts:
Inst72ae:
    db $40, $03, $40, $06, $00, $00
jr_004_72b4:
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_05.
AudioC2_05_NoiseInsts:
Inst72b4:
    db $38, $81
jr_004_72b6:
    db $00, $c0
jr_004_72b8:
    db $00, $94
jr_004_72ba:
    db $00, $80
jr_004_72bc:
; Audio record first indexed by Case II request $06; type 1, fourteen bytes.
AudioCueC2_06:
Audio72bc:
    db $01, $0d
    dw AudioC2_06_BaseP2Seq
    dw AudioC2_06_BaseP1Seq
    db LOW(AudioC2_06_BaseWaveSeq)
jr_004_72c3:
    db HIGH(AudioC2_06_BaseWaveSeq)
    db LOW(AudioC2_06_BaseNoiseSeq)
jr_004_72c5:
    db HIGH(AudioC2_06_BaseNoiseSeq)
    db LOW(AudioC2_06_PulseWaveInsts)
jr_004_72c7:
    db HIGH(AudioC2_06_PulseWaveInsts)
    db LOW(AudioC2_06_NoiseInsts)
jr_004_72c9:
    db HIGH(AudioC2_06_NoiseInsts)
; Stream indexed by AudioCueC2_06 for the base pulse 2 slot; shared references retain this address.
AudioC2_06_BaseP2Seq:
Seq72ca:
    db $e0, $00, $03
jr_004_72cd:
    db $ca, $80, $ca, $80, $91, $3f, $3b, $37, $3f, $3b, $37, $3f, $3b, $37, $3f, $3b
    db $37, $3f, $3b, $37, $3e, $3a, $36, $3d, $39, $35, $3e, $3a, $36, $3f, $3b, $37
    db $3f, $3b, $37, $3f, $3b, $37, $3f, $3b, $37, $3f, $3b, $37, $40, $3a, $38, $3f
    db $3b, $37, $3e, $3a, $36, $3f, $3b, $37, $3f, $3b, $37, $3f, $3b, $37, $3f, $3b
    db $37, $3f, $3b, $37, $3e, $3a, $36, $3d, $39, $35, $3e, $3a, $36, $3f, $3b, $37
    db $3f, $3b, $37, $3f, $3b, $37, $3f, $3b, $37, $3f, $3b, $37, $3e, $3a, $36, $3f
    db $3b, $37, $40, $3a, $38, $41, $3c, $38, $41, $3c, $38, $41, $3c, $38, $41
jr_004_733c:
    db $3c, $38, $41, $3c, $38, $40, $3b, $37, $3f, $3a, $36, $40, $3b, $37, $41, $3c
    db $38, $41, $3c, $38, $41, $3c, $38, $41, $3c, $38, $41, $3c, $38, $42, $3d, $39
    db $41, $3c, $38, $40, $3c, $38, $cf, $cf, $ff
; Stream indexed by AudioCueC2_06 for the base pulse 1 slot; shared references retain this address.
AudioC2_06_BaseP1Seq:
Seq7365:
    db $e1, $01, $03, $8a, $7f, $ca, $83, $ca, $83, $91, $3f, $3b, $37, $3f, $3b
jr_004_7374:
    db $37, $3f, $3b
jr_004_7377:
    db $37, $3f, $3b
jr_004_737a:
    db $37, $3f, $3b
jr_004_737d:
    db $37, $3e, $3a
jr_004_7380:
    db $36, $3d
jr_004_7382:
    db $39, $35, $3e, $3a, $36, $3f, $3b, $37, $3f, $3b, $37, $3f, $3b
jr_004_738f:
    db $37, $3f, $3b
jr_004_7392:
    db $37, $3f, $3b
jr_004_7395:
    db $37, $40, $3a
jr_004_7398:
    db $38, $3f, $3b, $37
jr_004_739c:
    db $3e, $3a, $36, $3f
jr_004_73a0:
    db $3b, $37, $3f, $3b, $37, $3f, $3b, $37, $3f, $3b, $37, $3f, $3b, $37, $3e, $3a
    db $36, $3d, $39, $35, $3e, $3a, $36, $3f, $3b, $37, $3f, $3b, $37, $3f, $3b, $37
    db $3f, $3b, $37, $3f, $3b, $37, $3e, $3a, $36, $3f, $3b, $37, $40, $3a, $38, $41
    db $3c, $38, $41, $3c, $38, $41, $3c, $38, $41
jr_004_73d9:
    db $3c, $38, $41, $3c, $38, $40, $3b, $37, $3f, $3a, $36, $40, $3b, $37, $41, $3c
    db $38, $41, $3c, $38, $41, $3c, $38, $41, $3c, $38, $41, $3c, $38, $42, $3d, $39
    db $41, $3c, $38, $40, $3c, $38, $cf, $cf, $ff
; Stream indexed by AudioCueC2_06 for the base wave slot; shared references retain this address.
AudioC2_06_BaseWaveSeq:
Seq7402:
    db $e2, $02, $03, $ca, $84, $ca, $84, $84, $31, $7f, $31, $7f, $31, $7f, $31
jr_004_7411:
    db $7f, $31, $7f, $30, $7f, $2f
jr_004_7417:
    db $7f, $30, $7f
jr_004_741a:
    db $31, $7f, $31
jr_004_741d:
    db $7f, $31, $7f, $31, $7f, $31, $7f, $32, $7f, $31, $7f, $30, $7f, $31, $7f, $31
    db $7f, $31, $7f, $31, $7f
jr_004_7432:
    db $31, $7f, $30
jr_004_7435:
    db $7f, $2f, $7f, $30, $7f, $31, $7f, $31
jr_004_743d:
    db $7f, $31, $7f, $31, $7f, $31, $7f, $30, $7f, $31, $7f, $32, $7f, $33, $7f, $33
    db $7f, $33, $7f, $33, $7f, $33, $7f, $32, $7f, $31, $7f, $32, $7f, $33, $7f, $33
    db $7f, $33, $7f, $33, $7f, $33, $7f, $34, $7f, $33, $7f, $32, $7f, $cf, $cf, $ff
; Stream indexed by AudioCueC2_06 for the base noise slot; shared references retain this address.
AudioC2_06_BaseNoiseSeq:
Seq746d:
    db $03, $ca, $83, $ca, $83, $c3, $83, $83, $34, $7f, $34, $7f, $34, $7f, $34, $34
    db $34, $7f, $34, $7f, $34, $7f, $34, $34, $cf, $cf, $cf, $ff
; Pulse/wave instrument base for AudioCueC2_06; referenced by its encoded instrument commands.
AudioC2_06_PulseWaveInsts:
Inst7489:
    db $40, $03, $40, $06, $00, $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_06.
AudioC2_06_NoiseInsts:
Inst748f:
    db $00, $94, $00, $80
; Audio record first indexed by Case II request $07; type 1, fourteen bytes.
AudioCueC2_07:
Audio7493:
    db $01, $0c
    dw AudioC2_07_BaseP2Seq
    dw AudioC2_07_BaseP1Seq
jr_004_7499:
    dw AudioC2_07_BaseWaveSeq
    dw AudioC2_07_BaseNoiseSeq
    dw AudioC2_07_PulseWaveInsts
    dw AudioCueC2_08
; Stream indexed by AudioCueC2_07 for the base pulse 2 slot; shared references retain this address.
AudioC2_07_BaseP2Seq:
Seq74a1:
    db $e0, $00, $03, $ca, $83, $83, $2a, $2c, $2f, $33, $36, $2d, $2d, $25, $2a, $2c
    db $2f, $32, $36, $2d, $2d, $26, $2a, $2c
jr_004_74b9:
    db $2f, $32, $36, $2f, $2f, $26, $25, $27, $2a, $2d, $31, $29, $25, $7f, $2a, $2c
    db $2a, $2c, $2c, $29, $29, $20, $2a, $2c, $2a, $2c, $2f, $27, $27, $1e, $2c, $2d
    db $2c, $2d, $2c, $2f, $2c, $2f, $2d, $2f, $2a, $2c
jr_004_74e3:
    db $2c, $2d, $25, $2a, $cf, $ff
; Stream indexed by AudioCueC2_07 for the base pulse 1 slot; shared references retain this address.
AudioC2_07_BaseP1Seq:
Seq74e9:
    db $e1, $01, $03, $ca, $83, $8a, $7f, $83, $2d, $31, $35, $31, $31, $2a, $21, $7f
    db $2d
jr_004_74fa:
    db $31, $34, $32, $32, $2a, $21, $7f, $2d, $31, $34, $32, $32, $2a, $23, $7f, $29
    db $2c, $2f, $2c, $2c, $82, $7f, $83, $2d, $2d, $2d, $2d, $2a, $2a, $25, $1d, $2d
    db $2d, $2d, $2d, $2a, $2a, $23, $27, $2f, $2f, $2f, $2f, $31, $31, $31, $31, $31
    db $31, $2d, $2a, $2f, $2f, $2c, $84, $29, $cf, $ff
; Stream indexed by AudioCueC2_07 for the base wave slot; shared references retain this address.
AudioC2_07_BaseWaveSeq:
Seq7534:
    db $e2, $02, $03, $ca, $83, $83, $2a, $7f, $88, $7f, $83, $26, $7f, $88, $7f, $83
    db $23, $7f, $88, $7f, $83, $25, $7f, $88, $7f, $83, $2a, $7f, $88, $7f, $83, $2a
    db $7f, $88, $7f, $83, $28, $89, $7f, $83, $29, $89, $7f, $83, $2a, $7f, $26, $7f
    db $23, $7f, $25, $7f, $cf, $ff
; Stream indexed by AudioCueC2_07 for the base noise slot; shared references retain this address.
AudioC2_07_BaseNoiseSeq:
Seq756a:
    db $ff
; Pulse/wave instrument base for AudioCueC2_07; referenced by its encoded instrument commands.
AudioC2_07_PulseWaveInsts:
Inst756b:
    db $00, $02, $00, $02, $00, $00
; Audio record first indexed by Case II request $08; type 1, fourteen bytes.
AudioCueC2_08:
Audio7571:
    db $01, $11
    dw AudioC2_08_BaseP2Seq
    dw AudioC2_08_BaseP1Seq
    dw AudioC2_08_BaseWaveSeq
    dw AudioC2_08_BaseNoiseSeq
    dw AudioC2_08_PulseWaveInsts
    dw AudioC2_08_NoiseInsts
; Stream indexed by AudioCueC2_08 for the base pulse 2 slot; shared references retain this address.
AudioC2_08_BaseP2Seq:
Seq757f:
    db $e0, $00, $03, $ca, $83, $83, $33, $7f, $33, $7f, $33, $7f, $33, $35, $33, $7f
    db $33, $7f, $33, $7f, $33, $39, $35, $33, $7f, $33, $7f, $33, $7f, $35, $39, $35
    db $7f, $33, $7f, $33, $33, $35
jr_004_75a5:
    db $37, $7f, $37, $7f, $37, $7f, $37
jr_004_75ac:
    db $39, $37, $7f, $37, $7f, $37, $7f, $37, $39, $3a, $7f, $3a, $7f, $3a, $7f, $3a
    db $3b, $3d, $7f, $88, $7f, $cf, $ff
; Stream indexed by AudioCueC2_08 for the base pulse 1 slot; shared references retain this address.
AudioC2_08_BaseP1Seq:
Seq75c3:
    db $e1, $01, $03, $ca, $83, $83, $2d, $7f, $2d, $7f, $2d, $7f, $2d, $2d, $2d, $7f
    db $2d, $7f, $2d, $7f, $2d, $2d, $2d, $2d, $7f, $2d, $7f, $2d, $7f, $2d, $2d, $2d
    db $7f, $2d, $7f, $2d, $2d, $2d, $31, $7f, $31, $7f, $31, $7f, $31, $31, $31, $7f
    db $31, $7f, $31, $7f, $31, $34, $34, $7f, $34, $7f, $34
jr_004_75fe:
    db $7f, $34, $34, $34, $7f, $88, $7f, $cf, $ff
; Stream indexed by AudioCueC2_08 for the base wave slot; shared references retain this address.
AudioC2_08_BaseWaveSeq:
Seq7607:
    db $e2, $02, $03, $ca, $83, $81, $7f, $83, $7f, $24, $82, $7f, $81, $7f, $83, $7f
    db $24, $82, $7f, $80, $7f, $7f, $81, $7f, $83, $7f, $28, $82, $7f, $81, $7f, $83
    db $7f, $28, $82, $7f, $81, $7f, $83, $7f, $2b, $82, $7f, $83, $2b, $1f, $1f, $1f
    db $1f, $1f, $1f, $1f, $cf, $ff
; Stream indexed by AudioCueC2_08 for the base noise slot; shared references retain this address.
AudioC2_08_BaseNoiseSeq:
Seq763d:
    db $03, $ca, $83, $c2, $83, $83, $35, $35, $34, $35, $35, $34, $35, $35, $35, $34
    db $35, $35, $35, $34, $35, $35, $34, $35, $35, $34, $34, $35, $35, $35, $35, $34
    db $34, $35, $35, $34, $35, $35, $cf, $cf, $ff
; Pulse/wave instrument base for AudioCueC2_08; referenced by its encoded instrument commands.
AudioC2_08_PulseWaveInsts:
Inst7666:
    db $40, $00, $40, $06, $00, $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_08.
AudioC2_08_NoiseInsts:
Inst766c:
    db $30, $90, $00, $c0, $00, $94, $00, $80
; Audio record first indexed by Case II request $09; type 1, fourteen bytes.
AudioCueC2_09:
Audio7674:
    db $01, $0d
    dw AudioC2_09_BaseP2Seq
    dw AudioC2_09_BaseP1Seq
    dw AudioC2_09_BaseWaveSeq
    dw AudioC2_09_BaseNoiseSeq
    dw AudioC2_09_PulseWaveInsts
    dw AudioC2_09_NoiseInsts
; Stream indexed by AudioCueC2_09 for the base pulse 2 slot; shared references retain this address.
AudioC2_09_BaseP2Seq:
Seq7682:
    db $e0, $00, $03, $84, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31
    db $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31
    db $31, $31, $31, $31, $80, $32, $ff
; Stream indexed by AudioCueC2_09 for the base pulse 1 slot; shared references retain this address.
AudioC2_09_BaseP1Seq:
Seq76a9:
    db $e1, $00, $03, $84, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a
    db $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a
    db $2a, $2a, $2a, $2a, $80, $2b, $ff
; Stream indexed by AudioCueC2_09 for the base wave slot; shared references retain this address.
AudioC2_09_BaseWaveSeq:
Seq76d0:
    db $e2, $01, $03, $91, $31, $30, $2f, $2e, $2f, $30, $31, $30, $2f, $2e, $2f, $30
    db $31, $30, $2f, $2e, $2f, $30, $31, $30, $2f, $2e, $2f, $30, $31, $30, $2f, $2e
    db $2f, $30, $31, $30, $2f, $2e, $2f, $30, $31, $30, $2f, $2e, $2f, $30, $31, $30
    db $2f, $2e, $2f, $7e, $2f, $84, $2f, $8a, $7f, $88, $7f, $ff
jr_004_770c:
; Stream indexed by AudioCueC2_09 for the base noise slot; shared references retain this address.
AudioC2_09_BaseNoiseSeq:
Seq770c:
    db $03, $c8, $82, $91, $35, $35
jr_004_7712:
    db $35, $35, $35, $35, $cf, $82
jr_004_7718:
    db $35, $81, $7f, $82, $34, $ff
jr_004_771e:
; Pulse/wave instrument base for AudioCueC2_09; referenced by its encoded instrument commands.
AudioC2_09_PulseWaveInsts:
Inst771e:
    db $40, $03, $00
jr_004_7721:
    db $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_09.
AudioC2_09_NoiseInsts:
Inst7722:
    db $37, $a0
jr_004_7724:
    db $10, $c0, $00, $81, $00, $80
jr_004_772a:
; Audio record first indexed by Case II request $0a; type 1, fourteen bytes.
AudioCueC2_0A:
Audio772a:
    db $01, $10
    dw AudioC2_0A_BaseP2Seq
    dw AudioC2_0A_BaseP1Seq
jr_004_7730:
    dw AudioC2_0A_BaseWaveSeq
    dw AudioC2_0A_BaseNoiseSeq
    dw AudioC2_0A_PulseWaveInsts
    dw AudioCueC2_0C
; Stream indexed by AudioCueC2_0A for the base pulse 2 slot; shared references retain this address.
AudioC2_0A_BaseP2Seq:
Seq7738:
    db $e0, $00, $03, $ca, $83, $ca, $83, $83, $3b, $39, $34, $3b, $39, $34, $3b, $39
    db $34, $3b, $39, $34, $3b, $39, $34
jr_004_774f:
    db $3b, $39, $34, $3b, $39, $34, $3b, $39, $34, $cf, $cf, $8a, $7f, $ff
jr_004_775d:
; Stream indexed by AudioCueC2_0A for the base pulse 1 slot; shared references retain this address.
AudioC2_0A_BaseP1Seq:
Seq775d:
    db $e1, $01, $03, $8a, $7f, $ca, $83, $ca, $83, $83, $2f, $2d, $28, $2f, $2d, $28
    db $2f, $2d, $28, $2f, $2d, $28, $2f, $2d, $28, $2f, $2d, $28, $2f, $2d, $28, $2f
    db $2d, $28, $cf, $cf, $ff
; Stream indexed by AudioCueC2_0A for the base wave slot; shared references retain this address.
AudioC2_0A_BaseWaveSeq:
Seq7782:
    db $e2, $02, $03, $ca, $83, $ca, $83, $83, $2f, $89, $7f, $81, $7f, $83, $2d, $89
    db $7f, $81, $7f, $83, $28, $89, $7f, $81
jr_004_779a:
    db $7f, $cf, $cf
jr_004_779d:
    db $8a, $7f, $ff
jr_004_77a0:
; Stream indexed by AudioCueC2_0A for the base noise slot; shared references retain this address.
AudioC2_0A_BaseNoiseSeq:
Seq77a0:
    db $ff
; Pulse/wave instrument base for AudioCueC2_0A; referenced by its encoded instrument commands.
AudioC2_0A_PulseWaveInsts:
Inst77a1:
    db $40, $07
jr_004_77a3:
    db $40, $06, $00
jr_004_77a6:
    db $00
; Audio record first indexed by Case II request $0c; type 1, fourteen bytes.
AudioCueC2_0C:
Audio77a7:
    db $01, $10
    dw AudioC2_0C_BaseP2Seq
    db LOW(AudioC2_0C_BaseP1Seq)
jr_004_77ac:
    db HIGH(AudioC2_0C_BaseP1Seq)
    dw AudioC2_0C_BaseWaveSeq
    dw AudioC2_0C_BaseNoiseSeq
    dw AudioC2_0C_PulseWaveInsts
    dw Inst77d9
; Stream indexed by AudioCueC2_0C for the base pulse 2 slot; shared references retain this address.
AudioC2_0C_BaseP2Seq:
Seq77b5:
    db $e0, $00, $03, $82, $2e, $2e, $30, $30, $ff
; Stream indexed by AudioCueC2_0C for the base pulse 1 slot; shared references retain this address.
AudioC2_0C_BaseP1Seq:
Seq77be:
    db $e1, $01, $03, $83, $7f, $82, $2d, $2d, $2f, $7e, $83, $2f, $ff
; Stream indexed by AudioCueC2_0C for the base wave slot; shared references retain this address.
AudioC2_0C_BaseWaveSeq:
Seq77cb:
    db $e2, $02, $03, $81, $22, $7f, $ff
; Stream indexed by AudioCueC2_0C for the base noise slot; shared references retain this address.
AudioC2_0C_BaseNoiseSeq:
Seq77d2:
    db $ff
; Pulse/wave instrument base for AudioCueC2_0C; referenced by its encoded instrument commands.
AudioC2_0C_PulseWaveInsts:
Inst77d3:
    db $80, $00, $80, $00, $00, $00

; The selected noise stream ends immediately, without reading a row.
; Each row supplies NR41, NR42, NR43, NR44 in that order.
Inst77d9:
    db $00, $92, $20, $80
    db $34, $81, $40, $c0
; Audio record first indexed by Case II request $0e; type 0, fourteen bytes.
AudioCueC2_0E:
Audio77e1:
    db $00, $10
    dw AudioC2_0E_BaseP2Seq
    dw AudioC2_0E_BaseP1Seq
    dw AudioC2_0E_BaseWaveSeq
    dw AudioC2_0E_BaseNoiseSeq
    dw AudioCueC2_0F
jr_004_77ed:
    dw AudioCueC2_0F
; Stream indexed by AudioCueC2_0E for the base pulse 2 slot; shared references retain this address.
AudioC2_0E_BaseP2Seq:
Seq77ef:
    db $03, $ff
; Stream indexed by AudioCueC2_0E for the base pulse 1 slot; shared references retain this address.
AudioC2_0E_BaseP1Seq:
Seq77f1:
    db $ff
; Stream indexed by AudioCueC2_0E for the base wave slot; shared references retain this address.
AudioC2_0E_BaseWaveSeq:
Seq77f2:
    db $ff
; Stream indexed by AudioCueC2_0E for the base noise slot; shared references retain this address.
AudioC2_0E_BaseNoiseSeq:
Seq77f3:
    db $ff
; Audio record first indexed by Case II request $0f; type 0, fourteen bytes.
AudioCueC2_0F:
Audio77f4:
    db $00, $10
    dw AudioC2_0F_BaseP2Seq
    dw AudioC2_0F_BaseP1Seq
    dw AudioC2_0F_BaseWaveSeq
    dw AudioC2_0F_BaseNoiseSeq
    dw AudioCueC2_10
    dw AudioCueC2_10
; Stream indexed by AudioCueC2_0F for the base pulse 2 slot; shared references retain this address.
AudioC2_0F_BaseP2Seq:
Seq7802:
    db $03, $ff
; Stream indexed by AudioCueC2_0F for the base pulse 1 slot; shared references retain this address.
AudioC2_0F_BaseP1Seq:
Seq7804:
    db $ff
; Stream indexed by AudioCueC2_0F for the base wave slot; shared references retain this address.
AudioC2_0F_BaseWaveSeq:
Seq7805:
    db $ff
; Stream indexed by AudioCueC2_0F for the base noise slot; shared references retain this address.
AudioC2_0F_BaseNoiseSeq:
Seq7806:
    db $ff
; Audio record first indexed by Case II request $10; type 3, fourteen bytes.
AudioCueC2_10:
Audio7807:
    db $03, $18
    ; Type 3 loader skips stream word 0.
    dw Seq7815
jr_004_780b:
    dw AudioC2_10_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq781c
    dw AudioC2_10_TopNoiseSeq
    dw AudioC2_10_PulseWaveInsts
    dw AudioC2_10_NoiseInsts
Seq7815:
    db $ff
; Stream indexed by AudioCueC2_10 for the top pulse 1 slot; shared references retain this address.
AudioC2_10_TopP1Seq:
Seq7816:
    db $e1, $01, $03, $81, $34, $ff
Seq781c:
    db $ff
; Stream indexed by AudioCueC2_10 for the top noise slot; shared references retain this address.
AudioC2_10_TopNoiseSeq:
Seq781d:
    db $03, $81
jr_004_781f:
    db $34, $ff

; No instrument command in the current loaded streams reads this pair.
; Pulse/wave instrument base for AudioCueC2_10; referenced by its encoded instrument commands.
AudioC2_10_PulseWaveInsts:
Inst7821:
    db $80, $0b
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_10.
AudioC2_10_NoiseInsts:
Inst7823:
    db $00, $d3, $60, $80
; Audio record first indexed by Case II request $11; type 3, fourteen bytes.
AudioCueC2_11:
Audio7827:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq7835
    dw AudioC2_11_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq783e
    dw AudioC2_11_TopNoiseSeq
    dw AudioC2_11_PulseWaveInsts
    dw AudioC2_11_NoiseInsts
Seq7835:
    db $ff
; Stream indexed by AudioCueC2_11 for the top pulse 1 slot; shared references retain this address.
AudioC2_11_TopP1Seq:
Seq7836:
    db $e1, $00, $03, $8c, $7f, $83
jr_004_783c:
    db $4b, $ff
Seq783e:
    db $ff
; Stream indexed by AudioCueC2_11 for the top noise slot; shared references retain this address.
AudioC2_11_TopNoiseSeq:
Seq783f:
    db $03, $84, $34, $8a, $35, $ff
; Pulse/wave instrument base for AudioCueC2_11; referenced by its encoded instrument commands.
AudioC2_11_PulseWaveInsts:
Inst7845:
    db $00, $0b
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_11.
AudioC2_11_NoiseInsts:
Inst7847:
    db $2d, $d0, $30, $c0, $00, $c1, $50, $80
; Audio record first indexed by Case I request $23; type 3, fourteen bytes.
AudioCueC1_23:
Audio784f:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq785d
    dw AudioC1_23_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq785f
    dw AudioC1_23_TopNoiseSeq
    dw AudioC1_23_NoiseInsts
jr_004_785b:
    dw AudioC1_23_NoiseInsts
Seq785d:
    db $ff
; Stream indexed by AudioCueC1_23 for the top pulse 1 slot; shared references retain this address.
AudioC1_23_TopP1Seq:
Seq785e:
    db $ff
Seq785f:
    db $ff
; Stream indexed by AudioCueC1_23 for the top noise slot; shared references retain this address.
AudioC1_23_TopNoiseSeq:
Seq7860:
    db $03, $8c, $34, $8a, $35, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_23.
AudioC1_23_NoiseInsts:
Inst7866:
    db $33, $d0, $53, $c0, $30, $d0, $35, $c0
; Audio record first indexed by Case II request $13; type 3, fourteen bytes.
AudioCueC2_13:
Audio786e:
    db $03, $13
    ; Type 3 loader skips stream word 0.
    dw Seq787c
    dw AudioC2_13_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq788a
    dw AudioC2_13_TopNoiseSeq
    dw AudioC2_13_PulseWaveInsts
    dw AudioC2_13_NoiseInsts
Seq787c:
    db $ff
; Stream indexed by AudioCueC2_13 for the top pulse 1 slot; shared references retain this address.
AudioC2_13_TopP1Seq:
Seq787d:
    db $e1, $00, $03, $85, $46, $47, $50, $51, $4a, $4b, $54, $55, $ff
Seq788a:
    db $ff
; Stream indexed by AudioCueC2_13 for the top noise slot; shared references retain this address.
AudioC2_13_TopNoiseSeq:
Seq788b:
    db $03, $84, $34, $85, $35, $82, $36, $ff
; Pulse/wave instrument base for AudioCueC2_13; referenced by its encoded instrument commands.
AudioC2_13_PulseWaveInsts:
Inst7893:
    db $00, $0a
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_13.
AudioC2_13_NoiseInsts:
Inst7895:
    db $00, $d1, $51, $80
jr_004_7899:
    db $30, $c0, $64, $80, $00, $d4, $20, $80
jr_004_78a1:
; Audio record first indexed by Case II request $14; type 3, fourteen bytes.
AudioCueC2_14:
Audio78a1:
    db $03, $1a
    ; Type 3 loader skips stream word 0.
    dw Seq78af
    dw AudioC2_14_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq78b1
    dw AudioC2_14_TopNoiseSeq
    dw AudioC2_14_NoiseInsts
    dw AudioC2_14_NoiseInsts
Seq78af:
    db $ff
; Stream indexed by AudioCueC2_14 for the top pulse 1 slot; shared references retain this address.
AudioC2_14_TopP1Seq:
Seq78b0:
    db $ff
Seq78b1:
    db $ff
; Stream indexed by AudioCueC2_14 for the top noise slot; shared references retain this address.
AudioC2_14_TopNoiseSeq:
Seq78b2:
    db $03, $ca, $83, $83, $34, $8c, $7f, $8b, $35, $85, $7f, $83, $36, $8c, $7f, $8b
    db $37, $85, $7f, $cf, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_14.
AudioC2_14_NoiseInsts:
Inst78c7:
    db $28, $d0, $22, $c0, $2c, $c0, $24, $c0, $28, $d0, $23, $c0, $2a, $c0, $25, $c0
; Audio record first indexed by Case II request $15; type 3, fourteen bytes.
AudioCueC2_15:
Audio78d7:
    db $03, $15
    ; Type 3 loader skips stream word 0.
    dw Seq78e5
    dw AudioC2_15_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq78ef
    dw AudioC2_15_TopNoiseSeq
    dw AudioC2_15_PulseWaveInsts
    dw AudioC2_15_NoiseInsts
Seq78e5:
    db $ff
; Stream indexed by AudioCueC2_15 for the top pulse 1 slot; shared references retain this address.
AudioC2_15_TopP1Seq:
Seq78e6:
    db $e1, $00, $03, $85, $46, $7f, $40, $7f, $ff
Seq78ef:
    db $ff
; Stream indexed by AudioCueC2_15 for the top noise slot; shared references retain this address.
AudioC2_15_TopNoiseSeq:
Seq78f0:
    db $03, $84, $34, $85, $7f, $84, $35, $85, $7f, $ff
; Pulse/wave instrument base for AudioCueC2_15; referenced by its encoded instrument commands.
AudioC2_15_PulseWaveInsts:
Inst78fa:
    db $00, $0a
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_15.
AudioC2_15_NoiseInsts:
Inst78fc:
    db $32, $c0, $22, $c0, $37, $c1, $11, $c0
; Audio record first indexed by Case II request $16; type 3, fourteen bytes.
AudioCueC2_16:
Audio7904:
    db $03, $18
    ; Type 3 loader skips stream word 0.
    dw Seq7912
    dw AudioC2_16_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq7914
    dw AudioC2_16_TopNoiseSeq
    dw AudioC2_16_NoiseInsts
    dw AudioC2_16_NoiseInsts
Seq7912:
    db $ff
; Stream indexed by AudioCueC2_16 for the top pulse 1 slot; shared references retain this address.
AudioC2_16_TopP1Seq:
Seq7913:
    db $ff
Seq7914:
    db $ff
; Stream indexed by AudioCueC2_16 for the top noise slot; shared references retain this address.
AudioC2_16_TopNoiseSeq:
Seq7915:
    db $03, $83, $34, $84
jr_004_7919:
    db $7f, $83, $34, $84, $7f, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_16.
AudioC2_16_NoiseInsts:
Inst791f:
    db $46, $c1, $32, $80
; Audio record first indexed by Case II request $1a; type 3, fourteen bytes.
AudioCueC2_1A:
Audio7923:
    db $03, $13
    ; Type 3 loader skips stream word 0.
    dw Seq7931
    dw AudioC2_1A_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq793e
    dw AudioC2_1A_TopNoiseSeq
    dw AudioC2_1A_PulseWaveInsts
    dw AudioCueC2_1B
Seq7931:
    db $ff
; Stream indexed by AudioCueC2_1A for the top pulse 1 slot; shared references retain this address.
AudioC2_1A_TopP1Seq:
Seq7932:
    db $e1, $01, $03, $c4, $80, $c8, $80, $82, $3d, $cf, $cf, $ff
Seq793e:
    db $ff
; Stream indexed by AudioCueC2_1A for the top noise slot; shared references retain this address.
AudioC2_1A_TopNoiseSeq:
Seq793f:
    db $ff

; No instrument command in the current loaded streams reads this pair.
; Pulse/wave instrument base for AudioCueC2_1A; referenced by its encoded instrument commands.
AudioC2_1A_PulseWaveInsts:
Inst7940:
    db $80, $02

; These header bytes also supply instrument pair 1 through Inst7940.
; Audio record first indexed by Case II request $1b; type 3, fourteen bytes.
; Also supplies the instrument pair read by AudioC2_1A_TopP1Seq (E1 selector $01).
AudioCueC2_1B:
Audio7942:
    db $03, $0d
    ; Type 3 loader skips stream word 0.
    dw Seq7950
    dw AudioC2_1B_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq7959
    dw AudioC2_1B_TopNoiseSeq
    dw AudioC2_1B_PulseWaveInsts
    dw AudioCueC2_1C
Seq7950:
    db $ff
; Stream indexed by AudioCueC2_1B for the top pulse 1 slot; shared references retain this address.
AudioC2_1B_TopP1Seq:
Seq7951:
    db $e1, $01, $03, $82, $27, $80, $27, $ff
Seq7959:
    db $ff
; Stream indexed by AudioCueC2_1B for the top noise slot; shared references retain this address.
AudioC2_1B_TopNoiseSeq:
Seq795a:
    db $ff

; No instrument command in the current loaded streams reads this pair.
; Pulse/wave instrument base for AudioCueC2_1B; referenced by its encoded instrument commands.
AudioC2_1B_PulseWaveInsts:
Inst795b:
    db $80, $04

; These header bytes also supply instrument pair 1 through Inst795b.
; Audio record first indexed by Case II request $1c; type 3, fourteen bytes.
; Also supplies the instrument pair read by AudioC2_1B_TopP1Seq (E1 selector $01).
AudioCueC2_1C:
Audio795d:
    db $03, $0d
    ; Type 3 loader skips stream word 0.
    dw Seq796b
    dw AudioC2_1C_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq7974
    dw AudioC2_1C_TopNoiseSeq
    dw AudioC2_1C_PulseWaveInsts
    dw AudioCueC2_20
Seq796b:
    db $ff
; Stream indexed by AudioCueC2_1C for the top pulse 1 slot; shared references retain this address.
AudioC2_1C_TopP1Seq:
Seq796c:
    db $e1, $01, $03, $82, $27, $80, $27, $ff
Seq7974:
    db $ff
; Stream indexed by AudioCueC2_1C for the top noise slot; shared references retain this address.
AudioC2_1C_TopNoiseSeq:
Seq7975:
    db $ff

; No instrument command in the current loaded streams reads this pair.
; Pulse/wave instrument base for AudioCueC2_1C; referenced by its encoded instrument commands.
AudioC2_1C_PulseWaveInsts:
Inst7976:
    db $80, $05

; These header bytes also supply instrument pair 1 through Inst7976.
; Audio record first indexed by Case II request $20; type 2, fourteen bytes.
; Also supplies the instrument pair read by AudioC2_1C_TopP1Seq (E1 selector $01).
AudioCueC2_20:
Audio7978:
    db $02, $14
    dw AudioC2_20_AltP2Seq
    dw AudioC2_20_AltP1Seq
    dw AudioC2_20_AltWaveSeq
    ; Type 2 loader skips stream word 3.
    dw Seq799d
    dw AudioC2_20_PulseWaveInsts
    ; Type 2 loader skips the noise-instrument word.
    dw AudioCueC2_21
; Stream indexed by AudioCueC2_20 for the alternate pulse 2 slot; shared references retain this address.
AudioC2_20_AltP2Seq:
Seq7986:
    db $e0, $00, $03, $84, $39, $3b, $40, $45, $44, $ff
; Stream indexed by AudioCueC2_20 for the alternate pulse 1 slot; shared references retain this address.
AudioC2_20_AltP1Seq:
Seq7990:
    db $e1, $01, $03, $8b, $7f, $84, $39, $3b, $40, $45, $44, $ff
; Stream indexed by AudioCueC2_20 for the alternate wave slot; shared references retain this address.
AudioC2_20_AltWaveSeq:
Seq799c:
    db $ff
Seq799d:
    db $ff
; Pulse/wave instrument base for AudioCueC2_20; referenced by its encoded instrument commands.
AudioC2_20_PulseWaveInsts:
Inst799e:
    db $80, $08, $80, $0b
; Audio record first indexed by Case II request $21; type 2, fourteen bytes.
AudioCueC2_21:
Audio79a2:
    db $02, $1d
    dw AudioC2_21_AltP2Seq
    dw AudioC2_21_AltP1Seq
    dw AudioC2_21_AltWaveSeq
    ; Type 2 loader skips stream word 3.
    dw Seq79d5
    dw AudioC2_21_PulseWaveInsts
    ; Type 2 loader skips the noise-instrument word.
    dw AudioCueC2_22
; Stream indexed by AudioCueC2_21 for the alternate pulse 2 slot; shared references retain this address.
AudioC2_21_AltP2Seq:
Seq79b0:
    db $e0, $00, $03, $83, $34, $39, $3b, $34, $39, $3b, $81, $40, $7e, $8a, $40, $7e
    db $85, $40, $ff
; Stream indexed by AudioCueC2_21 for the alternate pulse 1 slot; shared references retain this address.
AudioC2_21_AltP1Seq:
Seq79c3:
    db $e1, $01, $03, $8a, $7f, $85, $7f, $83, $34, $39, $3b, $34, $39, $3b, $81, $40
    db $ff
; Stream indexed by AudioCueC2_21 for the alternate wave slot; shared references retain this address.
AudioC2_21_AltWaveSeq:
Seq79d4:
    db $ff
Seq79d5:
    db $ff
; Pulse/wave instrument base for AudioCueC2_21; referenced by its encoded instrument commands.
AudioC2_21_PulseWaveInsts:
Inst79d6:
    db $80, $08, $80, $08
; Audio record first indexed by Case II request $22; type 2, fourteen bytes.
AudioCueC2_22:
Audio79da:
    db $02, $20
    dw AudioC2_22_AltP2Seq
    dw AudioC2_22_AltP1Seq
    dw AudioC2_22_AltWaveSeq
    ; Type 2 loader skips stream word 3.
    dw Seq7a0f
    dw AudioC2_22_PulseWaveInsts
    ; Type 2 loader skips the noise-instrument word.
    dw AudioCueC2_23
; Stream indexed by AudioCueC2_22 for the alternate pulse 2 slot; shared references retain this address.
AudioC2_22_AltP2Seq:
Seq79e8:
    db $e0, $00, $03, $c4, $84, $c8, $84, $84, $3d, $3b, $36, $38, $cf, $cf, $8b, $7f
    db $84
jr_004_79f9:
    db $7f, $ff
; Stream indexed by AudioCueC2_22 for the alternate pulse 1 slot; shared references retain this address.
AudioC2_22_AltP1Seq:
Seq79fb:
    db $e1, $01, $03, $8b, $7f, $84, $7f, $c4, $84, $c8, $84, $84, $3d, $3b, $36, $38
    db $cf, $cf, $ff
; Stream indexed by AudioCueC2_22 for the alternate wave slot; shared references retain this address.
AudioC2_22_AltWaveSeq:
Seq7a0e:
    db $ff
Seq7a0f:
    db $ff
; Pulse/wave instrument base for AudioCueC2_22; referenced by its encoded instrument commands.
AudioC2_22_PulseWaveInsts:
Inst7a10:
    db $80, $08, $80, $0b
; Audio record first indexed by Case II request $23; type 2, fourteen bytes.
AudioCueC2_23:
Audio7a14:
    db $02, $18
    dw AudioC2_23_AltP2Seq
    dw AudioC2_23_AltP1Seq
    dw AudioC2_23_AltWaveSeq
    ; Type 2 loader skips stream word 3.
    dw Seq7a39
    dw AudioC2_23_PulseWaveInsts
    ; Type 2 loader skips the noise-instrument word.
    dw AudioCueC2_24
; Stream indexed by AudioCueC2_23 for the alternate pulse 2 slot; shared references retain this address.
AudioC2_23_AltP2Seq:
Seq7a22:
    db $e0, $00, $03, $84, $34, $39, $38, $3d, $40, $ff
; Stream indexed by AudioCueC2_23 for the alternate pulse 1 slot; shared references retain this address.
AudioC2_23_AltP1Seq:
Seq7a2c:
    db $e1, $01, $03, $8b, $7f, $84, $34, $39, $38, $3d, $40, $ff
; Stream indexed by AudioCueC2_23 for the alternate wave slot; shared references retain this address.
AudioC2_23_AltWaveSeq:
Seq7a38:
    db $ff
jr_004_7a39:
Seq7a39:
    db $ff
; Pulse/wave instrument base for AudioCueC2_23; referenced by its encoded instrument commands.
AudioC2_23_PulseWaveInsts:
Inst7a3a:
    db $80, $08, $80, $0b
; Audio record first indexed by Case II request $24; type 2, fourteen bytes.
AudioCueC2_24:
Audio7a3e:
    db $02, $0f
    dw AudioC2_24_AltP2Seq
    dw AudioC2_24_AltP1Seq
    dw AudioC2_24_AltWaveSeq
    ; Type 2 loader skips stream word 3.
    dw Seq7a79
    dw AudioC2_24_PulseWaveInsts
    ; Type 2 loader skips the noise-instrument word.
    dw AudioCueC2_25
; Stream indexed by AudioCueC2_24 for the alternate pulse 2 slot; shared references retain this address.
AudioC2_24_AltP2Seq:
Seq7a4c:
    db $e0, $00, $03, $8c, $3e, $86, $7f, $8c, $3a, $86, $7f, $8c, $37, $86, $7f, $8c
    db $35, $86, $7f, $8c, $32, $86, $7f, $8c, $30, $86, $7f
jr_004_7a67:
    db $8a, $2e, $ff
; Stream indexed by AudioCueC2_24 for the alternate pulse 1 slot; shared references retain this address.
AudioC2_24_AltP1Seq:
Seq7a6a:
    db $e1, $01, $03, $84, $7f, $3e, $3a, $37, $35
jr_004_7a73:
    db $32, $30, $83, $2e, $ff
; Stream indexed by AudioCueC2_24 for the alternate wave slot; shared references retain this address.
AudioC2_24_AltWaveSeq:
Seq7a78:
    db $ff
Seq7a79:
    db $ff
; Pulse/wave instrument base for AudioCueC2_24; referenced by its encoded instrument commands.
AudioC2_24_PulseWaveInsts:
Inst7a7a:
    db $80, $0b, $80, $0b
; Audio record first indexed by Case II request $25; type 3, fourteen bytes.
AudioCueC2_25:
Audio7a7e:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq7a8c
    dw AudioC2_25_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq7a8e
    dw AudioC2_25_TopNoiseSeq
    dw AudioC2_25_NoiseInsts
    dw AudioC2_25_NoiseInsts
Seq7a8c:
    db $ff
; Stream indexed by AudioCueC2_25 for the top pulse 1 slot; shared references retain this address.
AudioC2_25_TopP1Seq:
Seq7a8d:
    db $ff
Seq7a8e:
    db $ff
; Stream indexed by AudioCueC2_25 for the top noise slot; shared references retain this address.
AudioC2_25_TopNoiseSeq:
Seq7a8f:
    db $03, $86, $35, $84, $34, $8b, $7f
jr_004_7a96:
    db $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_25.
AudioC2_25_NoiseInsts:
Inst7a97:
    db $50, $e5, $01, $c0, $50, $f0, $04, $c0
; Audio record first indexed by Case II request $26; type 2, fourteen bytes.
AudioCueC2_26:
Audio7a9f:
    db $02, $15
    dw AudioC2_26_AltP2Seq
    dw AudioC2_26_AltP1Seq
    dw AudioC2_26_AltWaveSeq
    ; Type 2 loader skips stream word 3.
    dw Seq7ad5
    dw AudioC2_26_PulseWaveInsts
    ; Type 2 loader skips the noise-instrument word.
    dw AudioCueC2_27
; Stream indexed by AudioCueC2_26 for the alternate pulse 2 slot; shared references retain this address.
AudioC2_26_AltP2Seq:
Seq7aad:
    db $e0, $00, $03, $84, $28, $2a, $2d, $2f, $34, $36, $39
jr_004_7ab8:
    db $3b, $89, $38, $7e, $84
jr_004_7abd:
    db $38, $ff
; Stream indexed by AudioCueC2_26 for the alternate pulse 1 slot; shared references retain this address.
AudioC2_26_AltP1Seq:
Seq7abf:
    db $e1, $01, $03, $8c, $7f, $84
jr_004_7ac5:
    db $7f, $28, $2a, $2d, $2f, $34, $36, $39
jr_004_7acd:
    db $3b, $82, $38, $7e, $84, $38, $ff
; Stream indexed by AudioCueC2_26 for the alternate wave slot; shared references retain this address.
AudioC2_26_AltWaveSeq:
Seq7ad4:
    db $ff
Seq7ad5:
    db $ff
; Pulse/wave instrument base for AudioCueC2_26; referenced by its encoded instrument commands.
AudioC2_26_PulseWaveInsts:
Inst7ad6:
    db $40, $08, $40, $08
; Audio record first indexed by Case II request $27; type 3, fourteen bytes.
AudioCueC2_27:
Audio7ada:
    db $03, $20
    ; Type 3 loader skips stream word 0.
    db LOW(Seq7ae8)
jr_004_7add:
    db HIGH(Seq7ae8)
    dw AudioC2_27_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq7aea
    dw AudioC2_27_TopNoiseSeq
    dw AudioC2_27_NoiseInsts
    dw AudioC2_27_NoiseInsts
Seq7ae8:
    db $ff
; Stream indexed by AudioCueC2_27 for the top pulse 1 slot; shared references retain this address.
AudioC2_27_TopP1Seq:
Seq7ae9:
    db $ff
Seq7aea:
    db $ff
; Stream indexed by AudioCueC2_27 for the top noise slot; shared references retain this address.
AudioC2_27_TopNoiseSeq:
Seq7aeb:
    db $03, $84, $34, $34, $34, $34, $34
jr_004_7af2:
    db $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_27.
AudioC2_27_NoiseInsts:
Inst7afe:
    db $50, $d1, $00, $80
; Audio record first indexed by Case II request $28; type 0, fourteen bytes.
AudioCueC2_28:
Audio7b02:
    db $00, $15
    dw AudioC2_28_BaseP2Seq
    dw AudioC2_28_BaseP1Seq
    dw AudioC2_28_BaseWaveSeq
    dw AudioC2_28_BaseNoiseSeq
    dw AudioC2_28_PulseWaveInsts
    dw AudioC2_28_NoiseInsts
; Stream indexed by AudioCueC2_28 for the base pulse 2 slot; shared references retain this address.
AudioC2_28_BaseP2Seq:
Seq7b10:
    db $ff
; Stream indexed by AudioCueC2_28 for the base pulse 1 slot; shared references retain this address.
AudioC2_28_BaseP1Seq:
Seq7b11:
    db $e1, $00, $03, $83, $34, $7f, $2d, $2d, $84, $31, $83, $31, $31, $31, $31, $34
    db $34, $84, $2c, $2c, $83, $2f, $84, $2f, $83, $2f, $2f, $ff
; Stream indexed by AudioCueC2_28 for the base wave slot; shared references retain this address.
AudioC2_28_BaseWaveSeq:
Seq7b2d:
    db $ff
; Stream indexed by AudioCueC2_28 for the base noise slot; shared references retain this address.
AudioC2_28_BaseNoiseSeq:
Seq7b2e:
    db $03, $83, $37, $34, $84, $38, $83, $34, $35, $84, $38, $83
jr_004_7b3a:
    db $37, $34, $84, $37, $39, $83, $36, $84, $34, $37, $39, $83, $38, $34, $84, $35
    db $38, $81, $37, $ff
; Pulse/wave instrument base for AudioCueC2_28; referenced by its encoded instrument commands.
AudioC2_28_PulseWaveInsts:
Inst7b4e:
    db $80
jr_004_7b4f:
    db $0b
; Four-byte noise-register rows selected by encoded notes of AudioCueC2_28.
AudioC2_28_NoiseInsts:
Inst7b50:
    db $00, $d3, $60, $80, $00, $d2, $30, $80, $00, $d1, $50, $80, $00, $d2, $90, $80
    db $00, $d2, $50, $80, $00, $d4, $60, $80
