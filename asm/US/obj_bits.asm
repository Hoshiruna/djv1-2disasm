; Bit masks in the fixed ROM bank.
DEF BitMasks EQU $1859
DEF ClearMasks EQU $36ff

; A = object ID; read its visibility bit from wObjVisible.
ReadObjVisible:

Call_000_2603:
Jump_000_2603:
    call SelectVisible
    call ReadBit
    ret

; Read an object ID from the script, then enter SetObjVisible.
ScriptShowObj:


    call ReadArg
; A = object ID; set its visibility bit.
SetObjVisible:

Call_000_260d:
    call SelectVisible
    ld bc, BitMasks
    jp SetBit

; Read an object ID from the script, then enter ClearObjVisible.
ScriptHideObj:


    call ReadArg
; A = object ID; clear its visibility bit.
ClearObjVisible:

Call_000_2619:
    call SelectVisible
    ld bc, ClearMasks
    jp ClearBit

; Select the object ID and visibility bitmap at wObjVisible.
SelectVisible:

Call_000_2622:
    ld [wBitId], a
    ld bc, wObjVisible
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a
    ret

; A = object ID; read its presence bit from wObjPresent.
ReadObjPresent:

Call_000_2631:
    call SelectPresent
    call ReadBit
    ret

; A = object ID; set its presence bit.
SetObjPresent:

Call_000_2638:
    call SelectPresent
    ld bc, BitMasks
    jp SetBit
; Map the current item ID to its scene object, then clear that object presence bit.
ClearItemObj:


    push af
    ld a, $02
    call PushRomBank
    pop af
    call MapItemObj
    call PopRomBank
; A = object ID; clear its presence bit.
ClearObjPresent:

Call_000_264e:
    call SelectPresent

Jump_000_2651:
    ld bc, ClearMasks
    jp ClearBit

; Select the object ID and presence bitmap at wObjPresent.
SelectPresent:

Call_000_2657:
    ld [wBitId], a
    ld bc, wObjPresent
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a
    ret
