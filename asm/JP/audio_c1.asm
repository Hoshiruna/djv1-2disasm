; Audio IDs $01..$33; index is (request-1)*2 in eight-bit arithmetic.
C1AudioPtrs:
    dw AudioCueC1_01
    dw AudioCueC1_02
    dw AudioCueC1_03
    dw AudioCueC1_04
    dw AudioCueC1_05
    dw AudioCueC1_06
    dw AudioCueC1_07
    dw AudioCueC1_08
    dw AudioCueC1_09
    dw AudioCueC1_0A
    dw AudioCueC1_0B
    dw AudioCueC1_0C
    dw AudioCueC1_0D
    dw AudioCueC1_0E
    dw AudioCueC1_0F
    dw AudioCueC1_10
    dw AudioCueC1_11
    dw AudioCueC1_12
    dw AudioCueC1_13
    dw AudioCueC1_14
    dw AudioCueC1_15
    dw AudioCueC1_16
    dw AudioCueC1_17
    dw AudioCueC1_18
    dw AudioCueC1_19
    dw AudioCueC1_1A
    dw AudioCueC1_1B
    dw AudioCueC1_1C
    dw AudioCueC1_1D
    dw AudioCueC1_1E
    dw AudioCueC1_1D
    dw AudioCueC1_1B
    dw AudioCueC1_21
    dw AudioCueC1_22
    dw AudioCueC1_23
    dw AudioCueC1_24
    dw AudioCueC1_25
    dw AudioCueC1_26
    dw AudioCueC1_27
    dw AudioCueC1_28
    dw AudioCueC1_29
    dw AudioCueC1_2A
    dw AudioCueC1_2B
    dw AudioCueC1_2C
    dw AudioCueC1_2D
    dw AudioCueC1_2E
    dw AudioCueC1_2F
    dw AudioCueC1_30
    dw AudioCueC1_31
    dw AudioCueC1_32
    dw AudioCueC1_33

; Records: type, speed, four stream pointers, two instrument pointers.
; Stream/instrument bytes and unreferenced data retain their original order.
; Audio record first indexed by Case I request $01; type 1, fourteen bytes.
AudioCueC1_01:
Audio4a93:
    db $01, $15
    dw AudioC1_01_BaseP2Seq
    dw AudioC1_01_BaseP1Seq
    dw AudioC1_01_BaseWaveSeq
    dw AudioC1_01_BaseNoiseSeq
    dw AudioC1_01_PulseWaveInsts
    dw AudioC1_01_NoiseInsts
; Stream indexed by AudioCueC1_01 for the base pulse 2 slot; shared references retain this address.
AudioC1_01_BaseP2Seq:
Seq4aa1:
    db $e0, $00, $03, $ca, $80, $ca, $80
jr_004_4aa8:
    db $90, $7f, $7f, $2a, $2d, $7e, $2d, $2a, $2d, $7e, $2d, $34, $7f, $7f, $33, $7e
    db $88, $33, $7e, $81, $33, $7e, $90, $33, $7f, $34, $7f, $31, $2f, $80, $31, $7e
    db $83, $31, $7f, $90, $7f, $7f, $2a, $2d, $7e, $2d, $2a, $2d, $7e, $2d
jr_004_4ad6:
    db $34, $7f, $7f, $33, $7e, $88, $33, $7e, $81, $33, $7e, $90, $33, $7f, $34, $7f
    db $31, $2f, $80, $31, $7e, $83, $31, $7f, $90, $7f, $7f, $2a, $2d, $7e, $2d, $2a
    db $2d, $7e, $2d, $31, $7f, $7f, $2f, $7e, $88, $2f, $7e, $82, $2f, $90, $7f, $7f
    db $91, $31, $2f, $90, $2d, $7e, $2d, $2a, $82, $2d, $90, $7f, $7f, $2a, $7e, $88
    db $2a, $7e, $82, $2a, $90, $7f, $7f, $2a, $2d, $7e, $2d, $2a, $2d, $7e, $2d, $31
    db $7f, $7f, $2f, $7e, $88, $2f, $7e, $82, $2f, $90, $7f, $7f, $91, $31, $2f, $90
    db $2d, $7e, $2d, $2a, $82, $2d, $90, $7f, $7f, $2a, $7e, $88, $2a, $7e, $82, $7f
    db $cf, $cf, $7f, $ff
; Stream indexed by AudioCueC1_01 for the base pulse 1 slot; shared references retain this address.
AudioC1_01_BaseP1Seq:
Seq4b4a:
    db $e1, $01, $03, $82, $7f, $ca, $82, $ca, $82, $90, $7f, $7f, $2a, $2d, $7e, $2d
    db $2a, $2d, $7e, $2d, $34, $7f, $7f, $33, $7e, $88, $33, $7e, $81, $33, $7e, $90
    db $33, $7f, $34, $7f, $31, $2f, $80, $31, $7e, $83, $31, $7f, $90, $7f, $7f, $2a
    db $2d, $7e, $2d, $2a, $2d, $7e, $2d, $34, $7f, $7f, $33, $7e, $88, $33, $7e, $81
    db $33, $7e, $90, $33, $7f, $34, $7f, $31, $2f, $80, $31, $7e, $83, $31, $7f, $90
    db $7f, $7f, $2a, $2d, $7e, $2d, $2a, $2d, $7e, $2d, $31, $7f, $7f, $2f, $7e, $88
    db $2f, $7e, $82, $2f, $90, $7f, $7f, $91, $31, $2f, $90, $2d, $7e, $2d, $2a, $82
    db $2d, $90, $7f, $7f, $2a, $7e, $88, $2a, $7e, $82, $2a, $90, $7f, $7f, $2a, $2d
    db $7e, $2d, $2a, $2d, $7e, $2d, $31, $7f, $7f, $2f, $7e, $88, $2f, $7e, $82, $2f
    db $90, $7f, $7f, $91, $31, $2f, $90, $2d, $7e, $2d, $2a, $82, $2d, $90, $7f, $7f
    db $2a, $7e, $88, $2a, $7e, $82, $7f, $cf, $cf, $ff
; Stream indexed by AudioCueC1_01 for the base wave slot; shared references retain this address.
AudioC1_01_BaseWaveSeq:
Seq4bf4:
    db $e2, $02, $03, $ca, $82, $ca, $82, $88, $7f, $82, $2a, $31, $38, $37, $36, $31
    db $34, $35, $36, $31, $2a, $2c, $2d, $25, $28, $29, $2a, $2c, $25, $2c, $2a, $25
    db $28, $29, $2a, $2c, $2d, $2a, $25, $29, $2a
jr_004_4c1d:
    db $24, $23, $26, $2a, $2f, $2f, $2c, $25, $29, $2a, $2c, $25, $2c, $2a, $27, $28
    db $2a, $23, $23, $2a, $23, $25, $25, $2c, $2b, $2a
jr_004_4c37:
    db $27, $28, $29, $2a, $cf, $cf, $7f, $ff
jr_004_4c3f:
; Stream indexed by AudioCueC1_01 for the base noise slot; shared references retain this address.
AudioC1_01_BaseNoiseSeq:
Seq4c3f:
    db $03, $ca, $80, $ca, $80, $82, $34, $34, $34, $c7, $82, $82, $36, $90, $34, $7f
    db $35, $82, $36, $90, $34, $7f, $35, $82, $36, $90, $34, $7f, $35, $82, $36, $90
    db $34, $7f, $35, $cf
jr_004_4c63:
    db $82, $36, $90, $34, $7f, $35, $82, $36, $90, $34, $7f, $35, $82, $36, $cf, $cf
    db $7f, $ff
; Pulse/wave instrument base for AudioCueC1_01; referenced by its encoded instrument commands.
AudioC1_01_PulseWaveInsts:
Inst4c75:
    db $40, $02, $80, $01, $00, $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_01.
AudioC1_01_NoiseInsts:
Inst4c7b:
    db $38, $a0, $00, $c0, $30, $80, $00, $c0, $00, $b2, $00, $80
; Audio record first indexed by Case I request $02; type 1, fourteen bytes.
AudioCueC1_02:
Audio4c87:
    db $01, $0e
    dw AudioC1_02_BaseP2Seq
    dw AudioC1_02_BaseP1Seq
    dw AudioC1_02_BaseWaveSeq
    dw AudioC1_02_BaseNoiseSeq
    dw AudioC1_02_PulseWaveInsts
    dw AudioC1_02_NoiseInsts
; Stream indexed by AudioCueC1_02 for the base pulse 2 slot; shared references retain this address.
AudioC1_02_BaseP2Seq:
Seq4c95:
    db $e0, $00, $03, $ca, $83, $ca, $83, $84, $34, $7f, $83, $2f, $34, $37, $3b, $37
    db $c2, $83, $88, $39, $83, $7f, $2f, $34, $37, $3b, $37, $88, $39, $83, $7f, $2f
    db $34, $37, $3b, $37, $8a, $39, $84, $7f, $83, $39, $37, $34, $37, $8a, $39, $84
    db $7f, $83, $39, $37, $34, $91, $37, $7e, $37, $7e, $92, $37, $39, $83, $3a, $39
    db $82, $37, $83, $34, $32, $d1, $83, $83, $7f, $2f, $34, $37, $3b, $37, $d2, $83
    db $82, $34, $83, $7f, $34, $37, $34, $cf, $88, $3e, $7e, $83, $3e, $7f, $82, $40
    db $83, $3e, $3c, $88, $3b, $7e, $82, $3a, $83, $7f, $34, $37, $34, $88, $3e, $7e
    db $83, $3e, $7f, $82, $40, $83, $3e, $3c, $81, $3b, $7e, $83, $3b, $39, $84, $3b
    db $7f, $83, $2f, $34, $37, $3b, $37, $88, $39, $83, $7f, $2f, $34, $37, $3b, $37
    db $88, $39, $83, $7f, $2f, $34, $37, $3b, $37, $8a, $39, $84, $7f, $83, $39, $37
    db $34, $37, $8a, $39, $84, $7f, $83, $39, $37, $34, $84, $37, $7f, $83, $3a, $39
    db $82, $37, $83, $34, $32, $cf, $cf, $90, $7f, $91, $7f, $ff
; Stream indexed by AudioCueC1_02 for the base pulse 1 slot; shared references retain this address.
AudioC1_02_BaseP1Seq:
Seq4d51:
    db $e1, $01, $03, $90, $7f, $91, $7f, $ca, $83, $ca, $83, $84, $34, $7f, $83, $2f
    db $34, $37, $3b, $37, $c2, $83, $88, $39, $83, $7f, $2f, $34, $37, $3b, $37, $88
    db $39, $83, $7f, $2f, $34, $37, $3b, $37, $8a, $39, $84, $7f, $83, $39, $37, $34
    db $37, $8a, $39, $84, $7f, $83, $39, $37, $34, $91, $37, $7e, $37, $7e, $37, $83
    db $3a, $39, $82, $37, $83, $34, $32, $d1, $83, $83, $7f, $2f, $34, $37, $3b, $37
    db $d2, $83, $82, $34, $83, $7f, $34, $37, $34, $cf, $88, $3e, $7e, $83, $3e, $7f
jr_004_4db1:
    db $82, $40, $83, $3e, $3c, $88, $3b, $7e, $82, $3a, $83, $7f, $34, $37, $34, $88
    db $3e, $7e, $83, $3e, $7f, $82, $40, $83, $3e, $3c, $81, $3b, $7e, $83, $3b, $39
    db $84, $3b, $7f, $83, $2f, $34, $37, $3b, $37, $88, $39, $83, $7f, $2f, $34, $37
    db $3b, $37, $88, $39, $83, $7f, $2f, $34, $37, $3b, $37, $8a, $39, $84, $7f, $83
    db $39, $37, $34, $37, $8a, $39, $84, $7f, $83, $39, $37, $34, $84, $37, $7f, $83
    db $3a, $39, $82, $37, $83, $34, $32, $cf, $cf, $ff
; Stream indexed by AudioCueC1_02 for the base wave slot; shared references retain this address.
AudioC1_02_BaseWaveSeq:
Seq4e0b:
    db $e2, $02, $03, $ca, $83, $ca, $83, $83
jr_004_4e13:
    db $28, $7f, $81, $7f, $c2, $83, $83, $34, $81, $7f, $83, $34, $33, $7f, $81, $7f
    db $83, $32, $81, $7f, $83, $32, $31, $7f, $81, $7f, $83, $30, $81, $7f, $83, $30
    db $2d, $7f, $81, $7f, $d1, $83, $83, $2a, $81, $7f, $83, $2a, $2f, $7f, $81, $7f
    db $d2, $83, $83, $2a, $82, $7f, $83, $2f, $82, $7f, $83, $28, $7f, $81, $7f, $cf
    db $83, $2d, $81, $7f, $83, $2d, $32, $7f, $81, $7f, $83, $2b, $81, $7f
jr_004_4e61:
    db $83, $2b, $28, $7f, $81, $7f, $83, $2d, $81, $7f, $83, $2d, $32, $7f, $81, $7f
    db $83, $2a, $81, $7f, $83, $2a, $2f, $7f, $81
jr_004_4e7a:
    db $7f, $83, $34, $81, $7f, $83, $34, $33, $7f, $81, $7f, $83, $32, $81, $7f, $83
    db $32, $31, $7f, $81, $7f, $83, $30, $81, $7f, $83
