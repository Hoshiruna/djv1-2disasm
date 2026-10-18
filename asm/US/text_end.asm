
; Apply the original result-bit and mode cleanup conditions, then select text mode one.
FinishText:

Call_000_11ab:
    ld a, [wStateResult]
    and $08
    jr z, FinishTextClearUi

    ld a, [wTextMode]
    and $02
    jr nz, FinishTextSetMode

    ret


; Clear the text interface when the result and mode require it.
FinishTextClearUi:
jr_000_11ba:
    call ClearTextUI

; Select text mode one at the end of text.
FinishTextSetMode:
jr_000_11bd:
    call SetTextMode1
    ret

; When mode bit 1 is clear, reset the page flag, hide the window, redraw objects, and clear result bit 3.
ClearTextUI:


Call_000_11c1:
    ld a, [wTextMode]
    and $02
    jr nz, ClearTextUiReturn

    ld a, $00
    ld [wTextPageReady], a
    call HideTextWindow
    call DrawRoomObjs
    call SubmitOam
    ld a, [wStateResult]
    and $f7
    ld [wStateResult], a

; Return after the conditional text-interface cleanup.
ClearTextUiReturn:
jr_000_11de:
    ret
