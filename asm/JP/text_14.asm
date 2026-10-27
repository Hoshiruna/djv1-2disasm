; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text14Msgs0:
    db LOW(Text14Message00), HIGH(Text14Message00)
    db LOW(Text14Message01), HIGH(Text14Message01)
    db LOW(Text14Message02), HIGH(Text14Message02)
    db LOW(Text14Message03), HIGH(Text14Message03)
    db LOW(Text14Message04), HIGH(Text14Message04)
    db LOW(Text14Message05), HIGH(Text14Message05)
    db LOW(Text14Message06), HIGH(Text14Message06)
    db LOW(Text14Message07), HIGH(Text14Message07)
    db LOW(Text14Message08), HIGH(Text14Message08)
    db LOW(Text14Message09), HIGH(Text14Message09)
    db LOW(Text14Message0A), HIGH(Text14Message0A)
    db LOW(Text14Message0B), HIGH(Text14Message0B)
    db LOW(Text14Message0C), HIGH(Text14Message0C)
    db LOW(Text14Message0D), HIGH(Text14Message0D)
    db LOW(Text14Message0E), HIGH(Text14Message0E)
    db LOW(Text14Message0F), HIGH(Text14Message0F)
    db LOW(Text14Message10), HIGH(Text14Message10)
    db LOW(Text14Message11), HIGH(Text14Message11)
    db LOW(Text14Message12), HIGH(Text14Message12)
    db LOW(Text14Message13), HIGH(Text14Message13)
    db LOW(Text14Message14), HIGH(Text14Message14)
    db LOW(Text14Message15), HIGH(Text14Message15)
    db LOW(Text14Message16), HIGH(Text14Message16)
    db LOW(Text14Message17), HIGH(Text14Message17)
    db LOW(Text14Message18), HIGH(Text14Message18)
    db LOW(Text14Message19), HIGH(Text14Message19)
    db LOW(Text14Message1A), HIGH(Text14Message1A)
    db LOW(Text14Message1B), HIGH(Text14Message1B)
    db LOW(Text14Message1C), HIGH(Text14Message1C)
    db LOW(Text14Message1D), HIGH(Text14Message1D)
    db LOW(Text14Message1E), HIGH(Text14Message1E)
    db LOW(Text14Message1F), HIGH(Text14Message1F)
    db LOW(Text14Message20), HIGH(Text14Message20)
    db LOW(Text14Message21), HIGH(Text14Message21)
    db LOW(Text14Message22), HIGH(Text14Message22)
    db LOW(Text14Message23), HIGH(Text14Message23)
    db LOW(Text14Message24), HIGH(Text14Message24)
    db LOW(Text14Message25), HIGH(Text14Message25)
    db LOW(Text14Message26), HIGH(Text14Message26)
    db LOW(Text14Message27), HIGH(Text14Message27)
    db LOW(Text14Message28), HIGH(Text14Message28)
    db LOW(Text14Message29), HIGH(Text14Message29)
    db LOW(Text14Message2A), HIGH(Text14Message2A)
    db LOW(Text14Message2B), HIGH(Text14Message2B)
    db LOW(Text14Message2C), HIGH(Text14Message2C)
    db LOW(Text14Message2D), HIGH(Text14Message2D)
    db LOW(Text14Message2E), HIGH(Text14Message2E)
    db LOW(Text14Message2F), HIGH(Text14Message2F)
    db LOW(Text14Message30), HIGH(Text14Message30)
    db LOW(Text14Message31), HIGH(Text14Message31)
    db LOW(Text14Message32), HIGH(Text14Message32)
jr_014_4066:
    db LOW(Text14Message33), HIGH(Text14Message33)
    db LOW(Text14Message34), HIGH(Text14Message34)
    db LOW(Text14Message35), HIGH(Text14Message35)
    db LOW(Text14Message36), HIGH(Text14Message36)
    db LOW(Text14Message37), HIGH(Text14Message37)
    db LOW(Text14Message38), HIGH(Text14Message38)
    db LOW(Text14Message39), HIGH(Text14Message39)
    db LOW(Text14Message3A), HIGH(Text14Message3A)
    db LOW(Text14Message3B), HIGH(Text14Message3B)
    db LOW(Text14Message3C), HIGH(Text14Message3C)
    db LOW(Text14Message3D), HIGH(Text14Message3D)
    db LOW(Text14Message3E), HIGH(Text14Message3E)
    db LOW(Text14Message3F), HIGH(Text14Message3F)
