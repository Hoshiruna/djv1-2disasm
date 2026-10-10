
; Read a frame count and run the existing object-list wait loop.
ScriptWaitObjs:


    call ReadArg
    call WaitObjFrames
    ret

; Render and submit objects once per frame; input zero retains the original 256-frame loop.
WaitObjFrames:


Call_000_2ad5:
jr_000_2ad5:
    push af
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    call SubmitOam
    call WaitFrame
    pop af
    dec a
    jr nz, jr_000_2ad5

    ret
