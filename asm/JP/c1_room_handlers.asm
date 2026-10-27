
; Require item flag $07 or $54, a nonzero coin count, and clear object flag $93; draw the target room and show message $e0 on random mask $03 zero.
C1RoomEvt1E:
    ld a, $07
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1Room1ECheckCash

    ld a, $54
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    ret z

; Check the coin count after finding either twenty-dollar bill item flag.
C1Room1ECheckCash:
jr_002_6688:
    call ClearResult
    ld a, [wC1Coins]
    cp $00
    ret z

    ld a, $93
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1Room1ERandomCheck

    call ClearResult
    ret


; Test random mask three before drawing the target room.
C1Room1ERandomCheck:
jr_002_66a1:
    call ClearResult
    call NextRandom
    ldh a, [hRandByte]
    and $03
    ret nz

    ld a, [wArg3]
    call DrawRoomAt
    ld a, $e0
    call ShowMsg1 ; Message Text0FMessage60: とつぜん めのまえに おとこが / あらわれた![PAGE] / ・・・おそろしく つよそうだ。[PAGE] / おとこは ふといこえで おれに / いった。[PAGE]...
    call SetResult
    ret

; With object flag $92 clear and random bit zero set, draw the target room and show stream-two message $e5.
C1RoomEvt20:


    ld a, C1ArmedLadyDown
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1Room20RandomCheck

    call ClearResult
    ret


; Test random bit zero while the armed-lady-down flag is clear.
C1Room20RandomCheck:
jr_002_66cb:
    call NextRandom
    ldh a, [hRandByte]
    and $01
    jr nz, C1Room20ShowEvent

    call ClearResult
    ret