jr_004_4e94:
    db $30, $2d, $7f, $81, $7f, $83, $2a, $82, $7f, $83, $2f, $82, $7f, $cf, $cf, $90
    db $7f, $91, $7f, $ff
; Stream indexed by AudioCueC1_02 for the base noise slot; shared references retain this address.
AudioC1_02_BaseNoiseSeq:
Seq4ea8:
    db $03, $ca, $83, $ca, $83, $c4, $83, $83, $35, $34, $82, $34, $83, $34, $34, $34
    db $34, $82, $34, $83, $34, $34, $35, $34, $82, $34, $83
jr_004_4ec3:
    db $34, $34, $34, $34, $82, $34, $83, $34, $34, $35, $34, $82
jr_004_4ecf:
    db $34, $83, $34, $34, $34, $34, $82, $34, $83, $34, $34, $35, $34, $82, $34, $83
    db $34, $34, $34, $34, $82
jr_004_4ee4:
    db $34, $83, $34, $34, $cf, $cf, $cf, $90, $7f, $91, $7f, $ff
; Pulse/wave instrument base for AudioCueC1_02; referenced by its encoded instrument commands.
AudioC1_02_PulseWaveInsts:
Inst4ef0:
    db $40, $03, $7f, $04, $00, $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_02.
AudioC1_02_NoiseInsts:
Inst4ef6:
    db $00, $92, $20, $80, $34, $81, $40, $c0
; Audio record first indexed by Case I request $03; type 1, fourteen bytes.
AudioCueC1_03:
Audio4efe:
    db $01, $11
    dw AudioC1_03_BaseP2Seq
    dw AudioC1_03_BaseP1Seq
    dw AudioC1_03_BaseWaveSeq
    dw AudioC1_03_BaseNoiseSeq
    dw AudioC1_03_PulseWaveInsts
    dw AudioC1_03_NoiseInsts
; Stream indexed by AudioCueC1_03 for the base pulse 2 slot; shared references retain this address.
AudioC1_03_BaseP2Seq:
Seq4f0c:
    db $e0, $00, $03, $88, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $ca, $84, $ca, $84
    db $84, $37, $32, $83, $31, $7e, $81, $31, $88, $7f, $84, $37, $31, $83, $2f, $7e
    db $81, $2f, $88, $7f, $84, $37, $32, $83, $31, $7e, $81, $31, $88, $7f, $84, $37
    db $31, $83, $2f, $7e, $81, $2f, $88, $7f, $84, $3c, $37, $83, $36, $7e, $81, $36
    db $88, $7f, $84, $3c, $36, $83, $34, $7e, $81, $34, $88, $7f, $84, $37, $32, $83
    db $31, $7e, $81, $31, $88, $7f, $84, $37, $31, $83, $2f, $7e, $81, $2f, $88, $7f
    db $84, $3e, $37, $83, $36, $7e, $81, $36, $88, $7f, $84, $3c, $36, $83, $34, $7e
    db $81, $34, $88, $7f, $84, $37, $32, $83, $31, $7e, $81, $31, $88, $7f, $84, $37
    db $31, $83, $2f, $7e, $81, $2f, $88, $7f, $cf, $cf, $8a, $7f, $ff
; Stream indexed by AudioCueC1_03 for the base pulse 1 slot; shared references retain this address.
AudioC1_03_BaseP1Seq:
Seq4f99:
    db $e1, $01, $03, $8a, $7f, $88, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $ca, $84
    db $ca, $84, $84, $37, $32, $83, $31, $7e, $81, $31, $88, $7f, $84, $37, $31, $83
    db $2f, $7e, $81, $2f, $88, $7f, $84, $37, $32, $83, $31, $7e, $81, $31, $88, $7f
    db $84, $37, $31, $83, $2f, $7e, $81, $2f, $88, $7f, $84, $3c, $37, $83, $36, $7e
    db $81, $36, $88, $7f, $84, $3c, $36, $83, $34, $7e, $81, $34, $88, $7f, $84, $37
    db $32, $83, $31, $7e, $81, $31, $88, $7f, $84, $37, $31, $83, $2f, $7e, $81, $2f
    db $88, $7f, $84, $3e, $37, $83, $36, $7e, $81, $36, $88, $7f, $84, $3c, $36, $83
    db $34, $7e, $81, $34, $88, $7f, $84, $37, $32, $83, $31, $7e, $81, $31, $88, $7f
    db $84, $37, $31, $83, $2f, $7e, $81, $2f, $88, $7f, $cf, $cf, $ff
; Stream indexed by AudioCueC1_03 for the base wave slot; shared references retain this address.
AudioC1_03_BaseWaveSeq:
Seq5026:
    db $e2, $02, $03, $83, $28, $7f, $7f, $28, $7f, $26, $28, $7f, $7f, $7f, $26, $27
    db $28, $7f, $7f, $28, $7f, $26, $28, $7f, $7f, $23, $26, $27, $28, $7f, $7f, $28
    db $7f, $26, $28, $7f, $7f, $7f, $26, $27, $28, $7f, $7f, $28, $7f, $26, $28, $7f
    db $7f, $23, $26, $27, $ca, $83, $ca, $83, $83, $28, $7f, $7f, $28, $7f, $26, $28
    db $7f, $7f, $7f, $26, $27, $28, $7f, $7f, $28, $7f, $26, $28, $7f, $7f, $23, $26
    db $27, $28, $7f, $7f, $28, $7f, $26, $28, $7f, $7f, $7f, $26, $27, $28, $7f, $7f
    db $28, $7f, $26, $28, $7f, $7f, $28, $2b, $2c, $2d, $7f, $7f, $2d, $7f, $2b, $2d
    db $7f, $7f, $7f, $2b, $2c, $2d, $7f, $7f, $2d, $7f, $2b, $2d, $7f, $7f, $23, $26
    db $27, $28, $7f, $7f, $28, $7f, $26, $28
jr_004_50ae:
    db $7f, $7f, $7f, $26, $27, $28, $7f, $7f
jr_004_50b6:
    db $28, $7f, $26, $28
jr_004_50ba:
    db $7f, $7f, $2b, $2d, $2e, $2f, $7f, $7f, $2f
jr_004_50c3:
    db $7f, $2d, $2f
jr_004_50c6:
    db $7f, $7f, $7f, $2b, $2c, $2d, $7f, $7f, $2d
jr_004_50cf:
    db $7f, $2b, $2d
jr_004_50d2:
    db $7f, $7f, $23, $26, $27, $28, $7f, $7f, $28, $7f, $26, $28, $7f, $7f
jr_004_50e0:
    db $7f
jr_004_50e1:
    db $26, $27
jr_004_50e3:
    db $28, $7f, $7f, $28, $7f, $26, $28, $7f, $7f
jr_004_50ec:
    db $23, $26, $27
jr_004_50ef:
    db $cf, $cf, $8a, $7f, $ff
; Stream indexed by AudioCueC1_03 for the base noise slot; shared references retain this address.
AudioC1_03_BaseNoiseSeq:
Seq50f4:
    db $03, $c4, $83, $83
jr_004_50f8:
    db $34, $82, $36, $7f, $83, $35, $34, $82, $36, $7f, $83, $35
jr_004_5104:
    db $cf, $ca, $83, $ca, $83, $c6, $83, $83, $34, $82, $36, $7f, $83, $35, $34, $82
    db $36, $7f, $83, $35, $34, $82, $36, $7f, $83, $35, $34, $82, $36, $7f, $83, $35
    db $cf, $cf, $cf, $8a
jr_004_5128:
    db $7f, $ff
; Pulse/wave instrument base for AudioCueC1_03; referenced by its encoded instrument commands.
AudioC1_03_PulseWaveInsts:
Inst512a:
    db $40
jr_004_512b:
    db $00, $80, $05, $00, $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_03.
AudioC1_03_NoiseInsts:
Inst5130:
    db $38, $a0, $00, $c0
jr_004_5134:
    db $20, $80, $10
jr_004_5137:
    db $c0, $00, $60, $10, $80
; Audio record first indexed by Case I request $04; type 1, fourteen bytes.
AudioCueC1_04:
Audio513c:
    db $01, $0d
    dw AudioC1_04_BaseP2Seq
    dw AudioC1_04_BaseP1Seq
    dw AudioC1_04_BaseWaveSeq
    dw AudioC1_04_BaseNoiseSeq
    dw AudioC1_04_PulseWaveInsts
    dw AudioCueC1_05
; Stream indexed by AudioCueC1_04 for the base pulse 2 slot; shared references retain this address.
AudioC1_04_BaseP2Seq:
Seq514a:
    db $e0, $00, $03, $ca, $84, $ca, $84, $84, $3d, $38, $34, $38, $31, $2c
jr_004_5158:
    db $28, $2c, $25
jr_004_515b:
    db $20, $1c, $20, $82, $25, $84, $3d, $39, $34
jr_004_5164:
    db $39, $31, $2d, $28, $2d, $25, $21, $1c, $21, $82, $21, $84, $3c, $38, $33, $38
    db $30, $2c, $27, $2c, $24
jr_004_5179:
    db $20, $27, $24, $82, $24, $84, $3d, $38, $34, $38, $31, $2c, $28, $2c, $25
jr_004_5188:
    db $20, $1c, $20, $83, $25, $84, $7f, $e0, $01, $2c, $31, $2c, $33, $2c, $34, $2c
jr_004_5198:
    db $36, $2c, $34, $2c, $33, $2c, $31, $2c, $30, $2c
jr_004_51a2:
    db $31, $2c, $2f
jr_004_51a5:
    db $2c
jr_004_51a6:
    db $81, $2d, $8a, $7f
jr_004_51aa:
    db $84, $34, $39, $34
jr_004_51ae:
    db $3b, $34, $3d, $34, $3b
jr_004_51b3:
    db $34, $39
jr_004_51b5:
    db $34
jr_004_51b6:
    db $38, $34, $36, $2f, $36, $2f, $88, $3b, $82, $7f, $84, $24
jr_004_51c2:
    db $27, $2a, $2c, $30, $2a, $2c, $30, $33
jr_004_51ca:
    db $2c, $30, $33, $36, $38
jr_004_51cf:
    db $3c, $3f, $e0, $02, $81, $36, $82, $34, $33, $88, $34, $82, $7f, $cf, $cf, $ff
; Stream indexed by AudioCueC1_04 for the base pulse 1 slot; shared references retain this address.
AudioC1_04_BaseP1Seq:
Seq51df:
    db $e1, $03, $03
jr_004_51e2:
    db $ca, $84, $ca, $84, $84, $38, $34, $31, $34, $2c
jr_004_51ec:
    db $28, $25, $28, $28, $25
jr_004_51f1:
    db $20, $25, $82, $28, $84, $39, $34, $31, $34, $2d, $28, $25
jr_004_51fd:
    db $28, $28, $25
jr_004_5200:
    db $21, $25, $82, $28, $84, $38, $33, $30, $33, $2c, $27, $24, $27, $27, $24, $2c
    db $27, $82, $20, $84, $38, $34, $31, $34, $2c, $28, $25, $28, $20
jr_004_521d:
    db $1c, $19, $1c, $82, $20, $8b, $28, $85, $7f, $8b
jr_004_5227:
    db $2a, $85, $7f, $8b, $2c, $85, $7f, $8b, $2d, $85, $7f, $8b, $2c, $85, $7f, $8b
    db $2a, $85, $7f
jr_004_523a:
    db $8b, $28, $85
jr_004_523d:
    db $7f, $8b, $27
jr_004_5240:
    db $85, $7f, $8b, $28, $85, $7f, $8b, $29, $85, $7f
jr_004_524a:
    db $81, $28, $82, $7f, $8b, $31, $85, $7f, $8b, $34, $85, $7f, $8b, $39, $85, $7f
    db $8b, $38, $85, $7f, $8b, $36, $85, $7f, $8b, $34, $85, $7f, $8b, $33, $85, $7f
    db $8b, $31, $85, $7f, $88, $33, $82, $7f, $84, $20, $24, $27, $2a, $2c, $27, $2a
    db $2c, $30, $2a, $2c, $30, $33, $36, $38, $3c, $e1, $04, $80, $3d, $7e, $3d, $cf
    db $cf, $ff
; Stream indexed by AudioCueC1_04 for the base wave slot; shared references retain this address.
AudioC1_04_BaseWaveSeq:
Seq528c:
    db $e2, $05, $03, $ca, $8a, $ca, $8a, $80, $7f, $7f, $7f, $7f, $7f
jr_004_5299:
    db $82, $7f, $8a, $21, $84, $7f, $81, $7f, $8a, $25, $84, $7f, $88, $7f
jr_004_52a7:
    db $8a, $27, $84, $7f, $88, $7f, $8a, $24, $84, $7f, $88, $7f
jr_004_52b3:
    db $8a, $25, $84, $7f, $e2, $06, $82, $45, $44, $42, $88, $44, $82, $7f, $cf, $cf
    db $ff
; Stream indexed by AudioCueC1_04 for the base noise slot; shared references retain this address.
AudioC1_04_BaseNoiseSeq:
Seq52c4:
    db $ff
; Pulse/wave instrument base for AudioCueC1_04; referenced by its encoded instrument commands.
AudioC1_04_PulseWaveInsts:
Inst52c5:
    db $40, $07, $00, $07, $00, $08, $00, $06, $80, $09, $00, $00, $00, $01
