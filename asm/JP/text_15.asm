; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text15Msgs0:
    db LOW(Text15Message00), HIGH(Text15Message00)
    db LOW(Text15Message01), HIGH(Text15Message01)
    db LOW(Text15Message02), HIGH(Text15Message02)
    db LOW(Text15Message03), HIGH(Text15Message03)
    db LOW(Text15Message04), HIGH(Text15Message04)
    db LOW(Text15Message05), HIGH(Text15Message05)
    db LOW(Text15Message06), HIGH(Text15Message06)
    db LOW(Text15Message07), HIGH(Text15Message07)
    db LOW(Text15Message08), HIGH(Text15Message08)
    db LOW(Text15Message09), HIGH(Text15Message09)
    db LOW(Text15Message0A), HIGH(Text15Message0A)
    db LOW(Text15Message0B), HIGH(Text15Message0B)
    db LOW(Text15Message0C), HIGH(Text15Message0C)
    db LOW(Text15Message0D), HIGH(Text15Message0D)
    db LOW(Text15Message0E), HIGH(Text15Message0E)
    db LOW(Text15Message0F), HIGH(Text15Message0F)
    db LOW(Text15Message10), HIGH(Text15Message10)
    db LOW(Text15Message11), HIGH(Text15Message11)
    db LOW(Text15Message12), HIGH(Text15Message12)
    db LOW(Text15Message13), HIGH(Text15Message13)
    db LOW(Text15Message14), HIGH(Text15Message14)
    db LOW(Text15Message15), HIGH(Text15Message15)
    db LOW(Text15Message16), HIGH(Text15Message16)
    db LOW(Text15Message17), HIGH(Text15Message17)
    db LOW(Text15Message18), HIGH(Text15Message18)
    db LOW(Text15Message19), HIGH(Text15Message19)
    db LOW(Text15Message1A), HIGH(Text15Message1A)
    db LOW(Text15Message1B), HIGH(Text15Message1B)
    db LOW(Text15Message1C), HIGH(Text15Message1C)
    db LOW(Text15Message1D), HIGH(Text15Message1D)
    db LOW(Text15Message1E), HIGH(Text15Message1E)
    db LOW(Text15Message1F), HIGH(Text15Message1F)
    db LOW(Text15Message20), HIGH(Text15Message20)
    db LOW(Text15Message21), HIGH(Text15Message21)
    db LOW(Text15Message22), HIGH(Text15Message22)
    db LOW(Text15Message23), HIGH(Text15Message23)
    db LOW(Text15Message24), HIGH(Text15Message24)
    db LOW(Text15Message25), HIGH(Text15Message25)
    db LOW(Text15Message26), HIGH(Text15Message26)
    db LOW(Text15Message27), HIGH(Text15Message27)
    db LOW(Text15Message28), HIGH(Text15Message28)
    db LOW(Text15Message29), HIGH(Text15Message29)
    db LOW(Text15Message2A), HIGH(Text15Message2A)
jr_015_4056:
    db LOW(Text15Message2B), HIGH(Text15Message2B)
    db LOW(Text15Message2C), HIGH(Text15Message2C)
    db LOW(Text15Message2D), HIGH(Text15Message2D)
    db LOW(Text15Message2E), HIGH(Text15Message2E)
    db LOW(Text15Message2F), HIGH(Text15Message2F)
    db LOW(Text15Message30), HIGH(Text15Message30)
    db LOW(Text15Message31), HIGH(Text15Message31)
    db LOW(Text15Message32), HIGH(Text15Message32)
    db LOW(Text15Message33), HIGH(Text15Message33)
    db LOW(Text15Message34), HIGH(Text15Message34)
    db LOW(Text15Message35), HIGH(Text15Message35)
    db LOW(Text15Message36), HIGH(Text15Message36)
    db LOW(Text15Message37), HIGH(Text15Message37)
    db LOW(Text15Message38), HIGH(Text15Message38)
    db LOW(Text15Message39), HIGH(Text15Message39)
    db LOW(Text15Message3A), HIGH(Text15Message3A)
    db LOW(Text15Message3B), HIGH(Text15Message3B)
    db LOW(Text15Message3C), HIGH(Text15Message3C)
    db LOW(Text15Message3D), HIGH(Text15Message3D)
    db LOW(Text15Message3E), HIGH(Text15Message3E)
    db LOW(Text15Message3F), HIGH(Text15Message3F)
