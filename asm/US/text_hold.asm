
; Set result bit 3 and consume the original extra argument only in Case I.
ScriptHoldText:


Call_000_2a4c:
    ld a, [wStateResult]
    or $08
    ld [wStateResult], a
    ld a, [wCaseId]
    cp $00
    ret nz

    call ReadArg
    ret

; Restore a nonzero saved list mode and refresh lists, then resume text cleanup.
RestoreTextLists:


Call_000_2a5e:
    ld a, [wSavedListMode]
    cp $00

Jump_000_2a63:
    jr z, jr_000_2a6b

    ld [wChangeMode], a
    call RefreshLists

; Clear result bit 3 and apply the original text finishing conditions.
ResumeTextUI:

Call_000_2a6b:
Jump_000_2a6b:
jr_000_2a6b:
    ld a, [wStateResult]
    and $f7
    ld [wStateResult], a
    call FinishText
    ret

; Clear result bit 3 and return.
ClearTextHold:


Call_000_2a77:
Jump_000_2a77:
    ld a, [wStateResult]
    and $f7
    ld [wStateResult], a
    ret
