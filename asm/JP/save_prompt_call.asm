
; Run save confirmation in bank two and restore the previous ROM bank.
SavePromptCall:


Call_000_3907:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RunSavePrompt
    call PopRomBank
    ret