; Sixty-four message pointers for one text group.
Text14Msgs1:
    db LOW(Text14Message40), HIGH(Text14Message40)
    db LOW(Text14Message41), HIGH(Text14Message41)
    db LOW(Text14Message42), HIGH(Text14Message42)
    db LOW(Text14Message43), HIGH(Text14Message43)
    db LOW(Text14Message44), HIGH(Text14Message44)
    db LOW(Text14Message45), HIGH(Text14Message45)
    db LOW(Text14Message46), HIGH(Text14Message46)
    db LOW(Text14Message47), HIGH(Text14Message47)
    db LOW(Text14Message48), HIGH(Text14Message48)
    db LOW(Text14Message49), HIGH(Text14Message49)
    db LOW(Text14Message4A), HIGH(Text14Message4A)
    db LOW(Text14Message4B), HIGH(Text14Message4B)
    db LOW(Text14Message4C), HIGH(Text14Message4C)
    db LOW(Text14Message4D), HIGH(Text14Message4D)
    db LOW(Text14Message4E), HIGH(Text14Message4E)
    db LOW(Text14Message4F), HIGH(Text14Message4F)
    db LOW(Text14Message50), HIGH(Text14Message50)
    db LOW(Text14Message51), HIGH(Text14Message51)
    db LOW(Text14Message52), HIGH(Text14Message52)
    db LOW(Text14Message53), HIGH(Text14Message53)
    db LOW(Text14Message54), HIGH(Text14Message54)
    db LOW(Text14Message55), HIGH(Text14Message55)
    db LOW(Text14Message56), HIGH(Text14Message56)
    db LOW(Text14Message57), HIGH(Text14Message57)
    db LOW(Text14Message58), HIGH(Text14Message58)
    db LOW(Text14Message59), HIGH(Text14Message59)
    db LOW(Text14Message5A), HIGH(Text14Message5A)
    db LOW(Text14Message5B), HIGH(Text14Message5B)
    db LOW(Text14Message5C), HIGH(Text14Message5C)
    db LOW(Text14Message5D), HIGH(Text14Message5D)
    db LOW(Text14Message5E), HIGH(Text14Message5E)
    db LOW(Text14Message5F), HIGH(Text14Message5F)
    db LOW(Text14Message60), HIGH(Text14Message60)
    db LOW(Text14Message61), HIGH(Text14Message61)
    db LOW(Text14Message62), HIGH(Text14Message62)
    db LOW(Text14Message63), HIGH(Text14Message63)
    db LOW(Text14Message64), HIGH(Text14Message64)
    db LOW(Text14Message65), HIGH(Text14Message65)
    db LOW(Text14Message66), HIGH(Text14Message66)
    db LOW(Text14Message67), HIGH(Text14Message67)
    db LOW(Text14Message68), HIGH(Text14Message68)
    db LOW(Text14Message69), HIGH(Text14Message69)
    db LOW(Text14Message6A), HIGH(Text14Message6A)
    db LOW(Text14Message6B), HIGH(Text14Message6B)
    db LOW(Text14Message6C), HIGH(Text14Message6C)
    db LOW(Text14Message6D), HIGH(Text14Message6D)
    db LOW(Text14Message6E), HIGH(Text14Message6E)
    db LOW(Text14Message6F), HIGH(Text14Message6F)
    db LOW(Text14Message70), HIGH(Text14Message70)
    db LOW(Text14Message71), HIGH(Text14Message71)
    db LOW(Text14Message72), HIGH(Text14Message72)
    db LOW(Text14Message73), HIGH(Text14Message73)
    db LOW(Text14Message74), HIGH(Text14Message74)
    db LOW(Text14Message75), HIGH(Text14Message75)
    db LOW(Text14Message76), HIGH(Text14Message76)
    db LOW(Text14Message77), HIGH(Text14Message77)
    db LOW(Text14Message78), HIGH(Text14Message78)
    db LOW(Text14Message79), HIGH(Text14Message79)
    db LOW(Text14Message7A), HIGH(Text14Message7A)
    db LOW(Text14Message7B), HIGH(Text14Message7B)
    db LOW(Text14Message7C), HIGH(Text14Message7C)
    db LOW(Text14Message7D), HIGH(Text14Message7D)
    db LOW(Text14Message7E), HIGH(Text14Message7E)
    db LOW(Text14Message7F), HIGH(Text14Message7F)
; なにも かわったものは ない。[END]
Text14Message00:
    INCBIN "../../res/text/JP/banks/14.bin", $100, $10
; シカゴえきの ロビーだ。[PAGE] / れっしゃの おと・・・。 / しゃしょうの こえ・・・。[PAGE] / かっきに みちてるな。[END]
Text14Message01:
    INCBIN "../../res/text/JP/banks/14.bin", $110, $34
; ふるそうな きの べンチだ。[END]
Text14Message02:
    INCBIN "../../res/text/JP/banks/14.bin", $144, $f