; Audio record first indexed by Case I request $05; type 3, fourteen bytes.
AudioCueC1_05:
Audio52d3:
    db $03, $18
    ; Type 3 loader skips stream word 0.
    dw Seq52e1
    dw AudioC1_05_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq5307
    dw AudioC1_05_TopNoiseSeq
    dw AudioC1_05_PulseWaveInsts
    dw AudioCueC1_06

; Type-3 headers skip stream field 0; no current header loads this stream.
Seq52e1:
    ; Load instrument pair $00.
    db $e0, $00
    ; Set stereo bits to $03.
    db $03
    ; Select duration table index $03.
    db $83
    db $32, $31, $32, $31, $32, $31, $32, $31, $32, $31, $32, $31
    ; Select duration table index $08.
    db $88
    db $32
    ; End stream.
    db $ff
; Stream indexed by AudioCueC1_05 for the top pulse 1 slot; shared references retain this address.
AudioC1_05_TopP1Seq:
Seq52f4:
    db $e1, $00, $03, $83, $30, $2f, $30, $2f, $30, $2f, $30, $2f, $30, $2f, $30, $2f
    db $88, $30, $ff
Seq5307:
    db $ff
; Stream indexed by AudioCueC1_05 for the top noise slot; shared references retain this address.
AudioC1_05_TopNoiseSeq:
Seq5308:
    db $ff
; Pulse/wave instrument base for AudioCueC1_05; referenced by its encoded instrument commands.
AudioC1_05_PulseWaveInsts:
Inst5309:
    db $40, $00
; Audio record first indexed by Case I request $06; type 3, fourteen bytes.
AudioCueC1_06:
Audio530b:
    db $03, $16
    ; Type 3 loader skips stream word 0.
    dw Seq5319
    dw AudioC1_06_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq534d
    dw AudioC1_06_TopNoiseSeq
    dw AudioC1_06_PulseWaveInsts
    dw AudioCueC1_07

; Type-3 headers skip stream field 0; no current header loads this stream.
Seq5319:
    ; Load instrument pair $00.
    db $e0, $00
    ; Set stereo bits to $03.
    db $03
    ; Select duration table index $03.
    db $83
    db $3a, $30, $40, $36, $32, $3e, $2a, $33, $3a, $30, $40, $36, $32, $3e, $2a, $33
jr_004_532d:
    ; Select duration table index $00.
    db $80
    db $3e
    ; End stream.
    db $ff
; Stream indexed by AudioCueC1_06 for the top pulse 1 slot; shared references retain this address.
AudioC1_06_TopP1Seq:
Seq5330:
    db $e1
jr_004_5331:
    db $00, $03
jr_004_5333:
    db $84, $7f, $83, $2c, $36, $2f, $28, $36, $2f, $2a, $84, $33, $7f, $83, $2c, $36
    db $2f, $28, $36, $2f, $2a, $84, $33, $80, $3d, $ff
Seq534d:
    db $ff
; Stream indexed by AudioCueC1_06 for the top noise slot; shared references retain this address.
AudioC1_06_TopNoiseSeq:
Seq534e:
    db $ff
; Pulse/wave instrument base for AudioCueC1_06; referenced by its encoded instrument commands.
AudioC1_06_PulseWaveInsts:
Inst534f:
    db $00, $00
; Audio record first indexed by Case I request $07; type 3, fourteen bytes.
AudioCueC1_07:
Audio5351:
    db $03, $12
    ; Type 3 loader skips stream word 0.
    dw Seq535f
    dw AudioC1_07_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq5389
    dw AudioC1_07_TopNoiseSeq
    dw AudioC1_07_PulseWaveInsts
    dw AudioCueC1_08

; Type-3 headers skip stream field 0; no current header loads this stream.
Seq535f:
    ; Load instrument pair $00.
    db $e0, $00
    ; Set stereo bits to $03.
    db $03
    ; Select duration table index $03.
    db $83
    db $4c
jr_004_5364:
    db $4a, $48, $46, $44
jr_004_5368:
    db $42, $40, $3e, $3c, $3a, $38, $36, $34
    ; Rest event.
    db $7f
jr_004_5371:
    ; Select duration table index $02.
    db $82
    ; Rest event.
    db $7f
    ; End stream.
    db $ff
; Stream indexed by AudioCueC1_07 for the top pulse 1 slot; shared references retain this address.
AudioC1_07_TopP1Seq:
Seq5374:
    db $e1, $00, $03, $83, $1c, $1e, $20, $22
jr_004_537c:
    db $24, $26, $28, $2a, $2c, $2e, $30, $32, $34, $7f, $82, $7f, $ff
Seq5389:
    db $ff
; Stream indexed by AudioCueC1_07 for the top noise slot; shared references retain this address.
AudioC1_07_TopNoiseSeq:
Seq538a:
    db $ff
; Pulse/wave instrument base for AudioCueC1_07; referenced by its encoded instrument commands.
AudioC1_07_PulseWaveInsts:
Inst538b:
    db $c0, $00
; Audio record first indexed by Case I request $08; type 3, fourteen bytes.
AudioCueC1_08:
Audio538d:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq539b
    dw AudioC1_08_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq539f
    dw AudioC1_08_TopNoiseSeq
    dw Inst53a1
    dw AudioCueC1_09
Seq539b:
    db $ff
; Stream indexed by AudioCueC1_08 for the top pulse 1 slot; shared references retain this address.
AudioC1_08_TopP1Seq:
Seq539c:
    db $84, $7f, $ff
Seq539f:
    db $ff
; Stream indexed by AudioCueC1_08 for the top noise slot; shared references retain this address.
AudioC1_08_TopNoiseSeq:
Seq53a0:
    db $ff

; No instrument command in the current loaded streams reads this pair.
Inst53a1:
    db $00, $00
; Audio record first indexed by Case I request $09; type 3, fourteen bytes.
AudioCueC1_09:
Audio53a3:
    db $03, $10
jr_004_53a5:
    ; Type 3 loader skips stream word 0.
    dw Seq53b1
    dw AudioC1_09_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq53ce
    dw AudioC1_09_TopNoiseSeq
    dw AudioC1_09_PulseWaveInsts
    dw AudioCueC1_0A

; Type-3 headers skip stream field 0; no current header loads this stream.
Seq53b1:
    ; Load instrument pair $00.
    db $e0, $00
    ; Set stereo bits to $03.
    db $03
    ; Start loop with limit $02.
    db $c2
    ; Select duration table index $02.
    db $82
    ; Select duration table index $02.
    db $82
    db $38, $31, $2c, $2c, $33
    ; End loop.
    db $cf
    ; End stream.
    db $ff
; Stream indexed by AudioCueC1_09 for the top pulse 1 slot; shared references retain this address.
AudioC1_09_TopP1Seq:
Seq53be:
    db $e1, $00, $03, $c2, $82, $83, $7f, $82, $2c, $33, $38, $31, $83, $2c, $cf, $ff
Seq53ce:
    db $ff
; Stream indexed by AudioCueC1_09 for the top noise slot; shared references retain this address.
AudioC1_09_TopNoiseSeq:
Seq53cf:
    db $ff
; Pulse/wave instrument base for AudioCueC1_09; referenced by its encoded instrument commands.
AudioC1_09_PulseWaveInsts:
Inst53d0:
    db $c0, $03
; Audio record first indexed by Case I request $0a; type 3, fourteen bytes.
AudioCueC1_0A:
Audio53d2:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq53e0
    dw AudioC1_0A_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq53fb
    dw AudioC1_0A_TopNoiseSeq
    dw AudioC1_0A_PulseWaveInsts
    dw AudioCueC1_0B

; Type-3 headers skip stream field 0; no current header loads this stream.
Seq53e0:
    ; Load instrument pair $00.
    db $e0, $00
    ; Set stereo bits to $03.
    db $03
    ; Start loop with limit $02.
    db $c2
    ; Select duration table index $02.
    db $82
    ; Select duration table index $02.
    db $82
    db $2e, $2e, $30, $30
jr_004_53ea:
    ; End loop.
    db $cf
    ; End stream.
    db $ff
; Stream indexed by AudioCueC1_0A for the top pulse 1 slot; shared references retain this address.
AudioC1_0A_TopP1Seq:
Seq53ec:
    db $e1, $00, $03, $c2, $82, $83, $7f, $82, $2d, $2d, $2f, $83, $2f, $cf, $ff

; Type-3 headers skip stream field 2; no current header loads this stream.
jr_004_53fb:
Seq53fb:
    ; Load wave instrument $00.
    db $e2, $00
    ; Set stereo bits to $03.
    db $03
    ; Start loop with limit $02.
    db $c2
    ; Select duration table index $00.
    db $80
    ; Select duration table index $00.
    db $80
    db $22
jr_004_5402:
    ; End loop.
    db $cf
    ; End stream.
    db $ff
; Stream indexed by AudioCueC1_0A for the top noise slot; shared references retain this address.
AudioC1_0A_TopNoiseSeq:
Seq5404:
    db $ff
; Pulse/wave instrument base for AudioCueC1_0A; referenced by its encoded instrument commands.
AudioC1_0A_PulseWaveInsts:
Inst5405:
    db $00, $00
; Audio record first indexed by Case I request $0b; type 1, fourteen bytes.
AudioCueC1_0B:
Audio5407:
    db $01, $12
    dw AudioC1_0B_BaseP2Seq
    dw AudioC1_0B_BaseP1Seq
    dw AudioC1_0B_BaseWaveSeq
    dw AudioC1_0B_BaseNoiseSeq
    dw AudioC1_0B_PulseWaveInsts
    dw AudioCueC1_0C
; Stream indexed by AudioCueC1_0B for the base pulse 2 slot; shared references retain this address.
AudioC1_0B_BaseP2Seq:
Seq5415:
    db $e0, $00, $03, $c2, $82, $83, $7f, $82, $37, $37, $37, $83, $37, $cf, $ff
; Stream indexed by AudioCueC1_0B for the base pulse 1 slot; shared references retain this address.
AudioC1_0B_BaseP1Seq:
Seq5424:
    db $e1
jr_004_5425:
    db $00, $03, $c2, $82, $82, $30, $3e, $30, $3e, $cf, $ff
; Stream indexed by AudioCueC1_0B for the base wave slot; shared references retain this address.
AudioC1_0B_BaseWaveSeq:
Seq5430:
    db $e2, $00, $03, $c2, $80, $80, $26, $cf, $ff
; Stream indexed by AudioCueC1_0B for the base noise slot; shared references retain this address.
AudioC1_0B_BaseNoiseSeq:
Seq5439:
    db $ff
; Pulse/wave instrument base for AudioCueC1_0B; referenced by its encoded instrument commands.
AudioC1_0B_PulseWaveInsts:
Inst543a:
    db $00, $03
; Audio record first indexed by Case I request $0c; type 1, fourteen bytes.
AudioCueC1_0C:
Audio543c:
    db $01, $0e
    dw AudioC1_0C_BaseP2Seq
    dw AudioC1_0C_BaseP1Seq
    dw AudioC1_0C_BaseWaveSeq
    dw AudioC1_0C_BaseNoiseSeq
    dw AudioC1_0C_PulseWaveInsts
jr_004_5448:
    dw AudioC1_0C_NoiseInsts
; Stream indexed by AudioCueC1_0C for the base pulse 2 slot; shared references retain this address.
AudioC1_0C_BaseP2Seq:
Seq544a:
    db $e0, $00, $03, $80, $7f, $88, $7f, $90, $7f, $7f, $2c, $ca, $83, $ca, $83, $90
    db $31, $7e, $31, $2c, $33, $7e, $33, $2c, $34
jr_004_5463:
    db $7e, $34, $2c, $36, $7e, $36, $2c
jr_004_546a:
    db $85, $37
jr_004_546c:
    db $8a, $38, $7e, $85, $38, $90, $34, $7e, $34, $31, $7e, $82, $31, $90, $7f, $7f
    db $2f, $31, $7e, $31, $2f, $33, $7e, $33, $2f, $34, $7e, $34, $2f, $36, $7e, $36
    db $2f, $85, $37, $8a, $38, $7e, $85, $38, $90, $34, $7e, $34, $31, $7e, $82, $31
    db $7f, $90, $7f, $7f, $2f, $35, $7e, $35, $38, $83, $35, $36, $3a, $3d, $41, $44
    db $42, $41
jr_004_54ae:
    db $90, $7f, $7f, $3d, $7f
jr_004_54b3:
    db $7f, $39, $82, $38, $90, $39, $7e, $39, $38, $7e, $89, $38, $83, $7f, $88, $7f
    db $85, $37, $36, $8a, $34, $90, $36, $7e, $36, $31, $34, $7e, $34, $36, $7e, $89
    db $36, $83, $7f, $88, $7f, $85, $37, $36, $8a, $34, $90, $36, $7e, $36, $31, $34
    db $7e, $34, $36, $37, $7e, $37, $36, $34, $7e, $34
jr_004_54ed:
    db $31, $7e, $89, $31, $7f, $90, $7f, $7f, $91, $3c, $3d, $90, $7f, $7f, $3a, $7f
    db $7f, $36, $82, $34, $90, $35, $7e, $35, $33, $7e, $82, $33, $7f, $90, $7f, $7f
    db $91, $3c, $3d
