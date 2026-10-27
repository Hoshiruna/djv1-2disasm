
BJCardPtrs:
    dw BJCardBack
    dw BJCardAceDiamonds
    dw BJCardAceHearts
    dw BJCardAceClubs
    dw BJCardAceSpades
    dw BJCardTwoDiamonds
    dw BJCardTwoHearts
    dw BJCardTwoClubs
    dw BJCardTwoSpades
    dw BJCardThreeDiamonds
    dw BJCardThreeHearts
    dw BJCardThreeClubs
    dw BJCardThreeSpades
    dw BJCardFourDiamonds
    dw BJCardFourHearts
    dw BJCardFourClubs
    dw BJCardFourSpades
    dw BJCardFiveDiamonds
    dw BJCardFiveHearts
    dw BJCardFiveClubs
    dw BJCardFiveSpades
    dw BJCardSixDiamonds
    dw BJCardSixHearts
    dw BJCardSixClubs
    dw BJCardSixSpades
    dw BJCardSevenDiamonds
    dw BJCardSevenHearts
    dw BJCardSevenClubs
    dw BJCardSevenSpades
    dw BJCardEightDiamonds
    dw BJCardEightHearts
    dw BJCardEightClubs
    dw BJCardEightSpades
    dw BJCardNineDiamonds
    dw BJCardNineHearts
    dw BJCardNineClubs
    dw BJCardNineSpades
    dw BJCardTenDiamonds
    dw BJCardTenHearts
    dw BJCardTenClubs
    dw BJCardTenSpades
    dw BJCardJackDiamonds
    dw BJCardJackHearts
    dw BJCardJackClubs
    dw BJCardJackSpades
    dw BJCardQueenDiamonds
    dw BJCardQueenHearts
    dw BJCardQueenClubs
    dw BJCardQueenSpades
    dw BJCardKingDiamonds
    dw BJCardKingHearts
    dw BJCardKingClubs
    dw BJCardKingSpades
    dw BJCardBlank

; Card-back rectangle for a zero-valued hand slot.
BJCardBack:
BJCard0:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $00, $01, $02 ; row 0 tiles
    db $0d, $0d, $0d ; row 0 attributes
    db $03, $04, $05 ; row 1 tiles
    db $0d, $0d, $0d ; row 1 attributes
    db $03, $04, $05 ; row 2 tiles
jr_029_60eb:
    db $4d, $4d, $4d ; row 2 attributes
    db $00, $01, $02 ; row 3 tiles
    db $4d, $4d, $4d ; row 3 attributes

; Ace of diamonds rectangle (card ID $01).
BJCardAceDiamonds:
BJCard1:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $06, $07, $08 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $ac, $ad, $ae ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $ac, $ad, $ae ; row 2 tiles
    db $4b, $4b, $4b ; row 2 attributes
    db $0f, $01, $10 ; row 3 tiles
    db $09, $4c, $09 ; row 3 attributes

; Ace of hearts rectangle (card ID $02).
BJCardAceHearts:
BJCard2:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $06, $07, $08 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $7f, $80, $81 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $09, $0a, $0b ; row 2 tiles
    db $4b, $4b, $4b ; row 2 attributes
    db $0f, $07, $10 ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Ace of clubs rectangle (card ID $03).
BJCardAceClubs:
BJCard3:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $06, $07, $08 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $5c, $5d, $5e ; row 1 tiles
    db $0a, $0a, $0a ; row 1 attributes
    db $5f, $60, $61 ; row 2 tiles
    db $0a, $0a, $0a ; row 2 attributes
    db $0f, $07, $10 ; row 3 tiles
    db $09, $49, $09 ; row 3 attributes

; Ace of spades rectangle (card ID $04).
BJCardAceSpades:
BJCard4:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $06, $07, $08 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $09, $0a, $0b ; row 1 tiles
    db $0a, $0a, $0a ; row 1 attributes
    db $0c, $0d, $0e ; row 2 tiles
    db $09, $09, $09 ; row 2 attributes
    db $0f, $07, $10 ; row 3 tiles
    db $09, $49, $09 ; row 3 attributes

; Two of diamonds rectangle (card ID $05).
BJCardTwoDiamonds:
BJCard5:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $11, $af, $08 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $13, $b0, $15 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $13, $b0, $15 ; row 2 tiles
    db $0b, $4b, $0b ; row 2 attributes
    db $0f, $af, $16 ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Two of hearts rectangle (card ID $06).
