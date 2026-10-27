; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text0DMsgs0:
    db LOW(Text0DMessage00), HIGH(Text0DMessage00)
    db LOW(Text0DMessage01), HIGH(Text0DMessage01)
    db LOW(Text0DMessage02), HIGH(Text0DMessage02)
    db LOW(Text0DMessage03), HIGH(Text0DMessage03)
    db LOW(Text0DMessage04), HIGH(Text0DMessage04)
    db LOW(Text0DMessage05), HIGH(Text0DMessage05)
    db LOW(Text0DMessage06), HIGH(Text0DMessage06)
    db LOW(Text0DMessage07), HIGH(Text0DMessage07)
    db LOW(Text0DMessage08), HIGH(Text0DMessage08)
    db LOW(Text0DMessage09), HIGH(Text0DMessage09)
    db LOW(Text0DMessage0A), HIGH(Text0DMessage0A)
    db LOW(Text0DMessage0B), HIGH(Text0DMessage0B)
    db LOW(Text0DMessage0C), HIGH(Text0DMessage0C)
    db LOW(Text0DMessage0D), HIGH(Text0DMessage0D)
    db LOW(Text0DMessage0E), HIGH(Text0DMessage0E)
    db LOW(Text0DMessage0F), HIGH(Text0DMessage0F)
    db LOW(Text0DMessage10), HIGH(Text0DMessage10)
    db LOW(Text0DMessage11), HIGH(Text0DMessage11)
    db LOW(Text0DMessage12), HIGH(Text0DMessage12)
    db LOW(Text0DMessage13), HIGH(Text0DMessage13)
    db LOW(Text0DMessage14), HIGH(Text0DMessage14)
    db LOW(Text0DMessage15), HIGH(Text0DMessage15)
    db LOW(Text0DMessage16), HIGH(Text0DMessage16)
    db LOW(Text0DMessage17), HIGH(Text0DMessage17)
    db LOW(Text0DMessage18), HIGH(Text0DMessage18)
    db LOW(Text0DMessage19), HIGH(Text0DMessage19)
    db LOW(Text0DMessage1A), HIGH(Text0DMessage1A)
    db LOW(Text0DMessage1B), HIGH(Text0DMessage1B)
    db LOW(Text0DMessage1C), HIGH(Text0DMessage1C)
    db LOW(Text0DMessage1D), HIGH(Text0DMessage1D)
    db LOW(Text0DMessage1E), HIGH(Text0DMessage1E)
    db LOW(Text0DMessage1F), HIGH(Text0DMessage1F)
    db LOW(Text0DMessage20), HIGH(Text0DMessage20)
    db LOW(Text0DMessage21), HIGH(Text0DMessage21)
    db LOW(Text0DMessage22), HIGH(Text0DMessage22)
    db LOW(Text0DMessage23), HIGH(Text0DMessage23)
    db LOW(Text0DMessage24), HIGH(Text0DMessage24)
    db LOW(Text0DMessage25), HIGH(Text0DMessage25)
    db LOW(Text0DMessage26), HIGH(Text0DMessage26)
    db LOW(Text0DMessage27), HIGH(Text0DMessage27)
    db LOW(Text0DMessage28), HIGH(Text0DMessage28)
    db LOW(Text0DMessage29), HIGH(Text0DMessage29)
    db LOW(Text0DMessage2A), HIGH(Text0DMessage2A)
    db LOW(Text0DMessage2B), HIGH(Text0DMessage2B)
    db LOW(Text0DMessage2C), HIGH(Text0DMessage2C)
    db LOW(Text0DMessage2D), HIGH(Text0DMessage2D)
    db LOW(Text0DMessage2E), HIGH(Text0DMessage2E)
    db LOW(Text0DMessage2F), HIGH(Text0DMessage2F)
    db LOW(Text0DMessage30), HIGH(Text0DMessage30)
    db LOW(Text0DMessage31), HIGH(Text0DMessage31)
    db LOW(Text0DMessage32), HIGH(Text0DMessage32)
    db LOW(Text0DMessage33), HIGH(Text0DMessage33)
    db LOW(Text0DMessage34), HIGH(Text0DMessage34)
    db LOW(Text0DMessage35), HIGH(Text0DMessage35)
    db LOW(Text0DMessage36), HIGH(Text0DMessage36)
    db LOW(Text0DMessage37), HIGH(Text0DMessage37)
    db LOW(Text0DMessage38), HIGH(Text0DMessage38)
    db LOW(Text0DMessage39), HIGH(Text0DMessage39)
    db LOW(Text0DMessage3A), HIGH(Text0DMessage3A)
    db LOW(Text0DMessage3B), HIGH(Text0DMessage3B)
    db LOW(Text0DMessage3C), HIGH(Text0DMessage3C)
    db LOW(Text0DMessage3D), HIGH(Text0DMessage3D)
    db LOW(Text0DMessage3E), HIGH(Text0DMessage3E)
    db LOW(Text0DMessage3F), HIGH(Text0DMessage3F)
