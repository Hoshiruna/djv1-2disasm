
; Apply the original result-bit and mode cleanup conditions, then select text mode one.
FinishText:

Call_000_11ab:
    ld a, [wStateResult]
    and $08
    jr z, jr_000_11ba

    ld a, [wTextMode]
    and $02
    jr nz, jr_000_11bd

    ret


jr_000_11ba:
    call ClearTextUI

jr_000_11bd:
    call SetTextMode1
    ret

; When mode bit 1 is clear, reset the page flag, hide the window, redraw objects, and clear result bit 3.
ClearTextUI:


Call_000_11c1:
    ld a, [wTextMode]
    and $02
    jr nz, jr_000_11de

    ld a, $00
    ld [wTextPageReady], a
    call HideTextWindow
    call DrawRoomObjs
    call SubmitOam
    ld a, [wStateResult]
    and $f7
    ld [wStateResult], a

jr_000_11de:
    ret