BJCardTwoHearts:
BJCard6:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $11, $82, $08 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $13, $7f, $15 ; row 1 tiles
    db $0b, $03, $0b ; row 1 attributes
    db $13, $7f, $15 ; row 2 tiles
    db $0b, $03, $0b ; row 2 attributes
    db $0f, $82, $16 ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Two of clubs rectangle (card ID $07).
BJCardTwoClubs:
BJCard7:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $11, $62, $08 ; row 0 tiles
    db $09, $0a, $09 ; row 0 attributes
    db $13, $14, $15 ; row 1 tiles
    db $09, $09, $09 ; row 1 attributes
    db $13, $14, $15 ; row 2 tiles
    db $09, $49, $09 ; row 2 attributes
    db $0f, $62, $16 ; row 3 tiles
    db $09, $4a, $09 ; row 3 attributes

; Two of spades rectangle (card ID $08).
BJCardTwoSpades:
BJCard8:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $11, $12, $08 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $13, $14, $15 ; row 1 tiles
    db $09, $09, $09 ; row 1 attributes
    db $13, $14, $15 ; row 2 tiles
    db $09, $49, $09 ; row 2 attributes
    db $0f, $12, $16 ; row 3 tiles
    db $09, $49, $09 ; row 3 attributes

; Three of diamonds rectangle (card ID $09).
BJCardThreeDiamonds:
BJCard9:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $17, $af, $08 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $13, $b1, $15 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $13, $b1, $15 ; row 2 tiles
    db $0b, $4b, $0b ; row 2 attributes
    db $0f, $af, $1a ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Three of hearts rectangle (card ID $0a).
BJCardThreeHearts:
BJCard10:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $17, $82, $08 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $13, $83, $15 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $13, $84, $15 ; row 2 tiles
    db $0b, $0b, $0b ; row 2 attributes
    db $0f, $82, $1a ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Three of clubs rectangle (card ID $0b).
BJCardThreeClubs:
BJCard11:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $17, $62, $08 ; row 0 tiles
    db $09, $0a, $09 ; row 0 attributes
    db $13, $63, $15 ; row 1 tiles
    db $09, $0a, $09 ; row 1 attributes
    db $13, $19, $15 ; row 2 tiles
    db $09, $09, $09 ; row 2 attributes
    db $0f, $62, $1a ; row 3 tiles
    db $09, $4a, $09 ; row 3 attributes

; Three of spades rectangle (card ID $0c).
BJCardThreeSpades:
BJCard12:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $17, $12, $08 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $13, $18, $15 ; row 1 tiles
    db $09, $09, $09 ; row 1 attributes
    db $13, $19, $15 ; row 2 tiles
    db $09, $09, $09 ; row 2 attributes
    db $0f, $12, $1a ; row 3 tiles
    db $09, $49, $09 ; row 3 attributes

; Four of diamonds rectangle (card ID $0d).
BJCardFourDiamonds:
BJCard13:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $b2, $07, $b3 ; row 0 tiles
jr_029_623e:
    db $0b, $09, $0b ; row 0 attributes
    db $b4, $7f, $b5 ; row 1 tiles
    db $0b, $03, $0b ; row 1 attributes
    db $b4, $7f, $b5 ; row 2 tiles
    db $4b, $03, $4b ; row 2 attributes
    db $b6, $07, $b7 ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Four of hearts rectangle (card ID $0e).
BJCardFourHearts:
BJCard14:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $85, $07, $86 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $13, $7f, $15 ; row 1 tiles
    db $0b, $03, $0b ; row 1 attributes
    db $13, $7f, $15 ; row 2 tiles
    db $0b, $03, $0b ; row 2 attributes
    db $87, $07, $88 ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Four of clubs rectangle (card ID $0f).
BJCardFourClubs:
BJCard15:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $64, $07, $65 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $1d, $7f, $1e ; row 1 tiles
    db $09, $02, $09 ; row 1 attributes
    db $1f, $7f, $20 ; row 2 tiles
    db $09, $02, $09 ; row 2 attributes
    db $66, $07, $67 ; row 3 tiles
    db $0a, $49, $09 ; row 3 attributes

; Four of spades rectangle (card ID $10).
BJCardFourSpades:
BJCard16:
    db $2f ; prefix skipped by DrawBJCard
jr_029_628a:
    db $03, $04 ; width, height
    db $1b, $07, $1c ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $1d, $7f, $1e ; row 1 tiles
    db $09, $01, $09 ; row 1 attributes
    db $1f, $7f, $20 ; row 2 tiles
    db $09, $01, $09 ; row 2 attributes
    db $21, $07, $22 ; row 3 tiles
    db $09, $49, $09 ; row 3 attributes

