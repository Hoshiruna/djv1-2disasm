; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text0CMsgs0:
    db LOW(Text0CMessage00), HIGH(Text0CMessage00)
    db LOW(Text0CMessage01), HIGH(Text0CMessage01)
    db LOW(Text0CMessage02), HIGH(Text0CMessage02)
    db LOW(Text0CMessage03), HIGH(Text0CMessage03)
    db LOW(Text0CMessage04), HIGH(Text0CMessage04)
    db LOW(Text0CMessage05), HIGH(Text0CMessage05)
    db LOW(Text0CMessage06), HIGH(Text0CMessage06)
    db LOW(Text0CMessage07), HIGH(Text0CMessage07)
    db LOW(Text0CMessage08), HIGH(Text0CMessage08)
    db LOW(Text0CMessage09), HIGH(Text0CMessage09)
    db LOW(Text0CMessage0A), HIGH(Text0CMessage0A)
    db LOW(Text0CMessage0B), HIGH(Text0CMessage0B)
    db LOW(Text0CMessage0C), HIGH(Text0CMessage0C)
    db LOW(Text0CMessage0D), HIGH(Text0CMessage0D)
    db LOW(Text0CMessage0E), HIGH(Text0CMessage0E)
    db LOW(Text0CMessage0F), HIGH(Text0CMessage0F)
    db LOW(Text0CMessage10), HIGH(Text0CMessage10)
    db LOW(Text0CMessage11), HIGH(Text0CMessage11)
    db LOW(Text0CMessage12), HIGH(Text0CMessage12)
    db LOW(Text0CMessage13), HIGH(Text0CMessage13)
    db LOW(Text0CMessage14), HIGH(Text0CMessage14)
    db LOW(Text0CMessage15), HIGH(Text0CMessage15)
    db LOW(Text0CMessage16), HIGH(Text0CMessage16)
    db LOW(Text0CMessage17), HIGH(Text0CMessage17)
    db LOW(Text0CMessage18), HIGH(Text0CMessage18)
    db LOW(Text0CMessage19), HIGH(Text0CMessage19)
    db LOW(Text0CMessage1A), HIGH(Text0CMessage1A)
    db LOW(Text0CMessage1B), HIGH(Text0CMessage1B)
    db LOW(Text0CMessage1C), HIGH(Text0CMessage1C)
    db LOW(Text0CMessage1D), HIGH(Text0CMessage1D)
    db LOW(Text0CMessage1E), HIGH(Text0CMessage1E)
    db LOW(Text0CMessage1F), HIGH(Text0CMessage1F)
    db LOW(Text0CMessage20), HIGH(Text0CMessage20)
    db LOW(Text0CMessage21), HIGH(Text0CMessage21)
    db LOW(Text0CMessage22), HIGH(Text0CMessage22)
    db LOW(Text0CMessage23), HIGH(Text0CMessage23)
    db LOW(Text0CMessage24), HIGH(Text0CMessage24)
    db LOW(Text0CMessage25), HIGH(Text0CMessage25)
    db LOW(Text0CMessage26), HIGH(Text0CMessage26)
    db LOW(Text0CMessage27), HIGH(Text0CMessage27)
    db LOW(Text0CMessage28), HIGH(Text0CMessage28)
    db LOW(Text0CMessage29), HIGH(Text0CMessage29)
    db LOW(Text0CMessage2A), HIGH(Text0CMessage2A)
    db LOW(Text0CMessage2B), HIGH(Text0CMessage2B)
    db LOW(Text0CMessage2C), HIGH(Text0CMessage2C)
    db LOW(Text0CMessage2D), HIGH(Text0CMessage2D)
    db LOW(Text0CMessage2E), HIGH(Text0CMessage2E)
    db LOW(Text0CMessage2F), HIGH(Text0CMessage2F)
    db LOW(Text0CMessage30), HIGH(Text0CMessage30)
    db LOW(Text0CMessage31), HIGH(Text0CMessage31)
    db LOW(Text0CMessage32), HIGH(Text0CMessage32)
    db LOW(Text0CMessage33), HIGH(Text0CMessage33)
    db LOW(Text0CMessage34), HIGH(Text0CMessage34)
    db LOW(Text0CMessage35), HIGH(Text0CMessage35)
    db LOW(Text0CMessage36), HIGH(Text0CMessage36)
    db LOW(Text0CMessage37), HIGH(Text0CMessage37)
    db LOW(Text0CMessage38), HIGH(Text0CMessage38)
    db LOW(Text0CMessage39), HIGH(Text0CMessage39)
    db LOW(Text0CMessage3A), HIGH(Text0CMessage3A)
    db LOW(Text0CMessage3B), HIGH(Text0CMessage3B)
    db LOW(Text0CMessage3C), HIGH(Text0CMessage3C)
    db LOW(Text0CMessage3D), HIGH(Text0CMessage3D)
    db LOW(Text0CMessage3E), HIGH(Text0CMessage3E)
    db LOW(Text0CMessage3F), HIGH(Text0CMessage3F)
