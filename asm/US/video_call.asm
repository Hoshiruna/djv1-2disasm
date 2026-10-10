
; Call bank 2 PlayAnim with the original A, then restore the previous ROM bank.
PlayBankAnim:


Call_000_38a7:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call PlayAnim
    call PopRomBank
    ret

; Call bank 2 StepC2Anim with the original A, then restore the previous ROM bank.
StepBankAnim:


Call_000_38b5:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call StepC2Anim
    call PopRomBank
    ret

; Call bank 1 ReadSceneGfx with the original A, then restore the previous ROM bank.
ReadBankGfx:


Jump_000_38c3:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ReadSceneGfx
    call PopRomBank
    ret

; Call bank 1 DrawCursor with the original A, then restore the previous ROM bank.
DrawBankCursor:


Call_000_38d1:
    push af
    ld a, $01
    call PushRomBank

Call_000_38d7:
    pop af
    call DrawCursor
    call PopRomBank
    ret
