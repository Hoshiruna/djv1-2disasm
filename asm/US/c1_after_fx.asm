
; Fade to the effect UI, mark the case-one exit, show the regional text sequence with its original waits, and fade to white.
ShowC1AfterFx:


    call FadeToWhite
    xor a
    call PlayAudio
    call LoadC1FxUi
    call FadeFromWhite
    ld a, $ff
    ld [wC1Exit], a
    ld a, $3c
    call WaitTicks
    ld a, $00
    ld [wTextCol], a
    ld a, $04
    ld [wTextRow], a
    xor a
    ld [$c890], a
    ld [wTextStartX], a
    ld a, $06
    call ShowUiText
    ld a, $f0
    call WaitTicks
    call ClearUiText
    ld a, $00
    ld [wTextCol], a
    ld a, $04
    ld [wTextRow], a
    ld a, $07
    call ShowUiText
    ld a, $f0
    call WaitTicks
    call ClearUiText
    ld a, $00
    ld [wTextCol], a
    ld a, $04
    ld [wTextRow], a
    ld a, $0b
    call ShowUiText
    ld a, $f0
    call WaitTicks
    ld a, $f0
    call WaitTicks
    call FadeToWhite
    ret

; Disable the LCD through the timer controls, load UI map and object six, restore the LCD, and blank OAM.
LoadC1FxUi:


Call_001_6ddf:
    call RequestTimer
    call DisableLcd
    ld a, $06
    call ReadUiMap
    ld a, $06
    call StageUiObj
    call StopTimer
    call RestoreLcd
    call BlankOam
    ret