; Sixty-four message pointers for one text group.
Text0CMsgs1:
    db LOW(Text0CMessage40), HIGH(Text0CMessage40)
    db LOW(Text0CMessage41), HIGH(Text0CMessage41)
    db LOW(Text0CMessage42), HIGH(Text0CMessage42)
    db LOW(Text0CMessage43), HIGH(Text0CMessage43)
    db LOW(Text0CMessage44), HIGH(Text0CMessage44)
    db LOW(Text0CMessage45), HIGH(Text0CMessage45)
    db LOW(Text0CMessage46), HIGH(Text0CMessage46)
    db LOW(Text0CMessage47), HIGH(Text0CMessage47)
    db LOW(Text0CMessage48), HIGH(Text0CMessage48)
    db LOW(Text0CMessage49), HIGH(Text0CMessage49)
    db LOW(Text0CMessage4A), HIGH(Text0CMessage4A)
    db LOW(Text0CMessage4B), HIGH(Text0CMessage4B)
    db LOW(Text0CMessage4C), HIGH(Text0CMessage4C)
    db LOW(Text0CMessage4D), HIGH(Text0CMessage4D)
    db LOW(Text0CMessage4E), HIGH(Text0CMessage4E)
    db LOW(Text0CMessage4F), HIGH(Text0CMessage4F)
    db LOW(Text0CMessage50), HIGH(Text0CMessage50)
    db LOW(Text0CMessage51), HIGH(Text0CMessage51)
    db LOW(Text0CMessage52), HIGH(Text0CMessage52)
    db LOW(Text0CMessage53), HIGH(Text0CMessage53)
    db LOW(Text0CMessage54), HIGH(Text0CMessage54)
    db LOW(Text0CMessage55), HIGH(Text0CMessage55)
    db LOW(Text0CMessage56), HIGH(Text0CMessage56)
    db LOW(Text0CMessage57), HIGH(Text0CMessage57)
    db LOW(Text0CMessage58), HIGH(Text0CMessage58)
    db LOW(Text0CMessage59), HIGH(Text0CMessage59)
    db LOW(Text0CMessage5A), HIGH(Text0CMessage5A)
    db LOW(Text0CMessage5B), HIGH(Text0CMessage5B)
    db LOW(Text0CMessage5C), HIGH(Text0CMessage5C)
    db LOW(Text0CMessage5D), HIGH(Text0CMessage5D)
    db LOW(Text0CMessage5D), HIGH(Text0CMessage5D)
    db LOW(Text0CMessage5D), HIGH(Text0CMessage5D)
    db LOW(Text0CMessage60), HIGH(Text0CMessage60)
    db LOW(Text0CMessage61), HIGH(Text0CMessage61)
    db LOW(Text0CMessage62), HIGH(Text0CMessage62)
    db LOW(Text0CMessage63), HIGH(Text0CMessage63)
    db LOW(Text0CMessage64), HIGH(Text0CMessage64)
    db LOW(Text0CMessage65), HIGH(Text0CMessage65)
    db LOW(Text0CMessage66), HIGH(Text0CMessage66)
    db LOW(Text0CMessage67), HIGH(Text0CMessage67)
    db LOW(Text0CMessage68), HIGH(Text0CMessage68)
    db LOW(Text0CMessage69), HIGH(Text0CMessage69)
    db LOW(Text0CMessage6A), HIGH(Text0CMessage6A)
    db LOW(Text0CMessage6A), HIGH(Text0CMessage6A)
    db LOW(Text0CMessage6C), HIGH(Text0CMessage6C)
    db LOW(Text0CMessage6D), HIGH(Text0CMessage6D)
    db LOW(Text0CMessage6E), HIGH(Text0CMessage6E)
    db LOW(Text0CMessage6F), HIGH(Text0CMessage6F)
    db LOW(Text0CMessage70), HIGH(Text0CMessage70)
    db LOW(Text0CMessage71), HIGH(Text0CMessage71)
    db LOW(Text0CMessage72), HIGH(Text0CMessage72)
    db LOW(Text0CMessage73), HIGH(Text0CMessage73)
    db LOW(Text0CMessage74), HIGH(Text0CMessage74)
    db LOW(Text0CMessage75), HIGH(Text0CMessage75)
    db LOW(Text0CMessage76), HIGH(Text0CMessage76)
    db LOW(Text0CMessage77), HIGH(Text0CMessage77)
    db LOW(Text0CMessage78), HIGH(Text0CMessage78)
    db LOW(Text0CMessage79), HIGH(Text0CMessage79)
    db LOW(Text0CMessage7A), HIGH(Text0CMessage7A)
    db LOW(Text0CMessage7B), HIGH(Text0CMessage7B)
    db LOW(Text0CMessage7C), HIGH(Text0CMessage7C)
    db LOW(Text0CMessage7D), HIGH(Text0CMessage7D)
    db LOW(Text0CMessage7E), HIGH(Text0CMessage7E)
    db LOW(Text0CMessage7F), HIGH(Text0CMessage7F)
