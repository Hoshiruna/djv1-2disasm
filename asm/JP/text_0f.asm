; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text0FMsgs0:
    db LOW(Text0FMessage00), HIGH(Text0FMessage00)
    db LOW(Text0FMessage01), HIGH(Text0FMessage01)
    db LOW(Text0FMessage02), HIGH(Text0FMessage02)
    db LOW(Text0FMessage03), HIGH(Text0FMessage03)
    db LOW(Text0FMessage04), HIGH(Text0FMessage04)
    db LOW(Text0FMessage05), HIGH(Text0FMessage05)
    db LOW(Text0FMessage06), HIGH(Text0FMessage06)
    db LOW(Text0FMessage07), HIGH(Text0FMessage07)
    db LOW(Text0FMessage08), HIGH(Text0FMessage08)
    db LOW(Text0FMessage09), HIGH(Text0FMessage09)
    db LOW(Text0FMessage0A), HIGH(Text0FMessage0A)
    db LOW(Text0FMessage0B), HIGH(Text0FMessage0B)
    db LOW(Text0FMessage0C), HIGH(Text0FMessage0C)
    db LOW(Text0FMessage0D), HIGH(Text0FMessage0D)
    db LOW(Text0FMessage0E), HIGH(Text0FMessage0E)
    db LOW(Text0FMessage0F), HIGH(Text0FMessage0F)
    db LOW(Text0FMessage10), HIGH(Text0FMessage10)
    db LOW(Text0FMessage11), HIGH(Text0FMessage11)
    db LOW(Text0FMessage12), HIGH(Text0FMessage12)
    db LOW(Text0FMessage13), HIGH(Text0FMessage13)
    db LOW(Text0FMessage14), HIGH(Text0FMessage14)
    db LOW(Text0FMessage15), HIGH(Text0FMessage15)
    db LOW(Text0FMessage16), HIGH(Text0FMessage16)
    db LOW(Text0FMessage17), HIGH(Text0FMessage17)
    db LOW(Text0FMessage18), HIGH(Text0FMessage18)
    db LOW(Text0FMessage19), HIGH(Text0FMessage19)
    db LOW(Text0FMessage1A), HIGH(Text0FMessage1A)
    db LOW(Text0FMessage1B), HIGH(Text0FMessage1B)
    db LOW(Text0FMessage1C), HIGH(Text0FMessage1C)
    db LOW(Text0FMessage1D), HIGH(Text0FMessage1D)
    db LOW(Text0FMessage1E), HIGH(Text0FMessage1E)
    db LOW(Text0FMessage1F), HIGH(Text0FMessage1F)
    db LOW(Text0FMessage20), HIGH(Text0FMessage20)
    db LOW(Text0FMessage21), HIGH(Text0FMessage21)
    db LOW(Text0FMessage22), HIGH(Text0FMessage22)
    db LOW(Text0FMessage23), HIGH(Text0FMessage23)
    db LOW(Text0FMessage24), HIGH(Text0FMessage24)
    db LOW(Text0FMessage25), HIGH(Text0FMessage25)
    db LOW(Text0FMessage26), HIGH(Text0FMessage26)
    db LOW(Text0FMessage27), HIGH(Text0FMessage27)
    db LOW(Text0FMessage28), HIGH(Text0FMessage28)
    db LOW(Text0FMessage29), HIGH(Text0FMessage29)
    db LOW(Text0FMessage2A), HIGH(Text0FMessage2A)
    db LOW(Text0FMessage2B), HIGH(Text0FMessage2B)
    db LOW(Text0FMessage2C), HIGH(Text0FMessage2C)
    db LOW(Text0FMessage2D), HIGH(Text0FMessage2D)
    db LOW(Text0FMessage2E), HIGH(Text0FMessage2E)
    db LOW(Text0FMessage2F), HIGH(Text0FMessage2F)
    db LOW(Text0FMessage30), HIGH(Text0FMessage30)
    db LOW(Text0FMessage31), HIGH(Text0FMessage31)
    db LOW(Text0FMessage32), HIGH(Text0FMessage32)
    db LOW(Text0FMessage33), HIGH(Text0FMessage33)
    db LOW(Text0FMessage34), HIGH(Text0FMessage34)
    db LOW(Text0FMessage35), HIGH(Text0FMessage35)
    db LOW(Text0FMessage36), HIGH(Text0FMessage36)
    db LOW(Text0FMessage37), HIGH(Text0FMessage37)
    db LOW(Text0FMessage38), HIGH(Text0FMessage38)
    db LOW(Text0FMessage39), HIGH(Text0FMessage39)
    db LOW(Text0FMessage3A), HIGH(Text0FMessage3A)
    db LOW(Text0FMessage3B), HIGH(Text0FMessage3B)
    db LOW(Text0FMessage3C), HIGH(Text0FMessage3C)
    db LOW(Text0FMessage3D), HIGH(Text0FMessage3D)
    db LOW(Text0FMessage3E), HIGH(Text0FMessage3E)
    db LOW(Text0FMessage3F), HIGH(Text0FMessage3F)