; Five of diamonds rectangle (card ID $11).
BJCardFiveDiamonds:
BJCard17:
    db $2f ; prefix skipped by DrawBJCard
jr_029_62a5:
    db $03, $04 ; width, height
    db $b8, $07, $b3 ; row 0 tiles
    db $0b, $09, $0b ; row 0 attributes
    db $b4, $24, $b5 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $b4, $24, $b5 ; row 2 tiles
    db $4b, $4b, $4b ; row 2 attributes
    db $b6, $07, $b9 ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Five of hearts rectangle (card ID $12).
BJCardFiveHearts:
BJCard18:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $89, $07, $86 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $13, $83, $15 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $13, $84, $15 ; row 2 tiles
    db $0b, $0b, $0b ; row 2 attributes
    db $87, $07, $8a ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Five of clubs rectangle (card ID $13).
BJCardFiveClubs:
BJCard19:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $68, $07, $65 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $1d, $69, $1e ; row 1 tiles
    db $09, $0a, $09 ; row 1 attributes
    db $1f, $25, $20 ; row 2 tiles
    db $09, $09, $09 ; row 2 attributes
    db $66, $07, $6a ; row 3 tiles
    db $0a, $49, $09 ; row 3 attributes

; Five of spades rectangle (card ID $14).
BJCardFiveSpades:
BJCard20:
    db $2f ; prefix skipped by DrawBJCard
jr_029_62f6:
    db $03, $04 ; width, height
    db $23, $07, $1c ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $1d, $24, $1e ; row 1 tiles
    db $09, $0a, $09 ; row 1 attributes
    db $1f, $25, $20 ; row 2 tiles
    db $09, $0a, $09 ; row 2 attributes
    db $21, $07, $26 ; row 3 tiles
    db $09, $49, $09 ; row 3 attributes

; Six of diamonds rectangle (card ID $15).
BJCardSixDiamonds:
BJCard21:
    db $2f ; prefix skipped by DrawBJCard
jr_029_6311:
    db $03, $04 ; width, height
    db $ba, $07, $b3 ; row 0 tiles
    db $0b, $09, $0b ; row 0 attributes
    db $bb, $7f, $bc ; row 1 tiles
    db $0b, $43, $0b ; row 1 attributes
    db $bb, $7f, $bc ; row 2 tiles
    db $4b, $03, $4b ; row 2 attributes
    db $b6, $07, $bd ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Six of hearts rectangle (card ID $16).
BJCardSixHearts:
BJCard22:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $8b, $07, $86 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $8c, $7f, $8d ; row 1 tiles
    db $0b, $03, $0b ; row 1 attributes
    db $8e, $7f, $8f ; row 2 tiles
    db $0b, $43, $0b ; row 2 attributes
    db $87, $07, $90 ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Six of clubs rectangle (card ID $17).
BJCardSixClubs:
BJCard23:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $6b, $07, $65 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $6c, $7f, $6d ; row 1 tiles
    db $09, $02, $0a ; row 1 attributes
    db $2a, $7f, $2b ; row 2 tiles
    db $09, $02, $09 ; row 2 attributes
    db $66, $07, $6e ; row 3 tiles
    db $0a, $49, $09 ; row 3 attributes

; Six of spades rectangle (card ID $18).
BJCardSixSpades:
BJCard24:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $27, $07, $1c ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $28, $7f, $29 ; row 1 tiles
    db $09, $01, $09 ; row 1 attributes
    db $2a, $7f, $2b ; row 2 tiles
    db $09, $01, $09 ; row 2 attributes
    db $21, $07, $2c ; row 3 tiles
    db $09, $49, $09 ; row 3 attributes

; Seven of diamonds rectangle (card ID $19).
BJCardSevenDiamonds:
BJCard25:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $be, $07, $b3 ; row 0 tiles
    db $0b, $09, $0b ; row 0 attributes
    db $bb, $bf, $bc ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $bb, $7f, $bc ; row 2 tiles
    db $4b, $04, $4b ; row 2 attributes
    db $b6, $01, $c0 ; row 3 tiles
    db $0b, $4c, $0b ; row 3 attributes