; どこからか ふいてきた すきまかぜでべッドルームに つうじる うしろの / ドアが かってに しまった。[END]
Text14Message03:
    INCBIN "../../res/text/JP/banks/14.bin", $153, $33
; ばいてんでは しんぶんを / うっている。[END]
Text14Message04:
    INCBIN "../../res/text/JP/banks/14.bin", $186, $14
; きの シャッターだ。 / ぺンキで 「へいてん」と / かいてある。[END]
Text14Message05:
    INCBIN "../../res/text/JP/banks/14.bin", $19a, $1f
; ばいてんには ろうじんが / たっている。 / てんいんらしい。[END]
Text14Message06:
    INCBIN "../../res/text/JP/banks/14.bin", $1b9, $1d
; ろうじんが かっている いぬだろう。なふだには 「ボリス」と / かいてある。[PAGE] / おれが むかし かっていた / 「タコ」を おもいだすな・・・。[PAGE] / ざっしゅだったが・・・かしこくて / か...
Text14Message07:
    INCBIN "../../res/text/JP/banks/14.bin", $1d6, $97
; このいぬには きずあとが / たくさんある。 / けんか・・・つよそうだな。[END]
Text14Message08:
    INCBIN "../../res/text/JP/banks/14.bin", $26d, $23
; おとこは よく ねむっている。 / はなしかけても へんじがない。[END]
Text14Message09:
    INCBIN "../../res/text/JP/banks/14.bin", $290, $20
; しんぶんには シーゲルの / なかまだった マフィアが / ころされたと かいてある。[PAGE] / したいが あんちされている / こうきょうの したいおきばの / じゅうしょが かいてある。[END]
Text14Message0A:
    INCBIN "../../res/text/JP/banks/14.bin", $2b0, $53
; しんぶんには しんだ / マフィアについて・・・[PAGE] / 2しゅうかんまえに ころされた / ジョー・シーゲルの なかまかも / しれないと かいてある。[PAGE] / したいが あんちされている / こうき...
Text14Message0B:
    INCBIN "../../res/text/JP/banks/14.bin", $303, $6f
; とつぜん だれかが おれの なを / よんだ・・・。[PAGE] / ・・・いやな よかんが する・・・。[PAGE] / ふりむくと ストージー・マーチンが / たっていた![END]
Text14Message0C:
    INCBIN "../../res/text/JP/banks/14.bin", $372, $45
; 「まだ こんなところを /  ウロウロしているのか?[PAGE] /  はやく しないと きげんに /  まにあわないぜ!」[END]
Text14Message0D:
    INCBIN "../../res/text/JP/banks/14.bin", $3b7, $33
; 「かねは みつかったのか? /  ボスは 1ぷんたりとも まっては くれないぜ!」[END]
Text14Message0E:
    INCBIN "../../res/text/JP/banks/14.bin", $3ea, $28
; 「のこされた じかんは あと /  はんぶんだ。 /  いそいだほうが いいぜ!」[END]
Text14Message0F:
    INCBIN "../../res/text/JP/banks/14.bin", $412, $26
; 「ボスは おまえの かえりを /  くびを ながくして まっている。[PAGE] /  ボスの きたいを うらぎるなよ!」[END]
Text14Message10:
    INCBIN "../../res/text/JP/banks/14.bin", $438, $34
; 「これが さいごの けいこくだ![PAGE] /  こんど あうとき おまえが /  やくそくを はたしていなかったら /  いのちはないと おもえ!」[END]
Text14Message11:
    INCBIN "../../res/text/JP/banks/14.bin", $46c, $41
; そういうと ストージーは たからかにわらいながら さっていった・・・。[END]
Text14Message12:
    INCBIN "../../res/text/JP/banks/14.bin", $4ad, $24
; 「じかんだ・・・。 /  112000ドルを もらおうか![PAGE] /  なにっ・・・!! /  みつけられなかっただと・・・![PAGE] /  しかたがない・・・やくそくだ! /  ・・・あばよ!」[END]
Text14Message13:
    INCBIN "../../res/text/JP/banks/14.bin", $4d1, $52
; ナイフの はを おさめた。[END]
Text14Message14:
    INCBIN "../../res/text/JP/banks/14.bin", $523, $e
; なにに つかおうか?[END]
Text14Message15:
    INCBIN "../../res/text/JP/banks/14.bin", $531, $b
; カギが かかっていて あかない![END]
Text14Message16:
    INCBIN "../../res/text/JP/banks/14.bin", $53c, $11
