
; Call bank 2 PlayAnim with the original A, then restore the previous ROM bank.
PlayBankAnim:


Call_000_39d6:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call PlayAnim
    call PopRomBank
    ret

; Call bank 2 StepC2Anim with the original A, then restore the previous ROM bank.
StepBankAnim:


Call_000_39e4:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call StepC2Anim
    call PopRomBank
    ret

; Call bank 1 ReadSceneGfx with the original A, then restore the previous ROM bank.
ReadBankGfx:


    push af
    ld a, $01
    call PushRomBank
    pop af
    call ReadSceneGfx
    call PopRomBank
    ret

; Call bank 1 DrawCursor with the original A, then restore the previous ROM bank.
DrawBankCursor:


Call_000_3a00:
Jump_000_3a00:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawCursor
    call PopRomBank
    ret
