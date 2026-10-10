; Preserve registers while restoring the sprite and hardware Y scroll to zero.
ResetScroll:

    push af
    push bc
    push de
    push hl
    call DrainScroll
    pop hl
    pop de
    pop bc
    pop af
    ret

; Subtract eight from sprite and hardware Y scroll each frame until zero; retain byte wrap.
DrainScroll:


Call_001_6173:
jr_001_6173:
    ld a, [wSpriteScrollY]
    cp $00
    ret z

    sub $08
    ld [wSpriteScrollY], a
    ld [$c184], a
    call DrawRoomObjs
    call SubmitOam
    jr jr_001_6173
