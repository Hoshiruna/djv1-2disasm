
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
    call ShowMsg2 ; Message Text16Message6D: THE COP, THINKING / YOU ARE A COMRADE,COMES OVER AND / STARTS TO ASK IF / YOU GOT YOU...
    ld a, $3c
    call WaitTicks
    ld a, $09
    call PlayAudio
    ld a, FxHandcuffs
    call BeginC2Fx
    ld a, $78
    call WaitTicks
    ld a, $fd
    call ShowMsg0 ; Message Text13Message7D: THEY KEEP YOU IN / JAIL, AT THE END / OF THE WEEK, / STOGIE SHOWS UP / AND POSTS BAIL...
    ld a, $3c
    call WaitTicks
    ld a, FxStogie
    call BeginC2Fx
    ld a, $78
    call WaitTicks
    ld a, $fe
    call ShowMsg0 ; Message Text13Message7E: "I'M GONNA TAKE / YOU SOMEPLACE NICEAND QUIET, ACE," / HE SAYS WITH A / SNICKER. YOU ...
    jp PlayExitEffect

C2FxSkipRooms:
    db RoomVegasCashier, RoomVegasBlackjack, $06, RoomVegasLift1, RoomVegasLift2, RoomVegasLift3, RoomVegasLift4, RoomVegasHamper, RoomVegasVentiniOffice, RoomVegasMaloneOffice, CabAtChicago, RoomVegasHall4, RoomJoeFireEscape, RoomJoeOffice, RoomJoeRearHallway, RoomJoeBar, RoomJoeCellar, RoomJoeChamber, RoomJoeCasino, RoomJoeUpstairsHallway, RoomAdisonApartment, $ff
