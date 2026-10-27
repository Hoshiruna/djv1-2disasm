; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text12Msgs0:
    db LOW(Text12Message00), HIGH(Text12Message00)
    db LOW(Text12Message01), HIGH(Text12Message01)
    db LOW(Text12Message02), HIGH(Text12Message02)
    db LOW(Text12Message03), HIGH(Text12Message03)
    db LOW(Text12Message04), HIGH(Text12Message04)
    db LOW(Text12Message05), HIGH(Text12Message05)
    db LOW(Text12Message06), HIGH(Text12Message06)
    db LOW(Text12Message07), HIGH(Text12Message07)
    db LOW(Text12Message08), HIGH(Text12Message08)
    db LOW(Text12Message09), HIGH(Text12Message09)
    db LOW(Text12Message0A), HIGH(Text12Message0A)
    db LOW(Text12Message0B), HIGH(Text12Message0B)
    db LOW(Text12Message0C), HIGH(Text12Message0C)
    db LOW(Text12Message0D), HIGH(Text12Message0D)
    db LOW(Text12Message0E), HIGH(Text12Message0E)
    db LOW(Text12Message0F), HIGH(Text12Message0F)
    db LOW(Text12Message10), HIGH(Text12Message10)
    db LOW(Text12Message11), HIGH(Text12Message11)
    db LOW(Text12Message12), HIGH(Text12Message12)
    db LOW(Text12Message13), HIGH(Text12Message13)
    db LOW(Text12Message14), HIGH(Text12Message14)
    db LOW(Text12Message15), HIGH(Text12Message15)
    db LOW(Text12Message16), HIGH(Text12Message16)
    db LOW(Text12Message17), HIGH(Text12Message17)
    db LOW(Text12Message18), HIGH(Text12Message18)
    db LOW(Text12Message19), HIGH(Text12Message19)
    db LOW(Text12Message1A), HIGH(Text12Message1A)
    db LOW(Text12Message1B), HIGH(Text12Message1B)
    db LOW(Text12Message1C), HIGH(Text12Message1C)
    db LOW(Text12Message1D), HIGH(Text12Message1D)
    db LOW(Text12Message1E), HIGH(Text12Message1E)
    db LOW(Text12Message1F), HIGH(Text12Message1F)
    db LOW(Text12Message20), HIGH(Text12Message20)
    db LOW(Text12Message21), HIGH(Text12Message21)
    db LOW(Text12Message22), HIGH(Text12Message22)
    db LOW(Text12Message23), HIGH(Text12Message23)
jr_012_4048:
    db LOW(Text12Message24), HIGH(Text12Message24)
    db LOW(Text12Message25), HIGH(Text12Message25)
    db LOW(Text12Message26), HIGH(Text12Message26)
    db LOW(Text12Message27), HIGH(Text12Message27)
    db LOW(Text12Message28), HIGH(Text12Message28)
    db LOW(Text12Message29), HIGH(Text12Message29)
    db LOW(Text12Message2A), HIGH(Text12Message2A)
    db LOW(Text12Message2B), HIGH(Text12Message2B)
    db LOW(Text12Message2C), HIGH(Text12Message2C)
    db LOW(Text12Message2D), HIGH(Text12Message2D)
    db LOW(Text12Message2E), HIGH(Text12Message2E)
    db LOW(Text12Message2F), HIGH(Text12Message2F)
    db LOW(Text12Message30), HIGH(Text12Message30)
    db LOW(Text12Message31), HIGH(Text12Message31)
    db LOW(Text12Message32), HIGH(Text12Message32)
    db LOW(Text12Message33), HIGH(Text12Message33)
    db LOW(Text12Message34), HIGH(Text12Message34)
    db LOW(Text12Message35), HIGH(Text12Message35)
    db LOW(Text12Message36), HIGH(Text12Message36)
    db LOW(Text12Message37), HIGH(Text12Message37)
    db LOW(Text12Message38), HIGH(Text12Message38)
    db LOW(Text12Message39), HIGH(Text12Message39)
    db LOW(Text12Message3A), HIGH(Text12Message3A)
    db LOW(Text12Message3B), HIGH(Text12Message3B)
    db LOW(Text12Message3C), HIGH(Text12Message3C)
    db LOW(Text12Message3D), HIGH(Text12Message3D)
    db LOW(Text12Message3E), HIGH(Text12Message3E)
    db LOW(Text12Message3F), HIGH(Text12Message3F)