; Sixty-four message pointers for one text group.
Text15Msgs1:
    db LOW(Text15Message40), HIGH(Text15Message40)
    db LOW(Text15Message41), HIGH(Text15Message41)
    db LOW(Text15Message42), HIGH(Text15Message42)
    db LOW(Text15Message43), HIGH(Text15Message43)
    db LOW(Text15Message44), HIGH(Text15Message44)
    db LOW(Text15Message45), HIGH(Text15Message45)
    db LOW(Text15Message46), HIGH(Text15Message46)
    db LOW(Text15Message47), HIGH(Text15Message47)
    db LOW(Text15Message48), HIGH(Text15Message48)
    db LOW(Text15Message49), HIGH(Text15Message49)
    db LOW(Text15Message4A), HIGH(Text15Message4A)
    db LOW(Text15Message4B), HIGH(Text15Message4B)
    db LOW(Text15Message4C), HIGH(Text15Message4C)
    db LOW(Text15Message4D), HIGH(Text15Message4D)
    db LOW(Text15Message4E), HIGH(Text15Message4E)
    db LOW(Text15Message4F), HIGH(Text15Message4F)
jr_015_40a0:
    db LOW(Text15Message50), HIGH(Text15Message50)
    db LOW(Text15Message51), HIGH(Text15Message51)
    db LOW(Text15Message52), HIGH(Text15Message52)
    db LOW(Text15Message53), HIGH(Text15Message53)
    db LOW(Text15Message54), HIGH(Text15Message54)
    db LOW(Text15Message55), HIGH(Text15Message55)
    db LOW(Text15Message56), HIGH(Text15Message56)
    db LOW(Text15Message57), HIGH(Text15Message57)
    db LOW(Text15Message58), HIGH(Text15Message58)
    db LOW(Text15Message59), HIGH(Text15Message59)
    db LOW(Text15Message5A), HIGH(Text15Message5A)
    db LOW(Text15Message5B), HIGH(Text15Message5B)
    db LOW(Text15Message5C), HIGH(Text15Message5C)
    db LOW(Text15Message5D), HIGH(Text15Message5D)
    db LOW(Text15Message5E), HIGH(Text15Message5E)
    db LOW(Text15Message5F), HIGH(Text15Message5F)
    db LOW(Text15Message60), HIGH(Text15Message60)
    db LOW(Text15Message61), HIGH(Text15Message61)
    db LOW(Text15Message62), HIGH(Text15Message62)
    db LOW(Text15Message63), HIGH(Text15Message63)
    db LOW(Text15Message64), HIGH(Text15Message64)
    db LOW(Text15Message65), HIGH(Text15Message65)
    db LOW(Text15Message66), HIGH(Text15Message66)
    db LOW(Text15Message67), HIGH(Text15Message67)
    db LOW(Text15Message68), HIGH(Text15Message68)
    db LOW(Text15Message69), HIGH(Text15Message69)
    db LOW(Text15Message6A), HIGH(Text15Message6A)
    db LOW(Text15Message6B), HIGH(Text15Message6B)
    db LOW(Text15Message6C), HIGH(Text15Message6C)
    db LOW(Text15Message6D), HIGH(Text15Message6D)
    db LOW(Text15Message6E), HIGH(Text15Message6E)
    db LOW(Text15Message6F), HIGH(Text15Message6F)
    db LOW(Text15Message70), HIGH(Text15Message70)
    db LOW(Text15Message71), HIGH(Text15Message71)
    db LOW(Text15Message72), HIGH(Text15Message72)
    db LOW(Text15Message73), HIGH(Text15Message73)
    db LOW(Text15Message74), HIGH(Text15Message74)
    db LOW(Text15Message75), HIGH(Text15Message75)
    db LOW(Text15Message76), HIGH(Text15Message76)
    db LOW(Text15Message77), HIGH(Text15Message77)
    db LOW(Text15Message78), HIGH(Text15Message78)
    db LOW(Text15Message79), HIGH(Text15Message79)
    db LOW(Text15Message7A), HIGH(Text15Message7A)
    db LOW(Text15Message7B), HIGH(Text15Message7B)
    db LOW(Text15Message7C), HIGH(Text15Message7C)
    db LOW(Text15Message7D), HIGH(Text15Message7D)
    db LOW(Text15Message7E), HIGH(Text15Message7E)
    db LOW(Text15Message7F)
jr_015_40ff:
    db HIGH(Text15Message7F)
