
; Call the bank-two audio selection screen, then refresh lists if that call returns.
AudioTestCall:


Jump_000_1c45:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call AudioTest
    call PopRomBank
    call RefreshLists
    ret
