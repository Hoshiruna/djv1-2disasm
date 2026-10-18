
; Rebuild records and display trains six through nine; retain the second-page restart at record index five.
ShowTrains6To9:
ShowC2SchedHigh:


    call BuildTrains
    call InitTextBuffer
    call ShowTrainHead
    ld a, $14
    ld [wTrainRepeat], a
    ld a, TrainRecsLen

; Set the upper train page range before displaying its rows.
TrainHighPageInit:
jr_003_6266:
    ld [wTrainPageEnd], a
    xor a
    ld [wTrainPageOff], a
    ld [wTrainRows], a
    ld de, TrainHalfLen
    call ShowTrainPage
    call ClearTextUI
    ret

; Rebuild records and display trains two through five; retain the second-page restart at record index one.
ShowTrains2To5:
ShowC2SchedLow:


    call BuildTrains
    call InitTextBuffer
    call ShowTrainHead
    ld a, TrainRecLen
    ld [wTrainRepeat], a
    ld a, TrainHalfLen
    ld [wTrainPageEnd], a
    xor a
    ld [wTrainPageOff], a
    ld [wTrainRows], a
    ld de, $0000
    call ShowTrainPage
    call ClearTextUI
    ret