; Draw the target room and show the room-$20 event reply.
C1Room20ShowEvent:
jr_002_66d8:
    ld a, [wArg3]
    call DrawRoomAt
    ld a, $e5
    call ShowMsg2 ; Message Text0DMessage65: ・・・・・・! / どこからともなく おんなが / あらわれて いった。[PAGE] / 「ながかったわ・・・。 /  いま けいむしょから /  でてきたところなの。[...
    call SetResult
    ret

; Count visits when property-four bit zero is set for object $02 or $07; from count three, test random bit zero before message $33.
C1RoomEvt24:


    ld a, $02
    call ReadProp4Bit0
    ld a, [wStateResult]
    and $01
    jr nz, C1Room24CountVisit

    ld a, $07
    call ReadProp4Bit0
    ld a, [wStateResult]
    and $01
    ret z

; Increment the visit counter when either relevant property is carried.
C1Room24CountVisit:
jr_002_66fe:
    ld a, [wRoomEvtCount]
    inc a
    ld [wRoomEvtCount], a
    call ClearResult
    ld a, [wRoomEvtCount]
    cp $03
    ret c

    call NextRandom
    ldh a, [hRandByte]
    and $01
    ret z

    ld a, [wArg3]
    call DrawRoomAt
    ld a, $33
    call ShowMsg1 ; Message Text0EMessage33: ギャー!!!!! / ワッ ワッ ワニだ!![PAGE] / げすいどうの なかに とつぜん / おおきな ワニが・・・!![END]
    call SetResult
    ret

; On random bit zero clear, set object flag $a8 and show stream-two message $db or $de according to flag $91.
C1RoomEvt1F:


    call NextRandom
    ldh a, [hRandByte]
    and $01
    jr z, C1BumStartEvent

    call ClearResult
    ret


; Set the bum-event flag and choose a reply using the heard-hint flag.
C1BumStartEvent:
jr_002_6732:
    ld a, C1BumEventActive
    call SetObjFlag
    ld a, [wArg3]
    call DrawRoomAt
    ld a, C1BumHintHeard
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1BumRepeatEventReply

    ld a, $db
    call ShowMsg2 ; Message Text0DMessage5B: ・・・・・・! / いきなり よっぱらいが とおりを / さえぎった。[PAGE] / かおを ちかづけてきて なにか / ブツブツと いっている。[PAGE] / 「5...
    call SetResult
    ret


; Show the alternate bum-event reply after the hint has been heard.
C1BumRepeatEventReply:
jr_002_6752:
    ld a, $de
    call ShowMsg2 ; Message Text0DMessage5E: よっぱらいが とおりを / さえぎっている。[END]
    call SetResult
    ret

; Require flags $05 and $2a clear, then show message $eb when random mask $18 is zero.
C1RoomEvt4A:


    ld a, C1MuggerHit1
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1Mugger1CheckPaid

    call ClearResult
    ret


; Test the payment flag after confirming the first mugger-hit flag is clear.
C1Mugger1CheckPaid:
jr_002_676b:
    ld a, C1MuggerPaid
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1Mugger1RandomCheck

    call ClearResult
    ret


; Check random mask $18 before the first mugger event.
C1Mugger1RandomCheck:
jr_002_677b:
    call ClearResult
    call NextRandom
    ldh a, [hRandByte]
    and $18
    jr z, C1Mugger1ShowEvent

    ret


; Draw the target room and show the first mugger-event reply.
C1Mugger1ShowEvent:
jr_002_6788:
    ld a, [wArg3]
    call DrawRoomAt
    ld a, $eb
    call ShowMsg1 ; Message Text0FMessage6B: なんてこった! / めのまえの おとこが いきなり / おれに ピストルを つきつけてきた![PAGE] / 「かねを だせ! /  ださないと どうなるか /  わかっ...
    call SetResult
    ret

; Require flags $06 and $2a clear and flag $05 set, then show message $f1 when random mask $18 is zero.
C1RoomEvt4D:


    ld a, C1MuggerHit2
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1Mugger2CheckPaid

    call ClearResult
    ret


; Check payment after confirming the second mugger-hit flag is clear.
C1Mugger2CheckPaid:
jr_002_67a7:
    ld a, C1MuggerPaid
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1Mugger2CheckHit1

    call ClearResult
    ret


; Require the first hit flag before the second mugger event.
C1Mugger2CheckHit1:
jr_002_67b7:
    ld a, C1MuggerHit1
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1Mugger2RandomCheck

    call ClearResult
    ret


; Check random mask $18 before the second mugger event.
C1Mugger2RandomCheck:
jr_002_67c7:
    call ClearResult
    call NextRandom
    ldh a, [hRandByte]
    and $18
    jr z, C1Mugger2ShowEvent

    ret


; Draw the target room and show the second mugger-event reply.
C1Mugger2ShowEvent:
jr_002_67d4:
    ld a, [wArg3]
    call DrawRoomAt
    ld a, $f1
    call ShowMsg1 ; Message Text0FMessage71: また でた! / さっきの おとこだ![PAGE] / おれに なぐられたところを / アザにしている。[PAGE] / 「にどと おなじては くわないぜ。 /  さっさ...
    call SetResult
    ret

; Require flags $07 and $2a clear and flag $06 set, then show message $f4 when random mask $18 is zero.
C1RoomEvt4B:


    ld a, C1MuggerHit3
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1Mugger3CheckPaid

    call ClearResult
    ret


; Check payment after confirming the third mugger-hit flag is clear.
C1Mugger3CheckPaid:
jr_002_67f3:
    ld a, C1MuggerPaid
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1Mugger3CheckHit2

    call ClearResult
    ret


; Require the second hit flag before the third mugger event.
C1Mugger3CheckHit2:
jr_002_6803:
    ld a, C1MuggerHit2
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1Mugger3RandomCheck

    call ClearResult
    ret


; Test random mask $18 before drawing the third mugger event.
C1Mugger3RandomCheck:
jr_002_6813:
    call ClearResult
    call NextRandom
    ldh a, [hRandByte]
    and $18
    ret nz

    ld a, [wArg3]
    call DrawRoomAt
    ld a, $f4
    call ShowMsg1 ; Message Text0FMessage74: ゲッ! / また でた! / さっきの おとこだ。[PAGE] / こんどは りょうめに アザ・・・。 / たぬきのような かおで おれに / いった。[PAGE] / ...
    call SetResult
    ret

; Require flag $2a clear, flag $07 set, and item flag $07 or $54 set; show message $f6 when random mask $1c is zero.
C1RoomEvt4C:


    ld a, C1MuggerPaid
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1MuggerFinalCheckHit3

    call ClearResult
    ret


; Require the third hit flag after confirming the mugger has not been paid.
C1MuggerFinalCheckHit3:
jr_002_683d:
    ld a, C1MuggerHit3
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1MuggerFinalCheckBills

    call ClearResult
    ret


; Check either twenty-dollar bill item flag before the final event.
C1MuggerFinalCheckBills:
jr_002_684d:
    ld a, $07
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1MuggerFinalRandomCheck

    ld a, $54
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1MuggerFinalRandomCheck

    call ClearResult
    ret


; Test random mask $1c before drawing the final mugger event.
C1MuggerFinalRandomCheck:
jr_002_6869:
    call ClearResult
    call NextRandom
    ldh a, [hRandByte]
    and $1c
    ret nz

    ld a, [wArg3]
    call DrawRoomAt
    ld a, $f6
    call ShowMsg1 ; Message Text0FMessage76: さっきの おとこだ。 / あいかわらず おれに ピストルを / つきつけてくる。[PAGE] / りょうめの アザに くわえ はなぢのおまけつきだ。[PAGE] / 「と...
    call SetResult
    ret