; Seven of hearts rectangle (card ID $1a).
BJCardSevenHearts:
BJCard26:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $91, $07, $86 ; row 0 tiles
    db $0b, $09, $0b ; row 0 attributes
    db $8c, $92, $8d ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $8e, $7f, $8f ; row 2 tiles
    db $0b, $03, $0b ; row 2 attributes
    db $87, $07, $93 ; row 3 tiles
    db $0b, $49, $0b ; row 3 attributes

; Seven of clubs rectangle (card ID $1b).
BJCardSevenClubs:
BJCard27:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $6f, $07, $65 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $6c, $70, $6d ; row 1 tiles
    db $09, $0a, $0a ; row 1 attributes
    db $2a, $7f, $2b ; row 2 tiles
    db $09, $02, $09 ; row 2 attributes
    db $66, $07, $71 ; row 3 tiles
    db $0a, $49, $09 ; row 3 attributes

; Seven of spades rectangle (card ID $1c).
BJCardSevenSpades:
BJCard28:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $2d, $07, $1c ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $28, $2e, $29 ; row 1 tiles
    db $09, $09, $09 ; row 1 attributes
    db $2a, $7f, $2b ; row 2 tiles
    db $09, $01, $09 ; row 2 attributes
    db $21, $07, $2f ; row 3 tiles
    db $09, $49, $09 ; row 3 attributes

; Eight of diamonds rectangle (card ID $1d).
BJCardEightDiamonds:
BJCard29:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
jr_029_63eb:
    db $c1, $01, $c2 ; row 0 tiles
    db $0b, $0c, $0b ; row 0 attributes
    db $c3, $7f, $c4 ; row 1 tiles
    db $0b, $03, $0b ; row 1 attributes
    db $c3, $7f, $c4 ; row 2 tiles
    db $4b, $03, $4b ; row 2 attributes
    db $c5, $01, $c6 ; row 3 tiles
    db $0b, $4c, $0b ; row 3 attributes

; Eight of hearts rectangle (card ID $1e).
BJCardEightHearts:
BJCard30:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
jr_029_6406:
    db $94, $07, $86 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $95, $7f, $96 ; row 1 tiles
    db $0b, $03, $0b ; row 1 attributes
    db $95, $7f, $96 ; row 2 tiles
    db $4b, $03, $4b ; row 2 attributes
    db $87, $07, $97 ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Eight of clubs rectangle (card ID $1f).
BJCardEightClubs:
BJCard31:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $72, $07, $73 ; row 0 tiles
    db $09, $09, $0a ; row 0 attributes
    db $74, $7f, $75 ; row 1 tiles
    db $0a, $02, $0a ; row 1 attributes
    db $74, $7f, $75 ; row 2 tiles
    db $4a, $02, $4a ; row 2 attributes
    db $76, $07, $77 ; row 3 tiles
    db $0a, $49, $09 ; row 3 attributes

; Eight of spades rectangle (card ID $20).
BJCardEightSpades:
BJCard32:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $30, $07, $31 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $32, $7f, $33 ; row 1 tiles
jr_029_6445:
    db $09, $01, $09 ; row 1 attributes
    db $32, $7f, $33 ; row 2 tiles
    db $49, $01, $49 ; row 2 attributes
    db $34, $07, $35 ; row 3 tiles
    db $09, $49, $09 ; row 3 attributes

; Nine of diamonds rectangle (card ID $21).
BJCardNineDiamonds:
BJCard33:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $c7, $07, $c2 ; row 0 tiles
    db $0b, $09, $0b ; row 0 attributes
    db $c3, $24, $c4 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $c3, $24, $c4 ; row 2 tiles
    db $4b, $4b, $4b ; row 2 attributes
    db $c5, $07, $c8 ; row 3 tiles
    db $0b, $49, $0b ; row 3 attributes

; Nine of hearts rectangle (card ID $22).
BJCardNineHearts:
BJCard34:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $98, $07, $86 ; row 0 tiles
    db $0b, $09, $0b ; row 0 attributes
    db $95, $83, $96 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $95, $84, $96 ; row 2 tiles
    db $4b, $0b, $4b ; row 2 attributes
    db $87, $07, $99 ; row 3 tiles
    db $0b, $49, $0b ; row 3 attributes

; Nine of clubs rectangle (card ID $23).
BJCardNineClubs:
BJCard35:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $78, $07, $73 ; row 0 tiles
    db $09, $09, $0a ; row 0 attributes
    db $74, $69, $75 ; row 1 tiles
    db $0a, $0a, $0a ; row 1 attributes
    db $74, $25, $75 ; row 2 tiles
    db $4a, $09, $4a ; row 2 attributes
    db $76, $07, $79 ; row 3 tiles
    db $0a, $49, $09 ; row 3 attributes

