
; With flag $34 or $3e set, advance the ending timer and dispatch the evidence-dependent sequence only on step 52.
StepC2End:
StepC2TimedFx:

Call_003_5649:
    ld a, C2EndFlag
    call ReadObjFlag
    jr nz, C2EndAdvanceTimer

    ld a, C2RingFlag
    call ReadObjFlag
    ret z

; Advance the ending timer when either ending condition flag is set.
C2EndAdvanceTimer:
jr_003_5656:
    ld a, [wC2EndTick]
    inc a
    ld [wC2EndTick], a
    cp C2EndDelay
    ret nz

    ld a, C2RingFlag
    call ReadObjFlag
    jr nz, CheckEndDesk

; Without the cigar ring planted, show the goons catching the player and the failure to cover tracks.
EndNoRing:

    call BlockByGoons
    ld a, $78
    call WaitTicks
    ld a, $ae
    call ShowMsg1 ; Message Text15Message2E: 「・・・やっと みつけたぜ![PAGE] /  おまえに にげられた おかげで /  べンティーニあにきに こっぴどく /  おこられたんだ! /  なあ ムース・・・。...
    ld a, $3c
    call WaitTicks
    call C2NewsCue10
    ld a, $b9
    call ShowMsg1 ; Message Text15Message39: ああ・・・。 / もう すこしで にげきることが / できたのに・・・。[PAGE] / こんなことなら あのへやに だれか / べつの ひとが はいったと / おもわせ...

; Resume text, mark the saved ending event, and run the exit effect.
FailC2Deadline:
EndC2TimedFx:

Jump_003_5681:
jr_003_5681:
    call ResumeTextUI
    call MarkC2End
    jp PlayExitEffect

; Play audio $10, then show the second Vegas Times scene through effect $11.
C2NewsCue10:
C2Fx11Cue10:


Call_003_568a:
    ld a, $10
    call PlayAudio
    ld a, FxVegasNews2
    jp SwitchC2Fx

; Announce two men blocking the way, begin their effect six, and play audio nine.
BlockByGoons:
C2Fx6Msg94:


Call_003_5694:
    call ResetObjScroll
    ld a, $94
    call ShowMsg1 ; Message Text15Message14: とつぜん ふたりの おとこが おれのめの まえに たちはだかった・・・![END]
    ld a, FxGoons
    call BeginC2Fx
    ld a, $09
    jp PlayAudio

; With the cigar ring planted, test the first desk item; an empty desk leads to framing for Malone's murder.
CheckEndDesk:


jr_003_56a6:
    ld a, [wDeskItems]
    cp $ff
    jr nz, CheckEndClean

    call BlockByGoons
    ld a, $78
    call WaitTicks
    ld a, $33
    call ShowMsg3 ; Message Text18Message33: 「やっと みつけたぞ![PAGE] /  あの へやに シガーリングを /  おいて ボスと あにきを /  あらそわせようと したんだろうが /  そうは いかない!」...
    ld a, $3c
    call WaitTicks
    call C2NewsCue10
    ld a, $42
    call ShowMsg3 ; Message Text18Message42: ああ・・・。 / ほかにも やらなければ いけない / ことが あったようだ・・・。[END]
    jr FailC2Deadline

; Check for conflicting desk items; failed cleanliness leads to Stogie's blackmail accusation.
CheckEndClean:

jr_003_56c9:
    call TestDeskClean
    ld a, [wStateResult]
    and $01
    jr nz, CheckEndProof

    call ResetObjScroll
    ld a, $c4
    call ShowMsg1 ; Message Text15Message44: とつぜん ストージーが あらわれて / いった。[END]
    call StartStogieFx
    ld a, $78
    call WaitTicks
    ld a, $c7
    call ShowMsg1 ; Message Text15Message47: 「ボスの へやに しのびこんだのは /  おまえだろう・・・?[PAGE] /  けいさつに もっていかれては /  こまるようなものが つくえのなかに はいっていた・・...
    ld a, $3c
    call WaitTicks
    call C2NewsCue10
    ld a, $ca
    call ShowMsg1 ; Message Text15Message4A: ああ・・・。 / よけいなものを いれなければ / よかったな・・・。[END]
    jr FailC2Deadline

; Begin Stogie effect $10 and play audio nine after his appearance message.
StartStogieFx:
C2Fx10Cue9:

Call_003_56f7:
    ld a, FxStogie
    call BeginC2Fx
    ld a, $09
    jp PlayAudio

; Check the three required desk items; missing proof leads to Stogie's insufficient-evidence response.
CheckEndProof:


jr_003_5701:
    call TestDeskProof
    ld a, [wStateResult]
    and $01
    jr nz, EndNearVegas

    call ResetObjScroll
    ld a, $c4
    call ShowMsg1 ; Message Text15Message44: とつぜん ストージーが あらわれて / いった。[END]
    call StartStogieFx
    ld a, $78
    call WaitTicks
    ld a, $ce
    call ShowMsg1 ; Message Text15Message4E: 「ボスの へやに しのびこんだのは /  おまえだろう・・・?[PAGE] /  べンティーニあにきが ボスを /  うらぎったように みせかけて /  ふたりを あらそ...
    ld a, $3c
    call WaitTicks
    call C2NewsCue10
    ld a, $f0
    call ShowMsg1 ; Message Text15Message70: ああ・・・。 / ざんねんながら しょうこひんが / たりなかったようだ・・・。[END]
    jp FailC2Deadline

; With both desk checks passed, retain the $52 comparison and show failure to get far enough from the mob war.
; Entry from StepC2End requires the counter to equal $34, so its early return cannot be taken on that path.
EndNearVegas:


jr_003_5730:
    ld a, [wC2EndTick]
    cp C2EndLate
    ret nc

    call ResetObjScroll
    call RepeatCue10
    ld a, $09
    call PlayAudio
    ld a, $d1
    call ShowMsg1 ; Message Text15Message51: とつぜん まちの あちこちから / マシンガンの おとが きこえてきた![PAGE] / しんらいする べンティーニの / うらぎりを ゆるせなかった マロンはぶかに か...
    ld a, FxVegasNews2
    call BeginC2Fx
    ld a, $3c
    call WaitTicks
    ld a, $43
    call ShowMsg3 ; Message Text18Message43: ああ・・・。 / ざんねんながら / にげおくれたようだ・・・。[END]
    jp FailC2Deadline