; Sixty-four message pointers for one text group.
Text12Msgs1:
    db LOW(Text12Message40), HIGH(Text12Message40)
    db LOW(Text12Message41), HIGH(Text12Message41)
    db LOW(Text12Message42), HIGH(Text12Message42)
    db LOW(Text12Message43), HIGH(Text12Message43)
    db LOW(Text12Message44), HIGH(Text12Message44)
    db LOW(Text12Message45), HIGH(Text12Message45)
    db LOW(Text12Message46), HIGH(Text12Message46)
    db LOW(Text12Message47), HIGH(Text12Message47)
    db LOW(Text12Message48), HIGH(Text12Message48)
    db LOW(Text12Message49), HIGH(Text12Message49)
    db LOW(Text12Message4A), HIGH(Text12Message4A)
    db LOW(Text12Message4B), HIGH(Text12Message4B)
    db LOW(Text12Message4C), HIGH(Text12Message4C)
    db LOW(Text12Message4D), HIGH(Text12Message4D)
    db LOW(Text12Message4E), HIGH(Text12Message4E)
    db LOW(Text12Message4F), HIGH(Text12Message4F)
    db LOW(Text12Message50), HIGH(Text12Message50)
    db LOW(Text12Message51), HIGH(Text12Message51)
    db LOW(Text12Message52), HIGH(Text12Message52)
    db LOW(Text12Message53), HIGH(Text12Message53)
    db LOW(Text12Message54), HIGH(Text12Message54)
    db LOW(Text12Message55), HIGH(Text12Message55)
    db LOW(Text12Message56), HIGH(Text12Message56)
    db LOW(Text12Message57), HIGH(Text12Message57)
    db LOW(Text12Message58), HIGH(Text12Message58)
    db LOW(Text12Message59), HIGH(Text12Message59)
    db LOW(Text12Message5A), HIGH(Text12Message5A)
    db LOW(Text12Message5B), HIGH(Text12Message5B)
    db LOW(Text12Message5C), HIGH(Text12Message5C)
    db LOW(Text12Message5D), HIGH(Text12Message5D)
    db LOW(Text12Message5E), HIGH(Text12Message5E)
    db LOW(Text12Message5F), HIGH(Text12Message5F)
    db LOW(Text12Message60), HIGH(Text12Message60)
    db LOW(Text12Message61), HIGH(Text12Message61)
    db LOW(Text12Message62), HIGH(Text12Message62)
    db LOW(Text12Message63), HIGH(Text12Message63)
    db LOW(Text12Message64), HIGH(Text12Message64)
    db LOW(Text12Message65), HIGH(Text12Message65)
    db LOW(Text12Message66), HIGH(Text12Message66)
    db LOW(Text12Message67), HIGH(Text12Message67)
    db LOW(Text12Message68), HIGH(Text12Message68)
    db LOW(Text12Message69), HIGH(Text12Message69)
    db LOW(Text12Message6A), HIGH(Text12Message6A)
    db LOW(Text12Message6B), HIGH(Text12Message6B)
    db LOW(Text12Message6C), HIGH(Text12Message6C)
    db LOW(Text12Message6D), HIGH(Text12Message6D)
    db LOW(Text12Message6E), HIGH(Text12Message6E)
    db LOW(Text12Message6F), HIGH(Text12Message6F)
    db LOW(Text12Message70), HIGH(Text12Message70)
    db LOW(Text12Message71), HIGH(Text12Message71)
    db LOW(Text12Message72), HIGH(Text12Message72)
    db LOW(Text12Message73), HIGH(Text12Message73)
    db LOW(Text12Message74), HIGH(Text12Message74)
    db LOW(Text12Message75), HIGH(Text12Message75)
    db LOW(Text12Message76), HIGH(Text12Message76)
    db LOW(Text12Message77), HIGH(Text12Message77)
    db LOW(Text12Message78)
jr_012_40f1:
    db HIGH(Text12Message78)
    db LOW(Text12Message79), HIGH(Text12Message79)
jr_012_40f4:
    db LOW(Text12Message7A), HIGH(Text12Message7A)
    db LOW(Text12Message7B), HIGH(Text12Message7B)
    db LOW(Text12Message7C), HIGH(Text12Message7C)
    db LOW(Text12Message7D), HIGH(Text12Message7D)
    db LOW(Text12Message7E), HIGH(Text12Message7E)
    db LOW(Text12Message7F), HIGH(Text12Message7F)
; ふと めがさめた・・・。[PAGE] / うっ! / あたまの うしろが ズキズキする![PAGE] / おれは おそるおそる じぶんの / なまえを おもいだしてみた・・・。[PAGE] / ・・・エース・ハーディン...
Text12Message00:
    INCBIN "../../res/text/JP/banks/12.bin", $100, $80
; おれは シカゴの アパートに いた / はずなのに・・・。[PAGE] / ・・・そうか! / おもいだしたぞ!![PAGE] / そこで おそわれて ラスべガスの / ホテルに つれてこられたんだ![PAGE] / ...
Text12Message01:
    INCBIN "../../res/text/JP/banks/12.bin", $180, $b8