; おれは いぬを ぺットに しようと / おもい てを のばした。[PAGE] / っっっっってえ!!! / いぬが てに かみついてきた。 / ・・・かわいくないね。[END]
Text14Message17:
    INCBIN "../../res/text/JP/banks/14.bin", $54d, $46
; おれが しんぶんを とろうとすると / ろうじんは いった。[PAGE] / 「いちぶ 25セントです。 /  さきに おかねを はらって /  くださいよ!」[END]
Text14Message18:
    INCBIN "../../res/text/JP/banks/14.bin", $593, $43
; おれは いぬに いった。 / 「おて!」[PAGE] / うーん・・・りこうな やつだ。 / ちゃーんと まえあしを / さしだしてくれた。[END]
Text14Message19:
    INCBIN "../../res/text/JP/banks/14.bin", $5d6, $39
; おれは いぬに いった。 / 「ふせ!」[PAGE] / うーん・・・。 / いぬは まえあしを さしだした。 / ・・・バカな やつだな。[END]
Text14Message1A:
    INCBIN "../../res/text/JP/banks/14.bin", $60f, $39
; 「おきゃくさん しんぶんは /  いかがですか。 /  いちぶ 25セントです。」[END]
Text14Message1B:
    INCBIN "../../res/text/JP/banks/14.bin", $648, $26
; 「おかいあげ まことに ありがとう /  ございました。」[END]
Text14Message1C:
    INCBIN "../../res/text/JP/banks/14.bin", $66e, $1c
; きゅうに いぬが おれめがけて / とびかかってきた。[PAGE] / しゅじんを たすけなければ・・・ / と おもったのだろう。[END]
Text14Message1D:
    INCBIN "../../res/text/JP/banks/14.bin", $68a, $37
; ガルルー![PAGE] / あっちも こっちも かまれた。 / ふりはらうことが できない![PAGE] / 「だれかー! /  たすけてくれー!!!」[PAGE] / さけんだときには おそかった。 / おれの いし...
Text14Message1E:
    INCBIN "../../res/text/JP/banks/14.bin", $6c1, $63
; いたいっ! / おれは とびあがった。[PAGE] / おしりに とげが ささって / しまった・・・。[END]
Text14Message1F:
    INCBIN "../../res/text/JP/banks/14.bin", $724, $29
; おれは いぬに かみついた。[PAGE] / すると・・・いぬは こうげきされたとおもったのか はげしく おれに / かみついてきた![END]
Text14Message20:
    INCBIN "../../res/text/JP/banks/14.bin", $74d, $3a
; えさを もらっていないのか / いぬは ガツガツと たべた。[PAGE] / ・・・おーっと! / もうすこしで おれの ゆびまで / たべられるところだった。[END]
Text14Message21:
    INCBIN "../../res/text/JP/banks/14.bin", $787, $3
jr_014_478a:
    INCBIN "../../res/text/JP/banks/14.bin", $78a, $40
; つくえの うえに シガーリングを / おいた。[PAGE] / ・・・フッ フッ フッ。 / べンティーニの あわてる ようすが / めに みえるようだ。[PAGE] / あとは マロンに べンティーニの / あくじを...
Text14Message22:
    INCBIN "../../res/text/JP/banks/14.bin", $7ca, $6d
; ろうじんは いった。[PAGE] / 「ありがとうございます。 /  どうぞ しんぶんを とって /  ください。」[END]
Text14Message23:
    INCBIN "../../res/text/JP/banks/14.bin", $837, $2f
; ろうじんは わらって いった。[PAGE] / 「おきゃくさん さきほど おかねは /  いただきましたが まだ しんぶんを とっていませんね。 /  はやく とってください。」[END]
Text14Message24:
    INCBIN "../../res/text/JP/banks/14.bin", $866, $4e
; 「ありがとうございます。 /  しかし しんぶんは すべて /  うれてしまいました。[PAGE] /  またの おこしを こころより /  おまちしています。」[END]
Text14Message25:
    INCBIN "../../res/text/JP/banks/14.bin", $8b4, $44
; 「ありがとうございます。 /  でも おかねを いただかないと /  しんぶんは おわたしできません。」[END]
Text14Message26:
    INCBIN "../../res/text/JP/banks/14.bin", $8f8, $31
; このいぬは よく くんれんされているようだ。[PAGE] / おれの こうげきを すんなりと / かわすとは![END]
Text14Message27:
    INCBIN "../../res/text/JP/banks/14.bin", $929, $2e
; ろうじんを ころしてしまった!![PAGE] / それを みていた ちゅうじつな / いぬが きゅうに おれに / とびかかってきた![END]
Text14Message28:
    INCBIN "../../res/text/JP/banks/14.bin", $957, $25
