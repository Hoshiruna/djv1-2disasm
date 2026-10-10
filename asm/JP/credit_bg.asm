
; Clear and submit OAM, read the scene background in bank one, then continue into ending graphics loading.
LoadCreditBg:


Call_000_3a1c:
    call ClearOam
    call SubmitOam
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ReadSceneBg

; Pop the previously pushed ROM bank, then continue into ending graphics loading.
FinishCreditBg:
    call PopRomBank

; Request the timer, disable LCD, load indexed bank-$3e map and palette data, restore LCD and blank OAM.
LoadCreditGfx:

Call_000_3a2f:
    call RequestTimer
    call DisableLcd
    ld a, [wCreditIndex]
    push af
    ld a, $3e
    call PushRomBank
    pop af
    call LoadCreditMap
    call PopRomBank
    call StopTimer
    call RestoreLcd
    call BlankOam
    ret