; 「きみの したしい ゆうじんであった ジョー・シーゲルは わたしの /  ぶかで シカゴを まかせていた。[PAGE] /  だが きみも しってのとおり /  やつは さきごろ ふうんにも /  ころされてしまった。...
Text12Message02:
    INCBIN "../../res/text/JP/banks/12.bin", $238, $16a
; ああ・・・そうか。 / おれは にげようとして あたまを / なぐられたんだったな・・・。[PAGE] / ・・・どうやら おれは またしても / たいへんなことに まきこまれて / しまったようだ。[PAGE] / ...
Text12Message03:
    INCBIN "../../res/text/JP/banks/12.bin", $3a2, $2
Jump_012_43a4:
    INCBIN "../../res/text/JP/banks/12.bin", $3a4, $13
jr_012_43b7:
    INCBIN "../../res/text/JP/banks/12.bin", $3b7, $62
; なさけないことに おれは いま / すっぱだかだ。[END]
Text12Message04:
    INCBIN "../../res/text/JP/banks/12.bin", $419, $18
; かはんしんは ズボンを はいている。[END]
Text12Message05:
    INCBIN "../../res/text/JP/banks/12.bin", $431, $13
; けいかんの せいふくを きている。[END]
Text12Message06:
    INCBIN "../../res/text/JP/banks/12.bin", $444, $12
; おとこは くびを よこにふって / いった。[PAGE] / 「ありがとう・・・。 /  でも ほどこしを うけるほど /  こまっていないよ!」[END]
Text12Message07:
    INCBIN "../../res/text/JP/banks/12.bin", $456, $3c
; うすぎたない バスルームの なかだ。[END]
Text12Message08:
    INCBIN "../../res/text/JP/banks/12.bin", $492, $13
; うすよごれた ちいさな よくそうだ。[END]
Text12Message09:
    INCBIN "../../res/text/JP/banks/12.bin", $4a5, $13
; ここは ラスべガスえきの / にもつあずかりしょだ。[PAGE] / おとこが カウンターの なかで / いねむりをしている。[END]
Text12Message0A:
    INCBIN "../../res/text/JP/banks/12.bin", $4b8, $34
; 「あずかりしょうと にもつを /  こうかんいたします。」と / かいてある。[END]
Text12Message0B:
    INCBIN "../../res/text/JP/banks/12.bin", $4ec, $24
; パンフレットを いれる はこだ。[END]
Text12Message0C:
    INCBIN "../../res/text/JP/banks/12.bin", $510, $11
; ・・・カガミには おれの かおが / うつっている。[PAGE] / ・・・やつれたな・・・。 / あの あくむのような じけんの / せいだろう・・・。[PAGE] / あのとき きおくそうしつだった / おれは バ...
Text12Message0D:
    INCBIN "../../res/text/JP/banks/12.bin", $521, $101
; やつれた おれの かおが われた / カガミに うつっている。[END]
Text12Message0E:
    INCBIN "../../res/text/JP/banks/12.bin", $622, $1e
; きんぞくせいの タオルかけだ。[END]
Text12Message0F:
    INCBIN "../../res/text/JP/banks/12.bin", $640, $10
; みずが ながれでている。[END]
Text12Message10:
    INCBIN "../../res/text/JP/banks/12.bin", $650, $d
; ものすごい おとを たてて ゆが / ながれでている。[PAGE] / シャワーを あびれば イヤなことも / わすれられるだろうか・・・。[END]
Text12Message11:
    INCBIN "../../res/text/JP/banks/12.bin", $65d, $3b
; ねっとうから ゆげが あがっている。[END]
Text12Message12:
    INCBIN "../../res/text/JP/banks/12.bin", $698, $12
jr_012_46aa:
    INCBIN "../../res/text/JP/banks/12.bin", $6aa, $1
; よごれと しわで ヨレヨレになった / トレンチコートだ。[END]
Text12Message13:
    INCBIN "../../res/text/JP/banks/12.bin", $6ab, $1c
; しわだらけの グレーの ズボンだ。 / ポケットが ついている。[END]
Text12Message14:
    INCBIN "../../res/text/JP/banks/12.bin", $6c7, $1f
; つかいふるされた かわせいの / さいふだ。[END]
Text12Message15:
    INCBIN "../../res/text/JP/banks/12.bin", $6e6, $15
; おとこは きもちよさそうに / ねむっている・・・。[PAGE] / にもつを あずけるひとが いなくて / ヒマなんだな・・・。[END]
Text12Message16:
    INCBIN "../../res/text/JP/banks/12.bin", $6fb, $36
; ありふれた スーツケースだ。 / きんの もじで 「T・B」と / イニシャルが はいっている。[END]
Text12Message17:
    INCBIN "../../res/text/JP/banks/12.bin", $731, $2d
