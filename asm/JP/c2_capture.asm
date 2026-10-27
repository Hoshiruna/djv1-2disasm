
; In rooms $0a/$0e/$0f/$10, advance the guard timer; on step 40 the casino guard attacks Ace.
StepC2Guard:
StepC2FourRooms:

Call_003_5b25:
    ld a, [wRoomId]
    cp RoomVegasLift4
    jr z, TickGuardAttack

    cp RoomVegasHall4
    jr z, TickGuardAttack

    cp RoomVegasVentiniOffice
    jr z, TickGuardAttack

    cp RoomVegasMaloneOffice
    ret nz

; Advance the guard timer and attack only on the original fortieth step.
TickGuardAttack:

jr_003_5b37:
    ld a, [wC2GuardTick]
    inc a
    ld [wC2GuardTick], a
    cp GuardAttackStep
    ret nz

    call ResetObjScroll
    ld a, $6b
    call ShowMsg0 ; Message Text12Message6B: しまった! / ようじんぼうに みつかった![END]
    ld a, $09
    call PlayAudio
    ld a, FxBouncer
    call BeginC2Fx
    ld a, $78
    call WaitTicks

; Show the remaining guard attack text, mark its event and play the exit effect.
EndGuardAttack:

jr_003_5b58:
    ld a, $6c
    call ShowMsg0 ; Message Text12Message6C: 「この コソドロめ! /  ここへ しのびこんで くるとは /  とんでもない やろうだ![PAGE] /  ・・・しんでもらうぜ!」[END]
    call RepeatCue10
    ld a, $3c
    call WaitTicks
    ld a, $6d
    call ShowMsg0 ; Message Text12Message6D: マシンガンが ごうおんを たてながらおれの からだを ハチのすにした。[PAGE] / ・・・おかげで おれは えいえんの / ねむりに つくことになった・・・。[END]
    ld a, [wC2EventBits]
    or EvtGuard
    ld [wC2EventBits], a
    jp PlayExitEffect

; In the Vegas hamper, start transport on timer step five and retain the original frisking outcomes.
StepC2Hamper:

; In room $0d, start dumpster transport on timer step five; retain the item-dependent capture and room transition.
StepC2Dump:
StepC2Room0D:


Call_003_5b75:
    ld a, [wRoomId]
    cp RoomVegasHamper
    ret nz

    ld a, [wC2HamperTick]
    inc a
    ld [wC2HamperTick], a
    cp HamperRideWait
    ret nz

    call ResetObjScroll
    call ScriptHoldText
    ld a, C2StateVegasHamperOpen
    call ReadStateBit
    jr z, StartHamperRide

    ld a, $a8
    call ShowMsg2 ; Message Text17Message28: とつぜん ふたが しまった。[END]
    ld a, $12
    call PlayAudio
    ld a, C2StateVegasHamperOpen
    call ClearStateView

; Play the original transport and arrival sequence, then search the carried items.
StartHamperRide:

jr_003_5ba1:
    xor a
    call PlayAudio
    ld a, $a9
    call ShowMsg2 ; Message Text17Message29: おれが はいっているのに きづかず / だれかが せんたくものいれを / うごかしはじめた。[PAGE] / トラックに のせられたようだ。 / しばらく ドライブを た...
    ld a, $12
    call PlayAudio
    ld a, C2StateVegasHamperOpen
    call SetStateDraw
    ld a, $aa
    call ShowMsg2 ; Message Text17Message2A: ・・・うっ! / まぶしい!![PAGE] / まわりを みようとして めを / ほそめてみると ふたりの おとこが / おれを じっと みていた![END]
    call BeginGoonsFx
    ld a, $78
    call WaitTicks
    ld a, $a6
    call ShowMsg2 ; Message Text17Message26: ふたりの おとこが おれの / ボディーチェックを はじめた。[END]
    ld a, C2FriskLetter
    ld [wFindListValue], a
    call FindListValue
    ld a, [wStateResult]
    and $01
    jr nz, FriskLooseLetter

    ld a, C2Envelope1
    ld [wFindListValue], a
    call FindListValue
    ld a, [wStateResult]
    and $01
    jr z, CheckFriskPhoto

    ld a, C2FriskLetter
    call ReadItemFlag
    jr z, FriskPackedLetter

; Check for the original photo after no qualifying letter was found.
CheckFriskPhoto:

jr_003_5beb:
    ld a, C2Photo
    ld [wFindListValue], a
    call FindListValue
    ld a, [wStateResult]
    and $01
    jr nz, DieFriskPhoto

; Show the original fatal frisking reply when neither the qualifying letter nor photo was found.
DieFriskEmpty:

    ld a, $ab
    call ShowMsg2 ; Message Text17Message2B: そのうち おれを いかしておいても / まったく いみが ないと / おもったのだろう・・・。[PAGE] / ふたりは はなしを はじめた。[PAGE] / 「こいつが...
    call ResumeTextUI
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    jp PlayExitEffect

; Play the original fatal frisking outcome when only the photo is found.
DieFriskPhoto:


jr_003_5c14:
    ld a, $ac
    call ShowMsg2 ; Message Text17Message2C: そのうち ふたりは シーゲルが / 「D・Y」という イニシャルの / おとこと あくしゅしている / しゃしんを みつけた。[PAGE] / 「おい ムース! /  こ...
    call ResumeTextUI
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    jp PlayExitEffect

; Handle the original letter found through the packed list path.
FriskPackedLetter:


jr_003_5c2e:
    ld a, $ad
    call ShowMsg2 ; Message Text17Message2D: そのうち ふたりは ボンドウェルの / てがみを みつけた。[PAGE] / 「おい みろよ ムース! /  ボスあての てがみだぜ。」[PAGE] / 「・・・そのよう...
    call ResumeTextUI
    call FlushChangesCall
    ld a, $04
    ld [wArg0], a
    ld a, $06
    ld [wArg1], a
    call AddChange
    ld a, $01
    ld a, C2FriskLetter
    ld [wArg0], a
    call DropHeadValue
    ld a, $01
    jr TakeFriskLetter

; Remove the original letter found directly in the list.
FriskLooseLetter:

jr_003_5c54:
    ld a, $ad
    call ShowMsg2 ; Message Text17Message2D: そのうち ふたりは ボンドウェルの / てがみを みつけた。[PAGE] / 「おい みろよ ムース! /  ボスあての てがみだぜ。」[PAGE] / 「・・・そのよう...
    call ResumeTextUI
    call DropFoundList
    ld a, $01
    call WaitTicks

; Set the original letter state and remove a carried photo if present.
TakeFriskLetter:

jr_003_5c64:
    ld a, C2FriskLetter
    call SetItemState
    ld a, C2Photo
    ld [wFindListValue], a
    call FindListValue
    ld a, [wStateResult]
    and $01
    jr z, TakeFriskGun

    call DropFoundList
    ld a, $01
    call WaitTicks
    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a

; Remove the original packed gun item if present before entering the laundry.
TakeFriskGun:

; Remove original packed value 89 if present before entering the laundry.
TakeFriskGroup:

jr_003_5c87:
    ld a, C2Gun
    ld [wFindListValue], a
    call FindListValue
    ld a, [wStateResult]
    and $01
    jr z, FinishFrisk

    call DropFoundList
    ld a, $01
    call WaitTicks
    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a

; Enter the laundry room and set the original capture flag.
FinishFrisk:

jr_003_5ca5:
    ld a, RoomLaundry
    call EnterRoom
    ld a, C2Frisked
    call SetObjFlag
    call RoomCueCall
    ret