jr_004_5510:
    db $90, $7f, $7f, $91, $3f, $40, $90, $7f, $7f, $91, $3c, $3d, $90, $7f, $7f, $39
    db $82, $38, $90, $39, $7e, $39, $38, $7e, $89, $38, $83, $7f, $81, $7f, $82, $3d
    db $85, $3f, $8a, $40, $7e, $85, $40, $7e, $89, $40, $83
jr_004_553b:
    db $7f, $81, $7f, $90, $7f, $7f, $91, $3f, $3d, $90, $3b, $7e
jr_004_5547:
    db $3b, $38, $3d, $7e, $3d, $3b, $38, $7e, $38, $34, $3a, $7e, $3a, $38, $34, $7e
    db $34, $31, $82, $2f, $90, $31, $7e, $31, $2e, $7e, $82, $2e, $7f, $83, $38, $35
    db $90, $7f, $36, $3a, $83, $3d, $41, $44, $42, $41, $44, $42, $41
jr_004_5574:
    db $3d, $3a, $38, $39, $82, $3b, $90, $3d, $7e, $3d, $3b, $82, $7f, $90, $7f, $7f
    db $3d
jr_004_5585:
    db $82, $3e, $90, $3f, $7e
jr_004_558a:
    db $3f, $3e, $82, $7f, $90, $7f, $7f, $3f, $40, $7e, $40, $3d, $40, $7e, $40, $3d
    db $7e, $81
jr_004_559c:
    db $3d, $7f, $90, $7f, $7f, $40, $3d, $7e, $3d, $40
jr_004_55a6:
    db $82, $3d, $90, $3b, $7e, $3b, $3d, $82, $3b, $90, $38, $7e, $38, $3b, $82, $38
    db $90, $36, $7e, $36, $38, $85, $33, $8a, $34, $7e
jr_004_55c0:
    db $85, $34, $82, $7f, $3d, $90, $3a, $7e, $3a, $3d, $82, $3a, $90
jr_004_55cd:
    db $36, $7e, $36, $3a, $82, $36, $90, $33, $7e, $33, $36, $85, $32, $8a, $33, $7e
    db $85, $33, $82, $7f, $90, $3b
jr_004_55e3:
    db $7e, $3b, $39, $3b
jr_004_55e7:
    db $7e, $3b, $39, $7f, $7f, $34, $7e, $34
jr_004_55ef:
    db $7f, $30, $82, $2f, $90, $30, $7e, $30, $2f, $7e, $83, $2f, $91, $30, $2f, $2d
    db $82, $2c
jr_004_5601:
    db $cf, $cf, $8b, $7f, $ff
jr_004_5606:
; Stream indexed by AudioCueC1_0C for the base pulse 1 slot; shared references retain this address.
AudioC1_0C_BaseP1Seq:
Seq5606:
    db $e1, $01, $03, $8b, $7f, $80, $7f, $88, $7f, $90, $7f, $7f, $2c, $ca, $83, $ca
    db $83, $90, $31, $7e, $31, $2c, $33, $7e, $33, $2c, $34, $7e, $34, $2c, $36, $7e
    db $36, $2c, $85, $37, $8a, $38, $7e
jr_004_562d:
    db $85, $38, $90
jr_004_5630:
    db $34, $7e, $34, $31, $7e, $82, $31, $90, $7f, $7f, $2f, $31, $7e, $31, $2f, $33
    db $7e, $33, $2f, $34, $7e, $34, $2f, $36, $7e, $36, $2f, $85, $37, $8a, $38, $7e
    db $85, $38, $90, $34, $7e, $34, $31, $7e, $82, $31, $7f, $90, $7f, $7f, $2f, $35
    db $7e, $35, $38, $83, $35, $36, $3a, $3d, $41, $44, $42, $41
jr_004_566c:
    db $90, $7f, $7f, $3d, $7f
jr_004_5671:
    db $7f, $39, $82
jr_004_5674:
    db $38, $90, $39, $7e, $39, $38, $7e, $89, $38, $83, $7f, $88, $7f, $85, $37, $36
    db $8a, $34, $90, $36, $7e, $36, $31, $34, $7e, $34, $36, $7e, $89, $36, $83, $7f
    db $88, $7f, $85, $37, $36, $8a, $34, $90, $36, $7e, $36, $31, $34, $7e, $34, $36
    db $37, $7e, $37, $36, $34, $7e, $34
jr_004_56ab:
    db $31, $7e, $89, $31, $7f, $90, $7f, $7f, $91, $3c, $3d, $90, $7f, $7f, $3a, $7f
    db $7f, $36, $82, $34, $90, $35, $7e, $35, $33, $7e, $82, $33, $7f, $90, $7f, $7f
    db $91, $3c, $3d
jr_004_56ce:
    db $90, $7f, $7f, $91, $3f, $40, $90, $7f, $7f, $91, $3c, $3d, $90, $7f, $7f, $39
    db $82, $38, $90, $39, $7e, $39, $38, $7e, $89, $38, $83, $7f, $81, $7f, $82, $3d
    db $85, $3f, $8a, $40, $7e, $85, $40, $7e, $89, $40, $83
jr_004_56f9:
    db $7f, $81, $7f, $90, $7f, $7f, $91, $3f, $3d, $90, $3b, $7e
jr_004_5705:
    db $3b, $38, $3d, $7e, $3d, $3b, $38, $7e, $38, $34, $3a, $7e, $3a, $38, $34, $7e
    db $34, $31, $82, $2f, $90, $31, $7e, $31, $2e, $7e, $82, $2e, $7f, $83, $38, $35
    db $90, $7f, $36, $3a, $83, $3d, $41, $44, $42, $41, $44, $42, $41
jr_004_5732:
    db $3d, $3a, $38, $39, $82, $3b, $90, $3d, $7e, $3d, $3b, $82, $7f, $90, $7f, $7f
    db $3d
jr_004_5743:
    db $82, $3e, $90, $3f, $7e
jr_004_5748:
    db $3f, $3e, $82, $7f, $90, $7f, $7f, $3f, $40, $7e, $40, $3d, $40, $7e, $40, $3d
    db $7e, $81
jr_004_575a:
    db $3d, $7f, $90, $7f, $7f, $40, $3d, $7e, $3d, $40
jr_004_5764:
    db $82, $3d, $90, $3b, $7e, $3b, $3d, $82, $3b, $90, $38, $7e, $38, $3b, $82, $38
    db $90, $36, $7e, $36, $38, $85, $33
jr_004_577b:
    db $8a, $34, $7e, $85, $34, $82, $7f, $3d, $90, $3a, $7e, $3a, $3d, $82, $3a, $90
jr_004_578b:
    db $36, $7e, $36, $3a, $82, $36, $90, $33, $7e, $33, $36, $85, $32, $8a, $33, $7e
    db $85, $33, $82, $7f, $90, $3b, $7e, $3b, $39, $3b, $7e, $3b, $39, $7f, $7f, $34
    db $7e, $34
jr_004_57ad:
    db $7f, $30, $82, $2f, $90, $30, $7e, $30, $2f, $7e, $83, $2f, $91, $30, $2f, $2d
    db $82, $2c, $cf, $cf, $ff
; Stream indexed by AudioCueC1_0C for the base wave slot; shared references retain this address.
AudioC1_0C_BaseWaveSeq:
Seq57c2:
    db $e2, $02, $03, $80, $7f, $7f, $ca, $8a, $ca, $8a, $8a, $25, $84, $7f, $88, $7f
    db $80, $7f, $8a, $2a, $84, $7f, $88, $7f, $80, $7f, $8a, $27, $84, $7f, $88, $7f
    db $80, $7f, $8a
jr_004_57e5:
    db $2c, $84, $7f, $88, $7f, $80
jr_004_57eb:
    db $7f, $8a, $25
jr_004_57ee:
    db $84, $7f, $88, $7f, $80, $7f, $8a, $28, $84, $7f, $88, $7f, $80, $7f, $8a, $27
    db $84, $7f, $88, $7f, $80, $7f, $8a, $2c, $84, $7f, $88, $7f, $80, $7f, $8a, $25
    db $84, $7f, $88, $7f, $80, $7f, $8a, $2a, $84, $7f, $88, $7f, $80, $7f, $8a, $27
    db $84, $7f, $88, $7f, $80, $7f, $8a, $2c, $84, $7f, $88
jr_004_5829:
    db $7f, $80, $7f, $8a, $25, $84, $7f, $88, $7f
jr_004_5832:
    db $80, $7f, $8a, $28, $84, $7f, $88, $7f, $80, $7f, $8a, $27, $84, $7f, $88, $7f
    db $80, $7f, $8a, $2c, $84, $7f, $88, $7f, $8a, $2c, $84, $7f, $82, $7f, $90, $7f
    db $7f, $2a, $7e, $2a, $7e, $2a, $28, $cf, $cf, $8b, $7f, $ff
; Stream indexed by AudioCueC1_0C for the base noise slot; shared references retain this address.
AudioC1_0C_BaseNoiseSeq:
Seq585e:
    db $03, $88, $36, $90, $35, $7f, $34, $81, $36, $90, $7f, $7f, $35, $34, $7f, $34
    db $ca, $82, $ca, $82, $c4, $82, $88, $36, $90, $35, $7f, $34, $81, $36, $90, $7f
    db $7f, $35
jr_004_5880:
    db $34, $7f, $34, $88
jr_004_5884:
    db $36, $90, $35, $7f, $34, $81, $36, $90, $7f, $7f, $35, $34, $7f, $34, $88, $36
    db $90, $35, $7f, $34, $81, $36, $90, $7f, $7f, $35, $34, $7f, $34, $88, $36, $90
    db $35, $7f, $34, $81, $36, $90, $7f, $7f, $35, $34, $7f, $34, $cf, $cf, $cf, $8b
    db $7f, $ff
; Pulse/wave instrument base for AudioCueC1_0C; referenced by its encoded instrument commands.
AudioC1_0C_PulseWaveInsts:
Inst58b6:
    db $80, $00, $80, $05, $00, $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_0C.
AudioC1_0C_NoiseInsts:
Inst58bc:
    db $33, $70, $20, $c0, $3c, $60, $20, $c0, $00, $a6, $10, $80
; Audio record first indexed by Case I request $0d; type 1, fourteen bytes.
AudioCueC1_0D:
Audio58c8:
    db $01, $0e
    dw AudioC1_0D_BaseP2Seq
    dw AudioC1_0D_BaseP1Seq
    dw AudioC1_0D_BaseWaveSeq
    dw AudioC1_0D_BaseNoiseSeq
    dw AudioC1_0D_PulseWaveInsts
    dw AudioC1_0D_NoiseInsts
; Stream indexed by AudioCueC1_0D for the base pulse 2 slot; shared references retain this address.
AudioC1_0D_BaseP2Seq:
Seq58d6:
    db $e0, $00, $03, $ca, $83, $ca, $83, $c3, $83, $83, $32, $32, $32, $32, $32, $32
    db $cf, $32, $32, $32, $32, $33, $34, $c3, $83, $83, $35, $35, $35, $35, $35, $35
    db $cf, $35, $35, $35, $35, $34
jr_004_58fc:
    db $33, $c3, $83, $83, $32, $32, $32, $32
jr_004_5904:
    db $32, $32, $cf, $32, $33, $34, $35, $36, $37, $c3, $83, $83, $38, $38, $38, $38
    db $38, $38, $cf, $38, $37, $36, $35, $34, $33, $cf, $cf, $84
jr_004_5920:
    db $7f, $ff
; Stream indexed by AudioCueC1_0D for the base pulse 1 slot; shared references retain this address.
AudioC1_0D_BaseP1Seq:
Seq5922:
    db $e1, $01, $03, $84, $7f, $ca, $83, $ca, $83, $c3, $83, $83, $2f, $2f, $2f, $2f
    db $2f, $2f, $cf, $2f, $2f, $2f, $2f, $30, $31, $c3, $83, $83, $32, $32, $32, $32
    db $32, $32, $cf, $32, $32, $32, $32, $31, $30, $c3
jr_004_594c:
    db $83, $83
jr_004_594e:
    db $2f, $2f
jr_004_5950:
    db $2f, $2f, $2f, $2f, $cf, $2f, $30, $31, $32, $33, $34, $c3, $83, $83, $35, $35
    db $35, $35, $35, $35, $cf, $35, $34, $33, $32, $31, $30, $cf
jr_004_596c:
    db $cf, $ff
; Stream indexed by AudioCueC1_0D for the base wave slot; shared references retain this address.
AudioC1_0D_BaseWaveSeq:
Seq596e:
    db $e2, $02, $03, $ca, $83, $ca, $83, $c3, $83, $83, $28, $82, $7f, $83, $28, $26
    db $27, $cf, $28, $82, $7f, $83, $28, $29, $2a, $c3, $83, $83, $2b, $82, $7f, $83
    db $2b, $29, $2a, $cf, $2b, $82, $7f, $83, $2b, $2a, $29, $c3, $83, $83, $28, $82
    db $7f, $83, $28, $26, $27, $cf
jr_004_59a4:
    db $28, $29, $2a, $2b, $2c, $2d, $c3, $83, $83, $2e, $82
jr_004_59af:
    db $7f, $83, $2e, $2c, $2d, $cf, $2e, $2d, $2c, $2b, $2a, $29, $cf, $cf, $84, $7f
    db $ff
