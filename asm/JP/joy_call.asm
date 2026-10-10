
; Select bank 1, read joypad state, then restore the previous ROM bank.
PollJoy:


Call_000_0456:
    ld a, $01
    call PushRomBank

Call_000_045b:
    call ReadJoy
    jp PopRomBank
