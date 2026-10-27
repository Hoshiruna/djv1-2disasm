; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text16Msgs0:
    db LOW(Text16Message00), HIGH(Text16Message00)
    db LOW(Text16Message01), HIGH(Text16Message01)
    db LOW(Text16Message02), HIGH(Text16Message02)
    db LOW(Text16Message03), HIGH(Text16Message03)
    db LOW(Text16Message04), HIGH(Text16Message04)
    db LOW(Text16Message05), HIGH(Text16Message05)
    db LOW(Text16Message06), HIGH(Text16Message06)
    db LOW(Text16Message07), HIGH(Text16Message07)
    db LOW(Text16Message08), HIGH(Text16Message08)
    db LOW(Text16Message09), HIGH(Text16Message09)
    db LOW(Text16Message0A), HIGH(Text16Message0A)
    db LOW(Text16Message0B), HIGH(Text16Message0B)
    db LOW(Text16Message0C), HIGH(Text16Message0C)
    db LOW(Text16Message0D), HIGH(Text16Message0D)
    db LOW(Text16Message0E), HIGH(Text16Message0E)
    db LOW(Text16Message0F), HIGH(Text16Message0F)
    db LOW(Text16Message10), HIGH(Text16Message10)
    db LOW(Text16Message11), HIGH(Text16Message11)
    db LOW(Text16Message12), HIGH(Text16Message12)
    db LOW(Text16Message13), HIGH(Text16Message13)
    db LOW(Text16Message14), HIGH(Text16Message14)
    db LOW(Text16Message15), HIGH(Text16Message15)
    db LOW(Text16Message16), HIGH(Text16Message16)
    db LOW(Text16Message17), HIGH(Text16Message17)
    db LOW(Text16Message18), HIGH(Text16Message18)
    db LOW(Text16Message19), HIGH(Text16Message19)
    db LOW(Text16Message1A), HIGH(Text16Message1A)
    db LOW(Text16Message1B), HIGH(Text16Message1B)
    db LOW(Text16Message1C), HIGH(Text16Message1C)
    db LOW(Text16Message1D), HIGH(Text16Message1D)
    db LOW(Text16Message1E), HIGH(Text16Message1E)
    db LOW(Text16Message1F), HIGH(Text16Message1F)
    db LOW(Text16Message20), HIGH(Text16Message20)
    db LOW(Text16Message21), HIGH(Text16Message21)
    db LOW(Text16Message22), HIGH(Text16Message22)
    db LOW(Text16Message23), HIGH(Text16Message23)
    db LOW(Text16Message24), HIGH(Text16Message24)
    db LOW(Text16Message25), HIGH(Text16Message25)
    db LOW(Text16Message26), HIGH(Text16Message26)
    db LOW(Text16Message27), HIGH(Text16Message27)
    db LOW(Text16Message28), HIGH(Text16Message28)
    db LOW(Text16Message29), HIGH(Text16Message29)
    db LOW(Text16Message2A), HIGH(Text16Message2A)
    db LOW(Text16Message2B), HIGH(Text16Message2B)
    db LOW(Text16Message2C), HIGH(Text16Message2C)
    db LOW(Text16Message2D), HIGH(Text16Message2D)
    db LOW(Text16Message2E), HIGH(Text16Message2E)
    db LOW(Text16Message2F), HIGH(Text16Message2F)
    db LOW(Text16Message30), HIGH(Text16Message30)
    db LOW(Text16Message31), HIGH(Text16Message31)
    db LOW(Text16Message32), HIGH(Text16Message32)
    db LOW(Text16Message33), HIGH(Text16Message33)
    db LOW(Text16Message34), HIGH(Text16Message34)
    db LOW(Text16Message35), HIGH(Text16Message35)
    db LOW(Text16Message36), HIGH(Text16Message36)
    db LOW(Text16Message37), HIGH(Text16Message37)
    db LOW(Text16Message38), HIGH(Text16Message38)
    db LOW(Text16Message39), HIGH(Text16Message39)
    db LOW(Text16Message3A), HIGH(Text16Message3A)
    db LOW(Text16Message3B), HIGH(Text16Message3B)
    db LOW(Text16Message3C), HIGH(Text16Message3C)
    db LOW(Text16Message3D), HIGH(Text16Message3D)
    db LOW(Text16Message3E), HIGH(Text16Message3E)
    db LOW(Text16Message3F), HIGH(Text16Message3F)
