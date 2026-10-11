; Reset object scrolling, rebuild the room list, render it and submit OAM.
RefreshObjs:


Call_000_27b6:
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
