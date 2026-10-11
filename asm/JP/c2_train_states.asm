
; First state bits set for boarding and retained while doors close.
TrainStateA:
C2SchedStatesA:
    db $80, $81, $82, $83, $7c, $7d, $7e, $7f

; Second state bits set for boarding and cleared when doors close.
TrainStateB:
C2SchedStatesB:
    db $3a, $3d, $40, $43, $21, $24, $27, $2a

; Third state bits set for boarding and cleared when doors close.
TrainStateC:
C2SchedStatesC:
    db $3b, $3e, $41, $44, $22, $25, $28, $2b

; First passenger-room state bits cleared when a rider is removed.
TrainDropA:
C2SchedDropA:
jr_003_6a35:
    db $8d, $8f, $91, $93, $85, $87
jr_003_6a3b:
    db $89, $8b

; Second passenger-room state bits cleared when a rider is removed.
TrainDropB:
C2SchedDropB:
    db $8e, $90, $92, $94, $86, $88, $8a, $8c
