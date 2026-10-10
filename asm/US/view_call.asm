
; Call FadeFromWhite in bank 1 and restore the previous ROM bank.
FadeIn:


Call_000_37a0:
Jump_000_37a0:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FadeFromWhite
    call PopRomBank
    ret

; Call FadeToWhite in bank 1 and restore the previous ROM bank.
FadeOut:


Call_000_37ae:
Jump_000_37ae:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FadeToWhite
    call PopRomBank
    ret

; Call InitC1View in bank 1 and restore the previous ROM bank.
ReloadC1View:


Call_000_37bc:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call InitC1View
    call PopRomBank
    ret

; Call InitC2View in bank 3 and restore the previous ROM bank.
ReloadC2View:


Call_000_37ca:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call InitC2View
    call PopRomBank
    ret
