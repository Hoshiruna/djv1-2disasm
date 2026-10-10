
; Run the original regional text page confirmation path.
WaitTextPage:


Call_000_1315:
Jump_000_1315:
    ld a, [$c890]
    cp $00
    jr z, jr_000_131f

    call SubmitMapQueue

jr_000_131f:
    xor a
    ld [$c890], a
    ld [$c891], a
    call WaitTextConfirm
    ret

; Apply the regional line control: Japan waits for confirmation before advancing the row.
TextLineControl:


Jump_000_132a:
    jp TextNewline

; In window mode, reset the page through the original regional wait and initialization order.
ResetTextPage:


Jump_000_132d:
    ld a, [wTextMode]
    and $02
    ret nz

    xor a

Call_000_1334:
    ld [wWaitFrame], a
    ld [wWaitTick], a
    jp InitTextBuffer
