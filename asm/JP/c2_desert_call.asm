
; Move through the desert grid in bank three, then restore the previous ROM bank.
DesertMoveCall:
C2GridMoveCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call MoveDesert
    call PopRomBank

Jump_000_3151:
    ret