; Sixty-four message pointers for one text group.
Text0FMsgs1:
    db LOW(Text0FMessage40), HIGH(Text0FMessage40)
    db LOW(Text0FMessage41), HIGH(Text0FMessage41)
    db LOW(Text0FMessage42), HIGH(Text0FMessage42)
    db LOW(Text0FMessage43), HIGH(Text0FMessage43)
    db LOW(Text0FMessage44), HIGH(Text0FMessage44)
    db LOW(Text0FMessage45), HIGH(Text0FMessage45)
    db LOW(Text0FMessage46), HIGH(Text0FMessage46)
    db LOW(Text0FMessage47), HIGH(Text0FMessage47)
    db LOW(Text0FMessage48), HIGH(Text0FMessage48)
    db LOW(Text0FMessage49), HIGH(Text0FMessage49)
    db LOW(Text0FMessage4A), HIGH(Text0FMessage4A)
    db LOW(Text0FMessage4B), HIGH(Text0FMessage4B)
    db LOW(Text0FMessage4C), HIGH(Text0FMessage4C)
    db LOW(Text0FMessage4D), HIGH(Text0FMessage4D)
    db LOW(Text0FMessage4E), HIGH(Text0FMessage4E)
    db LOW(Text0FMessage4F), HIGH(Text0FMessage4F)
    db LOW(Text0FMessage50), HIGH(Text0FMessage50)
    db LOW(Text0FMessage51), HIGH(Text0FMessage51)
    db LOW(Text0FMessage52), HIGH(Text0FMessage52)
    db LOW(Text0FMessage53), HIGH(Text0FMessage53)
    db LOW(Text0FMessage54), HIGH(Text0FMessage54)
    db LOW(Text0FMessage55), HIGH(Text0FMessage55)
    db LOW(Text0FMessage56), HIGH(Text0FMessage56)
    db LOW(Text0FMessage57), HIGH(Text0FMessage57)
    db LOW(Text0FMessage58), HIGH(Text0FMessage58)
    db LOW(Text0FMessage59), HIGH(Text0FMessage59)
    db LOW(Text0FMessage5A), HIGH(Text0FMessage5A)
    db LOW(Text0FMessage5B), HIGH(Text0FMessage5B)
    db LOW(Text0FMessage5C), HIGH(Text0FMessage5C)
    db LOW(Text0FMessage5D), HIGH(Text0FMessage5D)
    db LOW(Text0FMessage5E), HIGH(Text0FMessage5E)
    db LOW(Text0FMessage5F), HIGH(Text0FMessage5F)
    db LOW(Text0FMessage60), HIGH(Text0FMessage60)
    db LOW(Text0FMessage61), HIGH(Text0FMessage61)
    db LOW(Text0FMessage62), HIGH(Text0FMessage62)
    db LOW(Text0FMessage63), HIGH(Text0FMessage63)
    db LOW(Text0FMessage64), HIGH(Text0FMessage64)
    db LOW(Text0FMessage65), HIGH(Text0FMessage65)
    db LOW(Text0FMessage66), HIGH(Text0FMessage66)
    db LOW(Text0FMessage67), HIGH(Text0FMessage67)
    db LOW(Text0FMessage68), HIGH(Text0FMessage68)
    db LOW(Text0FMessage69), HIGH(Text0FMessage69)
    db LOW(Text0FMessage6A), HIGH(Text0FMessage6A)
    db LOW(Text0FMessage6B), HIGH(Text0FMessage6B)
    db LOW(Text0FMessage6C), HIGH(Text0FMessage6C)
    db LOW(Text0FMessage6D), HIGH(Text0FMessage6D)
    db LOW(Text0FMessage6E), HIGH(Text0FMessage6E)
    db LOW(Text0FMessage6F), HIGH(Text0FMessage6F)
    db LOW(Text0FMessage70), HIGH(Text0FMessage70)
    db LOW(Text0FMessage71), HIGH(Text0FMessage71)
    db LOW(Text0FMessage72), HIGH(Text0FMessage72)
    db LOW(Text0FMessage73), HIGH(Text0FMessage73)
    db LOW(Text0FMessage74), HIGH(Text0FMessage74)
    db LOW(Text0FMessage75), HIGH(Text0FMessage75)
    db LOW(Text0FMessage76), HIGH(Text0FMessage76)
    db LOW(Text0FMessage77), HIGH(Text0FMessage77)
    db LOW(Text0FMessage78), HIGH(Text0FMessage78)
    db LOW(Text0FMessage79), HIGH(Text0FMessage79)
    db LOW(Text0FMessage7A), HIGH(Text0FMessage7A)
    db LOW(Text0FMessage7B), HIGH(Text0FMessage7B)
    db LOW(Text0FMessage7C), HIGH(Text0FMessage7C)
    db LOW(Text0FMessage7D), HIGH(Text0FMessage7D)
    db LOW(Text0FMessage7E), HIGH(Text0FMessage7E)
    db LOW(Text0FMessage7F), HIGH(Text0FMessage7F)
; カルテだな。 / びょうきの しょうじょうが / かいてある。[PAGE] / 「・・・ふくつうで きを うしなう。 ねつがでて はきけが ある。[PAGE] /  ーーー ふくまくえんの /           しょ...
Text0FMessage00:
    INCBIN "../../res/text/JP/banks/0f.bin", $100, $9d