jr_014_497c:
    INCBIN "../../res/text/JP/banks/14.bin", $97c, $13
; しかし すぐに あいた。[PAGE] / ・・・いま いる かいを / えらんでしまったようだ。[END]
Text14Message29:
    INCBIN "../../res/text/JP/banks/14.bin", $98f, $27
; プラットホームに いる。[END]
Text14Message2A:
    INCBIN "../../res/text/JP/banks/14.bin", $9b6, $d
; 「いそぎ ごじょうしゃくださーい!」[END]
Text14Message2B:
    INCBIN "../../res/text/JP/banks/14.bin", $9c3, $13
; おきゃくが このドアを とおって / ではいりしている。[END]
Text14Message2C:
    INCBIN "../../res/text/JP/banks/14.bin", $9d6, $1b
; とびらが しまろうと していたので / いそいで れっしゃに とびこんだ![END]
Text14Message2D:
    INCBIN "../../res/text/JP/banks/14.bin", $9f1, $24
; めのまえで ドアが しまった。[PAGE] / チェッ! / ついてないな・・・。[END]
Text14Message2E:
    INCBIN "../../res/text/JP/banks/14.bin", $a15, $20
; シューと おとを たてながら / れっしゃが はいってきた。[END]
Text14Message2F:
    INCBIN "../../res/text/JP/banks/14.bin", $a35, $1d
; おれの ちかくにいる しゃしょうが / さけんでいる。[END]
Text14Message30:
    INCBIN "../../res/text/JP/banks/14.bin", $a52, $1a
; はっしゃのため れっしゃの ドアが / しまった。[END]
Text14Message31:
    INCBIN "../../res/text/JP/banks/14.bin", $a6c, $18
; とおくで きてきが なっている。[END]
Text14Message32:
    INCBIN "../../res/text/JP/banks/14.bin", $a84, $11
; とおくから さけびごえが きこえる。[END]
Text14Message33:
    INCBIN "../../res/text/JP/banks/14.bin", $a95, $13
; シカゴえきの まえに きた。 / タクシーが 1だい とまっている。[END]
Text14Message34:
    INCBIN "../../res/text/JP/banks/14.bin", $aa8, $21
; シカゴえきの まえに きた。[END]
Text14Message35:
    INCBIN "../../res/text/JP/banks/14.bin", $ac9, $f
; 「シカゴえき」と かいてある / かんばんだ。[END]
Text14Message36:
    INCBIN "../../res/text/JP/banks/14.bin", $ad8, $16
; そういうと じむいんは ブツブツと / めんどうくさそうに はこを だした。[PAGE] / 「これが ボンドウェルさんの /  もちものですよ。」[END]
Text14Message37:
    INCBIN "../../res/text/JP/banks/14.bin", $aee, $3f
; アーチがたの マドだ。 / きれいに みがかれている。[END]
Text14Message38:
    INCBIN "../../res/text/JP/banks/14.bin", $b2d, $1a
; やったぜ! / みごと めいちゅう![END]
Text14Message39:
    INCBIN "../../res/text/JP/banks/14.bin", $b47, $11
; タクシーが とまっている。 / きゃくは のっていないようだ。[END]
Text14Message3A:
    INCBIN "../../res/text/JP/banks/14.bin", $b58, $1e
; いや まてよ! / うんてんしゅを おこらせたら / タクシーに のれなくなる・・・。[END]
Text14Message3B:
    INCBIN "../../res/text/JP/banks/14.bin", $b76, $28
; いや そんなことはできない。 / ゆうじんの くるまだ![END]
Text14Message3C:
    INCBIN "../../res/text/JP/banks/14.bin", $b9e, $1b
; タクシーに のりこんだ。[PAGE] / な なんと・・・うんてんしゅは / むかしの ゆうじんではないか![PAGE] / 「エースか ひさしぶりだな・・・。 /  ちょうしは どうだい?[PAGE] /  いまの ...
Text14Message3D:
    INCBIN "../../res/text/JP/banks/14.bin", $bb9, $dc
; タクシーに のりこんだ。 / すわりごこちが いい・・・。[END]
Text14Message3E:
    INCBIN "../../res/text/JP/banks/14.bin", $c95, $1c
; バックミラーだ。 / ミラーに うつっている けしきは / ここからだと あまり みえない。[END]
Text14Message3F:
    INCBIN "../../res/text/JP/banks/14.bin", $cb1, $2b
; おれの ゆうじんだ。 / ニコニコしている。[END]
Text14Message40:
    INCBIN "../../res/text/JP/banks/14.bin", $cdc, $15
