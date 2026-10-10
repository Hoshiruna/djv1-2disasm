
; Apply regional alternate-target checks and input loops; retain the caller-stack and ROM-bank exit paths.
PickAltTarget:


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_28b7

    ld a, $80
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_2876

    ld a, [wItemType]
    cp $03
    jr nz, jr_000_2868

    ld a, [wItemId]
    cp $08
    jr z, jr_000_2876

    cp $2d
    jr z, jr_000_2876

jr_000_2868:
    call TestAttr0
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_2876

    pop bc
    jp EndBankAction


jr_000_2876:
    ld a, $80
    call ClearObjFlag

jr_000_287b:
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
    ld a, $7f
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_28ad

    ld a, [wStateResult]
    and $04
    jr nz, jr_000_287b

    pop bc
    call PopRomBank
    ret


jr_000_28ad:
    ld a, $7f
    call ClearObjFlag
    pop bc
    call PopRomBank
    ret


jr_000_28b7:
    ld a, $88
    call ReadObjFlag
    jr nz, jr_000_28e1

    call TestAttr0
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_28e1

    ld a, [wSelAction]
    cp $02
    jr z, jr_000_28d8

    ld a, $e5
    call ShowMsg0
    pop bc
    jp EndBankAction


jr_000_28d8:
    ld a, $9e
    call ShowMsg1
    pop bc
    jp EndBankAction


jr_000_28e1:
    ld a, $88
    call ClearObjFlag
    ld a, [wSelAction]
    cp $02
    jr z, jr_000_28f4

    ld a, $a7
    call ShowMsg1
    jr jr_000_28f9

jr_000_28f4:
    ld a, $15
    call ShowMsg1

jr_000_28f9:
    push af
    ld a, $01
    call PushRomBank

Call_000_28ff:
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
    jr nz, jr_000_2926

    ld a, [wStateResult]
    and $04
    jr nz, jr_000_28f9

    pop bc

Jump_000_2922:
    call PopRomBank
    ret


jr_000_2926:
    ld a, $8f
    call ClearObjFlag
    pop bc
    call PopRomBank
    ret