; これには クスリの なまえと / その こうのうが しるしてある。 / いちおう よんでみるか。[PAGE] / 「オフレール ー・・・・・。」[PAGE] / もじが かすれていて うまく / よみとれない。[PAG...
Text0FMessage01:
    INCBIN "../../res/text/JP/banks/0f.bin", $19d, $1ee
; たんていじむしょの まえだ。[END]
Text0FMessage02:
    INCBIN "../../res/text/JP/banks/0f.bin", $38b, $f
; あ・・・・・っ! / こどものころの きおくが・・・・。[PAGE] / ・・・わかいころの おふくろだ。 / フルーツケーキを やいている。[PAGE] / おれの たんじょうびか / にゅうがくしきのひの / こう...
Text0FMessage03:
    INCBIN "../../res/text/JP/banks/0f.bin", $39a, $a
Jump_00f_43a4:
    INCBIN "../../res/text/JP/banks/0f.bin", $3a4, $72
; へやの なかは いたって しずかだ。[END]
Text0FMessage04:
    INCBIN "../../res/text/JP/banks/0f.bin", $416, $13
; ああっ・・・。 / めまいが する。 / あたまが われそうに いたい![END]
Text0FMessage05:
    INCBIN "../../res/text/JP/banks/0f.bin", $429, $21
; ここは しりつたんていの オフィスのようだ。[PAGE] / ガラスに 「エース・ハーディング」とかいてある。[END]
Text0FMessage06:
    INCBIN "../../res/text/JP/banks/0f.bin", $44a, $7
jr_00f_4451:
    INCBIN "../../res/text/JP/banks/0f.bin", $451, $29
; おれは ピストルを とりだした。[PAGE] / ねらいを さだめて トリガーを / ひいた・・・。[END]
Text0FMessage07:
    INCBIN "../../res/text/JP/banks/0f.bin", $47a, $29
; やつは ピストルを もってたのか! / すっかり ゆだんしていた おれは / やられてしまった。[END]
Text0FMessage08:
    INCBIN "../../res/text/JP/banks/0f.bin", $4a3, $2d
; ドアだ。 / あいかわらず ひとかげが ある。[END]
Text0FMessage09:
    INCBIN "../../res/text/JP/banks/0f.bin", $4d0, $16
; ひとの けはいは なくなった。 / だが ゆだんは きんもつだ。[END]
Text0FMessage0A:
    INCBIN "../../res/text/JP/banks/0f.bin", $4e6, $1f
; やつの したいが ころがっている。 / ほかに ひとは いないようだ。[END]
Text0FMessage0B:
    INCBIN "../../res/text/JP/banks/0f.bin", $505, $10
jr_00f_4515:
    INCBIN "../../res/text/JP/banks/0f.bin", $515, $12
; ・・・「エース・ハーディング」?[PAGE] / ・・・・・・!![PAGE] / そうだ![PAGE] / たしかに おれの なまえだ![PAGE] / いまなら むねをはって いえる![PAGE] / おれは エー...
Text0FMessage0C:
    INCBIN "../../res/text/JP/banks/0f.bin", $527, $50
; ながいあいだ つかいこんでいる / つくえだ。 / おおきな ひきだしが ある。[END]
Text0FMessage0D:
    INCBIN "../../res/text/JP/banks/0f.bin", $577, $25
; しんぞうを うちぬいている。 / そくしだな。[END]
Text0FMessage0E:
    INCBIN "../../res/text/JP/banks/0f.bin", $59c, $16
; ふつうの キャビネットだ。[PAGE] / このなかに てがかりに なるような / しょるいが はいっていないだろうか?[END]
Text0FMessage0F:
    INCBIN "../../res/text/JP/banks/0f.bin", $5b2, $23
jr_00f_45d5:
    INCBIN "../../res/text/JP/banks/0f.bin", $5d5, $10
; たなだ。 / おもいものを のせたら / おちてきそうだな。[END]
Text0FMessage10:
    INCBIN "../../res/text/JP/banks/0f.bin", $5e5, $1b
; マドだ。 / ここからは なにも みえない。[END]
Text0FMessage11:
    INCBIN "../../res/text/JP/banks/0f.bin", $600, $15
; オフィスだ。 / かなり ふるいへやのようで かべが / われている。[END]
Text0FMessage12:
    INCBIN "../../res/text/JP/banks/0f.bin", $615, $20
; カラなので とっても やくに / たたないだろう。[END]
Text0FMessage13:
    INCBIN "../../res/text/JP/banks/0f.bin", $635, $18
; しんぞうを うちぬいている。 / おそらく そくしだろう。[PAGE] / このおとこが よっぱらいの / いっていた ころしやか・・・。[END]
Text0FMessage14:
    INCBIN "../../res/text/JP/banks/0f.bin", $64d, $3a
; うっ・・・ずつうが・・・。[PAGE] / ・・・・・・! / クスリが きいてきた。[PAGE] / こどもの ころだ。 / かっていた タコという いぬだ。 / おれと あそびたがっている。[END]
Text0FMessage15:
    INCBIN "../../res/text/JP/banks/0f.bin", $687, $4c
; こんどは いままでのような / あたまの いたみは ない。[PAGE] / ・・・・・・![PAGE] / きおくが もどってきた。[PAGE] / となりに すんでいた スージーだ。 / おれの ファースト・キスの ...
Text0FMessage16:
    INCBIN "../../res/text/JP/banks/0f.bin", $6d3, $86
; 「ーーー ジョー・シーゲルと /  シュガー・ショックの かんけいに /  ついて ーーー[PAGE] /  シュガーは シーゲルの みせの /  きゃくだった。」[END]
Text0FMessage17:
    INCBIN "../../res/text/JP/banks/0f.bin", $759, $45
; 「ーーー アルターマン /  きょうはくじけんについて ーーー[PAGE] /  シーゲルの きょうりょくで /  シュガーが はんにんと わかった。[PAGE] /  シュガーは けいむしょに /  はいった。」[END]
Text0FMessage18:
    INCBIN "../../res/text/JP/banks/0f.bin", $79e, $56
; んっ? / これは てがみの ようだぞ![PAGE] / 「エース /  おまえに たのみがある。[PAGE] /  ある ふとったおんなを /  さらってきて ほしい。 /  まあ ちょっとした ゆうかいだな。[PA...
Text0FMessage19:
    INCBIN "../../res/text/JP/banks/0f.bin", $7f4, $133
; おおきな べっそうのまえ。 / 「かぜとともに さりぬ」の なかの / ワンシーンの ようだ。[END]
Text0FMessage1A:
    INCBIN "../../res/text/JP/banks/0f.bin", $927, $2c
; メールボックスだ。 / 「626」と ばんちが かいてある。[END]
Text0FMessage1B:
    INCBIN "../../res/text/JP/banks/0f.bin", $953, $1d
; きってが はっていない ふうとうだ。「スタンウッドへ」 とだけ / かいてある。[END]
Text0FMessage1C:
    INCBIN "../../res/text/JP/banks/0f.bin", $970, $27
; びんせんだ。 / ていねいな もじで かかれている。[PAGE] / 「しんあいなる スタンウッドへ[PAGE] /  ふじんを おあずかりしている。 /  20000ドルと ふじんを /  こうかんしよう。[PAGE...
Text0FMessage1D:
    INCBIN "../../res/text/JP/banks/0f.bin", $997, $a0
; とても りっぱな べっそうだ。[END]
Text0FMessage1E:
    INCBIN "../../res/text/JP/banks/0f.bin", $a37, $10
; べっそうの しゅうへんに ひとかげはみられない。[END]
Text0FMessage1F:
    INCBIN "../../res/text/JP/banks/0f.bin", $a47, $19
; べっそうの げんかんだ。 / ドアには おおきくて りっぱな / ノッカーが ついている。[END]
Text0FMessage20:
    INCBIN "../../res/text/JP/banks/0f.bin", $a60, $2a
; あかない。 / ここは やはり しんしになった / きもちで・・・。[END]
Text0FMessage21:
    INCBIN "../../res/text/JP/banks/0f.bin", $a8a, $1f
; おれは トリガーを ひいた。 / ドアが あつくて こうかが ない。[END]
Text0FMessage22:
    INCBIN "../../res/text/JP/banks/0f.bin", $aa9, $21
; おれは ノッカーを にぎりしめた。 / コン! コン![PAGE] / ・・・・・・。[END]
Text0FMessage23:
    INCBIN "../../res/text/JP/banks/0f.bin", $aca, $22
; ドアが あいた。[PAGE] / ・・・しつじらしき ひとが でてきてジロッと にらんで こういった。[PAGE] / 「やくそくを していない /  おきゃくさまは とおさないように /  いわれております。[PAG...
Text0FMessage24:
    INCBIN "../../res/text/JP/banks/0f.bin", $aec, $8d
; こわそうな かおの しつじだが / ほそくて わんりょくは なさそうだ。きっと おれなら たおせる![END]
Text0FMessage25:
    INCBIN "../../res/text/JP/banks/0f.bin", $b79, $31
; ・・・たまがない。 / しつじは いった。[PAGE] / 「そんな おもちゃは しまって /  ください。」[END]
Text0FMessage26:
    INCBIN "../../res/text/JP/banks/0f.bin", $baa, $2c
; ・・・んっ? / この カギは あわないぞ![END]
Text0FMessage27:
    INCBIN "../../res/text/JP/banks/0f.bin", $bd6, $15
; おおきな シャンデリアだ。 / ながいじかん みていると まぶしくてめが くらみそうだ。[END]
Text0FMessage28:
    INCBIN "../../res/text/JP/banks/0f.bin", $beb, $2b
; げんかんだ。 / とても ひろい。[END]
Text0FMessage29:
    INCBIN "../../res/text/JP/banks/0f.bin", $c16, $10
; バタン!!![PAGE] / おれの たいどが きに / いらなかったのか しつじは ドアを / しめてしまった。[END]
Text0FMessage2A:
    INCBIN "../../res/text/JP/banks/0f.bin", $c26, $2e
; しつじを ピストルで うった。[PAGE] / ところが うんわるく ちょうど / せんたくものを とりにきた / クリーニングやが いちぶしじゅうを / みていたのだ。[PAGE] / けいさつに つうほうされた お...
Text0FMessage2B:
    INCBIN "../../res/text/JP/banks/0f.bin", $c54, $29
jr_00f_4c7d:
    INCBIN "../../res/text/JP/banks/0f.bin", $c7d, $27
Jump_00f_4ca4:
    INCBIN "../../res/text/JP/banks/0f.bin", $ca4, $16
; はっ! / ガラスに ひとかげが・・・?[END]
Text0FMessage2C:
    INCBIN "../../res/text/JP/banks/0f.bin", $cba, $13
; おれは しつじを なぐった。 / しつじは そのばに たおれた。[PAGE] / これで もう おれの じゃまは / できないだろう。[END]
Text0FMessage2D:
    INCBIN "../../res/text/JP/banks/0f.bin", $ccd, $38
; キッチンだ。 / きちんと せいとんされている。[PAGE] / あの しつじが つかっているの / だろうか・・・?[END]
Text0FMessage2E:
    INCBIN "../../res/text/JP/banks/0f.bin", $d05, $30
; ちいさな つぼだ。[END]
Text0FMessage2F:
    INCBIN "../../res/text/JP/banks/0f.bin", $d35, $a
; なめてみた。[PAGE] / ・・・ンーッ あまい・・・。 / これは さとうだ。[END]
Text0FMessage30:
    INCBIN "../../res/text/JP/banks/0f.bin", $d3f, $20
; すこし なめてみた。 / ・・・なーんだ! / どうやら こむぎこの ようだ。[END]
Text0FMessage31:
    INCBIN "../../res/text/JP/banks/0f.bin", $d5f, $24
; あなたは トイレで めざめてから / ようやく ここまで たどりついた。[PAGE] / しかし あなたは うんてんしゅの / ちゅうこくを ききいれず のりにげをしてしまった。[PAGE] / けいさつに れんこうさ...
Text0FMessage32:
    INCBIN "../../res/text/JP/banks/0f.bin", $d83, $9a
; フライパンだ。 / きれいに あらってある。[END]
Text0FMessage33:
    INCBIN "../../res/text/JP/banks/0f.bin", $e1d, $15
; しろじに もようのついた さらだ。[END]
Text0FMessage34:
    INCBIN "../../res/text/JP/banks/0f.bin", $e32, $12
; みずさしのようだ。 / なかに みずは はいっていない。[END]
Text0FMessage35:
    INCBIN "../../res/text/JP/banks/0f.bin", $e44, $1b
; ソーセージの スライスだ。 / だれかの たべかけのようだ。[END]
Text0FMessage36:
    INCBIN "../../res/text/JP/banks/0f.bin", $e5f, $1d
; しゃれた テーブルだ。 / よく キッチンなどに おいてある / ごく ありふれたものだ。[END]
Text0FMessage37:
    INCBIN "../../res/text/JP/banks/0f.bin", $e7c, $2a
; キッチンだ。 / ぶきみなほど しずかだ・・・・。[END]
Text0FMessage38:
    INCBIN "../../res/text/JP/banks/0f.bin", $ea6, $18
; なにに つかおうか?[END]
Text0FMessage39:
    INCBIN "../../res/text/JP/banks/0f.bin", $ebe, $b
; ろうかだ。 / ドアが 2つみえる。[END]
Text0FMessage3A:
    INCBIN "../../res/text/JP/banks/0f.bin", $ec9, $11
; あっ あたまが われそうに いたい。[PAGE] / ・・・・・・! / ビスオデンが きいたようだ。[PAGE] / ・・・あっ! / こどものころの きおくだ。[PAGE] / ・・・オメールしんぷだ。 / くろい...
Text0FMessage3B:
    INCBIN "../../res/text/JP/banks/0f.bin", $eda, $b4
; ここは べッドルームのようだ。 / はっ・・・! / おとこが ねている。[END]
Text0FMessage3C:
    INCBIN "../../res/text/JP/banks/0f.bin", $f8e, $22
; ねごこちの よさそうな べッドだ。[END]
Text0FMessage3D:
    INCBIN "../../res/text/JP/banks/0f.bin", $fb0, $12
; でんきスタンドだ。 / べつに こった そうしょくは ない。[END]
Text0FMessage3E:
    INCBIN "../../res/text/JP/banks/0f.bin", $fc2, $1d
; くろい しょるいかばんだ。[END]
Text0FMessage3F:
    INCBIN "../../res/text/JP/banks/0f.bin", $fdf, $e
; ナイトテーブルだ。 / ひきだしが ついている。[END]
Text0FMessage40:
    INCBIN "../../res/text/JP/banks/0f.bin", $fed, $17
; おとこだ。 / スヤスヤと よくねむっている。[PAGE] / おこさないで しゃべらせることは / できないだろうか。[END]
Text0FMessage41:
    INCBIN "../../res/text/JP/banks/0f.bin", $1004, $e
jr_00f_5012:
    INCBIN "../../res/text/JP/banks/0f.bin", $1012, $1d
jr_00f_502f:
    INCBIN "../../res/text/JP/banks/0f.bin", $102f, $6
; ふつうの 2まいぐみの しろい / ティッシュぺーパーだ。[END]
Text0FMessage42:
    INCBIN "../../res/text/JP/banks/0f.bin", $1035, $1c
; チョコレートを いれる はこだろう。あまい かおりがする。[END]
Text0FMessage43:
    INCBIN "../../res/text/JP/banks/0f.bin", $1051, $1e
; てがみだ。 / きたない もじで かきなぐってある。[PAGE] / 「スタンウッドへ[PAGE] /  これが さいごの けいこくだ。[PAGE] /  ビッカースから てを ひかないと /  ふたりのことを ふじん...
Text0FMessage44:
    INCBIN "../../res/text/JP/banks/0f.bin", $106f, $8c
; ちょっけい 2センチくらいの / ボールの かたちの チョコレートだ。おれは あまいものは きらいだ。[END]
Text0FMessage45:
    INCBIN "../../res/text/JP/banks/0f.bin", $10fb, $32
; ぺンタソーダを うった。 / ・・・・・・![PAGE] / ききめが あったようだ。 / おとこは いしきのないまま / はなしはじめた・・・。[PAGE] / 「・・・じかんひょうどおりに やれ! すべてを やりお...
Text0FMessage46:
    INCBIN "../../res/text/JP/banks/0f.bin", $112d, $dd
; ドアだ。[END]
Text0FMessage47:
    INCBIN "../../res/text/JP/banks/0f.bin", $120a, $5
; メドレジンを ちゅうしゃした。 / ・・・・・・![PAGE] / おとこは くるしみはじめた。 / あせが ぜんしんに うきでている。[PAGE] / やがて 「うっ」という うめきごえをあげると うごかなくなった。...
Text0FMessage48:
    INCBIN "../../res/text/JP/banks/0f.bin", $120f, $70
; シンプルな つくりの / べッドルームだ。[END]
Text0FMessage49:
    INCBIN "../../res/text/JP/banks/0f.bin", $127f, $14
; ねているので なにも はなさない。[END]
Text0FMessage4A:
    INCBIN "../../res/text/JP/banks/0f.bin", $1293, $12
; ウップ! / やすっぽい こうすいの かおりが / つよく ただよっている。[PAGE] / ここは しんしつのようだ。[PAGE] / かぐや ちょうどひんの ごうかさからすると ゲストルームだろう。[PAGE] /...
Text0FMessage4B:
    INCBIN "../../res/text/JP/banks/0f.bin", $12a5, $28
jr_00f_52cd:
    INCBIN "../../res/text/JP/banks/0f.bin", $12cd, $41
; かべかけタイプの カガミだ。[END]
Text0FMessage4C:
    INCBIN "../../res/text/JP/banks/0f.bin", $130e, $f
; でんきスタンドだ。 / なかなか しゅみがいい。[END]
Text0FMessage4D:
    INCBIN "../../res/text/JP/banks/0f.bin", $131d, $17
; べッドだ。 / マットが やわらかそうだ。[END]
Text0FMessage4E:
    INCBIN "../../res/text/JP/banks/0f.bin", $1334, $14
; この おんなが この かおりの / げんいんらしい。 / なかなかの びじんだ。[PAGE] / ・・・あっ! / この おんなは!![PAGE] / マンションに あった しゃしんに / うつっていた おんなじゃない...
Text0FMessage4F:
    INCBIN "../../res/text/JP/banks/0f.bin", $1348, $58
; ぎんぶちの メガネだ。[END]
Text0FMessage50:
    INCBIN "../../res/text/JP/banks/0f.bin", $13a0, $c
; こうきゅうそうな ボールぺンだ。[END]
Text0FMessage51:
    INCBIN "../../res/text/JP/banks/0f.bin", $13ac, $11
; なにも かかれていない。[PAGE] / しかし よくみると まえのぺージに / かかれていたものが あとになって / のこっている。[PAGE] / どうにかして これを よみとることはできないだろうか・・・?[END]
Text0FMessage52:
    INCBIN "../../res/text/JP/banks/0f.bin", $13bd, $57
; メモちょうに ボールぺンを / はしらせようと した。[PAGE] / だが まてよ? / これでは せっかくの もじのあとが / つぶれてしまうんじゃないか?[END]
Text0FMessage53:
    INCBIN "../../res/text/JP/banks/0f.bin", $1414, $43
; メモちょうに エンピツを かるく / はしらせた・・・・・・。[PAGE] / おお! / もじが うきでてきたぞ![END]
Text0FMessage54:
    INCBIN "../../res/text/JP/banks/0f.bin", $1457, $2f
; ずいぶん ながながと かいてある / メモだな・・・。[PAGE] / 「ーーー じかんひょう ーーー[PAGE] /  2:15 ジョーのバーが しまり /  じゅうぎょういんが ぜんいん /  かえったところで バ...
Text0FMessage55:
    INCBIN "../../res/text/JP/banks/0f.bin", $1486, $50
jr_00f_54d6:
    INCBIN "../../res/text/JP/banks/0f.bin", $14d6, $245
; ぺンタソーダを ちゅうしゃした。[PAGE] / ・・・・・・! / おんなは はなしはじめた。[PAGE] / 「ジョー・・・。[PAGE] /  わたしは ジョンと たのしく /  くらしたいの! /  じゃまを ...
Text0FMessage56:
    INCBIN "../../res/text/JP/banks/0f.bin", $171b, $b9
; ゲストルームだ。 / こうかそうな かぐるいが / おいてある。[END]
Text0FMessage57:
    INCBIN "../../res/text/JP/banks/0f.bin", $17d4, $c
jr_00f_57e0:
    INCBIN "../../res/text/JP/banks/0f.bin", $17e0, $11
; あっ・・・。 / かすかに きょうはくに ついての / きおくが よみがえってきた・・・。[PAGE] / おれは シーゲルから てがみを / うけとったとき さいしょは わるい / じょうだんだと おもった。[PAG...
Text0FMessage58:
    INCBIN "../../res/text/JP/banks/0f.bin", $17f1, $101
; あっ! / おもいだした![PAGE] / おれは シーゲルからの てがみの / しじで ゆうかいの うちあわせのため2じ45ふんに バーへ いった。[PAGE] / おれは あるいて バーまで / いったのだった・・...
Text0FMessage59:
    INCBIN "../../res/text/JP/banks/0f.bin", $18f2, $72
; メドレジンを ちゅうしゃした。 / ・・・・・・![PAGE] / おんなは くるしみはじめた。 / その うつくしい かおは くつうで / ゆがんだ。[PAGE] / そして もがいて もがいたすえ / うごかなくな...
Text0FMessage5A:
    INCBIN "../../res/text/JP/banks/0f.bin", $1964, $72
; おれは はっぽうした。[PAGE] / ちかくを とおりかかったひとが / じゅうせいを ききつけ けいさつに / つうほうした![PAGE] / おれは たいほされてしまった。[END]
Text0FMessage5B:
    INCBIN "../../res/text/JP/banks/0f.bin", $19d6, $46
; なんの へんかも おきない。 / あいかわらず ねむったままだ。[END]
Text0FMessage5C:
    INCBIN "../../res/text/JP/banks/0f.bin", $1a1c, $1f
; ・・・おれは いったい なにを / しているのだろう・・・。[PAGE] / しんでいる ひとに こんなことをしてなんになると いうのだ![END]
Text0FMessage5D:
    INCBIN "../../res/text/JP/banks/0f.bin", $1a3b, $3c
; えっ? / おれは こんなものを かいた / おぼえはないぞ![END]
Text0FMessage5E:
    INCBIN "../../res/text/JP/banks/0f.bin", $1a77, $1c
; 1000ドルか・・・。 / たいきんだな・・・。[END]
Text0FMessage5F:
    INCBIN "../../res/text/JP/banks/0f.bin", $1a93, $17
; とつぜん めのまえに おとこが / あらわれた![PAGE] / ・・・おそろしく つよそうだ。[PAGE] / おとこは ふといこえで おれに / いった。[PAGE] / 「ぬすんだり ころしたりするのは /  お...
Text0FMessage60:
    INCBIN "../../res/text/JP/banks/0f.bin", $1aaa, $9a
; おれは 20ドルさつを わたした。[PAGE] / おとこは おれに バカにしたような / めをむけて いった。[PAGE] / 「よし よし すなおじゃねえか。 /  その こころがけを たいせつに /  するんだな...
Text0FMessage61:
    INCBIN "../../res/text/JP/banks/0f.bin", $1b44, $5a
; おれの みぎパンチは おとこの / ひだりパンチに わずかな おくれを / とってしまった![PAGE] / みも こころも つかれきっている / おれには この パンチは あまりにもきょうれつすぎた・・・。[PAGE...
Text0FMessage62:
    INCBIN "../../res/text/JP/banks/0f.bin", $1b9e, $6c
; 「ガキの こづかいじゃ ねえぜ!」[PAGE] / そういいながら ひだりパンチを / みまってきた。[PAGE] / きいた!![PAGE] / きょうれつな パンチだ![PAGE] / おれは きを うしなった・・...
Text0FMessage63:
    INCBIN "../../res/text/JP/banks/0f.bin", $1c0a, $4e
; 「バカに してるのか!」[PAGE] / おとこは いきなり おれに / なぐりかかってきた。[PAGE] / おとこの ひだりパンチが おれの / がんめんへ もろに はいった!![PAGE] / きょうれつだ!!!...
Text0FMessage64:
    INCBIN "../../res/text/JP/banks/0f.bin", $1c58, $63
; いつつつっ・・・。[PAGE] / どのくらいのじかん きを / うしなって いたのだろうか・・・。[PAGE] / めを あけようとして みぎめに / いたみを かんじた・・・。[PAGE] / しばらくすると おれ...
Text0FMessage65:
    INCBIN "../../res/text/JP/banks/0f.bin", $1cbb, $7b
; かねを はらおうとすると おとこが / いった。[PAGE] / 「さきに ものを とってください。 /  おかねは その あとで /  いただきます。」[END]
Text0FMessage66:
    INCBIN "../../res/text/JP/banks/0f.bin", $1d36, $40
; ない!!! / コインが ぜんぶ![PAGE] / ・・・クソッ!! / なんてこった![END]
Text0FMessage67:
    INCBIN "../../res/text/JP/banks/0f.bin", $1d76, $21
; ・・・・・・。[PAGE] / これから さきのことを かんがえるとおれの みらいは まっくらやみの / ような きがする・・・。[PAGE] / ・・・つかれた。 / ゆめも きぼうも ない・・・。[END]
Text0FMessage68:
    INCBIN "../../res/text/JP/banks/0f.bin", $1d97, $51
; ホッ・・・。 / べつに とられたものは ない。[END]
Text0FMessage69:
    INCBIN "../../res/text/JP/banks/0f.bin", $1de8, $17
; ピストルで おとこを うった。 / ・・・・・・![PAGE] / じゅうせいを ききつけて けいさつがやってきた。[PAGE] / おれは せいとうぼうえいを / うったえた。[PAGE] / けれども ぶきを もっ...
Text0FMessage6A:
    INCBIN "../../res/text/JP/banks/0f.bin", $1dff, $72
; なんてこった! / めのまえの おとこが いきなり / おれに ピストルを つきつけてきた![PAGE] / 「かねを だせ! /  ださないと どうなるか /  わかっているだろうな!!」[PAGE] / さて どう...
Text0FMessage6B:
    INCBIN "../../res/text/JP/banks/0f.bin", $1e71, $5f
; おれは 20ドルさつを わたした。 / おとこは スキップしながら さった。[PAGE] / 「ハッハー!! /  こんなに ボロい もうけは /  ないぜ!」[PAGE] / という ことばを のこして・・・。[END]
Text0FMessage6C:
    INCBIN "../../res/text/JP/banks/0f.bin", $1ed0, $55
; おれは 25セントを わたした。[PAGE] / 「おれを バカにしているのか!」[PAGE] / おとこは そういいながら トリガーをひいた・・・。[PAGE] / やられた![PAGE] / 「こうかい さきにたた...
Text0FMessage6D:
    INCBIN "../../res/text/JP/banks/0f.bin", $1f25, $58
; おれは トリガーを ひこうとした。[PAGE] / しかし おとこのほうが いっしゅん / はやく トリガーを ひいた![PAGE] / おれは ぎゃくに うたれてしまった。[END]
Text0FMessage6E:
    INCBIN "../../res/text/JP/banks/0f.bin", $1f7d, $46
; おれは おとこの めに いっぱつ / みまってやった![PAGE] / きまった!![PAGE] / ・・・おとこは フラフラと / たちあがった。[PAGE] / 「おぼえてろ!」[PAGE] / そう すてぜりふを...
Text0FMessage6F:
    INCBIN "../../res/text/JP/banks/0f.bin", $1fc3, $6b
; おとこは とつぜん トリガーを / ひいた![PAGE] / ちくしょう!!! / やられてしまった・・・。[END]
Text0FMessage70:
    INCBIN "../../res/text/JP/banks/0f.bin", $202e, $2b
; また でた! / さっきの おとこだ![PAGE] / おれに なぐられたところを / アザにしている。[PAGE] / 「にどと おなじては くわないぜ。 /  さっさと かねをだしな!」[PAGE] / さあ こん...
Text0FMessage71:
    INCBIN "../../res/text/JP/banks/0f.bin", $2059, $10
jr_00f_6069:
    INCBIN "../../res/text/JP/banks/0f.bin", $2069, $4d
; きまった![PAGE] / おれは さっきと はんたいがわの / めに パンチを くらわせた。[PAGE] / 「おぼえてろ!」[PAGE] / おとこは ヨロヨロと ちどりあしで / にげていった。 / まったく し...
Text0FMessage72:
    INCBIN "../../res/text/JP/banks/0f.bin", $20b6, $1d
Jump_00f_60d3:
    INCBIN "../../res/text/JP/banks/0f.bin", $20d3, $3a
; おれは 20ドルさつを さしだした。おとこは ひったくるように かねを / とった。[PAGE] / 「こんなに くろうしたのは /  はじめてだぜ!」[PAGE] / というと さっさと にげていった。[END]
Text0FMessage73:
    INCBIN "../../res/text/JP/banks/0f.bin", $210d, $53
; ゲッ! / また でた! / さっきの おとこだ。[PAGE] / こんどは りょうめに アザ・・・。 / たぬきのような かおで おれに / いった。[PAGE] / 「まえは よくも やったな! /  こんどは や...
Text0FMessage74:
    INCBIN "../../res/text/JP/banks/0f.bin", $2160, $66
; てごたえが あった! / おれは おとこの はなに つうれつなひだりフックを みまった。[PAGE] / おとこは なにもいわずに たちあがりヨタヨタと にげていった。 / まったく こりないやつだ![END]
Text0FMessage75:
    INCBIN "../../res/text/JP/banks/0f.bin", $21c6, $59
; さっきの おとこだ。 / あいかわらず おれに ピストルを / つきつけてくる。[PAGE] / りょうめの アザに くわえ はなぢのおまけつきだ。[PAGE] / 「とっとと かねを だせ! /  こんどは マジだぜ...
Text0FMessage76:
    INCBIN "../../res/text/JP/banks/0f.bin", $221f, $87
; おれの こぶしが くうを きった。[PAGE] / おとこは いままでの うらみを / こめて ピストルを うった![PAGE] / ゆっ ゆだんした・・・。[PAGE] / おれは ついに やられてしまった。[END]
Text0FMessage77:
    INCBIN "../../res/text/JP/banks/0f.bin", $22a6, $50
; はっぽうしたが おおきな へんかは / みられない。 / たまの ムダづかいだったか・・・。[END]
Text0FMessage78:
    INCBIN "../../res/text/JP/banks/0f.bin", $22f6, $2b
; 「ジョン・スタンウッド たいほ!![PAGE] /  きょう みめい シカゴの しさんか ジョン・スタンウッドが さつじんの ようぎで たいほされた。[PAGE] /  しらべによると スタンウッドと /  こいびとの...
Text0FMessage79:
    INCBIN "../../res/text/JP/banks/0f.bin", $2321, $b8
Call_00f_63d9:
    INCBIN "../../res/text/JP/banks/0f.bin", $23d9, $ef
jr_00f_64c8:
    INCBIN "../../res/text/JP/banks/0f.bin", $24c8, $13
; ガチャッ・・・! / あなたは たいほされてしまった。[PAGE] / けいさつは あなたの はなしに / きょうみをもち それを もとに / ゆうかいと さつじんについて / てっていてきに そうさした。[PAGE]...
Text0FMessage7A:
    INCBIN "../../res/text/JP/banks/0f.bin", $24db, $137
; ガチャッ・・・! / あなたは たいほされてしまった。[PAGE] / けいかんから たくさんの しつもんをされた。[PAGE] / しかし きおくのない おとこに / すじのとおった へんとうが / できるわけがない...
Text0FMessage7B:
    INCBIN "../../res/text/JP/banks/0f.bin", $2612, $b4
; そのけっか あなたは ちょうえき / 10ねんの はんけつを うけた。[PAGE] / ・・・あなたには てつごうしが / まっている・・・。[END]
Text0FMessage7C:
    INCBIN "../../res/text/JP/banks/0f.bin", $26c6, $3c
; シーゲルの さつじんと ふじんの / ゆうかいを ふたりが やったのでは / ないとすれば ぎわくが あなたに / かかるのは とうぜんのことだった。[PAGE] / さらに シーゲルとの なかが / わるかった など...
Text0FMessage7D:
    INCBIN "../../res/text/JP/banks/0f.bin", $2702, $81
; はんけつは 「むきちょうえき」[PAGE] / いっしょう はいいろの かべを / みつめながら くらさなければ / ならなくなった・・・。[END]
Text0FMessage7E:
    INCBIN "../../res/text/JP/banks/0f.bin", $2783, $3b
; これは だんがんケースだ。 / かやくの においが・・・。[END]
Text0FMessage7F:
    INCBIN "../../res/text/JP/banks/0f.bin", $27be, $1758
Call_00f_7f16:
    INCBIN "../../res/text/JP/banks/0f.bin", $3f16, $9a
Call_00f_7fb0:
Jump_00f_7fb0:
    INCBIN "../../res/text/JP/banks/0f.bin", $3fb0, $21
Call_00f_7fd1:
    INCBIN "../../res/text/JP/banks/0f.bin", $3fd1, $2f
