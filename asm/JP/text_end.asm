
; Apply the original result-bit and mode cleanup conditions, then select text mode one.
FinishText:

Call_000_1103:
    ld a, [wStateResult]
    and $08
    jr z, jr_000_1112

    ld a, [wTextMode]
    and $02
    jr nz, jr_000_1115

    ret


jr_000_1112:
    call ClearTextUI

jr_000_1115:
    call SetTextMode1
    ret

; When mode bit 1 is clear, reset the page flag, hide the window, redraw objects, and clear result bit 3.
ClearTextUI:


Call_000_1119:
    ld a, [wTextMode]
    and $02
    jr nz, jr_000_1136

    ld a, $00
    ld [wTextPageReady], a
    call HideTextWindow
    call DrawRoomObjs
    call SubmitOam
    ld a, [wStateResult]

Call_000_1131:
    and $f7

Call_000_1133:
    ld [wStateResult], a

jr_000_1136:
    ret