; Sixty-four message pointers for one text group.
Text16Msgs1:
    db LOW(Text16Message40), HIGH(Text16Message40)
    db LOW(Text16Message41), HIGH(Text16Message41)
    db LOW(Text16Message42), HIGH(Text16Message42)
    db LOW(Text16Message43), HIGH(Text16Message43)
    db LOW(Text16Message44), HIGH(Text16Message44)
    db LOW(Text16Message45), HIGH(Text16Message45)
    db LOW(Text16Message46), HIGH(Text16Message46)
    db LOW(Text16Message47), HIGH(Text16Message47)
    db LOW(Text16Message48), HIGH(Text16Message48)
    db LOW(Text16Message49), HIGH(Text16Message49)
    db LOW(Text16Message4A), HIGH(Text16Message4A)
    db LOW(Text16Message4B), HIGH(Text16Message4B)
    db LOW(Text16Message4C), HIGH(Text16Message4C)
    db LOW(Text16Message4D), HIGH(Text16Message4D)
    db LOW(Text16Message4E), HIGH(Text16Message4E)
    db LOW(Text16Message4F), HIGH(Text16Message4F)
    db LOW(Text16Message50), HIGH(Text16Message50)
    db LOW(Text16Message51), HIGH(Text16Message51)
    db LOW(Text16Message52), HIGH(Text16Message52)
    db LOW(Text16Message53), HIGH(Text16Message53)
    db LOW(Text16Message54), HIGH(Text16Message54)
    db LOW(Text16Message55), HIGH(Text16Message55)
    db LOW(Text16Message56), HIGH(Text16Message56)
    db LOW(Text16Message57), HIGH(Text16Message57)
    db LOW(Text16Message58), HIGH(Text16Message58)
    db LOW(Text16Message59), HIGH(Text16Message59)
    db LOW(Text16Message5A), HIGH(Text16Message5A)
    db LOW(Text16Message5B), HIGH(Text16Message5B)
    db LOW(Text16Message5C), HIGH(Text16Message5C)
    db LOW(Text16Message5D), HIGH(Text16Message5D)
    db LOW(Text16Message5E), HIGH(Text16Message5E)
    db LOW(Text16Message5F), HIGH(Text16Message5F)
    db LOW(Text16Message60), HIGH(Text16Message60)
    db LOW(Text16Message61), HIGH(Text16Message61)
    db LOW(Text16Message62), HIGH(Text16Message62)
    db LOW(Text16Message63), HIGH(Text16Message63)
    db LOW(Text16Message64), HIGH(Text16Message64)
    db LOW(Text16Message65), HIGH(Text16Message65)
    db LOW(Text16Message66), HIGH(Text16Message66)
    db LOW(Text16Message67), HIGH(Text16Message67)
    db LOW(Text16Message68), HIGH(Text16Message68)
    db LOW(Text16Message69), HIGH(Text16Message69)
    db LOW(Text16Message6A), HIGH(Text16Message6A)
    db LOW(Text16Message6B), HIGH(Text16Message6B)
    db LOW(Text16Message6C), HIGH(Text16Message6C)
    db LOW(Text16Message6D), HIGH(Text16Message6D)
    db LOW(Text16Message6E), HIGH(Text16Message6E)
    db LOW(Text16Message6F), HIGH(Text16Message6F)
    db LOW(Text16Message70), HIGH(Text16Message70)
    db LOW(Text16Message71), HIGH(Text16Message71)
    db LOW(Text16Message72), HIGH(Text16Message72)
    db LOW(Text16Message73), HIGH(Text16Message73)
    db LOW(Text16Message74), HIGH(Text16Message74)
    db LOW(Text16Message75), HIGH(Text16Message75)
    db LOW(Text16Message76), HIGH(Text16Message76)
    db LOW(Text16Message77), HIGH(Text16Message77)
    db LOW(Text16Message78), HIGH(Text16Message78)
    db LOW(Text16Message79), HIGH(Text16Message79)
    db LOW(Text16Message7A), HIGH(Text16Message7A)
    db LOW(Text16Message7B), HIGH(Text16Message7B)
    db LOW(Text16Message7C), HIGH(Text16Message7C)
    db LOW(Text16Message7D), HIGH(Text16Message7D)
    db LOW(Text16Message7E), HIGH(Text16Message7E)
    db LOW(Text16Message7F), HIGH(Text16Message7F)
; ひどい においのする へやだ。[END]
Text16Message00:
    INCBIN "../../res/text/JP/banks/16.bin", $100, $10
; やつらに とりあげられたものが / はいっているぞ![PAGE] / でも このまま もちだせば・・・ / やつらを かぎまわっていた おれが / うたがわれるのは まちがいない。[PAGE] / そうなれば・・・いつ...
Text16Message01:
    INCBIN "../../res/text/JP/banks/16.bin", $110, $14e
; マンホールから げすいへ / つうじているはずだ。[PAGE] / はなを さすような においが / たちのぼってくる。[END]
Text16Message02:
    INCBIN "../../res/text/JP/banks/16.bin", $25e, $31
