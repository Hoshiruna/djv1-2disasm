
; Set WX to $07 and the regional WY value, then show the window.
ShowTextWindow:

Call_000_16ad:
    ld a, $07
    ldh [rWX], a
    ld a, $47
    ldh [rWY], a
    call ShowWindow

Call_000_16b8:
    ret

; Clear the sprite clip field and hide the window.
HideTextWindow:


Call_000_16b9:
    xor a
    ld [wSpriteClip], a

Jump_000_16bd:
    call HideWindow
    ret
