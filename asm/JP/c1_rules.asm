
; Handle rooms $1e, $20, $24 and $4a..$4d; clear result bit 0 for other rooms.
CheckC1Rooms:


Call_002_6d28:
    ld a, [wRoomId]
    cp C1RoomIdAlleyMuggerEncounter
    jr z, C1Room1EEvent

    cp C1RoomIdArmedWomanEncounter
    jr z, C1Room20Event

    cp C1RoomIdAlligatorEncounter
    jr z, C1Room24Event

    cp C1RoomIdMuggerJoeStreet
    jp z, C1Room4AFx

    cp C1RoomIdMuggerNewsstand
    jp z, C1Room4AFx

    cp C1RoomIdMuggerGunShopStreet
    jr z, C1Room4AFx

    cp C1RoomIdMuggerPeoria
    jr z, C1Room4AFx

    call ClearResult
    ret


; Run the room-$1e effect, cash removal, and message sequence.
C1Room1EEvent:
jr_002_6d4d:
    ld a, C1FxIdImpact
    ld [wFxId], a
    call FinishC1Effect
    ld a, $e4
    call ShowMsg1 ; Message Text0FMessage64: 「バカに してるのか!」[PAGE] / おとこは いきなり おれに / なぐりかかってきた。[PAGE] / おとこの ひだりパンチが おれの / がんめんへ もろに ...
    call ClearC1Cash
    ld a, [wStateResult]
    or $08
    ld [wStateResult], a
    ld a, $e5
    call ShowMsg1 ; Message Text0FMessage65: いつつつっ・・・。[PAGE] / どのくらいのじかん きを / うしなって いたのだろうか・・・。[PAGE] / めを あけようとして みぎめに / いたみを かんじ...
    ld a, $e7
    call ShowMsg1 ; Message Text0FMessage67: ない!!! / コインが ぜんぶ![PAGE] / ・・・クソッ!! / なんてこった![END]
    call ResumeTextUI
    call SetResult
    ret


; Run the room-$20 effects and set result bit six.
C1Room20Event:
jr_002_6d76:
    ld a, C1FxIdGunshot
    ld [wFxId], a
    call FinishC1Effect
    ld a, C1FxIdArmedWomanFires
    ld [wFxId], a
    call FinishC1Effect
    ld a, $e6
    call ShowMsg2 ; Message Text0DMessage66: ・・・・・・! / いきなり おんなは バッグから / ピストルを とりだして うった。[END]
    ld a, C1FxIdDefeat
    ld [wFxId], a
    call FinishC1Effect
    ld a, $62
    call ShowMsg2 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ld a, [wStateResult]
    or $40
    ld [wStateResult], a
    call SetResult
    ret


; Run the room-$24 reply and effect sequence.
C1Room24Event:
jr_002_6da4:
    ld a, $37
    call ShowMsg1 ; Message Text0EMessage37: ギャーッ![PAGE] / ・・・・・・むざんにも ワニに / くわれてしまった。[END]
    ld a, C1FxIdDefeat
    ld [wFxId], a
    call FinishC1Effect
    ld a, $62
    call ShowMsg2 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ld a, [wStateResult]
    or $40
    ld [wStateResult], a
    call SetResult
    ret

; Run the shared effect and message sequence for rooms $4a through $4d.
C1Room4AFx:


Jump_002_6dc2:
jr_002_6dc2:
    ld a, C1FxIdGunshot
    ld [wFxId], a
    call FinishC1Effect
    ld a, $f0
    call ShowMsg1 ; Message Text0FMessage70: おとこは とつぜん トリガーを / ひいた![PAGE] / ちくしょう!!! / やられてしまった・・・。[END]
    ld a, C1FxIdDefeat
    ld [wFxId], a
    call FinishC1Effect
    ld a, $62
    call ShowMsg2 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ld a, [wStateResult]
    or $40
    ld [wStateResult], a
    ld a, C1MuggerHit3
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1MuggerRoomHandled

    ld a, C1MuggerFatalEncounter
    call SetObjFlag

; Return a handled result after checking the third mugger-hit flag.
C1MuggerRoomHandled:
jr_002_6df5:
    call SetResult
    ret

; Handle first-slot type 0/value $12 for open and close; clear result bit 0 before checking.
CheckC1Op12:


Call_002_6df9:
    call ClearResult
    ld a, [wItemType]
    cp $00
    ret nz

    ld a, [wItemId]
    cp $12
    ret nz

    ld a, [wSelAction]
    cp SelActionOpen
    jr z, C1SpigotOpenCheck

    cp SelActionClose
    jr z, C1SpigotCloseCheck

    ret


; Check whether the spigot is already open before changing its flags.
C1SpigotOpenCheck:
jr_002_6e14:
    ld a, C1SpigotOpen
    call ReadObjFlag
    ld a, $6a
    ld [wTextName0], a
    ld a, [wStateResult]
    and $01
    jr z, C1SpigotSetOpen

    ld a, $01
    call ShowMsg2 ; Message Text10Message01: [OBJECT_WRAM:37C5]は あいている。[END]
    call SetResult
    ret


; Clear the closed flag, set the open flag, and refresh objects.
C1SpigotSetOpen:
jr_002_6e2e:
    ld a, $00
    call ShowMsg2 ; Message Text10Message00: [OBJECT_WRAM:37C5]を あけた。[END]
    ld a, C1SpigotClosed
    call ClearObjFlag
    ld a, C1SpigotOpen
    call SetObjFlag
    call RefreshObjs
    call SetResult
    ret


; Check whether the spigot is already closed before changing its flags.
C1SpigotCloseCheck:
jr_002_6e44:
    ld a, C1SpigotClosed
    call ReadObjFlag
    ld a, $6a
    ld [wTextName0], a
    ld a, [wStateResult]
    and $01
    jr z, C1SpigotSetClosed

    ld a, $03
    call ShowMsg2 ; Message Text10Message03: [OBJECT_WRAM:37C5]は しまっている。[END]
    call SetResult
    ret


; Clear the open flag, set the closed flag, and refresh objects.
C1SpigotSetClosed:
jr_002_6e5e:
    ld a, $02
    call ShowMsg2 ; Message Text10Message02: [OBJECT_WRAM:37C5]を しめた。[END]
    ld a, C1SpigotOpen
    call ClearObjFlag
    ld a, C1SpigotClosed
    call SetObjFlag
    call RefreshObjs
    call SetResult
    ret

; Handle first-slot type 0/value $3f in scene $44 for close; clear result bit 0 before checking.
CheckC1Op3f:


Call_002_6e74:
    call ClearResult
    ld a, [wItemType]
    cp $00
    ret nz

    ld a, [wItemId]
    cp $3f
    ret nz

    ld a, [wSceneId]
    cp $44
    ret nz

    ld a, [wSelAction]
    cp SelActionClose
    ret nz

    ld a, $05
    ld [wItemType], a
    ld a, $47
    ld [wItemId], a
    call ClearSelStateView
    ld a, C1TrunkUnlocked
    call ClearObjFlag
    call SetResult
    ret