; ボタンを おした。[END]
Text15Message00:
    INCBIN "../../res/text/JP/banks/15.bin", $100, $a
; とっさに にげだしたが すぐに / つかまってしまった・・・。[PAGE] / わるふざけして どくしょの じゃまをするべきでは なかったな。[END]
Text15Message01:
    INCBIN "../../res/text/JP/banks/15.bin", $10a, $3e
; だれかが・・・いる![PAGE] / おれは そう かんじて カーテンを / パッと あけた。[PAGE] / だが だれも いない・・・。 / おれは つかれているのか?[END]
Text15Message02:
    INCBIN "../../res/text/JP/banks/15.bin", $148, $43
; かいちゅうでんとうの でんちを / いれかえた。[END]
Text15Message03:
    INCBIN "../../res/text/JP/banks/15.bin", $18b, $17
; でんちは すでに はいっている。[END]
Text15Message04:
    INCBIN "../../res/text/JP/banks/15.bin", $1a2, $11
; かいちゅうでんとうの スイッチを / いれた。[END]
Text15Message05:
    INCBIN "../../res/text/JP/banks/15.bin", $1b3, $16
; かいちゅうでんとうの あかりが / めだって うすくなってきた。[END]
Text15Message06:
    INCBIN "../../res/text/JP/banks/15.bin", $1c9, $1f
; 「けいさつ」と おおきな もじで / かいてある かんばんだ。[END]
Text15Message07:
    INCBIN "../../res/text/JP/banks/15.bin", $1e8, $1e
; とつぜん かいちゅうでんとうの / あかりが きえた。[END]
Text15Message08:
    INCBIN "../../res/text/JP/banks/15.bin", $206, $19
jr_015_421f:
    INCBIN "../../res/text/JP/banks/15.bin", $21f, $1
; かいちゅうでんとうの スイッチを / きった。[END]
Text15Message09:
    INCBIN "../../res/text/JP/banks/15.bin", $220, $16
; すぐに けいかんが やってきた。 / はやく にげなければ・・・![END]
Text15Message0A:
    INCBIN "../../res/text/JP/banks/15.bin", $236, $20
; かいちゅうでんとうの スイッチを / いれた。[PAGE] / だが あかるくならない。 / でんちが きれているようだ・・・。[END]
Text15Message0B:
    INCBIN "../../res/text/JP/banks/15.bin", $256, $35