; ヒビの はいった / はだかでんきゅうだ。[END]
Text16Message03:
    INCBIN "../../res/text/JP/banks/16.bin", $28f, $14
; ワインセラーへ つづく ドアだ。[END]
Text16Message04:
    INCBIN "../../res/text/JP/banks/16.bin", $2a3, $11
; ひみつの カジノだ。 / ひっそりと しずまりかえっている。[END]
Text16Message05:
    INCBIN "../../res/text/JP/banks/16.bin", $2b4, $1d
; ルーレットだ! / ひとつ おれの うんを / ためしてみようか・・・。[END]
Text16Message06:
    INCBIN "../../res/text/JP/banks/16.bin", $2d1, $21
; うーん・・・スロットマシンだ! / やってみるかな・・・?[END]
Text16Message07:
    INCBIN "../../res/text/JP/banks/16.bin", $2f2, $1c
; ・・・おや? / カギあなが ついているぞ![END]
Text16Message08:
    INCBIN "../../res/text/JP/banks/16.bin", $30e, $15
; こんなあやしげなところに カギあながついているなんて・・・。[END]
Text16Message09:
    INCBIN "../../res/text/JP/banks/16.bin", $323, $1f
; シーゲルの にっきが はいっていた / スロットマシンだ。[END]
Text16Message0A:
    INCBIN "../../res/text/JP/banks/16.bin", $342, $1c
; スロットマシンは ここしばらく / つかわれていないようだ。[END]
Text16Message0B:
    INCBIN "../../res/text/JP/banks/16.bin", $35e, $1d
; なにも はいっていなかった / スロットマシンだ。[END]
Text16Message0C:
    INCBIN "../../res/text/JP/banks/16.bin", $37b, $18
jr_016_4393:
; シュガーの めいしだ。[PAGE] / 「シュガー・ショック /  イリノイしゅう シカゴ /  グループがい /  サウスコテージ 4117」[PAGE] / 「ジョー あいにきて!」と / うらに なぐりがきが あ...
Text16Message0D:
    INCBIN "../../res/text/JP/banks/16.bin", $393, $48
jr_016_43db:
    INCBIN "../../res/text/JP/banks/16.bin", $3db, $d2
; シーゲルの にっきだ。[END]
Text16Message0E:
    INCBIN "../../res/text/JP/banks/16.bin", $4ad, $c