; Stream indexed by AudioCueC1_0D for the base noise slot; shared references retain this address.
AudioC1_0D_BaseNoiseSeq:
Seq59c0:
    db $03, $ca, $82, $ca, $82, $c3, $82, $82
jr_004_59c8:
    db $34, $35, $36, $34, $35, $36, $cf
jr_004_59cf:
    db $34, $35, $36, $34, $36, $36, $c3, $82, $82
jr_004_59d8:
    db $34, $35, $36, $34, $35, $36, $cf, $34, $35, $36, $34, $36, $36, $c3, $82, $82
    db $34, $35, $36, $34, $35, $36, $cf, $34, $35, $36, $34, $36, $36, $c3, $82, $82
    db $34, $35, $36, $34, $35, $36, $cf, $34, $35, $36, $34, $36, $36, $cf, $cf, $84
    db $7f, $ff
; Pulse/wave instrument base for AudioCueC1_0D; referenced by its encoded instrument commands.
AudioC1_0D_PulseWaveInsts:
Inst5a0a:
    db $40, $02, $80, $02, $00, $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_0D.
AudioC1_0D_NoiseInsts:
Inst5a10:
    db $2e, $70, $20, $c0, $38, $60, $20, $c0, $00, $a3, $10, $80
; Audio record first indexed by Case I request $0e; type 1, fourteen bytes.
AudioCueC1_0E:
Audio5a1c:
    db $01, $13
    dw AudioC1_0E_BaseP2Seq
    dw AudioC1_0E_BaseP1Seq
    dw AudioC1_0E_BaseWaveSeq
    dw AudioC1_0E_BaseNoiseSeq
    dw AudioC1_0E_PulseWaveInsts
    dw AudioC1_0E_NoiseInsts
; Stream indexed by AudioCueC1_0E for the base pulse 2 slot; shared references retain this address.
AudioC1_0E_BaseP2Seq:
Seq5a2a:
    db $e0, $00, $03, $ca, $83, $ca, $83, $82, $2a, $83, $2f, $82, $2e, $89, $2f, $82
    db $2a, $83, $2f, $82, $2e, $89, $2f, $82, $2c, $83, $2f, $82, $2e, $89, $2f, $82
    db $2c, $83, $2f, $2f, $2e, $2f, $7f, $2f
jr_004_5a52:
    db $82, $2a, $83, $2f, $82, $2e, $89, $2f, $82, $2a, $83, $2f, $82, $2e, $89, $2f
    db $82, $2c, $83, $2f, $82, $2e, $89, $2f, $82, $2c, $83, $2f, $2f, $2e, $2f, $7f
    db $2f, $82, $7f, $83
jr_004_5a76:
    db $2a, $2a, $2f, $82, $33, $83, $36, $7e, $82, $36, $83, $33, $33, $31, $82, $33
    db $83, $2f, $7e, $80, $2f, $7e, $82, $2f, $88, $7f, $82, $7f, $83, $2a, $2a, $2f
    db $82, $33, $83, $36, $7e, $82, $36, $83, $33, $33, $31, $82, $33, $83, $2f, $7e
    db $80, $2f, $7e, $82, $2f, $89, $7f, $83, $2f, $2e, $2f, $82, $31, $83, $33, $31
    db $31, $2e, $2a, $33, $7e, $81, $33, $83, $7f, $33, $31, $33, $82, $34, $83, $36
    db $82, $34, $83, $31, $2c, $38, $7e, $88, $38, $82, $7f, $7f, $83, $2a, $2a, $2f
    db $82, $33, $83, $36, $7e, $82, $36, $83, $33, $33, $31, $82, $33, $83, $2f, $7e
    db $80, $2f, $7e, $81, $2f, $7f, $82, $7f, $83, $2d, $2d, $32, $82, $36, $83, $39
    db $7e, $82, $39, $83, $36, $36, $34, $82, $36, $83, $32, $7e, $80, $32, $7e, $82
    db $32, $88, $7f, $82, $7f, $83, $2d, $2d, $32, $82, $36, $83, $39, $7e, $82, $39
    db $83, $36, $36, $34, $82, $36, $83, $32, $7e, $80, $32, $7e, $82, $32, $88, $7f
    db $cf, $cf, $83, $7f, $86, $7f, $ff
; Stream indexed by AudioCueC1_0E for the base pulse 1 slot; shared references retain this address.
AudioC1_0E_BaseP1Seq:
Seq5b2d:
    db $e1, $01, $03, $83, $7f, $86, $7f, $ca, $83, $ca, $83, $82, $2a, $83, $2f, $82
    db $2e, $89, $2f, $82, $2a, $83, $2f, $82, $2e, $89, $2f, $82, $2c, $83, $2f, $82
    db $2e, $89, $2f, $82, $2c, $83, $2f, $2f, $2e, $2f, $7f, $2f
jr_004_5b59:
    db $82, $2a, $83, $2f, $82, $2e, $89, $2f, $82, $2a, $83, $2f, $82, $2e, $89, $2f
    db $82, $2c, $83, $2f, $82, $2e, $89, $2f, $82, $2c, $83, $2f, $2f, $2e, $2f, $7f
    db $2f, $82, $7f, $83, $2a, $2a, $2f, $82, $33, $83, $36, $7e, $82, $36, $83, $33
    db $33, $31, $82, $33, $83, $2f, $7e, $80, $2f, $7e, $82, $2f, $88, $7f, $82, $7f
    db $83, $2a, $2a, $2f, $82, $33, $83, $36, $7e, $82, $36, $83, $33, $33, $31, $82
    db $33, $83, $2f, $7e, $80, $2f, $7e, $82, $2f, $89, $7f, $83, $2f, $2e, $2f, $82
    db $31, $83, $33, $31, $31, $2e, $2a, $33, $7e, $81, $33, $83, $7f, $33, $31, $33
    db $82
jr_004_5bca:
    db $34, $83, $36, $82, $34, $83, $31, $2c, $38, $7e, $88, $38, $82, $7f, $7f, $83
    db $2a, $2a, $2f, $82, $33, $83, $36, $7e
jr_004_5be2:
    db $82, $36, $83, $33, $33, $31, $82, $33, $83, $2f, $7e, $80, $2f, $7e, $81, $2f
    db $7f, $82, $7f, $83, $2d, $2d, $32, $82, $36, $83, $39, $7e, $82, $39, $83, $36
    db $36, $34, $82, $36, $83, $32, $7e, $80, $32, $7e, $82, $32, $88, $7f, $82, $7f
    db $83, $2d, $2d, $32, $82, $36, $83, $39, $7e, $82, $39, $83, $36, $36, $34, $82
    db $36, $83, $32, $7e, $80, $32, $7e, $82, $32, $88, $7f, $cf, $cf, $ff
; Stream indexed by AudioCueC1_0E for the base wave slot; shared references retain this address.
AudioC1_0E_BaseWaveSeq:
Seq5c30:
    db $e2, $02, $03, $ca, $80, $ca, $80, $8a, $23, $84, $7f, $88, $7f, $8a, $27, $84
    db $7f, $88, $7f, $8a, $28, $84, $7f, $88, $7f, $8a, $2a, $84, $7f, $88, $7f, $8a
    db $23, $84, $7f, $88, $7f, $8a, $27, $84, $7f, $88, $7f, $8a, $28, $84, $7f, $88
    db $7f, $8a, $2a, $84, $7f, $88, $7f, $80, $23, $27, $28, $2a, $23, $27, $28, $2a
    db $8a, $27, $7f, $83, $27, $82, $27, $7f, $8a, $2c, $7f, $83, $2c, $82, $2c, $7f
    db $8a, $25, $7f, $83, $25, $82, $25, $7f, $83, $2a, $2a, $7f, $2c, $7f, $2d, $7f
    db $2e, $80, $23, $27, $28, $2a
jr_004_5c96:
    db $26, $2a, $2b, $2d
jr_004_5c9a:
    db $26, $2a, $2b, $2d, $cf, $cf, $83, $7f
jr_004_5ca2:
    db $86, $7f, $ff
; Stream indexed by AudioCueC1_0E for the base noise slot; shared references retain this address.
AudioC1_0E_BaseNoiseSeq:
Seq5ca5:
    db $03, $ca, $83, $ca, $83, $80, $36, $7f, $7f, $7f, $36, $7f, $7f, $7f, $c7, $83
    db $83, $35, $7f, $34, $7f, $35, $7f, $34, $7f
jr_004_5cbe:
    db $cf, $35
jr_004_5cc0:
    db $7f, $34, $7f, $35, $34, $35, $35, $82, $36, $83, $35, $34, $82, $36, $83, $34
    db $34, $82, $36, $83, $35, $34, $82, $36, $35, $36, $83, $35, $34, $82, $36, $83
    db $34, $34, $82, $36, $83, $34, $35, $34, $35, $34, $35, $c5, $83, $82, $36, $83
    db $34, $35, $7f, $35, $7f, $35, $7f, $35, $7f, $35, $7f, $35, $7f, $35, $cf, $82
    db $36, $83, $34, $35, $7f, $35, $7f, $35, $7f, $35, $7f, $35, $7f, $35, $35, $35
    db $cf, $cf, $7f, $86, $7f, $ff
; Pulse/wave instrument base for AudioCueC1_0E; referenced by its encoded instrument commands.
AudioC1_0E_PulseWaveInsts:
Inst5d16:
    db $00, $09, $40, $0a, $00, $00
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_0E.
AudioC1_0E_NoiseInsts:
Inst5d1c:
    db $38, $a0, $00, $c0, $30, $80, $00, $c0, $00, $b2, $00, $80
; Audio record first indexed by Case I request $0f; type 3, fourteen bytes.
AudioCueC1_0F:
Audio5d28:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq5d36
    dw AudioC1_0F_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq5d3a
    dw AudioC1_0F_TopNoiseSeq
    dw Inst5d3c
    dw AudioCueC1_10
Seq5d36:
    db $ff
; Stream indexed by AudioCueC1_0F for the top pulse 1 slot; shared references retain this address.
AudioC1_0F_TopP1Seq:
Seq5d37:
    db $84, $7f, $ff
Seq5d3a:
    db $ff
; Stream indexed by AudioCueC1_0F for the top noise slot; shared references retain this address.
AudioC1_0F_TopNoiseSeq:
Seq5d3b:
    db $ff

; No instrument command in the current loaded streams reads this pair.
Inst5d3c:
    db $00, $00
; Audio record first indexed by Case I request $10; type 3, fourteen bytes.
AudioCueC1_10:
Audio5d3e:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq5d4c
    dw AudioC1_10_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq5d50
    dw AudioC1_10_TopNoiseSeq
    dw Inst5d52
    dw AudioCueC1_11
Seq5d4c:
    db $ff
; Stream indexed by AudioCueC1_10 for the top pulse 1 slot; shared references retain this address.
AudioC1_10_TopP1Seq:
Seq5d4d:
    db $84, $7f, $ff
Seq5d50:
    db $ff
; Stream indexed by AudioCueC1_10 for the top noise slot; shared references retain this address.
AudioC1_10_TopNoiseSeq:
Seq5d51:
    db $ff

; No instrument command in the current loaded streams reads this pair.
Inst5d52:
    db $00, $00
; Audio record first indexed by Case I request $11; type 3, fourteen bytes.
AudioCueC1_11:
Audio5d54:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq5d62
    dw AudioC1_11_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq5d74
    dw AudioC1_11_TopNoiseSeq
    dw AudioC1_11_PulseWaveInsts
    dw AudioCueC1_12

; Type-3 headers skip stream field 0; no current header loads this stream.
Seq5d62:
    ; Load instrument pair $00.
    db $e0, $00
    ; Set stereo bits to $03.
    db $03
    ; Select duration table index $04.
    db $84
    db $3f, $34, $3b, $38
    ; End stream.
    db $ff
; Stream indexed by AudioCueC1_11 for the top pulse 1 slot; shared references retain this address.
AudioC1_11_TopP1Seq:
Seq5d6b:
    db $e1, $00, $03, $84, $3b, $2c, $34, $2f, $ff
Seq5d74:
    db $ff
; Stream indexed by AudioCueC1_11 for the top noise slot; shared references retain this address.
AudioC1_11_TopNoiseSeq:
Seq5d75:
    db $ff
; Pulse/wave instrument base for AudioCueC1_11; referenced by its encoded instrument commands.
AudioC1_11_PulseWaveInsts:
Inst5d76:
    db $c0, $00
; Audio record first indexed by Case I request $12; type 3, fourteen bytes.
AudioCueC1_12:
Audio5d78:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq5d86
    dw AudioC1_12_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq5df2
    dw AudioC1_12_TopNoiseSeq
    dw AudioC1_12_PulseWaveInsts
    dw AudioCueC1_13
Seq5d86:
    db $ff
; Stream indexed by AudioCueC1_12 for the top pulse 1 slot; shared references retain this address.
AudioC1_12_TopP1Seq:
Seq5d87:
    db $e1, $00, $03, $ca, $86, $ca, $86, $86, $3f, $3b, $3f, $3c, $3f, $3b, $3f, $3b
    db $3f, $3c, $3f, $3b, $3f, $3b, $3f, $3c, $3f, $3b, $3f, $3b, $3f, $3c, $3f, $3b
    db $3f, $3b, $3f, $3c, $3f, $3b, $3f, $3b, $3f, $3c, $3f, $3b, $3f, $3b, $3f, $3c
    db $3f, $3b, $3f, $3b
