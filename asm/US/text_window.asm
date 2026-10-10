
; Set WX to $07 and the regional WY value, then show the window.
ShowTextWindow:


Call_000_173a:
    ld a, $07
    ldh [rWX], a
    ld a, $48
    ldh [rWY], a
    call ShowWindow
    ret

; Clear the sprite clip field and hide the window.
HideTextWindow:


Call_000_1746:
    xor a
    ld [wSpriteClip], a
    call HideWindow
    ret
