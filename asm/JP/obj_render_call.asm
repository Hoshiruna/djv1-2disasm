
; Render the current object list in bank two and restore the previous ROM bank.
RenderObjsCall:


Call_000_3958:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    ret
