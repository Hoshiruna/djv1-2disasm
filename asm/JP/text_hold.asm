
; Set result bit 3 and consume the original extra argument only in Case I.
ScriptHoldText:


Call_000_2b9c:
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


Call_000_2bae:
    ld a, [wSavedListMode]
    cp $00
    jr z, jr_000_2bbb

    ld [wChangeMode], a
    call RefreshLists

; Clear result bit 3 and apply the original text finishing conditions.
ResumeTextUI:

Call_000_2bbb:
Jump_000_2bbb:
jr_000_2bbb:
    ld a, [wStateResult]
    and $f7
    ld [wStateResult], a
    call FinishText
    ret

; Clear result bit 3 and return.
ClearTextHold:


Call_000_2bc7:
Jump_000_2bc7:
    ld a, [wStateResult]
    and $f7

Call_000_2bcc:
    ld [wStateResult], a
    ret
