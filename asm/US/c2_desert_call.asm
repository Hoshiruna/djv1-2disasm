
; Move through the desert grid in bank three, then restore the previous ROM bank.
DesertMoveCall:
C2GridMoveCall:


    push af

Jump_000_2ff5:
    ld a, $03
    call PushRomBank
    pop af
    call MoveDesert
    call PopRomBank
    ret