; Nine of spades rectangle (card ID $24).
BJCardNineSpades:
BJCard36:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $36, $07, $31 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $32, $24, $33 ; row 1 tiles
    db $09, $0a, $09 ; row 1 attributes
    db $32, $25, $33 ; row 2 tiles
    db $49, $09, $49 ; row 2 attributes
    db $34, $07, $37 ; row 3 tiles
    db $09, $49, $09 ; row 3 attributes

; Ten of diamonds rectangle (card ID $25).
BJCardTenDiamonds:
BJCard37:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $c9, $07, $c2 ; row 0 tiles
    db $0b, $09, $0b ; row 0 attributes
    db $c3, $bf, $c4 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $c3, $bf, $c4 ; row 2 tiles
    db $4b, $4b, $4b ; row 2 attributes
    db $c5, $01, $ca ; row 3 tiles
    db $0b, $4c, $0b ; row 3 attributes

; Ten of hearts rectangle (card ID $26).
BJCardTenHearts:
BJCard38:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $9a, $07, $86 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $95, $92, $96 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $95, $92, $96 ; row 2 tiles
    db $4b, $4b, $4b ; row 2 attributes
    db $87, $07, $9b ; row 3 tiles
    db $0b, $4b, $0b ; row 3 attributes

; Ten of clubs rectangle (card ID $27).
BJCardTenClubs:
BJCard39:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $38, $7a, $73 ; row 0 tiles
    db $09, $09, $0a ; row 0 attributes
    db $74, $3a, $75 ; row 1 tiles
    db $0a, $09, $0a ; row 1 attributes
    db $74, $3a, $75 ; row 2 tiles
    db $4a, $49, $4a ; row 2 attributes
    db $76, $7a, $3b ; row 3 tiles
    db $0a, $49, $09 ; row 3 attributes

; Ten of spades rectangle (card ID $28).
BJCardTenSpades:
BJCard40:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $38, $39, $31 ; row 0 tiles
    db $09, $09, $09 ; row 0 attributes
    db $32, $3a, $33 ; row 1 tiles
    db $09, $09, $09 ; row 1 attributes
    db $32, $3a, $33 ; row 2 tiles
    db $49, $49, $49 ; row 2 attributes
    db $34, $39, $3b ; row 3 tiles
    db $09, $49, $09 ; row 3 attributes

; Jack of diamonds rectangle (card ID $29).
BJCardJackDiamonds:
BJCard41:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $cb, $3d, $b3 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $cc, $3f, $cd ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $ce, $42, $cf ; row 2 tiles
    db $0b, $0b, $0b ; row 2 attributes
    db $b6, $44, $d0 ; row 3 tiles
    db $0b, $0b, $0b ; row 3 attributes

; Jack of hearts rectangle (card ID $2a).
BJCardJackHearts:
BJCard42:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $9c, $3d, $86 ; row 0 tiles
    db $0b, $0b ; row 0 attributes
jr_029_654f:
    db $0b ; row 0 attributes continued
    db $9d, $3f, $9e ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $9f, $42, $a0 ; row 2 tiles
    db $0b, $0b, $0b ; row 2 attributes
    db $87, $44, $a1 ; row 3 tiles
    db $0b, $0b, $0b ; row 3 attributes

; Jack of clubs rectangle (card ID $2b).
BJCardJackClubs:
BJCard43:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $3c, $3d, $65 ; row 0 tiles
    db $09, $0a, $09 ; row 0 attributes
    db $3e, $3f, $40 ; row 1 tiles
    db $09, $0a, $0a ; row 1 attributes
    db $41, $42, $43 ; row 2 tiles
    db $0a ; row 2 attributes
jr_029_6575:
    db $0a, $09 ; row 2 attributes continued
    db $66, $44, $45 ; row 3 tiles
    db $0a, $0a, $09 ; row 3 attributes

; Jack of spades rectangle (card ID $2c).
BJCardJackSpades:
BJCard44:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $3c, $3d, $1c ; row 0 tiles
    db $09, $0a, $09 ; row 0 attributes
    db $3e, $3f, $40 ; row 1 tiles
    db $09, $0a, $0a ; row 1 attributes
    db $41, $42, $43 ; row 2 tiles
    db $0a, $0a, $09 ; row 2 attributes
    db $21, $44, $45 ; row 3 tiles
    db $09, $0a, $09 ; row 3 attributes

