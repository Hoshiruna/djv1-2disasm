
; Clear the selected Case I cabinet object presence.
ClearC1Pair:
    ld a, [wCaseId]
    cp $00
    ret nz

    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, C1ClearPairReturn

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp C1ContainerDoctorLockedCabinet
    jr nz, C1ClearPairSecond

    ld a, C1ObjectDoctorCabinet
    call ClearObjPresent
    jr C1ClearPairReturn

; Check the Ace cabinet before clearing its object presence.
C1ClearPairSecond:
jr_002_6532:
    cp C1ContainerAceOfficeCabinet
    jr nz, C1ClearPairReturn

    ld a, C1ObjectAceCabinet
    call ClearObjPresent

; Return after the Case I paired-object clearing checks.
C1ClearPairReturn:
jr_002_653b:
    ret

; Set the selected Case I cabinet object presence.
KeepC1Pair:

    ld a, [wCaseId]
    cp $00
    ret nz

    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, C1KeepPairReturn

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp C1ContainerDoctorLockedCabinet
    jr nz, C1KeepPairSecond

    ld a, C1ObjectDoctorCabinet
    call SetObjPresent
    jr C1KeepPairReturn

; Check the Ace cabinet before setting its object presence.
C1KeepPairSecond:
jr_002_6567:
    cp C1ContainerAceOfficeCabinet
    jr nz, C1KeepPairReturn

    ld a, C1ObjectAceCabinet
    call SetObjPresent

; Return after the Case I paired-object presence checks.
C1KeepPairReturn:
jr_002_6570:
    ret