; にっきには しはらいリストが / かかれている。 / リストを しらべてみた・・・[PAGE] / 「3/24 1ばん $118000 /  4/15 0ばん  $24000 /  4/18 3ばん $145000[P...
Text16Message0F:
    INCBIN "../../res/text/JP/banks/16.bin", $4b9, $db
; エレべータの ドアは あかない。 / スイッチが きれている・・・。[END]
Text16Message10:
    INCBIN "../../res/text/JP/banks/16.bin", $594, $21
; ルーレットに つかわれる ちいさい / ボールを さがした・・・。[PAGE] / でも みあたらない・・・。[END]
Text16Message11:
    INCBIN "../../res/text/JP/banks/16.bin", $5b5, $2e
; コインを いれようとした。 / ・・・ん・・・?[PAGE] / コインを いれるところに / なまりが つめられているではないか!ちえっ![END]
Text16Message12:
    INCBIN "../../res/text/JP/banks/16.bin", $5e3, $3b
; 2かいの ろうかだ。 / かべに ポスターが はってある。[END]
Text16Message13:
    INCBIN "../../res/text/JP/banks/16.bin", $61e, $1c
; おれの ポスターだ。 / ボクサーに なりたての ころの / ものだ。[END]
Text16Message14:
    INCBIN "../../res/text/JP/banks/16.bin", $63a, $20
; 「パック・マクフォーレン」の / ポスターだ。[PAGE] / やおちょうで かれほど かれいに / ノックアウトされた ふりをした / ボクサーは いないだろうな。[END]
Text16Message15:
    INCBIN "../../res/text/JP/banks/16.bin", $65a, $19
jr_016_4673:
    INCBIN "../../res/text/JP/banks/16.bin", $673, $2d
; 「ドッグホウス・リハー」の / ポスターだ。[PAGE] / どりょくしていたが じょういに / あがれなかった ボクサーだ。[END]
Text16Message16:
    INCBIN "../../res/text/JP/banks/16.bin", $6a0, $34
; ドアに 「かんけいしゃいがい / たちいりきんし!」と かいてある。[END]
Text16Message17:
    INCBIN "../../res/text/JP/banks/16.bin", $6d4, $21
; やつらに とりあげられたものが / はいっているぞ![PAGE] / どうやら やつらにとって たいせつなもののようだ・・・。[PAGE] / よく しらべておいたほうが いいな。[PAGE] / でも このまま もち...
Text16Message18:
    INCBIN "../../res/text/JP/banks/16.bin", $6f5, $8a
; けいさつしょの まえの とおりだ。[END]
Text16Message19:
    INCBIN "../../res/text/JP/banks/16.bin", $77f, $12
; しゃれた がいとうだ。[END]
Text16Message1A:
    INCBIN "../../res/text/JP/banks/16.bin", $791, $c
; かわを むいたほうが いいよね。[END]
Text16Message1B:
    INCBIN "../../res/text/JP/banks/16.bin", $79d, $11
; けいさつしょの いりぐちだ。[END]
Text16Message1C:
    INCBIN "../../res/text/JP/banks/16.bin", $7ae, $f
; バナナを たべた・・・。[PAGE] / ・・・しまった! / おれは バナナを たべると おなかをこわす たいしつ だったんだ![END]
Text16Message1D:
    INCBIN "../../res/text/JP/banks/16.bin", $7bd, $38
; まちがった ばしょに たすけを / もとめたようだ。[PAGE] / けいかんは おれが こまっていても / かんけいない といった かんじだ。[PAGE] / それでも じんもんするために おれをりゅうちした。[END]
Text16Message1E:
    INCBIN "../../res/text/JP/banks/16.bin", $7f5, $57
; ガラスを わってしまった。 / しかも けいさつしょの ガラスを![PAGE] / すぐに けいかんが でてきて おれはたいほされてしまった・・・。[END]
Text16Message1F:
    INCBIN "../../res/text/JP/banks/16.bin", $84c, $9
jr_016_4855:
    INCBIN "../../res/text/JP/banks/16.bin", $855, $38
; バナナの かわを たべるなんて・・・いまどき サルでも たべないよ。[END]
Text16Message20:
    INCBIN "../../res/text/JP/banks/16.bin", $88d, $23
; れっしゃの なかだ。 / なんだか かぜとおしが わるくて / ムンムンするな・・・。[END]
Text16Message21:
    INCBIN "../../res/text/JP/banks/16.bin", $8b0, $28
; れっしゃの なかだ。 / この しゃりょうには じょうきゃくがおれしか いないようだ。[END]
Text16Message22:
    INCBIN "../../res/text/JP/banks/16.bin", $8d8, $2a
; シートは ゆかに しっかりと / こていされている。[PAGE] / これなら ながたびでも かいてきに / すごせそうだな・・・。[END]
Text16Message23:
    INCBIN "../../res/text/JP/banks/16.bin", $902, $37
; ひよけが おりているので マドの / そとは みえない。[END]
Text16Message24:
    INCBIN "../../res/text/JP/banks/16.bin", $939, $1b
; マドから ホームの ようすが / みえる。[END]
Text16Message25:
    INCBIN "../../res/text/JP/banks/16.bin", $954, $14
; ・・・あれ? / 0ばんを ごうけいすると・・・。[PAGE] / ・・・あっ!!! / 112000ドルに なるじゃないか![END]
Text16Message26:
    INCBIN "../../res/text/JP/banks/16.bin", $968, $34
; はりがみには こう かいてある。[PAGE] / 「とうなんや わすれものに /  ごちゅうい!」[END]
Text16Message27:
    INCBIN "../../res/text/JP/banks/16.bin", $99c, $28
; しゃしょうが イライラしながら / まっている。[END]
Text16Message28:
    INCBIN "../../res/text/JP/banks/16.bin", $9c4, $17
; うるさい おんなだな・・・。 / いきを つぐまもなく となりの / おとこに まくしたてている。[END]
Text16Message29:
    INCBIN "../../res/text/JP/banks/16.bin", $9db, $5
jr_016_49e0:
    INCBIN "../../res/text/JP/banks/16.bin", $9e0, $29
; けいさつは さわがしい しみんが / きらいのようだ。[PAGE] / へいわを みだした という つみで / たいほされてしまった。[END]
Text16Message2A:
    INCBIN "../../res/text/JP/banks/16.bin", $a09, $38
; きょうどうじゅうたくの まえだ。 / このちいきは ちあんが わるく / けいかんでさえも ちかよらない。[END]
Text16Message2B:
    INCBIN "../../res/text/JP/banks/16.bin", $a41, $32
; シュガーの アパートの まえの / とおりだ。[END]
Text16Message2C:
    INCBIN "../../res/text/JP/banks/16.bin", $a73, $16
; ひとさまの いえを マドから / のぞきこむなんて・・・![END]
Text16Message2D:
    INCBIN "../../res/text/JP/banks/16.bin", $a89, $1c
; しまもようの マドだ。[END]
Text16Message2E:
    INCBIN "../../res/text/JP/banks/16.bin", $aa5, $c
; ふろうしゃらしい・・・。 / ブツブツ いっている。[END]
Text16Message2F:
    INCBIN "../../res/text/JP/banks/16.bin", $ab1, $19
; シュガーの へやの ドアだ。 / やすものの カギが かかっている。[END]
Text16Message30:
    INCBIN "../../res/text/JP/banks/16.bin", $aca, $21
; カギは もっていないし どうすれば / なかに はいれるのだろうか?[END]
Text16Message31:
    INCBIN "../../res/text/JP/banks/16.bin", $aeb, $21
; やすものの カギ・・・。これが ポイントだ![END]
Text16Message32:
    INCBIN "../../res/text/JP/banks/16.bin", $b0c, $17
; なさけない おとこだな・・・。 / おくさんの いうことに いちいち / うなずいているぞ・・・。[END]
Text16Message33:
    INCBIN "../../res/text/JP/banks/16.bin", $b23, $2e
; ふろうしゃが 5セント めぐんでくれといって おれの あしに / まとわりついた。[PAGE] / うごけなくて イライラしてきた。[END]
Text16Message34:
    INCBIN "../../res/text/JP/banks/16.bin", $b51, $39
; おれが あいさつすると ふろうしゃはあいそよく いった。[PAGE] / 「だんな・・・。 /  しばらく だんなの いえに /  とめてくださいよ!」[PAGE] / うむ・・・これは まずい! / こいつに かかわ...
Text16Message35:
    INCBIN "../../res/text/JP/banks/16.bin", $b8a, $65
; 「だんなの いえに とめてもらえる。 よかった よかった。」[PAGE] / ふろうしゃは つぶやいている。 / おれが なにを いっても むだだ。 / こいつに かかわっては いけない![END]
Text16Message36:
    INCBIN "../../res/text/JP/banks/16.bin", $bef, $53
; ふろうしゃは かねを うけとると / うれしそうに つぶやいた。[PAGE] / 「これで あつくて あまーい /  コーヒーに ありつけるぞ![PAGE] /  だんな。 /  ありがとうございます。 /  いつか ...
Text16Message37:
    INCBIN "../../res/text/JP/banks/16.bin", $c42, $62
Jump_016_4ca4:
    INCBIN "../../res/text/JP/banks/16.bin", $ca4, $21
; スカッ![PAGE] / ボクサーとしての ひびが / よみがえってきた。[PAGE] / しかし ふろうしゃは おれの / パンチを フラフラッと よけた。[END]
Text16Message38:
    INCBIN "../../res/text/JP/banks/16.bin", $cc5, $3c
; ふろうしゃは ガツガツと たべた。 / よほど おなかが すいていたので / あろう。[END]
Text16Message39:
    INCBIN "../../res/text/JP/banks/16.bin", $d01, $28
; おとこは くびを カックンカックン / させながら ねむっている。[END]
Text16Message3A:
    INCBIN "../../res/text/JP/banks/16.bin", $d29, $20
; わかい おんなの きゃくだ。[END]
Text16Message3B:
    INCBIN "../../res/text/JP/banks/16.bin", $d49, $f
; きゃくは ここを とおって / しゃりょうを いききしている。[END]
Text16Message3C:
    INCBIN "../../res/text/JP/banks/16.bin", $d58, $1e
; シュガーの へやだ。 / なんて きたない へやなんだ![PAGE] / ほこりと やすものの こうすいの / においで いきが つまりそうだ。[END]
Text16Message3D:
    INCBIN "../../res/text/JP/banks/16.bin", $d76, $3d
; シュガーの へやだ。[END]
Text16Message3E:
    INCBIN "../../res/text/JP/banks/16.bin", $db3, $b
; このライトは ちいさい。 / シュガーが べッドで どくしょに / じかんを ついやしたとは / おもえないが・・・。[END]
Text16Message3F:
    INCBIN "../../res/text/JP/banks/16.bin", $dbe, $36
; シュガーの べッドだ。 / つかいすぎて まんなかが / へこんでいる。[END]
Text16Message40:
    INCBIN "../../res/text/JP/banks/16.bin", $df4, $21
; ほこりだらけの テーブルだ。[END]
Text16Message41:
    INCBIN "../../res/text/JP/banks/16.bin", $e15, $f
; ほこりを かぶった / ナイトテーブルだ。[PAGE] / ・・・おや? / とびらが あるぞ![END]
Text16Message42:
    INCBIN "../../res/text/JP/banks/16.bin", $e24, $25
; ようふくダンスだ。 / カガミを みると いいおとこが / うつっている。[PAGE] / ・・・おれさ![END]
Text16Message43:
    INCBIN "../../res/text/JP/banks/16.bin", $e49, $2a
; ようふくダンスの カガミは / われている。[END]
Text16Message44:
    INCBIN "../../res/text/JP/banks/16.bin", $e73, $15
; あの ドアの むこうが ホームだ。[END]
Text16Message45:
    INCBIN "../../res/text/JP/banks/16.bin", $e88, $12
; ティッシュだ。 / はなを かんだのだろう。[END]
Text16Message46:
    INCBIN "../../res/text/JP/banks/16.bin", $e9a, $15
; つかいふるしの ティッシュだ。[END]
Text16Message47:
    INCBIN "../../res/text/JP/banks/16.bin", $eaf, $10
; この マクラが しゃべれば いろいろおもしろい はなしが / きけただろうに![END]
Text16Message48:
    INCBIN "../../res/text/JP/banks/16.bin", $ebf, $26
; シュガーの おきにいりの こうすい / 「ピアのゆうぐれ」だ。[END]
Text16Message49:
    INCBIN "../../res/text/JP/banks/16.bin", $ee5, $14
jr_016_4ef9:
    INCBIN "../../res/text/JP/banks/16.bin", $ef9, $a
; しんぶんは ひろげられたままだ。 / しぼうきじが のっている。[PAGE] / ・・・あっ! / シュガーが きりとったところがある!なにを きりとったのだろう?[END]
Text16Message4A:
    INCBIN "../../res/text/JP/banks/16.bin", $f03, $47
; スリットが はいっていて セクシーなドレスだ。[END]
Text16Message4B:
    INCBIN "../../res/text/JP/banks/16.bin", $f4a, $18
; よごれた ふくだ。 / せんたくされるのを まっている。[END]
Text16Message4C:
    INCBIN "../../res/text/JP/banks/16.bin", $f62, $1b
; スカッ![END]
Text16Message4D:
    INCBIN "../../res/text/JP/banks/16.bin", $f7d, $5
; けいかんの マクマーフィーからの / てがみだ。[PAGE] / 「しぬまえに こくはくしよう。 /  このてがみが みつかれば わたしは すぐに ころされてしまうだろう。[PAGE] /  だが むざむざと ひとりで...
Text16Message4E:
    INCBIN "../../res/text/JP/banks/16.bin", $f82, $23
jr_016_4fa5:
    INCBIN "../../res/text/JP/banks/16.bin", $fa5, $15c
; けいかんの せいふくだ。 / シュガーには けいかんの こいびともいるのか?[PAGE] / よからぬことを たくらんでいなければよいが・・・。[PAGE] / よくみると ネームが はいっている。マクマーフィー・・・...
Text16Message4F:
    INCBIN "../../res/text/JP/banks/16.bin", $1101, $7e
; おれの こぶしは くうを きった![PAGE] / しゃしょうは ろうじんとは / おもえない すばやさで その / こぶしを つかんだ![END]
Text16Message50:
    INCBIN "../../res/text/JP/banks/16.bin", $117f, $3a
; そして ものすごい ちからで / おれを ホームに たたきつけた。[END]
Text16Message51:
    INCBIN "../../res/text/JP/banks/16.bin", $11b9, $20
; 「まったく・・・。 /  さいきんの わかいもんは /  れいぎしらずばかりだ![PAGE] /  もういちど れいぎさほうを /  べんきょうしなおすんだな!」[END]
Text16Message52:
    INCBIN "../../res/text/JP/banks/16.bin", $11d9, $44
; 「いい おてんきですね・・・。」[END]
Text16Message53:
    INCBIN "../../res/text/JP/banks/16.bin", $121d, $11
; でんぴょうらしい。 / わゴムで かたく たばねてある。[END]
Text16Message54:
    INCBIN "../../res/text/JP/banks/16.bin", $122e, $1b
; ぎんこうよきんの でんぴょうが / 4まい とじられている。[PAGE] / ひづけと きんがくは つぎのように / なっている。[PAGE] / 「4/15   $1200 /  5/15   $1350 /  6/...
Text16Message55:
    INCBIN "../../res/text/JP/banks/16.bin", $1249, $6f
; ・・・ん? / どこかで みたような?[END]
Text16Message56:
    INCBIN "../../res/text/JP/banks/16.bin", $12b8, $12
; そうじきだ。 / シュガーは これで どこを / そうじしているのだろう?[END]
Text16Message57:
    INCBIN "../../res/text/JP/banks/16.bin", $12ca, $22
; そうじきだ。 / なかの ゴミが かんたんに / すてられるように なっている。[END]
Text16Message58:
    INCBIN "../../res/text/JP/banks/16.bin", $12ec, $25
; おれは おんなに はなしかけた。 / だが となりの おとこと はなすのにむちゅうで おれに きづかない。[END]
Text16Message59:
    INCBIN "../../res/text/JP/banks/16.bin", $1311, $34
; シュガーの そうじきだ。[END]
Text16Message5A:
    INCBIN "../../res/text/JP/banks/16.bin", $1345, $2d
; ゴミの はいった そうじきの / ふくろだ。[PAGE] / でも このへやを そうじして でた / ゴミとは かんがえられないな。[PAGE] / シュガーが きれいずきだったら / このへやが こんなに きたないは...
Text16Message5B:
    INCBIN "../../res/text/JP/banks/16.bin", $1372, $9a
; そうじきの ふくろが やぶれている。[END]
Text16Message5C:
    INCBIN "../../res/text/JP/banks/16.bin", $140c, $13
; ふうとうだ。 / おもてに なぐりがきがしてある。[PAGE] / 「シュガー・・・。 /  わたしが やられたときは /  けいさつほんぶちょうに /  このてがみを わたしてくれ。[PAGE] /  カールストンけ...
Text16Message5D:
    INCBIN "../../res/text/JP/banks/16.bin", $141f, $7
jr_016_5426:
    INCBIN "../../res/text/JP/banks/16.bin", $1426, $61
; ゴミぶくろは かたい そざいで / できているらしく やぶれない![END]
Text16Message5E:
    INCBIN "../../res/text/JP/banks/16.bin", $1487, $20
; おれは おとこに はなしかけた。 / だが おれの こえは きこえなかったらしい。[PAGE] / おんなの はなしを きいて / うなずいている・・・。[PAGE] / ・・・と おもったら! / くびを カックンカ...
Text16Message5F:
    INCBIN "../../res/text/JP/banks/16.bin", $14a7, $71
; ブビィーー![PAGE] / ・・・はなを かんだ。[END]
Text16Message60:
    INCBIN "../../res/text/JP/banks/16.bin", $1518, $13
; うーん・・・。 / こうきゅうせんいは べジタリアンが / たべるものだ![END]
Text16Message61:
    INCBIN "../../res/text/JP/banks/16.bin", $152b, $22
; う うまいぞ! / しおあじが きいている・・・。[END]
Text16Message62:
    INCBIN "../../res/text/JP/banks/16.bin", $154d, $18
; べッドに ねころんだ。 / おれは なんばんめに シュガーの / べッドに ねころんだのだろう?[PAGE] / まあいい。 / ぐずぐずしている ひまは ない。 / さあ おきよう![END]
Text16Message63:
    INCBIN "../../res/text/JP/banks/16.bin", $1565, $4d
; こうすいを プシュッと くびすじに / ふきつけた。[PAGE] / うーん・・・わるくないね! / このまちで かねが かせげそうだな。[END]
Text16Message64:
    INCBIN "../../res/text/JP/banks/16.bin", $15b2, $5
jr_016_55b7:
    INCBIN "../../res/text/JP/banks/16.bin", $15b7, $2
jr_016_55b9:
    INCBIN "../../res/text/JP/banks/16.bin", $15b9, $33
; ゴックン! / こうすいって おいしくないな。[END]
Text16Message65:
    INCBIN "../../res/text/JP/banks/16.bin", $15ec, $16
; おれは おんなに はなしかけた。 / だが おんなは わざと むしをした。[PAGE] / ・・・つれないねえ。[END]
Text16Message66:
    INCBIN "../../res/text/JP/banks/16.bin", $1602, $2f
; そうじきが うごかない。 / おかしなことに プラグが ない。[END]
Text16Message67:
    INCBIN "../../res/text/JP/banks/16.bin", $1631, $1e
; ナイフで ふくろを つきさした。[END]
Text16Message68:
    INCBIN "../../res/text/JP/banks/16.bin", $164f, $11
jr_016_5660:
; ふくろが びりびりに なった。 / もとどおりには ならないだろうな。[END]
Text16Message69:
    INCBIN "../../res/text/JP/banks/16.bin", $1660, $22
; ちいさすぎて おれには きれない。[END]
Text16Message6A:
    INCBIN "../../res/text/JP/banks/16.bin", $1682, $12
; ははあああん・・・。 / ガールハントだと おもったんだな?[END]
Text16Message6B:
    INCBIN "../../res/text/JP/banks/16.bin", $1694, $1d
; けいかんの せいふくの サイズは / おれに ぴったりだ。[END]
Text16Message6C:
    INCBIN "../../res/text/JP/banks/16.bin", $16b1, $1c
; けいかんが おれを どうりょうだと / おもって はなしかけてきた。[PAGE] / 「やあ! /  もう きゅうりょうは /  もらったかい?」[PAGE] / 「まだだよ。 /  きょう もらう よていなんだ。」[...
Text16Message6D:
    INCBIN "../../res/text/JP/banks/16.bin", $16cd, $dc
; しゃしょうは かねを うけとって / いった。[END]
Text16Message6E:
    INCBIN "../../res/text/JP/banks/16.bin", $17a9, $16
; 「ありがとうございます。」[END]
Text16Message6F:
    INCBIN "../../res/text/JP/banks/16.bin", $17bf, $e
; それから マロンに べンティーニの / あくじを ばらせば ふたりは / あらそうに ちがいない![PAGE] / そのすきに このまちから / にげてしまおう![PAGE] / ・・・ようし! / ぜんは いそげだ!...
Text16Message70:
    INCBIN "../../res/text/JP/banks/16.bin", $17cd, $56
; こうきょうしたいおきばの まえに / きた。[PAGE] / おれには えんの ない ところで / あって ほしいな。[END]
Text16Message71:
    INCBIN "../../res/text/JP/banks/16.bin", $1823, $30
; 「おきゃくさん・・・。 /  おかねが たりませんよ・・・。」[END]
Text16Message72:
    INCBIN "../../res/text/JP/banks/16.bin", $1853, $1e
; 「こうきょうしたいおきば」と / かいてある。[END]
Text16Message73:
    INCBIN "../../res/text/JP/banks/16.bin", $1871, $16
; 「かねを はらわないなら とっとと /  でていけっ!」[PAGE] / おれは れっしゃから ほうりだされてしまった。[END]
Text16Message74:
    INCBIN "../../res/text/JP/banks/16.bin", $1887, $33
; こうきょうしたいおきばの / うけつけだ。[PAGE] / とりはだが たってくるな。[END]
Text16Message75:
    INCBIN "../../res/text/JP/banks/16.bin", $18ba, $22
; けいじばんには しぼうきじが / かいてある。 / よんでみよう。[PAGE] /  ーーー レニー・ウィースル・ウルフ  はなしをしていて ちっそくし[PAGE] /  ーーー べティ・ルピノ /   なんども あた...
Text16Message76:
    INCBIN "../../res/text/JP/banks/16.bin", $18dc, $a4
; しゃしょうは イライラして いった。[END]
Text16Message77:
    INCBIN "../../res/text/JP/banks/16.bin", $1980, $13
; カウンターには しみが ついている。そこに なにが あったか おれには / わからない。[END]
Text16Message78:
    INCBIN "../../res/text/JP/banks/16.bin", $1993, $2b
; うけつけの おくに はいるための / ゲートだ。[END]
Text16Message79:
    INCBIN "../../res/text/JP/banks/16.bin", $19be, $17
; 「きょかなき ものの にゅうしつを /  きんず」と かいてある。[END]
Text16Message7A:
    INCBIN "../../res/text/JP/banks/16.bin", $19d5, $20
; じむいんだ。 / ほんを よんでいる。 / なにを よんでいるんだ?[PAGE] / エドガー・アラン・ポーの / 「モルグがいの さつじん」だ。 / ・・・とりはだが たってくる。[END]
Text16Message7B:
    INCBIN "../../res/text/JP/banks/16.bin", $19f5, $47
jr_016_5a3c:
    INCBIN "../../res/text/JP/banks/16.bin", $1a3c, $5
; ボンドウェルの いえの / カギだろうか・・・? / それとも ちがうのだろうか・・・?[END]
Text16Message7C:
    INCBIN "../../res/text/JP/banks/16.bin", $1a41, $29
; 「れっしゃは まもなく /  はっしゃします。[PAGE] /  ごりようのかたは はやく わたしに りょうきんを はらってください。」[END]
Text16Message7D:
    INCBIN "../../res/text/JP/banks/16.bin", $1a6a, $3b
; 「りょうきんを はらわないのなら /  さっさと おりてください!」[END]
Text16Message7E:
    INCBIN "../../res/text/JP/banks/16.bin", $1aa5, $21
; トーマス・ボンドウェルの / うんてんめんきょしょうだ。[END]
Text16Message7F:
    INCBIN "../../res/text/JP/banks/16.bin", $1ac6, $5f7
Jump_016_60bd:
    INCBIN "../../res/text/JP/banks/16.bin", $20bd, $31c
Call_016_63d9:
    INCBIN "../../res/text/JP/banks/16.bin", $23d9, $1b3d
Call_016_7f16:
    INCBIN "../../res/text/JP/banks/16.bin", $3f16, $4d
Call_016_7f63:
    INCBIN "../../res/text/JP/banks/16.bin", $3f63, $1c
Call_016_7f7f:
    INCBIN "../../res/text/JP/banks/16.bin", $3f7f, $31
Call_016_7fb0:
    INCBIN "../../res/text/JP/banks/16.bin", $3fb0, $39
Call_016_7fe9:
    INCBIN "../../res/text/JP/banks/16.bin", $3fe9, $1
Call_016_7fea:
    INCBIN "../../res/text/JP/banks/16.bin", $3fea, $16
