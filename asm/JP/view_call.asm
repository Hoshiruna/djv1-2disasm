
; Call FadeFromWhite in bank 1 and restore the previous ROM bank.
FadeIn:


Call_000_38cf:
Jump_000_38cf:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FadeFromWhite
    call PopRomBank
    ret

; Call FadeToWhite in bank 1 and restore the previous ROM bank.
FadeOut:


Call_000_38dd:
Jump_000_38dd:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FadeToWhite
    call PopRomBank
    ret

; Call InitC1View in bank 1 and restore the previous ROM bank.
ReloadC1View:


Call_000_38eb:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call InitC1View
    call PopRomBank

Jump_000_38f8:
    ret

; Call InitC2View in bank 3 and restore the previous ROM bank.
ReloadC2View:


Call_000_38f9:
    push af
    ld a, $03
    call PushRomBank

Jump_000_38ff:
    pop af
    call InitC2View
    call PopRomBank
    ret
