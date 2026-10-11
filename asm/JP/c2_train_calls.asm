
; Display trains two through five in bank three, then restore the previous ROM bank.
Trains2To5Call:
C2SchedLowCall:


Call_000_30cc:
Jump_000_30cc:
    push af
    ld a, $03

Call_000_30cf:
    call PushRomBank
    pop af
    call ShowTrains2To5
    call PopRomBank
    ret

; Display trains six through nine in bank three, then restore the previous ROM bank.
Trains6To9Call:
C2SchedHighCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call ShowTrains6To9
    call PopRomBank
    ret

; Select the current train fare in bank three, then restore the previous ROM bank.
TrainFareCall:
C2SchedCostCall:


    push af
    ld a, $03
    call PushRomBank
    pop af

Jump_000_30ef:
    call PickTrainFare
    call PopRomBank
    ret