jr_004_5dbb:
    db $3f, $3c, $3f
jr_004_5dbe:
    db $3b, $3f, $3b, $3f
jr_004_5dc2:
    db $3c, $3f, $3b, $3f, $3b, $3f, $3c, $3f, $3b, $3f, $3b, $3f
jr_004_5dce:
    db $3c, $3f, $3b, $3f, $3b, $3f, $3c, $3f, $3b, $3f, $3b, $3f, $3c
jr_004_5ddb:
    db $3f, $3b, $3f, $3b, $3f, $3c, $3f, $3b, $3f, $3b, $3f, $3c, $3f, $3b, $3f, $3b
    db $3f, $3c, $3f, $3b, $cf, $cf, $ff
Seq5df2:
    db $ff
; Stream indexed by AudioCueC1_12 for the top noise slot; shared references retain this address.
AudioC1_12_TopNoiseSeq:
Seq5df3:
    db $ff
; Pulse/wave instrument base for AudioCueC1_12; referenced by its encoded instrument commands.
AudioC1_12_PulseWaveInsts:
Inst5df4:
    db $80, $0b
; Audio record first indexed by Case I request $13; type 3, fourteen bytes.
AudioCueC1_13:
Audio5df6:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq5e04
    dw AudioC1_13_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq5e06
    dw AudioC1_13_TopNoiseSeq
    dw AudioC1_13_NoiseInsts
    dw AudioC1_13_NoiseInsts
Seq5e04:
    db $ff
; Stream indexed by AudioCueC1_13 for the top pulse 1 slot; shared references retain this address.
AudioC1_13_TopP1Seq:
Seq5e05:
    db $ff
Seq5e06:
    db $ff
; Stream indexed by AudioCueC1_13 for the top noise slot; shared references retain this address.
AudioC1_13_TopNoiseSeq:
Seq5e07:
    db $03, $84, $34, $86, $7f, $83, $35, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_13.
AudioC1_13_NoiseInsts:
Inst5e0f:
    db $1e, $d0, $32, $c0, $00, $d2, $11, $80
; Audio record first indexed by Case I request $14; type 3, fourteen bytes.
AudioCueC1_14:
Audio5e17:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq5e25
    dw AudioC1_14_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq5e51
    dw AudioC1_14_TopNoiseSeq
    dw AudioC1_14_PulseWaveInsts
    dw AudioCueC1_15

; Type-3 headers skip stream field 0; no current header loads this stream.
Seq5e25:
    ; Load instrument pair $00.
    db $e0, $00
    ; Set stereo bits to $03.
    db $03
    ; Select duration table index $02.
    db $82
    db $38
    ; Select duration table index $10.
    db $90
    db $38
    ; Select duration table index $11.
    db $91
    db $38, $38, $34, $38
    ; Select duration table index $10.
    db $90
    db $3b
    ; Select duration table index $11.
    db $91
    db $3b
    ; Select duration table index $02.
    db $82
jr_004_5e36:
    db $34
    ; Suppress retrigger for the following note.
    db $7e
    ; Select duration table index $03.
    db $83
    db $34
    ; End stream.
    db $ff
; Stream indexed by AudioCueC1_14 for the top pulse 1 slot; shared references retain this address.
AudioC1_14_TopP1Seq:
Seq5e3b:
    db $e1, $00, $03, $82, $34, $90, $34, $91, $34, $34, $2f, $34, $90, $38, $91, $38
    db $82, $3b, $7e, $83, $3b, $ff
Seq5e51:
    db $ff
; Stream indexed by AudioCueC1_14 for the top noise slot; shared references retain this address.
AudioC1_14_TopNoiseSeq:
Seq5e52:
    db $ff
; Pulse/wave instrument base for AudioCueC1_14; referenced by its encoded instrument commands.
AudioC1_14_PulseWaveInsts:
Inst5e53:
    db $c0, $03
; Audio record first indexed by Case I request $15; type 3, fourteen bytes.
AudioCueC1_15:
Audio5e55:
    db $03, $10
Jump_004_5e57:
    ; Type 3 loader skips stream word 0.
    dw Seq5e63
    dw AudioC1_15_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq5e77
    dw AudioC1_15_TopNoiseSeq
    dw AudioC1_15_PulseWaveInsts
    dw AudioCueC1_16
jr_004_5e63:
Seq5e63:
    db $ff
; Stream indexed by AudioCueC1_15 for the top pulse 1 slot; shared references retain this address.
AudioC1_15_TopP1Seq:
Seq5e64:
    db $e1, $00
jr_004_5e66:
    db $03
jr_004_5e67:
    db $85, $3d, $49
jr_004_5e6a:
    db $3d, $49, $3d, $49, $3d, $49, $3d, $49, $3d, $49, $3d, $49, $ff
Seq5e77:
    db $ff
; Stream indexed by AudioCueC1_15 for the top noise slot; shared references retain this address.
AudioC1_15_TopNoiseSeq:
Seq5e78:
    db $ff
; Pulse/wave instrument base for AudioCueC1_15; referenced by its encoded instrument commands.
AudioC1_15_PulseWaveInsts:
Inst5e79:
    db $c0, $00
; Audio record first indexed by Case I request $16; type 3, fourteen bytes.
AudioCueC1_16:
Audio5e7b:
    db $03, $11
    ; Type 3 loader skips stream word 0.
    dw Seq5e89
    dw AudioC1_16_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq5e99
    dw AudioC1_16_TopNoiseSeq
    dw AudioC1_16_PulseWaveInsts
    dw AudioCueC1_17
Seq5e89:
    db $ff
; Stream indexed by AudioCueC1_16 for the top pulse 1 slot; shared references retain this address.
AudioC1_16_TopP1Seq:
Seq5e8a:
    db $e1, $00, $03, $8a, $2f, $84, $2d, $83, $2c, $2a, $28, $34, $82, $28, $ff
Seq5e99:
    db $ff
; Stream indexed by AudioCueC1_16 for the top noise slot; shared references retain this address.
AudioC1_16_TopNoiseSeq:
Seq5e9a:
    db $ff
; Pulse/wave instrument base for AudioCueC1_16; referenced by its encoded instrument commands.
AudioC1_16_PulseWaveInsts:
Inst5e9b:
    db $c0, $00
; Audio record first indexed by Case I request $17; type 2, fourteen bytes.
AudioCueC1_17:
Audio5e9d:
    db $02, $10
    dw AudioC1_17_AltP2Seq
    dw AudioC1_17_AltP1Seq
    dw AudioC1_17_AltWaveSeq
    ; Type 2 loader skips stream word 3.
    dw Seq5f32
    dw AudioC1_17_PulseWaveInsts
jr_004_5ea9:
    ; Type 2 loader skips the noise-instrument word.
    dw Inst5f5d
; Stream indexed by AudioCueC1_17 for the alternate pulse 2 slot; shared references retain this address.
AudioC1_17_AltP2Seq:
Seq5eab:
    db $e0, $00, $03, $84, $3f
jr_004_5eb0:
    db $34, $3b, $38, $82, $7f, $83, $7f, $85, $7f, $e0, $01, $c4, $86, $ca, $86, $86
    db $3f, $3b, $3f, $3c, $3f, $3b, $cf, $cf, $85, $3d
jr_004_5eca:
    db $45, $38, $41, $82, $7f, $e0, $00, $38, $90, $38, $91, $38, $38, $34, $38, $90
    db $3b, $91, $3b, $8a, $40, $7e, $8b, $40, $81, $7f, $c4, $85, $85, $49, $55
jr_004_5ee9:
    db $49, $55, $49, $55, $49, $55, $49, $55, $49, $55, $49, $55, $cf, $86, $7f, $ff
; Stream indexed by AudioCueC1_17 for the alternate pulse 1 slot; shared references retain this address.
AudioC1_17_AltP1Seq:
Seq5ef9:
    db $e1, $00, $03, $84, $3b, $2f, $38, $34, $82
jr_004_5f02:
    db $7f, $e1, $02, $85, $14, $23, $8b, $7f, $c4, $84, $ca, $84
jr_004_5f0e:
    db $8b
jr_004_5f0f:
    db $7f, $cf, $cf, $89, $7f, $e1, $00, $82, $28, $90, $28, $91, $28, $28, $23, $28
    db $90, $2c, $91, $2c, $8a, $2f, $7e, $8b, $2f, $81, $7f, $82, $7f, $8a, $7f, $86
    db $7f, $ff
; Stream indexed by AudioCueC1_17 for the alternate wave slot; shared references retain this address.
AudioC1_17_AltWaveSeq:
Seq5f31:
    db $ff

; Type-2 headers skip stream field 3; no current header loads this stream.
Seq5f32:
    ; Set stereo bits to $03.
    db $03
    ; Select duration table index $01.
    db $81
    ; Rest event.
    db $7f
jr_004_5f35:
    ; Select duration table index $05.
    db $85
    db $34, $35
    ; Select duration table index $0b.
    db $8b
    ; Rest event.
    db $7f
    ; Start loop with limit $04.
    db $c4
    ; Select duration table index $02.
    db $82
    ; Start loop with limit $0a.
    db $ca
    ; Select duration table index $02.
    db $82
    ; Select duration table index $0b.
    db $8b
    ; Rest event.
    db $7f
    ; End loop.
    db $cf
    ; End loop.
    db $cf
    ; Select duration table index $09.
    db $89
    ; Rest event.
    db $7f
    ; Select duration table index $10.
    db $90
jr_004_5f45:
    ; Rest event.
    db $7f
    ; Rest event.
    db $7f
    ; Select duration table index $11.
    db $91
    ; Rest event.
    db $7f
    ; Rest event.
    db $7f
    ; Select duration table index $03.
    db $83
    ; Rest event.
    db $7f
    ; Select duration table index $05.
    db $85
    ; Rest event.
    db $7f
    ; Select duration table index $00.
    db $80
    ; Rest event.
    db $7f
    ; Select duration table index $02.
    db $82
    ; Rest event.
    db $7f
    ; Select duration table index $0a.
    db $8a
    ; Rest event.
    db $7f
    ; Select duration table index $06.
    db $86
    ; Rest event.
    db $7f
    ; End stream.
    db $ff
; Pulse/wave instrument base for AudioCueC1_17; referenced by its encoded instrument commands.
AudioC1_17_PulseWaveInsts:
Inst5f57:
    db $c0, $00, $80, $0b, $c0, $0c

; LoadAudio3 skips this noise-table pointer.
; Each row supplies NR41, NR42, NR43, NR44 in that order.
Inst5f5d:
    db $3c, $b0, $42, $c0
    db $3a, $b1, $11, $80
    db $00, $b2, $18, $80
; Audio record first indexed by Case I request $18; type 2, fourteen bytes.
AudioCueC1_18:
Audio5f69:
    db $02, $10
    dw AudioC1_18_AltP2Seq
    dw AudioC1_18_AltP1Seq
    dw AudioC1_18_AltWaveSeq
    ; Type 2 loader skips stream word 3.
    dw Seq5fc5
    dw AudioC1_18_PulseWaveInsts
    ; Type 2 loader skips the noise-instrument word.
    dw Inst5fe4
; Stream indexed by AudioCueC1_18 for the alternate pulse 2 slot; shared references retain this address.
AudioC1_18_AltP2Seq:
Seq5f77:
    db $e0, $00, $03, $84, $3f, $34, $3b, $38, $82, $7f, $83, $7f, $85, $7f, $e0, $01
    db $c4, $86, $ca, $86, $86, $3f, $3b, $3f, $3c, $3f, $3b, $cf, $cf, $83, $7f, $91
    db $2f, $84, $2d, $83, $7f, $2a, $28, $34, $82, $28, $ff
; Stream indexed by AudioCueC1_18 for the alternate pulse 1 slot; shared references retain this address.
AudioC1_18_AltP1Seq:
Seq5fa2:
    db $e1, $00, $03, $84, $3b, $2f, $38, $34, $82, $7f, $e1, $02, $85, $14, $23, $8b
    db $7f, $c4, $84, $ca, $84, $8b, $7f, $cf, $cf, $83, $7f, $91, $7f, $84, $7f, $88
    db $7f, $ff
; Stream indexed by AudioCueC1_18 for the alternate wave slot; shared references retain this address.
AudioC1_18_AltWaveSeq:
Seq5fc4:
    db $ff

; Type-2 headers skip stream field 3; no current header loads this stream.
Seq5fc5:
    ; Set stereo bits to $03.
    db $03
    ; Select duration table index $01.
    db $81
    ; Rest event.
    db $7f
    ; Select duration table index $05.
    db $85
    db $34, $35
    ; Select duration table index $0b.
    db $8b
    ; Rest event.
    db $7f
    ; Start loop with limit $04.
    db $c4
    ; Select duration table index $04.
    db $84
    ; Start loop with limit $0a.
    db $ca
    ; Select duration table index $04.
    db $84
    ; Select duration table index $0b.
    db $8b
    ; Rest event.
    db $7f
jr_004_5fd3:
    ; End loop.
    db $cf
    ; End loop.
    db $cf
    ; Select duration table index $03.
    db $83
    ; Rest event.
    db $7f
    ; Select duration table index $11.
    db $91
    ; Rest event.
    db $7f
    ; Select duration table index $04.
    db $84
    ; Rest event.
    db $7f
    ; Select duration table index $0b.
    db $8b
    ; Rest event.
    db $7f
    ; End stream.
    db $ff