; じょうしゃりょうきんの メーターだ。うんてんしゅは メーターを / つかうつもりは ないらしい。[PAGE] / おれは すばらしい ゆうじんを / もって しあわせだな。[END]
Text14Message41:
    INCBIN "../../res/text/JP/banks/14.bin", $cf1, $4b
; 「シカゴ・べアーズ がんばれ!」と / かいてある ポスターだ。[PAGE] / フットボールは すき というほどではないが せんしゅの かつやくを / みていると いつのまにか / ねっちゅうしてしまう。[END]
Text14Message42:
    INCBIN "../../res/text/JP/banks/14.bin", $d3c, $5a
; そとへ でるための ドアだ。[END]
Text14Message43:
    INCBIN "../../res/text/JP/banks/14.bin", $d96, $f
; ・・・びくともしない。 / すると うんてんしゅが いった。[PAGE] / 「すまない エース。 /  このまえ トラックが ぶつかって /  そのドアは あかなくなって /  しまったんだ。」[END]
Text14Message44:
    INCBIN "../../res/text/JP/banks/14.bin", $da5, $53
; うんてんしゅは いった。[PAGE] / 「エース どこへ いきたいんだ?」[END]
Text14Message45:
    INCBIN "../../res/text/JP/banks/14.bin", $df8, $1f
; うんてんしゅは しばらく あっけに / とられていたが わらって いった。[PAGE] / 「エース どうかしてるぜ。 /  そとを みてみろよ。 /  ここが そのばしょだぜ!」[END]
Text14Message46:
    INCBIN "../../res/text/JP/banks/14.bin", $e17, $4d
; ほかに つかいみちが ないので / とるひつようは ないようだ。[END]
Text14Message47:
    INCBIN "../../res/text/JP/banks/14.bin", $e64, $1f
; いきさきを きくと うんてんしゅは / げんきよく いった。[PAGE] / 「しょうちしたぜ!」[PAGE] / タクシーは はしりだした・・・。[END]
Text14Message48:
    INCBIN "../../res/text/JP/banks/14.bin", $e83, $39
; キキーッ!![END]
Text14Message49:
    INCBIN "../../res/text/JP/banks/14.bin", $ebc, $7
; うんてんしゅは タクシーを とめて / いった。[PAGE] / 「エース ついたぜ!」[END]
Text14Message4A:
    INCBIN "../../res/text/JP/banks/14.bin", $ec3, $23
; おれは ピストルを つかった。[END]
Text14Message4B:
    INCBIN "../../res/text/JP/banks/14.bin", $ee6, $10
; まだ でんちを こうかんしなくても / いいようだ。[END]
Text14Message4C:
    INCBIN "../../res/text/JP/banks/14.bin", $ef6, $19
; でんちの こうかんには あたらしい / でんちを つかわなければ いけない。[END]
Text14Message4D:
    INCBIN "../../res/text/JP/banks/14.bin", $f0f, $25
;  /   ・・・ゲーム オーバー・・・[END]
Text14Message4E:
    INCBIN "../../res/text/JP/banks/14.bin", $f34, $12
; なにが かいてあるのだろう・・・。[END]
Text14Message4F:
    INCBIN "../../res/text/JP/banks/14.bin", $f46, $12
; うんてんしゅは よろこんでくれた。 / だが うけとらずに こういった。[PAGE] / 「ありがとう。 /  でも いまのところ まにあって /  いるんだ。」[END]
Text14Message50:
    INCBIN "../../res/text/JP/banks/14.bin", $f58, $44
; あれはてた アパートの まえだ。 / なつかしの わがやだ。[END]
Text14Message51:
    INCBIN "../../res/text/JP/banks/14.bin", $f9c, $1d
; おれの アパートの まえだ。[END]
Text14Message52:
    INCBIN "../../res/text/JP/banks/14.bin", $fb9, $f
; プレートには かしべやの こうこくがかかれている。[END]
Text14Message53:
    INCBIN "../../res/text/JP/banks/14.bin", $fc8, $1a
; 「どうして けいかんでない おまえが これを もっているんだ・・・?」[PAGE] / じむいんは ひじょうべルを おして / けいさつを よんだ・・・。[END]
Text14Message54:
    INCBIN "../../res/text/JP/banks/14.bin", $fe2, $44
; ああ・・・ なつかしの わがやだ! / きのぬけた ビール・・・。 / はなをつく におい・・・。[PAGE] / あの すばらしい せいかつが / おもいだされる・・・。[END]
Text14Message55:
    INCBIN "../../res/text/JP/banks/14.bin", $1026, $49
; アパートの ろうかに いる。[END]
Text14Message56:
    INCBIN "../../res/text/JP/banks/14.bin", $106f, $f
