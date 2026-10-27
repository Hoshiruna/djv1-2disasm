
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
    ld a, $02
    ld [wTextRow], a
    xor a
    ld [wTextFast], a
    ld [wTextStartX], a
    ld a, $06
    call ShowUiText
    ld a, $f0
    call WaitTicks
    call ClearUiText
    ld a, $00
    ld [wTextCol], a
    ld a, $02
    ld [wTextRow], a
    ld a, $07
    call ShowUiText
    ld a, $f0
    call WaitTicks
    call ClearUiText
    ld a, $00
    ld [wTextCol], a
    ld a, $02
    ld [wTextRow], a
    ld a, $0b
    call ShowUiText
    ld a, $f0
    call WaitTicks
    call ClearUiText
    ld a, $00
    ld [wTextCol], a
    ld a, $02
    ld [wTextRow], a
    ld a, $0c
    call ShowUiText
    ld a, $f0
    call WaitTicks
    call ClearUiText
    ld a, $00
    ld [wTextCol], a
    ld a, $02
    ld [wTextRow], a
    ld a, $0d
    call ShowUiText
    ld a, $f0
    call WaitTicks
    ld a, $f0
    call WaitTicks
    call FadeToWhite
    ret

; Load the blank text map and closing OBJ palette with the LCD paused, then restore it and blank OAM.
LoadC1FxUi:


Call_001_6e94:
    call RequestTimer
    call DisableLcd
    ld a, UiMapIdBlankTextPanel
    call ReadUiMap
    ld a, UiPalIdCase1ClosingObjects
    call StageUiObjPal
    call StopTimer
    call RestoreLcd
    call BlankOam
    ret