jr_004_5fde:
; Pulse/wave instrument base for AudioCueC1_18; referenced by its encoded instrument commands.
AudioC1_18_PulseWaveInsts:
Inst5fde:
    db $c0, $00, $80, $0b, $00, $00

; LoadAudio3 skips this noise-table pointer.
; Each row supplies NR41, NR42, NR43, NR44 in that order.
Inst5fe4:
    db $3c, $b0, $42, $c0
    db $3a, $b1, $11, $80
    db $00, $91, $09, $80
; Audio record first indexed by Case I request $19; type 3, fourteen bytes.
AudioCueC1_19:
Audio5ff0:
    db $03
jr_004_5ff1:
    db $20
    ; Type 3 loader skips stream word 0.
    dw Seq5ffe
    dw AudioC1_19_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6005
    dw AudioC1_19_TopNoiseSeq
    dw AudioC1_19_PulseWaveInsts
    dw AudioCueC1_1A
Seq5ffe:
    db $ff
; Stream indexed by AudioCueC1_19 for the top pulse 1 slot; shared references retain this address.
AudioC1_19_TopP1Seq:
Seq5fff:
    db $e1, $00, $03, $84, $3d, $ff
Seq6005:
    db $ff
; Stream indexed by AudioCueC1_19 for the top noise slot; shared references retain this address.
AudioC1_19_TopNoiseSeq:
Seq6006:
    db $ff
; Pulse/wave instrument base for AudioCueC1_19; referenced by its encoded instrument commands.
AudioC1_19_PulseWaveInsts:
Inst6007:
    db $c0, $02
; Audio record first indexed by Case I request $1a; type 3, fourteen bytes.
AudioCueC1_1A:
Audio6009:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq6017
    dw AudioC1_1A_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6019
    dw AudioC1_1A_TopNoiseSeq
    dw AudioC1_1A_NoiseInsts
    dw AudioC1_1A_NoiseInsts
Seq6017:
    db $ff
; Stream indexed by AudioCueC1_1A for the top pulse 1 slot; shared references retain this address.
AudioC1_1A_TopP1Seq:
Seq6018:
    db $ff
Seq6019:
    db $ff
; Stream indexed by AudioCueC1_1A for the top noise slot; shared references retain this address.
AudioC1_1A_TopNoiseSeq:
Seq601a:
    db $e0, $00, $03, $85, $40, $8a, $41, $ff
; Noise instrument base for AudioCueC1_1A; referenced by its encoded instrument commands.
AudioC1_1A_NoiseInsts:
Inst6022:
    db $00, $d1, $43, $80, $00, $e2, $00, $80
; Audio record first indexed by Case I request $1b; type 3, fourteen bytes.
AudioCueC1_1B:
Audio602a:
    db $03, $12
    ; Type 3 loader skips stream word 0.
    dw Seq6038
    dw AudioC1_1B_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq603a
    dw AudioC1_1B_TopNoiseSeq
    dw AudioC1_1B_NoiseInsts
    dw AudioC1_1B_NoiseInsts
Seq6038:
    db $ff
; Stream indexed by AudioCueC1_1B for the top pulse 1 slot; shared references retain this address.
AudioC1_1B_TopP1Seq:
Seq6039:
    db $ff
Seq603a:
    db $ff
; Stream indexed by AudioCueC1_1B for the top noise slot; shared references retain this address.
AudioC1_1B_TopNoiseSeq:
Seq603b:
    db $03, $83, $41, $40, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_1B.
AudioC1_1B_NoiseInsts:
Inst6040:
    db $00, $d2, $34, $80, $00, $d2, $54, $80
; Audio record first indexed by Case I request $1c; type 3, fourteen bytes.
AudioCueC1_1C:
Audio6048:
    db $03, $11
    ; Type 3 loader skips stream word 0.
    dw Seq6056
    dw AudioC1_1C_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6058
    dw AudioC1_1C_TopNoiseSeq
    dw AudioC1_1C_NoiseInsts
    dw AudioC1_1C_NoiseInsts
Seq6056:
    db $ff
; Stream indexed by AudioCueC1_1C for the top pulse 1 slot; shared references retain this address.
AudioC1_1C_TopP1Seq:
Seq6057:
    db $ff
Seq6058:
    db $ff
; Stream indexed by AudioCueC1_1C for the top noise slot; shared references retain this address.
AudioC1_1C_TopNoiseSeq:
Seq6059:
    db $03, $82, $40, $40, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_1C.
AudioC1_1C_NoiseInsts:
Inst605e:
    db $00, $d0, $50, $80
; Audio record first indexed by Case I request $1d; type 3, fourteen bytes.
AudioCueC1_1D:
Audio6062:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq6070
    dw AudioC1_1D_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6072
    dw AudioC1_1D_TopNoiseSeq
    dw AudioC1_1D_NoiseInsts
    db LOW(AudioC1_1D_NoiseInsts)
jr_004_606f:
    db HIGH(AudioC1_1D_NoiseInsts)
Seq6070:
    db $ff
; Stream indexed by AudioCueC1_1D for the top pulse 1 slot; shared references retain this address.
AudioC1_1D_TopP1Seq:
Seq6071:
    db $ff
Seq6072:
    db $ff
; Stream indexed by AudioCueC1_1D for the top noise slot; shared references retain this address.
AudioC1_1D_TopNoiseSeq:
Seq6073:
    db $03, $80, $34, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_1D.
AudioC1_1D_NoiseInsts:
Inst6077:
    db $00, $d2, $80, $80
; Audio record first indexed by Case I request $1e; type 3, fourteen bytes.
AudioCueC1_1E:
Audio607b:
    db $03, $16
    ; Type 3 loader skips stream word 0.
    dw Seq6089
    dw AudioC1_1E_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq609a
    dw AudioC1_1E_TopNoiseSeq
    dw Inst609c
    dw Inst609e
Seq6089:
    db $ff
; Stream indexed by AudioCueC1_1E for the top pulse 1 slot; shared references retain this address.
AudioC1_1E_TopP1Seq:
Seq608a:
    db $03, $85, $49, $4a
jr_004_608e:
    db $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $ff
Seq609a:
    db $ff
; Stream indexed by AudioCueC1_1E for the top noise slot; shared references retain this address.
AudioC1_1E_TopNoiseSeq:
Seq609b:
    db $ff

; No instrument command in the current loaded streams reads this pair.
Inst609c:
    db $00, $00

; Type-3 record pattern; not selected by the current audio ID tables.
Audio609e:
Inst609e:
    db $03, $10
    dw Seq60ac
    dw Seq60ad
    dw Seq60ae
    dw Seq60af
    dw Inst60c4
    dw Inst60c4
Seq60ac:
    db $ff
Seq60ad:
    db $ff
Seq60ae:
    db $ff
Seq60af:
    db $03, $84, $34, $34, $34, $34, $34, $34, $34, $34, $35, $35, $35, $35, $35, $35
    db $35, $35, $82
jr_004_60c2:
    db $35, $ff

; Two four-byte noise instrument rows for this record pattern.
Inst60c4:
    db $00, $c2, $12, $80
    db $00, $c2, $22, $80

; Type-3 record pattern; not selected by the current audio ID tables.
Audio60cc:
    db $03, $10
    dw Seq60da
    dw Seq60db
    dw Seq60dc
    dw Seq60dd
    dw Inst60e3
    dw Inst60e3
Seq60da:
    db $ff
Seq60db:
    db $ff
Seq60dc:
    db $ff
Seq60dd:
    db $03, $85, $34, $82, $35, $ff

; Two four-byte noise instrument rows for this record pattern.
Inst60e3:
    db $00, $c2, $32, $80
jr_004_60e7:
    db $00, $c2, $82, $80
; Audio record first indexed by Case I request $21; type 3, fourteen bytes.
AudioCueC1_21:
Audio60eb:
    db $03, $20
    ; Type 3 loader skips stream word 0.
    dw Seq60f9
    dw AudioC1_21_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6103
    dw AudioC1_21_TopNoiseSeq
    dw AudioC1_21_PulseWaveInsts
    dw AudioCueC1_22
Seq60f9:
    db $ff
; Stream indexed by AudioCueC1_21 for the top pulse 1 slot; shared references retain this address.
AudioC1_21_TopP1Seq:
Seq60fa:
    db $e1, $00, $03, $85, $49, $45, $42, $4b, $ff
Seq6103:
    db $ff
; Stream indexed by AudioCueC1_21 for the top noise slot; shared references retain this address.
AudioC1_21_TopNoiseSeq:
Seq6104:
    db $ff
; Pulse/wave instrument base for AudioCueC1_21; referenced by its encoded instrument commands.
AudioC1_21_PulseWaveInsts:
Inst6105:
    db $c0, $00
; Audio record first indexed by Case I request $22; type 3, fourteen bytes.
AudioCueC1_22:
Audio6107:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq6115
    dw AudioC1_22_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq611c
    dw AudioC1_22_TopNoiseSeq
    dw AudioC1_22_PulseWaveInsts
    dw AudioCueC1_24
Seq6115:
    db $ff
; Stream indexed by AudioCueC1_22 for the top pulse 1 slot; shared references retain this address.
AudioC1_22_TopP1Seq:
Seq6116:
    db $e1, $00, $03, $84, $31, $ff
Seq611c:
    db $ff
; Stream indexed by AudioCueC1_22 for the top noise slot; shared references retain this address.
AudioC1_22_TopNoiseSeq:
Seq611d:
    db $ff
; Pulse/wave instrument base for AudioCueC1_22; referenced by its encoded instrument commands.
AudioC1_22_PulseWaveInsts:
Inst611e:
    db $80, $0b
; Audio record first indexed by Case I request $24; type 3, fourteen bytes.
AudioCueC1_24:
Audio6120:
    db $03, $20
    ; Type 3 loader skips stream word 0.
    dw Seq612e
    dw AudioC1_24_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6130
    dw AudioC1_24_TopNoiseSeq
    dw AudioC1_24_NoiseInsts
    dw AudioC1_24_NoiseInsts
Seq612e:
    db $ff
; Stream indexed by AudioCueC1_24 for the top pulse 1 slot; shared references retain this address.
AudioC1_24_TopP1Seq:
Seq612f:
    db $ff
Seq6130:
    db $ff
; Stream indexed by AudioCueC1_24 for the top noise slot; shared references retain this address.
AudioC1_24_TopNoiseSeq:
Seq6131:
    db $03, $8c, $34, $35, $36, $37, $38, $89, $7f, $8c, $34, $35, $36, $37, $38, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_24.
AudioC1_24_NoiseInsts:
Inst6141:
    db $00, $d7, $62, $80, $00, $d1, $72, $80, $00, $d1, $21, $80, $00, $d1, $76, $80
jr_004_6151:
    db $00, $d3, $16, $80
; Audio record first indexed by Case I request $25; type 3, fourteen bytes.
AudioCueC1_25:
Audio6155:
    db $03, $15
    ; Type 3 loader skips stream word 0.
    dw Seq6163
    dw AudioC1_25_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6165
    dw AudioC1_25_TopNoiseSeq
    dw AudioC1_25_NoiseInsts
    dw AudioC1_25_NoiseInsts
Seq6163:
    db $ff
; Stream indexed by AudioCueC1_25 for the top pulse 1 slot; shared references retain this address.
AudioC1_25_TopP1Seq:
Seq6164:
    db $ff
Seq6165:
    db $ff
; Stream indexed by AudioCueC1_25 for the top noise slot; shared references retain this address.
AudioC1_25_TopNoiseSeq:
Seq6166:
    db $03, $ca, $83, $83, $34, $34, $34, $34, $cf, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_25.
AudioC1_25_NoiseInsts:
Inst6170:
    db $00, $d7, $64, $80
; Audio record first indexed by Case I request $26; type 3, fourteen bytes.
AudioCueC1_26:
Audio6174:
    db $03, $0c
jr_004_6176:
    ; Type 3 loader skips stream word 0.
    dw Seq6182
    dw AudioC1_26_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6191
    dw AudioC1_26_TopNoiseSeq
    dw Inst6193
    dw AudioCueC1_27
Seq6182:
    db $ff
; Stream indexed by AudioCueC1_26 for the top pulse 1 slot; shared references retain this address.
AudioC1_26_TopP1Seq:
Seq6183:
    db $03, $ca, $82, $82, $31, $7f, $31, $7f, $31, $7f, $31, $7f, $cf, $ff
Seq6191:
    db $ff
; Stream indexed by AudioCueC1_26 for the top noise slot; shared references retain this address.
AudioC1_26_TopNoiseSeq:
Seq6192:
    db $ff

; No instrument command in the current loaded streams reads this pair.
Inst6193:
    db $c0, $00
; Audio record first indexed by Case I request $27; type 3, fourteen bytes.
AudioCueC1_27:
Audio6195:
    db $03, $1e
    ; Type 3 loader skips stream word 0.
    dw Seq61a3
    dw AudioC1_27_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq61c5
    dw AudioC1_27_TopNoiseSeq
    dw Inst61c7
    dw AudioCueC1_28
Seq61a3:
    db $ff
