; Restore presence for the six broken-fixture IDs before setting their object flags.
KeepC1Obj:

    ld a, [wArg0]
    cp C1Mirror1Broken
    jr nz, C1KeepMirror2Check

    call SetObjPresent
    ret


; Compare the second broken-mirror ID before restoring object presence.
C1KeepMirror2Check:
jr_002_60ef:
    cp C1Mirror2Broken
    jr nz, C1KeepStreetWindowCheck

    call SetObjPresent
    ret


; Compare the broken street-window ID before restoring object presence.
C1KeepStreetWindowCheck:
jr_002_60f7:
    cp C1StreetWinBroken
    jr nz, C1KeepRoundMirrorCheck

    call SetObjPresent
    ret


; Compare the broken round-mirror ID before restoring object presence.
C1KeepRoundMirrorCheck:
jr_002_60ff:
    cp C1RoundMirrorBroken
    jr nz, C1KeepWallMirrorCheck

    call SetObjPresent
    ret


; Compare the broken wall-mirror ID before restoring object presence.
C1KeepWallMirrorCheck:
jr_002_6107:
    cp C1WallMirrorBroken
    jr nz, C1KeepGunShopWindowCheck

    call SetObjPresent
    ret


; Compare the broken gun-shop-window ID before restoring object presence.
C1KeepGunShopWindowCheck:
jr_002_610f:
    cp C1GunShopWinBroken
    jr nz, C1KeepObjectReturn

    call SetObjPresent
    ret


; Return when no listed broken-object ID matches.
C1KeepObjectReturn:
jr_002_6117:
    ret

; Restore each six-object group when its associated counter is zero.
RestoreC1Objs:

    ld a, [wBullet1Count]
    cp $00
    jr nz, C1RestoreAmmo2ObjCheck

    ld c, $00
    ld hl, ItemObjIds1

; Clear six item flags and restore the BULLET1 stock objects.
C1RestoreAmmo1ObjLoop:
jr_002_6124:
    ld a, [hl+]
    push bc
    call ClearItemFlag
    pop bc
    ld a, c
    add C1ObjectGunShopBullet1Slot1
    push bc
    push af
    call SetObjPresent
    pop af
    call SetObjVisible
    pop bc
    inc c
    ld a, $06
    cp c
    jr nz, C1RestoreAmmo1ObjLoop

; Check the second ammunition count before restoring its object group.
C1RestoreAmmo2ObjCheck:
jr_002_613d:
    ld a, [wBullet2Count]
    cp $00
    jr nz, C1RestoreObjectsDone

    ld c, $00
    ld hl, ItemObjIds

; Clear six item flags and restore the BULLET2 stock objects.
C1RestoreAmmo2ObjLoop:
jr_002_6149:
    ld a, [hl+]
    push bc
    call ClearItemFlag
    pop bc
    ld a, c
    add C1ObjectGunShopBullet2Slot1
    push bc
    push af
    call SetObjPresent
    pop af
    call SetObjVisible
    pop bc
    inc c
    ld a, $06
    cp c
    jr nz, C1RestoreAmmo2ObjLoop

; Return after both count-backed object groups have been checked.
C1RestoreObjectsDone:
jr_002_6162:
    ret

; Map the current ammunition item ID to its stock object by table index.
MapItemObj:

    ld a, [wItemId]
    ld bc, $0000
    ld hl, ItemObjIds

; Scan ItemObjIds for the current item ID.
C1MapItemObjLoop:
jr_002_616c:
    cp [hl]
    jr z, C1MapItemObjFound

    inc hl
    inc bc
    jr C1MapItemObjLoop

; Return the matched item index plus object base $20.
C1MapItemObjFound:
jr_002_6173:
    ld a, c
    add C1ObjectGunShopBullet2Slot1
    ret

ItemObjIds:
    db C1ItemGunShopBullet2Slot1, C1ItemGunShopBullet2Slot2, C1ItemGunShopBullet2Slot3, C1ItemGunShopBullet2Slot4, C1ItemGunShopBullet2Slot5, C1ItemGunShopBullet2Slot6
ItemObjIds1:
    db C1ItemGunShopBullet1Slot1, C1ItemGunShopBullet1Slot2, C1ItemGunShopBullet1Slot3, C1ItemGunShopBullet1Slot4, C1ItemGunShopBullet1Slot5, C1ItemGunShopBullet1Slot6
