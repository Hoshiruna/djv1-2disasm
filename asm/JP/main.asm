
; Run the original startup helpers, set scene effect 6, then select the current case flow.
MainGame:


Jump_000_0862:
    xor a
    ld [wCaseId], a
    call PlayAudio
    push af
    ld a, $01
    call PushRomBank
    pop af
    call InitC1Data
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ShowBoot
    call PopRomBank
    ld a, $01
    call PlayAudio
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ShowTitle
    call PopRomBank
    xor a
    ld [wTextSet], a
    push af
    ld a, $02
    call PushRomBank
    pop af
    call InitTextRefs
    call PopRomBank
    push af
    ld a, $02
    call PushRomBank
    pop af

Call_000_08ad:
    call $74bc
    call PopRomBank
    ld a, $06
    ld [wSceneFx], a
    ld a, [wCaseId]
    cp $01
    jr z, jr_000_092e

; Run the initial Case I fixed-bank helper, then fall through to ResumeC1Game.
StartC1Game:

    call SaveState

; Run Case I setup, clear object flag $bf, then enter the input loop.
ResumeC1Game:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call InitC1View
    call PopRomBank
    ld a, $bf
    call ClearObjFlag

; Poll cursor and input until the Case I exit marker or result bit 6 requests a transition.
LoopC1Game:

jr_000_08d4:
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
    call HandleInput
    call PopRomBank
    ld a, [wC1Exit]
    cp $ff
    jr z, @+$32

    ld a, [wStateResult]
    and $40
    jr z, jr_000_08d4

    xor a

Jump_000_08fd:
    ld [wSpriteScrollY], a
    ld [wScrollY], a

Call_000_0903:
    push af

Call_000_0904:
Jump_000_0904:
    ld a, $02
    call PushRomBank
    pop af
    call $785e
    call PopRomBank
    ld a, [wStateResult]
    and $bf
    ld [wStateResult], a
    ld a, $ff
    ld [wCaseResume], a
    ld a, [wInputMode]
    rst RST_00

C1LoopCalls:
    dw ResumeC1Game, SoftReset

; Clear $0b00 bytes starting at $c400, then fall through to StartC2Game.
ClearCaseData:

    ld hl, $c400
    ld bc, $0b00
    call ZeroBytes

; Set Case II, run its startup helpers, and retain or initialize case data before resuming.
StartC2Game:

jr_000_092e:
    call SaveState

Jump_000_0931:
    ld a, $01
    ld [wCaseId], a
    push af
    ld a, $02
    call PushRomBank
    pop af
    call InitTextRefs
    call PopRomBank
    ld a, [wCaseResume]
    cp $ff
    jr z, jr_000_0965

    ld hl, wObjPresent
    ld bc, $0180
    call ZeroBytes
    ld a, $01
    ld [wCaseId], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call InitC2Data
    call PopRomBank

; Run the Case II bank entry, clear object flag $bf, then enter the input loop.
ResumeC2Game:

jr_000_0965:
    push af

Call_000_0966:
    ld a, $03
    call PushRomBank
    pop af
    call InitC2View
    call PopRomBank
    ld a, $bf
    call ClearObjFlag

; Poll cursor and input until result bit 6 requests the original menu/restart path.
LoopC2Game:

jr_000_0977:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PollCursor
    call PopRomBank
    push af
    ld a, $01

Call_000_0987:
    call PushRomBank
    pop af
    call HandleInput
    call PopRomBank
    ld a, [wStateResult]
    and $40
    jr z, jr_000_0977

    xor a
    ld [wSpriteScrollY], a
    ld [wScrollY], a
    push af
    ld a, $02

Jump_000_09a2:
    call PushRomBank
    pop af
    call $785e
    call PopRomBank
    ld a, [wStateResult]
    and $bf
    ld [wStateResult], a
    ld a, $ff
    ld [wCaseResume], a
    ld a, [wInputMode]
    rst RST_00

C2LoopCalls:
    dw ResumeC2Game
    db $7e
Call_000_09c0:
Jump_000_09c0:
    db $01