; Sixty-four message pointers for one text group.
Text0DMsgs1:
    db LOW(Text0DMessage40), HIGH(Text0DMessage40)
    db LOW(Text0DMessage41), HIGH(Text0DMessage41)
    db LOW(Text0DMessage42), HIGH(Text0DMessage42)
    db LOW(Text0DMessage43), HIGH(Text0DMessage43)
    db LOW(Text0DMessage44), HIGH(Text0DMessage44)
    db LOW(Text0DMessage45), HIGH(Text0DMessage45)
    db LOW(Text0DMessage46), HIGH(Text0DMessage46)
    db LOW(Text0DMessage47), HIGH(Text0DMessage47)
    db LOW(Text0DMessage48), HIGH(Text0DMessage48)
    db LOW(Text0DMessage49), HIGH(Text0DMessage49)
    db LOW(Text0DMessage4A), HIGH(Text0DMessage4A)
    db LOW(Text0DMessage4B), HIGH(Text0DMessage4B)
    db LOW(Text0DMessage4C), HIGH(Text0DMessage4C)
    db LOW(Text0DMessage4D), HIGH(Text0DMessage4D)
    db LOW(Text0DMessage4E), HIGH(Text0DMessage4E)
    db LOW(Text0DMessage4F), HIGH(Text0DMessage4F)
    db LOW(Text0DMessage50), HIGH(Text0DMessage50)
    db LOW(Text0DMessage51), HIGH(Text0DMessage51)
    db LOW(Text0DMessage52), HIGH(Text0DMessage52)
    db LOW(Text0DMessage53), HIGH(Text0DMessage53)
    db LOW(Text0DMessage54), HIGH(Text0DMessage54)
    db LOW(Text0DMessage55), HIGH(Text0DMessage55)
    db LOW(Text0DMessage56), HIGH(Text0DMessage56)
    db LOW(Text0DMessage57), HIGH(Text0DMessage57)
    db LOW(Text0DMessage58), HIGH(Text0DMessage58)
    db LOW(Text0DMessage59), HIGH(Text0DMessage59)
    db LOW(Text0DMessage5A), HIGH(Text0DMessage5A)
    db LOW(Text0DMessage5B), HIGH(Text0DMessage5B)
    db LOW(Text0DMessage5C), HIGH(Text0DMessage5C)
    db LOW(Text0DMessage5D), HIGH(Text0DMessage5D)
    db LOW(Text0DMessage5E), HIGH(Text0DMessage5E)
    db LOW(Text0DMessage5F), HIGH(Text0DMessage5F)
    db LOW(Text0DMessage60), HIGH(Text0DMessage60)
    db LOW(Text0DMessage61), HIGH(Text0DMessage61)
    db LOW(Text0DMessage62), HIGH(Text0DMessage62)
    db LOW(Text0DMessage63), HIGH(Text0DMessage63)
    db LOW(Text0DMessage64), HIGH(Text0DMessage64)
    db LOW(Text0DMessage65), HIGH(Text0DMessage65)
    db LOW(Text0DMessage66), HIGH(Text0DMessage66)
    db LOW(Text0DMessage67), HIGH(Text0DMessage67)
    db LOW(Text0DMessage68), HIGH(Text0DMessage68)
    db LOW(Text0DMessage69), HIGH(Text0DMessage69)
    db LOW(Text0DMessage6A), HIGH(Text0DMessage6A)
    db LOW(Text0DMessage6B), HIGH(Text0DMessage6B)
    db LOW(Text0DMessage6C), HIGH(Text0DMessage6C)
    db LOW(Text0DMessage6D), HIGH(Text0DMessage6D)
    db LOW(Text0DMessage6E), HIGH(Text0DMessage6E)
    db LOW(Text0DMessage6F), HIGH(Text0DMessage6F)
    db LOW(Text0DMessage70), HIGH(Text0DMessage70)
    db LOW(Text0DMessage71), HIGH(Text0DMessage71)
    db LOW(Text0DMessage72), HIGH(Text0DMessage72)
jr_00d_40e6:
    db LOW(Text0DMessage73), HIGH(Text0DMessage73)
    db LOW(Text0DMessage74), HIGH(Text0DMessage74)
    db LOW(Text0DMessage75), HIGH(Text0DMessage75)
    db LOW(Text0DMessage76), HIGH(Text0DMessage76)
    db LOW(Text0DMessage77), HIGH(Text0DMessage77)
    db LOW(Text0DMessage78), HIGH(Text0DMessage78)
    db LOW(Text0DMessage79), HIGH(Text0DMessage79)
    db LOW(Text0DMessage7A), HIGH(Text0DMessage7A)
    db LOW(Text0DMessage7B), HIGH(Text0DMessage7B)
    db LOW(Text0DMessage7C), HIGH(Text0DMessage7C)
    db LOW(Text0DMessage7D), HIGH(Text0DMessage7D)
    db LOW(Text0DMessage7E), HIGH(Text0DMessage7E)
    db LOW(Text0DMessage7E), HIGH(Text0DMessage7E)
; ちゅうしゃきだ。 / クスリは はいっていない。[END]
Text0DMessage00:
    INCBIN "../../res/text/JP/banks/0d.bin", $100, $17