; 「ラッキーダイスホテル & カジノ」と ししゅうが してある タオルだ。[END]
Text12Message18:
    INCBIN "../../res/text/JP/banks/12.bin", $75e, $25
; おれの アパートの カギだ。[END]
Text12Message19:
    INCBIN "../../res/text/JP/banks/12.bin", $783, $f
; いろあせた しんぶんの きりぬきだ。[PAGE] / おれが ボクサーだったころの / きじだ。[PAGE] / おれと スパーリングパートナーの / ルーディー・カワルスキが いっしょにしゃしんに うつっている。[P...
Text12Message1A:
    INCBIN "../../res/text/JP/banks/12.bin", $792, $64
; ごく さいきんの しんぶんの / きりぬきだ。 / みだしは・・・[PAGE] / 「エース・ハーディング むざい! /  しりつたんていが みずから /  むじつを しょうめいする!」[PAGE] / じけんの ぶた...
Text12Message1B:
    INCBIN "../../res/text/JP/banks/12.bin", $7f6, $28
jr_012_481e:
    INCBIN "../../res/text/JP/banks/12.bin", $81e, $64
; おれの うんてんめんきょしょうだ。[PAGE] / 「エース・ハーディング /  シカゴ イリノイしゅう /  ウエストアディソンどおり /  2034」[END]
Text12Message1C:
    INCBIN "../../res/text/JP/banks/12.bin", $882, $2b
jr_012_48ad:
    INCBIN "../../res/text/JP/banks/12.bin", $8ad, $15
; カラになった ラッキーストライクの / はこだ。[END]
Text12Message1D:
    INCBIN "../../res/text/JP/banks/12.bin", $8c2, $17
; うわーっ! / ずいぶん よごれものを / ためこんだなあ・・・。[END]
Text12Message1E:
    INCBIN "../../res/text/JP/banks/12.bin", $8d9, $1e
; あたまから みずを かぶった。[PAGE] / つめたーいっ! / でも スッキリしたな・・・。[END]
Text12Message1F:
    INCBIN "../../res/text/JP/banks/12.bin", $8f7, $27
; あたまから ゆを かぶった。[PAGE] / うーん・・・! / ちょうどいい おんどだ・・・。[PAGE] / ・・・そういえば さいごに かみを / あらったのは いつのことだっけ。[END]
Text12Message20:
    INCBIN "../../res/text/JP/banks/12.bin", $91e, $10
jr_012_492e:
    INCBIN "../../res/text/JP/banks/12.bin", $92e, $3a
; あたまから ねっとうを かぶった。[PAGE] / うわっちちちっ![END]
Text12Message21:
    INCBIN "../../res/text/JP/banks/12.bin", $968, $1b
; タオルを ひたした。[END]
Text12Message22:
    INCBIN "../../res/text/JP/banks/12.bin", $983, $b
; タオルで ひたいの あせを / ぬぐった。[END]
Text12Message23:
    INCBIN "../../res/text/JP/banks/12.bin", $98e, $14
; もしかしたら このなかに / 112000ドルが かくされて / いるかも しれないな・・・。[END]
Text12Message24:
    INCBIN "../../res/text/JP/banks/12.bin", $9a2, $2c
; どこにでも うっている しろい / ふうとうだ。 / あてなには こうかいてある・・・。[PAGE] / 「ラッキーダイスホテル /      アンソニー・マロンさま」[END]
Text12Message25:
    INCBIN "../../res/text/JP/banks/12.bin", $9ce, $3b
jr_012_4a09:
    INCBIN "../../res/text/JP/banks/12.bin", $a09, $c
; しんぞうが みゃくうつたびに / きずぐちから いろあざやかな / けつえきが とびだす・・・。[PAGE] / ああ・・・。 / きが・・・とおく・な・・る・・・。[PAGE] / おれは にどと めざめることは /...
Text12Message26:
    INCBIN "../../res/text/JP/banks/12.bin", $a15, $60
; トレンチコートを きた。 / ほのかに タバコの においがする。[END]
Text12Message27:
    INCBIN "../../res/text/JP/banks/12.bin", $a75, $1f
; ズボンを はいた。[END]
Text12Message28:
    INCBIN "../../res/text/JP/banks/12.bin", $a94, $a
; しんぶんを ひろげると ふるい / しんぶんの きりぬきが はさんで / あった。[END]
Text12Message29:
    INCBIN "../../res/text/JP/banks/12.bin", $a9e, $26
; もくせいの ドアだ。[END]
Text12Message2A:
    INCBIN "../../res/text/JP/banks/12.bin", $ac4, $b
; おれは ピストルの トリガーを ひきひとを ころしてしまった![END]
Text12Message2B:
    INCBIN "../../res/text/JP/banks/12.bin", $acf, $20
; なにも おこらない。[END]
Text12Message2C:
    INCBIN "../../res/text/JP/banks/12.bin", $aef, $b
; おれ・・・。 / なにを しているのだろう・・・。[END]
Text12Message2D:
    INCBIN "../../res/text/JP/banks/12.bin", $afa, $18
; そんなことを しても / 112000ドルは でてこない。[END]
Text12Message2E:
    INCBIN "../../res/text/JP/banks/12.bin", $b12, $1c
; シーゲルが やせた おとこと / あくしゅを している しゃしんだ。[PAGE] / うしろの たてものには / 「リライアント・クリーニングてん」 / という かんばんが かかっている。[PAGE] / めを ほそめ...
Text12Message2F:
    INCBIN "../../res/text/JP/banks/12.bin", $b2e, $1f
jr_012_4b4d:
    INCBIN "../../res/text/JP/banks/12.bin", $b4d, $61
; ずいぶん せまくて きたない / べッドルームだな・・・。[PAGE] / ここは あまり いいホテルでは / ないようだ。[END]
Text12Message30:
    INCBIN "../../res/text/JP/banks/12.bin", $bae, $33
; この おとこの ことを しらべれば / かねの ありかが わかるかも / しれない・・・。[PAGE] / なんとかして クリーニングてんに / しのびこめないだろうか・・・。[END]
Text12Message31:
    INCBIN "../../res/text/JP/banks/12.bin", $be1, $1b
jr_012_4bfc:
    INCBIN "../../res/text/JP/banks/12.bin", $bfc, $30
; ・・・!!!!![PAGE] / どこからか やすっぽい スーツをきたおとこが あらわれて こういった。[END]
Text12Message32:
    INCBIN "../../res/text/JP/banks/12.bin", $c2c, $2d
; 「おれは ストージー・マーチン。 /  おまえを かんししろと ボスに /  めいれいされたんだ。[PAGE] /  もし かねを みつけだせなかった /  ときには おまえの どてっぱらに /  かざあなを あけてや...
Text12Message33:
    INCBIN "../../res/text/JP/banks/12.bin", $c59, $4b
Jump_012_4ca4:
    INCBIN "../../res/text/JP/banks/12.bin", $ca4, $1
jr_012_4ca5:
    INCBIN "../../res/text/JP/banks/12.bin", $ca5, $34
; ストージーは ぶきみな わらいを / のこし シガーリングを おとして / へやから でていった。[END]
Text12Message34:
    INCBIN "../../res/text/JP/banks/12.bin", $cd9, $2e
; マドが よごれていて むこうの / けしきが みえない。[END]
Text12Message35:
    INCBIN "../../res/text/JP/banks/12.bin", $d07, $1b
; ひにやけて いろあせた カーテンだ。[END]
Text12Message36:
    INCBIN "../../res/text/JP/banks/12.bin", $d22, $13
; よごれた シーツが かかった / べッドだ。[END]
Text12Message37:
    INCBIN "../../res/text/JP/banks/12.bin", $d35, $15
; さばくが えがかれている えだ。[END]
Text12Message38:
    INCBIN "../../res/text/JP/banks/12.bin", $d4a, $11
; ふるい タンスだ。 / キズだらけに なっている。[END]
Text12Message39:
    INCBIN "../../res/text/JP/banks/12.bin", $d5b, $18
; しろい ナイトテーブルだ。[PAGE] / ・・・と おもったら ほこりだらけになっているだけだ。[END]
Text12Message3A:
    INCBIN "../../res/text/JP/banks/12.bin", $d73, $2a
; まだ あたらしい ゴミばこだ。[END]
Text12Message3B:
    INCBIN "../../res/text/JP/banks/12.bin", $d9d, $10
; パシフィックてつどうの / パンフレットだ。[PAGE] / シカゴえきの じゅうしょが / かいてある。[END]
Text12Message3C:
    INCBIN "../../res/text/JP/banks/12.bin", $dad, $2a
; 「あたらしい あんないばんの /  みかたについて ごしょうかい /  いたします。[PAGE] /  みとうちゃくーーー /   まもなく れっしゃが ホームに /   はいります。[PAGE] /  とうちゃくーー...
Text12Message3D:
    INCBIN "../../res/text/JP/banks/12.bin", $dd7, $be
; かみせいの シガーリングだ。[PAGE] / ・・・そういえば ストージーが / すっていた はまきに / まいてあったな・・・。[PAGE] / とすれば これは ストージーの / シガーリングだな。[PAGE] /...
Text12Message3E:
    INCBIN "../../res/text/JP/banks/12.bin", $e95, $6d
jr_012_4f02:
    INCBIN "../../res/text/JP/banks/12.bin", $f02, $9
; かたくて へんな においのする / マクラだ。[PAGE] / これを つかうと へんな ゆめを / みそうだなあ・・・。[END]
Text12Message3F:
    INCBIN "../../res/text/JP/banks/12.bin", $f0b, $32
; アンソニー・マロンに あてた / てがみだ。[PAGE] / 「ボス。 /  なんだか おかしいのです。[PAGE] /  おれは べンティーニあにきの /  めいれいで シーゲルから /  あずかった かねを けいさ...
Text12Message40:
    INCBIN "../../res/text/JP/banks/12.bin", $f3d, $5
jr_012_4f42:
    INCBIN "../../res/text/JP/banks/12.bin", $f42, $1f1
; おりたたみしきの じこくひょうだ。 / したのほうに シカゴえきの / じゅうしょが かいてある。[END]
Text12Message41:
    INCBIN "../../res/text/JP/banks/12.bin", $1133, $2e
; りょうきんひょうが かいてある。[PAGE] / 「ラスべガスからニューヨーク          ・・・$35[PAGE] /  ラスべガスからセントルイス          ・・・$15[PAGE] /  ラスべガス...
Text12Message42:
    INCBIN "../../res/text/JP/banks/12.bin", $1161, $8b
; しわくちゃの かみきれだ。 / きたない もじで なにか / かいてある。[PAGE] / 「あの うるさい けんさつかんを /  ころせ![PAGE] /  ぜったいに しょうこは /  のこすな!」[END]
Text12Message43:
    INCBIN "../../res/text/JP/banks/12.bin", $11ec, $4e
; ズキューーン!![END]
Text12Message44:
    INCBIN "../../res/text/JP/banks/12.bin", $123a, $9
; たまは どこかへ とんでいって / しまった。[END]
Text12Message45:
    INCBIN "../../res/text/JP/banks/12.bin", $1243, $16
; しまった!! / キズが ついてしまった![PAGE] / でも ちいさい キズなので だれも / きづかないだろう・・・。[END]
Text12Message46:
    INCBIN "../../res/text/JP/banks/12.bin", $1259, $33
; 1かいの ろうかだ。 / しょうめんから ガチャガチャと / にぎやかな おとがする。[END]
Text12Message47:
    INCBIN "../../res/text/JP/banks/12.bin", $128c, $28
; 1かいの ろうかだ。[END]
Text12Message48:
    INCBIN "../../res/text/JP/banks/12.bin", $12b4, $b
; もくせいの ちいさな テーブルだ。[END]
Text12Message49:
    INCBIN "../../res/text/JP/banks/12.bin", $12bf, $12
; あかりが ともっている でんとうだ。[END]
Text12Message4A:
    INCBIN "../../res/text/JP/banks/12.bin", $12d1, $13
; でんとうだ。 / しゅみの わるい かざりが / ついている。[END]
Text12Message4B:
    INCBIN "../../res/text/JP/banks/12.bin", $12e4, $1c
; エレべータの ボタンだ。[END]
Text12Message4C:
    INCBIN "../../res/text/JP/banks/12.bin", $1300, $d
; 「カジノ」と かかれた かんばんだ。[END]
Text12Message4D:
    INCBIN "../../res/text/JP/banks/12.bin", $130d, $13
; はっぱを たくさん しげらせた / はちうえだ。[END]
Text12Message4E:
    INCBIN "../../res/text/JP/banks/12.bin", $1320, $17
; おとこは かおを しかめながら / おれに いった。[PAGE] / 「おまえさん やめときな・・・。 /  これいじょうは かねの /  むだづかいさ!」[END]
Text12Message4F:
    INCBIN "../../res/text/JP/banks/12.bin", $1337, $41
; きゃくしつの ドアだ。 / みみを ちかづけてみたが なにも / きこえない。[END]
Text12Message50:
    INCBIN "../../res/text/JP/banks/12.bin", $1378, $24
; エレべータの ドアだ。 / さいきん ぺンキを ぬりかえた / ばかりらしい。[PAGE] / ツーンと はなを しげきする / においがする。[END]
Text12Message51:
    INCBIN "../../res/text/JP/banks/12.bin", $139c, $3b
; 2かいの ろうかだ。 / しずかだな・・・。[END]
Text12Message52:
    INCBIN "../../res/text/JP/banks/12.bin", $13d7, $15
; ちいさな ふうけいがだ。[END]
Text12Message53:
    INCBIN "../../res/text/JP/banks/12.bin", $13ec, $d
; ちいさな はなをつけた はちうえだ。[END]
Text12Message54:
    INCBIN "../../res/text/JP/banks/12.bin", $13f9, $13
; きゃくしつの ドアだ。 / なかには だれも いないようだ。[END]
Text12Message55:
    INCBIN "../../res/text/JP/banks/12.bin", $140c, $1d
; きゃくしつの ドアだ。 / なかからは ものおとひとつ / きこえない。[END]
Text12Message56:
    INCBIN "../../res/text/JP/banks/12.bin", $1429, $21
; 3かいの ろうかだ。 / せまいな・・・。[END]
Text12Message57:
    INCBIN "../../res/text/JP/banks/12.bin", $144a, $14
; ゴテゴテと あつく ぬってある / あぶらえだ。[END]
Text12Message58:
    INCBIN "../../res/text/JP/banks/12.bin", $145e, $17
; ちいさな はちうえだ。 / はなが さいている。[END]
Text12Message59:
    INCBIN "../../res/text/JP/banks/12.bin", $1475, $17
; エレべータの ドアだ。[END]
Text12Message5A:
    INCBIN "../../res/text/JP/banks/12.bin", $148c, $c
; ひとが ひとり はいれそうなくらい / おおきな せんたくものいれだ。[PAGE] / ・・・おや? / よこに なにか かいてあるぞ![END]
Text12Message5B:
    INCBIN "../../res/text/JP/banks/12.bin", $1498, $2b
jr_012_54c3:
    INCBIN "../../res/text/JP/banks/12.bin", $14c3, $e
; 「リライアント・クリーニングてん」とよこに かいてある。[END]
Text12Message5C:
    INCBIN "../../res/text/JP/banks/12.bin", $14d1, $b
jr_012_54dc:
    INCBIN "../../res/text/JP/banks/12.bin", $14dc, $12
; これを クリーニングてんに / もってかえって なかのものを / せんたくするのだろう。[END]
Text12Message5D:
    INCBIN "../../res/text/JP/banks/12.bin", $14ee, $29
; そうだ![PAGE] / このなかに かくれていれば / しゃしんに うつっていた / クリーニングてんに もぐりこめるに / ちがいない![END]
Text12Message5E:
    INCBIN "../../res/text/JP/banks/12.bin", $1517, $25
jr_012_553c:
    INCBIN "../../res/text/JP/banks/12.bin", $153c, $14
; せんたくものいれの なかに / はいった。[PAGE] / うーっ・・・! / あせくさーっ!![END]
Text12Message5F:
    INCBIN "../../res/text/JP/banks/12.bin", $1550, $25
; どうも カギが ちがうようだ。[END]
Text12Message60:
    INCBIN "../../res/text/JP/banks/12.bin", $1575, $10
; ノックしたが だれも でてこない。[END]
Text12Message61:
    INCBIN "../../res/text/JP/banks/12.bin", $1585, $12
; ガラスが こなごなに / くだけちった。[END]
Text12Message62:
    INCBIN "../../res/text/JP/banks/12.bin", $1597, $13
; 「アンソニー・マロン」と / 「ダニー・べンティーニ」・・・。[PAGE] / このまちで かれらの なまえを / しらない ひとは いない・・・。[PAGE] / そういえば すうしゅうかんまえの / しんぶんにも ...
Text12Message63:
    INCBIN "../../res/text/JP/banks/12.bin", $15aa, $77
; ある ちほうけんさつかんが かれらをたいほできる ゆうりょくな / しょうこを つかんだ。[PAGE] / だが その けんさつかんは したいでみつかった。 / ・・・という きじだった。[PAGE] / その すうじ...
Text12Message64:
    INCBIN "../../res/text/JP/banks/12.bin", $1621, $87
; ホテルの 4かいだ。 / この かいは オフィスに なっているようだ。[PAGE] / へやは ふたつあり それぞれの / ドアに ひょうさつが かかっている。[END]
Text12Message65:
    INCBIN "../../res/text/JP/banks/12.bin", $16a8, $45
; 4かいの ろうかだ。[END]
Text12Message66:
    INCBIN "../../res/text/JP/banks/12.bin", $16ed, $b
; はちうえの きだ。 / ねもとが すこし かれている。[END]
Text12Message67:
    INCBIN "../../res/text/JP/banks/12.bin", $16f8, $1a
; きれいに みがかれた マドだ。[END]
Text12Message68:
    INCBIN "../../res/text/JP/banks/12.bin", $1712, $10
; がんじょうそうな もくせいの / ドアだ。[PAGE] / 「ダニー・べンティーニ」と かかれたひょうさつが かかっている。[END]
Text12Message69:
    INCBIN "../../res/text/JP/banks/12.bin", $1722, $35
; 「アンソニー・マロン」と かいてあるきんいろの ひょうさつが かかった / ドアだ。[END]
Text12Message6A:
    INCBIN "../../res/text/JP/banks/12.bin", $1757, $29
; しまった! / ようじんぼうに みつかった![END]
Text12Message6B:
    INCBIN "../../res/text/JP/banks/12.bin", $1780, $15
; 「この コソドロめ! /  ここへ しのびこんで くるとは /  とんでもない やろうだ![PAGE] /  ・・・しんでもらうぜ!」[END]
Text12Message6C:
    INCBIN "../../res/text/JP/banks/12.bin", $1795, $38
; マシンガンが ごうおんを たてながらおれの からだを ハチのすにした。[PAGE] / ・・・おかげで おれは えいえんの / ねむりに つくことになった・・・。[END]
Text12Message6D:
    INCBIN "../../res/text/JP/banks/12.bin", $17cd, $48
; ラッキーダイスホテルの ロビーだ。 / チップを かさねる おとが / きこえてくる・・・。[PAGE] / ・・・なんだか ワクワクするな。[END]
Text12Message6E:
    INCBIN "../../res/text/JP/banks/12.bin", $1815, $3c
; とつぜん ようじんぼうが ゆくてを / はばんだ。[PAGE] / 「なんだ!? /  おまえは!![PAGE] /  そんな かっこうで ここへは /  はいれないぞ! /  とっとと でていけっ!」[END]
Text12Message6F:
    INCBIN "../../res/text/JP/banks/12.bin", $1851, $4e
; おれは ようじんぼうに / つまみだされてしまった・・・。[END]
Text12Message70:
    INCBIN "../../res/text/JP/banks/12.bin", $189f, $1c
; えきの ホームだ。 / ゆかは まだ あたらしい・・・。[END]
Text12Message71:
    INCBIN "../../res/text/JP/banks/12.bin", $18bb, $1b
; 「ラッキーダイスホテル & カジノ」と かいてある ガラスの / はいざらだ。[END]
Text12Message72:
    INCBIN "../../res/text/JP/banks/12.bin", $18d6, $26
; にぎやかだな・・・。[END]
Text12Message73:
    INCBIN "../../res/text/JP/banks/12.bin", $18fc, $b
; いりぐちの ドアだ。[END]
Text12Message74:
    INCBIN "../../res/text/JP/banks/12.bin", $1907, $b
; おおきな あぶらえだ。 / ピストルをもった ふたりの おとこがたいけつしようと している。[END]
Text12Message75:
    INCBIN "../../res/text/JP/banks/12.bin", $1912, $2d
; あかい ビロードの イスだ。 / ・・・すわりごこちが よさそうだ。[END]
Text12Message76:
    INCBIN "../../res/text/JP/banks/12.bin", $193f, $21
; すわりごこちの よさそうな イスだ。[END]
Text12Message77:
    INCBIN "../../res/text/JP/banks/12.bin", $1960, $13
; ちいさな コーヒーテーブルだ。[END]
Text12Message78:
    INCBIN "../../res/text/JP/banks/12.bin", $1973, $10
; おおきな しんちゅうの つぼだ。[END]
Text12Message79:
    INCBIN "../../res/text/JP/banks/12.bin", $1983, $11
; ドアの ガラスが われて / へやじゅうに ものすごい おとが / ひびきわたった。[END]
Text12Message7A:
    INCBIN "../../res/text/JP/banks/12.bin", $1994, $27
; 「このやろう! /  なんてことを するんだ!」[END]
Text12Message7B:
    INCBIN "../../res/text/JP/banks/12.bin", $19bb, $17
; りょうがえしょだ。 / ここで かねと チップを / こうかんするようだ。[END]
Text12Message7C:
    INCBIN "../../res/text/JP/banks/12.bin", $19d2, $22
; 「りょうがえしょ」と かんばんに / かいてある。[END]
Text12Message7D:
    INCBIN "../../res/text/JP/banks/12.bin", $19f4, $18
; 「チップは 1まい 5ドルです。」とかいてある。[END]
Text12Message7E:
    INCBIN "../../res/text/JP/banks/12.bin", $1a0c, $19
; りょうがえしょの カウンターだ。[PAGE] / なかに ひとが はいって かねや / チップを うけわたすように / なっている。[END]
Text12Message7F:
    INCBIN "../../res/text/JP/banks/12.bin", $1a25, $6b8
Jump_012_60dd:
    INCBIN "../../res/text/JP/banks/12.bin", $20dd, $1e39
Call_012_7f16:
Jump_012_7f16:
    INCBIN "../../res/text/JP/banks/12.bin", $3f16, $9a
Call_012_7fb0:
    INCBIN "../../res/text/JP/banks/12.bin", $3fb0, $36
Call_012_7fe6:
    INCBIN "../../res/text/JP/banks/12.bin", $3fe6, $3
Call_012_7fe9:
    INCBIN "../../res/text/JP/banks/12.bin", $3fe9, $17
