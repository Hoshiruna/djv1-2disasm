
; Call the case-two indexed counter step in bank three and restore the previous ROM bank.
; This indexed script counter is separate from the event pipeline and train clock.
C2CounterCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2Counter
    call PopRomBank
    ret

; Return without reading arguments or changing state.
ScriptNoop:


Call_000_2efb:
    ret

; Read an index and clear the byte at the case-two counter base plus that index.
; Keep the result byte and text mode while zeroing the indexed counter.
ClearC2Counter:


    call ReadArg
    ld c, a
    ld b, $00
    ld hl, wC2Counters
    add hl, bc
    xor a
    ld [hl], a
    ret
