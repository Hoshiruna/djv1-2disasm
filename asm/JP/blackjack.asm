; --- bj_session.asm ---

; Save the scene, hide the normal interface, run blackjack, then restore the scene and its view; retain the original exit message condition.
RunBlackjack:
    ld a, [wSceneId]
    ld [wBJSavedScene], a
    call FadeOut
    call HideTextWindow
    call BlankOam
    call ResetBJDeck
    call LoadBJTable
    call PlayBJRounds
    call FadeOut
    ld a, $ff
    ldh [hBgLoaded], a
    ldh [hObjLoaded], a
    ld a, [wBJSavedScene]
    ld [wSceneId], a
    call ReloadC2View
    ld a, [wBJExit]
    cp $ff
    ret nz

    ld a, $4e
    call ShowMsg3 ; Message Text18Message4A: ルーディーは こまったように / ささやいた。[PAGE] / 「・・・エース。 /  ボスが さっきから こっちを /  にらんでいるんだ。[PAGE] /  ひょっと...
    ret

; --- bj_map.asm ---

; Pause the timer and LCD, load card graphics and UI map five, then restore them.
LoadBJMap:


Call_029_6971:
    call RequestTimer
    call DisableLcd
    call LoadCardGfx
    ld a, UiMapIdBlackjackTable
    call ReadUiMap
    call StopTimer
    call RestoreLcd
    ret

; --- bj_rounds.asm ---

; Run betting, player/dealer hands, and replay input; reset the deck when fewer than sixteen cards remain and stop on the original exit conditions.
PlayBJRounds:


Call_029_6986:
    xor a
    ld [wBJExit], a
    ld a, $0a
    ld [wBJBet], a

; Reset the blackjack deck before checking the next round.
BJRoundResetDeck:
jr_029_698f:
    call ResetBJDeck

; Check chips and remaining cards before preparing the next blackjack hand.
BJRoundCheck:

Jump_029_6992:
    ld a, [wChips]
    cp $00
    jr nz, BJRoundCheckDeck

    ld a, $0f
    call ShowBJText
    ld a, $8c
    call WaitTicks
    jp BJRoundExit


; Set card bias and check whether the deck has enough cards.
BJRoundCheckDeck:
jr_029_69a6:
    call SetBJBias
    ld a, [wBJLeft]
    cp $10
    jr nc, BJRoundPlayHand

    ld a, $0d
    call ShowBJText
    ld a, $0e
    call ShowBJText
    ld a, $27
    call PlayAudio
    ld a, $8c
    call WaitTicks
    call ShowBJPause
    jr BJRoundResetDeck

; Clear hands and run four draw-before-store deals; reveal player slot 7 before betting.
; Reveal slots 1/6 after betting; dealer slot 0 stays displayed as a back.
BJRoundPlayHand:
jr_029_69c9:
    call ShowBJChips
    call ClearBJHands
    call DealBJFirst4
    ld a, BJPlayerSecondSlot
    call ShowBJHandCard
    call ChooseBJBet
    ld a, BJDealerSecondSlot
    call ShowBJHandCard
    ld a, BJPlayerFirstSlot
    call ShowBJHandCard
    call ShowBJPause
    call PlayBJPlayer
    ld a, $3c
    call WaitTicks
    call PlayBJDealer
    call ShowBJPause
    ld a, [wBJExit]
    cp $ff
    ret z

    ld a, $15
    call ShowBJText
    call ShowBJChips
    ld a, $03
    call ShowBJText
    ld a, $00
    ld [wBJChoice], a
    ld a, $10
    ld [wBJResult], a
    call ChooseBJAction
    call SubmitOam
    ld a, [wBJChoice]
    cp $00
    jr nz, BJRoundFinishPrompt

    call LoadBJTable
    jp BJRoundCheck


; Finish the replay prompt and return from the round loop.
BJRoundFinishPrompt:
jr_029_6a25:
    call SubmitOam
    call ShowBJPause
    ld a, $04
    call ShowBJText
    ld a, $3c
    call WaitTicks

; Return from the blackjack round loop.
BJRoundExit:

Jump_029_6a35:
    ret

; --- bj_pause.asm ---

; Show the original regional prompt rows, submit them, and wait thirty ticks.
ShowBJPause:


Call_029_6a36:
    ld a, $11
    ld [wListMark], a
    ld a, $00
    ld [wTextX], a
    ld a, $0d
    ld [wTextY], a
    call ShowListText
    call SubmitMapQueue
    ld a, $00
    ld [wTextX], a
    ld a, $0f
    ld [wTextY], a
    call ShowListText
    call SubmitMapQueue
    ld a, $00
    ld [wTextX], a
    ld a, $11
    ld [wTextY], a
    call ShowListText
    call SubmitMapQueue
    ld a, $1e
    call WaitTicks
    ret

; --- bj_first.asm ---

; Draw each old slot value, then store a new card, in slot order 0,1,6,7; wait $20 ticks each.
DealBJFirst4:


