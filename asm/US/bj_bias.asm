
; Select dealing mode from the cash high byte, chip count, and object flag $0e; preserve the original exit marker.
SetBJBias:

    ld a, [wC2Cash+1]
    cp $10
    jr nc, BJBiasHighFunds

    ld a, [wChips]
    cp $c8
    jr c, BJBiasLowFunds

; Check object flag 0E after high cash or chip threshold.
BJBiasHighFunds:
jr_029_6f54:
    ld a, $0e
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, BJBiasSetOne

    ld a, $ff
    ld [wBJExit], a

; Select dealing bias mode one.
BJBiasSetOne:
jr_029_6f65:
    ld a, $01
    jr BJBiasStoreMode

; Check object flag 0E below both resource thresholds.
BJBiasLowFunds:
jr_029_6f69:
    ld a, $0e
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, BJBiasStoreMode

    ld a, $02

; Store the selected dealing bias mode.
BJBiasStoreMode:
jr_029_6f77:
    ld [wBJBias], a
    ret
