
; Read two script operands, then append and apply their type/value record.
ScriptAddChange:


    call ReadArgs2

; Append the current operands through bank 3; preserve the previous ROM bank.
AddChange:

Call_000_2578:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call AppendChange
    call PopRomBank
    ret
