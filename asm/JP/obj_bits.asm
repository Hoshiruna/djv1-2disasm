; Bit masks in the fixed ROM bank.
DEF BitMasks EQU $19a9
DEF ClearMasks EQU $384b

; A = object ID; read its visibility bit from wObjVisible.
ReadObjVisible:

Call_000_2753:
    call SelectVisible
    call ReadBit
    ret

; Read an object ID from the script, then enter SetObjVisible.
ScriptShowObj:


    call ReadArg
; A = object ID; set its visibility bit.
SetObjVisible:

Call_000_275d:
    call SelectVisible
    ld bc, BitMasks
    jp SetBit

; Read an object ID from the script, then enter ClearObjVisible.
ScriptHideObj:


    call ReadArg
; A = object ID; clear its visibility bit.
ClearObjVisible:

Call_000_2769:
    call SelectVisible
    ld bc, ClearMasks
    jp ClearBit

; Select the object ID and visibility bitmap at wObjVisible.
SelectVisible:

Call_000_2772:
    ld [wBitId], a
    ld bc, wObjVisible
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a
    ret

; A = object ID; read its presence bit from wObjPresent.
ReadObjPresent:

Call_000_2781:
    call SelectPresent
    call ReadBit
    ret

; A = object ID; set its presence bit.
SetObjPresent:

Call_000_2788:
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

Call_000_279e:
    call SelectPresent
    ld bc, ClearMasks
    jp ClearBit

; Select the object ID and presence bitmap at wObjPresent.
SelectPresent:

Call_000_27a7:
    ld [wBitId], a
    ld bc, wObjPresent
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a
    ret