; Stream indexed by AudioCueC1_27 for the top pulse 1 slot; shared references retain this address.
AudioC1_27_TopP1Seq:
Seq61a4:
    db $03, $85, $36, $3b, $40, $37, $3c, $41, $38, $3d, $42, $39, $3e, $43, $3a, $3f
    db $44, $3b, $40, $45, $3c, $41, $46, $3d, $42, $47, $3e, $43, $48, $3f, $44, $49
    db $ff
Seq61c5:
    db $ff
; Stream indexed by AudioCueC1_27 for the top noise slot; shared references retain this address.
AudioC1_27_TopNoiseSeq:
Seq61c6:
    db $ff

; No instrument command in the current loaded streams reads this pair.
Inst61c7:
    db $c0, $00
; Audio record first indexed by Case I request $28; type 3, fourteen bytes.
AudioCueC1_28:
Audio61c9:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq61d7
    dw AudioC1_28_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq61e2
    dw AudioC1_28_TopNoiseSeq
    dw Inst61e4
    dw AudioCueC1_29
Seq61d7:
    db $ff
; Stream indexed by AudioCueC1_28 for the top pulse 1 slot; shared references retain this address.
AudioC1_28_TopP1Seq:
Seq61d8:
    db $03, $ca, $82, $82, $3b, $3b, $3b, $3b, $cf, $ff
Seq61e2:
    db $ff
; Stream indexed by AudioCueC1_28 for the top noise slot; shared references retain this address.
AudioC1_28_TopNoiseSeq:
Seq61e3:
    db $ff

; No instrument command in the current loaded streams reads this pair.
Inst61e4:
    db $40, $0b
; Audio record first indexed by Case I request $29; type 3, fourteen bytes.
AudioCueC1_29:
Audio61e6:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq61f4
    db LOW(AudioC1_29_TopP1Seq)
jr_004_61eb:
    db HIGH(AudioC1_29_TopP1Seq)
    ; Type 3 loader skips stream word 2.
    dw Seq61fb
    dw AudioC1_29_TopNoiseSeq
    dw AudioC1_29_PulseWaveInsts
    dw AudioCueC1_2A
Seq61f4:
    db $ff
; Stream indexed by AudioCueC1_29 for the top pulse 1 slot; shared references retain this address.
AudioC1_29_TopP1Seq:
Seq61f5:
    db $e1, $00, $03, $8a, $1c, $ff
Seq61fb:
    db $ff
; Stream indexed by AudioCueC1_29 for the top noise slot; shared references retain this address.
AudioC1_29_TopNoiseSeq:
Seq61fc:
    db $ff
; Pulse/wave instrument base for AudioCueC1_29; referenced by its encoded instrument commands.
AudioC1_29_PulseWaveInsts:
Inst61fd:
    db $c0, $03
; Audio record first indexed by Case I request $2a; type 3, fourteen bytes.
AudioCueC1_2A:
Audio61ff:
    db $03, $20
    ; Type 3 loader skips stream word 0.
    dw Seq620d
    dw AudioC1_2A_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6212
    dw AudioC1_2A_TopNoiseSeq
    dw AudioC1_2A_PulseWaveInsts
    dw AudioCueC1_2B
Seq620d:
    db $ff
; Stream indexed by AudioCueC1_2A for the top pulse 1 slot; shared references retain this address.
AudioC1_2A_TopP1Seq:
Seq620e:
    db $e1
jr_004_620f:
    db $00, $03, $ff
Seq6212:
    db $ff
; Stream indexed by AudioCueC1_2A for the top noise slot; shared references retain this address.
AudioC1_2A_TopNoiseSeq:
Seq6213:
    db $ff
; Pulse/wave instrument base for AudioCueC1_2A; referenced by its encoded instrument commands.
AudioC1_2A_PulseWaveInsts:
Inst6214:
    db $80, $0b
; Audio record first indexed by Case I request $2b; type 3, fourteen bytes.
AudioCueC1_2B:
Audio6216:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq6224
    dw AudioC1_2B_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6226
    dw AudioC1_2B_TopNoiseSeq
    dw AudioC1_2B_NoiseInsts
    dw AudioC1_2B_NoiseInsts
Seq6224:
    db $ff
; Stream indexed by AudioCueC1_2B for the top pulse 1 slot; shared references retain this address.
AudioC1_2B_TopP1Seq:
Seq6225:
    db $ff
Seq6226:
    db $ff
; Stream indexed by AudioCueC1_2B for the top noise slot; shared references retain this address.
AudioC1_2B_TopNoiseSeq:
Seq6227:
    db $03, $84, $34, $82, $35, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_2B.
AudioC1_2B_NoiseInsts:
Inst622d:
    db $00, $d2, $82, $80, $00, $d3, $64, $80
; Audio record first indexed by Case I request $2c; type 3, fourteen bytes.
AudioCueC1_2C:
Audio6235:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq6243
    dw AudioC1_2C_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6245
    dw AudioC1_2C_TopNoiseSeq
    dw AudioC1_2C_NoiseInsts
    dw AudioC1_2C_NoiseInsts
Seq6243:
    db $ff
; Stream indexed by AudioCueC1_2C for the top pulse 1 slot; shared references retain this address.
AudioC1_2C_TopP1Seq:
Seq6244:
    db $ff
Seq6245:
    db $ff
; Stream indexed by AudioCueC1_2C for the top noise slot; shared references retain this address.
AudioC1_2C_TopNoiseSeq:
Seq6246:
    db $03, $84, $34, $81, $35, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_2C.
AudioC1_2C_NoiseInsts:
Inst624c:
    db $00, $d2, $82, $80, $00, $d6, $64, $80
; Audio record first indexed by Case I request $2d; type 3, fourteen bytes.
AudioCueC1_2D:
Audio6254:
    db $03, $14
    ; Type 3 loader skips stream word 0.
    dw Seq6262
    dw AudioC1_2D_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6272
    dw AudioC1_2D_TopNoiseSeq
    dw AudioC1_2D_PulseWaveInsts
    dw AudioCueC1_2E
Seq6262:
    db $ff
; Stream indexed by AudioCueC1_2D for the top pulse 1 slot; shared references retain this address.
AudioC1_2D_TopP1Seq:
Seq6263:
    db $e1, $00, $03, $86, $23, $28, $2f, $35, $3b, $3d, $38, $33, $2e, $28, $ff
Seq6272:
    db $ff
; Stream indexed by AudioCueC1_2D for the top noise slot; shared references retain this address.
AudioC1_2D_TopNoiseSeq:
Seq6273:
    db $ff
; Pulse/wave instrument base for AudioCueC1_2D; referenced by its encoded instrument commands.
AudioC1_2D_PulseWaveInsts:
Inst6274:
    db $c0, $00
; Audio record first indexed by Case I request $2e; type 3, fourteen bytes.
AudioCueC1_2E:
Audio6276:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq6284
    dw AudioC1_2E_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6296
    dw AudioC1_2E_TopNoiseSeq
    dw AudioC1_2E_PulseWaveInsts
    dw AudioCueC1_2F
Seq6284:
    db $ff
; Stream indexed by AudioCueC1_2E for the top pulse 1 slot; shared references retain this address.
AudioC1_2E_TopP1Seq:
Seq6285:
    db $e1, $00, $03, $86, $47, $4c, $47, $4c, $84, $7f, $c8, $86, $86, $47, $4c, $cf
    db $ff
Seq6296:
    db $ff
; Stream indexed by AudioCueC1_2E for the top noise slot; shared references retain this address.
AudioC1_2E_TopNoiseSeq:
Seq6297:
    db $ff
; Pulse/wave instrument base for AudioCueC1_2E; referenced by its encoded instrument commands.
AudioC1_2E_PulseWaveInsts:
Inst6298:
    db $c0
jr_004_6299:
    db $00
; Audio record first indexed by Case I request $2f; type 3, fourteen bytes.
AudioCueC1_2F:
Audio629a:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq62a8
    dw AudioC1_2F_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq62b5
jr_004_62a2:
    dw AudioC1_2F_TopNoiseSeq
    dw AudioC1_2F_PulseWaveInsts
    dw AudioCueC1_30
Seq62a8:
    db $ff
; Stream indexed by AudioCueC1_2F for the top pulse 1 slot; shared references retain this address.
AudioC1_2F_TopP1Seq:
Seq62a9:
    db $e1, $00, $03, $86, $39, $3c, $3f, $42, $45, $48, $4b, $ff
Seq62b5:
    db $ff
; Stream indexed by AudioCueC1_2F for the top noise slot; shared references retain this address.
AudioC1_2F_TopNoiseSeq:
Seq62b6:
    db $ff
; Pulse/wave instrument base for AudioCueC1_2F; referenced by its encoded instrument commands.
AudioC1_2F_PulseWaveInsts:
Inst62b7:
    db $c0, $00
; Audio record first indexed by Case I request $30; type 3, fourteen bytes.
AudioCueC1_30:
Audio62b9:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq62c7
    dw AudioC1_30_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq62c9
    dw AudioC1_30_TopNoiseSeq
    dw AudioC1_30_NoiseInsts
    dw AudioC1_30_NoiseInsts
Seq62c7:
    db $ff
; Stream indexed by AudioCueC1_30 for the top pulse 1 slot; shared references retain this address.
AudioC1_30_TopP1Seq:
Seq62c8:
    db $ff
Seq62c9:
    db $ff
; Stream indexed by AudioCueC1_30 for the top noise slot; shared references retain this address.
AudioC1_30_TopNoiseSeq:
Seq62ca:
    db $03, $86, $34, $35, $36, $ff
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_30.
AudioC1_30_NoiseInsts:
Inst62d0:
    db $00, $d2, $10, $80, $00, $d7
jr_004_62d6:
    db $54, $80, $00, $c2, $64, $80
; Audio record first indexed by Case I request $31; type 3, fourteen bytes.
AudioCueC1_31:
Audio62dc:
    db $03, $15
    ; Type 3 loader skips stream word 0.
    dw Seq62ea
    dw AudioC1_31_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq62ec
    dw AudioC1_31_TopNoiseSeq
    dw Inst62f9
    dw AudioC1_31_NoiseInsts
Seq62ea:
    db $ff
; Stream indexed by AudioCueC1_31 for the top pulse 1 slot; shared references retain this address.
AudioC1_31_TopP1Seq:
Seq62eb:
    db $ff
Seq62ec:
    db $ff
; Stream indexed by AudioCueC1_31 for the top noise slot; shared references retain this address.
AudioC1_31_TopNoiseSeq:
Seq62ed:
    db $03, $84, $34, $7e, $85, $34, $7f, $8c, $35, $83, $7f, $ff

; No instrument command in the current loaded streams reads this pair.
Inst62f9:
    db $80, $12
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_31.
AudioC1_31_NoiseInsts:
Inst62fb:
    db $00, $ec, $00, $80, $1e, $d0, $30, $c0
; Audio record first indexed by Case I request $32; type 3, fourteen bytes.
AudioCueC1_32:
Audio6303:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq6311
    dw AudioC1_32_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq6318
    dw AudioC1_32_TopNoiseSeq
    dw AudioC1_32_PulseWaveInsts
    dw AudioCueC1_33
Seq6311:
    db $ff
; Stream indexed by AudioCueC1_32 for the top pulse 1 slot; shared references retain this address.
AudioC1_32_TopP1Seq:
Seq6312:
    db $e1, $00, $03, $80, $28, $ff
Seq6318:
    db $ff
; Stream indexed by AudioCueC1_32 for the top noise slot; shared references retain this address.
AudioC1_32_TopNoiseSeq:
Seq6319:
    db $ff
; Pulse/wave instrument base for AudioCueC1_32; referenced by its encoded instrument commands.
AudioC1_32_PulseWaveInsts:
Inst631a:
    db $00, $0b
; Audio record first indexed by Case I request $33; type 3, fourteen bytes.
AudioCueC1_33:
Audio631c:
    db $03, $10
    ; Type 3 loader skips stream word 0.
    dw Seq632a
    dw AudioC1_33_TopP1Seq
    ; Type 3 loader skips stream word 2.
    dw Seq633f
    dw AudioC1_33_TopNoiseSeq
    dw AudioC1_33_PulseWaveInsts
    dw AudioC1_33_NoiseInsts
Seq632a:
    db $ff
; Stream indexed by AudioCueC1_33 for the top pulse 1 slot; shared references retain this address.
AudioC1_33_TopP1Seq:
Seq632b:
    db $e1, $00, $03, $89, $7f, $8a, $7f, $85, $14, $86, $7f, $85, $14, $86, $7f, $85
    db $14, $83, $7f, $ff
Seq633f:
    db $ff
; Stream indexed by AudioCueC1_33 for the top noise slot; shared references retain this address.
AudioC1_33_TopNoiseSeq:
Seq6340:
    db $03, $89, $7f, $8b, $36, $84, $37, $85, $38, $8c, $7f, $85, $34, $86, $7f, $85
    db $35, $83, $7f, $ff
; Pulse/wave instrument base for AudioCueC1_33; referenced by its encoded instrument commands.
AudioC1_33_PulseWaveInsts:
Inst6354:
    db $80, $01
; Four-byte noise-register rows selected by encoded notes of AudioCueC1_33.
AudioC1_33_NoiseInsts:
Inst6356:
    db $00, $e0, $30, $80, $00, $c0, $40, $80, $00, $6f, $27, $80, $00, $90, $25, $80
    db $00, $f0, $23, $80