; おれの なまえが かいてある / メールボックスだ。 / てがみは はいっているかな・・・?[END]
Text14Message57:
    INCBIN "../../res/text/JP/banks/14.bin", $107e, $2b
; ひっかききずが ある。 / おそらく ナイフで つけられた / ものだろう。[END]
Text14Message58:
    INCBIN "../../res/text/JP/banks/14.bin", $10a9, $23
; アパートようの メールボックスだ。[END]
Text14Message59:
    INCBIN "../../res/text/JP/banks/14.bin", $10cc, $12
; なかには ふうとうと いちまいの / きょうみぶかい しゃしんがあった。[PAGE] / その しゃしんには シーゲルと / おれの しらないおとこが / クリーニングてんのまえで ならんで / うつっている・・・。[...
Text14Message5A:
    INCBIN "../../res/text/JP/banks/14.bin", $10de, $2a
jr_014_5108:
    INCBIN "../../res/text/JP/banks/14.bin", $1108, $33
; おれあてに なっている。[END]
Text14Message5B:
    INCBIN "../../res/text/JP/banks/14.bin", $113b, $d
; つくえの うえには しゃしんたてが / おいてある。[PAGE] / ・・・なんと!! / シーゲルと うつっていた おとこが / しゃしんのなかに いるではないか![PAGE] / いったい この おとこは なにもの...
Text14Message5C:
    INCBIN "../../res/text/JP/banks/14.bin", $1148, $63
; 2まいの しゃしんに うつっていた / おとこは だれなのだろう・・・。 / きにかかる・・・。[PAGE] / しゃしんたてを しらべれば / なにか わかるかも しれない![END]
Text14Message5D:
    INCBIN "../../res/text/JP/banks/14.bin", $11ab, $4b
; じょうほうていきょうしゃである / ビニー・タルッソからの てがみだ。[PAGE] / 「エース・・・。[PAGE] /  ノルディックくつこうじょうは /  とおりの むかいにある /  アイスクリームてんに かなり...
Text14Message5E:
    INCBIN "../../res/text/JP/banks/14.bin", $11f6, $d7
; かべには 2まいの しゃしんが / かざられている・・・。[PAGE] / おそらく マロンの かぞくの / しゃしんだろう・・・。[PAGE] / ムフフフ・・・。 / なんだか きょうみあるな・・・。[PAGE] ...
Text14Message5F:
    INCBIN "../../res/text/JP/banks/14.bin", $12cd, $69
; 「103」には ダン・スモーンが / すんでいる。 / あいつは いつも かえりが おそい。[END]
Text14Message60:
    INCBIN "../../res/text/JP/banks/14.bin", $1336, $2b
; 「101」 / おれの へやの ドアだ![END]
Text14Message61:
    INCBIN "../../res/text/JP/banks/14.bin", $1361, $13
; 「102」に すんでいるのが / バーサ・ヒュート いがいの ひと / だったらな。[PAGE] / かのじょの こうすいは ひどい![END]
Text14Message62:
    INCBIN "../../res/text/JP/banks/14.bin", $1374, $53
; あの べンティーニが マロンから / どくりつ・・・だって? / ・・・まさか。[PAGE] / おれが さがしている かねも / べンティーニが すでに つかって / しまったのではないだろうか・・・![END]
Text14Message63:
    INCBIN "../../res/text/JP/banks/14.bin", $13c7, $57
; ・・・ということは・・・。 / 112000ドルは さがしても ムダということに なる・・・。[PAGE] / いったい これから どうしたら / いいのだろう・・・。 / のこりじかんも すくない・・・。[END]
Text14Message64:
    INCBIN "../../res/text/JP/banks/14.bin", $141e, $5a
; くにじゅう どこででも つかえる / おかねだ。[END]
Text14Message65:
    INCBIN "../../res/text/JP/banks/14.bin", $1478, $17
; エレべータの ドアが しまった。[END]
Text14Message66:
    INCBIN "../../res/text/JP/banks/14.bin", $148f, $11
; でんちを もっていないようだ。[END]
Text14Message67:
    INCBIN "../../res/text/JP/banks/14.bin", $14a0, $10
; ボンドウェルが ぬすみだした / ちょうぼを しらべれば なにか / わかるかも しれない・・・。[END]
Text14Message68:
    INCBIN "../../res/text/JP/banks/14.bin", $14b0, $2e
; おれの へやだ。 / あいかわらず きたないね。[END]
Text14Message69:
    INCBIN "../../res/text/JP/banks/14.bin", $14de, $17
; ポーカーで かちとった へラジカの / あたまだ。[PAGE] / あの よるは ついていたな・・・。[END]
Text14Message6A:
    INCBIN "../../res/text/JP/banks/14.bin", $14f5, $2a
; おやじの オマーレイと いっしょに / うつった しゃしんだ。[PAGE] / そういえば ずいぶん ながいあいだ / おやじに あってないな・・・。[END]
Text14Message6B:
    INCBIN "../../res/text/JP/banks/14.bin", $151f, $40
; これでも しゃれた イスだったのに!ストージーが ピストルの まととしてつかうまでは・・・。[END]
Text14Message6C:
    INCBIN "../../res/text/JP/banks/14.bin", $155f, $2f
; ぼろぼろの カーテンだ。[END]
Text14Message6D:
    INCBIN "../../res/text/JP/banks/14.bin", $158e, $d
; コートだ。 / ふしぎなことに ストージーは てを / ふれていないようだ。[PAGE] / たしか ポケットに あれを / いれていたはずだが・・・。[END]
Text14Message6E:
    INCBIN "../../res/text/JP/banks/14.bin", $159b, $3f
; よびの コートだ。[END]
Text14Message6F:
    INCBIN "../../res/text/JP/banks/14.bin", $15da, $a
; 38スぺシャルだ。 / ・・・たまが はいっていない。[PAGE] / たまを いれなければ やくに / たたないぞ![END]
Text14Message70:
    INCBIN "../../res/text/JP/banks/14.bin", $15e4, $30
; 38スぺシャルだ。 / やすいけど やくに たつんだ。[END]
Text14Message71:
    INCBIN "../../res/text/JP/banks/14.bin", $1614, $1a
; かいちゅうでんとうだ。 / でんち・・・ きれてないかな?[END]
Text14Message72:
    INCBIN "../../res/text/JP/banks/14.bin", $162e, $1c
; ふだんは きょうだいに おさまって / いるはずの ひきだしだ。[END]
Text14Message73:
    INCBIN "../../res/text/JP/banks/14.bin", $164a, $1f
; ふつうの はこだ。[END]
Text14Message74:
    INCBIN "../../res/text/JP/banks/14.bin", $1669, $a
; なるほど・・・。[PAGE] / この おとこが マロンの / かたうでと いわれている / ダニー・べンティーニらしい・・・。[PAGE] / マロンが いかに かれを / たいせつにしているかが わかる。[END]
Text14Message75:
    INCBIN "../../res/text/JP/banks/14.bin", $1673, $53
; サイダーが はいっていた ビンだ。 / いってきも のこっていない・・・。[END]
Text14Message76:
    INCBIN "../../res/text/JP/banks/14.bin", $16c6, $24
; でんきスタンドが われている。[PAGE] / ・・・ストージーめ! / こわしたな!![END]
Text14Message77:
    INCBIN "../../res/text/JP/banks/14.bin", $16ea, $23
; たんいちの でんちだ。[END]
Text14Message78:
    INCBIN "../../res/text/JP/banks/14.bin", $170d, $c
; シーゲルと どういうかんけいが / あるのだろうか?[END]
Text14Message79:
    INCBIN "../../res/text/JP/banks/14.bin", $1719, $19
; まわりが あかるくなった。[END]
Text14Message7A:
    INCBIN "../../res/text/JP/banks/14.bin", $1732, $e
; おりたたみしきの ナイフだ。[END]
Text14Message7B:
    INCBIN "../../res/text/JP/banks/14.bin", $1740, $f
; ちいさな やいばだな・・・。 / だが もっていれば なにかの やくにたつかもしれない。[END]
Text14Message7C:
    INCBIN "../../res/text/JP/banks/14.bin", $174f, $2b
; シーゲルは ゆすりの ほかに / こんな ことも していたのか・・・。[PAGE] / これも マロンの めいれい / なのだろうか・・・?[END]
Text14Message7D:
    INCBIN "../../res/text/JP/banks/14.bin", $177a, $3b
; おれの メールボックスを あける / ための カギだ。[END]
Text14Message7E:
    INCBIN "../../res/text/JP/banks/14.bin", $17b5, $1a
; この たまは 38スぺシャルに / いれられるのを まっている。[END]
Text14Message7F:
    INCBIN "../../res/text/JP/banks/14.bin", $17cf, $90e
Jump_014_60dd:
    INCBIN "../../res/text/JP/banks/14.bin", $20dd, $1e86
Call_014_7f63:
    INCBIN "../../res/text/JP/banks/14.bin", $3f63, $4c
Call_014_7faf:
    INCBIN "../../res/text/JP/banks/14.bin", $3faf, $37
Call_014_7fe6:
    INCBIN "../../res/text/JP/banks/14.bin", $3fe6, $3
Call_014_7fe9:
    INCBIN "../../res/text/JP/banks/14.bin", $3fe9, $17
