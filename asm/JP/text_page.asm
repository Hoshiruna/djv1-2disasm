
; Apply the regional line control: Japan waits for confirmation before advancing the row.
TextLineControl:


    call WaitTextConfirm
    jp TextNewline

; Run the original regional text page confirmation path.
WaitTextPage:


Call_000_1354:
    jp WaitTextConfirm

; In window mode, reset the page through the original regional wait and initialization order.
ResetTextPage:


    ld a, [wTextMode]
    and $02
    ret nz

    call WaitTextConfirm
    call InitTextBuffer
    xor a
    ld [wWaitFrame], a
    ld [wWaitTick], a
    ret
