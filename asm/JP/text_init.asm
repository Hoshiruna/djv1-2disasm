
; Refresh room objects, reset the text buffer state, and show the text window.
InitTextBuffer:


Call_000_13da:
    ld a, $ff
    ld [wSpriteClip], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2TextObj
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    ld a, $12
    ld [wTextWidth], a
    ld a, $08
    ld [wTextHeight], a

Jump_000_13fc:
    xor a
    ld [wTextOriginX], a
    ld [wTextOriginY], a
    call ClearTextBuffer

Call_000_1406:
    xor a
    ld [$c890], a
    ld [wTextStartX], a
    ld [$c894], a
    call ShowTextWindow
    ret
