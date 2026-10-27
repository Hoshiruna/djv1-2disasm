
; Skip excluded rooms and scenes, then check the Stogie visit timer and the police-uniform arrest event.
CheckC2Watch:
CheckC2RoomFx:


Call_003_59cf:
    ld hl, C2FxSkipRooms
    ld a, [wRoomId]
    ld e, a
    cp RoomSugarApartment
    ret nc

; Scan rooms excluded from the Stogie visit and uniform check.
C2WatchScanRoom:
jr_003_59d9:
    ld a, [hl+]
    cp e
    ret z

    cp $ff
    jr nz, C2WatchScanRoom

    ld a, [wSceneId]
    cp SceneConductor1
    ret z

    cp SceneConductor2
    ret z

    call StepC2Debt
    call CheckC2Uniform
    ret

; With flags $34/$3e clear, advance the debt timer; at 133 reset it and dispatch the next Stogie visit through the original six-entry table.
StepC2Debt:
StepC2RoomTimer:


Call_003_59f0:
    ld a, C2EndFlag
    call ReadObjFlag
    ret nz

    ld a, C2RingFlag
    call ReadObjFlag
    ret nz

    ld a, [wC2DebtTick]
    inc a
    ld [wC2DebtTick], a
    cp $85
    ret nz

    call ResetObjScroll
    call ScriptHoldText
    xor a
    ld [wC2DebtTick], a
    ld a, [wC2DebtStep]
    inc a
    ld [wC2DebtStep], a
    dec a
    rst RST_00

C2DebtCalls:
C2RoomFxCalls:
    dw C2DebtWarn1
    dw C2DebtWarn2
    dw C2DebtWarn3
    dw C2DebtWarn4
    dw C2DebtWarn5
    dw C2DebtDeath

; Show Stogie Martin arriving, begin effect $10, and play cue nine.
C2DebtIntro:
C2Fx10Msg0C:

Call_003_5a25:
    ld a, $0c
    call ShowMsg1 ; Message Text14Message0C: A FAMILIAR FACE / LOOMS IN FRONT OF / YOU...[PAGE] / STOGIE MARTIN / STANDS THERE / B...
    ld a, FxStogie
    call BeginC2Fx
    ld a, $09
    call PlayAudio
    ret

; Run the first Stogie warning: the debt deadline is approaching.
C2DebtWarn1:
C2TimedMsg0D:


    call C2DebtIntro
    ld a, $78
    call WaitTicks
    ld a, $0d
    call ShowMsg1 ; Message Text14Message0D: "YOU STILL HANGIN'AROUND HERE?[PAGE] / YA BETTER HUSTLE / PAL, OR YOU'LL / MISS DA DE...
    jr EndC2DebtVisit

; Run the second Stogie warning: the boss expects the money.
C2DebtWarn2:
C2TimedMsg0E:

    call C2DebtIntro
    ld a, $78
    call WaitTicks
    ld a, $0e
    call ShowMsg1 ; Message Text14Message0E: "STILL AIN'T COME / UP WITH THE DOUGH,EH HARDING?[PAGE] / WELL, YA GOT SOME / TIME YE...
    jr EndC2DebtVisit

; Run the third Stogie warning: roughly half the time has passed.
C2DebtWarn3:
C2TimedMsg0F:

    call C2DebtIntro
    ld a, $78
    call WaitTicks
    ld a, $0f
    call ShowMsg1 ; Message Text14Message0F: "YA LOOK LIKE / YOU'RE GETTING' NOWHERE FAST, ACE![PAGE] / YER TIME'S ABOUT / HALF UP...
    jr EndC2DebtVisit

; Run the fourth Stogie warning: the boss will not forgive the theft.
C2DebtWarn4:
C2TimedMsg10:

    call C2DebtIntro
    ld a, $78
    call WaitTicks
    ld a, $10
    call ShowMsg1 ; Message Text14Message10: "DA BOSS DON'T / LIKE NOBODY TAKIN'FROM HIM... AND I / MEAN NOBODY! SO / YOU'D BETTER...
    jr EndC2DebtVisit

; Run the fifth Stogie warning: the next visit will be the last.
C2DebtWarn5:
C2TimedMsg11:

    call C2DebtIntro
    ld a, $78
    call WaitTicks
    ld a, $11
    call ShowMsg1 ; Message Text14Message11: "DIS IS YOUR LAST / WARNING, HARDING![PAGE] / NEXT TIME WE MEET,IT'LL BE DA LAST. / A...

; Show Stogie leaving, resume text, wait sixty ticks, and restore the room effect and audio.
EndC2DebtVisit:
FinishC2RoomFx:

jr_003_5a7e:
    ld a, $12
    call ShowMsg1 ; Message Text14Message12: HAVING SAID THAT, / STOGIE WALKS AWAY,LEAVING A STINKINGCLOUD OF SMOKE TO / MARK HIS ...
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    call RestoreC2Effect
    call RoomCueCall
    ret

; Run the final Stogie visit, set EvtDebt, and enter the death effect.
C2DebtDeath:
C2TimedMsg13:


    call C2DebtIntro
    ld a, $78
    call WaitTicks
    ld a, $13
    call ShowMsg1 ; Message Text14Message13: "SORRY ACE, YOUR / TIME'S UP! COUGH / UP THE MONEY![PAGE] / YA SAY YA AIN'T / GOT DA ...
    ld a, $10
    call PlayAudio
    ld a, $d7
    call ShowMsg0 ; Message Text13Message57: STOGIE AIMS HIS / GUN AT YOU. HE / NEEDS ONLY ONE / SHOT TO END YOUR / LIFE.[PAGE] / ...
    call ResumeTextUI
    ld a, [wC2EventBits]
    or EvtDebt
    ld [wC2EventBits], a
    jp PlayExitEffect