Call_029_6a71:
    ld d, a
    ld a, $03
    ldh [hBJLoop], a
    ld a, $00
    ldh [hBJLoop+1], a
    ld a, d

; Display the current slot before selecting and storing its newly dealt card.
BJDealFirstSlot:
jr_029_6a7b:
    ld bc, BJFirstSlots
    ldh a, [hBJLoop]
    ld l, a
    ldh a, [hBJLoop+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ShowBJHandCard
    ld bc, BJFirstSlots
    ldh a, [hBJLoop]
    ld l, a
    ldh a, [hBJLoop+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [hBJSlot], a
    call DealBJRandom
    ld a, $20
    call WaitTicks
    ldh a, [hBJLoop]
    dec a
    ldh [hBJLoop], a
    bit 7, a
    jr z, BJDealFirstSlot

    ret

BJFirstSlots:
    db BJPlayerSecondSlot, BJPlayerFirstSlot, BJDealerSecondSlot, BJDealerFirstSlot

; --- bj_sum.asm ---

; Read six hand slots, count cards and aces, and reduce aces by ten while the total exceeds twenty-one; retain the original special markers.
SumBJHand:

Call_029_6aac:
    xor a
    ld [wBJTotal], a
    ld [wBJAces], a
    ld [wBJCount], a
    ld de, $0005

; Read the next of six hand slots in reverse order.
BJSumNextSlot:
jr_029_6ab9:
    ld a, [wBJHandPtr]
    ld l, a
    ld a, [wBJHandPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    cp $00
    jr z, BJSumCardFace

    push af
    ld a, [wBJCount]
    inc a
    ld [wBJCount], a
    pop af

; Look up the card face and count aces.
BJSumCardFace:
jr_029_6ad0:
    ld l, a
    ld h, $00
    ld bc, BJCardFaces
    add hl, bc
    ld a, [hl]
    and $0f
    cp $0b
    jr nz, BJSumAddFace

    push af
    ld a, [wBJAces]
    inc a
    ld [wBJAces], a
    pop af

; Add the face value to the running hand total.
BJSumAddFace:
jr_029_6ae7:
    ld hl, wBJTotal
    add [hl]
    ld [hl], a
    dec de
    bit 7, d
    jr z, BJSumNextSlot

; Distinguish a two-card 21 from a longer 21.
BJSumCheckTwentyOne:
jr_029_6af1:
    cp $15
    jr nz, BJSumReduceAces

    ld a, [wBJCount]
    cp $02
    jr nz, BJSumLongTwentyOne

    ld a, $ff
    ld [wBJTotal], a
    ret


; Store marker 95h for a hand of 21 with more than two cards.
BJSumLongTwentyOne:
jr_029_6b02:
    ld a, $95
    ld [wBJTotal], a
    ret


; Reduce an ace by ten while the total exceeds 21.
BJSumReduceAces:
jr_029_6b08:
    cp $16
    jr c, BJSumStoreTotal

    ld a, [wBJAces]
    cp $00
    jr z, BJSumBust

    ld a, [wBJAces]
    dec a
    ld [wBJAces], a
    ld a, [wBJTotal]
    sub $0a
    ld [wBJTotal], a
    jr BJSumCheckTwentyOne

; Use zero when the hand exceeds 21 without an adjustable ace.
BJSumBust:
jr_029_6b24:
    xor a

; Store the final total or bust marker.
BJSumStoreTotal:
jr_029_6b25:
    ld [wBJTotal], a
    ret

; --- bj_bet.asm ---

; Save the chip balance, use wChips for a bet from one to min(ten, available chips), then deduct the confirmed bet.
ChooseBJBet:


Call_029_6b29:
    ld a, [wChips]
    ld [wBJFunds], a
    xor a
    call ShowBJText
    ld a, [wBJBet]
    ld hl, wChips
    cp [hl]
    jr nc, BJBetDrawAmount

    ld [wChips], a

; Draw the current bet amount in the chip display.
BJBetDrawAmount:
jr_029_6b3f:
    ld a, $00
    ld [wTextX], a
    ld a, $0f
    ld [wTextY], a
    ld a, $1f
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue

; Poll confirmation and increase or decrease presses.
BJBetPollInput:
jr_029_6b54:
    call NextRandom
    call PollJoy
    ld a, [wJoyPress]
    and $f1
    jr z, BJBetPollInput

    bit 0, a
    jr nz, BJBetConfirm

    and $90
    jr z, BJBetDecrease

    ld a, [wChips]
    cp $0a
    jr z, BJBetPollInput

    ld hl, wBJFunds
    cp [hl]
    jr z, BJBetPollInput

    ld a, [wChips]
    inc a
    ld [wChips], a
    jr BJBetDrawAmount

; Lower the proposed bet unless it is already one.
BJBetDecrease:
jr_029_6b7f:
    ld a, [wChips]
    cp $01
    jr z, BJBetPollInput

    ld a, [wChips]
    dec a
    ld [wChips], a
    jr BJBetDrawAmount

; Store and deduct the chosen bet from available chips.
BJBetConfirm:
jr_029_6b8f:
    ld a, $00
    ld [wTextX], a
    ld a, $11
    ld [wTextY], a
    ld a, $1f
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue
    ld a, $01
    call ShowBJText
    ld a, [wChips]
    ld [wBJBet], a
    ld a, [wBJFunds]
    ld hl, wBJBet
    sub [hl]
    ld [wChips], a
    ld a, $1e
    call WaitTicks
    jp ShowBJChips

; --- bj_dealer.asm ---

; A player $ff wins before dealer reveal; otherwise resolve bust, reveal the dealer, draw, and compare encoded scores.
PlayBJDealer:


Call_029_6bc1:
    ld a, [wBJPlayer]
    cp $ff
    jr nz, BJDealerCheckPlayerZero

; Set result two and enter the shared blackjack settlement.
BJPlayerWin:

Jump_029_6bc8:
jr_029_6bc8:
    ld a, $02
    jp PayBJResult


; Check the zero player result before revealing the dealer hand.
BJDealerCheckPlayerZero:
jr_029_6bcd:
    cp $00
    jr nz, BJDealerReveal

; Set result one and enter the shared blackjack settlement.
BJPlayerLose:

Jump_029_6bd1:
jr_029_6bd1:
    ld a, $01
    jp PayBJResult


; Reveal dealer slot 0, then score its stored hand.
BJDealerReveal:
jr_029_6bd6:
    xor a
    call ShowBJHandCard
    xor a
    call ScoreBJHand
    ld [wBJDealer], a

; Pause and decide whether the dealer should draw again.
BJDealerTurnLoop:
jr_029_6be1:
    ld a, $20
    call WaitTicks
    ld a, [wBJDealer]
    cp $11
    jr nc, BJDealerCompareFinal

    ld a, [wBJDealer]
    ld hl, wBJPlayer
    cp [hl]
    jr nz, BJDealerCheckLead

    ld a, [wBJBias]
    cp $00
    jr nz, BJDealerDealBiased

; Compare dealer and player totals before another draw.
BJDealerCheckLead:
jr_029_6bfd:
    jr nc, BJPlayerLose

    ld a, [wBJBias]
    cp $00
    jr z, BJDealerDealRandom

; Choose a bias-specific target for the dealer draw.
BJDealerDealBiased:
jr_029_6c06:
    ld a, [wBJDealer]
    ld [wBJTarget], a
    ld a, [wBJNextD]
    ldh [hBJSlot], a
    ld a, [wBJBias]
    cp $01
    jr nz, BJDealerDealBelow

    call DealBJNear21
    jr BJDealerShowNewCard

; Use the below-target dealing path for this bias mode.
BJDealerDealBelow:
jr_029_6c1d:
    call DealBJBelow
    jr BJDealerShowNewCard

; Use the unbiased random dealing path.
BJDealerDealRandom:
jr_029_6c22:
    ld a, [wBJNextD]
    ldh [hBJSlot], a
    call DealBJRandom

; Draw and score the newly dealt dealer card.
BJDealerShowNewCard:
jr_029_6c2a:
    ld a, [wBJNextD]
    call ShowBJHandCard
    xor a
    call ScoreBJHand
    ld [wBJDealer], a
    cp $00
    jr z, BJPlayerWin

    cp $ff
    jr z, BJPlayerLose

    bit 7, a
    jr nz, BJDealerCompareFinal

    ld a, [wBJNextD]
    inc a
    ld [wBJNextD], a
    cp BJPlayerFirstSlot
    jr nz, BJDealerTurnLoop

; Compare final dealer and player totals.
BJDealerCompareFinal:
jr_029_6c4e:
    ld a, [wBJDealer]
    ld hl, wBJPlayer
    cp [hl]
    jr z, BJDealerTie

    jp nc, BJPlayerLose

    jp BJPlayerWin


; Pass result zero into the shared settlement path.
BJDealerTie:
jr_029_6c5d:
    xor a

; --- bj_result.asm ---

; Show the result and cue, then pay one bet on a tie, zero on a loss, or two bets on a win; player blackjack doubles the win payout again.
PayBJResult:

Jump_029_6c5e:
    ld [wBJResult], a
    add $0a
    call ShowBJText
    ld a, [wBJResult]
    and $02
    add $24
    call PlayAudio
    ld a, $20
    call WaitTicks
    xor a
    ld [wBJPayout], a
    ld a, [wBJResult]
    cp $00
    jr z, BJResultReturnBet

    cp $01
    jr z, BJResultPayChips

    ld a, [wBJBet]
    add a
    ld [wBJPayout], a
    ld a, [wBJPlayer]
    cp $ff
    jr nz, BJResultPayChips

    ld a, [wBJPayout]
    add a
    ld [wBJPayout], a
    jr BJResultPayChips

; Set a tie payout equal to the original bet.
BJResultReturnBet:
jr_029_6c9b:
    ld a, [wBJBet]
    ld [wBJPayout], a

; Pass the calculated payout to the chip update routine.
BJResultPayChips:
jr_029_6ca1:
    jp PayBJChips

; --- bj_player.asm ---

; Score the player hand and process hit/stand input; stop on a special result or after the sixth card.
PlayBJPlayer:


Call_029_6ca4:
    ld a, $01
    call ScoreBJHand
    ld [wBJPlayer], a
    cp $00
    jr z, BJPlayerChooseAction

    bit 7, a
    ret nz

; Show the action prompt and read the next hit or stand choice.
BJPlayerChooseAction:
jr_029_6cb3:
    ld a, $02
    call ShowBJText
    xor a
    ld [wBJChoice], a
    ld [wBJResult], a
    call ChooseBJAction
    ld a, [wBJChoice]
    cp $00
    jr nz, BJPlayerStand

    ld a, [wBJBias]
    cp $00
    jr z, BJPlayerDealRandom

    ld a, [wBJPlayer]
    ld [wBJTarget], a
    ld a, [wBJNextP]
    ldh [hBJSlot], a
    ld a, [wBJBias]
    cp $01
    jr nz, BJPlayerDealNear21

    call DealBJBelow
    jr BJPlayerShowNewCard

; Use the near-21 dealing path for this bias mode.
BJPlayerDealNear21:
jr_029_6ce7:
    call DealBJNear21
    jr BJPlayerShowNewCard

; Use the unbiased random dealing path.
BJPlayerDealRandom:
jr_029_6cec:
    ld a, [wBJNextP]
    ldh [hBJSlot], a
    call DealBJRandom

; Draw the new card, pause, and rescore the player hand.
BJPlayerShowNewCard:
jr_029_6cf4:
    ld a, [wBJNextP]
    call ShowBJHandCard
    call SubmitOam
    call ShowBJPause
    ld a, $01
    call ScoreBJHand
    ld [wBJPlayer], a
    cp $00
    jr z, BJPlayerDone

    bit 7, a
    jr nz, BJPlayerDone

    ld a, [wBJNextP]
    inc a
    ld [wBJNextP], a
    cp BJHandSlotCount
    jr nz, BJPlayerChooseAction

; Return after a special total or the sixth card.
BJPlayerDone:
jr_029_6d1b:
    ret


; Finish the player turn after a stand choice.
BJPlayerStand:
jr_029_6d1c:
    call SubmitOam
    call ShowBJPause
    ret

; --- bj_action.asm ---

; Move the cursor between hit and stand with the original regional coordinates; confirm with cue $19.
ChooseBJAction:


Call_029_6d23:
jr_029_6d23:
    ld a, [wBJChoice]
    add $70
    ld [wCursorX], a
    ld a, $7d
    ld [wCursorY], a
    call DrawBankCursor
    call SubmitOam

; Poll the hit-or-stand input.
BJActionPollInput:
jr_029_6d36:
    call NextRandom
    call PollJoy
    ld a, [wJoyPress]
    and $31
    jr z, BJActionPollInput

    bit 0, a
    jr nz, BJActionConfirm

    and $20
    jr z, BJActionSelectStand

    ld a, $19
    call PlayAudio
    xor a
    ld [wBJChoice], a
    jr ChooseBJAction

; Move the action cursor to stand.
BJActionSelectStand:
jr_029_6d56:
    ld a, $19
    call PlayAudio
    ld a, $1c
    ld [wBJChoice], a
    jr ChooseBJAction

; Confirm the selected action.
BJActionConfirm:
jr_029_6d62:
    ld a, $19
    call PlayAudio
    ret

; --- bj_card.asm ---

; Read the card in slot A, map it to its rank/suit byte, play cue $25, and draw it.
ShowBJHandCard:


Call_029_6d68:
    ld [wBJSlot], a
    ld l, a
    ld h, $00
    ld bc, wBJCards
    add hl, bc
    ld a, [hl]
    ld [wBJCard], a
    ld l, a
    ld h, $00
    ld bc, BJCardFaces
    add hl, bc
    ld a, [hl]
    ld [wBJFace], a
    ld a, $25
    call PlayAudio
    call DrawBJCard
    ret

; --- bj_deal.asm ---

; Choose card IDs one through fifty-two, retry used cards, then store the new card and update the remaining count.
DealBJRandom:


Call_029_6d8a:
Jump_029_6d8a:
jr_029_6d8a:
    call NextRandom
    ldh a, [hRandByte]
    cp $00
    jr z, DealBJRandom

    cp BJPlayableCardLimit
    jr nc, DealBJRandom

    ld [wBJDraw], a
    ld [wBJBitId], a
    ldh a, [hBJLoop]
    ld [wBJCard], a
    ldh a, [hBJSlot]
    ld [wBJFace], a

; Convert the pending card to its byte/bit index; reject used cards, mark a new card, store its hand slot, and decrement the remaining count.
StoreBJCard:

Jump_029_6da7:
    ld a, [wBJBitId]
    dec a
    ld [wBJBitId], a
    srl a
    srl a
    srl a
    ldh [hBJByte], a
    ld a, [wBJBitId]
    and $07
    ldh [hBJBit], a
    ldh a, [hBJByte]
    ld l, a
    ld h, $00
    ld bc, wBJUsed
    add hl, bc
    ld a, [hl]
    push af
    ldh a, [hBJBit]
    ld l, a
    ld h, $00
    ld bc, BJMasks
    add hl, bc
    pop af
    and [hl]
    jr z, BJStoreUnusedCard

    ld a, [wBJCard]
    ldh [hBJLoop], a
    ld a, [wBJFace]
    ldh [hBJSlot], a
    jr DealBJRandom

; Mark the unused card, store it in the current hand slot, and decrement the deck count.
; The tail updates the remaining-card count without redrawing the stored hand card.
BJStoreUnusedCard:
jr_029_6de1:
    ldh a, [hBJByte]
    ld l, a
    ld h, $00
    ld bc, wBJUsed
    add hl, bc
    ld a, [hl]
    push hl
    push af
    ldh a, [hBJBit]
    ld l, a
    ld h, $00
    ld bc, BJMasks
    add hl, bc
    pop af
    or [hl]
    pop hl
    ld [hl], a
    ld a, [wBJCard]
    ldh [hBJLoop], a
    ld a, [wBJFace]
    ldh [hBJSlot], a
    ld l, a
    ld h, $00
    ld bc, wBJCards
    add hl, bc
    ld a, [wBJDraw]
    ld [hl], a
    ld a, [wBJLeft]
    dec a
    ld [wBJLeft], a
    jp ShowBJLeft

BJMasks:
    db $80, $40, $20, $10, $08, $04, $02, $01

; --- bj_target_deal.asm ---

; Seek an unused card from the requested twenty-one-minus-score group; use random dealing if the target or search fails.
DealBJNear21:

    ldh a, [hBJLoop]
    ld [wBJCard], a
    ldh a, [hBJSlot]
    ld [wBJFace], a
    ld a, $15

; Replace the target score with 21 minus that score.
BJNear21ComputeGap:
jr_029_6e2d:
    ld hl, wBJTarget
    sub [hl]
    ld [hl], a
    jr z, BJNear21RandomFallback

    cp $0c
    jr nc, BJNear21RandomFallback

; Search the rank and reject only a set sign bit; candidate zero also reaches StoreBJCard.
BJTargetPickRank:
jr_029_6e38:
    call PickBJRank
    bit 7, a
    jr nz, BJNear21RandomFallback

    ld [wBJDraw], a
    ld [wBJBitId], a
    jp StoreBJCard


; Restore the saved loop and slot state before random dealing.
BJNear21RandomFallback:
jr_029_6e48:
    ld a, [wBJCard]
    ldh [hBJLoop], a
    ld a, [wBJFace]
    ldh [hBJSlot], a
    jp DealBJRandom

; Select the original score-dependent target or player-minus-dealer-minus-one target; use random dealing if it is invalid.
DealBJBelow:


Call_029_6e55:
    ldh a, [hBJLoop]
    ld [wBJCard], a
    ldh a, [hBJSlot]
    ld [wBJFace], a
    ld a, $15
    ld hl, wBJTarget
    sub [hl]
    ld [hl], a
    cp $09
    jr nc, BJBelowUseScoreGap

    ld a, $0a
    ld [wBJTarget], a
    jr BJTargetPickRank

; Use player minus dealer minus one; only zero/sign are rejected, so targets above eleven can reach the rank search.
BJBelowUseScoreGap:
jr_029_6e71:
    ld a, [wBJPlayer]
    ld hl, wBJDealer
    sub [hl]
    dec a
    ld [wBJTarget], a
    cp $00
    jr z, BJBelowRandomFallback

    bit 7, a
    jr z, BJTargetPickRank

; Restore the saved loop and slot state before random dealing.
BJBelowRandomFallback:
jr_029_6e84:
    ld a, [wBJCard]
    ldh [hBJLoop], a
    ld a, [wBJFace]
    ldh [hBJSlot], a
    jp DealBJRandom

; --- bj_rank.asm ---

; Select the original ace, ten-point, or descending rank search for the pending target.
PickBJRank:


Call_029_6e91:
    ld a, [wBJTarget]
    cp $0a
    jp z, PickBJTen

    cp $0b
    jr z, BJScanAceGroup

; Scan lower rank groups for an unused card, using the original group offsets and returning $ff when exhausted.
ScanBJRanks:

Jump_029_6e9d:
jr_029_6e9d:
    ld a, [wBJTarget]
    dec a
    ld [wBJTarget], a
    bit 7, a
    jr z, BJScanRankGroup

    ld a, $ff
    ret


; Select the used-card byte and half for the current rank.
BJScanRankGroup:
jr_029_6eab:
    srl a
    ldh [hBJByte], a
    ld a, [wBJTarget]
    and $01
    ldh [hBJHalf], a
    ldh a, [hBJByte]
    ld l, a
    ld h, $00
    ld bc, wBJUsed
    add hl, bc
    ld a, [hl]
    ld [wBJScan], a
    push af
    ldh a, [hBJHalf]
    ld l, a
    ld h, $00
    ld bc, BJHalfMasks
    add hl, bc
    pop af
    and [hl]
    cp [hl]
    jr z, ScanBJRanks

    ld a, [wBJTarget]
    and $01
    jr z, BJScanRankBase

    ldh a, [hBJByte]
    ld l, a
    ld h, $00
    ld bc, wBJUsed
    add hl, bc
    ld a, [hl]
    add a
    add a
    add a
    add a
    ld [wBJScan], a

; Load the first card ID and used bits for this rank.
BJScanRankBase:
jr_029_6eea:
    ld a, [wBJTarget]
    ldh [hBJRank], a
    ld l, a
    ld h, $00
    ld bc, BJRankBases
    add hl, bc
    ld a, [hl]
    ld [wBJScanId], a

; Advance the card ID until an unused bit is found.
BJScanRankBit:
jr_029_6efa:
    ld a, [wBJScanId]
    inc a
    ld [wBJScanId], a
    ld a, [wBJScan]
    sla a
    ld [wBJScan], a
    jr c, BJScanRankBit

    ld a, [wBJScanId]
    ret


; Check the ace group before falling back to ten-point cards.
BJScanAceGroup:
jr_029_6f0f:
    xor a
    ld [wBJScanId], a
    ld a, [wBJUsed]
    ld [wBJScan], a
    and $f0
    cp $f0
    jr nz, BJScanRankBit

    ld a, [wBJTarget]
    dec a
    ld [wBJTarget], a

; Search ten-point cards from ID thirty-seven upward, falling back to lower ranks if those cards are used.
PickBJTen:

Jump_029_6f26:
    ld a, $24
    ld [wBJScan], a
    ld a, $04
    ldh [hBJByte], a
    ldh [hBJBit], a

; Test the next ten-point card ID against the used-card mask.
BJScanTenCard:
jr_029_6f31:
    ld a, [wBJScan]
    inc a
    ld [wBJScan], a
    ldh a, [hBJByte]
    ld l, a
    ld h, $00
    ld bc, wBJUsed
    add hl, bc
    ld a, [hl]
    push af
    ldh a, [hBJBit]
    ld l, a
    ld h, $00
    ld bc, BJMasks
    add hl, bc
    pop af
    and [hl]
    jr z, BJScanTenFound

    ldh a, [hBJBit]
    inc a
    ldh [hBJBit], a
    cp $08
    jr nz, BJScanTenCard

    xor a
    ldh [hBJBit], a
    ldh a, [hBJByte]
    inc a
    ldh [hBJByte], a
    cp $07
    jr nz, BJScanTenCard

    ld a, [wBJTarget]
    dec a
    ld [wBJTarget], a
    jp ScanBJRanks


; Return the unused ten-point card ID.
BJScanTenFound:
jr_029_6f6f:
    ld a, [wBJScan]
    ret

; --- bj_rank_tbl.asm ---

BJHalfMasks:
    db $f0, $0f
; Index five keeps base $12: probes cards 21..24 but returns IDs 19..22; StoreBJCard rechecks the returned ID.
BJRankBases:
    db $00, $04, $08, $0c, $10, $12, $18, $1c, $20

; --- bj_bias.asm ---

; Select dealing mode from cash >= $1000, chips >= 200, and Rudy recognition; only the high recognized path latches exit.
SetBJBias:

    ld a, [wC2Cash+1]
    cp $10
    jr nc, BJBiasHighFunds

    ld a, [wChips]
    cp $c8
    jr c, BJBiasLowFunds

; Use mode one above either funds threshold; recognized Rudy also sets the session exit marker.
BJBiasHighFunds:
jr_029_6f8c:
    ld a, C2RudyKnows
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, BJBiasSetOne

    ld a, $ff
    ld [wBJExit], a

; Select dealing bias mode one.
BJBiasSetOne:
jr_029_6f9d:
    ld a, $01
    jr BJBiasStoreMode

; Below both thresholds, use mode two for recognized Rudy and mode zero otherwise; keep any exit marker.
BJBiasLowFunds:
jr_029_6fa1:
    ld a, C2RudyKnows
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, BJBiasStoreMode

    ld a, $02

; Store the selected dealing bias mode.
BJBiasStoreMode:
jr_029_6faf:
    ld [wBJBias], a
    ret

; --- bj_reset.asm ---

; Clear both scores and all twelve hand slots, then set the next dealer/player slots to two/eight.
ClearBJHands:


Call_029_6fb3:
    xor a
    ld [wBJDealer], a
    ld [wBJPlayer], a
    ld c, BJLastHandSlot
    ld hl, wBJCards

; Clear each of the twelve hand-card slots.
BJClearHandSlots:
jr_029_6fbf:
    ld [hl+], a
    dec c
    bit 7, c
    jr z, BJClearHandSlots

    ld a, BJDealerFirstExtraSlot
    ld [wBJNextD], a
    ld a, BJPlayerFirstExtraSlot
    ld [wBJNextP], a
    ret

; Clear six used-card bytes, set the seventh to $0f, and mark all fifty-two cards available.
ResetBJDeck:


Call_029_6fd0:
    xor a
    ld c, $05
    ld hl, wBJUsed

; Clear the first six used-card bitmap bytes.
BJClearUsedCardBytes:
jr_029_6fd6:
    ld [hl+], a
    dec c
    bit 7, c
    jr z, BJClearUsedCardBytes

    ld a, $0f
    ld [wBJUsed+6], a
    ld a, $34
    ld [wBJLeft], a
    ret

; --- bj_score.asm ---

; Select the player or dealer hand from A, score it, display its total or special result, and return the stored score in A.
ScoreBJHand:


Call_029_6fe7:
    push af
    cp $00
    jr nz, BJScorePlayerHand

    ld a, $65
    ld [wBJHandPtr], a
    ld a, $c8
    ld [wBJHandPtr+1], a
    jr BJScoreSumHand

; Select the player hand pointer.
BJScorePlayerHand:
jr_029_6ff8:
    ld a, $6b
    ld [wBJHandPtr], a
    ld a, $c8
    ld [wBJHandPtr+1], a

; Sum the selected hand and inspect special result markers.
BJScoreSumHand:
jr_029_7002:
    call SumBJHand
    ld a, [wBJTotal]
    bit 7, a
    jr z, BJScoreCheckBust

    cp $ff
    jr nz, BJScoreShowTotal

    pop af
    or $06
    call ShowBJText
    ld a, [wBJTotal]
    ret


; Check for a zero hand result and display its message.
BJScoreCheckBust:
jr_029_701a:
    cp $00
    jr nz, BJScoreShowTotal

    pop af
    or $08
    call ShowBJText
    ld a, [wBJTotal]
    ret


; Draw the numeric score and restore the stored return value.
BJScoreShowTotal:
jr_029_7028:
    ld [wBJAces], a
    and $7f
    ld [wBJTotal], a
    pop af
    xor a
    ld [wTextX], a
    ld a, $0d
    ld [wTextY], a
    ld a, $09
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue
    ld a, [wBJAces]
    ld [wBJTotal], a
    ret

; --- bj_ui.asm ---

; Convert the remaining card count into two decimal tiles and submit the rectangle at $9811.
ShowBJLeft:


Call_029_704c:
Jump_029_704c:
    ld a, [wBJLeft]
    call SplitBJDigits
    ld a, $02
    ld [wBJRect], a
    ld a, $01
    ld [wBJRect+1], a
    ld a, [wBJDigits]
    cp $00
    jr nz, BJLeftNonzeroTens

    ld a, $7f
    jr BJLeftWriteDigits

; Set the visible tens digit when it is nonzero.
BJLeftNonzeroTens:
jr_029_7067:
    or $80

; Write the remaining-card digits to the map queue.
BJLeftWriteDigits:
jr_029_7069:
    ld [wBJDigits], a
    ld a, [wBJDigits+1]
    or $80
    ld [wBJDigits+1], a
    ld l, $55
    ld h, $c8
    ld bc, $9811
    call QueueTileRect
    call SubmitMapQueue
    ret

; Split A into a byte tens count and a remainder by repeated subtraction of ten.
SplitBJDigits:


Call_029_7082:
    ld [wBJDigits+1], a
    xor a
    ld [wBJDigits], a

; Subtract tens until the remainder is below ten.
BJSplitDigitsLoop:
jr_029_7089:
    ld a, [wBJDigits+1]
    cp $0a
    jr c, BJSplitDigitsDone

    ld a, [wBJDigits+1]
    sub $0a
    ld [wBJDigits+1], a
    ld a, [wBJDigits]
    inc a
    ld [wBJDigits], a
    jr BJSplitDigitsLoop

; Return the decimal tens and remainder.
BJSplitDigitsDone:
jr_029_70a1:
    ret

; Add payout chips one at a time; reaching $ff exits before decrementing the pending payout byte.
PayBJChips:


Jump_029_70a2:
    ld a, $15
    call ShowBJText
    ld a, [wBJPayout]
    cp $00
    jr z, BJPayNothing

; Add and display one chip from the pending payout.
BJPayNextChip:
jr_029_70ae:
    ld a, [wChips]
    inc a
    ld [wChips], a
    call ShowBJChips
    ld a, $23
    call PlayAudio
    ld a, $08
    call WaitTicks
    ld a, [wChips]
    cp $ff
    jr z, BJPayDelay

    ld a, [wBJPayout]
    dec a
    ld [wBJPayout], a
    jr nz, BJPayNextChip

; Wait after the payout reaches zero or chips reach $ff.
BJPayDelay:
jr_029_70d2:
    ld a, $28
    call WaitTicks
    ret


; Display the chip total when the payout is zero.
BJPayNothing:
jr_029_70d8:
    call ShowBJChips
    ld a, $3c
    call WaitTicks
    ret

; Display the chip list text at its original regional coordinates and submit the map queue.
ShowBJChips:


Call_029_70e1:
Jump_029_70e1:
    ld a, $0c
    ld [wTextX], a
    ld a, $0d
    ld [wTextY], a
    ld a, $04
    ld [wListName], a
    ld a, $06
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue
    ret

; Fade out, load the blackjack table and its text/count, conditionally show chips, and fade in.
LoadBJTable:


Call_029_70fc:
    call FadeOut
    call LoadBJMap
    ld a, $10
    call ShowBJText
    ld a, $11
    call ShowBJText
    call ShowBJLeft
    ld a, [wChips]
    cp $00
    jr z, BJTableFadeIn

    ld a, [wBJLeft]
    cp $10
    jr c, BJTableFadeIn

    ld a, $15
    call ShowBJText
    call ShowBJChips

; Fade in the prepared blackjack table.
BJTableFadeIn:
jr_029_7125:
    call FadeIn
    ret

; Display list text A plus twelve at the indexed coordinates while preserving BC and DE.
ShowBJText:


Call_029_7129:
    push de
    push bc
    push af
    add $0c
    ld [wListMark], a
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, BJTextCoords
    add hl, bc
    ld a, [hl+]
    ld [wTextX], a
    ld a, [hl]
    ld [wTextY], a
    call ShowListText
    call SubmitMapQueue
    pop bc
    pop de
    ret

; Read the destination for the hand slot and the rectangle for the card, skip its prefix, and submit it.
DrawBJCard:


Call_029_714b:
    ld a, [wBJSlot]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, BJCardDests
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [wBJCard]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, BJCardPtrs
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    call QueueMapRect
    call SubmitMapQueue
    ret

; --- bj_ui_tbl.asm ---

BJCardDests:
    dw $9841 ; dealer slot 0
    dw $9844 ; dealer slot 1
    dw $9847 ; dealer slot 2
    dw $984a ; dealer slot 3
    dw $984d ; dealer slot 4
    dw $9850 ; dealer slot 5
    dw $98e1 ; player slot 6
    dw $98e4 ; player slot 7
    dw $98e7 ; player slot 8
    dw $98ea ; player slot 9
    dw $98ed ; player slot 10
    dw $98f0 ; player slot 11

BJTextCoords:
    db $00, $0d ; text $00: bet prompt
    db $04, $11 ; text $01: bet confirmation
    db $00, $0f ; text $02: player action prompt
    db $00, $0f ; text $03: replay prompt
    db $00, $0d ; text $04: leave table
    db $00, $0d ; text $05
    db $00, $0d ; text $06: dealer blackjack
    db $00, $0d ; text $07: player blackjack
    db $00, $0d ; text $08: dealer bust
    db $00, $0d ; text $09: player bust
    db $00, $0f ; text $0a: tie
    db $00, $0f ; text $0b: loss
    db $00, $0f ; text $0c: win
    db $00, $0d ; text $0d: reshuffle
    db $00, $0f ; text $0e
    db $00, $0d ; text $0f: no chips
    db $00, $01 ; text $10: LoadBJTable first text
    db $00, $06 ; text $11: LoadBJTable second text
    db $08, $00 ; text $12
    db $01, $01 ; text $13
    db $01, $01 ; text $14
    db $0c, $0d ; text $15

BJCardFaces:
    db $00 ; ID 0: empty slot
    db $0b, $1b, $2b, $3b ; IDs 1..4: 11 points before ace adjustment
    db $02, $12, $22, $32 ; IDs 5..8: 2 points
    db $03, $13, $23, $33 ; IDs 9..12: 3 points
    db $04, $14, $24, $34 ; IDs 13..16: 4 points
    db $05, $15, $25, $35 ; IDs 17..20: 5 points
    db $06, $16, $26, $36 ; IDs 21..24: 6 points
    db $07, $17, $27, $37 ; IDs 25..28: 7 points
    db $08, $18, $28, $38 ; IDs 29..32: 8 points
    db $09, $19, $29, $39 ; IDs 33..36: 9 points
    db $0a, $1a, $2a, $3a ; IDs 37..40: 10 points
    db $0a, $1a ; IDs 41..42: 10 points
jr_029_71de:
    db $2a, $3a ; IDs 43..44: 10 points
    db $0a, $1a, $2a, $3a ; IDs 45..48: 10 points
    db $0a, $1a, $2a, $3a ; IDs 49..52: 10 points
