
; Read a target byte from the script and enter the head-list deletion path.
ScriptDropHead:


    call ReadArg

; Store target A, scan the head row, delete using that row, and refresh lists.
DropHeadValue:

Call_000_33bc:
    ld [wFindListValue], a

Call_000_33bf:
    call FindHeadValue
    ld a, $01
    ld [wChangeMode], a
    ld a, [wFoundRow]
    ld [wListRow], a
    call DropListHead
    call RefreshLists
    ret

; Call the original carry-controlled head-list scan.
FindHeadValue:


Call_000_33d4:
    call ScanHeadValue
    ret

; Compare the target with the head-list bytes and retain the original carry-controlled loop.
ScanHeadValue:


Call_000_33d8:
    xor a
    ld [wFoundRow], a
    ld c, $07
    ld hl, wWorkList

jr_000_33e1:
    ld a, [wFindListValue]
    cp [hl]
    jr z, jr_000_33f5

    ld a, [wFoundRow]
    inc a
    ld [wFoundRow], a
    inc hl
    inc c
    ld a, $0e

Call_000_33f2:
    cp c
    ; Keep the original carry test: the normal first mismatch returns row one.
    jr c, jr_000_33e1

jr_000_33f5:
    ret