; ふと めが さめた。 / ここは・・・・・・?[PAGE] / ・・・どうも トイレの なからしい。どうして こんなところに / いるのだろう?[PAGE] / かんがえようとすると あたまが / ガンガンする。[PA...
Text0CMessage00:
    INCBIN "../../res/text/JP/banks/0c.bin", $100, $8
jr_00c_4108:
    INCBIN "../../res/text/JP/banks/0c.bin", $108, $13e
; ライトブラウンの トレンチコートだ。なかなか しゅみがいい。[END]
Text0CMessage01:
    INCBIN "../../res/text/JP/banks/0c.bin", $246, $1f
; ・・・ん? / ポケットに なにか はいっているぞ。ちょっと あけて みようか・・・。[END]
Text0CMessage02:
    INCBIN "../../res/text/JP/banks/0c.bin", $265, $2a
; つりさげしきの でんとうだ。[END]
Text0CMessage03:
    INCBIN "../../res/text/JP/banks/0c.bin", $28f, $f
; トイレットぺーパーだ。 / ざつぜんとしたなかに ぶんめいの / かおりを ただよわせている。[END]
Text0CMessage04:
    INCBIN "../../res/text/JP/banks/0c.bin", $29e, $2c
; グラスは カラだ。[END]
Text0CMessage05:
    INCBIN "../../res/text/JP/banks/0c.bin", $2ca, $a
; きんいろの ライターだ。 / 「J・S」と イニシャルが / はいっている。[END]
Text0CMessage06:
    INCBIN "../../res/text/JP/banks/0c.bin", $2d4, $23
; 25セント コインだ。[END]
Text0CMessage07:
    INCBIN "../../res/text/JP/banks/0c.bin", $2f7, $c
; 38こうけい スぺシャルだ。[END]
Text0CMessage08:
    INCBIN "../../res/text/JP/banks/0c.bin", $303, $f
; 38こうけいようの だんがんだ。[END]
Text0CMessage09:
    INCBIN "../../res/text/JP/banks/0c.bin", $312, $11
; うんてんしゅは いった。[PAGE] / 「こまかいのが ないのかい? /  こっちも おつりが ないんだよ。[PAGE] /  ・・・よし! /  ここは サービス しておくよ。」[END]
Text0CMessage0A:
    INCBIN "../../res/text/JP/banks/0c.bin", $323, $48
;  「こじんよう アクセスカード /   ジョー・シーゲル /   ぺントハウス マンション」 /   ・・・・・・?[PAGE] / ちいさな あなが パンチしてある。 / マンションの カードキーだろうか?[END]
Text0CMessage0B:
    INCBIN "../../res/text/JP/banks/0c.bin", $36b, $59
; ・・・うまく かけられない。 / どうも サイズが おおきいようだ。[END]
Text0CMessage0C:
    INCBIN "../../res/text/JP/banks/0c.bin", $3c4, $21
; かわせいの いきな さいふだ。 / かなり こうかな ものらしい。[END]
Text0CMessage0D:
    INCBIN "../../res/text/JP/banks/0c.bin", $3e5, $20
; ラッキーストライクだ。[END]
Text0CMessage0E:
    INCBIN "../../res/text/JP/banks/0c.bin", $405, $c
; 「J・S」と イニシャルが / きざんである。[PAGE] / ・・・・・・「J・S」・・・?[END]
Text0CMessage0F:
    INCBIN "../../res/text/JP/banks/0c.bin", $411, $26
; くろい サングラスだ。 / ・・・キザだな。[END]
Text0CMessage10:
    INCBIN "../../res/text/JP/banks/0c.bin", $437, $15
; オフィスと かいてある カギだ。[END]
Text0CMessage11:
    INCBIN "../../res/text/JP/banks/0c.bin", $44c, $11
; トイレの なかだ。[END]
Text0CMessage12:
    INCBIN "../../res/text/JP/banks/0c.bin", $45d, $a
; ははっ・・・。 / バカなことを してしまった。[END]
Text0CMessage13:
    INCBIN "../../res/text/JP/banks/0c.bin", $467, $17
; ・・・・・・むりか。[END]
Text0CMessage14:
    INCBIN "../../res/text/JP/banks/0c.bin", $47e, $b
; タバコに ひをつけた。 / かなり きつい タバコだ。[END]
Text0CMessage15:
    INCBIN "../../res/text/JP/banks/0c.bin", $489, $1a
; とれないようだ。[END]
Text0CMessage16:
    INCBIN "../../res/text/JP/banks/0c.bin", $4a3, $9
; ピストルだ! / こいつは すごい![PAGE] / だが なぜ こんなところに・・・?[END]
Text0CMessage17:
    INCBIN "../../res/text/JP/banks/0c.bin", $4ac, $23
; うんてんしゅは すまなそうに / いった。[PAGE] / 「おつりが ありませんので /  コインで はらって ください。」[END]
Text0CMessage18:
    INCBIN "../../res/text/JP/banks/0c.bin", $4cf, $34
; いや まてよ・・・。 / こんなところに すてると すぐに / みつかって しまいそうだ。[END]
Text0CMessage19:
    INCBIN "../../res/text/JP/banks/0c.bin", $503, $1
jr_00c_4504:
    INCBIN "../../res/text/JP/banks/0c.bin", $504, $29
; コン コン! / ・・・・・・なにも おこらない。[END]
Text0CMessage1A:
    INCBIN "../../res/text/JP/banks/0c.bin", $52d, $18
; だれに はなしかけているんだ?[END]
Text0CMessage1B:
    INCBIN "../../res/text/JP/banks/0c.bin", $545, $10
; ふう・・・。 / あたまの なかが まっしろだ。[PAGE] / あちこち うごきまわったので / つかれで からだも しんけいも / ぼろぼろだ。[PAGE] / ・・・なんとかしなければ。[PAGE] / しかし ...
Text0CMessage1C:
    INCBIN "../../res/text/JP/banks/0c.bin", $555, $6a
; せんめんじょの なかだ。 / ・・・よごれている。[PAGE] / きっと なんにちも / そうじをしていないのだろう。[END]
Text0CMessage1D:
    INCBIN "../../res/text/JP/banks/0c.bin", $5bf, $31
; ドアだ。[PAGE] / イヤな よかんがする。 / そとにでると なにか トラブルに / まきこまれそうだ。[END]
Text0CMessage1E:
    INCBIN "../../res/text/JP/banks/0c.bin", $5f0, $2c
; ・・・・・・![PAGE] / まったく しらない おとこだ。 / カガミの むこうで じっと おれを / みつめている。[PAGE] / ・・・これが おれの かおなのか?[END]
Text0CMessage1F:
    INCBIN "../../res/text/JP/banks/0c.bin", $61c, $44
; でんとうだ。 / てんじょうから つりさがっている。[END]
Text0CMessage20:
    INCBIN "../../res/text/JP/banks/0c.bin", $660, $19
; ふつうの せんめんだいだ。[END]
Text0CMessage21:
    INCBIN "../../res/text/JP/banks/0c.bin", $679, $e
; ものすごい おとと ともに カガミがくだけちった。[END]
Text0CMessage22:
    INCBIN "../../res/text/JP/banks/0c.bin", $687, $1a
; うすよごれた せんめんじょの / なかだ。[END]
Text0CMessage23:
    INCBIN "../../res/text/JP/banks/0c.bin", $6a1, $14
; ろうかに つうじる ドアだ。[END]
Text0CMessage24:
    INCBIN "../../res/text/JP/banks/0c.bin", $6b5, $f
; カガミだ。 / もくせいの ワクが ついている。[END]
Text0CMessage25:
    INCBIN "../../res/text/JP/banks/0c.bin", $6c4, $17
; ろうかに でた。 / くらくて ジメジメしている。[END]
Text0CMessage26:
    INCBIN "../../res/text/JP/banks/0c.bin", $6db, $18
; みずたまりが ある。[END]
Text0CMessage27:
    INCBIN "../../res/text/JP/banks/0c.bin", $6f3, $b
; ドアだ。 / 「じょせいよう」と かいてある。[END]
Text0CMessage28:
    INCBIN "../../res/text/JP/banks/0c.bin", $6fe, $16
; ちゃいろい ドアだ。 / どこへ つづくのだろう・・・[END]
Text0CMessage29:
    INCBIN "../../res/text/JP/banks/0c.bin", $714, $1a
; あなたは けいさつしょに いる。[PAGE] / けいさつは よろこんで あなたを / むかえた。[PAGE] / かれらは あなたの はなしに / たいへん きょうみを もった。[END]
Text0CMessage2A:
    INCBIN "../../res/text/JP/banks/0c.bin", $72e, $47
; ろうかだ。 / くうきが シメっている。[END]
Text0CMessage2B:
    INCBIN "../../res/text/JP/banks/0c.bin", $775, $13
; じょせいようの せんめんじょだ。 / おせじにも きれいとは いえない。[END]
Text0CMessage2C:
    INCBIN "../../res/text/JP/banks/0c.bin", $788, $23
; あまり うつりのよくない カガミだ。どうやら みずあかのせいのようだ。[END]
Text0CMessage2D:
    INCBIN "../../res/text/JP/banks/0c.bin", $7ab, $24
; なんの へんてつもない ゴミばこだ。つかいふるされたものらしく / あちらこちらが へこんでいる。[END]
Text0CMessage2E:
    INCBIN "../../res/text/JP/banks/0c.bin", $7cf, $30
; ふるぼけた でんとうが / つりさがっている。[END]
Text0CMessage2F:
    INCBIN "../../res/text/JP/banks/0c.bin", $7ff, $16
; どこにでもある せんめんだいだ。[END]
Text0CMessage30:
    INCBIN "../../res/text/JP/banks/0c.bin", $815, $11
; じょせいようトイレへの いりぐちだ。だれか いるのだろうか・・・。[END]
Text0CMessage31:
    INCBIN "../../res/text/JP/banks/0c.bin", $826, $22
; じょせいようの せんめんじょだ。[END]
Text0CMessage32:
    INCBIN "../../res/text/JP/banks/0c.bin", $848, $11
; じょせいようの トイレだ。 / ざんねんだが だれもいない。[END]
Text0CMessage33:
    INCBIN "../../res/text/JP/banks/0c.bin", $859, $1d
; トイレットぺーパーだ。 / だれも つかった ようすはない。[END]
Text0CMessage34:
    INCBIN "../../res/text/JP/banks/0c.bin", $876, $1d
; みずたまりだ。 / すいそうから みずが もれている。[END]
Text0CMessage35:
    INCBIN "../../res/text/JP/banks/0c.bin", $893, $1a
; べんきだ。 / すいそうの ヒビは あたらしい。[END]
Text0CMessage36:
    INCBIN "../../res/text/JP/banks/0c.bin", $8ad, $17
; なにも かわったものは ない。[END]
Text0CMessage37:
    INCBIN "../../res/text/JP/banks/0c.bin", $8c4, $10
; バタン! というおとが へやじゅうにひびきわたった。[END]
Text0CMessage38:
    INCBIN "../../res/text/JP/banks/0c.bin", $8d4, $1b
; じょせいようの トイレだ。 / とても しずかだ。[END]
Text0CMessage39:
    INCBIN "../../res/text/JP/banks/0c.bin", $8ef, $18
; あなたの はなしと 3つの / しょうこひんは スタンウッドと / ビッカースに おおきな ようぎの / かげを なげかけた。[PAGE] / しかし それは ぜったいの ものではなかった・・・。[END]
Text0CMessage3A:
    INCBIN "../../res/text/JP/banks/0c.bin", $907, $55
; くらい だれもいない バーのなかだ。よるも かなり ふけているらしい。[END]
Text0CMessage3B:
    INCBIN "../../res/text/JP/banks/0c.bin", $95c, $24
; マドごしに とおりが みえる。 / ・・・・・・だれも いないようだ。[END]
Text0CMessage3C:
    INCBIN "../../res/text/JP/banks/0c.bin", $980, $22
; 2かいへ つうじる かいだんらしい。[PAGE] / のぼってみたいが いまの おれの / すいじゃくした からだでは / むりかもしれない・・・。[END]
Text0CMessage3D:
    INCBIN "../../res/text/JP/banks/0c.bin", $9a2, $3f
; かいだんの したに ドアが・・・? / 「ワインセラー」と かいてある。[END]
Text0CMessage3E:
    INCBIN "../../res/text/JP/banks/0c.bin", $9e1, $23
; とおりに でる フロントドアだ。[END]
Text0CMessage3F:
    INCBIN "../../res/text/JP/banks/0c.bin", $a04, $11
; さけの ようだ。 / ・・・ラムソーダだな。 / いい かおりが する。[END]
Text0CMessage40:
    INCBIN "../../res/text/JP/banks/0c.bin", $a15, $21
; バーの カウンターだ。 / よく みがかれている。[END]
Text0CMessage41:
    INCBIN "../../res/text/JP/banks/0c.bin", $a36, $18
; だれもいない バーのなかだ。[END]
Text0CMessage42:
    INCBIN "../../res/text/JP/banks/0c.bin", $a4e, $f
; おしても ひいても びくともしない。カギが かかっているらしい。[END]
Text0CMessage43:
    INCBIN "../../res/text/JP/banks/0c.bin", $a5d, $21
; ラムソーダを ひとくち のんだ。[END]
Text0CMessage44:
    INCBIN "../../res/text/JP/banks/0c.bin", $a7e, $11
; ・・・カチッ![PAGE] / フロントのカギを つかうと ドアが / かんたんに あいた。[END]
Text0CMessage45:
    INCBIN "../../res/text/JP/banks/0c.bin", $a8f, $25
; ものすごい おとがして / マドが われた。[END]
Text0CMessage46:
    INCBIN "../../res/text/JP/banks/0c.bin", $ab4, $15
; あけようとしたが カギが / かかっている・・・。[END]
Text0CMessage47:
    INCBIN "../../res/text/JP/banks/0c.bin", $ac9, $18
; 2かいへ つうじる かいだんだ。[END]
Text0CMessage48:
    INCBIN "../../res/text/JP/banks/0c.bin", $ae1, $11
; うすぎたない ワインセラーだ。 / くうきが にごっている。[END]
Text0CMessage49:
    INCBIN "../../res/text/JP/banks/0c.bin", $af2, $1d
; ふつうの でんとうだ。 / かわった ところは ない。[END]
Text0CMessage4A:
    INCBIN "../../res/text/JP/banks/0c.bin", $b0f, $1a
; おおきな ワインの たるだ。 / なかに ワインが / はいっているのだろうか・・・?[END]
Text0CMessage4B:
    INCBIN "../../res/text/JP/banks/0c.bin", $b29, $28
; ワインの たるの せんだ。[END]
Text0CMessage4C:
    INCBIN "../../res/text/JP/banks/0c.bin", $b51, $e
; クモのすが はっている。 / ・・・クモは いないようだ。[END]
Text0CMessage4D:
    INCBIN "../../res/text/JP/banks/0c.bin", $b5f, $1c
; ワインの たなか・・・。 / ほこりを かぶった ワインで / いっぱいだ。[PAGE] / ・・・おや? / みぎの まんなかあたりに / みょうに あたらしいビンが・・・。[END]
Text0CMessage4E:
    INCBIN "../../res/text/JP/banks/0c.bin", $b7b, $49
; きれいな ワインの ビンだ。 / 1つだけ ほこりが ついていない。[PAGE] / ・・・・・・なにか ありそうだな。[END]
Text0CMessage4F:
    INCBIN "../../res/text/JP/banks/0c.bin", $bc4, $33
; あっ! / おれの くつに ワインが・・・![PAGE] / せんを あけると いきおいよく / ワインが ながれだした。[END]
Text0CMessage50:
    INCBIN "../../res/text/JP/banks/0c.bin", $bf7, $32
; こっ これは・・・![PAGE] / ギーッという にぶいおとと ともに / ビンだなが スライドして つうろが / あらわれた。[PAGE] / ・・・・・・かくしべやか?[END]
Text0CMessage51:
    INCBIN "../../res/text/JP/banks/0c.bin", $c29, $44
; うすぎたない ワインセラーだ。[END]
Text0CMessage52:
    INCBIN "../../res/text/JP/banks/0c.bin", $c6d, $10
; おおきな ワインの たるだ。[END]
Text0CMessage53:
    INCBIN "../../res/text/JP/banks/0c.bin", $c7d, $f
; ひみつの つうろのようだ。 / なんのために こんなところを?[END]
Text0CMessage54:
    INCBIN "../../res/text/JP/banks/0c.bin", $c8c, $1e
; したへ つうじる たてあなだ。 / はしごが ついている。[PAGE] / げすい どくとくの はなをつくようなにおいが のぼってくる。[END]
Text0CMessage55:
    INCBIN "../../res/text/JP/banks/0c.bin", $caa, $2d
Call_00c_4cd7:
    INCBIN "../../res/text/JP/banks/0c.bin", $cd7, $e
; まるい もくせいの ドアだ。 / このドアの むこうには いったい / なにが あるというのか?[END]
Text0CMessage56:
    INCBIN "../../res/text/JP/banks/0c.bin", $ce5, $2d
; はだかでんきゅうだ。 / ひみつの つうろの イメージに / ぴったりだな。[END]
Text0CMessage57:
    INCBIN "../../res/text/JP/banks/0c.bin", $d12, $23
; うすぐらい ひみつの つうろだ。[END]
Text0CMessage58:
    INCBIN "../../res/text/JP/banks/0c.bin", $d35, $11
; カジノに つうじる ドアだ。[END]
Text0CMessage59:
    INCBIN "../../res/text/JP/banks/0c.bin", $d46, $f
; カジノのようだ。 / なかは ひっそりと / しずまりかえっている。[END]
Text0CMessage5A:
    INCBIN "../../res/text/JP/banks/0c.bin", $d55, $1f
; それどころか あなたにも おおきな / ようぎが かかった。[PAGE] / シーゲルの さつがいや ふじんの / ゆうかいを じっさいに おこなったとうたがわれるに じゅうぶんな / しょうこひんが みつかったのだ。...
Text0CMessage5B:
    INCBIN "../../res/text/JP/banks/0c.bin", $d74, $bc
; しかし スタンウッドと ビッカースにようぎを なげかけるには あまりにもしょうこが ふそくしていた。[END]
Text0CMessage5C:
    INCBIN "../../res/text/JP/banks/0c.bin", $e30, $33
; ルーレットだ。 / みているだけで こうふんしてくる。[PAGE] / まえに やったことが / あるのだろうか。[END]
Text0CMessage5D:
    INCBIN "../../res/text/JP/banks/0c.bin", $e63, $2e
; スロットマシンだ。 / こいつで おれの うんを / ためしてみようか・・・。[END]
Text0CMessage60:
    INCBIN "../../res/text/JP/banks/0c.bin", $e91, $24
; まわしても おとが しない。 / こわれているようだ。[END]
Text0CMessage61:
    INCBIN "../../res/text/JP/banks/0c.bin", $eb5, $1a
; ちっ だめか! / どうも ついていないようだ。 / [END]
Text0CMessage62:
    INCBIN "../../res/text/JP/banks/0c.bin", $ecf, $18
; スロットマシンが まわりはじめた。 / ウィーン・・・・・・。[PAGE] / ・・・カチャ カチャ カチャ・・・ / チーン![PAGE] / やったぜ!! / ジャックポットだ![PAGE] / おおあたりだ!! ...
Text0CMessage63:
    INCBIN "../../res/text/JP/banks/0c.bin", $ee7, $62
; タクシーは はっしんした。 / ・・・・・・。[END]
Text0CMessage64:
    INCBIN "../../res/text/JP/banks/0c.bin", $f49, $16
; だれもいない カジノの なかだ。[END]
Text0CMessage65:
    INCBIN "../../res/text/JP/banks/0c.bin", $f5f, $11
; ルーレットだ。[END]
Text0CMessage66:
    INCBIN "../../res/text/JP/banks/0c.bin", $f70, $8
; タクシーは はっしんした。 / うんてんしゅは ニコニコしながら / ハンドルを にぎっている。[END]
Text0CMessage67:
    INCBIN "../../res/text/JP/banks/0c.bin", $f78, $2d
; ・・・あかない。 / こちらからは あかないようだ。[END]
Text0CMessage68:
    INCBIN "../../res/text/JP/banks/0c.bin", $fa5, $19
; エレべータの まえだ。[END]
Text0CMessage69:
    INCBIN "../../res/text/JP/banks/0c.bin", $fbe, $c
; エレべータの なかだ。 / さて どこに いこうか・・・?[END]
Text0CMessage6A:
    INCBIN "../../res/text/JP/banks/0c.bin", $fca, $1c
; いちばん うえのフロアの / ボタンだろう。[END]
Text0CMessage6C:
    INCBIN "../../res/text/JP/banks/0c.bin", $fe6, $15
; なんの しるしもない ボタンだ。[END]
Text0CMessage6D:
    INCBIN "../../res/text/JP/banks/0c.bin", $ffb, $11
; いちばん したのフロアの / ボタンだろう。[END]
Text0CMessage6E:
    INCBIN "../../res/text/JP/banks/0c.bin", $100c, $15
; エレべータの なかだ。[END]
Text0CMessage6F:
    INCBIN "../../res/text/JP/banks/0c.bin", $1021, $c
; ボタンを おすと エレべータが / うごきはじめた。 / ウィーン・・・・・・。[PAGE] / ・・・・・・ゴウウウン。 / エレべータが とまって ドアが / ひらいた。[END]
Text0CMessage70:
    INCBIN "../../res/text/JP/banks/0c.bin", $102d, $44
jr_00c_5071:
    INCBIN "../../res/text/JP/banks/0c.bin", $1071, $4
; ボタンを おすと ドアが しまった。[PAGE] / すぐに ドアが ひらいた。 / ・・・・・・おや? / さっきと おなじ ばしょじゃないか![END]
Text0CMessage71:
    INCBIN "../../res/text/JP/banks/0c.bin", $1075, $3e
; なんだ!? / このへやは・・・?[PAGE] / ぶきみな くうきが ただよっている。いったい なにをする へやなのか?[END]
Text0CMessage72:
    INCBIN "../../res/text/JP/banks/0c.bin", $10b3, $34
; でんきイスのようにみえるが コードはついていない。[PAGE] / あたまと うでの ささえが あって / ちょうど はいしゃの イスのようだ。[PAGE] / なにをするための ものなのか・・・。わからない![END]
Text0CMessage73:
    INCBIN "../../res/text/JP/banks/0c.bin", $10e7, $58
; ゴミばこだ。[END]
Text0CMessage74:
    INCBIN "../../res/text/JP/banks/0c.bin", $113f, $7
; カラの クスリビンだ。 / ラべルに ぺンタソーダと / かいてある。[PAGE] / カラということは すでに なにかに / つかわれたのか・・・?[END]
Text0CMessage75:
    INCBIN "../../res/text/JP/banks/0c.bin", $1146, $3e
; ラべルに メドレジンと かいてある。なかに クスリが はいっている。[PAGE] / いったい どんなこうかのある / クスリなのだろうか?[END]
Text0CMessage76:
    INCBIN "../../res/text/JP/banks/0c.bin", $1184, $3d
; ダイサノールと かいてある カラの / クスリビンだ。[PAGE] / ・・・ダイサノール? / ききおぼえが あるようだが・・・。 / ・・・おもいだせない。[END]
Text0CMessage77:
    INCBIN "../../res/text/JP/banks/0c.bin", $11c1, $43
; ちゅうしゃきの なかに わずかに / すいてきが のこっている。 / なにかに つかった あとだろう。[PAGE] / ・・・もしかして! / おれの あたまに イヤな よかんが / はしった。[PAGE] / この ...
Text0CMessage78:
    INCBIN "../../res/text/JP/banks/0c.bin", $1204, $7b
; エレべータの ボタンだ。 / なんの しるしも ない。[END]
Text0CMessage79:
    INCBIN "../../res/text/JP/banks/0c.bin", $127f, $1a
; あっ・・・! / ちゅうしゃきが すててあるぞ。 / これは いったい・・・?[END]
Text0CMessage7A:
    INCBIN "../../res/text/JP/banks/0c.bin", $1299, $24
; ちゅうしゃきを とった。 / なにかの やくに たつかもしれない。そう おもったからだ・・・。[END]
Text0CMessage7B:
    INCBIN "../../res/text/JP/banks/0c.bin", $12bd, $2e
; ぶきみな へやの なかだ。[END]
Text0CMessage7C:
    INCBIN "../../res/text/JP/banks/0c.bin", $12eb, $e
; ・・・なにも おこらない。[END]
Text0CMessage7D:
    INCBIN "../../res/text/JP/banks/0c.bin", $12f9, $e
; ちゅうしゃきには すでに クスリが / はいっている。[END]
Text0CMessage7E:
    INCBIN "../../res/text/JP/banks/0c.bin", $1307, $1a
; メドレジンを じぶんの うでに / ちゅうしゃした。[PAGE] / ・・・・・・うっ! / くっ くるしい・・・![PAGE] / からだじゅうが けいれんを おこし / おれは そのばに たおれてしまった。[PAG...
Text0CMessage7F:
    INCBIN "../../res/text/JP/banks/0c.bin", $1321, $db8
Call_00c_60d9:
    INCBIN "../../res/text/JP/banks/0c.bin", $20d9, $1f0c
Call_00c_7fe5:
    INCBIN "../../res/text/JP/banks/0c.bin", $3fe5, $1
Call_00c_7fe6:
    INCBIN "../../res/text/JP/banks/0c.bin", $3fe6, $1a
