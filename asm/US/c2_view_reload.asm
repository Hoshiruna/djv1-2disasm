
; Load case-two palettes and select its scene through bank three, then call ReloadScene.
ReloadC2Map:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call LoadC2Pal
    call PopRomBank
    push af

Call_000_3050:
    ld a, $03
    call PushRomBank
    pop af
    call PickC2Scene
    call PopRomBank
    call ReloadScene
    ret