; あっ!!! / ちまみれの おとこが つくえに / うつぶせに・・・?[PAGE] / うごかない・・・しっ しんでいる![PAGE] / ・・・おや? / なにかの おもみで ポケットの / かたちが かわっているぞ...
Text0DMessage01:
    INCBIN "../../res/text/JP/banks/0d.bin", $117, $29
jr_00d_4140:
    INCBIN "../../res/text/JP/banks/0d.bin", $140, $2
jr_00d_4142:
    INCBIN "../../res/text/JP/banks/0d.bin", $142, $2c
; べンツの なかだ。[END]
Text0DMessage02:
    INCBIN "../../res/text/JP/banks/0d.bin", $16e, $a
; じゅわきだ。 / コードが きれている![END]
Text0DMessage03:
    INCBIN "../../res/text/JP/banks/0d.bin", $178, $13
; かわいた ちが いちめんに / ひろがっている つくえだ。[PAGE] / ・・・ひきだしが ついている。[END]
Text0DMessage04:
    INCBIN "../../res/text/JP/banks/0d.bin", $18b, $2c
; ダイヤルしきの かべきんこだ。 / なにが はいっているんだろう?[END]
Text0DMessage05:
    INCBIN "../../res/text/JP/banks/0d.bin", $1b7, $20
; こっとうひんの でんわきだ。 / じゅわきの コードが きれている![END]
Text0DMessage06:
    INCBIN "../../res/text/JP/banks/0d.bin", $1d7, $21
; ひじょうかいだんに つうじる / マドだ。[END]
Text0DMessage07:
    INCBIN "../../res/text/JP/banks/0d.bin", $1f8, $14
; ただの エンピツだ。[END]
Text0DMessage08:
    INCBIN "../../res/text/JP/banks/0d.bin", $20c, $b
; フロントと しるしてある カギだ。[END]
Text0DMessage09:
    INCBIN "../../res/text/JP/banks/0d.bin", $217, $12
; なにも しるしが ついていない / カギだ。 / いったい どこの カギだろう?[END]
Text0DMessage0A:
    INCBIN "../../res/text/JP/banks/0d.bin", $229, $25
; マニラホルダーだ。[END]
Text0DMessage0B:
    INCBIN "../../res/text/JP/banks/0d.bin", $24e, $a
; こものいれの はこだ。[END]
Text0DMessage0C:
    INCBIN "../../res/text/JP/banks/0d.bin", $258, $c
; しゃくようしょだ。[PAGE] / エース・ハーディングが / ジョー・シーゲルに 1000ドルの / しゃっきんを したと しるしてある。[END]
Text0DMessage0D:
    INCBIN "../../res/text/JP/banks/0d.bin", $264, $2b
jr_00d_428f:
    INCBIN "../../res/text/JP/banks/0d.bin", $28f, $10
; ちっ!! / あかない![PAGE] / どうやら あんしょう ばんごうが / ひつようらしい。[END]
Text0DMessage0E:
    INCBIN "../../res/text/JP/banks/0d.bin", $29f, $25
; ・・・カチッ![PAGE] / やった! / あいたぞ![END]
Text0DMessage0F:
    INCBIN "../../res/text/JP/banks/0d.bin", $2c4, $13
; ダメだ あかない。 / ばんごうが ちがうらしい。[END]
Text0DMessage10:
    INCBIN "../../res/text/JP/banks/0d.bin", $2d7, $18
; ・・・カチッ![PAGE] / おっ! / てごたえが あったぞ![PAGE] / カギを つかって ドアを あけた。[END]
Text0DMessage11:
    INCBIN "../../res/text/JP/banks/0d.bin", $2ef, $2a
; なかに かみが はさんである。[END]
Text0DMessage12:
    INCBIN "../../res/text/JP/banks/0d.bin", $319, $10
; したいのある オフィスの なかだ。[END]
Text0DMessage13:
    INCBIN "../../res/text/JP/banks/0d.bin", $329, $12
; かべきんこは あいている。[END]
Text0DMessage14:
    INCBIN "../../res/text/JP/banks/0d.bin", $33b, $e
; べンツの キーだ。[END]
Text0DMessage15:
    INCBIN "../../res/text/JP/banks/0d.bin", $349, $a
; シーゲルの したいだ。 / ・・・あまり きもちの / いいものじゃないな。[END]
Text0DMessage16:
    INCBIN "../../res/text/JP/banks/0d.bin", $353, $23
; うけつけか ひしょの へやらしい。 / やすものの こうすいの においが / ただよっている。[END]
Text0DMessage17:
    INCBIN "../../res/text/JP/banks/0d.bin", $376, $2c
; マドからは なにも みえない。[END]
Text0DMessage18:
    INCBIN "../../res/text/JP/banks/0d.bin", $3a2, $2
Jump_00d_43a4:
    INCBIN "../../res/text/JP/banks/0d.bin", $3a4, $e
; つくえだ。 / ひきだしが ついている。[END]
Text0DMessage19:
    INCBIN "../../res/text/JP/banks/0d.bin", $3b2, $13
