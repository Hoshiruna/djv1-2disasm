; Reset object scrolling, rebuild the room list, render it and submit OAM.
RefreshObjs:


Call_000_2666:
    call ResetObjScroll
    call BuildObjList
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    call SubmitOam
    ret