; この てがみにある かねの うごきをきろくした ちょうぼが どこかに / あるはずだが・・・。[PAGE] / それを しらべてみれば もしかして / 112000ドルの ありかが / わかるかも しれないな・・・。[...
Text15Message0C:
    INCBIN "../../res/text/JP/banks/15.bin", $28b, $5f
; はを しまったままでは やくに / たたない。[END]
Text15Message0D:
    INCBIN "../../res/text/JP/banks/15.bin", $2ea, $16
; ピストルに たまを こめた。[END]
Text15Message0E:
    INCBIN "../../res/text/JP/banks/15.bin", $300, $f
; これいじょう たまは はいらない。[END]
Text15Message0F:
    INCBIN "../../res/text/JP/banks/15.bin", $30f, $12
; ねらいを さだめて・・・。 / トリガーを ひいた。[PAGE] / カチッ![PAGE] / ・・・・・・・・・あれっ? / たまが はいっていない![END]
Text15Message10:
    INCBIN "../../res/text/JP/banks/15.bin", $321, $39
; ロシアンルーレットは おもしろいな。じつに スリルがある・・・。[END]
Text15Message11:
    INCBIN "../../res/text/JP/banks/15.bin", $35a, $21
; たまは おれの あたまを / かんつうした。[PAGE] / あぶないので よいこは ぜったい / まねを しないように・・・![END]
Text15Message12:
    INCBIN "../../res/text/JP/banks/15.bin", $37b, $35
; これいじょう もてない。[END]
Text15Message13:
    INCBIN "../../res/text/JP/banks/15.bin", $3b0, $d
; とつぜん ふたりの おとこが おれのめの まえに たちはだかった・・・![END]
Text15Message14:
    INCBIN "../../res/text/JP/banks/15.bin", $3bd, $25
; コートを きた。 / この コートも いいな。[END]
Text15Message15:
    INCBIN "../../res/text/JP/banks/15.bin", $3e2, $16
; ジョーズ・バーの まえの とおりだ。シーゲルが ころされてから / まだ ひもあさい・・・。[END]
Text15Message16:
    INCBIN "../../res/text/JP/banks/15.bin", $3f8, $2d
; ジョーズ・バーの まえの とおりだ。[END]
Text15Message17:
    INCBIN "../../res/text/JP/banks/15.bin", $425, $13
; マドには いたが うちつけてある。[END]
Text15Message18:
    INCBIN "../../res/text/JP/banks/15.bin", $438, $12
; がいとうだ。 / さいきん たてられたのかな?[PAGE] / このまえまでは なかったような / きが する。[END]
Text15Message19:
    INCBIN "../../res/text/JP/banks/15.bin", $44a, $2d
; マンホールだ。[END]
Text15Message1A:
    INCBIN "../../res/text/JP/banks/15.bin", $477, $8
; こうじちゅうで さきに すすめそうもないな。[END]
Text15Message1B:
    INCBIN "../../res/text/JP/banks/15.bin", $47f, $17
; ジョーズ・バーの ろじだ。[END]
Text15Message1C:
    INCBIN "../../res/text/JP/banks/15.bin", $496, $e
; しかし あいているものが おおすぎてあけられない。[END]
Text15Message1D:
    INCBIN "../../res/text/JP/banks/15.bin", $4a4, $1a
; とっていないものは つかえない。[END]
Text15Message1E:
    INCBIN "../../res/text/JP/banks/15.bin", $4be, $11
; ふたが しまっているので なかに / はいることは できない。[END]
Text15Message1F:
    INCBIN "../../res/text/JP/banks/15.bin", $4cf, $1e
; こうじちゅうなので すすめない。[PAGE] / こどもたちが じこを おこさない / ように かこいが してある。[END]
Text15Message20:
    INCBIN "../../res/text/JP/banks/15.bin", $4ed, $31
; ・・・あかない。[PAGE] / ワニが でる ということで / ほけんいいんかいが げすいどうへの / いりぐちを ふうじているのだ。[END]
Text15Message21:
    INCBIN "../../res/text/JP/banks/15.bin", $51e, $39
; とおりに つづいている うすぐらい / ろじだ。[END]
Text15Message22:
    INCBIN "../../res/text/JP/banks/15.bin", $557, $7
jr_015_455e:
    INCBIN "../../res/text/JP/banks/15.bin", $55e, $10
; マンホールの ふただ。 / このしたは げすいどうだろう。[END]
Text15Message23:
    INCBIN "../../res/text/JP/banks/15.bin", $56e, $1c
; おれが のぼっても / だいじょうぶかな・・・?[END]
Text15Message24:
    INCBIN "../../res/text/JP/banks/15.bin", $58a, $17
; ガタガタしている かいだんだ。[END]
Text15Message25:
    INCBIN "../../res/text/JP/banks/15.bin", $5a1, $10
; ろじが つづいている。[END]
Text15Message26:
    INCBIN "../../res/text/JP/banks/15.bin", $5b1, $c
; どこに すてようか?[END]
Text15Message27:
    INCBIN "../../res/text/JP/banks/15.bin", $5bd, $b
; どこへ いこうか?[END]
Text15Message28:
    INCBIN "../../res/text/JP/banks/15.bin", $5c8, $a
; ガタガタの ひじょうかいだんの / うえにきた。[END]
Text15Message29:
    INCBIN "../../res/text/JP/banks/15.bin", $5d2, $17
; なんまいかの いたが クギで / うちつけられている。[PAGE] / ラッキー! / 1まい ゆるんでいるぞ。[END]
Text15Message2A:
    INCBIN "../../res/text/JP/banks/15.bin", $5e9, $2d
; ゆるんでいた いたを とりはずすと / ちいさな スぺースが できた。[END]
Text15Message2B:
    INCBIN "../../res/text/JP/banks/15.bin", $616, $22
; いたには クギが たくさん / つきささっている。[END]
Text15Message2C:
    INCBIN "../../res/text/JP/banks/15.bin", $638, $18
; マドの むこうが ジョーズ・バーの / 2かいだ。[END]
Text15Message2D:
    INCBIN "../../res/text/JP/banks/15.bin", $650, $18
; 「・・・やっと みつけたぜ![PAGE] /  おまえに にげられた おかげで /  べンティーニあにきに こっぴどく /  おこられたんだ! /  なあ ムース・・・。」[PAGE] / 「ああ! /  しかも おま...
Text15Message2E:
    INCBIN "../../res/text/JP/banks/15.bin", $668, $9e
; いたを 1まい はずすことができた。[END]
Text15Message2F:
    INCBIN "../../res/text/JP/banks/15.bin", $706, $13
; いたが じゃまをして すすめない。[END]
Text15Message30:
    INCBIN "../../res/text/JP/banks/15.bin", $719, $12
; かいだんは さびていて のぼれない。あきらめたほうが よさそうだ。[END]
Text15Message31:
    INCBIN "../../res/text/JP/banks/15.bin", $72b, $22
; いたは ひきぬかなければ とれない。[END]
Text15Message32:
    INCBIN "../../res/text/JP/banks/15.bin", $74d, $13
; ゆるんでいる いたを / はらいおとした。[END]
Text15Message33:
    INCBIN "../../res/text/JP/banks/15.bin", $760, $14
; うおおおおおりゃー! / せいっ!!![PAGE] / にほんじんを まねて カラテを / やってみた。[PAGE] / いたいっ・・・![PAGE] / クギが てに つきささって / しまった・・・。[END]
Text15Message34:
    INCBIN "../../res/text/JP/banks/15.bin", $774, $49
; ゆるんでいる いたを おもいっきり / ひっこぬいた。[END]
Text15Message35:
    INCBIN "../../res/text/JP/banks/15.bin", $7bd, $1a
; うーん・・・![PAGE] / ちからを こめて いたを はずそうとしたが・・・はずれない。 / これいじょうは むりのようだ。[END]
Text15Message36:
    INCBIN "../../res/text/JP/banks/15.bin", $7d7, $37
; てこのげんりを りようして いたを / とりはずそうとした。[PAGE] / すこし ゆるんだが / この ちいさな ナイフでは しょせんむりらしい・・・。[END]
Text15Message37:
    INCBIN "../../res/text/JP/banks/15.bin", $80e, $43
; ジョー・シーゲルの オフィスだ。 / シーゲルの いたいを みつけたときとかわってないな・・・。[END]
Text15Message38:
    INCBIN "../../res/text/JP/banks/15.bin", $851, $2f
; ああ・・・。 / もう すこしで にげきることが / できたのに・・・。[PAGE] / こんなことなら あのへやに だれか / べつの ひとが はいったと / おもわせれば よかったな・・・。[END]
Text15Message39:
    INCBIN "../../res/text/JP/banks/15.bin", $880, $52
; クギで うちつけてあった いたを / いちまい はずしたので すきまが / できている。[END]
Text15Message3A:
    INCBIN "../../res/text/JP/banks/15.bin", $8d2, $29
; ひよけが あがっている。[END]
Text15Message3B:
    INCBIN "../../res/text/JP/banks/15.bin", $8fb, $d
; ひよけが しまっている。 / そとの けしきが みえない・・・。[END]
Text15Message3C:
    INCBIN "../../res/text/JP/banks/15.bin", $908, $1f
; つくえの うえに ちの あとが / のこっている・・・。[PAGE] / 3ぱつ うたれて シーゲルが / しんでいたのを おもいだした・・・。[PAGE] / シーゲルは ゆすりや・・・。 / おれは みじめな さす...
Text15Message3D:
    INCBIN "../../res/text/JP/banks/15.bin", $927, $aa
; ダイアルしきの かべきんこだ。[END]
Text15Message3E:
    INCBIN "../../res/text/JP/banks/15.bin", $9d1, $10
; このなかに おれが シーゲルに / しゃっきんを したときの / しゃくようしょが / はいっていたんだ・・・。[PAGE] / シーゲルごろしの むざいを / しょうめいするのに じゃまなものは / おれが しょぶん...
Text15Message3F:
    INCBIN "../../res/text/JP/banks/15.bin", $9e1, $63
; ・・・ん・・・?[PAGE] / したの ほうに ちいさい つまみが / あるぞ![PAGE] / なにか ありそうだな・・・。[END]
Text15Message40:
    INCBIN "../../res/text/JP/banks/15.bin", $a44, $2f
; こっとうひんの でんわきだ。[END]
Text15Message41:
    INCBIN "../../res/text/JP/banks/15.bin", $a73, $f
; ただの えんぴつだ。[END]
Text15Message42:
    INCBIN "../../res/text/JP/banks/15.bin", $a82, $b
; へんな かたちの カギだ。[END]
Text15Message43:
    INCBIN "../../res/text/JP/banks/15.bin", $a8d, $e
; とつぜん ストージーが あらわれて / いった。[END]
Text15Message44:
    INCBIN "../../res/text/JP/banks/15.bin", $a9b, $17
; たしか ドアの むこうがわが / ひしょの へやだった。[END]
Text15Message45:
    INCBIN "../../res/text/JP/banks/15.bin", $ab2, $1b
; しんが おれているので かけない。[END]
Text15Message46:
    INCBIN "../../res/text/JP/banks/15.bin", $acd, $12
; 「ボスの へやに しのびこんだのは /  おまえだろう・・・?[PAGE] /  けいさつに もっていかれては /  こまるようなものが つくえのなかに はいっていた・・・。[PAGE] /  ・・・ということは おま...
Text15Message47:
    INCBIN "../../res/text/JP/banks/15.bin", $adf, $b4
; ジョーズ・バーの まうしろだ。 / ここの ろじは きたないなあ。[END]
Text15Message48:
    INCBIN "../../res/text/JP/banks/15.bin", $b93, $20
; ゴミばこだ。 / くさった ものの においが プンプンしている。[END]
Text15Message49:
    INCBIN "../../res/text/JP/banks/15.bin", $bb3, $1f
; ああ・・・。 / よけいなものを いれなければ / よかったな・・・。[END]
Text15Message4A:
    INCBIN "../../res/text/JP/banks/15.bin", $bd2, $20
; ひっくりかえったような へやだ。 / でも なんだか おちつくな・・・。 / わがやが いちばんだ![PAGE] / とつぜん・・・ / やすものの タバコの においで / ストージーを おもいだした。[END]
Text15Message4B:
    INCBIN "../../res/text/JP/banks/15.bin", $bf2, $56
; いまいましい! / シーゲルは 112000ドルを / どこに やってしまったのだろう?[PAGE] / なんとしても てがかりを / みつけださなければ![PAGE] / シーゲルの けいえいしていた / ジョーズ・...
Text15Message4C:
    INCBIN "../../res/text/JP/banks/15.bin", $c48, $75
; かびくさい ダンボールばこだ。[END]
Text15Message4D:
    INCBIN "../../res/text/JP/banks/15.bin", $cbd, $10
; 「ボスの へやに しのびこんだのは /  おまえだろう・・・?[PAGE] /  べンティーニあにきが ボスを /  うらぎったように みせかけて /  ふたりを あらそわせようと /  したんだろうが・・・[PAGE...
Text15Message4E:
    INCBIN "../../res/text/JP/banks/15.bin", $ccd, $c8
; ちいさな だんボールばこだ。[END]
Text15Message4F:
    INCBIN "../../res/text/JP/banks/15.bin", $d95, $f
; ぺしゃんこに なった ジュースの / カンだ。[END]
Text15Message50:
    INCBIN "../../res/text/JP/banks/15.bin", $da4, $16
; とつぜん まちの あちこちから / マシンガンの おとが きこえてきた![PAGE] / しんらいする べンティーニの / うらぎりを ゆるせなかった マロンはぶかに かれを ころすように / めいれいした。[PAGE...
Text15Message51:
    INCBIN "../../res/text/JP/banks/15.bin", $dba, $c6
; みたことのある マークが / ついている。[PAGE] / そうだ! / これは メルセデス・べンツの / カギだ。[END]
Text15Message52:
    INCBIN "../../res/text/JP/banks/15.bin", $e80, $2d
; ラスべガスから おれを おってきた / ものは いないようだ・・・。 / けいかくは みごと せいこうした![END]
Text15Message53:
    INCBIN "../../res/text/JP/banks/15.bin", $ead, $33
; くろまめソースの かかった / ぺキンダックの たべのこしだ。 / はなを つく においがする・・・。[END]
Text15Message54:
    INCBIN "../../res/text/JP/banks/15.bin", $ee0, $30
; いっぽう ラスべガスでは・・・。[END]
Text15Message55:
    INCBIN "../../res/text/JP/banks/15.bin", $f10, $11
; かなり やすそうな カギが / かかっている。[END]
Text15Message56:
    INCBIN "../../res/text/JP/banks/15.bin", $f21, $16
; どうにかすれば こわれそうだな。[END]
Text15Message57:
    INCBIN "../../res/text/JP/banks/15.bin", $f37, $11
; アンソニー・マロンは ホテルの / じぶんの つくえに みおぼえのない / ものが はいっているのに / きが ついた・・・。[PAGE] / マロンは 「シーゲルのにっきちょう」「マクマーフィーのてがみ」 そして /...
Text15Message58:
    INCBIN "../../res/text/JP/banks/15.bin", $f48, $60
jr_015_4fa8:
    INCBIN "../../res/text/JP/banks/15.bin", $fa8, $87
; ・・・・・・うーん![PAGE] / くろまめソースが きいている! / おふくろの あじに にているな。[END]
Text15Message59:
    INCBIN "../../res/text/JP/banks/15.bin", $102f, $2c
; ナイフで ドアの カギを / こわそうとした。[PAGE] / ・・・カチャ カチャ カチャ。[END]
Text15Message5A:
    INCBIN "../../res/text/JP/banks/15.bin", $105b, $26
; よおおおしっ!! / カギを こわせたぞ![PAGE] / ナイフで こんなことが できるなんてちょっとしたものだな。[END]
Text15Message5B:
    INCBIN "../../res/text/JP/banks/15.bin", $1081, $32
; ドアの カギに ねらいを さだめて / トリガーを ひいた。[END]
Text15Message5C:
    INCBIN "../../res/text/JP/banks/15.bin", $10b3, $1d
; わーお! / みごと カギに めいちゅう! / カギが ふっとんだ。[PAGE] / ハッ ハッ! / おれの うでも たいしたもんだ。[END]
Text15Message5D:
    INCBIN "../../res/text/JP/banks/15.bin", $10d0, $37
; せまい ろうかだ。 / うすぐらくて ぶきみだな・・・。[END]
Text15Message5E:
    INCBIN "../../res/text/JP/banks/15.bin", $1107, $5
jr_015_510c:
    INCBIN "../../res/text/JP/banks/15.bin", $110c, $16
; おれが しんぶんを よもうとすると / ろうじんは いった。[PAGE] / 「ちゃんと てに とってから /  よんでください。」[END]
Text15Message5F:
    INCBIN "../../res/text/JP/banks/15.bin", $1122, $37
; せまい ろうかだ。 / へんな においが する・・・。[END]
Text15Message60:
    INCBIN "../../res/text/JP/banks/15.bin", $1159, $1a
; いたが しっかりと / うちつけられている。[END]
Text15Message61:
    INCBIN "../../res/text/JP/banks/15.bin", $1173, $15
; くものすが はるには もうしぶんないかんきょうだ。[END]
Text15Message62:
    INCBIN "../../res/text/JP/banks/15.bin", $1188, $1a
; ほこりを かぶった くものすだ。[END]
Text15Message63:
    INCBIN "../../res/text/JP/banks/15.bin", $11a2, $11
; じょせいようの トイレの ドアだ。[END]
Text15Message64:
    INCBIN "../../res/text/JP/banks/15.bin", $11b3, $d
jr_015_51c0:
    INCBIN "../../res/text/JP/banks/15.bin", $11c0, $5
; だんせいようの トイレの ドアだ。[END]
Text15Message65:
    INCBIN "../../res/text/JP/banks/15.bin", $11c5, $12
; 「バー」と かいてある。 / のどが かわいたな・・・。[END]
Text15Message66:
    INCBIN "../../res/text/JP/banks/15.bin", $11d7, $1b
; かたや べンティーニも ひみつの / オフィスで シガーリングを みつけ / じぶんの けいかくが マロンに / しられたと おもった![PAGE] / 「けされるまえに けせ!」 / それが うらの せかいの / お...
Text15Message67:
    INCBIN "../../res/text/JP/banks/15.bin", $11f2, $90
; ふたりの たたかいは やがて / ラスべガスのまち ぜんたいを / まきこんだ・・・。[END]
Text15Message68:
    INCBIN "../../res/text/JP/banks/15.bin", $1282, $28
; なにも みえないので てさぐりで / あるいた・・・。[PAGE] / おーっとっとっとっ・・・。 / うかつにも あしを すべらせた![END]
Text15Message69:
    INCBIN "../../res/text/JP/banks/15.bin", $12aa, $7
jr_015_52b1:
    INCBIN "../../res/text/JP/banks/15.bin", $12b1, $27
jr_015_52d8:
    INCBIN "../../res/text/JP/banks/15.bin", $12d8, $b
; いたを とりはずすための / どうぐと ちからと じかんが ない![END]
Text15Message6A:
    INCBIN "../../res/text/JP/banks/15.bin", $12e3, $20
; 「ラスべガスで マフィアどうしの /  ないぶこうそう はっせい![PAGE] /  しゅぼうしゃとみられる ボス /  ふたりは したいで はっけん!」[PAGE] / ラスべガスで おこった じけんは / よくじつ...
Text15Message6B:
    INCBIN "../../res/text/JP/banks/15.bin", $1303, $18e
; くらい バーの なかだ。[END]
Text15Message6C:
    INCBIN "../../res/text/JP/banks/15.bin", $1491, $d
; 2かいへ つうじる かいだんだ。[END]
Text15Message6D:
    INCBIN "../../res/text/JP/banks/15.bin", $149e, $11
; ほこりを かぶった カウンターだ。 / れきしが かんじられる・・・。[END]
Text15Message6E:
    INCBIN "../../res/text/JP/banks/15.bin", $14af, $22
; ネバネバした くものすだ。[END]
Text15Message6F:
    INCBIN "../../res/text/JP/banks/15.bin", $14d1, $e
; ああ・・・。 / ざんねんながら しょうこひんが / たりなかったようだ・・・。[END]
Text15Message70:
    INCBIN "../../res/text/JP/banks/15.bin", $14df, $25
; 「ワインセラー」と かいてある / ドアだ。[END]
Text15Message71:
    INCBIN "../../res/text/JP/banks/15.bin", $1504, $15
; すでに いっぱいで これいじょうは / はいらない。[END]
Text15Message72:
    INCBIN "../../res/text/JP/banks/15.bin", $1519, $19
; ・・・やめたほうが よさそうだ。[END]
Text15Message73:
    INCBIN "../../res/text/JP/banks/15.bin", $1532, $11
; うすぎたない ワインセラーだ。 / くうきが にごっている。[END]
Text15Message74:
    INCBIN "../../res/text/JP/banks/15.bin", $1543, $1d
; たるの せんだ。 / ここから ワインが でるように / なっているんだな。[END]
Text15Message75:
    INCBIN "../../res/text/JP/banks/15.bin", $1560, $23
; ワインの たるだ。[END]
Text15Message76:
    INCBIN "../../res/text/JP/banks/15.bin", $1583, $a
; ワインの たなか・・・。 / ほこりを かぶった ワインで / いっぱいだ。[END]
Text15Message77:
    INCBIN "../../res/text/JP/banks/15.bin", $158d, $23
; あれっ? / みぎはしの ちゅうおうの だんにあるビンは ほこりを かぶっていないぞ![END]
Text15Message78:
    INCBIN "../../res/text/JP/banks/15.bin", $15b0, $2a
; うしろに かいだんが ある。[END]
Text15Message79:
    INCBIN "../../res/text/JP/banks/15.bin", $15da, $f
; ひみつの つうろが あらわれた。[END]
Text15Message7A:
    INCBIN "../../res/text/JP/banks/15.bin", $15e9, $11
; ・・・なにか ありそうだな・・・?[END]
Text15Message7B:
    INCBIN "../../res/text/JP/banks/15.bin", $15fa, $12
; きれいな ワインの ビンだ。 / ひとつだけ ほこりが ついていない。[END]
Text15Message7C:
    INCBIN "../../res/text/JP/banks/15.bin", $160c, $22
; じゃぐちを ひねった。 / でも ワインは でてこない・・・。 / ちえっ![END]
Text15Message7D:
    INCBIN "../../res/text/JP/banks/15.bin", $162e, $23
; じゃぐちは ひねってある。 / でも ワインは でてこない・・・。[END]
Text15Message7E:
    INCBIN "../../res/text/JP/banks/15.bin", $1651, $20
; ギーッという おとと ともに / ビンだなが スライドして つうろが / あらわれた![END]
Text15Message7F:
    INCBIN "../../res/text/JP/banks/15.bin", $1671, $28f2
Call_015_7f63:
    INCBIN "../../res/text/JP/banks/15.bin", $3f63, $4c
Jump_015_7faf:
    INCBIN "../../res/text/JP/banks/15.bin", $3faf, $1
Call_015_7fb0:
    INCBIN "../../res/text/JP/banks/15.bin", $3fb0, $43
Call_015_7ff3:
    INCBIN "../../res/text/JP/banks/15.bin", $3ff3, $d
