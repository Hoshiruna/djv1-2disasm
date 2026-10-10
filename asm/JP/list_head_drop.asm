
; Read a target byte from the script and enter the head-list deletion path.
ScriptDropHead:


    call ReadArg

; Store target A, scan the head row, delete using that row, and refresh lists.
DropHeadValue:

Call_000_3508:
    ld [wFindListValue], a
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


Call_000_3520:
    call ScanHeadValue
    ret

; Compare the target with the head-list bytes and retain the original carry-controlled loop.
ScanHeadValue:


Call_000_3524:
    xor a
    ld [wFoundRow], a
    ld c, $08
    ld hl, wWorkList+1

jr_000_352d:
    ld a, [wFindListValue]
    cp [hl]
    jr z, jr_000_3541

    ld a, [wFoundRow]
    inc a
    ld [wFoundRow], a
    inc hl
    inc c
    ld a, $10
    cp c
    ; Keep the original carry test: the normal first mismatch returns row one.
    jr c, jr_000_352d

jr_000_3541:
    ret