; スタンダードな かたちをした / でんきスタンドだ。[END]
Text0DMessage1A:
    INCBIN "../../res/text/JP/banks/0d.bin", $3c5, $19
; タイプライターだ。 / うちだした ぶんしょは まわりに / みあたらない。[END]
Text0DMessage1B:
    INCBIN "../../res/text/JP/banks/0d.bin", $3de, $23
; でんわだ。[END]
Text0DMessage1C:
    INCBIN "../../res/text/JP/banks/0d.bin", $401, $6
; なにも かかれていない ただの / ふうとうだ。[END]
Text0DMessage1D:
    INCBIN "../../res/text/JP/banks/0d.bin", $407, $17
; ドクター・ブロディが ジョーのバーにあてて かいたものだ。[PAGE] / 「ーーー せいきゅうしょ ーーー[PAGE] /  ちゅうしゃきーーーーーーー$10 /  クスリ ぺンタソーダーーー$56 /      メ...
Text0DMessage1E:
    INCBIN "../../res/text/JP/banks/0d.bin", $41e, $a5
; ききおぼえが あるようだが・・・。 / おもいだせない![END]
Text0DMessage1F:
    INCBIN "../../res/text/JP/banks/0d.bin", $4c3, $1b
; ひしょの オフィスの なかだ。[END]
Text0DMessage20:
    INCBIN "../../res/text/JP/banks/0d.bin", $4de, $10
; あかないようだ。[END]
Text0DMessage21:
    INCBIN "../../res/text/JP/banks/0d.bin", $4ee, $9
; しまらないようだ。[END]
Text0DMessage22:
    INCBIN "../../res/text/JP/banks/0d.bin", $4f7, $9
jr_00d_4500:
    INCBIN "../../res/text/JP/banks/0d.bin", $500, $1
; 2かいの ろうかだ。 / かべに ポスターが はってある。[END]
Text0DMessage23:
    INCBIN "../../res/text/JP/banks/0d.bin", $501, $1c
; ボクサーの ポスターだ。 / ・・・「ドッグホウス・リバー」?[END]
Text0DMessage24:
    INCBIN "../../res/text/JP/banks/0d.bin", $51d, $1e
; ボクサーの ポスターだ。 / ・・・「パック・マクフォーレン」?[END]
Text0DMessage25:
    INCBIN "../../res/text/JP/banks/0d.bin", $53b, $b
jr_00d_4546:
    INCBIN "../../res/text/JP/banks/0d.bin", $546, $f
jr_00d_4555:
    INCBIN "../../res/text/JP/banks/0d.bin", $555, $5
; ボクサーの ポスターだ。 / ・・・「エース・ハーディング」?[END]
Text0DMessage26:
    INCBIN "../../res/text/JP/banks/0d.bin", $55a, $d
jr_00d_4567:
    INCBIN "../../res/text/JP/banks/0d.bin", $567, $11
; あっ! / これは![PAGE] / さっき カガミでみた おれの / かおだ。[PAGE] / ・・・エース・・・ハーディング。 / おれの なまえか?[PAGE] / グローブを はめて / ファイティング・ポーズ...
Text0DMessage27:
    INCBIN "../../res/text/JP/banks/0d.bin", $578, $15
jr_00d_458d:
    INCBIN "../../res/text/JP/banks/0d.bin", $58d, $64
jr_00d_45f1:
    INCBIN "../../res/text/JP/banks/0d.bin", $5f1, $5
