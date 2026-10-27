
; With the police uniform worn outside Sugar's apartment front, a random value of seven triggers arrest, bail, and Stogie killing Ace.
CheckC2Uniform:
RandomC2RoomFx:


Call_003_5ab7:
    ld a, C2Uniform
    call ReadObjFlag
    ret z

    ld a, [wRoomId]
    cp RoomSugarApartmentFront
    ret z

    call NextRandom
    ldh a, [hRandByte]
    and $07
    xor $07
    ret nz

    call ResetObjScroll
    ld a, FxPoliceman
    call BeginC2Fx
    ld a, $78
    call WaitTicks
    ld a, $6d
    call ShowMsg2 ; Message Text16Message6D: けいかんが おれを どうりょうだと / おもって はなしかけてきた。[PAGE] / 「やあ! /  もう きゅうりょうは /  もらったかい?」[PAGE] / 「まだ...
    ld a, $3c
    call WaitTicks
    ld a, $09
    call PlayAudio
    ld a, FxHandcuffs
    call BeginC2Fx
    ld a, $78
    call WaitTicks
    ld a, $fd
    call ShowMsg0 ; Message Text13Message7D: ふこうなことに おれに あたえられた1しゅうかんという きげんは / けいさつに いるあいだに / すぎてしまった・・・。[PAGE] / ストージーが ほしゃくきんを ...
    ld a, $3c
    call WaitTicks
    ld a, FxStogie
    call BeginC2Fx
    ld a, $78
    call WaitTicks
    ld a, $fe
    call ShowMsg0 ; Message Text13Message7E: ストージーは いった・・・。[PAGE] / 「よかったな・・・。 /  これは しゅっしょいわいだ。 /  うけとってくれ!」[PAGE] / そして おれの どてっぱ...
    jp PlayExitEffect

C2FxSkipRooms:
    db RoomVegasCashier, RoomVegasBlackjack, $06, RoomVegasLift1, RoomVegasLift2, RoomVegasLift3, RoomVegasLift4, RoomVegasHamper, RoomVegasVentiniOffice, RoomVegasMaloneOffice, CabAtChicago, RoomVegasHall4, RoomJoeFireEscape, RoomJoeOffice, RoomJoeRearHallway, RoomJoeBar, RoomJoeCellar, RoomJoeChamber, RoomJoeCasino, RoomJoeUpstairsHallway, RoomAdisonApartment, $ff
