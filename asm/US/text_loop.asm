
; Call the original normal-mode text start routine.
ShowTextMsg:


Call_000_1113:
    call StartTextMsg
    ret

; Select text mode two and enter the regional text loop.
Mode2Text:


Call_000_1117:
    call SetTextMode2
    jr jr_000_1122

; Select text mode one, initialize the regional text buffer, and enter the loop.
StartTextMsg:

Call_000_111c:
    call SetTextMode1
    call InitTextBuffer

; Read and handle regional text codes, preserving the original end and wait controls.
ReadTextLoop:

Call_000_1122:
jr_000_1122:
    call ReadTextByte
    ld [$c660], a
    cp $5f
    jr z, jr_000_118c

    cp $1f
    jr z, jr_000_11a3

    call DispatchTextCtrl

Call_000_1133:
    jr jr_000_1122
