
; Apply regional alternate-target checks and input loops; retain the caller-stack and ROM-bank exit paths.
PickAltTarget:


    ld a, [wCaseId]
    cp $00
    jr nz, C2AltTargetCheck

    ld a, C1AltTargetBypass
    call ReadObjFlag

Jump_000_26ff:
    ld a, [wStateResult]
    and $01
    jr nz, C1AltTargetBegin

    ld a, [wItemType]
    cp $03
    jr nz, C1AltTargetCheckAttr

    ld a, [wItemId]
    cp $08
    jr z, C1AltTargetBegin

    cp $2d
    jr z, C1AltTargetBegin

; Check attribute zero unless an ammunition item or bypass flag permits selection.
C1AltTargetCheckAttr:
jr_000_2718:
    call TestAttr0
    ld a, [wStateResult]
    and $01
    jr nz, C1AltTargetBegin

    pop bc
    jp EndBankAction


; Clear the bypass flag before entering alternate-target selection.
C1AltTargetBegin:
jr_000_2726:
    ld a, C1AltTargetBypass
    call ClearObjFlag

; Poll the cursor and process alternate input until the selection ends.
C1AltTargetInputLoop:
jr_000_272b:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PollCursor
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af

Call_000_273f:
    call HandleAltInput
    call PopRomBank
    ld a, C1AltTargetCancelled
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1AltTargetCancelExit

    ld a, [wStateResult]
    and $04
    jr nz, C1AltTargetInputLoop

    pop bc
    call PopRomBank
    ret


; Clear the cancellation flag and restore the original caller and ROM-bank exit.
C1AltTargetCancelExit:
jr_000_275d:
    ld a, C1AltTargetCancelled
    call ClearObjFlag
    pop bc
    call PopRomBank
    ret


; Check the Case II bypass flag and attribute-zero requirement.
C2AltTargetCheck:
jr_000_2767:
    ld a, $88
    call ReadObjFlag
    jr nz, C2AltTargetBegin

    call TestAttr0
    ld a, [wStateResult]
    and $01
    jr nz, C2AltTargetBegin

    ld a, [wSelAction]
    cp $02
    jr z, C2AltTargetAction2Reject

    ld a, $e5
    call ShowMsg0
    pop bc
    jp EndBankAction


; Show the action-two rejection and end the banked action.
C2AltTargetAction2Reject:
jr_000_2788:
    ld a, $9e
    call ShowMsg1
    pop bc
    jp EndBankAction


; Clear the Case II bypass flag and choose the selection prompt.
C2AltTargetBegin:
jr_000_2791:
    ld a, $88
    call ClearObjFlag
    ld a, [wSelAction]
    cp $02
    jr z, C2AltTargetAction2Prompt

    ld a, $a7
    call ShowMsg1
    jr C2AltTargetInputLoop

; Show the alternate-target prompt for action two.
C2AltTargetAction2Prompt:
jr_000_27a4:
    ld a, $15
    call ShowMsg1

; Poll the cursor and process alternate input using the Case II flags.
C2AltTargetInputLoop:
jr_000_27a9:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PollCursor
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call HandleAltInput
    call PopRomBank
    ld a, $8f
    call ReadObjFlag
    jr nz, C2AltTargetCancelExit

    ld a, [wStateResult]
    and $04
    jr nz, C2AltTargetInputLoop

    pop bc
    call PopRomBank
    ret


; Clear the Case II cancellation flag and restore the banked caller exit.
C2AltTargetCancelExit:
jr_000_27d6:
    ld a, $8f
    call ClearObjFlag
    pop bc
    call PopRomBank
    ret