; ボクサー・・・エース・ハーディングのポスターだ。[PAGE] / ・・・そうだ! / おもいだしたぞ![PAGE] / おれは むかし ボクサーだった。 / シーゲルという おとこが / マネージャーで・・・。[PAG...
Text0DMessage28:
    INCBIN "../../res/text/JP/banks/0d.bin", $5f6, $74
; ゴーッと いう おとと ともに / かべが スライドして エレべータを / かくしてしまった。[END]
Text0DMessage29:
    INCBIN "../../res/text/JP/banks/0d.bin", $66a, $2c
; 2かいの ろうかだ。[END]
Text0DMessage2A:
    INCBIN "../../res/text/JP/banks/0d.bin", $696, $b
; 3かいの ひじょうかいだんの / うえだ。[END]
Text0DMessage2B:
    INCBIN "../../res/text/JP/banks/0d.bin", $6a1, $14
; へやに つうじる マドだ。[END]
Text0DMessage2C:
    INCBIN "../../res/text/JP/banks/0d.bin", $6b5, $e
; かなり さびついているようだ。[END]
Text0DMessage2D:
    INCBIN "../../res/text/JP/banks/0d.bin", $6c3, $10
; 2かいの ひじょうかいだんの / うえだ。[END]
Text0DMessage2E:
    INCBIN "../../res/text/JP/banks/0d.bin", $6d3, $14
; かいだんが とちゅうで きれている。とびおりると ろじに でるようだ。[END]
Text0DMessage2F:
    INCBIN "../../res/text/JP/banks/0d.bin", $6e7, $24
; へやに つうじる マドだ。 / へやの なかは よくみえない。[END]
Text0DMessage30:
    INCBIN "../../res/text/JP/banks/0d.bin", $70b, $1e
; バーの まえの とおりだ。 / だれも いない。[END]
Text0DMessage31:
    INCBIN "../../res/text/JP/banks/0d.bin", $729, $17
; バーに つうじる ドアだ。[END]
Text0DMessage32:
    INCBIN "../../res/text/JP/banks/0d.bin", $740, $e
; これいじょうは かねの / ムダづかいだ!![END]
Text0DMessage33:
    INCBIN "../../res/text/JP/banks/0d.bin", $74e, $15
; くろい メルセデス べンツだ。 / だれも のっていない。[END]
Text0DMessage34:
    INCBIN "../../res/text/JP/banks/0d.bin", $763, $1c
; べンツの ドアだ。[END]
Text0DMessage35:
    INCBIN "../../res/text/JP/banks/0d.bin", $77f, $a
; うっ・・・![PAGE] / むっ むねが・・・! / しめつけられる![PAGE] / ・・・・・・。 / はーっ! / しぬかと おもった・・・。[END]
Text0DMessage36:
    INCBIN "../../res/text/JP/banks/0d.bin", $789, $36
; ムム? / からだじゅうが あつくなって / きたぞ![PAGE] / ・・・いい きぶんだ。 / ちょうど さけを のんだときのようにポーッと してくる。[END]
Text0DMessage37:
    INCBIN "../../res/text/JP/banks/0d.bin", $7bf, $41
; せまい ろじのようだ。[END]
Text0DMessage38:
    INCBIN "../../res/text/JP/banks/0d.bin", $800, $c
; バーの まえの とおりだ。[END]
Text0DMessage39:
    INCBIN "../../res/text/JP/banks/0d.bin", $80c, $e
; ・・・カチッ![PAGE] / やった! / ドアが あいたぞ。 / これが べンツの キーだったんだ。[END]
Text0DMessage3A:
    INCBIN "../../res/text/JP/banks/0d.bin", $81a, $29
; おや? / げすいどうに ついてしまった。[PAGE] / はっはあああーん・・・。 / どうも ここは カジノの きゃくの / ための にげみちらしい・・・。[END]
Text0DMessage3B:
    INCBIN "../../res/text/JP/banks/0d.bin", $843, $43
; マンホールだ。 / したは げすいどうか・・・。[END]
Text0DMessage3C:
    INCBIN "../../res/text/JP/banks/0d.bin", $886, $17
; しんぶんうりばの まえの とおりだ。[PAGE] / よが ふけているにも かかわらず / しょうばいを している おとこが / いる。[PAGE] / てがかりに なるようなことが / しんぶんに でていないだろうか...
Text0DMessage3D:
    INCBIN "../../res/text/JP/banks/0d.bin", $89d, $59
; うりものの しんぶんだ。 / かってに よむと みせのおとこに / おこられそうだ。[END]
Text0DMessage3E:
    INCBIN "../../res/text/JP/banks/0d.bin", $8f6, $27
; しんぶんの みだしは・・・[PAGE] / 「しんじゅわんに にほんぐんの /  きしゅうこうげき!!!」[PAGE] / ・・・どうやら おれには / かんけいなさそうだ。[END]
Text0DMessage3F:
    INCBIN "../../res/text/JP/banks/0d.bin", $91d, $19
jr_00d_4936:
    INCBIN "../../res/text/JP/banks/0d.bin", $936, $2b
; くらくて かおは よくみえないが / どうも わかい おとこらしい。[END]
Text0DMessage40:
    INCBIN "../../res/text/JP/banks/0d.bin", $961, $21
; しんぶんうりばだ。 / うすぎたない いたばりの こやだ。[END]
Text0DMessage41:
    INCBIN "../../res/text/JP/banks/0d.bin", $982, $1c
; しんぶんうりばの まえの とおりだ。[END]
Text0DMessage42:
    INCBIN "../../res/text/JP/banks/0d.bin", $99e, $13
; 「いちぶ 25セントだよ! /  したがわの いちばん みぎはしから とってくださいね。」[END]
Text0DMessage43:
    INCBIN "../../res/text/JP/banks/0d.bin", $9b1, $2c
; 「どうも ありがとう! /  25セント いただきます。」[PAGE] / しんぶんうりは げんきな こえで / そういった。[END]
Text0DMessage44:
    INCBIN "../../res/text/JP/banks/0d.bin", $9dd, $34
; 「かってくれた おれいに いい /  じょうほうを おしえてあげるよ。[PAGE] /  いましがた ここに けいさつが /  きたんだ。[PAGE] /  なんでも わかいおんなから /  きみょうな じけんを みた...
Text0DMessage45:
    INCBIN "../../res/text/JP/banks/0d.bin", $a11, $be
jr_00d_4acf:
    INCBIN "../../res/text/JP/banks/0d.bin", $acf, $4
; しんぶんうりを ピストルで うった。[PAGE] / すぐに けいさつが かけつけた。 / じゅうせいを きいたらしい。[PAGE] / ・・・あすの しんぶんの みだしにはおれの なまえが でることに / なるだろう...
Text0DMessage46:
    INCBIN "../../res/text/JP/banks/0d.bin", $ad3, $5b
; しんぶんうりは こえを ひそめて / おれに いった。[PAGE] / 「まだ ウロウロ しているのかい。 /  さっさと すがたを かくしたほうが いいと おもうよ!」[END]
Text0DMessage47:
    INCBIN "../../res/text/JP/banks/0d.bin", $b2e, $4a
; うんてんしゅは めんどうくさそうに / いった。[PAGE] / 「バカに してるんですか! /  それは ここの アドレスですぜ!」[END]
Text0DMessage48:
    INCBIN "../../res/text/JP/banks/0d.bin", $b78, $38
; スカッ![PAGE] / あたらない! / つかれていて ちからが はいらない![END]
Text0DMessage49:
    INCBIN "../../res/text/JP/banks/0d.bin", $bb0, $1f
; ちゅうしゃしようと すると おとこはムッ としたかおで おれを / にらみつけた。[PAGE] / ・・・やめておこう・・・。[END]
Text0DMessage4A:
    INCBIN "../../res/text/JP/banks/0d.bin", $bcf, $36
; ガンショップの まえの とおりだ。 / おおきな かんばんが でている。[END]
Text0DMessage4B:
    INCBIN "../../res/text/JP/banks/0d.bin", $c05, $23
; おおきな マドだ。 / もじが かいてある。[PAGE] / ピストルと だんがんを / あつかっているらしい。[END]
Text0DMessage4C:
    INCBIN "../../res/text/JP/banks/0d.bin", $c28, $2d
; ガンショップの いりぐちの ドアだ。とじている。[END]
Text0DMessage4D:
    INCBIN "../../res/text/JP/banks/0d.bin", $c55, $19
; わりと おおきめの ポリようきの / ゴミばこだ。[END]
Text0DMessage4E:
    INCBIN "../../res/text/JP/banks/0d.bin", $c6e, $18
; ガンショップの まえの とおりだ。[END]
Text0DMessage4F:
    INCBIN "../../res/text/JP/banks/0d.bin", $c86, $12
; ぺオリアどおりだ。[END]
Text0DMessage50:
    INCBIN "../../res/text/JP/banks/0d.bin", $c98, $a
; よこちょうの うすぐらい ろじだ。[END]
Text0DMessage51:
    INCBIN "../../res/text/JP/banks/0d.bin", $ca2, $2
jr_00d_4ca4:
    INCBIN "../../res/text/JP/banks/0d.bin", $ca4, $10
; うんてんしゅは わらいながら / いった。[PAGE] / 「おきゃくさん! /  ねぼけちゃいけませんよ! /  それは ここの アドレスですよ!」[END]
Text0DMessage52:
    INCBIN "../../res/text/JP/banks/0d.bin", $cb4, $3e
; ひじょうかいだんだ。 / たかすぎて あがるのは むりだ。[END]
Text0DMessage53:
    INCBIN "../../res/text/JP/banks/0d.bin", $cf2, $1c
; ろじの つきあたりだ。 / とおりに つづいている。[END]
Text0DMessage54:
    INCBIN "../../res/text/JP/banks/0d.bin", $d0e, $19
; べンツの マークの ついた カギだ。[END]
Text0DMessage55:
    INCBIN "../../res/text/JP/banks/0d.bin", $d27, $13
; けいさつの まえの とおりだ。[END]
Text0DMessage56:
    INCBIN "../../res/text/JP/banks/0d.bin", $d3a, $10
; しゃれた かたちの がいとうだ。[END]
Text0DMessage57:
    INCBIN "../../res/text/JP/banks/0d.bin", $d4a, $11
; けいさつしょの ドアだ。 / しまっている。[END]
Text0DMessage58:
    INCBIN "../../res/text/JP/banks/0d.bin", $d5b, $15
; ・・・たにんの たべかけを / くちにするのは きもちが わるいな![END]
Text0DMessage59:
    INCBIN "../../res/text/JP/banks/0d.bin", $d70, $21
; うわーっ![PAGE] / いきなり こうじちゅうの あなに / おちてしまった。[END]
Text0DMessage5A:
    INCBIN "../../res/text/JP/banks/0d.bin", $d91, $20
; ・・・・・・! / いきなり よっぱらいが とおりを / さえぎった。[PAGE] / かおを ちかづけてきて なにか / ブツブツと いっている。[PAGE] / 「50セント くれれば とびっきりの じょうほうを ...
Text0DMessage5B:
    INCBIN "../../res/text/JP/banks/0d.bin", $db1, $bf
; なにか とりつかれたような かおだ。うつろな めと めのしたの くまと / ねじれた くち・・・。[PAGE] / どうみても ふつうじゃない。 / あまり かかわらないほうが / いいだろう・・・。[END]
Text0DMessage5C:
    INCBIN "../../res/text/JP/banks/0d.bin", $e70, $57
; ・・・じけんは かいけつした。[PAGE] / あなたの こうせきを たたえて / かんしゃじょうを おくろう!![PAGE] / おめでとう エース! / やはり きみは めいたんていだった![PAGE] / ぬれぎ...
Text0DMessage5D:
    INCBIN "../../res/text/JP/banks/0d.bin", $ec7, $a5
; よっぱらいが とおりを / さえぎっている。[END]
Text0DMessage5E:
    INCBIN "../../res/text/JP/banks/0d.bin", $f6c, $15
; つよいパンチを いっぱつ / おみまいした。[PAGE] / ・・・・・・? / どうも きいていないらしい。 / よっぱらいには きかないのか?[PAGE] / パトカーの サイレンか? / けいさつが くる! / ...
Text0DMessage5F:
    INCBIN "../../res/text/JP/banks/0d.bin", $f81, $64
; 「へっ へっ・・・。 /  50セントなんて やすいよ。 /  いのちの ねだんにしては・・・。[PAGE] /  このはなし きいて そんはないよ。 さっさと 50セント くれよ!」[PAGE] / よっぱらいは あ...
Text0DMessage60:
    INCBIN "../../res/text/JP/banks/0d.bin", $fe5, $6a
; 20ドルさつを さしだすと / よっぱらいは めを パチクリさせた。[PAGE] / 「とーんでもない! /  これは おおすぎるよ・・・。」[END]
Text0DMessage61:
    INCBIN "../../res/text/JP/banks/0d.bin", $104f, $3c
; ちゅうしゃしようとするが / よっぱらいは フラフラしていて / ねらいが さだまらない。[END]
Text0DMessage62:
    INCBIN "../../res/text/JP/banks/0d.bin", $108b, $2a
; 50セントを わたすと / よっぱらいは ニンマリして いった。[PAGE] / 「うへっ へっ へっ・・・。 /  ジョーの やとった ころしやが /  おまえさんを さがしてたよ。[PAGE] /  やつは おまえ...
Text0DMessage63:
    INCBIN "../../res/text/JP/banks/0d.bin", $10b5, $71
; ・・・はずれた。 / よっぱらいは フラフラしていて / ねらいが さだまらない。[PAGE] / じゅうせいを ききつけて けいさつがやってきた。[END]
Text0DMessage64:
    INCBIN "../../res/text/JP/banks/0d.bin", $1126, $3f
; ・・・・・・! / どこからともなく おんなが / あらわれて いった。[PAGE] / 「ながかったわ・・・。 /  いま けいむしょから /  でてきたところなの。[PAGE] /  シーゲルに しかえし しようと...
Text0DMessage65:
    INCBIN "../../res/text/JP/banks/0d.bin", $1165, $51
jr_00d_51b6:
    INCBIN "../../res/text/JP/banks/0d.bin", $11b6, $2d
jr_00d_51e3:
    INCBIN "../../res/text/JP/banks/0d.bin", $11e3, $1a
jr_00d_51fd:
    INCBIN "../../res/text/JP/banks/0d.bin", $11fd, $d
; ・・・・・・! / いきなり おんなは バッグから / ピストルを とりだして うった。[END]
Text0DMessage66:
    INCBIN "../../res/text/JP/banks/0d.bin", $120a, $29
; つよい パンチを おみまいした。 / おんなは バッグを おとして / たおれた。[END]
Text0DMessage67:
    INCBIN "../../res/text/JP/banks/0d.bin", $1233, $26
; おんなが ほどうに たおれている。[END]
Text0DMessage68:
    INCBIN "../../res/text/JP/banks/0d.bin", $1259, $a
jr_00d_5263:
    INCBIN "../../res/text/JP/banks/0d.bin", $1263, $8
; きを うしなっているらしい。[PAGE] / ・・・こうしてみると なかなか / グラマーな おんなだ。[END]
Text0DMessage69:
    INCBIN "../../res/text/JP/banks/0d.bin", $126b, $2b
; くろい セカンドバッグだ。 / いったい なにが はいっているんだ?[END]
Text0DMessage6A:
    INCBIN "../../res/text/JP/banks/0d.bin", $1296, $21
; サタデーナイト スぺシャルだ。[PAGE] / すこし こがたの ピストルで / じょせいでも あつかいやすい。[END]
Text0DMessage6B:
    INCBIN "../../res/text/JP/banks/0d.bin", $12b7, $2f
; けしょうひんだ。 / おんなの ひつじゅひんだろう。[END]
Text0DMessage6C:
    INCBIN "../../res/text/JP/banks/0d.bin", $12e6, $19
; 20ドルさつだ。[END]
Text0DMessage6D:
    INCBIN "../../res/text/JP/banks/0d.bin", $12ff, $3
jr_00d_5302:
    INCBIN "../../res/text/JP/banks/0d.bin", $1302, $6
; ・・・ピストルだ![PAGE] / このおんなは おれを ころすつもり / だったのか! / あぶないところだったぜ・・・。[END]
Text0DMessage6E:
    INCBIN "../../res/text/JP/banks/0d.bin", $1308, $33
; ピストルで おんなを うった。[PAGE] / じゅうせいを ききつけて けいさつがやってきた。[END]
Text0DMessage6F:
    INCBIN "../../res/text/JP/banks/0d.bin", $133b, $29
; くろい セカンドバッグだ。[END]
Text0DMessage70:
    INCBIN "../../res/text/JP/banks/0d.bin", $1364, $e
; べンツの うしろに まわった。 / トランクの まえだ。[END]
Text0DMessage71:
    INCBIN "../../res/text/JP/banks/0d.bin", $1372, $1b
; まるい トランクだ。 / ものが たくさん はいりそうだ。[END]
Text0DMessage72:
    INCBIN "../../res/text/JP/banks/0d.bin", $138d, $1c
; くろい メルセデス べンツだ。[END]
Text0DMessage73:
    INCBIN "../../res/text/JP/banks/0d.bin", $13a9, $10
; おっ おんなだ・・・! / なぜ こんなところに・・・?[PAGE] / まさか しんでいるのか?[PAGE] / ・・・どうやら かすかに いしきは / あるようだ。[PAGE] / さるぐつわを はめられ てあしは...
Text0DMessage74:
    INCBIN "../../res/text/JP/banks/0d.bin", $13b9, $17
jr_00d_53d0:
    INCBIN "../../res/text/JP/banks/0d.bin", $13d0, $10
jr_00d_53e0:
    INCBIN "../../res/text/JP/banks/0d.bin", $13e0, $1e
jr_00d_53fe:
    INCBIN "../../res/text/JP/banks/0d.bin", $13fe, $1a
; さるぐつわだ。 / しろい ぬのを つかっている。[END]
Text0DMessage75:
    INCBIN "../../res/text/JP/banks/0d.bin", $1418, $18
; べンツの トランクの まえだ。[END]
Text0DMessage76:
    INCBIN "../../res/text/JP/banks/0d.bin", $1430, $10
; キーを つかって トランクを / あけた。[END]
Text0DMessage77:
    INCBIN "../../res/text/JP/banks/0d.bin", $1440, $14
; おんなに ぺンタソーダを / ちゅうしゃすると かすかな こえで / しゃべりはじめた。[PAGE] / 「いっ・・・いえに・・・かえりたい! アーバンロード 626へ。 /  お おっとのいる ところへ。」[END]
Text0DMessage78:
    INCBIN "../../res/text/JP/banks/0d.bin", $1454, $5b
; おんなに ぺンタソーダを / ちゅうしゃしようとした。 / しかし まてよ・・・。[PAGE] / さるぐつわを したままでは なにを / いっているのか わからないだろう。[END]
Text0DMessage79:
    INCBIN "../../res/text/JP/banks/0d.bin", $14af, $c
jr_00d_54bb:
    INCBIN "../../res/text/JP/banks/0d.bin", $14bb, $24
jr_00d_54df:
    INCBIN "../../res/text/JP/banks/0d.bin", $14df, $1a
; さるぐつわを とった。 / おんなは おおきな くちを あけて / こきゅうしはじめた。[END]
Text0DMessage7A:
    INCBIN "../../res/text/JP/banks/0d.bin", $14f9, $29
; おんなは すいじゃくが ひどく / はなしをするのは むりらしい。[PAGE] / ・・・なんとか はなしを ききだす / ほうほうは ないだろうか・・・?[END]
Text0DMessage7B:
    INCBIN "../../res/text/JP/banks/0d.bin", $1522, $43
; スタンウッドふじんだ。 / ・・・かわいそうな ひとだな。[END]
Text0DMessage7C:
    INCBIN "../../res/text/JP/banks/0d.bin", $1565, $1c
; メドレジンを おんなに / ちゅうしゃした。[PAGE] / ・・・うっ・・・! / おんなは ひとこえ うめいて / うごかなくなった・・・。[PAGE] / ・・・・・・しんだのか?[PAGE] / ・・・いや こ...
Text0DMessage7D:
    INCBIN "../../res/text/JP/banks/0d.bin", $1581, $6a
; つよい パンチを いれると おんなのしぼうだらけの からだは / なみうった。[PAGE] / だが なんの はんのうも ない。[PAGE] / ぶあつい ぜいにくが / あらゆる こうげきを / きゅうしゅうするのだ...
Text0DMessage7E:
    INCBIN "../../res/text/JP/banks/0d.bin", $15eb, $aee
Call_00d_60d9:
    INCBIN "../../res/text/JP/banks/0d.bin", $20d9, $2e4
Jump_00d_63bd:
    INCBIN "../../res/text/JP/banks/0d.bin", $23bd, $1c
Call_00d_63d9:
    INCBIN "../../res/text/JP/banks/0d.bin", $23d9, $1b87
Jump_00d_7f60:
    INCBIN "../../res/text/JP/banks/0d.bin", $3f60, $50
Call_00d_7fb0:
    INCBIN "../../res/text/JP/banks/0d.bin", $3fb0, $34
Call_00d_7fe4:
    INCBIN "../../res/text/JP/banks/0d.bin", $3fe4, $5
Jump_00d_7fe9:
    INCBIN "../../res/text/JP/banks/0d.bin", $3fe9, $17
