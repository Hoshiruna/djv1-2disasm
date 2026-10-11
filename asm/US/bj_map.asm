
; Pause the timer and LCD, load card graphics and UI map five, then restore them.
LoadBJMap:


Call_029_6971:
    call RequestTimer
    call DisableLcd
    call LoadCardGfx
    ld a, $05
    call ReadUiMap
    call StopTimer
    call RestoreLcd
    ret
