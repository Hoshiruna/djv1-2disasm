
; Wait sixteen ticks, call the object-pair effect once, then fall through and execute it a second time.
BlinkObjTwice:


    ld a, $10
    call WaitTicks
    call BlinkObjPair

; Hide object $0d, draw object $0e for forty-eight ticks, then restore their visibility and wait another forty-eight ticks.
BlinkObjPair:

Call_000_30c6:
    ld a, $0d
    call ClearObjVisible
    call BuildObjList
    ld a, $0e
    ld [wDrawObj], a
    call SetObjVisible
    push af
    ld a, $02
    call PushRomBank
    pop af
    call AddRoomObj
    call PopRomBank
    call ResetObjScroll
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank

Call_000_30f3:
    call SubmitOam
    ld a, $30
    call WaitTicks
    ld a, $0e
    call ClearObjVisible
    ld a, $0d
    call SetObjVisible
    call RefreshObjs
    ld a, $30
    jp WaitTicks