; Queen of diamonds rectangle (card ID $2d).
BJCardQueenDiamonds:
BJCard45:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $d1, $47, $b3 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $a3, $49, $d2 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $d3, $4c, $a6 ; row 2 tiles
    db $0b, $0b, $0b ; row 2 attributes
    db $b6, $4e, $d4 ; row 3 tiles
    db $0b, $0b, $0b ; row 3 attributes

; Queen of hearts rectangle (card ID $2e).
BJCardQueenHearts:
BJCard46:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $a2, $47, $86 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $a3, $49, $a4 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $a5, $4c, $a6 ; row 2 tiles
    db $0b, $0b, $0b ; row 2 attributes
    db $87, $4e, $a7 ; row 3 tiles
    db $0b, $0b, $0b ; row 3 attributes

; Queen of clubs rectangle (card ID $2f).
BJCardQueenClubs:
BJCard47:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $7b, $47, $65 ; row 0 tiles
    db $09, $0a, $09 ; row 0 attributes
    db $48, $49, $4a ; row 1 tiles
    db $09, $0a, $0a ; row 1 attributes
    db $4b, $4c, $4d ; row 2 tiles
    db $0a, $0a, $09 ; row 2 attributes
    db $66, $4e, $7c ; row 3 tiles
    db $0a, $0a, $09 ; row 3 attributes

; Queen of spades rectangle (card ID $30).
BJCardQueenSpades:
BJCard48:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $46, $47, $1c ; row 0 tiles
    db $09, $0a, $09 ; row 0 attributes
    db $48, $49, $4a ; row 1 tiles
    db $09, $0a, $0a ; row 1 attributes
    db $4b, $4c, $4d ; row 2 tiles
    db $0a, $0a, $09 ; row 2 attributes
    db $21, $4e, $4f ; row 3 tiles
    db $09, $0a, $09 ; row 3 attributes

; King of diamonds rectangle (card ID $31).
BJCardKingDiamonds:
BJCard49:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $d5, $51, $52 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $d6, $54, $d7 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $56, $57, $d7 ; row 2 tiles
    db $0b, $0b, $0b ; row 2 attributes
    db $59, $5a, $d8 ; row 3 tiles
    db $0b, $0b, $0b ; row 3 attributes

; King of hearts rectangle (card ID $32).
BJCardKingHearts:
BJCard50:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $a8, $51, $52 ; row 0 tiles
    db $0b, $0b, $0b ; row 0 attributes
    db $a9, $54, $55 ; row 1 tiles
    db $0b, $0b, $0b ; row 1 attributes
    db $56, $57, $aa ; row 2 tiles
    db $0b, $0b, $0b ; row 2 attributes
    db $59, $5a, $ab ; row 3 tiles
    db $0b, $0b, $0b ; row 3 attributes

; King of clubs rectangle (card ID $33).
BJCardKingClubs:
BJCard51:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $7d, $51, $52 ; row 0 tiles
    db $09, $0a, $0a ; row 0 attributes
    db $53, $54, $55 ; row 1 tiles
    db $09, $0a, $0a ; row 1 attributes
    db $56, $57, $58 ; row 2 tiles
    db $0a, $0a, $09 ; row 2 attributes
    db $59, $5a, $7e ; row 3 tiles
    db $0a, $0a, $09 ; row 3 attributes

; King of spades rectangle (card ID $34).
BJCardKingSpades:
BJCard52:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $50, $51, $52 ; row 0 tiles
    db $09, $0a, $0a ; row 0 attributes
    db $53, $54, $55 ; row 1 tiles
    db $09, $0a, $0a ; row 1 attributes
    db $56, $57, $58 ; row 2 tiles
    db $0a, $0a, $09 ; row 2 attributes
    db $59, $5a, $5b ; row 3 tiles
    db $0a, $0a, $09 ; row 3 attributes

; Blank card-sized rectangle; outside the playable random-card range.
BJCardBlank:
BJCard53:
    db $2f ; prefix skipped by DrawBJCard
    db $03, $04 ; width, height
    db $7f, $7f, $7f ; row 0 tiles
    db $06, $06, $06 ; row 0 attributes
    db $7f, $7f, $7f ; row 1 tiles
    db $06, $06, $06 ; row 1 attributes
    db $7f, $7f, $7f ; row 2 tiles
    db $06, $06, $06 ; row 2 attributes
    db $7f, $7f, $7f ; row 3 tiles
    db $06, $06, $06 ; row 3 attributes
