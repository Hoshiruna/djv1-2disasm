
; Load case-two palettes and select its scene through bank three, then call ReloadScene.
ReloadC2Map:


    push af
    ld a, $03

Call_000_3195:
    call PushRomBank

Call_000_3198:
    pop af
    call LoadC2Pal
    call PopRomBank
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PickC2Scene
    call PopRomBank
    call ReloadScene
    ret
